# T2 — RAG & Retrieval Mechanics

**Extracted from:** Langdock knowledge-authoring + feature-inventory research (8 primary sources, 2026-05-31; enriched & re-validated 2026-05-31 against full source set)
**Primary sources:** `07-langdock-knowledge-authoring-methodology.md`, `13-langdock-knowledge-file-methodology.md`, `15-langdock-knowledge-file-authoring-methodology-gemini.md`, `research/04-rag-bootstrap-session-start-patterns.md`, `restructured/01-knowledge-authoring-methodology.md`, plus the feature inventory `08-langdock-platform-feature-inventory.md` and source `01`.

**Verification legend:** *Confirmed* = numeric specs cross-checked ≥2 sources; *Consistent* = concept described identically across sources; `[INFERRED]` = defensible worst-case, not officially documented; `[UNVERIFIED]` = not documented, needs external verification.

---

## 1. The Chunking Pipeline

**Chunk size:** 2,000 characters (exact). Confirmed across every source — `docs.langdock.com/resources/knowledge/knowledge-basics`, `07:5,52`, `13:54`, `15:54`, `08:86,104`, `01:16`.

**k-value / injected context:** up to 50 chunks per query ≈ ~100,000 characters maximum injected per query (Confirmed; `01:18`, `08:88,105`, `13:60-62`).

**Embedding model — RECONCILED CONTRADICTION:** All sources agree the vector space is **1,536-dimensional** (Confirmed; `07:51`, `13`, `15:49`, `08:87,106`). On the *model identity*, the sources split:
- The knowledge-authoring sources say the model is **NOT documented** — Langdock states only "your workspace's default embedding model"; 1,536 dims merely *match* OpenAI `text-embedding-ada-002` / `text-embedding-3-small` → treat as `[INFERRED]` (`07:55`, `restructured/01:65`).
- The feature-inventory sources **explicitly name** `text-embedding-ada-002` (`08:87,106,142,175`, `01:16`, `04:28`); source `15:48` says "OpenAI's embedding models routed through a secure Azure OpenAI endpoint."
- **Resolution:** the Knowledge Basics doc page (the authoritative user-facing source for Folder retrieval) does NOT name the model; the API/Embedding pages name `ada-002`. For Folder authoring, design model-agnostically (`[INFERRED]` identity); for the Embedding **API** specifically, `text-embedding-ada-002` is documented. Both are correct for their scope.

**Boundary detection:** Not documented. Assume worst-case—naive fixed-length cut at 2,000-character mark, no heading-aware splitting (`[INFERRED]` from absence of documented boundary logic; `07:57`, `13:54-56`, `15:54-56`).

**Chunk overlap — CONTRADICTION FLAGGED:** Most sources state overlap is **not documented** and authoring must assume **none** (`07:57`, `restructured/01:60`, `15:55`). However `08:82` describes "overlapping text chunks of exactly 2,000 characters." The Knowledge Basics doc says only "split into sections of 2,000 characters" with no overlap claim; the "overlapping" wording in `08` appears to be the author's interpolation and is **not corroborated** by the doc pages the other sources quote. **Authoritative stance:** treat overlap as undocumented/absent and author defensively (`[UNVERIFIED]`). General-RAG practice favors 10–20% overlap (Weaviate), but it cannot be configured inside a Folder.

**Index/storage:** Langdock's managed "Folders" (formerly Knowledge Folders / Wissensordner) — a fully managed vector database, no infrastructure required, no exposed chunk/overlap/embedding configuration (`07:5,33`, `08:81`).

---

## 2. Retrieval Mechanics

**k-value (retrieval count):** Up to 50 chunks per query (documented; `07:53`, `13:60`). In-chat `@mention` retrieval pulls up to 50 chunks; the documented Search API (below) is more restrictive — flag both surfaces.

