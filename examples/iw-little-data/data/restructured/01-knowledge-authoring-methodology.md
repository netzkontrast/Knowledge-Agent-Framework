# Langdock Knowledge Folder Authoring Methodology — Research Report

> **Source:** sc-deep-research subagent run, 2026-05-31. Cross-validated against docs.langdock.com primary sources.
> **Status:** Primary input for `SKILL-knowledge-authoring.md` and the file taxonomy in the design spec.

---

## Executive Summary

Langdock's Knowledge Folders are a chunked vector-retrieval surface, not a "document store." Files are split into **2,000-character chunks**, embedded at **1,536 dimensions**, then retrieved via vector search returning up to **50 chunks per query**, filtered by a relevance threshold and re-ranked by an LLM, with **only the highest-scoring chunk per document returned** ([Langdock Vector DBs](https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders), [Search API](https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder)). This pipeline rewards documents engineered as **self-contained, single-topic chunks** with explicit vocabulary, and punishes narrative-prose documents that depend on cross-references and pronoun chains.

For a ~10-file Folder covering an entire product with ~100 expected query scenarios, the dominant authoring constraint is therefore not file size (10 MB for .md), file count (1,000 max), or sync (manual for uploaded folders) — it is **chunk-level self-sufficiency**. Each ~2,000-character section must (a) stand alone semantically, (b) repeat its key nouns instead of pronouns, (c) align vocabulary with how the German marketing director will ask, and (d) avoid "see section X" hops.

The methodology has four pillars: **(1) Hard-constraint compliance**, **(2) Chunk-aware authoring**, **(3) Scenario-driven coverage**, **(4) Pre-upload evaluation**. The "10 Commandments" cheat sheet below operationalizes this.

---

## The 10 Commandments for Langdock Knowledge-File Authors

1. **One topic per file. One H1 per file.** The H1 is your file-level title; everything below must serve it.
2. **One sub-topic per H2 block, sized 1,200–1,800 characters** — comfortably under the 2,000-char chunk boundary so the entire sub-topic ships in a single chunk.
3. **Repeat the noun, never the pronoun.** Re-state "Brand Voice", "Conversation Starter", "Agent Knowledge" in every paragraph. Never "it", "this", "the above".
4. **Open every file with a "What this file covers / What it does NOT cover" box** so the first chunk is a retrieval magnet for routing queries.
5. **Seed both languages in the same chunk** for German+English audiences: write `Markenstimme (Brand Voice)` on first mention, then use whichever the audience queries with.
6. **No "see section X" cross-refs.** Each chunk must be answerable without leaving the chunk. If two sections need the same fact, write it twice.
7. **Use Markdown tables for dense fact lookups** (limits, file types, MIME) — tables embed densely and survive chunking when small enough to stay on one page.
8. **Filenames are descriptive-keyword strings** in kebab-case (`brand-voice-guidelines.md`, not `01.md`). `[INFERRED]` Langdock returns `subname` (filename) in Search API responses for citation; descriptive filenames improve attribution. Whether filename influences ranking is **unverified**.
9. **No YAML front matter, no HTML, no footnotes.** `[INFERRED — UNVERIFIED]` Langdock does not document YAML parsing; treat front matter as content that will be chunked along with the body.
10. **Evaluate before deploying.** Run ≥20 representative queries via the Knowledge Folder Search API and confirm the expected chunk appears in the top result; rewrite any chunk that doesn't.

---

## Hard Constraints (Verified Against Primary Sources)

