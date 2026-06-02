# Knowledge v2 Deep-Revision — Implementation Plan (inline, looped)

> **For agentic workers:** authoring is done **inline** in the main session (no
> authoring subagents). Subagents are used **only** for the end-of-pass spec-panel
> review. Steps use checkbox (`- [ ]`) tracking.

**Goal:** Improve and extend every knowledge file (and add new files / scenario
kinds) using all repo knowledge, looping plan → improve → review until a review
subagent finds no remaining improvement potential.

**Architecture:** A central rulebook + per-file rules drive a scenario-by-scenario
inline pass over each file. After a full pass, one review subagent critiques the
whole base; findings feed the next loop and the rulebook. Each loop deepens scope.

**Tech stack:** Markdown knowledge files; bash validators in `tools/`
(`check_schema`, `check_grounding`, `check_coherence`, `check_prompt_size`, emoji guard).

---

## Inputs (read before starting and re-read each file)

- `docs/superpowers/specs/knowledge-authoring-rulebook.md` (central rules R0–R12)
- `docs/superpowers/specs/v2-file-rules/<NN>.md` (the file's own rules)
- `docs/superpowers/specs/v2-gap-log.md` (loop-1 findings)
- Verified sources: `data/research/13-langdock-pricing-verified-2026-06.md`,
  `data/research/14-iw-publikationsformate-verified-2026-06.md`, plus 04–12 research.

## Loop-1 status (done)

- [x] Diagnose (M01/M06 grounding, M07 coherence, M13 retrieval, M02/03/09 depth) → gap log
- [x] Fix 00/05 integration count, 06 duration, 00 AI-Act dates, 01 labels, 15 IW-format grounding
- [x] Rebuild 07 pricing to verified EUR (no multipliers); 09 phrasing; 13 confirmed
- [x] Grow 14 (22→39), 17 (22→39), 16 (22→28) with source-grounded gap-filling scenarios
- [x] All gates green; PR #23 open; verified-source research files added

## Loop 2+ — per-file deep pass (inline)

For EACH file `NN`, in order 00 → 18, then AGENT_PROMPT + CONVERSATION_STARTERS:

- [ ] **Step A — Re-read** rulebook + `v2-file-rules/NN.md` + plan.
- [ ] **Step B — Read** the whole file; list its scenarios.
- [ ] **Step C — Reflect** each scenario against R1–R12 + file rules. Note: ungrounded facts, missing `(Quelle:)`, weak/filler Fallstricke, >5 Vorgehen, trigger-noun collisions, coherence drift, thin artefacts, retrieval gaps.
- [ ] **Step D — Improve inline**, widening scope: fix issues; sharpen weak scenarios (genuine pre-mortem Fallstricke, concrete artefacts); add `(Quelle:)`; add NEW scenarios or advice-style entries (R7) for real gaps; merge intra-file duplicates; reserve/disambiguate trigger nouns (R4).
- [ ] **Step E — Update** `v2-file-rules/NN.md` with decisions + residual TODOs.
- [ ] **Step F — Validate** the file (schema + grounding + coherence + emoji); fix until green.
- [ ] **Step G — Commit + push** (one commit per file). Re-read rulebook + plan. Next file.

### File order & focus (loop 2)

| File | Primary loop-2 focus |
|---|---|
| 00 | overview coherence; trigger citations; M-method scenario sharpening |
| 01 | prompt-technique depth; thin artefacts; collisions (Brand Voice → reserve) |
| 02 | **add ~25 (Quelle:) citations**; UWG §5/§5a; dedup S-AK shadow-AI/deprecation/versioning |
| 03 | RAG canonical facts; keep as exemplar |
| 04 | ~10 citations; Newsletter/Pressemitteilung workflow noun-qualify |
| 05 | integration facts; MCP depth |
| 06 | ~? citations; API exemplar; deep-research duration consistency |
| 07 | citations on remaining 10 triggers; verify pricing still current |
| 08 | ~10 citations; AI-Act verify-pattern consistency; governance advice-style (R7) |
| 09 | CEO-ghostwriting/krisenkomm noun-qualify; price refs already fixed |
| 10 | prompt/skills depth; faktencheck noun reserve |
| 11 | **persona anchor**: voice fidelity, anti-patterns, anchor intact |
| 12 | **Julia-modus** anchor: relationship-mode delta sharpen |
| 13 | data-anweisungen: per-Thema directives; price refs valid |
| 14 | IW use-cases: verify IW facts; consider advice-style additions |
| 15 | glossar: terms vs 00–10 usage; FAQ depth |
| 16 | onboarding: expand toward fuller depth; advice-style fits well (R7) |
| 17 | think-tank: neutrality; verify IW facts |
| 18 | links: dead-link check; cluster coverage vs new scenarios |
| AGENT_PROMPT | reflect against final knowledge; keep ≤15 000 chars; anchors intact |

## Loop-4 task — Solution-Chunk-Schemata migration (per R18)

Per the catalog in `docs/superpowers/specs/solution-chunk-schemata-catalog.md`,
every scenario gets classified into one of nine chunk-type codes (P/A/M/S/T/W/C/D/G)
and renamed `S-XXX-NNN` → `S-XXX-Y-NNN`. Each scenario's payload field is
re-authored to match its type (a workflow scenario gets a `**Workflow-Architektur:**`
instead of a `**Beispiel-Prompt:**`, etc.). This is the loop-4 deep-pass agenda:

- [ ] **L4-0:** Extend `check_schema.sh` to parse type code from ID header and dispatch
      type-specific payload checks; extend `kb_index.py` to report per-type coverage.
- [ ] **L4-1..15:** Per-file classification + rename + payload re-authoring (file order
      in the catalog). Each file is one commit. Anschluss-Szenario references in the
      same file are renamed together. Cross-file Anschluss references are renamed when
      the target file lands.
- [ ] **L4-final:** Spec-panel review of the type distribution and per-type quality.

Loop-4 entry condition: catalog + R18 committed (done in loop 3 close).

## End-of-pass review (subagent — the only subagent use)

- [ ] Dispatch a spec-panel **review subagent**: re-run M01–M13 as TEST criteria over the whole base; return a prioritized improvement ledger ([C]/[M]/[m]).
- [ ] Feed ledger into the rulebook change-log + next loop's per-file rules.
- [ ] If the ledger is empty (no improvement potential) → converged → tag `v1.0-Beta`.
  Otherwise loop again, deeper.

## Definition of done (per the goal)

Review subagent yields no remaining improvement potential; all gates green;
rulebook + per-file rules current; AGENT_PROMPT ≤ 15 000 chars; release `v1.0-Beta`.
