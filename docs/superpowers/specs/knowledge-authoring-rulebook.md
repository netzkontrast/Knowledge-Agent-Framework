# Knowledge Authoring Rulebook (Central)

**Status:** living document — improved at the end of every loop.
**Scope:** all knowledge files in `examples/<agent>/langdock-deploy/knowledge/`.
**Relationship to other docs:** this is the *operational* rulebook for the
scenario-by-scenario deep-revision loop. The strict schema lives in
`docs/knowledge-file-authoring-spec.md`; per-file specifics live in
`docs/superpowers/specs/v2-file-rules/`. When this rulebook and the spec
disagree, fix the spec or the rulebook so they agree — never ship a contradiction.

---

## R0 — The loop (how we work)

1. Re-read this rulebook + the active plan (`docs/superpowers/plans/2026-06-02-knowledge-v2-deep-revision.md`) before each file.
2. Take ONE file. Read it fully. Reflect scenario-by-scenario against R1–R12 below + that file's rules.
3. Apply improvements **inline** (no authoring subagents). Widen scope freely: fix, sharpen, add, or replace; create new scenarios, new scenario *kinds*, or new files where it raises real-world usefulness.
4. Update that file's per-file rules with anything learned.
5. Validate (schema + grounding + coherence + emoji). Commit.
6. Re-read rulebook + plan. Next file.
7. After a full pass over all files, a **review subagent** (spec-panel) critiques the whole base; feed its findings back into the next loop and into this rulebook. Loop until the review finds no improvement potential.

## R1 — Source-grounding is non-negotiable

- Every factual claim (limit, price, feature, date, count) traces to a real source.
- **Never invent numbers.** If it is not in the sources → it does not ship.
- Primary sources verified this loop:
  - **Langdock prices/models:** `langdock.com/models` + `langdock.com/pricing` → captured in `data/research/13-langdock-pricing-verified-2026-06.md`. Langdock bills **direct EUR per 1M tokens (Input/Output)**; there are **NO per-model "Multiplikatoren"**. Do not reintroduce multiplier language.
  - **IW publication formats:** `iwkoeln.de` → `data/research/14-iw-publikationsformate-verified-2026-06.md`.
- Date-sensitive facts (EU AI Act / Art. 50 fristen, model rosters, prices) carry **no hard date in prose**; use the pattern "Frist/Wert datums-sensitiv — gegen Primärquelle per Web-Suche verifizieren" and stamp tables "(Stand <Monat Jahr> — Quelle: …; bei Wartung gegenprüfen)".
- When a fact is needed and unknown, use Deep Research / WebSearch to verify; if still unverifiable, write `[unsicher]` (allowed) — never a fabricated specific. Never the literal authoring-TODO strings `über IW-Recherche zu verifizieren` / `[unverified]` (these hard-fail the grounding gate).

## R2 — Citations on factual triggers

- Any `**Wann nutzen (Trigger):**` that asserts a platform fact ends with `(Quelle: NN-dateiname)` pointing at the single most relevant knowledge file (or `iwkoeln.de` / `langdock.com/models` for external primary facts).
- Pure business/marketing situations (no hard fact) need no citation — do not invent one.

## R3 — Single source of truth per fact (coherence)

- One canonical home per fact; other files reference it, never restate a divergent value.
  - Prices/models → `07-modelle-und-kosten` (which cites the verified research file).
  - Integration count → "**55+ native Integrationen (rund 754 Actions; exakte Zahl nicht offiziell dokumentiert)**" (05 reconciliation is canonical; 00 matches).
  - Deep-Research limit → "**15 Ausführungen pro Nutzer / 30 Tage**"; duration "**5–30 Minuten**".
  - Workspace-Limit **€500/Monat**; Workflow-Budget-Guard **pro Lauf** (configurable); Workflow-Pakete Starter 2.500 / Business €539 (40.000) / €1.199 (100.000).
  - Tarife: Trial (€5 Credits, 7 Tage) / Standard €25 / Max €99 (5× usage) / Enterprise custom.
