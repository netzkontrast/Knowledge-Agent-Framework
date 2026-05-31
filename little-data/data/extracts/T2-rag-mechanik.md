# T2 — RAG & Retrieval Mechanics

**Extracted from:** Langdock knowledge-authoring research (5 primary sources, 2026-05-31)

---

## 1. The Chunking Pipeline

**Chunk size:** 2,000 characters (exact; documented in `docs.langdock.com/resources/knowledge/knowledge-basics`).

**Embedding model:** 1,536-dimensional vector space. Model identity not disclosed; 1,536 dimensions match OpenAI `text-embedding-3-small` signature, but treat as [INFERRED].

**Boundary detection:** Not documented. Assume worst-case—naive fixed-length cut at 2,000-character mark, no overlap, no heading-aware splitting. ([INFERRED] from absence of documented boundary logic.)

**Index/storage:** Langdock's managed "Folders" (formerly Knowledge Folders). Vector database; no exposed configuration.

---

## 2. Retrieval Mechanics

**k-value (retrieval count):** Up to 50 chunks per query (documented).

**Per-document cap** — **CRITICAL RULE:** "Only the highest-scoring chunk per document is returned" (from `docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder`). This is the single most consequential authoring constraint. If a file contains two retrievable sub-topics, only one chunk surfaces per query. Drives the rule: **one topic per file**.

**LLM re-ranking:** None documented. Pure vector similarity (cosine distance). No secondary Cohere-style reranker. ([INFERRED] from absence of re-ranking claims in API docs.)

**Response schema:** `id, text, similarity (0–1), subsource, subname (filename), url, index`.

---

## 3. Direct Attachment vs. Wissensordner

| Method | Use case | File cap | Pros | Cons |
|---|---|---|---|---|
| **Direct attachment** | Small corpus, holistic analysis (contract summary, full report) | 20 files per agent/chat | Full document in context; zero chunking loss | Context window saturation; cannot scale to large libraries |
| **Folder (Wissensordner)** | Large reference library; only sections relevant per query | 1,000 files per Folder (200 if synced via SharePoint/Drive) | Chunked retrieval; scales; only relevant sections injected | Chunking loss; isolated context; per-document cap enforced |

**Decision rule (Langdock official):** "Attaching files directly leads to the best results if possible; use Folders for large documentation or FAQ where only specific sections matter" (docs.langdock.com).

---

## 4. File Format Support Matrix

| Format | Extension | Max size | Folder-eligible? |
|---|---|---|---|
| Markdown | .md | 10 MB | Yes |
| Text | .txt | 10 MB | Yes |
| JSON | .json | 10 MB | Yes |
| PDF | .pdf | 256 MB | Yes |
| Word | .docx | 256 MB | Yes |
| PowerPoint | .pptx | 256 MB | Yes |
| Excel | .xlsx | 30 MB | **No** |
| CSV | .csv | 30 MB | **No** |
| Images | .png/.jpg | 20 MB | **No** |

**Global character cap:** ~8 million characters per text-based file (documented limit, applied regardless of MB size).

---

## 5. Sync Behavior

**Uploaded folders (manual):** No automatic sync. Manual re-upload required for updates.

**Connected folders (SharePoint/Google Drive/OneDrive):**
- Automatic refresh once every **24 hours** + manual trigger option
- First sync up to one hour
- File cap reduced to **200 files per synced folder** (vs. 1,000 for manual uploads)
- Max 5 synced folders per agent (from `docs.langdock.com/resources/integrations/folder-sync`)

---

## 6. Authoring Rules That Follow From the Mechanics

### The Pronoun Ban
Because chunks are isolated from their document, pronouns ("it," "this," "they," "the above") lose their referents. **Rule:** repeat the noun explicitly in every paragraph. Write "The Brand Voice setting controls tone" not "It controls tone."

**Source:** Anthropic SEC-filing example (contextual-retrieval.md) + all five input sources.

### Heading Hierarchy as Chunk Boundaries
- **H1:** one per file, states the single topic
- **H2:** each sub-topic, sized 1,200–1,800 characters (comfortably under 2,000-char chunk boundary)
- **H3:** atomic facts under H2; used sparingly

Langdock does not document heading-aware splitting, but aligning H2 blocks to ~1,800 chars maximizes the probability a section chunks as one unit.

