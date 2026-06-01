#!/usr/bin/env bash
# check_prompt_size.sh — fail if AGENT_PROMPT.md exceeds character budget.
# Usage: ./check_prompt_size.sh [path] [limit]
# Defaults: path=langdock-deploy/AGENT_PROMPT.md, limit=15000

set -euo pipefail

PROMPT="${1:-langdock-deploy/AGENT_PROMPT.md}"
LIMIT="${2:-15000}"

if [ ! -f "$PROMPT" ]; then
  echo "WARN: $PROMPT does not exist yet (skipping)."
  exit 0
fi

ACTUAL=$(wc -m < "$PROMPT" | tr -d ' ')

if [ "$ACTUAL" -gt "$LIMIT" ]; then
  echo "FAIL: $PROMPT is $ACTUAL chars; limit is $LIMIT."
  exit 1
fi

echo "OK: $PROMPT is $ACTUAL / $LIMIT chars (headroom: $((LIMIT - ACTUAL)))."
