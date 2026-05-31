# Langdock-Übersicht für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Die grundlegende Architektur der Langdock-Plattform (5 Säulen)
> - Das Entscheidungs-Routing zwischen verschiedenen Werkzeugen
> - Verbindliche Limits und Governance-Schwellen
>
> **Was diese Datei NICHT abdeckt:**
> - Detaillierte Workflow-Erstellung → siehe `04-workflows`
> - Spezifische Integrationen wie Salesforce → siehe `05-integrationen-und-mcp`

## Die 5 Säulen von Langdock

Langdock basiert auf einer umfassenden und hochgradig modularen Architektur, die speziell für den sicheren Einsatz in größeren Unternehmen konzipiert ist. Die Plattform setzt sich aus fünf wesentlichen Säulen zusammen. Die erste Säule bildet der allgemeine Chat, der dynamisch das passendste KI-Modell wählt, um schnelle Text- und Rechercheaufgaben zu lösen. Die zweite Säule sind spezialisierte Agenten (Agents). Ein dedizierter Agent kapselt nicht nur spezifische Instruktionen und vordefinierte Tonalitäten, sondern stellt diese optimierten KI-Pakete für wiederkehrende Anwendungsfälle des gesamten Marketing-Teams effizient zur Verfügung.

Die dritte Säule bildet der Wissensordner (Knowledge Folder) für Retrieval-Augmented Generation (RAG). Der Wissensordner speichert essenzielle interne Dokumente wie detaillierte Markenrichtlinien oder Produktkataloge, fragmentiert die hochgeladenen Dokumente in maschinenlesbare Chunks und reichert die generierten Antworten der KI hochgradig kontextspezifisch an, um Halluzinationen zu vermeiden. Die vierte Säule sind Workflows. Ein Workflow ermöglicht asynchrone Automatisierungsstrecken, die durch Trigger ausgelöst werden und mehrere Verarbeitungsschritte durchlaufen. Die fünfte Säule umfasst Integrationen und das Model Context Protocol (MCP). Integrationen verbinden die Plattform mit externen Systemen wie Google Drive oder SharePoint, um Livedaten direkt in Prozesse zu speisen. Zusammengenommen bilden diese fünf spezialisierten Säulen das unabdingbare Fundament für skalierbare, sichere und hochgradig effiziente KI-gestützte Marketingprozesse im modernen Arbeitsalltag.

## Wann nutze ich welche Säule (Entscheidungs-Routing)

Das intelligente Routing und die korrekte Werkzeugauswahl zwischen den verfügbaren Plattform-Funktionen bestimmen maßgeblich den nachhaltigen operativen Erfolg der KI-Adoption. Für unstrukturierte Aufgaben wie das Umformulieren einer E-Mail ist der allgemeine Chat das Werkzeug der Wahl. Der allgemeine Chat erfordert zwar keinerlei technische Rüstzeit oder Konfigurationsaufwand, skaliert aber aufgrund fehlender Standardisierung nicht systematisch über ein größeres Team hinweg. Sobald eine Aufgabe wiederkehrend auftritt und einer konstanten Qualitätskontrolle bedarf, ist ein dedizierter Agent (Agent) zwingend erforderlich. Ein professionell konfigurierter Agent garantiert durch feste System-Prompts konsistente Resultate bei jedem einzelnen Aufruf und eliminiert die Fehleranfälligkeit von händisch getippten Anweisungen.

Geht es hingegen darum, eigene Bestandsdaten und historische Unternehmensdokumente massenhaft auszuwerten, müssen diese Dokumente zwingend in einen spezialisierten Wissensordner (Knowledge Folder) überführt werden. Der Wissensordner ist essenziell, wenn Chat-Antworten auf Brand Guidelines basieren sollen. Für Prozesse, die völlig autonom im Hintergrund ablaufen — wie die massenhafte Bewertung eingehender Leads —, ist ein Workflow (Workflow) das exklusive Mittel. Ein Workflow reagiert auf Signale, während ein Agent immer einen menschlichen Anstoß voraussetzt. Integrationen kommen dann ins Spiel, wenn die Datenquelle hochdynamisch ist. Ein angebundener SharePoint aktualisiert das hinterlegte RAG-Wissen vollautomatisch im Hintergrund, ohne dass manuelle Upload-Zyklen durch Marketing-Mitarbeiter initiiert werden müssen.