**Per-document cap** — **CRITICAL RULE (Confirmed):** "Only the highest-scoring chunk per document is returned" (`docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder`, `07:60`, `restructured/01:70`). This is the single most consequential authoring constraint. If a file contains two retrievable sub-topics, only one chunk surfaces per query *through the Search API*. Drives the rule: **one topic per file**. Note: the Search API and in-chat retrieval may differ — Search API gives one chunk per document; in-chat is documented to pull up to 50 chunks total (`07:62,331`).

**LLM re-ranking — CONTRADICTION FLAGGED:** Sources disagree.
- T2's prior position + `07:60` + `15:63`: **no re-ranker documented**; pure vector (cosine) similarity, no Cohere/BM25 stage in the Search API → `[INFERRED]` absent.
- `restructured/01:10,69`: describes a **two-stage process** — "(1) vector similarity search, (2) filtered by a relevance threshold and re-ranked by an LLM."
- **Resolution:** the Search API reference (the authoritative endpoint doc all sources cite) documents only vector similarity + the per-document cap; it does **not** document a re-ranking model or its prompt. The "LLM re-rank" claim in `restructured/01` is `[UNVERIFIED]` (likely an inference from observed ranking quality). **Author for pure-vector worst case**: chunks must rank on raw semantic similarity, surviving any optional re-rank if one exists. The re-ranker prompt/model is an explicit doc gap.

**Search API surface:** `POST https://api.langdock.com/knowledge/search`, single required parameter `query` (string) — **no documented top-k or folder-filter parameter**; search is scoped to all folders shared with the API key (`07:59-60`, `13:189`). Requires `KNOWLEDGE_FOLDER_API` scope + folder shared with the key.

**Response schema:** `id, text, similarity (0–1), subsource (attachment ID), subname (filename), url (source link if set at upload), index` (`07:60`, `restructured/01:71`).

**Ingestion / sync status states (must reach `SYNCED` before retrieval works):** `UPLOADING → UPLOADED → EXTRACTING → EMBEDDING → SYNCED`; failure states `EXTRACTION_FAILED`, `EMBEDDING_FAILED`, `ACTION_FAILED`/`TIMEOUT`, surfaced via `syncMessage` (`08:92`, `03:69-78`, `15:184`). The `/knowledge/{folderId}/list` (Retrieve Files) endpoint reports per-file status (`15:184`).

---

## 3. Direct Attachment vs. Wissensordner

| Method | Use case | File cap | Pros | Cons |
|---|---|---|---|---|
| **Direct attachment** | Small corpus, holistic analysis (contract summary, full report) | 20 files per agent/chat | Full document in context; zero chunking loss | Context window saturation; cannot scale to large libraries |
| **Folder (Wissensordner)** | Large reference library; only sections relevant per query | 1,000 files per Folder (200 if synced via SharePoint/Drive; max 5 synced folders per agent) | Chunked retrieval; scales; only relevant sections injected | Chunking loss; isolated context; per-document cap enforced |

**Decision rule (Langdock official):** "Attaching the files directly to an agent or to a chat leads to the best results. If possible, you should follow this option. We recommend to attach as few documents as possible." Use Folders "for example when working with large documentation or for an FAQ agent" where only specific sections matter (`07:66-69`, `restructured/01:76-77`). Langdock pro-tip: "Keep direct attachments for documents where every detail matters (contracts, specific reports), and use Folders for larger reference libraries" (`07:69`).

**Threshold heuristic (cross-source):** Anthropic guidance — a knowledge base under ~200,000 tokens (~500 pages) can skip RAG entirely and be included whole in the prompt (`07:69`). Langdock direct-attach cap is **20 files per chat/agent** (`07:69`, `01:32`, `08:23`); Folders extend to 1,000. So: ≤20 short files where every detail matters → attach directly; large library where only sections matter per query → Folder.

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
| Excel | .xlsx/.xls | 30 MB | **No** — Data Analyst / direct chat only |
| CSV / TSV | .csv/.tsv | 30 MB | **No** — Data Analyst / direct chat only |
| Images | .png/.jpg/.webp/.gif/.tiff/.bmp/.heif/.heic | 20 MB | **No** — multimodal vision in chat only |
| Audio | .mp3/.wav/.ogg/.mp4/.m4a | 200 MB | **No** — transcription in chat only |

