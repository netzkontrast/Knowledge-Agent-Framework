# A2 — Cross-File Coherence Ledger (M07 Contradiction Log)

Scope: IW "Little Data" knowledge base, files 00-18 under
`examples/iw-little-data/langdock-deploy/knowledge/`. Lens: hunt for cross-file
numeric/factual contradictions, glossary drift, and persona/HITL violations.

## Summary

The structural / platform-limit facts are remarkably consistent: file caps
(Library 1.000 / Synced 200, max 5 Synced/Agent), file-size caps (PDF/DOCX/PPTX
256 MB, MD/TXT 10 MB, CSV/XLSX 30 MB, images 20 MB, ~8 Mio Zeichen/Datei), RAG
mechanics (~2.000-char Chunks, 1536-dim Embeddings, k=50, 1 Chunk/Datei/Query),
System-Prompt 40.000 Zeichen, Konversations-Starter 20 × 255 Zeichen, Memory 50
Einträge, Workflow 2.000-Schritte-Stopp, Workspace 500 €/Monat all agree across
files 00/02/03/06/07/15. The glossary (15) is faithful to its cited source files.
The real problems are **model prices and the integration count**: the persona
(13) and the marketing-praxis file (09) quote different euro figures than the
canonical cost file (07), and 09 states an Opus price that is ~3.3x too low. HITL
discipline holds everywhere — no outward action is promised "vollautomatisch".

Top findings (severity-ranked):

