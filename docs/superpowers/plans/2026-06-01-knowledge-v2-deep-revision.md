# Knowledge v2 Deep-Revision Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Evolve the IW "Little Data" knowledge agent to v1.0-Beta by turning its own M01–M13 critical-thinking methods inward — diagnosing, then fixing in-place + adding scenarios, then looping a spec-panel review subagent until no improvement potential remains.

**Architecture:** Three waves. (1) Read-only method-lens diagnosis agents → consolidated gap log. (2) Parallel file-owner agents fix in-place + add scenarios. (3) Verify all gates + spec-panel review loop to convergence. Methods are analysis/test lenses only — never visible output fields.

**Tech Stack:** Markdown knowledge files; Bash validators (`tools/check_*.sh`); GitHub Actions release workflow; parallel Claude subagents.

**Working dir:** `examples/iw-little-data/` — validators run from there (`bash tools/check_schema.sh --all`).

---

## Task 0: New validator gates

**Files:**
- Create: `examples/iw-little-data/tools/check_grounding.sh`
- Create: `examples/iw-little-data/tools/check_coherence.sh`
- Mirror copies: `tools/check_grounding.sh`, `tools/check_coherence.sh` (root canonical)
- Modify: `.github/workflows/release.yml` (add both to the per-example validate block)

- [ ] **Step 1: Write `check_grounding.sh`** — scans `langdock-deploy/knowledge/*.md`; FAIL if any file contains `zu verifizieren`, `[unverified]`, `TODO`, or `TBD`. Prints offending file + line. Exit 1 on any hit, 0 otherwise. Accept `--all` for parity with check_schema.
- [ ] **Step 2: Run it on current tree** — `cd examples/iw-little-data && bash tools/check_grounding.sh --all`. Expected on current tree: FAIL (files 14/16/17 contain `zu verifizieren`). This proves the gate works.
- [ ] **Step 3: Write `check_coherence.sh`** — builds the set of all `^### (S-[A-Z]+-[0-9]+)` IDs across files; then for every `**Anschluss-Szenario:**` line referencing an `S-XX-NNN` ID, FAIL if the ID is not in the set. Also FAIL on duplicate scenario IDs. Prints dangling/duplicate IDs.
- [ ] **Step 4: Run it** — `bash tools/check_coherence.sh --all`. Record baseline dangling/duplicate count (informational; will be driven to 0 in Wave 2).
- [ ] **Step 5: Mirror to root `tools/`** and wire both into `.github/workflows/release.yml` after the emoji guard.
- [ ] **Step 6: Commit** — `git commit -m "Add v2 gates: check_grounding + check_coherence"`.

---

## Task 1 (WAVE 1 — Diagnose, read-only, parallel)

**Output:** four findings ledgers in `docs/superpowers/specs/v2-findings/`.

Dispatch **four parallel subagents** (Explore agent type; read-only). Each sweeps **all 19 files** in `examples/iw-little-data/langdock-deploy/knowledge/` through one lens and writes a markdown ledger. Each finding row: `file | scenario-ID | severity [C]/[M]/[m] | issue | suggested fix`.

- [ ] **A1 — Grounding (M01 Falsifikation + M06 Triangulation):** For each scenario, does the `Wann nutzen (Trigger)` cite a real source traceable to `data/research/` or `data/sources/`? Flag invented limits/prices/features; flag every `zu verifizieren`/`[unverified]`. → `v2-findings/A1-grounding.md`
- [ ] **A2 — Coherence (M07 Contradiction Log):** Cross-file numeric/claim contradictions (model prices, context limits, file-count caps); glossary terms vs. usage in 00–10; dangling/duplicate Anschluss + scenario IDs. → `v2-findings/A2-coherence.md`
- [ ] **A3 — Retrieval (M13 Adversarial Query Expansion):** Trigger-noun collisions across files (two files competing for one query); thin/duplicate chunks; **unanswerable-query gaps** → list candidate NEW scenarios with target file. → `v2-findings/A3-retrieval.md`
- [ ] **A4 — Depth (M02 Steelman + M03 Pre-Mortem + M09 Red Team):** Are `Fallstricke` ≥2 and specific (not filler)? Do `Vorgehen` steps show real method reasoning? HITL present on outward actions? → `v2-findings/A4-depth.md`
- [ ] **Step: Commit ledgers** — `git commit -m "Wave 1: critical-thinking diagnosis ledgers"`.

---

## Task 2: Consolidate gap log

**Files:** Create `docs/superpowers/specs/v2-gap-log.md`.