**Global character cap:** ~8 million characters per text-based file — applied alongside the MB cap, regardless of MB size (Confirmed; `07:47`, `01:50`, `08:100`, `restructured/01:39`). A text-dense PDF can hit 8M chars long before 256 MB. Exceeding it triggers `EMBEDDING_FAILED` (`15:35`).

**Why tabular data is excluded:** CSV/XLSX meaning is spatial/coordinate-based (cell C4 derives meaning from header C1 + row A4); character-based chunking destroys those coordinates, rendering the data meaningless and causing numerical hallucination (`01:51`, `04:45`). Route tabular data to the **Data Analyst** tool (Python/pandas sandbox), never to Folders.

**Doc inconsistency noted:** the upload-file API reference lists CSV/HTML among accepted types, while the Folders product page states XLSX/CSV cannot be added to Folders. Operative rule = product-page guidance: treat spreadsheets as unsupported in Folders (`07:335`).

**Also blocked at upload:** password-protected files; executable/dangerous binary types (HTTP 413 for files >256 MB) (`01:50`, `07:47`). Poor scanned/handwritten PDFs may fail OCR → corrupted chunks (`01:50`).

---

## 5. Sync Behavior

**Uploaded folders (manual):** No automatic sync. Manual re-upload required for updates.

**Connected folders (SharePoint/Google Drive/OneDrive/Confluence):**
- Automatic refresh once every **24 hours** + manual trigger option (Confirmed; `07:33`, `01:34`, `08:91`)
- First sync up to one hour (`01:35`)
- File cap reduced to **200 files per synced folder** (vs. 1,000 for manual uploads); files beyond 200 are silently ignored (`01:35-36`, `13:170,237`)
- Max **5 synced folders per agent** (`docs.langdock.com/resources/integrations/folder-sync`, `01:35`, `08:85`)
- Only text formats sync (PDF/DOCX/TXT); XLSX/CSV/images strictly excluded (`13:237`)

**OAuth ownership pitfall (Confirmed):** Folder sync uses the *creator's personal OAuth token*. If that user is removed from the workspace, sync breaks permanently — already-synced files stay attached and readable but stop updating. Recovery: an active user with SharePoint/Drive rights deletes the orphaned folder in the agent and re-establishes the connection. Keep multiple admins on source folders for continuity (`01:36`, `08:93`, `13:225,237-238`).

**Taxonomy implication:** the 200-file cap forces narrow, single-topic synced directories — never broad monolithic parent folders — which also sharpens retrieval precision (`01:36`, `04:41`).

---

## 6. Authoring Rules That Follow From the Mechanics

### The Pronoun Ban
Because chunks are isolated from their document, pronouns ("it," "this," "they," "the above"; German "dies," "das," "er," "sie") lose their referents. **Rule:** repeat the noun explicitly in every paragraph. Write "The Brand Voice setting controls tone" not "It controls tone." A German chunk opening "Es unterstützt auch PDF-Dateien" has no semantic anchor and fails retrieval; repeating the noun keeps keyword density (TF-IDF) high (`13:16`).

**Source:** Anthropic SEC-filing orphan-chunk example (`07:84`) + all input sources (`07:83-84`, `13:16,304`, `15:16`, `restructured/01:87`). This manually simulates Anthropic Contextual Retrieval, which cut retrieval failures 35% (contextual embeddings) / 49% (+BM25) / 67% (+rerank) — gains Langdock Folders do **not** apply automatically, so the author must (`07:92`, `13:91`).

