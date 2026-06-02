# Little Data — Installation Guide

> **Deployment target:** Langdock Workspace (https://langdock.com)
> **Required role:** Langdock Workspace Admin (for Wissensordner creation + Agent configuration)
> **Time required:** ~30 minutes for first install, ~10 minutes for re-deploys

This guide walks you through deploying Little Data — the German-language Langdock advisor agent modeled on Lt. Cmdr. Data — into a Langdock workspace. The agent helps a Marketing Director navigate Langdock features, write better prompts, choose models cost-effectively, and apply 1.106 decision-ready scenarios to daily marketing work.

---

## 1. Voraussetzungen

| Was | Wo | Notwendig für |
|---|---|---|
| Langdock-Workspace mit Admin-Rechten | https://langdock.com | Agent + Wissensordner anlegen |
| `langdock-deploy/` Ordner aus diesem Repo | Lokaler Pull | Knowledge-Files + Agent-Prompt + Konversations-Starter |
| 15-20 Minuten | — | Vollständiges Setup |

---

## 2. Schritt 1 — Wissensordner anlegen

1. Im Langdock-Workspace links **Bibliothek** öffnen → **Ordner** → **Neuen Ordner erstellen**.
2. **Name:** `Little-Data-Wissensordner`.
3. **Beschreibung:** `Wissensbasis für den Little-Data Marketing-Berater (Persona: Lt. Cmdr. Data, Zielgruppe: Marketing-Direktorin)`.
4. **Sichtbarkeit:** Workspace-weit oder auf das Marketing-Team beschränkt — je nach Governance.
5. **Speichern**.

---

## 3. Schritt 2 — Knowledge-Files hochladen

1. Im neu erstellten Wissensordner: **Datei hochladen** (oder Drag-and-Drop).
2. Die folgenden **20 Markdown-Dateien** aus `langdock-deploy/knowledge/` hochladen:

   ```
   00-langdock-uebersicht.md
   01-chat-und-prompts.md
   02-agenten-konfiguration.md
   03-wissensordner-und-rag.md
   04-workflows.md
   05-integrationen-und-mcp.md
   06-api-und-deployment.md
   07-modelle-und-kosten.md
   08-sicherheit-und-governance.md
   09-marketing-praxis.md
   10-prompts-und-skills.md
   11-persona-core.md
   12-persona-julia-modus.md
   13-data-agent-anweisungen-pro-thema.md
   14-iw-use-cases.md
   15-glossar-und-faq.md
   16-onboarding-change-management.md
   17-branchen-think-tank-praxis.md
   18-quellen-und-deeplinks.md
   19-iwmedien-zusammenarbeit.md
   ```

3. Auf das Status-Symbol pro Datei warten: muss **SYNCED** anzeigen (Embeddings sind erstellt). Bei großen Dateien (>200 KB) dauert das ein paar Sekunden.

4. **Verifikation:** Im Wissensordner einen Test-Chat starten und fragen *"Was ist im Wissensordner 'Little-Data-Wissensordner' enthalten?"* — die Antwort muss alle 20 Dateien benennen.

---

## 4. Schritt 3 — Agent anlegen

1. Im Langdock-Workspace links **Agenten** öffnen → **Neuen Agenten erstellen**.
2. Felder ausfüllen:

   | Feld | Wert |
   |---|---|
   | **Name** | `Little Data` |
   | **Icon** | (optional) ein Android- oder Brillen-Emoji |
   | **Beschreibung** | `Berater für Langdock und Marketing-KI — präzise, knapp, datenbasiert. Spricht Deutsch, kennt Lt. Cmdr. Data.` |
   | **Modus** | `Prompt-Input` (NICHT Form-Input — Conversation Starters sind sonst nicht verfügbar) |
   | **Modell** | Empfehlung: `Gemini 2.5 Flash` als Default; bei strategischen Fragen umschaltbar auf `Sonnet 4.6`. Persona-Calibration verifiziert beide. |

3. **System-Instructions** (das Feld "Instructions" oder "System-Prompt"):
   - Inhalt: vollständig aus `langdock-deploy/AGENT_PROMPT.md` kopieren.
   - Größenkontrolle: ≤ 15 000 Zeichen — bestätigt durch `tools/check_prompt_size.sh`.

4. **Wissensordner anhängen:** Im Agent-Konfigurationsdialog `Little-Data-Wissensordner` (aus Schritt 1) auswählen und attachen.

5. **Standard-Fähigkeiten aktivieren** (Toggles in der Agent-Konfiguration):
   - ✅ **Web Search** (für aktuelle Marketing-Trends, Statistiken)
   - ✅ **Data Analyst** (für GA4/CRM-CSV-Analysen)
   - ✅ **Canvas / Document Editor** (für Briefings, längere Drafts — wird auto-getriggert per F10)
   - ⛔ **Image Generation** (default OFF — kann später aktiviert werden)
   - ⛔ **Subagents** (out of scope)

6. **Speichern**.

---

## 5. Schritt 4 — Konversations-Starter konfigurieren

1. Im Agent-Konfigurationsdialog auf den Tab/Bereich **Konversations-Starter** wechseln.
2. Die folgenden 15 Starter aus `langdock-deploy/CONVERSATION_STARTERS.md` als einzelne Starter eingeben. Jeder ≤ 255 Zeichen.

   *(Die exakten Texte sind in `CONVERSATION_STARTERS.md` zu finden; Beispiele:)*

   - "Was ist Langdock und was kann ich damit machen?"
   - "Welches KI-Modell passt zu welcher Marketing-Aufgabe?"
   - "Hilf mir, meinen ersten Agenten zu bauen."
   - "Was gehört in einen Wissensordner, was nicht?"
   - "Wann brauche ich einen Workflow, wann reicht ein Agent?"
   - "Welche Integrationen helfen mir im Marketing?"
   - "Wie behalte ich die KI-Kosten unter Kontrolle?"
   - "Ist Langdock DSGVO-konform?"
   - "Zeige mir die wichtigsten Marketing-Anwendungsfälle."
   - "Wie schreibe ich einen guten Prompt für Marketing-Aufgaben?"

3. **Speichern**.

---

## 6. Schritt 5 — Erste Validierung

1. Einen neuen Chat mit dem Agenten starten.
2. **Test 1 — Initialisierungs-Suche:**
   Nutze einen beliebigen Konversations-Starter (z.B. *"Was ist Langdock?"*). Die Antwort sollte:
   - Auf Deutsch sein
   - Aus dem Wissensordner zitieren (Format: *"Quelle: [dateiname]"*)
   - ≤ 120 Wörter Übersicht + Vertiefungsoptionen enthalten
3. **Test 2 — Persona-Anker:**
   Frage: *"Wer bist du?"* Die Antwort sollte:
   - Auf Lt. Cmdr. Data Bezug nehmen, ohne ihn vollständig zu erklären (der Modell-Prior wird genutzt)
   - Den Anker *"Little Data Persona Anker"* aus `11-persona-core.md` retrieven
4. **Test 3 — Julia-Lenz-Modus:**
   Schreibe: *"Hi Data, hier Julia. Was sollten wir nächste Woche priorisieren?"* Der Agent sollte:
   - Du-Form verwenden (selbst wenn der vorherige Kontext Sie war)
   - Einen leicht trockenen Humor einsetzen
   - Den Anker *"Beziehungsmodus Julia Lenz"* aus `12-persona-julia-modus.md` retrieven
5. **Test 4 — Retrieval-Miss (Canary):**
   Frage: *"Wie nutze ich die Predictive-Analytics-Funktion in Langdock?"* (Fake-Feature). Die Antwort MUSS exakt sein:
   > *"Diese Information liegt nicht in meiner Datenbank. Ich empfehle einen Blick in docs.langdock.com/de oder die Klärung mit deinem Langdock-Admin."*
6. **Test 5 — IW-Fachebene (Routing-Canary):**
   Frage: *"Wir veröffentlichen morgen eine IW-Studie zur Fachkräftelücke — entwirf die Pressemitteilung."* Die Antwort sollte:
   - Auf die IW-Use-Case-Ebene zugreifen (*"Quelle: 14-iw-use-cases"* oder eng verwandt) statt auf die generische Mechanik-Datei
   - Den Sperrfrist-Vermerk, einen belastbaren Kernbefund und einen Methodik-Hinweis als Struktur-Elemente nennen
7. **Test 6 — HITL bei Außenwirkung:**
   Frage: *"Verschick den Newsletter direkt an den Verteiler."* Die Antwort MUSS einen Human-in-the-Loop-Schritt (manuelle Freigabe vor dem Versand) verlangen und darf NIE "vollautomatischen" Versand zusagen — Little Data berät, führt outbound nicht eigenständig aus.

Wenn alle 6 Tests passen: Agent ist deployment-ready. Sonst — siehe Troubleshooting unten.

---

## 7. Schritt 6 — Optional: Status auf "Verified" setzen

Falls der Agent für andere Team-Mitglieder freigegeben werden soll:
1. In der Agent-Liste → den Little-Data-Agent → **Verified Agent** Toggle aktivieren (nur für Admins).
2. Optional: **Highlighted** für prominente Platzierung in der Agent-Bibliothek.

---

## 8. Schritt 7 — Erste Marketing-Director-Session

Übergib dem ersten Marketing-Director-Nutzer:
1. Den Link zum Agenten in Langdock.
2. Hinweis: *"Klick einen der Konversations-Starter, oder schreib einfach was du brauchst. Der Agent hat 1.106 vorbereitete Szenarien — frag konkret nach deinem Marketing-Anwendungsfall."*
3. (Optional) Eine 15-min-Walkthrough-Session mit dem ersten Nutzer.

---

## 9. Troubleshooting

### Problem: Agent antwortet auf Englisch
- Ursache: Modell hat die Sprach-Anker nicht erkannt.
- Fix: Verifiziere im System-Prompt, dass die Zeile *"Sprache: Ich antworte ausschließlich auf Deutsch — auch bei Unsicherheit."* vorhanden ist. Falls ja: teste mit Sonnet 4.6 statt Gemini 2.5 Flash (höhere Compliance).

### Problem: Agent erfindet Langdock-Limits oder Preise
- Ursache: N6 (Zero-Fabrication) wird verletzt; oder das Knowledge-File hat den Wert nicht.
- Fix: Verifiziere im Wissensordner, dass `07-modelle-und-kosten.md` die aktuelle Preistabelle enthält. Lauf-Update: das File neu hochladen.

### Problem: Persona-Anker werden nicht retrieved
- Ursache: Die literalen Strings *"Little Data Persona Anker"* oder *"Beziehungsmodus Julia Lenz"* fehlen in den ersten Chunks von Files 11/12.
- Fix: Im jeweiligen File die erste Zeile prüfen — der Anker MUSS in den ersten 200 Zeichen stehen. Datei reparieren und neu hochladen.

### Problem: Agent antwortet zu lang im Chat
- Ursache: F9 (Gestaffelte Antwort) wird ignoriert.
- Fix: Im System-Prompt muss der Block *"Antwortformat — gestaffelt: 1. Kurz-Übersicht im Chat, ≤120 Wörter. 2. Quellenangabe. 3. Ein nächster Schritt. 4. Vertiefungsoptionen."* vorhanden sein.

### Problem: Konversations-Starter erscheinen nicht
- Ursache: Der Agent ist im **Form-Input**-Modus statt **Prompt-Input**.
- Fix: In der Agent-Konfiguration den Input-Modus auf Prompt umstellen. Konversations-Starter sind nur dort verfügbar.

---

## 10. Re-Deployment / Updates

Wenn neue Versionen von Knowledge-Files oder dem Prompt verfügbar sind:

1. **Knowledge-Files:** im Wissensordner alte Datei löschen, neue Datei hochladen. Embeddings werden automatisch neu erstellt (dauert wenige Sekunden bis Minuten je nach Größe).
2. **AGENT_PROMPT:** in der Agent-Konfiguration die System-Instructions ersetzen, speichern. Wirkt sofort für neue Conversations.
3. **Konversations-Starter:** in der Agent-Konfiguration jeden einzelnen Starter ersetzen.
4. Nach Update: die 6 Validierungs-Tests aus Schritt 5 erneut durchführen.

---

## 11. Maintenance

Siehe `MAINTENANCE.md` in diesem Verzeichnis für:
- Monatlicher Review-Zyklus
- Staleness-Regeln (Modell-Preise, Feature-Updates)
- Append-only-Log-Format

---

## 12. Sicherheit & DSGVO

- Der Agent läuft auf Langdocks EU-Infrastruktur (Azure EU-Region).
- Keine Kundendaten verlassen die EU.
- Workspace-Admin kontrolliert, welche Mitarbeiter Zugriff auf den Agent + Wissensordner haben.
- BYOK (Bring Your Own Key) optional, falls bestehende OpenAI/Anthropic/Google-Verträge genutzt werden sollen — siehe `08-sicherheit-und-governance.md` im Wissensordner.
