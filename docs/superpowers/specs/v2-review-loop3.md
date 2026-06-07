# v2 Spec-Panel Review — Loop 3 (read-only)

**Reviewer:** spec-panel (read-only). **Date:** 2026-06-02. **Branch:** `claude/knowledge-framework-v2` (HEAD `99aadf8`).
**Scope:** all 20 knowledge files (00–19) + AGENT_PROMPT + the new R13/R18 instruments + the Solution-Chunk-Schemata Catalog.
**Standard:** `knowledge-authoring-rulebook.md` (R0–R18); `solution-chunk-schemata-catalog.md` (9 chunk-type codes); loop-2 ledger as regression baseline.

---

## Executive summary (5 lines)

1. **All five gates GREEN.** Schema 1106 scenarios PASS (with R7a soft-WARN where expected); grounding clean; coherence resolves every Anschluss; chunks all within [600, 4096] B (76 soft WARNs >3200 B but **zero** hard-fails); AGENT_PROMPT 14 456 / 15 000 chars; emoji guard silent.
2. **R7a Konkrete Empfehlung quality on 11/12/14/19 is excellent and hand-crafted** — distinct voice per file (11 = critical-thinking-anchor, 12 = relational delta, 14 = IW-discipline, 19 = IW-Medien arbitration). No template feel. The remaining files (00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 16, 17) sit at 0/N coverage — **this is the dominant loop-4 workload** (~770 scenarios need the field).
3. **Loop-2 fixes all held** — file 15 multiplier doctrine (term + FAQ) replaced with the verified `Modell-EUR-Preis`; file 06 S-API-031 now explicitly scopes "ohne menschliche Überwachung" to the **processing phase** and demands HITL Freigabe before any live CMS write; file 04 L1163 "vollautomatisch" softened to "automatisiert anstoßen … keine Veröffentlichung ohne menschliche Freigabe."
4. **R18 type-classification spot-check (40 scenarios across 04, 05, 06, 10)** validates the 9-code catalog: file 04 = pure **W**; file 06 = mostly **G**/**D** (architecture briefings, security dossiers, decision memos), only ~25 % real **A** (API-Aufruf); file 05 = mix of **D** (decision memos), **C** (config), few **M** (true MCP); file 10 = mix of **P** (prompt templates) + **S** (skill catalog). Catalog is sufficient; no 10th type needed.
5. **No new [C] findings.** Three [M] (R7a rollout, file 06 type-shape, file 08 chunk-size drift) and four [m]. **Verdict: ITERATE one short loop 4** — primarily R7a rollout across remaining 13 files plus L4-1 (file 06 type-A migration as exemplar). The base is functionally release-ready; the missing R7a coverage is the only thing blocking a v1.0-Beta tag against the *current* rulebook (R7a will become a hard requirement once every file has been touched).

**Release-ready for v1.0-Beta?** Not quite — R7a coverage at 11 % files (4/20 fully covered) means a v1.0-Beta tag would ship a knowledge base whose own rulebook still WARNs about its dominant rule. **Tag v0.9-RC now; v1.0-Beta after loop 4 closes R7a + L4-1.**

---

## Severity-ranked findings

| Sev | File / ID | Issue | Rule | Concrete fix |
|---|---|---|---|---|
| **[M]** | 00–10 + 16, 17 (13 files, ~770 scenarios) | R7a Konkrete Empfehlung coverage is **0/N** on all content files; only persona (11, 12), 14, 19 are at 100 %. The rulebook (R7a) says "once every file has been touched once, it becomes a hard requirement" — loop 3 only touched 4 files for R7a. | R7a | Loop 4: one-file-per-pass authoring of the field per the no-programmatic discipline. Estimate ~770 fields × ~3 sentences each. Bulk a script that **detects** missing fields and produces an in-file checklist, but the writing itself remains hand-crafted. |
| **[M]** | 06-api-und-deployment / S-API-001..080 (entire file) | File 06 ships 80 scenarios titled "API & Deployment" but every payload is a `**Beispiel-Prompt:**`. Spot-check shows ≥60 % are actually **G** (architecture briefing template) or **D** (decision dossier/pitch script) — the prompt is a meta-prompt that *produces* the briefing, not the deliverable itself. Forcing all 80 into **A** in L4-1 would be wrong; the catalog's audit step ("what does the user actually do after reading this") should drive a mixed classification. | R18 | L4-1: classify by output-substance, expect distribution roughly **G ~40, D ~20, A ~15, T ~3, W ~2, C ~0**; the file's name suggests A-heavy but its content is decision-heavy. Update `v2-file-rules/06.md` to call this out before migration starts. |
| **[M]** | 08-sicherheit-und-governance / 22 scenarios (S-SG-047..080) | 22 scenarios sit in the 3200–3800 B chunk-warn band (median 3048 B). Loop 3 added scenarios faster than it trimmed. None hard-fail yet, but S-SG-060 (3801 B) and S-SG-080 (3770 B) are within ~300 B of the 4096 B hard ceiling — one Fallstrick addition and they split. | R13 | Loop 4: targeted trim pass on file 08; aim to bring median below 2 800 B (current 3 048). Trim the Beispiel-Prompt block first per R13 guidance (most verbose), preserve Fallstricke substance. |
| **[m]** | 03-wissensordner-und-rag | 26 chunk-warn entries — most clustered (S-WR-040, 052, 056..060). Same pattern as file 08 but with more headroom. | R13 | Same approach as 08; not urgent. |
| **[m]** | 05-integrationen-und-mcp / S-IM-080 | Largest single scenario in the base at **3918 B** — ~180 B from the hard ceiling. | R13 | Targeted trim of this single scenario before next round of additions. |
| **[m]** | 11-persona-core L105 + 13-data-agent-anweisungen L153 | Two meta-mentions of "Critical-Thinking-Method" as the *anti-pattern* (correctly framed). Not a leak per R5 — but a strict R5 reader could flag the term appearing at all in the deployed knowledge. | R5 | Acceptable as-is (the mentions are explanatory, not output fields). Note in file-rules so it stays meta-only. |
| **[m]** | 04 + cross-base | Bare-noun reservation (R4) check from loop 2 — "Pressemitteilung / Newsletter / Lokalisierung" still appear without operative noun in some triggers. `kb_index.py` reports `reserved-violations=0` because the gate is loose; manual sample shows ~5 occurrences where the dominant noun is still the bare IW noun in a generic-mechanic file. | R4 | Loop 4: small noun-qualify pass during the R7a rollout (touch each scenario anyway). |

---

## Quality assessment of R7a Konkrete Empfehlung (random sample)

Sampled scenarios across files 11, 12, 14, 19 — total 25 fields read in full.

**Verdict:** Hand-crafted, not template-generated. Each field distills the scenario's specific lesson; persona voice survives across all four files.

### File 11 (persona-core) — 40/40 covered

- **S-LC-001** ("unfalsifizierbare Hypothese"): "Verlange vor jedem Budget-Freigabe eine Ein-Satz-Hypothese im Format „Wenn X, dann Metrik M ±N% bis Datum D — sonst verworfen". Eine Leitmetrik, nicht mehrere; eine absolute Schwelle mit Datum, keine vage Verbesserung. Ohne Falsifikationstest kein Lerneffekt aus dem Lauf." — concrete threshold (one metric, dated), persona-faithful (falsification anchor), action-oriented.
- **S-LC-005** ("Nutzer ist absolut überzeugt"): Translates "garantiert" → named assumption + historical base-rate + verification path; ends with the [unzureichende Datenlage] marker convention from the source-discipline anti-pattern in 11 itself — perfectly coherent.
- **S-LC-013** ("erfundenes Langdock-Feature"): "Eine native Funktion, die nicht im dokumentierten Feature-Inventar steht, existiert nicht — niemals aus Gefälligkeit bestätigen." — direct quote of the persona's anti-pattern, then offers a workflow-with-HITL fallback. R1 source-discipline made operational.
- **S-LC-014** ("Mach es einfach für mich"): "„Beratung, nicht Ausführung" ist die Grenze." — the persona's identity anchor literally invoked. Then defines exactly what the agent *will* deliver (a complete copy-paste package) so the boundary is not refusal.

Each S-LC-NNN reads as an idiosyncratic distillation of *that scenario*, not a Mad-Lib of "use threshold X, avoid Y". Coverage rate 40/40; quality rate (sampled) 10/10.

### File 12 (persona-julia-modus) — 31/31 covered

- **S-JL-001** ("Zeitdruck"): "Direkt in den verdichteten Modus wechseln, eine dreizeilige Behauptung-Beleg-Implikation-Kernaussage … Eine einzige optionale Rückfrage anbieten, dann Schluss — keine Klärungs-Lawine." — relational-mode-specific (3-line cap is a Julia-mode mechanic, not a generic Data rule). Distinct from 11.
- **S-JL-004** ("vertraulicher HR-Konflikt"): "Vertraulichkeit innerhalb der Session ausdrücklich zusichern … nichts trägt eigenmächtig in andere Kontexte." — encodes the Memory-deactivated-in-Agents reality from file 00 as a relational promise. Source-grounded.
- **S-JL-009** ("Anglizismen"): "Nicht jeden Anglizismus pedantisch korrigieren — nur die handlungsrelevante Vagheit klären. Eigener Englisch-Drift in der Antwort: vermeiden, der Fließtext bleibt Deutsch." — a Data-Anweisung-level register rule (R8 fidelity); would not fit in file 11.

Voice is consistently the **relational** delta — collaborative, calibrated to Julia's seniority — and never collapses into generic empathy filler. 31/31; sampled 8/8.

### File 14 (iw-use-cases) — 39/39 covered

- **S-IW-001** ("Pressemitteilung aus IW-Studie"): "Jede Zahl im Pressemitteilungs-Entwurf bis zur Seite im Report belegen lassen … ohne Quellenzeile im Fuß geht keine Mitteilung raus." — operationalizes R1 grounding into a pressestelle-specific gate. Persona voice (literalistic precision) intact.
- **S-IW-005** ("iwd vs IW-Trends"): "iwd- und IW-Trends-Tonalität im Prompt scharf trennen und je ein Beispiel vorgeben … sonst entsteht Einheitsbrei." — sourced from `data/research/14-iw-publikationsformate-verified-2026-06.md`. IW-specific, non-generalizable.
- **S-IW-012** ("kritisches Briefing für unbequeme Themen"): "Die zehn unbequemsten Fragen Red-Team-mäßig antizipieren — gerade die unbequemen über Arbeitgebernähe, nicht nur die naheliegenden." — invokes R5 Red Team method **as effect**, not as field name. R5 honored.

39/39; sampled 7/7.

### File 19 (iwmedien-zusammenarbeit) — 10/10 covered, type-D scenarios

- **S-MD-001** ("IW oder IW Medien?"): "Wissenschaftliche Befunde, Methodik und Studien bleiben beim IW (Neutralitätsanspruch). Alles, was Vermarktung, Kreation, Kampagnen, Print/Layout oder Event ist, gehört zur IW Medien" — the operative decision rule that the entire file's question-pattern resolves to. Without this field the file would be diagnostic only.
- **S-MD-009** ("Awards"): "Nutze Awards als Glaubwürdigkeits-Anker, niemals als Erfolgsversprechen." — a single-sentence governing rule that *is* the deliverable, per R7b. The other 8 fields (Trigger, Ziel, Vorgehen, …) supply the context.

R7b discipline observed: 0/10 scenarios contain `**Beispiel-Prompt`; 10/10 contain `**Konkrete Empfehlung`. The field genuinely *is* the operative output here.

### Cross-file consistency

Voice stays Data's across all four files: formal-precise register, "Aufschlussreich" not "Faszinierend", "berät nicht implementiert" repeated as identity anchor, source-discipline reflex in every IW field. Zero emoji. No filler phrasing. **The bar is set very high for the remaining 13 files** — anything thinner would be obvious.

---

## R18 type-classification spot-check (loop-4 planning input)

Recommendations for the L4 file-rule docs. One-line reason each.

### File 04 — workflows (audited S-WF-001 .. S-WF-007)

All seven are **W** (Workflow-driven). Each scenario's Hands-on Ergebnis is literally "Architektur-Entwurf für einen … Workflow"; deliverable is a node-graph plus HITL gates.

| ID | Type | Reason |
|---|---|---|
| S-WF-001 Newsletter-Zusammenbau | **W** | Scheduled Trigger → AI-Node → HITL → E-Mail. Pure workflow architecture. |
| S-WF-002 Lead-Scoring | **W** | Form Trigger → AI w/ Structured Output → branch by score. Workflow + structured-output spec. |
| S-WF-003 Meta-Descriptions Massen | **W** | Manual Trigger + Loop ≤100 with per-execution budget. Pure workflow. |
| S-WF-004 Support-Ticket-Klassifizierung | **W** | Integration Trigger → AI w/ Enum schema → eskalation rule. |
| S-WF-005 Multi-Channel-Distribution | **W** | Manual Trigger → 3 AI-Nodes pro Kanal → HITL. |
| S-WF-006 Lokalisierungs-Pipeline | **W** | Integration Trigger → DeepL-Node → AI-Check → HITL. |
| S-WF-007 Wettbewerbs-Digest | **W** | Scheduled → Web-Search-AI → interner Action-Node. |

**Recommendation for L4-2:** entire file 04 (all 80 S-WF) is **W**. Mass rename `S-WF-NNN` → `S-WF-W-NNN` is a concrete-string operation per R18; payload re-author replaces `Beispiel-Prompt` with `**Workflow-Architektur:**` (node list + trigger + HITL gates) + `**Workflow-Budget:**` (per-Lauf cap). Many existing scenarios already contain this content in prose — migration is largely re-labeling.

### File 06 — API & Deployment (audited S-API-001 .. S-API-008, plus S-API-019/031/032/033/034/035)

**Mixed, dominated by G and D — not A.** This is the most important finding for loop-4 planning.

| ID | Type | Reason |
|---|---|---|
| S-API-001 PIM-Massenanbindung | **G** | Deliverable is an "Architektur-Briefing (Markdown)" — a document template. |
| S-API-002 CISO Static IP | **G** | Deliverable is a "Security-Dossier (One-Pager)" — document template. |
| S-API-003 FinOps Chargeback | **G** | Deliverable is "FinOps Prozess-Spezifikation". Document. |
| S-API-004 OpenAI Drop-In Migration | **G** | Deliverable is "Migrations-Guide" (document). The two-line code change is *inside* the guide. |
| S-API-005 RAG-Hygiene Sync | **W** or **G** | Mostly a workflow (nightly cron); deliverable framed as "Sync-Spezifikation für IT". Borderline — pick **G**. |
| S-API-006 BYOC vs SaaS | **D** | "Pitch-Präsentation" with explicit Steelman framing — a decision/advice scenario. The recommendation IS the deliverable. |
| S-API-007 Frontend-Key-Leak | **G** | Deliverable is "Mängelrüge (E-Mail)" — document template. |
| S-API-008 Reputations-Krisen-Alerting | **W** | "Architektur-Blueprint für Event-Driven-Pipeline" — workflow with Webhook trigger. |
| S-API-019 Programmatische Wissensordner-Aktualisierung | **W** + light **A** | Sync process (workflow) with API-call sub-component. Lean W. |
| S-API-031 Async-Batch-Job | **W** | Job-Queue / Worker / Checkpoint / Freigabe-Queue. Architectural workflow. |
| S-API-032 Fehlerbehandlung & Retry | **D** | Decision/advice on retry classes; no runnable code. |
| S-API-033 Monitoring Langfuse/Datadog | **D** + **G** | Monitoring-strategy decision plus design-doc template. |
| S-API-034 Q&A System | **G** | Systemdesign-document. |
| S-API-035 Content-Moderations-Layer | **G** | Architekturkonzept document. |

**Expected file 06 distribution (extrapolated):** **G ~40 (50 %), D ~20 (25 %), A ~15 (19 %), W ~3, T ~2, C ~0.** File 06's name is a misnomer for its current content — it ships *advice for engineering decisions and document templates*, not API recipes. L4-1 should NOT mass-rename to `S-API-A-NNN`; the loop-4 plan needs the classification step **before** the rename.

**Implication for L4-0 schema gate:** the gate must dispatch on the type code, NOT assume file 06 = A.

### File 05 — Integrationen & MCP (audited S-IM-001..S-IM-006)

| ID | Type | Reason |
|---|---|---|
| S-IM-001 HubSpot freigeben | **G** | "IT-Briefing" document with scope table. |
| S-IM-002 Google-Drive Synced Folder | **G** | "Ordner-Taxonomie + Sync-Konzept" document. |
| S-IM-003 Confluence/Notion | **G** | "Source-of-Truth-Matrix" table. |
| S-IM-004 Slack-Freigabe | **D** | "Entscheidungsmemo" — decision between native integration vs workflow scope. |
| S-IM-005 DeepL Transkreation | **G** | "Lokalisierungs-Setup-Konzept" document with sections. |
| S-IM-006 Looker/GA4 BI | **G** | "Report-Setup" document. |

**Expected file 05 distribution:** **G ~50 (62 %), D ~15 (19 %), M ~8 (10 %), C ~5 (6 %), A ~2.** True **M** (MCP-server config + tool call + scope) is rarer than the file name suggests — most "MCP" scenarios are actually integration *advice* documents. L4-3 must classify case-by-case.

### File 10 — Prompts & Skills (audited S-PS-001..S-PS-010, plus S-PS-074)

| ID | Type | Reason |
|---|---|---|
| S-PS-001 RSA-Copy-Prompt-Bibliothek | **P** + **S** (lean S) | Skill-Definition packaged in `rsa-prompt-template.md`. Pure S. |
| S-PS-002 {{Variablen}}-System | **S** | Template + Auslöser via Konversations-Starter. S. |
| S-PS-003 Team-Prompt-Katalog | **S** | 10 Skills in agent. S. |
| S-PS-004 Prompt-Versionierung | **G** | Library-document template (changelog schema). |
| S-PS-005 PTCF als Standard | **S** + **G** | Skill (Checker) + Guide (Leitfaden). |
| S-PS-006 RSA-Funnel-Few-Shot | **P** | Prompt with few-shot anchors; pure prompt. |
| S-PS-007 LinkedIn CO-STAR C-Level | **P** | Copy-paste CO-STAR prompt. |
| S-PS-008 A/B Subject-Lines | **P** | Prompt for hypothesis-framework variants. |
| S-PS-009 Tone-Shift-Skill | **S** | Explicitly "Tone-Shift-Inline-Skill" with library file. |
| S-PS-010 Prompt-Debugging | **G** | Library-document checklist + meta-diagnosis prompt. |
| S-PS-074 Inline-Skill-Design | **S** | Definition of inline skill catalog. |

**Expected file 10 distribution:** **S ~35 (44 %), P ~30 (37 %), G ~10 (12 %), D ~5 (6 %).** Roughly half-skill / half-prompt. L4-4 has the simplest classification rule: "if the deliverable is a reusable Konversations-Starter or library skill file → S; else P".

### Catalog adequacy verdict

The 9-code catalog (P/A/M/S/T/W/C/D/G) **covers every audited scenario** without forcing. No 10th type required. The most common surprise is **G** (Guide/Document template) — far more frequent than the catalog's intuition suggested. L4 should plan for G to be the second-largest type after P.

---

## Loop-2 finding integrity (regression check)

| Loop-2 finding | Status | Evidence |
|---|---|---|
| [C] 15 Multiplikator term (L40) | **FIXED, held** | L40 now defines `Modell-EUR-Preis (pro 1M Tokens)` with the verified prices and the explicit "Es gibt keine veröffentlichten per-Modell-Multiplikatoren" line. |
| [C] 15 FAQ Multiplikator (L182) | **FIXED, held** | L182 now reads "Maßgeblich ist der direkte EUR-Preis pro 1M Tokens (Input und Output), nicht eine abstrakte Multiplikator-Annahme." |
| [M] 06 S-API-031 unattended live-update | **FIXED, held** | L658–L668 scope "ohne menschliche Überwachung" explicitly to the *processing phase*; every live CMS write requires HITL Freigabe via a diff-Vorschau Queue at 07:00. |
| [M] 04 L1163 "vollautomatisch" outward | **FIXED, held** | L1163 now reads "Mehrsprachige Content-Synchronisation automatisiert anstoßen … keine Veröffentlichung ohne menschliche Freigabe." |
| [m] 09 brand-voice twins S-MP-011/071 | **Not directly verified** in this loop; flag for loop-4 file-09 pass. |
| [m] cross-file bare IW nouns R4 | **Persistent (light)** — see [m] finding above. |

**No regressions.** All fixes from loop 2 still in place.

---

## New scenario-level findings (none [C], few [M]/[m])

Already enumerated in the severity table above. Additional spot-checks negative:

- **No `**Critical-Thinking-Method:**` field anywhere** in deployed knowledge (R5 clean). Only two meta-mentions explaining the anti-pattern itself (11 L105, 13 L153) — acceptable, framed as rules-about-the-rule.
- **No emoji** in any knowledge file, AGENT_PROMPT, or CONVERSATION_STARTERS.
- **AGENT_PROMPT** intact: all three init anchors present, refusal string present, 14 456 chars (544 headroom).
- **All Anschluss-Szenario references resolve** (coherence gate green).
- **kb_index.py:** 20 / 30 files (R14 ✓), 1106 scenarios, 120 advice-style, 0 collisions, 0 reserved-violations.

---

## Verdict

**ITERATE LOOP 4 — top priorities:**

1. **R7a Konkrete Empfehlung rollout** across the 13 remaining content files (00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 16, 17). Hand-crafted per scenario; the bar set by 11/12/14/19 is high. This is the dominant workload (~770 fields) and the only thing blocking R7a from becoming a hard gate.
2. **L4-1 file 06 type-classification** as the catalog exemplar — but with the corrected expectation that file 06 is **G/D-dominated**, not A-dominated. Land the classification → rename → payload re-author in one commit; this is the template for L4-2..L4-15.
3. **File 08 chunk-size trim pass** — 22 scenarios in the 3200–3800 B band, two within 300 B of hard ceiling. Trim Beispiel-Prompt blocks first per R13.
4. **L4-0 gate evolution** — extend `check_schema.sh` to parse the type code from `### S-XXX-Y-NNN` headers and dispatch type-specific payload checks; extend `kb_index.py` to report per-type coverage. Co-commit with L4-1 per R17.
5. **Light R4 noun-qualify pass** during the R7a rollout (since every scenario is being touched anyway): ensure bare "Pressemitteilung / Newsletter / Lokalisierung" lead with their operative noun in generic-mechanic files (04, 09, 10) and stay reserved for 14/17.

**Tag now:** `v0.9-RC` (release candidate with known R7a gap).
**Tag after loop 4 closes priorities 1 + 2 + 4:** `v1.0-Beta`.
