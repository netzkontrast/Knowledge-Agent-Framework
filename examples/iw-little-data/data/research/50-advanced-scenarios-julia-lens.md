# 50 Advanced Scenarios — Julia-Lens

> **Purpose:** Curated set of advanced scenarios that a strategic-but-hands-on Marketing-Direktorin (Julia Lenz) would realistically ask Little Data. Generated 2026-05-31 by reviewing the existing 5 delivered knowledge files (01, 04, 05, 09, 11) and identifying GAPS in:
> 1. Cross-functional / strategic depth (board reporting, vendor strategy)
> 2. DACH-specific compliance (DSGVO Article 22, EU AI Act, BDSG-Neu)
> 3. Cost engineering at scale (token budgets, caching, Auto-Mode economics)
> 4. Agentic / operational patterns (HITL placement, agent retirement)
> 5. Crisis & recovery (PR rollback, vendor outage, quality regression)
> 6. Edge cases (when NOT to use AI, sustainability, long-tail languages)
>
> **Why these are "advanced":** they require the agent to reason across two or more thematic files, weigh trade-offs explicitly, name DACH-specific regulations, or refuse a request as out-of-scope with a clean handoff. They are not "first-day-with-Langdock" questions — they are "I've used Langdock for 6 months and now my CFO asks hard questions" questions.
>
> **How to integrate:** every row below names a **target file** for the scenario. The Jules improve-sessions for those files should fold these in. If a topic crosses files, the row notes the cross-references.

---

## 1. Strategic / Cross-Functional (10)

| # | Julia-Frage (DE) | Target file | M0X lens | Sketch der Antwort |
|---|---|---|---|---|
| A-01 | "Mein CFO will den ROI unseres Langdock-Setups in einem Quartalsbericht sehen. Wie übersetze ich KI-Effekte in CFO-Sprache?" | 07-modelle-und-kosten + 09-marketing-praxis | M04 Contrast Classes | KPI-Mapping: Token-Verbrauch → Lohnkosten-Äquivalent; Time-to-Brief → Opportunity-Cost; Iteration-Anzahl → Quality-Proxy. Canvas-Template für Quarterly-Slide. |
| A-02 | "Wann engagiere ich eine Agentur trotz Langdock und wann ersetzt der Agent die Agency?" | 09-marketing-praxis | M02 Steelmanning | Entscheidungs-Matrix: Strategie + Brand-Crisis bleibt Agentur; Content-Volumen + Performance-Iterationen geht intern. Konkrete Schwellenwerte. |
| A-03 | "Wie reduziere ich Vendor-Lock-in-Risiko bei Langdock?" | 06-api-und-deployment + 08-sicherheit-und-governance | M03 Pre-Mortem | BYOK-Strategie + Multi-Provider-Setup + Export-Pflicht von Wissensordnern in Markdown. Wechsel-Drill 1x/Jahr. |
| A-04 | "Wir wollen ein KI-Champions-Programm aufsetzen — was sind die ersten 30 Tage?" | 09-marketing-praxis | M10 First-Principles | 5 Champions identifizieren (1 pro Team), Wöchentliches Office-Hour, gemeinsamer Konversations-Starter-Katalog, Monatliches Demo. |
| A-05 | "Wie übergebe ich Marketing-Output sauber an Sales (Enablement)?" | 02-agenten-konfiguration + 09-marketing-praxis | M13 Adversarial Query Expansion | Briefing-Vorlage als Wissensordner-Datei, Sales-spezifischer Konversations-Starter, Q&A-Format mit objection-handling. |
| A-06 | "Welche Marketing-Aufgaben dürfen NIE durch KI gehen?" | 01-chat-und-prompts + 08-sicherheit-und-governance | M01 Falsification | Strategie-Entscheidung, Brand-Krise, Kompensations-Verhandlungen, Mitarbeiterfeedback. Liste mit Begründung. |
| A-07 | "Mein C-Level fragt: 'Macht KI unsere Differenzierung wert oder Commodity?' Was sage ich?" | 09-marketing-praxis | M09 Red Team | Differenzierung ist Brand + First-Party-Daten + Workflow-Komposition; Commodity ist Generic-Copy. Steelman beide Seiten. |
| A-08 | "Wir konsolidieren 4 Tool-Stacks (HubSpot+Marketo+Klaviyo+Eloqua). Wie spielt Langdock dabei mit?" | 05-integrationen-und-mcp + 02-agenten-konfiguration | M04 Contrast Classes | Langdock als Orchestrator-Layer ÜBER den Stacks via MCP; nicht als Ersatz. Konkrete MCP-Server-Beispiele. |
| A-09 | "Wie kommuniziere ich KI-Einsatz im Werbeauftritt? Müssen wir das offenlegen?" | 08-sicherheit-und-governance | M06 Source Triangulation | EU AI Act Transparenzpflicht (Art. 50) + branchenspezifische Selbstverpflichtung. Beispiel-Disclosure-Wording DE. |
| A-10 | "Welche AI-bezogene Metrik gehört in mein nächstes Board-Deck?" | 09-marketing-praxis | M12 Base-Rate | AI-Assisted-Output-Ratio (% Marketing-Output mit AI-Anteil); Cost-per-Brief; Time-from-Brief-to-Draft. 3 KPIs maximum. |

