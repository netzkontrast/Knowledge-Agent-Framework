# Knowledge-File-Authoring-Spec — Little Data Wissensordner

> **Status:** Draft v1 — extends `little-data/SKILL-knowledge-authoring.md` with the full authoring methodology, the Phase-2 synthesizer prompt template, and the Data-tonality discipline.
> **Companion:** `docs/superpowers/specs/2026-05-31-little-data-agent-design.md` (the agent design spec — file taxonomy + N9/N10/N11/N12 requirements).
> **Inputs:** T2 (RAG mechanics), T7 (Soul.md framework), research/04, 10, 12, restructured/01, sources/07.

This spec is **the contract every synthesizer (Jules session or local subagent) MUST follow** when writing one of the 14 knowledge files. The shorter `SKILL-knowledge-authoring.md` is the action-oriented digest of this spec for in-session use.

---

## 1. The One Rule That Drives Every Other Rule

**Langdock's Wissensordner Search API returns only the highest-scoring chunk per document per query.** Every authoring decision derives from this:
- One topic per file
- Two competing topics in one file → the weaker one is invisible for any query
- A "big index" file = single point of failure
- Each H2/H3 chunk must answer a distinct, expected query

---

## 2. Hard Constraints

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
9. **Filenames are kebab-case, descriptive, ≤50 chars.** Match the taxonomy in §4.3 of the agent-design-spec. No `01.md`-style stub names.
10. **No YAML front matter, no HTML, no footnotes.** Langdock doesn't document parsing them; they pollute the first chunk.
11. **Decision-ready chunks (N10).** State the recommendation BEFORE the reasoning. Include limit numbers verbatim. Pre-bake the "nächster Schritt" line. The model must require zero additional reasoning to surface a usable answer.
12. **Validate before declaring done.** Each file must pass `check_coverage.sh` (heading exists where matrix says it should) and `check_overlap.py` (no cross-file pair >0.78 cosine similarity).

---

## 4. The Data-Tonality Discipline (N9)

The knowledge files are NOT Data speaking. They are **what Data would prepare for a marketing director** — reference content in his preparation style. The discipline:

- **Clear, precise, easily understood, technically competent, adaptive** to the reader's level.
- **No Data humor.** No "Faszinierend", no idiom-definition asides, no Star-Trek references.
- **No first-person.** No "ich", no Service-Log frame, no "meine Datenbank".
- **No role-play.** The text is reference content, not character speech.
- **Adaptive complexity:** an intro sentence that sets the topic for a beginner + the technical core + a plain-language summary line (where the topic warrants it).

The Data persona lives EXCLUSIVELY in:
- The system prompt (identity + voice anchors + retrieval rules)
- `11-persona-core.md` (the SOUL/STYLE depth)
- `12-persona-julia-modus.md` (the mode-conditional warmth + humor)
- `13-data-agent-anweisungen-pro-thema.md` (the per-Thema "how Data would explain this" notes — which are themselves NOT Data speaking, but instructions about how Data should adapt his explanation; written as second-person directives to the agent.)

---

## 5. File Skeleton (mandatory)

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

## 6. Sizing Budget per File

| Element | Target Size | Hard Limit |
|---|---|---|
| Intro box (chunk 1) | 400-600 chars | 1 800 chars (= 1 chunk) |
| Feature H2 block | 1 200-1 800 chars | 1 800 chars (= 1 chunk) |
| Scenario H3 block | 1 200-1 500 chars | 1 800 chars (= 1 chunk) |
| Max H2 blocks per file | 12 | hard: 14 (above that, split file) |
| Max H3 blocks under "Marketing-Szenarien" per file | 14 | hard: 18 (above that, per-doc-cap risk) |

---

## 7. Per-File Authoring Patterns

For every file in the taxonomy (00-13), the synthesizer prompt provides:
- The file's H1 + intro-box content
- The list of mandatory H2 sub-topics (from Coverage-Matrix §4-6)
- The relevant Phase-1 extracts (2-4 files from `little-data/data/extracts/`)
- The mandatory anchor strings (e.g., for files 11/12)

Files 04, 05, 06 are **advisory-only** topics (Workflows, Integrations+MCP, API+Deployment). The file content explains the topic factually so the agent can advise; the agent itself does not execute these. No "Phase 2" framing — the agent describes its scope as "Beratung, nicht Ausführung."

Files 11, 12 carry **literal anchor strings** in their first chunk for deterministic bootstrap retrieval:
- `11-persona-core.md`: first sentence after the intro box MUST contain *"Little Data Persona Anker"* verbatim.
- `12-persona-julia-modus.md`: same for *"Beziehungsmodus Julia Lenz"*.

