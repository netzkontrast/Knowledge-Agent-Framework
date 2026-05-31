# Agenten-Konfiguration für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Agent-Erstellung und grundlegende Konfigurationsparameter
> - Fähigkeiten-Zuweisung und Deployment-Entscheidungen
> - Strategische Governance und Lifecycle-Management
>
> **Was diese Datei NICHT abdeckt:**
> - Deep-Dive RAG-Mechanik und Chunking → siehe `03-wissensordner-und-rag`
> - Preismodelle und Token-Limits → siehe `07-modelle-und-kosten`

## Agent-Erstellung Schritt für Schritt

Die Agent-Erstellung in Langdock erfolgt in einer systematischen dreistufigen Architektur, die deterministische Leistung für Marketing-Direktoren sichert. Der Prozess der Agenten-Konfiguration erfordert Präzision.

Ein Agent (Agent) wird durch das Definieren von Instruktionen, das Zuweisen von Fähigkeiten und das Anbinden von Wissensordnern (Knowledge Folders) erstellt. Diese drei Säulen definieren die gesamte Verhaltensweise.

Die Erstellung beginnt mit der Namensgebung und der Festlegung einer präzisen Verhaltensanweisung. Die Instruktion muss im Persona-Task-Context-Format strukturiert sein, um dem Agenten klare Grenzen aufzuzeigen. Im zweiten Schritt wählt die Administration die erforderlichen Langdock-Fähigkeiten (Tools) aus. Dazu gehören Web Search, Data Analyst oder spezifische MCP-Integrationen. Im dritten Schritt verbindet die Administration spezifische Wissensordner mit dem Agenten. Die angebundenen Wissensordner versorgen den Agenten mit internen Unternehmensdaten. Die Reihenfolge dieser drei Schritte garantiert, dass der Agent zuerst sein operatives Verhalten versteht, bevor der Agent Zugriff auf externe Schnittstellen oder interne Dokumente erhält. Wenn die Instruktionen fehlen, agiert der Agent generisch und verfehlt den geschäftlichen Zweck. Die Konfigurationsoberfläche (Agent Builder) erzwingt keine strikte Reihenfolge, doch das Überspringen der Instruktionen führt zu unkontrollierbaren Ausgaben. Jeder Agent benötigt zwingend ein klares Profil. Das Erstellen von Agenten ohne spezifische Rolle führt zu schlechter Nutzerakzeptanz.

**Nächster Schritt:** Öffnen der Agenten-Konfiguration und Einfügen der grundlegenden Persona-Definition in das primäre Instruktionsfeld.

## Prompt-Input vs Form-Input (wann welcher Modus)

Die Konfiguration der Eingabemethode für Langdock-Agenten bestimmt die Interaktionsweise der Nutzer. Agenten unterstützen zwei grundlegende Eingabemodi: den freien Prompt-Input und den strukturierten Form-Input. 

Der Prompt-Input eignet sich für offene, explorative Aufgaben, während der Form-Input (Formular-Eingabe) für standardisierte, wiederkehrende Prozesse zwingend erforderlich ist. Die Wahl des Modus beeinflusst die Qualität der Ausgabe drastisch.

Beim Prompt-Input interagiert die Nutzerin über eine klassische Chat-Schnittstelle. Die Nutzerin formuliert Anfragen in natürlicher Sprache. Dieser Modus bietet maximale Flexibilität für komplexe Marketing-Analysen oder kreatives Brainstorming. Der Nachteil des Prompt-Inputs besteht darin, dass die Nutzerin wissen muss, wie gute Anfragen formuliert werden. Beim Form-Input definiert die Administration vorab spezifische Eingabefelder (zum Beispiel "Zielgruppe", "Kanal", "Tonalität"). Der Agent zwingt die Nutzerin, diese Felder auszufüllen, bevor der Agent aktiv wird. Der Form-Input eliminiert das Risiko schlechter Prompts durch Anfänger. Für die Erstellung von Briefings oder Freigabeprozessen garantiert der Form-Input, dass alle notwendigen Parameter übergeben werden. Die Administration konfiguriert den Form-Input in den Agenten-Einstellungen durch das Hinzufügen von Variablen-Blöcken. Agenten mit Form-Input verhalten sich deterministischer, da der Eingaberaum stark limitiert ist. Die Kombination beider Methoden in einem Workflow ist technisch nicht für denselben Startpunkt möglich.

