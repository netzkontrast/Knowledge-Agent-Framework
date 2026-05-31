# Agenten-Konfiguration für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Agent-Erstellung und grundlegende Konfigurationsparameter
> - Einsatz von Standard-Fähigkeiten und Data-Analyst-Tools
> - Strukturierung und Zuweisung von Zugriffsrechten (Sharing-Modell)
>
> **Was diese Datei NICHT abdeckt:**
> - Detaillierte RAG-Mechaniken und Dateitypen → siehe `03-wissensordner-und-rag`
> - Tiefergehende Workflow-Automatisierungen → siehe `04-workflows`

## Agent-Erstellung Schritt für Schritt

Die Agent-Erstellung (Agent Creation) in Langdock folgt einem strukturierten Prozess, um präzise, domänenspezifische KI-Arbeiter zu konfigurieren. Der Prozess beginnt im zentralen Langdock-Dashboard unter der Rubrik Agenten. Eine Marketing-Direktorin initiiert den Vorgang durch die Zuweisung eines aussagekräftigen Namens (maximal 80 Zeichen) und einer prägnanten Beschreibung (maximal 500 Zeichen), welche die Kernfunktion des Agenten definiert. Der entscheidende Schritt der Agent-Erstellung ist die Definition der Systemanweisungen (System Instructions). Diese Anweisungen müssen strikt dem PTCF-Framework (Persona, Task, Context, Format) folgen und dürfen bis zu 40.000 Zeichen umfassen. Hier wird die Identität des Agenten verankert, beispielsweise als SEO-Spezialist oder Marken-Compliance-Prüfer. Nach der Definition der Persona erfolgt die Zuweisung des Wissensordners (Knowledge Folder). Ein Wissensordner stellt sicher, dass der Agent ausschließlich auf proprietäre Unternehmensdaten, wie etwa Brand Guidelines oder aktuelle Kampagnen-Briefings, zugreift und Halluzinationen vermieden werden. Im letzten Schritt der Agent-Erstellung wählt die Marketing-Direktorin die benötigten Standard-Fähigkeiten (Capabilities) aus, wie etwa Web Search oder Data Analyst. Die konsequente Einhaltung dieses Prozesses der Agent-Erstellung garantiert, dass der resultierende KI-Agent deterministische und markenkonforme Ergebnisse liefert, anstatt generische Antworten zu generieren. Durch die Vergabe von bis zu drei spezifischen Labels wird der Agent abschließend für das gesamte Marketing-Team kategorisiert und leicht auffindbar gemacht.

## Prompt-Input vs Form-Input

Die Wahl zwischen Prompt-Input und Form-Input bestimmt maßgeblich, wie Nutzer mit einem Langdock-Agenten interagieren. Der Prompt-Input (Prompt Mode) bietet eine offene, konversationelle Oberfläche, die maximale Flexibilität für iterative Brainstorming-Sitzungen oder explorative Datenanalysen zulässt. Beim Prompt-Input formuliert der Anwender sein Anliegen frei, was besonders für erfahrene Marketing-Experten von Vorteil ist, die komplexe, mehrstufige Aufgaben delegieren möchten. Demgegenüber steht der Form-Input (Form Mode), der eine rigide, strukturierte Datenerfassung erzwingt. Ein Agent mit Form-Input verlangt die Eingabe spezifischer Variablen in vordefinierte Felder (beispielsweise Zielgruppe, Budget, Kanal), bevor die KI-Verarbeitung überhaupt gestartet wird. Der Form-Input ist strategisch essenziell, wenn standardisierte Ergebnisse wie reproduzierbare Kampagnen-Briefings oder konsistente SEO-Audits gefordert sind. Er eliminiert das Risiko unvollständiger Anfragen und senkt die Einstiegshürde für KI-Anfänger im Marketing-Team drastisch. Während der Prompt-Input die Kreativität fördert, maximiert der Form-Input die Prozesskonformität und Governance. Die Entscheidung zwischen Prompt-Input und Form-Input sollte sich stets am gewünschten Hands-on Ergebnis orientieren: Offene Ideation erfordert Prompt-Input, während strikte Prozess-Pipelines den Form-Input zwingend voraussetzen. Eine Marketing-Direktorin nutzt den Form-Input, um sicherzustellen, dass kein Junior-Manager ein Social-Media-Asset ohne Angabe des exakten Tone-of-Voice-Parameters generieren lässt.