- Every `Anschluss-Szenario` must resolve to an existing scenario ID (coherence gate enforces this).

## R4 — RAG retrievability (one chunk wins per file per query)

- Each scenario carries a **distinct dominant trigger noun**. Avoid two files competing for the same bare query noun.
- Reserve the bare IW nouns **Pressemitteilung / Newsletter / Brand Voice** to the IW-specific files (14/17); qualify the generic-mechanic files (01/02/04/09/10) with their operative noun (e.g. "PR-Agent konfigurieren", "Newsletter-Workflow").
- ~2 000-char blocks; repeat key nouns within a block; no cross-chunk pronouns.

## R5 — Critical-thinking lens stays invisible

- Use M01–M13 (Falsification, Steelman, Pre-Mortem, Contrast Classes, Bayesian Prior, Triangulation, Contradiction Log, What-Would-Change-My-Mind, Red Team, First-Principles, Assumption Decay, Base-Rate, Adversarial Query Expansion) to *construct and critique* scenarios — especially to make `Fallstricke` genuine pre-mortems, not filler.
- NEVER expose a `**Critical-Thinking-Method:**` field (hard-fails schema).

## R6 — Scenario structure

- Content/persona scenarios keep the 9 mandatory fields in order: Wann nutzen (Trigger) · Strategisches Ziel · Hands-on Ergebnis · Eingesetzte Langdock-Fähigkeit(en) · Vorgehen (≤5 Schritte) · Beispiel-Prompt (DE) · Erwartetes Artefakt · Fallstricke (≥2 spezifisch) · Anschluss-Szenario.
- `Vorgehen` ≤ 5 steps. `Fallstricke` ≥ 2, each a concrete failure mode → named mitigation.

## R7 — Konkrete Empfehlung (universal field) + advice-style files

**R7a — Universal field (all content/persona scenarios):**
Every scenario carries a `**Konkrete Empfehlung:**` field — one short paragraph (2–4 sentences) of distilled actionable guidance that the reader can act on without the prompt: what to do, what threshold/default to use, what to avoid. Derived from the scenario's own Strategisches Ziel + the strongest Fallstrick-Mitigation; sourced from the same primary references as the rest of the scenario. Sits between `**Fallstricke:**` and `**Anschluss-Szenario:**` so it acts as the punchline before the chain-out. Soft-WARN in the schema gate during rollout; once every file has been touched once, it becomes a hard requirement.

**R7a rollout discipline (NO PROGRAMMATIC GENERATION):**
Konkrete Empfehlung is **hand-crafted per scenario**, never bulk-generated from a template. Each scenario is read individually; the recommendation distills its specific lesson in the persona voice (R8, R15). This is necessarily a multi-loop rollout — one file per file-pass — but the quality bar is non-negotiable: a template-produced field would be the exact anti-pattern (fabricated specificity) the rest of the rulebook fights. Bulk programmatic changes are still allowed for **concrete wording replacements** (e.g. "(DE, PTCF)" → "(DE)") and **scenario-ID renames** (e.g. S-IM → S-MD when namespacing requires), because those don't synthesize new content.

**R7b — Advice-style files (iw-brand kind):**
Files where a copy-paste prompt is genuinely not the right deliverable (governance, decisions, checklists, policy — file 19 is the exemplar) **omit the `Beispiel-Prompt` field entirely** and rely on `Konkrete Empfehlung` as the operative output. All other 9 fields still required. Schema accepts the omission for kind=iw-brand only.

In short: R7a = "every scenario gives a concrete recommendation"; R7b = "iw-brand scenarios may skip the prompt because the recommendation IS the deliverable".

## R8 — Persona fidelity

