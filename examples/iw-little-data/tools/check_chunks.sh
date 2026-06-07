#!/usr/bin/env bash
# check_chunks.sh — chunk-quality gate (R13).
#
# Rulebook R4: "~2 000-char blocks; repeat key nouns; no cross-chunk pronouns;
# one chunk wins per file per query." This gate enforces the size discipline
# programmatically by measuring the byte length of every scenario block
# (between consecutive `### S-` or `### F-` anchors) and failing if any block
# sits outside the safe band — which would split awkwardly across Langdock's
# ~2 000-char RAG chunks (1 chunk wins per file per query).
#
# HARD FAIL (exit 1) on any of:
#   - scenario block >  MAX_BYTES (default 4096)  → splits across chunks; the
#     wrong half wins for half the queries
#   - scenario block <  MIN_BYTES (default 600)   → too thin to carry the trigger
#     + 9 fields + Fallstricke meaningfully
#
# SOFT WARN (exit 0):
#   - block > WARN_BYTES (default 3200)           → near the danger zone
#
# Skips: persona files (11/12 are deliberately voice-rich, longer blocks fine),
#        glossar (15 has its own structure), anweisung (13 different unit),
#        links (18 different unit), iw-brand (19 different unit).
#
# Usage:
#   ./check_chunks.sh <FILE>
#   ./check_chunks.sh --all
# Exit codes: 0 = PASS, 1 = FAIL, 2 = usage / dir missing

set -uo pipefail
KNOWLEDGE_DIR="${KNOWLEDGE_DIR:-langdock-deploy/knowledge}"
MAX_BYTES="${MAX_BYTES:-4096}"
WARN_BYTES="${WARN_BYTES:-3200}"
MIN_BYTES="${MIN_BYTES:-600}"

check_one() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "[FAIL] $file: not found"; return 2
  fi
  local name; name="$(basename "$file")"
  case "$name" in
    11-persona-*|12-persona-*|13-data-agent-anweisungen*|15-glossar*|18-quellen*|18-links*|*-deeplinks*|19-iwmedien*|20-iw-medien*)
      echo "[skip] $name: kind exempt from chunk-size gate"; return 0 ;;
  esac
  python3 - "$file" "$MAX_BYTES" "$WARN_BYTES" "$MIN_BYTES" "$name" <<'PY'
import re, sys, io
path, maxb, warnb, minb, name = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4]), sys.argv[5]
text = io.open(path, encoding="utf-8").read()
parts = re.split(r"(?m)^### (S-[A-Z]+-\d+)\b", text)
# parts = [pre, id1, body1, id2, body2, ...]
fail = 0; over = []; under = []; warn = []
for i in range(1, len(parts), 2):
    sid = parts[i]
    body = parts[i+1] if i+1 < len(parts) else ""
    n = len((sid + body).encode("utf-8"))
    if   n > maxb:  over.append((sid, n)); fail = 1
    elif n > warnb: warn.append((sid, n))
    if   n < minb:  under.append((sid, n)); fail = 1
if over:
    print(f"[FAIL] {name}: {len(over)} scenario(s) > {maxb} bytes (will split across RAG chunks):")
    for sid, n in over: print(f"         {sid}: {n} B")
if under:
    print(f"[FAIL] {name}: {len(under)} scenario(s) < {minb} bytes (too thin):")
    for sid, n in under: print(f"         {sid}: {n} B")
for sid, n in warn:
    print(f"[WARN] {name}: {sid} = {n} B (>{warnb}, near split-risk; consider trimming)")
if not fail:
    total = sum(len((parts[i]+parts[i+1] if i+1<len(parts) else parts[i]).encode("utf-8"))
                for i in range(1, len(parts), 2))
    nscen = (len(parts)-1)//2
    median = sorted(len((parts[i]+(parts[i+1] if i+1<len(parts) else "")).encode("utf-8"))
                    for i in range(1, len(parts), 2))[nscen//2] if nscen else 0
    print(f"[PASS] {name}: {nscen} scenarios, median {median} B, all in [{minb}, {maxb}]")
sys.exit(fail)
PY
}

if [ $# -lt 1 ]; then echo "Usage: $0 <FILE>  or  $0 --all"; exit 2; fi
if [ "$1" = "--all" ]; then
  [ -d "$KNOWLEDGE_DIR" ] || { echo "FAIL: $KNOWLEDGE_DIR does not exist"; exit 2; }
  failures=0
  for f in "$KNOWLEDGE_DIR"/*.md; do
    check_one "$f" || ((failures++))
  done
  echo "---"
  echo "$failures file(s) failed chunk-quality."
  [ "$failures" -gt 0 ] && exit 1 || exit 0
else
  check_one "$1"
fi
