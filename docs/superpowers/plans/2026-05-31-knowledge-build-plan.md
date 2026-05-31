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
| 1.T1 | Langdock Platform Features & Limits | research/01, restructured/00, sources/01-06 | `extracts/T1-langdock-features.md` | ✅ done (463 L / 6.8 KB) |
| 1.T2 | RAG & Retrieval Mechanics | research/04, 10, 12, restructured/01, sources/07 | `extracts/T2-rag-mechanik.md` | ✅ done (233 L / 16 KB) |
| 1.T3 | Marketing-Praxis & Use Cases | research/03, 09 | `extracts/T3-marketing-praxis.md` | running |
| 1.T4 | AI Persona Architecture | research/05, 07, 08 | `extracts/T4-persona-architektur.md` | ✅ done (13 KB) |
| 1.T5 | Lt. Cmdr. Data Canon | research/06, 11 | `extracts/T5-data-canon.md` | running |
| 1.T6 | DACH Context + Costs | research/02, 01 + restructured/00 §7-8 | `extracts/T6-dach-kontext-kosten.md` | running |
| 1.T7 | Soul.md Framework | research/07 + local SOUL/STYLE/SKILL/BUILD | `extracts/T7-soul-md-framework.md` | ✅ done (17 KB) |
| 1.T8 | Critical-Thinking + Prompt Patterns | `/tmp/agency-backups-clone/skills/research-prompt-optimizer/`, `/skills/prompt-optimizer/`, related | `extracts/T8-metaprompts-critical-thinking.md` | running (corrected after wrong-repo detection) |

**Gate before Phase 1.5:** all 8 extract files exist with non-trivial content.

---

## Phase 1.5 — Cross-Validation

| Step | Action | Owner | Status |
|---|---|---|---|
| 1.5.1 | Dispatch a single `sc-deep-research` subagent to scan all 8 extracts for: (a) numeric contradictions, (b) [UNVERIFIED] items appearing in multiple extracts, (c) coverage gaps not addressed by any extract. Output: `extracts/T0-cross-validation.md`. | Agent | pending |
| 1.5.2 | Iterate on flagged contradictions: dispatch targeted refinement subagent per disagreement, write to `extracts/T0-resolutions.md`. | Agent (conditional) | pending |
| 1.5.3 | Commit + push Phase-1 artifacts | Bash | pending |

---

## Phase 2 — Knowledge File Synthesis

**Substrate decision:** if Jules-Auth + connected repo confirmed, use Jules dispatch per file (per `agency:jules-dispatch` skill discipline). If not, fall back to local `general-purpose` subagents (each writes one file to `langdock-deploy/knowledge/`). The structure of the per-file prompt is the same; only the dispatcher changes.

| Step | File | Inputs | Owner | Status |
|---|---|---|---|---|
| 2.00 | `00-langdock-uebersicht.md` | T1, T2 | Jules or local-subagent | pending |
| 2.01 | `01-chat-und-prompts.md` | T1, T7 | Jules or local-subagent | pending |
| 2.02 | `02-agenten-konfiguration.md` | T1, T2 | Jules or local-subagent | pending |
| 2.03 | `03-wissensordner-und-rag.md` | T1, T2 | Jules or local-subagent | pending |
| 2.04 | `04-workflows.md` | T1, T3 | Jules or local-subagent | pending |
| 2.05 | `05-integrationen-und-mcp.md` | T1 | Jules or local-subagent | pending |
| 2.06 | `06-api-und-deployment.md` | T1 | Jules or local-subagent | pending |
| 2.07 | `07-modelle-und-kosten.md` (α-fusion) | T1, T6 | Jules or local-subagent | pending |
| 2.08 | `08-sicherheit-und-governance.md` | T1, T6 | Jules or local-subagent | pending |
| 2.09 | `09-marketing-praxis.md` | T3, T6 | Jules or local-subagent | pending |
| 2.10 | `10-prompts-und-skills.md` (γ-fusion) | T3, T8 | Jules or local-subagent | pending |
| 2.11 | `11-persona-core.md` | T4, T5, T7 | Jules or local-subagent | pending |
| 2.12 | `12-persona-julia-modus.md` | T5 | Jules or local-subagent | pending |
| 2.13 | `13-data-agent-anweisungen-pro-thema.md` | T4, T5, T7 + cross-ref T1/T3 | Jules or local-subagent | pending |

**Per-session prompt template:** the synthesizer receives Authoring-Spec + 2-4 extracts + Coverage-Matrix-Row + the §9.2 file template + the per-file H2 list. Output: PR (if Jules) or direct Write (if local-subagent).

**Parallelism:** 3-5 simultaneous. 14 files → 3 waves.

**Gate before Phase 3:** every file in `langdock-deploy/knowledge/` exists and matches its Coverage-Matrix-Row entries (run `check_coverage.sh`).

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
