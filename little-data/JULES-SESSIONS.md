# Jules Sessions Tracking

> **Updated:** 2026-05-31 19:30 UTC — final session-end snapshot
> Sessions tracking + recovery status. Loop stopped; resume from this state.

## File-Delivery Snapshot

**13/14 knowledge files committed.** Only 12-persona-julia-modus still IN_PROGRESS (Jules 15496046507504287600).

Committed at branch `claude/friendly-ride-eRsPr` head **d2eaefd**:
- ✅ Hand-crafted (10 scenarios each, pivot quality): 00, 02, 03, 06, 09-IMPROVE, 10
- ⚠ Templated (100+ scenarios, Stage-2 trim queued): 04, 05, 07, 08, 11
- ✅ Templated baseline + 4 PR fixes: 01
- ✅ Hand-crafted (10 D-XX H2 sections, anchored): 13

**Stage-1 Panel-Reviews committed: 3/5** (01, 04, 11) plus cross-reference review of all 13 files in `little-data/data/reviews/CROSS-REFERENCE-REVIEW.md`.

## Strategic Pivot 2026-05-31 17:35 UTC

- **Old target:** ≥100 scenarios per file.
- **New target:** 10 hand-crafted scenarios per file initially.
- **Schema:** check_schema.sh now requires ≥10 (was ≥100).
- **Path to 100:** Review-Sessions add 10 more (→ 20); Improve-Sessions can extend toward 100 with cross-refs + Advanced Julia-Lens scenarios.

## Jules Automation Mode

New dispatches use `automation_mode="AUTO_CREATE_PR"` so partial work always lands as a PR even on session timeout. Found in `/root/.claude/plugins/marketplaces/agency/AGENCY_PROTOCOL.md` — pass to `capability_jules_dispatch` to opt-in.

## Pull Requests on origin