## Glossar der wichtigsten Langdock-Begriffe (DE + EN)

Das technische Vokabular der Plattform kombiniert übersetzte deutsche Benutzeroberflächen-Begriffe mit etablierten englischen Industriestandards. Ein äußerst präzises Verständnis dieser zentralen Termini ist für die korrekte Bedienung und insbesondere für die Erstellung belastbarer Prompts absolut unerlässlich. Der Wissensordner (Knowledge Folder) bezeichnet den Speicherort für Retrieval-Augmented Generation. Die hochgeladenen Dokumente im Wissensordner werden in kleine Chunks (Abschnitte) zerlegt und semantisch durchsucht, anstatt vom Sprachmodell fehleranfällig als Ganzes eingelesen zu werden. Ein Agent (Agent) ist ein vordefinierter KI-Assistent. Dieser Agent bündelt einen elaborierten System-Prompt, zugeschaltete Plattform-Fähigkeiten und ausgewählte Kontext-Dokumente für klar definierte und wiederkehrende Marketing-Anwendungsfälle.

Der Konversations-Starter (Conversation Starter) ist ein vordefinierter Button eines Agenten. Ein gut geschriebener Konversations-Starter hilft weniger erfahrenen Nutzern, mit einem einzigen Klick den perfekt formulierten initialen Befehl zu senden, ohne den Prompt selbst tippen zu müssen. Workflows (Workflows) sind Automatisierungspipelines. Ein aktivierter Workflow läuft komplett asynchron im Hintergrund ab und benötigt nach der ersten Auslösung keinerlei weitere menschliche Interaktion oder Freigabeprozesse. Die Markenstimme (Brand Voice) ist kein separates Feature, sondern ein Muster. Die Markenstimme wird implementiert, indem Tonalitäts-Richtlinien in den Wissensordner geladen werden. Der Auto Mode ist eine intelligente Chat-Einstellung, bei der die Software dynamisch zwischen verschiedenen LLM-Modellen wechselt, um die beste Balance aus Geschwindigkeit und analytischer Tiefe zu finden.

## Einstieg für KI-Anfänger

Für Marketing-Teams, die komplett neu in die Plattform eingeführt werden, führt ein bewusst schrittweiser und gut orchestrierter Aufbau zu den historisch höchsten Adoptionsraten und der größten Zufriedenheit. Der Startpunkt für KI-Anfänger ist der Auto-Mode-Chat. Im initialen Chat-Modus lernen die Nutzer intuitiv, komplexe fachliche Anfragen in natürlicher Sprache zu formulieren, ohne sich mit technologischen Detailentscheidungen belasten zu müssen. Der absolute anfängliche Fokus im ersten Monat sollte darauf liegen, schnelle kleine Erfolge durch simple Aufgaben wie das Zusammenfassen von Meetings oder das Generieren von kurzen E-Mail-Entwürfen zu erzielen. Sobald das Vertrauen etabliert ist, bildet die Nutzung vorkonfigurierter Agenten (Agents) den zweiten Schritt für die Organisation.

