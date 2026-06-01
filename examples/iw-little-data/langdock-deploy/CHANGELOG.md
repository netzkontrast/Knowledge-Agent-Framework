# Changelog — Little Data (Langdock Advisor Agent)

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
