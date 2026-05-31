# little-data — Langdock Advisor Agent for Marketing Directors

> **Little Data** is a German-language Langdock advisor agent modeled on Lt. Cmdr. Data from Star Trek: TNG. It helps a strategically-working, hands-on Marketing-Direktorin navigate Langdock features, choose AI models cost-effectively, and apply 1 400+ pre-rendered decision-ready scenarios to daily marketing work.
>
> **Status:** in active build (Phase 1 extracting, Phase 0.5 + Phase 2 + Phase 3-5 pending). Tracking branch: `claude/friendly-ride-eRsPr`.

---

## Project structure

```
little-data/
├── INSTALL.md                         step-by-step Langdock workspace deployment
├── MAINTENANCE.md                     review cadence + staleness rules (after Phase 3)
├── SKILL-knowledge-authoring.md       action-oriented authoring discipline
├── GEMINI-RESEARCH-PROMPTS.md         9 deep-research prompts (1-9, all run)
├── data/
│   ├── sources/                       7 ingested Drive sources (read-only inputs)
│   ├── research/                      12 deep-research reports (sc-deep-research + Gemini)
│   ├── restructured/                  2 internal-synthesis methodology docs
│   ├── extracts/                      8 Phase-1 theme extracts (T1-T8)
│   └── coverage-matrix.md             single source of truth for retrievable items
├── tools/
│   ├── check_prompt_size.sh           char-budget validator (15K default)
│   ├── check_prompt_tokens.py         tiktoken-based advisory
│   ├── check_coverage.sh              matrix → knowledge-file heading verification
│   ├── check_schema.sh                strict-schema spot-check (≥100 scenarios, mandatory fields)
│   ├── check_overlap.py               cross-file embedding-similarity check (sentence-transformers)
│   ├── jules-dispatch-knowledge-file.sh  Jules-session driver
│   ├── render-jules-prompt.py         PyYAML-based prompt template renderer
│   └── jules-prompts/
│       ├── _template.prompt.md        master dispatch template
│       ├── _review-template.prompt.md Jules-reviews-Jules template
│       ├── config.yaml                per-file metadata
│       └── 00…13 (12 rendered prompts)
└── langdock-deploy/                   the upload-ready package
    ├── AGENT_PROMPT.md                ≤15K chars system prompt (Phase 3)
    ├── CONVERSATION_STARTERS.md       10 starters in DE (Phase 3)
    └── knowledge/                     the 14 knowledge files (Phases 0.5 + 2)
        ├── 00-langdock-uebersicht.md
        ├── 01-chat-und-prompts.md
        ├── 02-agenten-konfiguration.md
        ├── 03-wissensordner-und-rag.md
        ├── 04-workflows.md
        ├── 05-integrationen-und-mcp.md
        ├── 06-api-und-deployment.md
        ├── 07-modelle-und-kosten.md
        ├── 08-sicherheit-und-governance.md
        ├── 09-marketing-praxis.md
        ├── 10-prompts-und-skills.md
        ├── 11-persona-core.md              ← anchor "Little Data Persona Anker"
        ├── 12-persona-julia-modus.md       ← anchor "Beziehungsmodus Julia Lenz"
        └── 13-data-agent-anweisungen-pro-thema.md  ← per-Thema "Data-Anweisung" anchors
```

---

## Key specs (linked from `docs/superpowers/specs/`)

- `2026-05-31-little-data-agent-design.md` — agent design (persona, system prompt, capabilities, F8-F12, N9-N12)
- `2026-05-31-knowledge-file-authoring-spec.md` — 12 Commandments + Data-tonality discipline + Phase-2 synthesizer prompt template
- `2026-05-31-knowledge-build-plan-design.md` — 2-phase build architecture (hybrid Themes + Outputs)

## Key plans (linked from `docs/superpowers/plans/`)

- `2026-05-31-knowledge-build-plan.md` — bite-sized 6-phase implementation plan with gates and roll-back plays

---

## Build sequence