**Nächster Schritt:** Evaluieren der Zielaufgabe und Aktivieren des Form-Inputs für alle Agenten, die von Nutzern ohne spezifisches Prompt-Training bedient werden.

## Konversations-Starter konfigurieren (max 20, max 255 Zeichen)

Konversations-Starter (Conversation Starters) dienen als geführte Einstiegspunkte in die Interaktion mit einem Agenten. Die Konfiguration dieser Starter reduziert die Reibung für neue Nutzer erheblich.

Ein Agent unterstützt maximal 20 Konversations-Starter. Jeder Konversations-Starter ist auf eine strikte Länge von maximal 255 Zeichen limitiert. Diese Limitierungen erzwingen präzise Formulierungen.

Die Administration hinterlegt Konversations-Starter in den Agenten-Einstellungen. Ein gut formulierter Konversations-Starter demonstriert sofort den primären Nutzen des Agenten. Anstatt eines leeren Chat-Fensters sieht die Nutzerin anklickbare Schaltflächen. Ein Klick auf einen Konversations-Starter sendet den vordefinierten Text direkt als Prompt an den Agenten. Die Administration muss sicherstellen, dass die Konversations-Starter die häufigsten und wertvollsten Anwendungsfälle abdecken. Wenn ein Agent für Content-Erstellung konzipiert ist, lautet ein optimaler Konversations-Starter "Erstelle einen LinkedIn-Post basierend auf den Leitlinien im Wissensordner". Konversations-Starter dürfen keine Variablen enthalten, da der Starttext sofort ausgeführt wird. Die Limitierung auf 255 Zeichen pro Konversations-Starter verhindert, dass Administratoren zu komplexe Prompts in die Schaltflächen zwingen. Für komplexere Anfragen muss der Form-Input verwendet werden. Die Konversations-Starter aktualisieren sich sofort nach dem Speichern für alle Nutzer des Agenten.

**Nächster Schritt:** Formulieren von drei bis fünf präzisen Konversations-Startern, die jeweils maximal 255 Zeichen lang sind, und Eintragen dieser Starter in das Konfigurationsmenü.

## Standard-Fähigkeiten der Agents (Web Search, Data Analyst, Canvas, Image Gen, Subagents, Memory)

Agenten verfügen über ein Set an nativen Standard-Fähigkeiten (Capabilities), die ihre Handlungsfähigkeit über reine Textgenerierung hinaus erweitern. Die Aktivierung dieser Standard-Fähigkeiten bestimmt das operative Potenzial des Agenten.

Die Administration kann Web Search, Data Analyst, Canvas, Image Generation, Subagents und Memory einzeln für jeden Agenten (Agent) aktivieren oder deaktivieren. Die Kombination dieser Fähigkeiten ermöglicht komplexe Marketing-Automatisierung.

Die Web Search (Web-Suche) erlaubt dem Agenten das Durchsuchen des Internets nach aktuellen Daten, was für Marktanalysen unerlässlich ist. Der Data Analyst (Daten-Analyst) führt Python-Code in einer Sandbox aus, um strukturierte Daten zu verarbeiten. Die Canvas-Fähigkeit öffnet einen kollaborativen Editor, in dem Agent und Nutzerin gemeinsam an langen Texten arbeiten. Image Gen (Bildgenerierung) verbindet den Agenten mit Modellen zur visuellen Asset-Erstellung. Subagents erlauben dem Hauptagenten, spezialisierte Unter-Agenten für Teilaufgaben aufzurufen. Memory (Gedächtnis) befähigt den Agenten, Informationen über Sitzungen hinweg zu speichern. Die Administration muss die Standard-Fähigkeiten restriktiv vergeben. Ein Agent für Grammatikprüfung benötigt keine Web Search. Die Überladung eines Agenten mit allen Standard-Fähigkeiten verlangsamt die Ausführung und erhöht die Fehleranfälligkeit, da das Modell bei jeder Anfrage evaluieren muss, welche Fähigkeit genutzt wird. Jede Standard-Fähigkeit verbraucht spezifische Systemressourcen.

