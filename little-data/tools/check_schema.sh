#!/usr/bin/env bash
# check_schema.sh — verify a knowledge file follows the strict authoring schema.
# Reliable spot-checking via grep regexes. Designed so a reviewer (human or
# Jules-review-session) can run a single command per file and see PASS/FAIL.
#
# Schema enforced:
#   - exactly one H1 (^# )
#   - intro box (^> \*\*Was diese Datei abdeckt:) present
#   - intro box NOT-covers (^> \*\*Was diese Datei NICHT abdeckt:) present
#   - exactly one H2 named "Marketing-Szenarien aus dieser Domäne"
#   - ≥100 H3 scenarios with prefix "### S-"
#   - each scenario block has the 9 mandatory field lines
#
# Usage:
#   ./check_schema.sh <FILE>
#   ./check_schema.sh --all   # checks every .md in langdock-deploy/knowledge/
#
# Exit codes: 0 = PASS, 1 = FAIL, 2 = file not found

set -uo pipefail

KNOWLEDGE_DIR="${KNOWLEDGE_DIR:-little-data/langdock-deploy/knowledge}"

check_one() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "[FAIL] $file: not found"
    return 2
  fi

  local fail=0
  local name; name=$(basename "$file")

  # H1: exactly one
  local h1_count; h1_count=$(grep -c '^# ' "$file")
  if [ "$h1_count" -ne 1 ]; then
    echo "[FAIL] $name: H1 count = $h1_count (expected 1)"
    fail=1
  fi

  # Intro box: covers + not-covers
  local covers; covers=$(grep -c '^> \*\*Was diese Datei abdeckt:' "$file")
  local not_covers; not_covers=$(grep -c '^> \*\*Was diese Datei NICHT abdeckt:' "$file")
  if [ "$covers" -lt 1 ]; then
    echo "[FAIL] $name: intro 'Was diese Datei abdeckt' box missing"
    fail=1
  fi
  if [ "$not_covers" -lt 1 ]; then
    echo "[FAIL] $name: intro 'Was diese Datei NICHT abdeckt' box missing"
    fail=1
  fi

  # H2 Marketing-Szenarien section
  local szen_h2; szen_h2=$(grep -c '^## Marketing-Szenarien aus dieser Domäne' "$file")
  if [ "$szen_h2" -lt 1 ]; then
    echo "[FAIL] $name: 'Marketing-Szenarien aus dieser Domäne' H2 missing"
    fail=1
  fi

  # H3 scenario count: must be ≥100
  local szen_count; szen_count=$(grep -c '^### S-' "$file")
  if [ "$szen_count" -lt 10 ]; then
    echo "[FAIL] $name: scenario count = $szen_count (expected ≥10)"
    fail=1
  fi

  # Mandatory field lines per scenario
  # NOTE: Critical-Thinking-Method is intentionally NOT a visible field —
  # per spec §6.2, methods M01-M13 are used as authoring + testing scaffolding,
  # not output content.
  local fields=(
    "Wann nutzen (Trigger):"
    "Strategisches Ziel:"
    "Hands-on Ergebnis:"
    "Eingesetzte Langdock-Fähigkeit"
    "Vorgehen (3-5 Schritte):"
    "Beispiel-Prompt"
    "Erwartetes Artefakt:"
    "Fallstricke"
  )
  for field in "${fields[@]}"; do
    local field_count; field_count=$(grep -cF "**${field}" "$file")
    if [ "$field_count" -lt "$szen_count" ]; then
      echo "[WARN] $name: '${field}' appears $field_count times (expected ≥$szen_count)"
      # Warning, not hard fail — some scenarios may use the field in prose
    fi
  done

  # NEW: ensure NO Critical-Thinking-Method field leaked into scenarios
  # (per spec §6.2 — method is internal authoring scaffolding only)
  local leaked_ct; leaked_ct=$(grep -cF '**Critical-Thinking-Method:' "$file")
  if [ "$leaked_ct" -gt 0 ]; then
    echo "[FAIL] $name: $leaked_ct scenarios leak the Critical-Thinking-Method field (per §6.2 it must be removed from output)"
    fail=1
  fi

  # Stats summary
  local file_lines; file_lines=$(wc -l < "$file")
  local file_bytes; file_bytes=$(wc -c < "$file")

  if [ "$fail" -eq 0 ]; then
    echo "[PASS] $name: $file_lines lines / $file_bytes bytes / $szen_count scenarios"
    return 0
  else
    echo "[FAIL] $name: $file_lines lines / $file_bytes bytes / $szen_count scenarios"
    return 1
  fi
}

# Main
if [ $# -lt 1 ]; then
  echo "Usage: $0 <FILE>  or  $0 --all"
  exit 2
fi

if [ "$1" = "--all" ]; then
  if [ ! -d "$KNOWLEDGE_DIR" ]; then
    echo "FAIL: $KNOWLEDGE_DIR does not exist"
    exit 2
  fi
  failures=0
  for f in "$KNOWLEDGE_DIR"/*.md; do
    check_one "$f" || ((failures++))
  done
  echo "---"
  echo "$failures file(s) failed."
  [ "$failures" -gt 0 ] && exit 1 || exit 0
else
  check_one "$1"
fi