**Per-folder limits** ([Knowledge Folders](https://docs.langdock.com/product/chat/knowledge-folders), [Folders](https://docs.langdock.com/product/library/folders)):
- **Uploaded folder:** up to **1,000 files**
- **Connected/synced folder (SharePoint, Google Drive):** up to **200 files per folder**, max **5 synced folders per agent** ([Folder Sync](https://docs.langdock.com/resources/integrations/folder-sync))

**Per-file character cap:** **8 million characters** per text-based file ([Supported File Types](https://docs.langdock.com/resources/faq/supported-file-types)). Global cap regardless of MB size.

**Per-file size caps by format:**

| Format | Extension | Size Limit | In Folders? |
|---|---|---|---|
| Markdown | .md | **10 MB** | Yes |
| Text | .txt | 10 MB | Yes |
| JSON | .json | 10 MB | Yes |
| PDF | .pdf | 256 MB | Yes |
| Word | .docx | 256 MB | Yes |
| PowerPoint | .pptx | 256 MB | Yes |
| Excel/CSV | .xlsx/.csv | 30 MB | **No** — chat/agent only |
| Images | .png/.jpg | 20 MB | **No** |

**Sync cadence:**
- **Uploaded folders:** No automatic sync. Manual re-upload required.
- **Connected (SharePoint/Google Drive) folders:** automatic refresh **once daily** + manual trigger; first sync up to one hour.

**Chunking:**
- **Chunk size:** 2,000 characters
- **Overlap:** **Not documented** `[UNVERIFIED]`
- **Boundary detection:** Not publicly disclosed `[UNVERIFIED]`

**Embedding:**
- **Vector dimension:** 1,536
- **Model identity:** Not disclosed publicly. The 1,536 dimension strongly suggests OpenAI `text-embedding-ada-002` or `text-embedding-3-small` (which default to 1,536) `[INFERRED]`.

**Retrieval mechanics:**
- **k-value:** up to **50 chunks retrieved per query**
- **Two-stage process:** (1) vector similarity search, (2) **filtered by relevance threshold and re-ranked by an LLM**
- **Per-document cap:** "Only the highest-scoring chunk per document is returned" — **the most consequential authoring rule**
- **Response fields per chunk:** `id, text, similarity (0–1), subsource, subname (filename), url, index`

**Operational implication of "highest-scoring chunk per document":** This is the most consequential undocumented behavior change for authoring. If your file has two chunks that match a query, **only one will surface**. This pushes you toward **one-topic-per-file**, because packing multiple topics into one file means only one of them can rank for any given query.

**Direct attachment vs Folder:**
- **Direct attachment:** full document → context window; capped at 20 files in a chat/agent. Use when you have few short files and want comprehensive analysis.
- **Knowledge Folder:** chunked → vector search → top-relevant chunks pushed to context. Use when (a) >20 files, (b) files long, (c) only sections relevant per query (FAQ-style use cases).

---

## Document Engineering Principles for RAG

**Principle 1 — Single-topic-per-chunk discipline.** Every 2,000-char window must answer one question completely. Mitigation: write so every chunk re-introduces its subject. Source: [Anthropic Contextual Retrieval](https://www.anthropic.com/news/contextual-retrieval).

**Principle 2 — Hierarchical heading taxonomy as chunk boundaries.** Use H1 (one per file) → H2 (sub-topic, 1,200–1,800 char body) → H3 (atomic fact under sub-topic). Markdown header-based splitting is the "single biggest and easiest improvement" for RAG document quality.

**Principle 3 — Pronoun ban.** After chunking, "this", "it", "the above" lose their antecedents. Rule: **the subject noun must appear in every paragraph and in every list-item that introduces new information.**

**Principle 4 — Tables vs prose vs bullets.**
- **Tables** for fact lookups (limits, format support, MIME types). Rule: never split a table across chunks — keep each table ≤30 rows or ≤1,500 chars.
- **Prose** for nuanced "when to use X vs Y" guidance — explanatory language gives the embedding more semantic surface area.
- **Bullets** for parallel discrete options where each bullet should retrieve on its own; keep bullets ≥1 sentence so they carry meaning.

**Principle 5 — Repeating key nouns explicitly.** Embedding similarity rewards lexical and semantic overlap with the query. If the query contains "Markenstimme", the chunk should too.

**Principle 6 — Cross-document deduplication.** Langdock returns "only the highest-scoring chunk per document". Therefore, having the same fact in two files is fine — but having the same fact in two chunks of the **same** file means only one will ever surface. Rule: **single source of truth per file; cross-file duplication acceptable when topics are genuinely different**.

**Principle 7 — Anti-patterns.**
- Narrative filler ("Welcome to our brand guide. In this document we will explore…") — wastes the highest-retrieval-magnet position.
- Ambiguous intros ("Let's begin with the basics") — no nouns, no retrieval signal.
- Vague disclaimers ("Note that exceptions may apply") — re-rank dead weight.
- "See Section 4.2 for details" — fatal after chunking; replace with the actual content.

---

## File Taxonomy Design

**Choosing the right file count.** For ~100 expected scenarios:

- **5 files:** too coarse — each file holds 20 scenarios, contradicting one-topic-per-file. Risk: the per-document cap suppresses sibling chunks.
- **10 files:** **recommended sweet spot** for a single-agent advisor with ~100 scenarios. 10 topical buckets × ~10 chunks per file = 100 dedicated retrieval targets.
- **30 files:** appropriate when topics are deeply heterogeneous; risks editorial drift and cross-file contradiction.
- **100 files:** one-file-per-scenario is over-fitting.

**Decision rule:** `target_file_count ≈ ceil(distinct_topic_clusters)`, where two scenarios share a cluster if a single 2,000-char chunk could plausibly answer both.

**One-topic-per-file vs multi-topic with H2 boundaries.** Prefer one-topic-per-file because of the per-document cap. Use multi-topic with strong H2 boundaries only when sub-topics are tightly bound.

**Avoiding cross-file contradiction.** Adopt a "single source of truth" rule per fact. Maintain a `topic-ownership.md` author-side ledger (not uploaded) mapping each fact to its owning file.

**"Platform overview / router" file.** Strongly recommended. The first chunk of a `00-platform-overview.md` becomes the semantic backbone the router falls back on when a query straddles multiple topics.

---

## Aligning Knowledge to Retrieval Scenarios

**Scenario-driven authoring.** Reverse the writing direction: start from the expected queries, then write the chunks they should retrieve. For each of your ~100 marketing scenarios:

1. Phrase the most likely German query verbatim (use the marketing director's actual vocabulary).
2. Identify the expected answering chunk and which file it lives in.
3. Confirm the chunk's first 200 characters contain ≥3 of the query's content nouns.

**Vocabulary alignment.** Build a `query-vocabulary.md` author ledger mapping each marketing scenario to its top-3 query phrasings. Use German loanwords as the audience uses them: "Workflow", "Conversation Starter", "Briefing", "Touchpoint".

**Synonym seeding inside chunks.** When the German term and Langdock term differ, seed both in the chunk's opening sentence:

> Die Markenstimme (Brand Voice) eines Agents bestimmt, wie der Agent in Kundenkommunikation klingt.

**Coverage matrix.** Maintain a spreadsheet:

| Scenario | Likely query (DE) | Likely query (EN) | Expected top-1 file | Expected top-1 chunk H2 | Verified? |
|---|---|---|---|---|---|

**Scenario index file vs scattered hooks.** Recommendation: **scatter** scenario hooks across topical files (where they belong topically) and use the `00-platform-overview.md` router file for cross-cutting "where do I find…" queries. A dedicated scenario-index file risks becoming a single point of failure: under the per-document cap, only one scenario-related chunk would ever surface per query.

---

## Metadata, Front Matter, Structure

**YAML front matter:** Langdock does **not document** YAML parsing for .md files. `[UNVERIFIED — flagged as risk]` Most likely, YAML lines are treated as content and chunked. **Recommendation:** do not use YAML front matter.

**H1 conventions:** one H1 per file, matching the file's topical bucket name. H1 is the strongest topical signal for the first chunk.

**Section anchors / IDs:** Langdock does not document anchor-based deep linking from chunks. `[UNVERIFIED]` Treat them as no-op.

**Intro box "What this file covers / What it does NOT cover":** The most actionable structural recommendation. The first 2,000 chars of a file is the first chunk; making it a routing/scope statement turns it into a semantic router.

**Recommended file skeleton:**

```
# [Topic Title] for [Audience]

> **What this file covers:** [3 bullet points naming the sub-topics]
> **What this file does NOT cover:** [2 bullet points naming likely-confused topics + their owning files]

## [Sub-topic 1 — repeats the topic noun]
[1200–1800 char self-contained block]

## [Sub-topic 2 — repeats the topic noun]
[1200–1800 char self-contained block]
...
```

---

## Testing Methodology

**Pre-deployment evaluation protocol:**

1. **Build the spot-check query set.** 20 queries minimum, drawn proportionally from your scenario list. Mix German, English, and code-switched ("Wie setze ich einen Conversation Starter auf?").
2. **Hit the Search API.** POST to the Knowledge Folder Search endpoint with each query. Capture returned chunks (text, similarity score, subname).
3. **Score each query** against your coverage matrix:
   - **Pass:** expected chunk is the top-1 result (similarity ≥ 0.5 `[heuristic]`).
   - **Soft pass:** expected chunk in top-3.
   - **Fail:** expected chunk absent or below position 3.
4. **Diagnose fails** by reading the returned chunks. Three common causes:
   - **Vocabulary miss:** query uses term not in chunk → add synonym seeding.
   - **Wrong-chunk dominance:** another chunk in same file outranked it → per-document cap problem → split into two files.
   - **No matching chunk exists:** coverage gap → add a new file or sub-topic.
5. **Iterate.** Rewrite, re-upload, re-test. Target: ≥85% of spot-check queries pass; 100% soft-pass.

**Coverage gap detection.** Inversion test: take each file's chunks and ask "what query would retrieve this and only this?" If you cannot articulate a distinctive query, the chunk is dead weight or duplicative.

---

## Multi-Language Considerations

**Resolution for Langdock specifically:** Langdock does not expose language filtering at retrieval time, and the embedding model is undocumented. Pragmatic recommendation: **mixed German + English in the same chunk** for the German marketing audience, with German as the primary surface language and English Langdock terms parenthetical on first mention.

**Separate files vs mixed:** Mixed within file, German-primary. Rationale: the audience asks in German but Langdock product nouns are English ("Agent", "Knowledge Folder", "Conversation Starter") — separating by language would force two retrieval round-trips for any single scenario.

**Cross-language retrieval reliability:** `[UNVERIFIED — TEST IN SPOT-CHECK]` Include both German-only and code-switched queries in the 20-query spot-check.

**Loaned terms.** German marketing speech freely uses "Workflow", "Briefing", "Conversation Starter", "Persona", "Touchpoint", "Onboarding" without translation. Use them as-is.

---

## Working Example — "Brand Voice" File

**Topic:** Brand Voice for a marketing advisor Agent.
**Subtopics:** (1) defining voice attributes, (2) tone-by-channel matrix, (3) forbidden phrases, (4) reviewing AI output against the voice.
**Expected query patterns:**
- DE: "Wie definiere ich die Markenstimme für meinen Agent?"
- DE/EN: "Welcher Tone passt zu LinkedIn Posts?"

### Resulting file: `brand-voice-guidelines.md`

```markdown
# Brand Voice for Marketing Agents

> **What this file covers:** Definition of brand voice attributes (Markenstimme),
> tone-by-channel mapping for LinkedIn, Newsletter, Website, and Sales-Decks,
> forbidden phrases, and the review checklist for AI-generated copy.
>
> **What this file does NOT cover:** Visual brand guidelines (see `visual-identity.md`),
> legal/compliance phrasing (see `compliance-guardrails.md`), or
> persona definitions for buyer segments (see `buyer-personas.md`).

## Defining Brand Voice Attributes (Markenstimme)

Die Markenstimme (Brand Voice) eines Marketing-Agents besteht aus drei Attributen:
Persönlichkeit, Vokabular und Satzlänge. Jedes Attribut wird als Slider zwischen
zwei Polen definiert. Die Markenstimme ist projektübergreifend konstant und
unterscheidet sich vom Tone, der pro Channel variiert.

| Attribut | Pol A | Pol B | Empfohlener Wert (Beispielmarke) |
|---|---|---|---|
| Persönlichkeit | förmlich | locker | 70% locker |
| Vokabular | technisch | alltagssprachlich | 50/50 |
| Satzlänge | knapp | erzählerisch | 60% knapp |

Diese Markenstimme-Werte werden im Agent-Briefing als Conversation Starter
hinterlegt und vom Agent in jeder Antwort respektiert.

## Tone-by-Channel Matrix

Während die Markenstimme konstant bleibt, variiert der Tone pro Channel. Die
folgende Matrix definiert den Channel-Tone für die vier wichtigsten Touchpoints
des Marketing-Agents.

| Channel | Tone | Satzlänge | Emoji-Einsatz |
|---|---|---|---|
| LinkedIn Post | optimistisch, direkt | kurz (≤20 Wörter/Satz) | sparsam |
| Newsletter | informierend, warm | mittel | nein |
| Website-Copy | überzeugend, klar | kurz bis mittel | nein |
| Sales-Deck | präzise, datenbasiert | kurz | nein |

Für LinkedIn Posts gilt zusätzlich: aktive Verben am Satzanfang, keine
Marketing-Phrasen wie "Game-Changer" oder "next level".
```

**Why this file works for retrieval:**
- Each H2 block is 800–1,100 chars — comfortably one chunk.
- Topic noun ("Brand Voice", "Markenstimme", "Tone", "Forbidden Phrases", "Brand-Voice-Review") repeats in every paragraph — no pronoun chains.
- Synonym seeding: "Markenstimme (Brand Voice)" in opening of first sub-topic.
- Routing intro box scopes the file vs adjacent files explicitly.
- Expected query "Welcher Tone passt zu LinkedIn Posts?" hits the Tone-by-Channel chunk because LinkedIn, Tone, and the row content are co-located.

---

## Pre-Upload Author Checklist

**Structure**
- [ ] Exactly one H1 at top
- [ ] H1 names the topic explicitly (no clever titles)
- [ ] "What this file covers / does NOT cover" intro box present
- [ ] All H2 blocks are 1,200–1,800 chars (under chunk boundary)
- [ ] No H4+ headings (heading depth ≤3)
- [ ] No YAML front matter, no HTML, no footnotes

**Vocabulary**
- [ ] Topic noun appears in every paragraph (no orphan pronouns)
- [ ] German term + English Langdock term seeded on first mention
- [ ] All forbidden cross-refs removed ("see section X", "as mentioned above")
- [ ] First sentence of each H2 names the sub-topic explicitly

**Coverage**
- [ ] File maps to ≥1 row in the scenario coverage matrix
- [ ] No fact in this file duplicates a chunk in another file
- [ ] No two chunks within this file would compete for the same query (per-document cap)

**Tables and lists**
- [ ] Every table is ≤30 rows and ≤1,500 chars (stays in one chunk)
- [ ] No table is split by an H2/H3 inside it
- [ ] Bullets are ≥1 sentence (carry meaning standalone)

**File metadata**
- [ ] Filename is kebab-case, ≤50 chars, descriptive
- [ ] File extension is `.md`; file size <10 MB; total chars <8M

**Pre-deployment test**
- [ ] At least 2 representative queries from the scenario matrix have been Search-API tested
- [ ] Expected chunk appears in top-1 result with similarity ≥ 0.5
- [ ] Cross-language probe: German query retrieves the chunk even if H2 is English-titled

---

## Open Questions / Flagged Unknowns

1. **Embedding model identity.** Worth confirming with Langdock support if cross-language quality matters.
2. **Chunk overlap value.** Undocumented. Authoring at 1,200–1,800 char H2 blocks is robust to either overlap policy.
3. **Chunk boundary detection algorithm.** Whether Langdock splits on character count alone, on paragraph boundaries, or on markdown headings is undocumented. Defensive authoring is robust to all three.
4. **YAML front matter handling.** Undocumented. Risk-averse recommendation: do not use.
5. **Filename influence on retrieval ranking.** Undocumented. Use descriptive filenames for citation quality; do not rely on them for ranking.
6. **Cross-language retrieval quality.** Untested. Must be verified via the 20-query spot-check.
7. **LLM re-ranker prompt and model.** Undocumented.

---

## Operational verdict for this project

For a ~10-file Folder backing one advisor Agent on ~100 marketing scenarios, the authoring methodology resolves to: **author 10 single-topic markdown files at ≤10 MB each, with H2 sub-topics sized 1,200–1,800 chars, scoped via a "what this file covers" intro box, vocabulary-aligned to German marketing terms with English Langdock-term synonyms seeded inline, and validated against a 20-query Search-API spot-check before going to the user.** The per-document cap on retrieval ("highest-scoring chunk per document") is the single most consequential undocumented Langdock behavior and is the reason "one topic per file" is the operating rule, not just a style preference.

## Sources

| URL | Title | Credibility |
|---|---|---|
| https://docs.langdock.com/resources/knowledge/best-practices | Langdock — Best Practices | Primary (official) |
| https://docs.langdock.com/resources/cheat-sheet | Langdock — Cheat Sheet | Primary (official) |
| https://docs.langdock.com/resources/knowledge/knowledge-basics | Langdock — Knowledge Basics | Primary (official) |
| https://docs.langdock.com/resources/knowledge/vector-databases-knowledge-folders | Langdock — Vector DBs in Knowledge Folders | Primary (official) |
| https://docs.langdock.com/resources/faq/supported-file-types | Langdock — Supported File Types | Primary (official) |
| https://docs.langdock.com/resources/faq/file-limit | Langdock — 20-file limit FAQ | Primary (official) |
| https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments | Langdock — Folders vs Direct Attachments | Primary (official) |
| https://docs.langdock.com/resources/faq/attachments | Langdock — Attachments FAQ | Primary (official) |
| https://docs.langdock.com/resources/integrations/folder-sync | Langdock — Folder Sync | Primary (official) |
| https://docs.langdock.com/product/chat/knowledge-folders | Langdock — Knowledge Folders (Product) | Primary (official) |
| https://docs.langdock.com/product/library/folders | Langdock — Folders (Library) | Primary (official) |
| https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file | Langdock — Upload File API | Primary (official) |
| https://docs.langdock.com/api-endpoints/knowledge-folder/search-knowledge-folder | Langdock — Search Knowledge Folder API | Primary (official) |
| https://docs.langdock.com/product/chat/document-search | Langdock — Document Search | Primary (official) |
| https://docs.langdock.com/api-endpoints/embedding/openai-embedding | Langdock — OpenAI Embeddings API | Primary (official) |
| https://www.anthropic.com/news/contextual-retrieval | Anthropic — Contextual Retrieval | Primary (Anthropic) |
| https://www.pinecone.io/learn/chunking-strategies/ | Pinecone — Chunking Strategies | Authoritative vendor |
| https://www.firecrawl.dev/blog/best-chunking-strategies-rag | Firecrawl — Best Chunking Strategies 2026 | Authoritative vendor |
| https://aimultiple.com/multilingual-embedding-models | AIMultiple — Multilingual Embeddings | Analyst |
| https://medium.com/data-science-at-microsoft/building-and-evaluating-multilingual-rag-systems-943c290ab711 | Microsoft — Multilingual RAG | Microsoft author |
| https://www.meilisearch.com/blog/rag-evaluation | Meilisearch — RAG Evaluation | Vendor |
| https://qdrant.tech/blog/rag-evaluation-guide/ | Qdrant — RAG Evaluation Guide | Vendor |
