# A1 — Source-Grounding Audit (M01 Falsification + M06 Source Triangulation)

Scope: `examples/iw-little-data/langdock-deploy/knowledge/00–18.md`, triangulated against
`data/sources/` and `data/research/`. Read-only diagnosis. No knowledge file was modified.

## Summary

Overall grounding health is **good for platform mechanics, poor for one volatile cluster: pricing.**
The hard platform facts (RAG: 2.000-char chunks, 1536-dim, k=50, 1-chunk/query; file caps 20/200/1.000;
limits 256 MB / 8 M Zeichen / 24 h sync / 5 synced folders; API 500 RPM / 60.000 TPM / 100 s timeout /
HTTP 524; budget €500/Monat, €25/Lauf, alerts 50/75/90 %; Fair Usage 250 Nachrichten/weekly) all
**trace cleanly** to `sources/08`, `01`, `03`, `05`, `06`, `12`, `13`. Files 03 and 06 are exemplary —
06 even hedges volatile numbers with "vorab verifizieren."

The one **Critical** failure is the **model-price/tariff cluster in file 07**: a per-1M-token EUR price
column (€0,14 … €55,00) and a **Max-Tarif at €99/Nutzer/Monat** that appear in **no** source or research
file, plus an **Opus 4.8 = 8.0x** multiplier that **contradicts** the source (source says **Opus 4.7 = 8.0x**;
the inventory explicitly states per-model credit multipliers are *not published*). The sources give tiers as
**€20–€25/user/month** and a **€449/workspace/month** workflow pack — never €99. These invented numbers have
**leaked into file 13** (persona directives), where they are even stamped "Quelle: 07-modelle-und-kosten" —
a false provenance trail — and with an **internal contradiction** (Sonnet 4.6 = €2,75 in 07 vs €2,58 in 13).
File 15's 4 `über IW-Recherche zu verifizieren` tags are correct, honest practice and not defects.

## Findings (severity-ranked)

