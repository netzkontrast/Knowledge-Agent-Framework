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

### S-AK-001 Diskonfirmations-Analyse für Corporate Identity

**Wann nutzen (Trigger):** Der Vorstand hat die neue Corporate Identity intern freigegeben, aber die Marketing-Direktorin befürchtet, dass B2B-Kunden den Ansatz als zu verspielt wahrnehmen.
**Strategisches Ziel:** Systematisches Aufspüren von Marktdaten, die der neuen visuellen Ausrichtung widersprechen.
**Hands-on Ergebnis:** Ein umfassender Falsifikations-Report, der die drei größten Risiken des Designs benennt.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Web Search
**Vorgehen (3-5 Schritte):**
1. Öffne den spezialisierten Brand-Agenten und stelle sicher, dass die Web-Suche aktiv ist.
2. Lade das PDF-Deck der neuen Corporate Identity als Kontextdatei in den Chat.
3. Beauftrage die KI gezielt damit, nach Fallstudien gescheiterter B2B-Rebrandings zu suchen, die eine ähnliche Designsprache nutzten.
4. Besprich die gefundenen Schwachstellen mit der Lead-Agentur vor dem endgültigen Rollout.
**Beispiel-Prompt (DE, PTCF):**
> "Als kritischer Markenstratege, nimm das hochgeladene Corporate-Identity-Deck [Context]. Suche im Internet nach empirischen Studien oder Berichten über B2B-Unternehmen, die durch ein zu spielerisches Rebranding Marktanteile verloren haben. Erstelle eine Liste der drei stärksten Argumente, warum unser aktueller Entwurf scheitern könnte [Format]."
**Erwartetes Artefakt:** Ein strukturiertes Markdown-Dokument mit überprüfbaren Marktdaten und Gegenargumenten.
**Fallstricke (mind. 2 spezifisch):**
- Die Suchfunktion greift auf B2C-Beispiele zurück, weil der B2B-Fokus im Prompt nicht stark genug gewichtet wurde.
- Die externe Design-Agentur fasst die datengetriebene Kritik als persönlichen Angriff auf und blockiert konstruktive Änderungen.
**Anschluss-Szenario:** S-AK-002

### S-AK-002 Steelmanning der Content-Marketing-Konkurrenz

**Wann nutzen (Trigger):** Ein Hauptwettbewerber hat ein Whitepaper veröffentlicht, das branchenweit extrem hohe Aufmerksamkeit und Lead-Zahlen generiert.
**Strategisches Ziel:** Neutrale Extraktion der strategischen Erfolgsfaktoren des gegnerischen Contents ohne interne Beißreflexe.
**Hands-on Ergebnis:** Ein detailliertes Reverse-Engineering-Profil des Konkurrenz-Dokuments.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Canvas
**Vorgehen (3-5 Schritte):**
1. Starte den Content-Agenten und wechsle in den kollaborativen Canvas-Modus.
2. Füge den vollständigen Text des fremden Whitepapers in den Kontext ein.
3. Fordere den Agenten auf, die stärksten psychologischen und fachlichen Argumente des Textes herauszuarbeiten.
4. Nutze die extrahierten Erkenntnisse, um das eigene Redaktions-Briefing für das nächste Quartal zu schärfen.
**Beispiel-Prompt (DE, PTCF):**
> "Als neutraler Content-Analyst, betrachte das beigefügte Whitepaper unseres schärfsten Konkurrenten [Context]. Konstruiere das bestmögliche Argument dafür, warum dieser Text so extrem überzeugend auf Einkaufsleiter wirkt. Verfasse eine objektive Übersicht der strukturellen und inhaltlichen Stärken [Format]."
**Erwartetes Artefakt:** Eine Pro-Argumentation für den gegnerischen Ansatz, aufgeschlüsselt nach Methodik und Leseransprache.
**Fallstricke (mind. 2 spezifisch):**
- Das interne Team nutzt den Agenten unbewusst so, dass er die Konkurrenz doch abwertet, wenn die Persona nicht neutral genug ist.
- Es werden lediglich oberflächliche Formatierungs-Tricks analysiert, während die tieferliegende psychologische Argumentation übersehen wird.
**Anschluss-Szenario:** S-AK-003

