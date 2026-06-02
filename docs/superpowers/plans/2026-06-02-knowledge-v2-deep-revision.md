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

- [ ] **L4-0a:** Extend `check_schema.sh` to (i) parse type code from ID header and dispatch
      type-specific payload checks (R18), (ii) accept BOTH old verbose markers and new
      terse markers (R19) during migration. Extend `kb_index.py` to report per-type coverage.
- [ ] **L4-0b:** Add the schema-definition section to AGENT_PROMPT (~700 chars) defining
      the terse markers and the type-specific slot-6 markers per R19. Trim the WISSENS-
      NAVIGATION section by the same amount to keep AGENT_PROMPT ≤ 15 000 chars.
- [ ] **L4-1..15:** Per-file work — one commit per file, doing R18 + R19 together:
      (i) classify each scenario into P/A/M/S/T/W/C/D/G via individual read,
      (ii) re-author the payload field for the new type if it changes,
      (iii) bulk-rename `S-XXX-NNN` → `S-XXX-Y-NNN` in the file + same-file Anschluss
      references, (iv) bulk-rename all 10 verbose markers to the terse R19 form,
      (v) re-validate (schema dispatches per type + accepts terse markers).
      Cross-file Anschluss references are renamed when the target file lands.
- [ ] **L4-final:** Spec-panel review of the type distribution and per-type quality.

Loop-4 entry condition: catalog + R18 + R19 committed and v0.9-RC tagged (loop 3 close).

### Loop-4 priorities (from spec-panel loop-3 review verdict)

1. **R7a rollout across 13 remaining files** (~770 fields) — every Empfehlung hand-crafted per R7a-rollout-discipline. Spot-check confirmed 4/20 files done are persona-faithful and zero template feel; that bar is the floor.
2. **L4-1 file 06 classification with corrected expectation** — NOT A-dominated; expect **G ~50 % / D ~25 % / A ~19 %**. Author Guide-type `Vorlage:` skeletons for architecture briefings; reserve `API:` for true integration scenarios.
3. **L4-0a gate evolution** — extend `check_schema.sh` to parse type code + dispatch payload check (R18) and accept both old and terse markers (R19); extend `kb_index.py` to report per-type coverage.
4. **File 08 chunk-trim** — 22 scenarios in 3200–3800 B band incl. S-SG-060 at 3801 B; bring below 3200 B warn line in the L4-6 pass.

After priorities 1+2+4 close → tag **v1.0-Beta**.

## End-of-pass review (subagent — the only subagent use)

- [ ] Dispatch a spec-panel **review subagent**: re-run M01–M13 as TEST criteria over the whole base; return a prioritized improvement ledger ([C]/[M]/[m]).
- [ ] Feed ledger into the rulebook change-log + next loop's per-file rules.
- [ ] If the ledger is empty (no improvement potential) → converged → tag `v1.0-Beta`.
  Otherwise loop again, deeper.

## Definition of done (per the goal)

Review subagent yields no remaining improvement potential; all gates green;
rulebook + per-file rules current; AGENT_PROMPT ≤ 15 000 chars; release `v1.0-Beta`.


### Loop-4 progress log

- [x] **L4-0a** — R20 directive in rulebook; validators + kb_index evolved (verbose+terse markers, type-from-slot-6, per-type tally, sharpened noun stoplist). Commit ff6e7b2.
- [x] **PILOT** — file 19 migrated to terse markers (D-type), full gate suite validated. Commit 74c9ec6.
- [x] **R19 base-wide** — terse-marker sweep across all 17 scenario files; 179,466 B removed; all gates green. Commit 7b75946. Type baseline: P=986, K=110, D=10.
- [ ] **L4-0b** — AGENT_PROMPT schema-definition section (~700 chars) + nav trim. (Do with first R20 file.)
- [~] **R20 best-type re-authoring** (per file): P → Workflow/MCP/Skill/Code/Config/Decision/Guide where genuinely better, source-grounded. Order: 04 (pure W) → 06 (G/D/A) → 05 (G-dominant) → 10 (S/P) → 00-03,07-09 → 14/16/17.
  - [x] **File 04 (Workflows) DONE** — all 80 scenarios best-typed: 79 `Workflow:`+`Budget:`+`Empfehlung:`, 1 `Decision` (S-WF-021 Workflow-vs-Agent-Matrix). R7a Empfehlung coverage 80/80. Commits 2d152ae, b9ca3d4, 6a678f3, 103325b (b4), b9ca3d4-chain, batches 4–10 (…→ file04 fully Workflow-typed). All gates green; median chunk 2 500 B.
  - [x] **File 06 (API/Deployment) DONE** — all 80 scenarios best-typed: **72 Guide-Vorlage, 7 Decision, 1 Workflow** (S-API-058 Changelog-Benachrichtigung). R7a Empfehlung 80/80. Confirms the loop-3 prediction that this file is G-dominant (the filename "api" misleads; the real deliverable is almost always an architecture briefing/dossier/spec, not an executable API call — Little Data berät). Genuine `API:`-type scenarios did **not** materialise: even Search/Streaming/Embedding/Vision/Webhook scenarios deliver a *concept/blueprint document*, so G is the honest type. Chunk-opt follow-up: condensed the now-redundant Vorgehen of 26 scenarios (Vorgehen duplicated the new Vorlage) → median 2820→2728 B, all under 4096. Commits 9c… batches 1–9 + condense.
  - [ ] **File 05 next** (Integrationen/MCP) — loop-3 review: G-dominant; expect `Vorlage:` (setup guides) + `MCP:`/`M`-type for true MCP-server scenarios + some `D`. Watch Vorgehen↔Vorlage duplication (condense in the same pass, not after).
  - [ ] **Then:** 10 (S/P), 00–03, 07–09, 14/16/17.
- [ ] **R7a Empfehlung rollout** to the 13 remaining content files (combined with each R20 file touch).
- [ ] **Critical-thinking scenarios (R20.3) + scenario chains (R20.4)** added opportunistically per file.
- [ ] **File 08 chunk-trim** (22 scenarios 3200-3800 B) during its R20 pass.
- [ ] **Loop-4 review subagent** → then v1.0-Beta.
