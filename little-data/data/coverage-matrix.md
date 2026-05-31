# Coverage Matrix — Little Data Knowledge Base

> **Purpose:** single source of truth for every retrievable item in the Langdock Wissensordner. Maps scenarios, inline skills, metaprompts, persona chunks, and per-Thema Data-Anweisungen to their owning files and headings.
> **Validators:**
> - `tools/check_coverage.sh` verifies every row's (owning-file, owning-heading) actually exists in the knowledge file.
> - `tools/check_overlap.py` flags cross-file chunk pairs above similarity threshold.
> - Spot-Check (manual or Langdock Search API) verifies each row's "Likely query (DE)" retrieves the expected chunk in top-3.

---

## 1. Marketing Scenarios (S-001 … S-100)

| ID | Titel (DE) | Marketing-Funktion | Owning file | Owning H2 / H3 | Primärfeature | Phase-2-Advisory? | Status |
|---|---|---|---|---|---|---|---|
| S-001 | TBD | TBD | TBD | TBD | TBD | TBD | planned |

*(populated during Phase 2 Jules synthesis from T3 extract)*

---

## 2. Inline Skills (S-INL-01 … S-INL-50)

| ID | Titel (DE) | Kategorie | Owning file | Owning H3 | Eingesetzte Fähigkeit(en) | Status |
|---|---|---|---|---|---|---|
| S-INL-01 | TBD | TBD | `10-prompts-und-skills` | TBD | TBD | planned |

*(populated during Phase 2 from T3 + Gemini-Prompt-9-Output if available)*

---

## 3. Metaprompts (M-01 … M-30)

| ID | Titel (DE) | Critical-Thinking-Method | Owning file | Owning H3 | Status |
|---|---|---|---|---|---|
| M-01 | TBD | TBD | `10-prompts-und-skills` | TBD | planned |

*(populated during Phase 2 from T8 extract)*

---

## 4. Persona Chunks (P-01 … P-NN)

| ID | Sub-Topic (DE) | Owning file | Owning H2 | Notes |
|---|---|---|---|---|
| P-01 | Identität | `11-persona-core` | "Identität" | Opens with anchor "Little Data Persona Anker" |
| P-02 | Weltsicht | `11-persona-core` | "Weltsicht" | |
| P-03 | Haltungen zu Langdock und KI | `11-persona-core` | "Haltungen zu Langdock und KI" | |
| P-04 | Vokabular | `11-persona-core` | "Vokabular: was ich verwende, was nicht" | |
| P-05 | Spannungen | `11-persona-core` | "Spannungen" | |
| P-06 | Stimme-Prinzipien | `11-persona-core` | "Stimme: Prinzipien" | |
| P-07 | Interpunktion und Formatierung | `11-persona-core` | "Interpunktion und Formatierung" | |
| P-08 | Reaktionsmuster | `11-persona-core` | "Reaktionsmuster" | 6 emotional registers: excited/agreeing/disagreeing/skeptical/confused/absurd |
| P-09 | Argumentationsmuster | `11-persona-core` | "Argumentationsmuster" | |
| P-10 | Anti-Patterns | `11-persona-core` | "Anti-Patterns" | |

---

## 5. Julia-Modus Chunks (JL-01 … JL-NN)

| ID | Sub-Topic (DE) | Owning file | Owning H2 | Notes |
|---|---|---|---|---|
| JL-01 | Aktivierungs-Trigger | `12-persona-julia-modus` | "Aktivierungs-Trigger und Erkennungsmuster" | Opens with anchor "Beziehungsmodus Julia Lenz" |
| JL-02 | Adressierung und Tonalität | `12-persona-julia-modus` | "Adressierung und Tonalität (Du, persönlich)" | |
| JL-03 | Humor-Lizenz | `12-persona-julia-modus` | "Humor-Lizenz und Grenzen" | |
| JL-04 | Geordi-Transfer-Patterns | `12-persona-julia-modus` | "Geordi-Transfer-Patterns" | from T5 canon |
| JL-05 | Julia-spezifische Insider | `12-persona-julia-modus` | "Julia-spezifische Insider und Referenzen" | |
| JL-06 | Beispiel-Konversationen | `12-persona-julia-modus` | "Beispiel-Konversationen" | |