**Nächster Schritt:** Deaktivieren aller nicht zwingend erforderlichen Standard-Fähigkeiten im Agenten-Profil, um die Ausführungsgeschwindigkeit und Zuverlässigkeit zu maximieren.

## Data-Analyst-Fähigkeit für GA4/CRM-CSV-Analysen

Die Data-Analyst-Fähigkeit befähigt den Agenten zur Ausführung deterministischer Python-Skripte für die Analyse strukturierter Marketing-Daten. Die Data-Analyst-Fähigkeit überbrückt die Lücke zwischen generativer KI und quantitativer Datenanalyse.

Die Data-Analyst-Fähigkeit verarbeitet CSV- und Excel-Dateien bis zu einer Dateigröße von 30 MB. Diese Dateien dürfen nicht in den Wissensordner (Knowledge Folder) hochgeladen werden, sondern müssen direkt im Chat angehängt werden.

Wenn eine Nutzerin einen GA4-Export oder eine CRM-CSV-Datei an den Agenten übergibt, schreibt die Data-Analyst-Fähigkeit im Hintergrund ein Python-Skript. Dieses Skript lädt die Daten in einen DataFrame, berechnet Metriken wie Konversionsraten oder identifiziert Anomalien. Die Ausführung in der Python-Sandbox garantiert mathematische Korrektheit, da das Sprachmodell die Berechnungen nicht selbst "schätzt", sondern echten Code ausführt. Die Administration muss Nutzerinnen anweisen, CSV-Dateien ausschließlich über die Data-Analyst-Fähigkeit zu analysieren. Der Wissensordner ignoriert CSV-Dateien systematisch, da die Vektordatenbank keine Tabellenstrukturen verarbeiten kann. Die Data-Analyst-Fähigkeit kann auch Diagramme generieren, die direkt im Chatfenster angezeigt werden. Die Limitierung auf 30 MB pro Datei erzwingt, dass extrem große Rohdaten-Dumps vor dem Upload in kleinere Segmente aggregiert werden müssen. Die Python-Umgebung hat keinen Zugriff auf das externe Internet.

**Nächster Schritt:** Anhängen eines bereinigten GA4-CSV-Exports an einen Agenten mit aktivierter Data-Analyst-Fähigkeit und Formulieren eines Prompts zur Berechnung der Drop-off-Raten.

## Sharing-Modell (Individual / Group / Workspace / Verified / Highlighted)

Das Sharing-Modell in Langdock kontrolliert die Sichtbarkeit und den Zugriff auf konfigurierte Agenten. Das Sharing-Modell verhindert die unkontrollierte Verbreitung von Agenten und sichert die Unternehmens-Governance.

Ein Agent kann den Status Individual (Individuell), Group (Gruppe), Workspace (Arbeitsbereich) erhalten und zusätzlich als Verified (Verifiziert) oder Highlighted (Hervorgehoben) markiert werden. Diese Zugriffsstufen strukturieren die Bibliothek.

Im Status Individual ist der Agent ausschließlich für den Ersteller sichtbar. Dieser Zustand ist der Standardstatus während der Entwicklung. Durch die Freigabe an eine Group wird der Agent für ein spezifisches Team, beispielsweise die Marketing-Abteilung, nutzbar. Die Freigabe für den gesamten Workspace macht den Agenten für alle Angestellten des Unternehmens zugänglich. Workspace-Administratoren verfügen über zusätzliche Steuerungsinstrumente. Sie können Agenten als Verified markieren. Ein Agent (Verified Agent) erhält ein optisches Abzeichen, das anzeigt, dass die Instruktionen und Wissensordner (Knowledge Folders) den Qualitätsstandards entsprechen. Besonders wichtige Agenten können als Highlighted markiert werden. Ein hervorgehobener Agent (Highlighted Agent) erscheint permanent im oberen Bereich der Workspace-Bibliothek. Die Administration muss den Status "Workspace" restriktiv behandeln, um die Bibliothek nicht mit experimentellen Agenten zu überfluten. Vertrauliche Agenten, die Zugriffe auf Finanzdaten haben, dürfen maximal auf Group-Ebene geteilt werden.

**Nächster Schritt:** Überprüfen aller Agenten mit Workspace-Freigabe und Entziehen der Freigabe für jene Agenten, die nicht den Verifizierungsrichtlinien entsprechen.

