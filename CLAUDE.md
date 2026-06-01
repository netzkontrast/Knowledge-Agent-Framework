# Knowledge Agent Framework — Build Playbook (CLAUDE.md)

This repo is a **framework for building RAG-backed knowledge advisor agents**: take a
client's domain (research source files), turn it into a strict-schema, source-grounded
knowledge base + a persona-via-knowledge system prompt, validate it, and ship a
deployable package. The IW "Little Data" agent in `examples/iw-little-data/` is the
canonical worked example.

This file tells an agent (you) **how to create a new knowledge agent** end to end.

---

## The pipeline (research → deploy)

```
client domain
   │
   ▼
1. SOURCES        gather client + domain source files            → data/sources/
2. RESEARCH       write deep-research prompts, run them           → data/research/
3. EXTRACTS       synthesize themed extracts (cross-validated)    → data/extracts/
4. KNOWLEDGE      author files under the strict schema            → langdock-deploy/knowledge/
5. PERSONA        persona-via-knowledge + system prompt           → 11/12/13 + AGENT_PROMPT.md
6. VALIDATE       schema + size + emoji + source-grounding gates  → tools/check_*
7. PACKAGE        lean deploy package + provenance + LICENSE      → langdock-deploy/ + dist/
8. RELEASE        tag → CI zips examples/<name>/ as <name>.zip    → .github/workflows/release.yml
9. MAINTAIN       freshness/staleness review cadence              → MAINTENANCE.md
```

Start each new agent as `examples/<client-name>/` (mirror `examples/iw-little-data/`).
Copy the blanks from `templates/` and the validators from `tools/`.

---

## Step 1 — Sources (`data/sources/`)

Collect the authoritative inputs: client publications, websites, product/feature docs,
domain references. Keep them read-only. These are **provenance**, never uploaded to the
deployed knowledge folder.

## Step 2 — Research prompts (`data/research/`)

Write **Gemini Deep Research** prompts (English instructions, German output where the
agent is German) — see `templates/research-prompt.md` and the worked set in
`examples/iw-little-data/GEMINI-RESEARCH-PROMPTS.md`. Each prompt:
- targets one domain (platform features, sector practice, glossary, persona canon, …),
- demands **primary-source citations** and flags `[unverified]`,
- specifies the exact output structure you will consume.
Run them, save the reports, then consume them.

## Step 3 — Extracts (`data/extracts/`)

Synthesize the raw research into themed extracts (T1…Tn) and run one **cross-validation**
pass (T0) for numeric contradictions and unverified claims. Extracts are the clean,
de-duplicated inputs to authoring.

## Step 4 — Knowledge files (`langdock-deploy/knowledge/`)

Author the knowledge base under the **strict schema** (`docs/framework/knowledge-schema.md`).
Four file kinds, detected by filename, each validated differently:

| Kind | Files | Unit |
|---|---|---|
| `content` | `00`–`10` thematic | `### S-XX-NNN` scenarios (9 mandatory fields) |
| `persona` | `11`, `12` | `### S-LC/S-JL` reaction/interaction patterns |
| `anweisung` | `13` | `## Data-Anweisung <Thema>` communication directives |
| `glossar` | `15` | `## Glossar` term entries + `### F-` FAQ |

**Mandatory 9 fields per content/persona scenario (exact order):**
`Wann nutzen (Trigger)` (must cite a source) · `Strategisches Ziel` · `Hands-on Ergebnis` ·
`Eingesetzte Langdock-Fähigkeit(en)` · `Vorgehen (≤5 Schritte)` · `Beispiel-Prompt (DE, PTCF)` ·
`Erwartetes Artefakt` · `Fallstricke (≥2 spezifisch)` · `Anschluss-Szenario`.

### Non-negotiable authoring disciplines

These are what make the output trustworthy — enforce them on every file:

