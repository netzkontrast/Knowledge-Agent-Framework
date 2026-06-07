# Knowledge-File-Authoring Spec — Knowledge Agent Framework

> **Part of:** the **Knowledge Agent Framework** — the reusable methodology for building RAG-backed knowledge advisor agents.
> **Status:** framework-level authoring contract.
> **Companion:** `docs/examples/iw-little-data-agent-design.md` (the design of the IW Little Data reference example — file taxonomy + retrieval/tonality requirements).
> **Inputs (reference example: IW Little Data):** RAG-mechanics research, the persona-via-knowledge framework analysis, the marketing-scenario catalog, and the knowledge-authoring methodology research.

This spec is **the contract every knowledge-file author (subagent or in-session author) MUST follow** when writing a knowledge file for a RAG advisor agent. A shorter, action-oriented authoring digest can be kept alongside each agent build for in-session use.

> **Schema evolution (R18–R20) — read this first.** The reference build has since moved to a
> **terse 10-marker** scenario format (`Trigger:` · `Ziel:` · `Ergebnis:` · `Fähigkeit:` ·
> `Vorgehen:` · **slot-6 payload** · `Artefakt:` · `Fallstricke:` · `Empfehlung:` · `Anschluss:`)
> in which **slot-6 is the genuinely-best solution type** from the 9-type system
> (Prompt/API/MCP/Skill/Code/Workflow/Config/Decision/Guide), and every content/persona scenario
> carries a hand-crafted **`Empfehlung:`** (R7a). The verbose field names below describe the
> original schema and remain valid as the *conceptual* contract (each terse marker maps 1:1 to a
> verbose field). For the operative, current detail see the **9-type catalog**
> (`docs/superpowers/specs/solution-chunk-schemata-catalog.md`) and the **central rulebook**
> (`docs/superpowers/specs/knowledge-authoring-rulebook.md`); the validators in `tools/` enforce
> the terse form.

---

## 1. The One Rule That Drives Every Other Rule

**The target RAG platform's knowledge-search returns only the highest-scoring chunk per document per query** (reference example: IW Little Data on Langdock, whose Wissensordner Search API enforces exactly this per-document cap). Every authoring decision derives from this:
- One topic per file
- Two competing topics in one file → the weaker one is invisible for any query
- A "big index" file = single point of failure
- Each H2/H3 chunk must answer a distinct, expected query

---

## 2. Hard Constraints (reference example: IW Little Data on Langdock)

Every RAG platform imposes its own caps; author against your target platform's limits. The table below is the concrete set for the IW Little Data reference example (Langdock). Re-derive these for any other deployment target.

| Constraint | Value | Source |
|---|---|---|
| File size (.md) | ≤10 MB | Langdock Supported File Types |
| Characters per file | ≤8 000 000 | Langdock Supported File Types |
| Files per Wissensordner | ≤1 000 | Langdock Folders |
| Chunk size | 2 000 chars | Langdock Knowledge Basics |
| Retrieval k | up to 50 chunks per query | Langdock Search API |
| **Per-document cap** | **1 chunk per file per query** | Langdock Search API |
| Embedding dimension | 1 536 | Langdock Vector DBs |
| Connected-folder cap | 200 files / 5 folders per agent | Langdock Folder Sync |

---

## 3. The 12 Commandments

1. **One topic per file. One H1 per file.** H1 names the topic in plain nouns.
2. **One sub-topic per H2 block, sized 1 200–1 800 characters.** Fits one chunk.
3. **One scenario / inline skill / metaprompt per H3 block, sized 1 200–1 500 characters.** Same chunk discipline.
4. **Repeat the noun, never the pronoun.** Re-state "Brand Voice" / "Wissensordner" / "Konversations-Starter" in every paragraph. Never "it", "this", "the above".
5. **Open every file with an intro box:**
   ```
   > **Was diese Datei abdeckt:** [3 bullets — specific nouns]
   > **Was diese Datei NICHT abdeckt:** [2 bullets, each pointing to the file that owns the topic]
   ```