## Owner-Transfer und Duplikations-Semantik

Owner-Transfer und Duplikation bestimmen das Lifecycle-Management von Agenten bei personellen Veränderungen oder der Skalierung von Best Practices. Das Management dieser Funktionen verhindert verwaiste oder unsichere Agenten in der Plattform.

Der Owner-Transfer überträgt die vollständige Kontrolle eines Agenten an eine andere Person. Die Duplikation erstellt eine Kopie, bereinigt jedoch systematisch alle sicherheitskritischen Verbindungen.

Wenn eine Mitarbeiterin das Unternehmen verlässt, muss die Administration den Owner-Transfer (Besitzerwechsel) für ihre essenziellen Agenten durchführen. Der Transfer bewahrt alle Einstellungen, Instruktionen und Verknüpfungen zu Wissensordnern. Der Agent funktioniert für alle Nutzer ohne Unterbrechung weiter. Im Gegensatz dazu dient die Duplikation der Erstellung von Varianten. Wenn ein Nutzer einen fremden Agenten dupliziert, kopiert das System den Namen, die Instruktionen und die Prompt-Struktur. Die Duplikations-Semantik erzwingt jedoch, dass alle persönlichen Sharing-Einstellungen, Nutzungsstatistiken und vor allem individuelle OAuth-Verbindungen (Integrationen) gelöscht werden. Die Duplikation kopiert keine privaten Zugriffsrechte. Der neue Besitzer der Kopie muss eigene Integrationen autorisieren. Diese harte Trennung garantiert, dass ein duplizierter Agent niemals versehentlich mit den Rechten des ursprünglichen Erstellers auf externe Systeme zugreift. Die Administration muss das Team schulen, Agenten zu duplizieren, anstatt von Grund auf neu zu beginnen, um bewährte Instruktionsmuster zu erhalten.

**Nächster Schritt:** Identifizieren von Kern-Agenten, deren Besitzer das Team verlassen haben, und Durchführen eines Owner-Transfers auf ein zentrales Service-Konto.

## Deployment-Surfaces (Web, Slack, Teams, API, MCP)

Deployment-Surfaces definieren die Kanäle, über die Nutzerinnen und Systeme mit den konfigurierten Agenten interagieren. Die Auswahl der Deployment-Surface beeinflusst die Integration des Agenten in den Arbeitsalltag massiv.

Agenten können über die Web-Oberfläche, Integrationen in Slack und Microsoft Teams, direkte API-Aufrufe oder über das Model Context Protocol (MCP) angesprochen werden. Jeder Kanal erfordert spezifische Überlegungen zur Interaktionsform.

Die Web-Oberfläche ist der primäre Kanal. Die Web-Oberfläche bietet die volle Unterstützung für Canvas, Datei-Uploads und komplexe Form-Inputs. Für schnelle Abstimmungen können Agenten in Slack oder Teams integriert werden. Die Interaktion in Chat-Anwendungen erfordert kürzere Ausgaben, da lange Textwände in Slack schwer lesbar sind. Die Administration muss die Instruktionen für Chat-Deployments entsprechend anpassen. Die API (Programmierschnittstelle) ermöglicht die Anbindung der Agenten an externe Unternehmenssoftware. Die API-Nutzung unterliegt strikten Ratenbegrenzungen (Rate Limits) von maximal 500 Anfragen pro Minute. Das Model Context Protocol (MCP) erlaubt dem Agenten die sichere Kommunikation mit entfernten Servern und Diensten. Die Bereitstellung über API und MCP verwandelt den Agenten von einem Berater in eine ausführende Systemkomponente. Nicht alle Standard-Fähigkeiten (Capabilities) wie Canvas sind in den Deployment-Surfaces Slack oder Teams verfügbar. Die Administration muss prüfen, wo die Zielgruppe arbeitet.

**Nächster Schritt:** Konfigurieren der Slack-Integration für den primären Marketing-Agenten und Testen der Ausgabelänge im Chat-Kontext.

## Agent versus Workflow Entscheidung

Die Entscheidung zwischen der Konfiguration eines Agenten und der Erstellung eines Workflows ist die fundamentalste architektonische Weichenstellung in Langdock. Agent und Workflow bedienen völlig unterschiedliche operative Anforderungen.