| file | scenario-ID / line | sev | issue | suggested fix |
|---|---|---|---|---|
| 07-modelle-und-kosten | table L18–24 | [C] | Per-1M-token EUR price column (€0,14 / €0,23 / €0,26 / €0,45 / €2,75 / €14,00 / €55,00) appears in NO source or research file. Source `08` L264 explicitly: model credit multipliers/credit pricing "are not published." Invented numbers. | Drop the EUR column; keep only the multipliers (these ARE in `sources/06`,`03`). Or mark each price `[über Langdock-Preisliste zu verifizieren]`. |
| 07-modelle-und-kosten | L23 table; L42 | [C] | **Opus 4.8 = 8.0x** contradicts source: `sources/06` L24 + `03` L117 assign 8.0x to **Opus 4.7**. Opus 4.8 is newer (in research as a model name) but its multiplier is uncorroborated. | Either revert to Opus 4.7 = 8.0x (source-faithful) or footnote that the 4.8 multiplier is assumed pending Langdock confirmation. |
| 07-modelle-und-kosten | L86, S-MK-008 L224/226, L720, L987 | [C] | **Max-Tarif €99/Nutzer/Monat** invented. Sources give tiers only as **€20–€25/user/month** (`12` L23,L547) and **€449/workspace/month** workflow pack (`12` L559). No €99 anywhere. | Replace €99 Max with sourced figures (€449 workflow pack, €20–€25 seat) or mark `[Tarif-Preis verifizieren]`. The whole S-MK-008 ROI math (€448/Monat, €14.256/Jahr) rests on €99 and is therefore unsupported. |
| 13-data-agent-anweisungen | L113, L623 | [C] | Invented €99 Max-Tarif propagated into persona directives as fact ("Trial → Standard €25 → Max €99 → Enterprise"). | Correct once file 07 is fixed; persona must not assert the unsourced tier. |
| 13-data-agent-anweisungen | L109, L590 | [C] | Sonnet 4.6 priced **€2,58/M** here vs **€2,75/M** in file 07 — internal contradiction, and tagged "Quelle: 07-modelle-und-kosten" (a citation to an uncorroborated, non-matching number = false provenance). | Remove EUR figures from persona lines or align to a single verified source price; do not cite 07 for a number 07 itself invented. |
| 07-modelle-und-kosten | L18 table | [m] | Light tier lists **GPT-5.4 Mini** at 0.3x; multiplier 0.3x for that model not found in source (source baseline table starts at 0.8x Haiku). Model name itself IS in research. | Confirm 0.3x or footnote as estimate. |
| 07-modelle-und-kosten | S-MK-010 L244 | [m] | "Langdock hat im Mai 2026 Opus 4.8 und Gemini 3.5 Flash global automatisch aktiviert" — model names are in research, but the specific **Mai-2026 global-activation event** is not corroborated in sources. | Soften to undated ("nach dem letzten Modell-Rollout") or cite the activation source. |
| 02-agenten-konfiguration | 25 triggers (L106,125,143,162,181,481,500,519,537,556,575,594,613,631,649,668,687,706,725,744,763,781,800,819,838) | [M] | Triggers carry NO `(Quelle:` tag on factual scenarios — schema requires the Trigger to cite a source. Highest count of any content file. | Add `(Quelle: …)` to each factual trigger; verify the situation/limit each implies is sourced. |
| 04-workflows | 10 triggers (L90,108,126,144,162,180,198,216,234,252) | [M] | Every audited trigger lacks a `(Quelle:` citation. These are pure narrative situations; grounding of the workflow capability they assume is not pinned to a source. | Add source citations (workflow node types are in `sources/02`,`03`,`06`). |
| 07-modelle-und-kosten | 10 triggers (L100,118,136,154,172,190,208,226,244,262) | [M] | Triggers in the most price-sensitive file lack `(Quelle:` tags — compounds the invented-price risk. | Cite source per trigger; tie cost claims to `sources/06`/`12`. |
| 08-sicherheit-und-governance | 10 triggers (L56,75,95,114,133,152,171,190,209,228) | [M] | Legal/DSGVO/EU-AI-Act triggers (Art. 28, Art. 35, Art. 50, UWG) lack `(Quelle:` tags; legal claims especially need traceable corroboration. | Add citations; legal articles must point to a source or primary law reference. |
| 01-chat-und-prompts | L528, L566 | [m] | 2 triggers missing `(Quelle:`; both narrative (chain-of-thought, contract review) — lower factual-claim density. | Add citation for completeness. |
| 05-integrationen-und-mcp | L90 | [m] | 1 trigger missing `(Quelle:` (Confluence+Notion dual-source agent). | Add citation. |
| 11/12/13-persona | all triggers (40/31/39) | [m] | Persona-kind files: `S-LC/S-JL` reaction patterns lack `(Quelle:` — expected for persona kind (voice is researched in `research/06`,`14`), so not a content-grounding defect, but verify voice traits trace to persona canon. | No action unless a persona line asserts a platform FACT (see 13 [C] rows above — those DO need fixing). |
| 15-glossar-und-faq | L158,160,162,164 | [M] | 4 IW publication-format entries (iwd, IW-Kurzbericht, IW-Report, IW-Trends) carry `Stand: 2026-06 — über IW-Recherche zu verifizieren`. Genuinely unverified IW facts, correctly flagged — but still must be verified before 1.0. | Verify exact formats/frequencies against IW primary sources (iwkoeln.de) and replace the tag. Honest disclosure is good; leaving unverified facts in a shipped KB is the open risk. |

## Verification TODO (before v1.0-Beta)

1. **Langdock per-1M-token EUR prices** (€0,14 / €0,23 / €0,26 / €0,45 / €2,75 / €14,00 / €55,00) — confirm against Langdock's published price list or remove. Source `08` says these are not published. **Highest priority.**
2. **Max-Tarif = €99/Nutzer/Monat** — confirm or correct. Sources only support €20–€25 seat + €449 workflow pack. All S-MK-008 ROI math depends on this.
3. **Opus 4.8 multiplier** — source assigns 8.0x to Opus 4.7. Confirm whether Opus 4.8 inherits 8.0x or has a new value.
4. **GPT-5.4 Mini = 0.3x** (Light tier) — confirm the 0.3x figure.
5. **Sonnet 4.6 price €2,75 vs €2,58** — pick one verified figure and reconcile files 07 and 13.
6. **"Mai 2026 global activation of Opus 4.8 + Gemini 3.5 Flash"** (S-MK-010) — confirm this dated event or undate it.
7. **IW publication formats** (iwd, IW-Kurzbericht, IW-Report, IW-Trends — file 15) — verify exact format/frequency against IW primary sources; clear the 4 `zu verifizieren` tags.