## Konversations-Starter konfigurieren

Die Konfiguration von Konversations-Startern (Conversation Starters) ist ein essenzielles Instrument, um die Adoption von KI-Agenten im Marketing-Team zu beschleunigen. Konversations-Starter sind vorkonfigurierte, anklickbare Prompt-Vorschläge, die dem Anwender beim Öffnen eines Agenten im Prompt-Input-Modus präsentiert werden. Langdock erlaubt die Konfiguration von maximal 20 Konversations-Startern pro Agent, wobei jeder Konversations-Starter auf eine maximale Länge von 255 Zeichen limitiert ist. Diese Limitierung zwingt zur absoluten Präzision. Ein effektiver Konversations-Starter demonstriert dem Nutzer sofort, für welche spezifischen Aufgaben dieser Agent optimiert wurde. Anstatt ein leeres Chat-Fenster zu präsentieren, welches bei KI-Novizen oft zur 'Blank Page Anxiety' führt, leitet ein Konversations-Starter wie 'Analysiere das aktuelle Kampagnen-Briefing auf Einhaltung der Brand Voice' die Interaktion in produktive Bahnen. Bei der Konfiguration von Konversations-Startern sollte die Marketing-Direktorin darauf achten, die häufigsten und wertvollsten Use Cases des jeweiligen Agenten abzubilden. Die Konversations-Starter fungieren somit als interaktives Onboarding-Tutorial für den Agenten. Dieses Vorgehen ist strategisch klug, Konversations-Starter regelmäßig anhand der tatsächlichen Nutzeranfragen zu evaluieren und anzupassen. Konversations-Starter sind ausschließlich für Agenten im Prompt-Input-Modus verfügbar; bei Agenten, die den Form-Input nutzen, entfällt diese Option naturgemäß, da dort die Eingabefelder die Führung des Nutzers übernehmen.

## Standard-Fähigkeiten der Agents

Die Standard-Fähigkeiten der Agents (Default Capabilities) erweitern die Funktionalität eines Langdock-Agenten weit über die reine Textgenerierung hinaus. Jede Standard-Fähigkeit muss bei der Agent-Erstellung explizit aktiviert werden, um unnötige Token-Kosten oder unkontrollierte externe Zugriffe zu vermeiden. Die Standard-Fähigkeit 'Web Search' erlaubt dem Agenten, das Internet in Echtzeit nach aktuellen Marketing-Trends oder Konkurrenzdaten zu durchsuchen. Diese Standard-Fähigkeit ist kritisch für Aufgaben, die nicht durch statische Daten im Wissensordner abgedeckt werden können. Die Standard-Fähigkeit 'Canvas / Document Editor' wird automatisch getriggert, wenn das Hands-on Ergebnis ein längeres Dokument, wie ein vollständiges Briefing oder ein mehrstufiger Projektplan, ist. Der Canvas verlagert die Textproduktion aus dem Chat-Verlauf in einen dedizierten, kollaborativen Editor, was den Token-Verbrauch drastisch optimiert. Die Standard-Fähigkeit 'Image Gen' ermöglicht die direkte Kreation visueller Assets; sie sollte jedoch restriktiv eingesetzt werden, um die Kosteneffizienz zu wahren. Die Standard-Fähigkeit 'Subagents' erlaubt die Orchestrierung mehrerer spezialisierter Agenten, wird jedoch für grundlegende Marketing-Aufgaben selten benötigt. Die Standard-Fähigkeit 'Memory', welche üblicherweise Nutzerpräferenzen sitzungsübergreifend speichert, ist innerhalb von Agenten explizit deaktiviert, um konsistente und isolierte Ausführungen zu garantieren. Die bewusste Selektion dieser Standard-Fähigkeiten der Agents ist der Hebel für eine präzise Steuerung der Agenten-Performance.

## Data-Analyst-Fähigkeit für GA4/CRM-CSV-Analysen