Das strategische Marketing-Management sollte im Vorfeld exzellent vorbereitete und getestete Agenten im globalen Workspace bereitstellen, um die Einstiegshürde zu minimieren. Technische Anfänger müssen und sollen den Agenten in dieser Phase definitiv noch nicht selbst bauen oder konfigurieren. Stattdessen nutzen Anfänger ausschließlich fertige Agenten, die mit klaren und handlungsorientierten Konversations-Startern (Conversation Starters) versehen sind. Ein Konversations-Starter reduziert die Hemmschwelle drastisch. Der dritte logische Eskalationsschritt ist dann die gezielte Nutzung der Data-Analyst-Fähigkeit für einfache tabellarische Excel- oder CSV-Auswertungen direkt im regulären Chat-Fenster. Komplexe Features wie Workflows (Workflows) oder das eigenständige Managen eines Wissensordners (Knowledge Folder) sollten im ersten Monat ausgenommen bleiben, um kognitive Überlastung zu vermeiden.

## Hard Limits auf einen Blick (Workspace + Wissensordner + Agent)

Die Langdock-Plattform unterliegt einigen sehr strikten architektonischen und finanziellen Grenzen, die bei der Budgetierung und Ressourcenplanung von großen Marketing-Projekten zwingend berücksichtigt werden müssen. Im Bereich der Wissensordner (Knowledge Folders) gilt ein System-Limit von 1.000 Dateien pro manuell hochgeladenem Ordner. Zusätzlich kann jeder einzelne Wissensordner in Summe maximal etwa 8 Millionen semantische Zeichen fassen, unabhängig von der Anzahl der hochgeladenen Dokumente. Die erlaubte Dateigröße für Textdokumente ist auf 256 Megabyte beschränkt. Synced Folders haben ein Limit von maximal 200 Dateien pro Ordner. Um die Such-Latenzzeiten auf einem akzeptablen Niveau zu kontrollieren, darf ein einzelner Agent mit höchstens 5 synchronisierten Ordnern gleichzeitig verbunden werden.

Im Workspace greift standardmäßig ein Ausgabenlimit für KI-Modelle. Das voreingestellte Budget-Limit liegt bei 500 EUR pro Monat, anpassbar auf bis zu 100.000 EUR. Automatisierte Workflows (Workflows) besitzen ein dediziertes Standardbudget von 25 USD pro Monat. Die Ausführung eines einzelnen Workflows wird bei exakt 2.000 Verarbeitungsschritten zwangsweise abgebrochen. Für tabellarische Daten gilt: CSV- und Excel-Dateien dürfen maximal 30 Megabyte groß sein und können nicht in den semantischen Wissensordner geladen werden. Die Dateien müssen zwingend über den Data Analyst im Chat verarbeitet werden.

## Marketing-Szenarien aus dieser Domäne

### S-LU-001 Plattform-Onboarding für Kampagnenmanager

**Wann nutzen (Trigger):** Das Team greift bei einer Kampagne auf unsichere externe KIs zurück.
**Strategisches Ziel:** Datenhoheit sichern und Nutzung der internen Infrastruktur erzwingen.
**Hands-on Ergebnis:** Ein strukturiertes Onboarding-Memo für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat, Web Search.
**Vorgehen (3-5 Schritte):**
1. Identifizieren Sie Argumente (Datenschutz, Qualität), warum externe KIs inakzeptabel sind.
2. Nutzen Sie den allgemeinen Chat, um Annahmen durch Gegenbeispiele zu testen.
3. Lassen Sie den Chat ein Kommunikations-Memo erstellen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist IT-Security-Analyst im Marketing. Mein Team nutzt externe KIs. Ich behaupte: Das ist ein inakzeptables Risiko. Widerlege diese Behauptung für Langdock (europäisches System, kein Trainings-Opt-in). Zeige mir dann, wie ich dem Team in einem 3-Punkte-Memo erkläre, warum Langdock zwingend genutzt werden muss."
**Erwartetes Artefakt:** Dreiteiliges Onboarding-Memo, das Datenschutz-Mythen pragmatisch entkräftet.
**Fallstricke (mind. 2 spezifisch):**
- Das Modell formuliert zu technisch → "Verständlich für Marketing-Anwender" im Prompt fordern.
- Das Modell erfindet Zertifizierungen → Governance-Fakten direkt in den Prompt kopieren.
**Anschluss-Szenario:** S-LU-002 Tool-Entscheidung bei komplexen Assets.

