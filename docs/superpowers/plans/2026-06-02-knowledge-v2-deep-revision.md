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
  - [x] **File 05 (Integrationen/MCP) DONE** — all 80 best-typed: **62 Guide-Vorlage, 16 MCP** (`MCP:`+`Tool:`+`Scope:` for committed MCP-server anbindungen: own server, Langdock-as-server, Airtable, LinkedIn-Ads, Meta-Ads, BigQuery, Snowflake, Event-platform, Confluence, Data-Lake, ERP, GA4-MCP, Search-Console, Notion-Knowledge), **1 Decision** (Slack-vs-Workflow boundary), **1 Prompt** (S-IM-006 source-bound board summary — genuinely prompt-driven, kept P + R7a). R7a 80/80. Key heuristic: committed-MCP path → M; "API/MCP **oder** HTTP-Brücke" conditional or assessment → G. File 05's `Vorgehen` is the *engagement process* ("Du lässt Little Data…"), genuinely complementary to the Vorlage, so **no** condensation needed — median held at ~2.8 KB throughout. Batches 1–10.
  - [x] **File 10 (Prompts/Skills) DONE** — all 80 best-typed: **52 Prompt** (genuine prompt-engineering deliverables stay P + R7a), **26 Guide-Vorlage** (prompt-infrastructure/governance: library setup, versioning, audits, PTCF/brand-voice standards, disclosure-checker, onboarding-kit), **2 Skill** (`Skill:`+`Trigger-Wörter:` — Tone-Shift S-PS-009, Tone-Transfer S-PS-070). R7a 80/80. **This file validated that P is the honest type where the deliverable is a runnable prompt** — the per-deliverable rule (output→P, infrastructure→G, reusable-micro-task→S) held cleanly. Critical-thinking-method scenarios (CoT S-PS-015/027, self-critique S-PS-065, fact-check S-PS-072) stay P and name the method (R20.3 exception). Batches 1–10.
  - [x] **File 00 (Langdock-Übersicht) DONE** — all 80 best-typed: **61 Guide-Vorlage, 16 Prompt, 2 Decision** (S-LU-028 BYOK-break-even, S-LU-072 build-vs-buy), **1 Workflow** (S-LU-042 bulk-localization). R7a 80/80. The 16 P split: the 10-scenario CT-method block (S-LU-001..010, methods named per R20.3) + generation tasks (ROI calc, doc-synthesis, calendar, deep-research, board deck S-LU-058). The G-majority confirms file 00 is the strategic-overview file — its back half (050..080) is almost entirely adoption/governance/strategy advisory, exactly where "G is the honest type." Distinct trigger nouns kept across all 80 (backup/meeting/maturity/onboarding/multi-workspace/labeling/martech/CI-loop/community/ROI-dashboard/cadence/cross-team/consolidation/change-mgmt/literacy/vendor/multi-region/policy/metrics/contract/build-vs-buy/benchmark/QBR/curation/folder-gov/objection/learning-agent/snapshot/migration). Chunk-opt: condensed Vorgehen of 6 longer scenarios (050/052/057/058/059/060) that crossed the 3200 B soft line → median 2751 B, all in [600,4096]. Commits: batches 1–6 + rest(050–080) + condense.
  - [x] **File 01 (Chat & Prompts) DONE** — all 80 best-typed: **71 Prompt, 9 Guide-Vorlage**. R7a 80/80. P-dominant exactly as predicted for a chat/prompts file — the deliverable is overwhelmingly a runnable prompt (content draft, analysis table, fact-check, extraction). The 9 G are the prompt-*infrastructure*/governance/decision-rule scenarios where the artifact is a reusable doc, not an output: S-CP-015 team prompt library, 023 model-switch Daumenregel, 024 No-KI list, 032 DACH language strategy, 034 mandatory-field template, 037 prompt-vs-model diagnosis rule, 041 No-KI update, 045 14-day onboarding plan, 063 shared template library. Reaffirms the file-10 per-deliverable rule (output→P, infrastructure→G) and the R20.3 exception held: CoT (S-CP-026/062), self-critique (S-CP-076), fact-check (S-CP-078) stay P and name the method. No chunk-trim needed (file is terse; median rose 1837→2129 B, all in band). Commits: cp batches 1–4.
  - [x] **File 02 (Agenten-Konfiguration) DONE** — all 80 best-typed: **77 Guide-Vorlage, 2 Workflow** (S-AK-032 webhook->agent->Slack reactive post, S-AK-079 scheduled daily health-check), **1 Decision** (S-AK-003 mega-vs-specialist, with the hard 40k-char / >500-files heuristic as the Empfehlung-payload). R7a 80/80. Strongly G-dominant and honestly so: an "agent configuration" IS infrastructure (System-Prompt kernel + capabilities + Wissensordner + Konversations-Starter), exactly the file-10 rule (infrastructure->G). The Vorlage captures the *config blueprint to copy*; the Vorgehen captures the *build process* — complementary, but they overlapped enough that 18 scenarios crossed the 3200 B soft line, so the Vorgehen was condensed to 3 terse steps in a follow-up pass (median 3065->2886 B, 0 warns). The 2 W are the only scenarios that build an actual Workflow-Builder flow (Trigger+Nodes); S-AK-045 (Slack handoff via agent config) and S-AK-047 (documented API schema, advisory like file 06) stayed G. Commits: ak batches 1-4 + condense.
  - [x] **File 03 (Wissensordner & RAG) DONE** — all 80 best-typed: **73 Guide-Vorlage, 6 Prompt, 1 Decision** (S-WR-057 Shared-vs-Pro-Agent architecture ADR). R7a 80/80. The 6 P are the retrieval-*driven content outputs* (internal-link tables S-WR-002/018, community-FAQ answers S-WR-003, content-gap analysis S-WR-004/019, brand-voice reverse-engineering S-WR-013) — the folder is the means, the generated artifact is the deliverable. Everything else is folder/RAG *infrastructure*: setup, atomisation/chunk-optimisation, audit/canary/scorecard protocols, glossars, governance, DSGVO-memos (advisory docs -> G like file 06). Heaviest condensation pass so far: 37/80 scenarios crossed 3200 B (Vorgehen<->Vorlage overlap is highest in this file), condensed Vorgehen to 3 terse steps -> median 3181->2753 B, 0 warns. Commits: wr batches 1-4 (+ partial checkpoint) + condense.
  - [x] **File 07 (Modelle & Kosten) DONE** — all 80 best-typed: **41 Decision, 31 Guide-Vorlage, 8 Workflow**. R7a 80/80. First D-dominant file, and honestly so — the domain IS cost/model decision-advice (model choice, BYOK/BYOC break-even, tier choice, upgrade ROI, fine-tune-vs-prompt). D-conversions (Prompt -> Empfehlung-as-slot-6, no slot-9) keep chunks tight, so only 5 G/W scenarios needed Vorgehen-condensation -> median 2809 B, 0 warns. The 8 W are genuine workflow builds (localization, reporting, approval x2, monitoring x2, enforcement, night-batch); the 31 G are reusable policies/matrices/templates/forecast-models/protocols. Commits: mk batches 1-4 + condense. Original classification (kept for reference):
    - **W (8, build a Langdock workflow):** S-MK-017, 023, 057, 058, 060, 068, 078, 079.
    - **G (31, reusable policy/template/matrix-tool/process/protocol/forecast/schema):** S-MK-003, 013, 014, 015, 016, 018, 019, 022, 025, 029, 031, 033, 039, 040, 041, 042, 043, 044, 045, 049, 052, 055, 059, 061, 062, 063, 064, 072, 073, 077, 080.
    - **D (41, one-time model/cost recommendation, often + break-even/cost-calc; Empfehlung = slot-6):** S-MK-001, 002, 004, 005, 006, 007, 008, 009, 010, 011, 012, 020, 021, 024, 026, 027, 028, 030, 032, 034, 035, 036, 037, 038, 046, 047, 048, 050, 051, 053, 054, 056, 065, 066, 067, 069, 070, 071, 074, 075, 076.
    - R7a: every scenario gets Empfehlung (for D it IS the slot-6 payload; for G/W it is slot-9). Watch chunk band (median 2562 B start; condense Vorgehen on warns as in files 02/03).
  - [x] **File 08 (Sicherheit & Governance) DONE** — all 80 best-typed: **78 Guide-Vorlage, 2 Decision** (S-SG-009 Datenresidenz, S-SG-014 Embedding-AVV). R7a 80/80. G-dominant and honest (governance/compliance is the reusable-artifact domain, like file 06). Condensed Vorgehen of 18 scenarios that crossed 3200 B -> median 3017->2853 B, 0 warns. Commits: sg batches 1-3 + condense.
  - [x] **File 09 (Marketing-Praxis) DONE** — 40 P / 34 G / 3 W / 3 D; 80/80 Empfehlung; median 2751 B (all in [600,4096]); schema+grounding+chunks+emoji all PASS. Condensed Vorgehen on S-MP-057/060/080. Most mixed file; per-deliverable rule applied. Type plan by ID:
    - **W (3):** S-MP-028 (email Delay/Condition workflow), 040 (webinar-promo + HubSpot workflow), 057 (newsletter auto-prep workflow).
    - **D (3):** S-MP-004 (social-roadmap stop/adjust/scale), 008 (ABM-roadmap adjust/pause), 058 (budget-redistribution memo + Empfehlung).
    - **G (~36, reusable artifact):** S-MP-002, 005, 011, 012, 025, 029, 030, 035, 036, 038, 041, 042, 044, 045, 051, 052, 056, 059, 060, 061, 062, 063, 064, 065, 066, 067, 070, 071, 072, 074, 077, 078, 079, 080.
    - **P (~38, content/analysis output):** all remaining S-MP (001,003,006,007,009,010,013,014,015,016,017,018,019,020,021,022,023,024,026,027,031,032,033,034,037,039,043,046,047,048,049,050,053,054,055,068,069,073,075,076). R20.3: method-named prompts (Falsifikation etc.) stay P.
    - R7a on all; chunk band (median 2539 start; D/P keep tight, G adds ~300 B; condense Vorgehen on warns).
  - [ ] **Then:** 14/16/17.
- [ ] **R7a Empfehlung rollout** to the 13 remaining content files (combined with each R20 file touch).
- [ ] **Critical-thinking scenarios (R20.3) + scenario chains (R20.4)** added opportunistically per file.
- [ ] **File 08 chunk-trim** (22 scenarios 3200-3800 B) during its R20 pass.
- [ ] **Loop-4 review subagent** → then v1.0-Beta.