Ein Agent reagiert auf Eingaben, nutzt Fähigkeiten dynamisch und führt offene Konversationen. Ein Workflow führt eine deterministische, vordefinierte Kette von Aktionen ohne Konversationsschleife aus.

Ein Agent (Agent) wird eingesetzt, wenn der Lösungsweg unklar ist und die Nutzerin iterativ mit dem Modell arbeiten muss. Der Agent entscheidet autonom, wann er die Web Search nutzt oder den Wissensordner (Knowledge Folder) konsultiert. Diese Autonomie macht Agenten ideal für Strategieberatung, kreatives Schreiben oder explorative Datenanalyse. Ein Workflow wird eingesetzt, wenn der Prozess standardisiert ist. Ein Workflow besteht aus Triggern und Nodes (Knoten). Wenn eine Aufgabe immer exakt fünf Schritte erfordert — zum Beispiel: Daten abrufen, übersetzen, zusammenfassen, formatieren und per E-Mail senden —, muss zwingend ein Workflow konfiguriert werden. Workflows haben ein Limit von 2.000 Schritten pro Ausführung. Workflows eliminieren die kreative Freiheit des Modells hinsichtlich des Prozesses. Die Administration verbraucht wertvolle Ressourcen, wenn sie versucht, einen Agenten durch extrem komplexe Instruktionen in einen strikten Ablauf zu zwingen. Wenn die Aufgabe eine feste Abfolge verlangt, ist der Workflow die einzig richtige Wahl.

**Nächster Schritt:** Analysieren der geplanten Automatisierung; wenn die Aufgabe mehr als drei fixe Einzelschritte erfordert, stoppen der Agenten-Konfiguration und Wechsel in den Workflow-Builder.

## Marketing-Szenarien aus dieser Domäne

### S-AK-001 Brand-Guardian-Agent mit Tone-of-Voice-Wissensordner konfigurieren

**Wann nutzen (Trigger):** Freelance-Texte für den B2B-Blog kommen konsistent off-brand zurück — falsche Tonalität, falsche Terminologie — und die Marketing-Direktorin will einen dedizierten Prüf-Agenten statt manueller Review-Schleifen.
**Strategisches Ziel:** Einen "Brand Guardian"-Agenten aufsetzen, der dauerhaft an den Brand-Guidelines-Wissensordner angebunden ist und Textentwürfe automatisch auf Markenkonformität prüft.
**Hands-on Ergebnis:** Ein konfigurierter Brand-Guardian-Agent mit System-Prompt, Wissensordner-Anbindung und 3 Konversations-Startern für den täglichen Content-Review-Betrieb.
**Eingesetzte Langdock-Fähigkeit(en):** Custom Agent + Wissensordner (Brand Guidelines) + Konversations-Starter
**Vorgehen (4 Schritte):**
1. Erstelle einen neuen Agenten im Agent Builder; System-Prompt: "Du bist Brand Guardian. Prüfe jeden eingehenden Text gegen die Brand Guidelines im Wissensordner. Identifiziere off-brand Passagen und erkläre, welche Regel verletzt wird. Schlage direkte Umformulierungen vor."
2. Binde den Wissensordner mit den Brand Guidelines (Tone-of-Voice, Do's and Don'ts, Beispieltexte) als Library Folder an — separierte MD-Dateien pro Thema (Tonalität, Vokabular, Tabu-Wörter) für bessere Chunk-Präzision.
3. Lege 3 Konversations-Starter an: "Prüfe diesen LinkedIn-Post auf Markenkonformität", "Überarbeite diesen Textentwurf auf Brand Voice", "Zeige mir die 3 häufigsten Markenfehler im letzten Monat".
4. Teste mit 2 absichtlich off-brand Texten (ein zu informeller, ein zu technischer) — prüfe ob der Agent die richtigen Regeln zitiert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Brand Guardian für unsere Marke [Persona]. Prüfe den folgenden LinkedIn-Post-Entwurf auf Übereinstimmung mit unserer Brand Voice [Task]. Kontext: Wir sind ein B2B-SaaS-Unternehmen, Ton ist sachlich-souverän, kein 'du', keine Emojis, keine Superlative [Context]. Markiere off-brand Passagen fett und liefere Umformulierungsvorschläge als Tabelle mit Spalten 'Original', 'Problem', 'Korrektur' [Format]."
**Erwartetes Artefakt:** Ein konfigurierter, sofort nutzbarer Brand-Guardian-Agent mit Wissensordner-Anbindung und 3 funktionierenden Konversations-Startern.
**Fallstricke (≥2 spezifisch):**
- Brand Guidelines als ein einziges PDF hochladen → Per-Document-Cap (1 Chunk/Query) zieht nur einen zufälligen Abschnitt; stattdessen in separierte MD-Dateien aufteilen (eine pro Regelkategorie).
- Zu viele Fähigkeiten aktivieren (Web Search, Data Analyst, Image Gen) → Prompt-Bloat verlangsamt den Agenten und erhöht Fehlerrate; Brand Guardian braucht nur Wissensordner-Suche.
**Anschluss-Szenario:** S-AK-002