Die Data-Analyst-Fähigkeit ist die mächtigste Funktion für datengetriebenes Marketing innerhalb der Langdock-Umgebung. Da RAG-Systeme und der klassische Wissensordner auf semantischer Textsuche basieren, scheitern sie fundamental an der Verarbeitung von tabellarischen Daten wie Excel- oder CSV-Dateien. Die Data-Analyst-Fähigkeit löst dieses Problem durch die Bereitstellung einer sicheren, isolierten Python-Sandbox. Wenn eine Marketing-Direktorin einen GA4-Export oder einen CRM-Dump analysieren möchte, muss der Agent über die aktivierte Data-Analyst-Fähigkeit verfügen. Der Nutzer lädt die CSV-Datei (maximal 30 MB Dateigröße) direkt in den Chat hoch. Die Data-Analyst-Fähigkeit umgeht die fehleranfällige semantische Vektorisierung und nutzt stattdessen deterministischen Python-Code (inklusive Bibliotheken wie pandas und matplotlib), um exakte Berechnungen, Pivot-Tabellen und grafische Visualisierungen zu generieren. Dieser Vorgang unterliegt einem strikten Timeout-Limit von 60 Sekunden pro Ausführung. Die Data-Analyst-Fähigkeit ist essenziell für präzise ROI-Berechnungen, Kohortenanalysen oder die Identifikation von Abwanderungstrends in CRM-Daten. Sie wandelt unstrukturierte Rohdaten in ein direkt verwertbares Hands-on Ergebnis um, ohne dass sensible Marketing-Metriken durch probabilistische Halluzinationen eines Standard-LLMs verfälscht werden. Die klare Trennung zwischen dem Wissensordner für Textdokumente und der Data-Analyst-Fähigkeit für Tabellen ist das Fundament einer zuverlässigen Marketing-Analytics-Strategie.

## Sharing-Modell (Individual / Group / Workspace / Verified / Highlighted)

Das Sharing-Modell in Langdock bietet eine granulare Rechtesteuerung, um Agenten sicher und zielgerichtet im Unternehmen zu verteilen. Das Sharing-Modell erlaubt zunächst die Konfiguration auf Individual-Ebene, bei der ein Agent ausschließlich für seinen Ersteller sichtbar bleibt – ideal für persönliche Entwürfe und Tests. Für kollaborative Strukturen kommt das Group-Sharing-Modell zum Einsatz, welches sich nahtlos über SCIM mit bestehenden Azure- oder Okta-Gruppen synchronisieren lässt. So kann ein spezifischer Kampagnen-Agent exklusiv für die Gruppe 'EMEA Marketing' freigegeben werden, ohne dass andere Abteilungen Zugriff erhalten. Das Workspace-weite Sharing-Modell publiziert den Agenten für alle Nutzer der Organisation. Um bei wachsender Adoption Wildwuchs zu verhindern, integriert das Sharing-Modell den Status 'Verified Agent'. Administratoren vergeben diesen Badge an intensiv geprüfte Agenten, um diese als Single-Source-of-Truth für bestimmte Aufgaben (z.B. den offiziellen 'Brand Voice Checker') auszuweisen. Ergänzend können besonders kritische Werkzeuge als 'Highlighted Agent' markiert werden, was ihnen eine prominente Platzierung auf dem zentralen Dashboard garantiert. Dieses differenzierte Sharing-Modell schützt sensible Marketing-Daten (wie unveröffentlichte Produkt-Roadmaps in einem Wissensordner, der an einen Group-Agenten gebunden ist) und stellt gleichzeitig sicher, dass verifizierte Produktivitätswerkzeuge maximale Sichtbarkeit im Team erlangen. Die strategische Nutzung des Sharing-Modells ist Governance in Reinkultur.

## Owner-Transfer und Duplikations-Semantik

