#!/usr/bin/env bash
# jules-dispatch-knowledge-file.sh — dispatch one Jules session to author one
# knowledge file. Wraps the agency CLI per the jules-dispatch skill discipline.
#
# Usage:
#   tools/jules-dispatch-knowledge-file.sh <FILE_NAME> <H1_TITLE> <PROMPT_TEMPLATE_FILE> <INTENT_ID>
#
# Example:
#   tools/jules-dispatch-knowledge-file.sh 00-langdock-uebersicht \
#     "Langdock-Übersicht für Marketing-Direktoren" \
#     little-data/tools/jules-prompts/00-langdock-uebersicht.prompt.md \
#     int_abc123
#
# Returns: the dispatched session ID on stdout. Caller then polls via:
#   agency execute --code 'await call_tool("capability_jules_status", {"session": "<sid>"})'

set -euo pipefail

FILE_NAME="${1:?Usage: $0 FILE_NAME H1_TITLE PROMPT_FILE INTENT_ID}"
H1_TITLE="${2:?H1_TITLE required}"
PROMPT_FILE="${3:?PROMPT_FILE required}"
INTENT_ID="${4:?INTENT_ID required}"

REPO_SLUG="netzkontrast/soul.md"
BRANCH="${BRANCH:-claude/friendly-ride-eRsPr}"
AGENCY="${AGENCY:-/root/.claude/plugins/marketplaces/agency/bin/agency}"

if [ ! -f "$PROMPT_FILE" ]; then
  echo "FAIL: prompt file $PROMPT_FILE not found" >&2
  exit 1
fi

PROMPT_BODY=$(cat "$PROMPT_FILE")

# Pre-flight checks
if [ -z "${JULES_API_KEY:-}" ]; then
  echo "FAIL: JULES_API_KEY not in env" >&2
  exit 1
fi

# Dispatch via agency execute
"$AGENCY" execute --code "
d = await call_tool('capability_jules_dispatch', {
  'source': '$REPO_SLUG',
  'starting_branch': '$BRANCH',
  'prompt': $(python3 -c "import json,sys; print(json.dumps(sys.stdin.read()))" <<< "$PROMPT_BODY"),
  'title': 'little-data: author $FILE_NAME',
  'require_plan_approval': True,
  'intent_id': '$INTENT_ID',
  'agent_id': 'agent:jules',
  'alias': 'little-data-$FILE_NAME'
})
return d
" 2>&1
