# Knowledge-File Cross-Reference Review

> Generated 2026-05-31 by 5 parallel review subagents. Each file cross-checked against sources/extracts/research for content accuracy, schema discipline, and source alignment.
> See `little-data/data/reviews/` for per-file Stage-1 panel-reviews.

---

## Summary Table

| File | Scenarios | Quality | Source Alignment | Top Issue |
|---|---:|---|---|---|
| 00-langdock-uebersicht | 10 | Hand-crafted | **Strong** (T1, source 08) | "60+ Konnektoren" should be "55+" (T1:line 16, source 08 Appendix) |
| 01-chat-und-prompts | 104 | Templated baseline + 4 fixes | **Mixed** | S-CP-014 + S-CP-020 still violate CSV-Wissensordner rule (T1:line 88) |
| 02-agenten-konfiguration | 10 | Hand-crafted | **Strong** (T1, source 01 + 08) | Sharing-Modell missing "Disabled" lifecycle stage |
| 03-wissensordner-und-rag | 10 | Hand-crafted | **Strong** (T2, source 13) | Per-Document-Cap softened ("meist" vs strict T2:line 23); HTML/JSON file types missing |
| 04-workflows | 104 | Templated | Mixed (preamble strong, scenarios broken) | Trigger monoculture (104×"Identifiziere Trigger-Moment"), HITL over-prescribed |
| 05-integrationen-und-mcp | 104 | Heavily templated | Preamble strong, scenarios degraded | Duplicate capability tags ("X-Integration und X-Integration"), duplicate Fallstricke verbatim |
| 06-api-und-deployment | 10 | Hand-crafted | **Excellent** (source 02, source 08) | Missing Embedding API + dedicated deployment URL scenarios |
| 07-modelle-und-kosten | 105 | Templated | **Misaligned** | EUR prices don't match T6 catalog; Opus 4.7 vs T6's 4.8; "stray digit" Fallstricke bug |
| 08-sicherheit-und-governance | 104 | Templated | Preamble aligned with T6 | 8 titles × 13 repetitions; "Integrations" capability 21× (not in whitelist) |
| 09-marketing-praxis | 10 | Hand-crafted (post-IMPROVE) | **Strong** (source 05, T3) | Method coverage gaps: M02, M04, M06, M07, M11, M12, M13 not scenario-anchored |
| 10-prompts-und-skills | 10 | Hand-crafted | Aligned (T8) | Inline-Skills described but never exemplified in scenarios; M09/M11/M13 method gaps |
| 11-persona-core | 100 | Templated (combinatorial fill) | Voice STRONG, scenarios DEGENERATE | All 100 scenarios use IDENTICAL 7-step Vorgehen + 1 PTCF template; "keine erste Person" rule violated |
| 13-data-agent-anweisungen-pro-thema | 10 D-XX | Hand-crafted | **Strong** (all 10 D-XX align with target files 00-09) | D-09 lacks hard "NIEMALS…" Anti-Pattern; no Julia-Modus addressing notes |

---

## Per-File Findings (Synthesized from Subagent Reports)

### File 00 — langdock-uebersicht (Hand-crafted)

- ✅ Hard limits aligned with T1 (20 chat attachments, 1.000 Library / 200 Synced, 40K instructions, 80/500/255 char caps, €500 workflow budget, 2.000 step cap, 15 Deep Research/30d, Memory 50)
- ✅ Glossary correctly flags Memory as deactivated in Agents (T1:line 37)
- ⚠ **"über 60 native Konnektoren"** contradicts T1:line 16 ("55+ native; 754 actions") and source 08 Appendix ("55+ Pre-built Integrations")
- ⚠ Hard-Limits paragraph lacks **CSV-excluded-from-Wissensordner** rule (T1:line 88 + source 08 line 51) — novice could load CSVs into Library Folder
- ⚠ S-LU-001 step 5 "PDF-Export" inside Data Analyst — source 08 confirms `reportlab` available, but scenario doesn't enforce a chart/PDF artifact path

### File 01 — chat-und-prompts (Templated + 4 PR fixes applied)

- ✅ Memory-vs-Agent block (lines 47-53) correctly fixed (matches T1:line 37, source 08:line 32)
- ✅ PTCF + Few-Shot align with source 01:lines 83-93
- ⚠ **S-CP-020** (line 379) "Data Analyst (für Zip-Datei mit allen Assets)" — Data Analyst has no internet (source 01:line 69), processes CSV/XLSX/JSON, not zip archives. **Mechanically wrong.**
- ⚠ **S-CP-014** (line 282) puts "Taxonomie-Baum als Text oder CSV" upload into Wissensordner — conflicts with file 03's rule and T1:line 88
- ⚠ Scenario sprawl: 104 templated entries create retrieval competition under per-document cap (T2:line 23); ~180 KB only ONE chunk surfaces per query → many strategic scenarios never retrieved