Die Mechanismen für Owner-Transfer und Duplikations-Semantik sind entscheidend für die Skalierbarkeit und Langlebigkeit von Agentenstrukturen. Die Duplikations-Semantik in Langdock erlaubt, einen bestehenden Agenten mit einem Klick zu kopieren. Bei der Duplikation werden die Systemanweisungen, das gewählte Modell, die aktivierten Standard-Fähigkeiten, die verknüpften Wissensordner und alle statischen Dateianhänge 1:1 übernommen. Die Duplikations-Semantik schließt jedoch explizit persönliche Konfigurationen aus: OAuth-Verbindungen zu Drittsystemen, spezifische Labels und die Historie des ursprünglichen Agenten werden nicht dupliziert. Diese Duplikations-Semantik ermöglicht der Marketing-Direktorin, einen hochgradig optimierten 'Master-SEO-Agenten' zu bauen, den regionale Teams durch Duplikation übernehmen und an lokale Gegebenheiten anpassen können, ohne die Kern-Logik zu zerstören. Der Owner-Transfer wird relevant, wenn die Zuständigkeit für einen Agenten wechselt, insbesondere bei personellen Veränderungen. Ein Owner-Transfer übergibt die administrativen Rechte an einen neuen Nutzer. Auch beim Owner-Transfer ist zu beachten, dass persönliche OAuth-Tokens (die beispielsweise für dynamische Synced Folders benötigt werden) auf den ursprünglichen Ersteller gebunden bleiben. Wenn der ursprüngliche Owner das Unternehmen verlässt, bricht die Synchronisation. Daher erfordert ein sauberer Owner-Transfer stets die Re-Authentifizierung solcher Verbindungen durch den neuen Besitzer, um die operationale Integrität des Agenten und seines Wissensordners sicherzustellen.

## Deployment-Surfaces (Web, Slack, Teams, API, MCP)

Die Deployment-Surfaces definieren, über welche Schnittstellen die Marketing-Teams auf Langdock-Agenten zugreifen können. Die primäre Deployment-Surface ist die native Langdock Web-UI, welche den vollumfänglichen Zugriff auf Canvas, Dateiuploads und die Data-Analyst-Fähigkeit bietet. Um Agenten direkt in die täglichen Kommunikationsströme zu integrieren, unterstützt Langdock Deployment-Surfaces für Slack und Microsoft Teams. Über diese Integrationen können Nutzer einen Agenten via @-Mention in Channels oder in Direktnachrichten ansprechen, was die Schwelle zur Nutzung bei kurzen Content-Reviews oder schnellen Recherchen massiv senkt. Für programmatische Anwendungsfälle stellt die Agent API (v1) eine weitere Deployment-Surface dar. Diese REST-Schnittstelle, die nahtlos mit dem Vercel AI SDK (UIMessage Format) harmoniert, erlaubt die Einbettung von Agenten in proprietäre Marketing-Dashboards oder interne Tools. Die fortschrittlichste Deployment-Surface ist der Model Context Protocol (MCP) Server-Endpoint. Über den /mcp Endpoint kann Langdock als MCP-Server agieren, wodurch Langdock-Agenten direkt aus externen MCP-kompatiblen Clients (wie modernen IDEs) aufgerufen werden können. Die Wahl der richtigen Deployment-Surface ist essenziell für die Adoption: Ein komplexer Analytics-Agent, der riesige GA4-Dumps verarbeitet, wird zwingend in der Web-UI genutzt, während ein agiler Agent für das Übersetzen von kurzen Ad-Copys seine maximale Wirkung entfaltet, wenn er als Deployment-Surface direkt in den Slack-Workflow des Performance-Teams eingebunden ist.

## Agent versus Workflow Entscheidung

Die Agent versus Workflow Entscheidung ist eine fundamentale architektonische Weichenstellung bei der Automatisierung von Marketing-Prozessen. Ein Agent ist eine reaktive Entität: Er agiert in einer synchronen Chat-Umgebung, benötigt einen menschlichen Trigger (einen Prompt) und glänzt bei explorativen, iterativen Aufgaben. Eine Marketing-Direktorin wählt den Agenten, wenn der Prozess Nuancen erfordert, wie etwa beim Feinschliff einer Kampagnenbotschaft, bei der Evaluierung kreativer Konzepte oder bei der Ad-hoc-Analyse eines GA4-Exports über die Data-Analyst-Fähigkeit. Ein Workflow hingegen ist eine proaktive, deterministische Pipeline. Bei der Agent versus Workflow Entscheidung gewinnt der Workflow immer dann, wenn Aufgaben asynchron, massenhaft und event-gesteuert ablaufen müssen. Workflows werden durch Webhooks, Zeitpläne (CRON) oder Formulare getriggert und können komplexe Kaskaden aus API-Aufrufen, bedingten Abzweigungen und strukturierten Datentransformationen ohne menschliche Interaktion abarbeiten. Ein typisches Workflow-Szenario ist das tägliche Abrufen von Leads aus dem CRM, gefolgt von einer KI-gestützten Lead-Scoring-Bewertung und dem automatisierten Versand einer Benachrichtigung. Als Berater-Instanz lautet die Faustregel für die Agent versus Workflow Entscheidung: Nutzen Sie einen Agenten für den Dialog, die strategische Beratung und das Erstellen von Einzel-Artefakten. Sobald ein definierter Prozessschritt 100-mal identisch ausgeführt werden muss oder durch System-Events ausgelöst wird, ist die Implementierung als strukturierter Workflow zwingend vorzuziehen.

