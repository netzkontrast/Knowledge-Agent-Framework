#!/usr/bin/env bash
# check_coherence.sh — cross-file coherence gate for knowledge files.
#
# Validates the Anschluss-Szenario reference graph and scenario-ID uniqueness:
#   1. Every "**Anschluss-Szenario:** S-XX-NNN" must reference a scenario ID that
#      exists somewhere in the knowledge folder (no dangling links).
#   2. No scenario ID (### S-XX-NNN) may be defined more than once across all files.
#
# Anschluss lines that point to prose (no S-XX-NNN token) are ignored — some
# scenarios legitimately describe a follow-up in words rather than by ID.
#
# Usage:
#   ./check_coherence.sh --all     # whole knowledge folder (the meaningful mode)
#   ./check_coherence.sh <FILE>    # single-file: checks that file's Anschluss refs
#                                  # against the whole folder's ID set
# Exit codes: 0 = PASS, 1 = FAIL, 2 = bad usage / dir missing

set -uo pipefail

KNOWLEDGE_DIR="${KNOWLEDGE_DIR:-langdock-deploy/knowledge}"
ID_RE='S-[A-Z]+-[0-9]+'

if [ $# -lt 1 ]; then
  echo "Usage: $0 --all  or  $0 <FILE>"; exit 2
fi
if [ ! -d "$KNOWLEDGE_DIR" ]; then
  echo "FAIL: $KNOWLEDGE_DIR does not exist"; exit 2
fi

# Build the set of all defined scenario IDs (header lines "### S-XX-NNN ...").
all_ids_file=$(mktemp)
grep -rhoE "^### (${ID_RE})" "$KNOWLEDGE_DIR"/*.md | sed -E 's/^### //' | sort > "$all_ids_file"

fail=0

# 1. Duplicate IDs (whole-folder property; reported in --all and single-file mode).
dupes=$(sort "$all_ids_file" | uniq -d)
if [ -n "$dupes" ]; then
  echo "[FAIL] duplicate scenario IDs defined more than once:"
  printf '%s\n' "$dupes" | sed 's/^/         /'
  fail=1
fi

# 2. Dangling Anschluss references.
check_refs() {
  local file="$1"; local name; name=$(basename "$file")
  local dangling=0
  # Extract referenced IDs from Anschluss lines only.
  while IFS= read -r ref; do
    [ -z "$ref" ] && continue
    if ! grep -qxF "$ref" "$all_ids_file"; then
      echo "[FAIL] $name: Anschluss-Szenario references undefined ID: $ref"
      dangling=1; fail=1
    fi
  done < <(grep -E '^\*\*Anschluss-Szenario:\*\*' "$file" | grep -oE "$ID_RE" | sort -u)
  [ "$dangling" -eq 0 ] && echo "[ok]  $name: Anschluss refs resolve"
}

if [ "$1" = "--all" ]; then
  for f in "$KNOWLEDGE_DIR"/*.md; do check_refs "$f"; done
else
  [ -f "$1" ] || { echo "[FAIL] $1: not found"; rm -f "$all_ids_file"; exit 2; }
  check_refs "$1"
fi

rm -f "$all_ids_file"
echo "---"
if [ "$fail" -eq 0 ]; then echo "coherence PASS"; exit 0; else echo "coherence FAIL"; exit 1; fi
