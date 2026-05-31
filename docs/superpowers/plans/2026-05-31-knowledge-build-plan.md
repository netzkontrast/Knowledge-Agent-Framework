# Knowledge-Build-Plan — Bite-sized Implementation

> **Companion spec:** `docs/superpowers/specs/2026-05-31-knowledge-build-plan-design.md`
> **Tracking branch:** `claude/friendly-ride-eRsPr`
> **Repo:** `netzkontrast/soul.md`
> **Status:** authoritative execution plan; updates as phases complete.

This plan turns the build-design into concrete steps. Phase 0/1/1.5/3/4/5 are bite-sized (one tool invocation per step). Phase 2 is phase-oriented (one Jules-style session per knowledge file; we substitute Anthropic-subagent-driven if Jules-Auth fails).

---

## Phase 0 — Pre-Build Setup

| Step | Action | Owner | Status |
|---|---|---|---|
| 0.1 | Create directory skeleton (`little-data/{tools,data/extracts,langdock-deploy/knowledge}`, `docs/superpowers/plans/`) | Bash | ✅ done |
| 0.2 | Write `little-data/tools/check_prompt_size.sh` | Write | ✅ done |
| 0.3 | Write `little-data/tools/check_prompt_tokens.py` (tiktoken-based) | Write | ✅ done |
| 0.4 | Write `little-data/tools/check_coverage.sh` | Write | ✅ done |
| 0.5 | Write `little-data/tools/check_overlap.py` (sentence-transformers stub) | Write | ✅ done |
| 0.6 | Write `little-data/data/coverage-matrix.md` skeleton | Write | ✅ done |
| 0.7 | Write this plan file | Write | ✅ done |
| 0.8 | Draft Knowledge-File-Authoring-Spec `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` | Write (post-T2/T7/T8) | pending |
| 0.9 | Draft System-Prompt v3 `little-data/langdock-deploy/AGENT_PROMPT.md` | Write (post-T5/T7) | pending |
| 0.10 | Commit + push Phase-0 artifacts | Bash | pending |

---

## Phase 1 — Extract (parallele lokale Subagents)

Each step dispatches one `sc:sc-deep-research` subagent (model = haiku) that writes its output directly to `little-data/data/extracts/<T-X>.md`. Subagents run in parallel; no shared state.

| Step | Theme | Inputs (Research-Files) | Output | Status |
|---|---|---|---|---|
| 1.T1 | Langdock Platform Features & Limits | sources/08, restructured/00, sources/01-06 | `extracts/T1-langdock-features.md` | ✅ done (289 L / 15 KB) |
| 1.T2 | RAG & Retrieval Mechanics | research/04, sources/13, sources/15, restructured/01, sources/07 | `extracts/T2-rag-mechanik.md` | ✅ done (233 L / 13 KB) |
| 1.T3 | Marketing-Praxis & Use Cases | sources/10, sources/12 | `extracts/T3-marketing-praxis.md` | ✅ done (145 L / 9 KB) |
| 1.T4 | AI Persona Architecture | research/05, research/07, sources/11 | `extracts/T4-persona-architektur.md` | ✅ done (225 L / 13 KB) |
| 1.T5 | Lt. Cmdr. Data Canon | research/06, sources/14 | `extracts/T5-data-canon.md` | ✅ done (357 L / 10 KB) |
| 1.T6 | DACH Context + Costs | sources/09, sources/08, restructured/00 §7-8 | `extracts/T6-dach-kontext-kosten.md` | ✅ done (240 L / 9 KB) |
| 1.T7 | Soul.md Framework | research/07 + local SOUL/STYLE/SKILL/BUILD | `extracts/T7-soul-md-framework.md` | ✅ done (293 L / 17 KB) |
| 1.T8 | Critical-Thinking + Prompt Patterns | `/tmp/agency-backups-clone/skills/research-prompt-optimizer/`, `/skills/prompt-optimizer/` | `extracts/T8-metaprompts-critical-thinking.md` | ✅ done (1403 L / 68 KB) | running (corrected after wrong-repo detection) |

**Gate before Phase 1.5:** all 8 extract files exist with non-trivial content.

---

## Phase 1.5 — Cross-Validation

| Step | Action | Owner | Status |
|---|---|---|---|
| 1.5.1 | Dispatch a single `sc-deep-research` subagent to scan all 8 extracts for: (a) numeric contradictions, (b) [UNVERIFIED] items appearing in multiple extracts, (c) coverage gaps not addressed by any extract. Output: `extracts/T0-cross-validation.md`. | Agent | pending |
| 1.5.2 | Iterate on flagged contradictions: dispatch targeted refinement subagent per disagreement, write to `extracts/T0-resolutions.md`. | Agent (conditional) | pending |
| 1.5.3 | Commit + push Phase-1 artifacts | Bash | pending |

---

## Phase 0.5 — Soul-Doc Preparation (vorab, vor Phase 2)