File 13 carries **per-Thema anchor strings**: each H2 ("Data-Anweisung [Thema]") MUST contain that literal string in its heading or opening sentence.

---

## 8. Phase-2 Synthesizer Prompt Template

This is the exact prompt structure passed to each Phase-2 worker (Jules session or local subagent) per file. Variables in `${...}`.

```
Aufgabe: Schreibe die Knowledge-Datei `${FILE_PATH}` für den Langdock-
Wissensordner des "Little Data" Agents.

Repo-Pfad: ${REPO_ROOT}

LESEN (ausschließlich):
- Agent-Design-Spec: docs/superpowers/specs/2026-05-31-little-data-agent-design.md
  (§9.2 file template, §4.3 file taxonomy row for ${FILE_NAME})
- Authoring-Spec: docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md
  (this file — discipline summary, the 12 Commandments, the file skeleton)
- Coverage-Matrix-Rows für ${FILE_NAME}: little-data/data/coverage-matrix.md
- Relevante Extracts:
  ${EXTRACT_LIST}
- (Optional) SKILL-knowledge-authoring.md für die Schnellreferenz

NICHT LESEN: data/sources/, data/research/, data/restructured/ — diese sind
bereits in den Extracts kondensiert. Lesen überfließt deinen Kontext.

SCHREIBEN: ${FILE_PATH}

INHALT (zu beachten):
- H1: "${H1_TITLE}"
- Intro-Box mit "Was diese Datei abdeckt" und "Was diese Datei NICHT abdeckt"
- H2-Sub-Topics: ${H2_LIST}
- (Falls Marketing-Szenarien-Sektion erforderlich): H3-Liste aus Coverage-Matrix
- Anchor-Strings (falls für diese Datei mandantory): ${ANCHORS}
- Größe: ${EST_SIZE} ± 20%
- Sprache: Deutsch primary; Englisch für etablierte Langdock-Loanwords
  ("Workflow", "Agent", "Briefing"); offizielle deutsche Langdock-Begriffe
  ("Wissensordner", "Konversations-Starter") wo vorhanden
- Tonalität: Data-aligned, **aber NICHT Data sprechend** — siehe N9 in der
  Agent-Design-Spec. Kein "Faszinierend", kein "ich", kein Service-Log-Frame.
  Klare, präzise Referenz-Prosa in adaptiver Komplexität.

VALIDIERUNG vor dem Speichern:
- Jeder H2-Block 1 200–1 800 chars
- Jeder H3-Block 1 200–1 500 chars
- Kein "siehe Abschnitt X" Cross-Ref
- Keine Pronoun-Bound-References ("dies", "es", "darüber")
- Bilingual seeding wo English Loanword + DE existieren
- Intro-Box vorhanden
- Anchor-Strings verbatim wo erforderlich

OUTPUT: schreibe die Datei direkt mit Write-Tool. Antworte mir am Ende mit:
"Done. ${FILE_NAME}: [lines], [bytes]. Validation: PASS/FAIL [reason]."

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
| First-person ("ich", "meine Datenbank") | Wrong tonality (N9) | Rewrite to third-person reference prose |
| "Faszinierend", Star-Trek refs in file body | Data persona leaking into reference content | Move to persona-core or julia-modus |
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

- **Single source of truth per fact.** Model prices live ONLY in `07-modelle-und-kosten.md`. RAG mechanics ONLY in `03-wissensordner-und-rag.md`. DSGVO ONLY in `08-sicherheit-und-governance.md`. If a fact needs reference elsewhere, restate the fact in the owning file's vocabulary; do not cross-link.
- **Numeric values must match across files.** Spot-check after Phase 2: if File A says "max. 1 000 Dateien" and File B says "max. 1 000 Dokumente", that's fine (synonyms). If File A says "1 000" and File B says "999", flag.
- **Vocabulary discipline.** German Langdock terms ("Wissensordner", "Konversations-Starter", "Workflows", "Agenten") are mandatory. English loanwords ("Workflow" alone, "Agent" alone) are OK for marketing-side meaning but not for Langdock-feature meaning.

---

## 12. Spec Self-Review

- [x] **Placeholder scan:** no TBD/TODO; the `${...}` variables in §8 are part of the synthesizer template, not unresolved spec items.
- [x] **Internal consistency:** the 12 Commandments, the file skeleton, and the synthesizer template all enforce the same discipline.
- [x] **Scope check:** this spec covers authoring; deployment is in INSTALL.md (Phase 5).
- [x] **Ambiguity check:** "Data-tonality" is now operationalized as "Data would prepare for a marketing director" with explicit no-humor / no-first-person / no-role-play rules.

Ready for the User-Review-Gate. Authoring may begin once approved.