| topic | files involved | severity | the contradiction (both sides) | suggested canonical value / fix |
|---|---|---|---|---|
| Opus input price | 07 vs 09 | [C] | 07 (canonical cost table): Opus 4.8 = "€14,00" / "circa €14,00 pro 1M Input-Tokens" (multiplier 8.0x). 09 line 39: "Opus (€4.30/1M In)". | A user budgeting from 09 would underestimate Opus cost ~3.3x. Use **€14,00/1M** (07). Fix 09. |
| Sonnet 4.6 input price | 07 vs 13 | [C] | 07: "Sonnet 4.6 | 3.1x | €2,75" / "circa €2,75 pro 1M Input-Tokens" (also €2,75 in the prompt at 07:746). 13 lines 109 & 590: "Sonnet 4.6 (€2,58/M)". | Persona quotes a price that contradicts its own cited source (13 cites "07-modelle-und-kosten"). Use **€2,75/1M**. Fix 13 (both spots). |
| Flash/Default model input price | 07 vs 09 vs 13 | [M] | 07: Flash/Haiku 4.5 = "€0,23" (0.8x), GPT-5.2 = "€0,26" (1.0x). 09: "Gemini Flash (ca. €0.26/1M In)". 13 lines 109/590: "Gemini 2.5 Flash (€0,26/M Input)". | Flash is being quoted at the GPT-5.2 (€0,26) price; canonical Flash/Haiku price is **€0,23**. Either correct 09/13 to €0,23 or clarify which model the €0,26 refers to. |
| Native integration count | 00 & 05:14 vs 05:1549 | [C] | 00 line 22: "über 60 native Konnektoren". 05 line 14: "über 60 nativen Integrationen". 05 line 1549 (the file's own reconciliation note): "Belastbar ist '55+ native Integrationen mit rund 754 Actions'; … '60+' [ist] das deutsche Master-Inventar … die exakte Zahl ist offiziell nicht dokumentiert". | A user could cite "60+" as fact. Align to the reconciled value **"55+ native Integrationen (~754 Actions)"** or add the same caveat in 00 and 05:14. |
| Workflow per-run budget unit | 06 vs 07 | [C] | 06 line 78: "Workflows sind standardmäßig auf **25 Euro pro Lauf** … limitiert". 07 lines 107 & 113: "Setze ein Workflow-Budget (**Standard €25/Monat**)" / "Workflow-Budget kann das Workspace-Limit (€500) ausreizen". | Per-run vs per-month is a material unit mismatch a user would act on. Decide the true default (likely **€25 per run / per execution**) and make 07 consistent. |
| Deep Research duration | 06 vs 09 | [m] | 06 lines 1154 & 1460: Deep-Research-Läufe "5–20 Minuten". 09 line 39: "Dauer: 5-30 Minuten"; 09 line 200: "bis zu 30 Minuten". | Pick one range (e.g. **5–30 Minuten**) and use it in both; or state "je nach Umfang". |
| Deep Research limit phrasing | 00/15/17 vs 09 | [m] | Canonical (00 line 54, 15 lines 30/250, 17 line 190): "15 Ausführungen **pro Nutzer** in 30 Tagen". 09 line 39: "15 Runs/Monat" (drops "pro Nutzer", and "/Monat" ≠ "/30 Tage"). | Harmonize 09 to "**15 pro Nutzer / 30 Tage**" — the "pro Nutzer" qualifier is load-bearing. |
| EU AI Act in-force / Art. 50 date | 00 vs 09 vs 08 | [m] | 00 line 496: "EU AI Act tritt **2026-2027** in Kraft"; 00 line 618: "ab **2027** … relevant". 09 line 39: "Transparenzpflichten **ab August 2026**". 08 lines 235/243/1288: treats the Art.-50 date as web-search-verify-only ("Aug 2026 / Dez 2026 Grandfathering"), correctly date-sensitive. | Date is genuinely volatile; the safest fix is to remove hard dates from 00/09 prose and defer to the 08-style "verify via Web-Search against primary source" pattern, or align all to the same Art.-50 stichtag. |
| UWG provision cited (§5 vs §5a) | 02 vs 00/04/08 | [m] | 02 lines 877/884/942/944: "UWG § 5" (irreführende Handlungen / Superlative). 00/04/08: "UWG § 5a" (irreführende Unterlassungen / Kennzeichnungspflicht). | Likely intentional (two distinct provisions), but verify each citation matches its claim: §5 = misleading acts, §5a = misleading omissions/labeling. Not a contradiction if used correctly. |

## Checks that PASSED (no contradiction found)

- **File caps**: Library 1.000 (00, 03, 06, 15) and Synced 200 / max 5 per Agent
  (00, 15) — fully consistent.
- **File-size + format caps**: 256 MB (00, 03, 06, 13), 30 MB CSV (00, 02, 03, 09,
  13, 15, 17), 10 MB MD/TXT, 20 MB images, ~8 Mio Zeichen/Datei (03) — consistent.
- **RAG internals**: ~2.000-char Chunks, 1536-dim Embeddings, k=50, 1 Chunk/Datei/
  Query — identical in 03, 15 (glossary), and 13 (persona directives). Glossary
  entries (Chunk, Chunking, Embedding, Vektorsuche, Per-Document-Cap, Synced Folder,
  Library Folder, Kontextfenster) all match their cited source files. No glossary
  drift detected.
- **Agent-config caps**: System-Prompt 40.000 Zeichen, 20 × 255-Zeichen Conversation
  Starters, Memory 50 Einträge, Workflow 2.000-Schritte-Stopp, Workspace 500 €/Monat
  — consistent across 00, 02, 06, 07.
- **HITL discipline**: No HITL violation found. Every outward action (E-Mail/DM/PR
  send, CRM sequence, Slack post, signage publish) is gated by an explicit HITL /
  "kein automatischer Versand" step (esp. throughout 04, plus 05, 14). The
  "vollautomatisch" mentions (06 CMS-sync/SEO-batch, 04:1163 content-sync, 10:56
  Briefing-Auto-Fill into Canvas) are all internal/processing actions with no
  outward send, so they do not breach the discipline.
- **Pricing tiers**: Trial → Standard €25/Nutzer/Monat → Max €99/Nutzer/Monat →
  Enterprise (custom) — consistent in 07 and 13.
- **Persona voice**: 11/13 anti-patterns (no emoji, no "ich" except re: own params,
  "Aufschlussreich" not "Faszinierend", berät-aber-konfiguriert-nicht, no
  unbelegte Features) are not contradicted by prose in 00-10.

## Note on price volatility

File 07 explicitly stamps all prices/model names "Stand Mai 2026 … gegen
langdock.com/models gegenprüfen". The price disagreements above are therefore
maintenance-drift between the canonical table (07) and copies that were authored
or updated separately (09, 13). Recommended fix: treat 07 as the single source of
truth for every euro figure and have 09/13 reference it rather than restate
numbers, or at minimum re-sync the three contradicting figures.