### Anchor Strings for Deterministic Retrieval
Embed deterministic, rare strings in text to force vector-match. Example from `04-rag-bootstrap-session-start-patterns.md`: "Little Data Persona Anker" as a literal phrase in the persona document makes that chunk retrievable with near-certainty for queries containing that exact string.

### No YAML Front Matter
Not parsed by Langdock. YAML at the top of a .md file is treated as content and chunks alongside the body, wasting high-value chunk space. **Recommendation:** do not use; embed metadata as human-readable text in the body instead.

### Tables ≤30 rows / ≤1,500 chars
Tables must fit comfortably in one 2,000-character chunk. If a 2,000-char boundary slices a table's header from its rows, the chunk becomes unreadable. Keep tables small, restate the table's subject in a sentence above it.

### Single-topic-per-chunk discipline
Each ~2,000-char block must answer one question completely. If rules spill across chunks, the chunker may separate the context from the rules.

### Bi-lingual synonym seeding
For German+English audiences: write "Markenstimme (Brand Voice)" on first mention, then use whichever term the audience queries with. Embed both in the same chunk to maximize cross-lingual retrieval (hedging against undocumented embedding model behavior).

---

## 7. Failure Modes

| Mode | Trigger | Mitigation |
|---|---|---|
| **Zero results** | Query embedding doesn't match any chunk vocabulary | Seed anticipated query terms in chunk opening |
| **Wrong-chunk dominance** | Semantically similar chunk from different file ranks higher | Per-document cap: split competitors into separate files |
| **Persona drift over turns** | Agent loses persona after first turn (not a Langdock Folder issue, but bootstrap-specific) | Store persona in persistent Folder, retrieve on session-start |
| **Cross-language mismatch** | German query fails against English-only chunk | Seed German term adjacent to English term in same chunk |
| **Pronoun-bound orphans** | Chunk uses "it/this/they" without antecedent | Ban pronouns; repeat nouns |
| **Stale chunk** | Old version of persona/rule retrieved instead of current | Manual folder re-upload; consider connected (synced) folder for auto-refresh |

---

## 8. Bootstrap Pattern (Recommended for Session-Start Retrieval)

From `04-rag-bootstrap-session-start-patterns.md`, the empirically highest-compliance phrasing for small models (Haiku 4.5, Gemini 2.5 Flash):

```
SCHRITT 1 — ZWINGEND vor der ersten Antwort jedes Gesprächs:
Durchsuche das Wissen mit der Anfrage "Little Data Persona Anker".
Lies die gefundene Persona-Definition vollständig und befolge alle
darin enthaltenen Stil-, Ton- und Verhaltensregeln.

SCHRITT 2 — Wenn die erste Nutzernachricht Hinweise auf Julia Lenz
enthält (Signatur, Du-Anrede mit Insider-Vokabular, explizite
Selbstidentifikation), führe eine zweite Suche mit "Beziehungsmodus
Julia Lenz" durch und integriere den Beziehungsmodus.

Wenn eine Suche kein Ergebnis liefert, antworte im Standardstil und
weise einmalig kurz darauf hin ("Profil-Anker nicht gefunden").
```

**Why this works:**
- First-position imperative maximizes compliance on small models.
- Deterministic anchor phrase ("Little Data Persona Anker") in the persona document makes vector retrieval near-deterministic.
- Two-stage retrieval (persona + conditional relationship-mode) keeps persona lightweight.
- Explicit empty-result handling prevents silent degradation.

---

## 9. Contradictions & Gaps Across Sources

| Claim | Source A | Source B | Status |
|---|---|---|---|
| **Chunk overlap** | Not documented | Assumed absent | [UNVERIFIED] — Langdock does not publish overlap value; defensive authoring assumes none |
| **Embedding model** | "1536 dimensions" | OpenAI `text-embedding-3-small` signature | [INFERRED] — Langdock does not name the model |
| **YAML parsing** | Not mentioned | Recommended to avoid | [UNVERIFIED] — No evidence Langdock parses YAML; treat as content |
| **Heading-aware splitting** | Not documented | Assumed absent | [INFERRED] — Worst-case assumption (naive char-based cut) drives authoring rules |
| **Cross-language quality** | "Likely but unverified" | Seed both languages | [UNVERIFIED] — Test in 20-query spot-check |
| **Re-ranker in retrieval** | Not documented | Assumed absent | [INFERRED] — Pure vector similarity; no Cohere/BM25 stage documented |

