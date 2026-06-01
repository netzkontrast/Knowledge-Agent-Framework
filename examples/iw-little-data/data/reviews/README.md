# Knowledge-File Reviews

> Output destination for Stage-1 Panel-Review sessions. One review file per knowledge file.
> Each Jules review session writes to `little-data/data/reviews/<file_name>.review.md`.

## Stage Pipeline

```
Stage 0  Jules Phase-2 dispatch       ⏳ in progress (8 files in-flight + 3 dups + 1 improve)
Stage 1  Panel-Review sessions        prompts ready (this folder is the output)
Stage 2  Cross-Ref + Advanced improve prompts queued (apply review notes + 50 advanced + cross-refs)
```

## Per-File Output Format

Each review markdown has this structure:

```markdown
# Review: ${FILE_NAME}

## Summary
- Scenarios reviewed: NNN
- KEEP: NN | IMPROVE: NN | DROP: NN
- Common quality patterns (≤5 bullets)
- File-level cross-reference suggestions

## Per-Scenario Review

### S-XX-NNN <Scenario-Title>

**Panel (3 most relevant experts):**
- **<Expert>:** <1-2 lines critique>
- **<Expert>:** <1-2 lines critique>
- **<Expert>:** <1-2 lines critique>

**Critical-Thinking Test:** Apply M0X — does this scenario survive the lens?

**Verdict:** KEEP / IMPROVE / DROP
**Rationale:** <1 line>
**Improvement-Notes (when IMPROVE):** <specific edits>
**Cross-Refs:** <files/scenarios this connects to>

### S-XX-NNN ...
```

## Naming Convention

- `00-langdock-uebersicht.review.md`
- `01-chat-und-prompts.review.md`
- … etc, mirroring the source file basenames.

## Reading Order

When the Stage-2 improvement session for a file runs, it reads (in order):
1. The current knowledge file (`langdock-deploy/knowledge/<file_name>.md`)
2. Its review (`data/reviews/<file_name>.review.md`)
3. The 50 Advanced Scenarios (`data/research/50-advanced-scenarios-julia-lens.md`) — only the rows that target this file
4. The Coverage Matrix (`data/coverage-matrix.md`) — for cross-file anchor strings

…then folds all four into a refined version of the knowledge file.
