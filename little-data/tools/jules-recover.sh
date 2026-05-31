#!/usr/bin/env bash
# jules-recover.sh — scan known Jules sessions; for each COMPLETED-without-push,
# extract the patch via capability_jules_apply_patch and write the file(s)
# directly to disk. Silent-fail recovery automation per the jules-dispatch skill.
#
# Usage: ./little-data/tools/jules-recover.sh [SESSION_ID ...]
# Defaults to the known little-data sessions if no args.

set -uo pipefail

AGENCY="${AGENCY:-/root/.claude/plugins/marketplaces/agency/bin/agency}"
INTENT_ID="${INTENT_ID:-intent:c76a7cb0}"
REPO_ROOT="${REPO_ROOT:-/home/user/soul.md}"

# Default session list (the active little-data Phase 0.5 + Phase 2 sessions)
DEFAULT_SIDS=(
  "15496046507504287600"  # 12-persona-julia-modus
  "13929873387924290336"  # 00-langdock-uebersicht
  "12110095044646860814"  # 01-chat-und-prompts
  "10925420439855356541"  # 02-agenten-konfiguration
  "378386566962702816"    # 03-wissensordner-und-rag
  "1457972172489118101"   # 04-workflows
  "12663632701708472741"  # 05-integrationen-und-mcp
  "10547985932128837211"  # 06-api-und-deployment
  "16019328910196999458"  # 06-api-und-deployment (dup — whichever completes first wins)
  "16838785051756306806"  # 07-modelle-und-kosten
  "16400278012158270047"  # 08-sicherheit-und-governance
  "6159499177946303116"   # 09-marketing-praxis
  "4982698350623068125"   # 10-prompts-und-skills
)

if [ "$#" -gt 0 ]; then
  SIDS=("$@")
else
  SIDS=("${DEFAULT_SIDS[@]}")
fi

recover_one() {
  local sid="$1"
  echo "=== Session $sid ==="

  # Get status (with one SSL retry)
  local state
  for attempt in 1 2 3; do
    state=$("$AGENCY" execute --code "
s = await call_tool('capability_jules_status', {'session': '$sid', 'intent_id': '$INTENT_ID'})
return s['state']
" 2>&1 | tail -1 | tr -d '"')
    if [[ "$state" =~ ^(COMPLETED|IN_PROGRESS|AWAITING_PLAN_APPROVAL|AWAITING_USER_FEEDBACK|FAILED)$ ]]; then
      break
    fi
    echo "  Retry $attempt (got: $state)"
  done

  echo "  State: $state"

  if [ "$state" != "COMPLETED" ]; then
    echo "  Skip — not COMPLETED."
    return 0
  fi

  # COMPLETED — try patch
  echo "  Extracting patch via capability_jules_apply_patch..."
  local tmpdir; tmpdir=$(mktemp -d)
  "$AGENCY" execute --code "
p = await call_tool('capability_jules_apply_patch', {'session': '$sid', 'intent_id': '$INTENT_ID'})
return p
" > "$tmpdir/plan.txt" 2>&1

  # Extract files from the plan
  python3 - "$tmpdir/plan.txt" "$REPO_ROOT" <<'PYEOF'
import sys, json, pathlib, re
plan_text = pathlib.Path(sys.argv[1]).read_text()
repo_root = pathlib.Path(sys.argv[2])
# Find the JSON object (skip preamble)
idx = plan_text.find('{"branch":')
if idx < 0:
    print("  No patch plan found in output (session may not have outputs)")
    sys.exit(0)
try:
    j = json.loads(plan_text[idx:])
except json.JSONDecodeError as e:
    print(f"  JSON parse failed: {e}")
    sys.exit(1)
written = []
for op in j.get('ops', []):
    if op.get('tool') == 'mcp__github__push_files':
        for f in op.get('args', {}).get('files', []):
            p = repo_root / f['path']
            if p.exists():
                # Already on disk — skip
                print(f"  Already exists: {f['path']}")
                continue
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(f['content'])
            written.append(f['path'])
            print(f"  Wrote: {f['path']} ({len(f['content'])} chars)")
if not written:
    print("  Nothing to recover (all files already on disk)")
PYEOF

  rm -rf "$tmpdir"
}

for sid in "${SIDS[@]}"; do
  recover_one "$sid"
done

echo "---"
echo "Recovery scan complete. Knowledge files now present:"
ls -la "$REPO_ROOT/little-data/langdock-deploy/knowledge/" 2>/dev/null | grep -E "\.md$"