### S-AK-002 Input-Formular erzwingen: Kampagnen-Briefing mit strukturiertem Form-Input

**Wann nutzen (Trigger):** Der Content-Agent liefert unbrauchbare Ergebnisse, weil Nutzer vage Prompts wie "schreib einen Post über unser Produkt" eingeben — Kanal, Budget, Zielgruppe und Tonalität fehlen systematisch.
**Strategisches Ziel:** Über den Form-Input (Eingabeformular) im Agent Builder sicherstellen, dass kein Kampagnen-Brief gestartet werden kann, ohne alle Pflichtfelder auszufüllen.
**Hands-on Ergebnis:** Ein Agent mit 5-Felder-Formular (Kampagnenname, Zielgruppe, Kanal, Kernnachricht, Budget-Klasse), der Inputs strukturiert vor dem KI-Aufruf sammelt.
**Eingesetzte Langdock-Fähigkeit(en):** Agent + Form-Input (Eingabeformular mit Variablen-Blöcken)
**Vorgehen (3 Schritte):**
1. Öffne den bestehenden Content-Agenten im Agent Builder und aktiviere den "Form"-Modus in den Eingabe-Einstellungen; definiere 5 Pflichtfelder: `{{kampagnenname}}`, `{{zielgruppe}}`, `{{kanal}}`, `{{kernnachricht}}`, `{{budget_klasse}}` (Dropdown: Klein/Mittel/Groß).
2. Passe den System-Prompt an, damit er die Variablen explizit referenziert: "Erstelle ein Kampagnen-Briefing für {{kampagnenname}}. Zielgruppe: {{zielgruppe}}. Kanal: {{kanal}}. Budget: {{budget_klasse}}."
3. Teste mit 3 verschiedenen Kampagnentypen; prüfe ob der Form die KI-Ausgabe-Qualität messbar verbessert gegenüber freiem Chat.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Briefing-Assistent [Persona]. Erstelle ein strukturiertes Kampagnen-Briefing für {{kampagnenname}} [Task]. Zielgruppe: {{zielgruppe}}, Kanal: {{kanal}}, Kernnachricht: {{kernnachricht}}, Budget: {{budget_klasse}} [Context]. Format: Gliederung mit Sections Ziel, Zielgruppe, Kernbotschaft, Tonalität, KPIs, 3 Beispiel-Headlines [Format]."
**Erwartetes Artefakt:** Ein Agent mit erzwungenem 5-Felder-Formular, das unstrukturierte Prompts systematisch verhindert.
**Fallstricke (≥2 spezifisch):**
- Form-Input und Freitext-Chat können nicht für denselben Startpunkt kombiniert werden — wer Variabilität braucht, muss zwei separate Agenten konfigurieren (Form-Agent für Standard-Briefings, Chat-Agent für explorative Aufgaben).
- Dropdown-Optionen für `{{budget_klasse}}` zu breit definieren (z.B. nur "Klein/Groß") → Team ordnet alle Budgets in "Groß" ein; konkrete Euro-Bereiche als Labels verwenden.
**Anschluss-Szenario:** S-AK-003

### S-AK-003 Mega-Agent vs. Spezialisten-Agenten: Architektur-Entscheidung treffen