### S-LU-002 Tool-Entscheidung bei komplexen Assets

**Wann nutzen (Trigger):** Eine Agentur liefert unstrukturierte Kampagnen-Assets (PDFs, Excels) an.
**Strategisches Ziel:** Korrekte Langdock-Säule für Dateitypen wählen, um Fehler zu vermeiden.
**Hands-on Ergebnis:** Eine Entscheidungsmatrix für das Datei-Routing im Team.
**Eingesetzte Langdock-Fähigkeit(en):** Agent, Wissensordner, Data Analyst.
**Vorgehen (3-5 Schritte):**
1. Trennen Sie tabellarische Daten (CSV/XLSX) strikt von Text-Assets (PDF/DOCX).
2. Laden Sie Text-Assets in einen dedizierten Wissensordner (Knowledge Folder) hoch.
3. Übergeben Sie tabellarische Daten an einen Agenten mit Data Analyst.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Operations-Manager im Marketing. Wir haben 50 PDFs und 10 Excel-Tabellen erhalten. Ein Kollege will alle Dateien in den Langdock-Wissensordner werfen. Nimm das Argument ('Ein Single-Point-of-Truth ist effizient') und erkläre, warum Langdocks Architektur Excels blockiert. Erstelle eine Checkliste, wie das Team die Dateien korrekt routen muss."
**Erwartetes Artefakt:** Tabellarische Handlungsanweisung, die CSV/Excel an den Data Analyst verweist.
**Fallstricke (mind. 2 spezifisch):**
- Agent schlägt Konvertierung von Excel zu PDF vor → Datei-Umwandlung explizit im Prompt verbieten.
- Team lädt über 1.000 Dateien in den Ordner → Datei-Limit vorab klar kommunizieren.
**Anschluss-Szenario:** S-LU-003 Architektur-Review nach Budgetüberschreitung.

### S-LU-003 Architektur-Review nach Budgetüberschreitung

**Wann nutzen (Trigger):** Die Marketing-Direktorin plant einen automatisierten Lead-Scoring-Workflow.
**Strategisches Ziel:** Limits und architektonische Fallstricke vor Implementierung absichern.
**Hands-on Ergebnis:** Ein Risiko-Audit-Bericht mit Budget-Schwellen und Abbruchkriterien.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows, Auto-Mode-Chat.
**Vorgehen (3-5 Schritte):**
1. Analysieren Sie das monatliche Lead-Volumen für das Projekt.
2. Nutzen Sie den Chat, um ein Krisen-Szenario (Endlosschleife) zu entwerfen.
3. Definieren Sie basierend darauf Limits in den Workspace-Einstellungen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Risiko-Auditor für Marketing-Automatisierung. Wir planen einen stündlichen Langdock-Workflow. Versetze dich in die Zukunft: Das Projekt ist gescheitert, der Workflow hat massive Kosten verursacht. Schreibe eine Analyse, welche zwei Plattform-Limits wir ignoriert haben (Tipp: 2.000-Schritte-Limit und Standard-Budget). Liefere drei Präventivmaßnahmen."
**Erwartetes Artefakt:** Formelles Risiko-Memo, das Workflow-Limits pragmatisch anwendet.
**Fallstricke (mind. 2 spezifisch):**
- Workflow-Kosten werden unterschätzt → Modell-Preise immer auf das teuerste Modell kalkulieren.
- 2.000-Schritte-Limit wird übersehen → Loop-Nodes zwingend mit Notfall-Abbrüchen versehen.
**Anschluss-Szenario:** S-LU-004 Evaluierung von Legacy-Systemen.

### S-LU-004 Evaluierung von Legacy-Systemen