6. **Seed both languages in the same chunk.** First mention: *"Markenstimme (Brand Voice)"*. After that use whichever the audience queries with.
7. **No cross-refs.** Replace "see section X" with the actual content. Repeat facts across chunks if needed.
8. **Tables for fact lookups, prose for nuance, bullets for parallel options.** Every table ≤30 rows and ≤1 500 chars (stay in one chunk).
9. **Filenames are kebab-case, descriptive, ≤50 chars.** Match the file taxonomy declared in your agent's design spec (reference example: §4.3 of `docs/examples/iw-little-data-agent-design.md`). No `01.md`-style stub names.
10. **No YAML front matter, no HTML, no footnotes.** Most RAG platforms do not document parsing them; they pollute the first chunk.
11. **Decision-ready chunks (N10).** State the recommendation BEFORE the reasoning. Include limit numbers verbatim. Pre-bake the "nächster Schritt" line. The model must require zero additional reasoning to surface a usable answer.
12. **Validate before declaring done.** Each file must pass `check_coverage.sh` (heading exists where matrix says it should) and `check_overlap.py` (no cross-file pair >0.78 cosine similarity).

---

## 4. The Reference-Content vs. Persona-Speech Discipline

Content knowledge files are NOT the agent persona speaking. They are **what the persona would prepare for the end user** — reference content in the persona's preparation style, never the persona's character voice. The discipline:

- **Clear, precise, easily understood, technically competent, adaptive** to the reader's level.
- **No persona humor or character tics** in content files. (Reference example: IW Little Data forbids "Faszinierend", idiom-definition asides, and Star-Trek references in content files.)
- **No first-person.** No "ich", no Service-Log frame, no "meine Datenbank".
- **No role-play.** The text is reference content, not character speech.
- **Adaptive complexity:** an intro sentence that sets the topic for a beginner + the technical core + a plain-language summary line (where the topic warrants it).