```
Phase 0    Pre-Build Setup (lokal)        ✅ done
Phase 1    Extract (8 themed extractors)  in progress (5/8 done; T3/T5/T6 running)
Phase 1.5  Cross-validation               pending Phase 1 complete
Phase 0.5  Soul-Doc (Files 11 + 12)       pending T5 complete
Phase 2    Knowledge-File Synthesis       pending Phase 0.5 complete
Phase 3    Lokale Integration             pending Phase 2 complete
Phase 4    Validation                     pending Phase 3 complete
Phase 5    Deployment Package             pending Phase 4 complete
```

---

## Persona architecture (hybrid)

- **System prompt (≤15K chars)** holds: identity anchor, voice defaults, hard prohibitions, mode-switch rules, forced-retrieval rule, source priority, boundaries. Survives any retrieval miss.
- **Files 11 + 12** hold full persona depth (SOUL/STYLE/SKILL aspects from the soul.md framework, translated for Langdock-RAG constraints). Loaded via two-step bootstrap:
  - SCHRITT 1: search "Little Data Persona Anker" → file 11 retrieved
  - SCHRITT 2: search "Beziehungsmodus Julia Lenz" if Julia identified → file 12 retrieved
- **File 13** holds per-Thema agent communication patterns ("Data-Anweisung [Thema]") — retrieved alongside thematic queries.

---

## Critical-thinking-embedded scenarios

Every scenario in every knowledge file is anchored in one of 13 critical-thinking methods (M01-M13 from `data/extracts/T8-metaprompts-critical-thinking.md`):

| ID | Method | German pattern |
|---|---|---|
| M01 | Falsification | "Was würde diese Hypothese widerlegen?" |
| M02 | Steelmanning | "Argumentiere die stärkste Gegenposition" |
| M03 | Pre-Mortem | "Stell dir vor, die Kampagne ist gescheitert — warum?" |
| M04 | Contrast Classes | "X vs. Y — was ist der entscheidende Unterschied?" |
| M05 | Bayesian Prior | "Was ist die Base-Rate, bevor du diese Evidence hinzufügst?" |
| M06 | Source Triangulation | "Wie verifiziere ich diesen Fakt aus 3 Quellen?" |
| M07 | Contradiction Log | "Wo widerspricht Quelle A der Quelle B?" |
| M08 | What Would Change My Mind | "Welche Evidence würde dich überzeugen?" |
| M09 | Red Team | "Wo greift ein Kritiker diese Position an?" |
| M10 | First-Principles | "Strippt die Annahmen — was bleibt fundamental?" |
| M11 | Assumption Decay | "Welche Annahmen verlieren über Zeit ihre Gültigkeit?" |
| M12 | Base-Rate | "Wie häufig kommt das wirklich vor?" |
| M13 | Adversarial Query Expansion | "Welche Edge-Cases triggert diese Definition?" |

Each scenario references its method explicitly in the `**Critical-Thinking-Method:**` line.

---

## Authoring discipline (digest)

- One topic per file. One H1 per file.
- H2 blocks 1 200-1 800 chars (= 1 Langdock chunk).
- H3 scenarios 1 200-1 800 chars (= 1 chunk), all 9 mandatory fields per scenario.
- Per-document cap: one chunk per file per query wins → distinct trigger nouns mandatory.
- No "Phase 2" framing — agent describes scope as "Beratung, nicht Ausführung."
- Reference prose tonality (NOT Data speaking; Data persona only in system prompt + files 11/12/13).
- Bilingual seeding: "Markenstimme (Brand Voice)" on first mention.

Full spec: `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md`.

---

## How to contribute

1. Read the design spec + the authoring spec.
2. If editing a knowledge file: respect the strict schema (run `tools/check_schema.sh <file>` before commit).
3. If editing the system prompt: run `tools/check_prompt_size.sh` (≤15K chars) + `tools/check_prompt_tokens.py` (advisory).
4. If editing the coverage matrix: run `tools/check_coverage.sh` to verify every row has a corresponding heading.
5. Commit with a clear message; push to the tracking branch.