- Persona voice (11/12) is researched canon: vocabulary, register, anti-patterns (no emoji; "Aufschlussreich" not "Faszinierend"; berät-aber-konfiguriert-nicht; two options + Anschluss; "Quelle:" line). Keep the AGENT_PROMPT init anchors intact ("Little Data Persona Anker", "Beziehungsmodus Julia Lenz", "Data-Anweisung <Thema>").
- AGENT_PROMPT ≤ 15 000 chars (measured as true chars). Inline only durable personality.

## R9 — Emoji-free & text markers

No pictographs anywhere. Use text: `rot/gelb/grün`, `ja/nein`, `[unsicher]`.

## R10 — HITL on side-effects

Any outward action (send, publish, post, CRM write) requires a human Freigabe step. Never promise "vollautomatisch" for outward actions.

## R11 — IW neutrality

Respect the IW Neutralitätsanspruch: the agent advises, it does not take political sides. Partisan-risk scenarios must build neutrality in explicitly.

## R12 — Validation gates (must stay green)

`tools/check_schema.sh --all`, `check_grounding.sh --all`, `check_coherence.sh --all`,
`check_chunks.sh --all`, `check_prompt_size.sh`, and the emoji guard. Plus `python3 tools/kb_index.py`
(navigation + collision report). Run after every file; never commit a red gate.

## R13 — Chunk-optimisation (mandatory, never compromised)

Langdock RAG retrieves **one chunk per file per query** (~2 000 chars). A scenario
that spills past the chunk window splits across two chunks, and the wrong half
wins for half the queries.

- Every content scenario block (from `### S-XXX` to the next anchor) must sit in
  **[600, 4096] bytes**; >3 200 B is a soft warn ("consider trimming"); >4 096 B
  hard-fails the chunk gate.
- Aim for a per-file median around **2 000–2 300 B** (file 14 and 17 are exemplars).
- Persona/anweisung/glossar/links/iw-brand files are exempt (different chunking).
- When a scenario grows past the warn band, trim the most verbose part first
  (typically the Beispiel-Prompt or trailing prose), preserving substance.
- No trailing redactional prose at end-of-file that merges into the last
  scenario's chunk window — keep ending notes brief.

## R14 — File-count cap (clear and concise navigation)

The knowledge base **must not exceed 30 files** (`langdock-deploy/knowledge/*.md`).
Data believes in clear topic boundaries; more files fragment retrieval and
overwhelm the reader. When tempted to add a file, first ask: can this live in an
existing one as a new scenario (or scenario kind R7)? Only split when the topic
is genuinely a new domain with its own canonical-facts ownership. Run
`python3 tools/kb_index.py` to see the current count vs. the cap.

## R15 — Persona depth in written knowledge

Little Data's voice is not a separate file to be searched — it must show up *in*
the written knowledge. Every content file's prose should:
- Use Data's vocabulary register (formal, precise, "Aufschlussreich" not
  "Faszinierend"; see 11-persona-core §Vokabular).
- Apply the source-discipline anti-pattern (never a number without a source).
- Honour "berät, konfiguriert nicht" — recommend, do not promise execution.
- Avoid emoji and umgangssprachliche Verkürzungen even in helper prose.
Per-file rules note any specific persona-voice TODOs surfaced during a pass.

## R16 — Navigation tooling for agents and humans

`tools/kb_index.py` writes a Markdown + JSON index to
`docs/superpowers/specs/v2-kb-index.{md,json}` listing every file (kind, scenario
count, advice-count) and the cross-file trigger-noun collisions. Treat it as the
single map of the base; regenerate before each pass and after any commit that
adds/edits scenarios.

## R17 — Quality gates evolve with new scenario kinds

When a new scenario *kind* (R7 advice-style, future R7+) is introduced, the
relevant validator (`check_schema.sh`, `check_grounding.sh`, `check_chunks.sh`,
`kb_index.py`) is **updated in the same commit** so the kind is recognised and
verified. Without this co-update, a new kind silently slips past the gates.

## R18 — Solution-Chunk-Schemata (chunk-type codes in scenario IDs)

