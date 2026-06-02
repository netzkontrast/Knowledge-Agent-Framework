# Maintenance Log — Little Data

> **Purpose:** track knowledge-base freshness, system-prompt drift, and Langdock-platform changes that affect the deployed agent. Append-only log. Manual prune permitted only by repo maintainer.

---

## Review cadence

| Frequency | Action | Trigger |
|---|---|---|
| **Monthly** | Verify pricing + new features against docs.langdock.com/de and the Langdock Changelog. Update `07-modelle-und-kosten.md` if model prices changed. | Calendar (first Monday of month) |
| **Quarterly** | Re-run the 20-query spot-check + the 6 canary tests (INSTALL.md §6, incl. IW-routing + HITL) against the live Wissensordner. Re-run check_schema + check_grounding + check_chunks + check_coherence + check_prompt_size + format_marker_spacing. | Calendar (quarter start) |
| **Ad-hoc** | Targeted spot-check on impacted file when Langdock posts a major release. | Langdock release announcement |
| **Per-PR** | Run `tools/check_prompt_size.sh` + `tools/check_schema.sh --all` + `tools/check_coverage.sh` | GitHub Action on push (CI; to be added) |

---

## Staleness rules

| Artifact | Stale after | Action |
|---|---|---|
| Cited model price | 60 days | Re-verify against langdock.com/models before next user-facing release |
| Cited model name | 90 days | Check Langdock Changelog for replacements / deprecations |
| Cited Langdock feature limit (chunk size, k-value, file caps) | 180 days | Re-verify against docs.langdock.com FAQ |
| Cited Langdock integration availability | 90 days | Re-verify integration directory |
| Citation to a doc URL | always live | If URL 404s, locate the new canonical URL or remove the citation |
| Scenario in file 09 / file 10 referring to a workflow that no longer exists | per release | Update or remove the scenario |

---

## Log format

Append-only. One row per maintenance event. Format:

| Date | Reviewer | File(s) touched | Change | Reason | Verified by (URL or test) |
|---|---|---|---|---|---|

### 2026-05-31 — Initial baseline
- Reviewer: Build session (autonomous Claude + sc-deep-research subagents + Jules)
- Files touched: all (initial creation)
- Change: initial build per design spec
- Reason: project bootstrap
- Verified by: tools/check_prompt_size.sh (PASS), tools/check_schema.sh (pending Phase 2 completion)

### 2026-06-02 — v1.0 release
- Reviewer: Build session (autonomous)
- Files touched: knowledge base (20 files / 1,106 scenarios), AGENT_PROMPT, operator docs
- Change: R18–R20 schema + 9-type slot-6 + R7a Empfehlung base-wide; IW layer (14/16/17/18/19) shipped; operator docs brought current (15 starters, 6 canaries); spec-panel review CONVERGED
- Reason: graduate v1.0-Beta → v1.0
- Verified by: check_schema (20/20 PASS), check_grounding (clean), check_chunks (clean), check_prompt_size (14,456/15,000), format_marker_spacing (0)

---

## Open watchlist (continuously monitored)

`[UNVERIFIED]` items from research that should be confirmed when channel opens:

- **Embedding model identity.** Langdock states 1 536 dimensions but not the model. Likely OpenAI text-embedding-ada-002 or text-embedding-3-small (inferred from dimension). Worth confirming with Langdock support if cross-language retrieval quality matters.
- **Chunk overlap value.** Undocumented. Industry default 10-20%. Authoring at 1 200-1 800 char H2 blocks is robust to either.
- **Chunk boundary detection algorithm.** Whether Langdock splits on char count alone, paragraph boundaries, or markdown headings is undocumented. Defensive authoring is robust to all three.
- **YAML front matter handling.** Undocumented. Current rule: do not use.
- **Filename influence on retrieval ranking.** Undocumented. Use descriptive kebab-case for citation quality; do not rely on it for ranking.
- **Cross-language retrieval quality.** Untested. Verify via 20-query spot-check including code-switched queries.
- **LLM re-ranker prompt and model.** Undocumented. The fact that re-ranking exists is helpful; whether it can be steered is unknown.

---

## Escalation

If a maintenance review surfaces a behavior change that breaks ≥1 spot-check query:
1. Open a tracking issue.
2. Freeze deploys.
3. Run a targeted re-author pass on the affected file.
4. Re-run the full 20-query check.
5. Resume deploys when green.

---

## Phase 2 PRs (Jules sessions tracking)

To be populated when Phase 2 dispatches start. One row per file PR:

| File | Jules Session | Author PR | Reviewer Session | Review Notes | Merged |
|---|---|---|---|---|---|
| (pending Phase 0.5 + Phase 1.5 complete) | | | | | |