### File 02 — agenten-konfiguration (Hand-crafted)

- ✅ Strong source alignment (T1:lines 12, 198-203 + source 08:lines 49-53, 75 confirm 40K instructions / 80 / 500 / 20×255 / 5-per-agent / 500 RPM)
- ✅ Data Analyst 30 MB Python sandbox + Wissensordner-exclusion language matches T1:line 88 + source 01:lines 50-52
- ⚠ Sharing-Modell paragraph (line 66) lists Individual/Group/Workspace + Verified/Highlighted but omits **"Disabled"** lifecycle stage (T1:line 43, source 08:line 218)
- ⚠ API throughput (line 88) names 500 RPM but missing 60.000 TPM cap + 100s non-streaming HTTP 524 timeout (T1:lines 165-169) — directors misjudge throughput
- ⚠ S-AK-009 uses "Subagents" — T1:line 67 flags subagent nesting depth as undocumented gap; scenario raises expectations platform can't guarantee

### File 03 — wissensordner-und-rag (Hand-crafted)

- ✅ 2.000-char Chunks, 1536-dim Embeddings, k=50, 1.000/200/5-per-agent, 256 MB, 30 MB/CSV-exclusion, 24h sync, Per-Document-Cap all match T2:lines 9-23 + source 13:lines 14-20
- ⚠ RAG-Mechanik (line 40): "Top-50 ... etwa 300 Wörtern" — missing aggregate **100K-char cap** per query (source 01:line 18)
- ⚠ Per-Document-Cap (line 44) softened: "meist nur einen einzigen Text-Block" — T2:line 23 quotes Langdock API as strictly "only the highest-scoring chunk per document"
- ⚠ File-Type-Matrix (line 28) names .md/.txt 10 MB but JSON (also 10 MB, T2:line 47) and HTML (T1:line 87) are missing — directors with HTML/JSON brand-rules get inconsistent advice

### File 04 — workflows (Templated, 104 scenarios)

