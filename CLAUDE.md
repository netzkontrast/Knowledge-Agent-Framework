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

Author the knowledge base under the **strict schema** (`docs/knowledge-file-authoring-spec.md`).
Four file kinds, detected by filename, each validated differently:

| Kind | Files | Unit |
|---|---|---|
| `content` | `00`–`10` thematic | `### S-XX-NNN` scenarios (10 terse markers; one typed slot-6 payload) |
| `persona` | `11`, `12` | `### S-LC/S-JL` reaction/interaction patterns |
| `anweisung` | `13` | `## Data-Anweisung <Thema>` communication directives |
| `glossar` | `15` | `## Glossar` term entries + `### F-` FAQ |

**The 10 terse markers per content scenario (exact order):**
`Trigger:` (must cite a source) · `Ziel:` · `Ergebnis:` · `Fähigkeit:` · `Vorgehen:` (≤5 steps) ·
**slot-6 payload** · `Artefakt:` · `Fallstricke:` (≥2 specific) · `Empfehlung:` (R7a — a hand-crafted,
source-grounded recommendation) · `Anschluss:`. Each marker starts its own paragraph (enforce with
`tools/format_marker_spacing.py`).

**Slot-6 is the genuinely-best solution type — the 9-type system, not a default prompt:**
`Prompt:`(P) · `API:`+`RateLimit:`(A) · `MCP:`+`Tool:`+`Scope:`(M) · `Skill:`+`Trigger-Wörter:`(S) ·
`Code:`+`IO:`(T) · `Workflow:`+`Budget:`(W) · `Pfad:`+`Diff:`+`Rollback:`(C) · `Empfehlung:` as the
payload (D, no separate slot-9) · `Vorlage:` ≥3 sections (G). Type follows the deliverable/domain.
Persona files (`11`, `12`) use `Konversation:` as slot-6. Full type detail + heuristics:
`docs/superpowers/specs/solution-chunk-schemata-catalog.md`.

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
See the persona architecture in `docs/examples/iw-little-data-agent-design.md`; skeleton in
`templates/AGENT_PROMPT.md`.

## Step 6 — Validate (gates)

```bash
tools/check_schema.sh    --all       # every file PASS for its kind (markers + slot-6 type)
tools/check_grounding.sh --all       # every Trigger cites a real source; no ungrounded facts
tools/check_chunks.sh    --all       # every scenario block in [600, 4096] bytes
tools/check_coherence.sh --all       # cross-file trigger-noun / one-chunk-wins coherence
tools/check_prompt_size.sh           # AGENT_PROMPT ≤ 15 000 chars
python3 tools/format_marker_spacing.py --check --all   # every marker its own paragraph (0 needed)
# emoji guard (must print nothing):
grep -rlP '[\x{1F000}-\x{1FAFF}\x{2600}-\x{26FF}\x{2700}-\x{27BF}\x{FE0F}]' langdock-deploy/knowledge/
```
Run from inside an example dir (or set `KNOWLEDGE_DIR=examples/<name>/langdock-deploy/knowledge`).
`tools/kb_index.py` regenerates the navigation index. Do not proceed to packaging until all gates are green.

## Step 7 — Package (lean)

Assemble the **upload-ready** package: `knowledge/` (the only thing uploaded to the
Langdock Wissensordner) + `AGENT_PROMPT.md` + `CONVERSATION_STARTERS.md` +
`INSTALL.md`/`README.md`/`CHANGELOG.md`/`LICENSE`, and a separate `provenance/` folder
(sources/research/extracts — reference only, **never uploaded**). Keep the licensee's
`LICENSE` inside the package.

## Step 8 — Release

Tag `v*` (or run the workflow manually). `.github/workflows/release.yml` validates, then builds
**every** `examples/<name>/` as `<name>.zip` (e.g. `iw-little-data.zip`) **plus** one
`knowledge-agent-framework.zip` bundle (CLAUDE.md, `docs/` incl. the `docs/superpowers/` work-record,
`templates/`, the validator suite) and publishes to the GitHub Releases tab. The release body uses
`docs/RELEASE_NOTES-<version>.md` verbatim when present.

## Step 9 — Maintain

Follow the staleness cadence in the example's `MAINTENANCE.md` (model prices 60 d, model
names 90 d, platform limits 180 d). Re-run the gates each review.

---

## Map of the repo

- `templates/` — blanks to start a new agent (knowledge-file, AGENT_PROMPT, research-prompt).
- `tools/` — the validators (canonical copies): `check_schema`, `check_grounding`, `check_chunks`,
  `check_coherence`, `check_prompt_size`, `kb_index`, `format_marker_spacing`, plus the upload-ready/coverage helpers.
- `docs/building-knowledge-agents.md` — **the meta-playbook**: how to build, research, test, and optimize a knowledge agent end-to-end (the conceptual companion to this file's step-by-step pipeline).
- `docs/` — framework methodology: `knowledge-file-authoring-spec.md`, `knowledge-build-plan-design.md`, `knowledge-build-plan.md`, the restructure record, and `RELEASE_NOTES-<version>.md`.
- `docs/superpowers/` — the build work-record: revision `plans/`, and `specs/` (the authoring rulebook, the **9-type solution-chunk catalog**, kb-index, review findings, per-file rules).
- `docs/examples/` — the IW reference example's design + critique.
- `examples/iw-little-data/` — the full reference build (Institut der deutschen Wirtschaft): 20 knowledge files / 1 106 scenarios + the `GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md` forward spec.
