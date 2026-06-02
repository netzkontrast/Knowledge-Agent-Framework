# Building Knowledge Agents — A Meta-Playbook

> **What this is.** A meta-reflection on the Knowledge Agent Framework in this
> repo: how to build a RAG-backed knowledge advisor agent (like the IW "Little
> Data" example), what actually matters, how to research and optimize the source
> material, and how to test the result. It distills the pipeline in `CLAUDE.md`,
> the authoring spec (`docs/knowledge-file-authoring-spec.md`), the rulebook
> (`docs/superpowers/specs/knowledge-authoring-rulebook.md`), the type catalog
> (`docs/superpowers/specs/solution-chunk-schemata-catalog.md`), and the concrete
> lessons learned across the deep-revision loops.
>
> **Who it's for.** Anyone (human or agent) starting a new `examples/<client>/`
> build, or improving an existing one. Read this once end-to-end, then keep
> `CLAUDE.md` open as the step-by-step checklist.

---

## 1. What a knowledge agent in this framework actually is

A knowledge agent here is **not** a fine-tuned model and **not** a clever system
prompt alone. It is three things working together:

1. **A strict-schema, source-grounded knowledge base** — a set of Markdown files
   uploaded to the platform's knowledge folder (Langdock Wissensordner). Every
   factual claim traces to a real source document. This is the agent's
   long-term, retrievable memory.
2. **A persona expressed *through* the knowledge** — the agent's identity, voice,
   vocabulary, and anti-patterns live in dedicated persona files (`11`/`12`) and
   per-topic communication directives (`13`), anchored by verbatim strings the
   system prompt forces it to retrieve first.
3. **A lean system prompt** (`AGENT_PROMPT.md`, ≤ 15 000 chars) that wires the
   above together: an init protocol that loads the persona anchor, the modes,
   the exact refusal strings, the tiered answer format, and calibration examples.

The single most important mental model: **the knowledge base is the product.**
The model is interchangeable; the system prompt is thin; the durable value is the
curated, source-grounded, retrieval-optimized knowledge. Everything below serves
that.

---

## 2. The build pipeline (research → deploy)

This mirrors the nine steps in `CLAUDE.md`. Start a new agent as
`examples/<client-name>/`, copying the blanks in `templates/` and the validators
in `tools/`.

```
client domain
   │
   ▼
1. SOURCES     gather client + domain source files            → data/sources/
2. RESEARCH    write deep-research prompts, run them           → data/research/
3. EXTRACTS    synthesize themed extracts (cross-validated)    → data/extracts/
4. KNOWLEDGE   author files under the strict schema            → langdock-deploy/knowledge/
5. PERSONA     persona-via-knowledge + system prompt           → 11/12/13 + AGENT_PROMPT.md
6. VALIDATE    schema + size + emoji + grounding gates         → tools/check_*
7. PACKAGE     lean deploy package + provenance + LICENSE      → langdock-deploy/ + dist/
8. RELEASE     tag → CI zips examples/<name>/ as <name>.zip    → .github/workflows/
9. MAINTAIN    freshness/staleness review cadence              → MAINTENANCE.md
```

The discipline is sequential for a reason: **you cannot author trustworthy
knowledge (step 4) before the sources (1) and cross-validated extracts (3)
exist.** Skipping research is the most common way a knowledge agent ends up
fluent and wrong.

---

## 3. How to research source documents

Research is where trust is won or lost. Three sub-steps:

### 3.1 Sources (`data/sources/`)
Collect the authoritative inputs — client publications, product/feature docs,
domain references, regulatory texts. Keep them **read-only**. They are
*provenance*, never uploaded to the deployed knowledge folder.

### 3.2 Deep-research prompts (`data/research/`)
Write one **deep-research prompt per domain** (platform features, sector
practice, glossary, persona canon, pricing, compliance, …). See
`templates/research-prompt.md`. Each prompt must:
- target exactly one domain (don't blend pricing with compliance);
- **demand primary-source citations** and require the researcher to flag every
  unverified claim as `[unverified]`;
- specify the exact output structure you will consume downstream (so synthesis
  is mechanical, not interpretive);
- be written in English (instructions) with output in the agent's target
  language where that matters (German for a DACH agent).

Run them, save the raw reports, *then* consume them. Resist the urge to author
from memory between writing the prompt and reading the report.

### 3.3 Extracts + cross-validation (`data/extracts/`)
Synthesize the raw reports into **themed extracts (T1…Tn)** — clean,
de-duplicated, citation-bearing inputs to authoring. Then run **one
cross-validation pass (T0)** specifically hunting for:
- **numeric contradictions** between sources (two different prices, limits,
  dates — pick the verified one, date it, drop the rest);
- **unverified claims** that slipped through (anything `[unverified]` does not
  ship, or ships behind the exact refusal string).

**Lesson learned:** date-sensitive facts (model prices, model names, platform
limits, regulatory deadlines) are the highest-risk content. Verify them against a
named primary source, record the source + retrieval date inline, and treat the
verified EUR/number as the load-bearing value — never a "rough multiplier" or a
remembered figure. The pricing rebuild (file 07) and the AI-Act-date fixes exist
precisely because remembered facts were wrong.

---

## 4. Authoring the knowledge base — what matters

Author under the **strict schema** (`docs/knowledge-file-authoring-spec.md`).
Four file kinds, detected by filename and validated differently:

| Kind | Files | Unit |
|---|---|---|
| `content` | `00`–`10` thematic | `### S-XX-NNN` scenarios |
| `persona` | `11`, `12` | reaction/interaction patterns |
| `anweisung` | `13` | per-topic communication directives |
| `glossar` | `15` | term entries + FAQ |

### 4.1 The scenario as the atom of knowledge
A content scenario is a self-contained, retrievable answer to one real situation.
It carries the **universal fields** (terse markers): `Trigger:` (must cite a
source), `Ziel:`, `Ergebnis:`, `Fähigkeit:`, `Vorgehen:` (≤ 5 steps), the
**type-specific solution payload** (slot 6, see §5), `Artefakt:`, `Fallstricke:`
(≥ 2, specific), `Empfehlung:` (the hand-crafted R7a recommendation), `Anschluss:`
(the next scenario's ID).

### 4.2 The non-negotiable disciplines
These are what make the output trustworthy. Enforce them on every scenario:

1. **Source-grounding.** Every Trigger cites a real source from the research.
   Never invent limits, prices, or features. If it isn't in the sources, it does
   not ship (or it uses the exact refusal string). The `check_grounding.sh` gate
   hard-fails on placeholder strings like `[unverified]`.
2. **Critical-thinking methods are *invisible* scaffolding.** Use Falsification,
   Steelmanning, Pre-Mortem, Red-Team, Source-Triangulation, Bayesian priors,
   etc. to *construct and critique* scenarios — but they must **never** appear as
   an output field. The one exception: a scenario whose *subject* is the method
   itself (a "use Chain-of-Thought for this analysis" scenario) may name it.
3. **Emoji-free.** No pictographs anywhere. Use text: `[unsicher]`, `rot/gelb/grün`,
   `ja/nein`. An emoji guard in CI must print nothing.
4. **≤ 5 Vorgehen steps.** Never more. If a process needs more, it's two scenarios.
5. **HITL on side-effects.** Any outward action (email send, CRM write, publish)
   requires a human-in-the-loop step. Never promise "vollautomatisch" for outward
   actions.
6. **Voice grounded in research.** The persona's vocabulary, register, and
   anti-patterns are themselves researched and canon-faithful — not improvised.
7. **One chunk wins per file per query** (see §7).

### 4.3 R7a — every scenario carries a hand-crafted Empfehlung
The `Empfehlung:` field is the single most valuable line for the reader: a
2-sentence, hand-crafted recommendation that distills the scenario's two
`Fallstricke` into positive, directive guidance ("Do X, because otherwise Y").
**Never template it.** A spot-check across the base confirmed zero template feel
is the bar. For a Decision-type scenario the Empfehlung *is* the deliverable
(slot 6); for all other types it's slot 9.

### 4.4 Parallel authoring is safe *because* the schema is strict
You can author one file at a time and trust the validators to catch drift. (In
this repo's own deep-revision loop, authoring is done inline in the main session;
subagents are used only for the end-of-pass review.) Always re-validate after
every batch.

---

## 5. Choosing the right solution type (the 9-type system)

The biggest quality lever after source-grounding: **ship the genuinely best
*kind* of solution for each scenario, not a copy-paste prompt for everything.**
The catalog defines nine type codes (the middle letter in `S-XXX-Y-NNN`), each
with a type-specific payload in slot 6:

| Code | Payload marker | Use when the deliverable is… |
|---|---|---|
| **P** Prompt | `Prompt:` | a chat instruction the human runs as-is (content, analysis, draft) |
| **A** API | `API:` + `RateLimit:` | a Langdock/external API integration |
| **M** MCP | `MCP:` + `Tool:` + `Scope:` | an MCP server integration |
| **S** Skill | `Skill:` + `Trigger-Wörter:` | a packaged, reusable Library skill |
| **T** Code | `Code:` + `IO:` | in-agent code execution (Data Analyst/pandas) |
| **W** Workflow | `Workflow:` + `Budget:` | a built Langdock Workflow (Trigger + Nodes) |
| **C** Config | `Pfad:` + `Diff:` + `Rollback:` | a concrete config-file change |
| **D** Decision | `Empfehlung:` (IS slot 6) | a recommendation resolving a choice (often + break-even) |
| **G** Guide | `Vorlage:` (≥ 3 sections) | a reusable doc/template/policy/matrix/playbook |

### 5.1 The per-deliverable heuristic (the rule that decides type)
Classify by the **deliverable**, not the topic. Ask: *what does the user walk
away holding?*
- **A runnable prompt / one-shot content or analysis output** → **P**.
- **Reusable infrastructure, governance, policy, template, matrix, framework,
  process, protocol, checklist, register** → **G**.
- **A built automation** (Trigger + Nodes in the Workflow-Builder) → **W**.
- **A recommendation that resolves an either/or**, usually with a threshold or
  break-even → **D** (the Empfehlung carries the decision; there is no separate
  slot-9).
- **A reusable micro-task invoked by trigger words** → **S**; **in-agent Python**
  → **T**; **an actual config edit with path/diff/rollback** → **C**;
  **an executable API call with rate-limit** → **A**.

### 5.2 Type follows the *domain* — and that's honest
A recurring lesson: a file's dominant type reflects what the domain actually
*delivers*, and forcing variety would be dishonest.
- **"API/deployment" and "security/governance" files are G-dominant**, not
  A-dominant. The deliverable is almost always an architecture briefing, a
  policy, a register, or a spec — the advisor *advises*; it rarely ships an
  executable call. Author Guide `Vorlage:` skeletons, and reserve `API:` for the
  rare genuine integration.
- **"Chat/prompts" and "marketing-praxis" files are P-dominant** — the deliverable
  is a runnable prompt or a one-shot content piece.
- **"Models & costs" is D-dominant** — its whole purpose is model/cost decisions
  (which model, BYOK break-even, tier choice, fine-tune-vs-prompt).
- **"Agent configuration" is G-dominant** — an agent config *is* infrastructure
  (system-prompt kernel + capabilities + folder + starters); the Vorlage captures
  the config blueprint, the Vorgehen the build process.

### 5.3 The M-vs-G and other boundary calls
- Committed MCP path → **M**; "API/MCP *or* HTTP bridge", i.e. an assessment →
  **G**.
- A reusable comparison *matrix as a tool* → **G**; a single binary recommendation
  → **D**.
- A documented decision-rule ("when to switch models") → **G** (it's a reusable
  guide), even though it's about a decision.
- An advisory memo/dossier/briefing → **G** (the Vorlage is the document skeleton).

---

## 6. The persona — identity via knowledge

The agent's character is not improvised in the system prompt; it is **researched
and stored as retrievable knowledge**:
- `11-persona-core` — identity, voice, vocabulary, anti-patterns. Anchor: a
  verbatim string like `"<Agent> Persona Anker"`.
- `12-…-modus` — a relationship/mode delta (e.g., a closer "Julia" mode).
- `13-…-anweisungen` — per-topic communication directives, anchored per topic.
- `AGENT_PROMPT.md` — the system prompt. Its **init protocol forces a first
  retrieval** that loads the persona anchor, so the agent "becomes" itself before
  answering. Inline only the *durable* personality; push everything situational
  into the knowledge base. Keep ≤ 15 000 chars (`tools/check_prompt_size.sh`).

**Lesson learned:** the system prompt should reference the schema's terse markers
and the type-specific slot-6 markers (so the agent reads its own knowledge
correctly), but it must stay lean — trim the navigation section to make room for
the schema definitions rather than growing past the size gate.

---

## 7. Retrieval optimization (RAG mechanics that decide answer quality)

The platform chunks documents (~2 000-char blocks), embeds them, retrieves the
top-k by semantic similarity, and — critically — applies a **per-document cap
(≈ 1 chunk per file per query)**. Author *for* this machine:

1. **One topic per file.** If a file mixes pricing and specs, a price question
   may retrieve the specs chunk and miss the price entirely. Atomize.
2. **Repeat the key noun in every paragraph.** No unresolved pronouns ("this
   feature is great" is useless out of context). Each paragraph must stand alone.
3. **Distinct trigger nouns across files; one chunk wins per query.** Reserve
   ambiguous nouns (e.g., "Brand Voice") to a single owning file so retrieval
   doesn't split across files. `kb_index.py` reports cross-file noun collisions.
4. **Keyword-rich, substantive H2 headings** ("Preis und Rabattstruktur DACH 2025",
   not "Preis"); ≥ 300 words per section so chunks don't merge.
5. **Markdown beats PDF.** Multi-column PDFs, page numbers, and watermarks break
   chunk boundaries mid-sentence; clean MD produces coherent chunks. Images are
   ignored by the vector DB — put any image-only info (HEX colors, dimensions)
   into text.
6. **CSV/Excel never go in the knowledge folder** — they go to the Data Analyst
   as a direct chat attachment. The vector DB can't use table structure.

### 7.1 The chunk band (a hard quality gate)
`tools/check_chunks.sh` enforces each scenario block in **[600, 4 096] bytes**
(hard), soft-warns above **3 200** (split-risk), and reports the file median —
aim for **~2 000–2 300 B**, with ~2 700–2 900 B acceptable for dense files.

**Lesson learned (the condensation discipline):** when you convert a `P` scenario
to `G`/`W`, the new `Vorlage`/`Workflow` block plus the `Empfehlung` often pushes
the block over 3 200 B because the **`Vorgehen` (build process) and the `Vorlage`
(config blueprint) overlap**. The fix is to **condense the Vorgehen to ~3 terse
steps in the same pass** (or a follow-up pass on just the warned scenarios) —
the Vorlage already carries the structure. `D` conversions, by contrast, *replace*
the prompt with the Empfehlung (no slot 9), so they keep chunks tight and rarely
warn. Budget for a condensation pass on G/W-heavy files.

---

## 8. How to test a knowledge agent

Testing is layered: mechanical gates, then retrieval quality, then a holistic
review.

### 8.1 The mechanical gates (run after every file)
```bash
tools/check_schema.sh --all      # every file PASS for its kind; type-specific slot-6 marker present; R7a coverage
tools/check_grounding.sh <file>  # Trigger citations; hard-fail on [unverified] / placeholder strings
tools/check_chunks.sh <file>     # byte band [600,4096]; soft-warn >3200; median
tools/check_coherence.sh <file>  # every Anschluss: resolves to a real scenario ID
tools/check_prompt_size.sh       # AGENT_PROMPT ≤ 15 000 chars
# emoji guard (must print nothing):
grep -rlP '[\x{1F000}-\x{1FAFF}\x{2600}-\x{26FF}\x{2700}-\x{27BF}\x{FE0F}]' langdock-deploy/knowledge/
python3 tools/kb_index.py --all  # per-type tally, cross-file trigger-noun collisions, reserved-noun violations
```
Do not proceed to packaging until all gates are green. The validators are the
reason parallel/batch authoring is safe.

### 8.2 Retrieval quality — canary sets
Mechanical gates prove structure, not *answers*. Build a **canary set**: 5–10
fixed questions in the exact wording real users use, with the expected source
file for each. Run them and record per answer: (a) is a citation present?
(b) is it factually correct? (c) did it say "no info" despite the doc existing?
Categorize misses — **(A)** file not uploaded, **(B)** file present but no chunk
retrieved (per-document cap or bad filename), **(C)** wrong chunk (multi-topic
file → atomize). Re-run monthly as a drift monitor (freeze the canary prompts;
add new ones to a separate set rather than editing the old).

**Lesson learned:** wait ≥ 10–15 minutes after a bulk upload before testing —
indexing is asynchronous, and a too-early test produces false "no info" misses
that get misdiagnosed as format errors.

### 8.3 A/B and goldset testing
For structural choices (3 big files vs. 12 atomic files; PDF vs. MD), run a
real A/B with the same 10 canary prompts and score citation/correctness/
completeness — don't trust "atomic is better" in the abstract for *your* corpus.
Keep a dated **golden-query set** as a regression gate before any knowledge-base
change ships.

### 8.4 The holistic review (the only place to use a subagent)
After a full pass, dispatch one **spec-panel review subagent** that re-runs the
critical-thinking methods (M01–M13) as *test criteria* over the whole base and
returns a prioritized improvement ledger. Feed the ledger back into the rulebook
and the next loop. Converged = the ledger is empty.

---

## 9. How to optimize an existing knowledge agent

Optimization is continuous, not a one-time step:
- **Atomize multi-topic files** (the single biggest retrieval win — defeats the
  per-document cap).
- **Rewrite for chunk coherence** — repeat key nouns, kill pronouns, substantive
  headings, MD over PDF, text equivalents for image-only facts.
- **Condense redundant Vorgehen** when it duplicates a Vorlage/Workflow, to hold
  the chunk band (§7.1).
- **Tighten filenames for source-tracking** — citations show the filename, so
  `2025-Q3-DACH-Brand-Voice-Tonalitaet-v2.md` beats `final_v2.pdf` (ASCII-only,
  hyphens, dated).
- **Reserve ambiguous trigger nouns** to one owning file; resolve collisions
  flagged by `kb_index.py`.
- **Re-type scenarios to their genuinely best kind** (§5) — a copy-paste prompt
  where the real deliverable is a workflow, a config, or a decision is a missed
  opportunity, not a neutral choice.

### 9.1 Maintenance cadence (`MAINTENANCE.md`)
Date-sensitive content decays. Run a staleness review on a cadence — e.g. model
**prices 60 d**, model **names 90 d**, platform **limits 180 d** — and re-run all
gates each review. Put a `Stand: JJJJ-MM` header *in the document body* (not just
the filename) so the date appears in the retrieved chunk, and verify any
date-sensitive claim against its primary source on each cycle.

---

## 10. The packaging & release boundary (what ships vs. what doesn't)

Keep a clean separation:
- **Uploaded to the platform:** only `langdock-deploy/knowledge/` (the knowledge
  files) + `AGENT_PROMPT.md` + `CONVERSATION_STARTERS.md`.
- **Shipped in the package but not uploaded:** `INSTALL.md`/`README.md`/
  `CHANGELOG.md`/`LICENSE`.
- **Reference only, never uploaded:** `provenance/` (sources, research, extracts).
  This is your audit trail of *why* each fact is in the base.

Release by tagging `v*`; CI validates and zips each `examples/<name>/` as
`<name>.zip` to the Releases tab.

---

## 11. The ten things that matter most (the short list)

1. **Source-grounding above all.** No source → it doesn't ship.
2. **The knowledge base is the product**, not the prompt or the model.
3. **One topic per file**; author for the per-document cap.
4. **Ship the genuinely best solution *type*** per scenario (P/A/M/S/T/W/C/D/G).
5. **Type follows the domain** — G-dominant for advisory/governance, P for
   content, D for decisions; don't force variety.
6. **Hand-craft every Empfehlung** (R7a); never template.
7. **Critical-thinking methods stay invisible** (except when they're the subject).
8. **Hold the chunk band**; condense Vorgehen when it duplicates the Vorlage.
9. **Test answers, not just structure** — canary sets + goldset regression +
   one holistic review subagent.
10. **Date-sensitive facts decay** — verify against primary sources on a cadence.

---

*This playbook is itself a meta-reflection produced during the framework's
deep-revision loop; it should be revised whenever the rulebook
(`docs/superpowers/specs/knowledge-authoring-rulebook.md`) or the type catalog
gains a new rule or learning.*