- ✅ Architecture preamble (lines 14-82) aligns with source 02 (workflow DAG, structured outputs, MCP governance) and source 08 (HITL node type, workflow budgets)
- ❌ **Trigger monoculture confirmed (PR #7 flag valid):** Step 1 verbatim "Identifiziere den präzisen Trigger-Moment in [Tool]" in ALL 104 scenarios
- ❌ **HITL over-prescribed:** Step 4 "Integriere zwingend einen HITL-Node" repeated 104× — contradicts source 08:line 118 ("destructive write actions" only). Read-only analytics scenarios (S-WF-001 falsification, S-WF-014 SEO) don't need HITL
- ❌ Template substitution breaks German: S-WF-004 "Content-Marketing: Classes (via Workflow)", S-WF-008 "Kriterien" — concept-word substitution produces ungrammatical titles
- ❌ Coverage gaps: No Code Node (source 02:line 136, source 08:line 58), no HTTP Request Node (source 02:line 135), no Form-Trigger scenarios

### File 05 — integrationen-und-mcp (Heavily templated, 104 scenarios — WORST)

- ✅ MCP-Client vs MCP-Server disambiguation **correct** (line 34/38, matches source 02:lines 89/110)
- ⚠ "60+ native Integrationen" inflates source 08's "55+" (line 128, known T1:line 238 discrepancy)
- ❌ **Severe templating:** Steps use shuffled abstract verbs ("Du synthetisiere die Compliance-Richtlinien, um Anomalien zu identifizieren") with no relation to integrations/MCP
- ❌ **Capability tag bugs:** S-IM-007 "DeepL-Integration und DeepL-Integration"; S-IM-013 "Wissensordner und Wissensordner"; S-IM-016 "Statista-Integration und Statista-Integration" — template-generation defect
- ❌ **Duplicate Fallstricke verbatim:** S-IM-001 line 66-67, S-IM-004 line 122-123, S-IM-005 line 143-144 — violates "mind. 2 spezifisch"
- ❌ Coverage gaps: Custom Integration Builder mentioned in preamble (line 42) but no scenario; no OAuth-token-binding scenarios (source 02:line 58); no `.meta({format:'file'})` MCP file handling (source 02:line 105 / T1:line 134)

### File 06 — api-und-deployment (Hand-crafted, 10 scenarios — STRONGEST)

- ✅ **Excellent source alignment** throughout
- ✅ S-API-001 uses 500 RPM/60K TPM correctly (line 105, source 08:lines 159-160)
- ✅ S-API-002 Static IP `4.185.103.44` cited verbatim (line 119, source 02:line 160)
- ✅ S-API-007 BFF/CORS matches source 02:line 40 and source 04:line 23
- ✅ S-API-006 BYOC pitch matches source 02:line 166
- ✅ API capability whitelist honored (only Completion/Agent/Knowledge Folder/Usage Export/Audit Logs/Integrations APIs; no invented endpoints)
- ⚠ S-API-009: Assistants API deprecation date missing (source 08:line 136 = April 30, 2026)
- ⚠ S-API-010: Audit Logs pagination correct (50/Req, T1:line 217) but confuses Audit Logs (admin) with chat-content logs
- ⚠ Coverage gaps: No Embedding API or Vector-DB BYOK (source 02:lines 18, 50); no dedicated deployment URL `<deployment-url>/api/public` (source 02:line 12); no SCIM/Entra `aadOptscim062020` gotcha (source 02:line 156)

### File 07 — modelle-und-kosten (Templated, 105 scenarios)

- ✅ Multiplier table (0.3x/0.8x/1.0x/1.5x/3.1x/8.0x/24.0x) matches source 06 / source 03 §9
- ✅ Workspace-Limit €500/month matches T6 §6 + source 03 §9
- ❌ **EUR prices wrong:** Scenarios use €0.14/0.23/0.26/0.45/2.75/14/55 (input-only); T6 catalog says Haiku 4.5 €0.86, Sonnet 4.6 €2.58, Opus 4.8 €4.30
- ❌ **Model-version drift:** File names "Opus 4.7"; T6 says **Opus 4.8**
- ❌ **Stray-digit bug:** Fallstricke text like "...Streuverlusten bei der Ausspielung 0" — generator artifact left in
- ❌ BYOK Workspace-Limit "adjustable to €100k" (T6) omitted
- 💡 **Recommendation:** Stage-2 — drop all 105 templated S-MK scenarios; keep ONLY the 8-section preamble (lines 12-92) which covers the entire domain
- 💡 Most-concrete scenarios worth surviving Stage-2: **S-MK-100** (Google AI Overviews), **S-MK-103** (Gewinnspiele Teilnahmebedingungen), **S-MK-104** (ICP-Abweichung Sales/Marketing)

### File 08 — sicherheit-und-governance (Templated, 104 scenarios — SECOND-WORST after 05)

- ✅ DSGVO + EU-Hosting aligned with T6 §2 + source 03 §2
- ✅ ISO 27001 (source 06), SOC 2 Type II (T6 only — sources 03 + 06 silent), Zero-Data-Retention (source 09 DSGVO/DSK)
- ✅ Microsoft Azure EU-Region (line 14) confirmed by T6 §8 ("EU Azure, logically isolated")
- ✅ SCIM `?aadOptscim062020` quirk matches source 06 §6 verbatim
- ❌ **104 scenarios = exactly 8 unique titles × 13 repetitions:** Content/Performance/Social/Brand/CRM/PR/Event/MarketingOps "Governance Check"
- ❌ **"Integrations" capability appears 21× as label** — NOT in agent-design §4.4 whitelist (Web Search, Data Analyst, Canvas, Image Generation only)
- 💡 **Recommendation:** Stage-2 — collapse 104 → 8 canonical (one per domain); saves ~170 KB; replace "Integrations" capability with "Workflows" or "Knowledge"
- 💡 5 redundant-copy IDs to drop FIRST: S-SG-009, S-SG-017, S-SG-025, S-SG-033, S-SG-041 (all duplicate "Content-Marketing Governance Check")

### File 09 — marketing-praxis (Hand-crafted post-IMPROVE)

- ✅ 7-Wochen-Curriculum (lines 17-19) mirrors source 05:lines 162-169 faithfully (W1 DSGVO/AVV, W2 Prompt-Engineering, W3 Wissensordner, W4 Agents, W5 Canvas, W6 Workflows, W7 Deep Research)
- ✅ KI-Champions section (lines 21-23) aligns with source 05:lines 171-181 (Merck 33.000 figure correct)
- ✅ Hofmann Personal 20.000h + GetYourGuide 70% match source 05 empirical case studies
- ✅ DACH/CRM-tool specificity (Inxmail, Brevo, Dynamics, Mailjet, Adobe, Matomo, Piwik) — uncommon depth
- ⚠ **Method coverage gaps:** S-MP-001..010 explicitly use M01/M03/M05/M06 (S-MP-008) and M10/M11. **Missing:** M02 Steelmanning, M04 Contrast Classes, M07 Contradiction Log, M12 Base-Rate, M13 Adversarial Query Expansion
- ⚠ "Top-10 Quick Wins" prose (line 15) doesn't enumerate as list — readers can't extract 10 distinct wins
- ⚠ Only 10 scenarios but T3 catalogs 128 — coverage concentrated on CRM/Crisis; missing Content/SEO/Social/PR/Events functional domains
- 💡 Fold source 10's S-098 (PR crisis), S-076 (event lead-capture), S-061 (ABM scoring) into Stage-2

### File 10 — prompts-und-skills (Hand-crafted)

- ✅ Each S-PS-001..010 maps to distinct M-method (M01 Falsifikation, M02 Steelmanning, M03 Pre-Mortem, M04 Contrast Classes, M05 Bayesian, M06 Source Triangulation, M07 Contradiction Log, M08 What-Would-Change-My-Mind, M10 First-Principles, M12 Base-Rate)
- ⚠ **Missing methods in scenarios:** M09 Red Team, M11 Assumption Decay, M13 Adversarial Query Expansion
- ⚠ **Inline-Skills described but never exemplified in scenarios:** Sections exist for Format-Konversionen / Text-Generation / Text-Refinement / Quick-Analysis / Quick-Structuring but NO scenario demonstrates "Tone-Shift Inline-Skill" or "FAQ-aus-Thread" execution
- ⚠ "Hinweise & Quellen-Konflikte" closing claims "Keine Quellen-Widersprüche" — but T8 documents CO-STAR vs PTCF tension (CO-STAR is one of 27 frameworks, not PTCF's superior); claim too clean

### File 11 — persona-core (Templated 100 scenarios + hand-crafted prose)

- ✅ Anchor "Little Data Persona Anker" present at H1 + line 3 (research/04 spec satisfied — deterministic retrieval works)
- ✅ Voice STRONG on professional register; vocabulary table (no contractions, "Faszinierend", "0,68 Sekunden", "Unzureichende Datenlage") + 6 emotional registers map directly to T5 §2/§7 + research/06 §3
- ✅ Anti-Pattern "Englisch-Drift" + "Als KI-Modell" matches research/06 §3 prohibitions
- ✅ Sections §1–§10 (Identität, Weltsicht, Haltungen, Vokabular, Spannungen, Stimme, Interpunktion, Register, Argumentation, Anti-Patterns) — content-rich + Canon-faithful
- ⚠ **Internal contradiction:** §11 ("Stimme — Prinzipien") says "keine erste Person" but persona text uses "ich" repeatedly (Reaktionsmuster §10 #6 "Ich bin nicht programmiert…")
- ❌ **Step-count violation (worse than PR #14 flag):** ALL 100 `Vorgehen (3-5 Schritte)` blocks contain exactly 7 enumerated steps — IDENTICAL text across S-LC-001..100, zero variation
- ❌ **Combinatorial fill:** Only 20 unique triggers × 5 variants = 100 scenarios; 19 unique Hands-on-Ergebnis; **only 1 unique Beispiel-Prompt template across all 100**
- ❌ Research/06 Canon material ("0,68 Sekunden", "Ich wünschte, ich könnte es mit dir empfinden") referenced in §6 but never grounded in any scenario below line 100

### File 13 — data-agent-anweisungen-pro-thema (Hand-crafted)

- ✅ All 10 D-XX anchors verified at H2 + first-sentence (deterministic retrieval works)
- ✅ Cross-thema consistency STRONG: stable contract per section (purpose subtitle → 5-7 actionable bullets → explicit Anti-Pattern → Quellen-Verweis)
- ✅ **Cross-file alignment ACCURATE** with files 00-09:
  - D-00↔00 (5-Säulen), D-01↔01 (PTCF, Memory 50 prefs), D-02↔02 (5 Sharing-Ebenen, Capability Whitelist)
  - D-03↔03 (Per-Document-Cap, 2000-char Chunks, k=50), D-04↔04 (Trigger-Typen, HITL)
  - D-05↔05 (Client/Server-Trennung), D-06↔06 (BFF-Pattern, BYOC), D-07↔07 (Flash/Sonnet, BYOK €5K)
  - D-08↔08 (DSGVO/SAML/§87 BetrVG), D-09↔09 (Quick-Wins, 7-Wochen-Curriculum)
  - All per-thema directives reflect content actually present in target files
- ✅ Concrete testable constants (Per-Document-Cap, 2000-char, k=50, €5K) — verifiable
- ⚠ D-09 Marketing-Praxis is the ONLY section without a hard "NIEMALS…" Anti-Pattern (only "häufige Anti-Patterns dokumentieren")
- ⚠ No Julia-Modus interaction note in any D-XX (how Du-form changes the Thema-specific addressing)
- ⚠ File 11 cross-reference to File 13 is generic ("siehe 13-data-agent-anweisungen-pro-thema") — no specific D-XX anchor pointers

---

## Cross-File Findings

1. **CSV/Wissensordner rule drift:** Files 02 + 03 state exclusion correctly; **File 01 violates it in S-CP-014 (taxonomy CSV) and S-CP-020 (zip in Data Analyst)** — knowledge base internally contradicts the same rule.

2. **Quality cliff:** Hand-crafted files (00/02/03/06/09/10) average 10 scenarios each with high source-fidelity; templated files (04/05/07/08) carry 104+ scenarios but with capability-tag bugs (05), trigger monoculture (04), price drift (07), and 13× duplicate titles (08). Per-Document-Cap (T2:line 23) means templated bulk *reduces* retrieval reliability — fewer quality scenarios would retrieve more reliably.

3. **Memory-disambiguation fix landed cleanly across Files 00, 01, 02** — all three now consistently flag Memory as deactivated in Agents (matches T1:line 37) after PR #3 + #9 fixes.

4. **"Integrations" capability label** appears in File 08 (21× as Fähigkeit tag) and prose-only in File 07 — violates Agent-Design §4.4 whitelist (Web Search / Data Analyst / Canvas / Image Generation only). Must be replaced in Stage-2.

5. **Model-version drift:** File 07 uses "Opus 4.7" while T6 catalog uses **Opus 4.8** — unified pass needed.

6. **Connector-count drift:** File 00 says "über 60", File 05 says "60+" — T1 + source 08 say **"55+"**. Stage-2 should normalize to 55+.

7. **PTCF framework defined twice:** File 10 defines PTCF; File 09 uses it without forward-reference. Add: "PTCF-Skelett siehe 10-prompts-und-skills".

8. **Tool-stack inconsistency:** File 09 paints Julia as DACH-CRM-stack operator (Inxmail, Mailjet, Brevo); File 10 paints her as global-tool-agnostic. Harmonize in Stage-2.

9. **Method coverage gaps:** Files 09 + 10 together claim M01-M13 spread but explicitly anchor only M01, M03, M05, M06, M08, M10, M12 to scenarios. Missing M02, M04, M07, M09, M11, M13. Stage-2 should fold-in scenarios that exercise these methods.

10. **Advisory framing consistent** in Files 04, 05, 06 (all have "Advisory-Grenze" sections that match Agent-Spec §4 "expressly forbids custom external API integrations").

---

## Stage-2 Recommendations (prioritized)

1. **File 05** (worst): full rewrite — fix capability-tag bug, kill duplicate Fallstricke, restore semantic Vorgehen
2. **File 08**: collapse 104 → 8 canonical; replace "Integrations" capability
3. **File 04**: kill trigger monoculture, make HITL conditional on write-action scenarios
4. **File 07**: drop all 105 templated scenarios, keep 8-section preamble; reconcile EUR prices with T6 catalog; bump Opus 4.7 → 4.8
5. **File 01**: fix S-CP-014 + S-CP-020 (CSV/zip routing); trim oversized chunks (S-CP-078/079/090/104)
6. **File 03**: tighten Per-Document-Cap wording ("meist" → strict); add JSON + HTML file types
7. **File 02**: add Disabled lifecycle stage to Sharing-Modell; add TPM + HTTP 524 context to API throughput
8. **File 00**: change "60+ Konnektoren" → "55+"; add CSV-Wissensordner-exclusion rule to Hard-Limits
9. **File 09**: add scenarios for M02 + M04 + M07 + M12 + M13 methods; fold source 10's PR/Event/ABM scenarios
10. **File 10**: add Inline-Skill exemplification scenarios; add M09/M11/M13 method-anchored scenarios
11. **File 06**: add Embedding API + dedicated deployment URL + SCIM Entra-ID gotcha scenarios
12. **File 11** (P0 — biggest authoring debt): all 100 scenarios use IDENTICAL 7-step Vorgehen + single PTCF template — needs full re-author with genuine 3-5 step variance, 100 distinct Beispiel-Prompts, and Canon-grounded scenarios (cite "0,68 Sekunden", "Ich wünschte, ich könnte…" from research/06). Also fix "keine erste Person" rule vs. heavy "ich"-usage contradiction.
13. **File 13**: add hard "NIEMALS…" Anti-Pattern to D-09; add Julia-Modus addressing note to each D-XX (or one cross-cut section); update File 11's cross-ref to File 13 with specific D-XX anchors.