**Consensus:** All five sources agree on the core **per-document cap** rule and the **chunk self-sufficiency** imperative. Ambiguities center on undocumented internals (embedding model, boundary detection, overlap).

---

## 10. The Four-Layer Chunk Architecture (from source 10-langdock-knowledge-file-methodology.md)

Each H2 block (1,200–1,800 chars) should follow this structure for small-model optimization:

1. **Contextual Anchor (first sentence):** Restate the question/subject explicitly. Name what the chunk applies to.
2. **Executive Summary (Übersicht):** 1–2 sentences; the absolute answer/primary limit/core recommendation. Small models need this first.
3. **Precision Core (Detail):** Exhaustive technical mechanism, exact numerical limits, steps, constraints. Pre-compute logic rather than forcing the model to deduce.
4. **Actionable Directive (Nächster Schritt):** Concrete next action, formatted as instruction. Pre-bake the follow-up rather than relying on the model to invent it.

---

## 11. Coverage Matrix & Scenario-Driven Authoring

Before writing: list expected queries (in users' real language—German for German marketing directors) and map each to the chunk that should answer it. Maintain a table:

| Scenario | Query (DE) | Expected chunk (H2) | Source file | Verified? |
|---|---|---|---|---|
| ... | ... | ... | ... | ☐ |

Test each query via the Search API before deploying. Expected chunk must appear in top-3 results with healthy similarity score (heuristic: ≥0.5, [UNVERIFIED]).

---

## 12. Testing & Validation (Pre-Upload Spot-Check)

1. **Build spot-check set:** 20 representative queries from scenario matrix, mix German + English.
2. **Hit Search API:** `POST https://api.langdock.com/knowledge/search` with `{"query": "..."}`.
3. **Verify ranking:** Expected file's chunk appears at position 0–2 with similarity ≥0.5.
4. **Iterate:** Rewrite under-retrieving chunks (vocabulary alignment → explicit nouns → file split).

**Iteration checklist:**
- Vocabulary miss? Add query term to opening sentence.
- Pronoun orphan? Restate subject noun.
- Wrong-file dominance? Per-document cap competing chunks → split into separate files.
- Coverage gap? Missing knowledge → add new chunk/file.

---

## 13. Pre-Upload Author Checklist (Compact)

**Structure:**
- ☐ One topic per file (one-sentence description test)
- ☐ One H1; "What this covers / does NOT cover" intro box
- ☐ Each H2 block 1,200–1,800 chars (under chunk boundary)

**Vocabulary & Chunk Independence:**
- ☐ Topic noun appears in every paragraph (no orphan pronouns)
- ☐ First sentence of each H2 names the sub-topic explicitly
- ☐ German term + English Langdock term seeded on first mention
- ☐ No "see section X" / "refer to Y document" cross-refs; restate facts inline

**Format & Density:**
- ☐ Tables ≤30 rows, ≤1,500 chars; table's subject restated in adjacent prose
- ☐ No deep nested bullet lists; each item carries standalone meaning
- ☐ No tabular data (XLSX/CSV) as primary knowledge

**Testing:**
- ☐ Coverage matrix built; ≥20 scenario queries prepared
- ☐ Spot-check: expected chunk ranks top-1–3 via Search API with similarity ≥0.5
- ☐ Under-retrieving chunks rewritten and re-tested

---

## Sources & Attribution

| File | Line(s) | Claim |
|---|---|---|
| `04-rag-bootstrap-session-start-patterns.md` | 39–158 | Bootstrap pattern; phrasing compliance; failure recovery |
| `10-langdock-knowledge-file-methodology.md` | 1–50 | Per-document cap rule; core mechanics; 10 commandments |
| `12-langdock-knowledge-file-authoring-methodology.md` | 1–200 | Four-layer architecture; decision tables; scenario embedding; 12 precepts |
| `01-knowledge-authoring-methodology.md` | 1–300 | Hard constraints table; embedding dims; chunking strategy; testing methodology |
| `07-langdock-knowledge-authoring-methodology.md` | 1–350 | Complete methodology; file taxonomy; multi-language; worked examples; checklist |

---

**Compressed to: ~9.5 KB, suitable for T2 quick reference.**
