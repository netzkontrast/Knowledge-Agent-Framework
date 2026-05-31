#!/usr/bin/env bash
# check_coverage.sh — verify Coverage-Matrix entries exist in knowledge files.
# Parses data/coverage-matrix.md rows of the form:
#     | <ID> | ... | <owning-file> | <owning-H2-or-H3> | ... |
# For each non-empty row, greps the knowledge file for the heading.
# Reports misses. Exit 1 on any miss.

set -euo pipefail

MATRIX="${1:-little-data/data/coverage-matrix.md}"
KNOWLEDGE_DIR="${2:-little-data/langdock-deploy/knowledge}"

if [ ! -f "$MATRIX" ]; then
  echo "WARN: $MATRIX does not exist yet (skipping)."
  exit 0
fi

if [ ! -d "$KNOWLEDGE_DIR" ]; then
  echo "WARN: $KNOWLEDGE_DIR does not exist yet (skipping)."
  exit 0
fi

MISSES=0
TOTAL=0

# Match pipe-delimited rows where columns look like (id, ..., owning-file, owning-heading, ...).
# Headings might be prefixed with the H2/H3 marker — we strip those.
while IFS= read -r line; do
  # Skip header rows / separator rows like "| --- | --- |"
  if [[ "$line" =~ ^\|[[:space:]]*-+[[:space:]]*\| ]]; then continue; fi
  if [[ ! "$line" =~ ^\| ]]; then continue; fi

  # Extract owning-file (look for a column matching .md filename or filename-without-md)
  OWNING_FILE=$(echo "$line" | awk -F'|' '
    {for (i=1; i<=NF; i++) if ($i ~ /[0-9]+[a-z]?-[a-z-]+/) { gsub(/[ `]/, "", $i); print $i; exit }}
  ')
  # Extract owning-heading (look for a column starting with H2/H3 marker or quoted "Heading")
  OWNING_HEADING=$(echo "$line" | awk -F'|' '
    {for (i=1; i<=NF; i++) if ($i ~ /[A-Z][a-zA-Z äöüÄÖÜß-]+/) { sub(/^[[:space:]]+/, "", $i); sub(/[[:space:]]+$/, "", $i); if (length($i) > 4 && $i !~ /\.md$/) { print $i; exit } }}
  ')

  if [ -z "$OWNING_FILE" ] || [ -z "$OWNING_HEADING" ]; then continue; fi

  TOTAL=$((TOTAL + 1))
  FULLPATH="${KNOWLEDGE_DIR}/${OWNING_FILE}.md"
  if [ ! -f "$FULLPATH" ]; then
    echo "MISS (no file): $OWNING_FILE.md — needed for heading '$OWNING_HEADING'"
    MISSES=$((MISSES + 1))
    continue
  fi

  # Grep for heading line (## or ###)
  if ! grep -qE "^#+[[:space:]]+${OWNING_HEADING}" "$FULLPATH" 2>/dev/null; then
    echo "MISS (no heading): '$OWNING_HEADING' in $OWNING_FILE.md"
    MISSES=$((MISSES + 1))
  fi
done < "$MATRIX"

echo "---"
echo "Checked: $TOTAL entries. Misses: $MISSES."

if [ "$MISSES" -gt 0 ]; then
  exit 1
fi