### Lexical & Syntactic Rigidities (small-model optimization)
For constrained models (Haiku 4.5, Gemini Flash) the chunk should require zero deduction (`13:166-170`):
- **Defined terminology, synonym eradication:** never vary the official term ("Wissensordner" never "Dokumentensammlung"); synonym drift dilutes the vector cluster (`13:17-18`).
- **No idioms/metaphors:** "kinderleicht" injects child/play vectors and degrades enterprise-software similarity (`13:19-20`).
- **Active voice, direct causality:** passive obscures the actor; small models then misassign actions (`13:21-22`).
- **No first/second person, no "we recommend / if you want":** reference-style third person prevents the model confusing doc voice with its own persona, and removes conditional ambiguity (`13:30-32,303`).
- **Hardcode every limit** (60s timeout, 15-min file wipe, ~8M chars, 1,000 files, 200 synced) so the model extracts, never computes (`13:178`).
- **Recommendation first:** put the answer in sentence 2 to lock the small model's generation trajectory before details (`13:174,314`).

### Heading Hierarchy as Chunk Boundaries
- **H1:** one per file, states the single topic
- **H2:** each sub-topic, sized 1,200–1,800 characters (comfortably under 2,000-char chunk boundary)
- **H3:** atomic facts under H2; used sparingly

Langdock does not document heading-aware splitting, but aligning H2 blocks to ~1,800 chars maximizes the probability a section chunks as one unit.

### Anchor Strings for Deterministic Retrieval
Embed deterministic, rare strings in text to force vector-match. Example from `04-rag-bootstrap-session-start-patterns.md`: "Little Data Persona Anker" as a literal phrase in the persona document makes that chunk retrievable with near-certainty for queries containing that exact string.

### No YAML Front Matter
Not documented as parsed by Langdock for knowledge files. YAML at the top of a .md file is most likely treated as content and chunks alongside the body, wasting high-value first-chunk space (`07:165`, `15:164`, `restructured/01:150`). **Recommendation:** do not use; embed metadata as a human-readable line in the body instead, and set the canonical source link via the upload API's `url` field (which *is* surfaced in Search results). `[UNVERIFIED]` — needs external confirmation. **Nuance:** YAML *is* natively parsed for `SKILL.md` skill files (name/description/instructions), but that does not apply to Folder documents (`15:164`).

### Tables ≤30 rows / ≤1,500 chars
Tables must fit comfortably in one 2,000-character chunk. If a 2,000-char boundary slices a table's header from its rows, the chunk becomes unreadable. Keep tables small, restate the table's subject in a sentence above it (`07:88`, `13:149`, `restructured/01:90`). Use tables exclusively for fact lookups, numeric limits, and **conditional/decision logic** (see below); prose for nuance/causality; bullets only for parallel options of equal weight (`13:147-151`, `15:83-90`).

### Decision Tables for Conditional Logic
When an answer varies by context (document type, company size, channel), never nest the conditions in prose — small models merge nested if/then clauses into false rules. Express the variation as a Markdown decision table so the model scans column 1 for the scenario and extracts the recommendation from column 2 with zero deduction (`13:75-86,305`). Example pattern: `Dokumententyp → empfohlene Langdock-Funktion → Begründung (technisches Limit)`.

### Negative Semantic Anchor ("does NOT cover")
The "What this file covers / does NOT cover" intro box is both a routing magnet for the first chunk *and* a negative anchor: explicitly naming excluded topics pushes the file's vector away from unrelated queries, preventing false-positive retrieval (`15:24,171`, `restructured/01:156`). Keep it 2–3 lines.

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
| **Chunk overlap** | "split into sections of 2,000 characters", no overlap (`07`, `restructured/01`, `15`) | `08:82` says "overlapping text chunks" | **CONTRADICTION** — doc pages quoted by the authoring sources never claim overlap; `08`'s "overlapping" is uncorroborated author phrasing. Treat as **absent / [UNVERIFIED]**; author defensively. |
| **Embedding model identity** | Knowledge Basics: "workspace's default embedding model" (not named) → `[INFERRED]` (`07:55`) | Embedding-API + inventory: `text-embedding-ada-002` (`08:87`, `01:16`, `04:28`) | **RECONCILED** — undocumented for Folder retrieval; `ada-002` documented for the Embedding API. Both correct per scope. |
| **LLM re-ranker in retrieval** | Search API doc + `07:60`: pure vector, no rerank → `[INFERRED]` absent | `restructured/01:10,69`: "re-ranked by an LLM" after similarity | **CONTRADICTION** — Search API reference documents only vector similarity + per-doc cap; LLM re-rank is `[UNVERIFIED]`. Author for pure-vector worst case. |
| **YAML parsing (Folder docs)** | Not documented (`07:165`) | Recommended to avoid (`15:164`, `restructured/01:150`) | [UNVERIFIED] — treat YAML as content; note YAML *is* parsed for `SKILL.md`, not Folder files |
| **Heading-aware splitting** | Not documented (`07:57`) | Assumed absent | [INFERRED] — naive char-based cut drives authoring rules |
| **Cross-language quality** | "Likely but unverified" (`07:214`) | Seed both languages (`13:61`, `15:222`) | [UNVERIFIED] — cross-lingual embeddings likely work but Langdock model unconfirmed; test in 20-query spot-check; vocabulary-seeding is the robust hedge |
| **Filename influence on ranking** | `subname` returned for citation (`07:128`) | Whether filename is embedded/scored | [UNVERIFIED] — use descriptive filenames for attribution; do not rely on for ranking |