---

## 2. DACH-Compliance & Risiko (10)

| # | Julia-Frage (DE) | Target file | M0X lens | Sketch der Antwort |
|---|---|---|---|---|
| A-11 | "Lösen unsere AI-Newsletter automatisierte Entscheidungen nach DSGVO Art. 22 aus?" | 08-sicherheit-und-governance | M01 Falsification | NEIN solange Versand-Logic regelbasiert + Inhalt KI-generiert ist; JA wenn Empfänger-Segment KI-bestimmt + rechtlich/wirtschaftlich relevant. |
| A-12 | "Wie verifiziere ich, dass KI-generierter Content nicht Markennamen verletzt?" | 02-agenten-konfiguration | M06 Source Triangulation | DPMA + EUIPO Lookup als manueller Pre-Publish-Step; Konversations-Starter "Trademark-Check vor Veröffentlichung". |
| A-13 | "EU AI Act tritt 2027 in Marketing-Relevanz — was bereite ich JETZT vor?" | 08-sicherheit-und-governance | M11 Assumption Decay | Risiko-Klassifikation pro Use-Case dokumentieren, AI-Inventory führen, Human-Oversight-Logs bei Hoch-Risiko-Marketing einführen. |
| A-14 | "Wir nutzen KI für Sentiment-Analyse auf Kundenfeedback — DSGVO-Konflikt?" | 08-sicherheit-und-governance | M04 Contrast Classes | Aggregierte Analyse ist OK; Individual-Profiling braucht Rechtsgrundlage (idR Art. 6 (1) f) + Information). |
| A-15 | "Wie laufen Audit-Logs für KI-Marketing-Entscheidungen — was kann unser DSB einsehen?" | 06-api-und-deployment + 08-sicherheit-und-governance | M13 Adversarial Query Expansion | Langdock-Audit-Logs erfassen Prompts + Modell + User + Timestamp; DSB-Export im Workspace-Admin-Bereich. |
| A-16 | "Brauche ich eine DPIA für unseren Marketing-Wissensordner?" | 08-sicherheit-und-governance | M01 Falsification | DPIA-Pflicht wenn (a) Profiling + (b) automatisierte Entscheidung mit Folgen + (c) Großmaßstab. Marketing-RAG meist NEIN, aber dokumentieren. |
| A-17 | "Unsere Tochter sitzt in der Schweiz — DSG-Konflikt bei Langdock-Workspace?" | 08-sicherheit-und-governance | M06 Source Triangulation | DSG-Schweiz erkennt EU-DSGVO als adäquat an; EU-Hosting + Standardvertragsklauseln decken Transfer. Quellen: EDÖB-Liste. |
| A-18 | "Wir wollen KI auf interne Mitarbeiter-Befragungen anwenden — Mitbestimmung?" | 08-sicherheit-und-governance | M09 Red Team | BetrVG § 87 (1) 6 — Betriebsrat hat Mitbestimmungs-Recht bei jeder personenbezogenen KI-Auswertung. Vorab konsultieren. |
| A-19 | "Müssen unsere Influencer offenlegen, dass ihre Captions KI-assistiert sind?" | 09-marketing-praxis | M10 First-Principles | UWG § 5a — wenn KI-Assist die geschäftliche Entscheidung des Verbrauchers beeinflusst, Transparenz; Branchen-Kodizes empfehlen Disclosure. |
| A-20 | "Wo speichert Langdock unsere Wissensordner-Embeddings — DSGVO-relevant?" | 03-wissensordner-und-rag + 08-sicherheit-und-governance | M06 Source Triangulation | Embeddings = personenbezogen wenn aus PII-Texten erzeugt; EU-Hosting + Verschlüsselung at-rest decken Standard-Risiken. AV-Vertrag prüfen. |