- [ ] **Step 1:** Merge the four ledgers; dedup; sort by file then severity ([C] first). Group findings under per-file headings so each Wave-2 agent gets a clean slice.
- [ ] **Step 2:** Add a "NEW scenarios to author" section per file (from A3 gaps).
- [ ] **Step 3:** Commit — `git commit -m "Wave 1: consolidated gap log"`.

---

## Task 3 (WAVE 2 — Synthesize, parallel file-owner agents)

**One subagent per file-cluster.** Each receives: the file path, its slice of `v2-gap-log.md`, the authoring spec (`docs/knowledge-file-authoring-spec.md`), and the M01–M13 catalog. Each agent: (a) fixes flagged scenarios IN-PLACE, (b) authors the NEW scenarios from the gap log, (c) runs `check_schema.sh <file>` + `check_grounding.sh` + emoji guard on its file before returning.

**Clusters (≈4 agents to bound blast radius, dispatched in batches):**
- [ ] **C1:** 00, 01, 02, 03
- [ ] **C2:** 04, 05, 06, 07
- [ ] **C3:** 08, 09, 10
- [ ] **C4:** 11, 12, 13, 15, 18 (persona/anweisung/glossar/links — kind-specific rules)

**Discipline each agent must hold (from CLAUDE.md):** source-grounded triggers; emoji-free; ≤5 Vorgehen steps; HITL on outward actions; M-tags invisible; ~2 000-char chunks; distinct trigger nouns.

- [ ] **Step: After each batch returns, re-run** `bash tools/check_schema.sh --all` and the new gates. Commit per cluster — `git commit -m "Wave 2: revise + extend cluster <N>"`.

---

## Task 4: IW files 14/16/17 — verify + expand

**Files:** `14-iw-use-cases.md`, `16-onboarding-change-management.md`, `17-branchen-think-tank-praxis.md`.

- [ ] **Step 1:** Use `deep-research` skill / WebSearch over IW primary sources (iwkoeln.de, IW-Medien) to confirm or correct every `zu verifizieren` fact. Replace verified facts with a cited Trigger; remove any fact that cannot be sourced.
- [ ] **Step 2:** Expand each file from ~22 toward full depth (target band 40+, stretch 80) with source-grounded, search-context scenarios.
- [ ] **Step 3:** `bash tools/check_schema.sh 14-... 16-... 17-...` + grounding gate → PASS. Commit — `git commit -m "Wave 2: verify + expand IW files 14/16/17"`.

---

## Task 5: AGENT_PROMPT pass

**File:** `examples/iw-little-data/langdock-deploy/AGENT_PROMPT.md`

- [ ] **Step 1:** Re-read against revised knowledge; ensure init protocol anchors still resolve, refusal strings intact, no stale facts.
- [ ] **Step 2:** `bash tools/check_prompt_size.sh` → PASS (≤15 000). Commit if changed.

---

## Task 6 (WAVE 3 — Verify + spec-panel review LOOP)

- [ ] **Step 1: Full gate sweep** — from `examples/iw-little-data/`: `check_schema.sh --all`, `check_prompt_size.sh`, emoji guard, `check_grounding.sh --all`, `check_coherence.sh --all`. ALL must PASS.
- [ ] **Step 2: Dispatch spec-panel REVIEW subagent** — fresh agent re-runs M01–M13 as TEST criteria over the whole KB (grounding, coherence, retrieval, depth) and returns a verdict: either a new findings list (with severity) or "NO improvement potential."
- [ ] **Step 3: Loop** — if the review returns findings, fold them into a new gap-log slice and repeat Task 3/4 for the affected files, then re-review. Continue until the review subagent yields **no improvement potential** (the session goal's terminal condition).
- [ ] **Step 4:** Update `CHANGELOG.md` + `provenance` notes; bump version references to `v1.0-Beta`. Commit — `git commit -m "v1.0-Beta: converged after spec-panel review"`.
- [ ] **Step 5:** Push; PR #23 already open. Summarize convergence in the PR.

---

## Self-review notes

- Spec coverage: all four axes → A1–A4 (diagnose) + C1–C4/Task4 (fix) + Task6 (verify). Grounding gate enforces axis 1; coherence gate enforces axis 2; A3 + manual review enforce axis 3; A4 + review enforce axis 4. ✓
- IW verify+expand → Task 4. ✓ New gates → Task 0. ✓ Review loop / convergence → Task 6. ✓
- No code-TDD ceremony: validators ARE the tests; each authoring task is gated by `check_*.sh`. Reversible: Waves 1 read-only; all mutations committed per cluster for easy rollback.
