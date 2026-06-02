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

KNOWLEDGE_DIR="${KNOWLEDGE_DIR:-langdock-deploy/knowledge}"

check_one() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "[FAIL] $file: not found"
    return 2
  fi

  local fail=0
  local name; name=$(basename "$file")

  # Detect file kind by basename prefix:
  #   - 11/12 are persona files (different H2/fields).
  #   - 13 is the per-Thema "Data-Anweisung" file (no scenarios; H2 anchor blocks).
  #   - 15 is the Glossar & FAQ lookup file (term definitions + FAQ entries).
  local kind="content"
  case "$name" in
    11-persona-core*|12-persona-julia-modus*) kind="persona" ;;
    13-data-agent-anweisungen*) kind="anweisung" ;;
    15-glossar*) kind="glossar" ;;
    18-quellen*|18-links*|*-deeplinks*) kind="links" ;;
    19-iwmedien*|20-iw-medien*) kind="iw-brand" ;;
  esac

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

  # Anweisung kind (file 13): validates per-Thema "Data-Anweisung" H2 anchor blocks
  # instead of scenarios. Each block must carry the literal "**Data-Anweisung" anchor
  # on its first content line (per AGENT_PROMPT.md SCHRITT 3 deterministic retrieval).
  if [ "$kind" = "anweisung" ]; then
    local anw_h2; anw_h2=$(grep -cE '^## Data-Anweisung ' "$file")
    local anw_anchor; anw_anchor=$(grep -cE '^\*\*Data-Anweisung ' "$file")
    if [ "$anw_h2" -lt 10 ]; then
      echo "[FAIL] $name: Data-Anweisung H2 blocks = $anw_h2 (expected ≥10)"
      fail=1
    fi
    if [ "$anw_anchor" -lt "$anw_h2" ]; then
      echo "[WARN] $name: anchor line '**Data-Anweisung ...' appears $anw_anchor times (expected ≥$anw_h2)"
    fi
    local file_lines; file_lines=$(wc -l < "$file")
    local file_bytes; file_bytes=$(wc -c < "$file")
    if [ "$fail" -eq 0 ]; then
      echo "[PASS] $name: $file_lines lines / $file_bytes bytes / $anw_h2 Data-Anweisungen"
      return 0
    else
      echo "[FAIL] $name: $file_lines lines / $file_bytes bytes / $anw_h2 Data-Anweisungen"
      return 1
    fi
  fi

  # Glossar kind (file 15): validates a lookup-oriented Glossar + FAQ file
  # instead of scenarios. Requires ≥1 "## Glossar" section and ≥15 "### F-" FAQ entries.
  if [ "$kind" = "glossar" ]; then
    local glo_h2; glo_h2=$(grep -cE '^## Glossar' "$file")
    local faq_h3; faq_h3=$(grep -cE '^### F-' "$file")
    if [ "$glo_h2" -lt 1 ]; then
      echo "[FAIL] $name: '## Glossar' section missing"
      fail=1
    fi
    if [ "$faq_h3" -lt 15 ]; then
      echo "[FAIL] $name: FAQ entries (### F-) = $faq_h3 (expected ≥15)"
      fail=1
    fi
    local file_lines; file_lines=$(wc -l < "$file")
    local file_bytes; file_bytes=$(wc -c < "$file")
    if [ "$fail" -eq 0 ]; then
      echo "[PASS] $name: $file_lines lines / $file_bytes bytes / $glo_h2 Glossar-Sektionen, $faq_h3 FAQ-Einträge"
      return 0
    else
      echo "[FAIL] $name: $file_lines lines / $file_bytes bytes / $glo_h2 Glossar-Sektionen, $faq_h3 FAQ-Einträge"
      return 1
    fi
  fi

  # Links kind (file 18): a domain-clustered catalogue of external links + search contexts
  # that RAG surfaces so the agent can point to authoritative deep-links. Requires ≥4 cluster
  # H2 sections and ≥15 markdown links to http(s) URLs.
  if [ "$kind" = "links" ]; then
    local clusters; clusters=$(grep -cE '^## ' "$file")
    local links; links=$(grep -coE '\]\(https?://' "$file")
    if [ "$clusters" -lt 4 ]; then
      echo "[FAIL] $name: domain cluster H2 sections = $clusters (expected ≥4)"
      fail=1
    fi
    if [ "$links" -lt 15 ]; then
      echo "[FAIL] $name: external links = $links (expected ≥15)"
      fail=1
    fi
    local file_lines; file_lines=$(wc -l < "$file")
    local file_bytes; file_bytes=$(wc -c < "$file")
    if [ "$fail" -eq 0 ]; then
      echo "[PASS] $name: $file_lines lines / $file_bytes bytes / $clusters Cluster, $links Links"
      return 0
    else
      echo "[FAIL] $name: $file_lines lines / $file_bytes bytes / $clusters Cluster, $links Links"
      return 1
    fi
  fi

  # Scenario-H2 section — name varies by kind
  local szen_h2_re
  if [ "$kind" = "persona" ]; then
    # 11 → "Sprachpatterns und Beispiel-Reaktionen"
    # 12 → "Julia-Modus Interaktions-Patterns"
    szen_h2_re='^## (Sprachpatterns und Beispiel-Reaktionen|Julia-Modus Interaktions-Patterns)'
  else
    szen_h2_re='^## Marketing-Szenarien aus dieser Domäne'
  fi
  local szen_h2; szen_h2=$(grep -cE "$szen_h2_re" "$file")
  if [ "$szen_h2" -lt 1 ]; then
    echo "[FAIL] $name: scenario H2 missing (expected match for: $szen_h2_re)"
    fail=1
  fi

  # H3 scenario count threshold by kind:
  #   content files (00-10): ≥40 (pivot 2026-05-31: full source-grounded rebuild; current target 80).
  #   persona files (11/12): ≥20 (per build-plan Phase-2 gate — different scale than content scenarios).
  #   IW supplement files (14/16/17): ≥20 (client-specific scenario packs).
  local szen_min=40
  if [ "$kind" = "persona" ]; then szen_min=20; fi
  case "$name" in 14-*|16-*|17-*) szen_min=20 ;; esac
  # iw-brand (file 19/20): R7 advice-style file — boutique scale, decision-focused;
  # threshold deliberately low so the file stays chunk-optimised (R13) and on-topic (R14).
  if [ "$kind" = "iw-brand" ]; then szen_min=5; fi
  local szen_count; szen_count=$(grep -c '^### S-' "$file")
  if [ "$szen_count" -lt "$szen_min" ]; then
    echo "[FAIL] $name: scenario count = $szen_count (expected ≥$szen_min)"
    fail=1
  fi

  # Mandatory field lines per scenario.
  # R19: each field accepts BOTH the verbose markdown marker AND the terse
  # line-anchored marker (Trigger: / Ziel: / ...). During migration both forms
  # coexist; once all files are terse the verbose alternatives can be dropped.
  # NOTE: M01-M13 stay invisible authoring scaffolding (R5) EXCEPT where a
  # critical-thinking scenario makes the method its explicit subject (R20.3).
  # field label | ERE matching verbose-or-terse at start of line
  local field_res=(
    "Trigger|^(\*\*Wann nutzen \(Trigger\):|Trigger:)"
    "Ziel|^(\*\*Strategisches Ziel:|Ziel:)"
    "Ergebnis|^(\*\*Hands-on Ergebnis:|Ergebnis:)"
    "Fähigkeit|^(\*\*Eingesetzte Langdock-Fähigkeit|Fähigkeit:)"
    "Artefakt|^(\*\*Erwartetes Artefakt:|Artefakt:)"
    "Fallstricke|^(\*\*Fallstricke|Fallstricke:)"
  )
  for pair in "${field_res[@]}"; do
    local label="${pair%%|*}"; local re="${pair#*|}"
    local field_count; field_count=$(grep -cE "$re" "$file")
    if [ "$field_count" -lt "$szen_count" ]; then
      echo "[WARN] $name: '${label}' appears $field_count times (expected ≥$szen_count)"
    fi
  done

  # Slot-6 payload (R18/R19/R7b) — the solution-type field. Accept verbose
  # Beispiel-Prompt|Konversation|Konkrete Empfehlung OR any terse type marker:
  # Prompt: API: MCP: Skill: Code: Workflow: Pfad: Empfehlung: Vorlage:
  local example_count; example_count=$(grep -cE '^(\*\*(Beispiel-(Prompt|Konversation)|Konkrete Empfehlung)|(Prompt|API|MCP|Skill|Code|Workflow|Pfad|Empfehlung|Vorlage):)' "$file")
  if [ "$example_count" -lt "$szen_count" ]; then
    echo "[WARN] $name: slot-6 payload (Prompt/API/MCP/Skill/Code/Workflow/Pfad/Empfehlung/Vorlage or verbose) appears $example_count times (expected ≥$szen_count)"
  fi

  # Konkrete Empfehlung (R7a) — universal field. SOFT WARN during rollout.
  # Accept verbose **Konkrete Empfehlung: OR terse Empfehlung: (the latter also
  # serves as the D-type slot-6 payload, per R19).
  case "$kind" in
    content|persona)
      local emp_count; emp_count=$(grep -cE '^(\*\*Konkrete Empfehlung:|Empfehlung:)' "$file")
      if [ "$emp_count" -lt "$szen_count" ]; then
        echo "[WARN] $name: R7a Empfehlung coverage: $emp_count/$szen_count scenarios"
      fi
      ;;
  esac

  # Vorgehen field — verbose "Vorgehen (N Schritte):" OR terse "Vorgehen:".
  local vorgehen_count; vorgehen_count=$(grep -cE '^(\*\*Vorgehen \([0-9]+(-[0-9]+)? Schritte?\):\*\*|Vorgehen:)' "$file")
  if [ "$vorgehen_count" -lt "$szen_count" ]; then
    echo "[WARN] $name: 'Vorgehen' appears $vorgehen_count times (expected ≥$szen_count)"
  fi

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
