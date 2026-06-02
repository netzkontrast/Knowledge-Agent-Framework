# Little Data — Langdock Advisor Agent (Release v1.0-Beta)

**Little Data** is a German-language Langdock advisor agent for a Marketing/Communications team, modeled on Lt. Cmdr. Data (Star Trek: TNG). It helps the team navigate Langdock, write better prompts, choose AI models cost-effectively, and apply source-grounded scenarios to daily work — precise, evidence-based, and emoji-free.

> **Licensed to:** Institut der deutschen Wirtschaft (see `LICENSE`).
> **© 2026 Michael Schimmer / Netzkontrast.**

---

## What's in this package

```
little-data-langdock-v1.0-Beta/
├── README.md                  ← this file
├── LICENSE                    ← proprietary, single-licensee terms
├── CHANGELOG.md               ← what this release contains
├── INSTALL.md                 ← step-by-step Langdock deployment
├── AGENT_PROMPT.md            ← the system prompt (paste into the Agent)
├── CONVERSATION_STARTERS.md   ← 10 starters for the Agent
├── knowledge/                 ← UPLOAD these 20 files to the Wissensordner
│   ├── 00-langdock-uebersicht.md … 10-prompts-und-skills.md   (11 thematic, 80 scenarios each)
│   ├── 11-persona-core.md         ← anchor "Little Data Persona Anker"
│   ├── 12-persona-julia-modus.md  ← anchor "Beziehungsmodus Julia Lenz"
│   ├── 13-data-agent-anweisungen-pro-thema.md  ← per-theme "Data-Anweisung" anchors
│   ├── 14-iw-use-cases.md         ← IW communications use cases (39)
│   ├── 15-glossar-und-faq.md      ← Glossar (114 Begriffe) + FAQ (20 Einträge)
│   ├── 16-onboarding-change-management.md      ← IW rollout / change management (28)
│   ├── 17-branchen-think-tank-praxis.md        ← think-tank communications practice (39)
│   ├── 18-quellen-und-deeplinks.md             ← source & deeplink reference
│   └── 19-iwmedien-zusammenarbeit.md           ← IW Medien collaboration (10)
└── provenance/                ← REFERENCE ONLY — do NOT upload (see provenance/README.md)
    ├── sources/  research/  extracts/
```

---

## Quick start (3 steps)

1. **Wissensordner anlegen** in Langdock and **upload all 20 files** from `knowledge/`.
2. **Agent anlegen** (Prompt-Input mode), paste `AGENT_PROMPT.md` into the system instructions, attach the Wissensordner, enable Web Search + Data Analyst + Canvas.
3. **Konversations-Starter** aus `CONVERSATION_STARTERS.md` eintragen, then run the 4 validation canaries in `INSTALL.md`.

Full instructions: see **`INSTALL.md`**.

---

## What the knowledge base contains

| Layer | Files | Content |
|---|---|---|
| Thematic | `00`–`10` | 880 source-grounded scenarios (80 per file): overview, chat/prompts, agents, Wissensordner/RAG, workflows, integrations/MCP, API/deployment, models/costs, security/governance, marketing practice, prompts/skills |
| Persona | `11`, `12` | 40 reaction patterns + 31 Julia-mode interaction patterns (the agent's voice; loaded via bootstrap searches) |
| Communication | `13` | 11 per-theme "Data-Anweisung" directives + 39 worked conversation scenarios |
| IW practice | `14`, `16`, `17`, `19` | IW use cases (39) + onboarding/change-management (28) + think-tank communications practice (39) + IW Medien collaboration (10) |
| Reference | `15`, `18` | Glossar (114 terms) + FAQ (20 entries); source & deeplink reference (`18`) |

**1,106 source-grounded scenarios in total across 20 files.** Every content/persona scenario uses the 10-marker schema (cited Trigger, Ziel, Ergebnis, Fähigkeit, ≤5-step Vorgehen, a best-fit slot-6 payload, Artefakt, ≥2 specific Fallstricke, a hand-crafted Empfehlung, Anschluss). The slot-6 payload is the genuinely-best solution type — Prompt, API, MCP, Skill, Code, Workflow, Config, Decision, or Guide — not a default prompt. No invented limits or prices; human-in-the-loop guidance on any external side-effect.

---

## Design notes

- **System prompt (14 456 / 15 000 chars)** holds the persona identity, voice, modes, refusal strings, and the forced first-search bootstrap — it survives any retrieval miss.
- **Two-step persona bootstrap:** the prompt searches `"Little Data Persona Anker"` (→ file 11) on the first turn, and `"Beziehungsmodus Julia Lenz"` (→ file 12) if Julia is identified.
- **Per-theme communication anchors:** `"Data-Anweisung [Thema]"` (→ file 13) tune how the agent speaks about each topic.
- **Critical-thinking methods** (M01–M13) are invisible authoring scaffolding — they shaped scenario rigor but never appear as visible fields.

---

## IW-tailored layers (now included)

Files `14` (IW use cases), `16` (Onboarding & Change-Management), `17` (Branchen/Think-Tank-Praxis), `18` (Quellen & Deeplinks), and `19` (IW Medien collaboration) are authored and shipped in this release — produced from the IW-tailored Gemini research prompts. The forward-looking `GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md` (in the example root) commissions the next architecture step: a self-updating, self-improving build via Workflows + Agents + MCP + Skills and an own RAG pipeline.

---

## Maintenance & validation

Review cadence, staleness rules, and the validation tooling live in the project repository (`MAINTENANCE.md`, `VALIDATION-CHECKLIST.md`, `tools/check_schema.sh`). Re-verify model prices monthly and platform limits quarterly against docs.langdock.com.