**Consensus:** All sources agree on the core **per-document cap** rule and the **chunk self-sufficiency** imperative. Ambiguities center on undocumented internals (embedding model identity, boundary detection, overlap, re-ranking).

---

## 10. The Four-Layer Chunk Architecture (from `13-langdock-knowledge-file-methodology.md:88-111`)

Each H2 block, strictly **1,200–1,800 characters** (≈200–350 German tokens; H3 scenarios 1,200–1,500 chars), should follow this structure for small-model optimization. This hardcodes "Contextual Embeddings" at zero API cost (`13:90-91`):

1. **Layer 1 — Contextual Anchor (H2 heading + first sentence):** Restate the implicit question as a definitive fact; name the subject explicitly so the chunk is self-contained (`13:93-96`).
2. **Layer 2 — Executive Summary (Übersicht):** 1–2 sentences; the absolute answer / primary limit / core recommendation. Placed first so a sequential small model gets the answer immediately, reducing latency and logical drift (`13:98-101`).
3. **Layer 3 — Precision Core (Detail):** Exhaustive technical mechanism, exact numerical limits, steps, constraints — heavy use of decision tables. Pre-compute logic rather than forcing deduction (`13:103-106`).
4. **Layer 4 — Actionable Directive (Nächster Schritt):** Concrete next action, as an instruction. Pre-baked so the agent relays it verbatim rather than inventing follow-ups (`13:108-111`).

**Implicit-Question Headings:** the H2 title must state the specific problem, not a generic noun — "Einrichtung und Limitierungen der Ordner-Synchronisierung (Folder Sync) für SharePoint und Google Drive", not "Ordner-Synchronisierung" — so the heading's embedding matches query intent (`13:54-57,309`).

**Three-query discipline (author-side, not printed):** for each H2, write 3 likely German query phrasings first, then weave their exact nouns into the text (`13:64-73`).

## 10b. Embedded Marketing-Scenario Template (H3 sub-sections, from `13:113-135`)

To bridge abstract feature docs to real business vocabulary, embed scenarios as H3 blocks (1,200–1,500 chars) under a "Marketing-Szenarien" H2, each following an inflexible 7-part template:
1. **Trigger (Situativer Auslöser)** — the business pain point in domain vocabulary.
2. **Ziel (Outcome)** — one-sentence business objective.
3. **Eingesetzte Langdock-Fähigkeit(en)** — explicit whitelisted tools.
4. **Vorgehen (Execution)** — 3–5 numbered interface steps.
5. **Beispiel-Prompt (PTCF-strukturiert)** — ready-to-use Persona/Task/Context/Format prompt (`13:125-131`).
6. **Erwartetes Ergebnis** — the concrete artifact produced.
7. **Fallstricke (Pitfalls)** — mechanically specific limits ("Data Analyst löscht Dateien nach 15 Min Inaktivität"), never vague "die KI kann halluzinieren" (`13:134`).

