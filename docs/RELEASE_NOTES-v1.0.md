# Knowledge Agent Framework — v1.0

**Source-grounded, strict-schema RAG knowledge advisors — the framework plus the IW "Little Data" reference build.**

v1.0 graduates the v1.0-Beta base to a final, deployment-validated release. The knowledge content was already complete and CONVERGED at Beta; v1.0 is the **consolidate-and-validate** release: the operator deliverables, the agent's own self-description (glossar + calibration), and the release packaging are now current and trustworthy. This release ships two assets: the **deployable agent package** (upload-ready for Langdock) and the **full framework + work-artefact bundle** (everything needed to understand, re-validate, maintain, and build new agents).

---

## What's in this release

### 1. `iw-little-data.zip` — the deployable agent (upload-ready)
The lean package you actually deploy. Only `knowledge/` is uploaded to the Langdock Wissensordner; the rest is operator documentation.
- `knowledge/` — 20 strict-schema German knowledge files (00–19), **1,106 scenarios**.
- `AGENT_PROMPT.md` — the system prompt (14,925 / 15,000 chars; init protocol, modes, refusal strings, gestaffeltes Antwortformat, calibration examples incl. the IW-Fachebene + HITL case).
- `CONVERSATION_STARTERS.md` — **15 starters** (10 platform + 5 IW-layer).
- `INSTALL.md` — deployment guide with **6 validation canaries** (persona, Julia-mode, exact refusal string, retrieval-miss, IW-routing, HITL).
- `CHANGELOG.md`, `README.md`, `LICENSE`, `MAINTENANCE.md`, `VALIDATION-CHECKLIST.md`.
- `provenance/` — sources, research reports, themed extracts. **Reference only — never uploaded** to the knowledge folder.

### 2. `knowledge-agent-framework.zip` — framework + work-artefacts
Everything a maintainer, auditor, or builder of the *next* agent needs:
- `CLAUDE.md` — the end-to-end build playbook (research → deploy pipeline).
- `README.md`, `LICENSE`.
- `docs/` — the methodology: `building-knowledge-agents.md` (meta-playbook), `knowledge-file-authoring-spec.md` (strict-schema rulebook), the build-plan/design docs, and `docs/examples/` (the IW reference design + critique).
- `docs/superpowers/` — the full work record: `plans/` (the deep-revision execution plans with the per-file progress log and type tallies), `specs/` (the authoring rulebook, the solution-chunk-schemata catalog = the 9-type system, the gap-log, the kb-index `.md`+`.json`, the loop-2/3/4 review verdicts), `specs/v2-file-rules/`, `specs/v2-findings/`, **and the `2026-06-02-knowledge-v2.0-roadmap.md` plan** (what v2.0 adds: the RAG simulator + the self-improving maxbuild architecture).
- `templates/` — blanks to start a new agent (knowledge-file, AGENT_PROMPT, research-prompt).
- `tools/` — the validator suite (schema, grounding, chunks, coherence, prompt-size, kb-index, marker-spacing, coverage, upload-ready).

---

## What changed from v1.0-Beta (the consolidate-and-validate work)

- **Operator docs brought current to the 20-file base.** INSTALL now uploads all 20 files and quotes 1,106 scenarios; conversation starters grew 10 → 15 to cover the IW layer (files 14/16/17/19 + the glossar); MAINTENANCE lists the full gate suite and a v1.0 log row.
- **Two new deployment canaries.** Beyond persona / Julia-mode / exact-refusal / retrieval-miss, INSTALL adds **Test 5 (IW-routing)** — an IW-study press release must route to file 14, not the generic mechanics file — and **Test 6 (HITL)** — an outward "send the newsletter" request must demand a human-in-the-loop approval and never promise auto-send.
- **The agent can now define what it produces.** Added 9 source-grounded glossar entries for the IW deliverable formats that files 14/17 ship (Faktenblatt, Gastbeitrag/Op-Ed, Karussell-Post, Leichte Sprache, Methodenkasten, Pressespiegel, Sharepic, Sprechzettel, Zitatkachel), each cited to the file that uses it.
- **AGENT_PROMPT calibration now demonstrates the IW layer.** Added the IW-Fachebene + HITL calibration example (routing to file 14, manual-release framing); prompt at 14,925 / 15,000 chars.

## v1.0 content highlights (carried from Beta, still the headline)

- **9-type solution system on every scenario.** Each scenario's payload is the genuinely-best deliverable type, not a default prompt: **P** Prompt · **A** API · **M** MCP · **S** Skill · **T** Code · **W** Workflow · **C** Config · **D** Decision · **G** Guide (`Vorlage:`). Type follows the domain. Distribution across the base: **253 Prompt · 559 Guide · 96 Workflow · 16 MCP · 2 Skill**, plus Decision-type scenarios and 110 persona interaction patterns.
- **R7a `Empfehlung:` on every content/persona scenario** — a hand-crafted, source-grounded recommendation in the Data voice (1,067 total; zero exact duplicates; zero template feel).
- **Repo-wide marker-spacing discipline** — every field marker renders as its own paragraph (`tools/format_marker_spacing.py`).

## Quality gates (all green)

- `check_schema.sh --all`: **20/20 PASS**.
- Source-grounding: clean (every content Trigger cites a real source; no invented limits/prices/features).
- Chunks: every scenario block within [600, 4096] bytes; no FAIL.
- Coherence: PASS. Emoji guard: clean. Marker-spacing: 0 fixes needed.
- `check_prompt_size.sh`: AGENT_PROMPT **14,925 / 15,000** chars.

## End-of-pass spec-panel review — CONVERGED

The M01–M13 critical-thinking methods were re-run as **test criteria** over all 1,106 scenarios. Verdict: **0 critical, 0 major** findings. Invisible-scaffolding clean (no method-name leaks as output), HITL on every outward action, hard disciplines clean (Vorgehen ≤5, Fallstricke ≥2).

## Deploy in one line

Upload **only** `iw-little-data/knowledge/` (all 20 files) to a Langdock Wissensordner, paste `AGENT_PROMPT.md` into the agent's system prompt, and load the 15 starters from `CONVERSATION_STARTERS.md`. Run the 6 canaries in `INSTALL.md`. Never upload `provenance/`.

## Maintenance cadence

Re-verify cited **model prices every 60 days**, **model names every 90 days**, **platform limits every 180 days**, integration availability every 90 days. Re-run the gates + the 6 canaries each review (`MAINTENANCE.md`).

## Roadmap — v2.0 (planned, not in this release)

The forward work is specified in `docs/superpowers/plans/2026-06-02-knowledge-v2.0-roadmap.md` and the existing `examples/iw-little-data/GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md`:
- **Offline RAG simulator** (`tools/rag_sim/`) — a minimal, open-source-embedding (fastembed / multilingual-e5-small) retrieval simulator that models Langdock's per-document cap, runs a versioned golden-question set, and emits a structured routing-quality report. Pairs with a behavioral run-book.
- **Self-improving "maxbuild" architecture** — Workflows + Agents + MCP + Skills interlocked for self-currency (freshness workflows on the maintenance cadence), durable Memory, a closed self-improvement/feedback loop, graph-based audit trails, and Little Data's own programmatic RAG pipeline with re-ranking.

## License

See `LICENSE` (shipped in both bundles).