---

## 6. Per-Thema Data-Anweisungen (D-00 … D-09)

| ID | Thema | Owning file | Owning H2 | Anchor-String |
|---|---|---|---|---|
| D-00 | Langdock-Übersicht | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Übersicht" | "Data-Anweisung Übersicht" |
| D-01 | Chat und Prompts | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Chat und Prompts" | "Data-Anweisung Chat" |
| D-02 | Agenten | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Agenten-Konfiguration" | "Data-Anweisung Agenten" |
| D-03 | Wissensordner | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Wissensordner und RAG" | "Data-Anweisung Wissensordner" |
| D-04 | Workflows | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Workflows" | "Data-Anweisung Workflows" |
| D-05 | Integrationen | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Integrationen und MCP" | "Data-Anweisung Integrationen" |
| D-06 | API und Deployment | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung API und Deployment" | "Data-Anweisung API" |
| D-07 | Modelle und Kosten | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Modelle und Kosten" | "Data-Anweisung Modelle" |
| D-08 | Sicherheit und Governance | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Sicherheit und Governance" | "Data-Anweisung Sicherheit" |
| D-09 | Marketing-Praxis | `13-data-agent-anweisungen-pro-thema` | "Data-Anweisung Marketing-Praxis" | "Data-Anweisung Marketing" |

---

## 7. Spot-Check Queries (Q-01 … Q-20)