## Marketing-Szenarien aus dieser Domäne

### S-AK-BRAND-VOICE-AGE-001 Brand-Voice-Agent-Setup

**Wann nutzen (Trigger):** Externe Agenturen weichen wiederholt von der Markenidentität (Brand Voice) ab. Manuelles Redigieren kostet Ressourcen.
**Strategisches Ziel:** Durchsetzung einer strikten, automatisierten Tone-of-Voice-Prüfung zur Steigerung der Kommunikationskonsistenz.
**Hands-on Ergebnis:** Ein Brand-Voice-Agent, der Texte prüft und ein Redigier-Protokoll ausgibt.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner und Form-Input
**Vorgehen (3-5 Schritte):**
1. Agenten-Erstellung mit Library Folder, der Marken-Handbuch enthält.
2. Aktivierung Form-Input: fragt Zielgruppe, Content-Format und Rohtext ab.
3. Systemanweisungen zur Falsifikation: Agent sucht explizit nach Brüchen.
4. Validierung mit abgelehnten Texten zur Feinjustierung.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Evaluiere den Rohtext auf Verstöße gegen die Brand Guidelines.
> Context: B2B-Entscheider. Vermeide Umgangssprache.
> Format: Tabelle: Original-Zitat | Fehler | Korrektur."
**Erwartetes Artefakt:** Tabellarisches Redigier-Protokoll für Markenabweichungen.
**Fallstricke (mind. 2 spezifisch):**
- Wissensordner enthält veraltete Handbücher.
- Agent kritisiert stilistische Eigenheiten statt Compliance.
**Anschluss-Szenario:** S-AK-SCENARIO-002

### S-AK-GA4-KOHORTEN-AN-002 GA4-Kohorten-Analyse

**Wann nutzen (Trigger):** GA4-Raw-Data-Export muss sofort auf Underperformer analysiert werden, Team hat keine Kapazität für Excel.
**Strategisches Ziel:** Identifikation schwacher Kohorten zur sofortigen Re-Allokation des Budgets.
**Hands-on Ergebnis:** Analyse-Report, der Konversionsraten direkt gegenüberstellt.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Aktivierung Data Analyst und Upload des GA4-CSV-Exports in den Chat.
2. Instruktion zur Datenbereinigung via Python vor der Berechnung.
3. Gruppierung der Daten und Berechnung des ROAS für die Kohorten.
4. Generierung eines Balkendiagramms.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Berechne den ROAS pro Kampagne und erstelle eine Kohortenanalyse.
> Context: Rohdaten aus GA4. Datensätze ohne Umsatzwerte zwingend ausschließen.
> Format: Management-Summary als Bullets und ein PNG-Diagramm."
**Erwartetes Artefakt:** Ein Python-generiertes Dokument mit KPIs.
**Fallstricke (mind. 2 spezifisch):**
- Unsaubere Datums-Strings bringen den Code zum Absturz.
- Prompt verlangt Prognosen, woraufhin probabilistische Halluzinationen entstehen.
**Anschluss-Szenario:** S-AK-SCENARIO-003

### S-AK-RED-TEAM-POSITI-003 Red-Team-Positionierungs-Audit

