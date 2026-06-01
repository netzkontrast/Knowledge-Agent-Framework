---
name: writing-langdock-knowledge-files
description: Use when authoring a markdown file destined for a Langdock Knowledge Folder. Enforces single-topic-per-file, chunk-aware H2 sizing, scenario-driven authoring, and pre-upload spot-check testing. Built specifically for the "little-data" agent project.
---

# Writing Langdock Knowledge Files — Project Skill

This skill is the operational discipline for authoring every `.md` file that lands in `examples/iw-little-data/langdock-deploy/knowledge/`. Treat it as rigid for this project; deviations break retrieval.

The full methodology with sources is in `data/restructured/01-knowledge-authoring-methodology.md`. This skill is the action-oriented distillation.

## The one rule that drives every other rule

**Langdock's Knowledge Folder Search API returns only the highest-scoring chunk per document.** Every other rule follows from this. It means:
- One file = one topic, because only one chunk per file can win a query.
- Two competing topics in one file = the weaker one becomes invisible.
- A "big index file" of scenarios is a single point of failure — scatter scenarios across the files that own their topic.

## Hard constraints (do not exceed)

| Constraint | Value | Source |
|---|---|---|
| File size (.md) | ≤10 MB | Langdock Supported File Types |
| Characters per file | ≤8 000 000 | Langdock Supported File Types |
| Files per uploaded folder | ≤1 000 | Langdock Folders |
| Chunk size | 2 000 chars | Langdock Knowledge Basics |
| Retrieval k | up to 50 chunks per query | Langdock Search API |
| Per-document cap | **1 chunk per file per query** | Langdock Search API |
| Embedding dimension | 1 536 | Langdock Vector DBs |

## The 10 commandments (read every time)

1. **One topic per file. One H1 per file.** H1 names the topic in plain nouns.
2. **One sub-topic per H2 block, sized 1 200–1 800 characters.** Fits one chunk.
3. **Repeat the noun, never the pronoun.** "Brand Voice" / "Markenstimme" / "Conversation Starter" appears in every paragraph that talks about it.
4. **Open every file with an intro box.** Format:
   ```
   > **What this file covers:** [3 bullets]
   > **What this file does NOT cover:** [2 bullets + which file owns each]
   ```
5. **Seed both languages in the same chunk.** First mention: `Markenstimme (Brand Voice)`. After that use whichever the audience queries with.
6. **No cross-refs.** Replace "see section X" with the actual content. Repeat facts across chunks if needed.
7. **Tables for fact lookups, prose for nuance, bullets for parallel options.** Every table ≤30 rows and ≤1 500 chars (stay in one chunk).
8. **Filenames are kebab-case, descriptive, ≤50 chars.** `agents-konfiguration.md`, not `02.md`.
9. **No YAML front matter, no HTML, no footnotes.** Langdock doesn't document parsing them; treat them as content that pollutes the first chunk.
10. **Evaluate before deploying.** Run 20 queries via the Search API. Expected chunk must rank top-1. Rewrite anything that doesn't.

## Required file skeleton

```markdown
# [Topic Title] — Klartext für Marketing-Direktoren

> **Was diese Datei abdeckt:** [3 bullets — specific nouns]
> **Was diese Datei NICHT abdeckt:** [2 bullets, each pointing to the file that owns the topic]

## [Subtopic 1 — repeats the topic noun]

[1 200–1 800 chars of self-contained content. First sentence names the sub-topic
explicitly. German is primary; English Langdock terms parenthetical on first
mention. Tables where dense lookups; prose where nuance.]

## [Subtopic 2 — repeats the topic noun]

[Same shape as above.]

...
```

## Scenario-driven authoring loop

Use this loop for every file:

1. **List the queries the file must serve.** Pull from the marketing scenario corpus. Write each query in the German marketing director's actual vocabulary (Du/Sie, "Wie", "Was", "Welches"). Aim for 5–15 queries per file.
2. **Draft an H2 per query cluster.** Multiple queries that a single chunk can serve = one H2.
3. **Author each H2 chunk-aware.**
   - First 200 chars contain ≥3 content nouns from the query
   - Topic noun repeats in every paragraph
   - Synonym seeding on first mention
   - Tables ≤30 rows
   - 1 200–1 800 chars total
4. **Update the coverage matrix.**
   ```
   | Scenario | Query DE | Query EN | Target file | Target H2 |
   ```
5. **Run the 10-commandment checklist** (below) before saving.

## Pre-upload checklist

Run on every file before uploading to the Knowledge Folder.

**Structure**
- [ ] Exactly one H1 at top
- [ ] H1 names the topic in plain nouns
- [ ] Intro box (`Was diese Datei abdeckt / NICHT abdeckt`) present
- [ ] All H2 blocks 1 200–1 800 chars
- [ ] No H4 or deeper headings
- [ ] No YAML front matter, no HTML, no footnotes

**Vocabulary**
- [ ] Topic noun in every paragraph
- [ ] German + English term seeded on first mention
- [ ] Zero "see section X" / "as mentioned above" / "wie oben" cross-refs
- [ ] First sentence of each H2 names the sub-topic explicitly

**Coverage**
- [ ] File maps to ≥1 row in the coverage matrix
- [ ] No fact duplicated with another file
- [ ] No two chunks in this file compete for the same query

**Tables and lists**
- [ ] Every table ≤30 rows and ≤1 500 chars
- [ ] No table split by an inner heading
- [ ] Bullets are ≥1 sentence (stand alone)

**File metadata**
- [ ] Filename kebab-case, descriptive, ≤50 chars, ends in `.md`
- [ ] File size <10 MB; total chars <8M

**Testing**
- [ ] ≥2 representative queries from the matrix tested via Search API
- [ ] Expected chunk ranks top-1 (similarity ≥0.5)
- [ ] One German-only and one code-switched query both retrieve correctly

## Anti-patterns (red flags — fix immediately)

| Red flag | Why it breaks | Fix |
|---|---|---|
| "Welcome to this knowledge file..." in opening | wastes highest-magnet position | replace with intro box |
| `it`, `this`, `the above` in chunk body | pronoun loses antecedent after chunking | restate the noun |
| `> See section 4.2 for details` | dead reference after chunking | inline the content |
| One H2 block >1 800 chars | spills into 2 chunks, weakens both | split into two H2s |
| Two H2 blocks on near-identical topics | per-document cap suppresses one | merge or move one to another file |
| YAML `---` block at top | likely treated as content, pollutes first chunk | remove |
| Table 50+ rows | gets split across chunks, breaks relationship | split into multiple tables under H3s, or move to prose |
| H1 like "🚀 The Ultimate Guide" | weak retrieval signal, not noun-based | replace with plain-noun H1 |
| Scenario in a "scenarios" mega-file | per-document cap suppresses 99% of scenarios | scatter scenarios into the file that owns their topic |

## When in doubt — escalate to research

If you encounter a question this skill doesn't answer, check `data/restructured/01-knowledge-authoring-methodology.md` for the full sourced methodology. If that doesn't cover it, flag the question in the spec and ask before guessing — RAG retrieval failures are silent and expensive to debug after deployment.