Not every solution is a prompt. Real marketing/comms problems map to different
deliverables: an API call, an MCP integration, a built Skill, in-agent Python
code, a workflow, a config change, a decision, a template document. A copy-paste
prompt covers only the chat-instruction kind. Forcing every scenario into the
prompt schema produces shallow answers when the real deliverable is code or
configuration.

**Rule:** every scenario carries a **chunk-type code** as the middle letter of
its ID — `S-XXX-Y-NNN` where Y ∈ {P, A, M, S, T, W, C, D, G}:

| Code | Kind | Payload field (replaces the 9th slot) |
|---|---|---|
| **P** | Prompt-driven (today's default) | `**Beispiel-Prompt (DE):**` |
| **A** | API-driven | `**API-Aufruf:**` + `**Rate-Limit-Rahmen:**` |
| **M** | MCP-driven | `**MCP-Server:**` + `**Tool-Aufruf:**` + `**Berechtigungs-Scope:**` |
| **S** | Skill-Definition | `**Skill-Definition:**` + `**Auslöser-Wörter:**` |
| **T** | Tool / Agentic (in-agent code) | `**Code-Snippet:**` + `**Input-/Output-Schema:**` |
| **W** | Workflow-driven | `**Workflow-Architektur:**` + `**Workflow-Budget:**` |
| **C** | Configuration-change | `**Einstellungs-Pfad:**` + `**Vorher → Nachher:**` + `**Rollback-Plan:**` |
| **D** | Decision / Advice (today's R7b) | `**Konkrete Empfehlung:**` IS the deliverable; no Beispiel-Prompt |
| **G** | Guide / Document template | `**Artefakt-Vorlage:**` (markdown skeleton, ≥3 sections) |

All 9 universal fields (Trigger · Strategisches Ziel · Hands-on Ergebnis ·
Eingesetzte Langdock-Fähigkeit · Vorgehen ≤5 · Erwartetes Artefakt · Fallstricke
≥2 · Konkrete Empfehlung · Anschluss-Szenario) stay required regardless of type.
The type-specific payload field is the **6th slot** between Vorgehen and
Erwartetes Artefakt.

**Full catalog** (rationale, migration candidates, gate dispatch logic):
`docs/superpowers/specs/solution-chunk-schemata-catalog.md`.

**Migration policy:** classification is a deep-pass task (loop 4+) and follows
the no-programmatic rule — every scenario read individually. Bulk ID renames
(`S-LC-020` → `S-LC-P-020`) are concrete-string operations and ARE permitted
en masse per file. Each Anschluss-Szenario reference is updated in the same
commit as its target's rename to keep coherence gates green.

**Gate evolution (per R17):** in the same commit that migrates the first file,
`check_schema.sh` parses the type code from the ID header and dispatches the
type-specific payload check; `kb_index.py` reports coverage per type.

## R19 — Terse field-marker schema (chunks carry substance, not boilerplate)

Today every scenario repeats ten verbose markdown field labels
(`**Wann nutzen (Trigger):**`, `**Strategisches Ziel:**`, …). Across the 1 106
scenarios that's ~285 KB of identical token boilerplate which (a) bloats every
chunk by ~12 % and (b) dominates the embedding signal, making chunks look
semantically similar even when their substance differs.

**Rule:** scenarios use short, line-anchored field markers. The schema (which
marker means what, in which order) is taught **once** in the AGENT_PROMPT, not
in every chunk. The chunk's bytes belong to the substance, not the label.

### The terse schema (10 fields in fixed order)

| # | Terse marker (BoL) | Replaces |
|---|---|---|
| 1 | `Trigger:` | `**Wann nutzen (Trigger):**` |
| 2 | `Ziel:` | `**Strategisches Ziel:**` |
| 3 | `Ergebnis:` | `**Hands-on Ergebnis:**` |
| 4 | `Fähigkeit:` | `**Eingesetzte Langdock-Fähigkeit(en):**` |
| 5 | `Vorgehen:` | `**Vorgehen (N Schritte):**` |
| 6 | *type-specific marker (see below)* | `**Beispiel-Prompt (DE):**` |
| 7 | `Artefakt:` | `**Erwartetes Artefakt:**` |
| 8 | `Fallstricke:` | `**Fallstricke (≥2 spezifisch):**` |
| 9 | `Empfehlung:` | `**Konkrete Empfehlung:**` |
| 10 | `Anschluss:` | `**Anschluss-Szenario:**` |

### Type-specific payload markers (slot 6) — combined with R18

| R18 type | Slot-6 marker |
|---|---|
| P (Prompt) | `Prompt:` |
| A (API) | `API:` + `RateLimit:` |
| M (MCP) | `MCP:` + `Tool:` + `Scope:` |
| S (Skill) | `Skill:` + `Trigger-Wörter:` |
| T (Tool/Code) | `Code:` + `IO:` |
| W (Workflow) | `Workflow:` + `Budget:` |
| C (Config) | `Pfad:` + `Diff:` + `Rollback:` |
| D (Decision) | `Empfehlung:` IS the slot-6 payload (no separate slot-9 Empfehlung) |
| G (Guide) | `Vorlage:` |

### Disambiguation

All markers are matched **at the start of a line** (`^Marker:`). Prose containing
the word "Trigger" mid-sentence is unaffected (same convention as today's
`**…**` markers). The validator regex is BoL-anchored.

### Reader experience

Headers (`### S-XXX-Y-NNN <Titel>`) stay. The fields below the header lose their
markdown bolding but keep their semantic identity through the short keyword.
Inline emphasis inside a field (e.g. **bold** within Vorgehen prose) is unchanged.

### Migration policy

- **Permitted as a bulk concrete-string replacement** (per the no-programmatic
  rule's exception for "concrete wording replacements"): the marker swap does
  not synthesize new content, it renames labels.
- **Combined with R18 type-classification** in loop 4 — each file is read
  individually to classify scenarios into P/A/M/S/T/W/C/D/G; in the same per-file
  commit, the bulk marker rename is applied. One touch, two improvements.
- **Gate co-evolution (R17):** `check_schema.sh` must accept BOTH the old verbose
  markers AND the new terse markers during migration. Once all files are migrated,
  the old markers are removed from the validator.
- **AGENT_PROMPT schema section** is added in the same commit as the first file
  migration, so the agent sees both the schema definition and at least one file
  using it. The section is ~700 chars; the loop-3 WISSENS-NAVIGATION can be
  trimmed by the same amount to keep AGENT_PROMPT ≤ 15 000.

### Expected impact

- ~167 bytes saved per scenario × 1 106 = **~185 KB total boilerplate removed**.
- Median chunk in file 14: 2 431 B → ~2 273 B (squarely in the 2 000–2 300 B
  retrieval-optimal band).
- Embedding signal becomes substance-dominated (Pressemitteilung, Faktenblatt,
  Workflow-Budget) instead of label-dominated, improving retrieval precision.

---

## Change log (rulebook improves each loop)

- **2026-06-02 (loop 1 close):** created. Captured verified pricing reality (direct EUR, no multipliers), IW formats, single-source-of-truth values (R3), RAG noun-reservation (R4), advice-style kind (R7).
- **2026-06-02 (loop 2 close):** grounding now 100% cited base-wide; persona 11 source-discipline anti-pattern added; spec-panel review caught 1 [C] (file 15 multiplier glossary) + 2 [M] (R10 vollautomatisch wording) — all fixed.
- **2026-06-02 (loop 3 open):** added **R13** chunk-optimisation (hard-fail >4096 B), **R14** ≤30 files, **R15** persona depth in prose, **R16** navigation tooling (`kb_index.py`), **R17** gates-co-evolve-with-kinds. Built `tools/kb_index.py` + `tools/check_chunks.sh`. New verified source: `data/research/15-iwmedien-verified-2026-06.md`.
