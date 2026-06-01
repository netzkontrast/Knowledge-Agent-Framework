# Design — Knowledge v2: Deep Revision via Reflexive Critical-Thinking

**Date:** 2026-06-01
**Status:** Approved (Approach A)
**Scope:** `examples/iw-little-data/` — the IW "Little Data" knowledge agent
**Branch:** `claude/knowledge-framework-v2`
**Predecessor release:** `v1.0-Alpha` → this work targets `v1.0-Beta`

---

## 1. Premise — reflexive self-application

The knowledge base already *contains* the M01–M13 critical-thinking catalog
(`data/extracts/T8-metaprompts-critical-thinking.md`) as invisible authoring
scaffolding, plus the 13 Marketing metaprompt templates (`M-01…M-13`) that
*apply* those methods. v2 turns the methods **inward**: we use the agent's own
critical-thinking framework to diagnose and evolve the knowledge base itself.

This mirrors the authoring spec's intended dual use of the methods: the author
uses them to *construct*, the reviewer uses them to *test*. In v2 the methods are
the analysis engine for both diagnosis and verification — and, as always, they
**never surface as visible output fields** (spec §6.2).

The terminal condition (session goal): **loop until a spec-panel review subagent
finds no remaining improvement potential.**

## 2. Evolution mode (user decisions)

- **In-place + additive.** Existing scenarios are revised/sharpened *and* new
  scenarios are added to close gaps. v1 is preserved via git history and the
  `v1.0-Alpha` tag.
- **All four optimization axes** are in scope:
  1. Source-grounding integrity
  2. Cross-file coherence
  3. RAG retrievability
  4. Critical-thinking depth
- **IW files 14/16/17:** verify flagged facts **and** expand toward full depth.

## 3. Architecture — three waves (Approach A)

```
        ┌─────────────────────────────────────────────────────────┐
        │ WAVE 1 — DIAGNOSE  (read-only, parallel method-lens agents)│
        └─────────────────────────────────────────────────────────┘
  A1 Grounding   = M01 Falsifikation + M06 Triangulation
                   → every Trigger → real source? invented limits/prices/
                     features? remaining "zu verifizieren" / "[unverified]"?
  A2 Coherence   = M07 Contradiction Log
                   → numeric/claim contradictions across files; glossary drift;
                     dangling/duplicate Anschluss + scenario IDs.
  A3 Retrieval   = M13 Adversarial Query Expansion
                   → duplicate trigger nouns across files (chunk collision);
                     unanswerable-query gaps → candidate new scenarios.
  A4 Depth       = M02 Steelman + M03 Pre-Mortem + M09 Red Team
                   → are Fallstricke/Vorgehen rigorous or filler?
  Each agent sweeps ALL files through its lens → emits a structured findings
  ledger (per file, per scenario, with severity [C]/[M]/[m]).
                                   │
                                   ▼
        ┌─────────────────────────────────────────────────────────┐
        │ CONSOLIDATE — merge ledgers → one severity-ranked         │
        │ Contradiction-&-Gap Log (itself an M07 artifact)          │
        │ → docs/superpowers/specs/v2-gap-log.md                    │
        └─────────────────────────────────────────────────────────┘
                                   │
                                   ▼
        ┌─────────────────────────────────────────────────────────┐
        │ WAVE 2 — SYNTHESIZE  (parallel file-owner agents)         │
        └─────────────────────────────────────────────────────────┘
  One agent per file (or file cluster). Takes its slice of the gap log,
  applies fixes IN-PLACE and authors ADDITIVE new scenarios to close gaps.
  Re-validate per file (check_schema + emoji + new grounding/coherence gates).
                                   │
                                   ▼
        ┌─────────────────────────────────────────────────────────┐
        │ WAVE 3 — VERIFY + REVIEW LOOP                             │
        └─────────────────────────────────────────────────────────┘
  - Regression method-sweep on changed files.
  - All gates green (schema, prompt size, emoji, grounding, coherence).
  - spec-panel REVIEW subagent re-runs M01-M13 as TEST criteria over the
    whole KB. If it returns improvement potential → feed back into a new
    Wave-2 slice and repeat. If it returns NONE → converged → release.
```

## 4. Superpower-skill + tool mapping

| Stage | Skill / tool |
|---|---|
| W1 & W2 dispatch | `superpowers:dispatching-parallel-agents` (independent, no shared state) |
| Execution spine | `superpowers:executing-plans` (checkpoint between waves) |
| Source verification | `deep-research` skill + WebSearch/WebFetch (per env network policy) |
| W3 verify | `superpowers:verification-before-completion` |
| Pre-merge review | `superpowers:requesting-code-review` + the spec-panel review subagent |
| Methods (M01–M13) | used by agents as lenses/tests — **never** an output field |

## 5. New validator gates (`tools/`)

- **`check_grounding.sh`** — FAIL on `zu verifizieren`, `[unverified]`, `TODO`,
  `TBD`, or a `Wann nutzen (Trigger)` line whose block lacks a source citation.
- **`check_coherence.sh`** — FAIL on dangling `Anschluss-Szenario` IDs (point to
  a non-existent `S-XX-NNN`) and duplicate scenario IDs across files.
- RAG trigger-noun collision stays a Wave-1 *analysis* artifact (too noisy to
  hard-gate). Both new gates are wired into `check_schema.sh --all`'s caller and
  the release workflow.

## 6. Success criteria (definition of done)

- Grounding: 0 invented facts; 0 `zu verifizieren`/`[unverified]`; every Trigger
  cites a real source. IW facts in 14/16/17 resolved.
- Coherence: M07 log empty/resolved; glossary agrees with 00–10 usage; every
  `Anschluss-Szenario` resolves to an existing scenario.
- Retrieval: no cross-file trigger-noun collisions for a query; ~2 000-char
  chunks; one-chunk-wins preserved.
- Depth: every scenario's Fallstricke/Vorgehen reflect a real method (invisible).
- Gates: `check_schema.sh --all`, `check_prompt_size.sh`, emoji guard,
  `check_grounding.sh`, `check_coherence.sh` all PASS. 14/16/17 verified + expanded.
- **Convergence:** spec-panel review subagent yields no remaining improvement
  potential.

## 7. Out of scope

- Renaming the GitHub repo / changing its description (manual, user-side).
- New client agents under `examples/` (this is a Little Data deepening).
- Changing the deployable package shape or release workflow structure.