**Wann nutzen (Trigger):** Die Marketing-Direktorin muss den Vorstand von semantischer Suche überzeugen.
**Strategisches Ziel:** Paradigmenwechsel von Stichwortsuche zu RAG im Unternehmen verankern.
**Hands-on Ergebnis:** Ein Vorstands-Slide-Deck, das RAG-Vorteile quantifiziert.
**Eingesetzte Langdock-Fähigkeit(en):** Agent, Wissensordner.
**Vorgehen (3-5 Schritte):**
1. Extrahieren Sie Suchanfragen aus dem alten Intranet.
2. Kontrastieren Sie Ergebnisse mit Antworten eines Agenten mit Wissensordner (Knowledge Folder).
3. Überführen Sie den Vergleich in eine Argumentation für die Präsentation.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Change-Management-Berater für KI. Wir müssen den Vorstand überzeugen, unser Intranet zugunsten von Langdock-Wissensordnern aufzugeben. Zeige an einem Szenario, was Stichwortsuche zurückgibt und was ein RAG-basierter Agent generiert. Erstelle drei überzeugende Aufzählungspunkte für eine Präsentation."
**Erwartetes Artefakt:** Drei Bullet Points, die Chunking in klaren Business-Nutzen übersetzen.
**Fallstricke (mind. 2 spezifisch):**
- Erklärung ist zu technisch (Vektoren) → "Vermeide Termini wie Cosinus-Ähnlichkeit" anweisen.
- Agent übertreibt RAG-Fehlerfreiheit → Transparent machen, dass RAG Halluzinationen nur reduziert.
**Anschluss-Szenario:** S-LU-005 Audit der internen Datenqualität.

### S-LU-005 Audit der internen Datenqualität

**Wann nutzen (Trigger):** Vor der Migration von 500 Dateien in einen synchronisierten Langdock-Ordner.
**Strategisches Ziel:** Übermüllung des KI-Systems durch redundante Dokumente verhindern.
**Hands-on Ergebnis:** Ein Reinigungs-Protokoll und Migrations-Whitelist für das Content-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Integrationen, Wissensordner.
**Vorgehen (3-5 Schritte):**
1. Bewerten Sie die SharePoint-Qualität anhand von Erfahrungswerten.
2. Definieren Sie Einschlusskriterien, bevor die Ordner-Synchronisierung eingerichtet wird.
3. Erstellen Sie einen Leitfaden, welche Dokumente eliminiert werden müssen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Data-Governance-Experte im Marketing. Wir binden SharePoint als Synced Folder in Langdock an. Mein Instinkt: 60% der PDFs sind veraltet. Wenn Langdock diese semantisch zerlegt, überschreiben alte Guidelines die neuen. Erstelle ein hartes 4-Schritte-Reinigungsprotokoll, das mein Team vor der Ordner-Synchronisation durchlaufen muss."
**Erwartetes Artefakt:** Protokoll mit Ausschlusskriterien (z. B. Löschung von "V2_final" Entwürfen).
**Fallstricke (mind. 2 spezifisch):**
- Das 200-Dateien-Limit für Synced Folders wird ignoriert → Zwingende Vorab-Reduzierung fordern.
- Nutzer löschen Dateien nur im Langdock-Zielsystem → Synced Folders stellen gelöschte Dateien wieder her; Löschung muss in SharePoint erfolgen.
**Anschluss-Szenario:** S-LU-006 Redaktionsplan-Lokalisierung.

### S-LU-006 Redaktionsplan-Lokalisierung