The persona itself lives EXCLUSIVELY in the persona-via-knowledge layer (per the framework's file-kind taxonomy — see `docs/framework/persona-module.md`):
- The system prompt (identity + voice anchors + retrieval rules)
- the **persona** file (the core identity / voice depth)
- the mode-conditional persona file (relationship/warmth/humor mode)
- the **anweisung** file — per-topic "how the persona would explain this" notes, which are themselves NOT the persona speaking but second-person directives to the agent about how to adapt its explanation.

(Reference example: IW Little Data implements these as `11-persona-core.md`, `12-persona-julia-modus.md`, and `13-data-agent-anweisungen-pro-thema.md`.)

---

## 5. File Skeleton (mandatory)

The skeleton below is shown in the IW Little Data reference example's language and audience framing (German, marketing-director audience). The structure — intro box with covers / does-NOT-cover, single-topic H2 blocks, an optional scenarios section with one H3 per scenario — is the framework-level mandate; adapt the language and audience labels to your own agent.

```markdown
# [Topic Title] für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - [Sub-topic noun 1 — concrete, retrievable]
> - [Sub-topic noun 2 — concrete, retrievable]
> - [Sub-topic noun 3 — concrete, retrievable]
>
> **Was diese Datei NICHT abdeckt:**
> - [Adjacent topic A → siehe `dateiname-ohne-md`]
> - [Adjacent topic B → siehe `dateiname-ohne-md`]

## [Sub-topic 1 — H2 repeats the topic noun]

[1200–1800 chars of self-contained prose. First sentence names the sub-topic
explicitly. Topic noun appears in every paragraph. Tables ≤30 rows for fact
lookups. Synonym seeding on first mention: "Markenstimme (Brand Voice)".]

## [Sub-topic 2 — H2 repeats the topic noun]

[Same shape.]

## Marketing-Szenarien aus dieser Domäne

[Only if file owns scenarios — see Coverage-Matrix. Each scenario = one H3 block of 1200–1500 chars.]

### S-XYZ [Scenario short title in DE]

**Trigger:** [Eine Sache, die im Marketing-Alltag passiert.]
**Ziel:** [Was der Marketing-Direktor erreichen will.]
**Eingesetzte Langdock-Fähigkeit(en):** [aus der Whitelist im Agent-Design-Spec §4.4]
**Vorgehen:**
1. [Schritt 1]
2. [Schritt 2]
3. [Schritt 3]
**Beispiel-Prompt (DE):**
> "[Beispiel-Prompt mit PTCF-Struktur.]"
**Erwartetes Ergebnis:** [Konkret.]
**Fallstricke:** [Mindestens ein konkreter Fallstrick.]
**Weiterführende Optionen (advisory):** [Optional: was zusätzlich möglich wäre, z. B. mit Workflows oder nativen Integrationen — der Agent berät dazu, konfiguriert sie aber nicht selbst.]
```

---

## 6. Sizing Budget per Chunk (no per-file limit)

**Knowledge files have NO file-size limit beyond the target platform's hard caps (reference example: Langdock = 10 MB / 8M chars per .md). The discipline lives at the chunk level, not the file level. Bigger files with more decision-ready chunks are better than smaller files with thin coverage.**

| Element | Target Size | Hard Limit |
|---|---|---|
| Intro box (chunk 1) | 400-600 chars | 1 800 chars (= 1 chunk) |
| Feature H2 block | 1 200-1 800 chars | 1 800 chars (= 1 chunk) |
| Scenario H3 block | 1 200-1 800 chars | 1 800 chars (= 1 chunk) |
| Max H2 blocks per file | **no soft limit** — driven by topic coverage | hard: bounded by the platform's per-file caps |
| Min H3 scenarios per content file | **≥40 source-grounded scenarios** | hard: bounded by the platform's per-file caps |

**The scenario-density mandate.** Every content knowledge file SHOULD reach **≥40 distinct, source-grounded, decision-ready scenarios** under its scenarios section, built incrementally (quality over quantity). In the IW Little Data reference example several files reached ~80. Aim for as many distinct, retrievable scenario chunks as the source material genuinely supports — they are the end user's lookup library.

Each scenario MUST be:
- **Unique** — different trigger noun, different mechanism, different output. No two scenarios should plausibly retrieve for the same query.
- **Actionable** — the end user can act on it within the same workday. No abstract "consider doing X" — concrete prompts, exact steps, concrete deliverable.
- **Source-grounded** — every claim, limit, and recommendation traces to a named source; no fabricated specifics.
- **In the reference-content form** — precise, structured, evidence-flagged (NOT the persona speaking — see §4).
- **Constructed using a critical-thinking method from the M01–M13 catalog** (Falsification, Steelmanning, Pre-Mortem, Contrast Classes, Bayesian Prior, Source Triangulation, Contradiction Log, "What Would Change My Mind", Red Team, First-Principles, Assumption Decay, Base-Rate, Adversarial Query Expansion). The author uses these methods INTERNALLY as structural generators to ensure variation and quality. Reviewers use them to TEST scenario quality. **The final scenario MUST NOT expose the method as a visible field — M01–M13 are invisible authoring + testing scaffolding, not output content.** 13 methods × the functions relevant to a file naturally yields a rich, non-repetitive scenario set.

**Trade-off:** more H2/H3 blocks = more retrievable chunks per file. The per-document cap still applies (only one chunk per file wins per query) — so authoring discipline focuses on **making each chunk maximally distinct** (different trigger phrases, different nouns, different scenario specifics). With high chunk distinctiveness, a large file becomes a high-coverage retrieval surface, not a single point of failure.

## 6.1 Audience and Tone for Scenarios

Define a single, concrete end-user persona for your agent and write every scenario to that reader. Scenarios target the reader's real workflow: their triggers, their goals, the artifacts they need. Voice stays third-person reference prose (NOT the agent persona speaking — per §4), but the recommendations and examples are tuned to that reader.

**Reference example (IW Little Data):** the reader is a **strategically-working but hands-on-oriented Marketing Director** in a DACH company who:
- Thinks strategically (looks for leverage, prioritizes high-impact moves)
- Acts hands-on (needs concrete prompts to paste, exact next steps)
- Has limited time per AI interaction (≤120 word chat replies; depth lives in the document editor / Canvas)
- Distrusts AI hype (wants evidence-grounded recommendations, not vibes)
- Mixes German with English platform loan-terms ("Workflow", "Agent", "Briefing", "Touchpoint")
- Switches between Du and Sie depending on company culture

## 6.2 Scenario Template (mandatory — Critical-Thinking-Method NOT a visible field)

The template below is shown in the IW Little Data reference example's language. Keep the field structure; adapt the language and platform-capability labels to your agent.

```markdown
### S-XYZ [Scenario short title in DE]

**Wann nutzen (Trigger):** [Eine Situation, in der die Marketing-Direktorin steckt]
**Strategisches Ziel:** [Was sie strategisch erreichen will]
**Hands-on Ergebnis:** [Was konkret produziert wird — ein Briefing, eine Liste, ein Schemavergleich, etc.]
**Eingesetzte Plattform-Fähigkeit(en):** [aus der Whitelist im Agent-Design-Spec §4.4]
**Vorgehen (3-5 Schritte):**
1. [Schritt 1 — konkret, mit Tool-Nennung wo relevant]
2. [Schritt 2]
3. [Schritt 3]
**Beispiel-Prompt (DE, PTCF):**
> "[Vollständiger, copy-paste-fähiger Prompt mit Persona-Task-Context-Format-Struktur.]"
**Erwartetes Artefakt:** [Konkret, mit Format-Spec.]
**Fallstricke (mind. 2):** [Spezifisch — z.B. "AI tendiert zu Anglizismen → Anti-Anglizismus-Klausel im Prompt", nicht "AI kann halluzinieren"]
**Anschluss-Szenario:** [optional: das nächste S-XYZ, das diese Marketing-Direktorin als Folgeschritt nutzen würde]
```

**Note on the critical-thinking method:** The author uses one of M01-M13 from the critical-thinking catalog as a structural generator to construct this scenario (e.g., "I'll use M03 Pre-Mortem as the lens — what's the trigger when the end user wants to validate a campaign idea?"). The reviewer uses the methods as TEST criteria: "Does this scenario sufficiently apply Pre-Mortem reasoning to the trigger?" **But the M-tag is NEVER written into the final scenario field.** The output is a clean, actionable artifact; the method is invisible authoring scaffolding.

---

## 7. Per-File Authoring Patterns

For every file in the agent's taxonomy, the author's brief provides:
- The file's H1 + intro-box content
- The list of mandatory H2 sub-topics (from the agent's coverage matrix)
- The relevant extracts / source material for that file
- The mandatory anchor strings (for persona and per-topic files)

**Advisory-only topics.** Some topics describe platform capabilities the agent advises on but does not execute (reference example: IW Little Data files 04/05/06 — Workflows, Integrations+MCP, API+Deployment). The file content explains the topic factually so the agent can advise; the agent itself does not configure these. No roadmap ("Phase 2") framing — the agent describes its scope as advisory, not executory ("Beratung, nicht Ausführung").

**Persona files carry literal anchor strings** in their first chunk for deterministic bootstrap retrieval (per the persona-via-knowledge module). Reference example (IW Little Data):
- `11-persona-core.md`: first sentence after the intro box MUST contain *"Little Data Persona Anker"* verbatim.
- `12-persona-julia-modus.md`: same for *"Beziehungsmodus Julia Lenz"*.
- `13-data-agent-anweisungen-pro-thema.md` (the **anweisung** file): each H2 ("Data-Anweisung [Thema]") MUST contain that literal per-topic anchor string in its heading or opening sentence.

---

## 8. Authoring Prompt Template (reference example: IW Little Data)

This is the prompt structure passed to each per-file author (subagent or in-session author). The principles are framework-level:
- The author reads the RESEARCH SOURCE FILES (not just extracts) — extracts are guides, sources are ground truth.
- The pre-finalized persona files (the persona-core + relationship-mode files, prepared before content authoring) are handed to every author as the persona reference.
- Critical-thinking methods (M01-M13) are embedded into the prompt as the invisible scenario-generation engine.
- Scenario-density target per the §6 mandate (≥40 source-grounded per content file).

The concrete prompt below is the IW Little Data reference example, in German. Adapt the language, platform terms, paths, and audience to your own agent.

```
Aufgabe: Schreibe die Knowledge-Datei `${FILE_PATH}` für den Langdock-
Wissensordner des "Little Data" Agents — einen Berater-Agenten für eine
strategisch arbeitende, hands-on-orientierte Marketing-Direktorin (DACH).

Repo-Pfad: ${REPO_ROOT}
Branch: ${BRANCH}

LESEN (Reihenfolge ist Empfehlung, nicht zwingend):
1. Authoring-Spec: docs/knowledge-file-authoring-spec.md
   (DIESES Dokument — die 12 Commandments, das Scenario-Template §6.2,
   die Audience §6.1, die Tonalitäts-Discipline §4)
2. Agent-Design-Spec: docs/examples/iw-little-data-agent-design.md
   (§4.3 file taxonomy, §9.2 file template)
3. Persona-Doc (fertig vorbereitet vor dem Content-Authoring):
   - examples/iw-little-data/langdock-deploy/knowledge/11-persona-core.md
   - examples/iw-little-data/langdock-deploy/knowledge/12-persona-julia-modus.md
4. Coverage-Matrix-Rows für ${FILE_NAME}: examples/iw-little-data/data/coverage-matrix.md
5. Critical-Thinking-Katalog (M01-M13): examples/iw-little-data/data/extracts/T8-metaprompts-critical-thinking.md
   — JEDES Szenario in dieser Datei muss auf einer M01-M13 Methode aufbauen
6. Relevante Themen-Extracts (guides, not ground truth):
   ${EXTRACT_LIST}
7. Relevante Research-Source-Files (ground truth — alle Details validieren gegen diese):
   ${SOURCE_LIST}
   z.B.: examples/iw-little-data/data/research/01-langdock-platform-feature-inventory.md
         examples/iw-little-data/data/research/03-langdock-marketing-scenarios-catalog.md
         examples/iw-little-data/data/research/09-marketingleiter-faq-wissensbasis-analyse.md
         examples/iw-little-data/data/sources/01-langdock-agent-and-knowledge-structuring.md
         ...
   Wenn ein Extract und eine Source widersprechen: Source gewinnt. Flag im Datei-Output.

SCHREIBEN: ${FILE_PATH}

INHALT — zwingend:
- H1: "${H1_TITLE}"
- Intro-Box mit "Was diese Datei abdeckt" und "Was diese Datei NICHT abdeckt"
- H2-Sub-Topics: ${H2_LIST}
  Jeder H2-Block 1 200-1 800 chars, single-topic, decision-ready.
- Anchor-Strings (falls mandatory): ${ANCHORS}
- H2 "Marketing-Szenarien aus dieser Domäne"
  Darunter MINIMUM 40 quellen-gegründete H3-Szenarien (S-XXX-001 ff.),
  inkrementell aufgebaut (Qualität vor Quantität).
  Jedes Szenario folgt strikt dem §6.2 Template:
    - Critical-Thinking-Method (eine aus M01-M13)
    - Wann nutzen (Trigger)
    - Strategisches Ziel
    - Hands-on Ergebnis
    - Eingesetzte Langdock-Fähigkeit(en)
    - Vorgehen (3-5 Schritte)
    - Beispiel-Prompt (DE, PTCF, copy-paste-fähig)
    - Erwartetes Artefakt
    - Fallstricke (≥2 spezifisch)
    - Anschluss-Szenario (optional)
  Jedes Szenario 1 200-1 800 chars (= 1 Chunk).
  Jedes Szenario UNIQUE — distincter Trigger-Noun, distincte Methode-
  Anwendung. Keine zwei Szenarien sollen plausibel für dieselbe Query
  retrieven.

SZENARIO-GENERIERUNG — Methode (zwingend):
- Nutze die 13 Critical-Thinking-Methoden (M01-M13) als STRUKTURELLE
  Variation (unsichtbares Scaffolding — nie als sichtbares Feld).
  Pro Methode mehrere Szenarien-Anwendungen für deine Domäne.
  Das produziert natürlich genügend Szenarien ohne Repetition.
- Verteile auf die Marketing-Funktionen die für deine Datei relevant sind
  (Content / SEO / Performance / Brand / Social / CRM / ABM / PR /
  Research / MarketingOps / Analytics / Events / Localization / Internal-
  Enablement — wähle die für deine Datei passenden).
- Beispiel-Pattern: "Pre-Mortem für ${szenario-spec}", "Steelman gegen
  ${konkurrenz-arg}", "Falsifizier ${persona-hypothese}", "First-Principles
  für ${markenbotschaft}", etc.

SPRACHE & TONALITÄT:
- Deutsch primary; Englisch für etablierte Langdock-Loanwords
  ("Workflow", "Agent", "Briefing", "Touchpoint"); offizielle deutsche
  Langdock-Begriffe ("Wissensordner", "Konversations-Starter", "Agenten")
  wo vorhanden
- Tonalität: Data-aligned, **aber NICHT Data sprechend** — siehe §4.
  Kein "Faszinierend", kein "ich", kein Service-Log-Frame.
  Klare, präzise Referenz-Prosa in adaptiver Komplexität für die
  strategisch-arbeitende-hands-on Marketing-Direktorin (siehe §6.1).
- Du oder Sie? — Reference-Prose ist neutral (kein direkter Anrede-Modus,
  da der Agent selbst Du/Sie spiegelt). Beispiel-Prompts (innerhalb der
  Szenarien) nutzen Du als Default für die Marketing-Direktorin als
  hands-on-Adressat.

VALIDIERUNG vor dem Speichern:
- ≥40 quellen-gegründete H3-Szenarien in der "Marketing-Szenarien" Sektion
- Jedes Szenario folgt dem §6.2 Template (alle Felder ausgefüllt)
- Jedes Szenario auf eine M01-M13 Methode gemappt
- Jeder H2/H3-Block 1 200-1 800 chars
- Kein "siehe Abschnitt X" Cross-Ref
- Keine Pronoun-Bound-References ("dies", "es", "darüber")
- Bilingual seeding wo English Loanword + DE existieren
- Intro-Box vorhanden
- Anchor-Strings verbatim wo erforderlich
- Keine Quellen-Widersprüche (Sources gewinnen über Extracts)
- Tonalität-Check: keine erste Person, kein "Faszinierend" im Body

OUTPUT: schreibe die Datei direkt mit Write-Tool. Bei Conflicts: dokumentiere
sie als kurze Notiz am Ende der Datei unter "## Hinweise & Quellen-Konflikte".

Antworte am Ende mit:
"Done. ${FILE_NAME}: [lines], [bytes], [scenarios_count] scenarios.
 Validation: PASS/FAIL [reason]."

Kein Erklären, kein Zusammenfassen, kein Markdown-Diff. Nur die finale Datei
und eine 1-Zeilen-Status-Antwort.
```

---

## 9. Validation Pipeline (after each file)

| Check | Command | Pass criterion |
|---|---|---|
| Char size | `wc -m ${FILE}` | within ±20% of est_size |
| H2/H3 structure | `grep -cE '^## ' ${FILE}` + `grep -cE '^### ' ${FILE}` | matches matrix expectations |
| Intro box | `head -20 ${FILE} \| grep -c '^> \*\*Was diese Datei'` | =2 (covers + NOT covers) |
| Anchor strings | `grep -F "${ANCHOR}" ${FILE}` | =1 or more if mandatory |
| Per-doc-cap warning | for each H2, head -10 chars must contain a distinctive noun | manual review |
| Cross-file overlap | `tools/check_overlap.py` once all files exist | no pair > 0.78 |

---

## 10. Anti-Patterns (red flags — block PR)

| Red flag | Why it breaks | Fix |
|---|---|---|
| First-person ("ich", "meine Datenbank") | Wrong tonality (§4) | Rewrite to third-person reference prose |
| Persona character tics in a content file (reference example: "Faszinierend", Star-Trek refs) | Persona leaking into reference content | Move to the persona / relationship-mode file |
| "Welcome to this knowledge file..." in opening | wastes highest-magnet position | replace with intro box |
| `it`, `this`, `the above` in chunk body | pronoun loses antecedent after chunking | restate the noun |
| `> See section 4.2 for details` | dead reference after chunking | inline the content |
| One H2 block >1 800 chars | spills into 2 chunks, weakens both | split into two H2s |
| Two H2 blocks on near-identical topics | per-document cap suppresses one | merge or move one to another file |
| YAML `---` block at top | likely treated as content, pollutes first chunk | remove |
| Table 50+ rows | gets split across chunks, breaks relationship | split into multiple tables under H3s |
| H1 like "🚀 The Ultimate Guide" | weak retrieval signal, not noun-based | replace with plain-noun H1 |
| "Phase 2" or "later version" framing | violates the no-roadmap-language rule (see agent design spec) | rewrite as "Beratung, nicht Ausführung" |

---

## 11. Cross-File Consistency Rules

- **Single source of truth per fact.** Each fact lives in exactly one owning file; if a fact needs reference elsewhere, restate it in the owning file's vocabulary rather than cross-linking. (Reference example: in IW Little Data, model prices live ONLY in `07-modelle-und-kosten.md`, RAG mechanics ONLY in `03-wissensordner-und-rag.md`, DSGVO ONLY in `08-sicherheit-und-governance.md`.)
- **Numeric values must match across files.** Spot-check after authoring: synonyms are fine ("max. 1 000 Dateien" vs. "max. 1 000 Dokumente"); divergent numbers ("1 000" vs. "999") are a flag.
- **Vocabulary discipline.** Use the platform's official terminology consistently. (Reference example: the official German Langdock terms "Wissensordner", "Konversations-Starter", "Workflows", "Agenten" are mandatory; English loanwords like "Workflow"/"Agent" alone are fine for marketing-side meaning but not for naming a platform feature.)

---

## 12. Spec Self-Review

- [x] **Placeholder scan:** no TBD/TODO; the `${...}` variables in §8 are part of the authoring-prompt template, not unresolved spec items.
- [x] **Internal consistency:** the 12 Commandments, the file skeleton, and the authoring-prompt template all enforce the same discipline.
- [x] **Scope check:** this spec covers authoring; deployment lives in each agent's install/deploy docs.
- [x] **Ambiguity check:** the tonality rule is operationalized as "the persona prepares reference content for the end user" with explicit no-character-humor / no-first-person / no-role-play rules in content files.

Ready for the User-Review-Gate. Authoring may begin once approved.