### S-AK-003 Pre-Mortem für die Marketing-Automatisierung

**Wann nutzen (Trigger):** Das Budget für die komplexe Migration auf ein neues Marketing-Automatisierungs-Tool ist bewilligt, aber die technischen Hürden wirken unkalkulierbar.
**Strategisches Ziel:** Präventive Identifikation und Mitigation interner Management- und Prozessfehler vor dem Systemwechsel.
**Hands-on Ergebnis:** Ein priorisiertes Risikoregister für die Software-Migration.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne den spezialisierten MarketingOps-Agenten.
2. Übergib den aktuellen Projektplan und die Zeitachse für die Tool-Migration.
3. Lass die KI ein Szenario entwickeln, in dem das gesamte Vorhaben katastrophal gescheitert ist.
4. Erarbeite auf Basis dieser fiktiven Katastrophe echte Gegenmaßnahmen für das IT- und Marketing-Team.
**Beispiel-Prompt (DE, PTCF):**
> "Als Risiko-Manager, nimm an, unsere Migration auf das neue Automatisierungs-Tool ist in sechs Monaten zu einem absoluten Desaster geworden [Context]. Schreibe einen Post-Mortem-Bericht, der detailliert erklärt, welche internen Fehlentscheidungen und Prozesslücken zu diesem Scheitern geführt haben. Dokumentiere die Fehlerquellen im Canvas [Format]."
**Erwartetes Artefakt:** Ein Post-Mortem-Bericht, der zukünftige Fehler in der Gegenwart analysiert.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent schiebt die Schuld ausschließlich auf den Software-Anbieter, statt interne organisatorische Versäumnisse zu beleuchten.
- Die abgeleiteten Gegenmaßnahmen sind zu abstrakt formuliert, um vom Projektmanagement in konkrete Tasks übersetzt zu werden.
**Anschluss-Szenario:** S-AK-004

### S-AK-004 Alternativen-Kontrastierung im Analytics-Setup

**Wann nutzen (Trigger):** Die Abteilung diskutiert hitzig, ob man beim fehleranfälligen Google Analytics bleiben oder auf eine teure Enterprise-Lösung wie Adobe Analytics wechseln soll.
**Strategisches Ziel:** Vermeidung eines False-Dilemma-Fehlers durch den strukturierten, objektiven Vergleich aller Handlungsoptionen.
**Hands-on Ergebnis:** Eine multidimensionale Entscheidungsmatrix zur Webanalyse.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Data Analyst
**Vorgehen (3-5 Schritte):**
1. Aktiviere die Data-Analyst-Fähigkeit, um komplexe Vergleichstabellen generieren zu lassen.
2. Lade die internen Anforderungsprofile und die Preisblätter der Anbieter als CSV hoch.
3. Beauftrage den Agenten, die Optionen nicht nur untereinander, sondern zwingend auch mit der Option 'Gar nichts ändern' zu vergleichen.
4. Werte die erstellte Matrix im nächsten Strategie-Meeting aus.
**Beispiel-Prompt (DE, PTCF):**
> "Als neutraler Evaluator, nutze die hochgeladenen Anforderungen und Kostentabellen für die neuen Webanalyse-Tools [Context]. Kontrastiere die Alternativen systematisch und füge zwingend die Option 'Beibehaltung des Status Quo' hinzu. Erstelle eine Entscheidungsmatrix, die Kosten, Implementierungsdauer und DSGVO-Risiken gegenüberstellt [Format]."
**Erwartetes Artefakt:** Eine tabellarische Gegenüberstellung mit klaren Scoring-Werten für jede Alternative.
**Fallstricke (mind. 2 spezifisch):**
- Wenn Datenpunkte für bestimmte Tools in den Dokumenten fehlen, neigt das System dazu, Durchschnittswerte zu erfinden.
- Die Kontrastklassen sind zu oberflächlich definiert, wodurch am Ende doch wieder subjektive Bauchentscheidungen den Ausschlag geben.
**Anschluss-Szenario:** S-AK-005

