#!/usr/bin/env bash
# check_grounding.sh — source-grounding gate for knowledge files.
#
# HARD FAIL (exit 1) if any knowledge file contains a genuine ungrounded-fact marker:
#   "über IW-Recherche zu verifizieren"  — the authoring tag for an unresearched IW fact
#   "[unverified]"                        — generic unverified tag
# These signal a fact that has not been source-verified and therefore must not ship
# (per CLAUDE.md non-negotiable discipline #1: source-grounding).
#
# IMPORTANT — what is NOT a failure: generic "zu prüfen" / "zu verifizieren" prose is
# legitimate (legal-review/HITL caveats like "...durch die Rechtsabteilung zu prüfen",
# "...mit dem DSB zu verifizieren") and the runtime placeholder convention the deployed
# agent is instructed to emit (e.g. '[zu verifizieren]' inside example prompts). The gate
# deliberately does NOT flag those — only the unresearched-fact tag above.
#
# SOFT WARN: scenario files (content + IW supplements 14/16/17) whose
# "Wann nutzen (Trigger)" lines do not cite a source via "(Quelle:".
#
# Usage:
#   ./check_grounding.sh <FILE>
#   ./check_grounding.sh --all     # every .md in langdock-deploy/knowledge/
# Exit codes: 0 = PASS, 1 = FAIL, 2 = bad usage / dir missing

set -uo pipefail

KNOWLEDGE_DIR="${KNOWLEDGE_DIR:-langdock-deploy/knowledge}"

# Genuine ungrounded-fact markers only (case-insensitive). Kept as a single ERE alternation.
# NOTE: generic "zu prüfen"/"zu verifizieren" and bare "TBD"/"TODO" are intentionally NOT
# here — they occur as legitimate scenario content (legal caveats, placeholder-rejection
# examples the agent is taught to handle). See header.
MARKERS='über IW-Recherche zu verifizieren|\[unverified\]'

check_one() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "[FAIL] $file: not found"
    return 2
  fi
  local name; name=$(basename "$file")
  local fail=0

  # Hard fail: ungrounded markers
  local hits; hits=$(grep -niE "$MARKERS" "$file" || true)
  if [ -n "$hits" ]; then
    local n; n=$(printf '%s\n' "$hits" | grep -c .)
    echo "[FAIL] $name: $n ungrounded-content marker(s):"
    printf '%s\n' "$hits" | sed 's/^/         /'
    fail=1
  fi

  # Soft warn: scenario triggers without a (Quelle: ...) citation.
  # Only meaningful for scenario files; skip persona/anweisung/glossar/links kinds.
  case "$name" in
    11-*|12-*|13-*|15-*|18-*) : ;;  # non-scenario kinds — skip Quelle check
    *)
      local trig; trig=$(grep -c '^\*\*Wann nutzen (Trigger):' "$file")
      local trig_q; trig_q=$(grep -cE '^\*\*Wann nutzen \(Trigger\):.*\(Quelle:' "$file")
      if [ "$trig" -gt 0 ] && [ "$trig_q" -lt "$trig" ]; then
        echo "[WARN] $name: $((trig - trig_q)) of $trig Trigger lines lack a (Quelle: ...) citation"
      fi
      ;;
  esac

  if [ "$fail" -eq 0 ]; then
    echo "[PASS] $name: source-grounding clean"
    return 0
  fi
  return 1
}

if [ $# -lt 1 ]; then
  echo "Usage: $0 <FILE>  or  $0 --all"; exit 2
fi

if [ "$1" = "--all" ]; then
  if [ ! -d "$KNOWLEDGE_DIR" ]; then
    echo "FAIL: $KNOWLEDGE_DIR does not exist"; exit 2
  fi
  failures=0
  for f in "$KNOWLEDGE_DIR"/*.md; do
    check_one "$f" || ((failures++))
  done
  echo "---"
  echo "$failures file(s) failed grounding."
  [ "$failures" -gt 0 ] && exit 1 || exit 0
else
  check_one "$1"
fi
