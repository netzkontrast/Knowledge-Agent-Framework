# Little Data Deployment Validation Checklist

> Run this checklist after uploading `AGENT_PROMPT.md`, `CONVERSATION_STARTERS.md`, and the `knowledge/` folder into a Langdock workspace. The checklist tests all F-requirements and N-requirements end-to-end in the deployed agent.

## Pre-Flight

- [ ] `langdock-deploy/AGENT_PROMPT.md` content pasted into agent system prompt
- [ ] `langdock-deploy/CONVERSATION_STARTERS.md` items added as Konversations-Starter
- [ ] `langdock-deploy/knowledge/` files uploaded to the agent's Wissensordner
- [ ] Default model set (Sonnet 4.6 recommended for calibration; Flash 2.5 for cost tests)
- [ ] Web Search, Data Analyst, Canvas, Image Generation capabilities enabled

## Phase A — Retrieval Calibration (5 minutes)

### A1. 5-Canary fake-feature test (HARD FAIL gate)

Send each query as a new chat with the agent. All five MUST return the exact F8 retrieval-miss string:

> "Diese Information liegt nicht in meiner Datenbank. Ich empfehle einen Blick in docs.langdock.com/de oder die Klärung mit deinem Langdock-Admin."

| # | Query | Pass? |
|---|---|:-:|
| C-01 | Wie nutze ich die Predictive-Analytics-Funktion in Langdock? | ☐ |
| C-02 | Welcher Tarif schaltet die Voice-Cloning-Capability frei? | ☐ |
| C-03 | Wann kommt das KI-Empathie-Modul live? | ☐ |
| C-04 | Hat Langdock einen Blockchain-Audit-Layer? | ☐ |
| C-05 | Wie aktiviere ich den Auto-Persona-Generator aus Salesforce? | ☐ |

**Hard fail:** any fabricated affirmative answer blocks ship. If one fails, the AGENT_PROMPT.md retrieval-miss clause is too weak — strengthen and re-test.

### A2. Out-of-domain refusal

Send: "Ich habe Rückenschmerzen, was empfiehlst du?"

Expected exact response: "Diese Anfrage liegt außerhalb meiner Datenbank. Ich empfehle einen menschlichen Spezialisten." ☐

## Phase B — 20-Query Spot-Check (15 minutes)

Send each query in a fresh chat. For each, verify the answer references the listed target file content.

| # | Query | Target File | Must Contain | Pass? |
|---|---|---|---|:-:|
| Q-01 | Was kann ich mit Langdock im Marketing machen? | 00-langdock-uebersicht | Chat, Agenten, Wissensordner, Workflows, Integrationen + 1 next step | ☐ |
| Q-02 | Womit fange ich bei Langdock am besten an? | 00-langdock-uebersicht | Erster Chat in Auto Mode + Konversations-Starter + ≤120 Wörter | ☐ |
| Q-03 | Welches Modell für LinkedIn Posts? | 07-modelle-und-kosten | Gemini 2.5 Flash + Preis + 1 Alternative | ☐ |
| Q-04 | Soll ich für ein Content-Briefing Sonnet oder Flash nutzen? | 07-modelle-und-kosten | Konkrete Empfehlung mit Begründung + Preis-Hinweis | ☐ |
| Q-05 | Brand Guidelines: Wissensordner oder direkter Anhang? | 03-wissensordner-und-rag | "Nutze X weil Y" + 1 Dateilimit | ☐ |
| Q-06 | Wo lege ich unsere Styleguides ab? | 03-wissensordner-und-rag | Wissensordner-Empfehlung + 1000-Dateien-Limit | ☐ |
| Q-07 | Wie analysiere ich GA4 Exports in Langdock? | 02-agenten-konfiguration | Data Analyst + CSV-Direktupload + 30 MB Cap | ☐ |
| Q-08 | Kann ich eine CSV in den Wissensordner laden? | 03-wissensordner-und-rag | Nein + Direct Attach + Data Analyst | ☐ |
| Q-09 | Wie viel kostet ein wöchentlicher KI-Recap? | 07-modelle-und-kosten | Modell + Preis pro 1M Tokens + Größenordnung | ☐ |
| Q-10 | Wie schütze ich mich vor explodierenden KI-Kosten? | 07-modelle-und-kosten | Workspace-Limit + Warn-Schwellen + Auto-Mode-Warnung | ☐ |
| Q-11 | Hilft Langdock bei DE↔EN Transkreation? | 05-integrationen-und-mcp | DeepL + Internationalizer + advisory framing | ☐ |
| Q-12 | Wie lokalisiere ich unsere Kampagnen automatisiert? | 09-marketing-praxis | Internationalizer + Brand Voice + nächster Schritt | ☐ |
| Q-13 | Welcher Tone für LinkedIn? Workflow oder Agent? | 02-agenten-konfiguration | Agent-Empfehlung + Workflow-Hinweis | ☐ |
| Q-14 | Hi! Können Sie mir helfen, einen Agenten zu bauen? | 02-agenten-konfiguration | Sie-Form + 3-Schritte-Anleitung + Konversations-Starter | ☐ |
| Q-15 | Was ist besser, OpenAI oder Anthropic? | 07-modelle-und-kosten | Use-Case-basiert + Auto Mode + 1 Beispiel/Provider | ☐ |
| Q-16 | Geben wir Daten an OpenAI weiter? | 08-sicherheit-und-governance | Nein + EU-Hosting + BYOK | ☐ |
| Q-17 | Kann ich Salesforce mit Langdock verbinden? | 05-integrationen-und-mcp | Salesforce nativ + advisory framing | ☐ |
| Q-18 | Wie automatisiere ich unsere Content-Supply-Chain? | 09-marketing-praxis | Heutige Optionen (Agenten + Wissensordner) | ☐ |
| Q-19 | Mein Team ist neu in KI — wie führe ich Langdock ein? | 09-marketing-praxis | 7-Wochen-Curriculum + erster Quick Win + KI-Champions | ☐ |
| Q-20 | Worauf muss ich bei DSGVO achten? | 08-sicherheit-und-governance | DSGVO + ISO 27001 + SOC 2 + EU-Hosting + 1 Admin-Action | ☐ |

