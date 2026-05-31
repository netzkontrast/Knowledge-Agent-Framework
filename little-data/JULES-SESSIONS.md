# Jules Sessions Tracking

> **Updated:** 2026-05-31 17:18 UTC — fold-and-finalize pattern active
> Sessions tracking + recovery status. Updates as sessions complete or need probing.

## File-Delivery Snapshot

5/14 knowledge files committed: 01, 04, 05, 09, 11. Files 05 and 09 are flagged for improvement (see `QUALITY-NOTES.md`).

## Active Sessions (Phase 0.5 + Phase 2)

| File | Session ID | State | Action Needed | Notes |
|---|---|---|---|---|
| 11-persona-core | 2322352634324659721 | ✅ recovered | done | 315 KB committed |
| 01-chat-und-prompts | 12110095044646860814 | ✅ recovered | done | 178 KB committed, strong quality |
| 04-workflows | 1457972172489118101 | ✅ recovered | done | 215 KB committed, strong quality |
| 05-integrationen-und-mcp | 12663632701708472741 | ✅ recovered ⚠ | improve-session pending | 150 KB committed; template-generated, needs Vorgehen + Fallstricke refinement |
| 09-marketing-praxis | 6159499177946303116 | ✅ recovered ⚠ | improve-session in-flight | 197 KB committed; scenarios truncated mid-prompt — see 2571051902290894329 |
| 09-marketing-praxis (improve) | 2571051902290894329 | IN_PROGRESS | wait | Re-dispatched, then redirected via message to FOLD existing file + fill missing fields |
| 12-persona-julia-modus | 15496046507504287600 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 00-langdock-uebersicht | 13929873387924290336 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 02-agenten-konfiguration | 10925420439855356541 | IN_PROGRESS | wait | First completion had empty patch; probe woke it, now IN_PROGRESS again |
| 02-agenten-konfiguration (dup) | 10999694651575973712 | IN_PROGRESS | wait | Race-winner dispatch as insurance |
| 03-wissensordner-und-rag | 378386566962702816 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 06-api-und-deployment | 10547985932128837211 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 06-api-und-deployment (dup) | 16019328910196999458 | IN_PROGRESS | wait | SSL-retry dup; plan approved 17:00 |
| 07-modelle-und-kosten | 16838785051756306806 | IN_PROGRESS | wait | Plan approved 16:30 |
| 08-sicherheit-und-governance | 16400278012158270047 | IN_PROGRESS | wait | CT-Method correction sent |
| 10-prompts-und-skills | 4982698350623068125 | IN_PROGRESS | wait | CT-Method correction sent |

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