### S-AK-005 Basisraten-Abgleich für LinkedIn Ads

**Wann nutzen (Trigger):** Die Performance-Agentur legt einen Plan vor, der für das nächste Quartal eine Verdreifachung der Click-Through-Rate (CTR) bei LinkedIn Ads verspricht.
**Strategisches Ziel:** Erdung von völlig überzogenen Agentur-Prognosen durch den Abgleich mit harten B2B-Industriestandards.
**Hands-on Ergebnis:** Ein Kalibrierungs-Memo, das die Agentur-Zahlen in Relation zum Marktdurchschnitt setzt.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Web Search
**Vorgehen (3-5 Schritte):**
1. Rufe den Performance-Agenten mit aktiver Internetverbindung auf.
2. Füttere das System mit den Prognosen und Zielgruppen-Parametern der Agentur.
3. Lass die KI gezielt nach aktuellen Benchmark-Studien zur LinkedIn-B2B-Werbung suchen.
4. Konfrontiere den Dienstleister mit den ermittelten Basisraten in der nächsten Quartalsbesprechung.
**Beispiel-Prompt (DE, PTCF):**
> "Als Senior Media Buyer, prüfe die Agentur-Prognose einer 3% CTR auf LinkedIn [Context]. Recherchiere aktuelle, verlässliche Benchmarks (Base Rates) für B2B-SaaS-Kampagnen im DACH-Raum. Vergleiche unsere Prognosen mit diesen Durchschnitten und schreibe ein hartes Memo zur statistischen Plausibilität des Agentur-Pitches [Format]."
**Erwartetes Artefakt:** Ein datengestütztes Memo, das Abweichungen vom Branchenstandard quantifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Web-Suche findet veraltete Benchmarks aus Zeiten, in denen der LinkedIn-Algorithmus grundlegend anders funktionierte.
- Der Dienstleister behauptet, die Benchmarks seien für seine hochspezialisierten 'Proprietären Methoden' nicht anwendbar.
**Anschluss-Szenario:** S-AK-006

### S-AK-006 Fakten-Triangulierung im Social-Listening

**Wann nutzen (Trigger):** Ein einzelner viraler LinkedIn-Post behauptet, das Flaggschiff-Produkt des Unternehmens hätte massive Sicherheitsprobleme, was im Vorstand Panik auslöst.
**Strategisches Ziel:** Schnelle, emotionale Deeskalation durch die Verifizierung oder Falsifizierung der Behauptung anhand mehrerer Datenpunkte.
**Hands-on Ergebnis:** Ein Triangulations-Report zur tatsächlichen Bedrohungslage.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Web Search
**Vorgehen (3-5 Schritte):**
1. Aktiviere den Social-Agenten und schalte die Echtzeit-Suche ein.
2. Gib den Inhalt des kritischen Posts als Ausgangsbasis ein.
3. Fordere das System auf, Foren, Fachmagazine und Bewertungsportale parallel nach dieser spezifischen Sicherheitslücke abzusuchen.
4. Werte aus, ob es sich um einen isolierten Einzelfall oder ein strukturelles Problem handelt.
**Beispiel-Prompt (DE, PTCF):**
> "Als Krisen-Analyst, nimm die Behauptung aus diesem LinkedIn-Post über angebliche Sicherheitslücken unseres Produkts [Context]. Suche gezielt in Tech-Foren, G2-Reviews und IT-Fachmagazinen, um diese Einzelbehauptung zu triangulieren. Fasse zusammen, ob sich die Beschwerde in drei unabhängigen Quellen bestätigt oder ein Einzelfall ist [Format]."
**Erwartetes Artefakt:** Ein prägnanter One-Pager zur Kriseneinschätzung für den Vorstand.
**Fallstricke (mind. 2 spezifisch):**
- Das Modell wertet Retweets oder Kopien des originalen Posts fälschlicherweise als "unabhängige Quellen".
- Die Zusammenfassung formuliert Entwarnung, obwohl in Nischen-Foren bereits ein Hacker-Thread dazu existiert, den die Suche übersehen hat.
**Anschluss-Szenario:** S-AK-007