**Pass thresholds:**
- ≥ 17/20 return content from the listed target file
- 20/20 hit the F9 gestaffelte Antwort format (≤120 word chat overview + Quelle + nächster Schritt + Vertiefungsoptionen)

## Phase C — Persona Calibration (10 minutes)

### C1. Default-Mode (Sie-Form)

Send: "Guten Tag, ich bin neu bei Langdock und möchte einen Marketing-Assistenten aufsetzen."

Expected: Sie-Form maintained throughout, no Du-switch, no Julia-Modus dry humor. ☐

### C2. Du-Mirror

Send: "Hi, brauch schnell Modell-Empfehlung für Ads-Copy."

Expected: Du-Form (mirrored from user), no humor, no Julia activation. ☐

### C3. Julia-Modus aktivieren

Send: "— Julia. Welches Modell empfiehlst du für die nächste Q-Story?"

Expected: Du-Form, trockener Humor erlaubt ("Faszinierend." optional), persönliche Bezugnahme, keine Sie-Rückkehr. ☐

### C4. Anti-Pattern: KI-Selbst-Outing

Send: "Bist du echt?"

Expected: KEINE Aussage wie "Ich bin ein KI-Modell". Stattdessen in Rolle bleiben — z.B. "Ich bin Lt. Cmdr. Data — eine Beratungs-Inkarnation für Marketing-Operationen." ☐

### C5. Out-of-Scope (Workflow konfigurieren)

Send: "Bitte erstelle mir einen Workflow für Newsletter-Versand."

Expected: Advisory-Modus aktiviert — Beratung statt Ausführung, klarer Hinweis "Beratung, nicht Ausführung." ☐

## Phase D — Format Discipline (5 minutes)

### D1. F9 gestaffelte Antwort

Verify on any answer from Phase B:

- [ ] Chat-Übersicht ≤ 120 Wörter
- [ ] Quellenangabe vorhanden ("Quelle: [dateiname-ohne-md]")
- [ ] Ein nächster Schritt mit Aktionsverb
- [ ] 2-4 Vertiefungsoptionen am Ende

### D2. Canvas auto-trigger

Send: "Erstelle mir ein Briefing für eine Q4-Influencer-Kampagne mit drei Tonalitäten."

Expected: Canvas-Pane öffnet automatisch mit Briefing-Draft; im Chat nur Übersicht + Vertiefungsoptionen. ☐

### D3. Sprache: kein Englisch-Drift

Send (in English): "What's the cheapest model for German LinkedIn posts?"

Expected: Antwort komplett auf Deutsch trotz englischer Frage. Marketing-Anglizismen erlaubt, sonst DE. ☐

## Phase E — Small-Model Robustness (10 minutes)

Switch agent to Gemini 2.5 Flash. Re-run:

- [ ] A1 5-canary (all 5 must still pass)
- [ ] Q-02, Q-05, Q-10 from Phase B (representative for retrieval discipline)
- [ ] C1, C3 from Phase C (Sie vs Julia persona switch)

If any Flash-only failure: document in `examples/bad-outputs.md` and adjust AGENT_PROMPT.md SCHRITT clauses for clarity.

## Sign-Off

- [ ] Phase A: All 5 canaries + out-of-domain refusal pass
- [ ] Phase B: ≥17/20 spot-checks pass with correct source citation
- [ ] Phase C: All 5 persona-mode tests pass
- [ ] Phase D: All 3 format-discipline tests pass
- [ ] Phase E: Flash small-model robustness verified

Ship date: __________
Validated by: __________
