# Changelog — Little Data (Langdock Advisor Agent)

## v1.0-Beta — 2026-06-02

Knowledge-base v2 deep revision. Builds on v1.0; adds the IW-tailored layers and the
best-fit solution-type system across the whole base.

### Knowledge base — now 20 files / 1,106 scenarios
- **New layers shipped:** `14-iw-use-cases` (39), `16-onboarding-change-management` (28),
  `17-branchen-think-tank-praxis` (39), `18-quellen-und-deeplinks` (reference), and
  `19-iwmedien-zusammenarbeit` (10) — authored from the IW-tailored Gemini research prompts.
- **Schema evolution (R18–R20):** every content/persona scenario moved to the terse
  10-marker format, and **slot-6 is now the genuinely-best solution type** (the 9-type
  system: Prompt · API · MCP · Skill · Code · Workflow · Config · Decision · Guide), not a
  default prompt. Distribution: 253 Prompt · 559 Guide (`Vorlage:`) · 96 Workflow · 16 MCP ·
  2 Skill, plus Decision-type scenarios and 110 persona interaction patterns.
- **R7a `Empfehlung:`** — a hand-crafted, source-grounded recommendation added to every
  content/persona scenario (1,067 total; zero duplicates; Data-voice faithful).
- **Marker spacing:** every field marker renders as its own paragraph
  (`tools/format_marker_spacing.py`).
- **Glossar (`15`):** 114 terms + 20 FAQ.

### Quality
- All 20 files PASS `check_schema.sh`; source-grounding clean; every scenario block in
  [600, 4096] bytes; emoji-free; coherence clean.
- End-of-pass spec-panel review (M01–M13 as test criteria over all 1,106 scenarios):
  **CONVERGED** — 0 critical, 0 major findings.

### System prompt
- **AGENT_PROMPT.md** — 14,456 / 15,000 characters.

### Forward spec
- **GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md** (example root) — commissions the
  maximum build-out architecture (Workflows + Agents + MCP + Skills, self-currency,
  durable Memory, self-improvement loop, graph audit trails, own RAG pipeline).

## v1.0 — 2026-06-01

First production release. Licensed to Institut der deutschen Wirtschaft.

### Knowledge base — 15 files (upload to the Langdock Wissensordner)
- **11 thematic files (00–10):** 80 source-grounded scenarios each = **880 scenarios**.
  Every scenario uses the 9-field schema (trigger with cited source, strategic goal,
  hands-on result, Langdock capability, ≤5 steps, PTCF example prompt, expected
  artifact, ≥2 specific pitfalls, follow-up).
- **11-persona-core:** 40 reaction patterns (anchor "Little Data Persona Anker").
- **12-persona-julia-modus:** 31 interaction patterns (anchor "Beziehungsmodus Julia Lenz").
- **13-data-agent-anweisungen-pro-thema:** 11 per-theme communication directives + 39
  worked conversation scenarios.
- **15-glossar-und-faq:** Glossar (85 terms across 5 domains) + FAQ (20 entries),
  grounded in and cited to files 00–11.

### Quality
- 100% emoji-free across all knowledge files (markers converted to text).
- No invented Langdock limits, prices, or features (fact-checked against the source
  research; model versions and costs phrased defensively).
- Human-in-the-loop guidance on every external side-effect (email, CRM, publish).
- All 15 files PASS `check_schema.sh` (content / persona / anweisung / glossar kinds).

### System prompt
- **AGENT_PROMPT.md** — 11,972 characters. Lt. Cmdr. Data persona with inlined
  personality (identity, worldview, voice, formatting, emotional registers,
  invisible M01–M13 reasoning engine, Julia relationship-mode delta), five operating
  modes, gestaffeltes Antwortformat, and exact refusal strings.

### Deployment
- **CONVERSATION_STARTERS.md** — 10 German starters (≤255 chars each).
- **INSTALL.md** — step-by-step Langdock setup + 4 validation canaries.
- **README.md** — package overview and quick start.

### Reference
- **provenance/** — research, sources, and theme extracts (build inputs).
  Do NOT upload to Langdock; see `provenance/README.md`.

### Reserved for v1.1 (pending IW research)
- `14-iw-use-cases`, `16-onboarding-change-management`, `17-branchen-think-tank-praxis`
  — to be authored from Gemini research prompts 10–12. This release is fully
  deployable without them.