**15 open Jules PRs** (PR #2 through #16) target `claude/friendly-ride-eRsPr`. Most duplicate content already cherry-picked into the branch. **PR #14** (11-review) was merged via squash. **PR #15** (09-IMPROVE) content cherry-picked; PR remains open. PR #1 is the main PR (claude branch → main).

Codex-bot review comments collected on PRs #3, #4, #5, #7, #9, #14 — catalogued in `little-data/QUALITY-NOTES.md` for Stage-2 actioning.

## Active Sessions (Final Snapshot 19:30 UTC)

### Phase 0.5 + Phase 2 Authoring

| File | Session ID | Final State | Notes |
|---|---|---|---|
| 11-persona-core | 2322352634324659721 | ✅ committed | 315 KB / 100 scenarios; review found 1 PTCF template + 7 IDENTICAL steps across all 100 — Stage-2 P0 re-author |
| 01-chat-und-prompts | 12110095044646860814 | ✅ committed + PR-fixed | 178 KB / 104 scenarios; 4 PR-feedback fixes applied (commit 137bd23) |
| 04-workflows | 1457972172489118101 | ✅ committed (templated) | 215 KB / 104 scenarios; trigger monoculture (104× "Identifiziere Trigger-Moment"); Stage-2 trim |
| 06-api-und-deployment | 10547985932128837211 | ✅ committed (hand-crafted) | 32 KB / 10 scenarios — STRONGEST file (CISO/FinOps/BYOC) |
| 05-integrationen-und-mcp | 12663632701708472741 | ✅ committed (templated) | 150 KB / 104 scenarios; WORST quality (duplicate capability tags, duplicate Fallstricke); Stage-2 P0 rewrite |
| 09-marketing-praxis (IMPROVE) | 2571051902290894329 | ✅ committed via PR #15 cherry-pick | 38 KB / 10 hand-crafted post-IMPROVE; replaced original 104 partial |
| 09-marketing-praxis (original) | 6159499177946303116 | superseded | 197 KB partial — replaced by IMPROVE session content |
| 00-langdock-uebersicht | 13929873387924290336 | ✅ committed via cherry-pick | 25 KB / 10 hand-crafted (Q4-Budget, Steelmanning, Pre-Mortem) |
| 02-agenten-konfiguration | 10925420439855356541 | ✅ committed via apply_patch | 34 KB / 10 hand-crafted (Diskonfirmation CI, Pre-Mortem, B2B-Eventmarketing) |
| 02-agenten-konfiguration (dup) | 10999694651575973712 | not needed | original delivered first |
| 03-wissensordner-und-rag | 378386566962702816 | ✅ committed via cherry-pick | 35 KB / 10 hand-crafted (Content-Hypothesen, High-Performer-Blogs) |
| 06-api-und-deployment (dup) | 16019328910196999458 | not needed | original delivered first |
| 07-modelle-und-kosten | 16838785051756306806 | ✅ committed (templated) | 315 KB / 105 scenarios; EUR prices wrong vs T6; Opus 4.7 vs 4.8 drift; "stray digit" bug; Stage-2 P0 drop all + reconcile |
| 08-sicherheit-und-governance | 16400278012158270047 | ✅ committed via cherry-pick (templated) | 197 KB / 104 scenarios = 8 titles × 13 repetitions; "Integrations" capability 21× violates §4.4 whitelist; Stage-2 P0 |
| 10-prompts-und-skills | 4982698350623068125 | ✅ committed via apply_patch | 34 KB / 10 hand-crafted (Q3-Redaktion, DMEXCO Pre-Mortem); M09/M11/M13 missing |
| 12-persona-julia-modus | 15496046507504287600 | **IN_PROGRESS** | last known state at session stop; resume by checking status + recovering side-branch if present |
| 13-data-agent-anweisungen-pro-thema | (authored directly) | ✅ committed | 14 KB / 10 D-XX anchored sections — written by hand because SSL persistent failure on Jules dispatch |

### Stage-1 Panel-Reviews

| File | Session ID | Final State | Notes |
|---|---|---|---|
| 01-chat-und-prompts | 14696926292292134433 | ✅ committed | 98 KB / 104 KEEP verdicts (commit b85700d) |
| 04-workflows | 17167903464270444929 | ✅ committed via recovery | 131 KB / 57K/34I/13D verdicts (commit 3827bef) |
| 11-persona-core | 1750944284028937567 | ✅ committed via PR #14 merge | 71 KB / step-count violation flagged |
| 05-integrationen-und-mcp | 10132845945659385030 | NOT delivered | session completed with empty patch; redirected away from script-generation but never pushed |
| 09-marketing-praxis | (never dispatched) | — | 400 PRECONDITION blocked all retry attempts |

### Pending Sessions for Resume

**Active when loop stopped:**
- `15496046507504287600` (12-persona-julia-modus) — IN_PROGRESS, check on resume

**Stage-2 improve sessions queued** (never dispatched):
- All 14 files have rendered improve-prompts at `little-data/tools/jules-prompts/<file>.improve.prompt.md`
- Stage-2 mandate: apply CROSS-REFERENCE-REVIEW findings + fold 50 Advanced Julia-Lens scenarios + cross-refs between files
- Use `automation_mode="AUTO_CREATE_PR"` to avoid silent-fail recovery work

## Resume Checklist for Next Session

1. `bash little-data/tools/jules-recover.sh 15496046507504287600` — pull File 12 if delivered
2. `git fetch origin && git branch -r` — check for new side-branches from File 12 session
3. Optionally re-dispatch File 12 with the same prompt + `automation_mode=AUTO_CREATE_PR` (SSL was flaky at session-end)
4. Run `bash little-data/tools/check_phase4.sh` for full validation snapshot
5. Stage-2 work plan: see `little-data/data/reviews/CROSS-REFERENCE-REVIEW.md` for prioritized P0/P1 actions per file
6. 15 open PRs on origin — most are duplicates already cherry-picked; can close or merge as housekeeping

## Pending Dispatch

| File | When | Why |
|---|---|---|
| 13-data-agent-anweisungen-pro-thema | After files 00-10 complete | Cross-references all other files; must wait |

## Recovery Pattern (silent-fail)

1. Session reports COMPLETED with has_outputs=true
2. Branch NOT on origin
3. Probe via capability_jules_message (≤2 attempts)
4. If still no push: capability_jules_apply_patch to compute file content
5. Extract via Python from patch JSON (auto-saved if large)
6. Write file directly to knowledge/ folder
7. Commit + push to origin from this branch

## Watchdog: knowledge file count monitor

Monitor running, polls every 60s. Pulls from origin to catch Jules pushes.
Stops when 14 files present in knowledge/.