1. **Source-grounding.** Every scenario's Trigger cites a real source from the research.
   Never invent limits, prices, or features. If it is not in the sources → it does not
   ship (or use the exact refusal string).
2. **M01–M13 critical-thinking lens is *invisible* scaffolding.** Use the methods
   (Falsification, Steelmanning, Pre-Mortem, Red Team, Source Triangulation, …) to
   *construct and critique* scenarios. They MUST NEVER appear as an output field.
3. **Emoji-free.** No pictographs anywhere (use text: `[unsicher]`, `rot/gelb/grün`, `ja/nein`).
4. **≤5 Vorgehen steps.** Never more.
5. **HITL on side-effects.** Any outward action (email send, CRM write, publish) requires a
   human-in-the-loop step. Never promise "vollautomatisch" for outward actions.
6. **Voice grounded in research.** The persona's voice (vocabulary, register, anti-patterns)
   is itself researched and canon-faithful — not improvised.
7. **One chunk wins per file per query.** Distinct trigger nouns across files; ~2 000-char
   blocks; repeat key nouns; no cross-chunk pronouns.

Parallel authoring (one subagent per file) is safe **because** the schema + validators are
strict. Always re-validate after.

## Step 5 — Persona + system prompt

- `11-persona-core` — identity, voice, vocabulary, anti-patterns (anchor: "<Agent> Persona Anker").
- `12-…-modus` — a relationship/mode delta (anchor: "<Beziehungsmodus …>").
- `13-…-anweisungen` — per-topic communication directives (anchor: "Data-Anweisung <Thema>").
- `AGENT_PROMPT.md` — the system prompt: init protocol (forced first search loads the persona
  anchor), modes, exact refusal strings, gestaffeltes Antwortformat, calibration examples.
  Keep it **≤15 000 chars** (`tools/check_prompt_size.sh`); inline only the durable personality.
See `docs/framework/persona-module.md` for the bootstrap pattern; skeleton in
`templates/AGENT_PROMPT.md`.

## Step 6 — Validate (gates)

```bash
tools/check_schema.sh --all          # every file PASS for its kind
tools/check_prompt_size.sh           # AGENT_PROMPT ≤ 15 000 chars
# emoji guard (must print nothing):
grep -rlP '[\x{1F000}-\x{1FAFF}\x{2600}-\x{26FF}\x{2700}-\x{27BF}\x{FE0F}]' langdock-deploy/knowledge/
```
Do not proceed to packaging until all gates are green.

## Step 7 — Package (lean)

Assemble the **upload-ready** package: `knowledge/` (the only thing uploaded to the
Langdock Wissensordner) + `AGENT_PROMPT.md` + `CONVERSATION_STARTERS.md` +
`INSTALL.md`/`README.md`/`CHANGELOG.md`/`LICENSE`, and a separate `provenance/` folder
(sources/research/extracts — reference only, **never uploaded**). Keep the licensee's
`LICENSE` inside the package.

## Step 8 — Release

Tag `v*` (or run the workflow manually). `.github/workflows/release.yml` validates, then
zips **every** `examples/<name>/` as `<name>.zip` (e.g. `iw-little-data.zip`) and publishes
to the GitHub Releases tab.

## Step 9 — Maintain

Follow the staleness cadence in the example's `MAINTENANCE.md` (model prices 60 d, model
names 90 d, platform limits 180 d). Re-run the gates each review.

---

## Map of the repo

- `templates/` — blanks to start a new agent (knowledge-file, AGENT_PROMPT, research-prompt).
- `tools/` — the validators (canonical copies).
- `docs/framework/` — `methodology.md`, `knowledge-schema.md`, `persona-module.md`.
- `docs/` — reframed specs/plans (framework reference).
- `examples/iw-little-data/` — the full reference build (Institut der deutschen Wirtschaft).

> The reference example currently lives at `little-data/` and is being relocated to
> `examples/iw-little-data/` as part of the framework restructure.