This maps abstract features to marketing vocabulary so situational queries ("Wie werte ich Q3-Kampagnen-CSV aus?") retrieve the scenario chunk plus its technical recommendations (`13:115,135`).

---

## 11. File Taxonomy & Coverage Matrix

### File-count sweet spot (`restructured/01:108-115`, `15:100-106`)
For a single advisor agent over ~100 marketing scenarios:
- **5 files:** too coarse — per-document cap suppresses sibling chunks.
- **10 files:** **recommended** — 10 topical buckets × ~10 chunks = ~100 retrieval targets. `target_file_count ≈ ceil(distinct_topic_clusters)`, where two scenarios share a cluster if one 2,000-char chunk could answer both.
- **30 files:** only for deeply heterogeneous topics; risks cross-file contradiction.
- **100 files (one per scenario):** over-fitting; metadata overhead + vector dilution.
- Headroom is large (1,000-file cap) — do not merge topics to save slots (`07:114-119`).

### Router / overview file (`restructured/01:121`, `15:108-111`, `07:130`)
Add one `00-platform-overview.md`. Its first chunk is the semantic backbone for cross-cutting "where do I find…" queries and seeds shared vocabulary (German+English) in one place. It maps where information lives, not the granular rules.

### Single source of truth (`07:124-125`, `restructured/01:96`)
Per-document cap means duplicating a fact across two *files* is acceptable; duplicating it across two *chunks of the same file* means only one ever surfaces. Designate one owning file per fact; keep an author-side `topic-ownership.md` ledger (not uploaded).

### Coverage matrix
Before writing: list expected queries (in users' real language—German for German marketing directors) and map each to the chunk that should answer it. Maintain a table:

| Scenario | Query (DE) | Query (EN) | Expected top-1 file | Expected chunk (H2) | Verified? |
|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ☐ |

Confirm the chunk's first ~200 chars contain ≥3 of the query's content nouns (`restructured/01:131`). Test each query via the Search API before deploying — expected file's chunk must appear at or near the top (because the Search API returns one chunk *per document*, "top-3" means top-3 *documents*) with healthy similarity (heuristic ≥0.5, `[UNVERIFIED]`). Scatter scenario hooks across topical files rather than building one scenario-index file (the per-document cap would surface only one of its chunks per query) (`15:156`, `restructured/01:144`).

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

| File | Line(s) | Key contribution |
|---|---|---|
| `07-langdock-knowledge-authoring-methodology.md` | 1–336 | Complete methodology; hard constraints; Search API "one chunk per document"; file taxonomy; multi-language; worked example; checklist; caveats |
| `13-langdock-knowledge-file-methodology.md` | 1–362 | Four-layer chunk architecture; twelve precepts; sentence-level transforms; decision tables; embedded marketing-scenario template; pre-compute discipline for small models |
| `15-langdock-knowledge-file-authoring-methodology-gemini.md` | 1–325 | 10 commandments; constraint table; negative semantic anchor; router files; cross-lingual embedding; QA checklist; doc/format detail |
| `restructured/01-knowledge-authoring-methodology.md` | 1–350 | Hard-constraint table; 10-file sweet spot; per-document-cap operational rule; testing protocol; "LLM re-rank" claim (flagged); file skeleton |
| `research/04-rag-bootstrap-session-start-patterns.md` | 1–199 | Bootstrap/session-start pattern; phrasing compliance on small models; deterministic anchor tag; failure recovery; Julia Lenz detection |
| `08-langdock-platform-feature-inventory.md` | 81–107 | Chunk/k/embedding numbers; "overlapping" wording (contradiction); ingestion status states; folder caps |
| `01-langdock-agent-and-knowledge-structuring.md` | 14–63 | RAG mechanics; 100K-char injection; file-format matrix; why tabular excluded |

---

**Currency:** Constraints current as of May 2026, drawn from docs.langdock.com. The Knowledge-Folder feature is actively evolving (renamed "Folders," moved into the Library; per-page citations for DOCX/PPTX added May 2026). Re-verify hard limits before a large rollout (`07:334`, `restructured/00:471`).
