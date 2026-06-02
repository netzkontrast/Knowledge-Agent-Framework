# Knowledge Agent Framework — v1.0-Beta

**Source-grounded, strict-schema RAG knowledge advisors — the framework plus the IW "Little Data" reference build.**

This release ships two things: the **deployable agent package** (upload-ready for Langdock) and the **full framework + work-artefact bundle** (everything needed to understand, re-validate, maintain, and build new agents). It closes the v2 deep-revision loop: every scenario now carries the genuinely-best solution type and a hand-crafted recommendation, the whole base passed an end-of-pass spec-panel review (verdict: **CONVERGED**), and all automated gates are green.

---

## What's in this release

### 1. `iw-little-data.zip` — the deployable agent (upload-ready)
The lean package you actually deploy. Only `knowledge/` is uploaded to the Langdock Wissensordner; the rest is operator documentation.
- `knowledge/` — 20 strict-schema German knowledge files (00–19), **1,106 scenarios**.
- `AGENT_PROMPT.md` — the system prompt (14,456 / 15,000 chars; init protocol, modes, refusal strings, gestaffeltes Antwortformat).
- `CONVERSATION_STARTERS.md`, `INSTALL.md`, `README.md`, `CHANGELOG.md`, `LICENSE`.
- `provenance/` — sources, research reports, themed extracts. **Reference only — never uploaded** to the knowledge folder.

### 2. `knowledge-agent-framework.zip` — framework + work-artefacts (NEW)
Everything a maintainer, auditor, or builder of the *next* agent needs:
- `CLAUDE.md` — the end-to-end build playbook (research → deploy pipeline).
- `README.md`, `LICENSE`.
- `docs/` — the methodology:
  - `building-knowledge-agents.md` — the meta-playbook (how to build, research, test, optimize).
  - `knowledge-file-authoring-spec.md` — the strict-schema rulebook.
  - `knowledge-build-plan.md`, `knowledge-build-plan-design.md`, the restructure design + critique.
  - `docs/examples/` — the IW reference design + critique.
- `docs/superpowers/` — **the full v2 work record** (the "work-artefacts"):
  - `plans/` — the deep-revision execution plans with the per-file progress log and type tallies.
  - `specs/` — the authoring rulebook, the solution-chunk-schemata catalog (the 9-type system), the gap-log, the kb-index (`.md` + `.json`), and the loop-2/loop-3 review verdicts.
  - `specs/v2-file-rules/` — the per-file authoring rules used during the pass.
  - `specs/v2-findings/` — the A1–A4 review findings (grounding, coherence, retrieval, depth).
- `templates/` — blanks to start a new agent (knowledge-file, AGENT_PROMPT, research-prompt).
- `tools/` — the validator suite (schema, grounding, coherence, prompt-size, coverage, overlap, upload-ready).

Why bundle the work-artefacts: the release becomes self-documenting and reproducible. A reader can see *why* each decision was made (specs + findings), *what* was changed (plans), re-run the *gates* (tools), and start a *new* agent (templates + meta-playbook) — without cloning the repo.

---

## v2 highlights

- **9-type solution system on every scenario.** Each scenario's payload is the genuinely-best deliverable type, not a default prompt: **P** Prompt · **A** API · **M** MCP · **S** Skill · **T** Code · **W** Workflow · **C** Config · **D** Decision · **G** Guide (`Vorlage:`). Type follows the domain — content files Prompt-dominant, advisory/governance files Guide-dominant, the cost/model file Decision-heavy, the workflows file Workflow-dominant. Current distribution across the base: **253 Prompt · 559 Guide · 96 Workflow · 16 MCP · 2 Skill**, plus Decision-type scenarios and 110 persona interaction patterns.
- **R7a `Empfehlung:` on every content/persona scenario** — a hand-crafted, source-grounded recommendation in the Data voice (1,067 total; zero exact duplicates; zero template feel).
- **Repo-wide marker-spacing pass** — every field marker (`Trigger:`/`Vorgehen:`/`Prompt:`/…) renders as its own paragraph; new idempotent formatter `tools/format_marker_spacing.py`.
- **New meta-playbook** `docs/building-knowledge-agents.md` — the conceptual companion to the CLAUDE.md pipeline.
- **New forward-looking research prompt** `GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md` — commissions an architecture spec for the maximum build-out of Little Data (Workflows + Agents + MCP + Skills interlocked) so it stays self-current and compensates platform gaps via durable Memory, a self-improvement feedback loop, graph-based audit trails, and its own MCP/API RAG pipeline with re-ranking.

## Quality gates (all green)

- `check_schema.sh --all`: **20/20 PASS** (every file valid for its kind).
- Source-grounding: clean (every content Trigger cites a real source; no invented limits/prices/features).
- Chunks: every scenario block within [600, 4096] bytes; no FAIL.
- Emoji guard: clean (no pictographs anywhere).
- `check_prompt_size.sh`: AGENT_PROMPT **14,456 / 15,000** chars.
- Marker-spacing: 0 fixes needed.

## End-of-pass spec-panel review — CONVERGED

The M01–M13 critical-thinking methods were re-run as **test criteria** over all 1,106 scenarios. Verdict: **0 critical, 0 major** findings. Invisible-scaffolding clean (no method-name leaks as output), HITL on every outward action, hard disciplines clean (Vorgehen ≤5, Fallstricke ≥2). The two actionable minor items were closed before release (four Guide `Vorlage:` blocks extended to ≥3 sections; one near-limit chunk condensed to restore margin).

## Deploy in one line

Upload **only** `iw-little-data/knowledge/` to a Langdock Wissensordner, paste `AGENT_PROMPT.md` into the agent's system prompt, and load `CONVERSATION_STARTERS.md`. See `INSTALL.md`. Never upload `provenance/`.

## Maintenance cadence

Re-verify cited **model prices every 60 days**, **model names every 90 days**, **platform limits every 180 days**, integration availability every 90 days. Re-run the gates each review (`MAINTENANCE.md`).

## Known minor (non-blocking)

Two near-twin scenario pairs share an opening recommendation phrasing (mild retrieval overlap only; both valid and source-grounded). A light Vorgehen-condensation pass on the file 04/05 scenarios in the 3,200–3,950 B band would add chunk-split headroom; none currently FAIL.

## License

See `LICENSE` (shipped in both bundles).