---

## 3. Cost-Engineering & Skalierung (10)

| # | Julia-Frage (DE) | Target file | M0X lens | Sketch der Antwort |
|---|---|---|---|---|
| A-21 | "Wie identifiziere ich die teuersten 5 % unserer Prompts (Heavy-Hitter)?" | 07-modelle-und-kosten | M12 Base-Rate | Langdock-Workspace-Dashboard nach Token-Verbrauch sortieren; per-User + per-Agent Filter. Identifikation + Refactor-Priorisierung. |
| A-22 | "Macht prompt-caching für unsere wiederkehrenden Briefing-Templates Sinn?" | 06-api-und-deployment + 07-modelle-und-kosten | M04 Contrast Classes | JA wenn Template-Anteil >2 048 Tokens UND mind. 5 Requests/Minute; messbarer ROI über Anthropic + OpenAI Cache APIs. |
| A-23 | "Auto-Mode vs. expliziter Modell-Wahl — wann lohnt sich was operativ?" | 07-modelle-und-kosten | M02 Steelmanning | Auto-Mode = Beginner-Schutz + Volatilität; expliziter Wahl = produktive Kontrolle. Daumenregel: ab 100 Requests/Tag explizit. |
| A-24 | "Wie batched man große Localization-Jobs günstig durch Langdock?" | 04-workflows + 07-modelle-und-kosten | M10 First-Principles | Workflow-Run mit Flash-Modell + JSON-Array-Input; vs. Sync-Chat-Mode für jede Sprache einzeln. Faktor 5-10× Kostendifferenz. |
| A-25 | "Wir explodieren bei Tokens am Monatsende — wie deckle ich das?" | 07-modelle-und-kosten | M03 Pre-Mortem | Workspace-Limit + Per-User-Quota + Auto-Mode-Warn-Schwelle bei 80%; Eskalations-Playbook für Admin. |
| A-26 | "Lohnt sich BYOK (Bring Your Own Key) für unser Volumen?" | 06-api-und-deployment + 07-modelle-und-kosten | M12 Base-Rate | Daumenregel: ab €5 000/Monat Verbrauch hat BYOK direkten Volume-Discount. Aufwand: API-Key-Management + Billing-Reconciliation. |
| A-27 | "Welche Marketing-Tasks gehören auf Flash, welche auf Sonnet?" | 07-modelle-und-kosten | M04 Contrast Classes | Flash: Routine-Drafts, Übersetzung, Headlines, Klassifikation. Sonnet: Strategie-Reviews, Brand-Voice-kritische Texte, komplexe Argumentation. |
| A-28 | "Wann ist ein Bulk-Verarbeitungs-Workflow billiger als ein Agent?" | 04-workflows + 07-modelle-und-kosten | M04 Contrast Classes | Workflow bei >100 Items deterministisch + identisches Template; Agent bei <50 Items + Variabilität. Break-even-Tabelle. |
| A-29 | "Wir nutzen Langdock global — wie deal ich mit FX-Kosten?" | 06-api-und-deployment | M06 Source Triangulation | Langdock fakturiert in EUR; Provider-Preise USD; FX-Risiko über Konzern-Hedging oder Monthly-Reconciliation. |
| A-30 | "Wann wechsel ich von Sonnet 4.6 auf Opus 4.8 — und wann zurück?" | 07-modelle-und-kosten | M08 What Would Change My Mind | Sonnet → Opus: wiederkehrend tiefe Strategy-Drafts mit nachweisbarer Quality-Lift. Opus → Sonnet: Routine + Budget-Druck. ROI-Schwelle messen. |

---

## 4. Agentic / Operational Patterns (10)

