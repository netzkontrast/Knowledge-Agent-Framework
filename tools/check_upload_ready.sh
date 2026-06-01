#!/usr/bin/env bash
# check_upload_ready.sh — verify langdock-deploy/ has everything for Langdock upload.
# This is the Phase 5.3 gate: 14 knowledge files + AGENT_PROMPT.md +
# CONVERSATION_STARTERS.md, sizes within Langdock limits, no stray files.
#
# Usage: ./tools/check_upload_ready.sh
# Exit 0 = ready; 1 = blockers found.

set -uo pipefail

REPO_ROOT="${REPO_ROOT:-/home/user/soul.md}"
cd "$REPO_ROOT"

DEPLOY="langdock-deploy"
KNOWLEDGE="$DEPLOY/knowledge"

FAIL=0
WARN=0

err()   { echo "[BLOCK] $1"; FAIL=$((FAIL+1)); }
warn()  { echo "[WARN]  $1"; WARN=$((WARN+1)); }
ok()    { echo "[OK]    $1"; }

echo "=== Phase 5.3: Upload-Readiness Check ==="
echo

# 1. Top-level artifacts
[ -f "$DEPLOY/AGENT_PROMPT.md" ] || err "AGENT_PROMPT.md missing"
[ -f "$DEPLOY/CONVERSATION_STARTERS.md" ] || err "CONVERSATION_STARTERS.md missing"
[ -f "$DEPLOY/VALIDATION-CHECKLIST.md" ] || warn "VALIDATION-CHECKLIST.md missing (recommended)"
[ -d "$KNOWLEDGE" ] || err "knowledge/ directory missing"

# 2. AGENT_PROMPT.md size (15K char limit)
if [ -f "$DEPLOY/AGENT_PROMPT.md" ]; then
  size=$(wc -c < "$DEPLOY/AGENT_PROMPT.md" | tr -d ' ')
  if [ "$size" -le 15000 ]; then
    ok "AGENT_PROMPT.md: $size chars / 15000 budget"
  else
    err "AGENT_PROMPT.md: $size chars exceeds 15000 budget"
  fi
fi

# 3. Knowledge file count (14 expected, 16 budget per Langdock agent attach limit)
if [ -d "$KNOWLEDGE" ]; then
  count=$(ls "$KNOWLEDGE"/*.md 2>/dev/null | wc -l)
  if [ "$count" -eq 14 ]; then
    ok "Knowledge files: $count/14 expected"
  elif [ "$count" -ge 12 ] && [ "$count" -le 16 ]; then
    warn "Knowledge files: $count (expected 14, max 16)"
  else
    err "Knowledge files: $count (expected 14)"
  fi
fi

# 4. Required knowledge filenames present
REQUIRED=(
  "00-langdock-uebersicht.md"
  "01-chat-und-prompts.md"
  "02-agenten-konfiguration.md"
  "03-wissensordner-und-rag.md"
  "04-workflows.md"
  "05-integrationen-und-mcp.md"
  "06-api-und-deployment.md"
  "07-modelle-und-kosten.md"
  "08-sicherheit-und-governance.md"
  "09-marketing-praxis.md"
  "10-prompts-und-skills.md"
  "11-persona-core.md"
  "12-persona-julia-modus.md"
  "13-data-agent-anweisungen-pro-thema.md"
)
for f in "${REQUIRED[@]}"; do
  if [ -f "$KNOWLEDGE/$f" ]; then
    bytes=$(wc -c < "$KNOWLEDGE/$f")
    ok "$(printf '%-45s %s bytes' "$f" "$bytes")"
  else
    err "missing: $f"
  fi
done

# 5. Per-file size sanity check (Langdock hard limits: 10 MB / 8M chars)
if [ -d "$KNOWLEDGE" ]; then
  for f in "$KNOWLEDGE"/*.md; do
    [ -f "$f" ] || continue
    bytes=$(wc -c < "$f")
    if [ "$bytes" -gt 8000000 ]; then
      err "$(basename "$f") exceeds 8M-char Langdock limit ($bytes)"
    fi
  done
fi

# 6. No stray non-md files in knowledge/
if [ -d "$KNOWLEDGE" ]; then
  strays=$(find "$KNOWLEDGE" -type f ! -name "*.md" 2>/dev/null)
  if [ -n "$strays" ]; then
    warn "stray non-md files in knowledge/:"
    echo "$strays" | sed 's/^/        /'
  fi
fi

# 7. Anchor strings present in persona files
if [ -f "$KNOWLEDGE/11-persona-core.md" ]; then
  if grep -q "Little Data Persona Anker" "$KNOWLEDGE/11-persona-core.md"; then
    ok "anchor 'Little Data Persona Anker' present in 11-persona-core.md"
  else
    err "anchor 'Little Data Persona Anker' MISSING from 11-persona-core.md"
  fi
fi
if [ -f "$KNOWLEDGE/12-persona-julia-modus.md" ]; then
  if grep -q "Beziehungsmodus Julia Lenz" "$KNOWLEDGE/12-persona-julia-modus.md"; then
    ok "anchor 'Beziehungsmodus Julia Lenz' present in 12-persona-julia-modus.md"
  else
    err "anchor 'Beziehungsmodus Julia Lenz' MISSING from 12-persona-julia-modus.md"
  fi
fi
if [ -f "$KNOWLEDGE/13-data-agent-anweisungen-pro-thema.md" ]; then
  da_count=$(grep -c "Data-Anweisung" "$KNOWLEDGE/13-data-agent-anweisungen-pro-thema.md" 2>/dev/null || echo 0)
  if [ "$da_count" -ge 10 ]; then
    ok "Data-Anweisung anchors in 13: $da_count instances"
  else
    err "Data-Anweisung anchors in 13: only $da_count (expected ≥10)"
  fi
fi

echo
echo "=== SUMMARY ==="
echo "Blockers: $FAIL"
echo "Warnings: $WARN"
if [ "$FAIL" -gt 0 ]; then
  echo "RESULT: NOT READY ($FAIL blocker(s))"
  exit 1
fi
echo "RESULT: READY FOR UPLOAD"
exit 0