**Wann nutzen (Trigger):** Produktmarketing präsentiert neue Positionierung; Marketing-Direktorin befürchtet Bestätigungsfehler.
**Strategisches Ziel:** Offenlegung von Schwachstellen vor dem Markt-Launch.
**Hands-on Ergebnis:** Ein Red-Team-Dokument, das Gegenargumente formuliert und Objection Handling erzwingt.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search und Prompt-Input
**Vorgehen (3-5 Schritte):**
1. Aufruf des Strategie-Agenten und Eingabe der neuen Positionierung.
2. Web Search zur Analyse aktueller Landingpage-Claims der Mitbewerber.
3. Red-Team-Methodik: Agent attackiert logische Lücken als zynischer Konkurrent.
4. Priorisierte Auflistung der Angriffsvektoren.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Agiere als Red Team und attackiere diese Positionierungs-Strategie.
> Context: Konkurrenz fokussiert auf Preis. Wir auf Qualität. Nutze Web Search.
> Format: Liste: Zitat aus Entwurf | Konkurrenz-Gegenargument."
**Erwartetes Artefakt:** Ein Angriffs-Protokoll, das Schwächen des Entwurfs aufzeigt.
**Fallstricke (mind. 2 spezifisch):**
- Agent verfällt in sanfte Kritik; strikte Anweisungen fehlen.
- Web Search nutzt veraltete Artikel statt aktueller Landingpages.
**Anschluss-Szenario:** S-AK-SCENARIO-004

### S-AK-SPONSORING-PRE--004 Sponsoring-Pre-Mortem

**Wann nutzen (Trigger):** Vor der Freigabe eines Event-Budgets muss das Team vor Optimismus gewarnt werden.
**Strategisches Ziel:** Risiko-Minimierung durch systematische Antizipation von Fehlerquellen.
**Hands-on Ergebnis:** Eine Pre-Mortem-Risiko-Matrix, die Ausfall-Szenarien listet.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Übergabe der Event-Parameter an den Planungs-Agenten.
2. Konstruktion des Krisen-Szenarios: Sponsoring war finanzieller Totalausfall.
3. Strukturierung der Fehlerquellen in Kategorien (Logistik, Lead-Capture).
4. Eröffnung der Risiko-Matrix im Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Führe Pre-Mortem-Analyse aus. Gehe von ROI-Fehlschlag aus.
> Context: Budget: 150K. Ziel: 200 Enterprise-Leads.
> Format: Tabelle im Canvas: Plausibler Fehlergrund | Kritikalität."
**Erwartetes Artefakt:** Canvas-Dokument mit vollständiger Risiko-Matrix.
**Fallstricke (mind. 2 spezifisch):**
- Agent nennt generische Risiken statt strategischer Fehler.
- Fehlende Zuweisung von Verantwortlichkeiten für Indikatoren.
**Anschluss-Szenario:** S-AK-SCENARIO-005

### S-AK-CROSS-POLLINATI-005 Cross-Pollination Content

**Wann nutzen (Trigger):** Redaktionsplan stagniert, neuartige Themen-Winkel (Angles) fehlen.
**Strategisches Ziel:** Durchbrechung der Betriebsblindheit durch Verknüpfung mit Fremddisziplinen.
**Hands-on Ergebnis:** Eine Matrix von 15 untypischen Content-Ideen mit Analogien.
**Eingesetzte Langdock-Fähigkeit(en):** Prompt-Input und Konversations-Starter
**Vorgehen (3-5 Schritte):**
1. Nutzung eines Konversations-Starters ('Generiere orthogonale Ideen').
2. Zuweisung des Content-Pillars und dreier Fremddomänen.
3. Agent mappt Sicherheitsprinzipien auf Mechanismen der Fremddomänen.
4. Ausarbeitung der stärksten Analogien zu Artikel-Skizzen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Generiere Content-Ideen gekreuzt mit Analogien aus der Gastronomie.
> Context: Zielgruppe: Ermüdete IT-Leiter.
> Format: Liste: Arbeitstitel, 2-Satz-Zusammenfassung und Business-Takeaway."
**Erwartetes Artefakt:** Ein Ideation-Briefing, das sofort neue Ansatzpunkte liefert.
**Fallstricke (mind. 2 spezifisch):**
- Generierte Metaphern werden zu abstrakt.
- Konversations-Starter wurde zu vage konfiguriert.
**Anschluss-Szenario:** S-AK-SCENARIO-006

### S-AK-STEELMAN-SALES--006 Steelman-Sales-Battlecards