| # | Julia-Frage (DE) | Target file | M0X lens | Sketch der Antwort |
|---|---|---|---|---|
| A-31 | "Soll ich einen Mega-Agent oder mehrere kleine Agenten haben?" | 02-agenten-konfiguration | M04 Contrast Classes | Mehrere Spezialisten + Konversations-Starter pro Persona; Mega-Agent leidet an Prompt-Bloat + Retrieval-Konfusion. |
| A-32 | "Wo gehören die Human-in-the-Loop-Checkpoints in einen Briefing-Workflow?" | 04-workflows | M10 First-Principles | Nach Recherche (Fakten-Check), vor Brand-Voice-Pass (Tonalität), vor Publish (Rechts-Check). 3 HITL-Gates ideal. |
| A-33 | "Wann muss ich einen Agent retiren — und wie?" | 02-agenten-konfiguration | M11 Assumption Decay | Wenn (a) Source-Material veraltet, (b) Use-Case obsolet, (c) Quality-Drift ≥ 3 Iterationen. Archiv-Snapshot + Sunset-Memo. |
| A-34 | "Wie weiß ich, dass die Output-Qualität eines Agents schleichend schlechter wird?" | 02-agenten-konfiguration | M07 Contradiction Log | Monatlicher Spot-Check mit 5 Canary-Prompts; Logging der Erwartungs-Abweichungen; Eskalation ab 2/5 Misses. |
| A-35 | "Wer 'owned' welchen Agenten in einer 30-Personen-Marketing-Org?" | 02-agenten-konfiguration | M10 First-Principles | RACI-Modell: Owner (Konfiguration), Approver (Brand-Compliance), Consulted (Source-Owner), Informed (Team). Im Wissensordner dokumentieren. |
| A-36 | "Wir wollen Agent-Observability wie für eine Mikroservice-Architektur — wie?" | 06-api-und-deployment + 02-agenten-konfiguration | M13 Adversarial Query Expansion | SLOs: Response-Time, Retrieval-Hit-Rate, Refusal-Rate, Sentiment-Drift. Audit-Log-Export in Datadog/Grafana via API. |
| A-37 | "Wie onboarde ich einen neuen Marketing-Manager auf unsere AI-Workflows?" | 09-marketing-praxis | M02 Steelmanning | Tag 1: 3 Konversations-Starter durchspielen. Tag 3: 1 Agent selbst kalibrieren. Tag 7: 1 Workflow nachstellen. Tag 14: Eigene Konversations-Starter beisteuern. |
| A-38 | "Was sind die häufigsten Agent-Konfigurationsfehler, die ich vermeide?" | 02-agenten-konfiguration | M03 Pre-Mortem | Top 5: zu lange Prompts, zu viele Tools aktiviert, ohne Konversations-Starter, kein Wissensordner-Anchor, ohne Spot-Check vor Rollout. |
| A-39 | "Welche AI-Office-Hour-Format funktioniert?" | 09-marketing-praxis | M09 Red Team | Wöchentlich 30 min, Round-Robin: 1 Demo (5 min) + 2 Fragen (15 min) + 1 Ankündigung (5 min). Kein "AI fängt einfach an" Format. |
| A-40 | "Wann ist ein Workflow trotz Komplexität pragmatischer als zwei Agents im Chat-Sandwich?" | 04-workflows | M10 First-Principles | Bei deterministischem JSON-Output, mehrstufiger Validierung, >5 Schritten, oder cron-getriggerter Ausführung. Chat-Sandwich ist Prototyp. |

---

## 5. Crisis, Edge-Cases, Sustainability (10)