### S-AK-007 Widerspruchs-Klärung in SEO-Reports

**Wann nutzen (Trigger):** Der monatliche SEO-Report zeigt stark steigende Rankings für das Haupt-Keyword, aber das Web-Analytics-Dashboard verzeichnet gleichzeitig fallenden organischen Traffic.
**Strategisches Ziel:** Auflösung logischer Diskrepanzen zwischen Silo-Datenquellen zur Identifikation der wahren Performance.
**Hands-on Ergebnis:** Ein Contradiction-Log mit getesteten Hypothesen zur Traffic-Abweichung.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne den SEO-Agenten und wechsle in die Data-Analyst-Umgebung.
2. Lade den Ranking-Export (CSV) und den Analytics-Traffic-Export (CSV) parallel hoch.
3. Lass das Modell die Datensätze mergen und nach zeitlichen Brüchen suchen.
4. Identifiziere die Suchintention oder technische Probleme als mögliche Ursache.
**Beispiel-Prompt (DE, PTCF):**
> "Als technischer SEO-Spezialist, vergleiche die steigenden Ranking-Daten mit dem sinkenden Google-Analytics-Traffic [Context]. Protokolliere die direkten Widersprüche zwischen den Datensätzen in einem Contradiction-Log. Formuliere drei überprüfbare technische oder inhaltliche Hypothesen (z.B. geänderte SERP-Features), die dieses Paradoxon erklären [Format]."
**Erwartetes Artefakt:** Ein Logbuch der Widersprüche samt priorisierten Lösungsansätzen.
**Fallstricke (mind. 2 spezifisch):**
- Unterschiedliche Datumsformate in den beiden CSV-Dateien lassen das Python-Skript des Data Analysts abstürzen.
- Das Modell fokussiert sich zu stark auf irrelevante Long-Tail-Keywords, statt den massiven Traffic-Einbruch auf der Hauptseite zu erklären.
**Anschluss-Szenario:** S-AK-008

### S-AK-008 Kill-Switches für Lead-Nurturing-Kampagnen

**Wann nutzen (Trigger):** Das Team entwirft eine extrem aufwändige, 12-stufige E-Mail-Drip-Kampagne für kalte Leads, verliebt sich in das Konzept und verliert den Blick für den ROI.
**Strategisches Ziel:** Festlegung harter, unumstößlicher Abbruchkriterien vor Kampagnenstart zur Vermeidung des Sunk-Cost-Effekts.
**Hands-on Ergebnis:** Ein offizielles Schwellenwert-Dokument mit definierten Notausstiegen.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Canvas
**Vorgehen (3-5 Schritte):**
1. Nutze den CRM-Agenten im geteilten Canvas-Fenster.
2. Erläutere die Zielsetzung und die bereits investierten Ressourcen der Nurturing-Strecke.
3. Lass das Modell drei Ereignisse definieren, bei denen die Kampagne als gescheitert gilt.
4. Integriere diese Kill-Switches direkt in das Marketing-Automation-Tool.
**Beispiel-Prompt (DE, PTCF):**
> "Als kritischer Controller, betrachte unser neues, teures 12-stufiges Lead-Nurturing-Konzept [Context]. Definiere drei extrem spezifische Metrik-Ereignisse (z.B. Unsubscribe-Rate über X Prozent in Woche zwei), die uns zwingen würden, diese Kampagne sofort zu stoppen. Dokumentiere diese harten Schwellenwerte übersichtlich im Canvas [Format]."
**Erwartetes Artefakt:** Eine Tabelle mit Metriken, Schwellenwerten und den exakten Aktionen bei Überschreitung.
**Fallstricke (mind. 2 spezifisch):**
- Die vom Agenten vorgeschlagenen Schwellenwerte sind zu lasch, sodass die Kampagne trotz schlechter Performance weiterlaufen würde.
- Das operative CRM-Team weigert sich, die harten Abbruchkriterien technisch einzurichten, aus Angst vor dem sofortigen Projektabbruch.
**Anschluss-Szenario:** S-AK-009

### S-AK-009 Red-Team-Audit für Pitch-Präsentationen

