# Jules Sessions Tracking

> **Updated:** 2026-05-31 17:46 UTC — pivot active: 10 hand-crafted scenarios > 100 templated; all sessions told to AT LEAST PR-and-submit on stuck
> Sessions tracking + recovery status. Updates as sessions complete or need probing.

## File-Delivery Snapshot

6/14 knowledge files committed: 01, 04, 05, 06, 09, 11.

- File 06: NEW — 10 hand-crafted high-quality scenarios (CISO-Abwehr, FinOps, BYOC, RAG-Hygiene, Vercel-AI-SDK). Confirms pivot works.
- Files 05 + 09: 100+ templated scenarios — folded as-is; Stage-2 will trim to 10 best + add 10 Advanced.

## Strategic Pivot 2026-05-31 17:35 UTC

- **Old target:** ≥100 scenarios per file.
- **New target:** 10 hand-crafted scenarios per file initially.
- **Schema:** check_schema.sh now requires ≥10 (was ≥100).
- **Path to 100:** Review-Sessions add 10 more (→ 20); Improve-Sessions can extend toward 100 with cross-refs + Advanced Julia-Lens scenarios.

## Jules Automation Mode

New dispatches use `automation_mode="AUTO_CREATE_PR"` so partial work always lands as a PR even on session timeout. Found in `/root/.claude/plugins/marketplaces/agency/AGENCY_PROTOCOL.md` — pass to `capability_jules_dispatch` to opt-in.

## Active Sessions (Phase 0.5 + Phase 2 + Stage-1 Reviews)

### Phase 0.5 + Phase 2 Authoring

| File | Session ID | State | Action Needed | Notes |
|---|---|---|---|---|
| 11-persona-core | 2322352634324659721 | ✅ recovered | done | 315 KB committed |
| 01-chat-und-prompts | 12110095044646860814 | ✅ recovered | done | 178 KB committed, strong quality |
| 04-workflows | 1457972172489118101 | ✅ recovered | done | 215 KB committed, strong quality |
| 06-api-und-deployment | 10547985932128837211 | ✅ recovered | done | **32 KB / 10 hand-crafted** — confirms pivot pattern (CISO/FinOps/BYOC/RAG-Hygiene) |
| 05-integrationen-und-mcp | 12663632701708472741 | ✅ recovered ⚠ | improve-session pending | 150 KB / 104 scenarios; templated; will trim → 10 best + 10 Advanced in Stage-2 |
| 09-marketing-praxis | 6159499177946303116 | ✅ recovered ⚠ | improve in-flight | 197 KB; scenarios truncated — 09-IMPROVE session 2571051902290894329 redirected to pick top 10 |
| 09-marketing-praxis (improve) | 2571051902290894329 | IN_PROGRESS | wait | Plan approved 17:47: select top 10 → refine to production quality → push |
| 12-persona-julia-modus | 15496046507504287600 | IN_PROGRESS | wait | Pivot message + submit-when-stuck sent |
| 00-langdock-uebersicht | 13929873387924290336 | IN_PROGRESS | wait | Pivot message + submit-when-stuck sent |
| 02-agenten-konfiguration | 10925420439855356541 | IN_PROGRESS | wait | First completion had empty patch; probe woke it |
| 02-agenten-konfiguration (dup) | 10999694651575973712 | IN_PROGRESS | wait | Race-winner dispatch as insurance |
| 03-wissensordner-und-rag | 378386566962702816 | IN_PROGRESS | wait | Pivot message + submit-when-stuck sent |
| 06-api-und-deployment (dup) | 16019328910196999458 | IN_PROGRESS | wait | Original session delivered; this dup may also deliver — race-winner |
| 07-modelle-und-kosten | 16838785051756306806 | IN_PROGRESS | wait | Pivot message + submit-when-stuck sent |
| 08-sicherheit-und-governance | 16400278012158270047 | COMPLETED ⚠ | probe sent | Partial-modify patch unparseable; asked to push full file |
| 10-prompts-und-skills | 4982698350623068125 | IN_PROGRESS | wait | Pivot message + submit-when-stuck sent |

### Stage-1 Panel-Reviews (sc:sc-spec-panel × M01-M13)

| File | Session ID | State | Action Needed | Notes |
|---|---|---|---|---|
| 01-chat-und-prompts | 14696926292292134433 | ✅ recovered | done | **98 KB / 104 KEEP verdicts** — strongest file, 5 cross-ref suggestions logged |
| 04-workflows | 17167903464270444929 | IN_PROGRESS | wait | Plan approved 17:46; Analyze + Review + Execute |
| 05-integrationen-und-mcp | 10132845945659385030 | IN_PROGRESS | wait | Redirected away from mock-script generation; hand-authored 10 + bulk-DROP |
| 11-persona-core | 1750944284028937567 | IN_PROGRESS | wait | Dispatched with `automation_mode=AUTO_CREATE_PR` |
| 09-marketing-praxis | (pending) | NOT_DISPATCHED | retry | 400 PRECONDITION on dispatch; retry after Phase 2 finishes |

### Pending Stage-2 (Cross-Ref + Advanced Improvement)

Will run AFTER all Phase-2 + Stage-1 sessions are landed. Renderable via `python3 tools/render-jules-prompt.py --mode=improve --all`. Each one folds reviews + 50 Advanced Julia-Lens scenarios + cross-refs.

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