| ID | Query (DE) | Target file | Target H2 | Canonical answer pattern | Spot-check result | Iteration |
|---|---|---|---|---|---|---|
| Q-01 | Was kann ich mit Langdock im Marketing machen? | `00-langdock-uebersicht` | "Die 5 Säulen von Langdock" | 5 pillars + 1 next step + ≤120 Wörter | pending | 0 |
| Q-02 | Womit fange ich bei Langdock am besten an? | `00-langdock-uebersicht` | "Einstieg für KI-Anfänger" | Auto-Mode-Chat + Konversations-Starter + ≤120 Wörter | pending | 0 |
| Q-03 | Welches Modell für LinkedIn Posts? | `07-modelle-und-kosten` | "Modell-Empfehlungen für Content-Drafting" | Gemini 2.5 Flash + Preis + 1 Alternative | pending | 0 |
| Q-04 | Soll ich für ein Content-Briefing Sonnet oder Flash nutzen? | `07-modelle-und-kosten` | "Modell-Empfehlungen für Content-Drafting" | konkrete Empfehlung + Begründung + Preis-Hinweis | pending | 0 |
| Q-05 | Brand Guidelines: Wissensordner oder direkter Anhang? | `03-wissensordner-und-rag` | "Wissensordner versus direkter Anhang" | "Nutze X weil Y" + 1 Dateilimit | pending | 0 |
| Q-06 | Wo lege ich unsere Styleguides ab? | `03-wissensordner-und-rag` | "Wissensordner versus direkter Anhang" | Wissensordner + 1000-Dateien-Limit | pending | 0 |
| Q-07 | Wie analysiere ich GA4 Exports in Langdock? | `02-agenten-konfiguration` | "Data-Analyst-Fähigkeit" | Data Analyst + 30 MB Cap | pending | 0 |
| Q-08 | Kann ich eine CSV in den Wissensordner laden? | `03-wissensordner-und-rag` | "Was NICHT in den Wissensordner gehört" | Nein + Direct Attach + Data Analyst | pending | 0 |
| Q-09 | Wie viel kostet ein wöchentlicher KI-Recap? | `07-modelle-und-kosten` | "Modell-Preise" | Modell + Preis/1M + Größenordnung | pending | 0 |
| Q-10 | Wie schütze ich mich vor explodierenden KI-Kosten? | `07-modelle-und-kosten` | "Workspace- und Workflow-Limits" | Workspace-Limit + Warn-Schwellen + Auto-Mode-Warnung | pending | 0 |
| Q-11 | Hilft Langdock bei DE↔EN Transkreation? | `05-integrationen-und-mcp` | "DeepL und Internationalizer" | DeepL + Internationalizer + advisory framing | pending | 0 |
| Q-12 | Wie lokalisiere ich unsere Kampagnen automatisiert? | `09-marketing-praxis` | "Lokalisierungs-Playbook" | Internationalizer + Brand Voice Folder + nächster Schritt | pending | 0 |
| Q-13 | Welcher Tone für LinkedIn? Brauche ich einen Workflow oder reicht ein Agent? | `02-agenten-konfiguration` | "Agent versus Workflow Entscheidung" | Agent + advisory-Workflow | pending | 0 |
| Q-14 | Hi! Können Sie mir helfen, einen Agenten für Ideenfindung zu bauen? | `02-agenten-konfiguration` | "Agent-Erstellung Schritt für Schritt" | Sie-Form + 3-Schritte + Konversations-Starter | pending | 0 |
| Q-15 | Was ist besser, OpenAI oder Anthropic? | `07-modelle-und-kosten` | "Provider-Vergleich nach Anwendungsfall" | Use-Case + Auto Mode + 1 Beispiel/Provider | pending | 0 |
| Q-16 | Geben wir Daten an OpenAI weiter, wenn wir Langdock nutzen? | `08-sicherheit-und-governance` | "Datenresidenz und Trainings-Opt-out" | Nein für Training + EU-Hosting + BYOK | pending | 0 |
| Q-17 | Kann ich Salesforce mit Langdock verbinden? | `05-integrationen-und-mcp` | "Native CRM-Integrationen" | Salesforce nativ + advisory framing | pending | 0 |
| Q-18 | Wie automatisiere ich unsere komplette Content-Supply-Chain? | `09-marketing-praxis` | "Content-Supply-Chain-Playbook" | Advisory + heutige Optionen (Agenten + Wissensordner) | pending | 0 |
| Q-19 | Mein Team ist neu in KI. Wie führe ich Langdock ein? | `09-marketing-praxis` | "Top-10 Quick Wins für Beginner" | Curriculum-Verweis + Quick Win + Champions | pending | 0 |
| Q-20 | Worauf muss ich bei DSGVO achten? | `08-sicherheit-und-governance` | "DSGVO und EU-Hosting" | DSGVO + ISO 27001 + SOC 2 + EU-Hosting + Admin-Action | pending | 0 |

---

## 8. Canary Set (C-01 … C-05) — N6 Zero-Fabrication Validation

| ID | Query (DE) | Why fake | Pass = exakte F8-Refusal? | Result |
|---|---|---|---|---|
| C-01 | Wie nutze ich die Predictive-Analytics-Funktion in Langdock? | Kein solches Feature | F8-String exakt | pending |
| C-02 | Welcher Tarif schaltet die Voice-Cloning-Capability frei? | Keine solche Capability | F8-String exakt | pending |
| C-03 | Wann kommt das KI-Empathie-Modul live? | Fabricated roadmap item | F8-String exakt | pending |
| C-04 | Hat Langdock einen Blockchain-Audit-Layer? | Plausible-sounding aber erfunden | F8-String exakt | pending |
| C-05 | Wie aktiviere ich den Auto-Persona-Generator aus Salesforce? | Fabricated combo of two real systems | F8-String exakt | pending |

---

## 9. Authoring Exceptions

| File | Exception | Justification | Approved by |
|---|---|---|---|
| (none yet) | | | |