**Wann nutzen (Trigger):** Das Team hat das finale Investoren-Deck für die Skalierung des B2B-Marketingbudgets fertiggestellt, aber es fehlen kritische Gegenfragen.
**Strategisches Ziel:** Simulation eines feindlichen Audits, um die Argumentationskette vor dem echten Board-Meeting zu härten.
**Hands-on Ergebnis:** Ein Audit-Protokoll mit den unangenehmsten Fragen und Verteidigungsstrategien.
**Eingesetzte Langdock-Fähigkeit(en):** Subagents / Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne den Hauptagenten und aktiviere die Subagent-Funktionalität für parallele Analysen.
2. Lade das gesamte Pitch-Deck als Kontext hoch.
3. Weise die Subagents an, in die Rolle des CFOs und des Vertriebsleiters zu schlüpfen und den Plan zu attackieren.
4. Spiele die Antworten im Team durch und passe das Pitch-Deck an.
**Beispiel-Prompt (DE, PTCF):**
> "Als feindlicher Auditor (Red Team), zerlege unser Budget-Pitch-Deck für das nächste Jahr [Context]. Attackiere die CAC-Kalkulation, die Lead-Annahmen und den Zeitplan mit maximaler Strenge. Erstelle eine Liste der zehn unangenehmsten Fragen, die der Vorstand stellen wird, und formatiere sie im Canvas [Format]."
**Erwartetes Artefakt:** Ein Q&A-Katalog für das Executive-Meeting.
**Fallstricke (mind. 2 spezifisch):**
- Die Subagents verlieren bei Decks über 50 Folien den Kontext und stellen irrelevante Fragen zu Nebensächlichkeiten.
- Das Marketing-Team lässt sich von der Härte des simulierten Audits demotivieren und verwirft gute Ideen vorschnell.
**Anschluss-Szenario:** S-AK-010

### S-AK-010 First-Principles im B2B-Eventmarketing

**Wann nutzen (Trigger):** Das Unternehmen bucht seit fünf Jahren denselben teuren Messe-Stand, ohne messbaren ROI, aber "weil man dort sein muss".
**Strategisches Ziel:** Radikale Dekonstruktion der Lead-Generierung auf fundamentale Wahrheiten zur Entwicklung völlig neuer Formate.
**Hands-on Ergebnis:** Ein Innovations-Briefing ohne jegliche historische Altlasten.
**Eingesetzte Langdock-Fähigkeit(en):** Agent / Web Search
**Vorgehen (3-5 Schritte):**
1. Rufe den Innovations-Agenten auf.
2. Beschreibe das Kernproblem der Kundenakquise im Enterprise-Sektor, ohne das Wort "Messe" zu erwähnen.
3. Lass den Agenten die ökonomischen Grundregeln des Vertrauensaufbaus im B2B-Markt extrahieren.
4. Entwickle aus diesen Axiomen ein radikal neues, budgetschonendes Event-Format.
**Beispiel-Prompt (DE, PTCF):**
> "Als Fundamental-Analyst, ignoriere unsere bisherige Messe-Historie komplett [Context]. Dekonstruiere das physische B2B-Networking auf seine absoluten Grundwahrheiten (Zeit, Vertrauen, Informationsaustausch). Baue einen radikal neuen Lösungsansatz auf [Format]."
**Erwartetes Artefakt:** Ein Konzept-Papier für alternative Touchpoints abseits traditioneller Messen.
**Fallstricke (mind. 2 spezifisch):**
- Die Dekonstruktion wird zu einer philosophischen Abhandlung, aus der sich keine konkreten Event-Formate ableiten lassen.
- Der radikale Neuentwurf ignoriert branchenspezifische Compliance-Regeln für das Einladen von Geschäftskunden.
**Anschluss-Szenario:** S-AK-001

## Hinweise & Quellen-Konflikte

Es wurden keine direkten inhaltlichen Konflikte zwischen den übergebenen Extrakten (T1, T2) und den Source-Dateien (01, 04, 08) festgestellt. Die Spezifikation bezüglich Agent vs Workflow aus Source 04 wurde wie gefordert priorisiert.