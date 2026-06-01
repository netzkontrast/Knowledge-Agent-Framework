#!/usr/bin/env bash
# check_phase4.sh — Phase 4 master validation runner.
# Aggregates all check_* tools into a single PASS/FAIL report. Returns non-zero
# on any hard failure (WARN-level findings still print but don't fail the run).
#
# Usage: ./tools/check_phase4.sh
#
# Exit codes:
#   0 = all hard checks pass
#   1 = at least one hard check failed
#   2 = tool dependency missing (e.g. python3)

set -uo pipefail

REPO_ROOT="${REPO_ROOT:-/home/user/soul.md}"
cd "$REPO_ROOT"

TOOLS="tools"
PROMPT="langdock-deploy/AGENT_PROMPT.md"
KNOWLEDGE="langdock-deploy/knowledge"
MATRIX="data/coverage-matrix.md"

HARD_FAIL=0
SOFT_WARN=0

section() {
  echo
  echo "============================================================"
  echo "==  $1"
  echo "============================================================"
}

run_hard() {
  local name="$1"; shift
  echo
  echo "--- $name ---"
  if "$@"; then
    echo "[OK] $name"
  else
    echo "[FAIL] $name (exit $?)"
    HARD_FAIL=$((HARD_FAIL + 1))
  fi
}

run_soft() {
  local name="$1"; shift
  echo
  echo "--- $name (advisory) ---"
  if "$@"; then
    echo "[OK] $name"
  else
    echo "[WARN] $name (exit $?)"
    SOFT_WARN=$((SOFT_WARN + 1))
  fi
}

section "1/5 AGENT_PROMPT size (char budget 15000)"
run_hard "prompt-size" bash "$TOOLS/check_prompt_size.sh" "$PROMPT" 15000

section "2/5 AGENT_PROMPT tokens (advisory)"
if command -v python3 >/dev/null 2>&1; then
  run_soft "prompt-tokens" python3 "$TOOLS/check_prompt_tokens.py" "$PROMPT"
else
  echo "[SKIP] python3 not available"
fi

section "3/5 Knowledge files schema"
run_hard "schema-all" bash "$TOOLS/check_schema.sh" --all

section "4/5 Coverage matrix → headings"
run_hard "coverage" bash "$TOOLS/check_coverage.sh" "$MATRIX" "$KNOWLEDGE"

section "5/5 Cross-file chunk overlap (advisory)"
if command -v python3 >/dev/null 2>&1 && python3 -c "import sentence_transformers" 2>/dev/null; then
  run_soft "overlap" python3 "$TOOLS/check_overlap.py" "$KNOWLEDGE" 0.78
else
  echo "[SKIP] sentence-transformers not installed; install with: pip install sentence-transformers"
fi

section "SUMMARY"
KNOWLEDGE_COUNT=$(ls "$KNOWLEDGE"/*.md 2>/dev/null | wc -l)
PROMPT_BYTES=$(wc -c < "$PROMPT" 2>/dev/null || echo 0)
echo "Knowledge files on disk: $KNOWLEDGE_COUNT (target: 14 active, 16 budget)"
echo "AGENT_PROMPT.md:          $PROMPT_BYTES bytes"
echo "Hard failures:            $HARD_FAIL"
echo "Soft warnings:            $SOFT_WARN"

if [ "$HARD_FAIL" -gt 0 ]; then
  echo
  echo "RESULT: FAIL ($HARD_FAIL hard check(s) failed)"
  exit 1
else
  echo
  echo "RESULT: PASS ($SOFT_WARN advisory warning(s))"
  exit 0
fi
