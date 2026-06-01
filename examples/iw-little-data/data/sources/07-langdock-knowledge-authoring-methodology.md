# Authoring Knowledge Files for Langdock: A RAG-Optimized Methodology

## Executive Summary

Langdock Folders (formerly "Knowledge Folders") are a fully managed vector database built into the Langdock platform. When you upload a file to a Folder, Langdock splits it into **2,000-character chunks**, embeds each chunk into a **1,536-dimension vector**, and at query time retrieves **up to 50 chunks** via semantic (cosine) similarity [Confirmed: https://docs.langdock.com/resources/knowledge/knowledge-basics]. Because you cannot change these parameters inside a Folder, the only lever you control is **the source text itself**. This document is a methodology for writing that source text so the right chunks get retrieved for the right queries.

The single most important principle: **author for the chunk, not for the human reader.** A human reads a document top to bottom and carries context forward. Langdock's retriever does the opposite — it pulls isolated ~2,000-character fragments out of context and hands them to the model. Every chunk must therefore stand alone: it must name its own subject, avoid pronouns that point to text the model will never see, and use the vocabulary your users actually type. This is the consistent finding across every primary source we reviewed — Langdock's own docs, Anthropic's Contextual Retrieval research, Pinecone's chunking guide, Astera, and Regal.ai's RAG playbook.

The methodology has three pillars. **(1) Respect the hard constraints.** Folders cap at 1,000 files, chunk at 2,000 characters with no documented overlap, and retrieve via a Search API that returns only the single highest-scoring chunk per document. **(2) Engineer documents for retrieval.** Use one topic per file (or strong H2 boundaries), repeat key nouns in every chunk, prefer prose and Markdown tables over deep bullet nesting, and eliminate "see section X" cross-references. **(3) Author from scenarios backward.** Start from the queries you expect (e.g., a German marketing director asking "Wie ändere ich den Brand Voice?"), then write chunks that contain both the German query vocabulary and the English Langdock technical terms so cross-lingual embedding retrieval succeeds. Test before deploying by running 20 representative queries through the Folder Search API and verifying expected chunks rank first.

This document covers nine areas: hard constraints, document-engineering principles, file taxonomy, scenario alignment, metadata/structure, testing, multi-language handling, primary-source case studies, and a complete worked example with a pre-upload checklist.

---

## The 10 Commandments for Langdock Knowledge Authors

1. **One topic per file.** If a file needs two H1-level subjects, split it. Folders hold up to 1,000 files [Confirmed: https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders] — you are not short on slots.
2. **Make every ~2,000-character chunk self-contained.** Assume the model sees that chunk and nothing else.
3. **Repeat the key noun; ban orphan pronouns.** Write "the Brand Voice setting," not "it," in each paragraph where the subject matters.
4. **Front-load each section with a plain-language topic sentence** that mirrors the user's likely query wording.
5. **Seed both languages and synonyms in the same chunk.** Put "Brand Voice (Markenstimme / Tonalität)" together so German and English queries both hit.
6. **Use H2 headings as deliberate chunk anchors.** Keep each H2 section comfortably under ~2,000 characters so it becomes its own clean chunk.
7. **Kill cross-references.** Replace "as described above" and "see the Setup file" with the actual fact restated.
8. **One source of truth per fact.** Never let two files state different values for the same policy — the retriever may surface either.
9. **Name files descriptively** ("Brand-Voice-Configuration.md", not "doc7.md") — descriptive titles aid human governance and, per RAG best practice, retrieval.
10. **Test 20 queries through the Search API before launch.** Rewrite any chunk that fails to surface for its intended query.

---

## Section 1 — Hard Constraints (Langdock + General RAG)

### Folder capacity and management
A Langdock Folder is "a collection of several hundred files that can be used as knowledge," and **up to 1,000 files can be uploaded manually or via API** [Confirmed: https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders]. Folders are "vector databases within the product," fully managed by Langdock with no infrastructure required. There is **no automatic synchronization** for manually managed Folders — "Automatic synchronization from integrations is not possible" [Confirmed: same URL]. If you need auto-sync, you must instead use a *connected* folder from SharePoint or Google Drive, which syncs "every 24h or manual" but is "Limited to 200 files per folder" [Confirmed: https://docs.langdock.com/resources/knowledge/best-practices].

### Supported file types and per-file size caps
Langdock's supported file types for text-based knowledge, with size limits [Confirmed: https://docs.langdock.com/resources/faq/supported-file-types]:

| Format | Extension | Size limit |
|---|---|---|
| PDF | .pdf | 256 MB |
| Word / Google Docs | .docx | 256 MB |
| PowerPoint / Google Slides | .pptx | 256 MB |
| Markdown | .md | 10 MB |
| Text | .txt | 10 MB |
| JSON | .json | 10 MB |

There is "an additional 8 million character limit that applies alongside the file size limit" for text-based files [Confirmed: same URL]. Note the asymmetry: lightweight authoring formats (MD/TXT/JSON) cap at 10 MB, while binary container formats (PDF/DOCX/PPTX) cap at 256 MB — but for authored Markdown knowledge you will never approach 10 MB. **Tabular files (XLSX, CSV, TSV; 30 MB cap) cannot be uploaded to Folders** — "XLSX and CSV files cannot be added to Folders. For spreadsheet analysis, use direct file attachments or the Data Analyst tool instead" [Confirmed: https://docs.langdock.com/product/library/folders]. Images and audio likewise cannot go in Folders. Via the upload API, files over 256 MB return HTTP 413, and "Executable files and other potentially dangerous file types are blocked" [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file].

### Embedding model, dimensions, chunking, retrieval
Langdock publishes its Folder retrieval parameters explicitly [Confirmed: https://docs.langdock.com/resources/knowledge/knowledge-basics]:
- **Embedding dimension: 1,536.** "The vector dimension is 1536."
- **Chunk size: 2,000 characters.** "Documents are split into sections of 2,000 characters."
- **Retrieval k-value: up to 50 chunks.** "Up to 50 chunks are retrieved per query."

The **specific embedding model is not documented**. The Search API page states only that "Your query is converted to an embedding using your workspace's default embedding model" [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder]. The 1,536 dimension is consistent with OpenAI's `text-embedding-ada-002` and `text-embedding-3-small`, both of which produce 1,536-dimension vectors [Confirmed: https://platform.openai.com/docs/guides/embeddings], but Langdock does not name the model, so treat the identity as **[Inferred]** and design for general semantic-embedding behavior rather than a specific model's quirks.

**Chunking overlap and boundary detection are not documented.** Langdock states only that documents are "split into smaller sections (chunks)" of "2,000 characters." There is **no documented overlap** and **no documented boundary detection** (no statement that it splits on headings, paragraphs, or sentences) [Confirmed: https://docs.langdock.com/resources/knowledge/knowledge-basics]. **[Inferred]** You should therefore assume the worst case — a naive fixed-length cut that can slice mid-sentence or mid-table at the 2,000-character mark — and author defensively so that a hard cut does the least damage. This is the single most consequential inference in this document and drives most of the authoring rules in Section 2. General RAG practice often favors overlap to avoid this: Weaviate's chunking guide advises "make sure to use a decent overlap - 10-20% - so you don't lose important context" (weaviate.io/blog/chunking-strategies-for-rag). The evidence is not unanimous, however — a January 2026 systematic arXiv analysis (SPLADE retrieval with Mistral-8B on Natural Questions) "found overlap provided no measurable benefit in its tested setup while only raising indexing cost" (digitalapplied.com). Either way, since you cannot configure overlap in a Folder, your only defense is structural authoring.

### Retrieval mechanics and the Search API
The Folder Search API (`POST https://api.langdock.com/knowledge/search`) accepts a **single parameter, `query` (string, required)** — there is no documented top-k or folder-filter parameter, and "The search is scoped to all knowledge folders shared with the API key" [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder]. Critically: **"Only the highest-scoring chunk per document is returned"** [Confirmed: same URL]. The response is an array of objects with fields `id`, `text`, `similarity` (0–1 score), `subsource` (attachment ID), `subname` (filename), `url` (source link if provided at upload), and `index`. There is **no documented re-ranking model** — retrieval is pure vector similarity (in contrast to Anthropic's recommended pipeline, which adds BM25 and a Cohere reranker [Confirmed: https://www.anthropic.com/news/contextual-retrieval]).

The "highest-scoring chunk per document" rule has a profound design implication: **two strong chunks in the same file compete; only one survives the Search API.** This is a powerful argument for one-topic-per-file (Section 3). Note that the in-chat `@mention` retrieval and the Search API may differ — in chat, Langdock retrieves up to 50 chunks for the model — but the documented Search API is your testing harness, and the "one chunk per document" rule applies to it.

### Direct attachment vs. Folder: when to use each
Langdock documents two processing modes [Confirmed: https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments]:
- **Direct attachment ("full document push"):** "the entire document is sent to the model, together with your prompt. This is the standard in chats and agents." Langdock's explicit guidance: "Attaching the files directly to an agent or to a chat leads to the best results. If possible, you should follow this option. We recommend to attach as few documents as possible."
- **Folder ("chunked retrieval"):** "the documents are split into chunks and a semantic search retrieves only the most relevant sections." Use this "for example when working with large documentation or for an FAQ agent" where "only specific sections are relevant, but not the entire documents."

Direct attachments are capped at 20 files in chat/agents [Confirmed: https://docs.langdock.com/resources/faq/file-limit]; Folders extend to 1,000. **Decision rule:** if every detail of a document matters and the corpus is small (≤20 files, comfortably within context windows), attach directly. If you have a large reference library where only sections are relevant per query, use a Folder. This aligns with Anthropic's own guidance — "If your knowledge base is smaller than 200,000 tokens (about 500 pages of material), you can just include the entire knowledge base in the prompt... with no need for RAG" [Confirmed: https://www.anthropic.com/news/contextual-retrieval]. Langdock's "pro tip": "Keep direct attachments for documents where every detail matters (contracts, specific reports), and use Folders for larger reference libraries" [Confirmed: https://docs.langdock.com/product/library/folders].

---

## Section 2 — Document Engineering Principles for RAG

### Single-topic-per-chunk discipline
Because retrieval operates on ~2,000-character fragments, each fragment must be a complete thought. Regal.ai's RAG playbook calls this **single-topic chunking**: "Break your knowledge into bite-sized pieces, each focused on a single topic or question... Smaller, well-scoped chunks ensure that when a retrieval occurs, the AI gets just the specific information it needs — nothing more, nothing less" [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases]. Pinecone frames the test as the **human-readability rule**: "if the chunk of text makes sense without the surrounding context to a human, it will make sense to the language model as well" [Confirmed: https://www.pinecone.io/learn/chunking-strategies/].

**DO** write a section that opens with its subject, states the fact, gives the steps, and states the outcome — all within ~1,500 characters so it survives as one chunk with margin. **DON'T** write a 6,000-character narrative that buries the answer in the middle, because the 2,000-character cut may sever the question from its answer.

### Hierarchical headings as algorithmic chunk boundaries
Since Langdock does not document boundary detection, you cannot rely on it to split on your headings. **[Inferred]** But you can make headings *coincide* with the natural 2,000-character breaks by keeping each H2 section under ~1,800 characters. Pinecone confirms that for "Markdown... by recognizing the Markdown syntax (e.g., headings, lists, and code blocks), you can intelligently divide the content based on its structure and hierarchy, resulting in more semantically coherent chunks" [Confirmed: https://www.pinecone.io/learn/chunking-strategies/]. Use H1 for the file's single subject, H2 for each retrievable sub-topic, and H3 sparingly. Treat each H2 as "one chunk's worth" of content.

### Banning pronoun-bound references
The Anthropic SEC-filing example is the canonical failure: a chunk reading "The company's revenue grew by 3% over the previous quarter" is useless in isolation because "this chunk on its own doesn't specify which company it's referring to or the relevant time period" [Confirmed: https://www.anthropic.com/news/contextual-retrieval]. **Rule:** in every paragraph, replace "it," "this," "the above," and "they" with the explicit noun. DO write "The Brand Voice setting controls tone"; DON'T write "It controls tone" if "Brand Voice" was only named two paragraphs (and possibly one chunk-boundary) earlier.

### Tables vs. prose vs. bullets
- **Prose** embeds best for conceptual/explanatory content because full sentences carry semantic richness — Regal explicitly recommends "clear paragraphs" and notes Markdown "performs best when you use markdown format for the source, with clear paragraphs: it will be easier to chunk and is easier to be retrieved" [Confirmed: https://developer.regal.ai/docs/knowledge-base].
- **Markdown tables** are excellent for dense factual lookups (plan prices, parameter values, regional variants) *provided the whole table fits within one chunk*. **[Inferred]** A table sliced by the 2,000-character cut loses its header row and becomes unreadable, so keep tables small (a screen or less) and restate the table's subject in a sentence immediately before it.
- **Bulleted lists** are fine for short enumerations but **avoid deep nesting** — a list item severed from its parent heading is the classic chunking failure Pinecone warns about ("list items severed from the heading"). Keep lists flat and prefix each item with enough context to stand alone.
- **Avoid tabular data as a primary knowledge type** in Folders: Regal advises "We do not recommend using tabular data as it's harder to chunk and leads to suboptimal results" [Confirmed: https://developer.regal.ai/docs/knowledge-base], and Langdock blocks spreadsheets from Folders outright.

### Repeating key nouns in every applicable chunk
This is the manual, author-side equivalent of Anthropic's Contextual Retrieval, which automatically "prepends chunk-specific explanatory context to each chunk before embedding" and thereby "reduce[s] the number of failed retrievals by 49%" (with reranking, 67%) [Confirmed: https://www.anthropic.com/news/contextual-retrieval]. Langdock Folders do **not** do this automatically, so **you must do it by hand**: every chunk that discusses Brand Voice should contain the literal string "Brand Voice." Regal's contextual-label technique applies: prefix scenario-specific chunks with one-line intros like "Use this info when [conditions] are true" [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases].

### Cross-document deduplication and conflict resolution
Regal documents the failure mode precisely: "two docs with slightly different refund policies... an AI might randomly pick or (worse) mash them together," producing answers that flip "based on which chunk vector search was fetched first" [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases]. **Rule: one fact, one home.** Maintain a single source of truth per fact; if two chunks even appear to disagree, "add context or combine them into one explicit decision-tree chunk." OpenAI-aligned RAG prep guidance echoes this with de-duplication and entity resolution ("consolidate references to the same concept, e.g. 'IBM' vs. 'International Business Machines'") as core preprocessing steps. Periodically prune: Regal's RAG-hygiene guidance — "More documents mean more retrieval noise, especially if some are outdated or poorly scoped. Periodically remove unused, redundant, or irrelevant documents. In RAG, quality matters more than quantity" [Confirmed: https://www.regal.ai/blog/rag-hygiene].

### Anti-patterns to eliminate
Regal's catalogue of "knowledge clutter" that wrecks AI answers [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases]:
- **Narrative filler / marketing fluff:** "At Acme Co., we value our customers…" — "An AI agent retrieving this may latch onto the fluff and respond with irrelevant platitudes."
- **Assumed prior knowledge:** "follow the usual refund process" without stating it — "Missing context forces the AI to guess, which is a recipe for hallucination."
- **Ambiguous hedging:** "you may want to consider" — write directives. "If a process must never be done a certain way, say 'Do not XYZ' rather than 'XYZ is not recommended.'"
- **"See section X" cross-refs:** worthless after chunking because the model never sees section X. Restate the fact inline.

### Grounding authority within the file
Because Folders can attach a source URL per file ("A link can be included to reference the original source in responses" [Confirmed: https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders], surfaced as the `url` field in Search results), and because the model benefits from knowing a chunk's authority, **state the source and currency inside the text**: e.g., a one-line header "Source: Official Brand Guidelines v3.2, owned by Marketing, last reviewed 2026-05." Regal recommends contextual labels naming applicability ("Return Policy (California customers)"); the same pattern signals authority and scope.

---

## Section 3 — File Taxonomy Design

### How many files? What drives the optimum
There is no magic number, but the drivers are concrete:
1. **Topic count.** Start from one file per distinct, independently-queryable topic. This is the dominant driver.
2. **The "one chunk per document" Search API rule.** Because the Search API returns only the highest-scoring chunk per document [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder], packing many distinct sub-topics into one file means only one of them can be surfaced per query through that endpoint. This pushes you toward **more, smaller files** rather than fewer large ones.
3. **The 1,000-file ceiling.** You have generous headroom; do not artificially merge topics to save slots.
4. **Retrieval noise vs. coverage.** Regal warns "more documents mean more retrieval noise" if documents are stale or poorly scoped [Confirmed: https://www.regal.ai/blog/rag-hygiene] — so the optimum is "as many files as you have genuine distinct topics, and no more." For a marketing knowledge base, this typically lands around 10–40 well-scoped files, not 5 giant ones and not 200 fragments.

**Heuristic:** if you can't write a one-sentence description of what a file covers, it's doing too much — split it. If two files would have near-identical descriptions, merge them.

### One-topic-per-file vs. multi-topic with strong H2 boundaries
Prefer one topic per file. Where closely related sub-topics genuinely belong together (e.g., four facets of "Brand Voice"), a single file with strong H2 boundaries is acceptable **for in-chat retrieval** (which pulls up to 50 chunks), but remember the Search API will only return one chunk from that file per query. **Rule:** group only sub-topics that are always queried together; split anything queried independently.

### Avoiding cross-file contradiction
Apply the single-source-of-truth rule from Section 2 at the file level: designate one file as the authority for each subject. If "tone of voice" rules appear in both a Brand Voice file and a Social Media file, make one of them reference-by-restatement of a single canonical statement, or better, keep tone rules only in the Brand Voice file and have the Social Media file cover only channel-specific deltas.

### Does the filename matter for retrieval?
Langdock does not explicitly document that filenames are embedded or scored. **[Inferred]** the chunk `text` is what's embedded; the filename surfaces as `subname` in Search results for attribution. However, descriptive filenames are strongly recommended on two grounds: (1) Langdock's own guidance — "Use descriptive names: Help users understand what each folder contains at a glance" [Confirmed: https://docs.langdock.com/product/library/folders]; (2) Regal's finding that "Titles aren't cosmetic — they're indexed, and influence which content gets retrieved... A title like 'Silver Plan Eligibility Requirements – 2024' improves match quality" [Confirmed: https://www.regal.ai/blog/rag-hygiene]. Since the cost is zero and platforms vary, **name files descriptively and also restate the file's subject in an H1 and opening sentence** so the topic is embedded in the chunk text regardless.

### Using a "platform overview / router" file as a semantic backbone
Create one **overview/router file** that briefly describes every topic in the Folder and the canonical vocabulary for each. This serves two purposes: it gives broad queries ("what does this agent know about?") a chunk to land on, and it seeds the shared vocabulary (German + English terms, synonyms) in one place. Keep each entry to a sentence or two so the overview's chunk stays coherent. This mirrors the "00-start-here.md" index pattern used in agentic knowledge bases as a navigational backbone.

---

## Section 4 — Aligning Knowledge to Retrieval Scenarios

### Scenario-driven authoring
Pinecone's guidance is to design chunking around "your expectations for the length and complexity of user queries" and "how the retrieved results be utilized" [Confirmed: https://www.pinecone.io/learn/chunking-strategies/]. Operationalize this by **starting from the query, not the document.** List the real questions users will ask, then write the chunk that should answer each. Regal frames the root cause of failure as misalignment between content and "real customer language."

### Vocabulary alignment (German marketing director example)
If your users are German marketing directors, they will type German marketing vocabulary: "Markenstimme," "Tonalität," "Zielgruppe," "Freigabeprozess." Your English-sourced Langdock documentation says "Brand Voice," "tone," "target audience," "approval workflow." Cross-lingual embeddings can bridge some of this gap (Section 7), but the reliable fix is to **put the user's exact words in the chunk.** DO write a sentence containing both "Markenstimme (Brand Voice)" so the German query and the English term embed near each other.

### Synonym seeding inside chunks
Within each chunk, include the primary term plus its common synonyms and the cross-language equivalent: "Brand Voice (Markenstimme, Tonalität, Markenton)." This is the manual analogue of Anthropic's contextualization. It widens the set of queries whose embeddings fall near the chunk. **Caution:** seed synonyms naturally in a sentence; do not dump a keyword list, which dilutes the chunk's semantic focus and reads as spam to the model.

### Coverage matrix
Build a table mapping each expected scenario to the chunk(s) that should answer it and the file they live in. This is both a design tool and your test plan (Section 6):

| Scenario (user query) | Expected top chunk | Source file |
|---|---|---|
| "Wie ändere ich den Brand Voice?" | "Changing the Brand Voice setting" (H2) | Brand-Voice-Configuration.md |
| "Welche Tonalität für LinkedIn?" | "Brand Voice by channel: LinkedIn" (H2) | Brand-Voice-Configuration.md |
| "What are our brand colors?" | "Visual identity: color palette" (H2) | Brand-Visual-Identity.md |

If two scenarios map to two H2s in the *same* file, remember the Search API returns only one chunk per file — consider splitting into separate files if both must be independently retrievable via the API.

### Dedicated "scenario index" file vs. scattered hooks
Use a **dedicated scenario-index file** when you have many distinct query patterns that don't map cleanly to topical files (e.g., troubleshooting, "how do I…" tasks). Scatter scenario hooks (the user's query phrasing embedded in the relevant section's opening line) across topical files when the scenarios align naturally with topics. In practice, do both: topical files carry scenario hooks in their H2 opening sentences, and a thin router/index file catches broad or cross-cutting queries.

---

## Section 5 — Metadata, Front Matter, and Structure

### Does Langdock parse YAML front matter?
**Not documented.** Langdock's docs describe Markdown support generally but make **no statement that YAML front matter is parsed, indexed, or used as metadata** [Confirmed: https://docs.langdock.com/resources/faq/supported-file-types]. **[Inferred]** Since chunking is character-based with no documented front-matter handling, any YAML block at the top of a `.md` file will most likely be embedded as ordinary text inside the first chunk — neither specially parsed nor harmful, but it consumes characters in your most valuable chunk. **Recommendation:** do not rely on YAML front matter for retrieval behavior. If you want metadata (owner, version, review date), write it as a short human-readable line inside the document body where it adds authority signal (Section 2), not as a YAML block you expect the system to parse. Use the upload API's `url` field for the canonical source link, which *is* surfaced in Search results [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder].

### H1 conventions
**One H1 per file, matching the file's single purpose.** The H1 should restate the file subject in the user's vocabulary (and ideally include the cross-language term). Because the H1 sits at the top of the first chunk, it helps anchor that chunk's topic.

### Section anchors / IDs
Markdown heading anchors/IDs are useful for human navigation but **not documented as affecting Langdock retrieval [Inferred]**. Do not invest in anchor schemes for retrieval purposes; invest in clear heading *text* instead, since that text is embedded.

### "What this file covers / does NOT cover" header
Add a short scope box at the top of each file, e.g.:
> **This file covers:** how to configure, change, and apply the Brand Voice setting across channels.
> **This file does NOT cover:** visual identity, logo usage, or color palette (see Brand-Visual-Identity.md — but the relevant facts are restated where needed).

This sets retrieval scope, mirrors Regal's contextual-applicability labels, and gives broad queries a clean landing chunk. Keep it to two or three lines so it doesn't crowd the first substantive chunk.

---

## Section 6 — Testing Methodology

### Evaluate retrieval quality before deploying
RAG quality splits into **retrieval** and **generation**; you must measure retrieval in isolation, because most RAG failures originate in the chunks rather than the retriever — the chunks either don't contain the answer in a self-sufficient form or don't match the query vocabulary. Standard IR metrics apply — **Recall@k, Precision@k, Hit@k** — and the practical proxy is whether the golden chunk appears in the top results (Anthropic uses Pass@k / recall@20 in exactly this way) [Confirmed: https://www.anthropic.com/news/contextual-retrieval].

### Manual spot-check protocol (20 queries)
1. Build the coverage matrix (Section 4): list ~20 representative queries in the **users' real language** (mix German and English if applicable), each with an expected source file/chunk.
2. For each query, call the Folder Search API: `POST https://api.langdock.com/knowledge/search` with body `{"query": "..."}` and an API key holding the `KNOWLEDGE_FOLDER_API` scope on a Folder shared with that key [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder].
3. Inspect the returned array. Each result has `text`, `similarity` (0–1), and `subname` (filename). **Verify the expected file's chunk appears at or near the top (index 0–2) with a healthy similarity score.** Because the Search API returns only the highest-scoring chunk per document, "top-3" here means top-3 *documents*, not top-3 chunks within a file.
4. Record pass/fail per query.

**[Inferred] adaptation:** the task's "verify expected chunks rank in top-3" is sound, but adapt it to Langdock's reality — the Search API gives one chunk per file and no top-k parameter, so judge by which *files* rank highest and by the absolute `similarity` score, not by retrieving three chunks from one file.

### Detecting coverage gaps
A topic "fails to retrieve" when no chunk for it appears in the top results for its intended queries, or when the top result comes from the wrong file. Catalogue these. Also test **negative/near-miss queries** (questions the Folder should *not* confidently answer) to ensure an unrelated chunk doesn't surface with misleadingly high similarity. Low recall typically signals one of two root causes: missing knowledge coverage (the fact isn't in any chunk) or a query–document vocabulary mismatch (the fact exists but uses different words than the query).

### Iteration loop
For each under-retrieving chunk, apply fixes in this order (cheapest first):
1. **Vocabulary alignment** — add the user's exact query words (and cross-language synonyms) into the chunk's opening sentence.
2. **Explicit nouns** — replace pronouns; repeat the subject noun.
3. **Stronger H2 anchoring / splitting** — if the chunk is buried in a multi-topic section, give it its own H2; if it's competing with another strong chunk in the same file for the Search API's single slot, split it into its own file.
4. **De-duplicate** — if a wrong file wins, you likely have overlapping content; consolidate to one source of truth.
Re-run the 20 queries after each change. Pinecone confirms this is "most likely to be an iterative process, where you test different chunk sizes against different queries" [Confirmed: https://www.pinecone.io/learn/chunking-strategies/] — and since you can't change chunk size in a Folder, you iterate on the *text*. Regal's parallel advice: "if you catch a weird answer, trace it back to the source chunk... edit that chunk for clarity or split it further" [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases].

---

## Section 7 — Multi-Language Considerations

### Separate files vs. mixed in one chunk
When source content is mixed German + English, the decision hinges on whether a single concept is being expressed (keep together) or two different bodies of content exist (separate). **Recommendation:** keep **one concept's German and English terms in the same chunk** (so both queries hit the same authoritative answer), but keep **large bodies of differing-language content in separate files** to avoid diluting each chunk's semantic focus. Do not machine-translate and store both full versions of every document — that creates two competing sources of truth and risks the conflict failure from Section 2.

### Will German queries retrieve English-source chunks?
**Generally yes, via cross-lingual embeddings — but do not rely on it alone.** Multilingual/cross-lingual embedding models are, in the words of Nouman Nawaz's "Lesson 18: Multi-Lingual RAG & Cross-Lingual Retrieval" (Medium), "special embedding models trained to map sentences with the same meaning to the same vector, regardless of the language... a user can query in Spanish, and the system will mathematically find the relevant English document, without ever translating the query." However, Langdock does not document its embedding model or confirm multilingual support [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder], so treat cross-lingual retrieval as **[Inferred] likely-but-unverified.** The robust hedge is vocabulary seeding (Section 4): place the German query term beside the English term in the chunk, which guarantees the match regardless of how multilingual the embedding model is. **Test this explicitly** in your 20-query spot-check by issuing German queries against English chunks.

### Loaned terms that are identical across languages
Terms like "Workflow," "Conversation Starter," "Brand Voice," "Agent," and "Prompt" are used identically in German and English business contexts. **Best practice:** use the loaned term consistently and exactly as your users type it, and pair it once with any German-native synonym that exists ("Workflow (Arbeitsablauf)"). Consistency matters more than translation — Regal's reduced-ambiguity rule applies: pick one canonical term and stick with it, mentioning aliases in the same chunk.

---

## Section 8 — Case Studies and Primary Sources

- **Langdock "Best Practices for Knowledge" / Folders docs.** Establish the managed-vector-database model, the 1,000-file capacity, the no-auto-sync limitation, and the "attach directly when possible, use Folders for large reference libraries" decision rule [Confirmed: https://docs.langdock.com/resources/knowledge/best-practices; https://docs.langdock.com/product/library/folders].
- **Langdock Knowledge Basics & Vector Databases pages.** The source of the hard parameters: 1,536 dimensions, 2,000-character chunks, top-50 retrieval, semantic (not keyword) search [Confirmed: https://docs.langdock.com/resources/knowledge/knowledge-basics; https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders].
- **Langdock Search API reference.** The "one chunk per document," single-`query`-parameter, no-rerank reality and the result schema (`id`, `text`, `similarity`, `subsource`, `subname`, `url`, `index`) [Confirmed: https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder].
- **Langdock Cheat Sheet.** Confirms supported actions and the Markdown-friendly document workflow [Confirmed: https://docs.langdock.com/resources/cheat-sheet].
- **Pinecone "Chunking Strategies for LLM Applications."** Human-readability rule; fixed-size chunking as the recommended default; content-aware Markdown chunking; the lost-in-the-middle problem; iterate-and-test methodology [Confirmed: https://www.pinecone.io/learn/chunking-strategies/].
- **Anthropic "Contextual Retrieval."** Quantifies the cost of context-free chunks: contextual embeddings cut retrieval failures 35%, +BM25 49%, +reranking 67%; the SEC-filing orphan-chunk example; top-20 beats top-5/top-10; "smaller than 200,000 tokens (about 500 pages)" can skip RAG entirely [Confirmed: https://www.anthropic.com/news/contextual-retrieval].
- **Astera "Building a Knowledge Base for RAG."** Chunking + embedding + metadata as the three components of each KB entry; recursive/sentence/HTML/delimiter splitting; "make the information as easy as possible for an algorithm to find the most relevant context" [Confirmed: https://www.astera.com/type/blog/building-a-knowledge-base-rag].
- **Regal.ai RAG Playbook, RAG Hygiene & developer docs.** Single-topic chunking, concrete instructions, explicit outcome statements, contextual applicability labels, conflict/redundancy elimination, indexed titles ("Titles aren't cosmetic—they're indexed"), continuous curation, test-in-realistic-scenarios, and "we do not recommend tabular data" [Confirmed: https://www.regal.ai/blog/rag-playbook-structuring-knowledge-bases; https://www.regal.ai/blog/rag-hygiene; https://developer.regal.ai/docs/knowledge-base].
- **OpenAI embeddings guidance.** 1,536-dimension `text-embedding-3-small`/`ada-002` [Confirmed: https://platform.openai.com/docs/guides/embeddings]. OpenAI-focused practitioner guidance recommends splitting "into chunks of 200-500 tokens for better retrieval accuracy" and to "split at paragraph or section boundaries rather than arbitrary token counts" (agntdev.com text-embedding-3-small guide) — note the unit is tokens, not words.
- **Weaviate chunking guide.** "Make sure to use a decent overlap - 10-20% - so you don't lose important context" (weaviate.io/blog/chunking-strategies-for-rag) — the general-practice baseline you cannot apply inside a Folder, motivating defensive authoring.

---

## Section 9d — Worked Example: A "Brand Voice" Knowledge File

Below is a complete example file for the topic **Brand Voice**, with four sub-topics (definition, configuration, channel application, approval workflow) and two expected query patterns ("Wie ändere ich den Brand Voice?" and "Welche Tonalität nutzen wir auf LinkedIn?"). It demonstrates the H1, the scope box, a table that fits in one chunk, prose, repeated nouns, and German+English vocabulary seeding.

```markdown
# Brand Voice (Markenstimme) — Definition, Configuration, and Application

**This file covers:** what the Brand Voice (Markenstimme) is, how to change the
Brand Voice setting, how Brand Voice applies per channel, and the Brand Voice
approval workflow (Freigabeprozess).
**This file does NOT cover:** visual identity, logos, or color palette — those
facts live in Brand-Visual-Identity.md.
Source: Official Brand Guidelines v3.2, owned by Marketing, last reviewed 2026-05.

## What the Brand Voice Is
The Brand Voice (Markenstimme, also called Tonalität or Markenton) is the
consistent tone and personality used in all company communication. The Brand
Voice is confident, warm, and concise. The Brand Voice applies to every channel,
from email to social media to product copy.

## How to Change the Brand Voice Setting
To change the Brand Voice (Brand Voice ändern), open the agent configuration,
select the "Brand Voice" field, and enter the new tone description. Save the
agent. The new Brand Voice takes effect on the next message. Only Marketing
admins can change the Brand Voice setting.
Outcome: the agent applies the updated Brand Voice to all subsequent responses.

## Brand Voice by Channel (Tonalität pro Kanal)
The Brand Voice stays consistent, but emphasis shifts by channel:

| Channel (Kanal) | Brand Voice emphasis | Example phrasing |
|---|---|---|
| LinkedIn | Professional, insight-led | "Here's what we learned…" |
| Instagram | Warm, playful | "We're a little obsessed with…" |
| Email | Clear, direct | "Your invoice is ready." |
| Support | Calm, reassuring | "We'll fix this for you." |

For LinkedIn specifically (Tonalität auf LinkedIn), the Brand Voice is
professional and insight-led: lead with a learning or data point, avoid slang,
and keep posts under 150 words.

## Brand Voice Approval Workflow (Freigabeprozess)
Any new Brand Voice variant must be approved before use. Submit the proposed
Brand Voice to the Marketing lead, who reviews within two business days. Do not
publish an unapproved Brand Voice. Outcome: an approved Brand Voice is recorded
in Brand Guidelines and applied to all agents.
```

Why this works: the H1 and scope box name the subject in both languages in the first chunk; each H2 is a self-contained chunk well under 2,000 characters; "Brand Voice" is repeated explicitly in every section (no orphan pronouns); the table fits in one chunk and its subject is restated in the following sentence; the two expected queries each map cleanly to a dedicated H2 with the query vocabulary ("Brand Voice ändern," "Tonalität auf LinkedIn") embedded in the opening line. Caveat for the Search API: because four strong H2 chunks live in one file and the Search API returns only the highest-scoring chunk per document, if both "change the setting" and "LinkedIn tonality" must be independently retrievable via that endpoint, consider splitting them into `Brand-Voice-Configuration.md` and `Brand-Voice-By-Channel.md`.

---

## Section 9e — Pre-Upload Author Checklist

Copy this into your authoring workflow and check every box before uploading a file to a Langdock Folder.

**Scope & structure**
- [ ] The file covers exactly one topic (one-sentence description test passes).
- [ ] Exactly one H1, restating the topic in users' vocabulary (+ cross-language term if relevant).
- [ ] A "What this file covers / does NOT cover" scope box is at the top (2–3 lines).
- [ ] Each H2 section is self-contained and comfortably under ~1,800 characters.

**Chunk self-sufficiency**
- [ ] Every paragraph names its subject explicitly — no orphan "it/this/they/above."
- [ ] The key noun is repeated in every section where it applies.
- [ ] No "see section X" / "as described above" cross-references; facts are restated inline.
- [ ] Each section opens with a plain-language topic sentence mirroring a likely query.

**Vocabulary & language**
- [ ] User's real query words appear in the chunk (German + English where applicable).
- [ ] Synonyms and cross-language equivalents are seeded naturally in a sentence (not as a keyword dump).
- [ ] Loaned terms (Workflow, Brand Voice, etc.) used consistently, aliases mentioned once.

**Formatting**
- [ ] Tables are small enough to fit in one chunk; the table's subject is restated in adjacent prose.
- [ ] No deep nested bullet lists; list items carry enough standalone context.
- [ ] No tabular spreadsheet data as primary knowledge (use prose; spreadsheets can't go in Folders anyway).
- [ ] File saved as .md (≤10 MB) or appropriate supported format.

**Authority & dedup**
- [ ] A source/owner/last-reviewed line is included in the body.
- [ ] This file is the single source of truth for its facts; no contradiction with other files.
- [ ] The canonical source link is set in the upload API `url` field (if applicable).

**Naming & testing**
- [ ] Filename is descriptive (e.g., Brand-Voice-Configuration.md, not doc7.md).
- [ ] The file's scenarios are in the coverage matrix with expected ranking.
- [ ] Spot-check queries (incl. cross-language) run through the Search API; expected file ranks top-1–3 with healthy similarity.
- [ ] Any under-retrieving section was rewritten (vocabulary → explicit nouns → split) and re-tested.

---

## Caveats

- **Several Langdock internals are undocumented and labeled [Inferred] above.** The most consequential are: (1) the **embedding model identity** — Langdock states only "1536 dimensions" and "your workspace's default embedding model," never the model name; (2) **chunk overlap and boundary detection** — the docs say only "split into sections of 2,000 characters," with no statement about overlap or heading/paragraph/sentence awareness; (3) **YAML front-matter parsing** and **heading-anchor effects on retrieval** — not documented. Where this document infers worst-case behavior (e.g., a naive fixed-length cut), the authoring rules are deliberately conservative so they remain correct even if Langdock's implementation is smarter than documented.
- **The Search API vs. in-chat retrieval may differ.** The documented Search API returns only the highest-scoring chunk per document and accepts only a `query` parameter; in-chat `@mention` retrieval is documented to pull up to 50 chunks. This document treats the Search API as the testing harness (because it is programmatically inspectable) but flags that production in-chat behavior may surface more chunks per file. Validate both if your deployment relies on in-chat usage.
- **Cross-lingual retrieval is likely but unverified.** Multilingual embedding behavior is well-established in the literature, but Langdock does not confirm its model is multilingual. The vocabulary-seeding hedge (placing German and English terms in the same chunk) makes the methodology robust regardless.
- **General-RAG numbers are not Langdock numbers.** Chunk-size recommendations (200–500 tokens), overlap (10–20%), and reranking gains (49–67%) come from external sources (Weaviate, OpenAI-focused guides, Anthropic) and describe configurable pipelines. Inside a Langdock Folder you cannot change chunk size, overlap, or add reranking — they are fixed at 2,000 characters, no overlap, no rerank. These external figures are included to explain *why* the defensive authoring rules matter, not as parameters you can tune.
- **Constraints current as of May 2026** and drawn from docs.langdock.com; Langdock's changelog shows the Knowledge-Folder feature is actively evolving (renamed to "Folders," moved into the Library). Re-verify the hard limits before a large rollout.
- **One minor doc inconsistency:** the upload-file API reference lists CSV/HTML among accepted types, while the Folders product page states XLSX/CSV "cannot be added to Folders." Treat spreadsheets as unsupported in Folders (the product-page guidance is the operative user-facing rule) and use direct attachments or the Data Analyst tool for tabular data.
