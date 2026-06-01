# Little Data — Langdock Advisor Agent (Release v1.0)

**Little Data** is a German-language Langdock advisor agent for a Marketing/Communications team, modeled on Lt. Cmdr. Data (Star Trek: TNG). It helps the team navigate Langdock, write better prompts, choose AI models cost-effectively, and apply source-grounded scenarios to daily work — precise, evidence-based, and emoji-free.

> **Licensed to:** Institut der deutschen Wirtschaft (see `LICENSE`).
> **© 2026 Michael Schimmer / Netzkontrast.**

---

## What's in this package

```
little-data-langdock-v1.0/
├── README.md                  ← this file
├── LICENSE                    ← proprietary, single-licensee terms
├── CHANGELOG.md               ← what this release contains
├── INSTALL.md                 ← step-by-step Langdock deployment
├── AGENT_PROMPT.md            ← the system prompt (paste into the Agent)
├── CONVERSATION_STARTERS.md   ← 10 starters for the Agent
├── knowledge/                 ← UPLOAD these 15 files to the Wissensordner
│   ├── 00-langdock-uebersicht.md … 10-prompts-und-skills.md   (11 thematic, 80 scenarios each)
│   ├── 11-persona-core.md         ← anchor "Little Data Persona Anker"
│   ├── 12-persona-julia-modus.md  ← anchor "Beziehungsmodus Julia Lenz"
│   ├── 13-data-agent-anweisungen-pro-thema.md  ← per-theme "Data-Anweisung" anchors
│   └── 15-glossar-und-faq.md      ← Glossar (85 Begriffe) + FAQ (20 Einträge)
└── provenance/                ← REFERENCE ONLY — do NOT upload (see provenance/README.md)
    ├── sources/  research/  extracts/
```

---

## Quick start (3 steps)

1. **Wissensordner anlegen** in Langdock and **upload all 15 files** from `knowledge/`.
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
| Reference | `15` | Glossar (85 terms) + FAQ (20 entries), grounded in the thematic files |

Every thematic scenario carries a 9-field schema (trigger with a cited source, strategic goal, hands-on result, Langdock capability, ≤5 steps, PTCF example prompt, expected artifact, ≥2 specific pitfalls, follow-up). No invented limits or prices; human-in-the-loop guidance on any external side-effect.

---

## Design notes

- **System prompt (≤12K chars)** holds the persona identity, voice, modes, refusal strings, and the forced first-search bootstrap — it survives any retrieval miss.
- **Two-step persona bootstrap:** the prompt searches `"Little Data Persona Anker"` (→ file 11) on the first turn, and `"Beziehungsmodus Julia Lenz"` (→ file 12) if Julia is identified.
- **Per-theme communication anchors:** `"Data-Anweisung [Thema]"` (→ file 13) tune how the agent speaks about each topic.
- **Critical-thinking methods** (M01–M13) are invisible authoring scaffolding — they shaped scenario rigor but never appear as visible fields.

---

## Reserved for v1.1 (pending IW research)

Files `14` (IW use cases), `16` (Onboarding & Change-Management), and `17` (Branchen/Think-Tank-Praxis) are planned. They will be authored from the three IW-tailored Gemini research prompts once that research is run. This v1.0 release is fully deployable without them.

---

## Maintenance & validation

Review cadence, staleness rules, and the validation tooling live in the project repository (`MAINTENANCE.md`, `VALIDATION-CHECKLIST.md`, `tools/check_schema.sh`). Re-verify model prices monthly and platform limits quarterly against docs.langdock.com.