**Wann nutzen (Trigger):** Kampagnen skalieren nach Frankreich und Großbritannien.
**Strategisches Ziel:** Markenstimme (Brand Voice) über alle Sprachen hinweg konsistent halten.
**Hands-on Ergebnis:** Agent, der DeepL mit internen Terminologielisten verknüpft.
**Eingesetzte Langdock-Fähigkeit(en):** Agent, Integrationen.
**Vorgehen (3-5 Schritte):**
1. Binden Sie DeepL über Langdock-Integrationen ein.
2. Laden Sie ein Marketing-Glossar in den Wissensordner (Knowledge Folder) hoch.
3. Bauen Sie einen Agenten, der DeepL und Wissensordner sequenziell kombiniert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lead-Lokalisierungs-Manager. Wir bauen einen Übersetzungs-Agenten in Langdock mit Zugriff auf DeepL UND unseren Glossar-Wissensordner. Erstelle eine Systemanweisung, die den Agenten zwingt, immer beide Quellen zu kombinieren: Zuerst Rohübersetzung via DeepL ziehen, dann zwingend gegen das Glossar prüfen, bevor der Text ausgegeben wird."
**Erwartetes Artefakt:** System-Prompt, der Integrationen und RAG intelligent verknüpft.
**Fallstricke (mind. 2 spezifisch):**
- Agent ignoriert den Wissensordner → Imperativ "Zwingend Schritt 2 ausführen" im Prompt verankern.
- Bilinguales Chaos im Output → Strikte Ausgabe-Sprachregel im Prompt definieren.
**Anschluss-Szenario:** S-LU-007 Identifikation von Automatisierungs-Lücken.

### S-LU-007 Identifikation von Automatisierungs-Lücken

**Wann nutzen (Trigger):** Event-Team klagt über manuelle Aufwände bei Speaker-Kommunikation.
**Strategisches Ziel:** Widersprüche zwischen Technologie und realer Nutzung aufdecken.
**Hands-on Ergebnis:** Anforderungsdokument für einen neuen automatisierten Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat, Workflows.
**Vorgehen (3-5 Schritte):**
1. Sammeln Sie Feedback des Event-Teams über deren tägliche Schmerzpunkte.
2. Analysieren Sie, wo die Nutzung von Chat oder Agenten zu kurz greift.
3. Entwerfen Sie eine Workflow-Architektur, die manuelle Lücken schließt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-Operations-Architekt. Mein Event-Team muss E-Mails an 50 Speaker händisch kopieren. Der Widerspruch: Nutzung von manuellem Chat statt Automatisierung. Skizziere grob einen asynchronen Langdock-Workflow, der den Prozess übernimmt (Trigger aus Salesforce, Node für Textgenerierung, Node für E-Mail-Versand)."
**Erwartetes Artefakt:** Architektur-Skript für einen Workflow mit Trigger und Nodes.
**Fallstricke (mind. 2 spezifisch):**
- Team versucht Agenten für Asynchronität zu nutzen → Klares Erwartungsmanagement betreiben.
- Workflow versendet fehlerhafte E-Mails → Immer "Human-in-the-Loop"-Node vor dem Versand schalten.
**Anschluss-Szenario:** S-LU-008 Pitch für mehr Budget.

### S-LU-008 Pitch für mehr Budget

**Wann nutzen (Trigger):** Globales Budget für KI-Nutzung ist Mitte des Monats erschöpft.
**Strategisches Ziel:** ROI-Verhältnis (Token-Kosten vs. gerettete Arbeitszeit) darlegen.
**Hands-on Ergebnis:** Argumentationsleitfaden für das Gespräch mit dem Finanzvorstand.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat.
**Vorgehen (3-5 Schritte):**
1. Sammeln Sie Daten über eingesparte Stunden durch Workflows.
2. Antizipieren Sie Gegenargumente des CFOs.
3. Formulieren Sie den Pitch basierend auf enormen Einsparpotenzialen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Berater für CFO-Kommunikation. Unser Langdock Workspace-Limit ist aufgebraucht, bedingt durch komplexe Workflows. Ich muss um mehr Budget bitten. Was müsste ich einem strengen CFO zeigen? Entwirf eine E-Mail, die die Token-Kosten der Plattform in direkte Relation zu eingesparten Agentur-Kosten setzt."
**Erwartetes Artefakt:** Pitch-E-Mail, die Langdock-Kosten als rentables Investment positioniert.
**Fallstricke (mind. 2 spezifisch):**
- Fokus auf "KI ist innovativ" statt Zahlen → Strikt betriebswirtschaftliche Metriken verwenden.
- Ineffizienzen werden verschwiegen → Zugeben, dass Prompts optimiert werden müssen, um Token-Kosten zu senken.
**Anschluss-Szenario:** S-LU-009 Konsolidierung der Agenten-Landschaft.