**Wann nutzen (Trigger):** Das Team diskutiert, ob ein einziger "Marketing-Alles-Könner"-Agent oder 5 spezialisierte Agenten (Brand, SEO, Performance, CRM, Social) besser skalieren — Technologie-Entscheidung steht diese Woche an.
**Strategisches Ziel:** Anhand konkreter Langdock-Limits (System-Prompt-Limit 40.000 Zeichen, Retrieval-Konfusion bei breiten Wissensordnern) eine begründete Entscheidung treffen.
**Hands-on Ergebnis:** Eine Entscheidungsmatrix mit Empfehlung, welche Use Cases einen eigenen Agenten rechtfertigen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + Canvas (Entscheidungsmatrix)
**Vorgehen (4 Schritte):**
1. Liste alle Marketing-Use-Cases des Teams auf; markiere welche ähnliche Wissensordner teilen (→ Kandidaten für Zusammenlegung) und welche gegensätzliche Tonalitäten brauchen (→ Kandidaten für Trennung).
2. Öffne Canvas; erstelle eine Matrix mit Spalten: Use-Case, Wissensordner-Bedarf, Tonalitäts-Konflikt, Nutzungsfrequenz, Empfehlung (eigen/gemeinsam).
3. Prüfe für jeden geplanten Mega-Agent: Würde der System-Prompt 40.000 Zeichen überschreiten? Würde ein Wissensordner >500 Dateien mit gemischten Themen entstehen? Beides → Spezialisten.
4. Dokumentiere die Entscheidung im Wissensordner als "Agent-Architektur-Rationale" für zukünftige Wartung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Langdock-Architektur-Berater [Persona]. Analysiere die folgende Liste unserer 12 Marketing-Use-Cases [Task]. Kontext: Wir haben ein 5-köpfiges Marketing-Team, ca. 200 Brand- und Content-Dokumente, keine Entwickler im Team [Context]. Erstelle im Canvas eine Entscheidungsmatrix, die für jeden Use-Case begründet empfiehlt ob er einen eigenen Agenten rechtfertigt oder in einem Shared-Agent laufen soll — mit konkreten Langdock-Limit-Begründungen [Format]."
**Erwartetes Artefakt:** Eine Canvas-Entscheidungsmatrix mit konkreter Empfehlung und Langdock-Limit-Begründung pro Use-Case.
**Fallstricke (≥2 spezifisch):**
- Mega-Agent mit 15+ Tools aktiviert → jede Anfrage evaluiert alle Tool-Optionen, Antwortzeit steigt, Qualität sinkt; Faustregel: max. 3 aktive Tools pro Agent.
- Alle Agenten auf denselben Wissensordner zeigen lassen → bei breitem Wissensordner zieht die semantische Suche oft irrelevante Chunks; jeder Agent braucht seinen eigenen kuratierten Ordner.
**Anschluss-Szenario:** S-AK-004

### S-AK-004 Agent-Quality-Drift messen: Monatliches Canary-Prompt-Spotcheck-Set

**Wann nutzen (Trigger):** Ein Briefing-Agent, der vor 3 Monaten einwandfreie Outputs lieferte, produziert jetzt auffällig generischere Texte — niemand weiß ob das am Modell-Update, am Wissensordner-Veralterung oder am Prompt-Drift liegt.
**Strategisches Ziel:** Ein Monitoring-System aufsetzen, das Agent-Qualitätsdrift monatlich mit 5 fixen Canary-Prompts misst und Abweichungen von der Erwartung dokumentiert.
**Hands-on Ergebnis:** Ein Canary-Set (5 Prompts + erwartete Antwortmuster) als Wissensordner-Dokument, das jeden Monat gegen den Agenten ausgeführt wird.
**Eingesetzte Langdock-Fähigkeit(en):** Agent + Konversations-Starter (als Canary-Trigger) + Wissensordner (Canary-Dokumentation)
**Vorgehen (4 Schritte):**
1. Definiere 5 Canary-Prompts: je einer für Tonalität, Faktentreue, Formatierung, Wissensordner-Retrieval und Scope-Abgrenzung; dokumentiere die erwartete Ausgabe für jeden.
2. Lege diese 5 Canary-Prompts als dedizierte Konversations-Starter im Agenten an (Prefix: "[CANARY]") — so sind sie sofort ausführbar ohne manuelles Eintippen.
3. Führe monatlich alle 5 Canary-Starters aus; bewerte Outputs gegen die dokumentierten Erwartungen auf einer 1-3-Skala; ab 2 Misses → Ursachenanalyse (Modell-Update? Wissensordner-Inhalt veraltet? Prompt-Drift?).
4. Protokolliere Ergebnisse in einem "Agent-Health-Log" im Wissensordner mit Datum und Score.
**Beispiel-Prompt (DE, PTCF):**
> "[CANARY] Du bist Briefing-Agent [Persona]. Erstelle ein LinkedIn-Post-Briefing für das Feature 'Workflow-Builder' [Task]. Tonalität: sachlich-souverän, kein Marketingsprech, max. 3 Bulletpoints, kein Emoji [Context+Format]."
**Erwartetes Artefakt:** Ein Canary-Set (Markdown-Dokument im Wissensordner) + monatliches Agent-Health-Log mit Qualitäts-Scores.
**Fallstricke (≥2 spezifisch):**
- Canary-Prompts zu spezifisch auf aktuellen Wissensordner-Inhalt ausrichten → bei Wissensordner-Updates schlagen Canaries falsch an; Canary-Tests müssen Grundfähigkeiten des Agenten messen, nicht den aktuellen Content.
- Monatlichen Spotcheck vergessen → in Kalender als Recurring-Task eintragen; ohne strukturiertes Monitoring bleibt Quality-Drift unbemerkt bis ein Kunde es meldet.
**Anschluss-Szenario:** S-AK-005