**Per user directive 2026-05-31:** the persona files (files 11 + 12) are prepared BEFORE Phase 2 starts. They become the "Soul-Doc" handed to every Phase-2 synthesizer as the persona reference. Without them, Jules sessions for files 00-09, 10, 13 would lack consistent persona grounding.

| Step | Action | Owner | Status |
|---|---|---|---|
| 0.5.1 | Wait for T5 (Data Canon) extract to complete | (background) | ✅ done |
| 0.5.2 | Dispatched Jules + recovered patch locally for `11-persona-core.md` — inputs: T4, T5, T7, T8 + research/05,06,07,08,11 sources + Authoring-Spec | Agent | pending |
| 0.5.3 | Dispatch persona-builder local subagent for `12-persona-julia-modus.md` — inputs: T5 + research/06,11 sources + Authoring-Spec | Agent | pending |
| 0.5.4 | Review both persona files; verify anchor strings ("Little Data Persona Anker", "Beziehungsmodus Julia Lenz") are verbatim in first chunk | Read + grep | pending |
| 0.5.5 | Commit + push Phase-0.5 artifacts | Bash | pending |

## Phase 2 — Knowledge File Scenarios (5 source-grounded scenarios per session)

**Revised 2026-05-31 per user directive — quality over quantity:**
- Each review session adds exactly **5 high-quality, source-grounded scenarios** per file.
- Sources to draw from (in priority order): `data/research/50-advanced-scenarios-julia-lens.md`, `data/sources/10-langdock-marketing-scenarios-catalog.md`, `data/sources/12-marketingleiter-faq-wissensbasis-analyse.md`.
- M01-M13 methods are **invisible authoring scaffolding** — never visible scenario fields.
- **Template scenarios** (method-name titles, generic triggers) must be removed before new ones are added.
- Target: ≥40 source-grounded scenarios per file, reached incrementally (5 per session).
- No external AI tool dependency — all work done in-session by the assistant directly.

| Step | File | Primary Sources | Scenarios target | Status |
|---|---|---|---|---|
| 2.00 | `00-langdock-uebersicht.md` | sources/10 A-01–A-10, sources/12 §A, 50-advanced A-44 | ≥40 | 10 source-grounded ✅ |
| 2.01 | `01-chat-und-prompts.md` | sources/10 §A-B, 50-advanced A-46,A-47 | ≥40 | 10 source-grounded ✅ |
| 2.02 | `02-agenten-konfiguration.md` | sources/10 S-039, sources/12 §C, 50-advanced A-31,A-34,A-35 | ≥40 | 5 rebuilt ✅, expand each session |
| 2.03 | `03-wissensordner-und-rag.md` | sources/10 S-006,S-017,S-048, 50-advanced A-20 | ≥40 | 5 rebuilt ✅, expand each session |
| 2.04 | `04-workflows.md` | sources/10 §F workflow triggers, 50-advanced A-24,A-28,A-32,A-40 | ≥40 | 10 source-grounded ✅ |
| 2.05 | `05-integrationen-und-mcp.md` | sources/10 §F CRM, sources/12 §07a-07b, 50-advanced A-08 | ≥40 | 10 source-grounded ✅ |
| 2.06 | `06-api-und-deployment.md` | sources/12 §08, 50-advanced A-03,A-26,A-36,A-44 | ≥40 | 10 source-grounded ✅ |
| 2.07 | `07-modelle-und-kosten.md` | sources/12 §01/08, 50-advanced A-21–A-30,A-45 | ≥40 | 10 source-grounded ✅ |
| 2.08 | `08-sicherheit-und-governance.md` | sources/12 §09, 50-advanced A-11–A-20 | ≥40 | 10 source-grounded ✅ |
| 2.09 | `09-marketing-praxis.md` | sources/10 §A-G, 50-advanced A-01,A-02,A-07,A-10,A-37,A-39,A-41,A-50 | ≥40 | 10 source-grounded ✅ |
| 2.10 | `10-prompts-und-skills.md` | sources/10 S-026, sources/12 §05, 50-advanced A-49 | ≥40 | 5 rebuilt ✅, expand each session |
| 2.13 | `13-data-agent-anweisungen-pro-thema.md` | T4, T5, T7 + cross-ref all files 00-10 | 11 D-XX blocks | 11 ✅ (anweisung kind) |

**Note:** Files 11 + 12 are persona files (built Phase 0.5). File 13 uses the `anweisung` kind validator (different schema).

**Per-session work pattern:** read the target file → identify gaps vs. source material → write exactly 5 new scenarios from named sources → verify with `check_schema.sh` → commit.

**Gate before Phase 3:** every content file ≥40 scenarios; persona files ≥20 scenarios; `check_schema.sh --all` PASS.

---

## Phase 3 — Lokale Integration