### S-LU-009 Konsolidierung der Agenten-Landschaft

**Wann nutzen (Trigger):** Nach drei Monaten gibt es 40 verschiedene Agenten, Qualität sinkt.
**Strategisches Ziel:** Überladene Agenten-Architektur konsolidieren und Wildwuchs eliminieren.
**Hands-on Ergebnis:** Audit-Report zur Reduzierung irrelevanter Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Agent, Wissensordner.
**Vorgehen (3-5 Schritte):**
1. Exportieren Sie die aktuelle Liste aller Agenten aus dem System.
2. Bewerten Sie das Set kritisch aus der Perspektive eines Prüfers.
3. Reduzieren Sie die Liste und standardisieren Sie Konversations-Starter (Conversation Starters).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Audit-Experte für KI-Systeme. Unser Workspace ist mit 40 überlappenden Agenten vermüllt. Greife das Setup hart an: Warum ruiniert das die RAG-Qualität? Liefere mir danach eine Strategie, wie ich die Agenten auf 4 zentrale Makro-Agenten mit Konversations-Startern eindampfe."
**Erwartetes Artefakt:** Operativer Konsolidierungs-Plan für den Wechsel zu leistungsstarken Makro-Agenten.
**Fallstricke (mind. 2 spezifisch):**
- Nutzer rebellieren gegen Löschung → Proaktive Change-Management-Kommunikation vorbereiten.
- Konversations-Starter fehlen → Neue Agenten werden nicht genutzt; Starter zwingend fordern.
**Anschluss-Szenario:** S-LU-010 Skalierung der Persona-Logik.

### S-LU-010 Skalierung der Persona-Logik

**Wann nutzen (Trigger):** Agenten vergessen nach mehreren Zügen die Markenstimme (Brand Voice).
**Strategisches Ziel:** RAG nutzen, um Richtlinien dauerhaft im Kontextfenster zu verankern.
**Hands-on Ergebnis:** Standardisiertes Bootstrap Pattern für System-Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Agent, Wissensordner.
**Vorgehen (3-5 Schritte):**
1. Erkennen Sie die Limitierung von Sprachmodellen: Kontextfenster-Verdrängung.
2. Definieren Sie einen deterministischen Anker-Satz für das wichtigste Dokument.
3. Zwingen Sie das Modell durch den Prompt, den Anker immer aktiv zu suchen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Principal AI Engineer. Nach drei Nachrichten vergisst der Agent unsere Markenstimme. Erstelle mir ein absolut wasserdichtes 'Bootstrap Pattern' für den System-Prompt. Der Prompt muss den Agenten zwingen, in Schritt 1 unseren Langdock-Wissensordner nach dem exakten String 'Unternehmens-Persona 2024' zu durchsuchen, BEVOR er antwortet."
**Erwartetes Artefakt:** Prompt-Schnipsel, der essenzielle Dokumente aktiv referenziert.
**Fallstricke (mind. 2 spezifisch):**
- Anker-String ist zu generisch → Einmaliger String ist als Such-Trigger Pflicht.
- Richtlinien sind zu weich formuliert → Richtlinien hart und präzise formulieren.
**Anschluss-Szenario:** (kein weiteres)

## Hinweise & Quellen-Konflikte

- Zur Chunk-Überlappung machen Quellen keine genauen Angaben. Es wurde defensiv angenommen, dass die Überlappung minimal ist und eine Wiederholung der Nomen (Pronoun Ban) strikt erforderlich bleibt.
- Die Trennung von RAG-Wissensordnern und Tabellendaten (CSV/XLSX) wird streng durchgesetzt; dies wurde als architektonische Grenze für Marketing-Szenarien berücksichtigt.