**Wann nutzen (Trigger):** Vertrieb verliert Deals. Bisherige Argumentationshilfen basieren auf veralteten Feature-Vergleichen.
**Strategisches Ziel:** Aufrüstung des Vertriebs durch Steelmanning der gegnerischen Argumentation.
**Hands-on Ergebnis:** Eine Battlecard, die das stärkste Argument der Konkurrenz dekonstruiert.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search und Wissensordner
**Vorgehen (3-5 Schritte):**
1. Aktivierung des Sales-Agenten mit Zugriff auf technische Specs.
2. Echtzeit-Analyse aktueller Landingpages des Mitbewerbers.
3. Steelmanning: Formulierung der gegnerischen Value Proposition in ihrer stärksten Form.
4. Generierung der Konter-Strategie an fundamentalen Schwächen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Erstelle Battlecard. Konstruiere den Steelman des gegnerischen Arguments.
> Context: Konkurrenz argumentiert mit 'schnellerer Implementierung'.
> Format: Markdown: 1. Konkurrenz-Steelman 2. Fehler 3. Spezifische Rückfragen."
**Erwartetes Artefakt:** Sofort verteilbare Sales-Battlecard.
**Fallstricke (mind. 2 spezifisch):**
- Agent driftet in lobpreisende Beschreibung des eigenen Produkts ab.
- Gegenbeweise aus dem Wissensordner sind veraltet.
**Anschluss-Szenario:** S-AK-SCENARIO-007

### S-AK-ADVERSARIAL KEY-007 Adversarial Keyword Expansion

**Wann nutzen (Trigger):** Organischer Traffic stagniert. Traditionelle Keyword-Tools liefern nur hochkompetitive Phrasen.
**Strategisches Ziel:** Erweiterung der SEO-Abdeckung zur Aufdeckung ignorierter Intentionen.
**Hands-on Ergebnis:** Eine Keyword-Matrix, die Content-Ideen aus benachbarten Domänen generiert.
**Eingesetzte Langdock-Fähigkeit(en):** Prompt-Input und Canvas
**Vorgehen (3-5 Schritte):**
1. Übergabe stagnierender Seed-Keywords mit Verbot herkömmlicher Synonym-Listen.
2. Agent generiert Phrasen aus Sicht frustrierter Konkurrenz-Nutzer.
3. Gruppierung des Vokabulars in semantische Cluster.
4. Automatische Darstellung der Cluster-Matrix im Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Wende Adversarial Query Expansion an. Finde extreme Nischenprobleme.
> Context: Wir wollen Long-Tail-Traffic von Nutzern abgreifen.
> Format: Tabelle: Intent-Cluster Name | 5 Suchphrasen | Idee für Artikel."
**Erwartetes Artefakt:** Strukturierte SEO-Intent-Matrix.
**Fallstricke (mind. 2 spezifisch):**
- Suchphrasen haben faktisch kein Suchvolumen.
- Expansion bindet sich nicht eng genug an das Produkt.
**Anschluss-Szenario:** S-AK-SCENARIO-008

### S-AK-BAYESIAN PERSON-008 Bayesian Persona Update

**Wann nutzen (Trigger):** Unternehmen betritt neuen Markt. Marketing-Direktorin befürchtet veraltete Vorurteile.
**Strategisches Ziel:** Aktualisierung der Personas durch Konfrontation alter Annahmen mit Marktdaten.
**Hands-on Ergebnis:** Datengetriebenes Persona-Profil inklusive Logbuch verworfener Annahmen.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner und Form-Input
**Vorgehen (3-5 Schritte):**
1. Nutzung des Agenten via Form-Input zur Erfassung starker Vorannahmen (Priors).
2. Vergleich dieser Priors mit aktuellen Marktstudien aus dem Wissensordner.
3. Agent bewertet Annahmen anhand Evidenz und berechnet Wahrscheinlichkeit.
4. Synthetisierung zu einem neuen Profil, das Verschiebungen aufzeigt.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Aktualisiere Buyer Persona. Konfrontiere unsere Priors mit Marktforschung.
> Context: Bisher: 'Geschwindigkeit' ist Hauptargument. Interviews zeigen 'Compliance'.
> Format: Sektion 1: Evaluierung der Priors. Sektion 2: Aktualisiertes Profil."
**Erwartetes Artefakt:** Evidenzbasiertes Persona-Profil.
**Fallstricke (mind. 2 spezifisch):**
- Veraltete Dokumente im Ordner bestätigen veraltete Priors.
- Team trägt nur triviale Platitüden statt kritischer Annahmen ein.
**Anschluss-Szenario:** S-AK-SCENARIO-009