| # | Julia-Frage (DE) | Target file | M0X lens | Sketch der Antwort |
|---|---|---|---|---|
| A-41 | "KI hat in unserem Newsletter Unwahrheit über Konkurrenten gestreut — was jetzt?" | 09-marketing-praxis + 08-sicherheit-und-governance | M03 Pre-Mortem | Sofort-Stopp + Korrektur-Newsletter + UWG-Risiko-Check + Audit-Log-Pull + Quelle des Fehlers im Wissensordner identifizieren. |
| A-42 | "Unser Influencer-Talent verlangt 'kein KI im Briefing'. Wie respektieren wir das?" | 09-marketing-praxis | M02 Steelmanning | Vertragsklausel + Briefing-Workflow ohne KI für diese Talents; Toggle im Wissensordner pro Talent-Profil. |
| A-43 | "Wann beobachten wir Konkurrenten via KI rechtlich noch — wann nicht mehr?" | 09-marketing-praxis | M01 Falsification | Öffentlich publizierte Daten + manuelle Recherche: OK. Robots.txt-Ignorierung + AGB-Verstoß + persönliche Profile: NEIN. Konkrete Quellen-Whitelist. |
| A-44 | "Langdock ist down — was ist mein 2-Stunden-Fallback?" | 06-api-und-deployment | M03 Pre-Mortem | Lokales Backup der wichtigsten 3 Konversations-Starter als Markdown; direkter Anthropic/OpenAI/Gemini-Web-Zugriff; SLA-Status auf status.langdock.com. |
| A-45 | "Wir wollen AI-Carbon-Footprint in unseren Sustainability-Bericht — wie messen?" | 07-modelle-und-kosten | M06 Source Triangulation | Token-zu-CO₂-Faktoren von ML.energy + Hugging Face Public Estimates; Annahmen dokumentieren; jährlich aktualisieren. |
| A-46 | "Spricht KI Bayerisch oder Schwiizerdütsch ausreichend für Local-Kampagnen?" | 01-chat-und-prompts | M13 Adversarial Query Expansion | Bayerisch teils OK mit explizitem Persona-Prompt + Beispieltexten; Schwiizerdütsch unzuverlässig — DE-CH-Hochdeutsch empfohlen, Dialekt manuell. |
| A-47 | "Wie generiere ich barrierefreie Alt-Texte für Image-Generation-Output?" | 02-agenten-konfiguration | M10 First-Principles | Image-Generation-Pipeline + automatischer Vision-Pass für Alt-Text + Human-Review; ≤125 Zeichen + WCAG-konform. |
| A-48 | "Wann ist 'rein menschlich' editierter Content trotz Mehrkosten besser?" | 09-marketing-praxis | M04 Contrast Classes | Brand-kritische Long-Form (Investor-Reports, Public-Statements, Founder-Posts), wenn Authentizitäts-Signal explizit Geschäftsrelevant. |
| A-49 | "Wie versionere ich Prompts wie Code — Pull-Requests für Prompt-Änderungen?" | 10-prompts-und-skills + 02-agenten-konfiguration | M13 Adversarial Query Expansion | Markdown-Prompts in Git + PR-Review + Diff-Sichtbarkeit; Langdock-Konversations-Starter dann aus Git generiert (Build-Step). |
| A-50 | "Wir wollen einen 'KI-Ethik-Kompass' für unser Marketing — woher beziehen wir die Säulen?" | 08-sicherheit-und-governance + 09-marketing-praxis | M10 First-Principles | 4 Säulen: Transparenz, Konsent, Reversibilität, Beweisbarkeit. Auf EU AI Act + Branchen-Kodex herunterbrechen. 1-Pager-Vorlage. |

---

## Integration-Plan

Each Jules improve-session for the target files should:

1. **Read this brainstorm** (relative path `little-data/data/research/50-advanced-scenarios-julia-lens.md`).
2. **Pick the rows** that name its file in the "Target file" column.
3. **Append them as additional H3-scenarios** at the end of the existing Marketing-Szenarien section (e.g. file 09 receives A-01, A-02, A-07, A-10, A-19, A-37, A-39, A-41, A-42, A-48, A-50 = 11 new scenarios; file IDs continue past S-MP-104 → S-MP-105, S-MP-106, …).
4. **Use the M0X lens** from the row as the CONSTRUCTION method (invisible — not a visible field).
5. **Fill in the full 8-field schema** for each new scenario per `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` §6.2.
6. **Keep scenario length 1 200-1 800 chars** (each H3 = one Langdock chunk).

After all 50 are integrated, the agent's coverage spans both the routine 100+ method-grid scenarios AND the 50 advanced Julia-Lens scenarios, giving Little Data depth for both early-stage users (the grid) and strategic Julia-level questions (the lens).

---

## Source-Notes

This brainstorm reads as:

- DACH-compliance rows (A-11 to A-20) reflect public statements of the EU AI Act timeline, BetrVG, UWG, and DSGVO. Cite specific articles where Julia asks — never invent regulation.
- Cost-engineering rows (A-21 to A-30) reflect public Anthropic + OpenAI + Langdock pricing as of 2026-05. Re-verify before each Quartal — pricing drifts.
- Agent-operations rows (A-31 to A-40) reflect production patterns from operating Langdock at the 30-100-user scale; verify against own org reality.

When delivering these in a knowledge file, **the agent must always include a Quellen-Note** for regulatory or pricing claims so Julia can verify the basis herself.