### S-AK-005 RACI-Ownership für Agenten in der Marketing-Org definieren

**Wann nutzen (Trigger):** Nach dem letzten Wissensordner-Update waren 3 Agenten plötzlich mit veralteten Daten — niemand hatte eine klare Verantwortung für die Pflege, und das Team hat 45 Minuten damit verbracht, den Schuldigen zu suchen.
**Strategisches Ziel:** Eine RACI-Matrix einführen, die für jeden Agenten Owner (Konfiguration), Approver (Brand-Compliance), Consulted (Wissensordner-Inhalt) und Informed (Team) festlegt.
**Hands-on Ergebnis:** Ein RACI-Dokument im Wissensordner, das pro Agent die Verantwortlichkeiten, Review-Zyklen und Eskalationspfade benennt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + Canvas (RACI-Tabelle) + Wissensordner (Governance-Dokumentation)
**Vorgehen (3 Schritte):**
1. Liste alle aktiven Agenten des Workspaces auf; für jeden: identifiziere Owner (wer ändert den System-Prompt?), Approver (wer gibt Outputs frei?), Consulted (wer liefert Wissensordner-Updates?), Informed (wer nutzt den Agenten nur?).
2. Öffne Canvas; erstelle RACI-Tabelle mit Spalten: Agent-Name, Owner, Approver, Consulted, Informed, Review-Zyklus (monatlich/quartalsweise), Eskalationspfad bei Qualitätsproblemen.
3. Speichere die RACI-Matrix als "Agent-Governance.md" im zentralen Wissensordner und verlinke sie in der Agent-Beschreibung jedes Agenten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Governance-Berater für KI-Systeme [Persona]. Erstelle eine RACI-Matrix für unsere 5 Marketing-Agenten [Task]. Kontext: 30-Personen-Marketing-Org, 3 Teams (Content, Performance, Brand), Agenten: Brand-Guardian, Briefing-Agent, SEO-Agent, Performance-Report-Agent, Social-Planer [Context]. Format: Canvas-Tabelle mit RACI-Spalten + Spalte 'Review-Zyklus' + Spalte 'Eskalation bei Qualitätsproblem' [Format]."
**Erwartetes Artefakt:** Eine RACI-Governance-Matrix als "Agent-Governance.md" im Wissensordner, direkt verlinkbar aus jedem Agent-Profil.
**Fallstricke (≥2 spezifisch):**
- Owner-Rolle an eine Person binden, die das Unternehmen verlassen könnte → immer eine Rolle (z.B. "Head of Content"), nicht eine Einzelperson, als Owner definieren; bei Personalwechsel automatisch mitgepflegt.
- RACI-Matrix nie aktualisieren → Review-Zyklus in das Canary-Spotcheck-Set aus S-AK-004 integrieren; wer monatlich die Agenten prüft, prüft auch ob das RACI noch stimmt.
**Anschluss-Szenario:** S-AK-001