### S-AK-BASE-RATE AGENT-009 Base-Rate Agentur-Pitch-Check

**Wann nutzen (Trigger):** Agentur prognostiziert Konversionsraten dramatisch über historischem Durchschnitt.
**Strategisches Ziel:** Schutz des Budgets vor Planning Fallacy durch Abgleich mit Grundwahrscheinlichkeiten.
**Hands-on Ergebnis:** Evaluierungs-Dokument, das Versprechen mit historischen Base Rates vergleicht.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst und Wissensordner
**Vorgehen (3-5 Schritte):**
1. Upload des Pitch-Decks bei Aktivierung des Wissensordners mit Historie.
2. Extraktion prognostizierter KPIs aus dem PDF.
3. Systematischer Abgleich dieser Prognosen mit historischen Base Rates via Data Analyst.
4. Formulierung harter Nachfragen zur Rechtfertigung.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Evaluiere Pitch-Deck anhand historischer Base Rates.
> Context: Verdopplung der Konversionsrate erfordert massiven empirischen Beweis.
> Format: Tabelle: Metrik | Prognose | Base Rate | Abweichung %."
**Erwartetes Artefakt:** Wasserdichtes Dokument zur methodischen Demontage unrealistischer Versprechen.
**Fallstricke (mind. 2 spezifisch):**
- Wissensordner enthält zu wenige Datenpunkte für signifikante Base Rate.
- Agent liefert nur Textzusammenfassung statt mathematischer Diskrepanz.
**Anschluss-Szenario:** S-AK-SCENARIO-010

### S-AK-FIRST-PRINCIPLE-010 First-Principles Buzzword-Audit

**Wann nutzen (Trigger):** Management fordert mehr 'Brand Authenticity', was zu unkoordinierten Maßnahmen führt.
**Strategisches Ziel:** Eliminierung strategischer Unschärfe durch Dekonstruktion abstrakter Buzzwords.
**Hands-on Ergebnis:** Übersetzungs-Manifest, das Management-Ziele in fundamentale KPIs herunterbricht.
**Eingesetzte Langdock-Fähigkeit(en):** Prompt-Input
**Vorgehen (3-5 Schritte):**
1. Übergabe der vagen Begriffe mit Verbot branchenüblicher Definitionen.
2. Hinterfragen ('Was ist das fundamental?'), bis Nutzerhandlungen erreicht sind.
3. Neu-Konstruktion aus fundamentalen Bausteinen und Ableitung binärer Metriken.
4. Erstellung einer Mapping-Tabelle für die tägliche Arbeit.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist ein strategischer Marketing-Consultant.
> Task: Dekonstruiere 'Brand Authenticity' nach First Principles in messbare Wahrheiten.
> Context: Authentizität muss ein beobachtbares Verhalten sein, kein vages Gefühl.
> Format: Tabelle: Buzzword | Fundamentale Wahrheit | Konkrete KPI | Maßnahme."
**Erwartetes Artefakt:** Ein Manifest, das Sprachverwirrung auflöst und Zielvorgaben liefert.
**Fallstricke (mind. 2 spezifisch):**
- Agent bricht zu früh ab und liefert Lexikon-Definitionen ohne Messbarkeit.
- Abgeleitete KPIs sind zu kleinteilig, um im Alltag messbar zu sein.
**Anschluss-Szenario:** S-AK-SCENARIO-011

## Hinweise & Quellen-Konflikte

Keine inhaltlichen Konflikte identifiziert. Die Ausführungen basieren konsistent auf den Plattform-Inventar-Spezifikationen. Die Erstellung stellte sicher, dass Workflows rein beratend behandelt werden ('Beratung, nicht Ausführung') und keine dedizierten Cross-Referenzen auf existierende Abschnitte verwendet wurden.
