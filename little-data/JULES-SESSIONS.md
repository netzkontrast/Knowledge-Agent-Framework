# Jules Sessions Tracking

> **Updated:** 2026-05-31 16:36 UTC — auto-loop progress
> Sessions tracking + recovery status. Updates as sessions complete or need probing.

## Active Sessions (Phase 0.5 + Phase 2)

| File | Session ID | State | Action Needed | Notes |
|---|---|---|---|---|
| 11-persona-core | 2322352634324659721 | COMPLETED (silent-fail) | ✅ recovered locally | Patch applied via capability_jules_apply_patch; 315 KB committed |
| 05-integrationen-und-mcp | 12663632701708472741 | COMPLETED (silent-fail) | ✅ recovered locally | Patch applied; 150 KB / 104 scenarios committed |
| 12-persona-julia-modus | 15496046507504287600 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 00-langdock-uebersicht | 13929873387924290336 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 01-chat-und-prompts | 12110095044646860814 | IN_PROGRESS | wait | CT-Method correction sent |
| 02-agenten-konfiguration | 10925420439855356541 | IN_PROGRESS | wait | CT-Method correction sent |
| 03-wissensordner-und-rag | 378386566962702816 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 06-api-und-deployment | 10547985932128837211 | IN_PROGRESS | wait | Plan approved + CT-Method correction sent |
| 06-api-und-deployment (dup) | 16019328910196999458 | IN_PROGRESS | wait | Accidental duplicate dispatch (SSL retry) — will pick first to complete |
| 07-modelle-und-kosten | 16838785051756306806 | IN_PROGRESS | wait | Plan approved earlier this loop |
| 08-sicherheit-und-governance | 16400278012158270047 | IN_PROGRESS | wait | CT-Method correction sent |
| 09-marketing-praxis | 6159499177946303116 | IN_PROGRESS | wait | CT-Method correction sent |
| 10-prompts-und-skills | 4982698350623068125 | IN_PROGRESS | wait | CT-Method correction sent |
| 04-workflows | 1457972172489118101 | IN_PROGRESS | wait | Retry after first SSL fail; CT-Method correction sent |

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