| Step | Action | Owner | Status |
|---|---|---|---|
| 3.1 | Run `check_overlap.py` cross-file; review pairs above 0.78 cosine | Bash + Read | pending |
| 3.2 | If overlap pairs flagged: targeted refinement subagent for the lower-quality chunk | Agent (conditional) | pending |
| 3.3 | Write `little-data/langdock-deploy/CONVERSATION_STARTERS.md` (10 in DE, ≤255 chars each) | Write | pending |
| 3.4 | Write `little-data/examples/good-outputs.md` (10-14 worked examples in F9 gestaffelt form) | Write | pending |
| 3.5 | Write `little-data/examples/bad-outputs.md` (anti-patterns) | Write | pending |
| 3.6 | Finalize `little-data/langdock-deploy/AGENT_PROMPT.md` v3 (apply T7 refinements: voice anchors, modes, vocabulary) | Edit | pending |
| 3.7 | Run `check_prompt_size.sh` + `check_prompt_tokens.py` — must pass | Bash | pending |
| 3.8 | Write `little-data/MAINTENANCE.md` (review cadence, staleness rules) | Write | pending |
| 3.9 | Commit + push Phase-3 artifacts | Bash | pending |

---

## Phase 4 — Validation

| Step | Action | Owner | Status |
|---|---|---|---|
| 4.1 | Run `check_prompt_size.sh` (must PASS) | Bash | pending |
| 4.2 | Run `check_prompt_tokens.py` (advisory; document token-per-model counts) | Bash | pending |
| 4.3 | Run `check_coverage.sh` (every matrix row → existing heading) | Bash | pending |
| 4.4 | Run `check_overlap.py` (no cross-file pair >0.78) | Bash | pending |
| 4.5 | 20-Query Spot-Check — manual or Langdock Search API if workspace available; if not, defer with note in MAINTENANCE.md | Bash or manual | pending |
| 4.6 | 5-Question Canary — feed canary set to deployed agent; verify exact F8 refusal string for all 5 | manual (post-deploy) | pending |
| 4.7 | Persona-Calibration — bare-minimum persona prompt to Gemini 2.5 Flash + Haiku 4.5; verify canon-Data voice; if drift, expand persona-core anchors | manual (post-deploy) | pending |
| 4.8 | Commit + push validation results | Bash | pending |

---

## Phase 5 — Deployment Package

| Step | Action | Owner | Status |
|---|---|---|---|
| 5.1 | Write `little-data/INSTALL.md` — step-by-step Langdock-Workspace setup, Wissensordner-Upload, Agent-Konfiguration, Konversations-Starter-Setup, validation rollout | Write | pending |
| 5.2 | Write `little-data/README.md` — project overview for PR reviewers + future maintainers | Write | pending |
| 5.3 | Verify `langdock-deploy/` is upload-ready: 14 knowledge files + AGENT_PROMPT.md + CONVERSATION_STARTERS.md, sizes correct, no stray files | Bash | pending |
| 5.4 | Final commit + push | Bash | pending |
| 5.5 | Update PR description with completion status | Bash + mcp__github | pending |

---

## Roll-up Gates (each must PASS before next phase)

```
G0 → G1: Phase 0 artifacts exist; T1-T8 dispatched.
G1 → G1.5: All 8 extracts non-empty.
G1.5 → G2: Cross-validation complete; no blocking contradictions.
G2 → G3: 14 knowledge files written; check_coverage clean.
G3 → G4: AGENT_PROMPT v3 + CONVERSATION_STARTERS + examples + MAINTENANCE all written.
G4 → G5: check_prompt_size + check_prompt_tokens + check_overlap PASS.
G5 → DONE: INSTALL.md + README.md committed; PR description updated.
```

---

## Roll-back / Risk Plays

- **R1 — Jules-Auth fails in Phase 2.** Fall back to local `general-purpose` subagents (one per file). Same prompts, different dispatcher.
- **R2 — File 10 trigger collision (Skills vs Metaprompts).** Spot-Check Q-INL + Q-META queries; if collision detected, split File 10 back into 10 and 14.
- **R3 — Cross-validation finds critical contradiction.** Dispatch refinement subagent on the specific T-extract; re-validate before Phase 2.
- **R4 — Langdock-Workspace not available for Phase 4 Spot-Check.** Defer 4.5–4.7 to post-deploy; document in MAINTENANCE.md as "blocked on workspace".
- **R5 — System prompt grows beyond 15 000 chars during Phase 3 refinement.** Mandatory revert + simplification before Phase 4.
- **R6 — Overlap > 0.78 between persona-core and persona-julia-modus.** Expected to some degree; threshold may need raising for those two files specifically. Adjust per-file thresholds in `check_overlap.py`.

---

## Tracking

- Each step writes its output and the plan file is updated with status (✅ done / running / pending / failed).
- Commits group by phase milestone (Phase-0-done, Phase-1-done, etc.).
- Failed steps trigger the matching R-play; once resolved, the step resumes.
