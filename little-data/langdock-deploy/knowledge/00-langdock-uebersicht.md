# Langdock-Übersicht für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Die 5 Säulen von Langdock (Chat, Agents, Workflows, Integrations, Library)
> - Wann nutze ich welche Säule (Entscheidungs-Routing)
> - Glossar der wichtigsten Langdock-Begriffe (DE + EN)
> - Einstieg für KI-Anfänger
> - Hard Limits auf einen Blick (Workspace + Wissensordner + Agent)
>
> **Was diese Datei NICHT abdeckt:**
> - Spezifische Integrationen → siehe `05-integrationen-und-mcp`
> - Prompting-Techniken → siehe `10-prompts-und-skills`

## Die 5 Säulen von Langdock

Langdock bündelt KI-Fähigkeiten für Marketing-Teams in fünf zentralen Produktsäulen. Die Chat-Säule bietet ein Konversations-Interface für synchrones Brainstorming, schnelle Übersetzungen oder asynchrone Recherchen via Deep Research Modus. Sie fungiert als persönlicher, flexibler Arbeitsraum für unstrukturierte Aufgaben, wobei der Canvas-Editor die nahtlose Erstellung und Bearbeitung von Marketing-Materialien direkt neben dem Chat ermöglicht.

Die zweite Säule bilden die Agents. Hierbei handelt es sich um konfigurierbare, domänenspezifische KI-Assistenten. Sie werden mit zielgerichteten System-Prompts, spezifischem Marketing-Wissen (via Wissensordner) und definierten Tools ausgestattet. Agents standardisieren wiederkehrende Aufgaben wie Content-Erstellung im Corporate Design oder Datenanalysen, indem sie den Kontext persistent speichern und über das gesamte Team hinweg teilbar machen.

Die dritte Säule umfasst die Workflows, welche event-basierte Automatisierung ermöglichen. Über einen visuellen Builder können komplexe, mehrstufige Prozesse abgebildet werden – vom Eingang eines Lead-Formulars über das automatisierte KI-Scoring bis hin zur CRM-Aktualisierung. Workflows agieren asynchron im Hintergrund und verbinden Langdock mit der bestehenden Marketing-Infrastruktur.

Ergänzt wird das System durch die Integrations-Säule, die über 60 native Konnektoren (CRM, CMS, Analytics) sowie Unterstützung für das Model Context Protocol (MCP) verfügt. Die fünfte Säule, die Library, dient als zentrales Repository. Hier werden kuratierte Prompts, Skills und statische Wissensordner (Library Folders) verwaltet, um eine Single Source of Truth für Markenrichtlinien und Kampagnen-Briefings sicherzustellen.

## Wann nutze ich welche Säule (Entscheidungs-Routing)

Die Auswahl der richtigen Langdock-Säule ist essenziell für die effiziente Skalierung von Marketing-Prozessen. Für ad-hoc Recherchen, schnelle Übersetzungen, initiales Brainstorming oder die einmalige Analyse von bis zu 20 direkten Dateianhängen ist die Chat-Säule das optimale Werkzeug. Sie erfordert keine vorherige Konfiguration und eignet sich für iterative Ideation, bei der die Richtung noch nicht final feststeht. Wenn tiefgehende, stundenlange Internetrecherchen zu Marktbegleitern erforderlich sind, ist der Deep Research Modus innerhalb des Chats das Mittel der Wahl.

Für wiederkehrende, hochgradig standardisierte Aufgaben muss die Entscheidung auf Agents fallen. Wenn ein Team wöchentlich LinkedIn-Posts im exakten Tone of Voice verfassen, Kampagnen-Performance-Daten konsistent analysieren oder SEO-Briefings nach einer festen Vorlage erstellen soll, stellt ein konfigurierter Agent sicher, dass alle Mitarbeiter mit denselben Leitplanken und demselben angebundenen Wissen arbeiten. Die Einstiegshürde wird hier durch vordefinierte Konversations-Starter signifikant gesenkt.

Workflows kommen zum Einsatz, wenn Prozesse vollständig ohne manuelle Chat-Interaktion ablaufen sollen. Die Marketing-Direktorin wählt diese Säule, wenn Daten asynchron und getriggert verarbeitet werden müssen – beispielsweise bei der automatisierten Klassifizierung eingehender Support-Tickets, der täglichen Generierung von Reporting-Summaries aus Analytics-Daten oder der Übersetzung neuer CMS-Artikel via DeepL-Integration, bevor diese in den Freigabezyklus übergehen. Dieses Routing-Framework verhindert proaktiv, dass Mitarbeiter wertvolle Zeit mit der falschen Werkzeugwahl verschwenden.

## Glossar der wichtigsten Langdock-Begriffe (DE + EN)

Um eine präzise Kommunikation innerhalb des Marketing-Teams sicherzustellen, ist ein einheitliches Vokabular erforderlich. Der Begriff Wissensordner (Library Folder) bezeichnet statische, zentral verwaltete Datei-Repositories mit bis zu 1.000 Dokumenten, die als Wissensbasis für Agents dienen. Im Gegensatz dazu stehen Synced Folders, welche sich automatisch mit externen Quellen wie Google Drive abgleichen, jedoch auf 200 Dateien limitiert sind.

Agenten (Agents) sind spezialisierte KI-Assistenten mit vordefiniertem Verhalten, die im Gegensatz zum Standard-Chat kontextuelle Stabilität für dedizierte Use Cases bieten. Konversations-Starter (Conversation Starters) sind vordefinierte, anklickbare Buttons in einem Agenten, die Nutzern den Einstieg erleichtern und komplexe Prompts hinter einem Klick verbergen.

Der Begriff Workflow beschreibt automatisierte, mehrstufige Prozesse, die ohne menschliches Zutun ablaufen. Deep Research ist ein spezifischer Modus, der asynchron umfangreiche Web-Recherchen durchführt und strukturierte Reports liefert. Der Canvas oder Document Editor ist die kollaborative Schreiboberfläche neben dem Chat, die für längere Textformate wie Whitepapers oder HTML-Templates genutzt wird. Schließlich bezeichnet Memory das systemübergreifende Gedächtnis des Chats, welches Nutzerpräferenzen speichert, in konfigurierten Agenten jedoch standardmäßig deaktiviert ist, um deren deterministisches Verhalten nicht zu verfälschen.

## Einstieg für KI-Anfänger

Für Teams, die neu in der Nutzung von Langdock sind, empfiehlt sich ein strukturierter Onboarding-Pfad, der schnelle Erfolgserlebnisse ohne technische Komplexität liefert. Der erste Schritt sollte immer im Standard-Chat erfolgen, idealerweise mit aktivierter Auto-Modus-Modellauswahl, damit das System eigenständig entscheidet, welches LLM für die jeweilige Anfrage – sei es ein Textentwurf oder eine Datenanalyse – am besten geeignet ist.

Marketing-Direktoren sollten für ihre Teams initial zwei bis drei stark fokussierte Agenten konfigurieren, um den Mehrwert greifbar zu machen. Ein "Brand Voice Agent", an den lediglich das Corporate Design Manual als Wissensordner angehängt ist, stellt einen perfekten Quick Win dar. Teammitglieder können Rohtexte einfügen und erhalten diese im passenden Unternehmenssprech zurück. Die Nutzung von Konversations-Startern ist hierbei Pflicht, da sie die Angst vor dem leeren Eingabefeld nehmen und Best-Practice-Prompts vorgeben.

Ein weiterer anfängerfreundlicher Einstieg ist die Nutzung der direkten Dateianhänge im Chat. Mitarbeiter können bis zu 20 Dateien, beispielsweise vergangene Kampagnen-Auswertungen oder PDF-Broschüren, hochladen und via Chat befragen. Dies demonstriert die Fähigkeit des Systems, große Informationsmengen zu synthetisieren, ohne dass sofort komplexe RAG-Mechaniken (Retrieval-Augmented Generation) oder Workflows verstanden werden müssen. Komplexe Automatisierungen und Integrationen sollten erst im zweiten Schritt thematisiert werden.

## Hard Limits auf einen Blick (Workspace + Wissensordner + Agent)

Die Architektur von Langdock unterliegt spezifischen technischen Limits, die bei der Kampagnenplanung und Tool-Strukturierung zwingend berücksichtigt werden müssen. Im Bereich der Agenten-Konfiguration ist der System-Prompt (die Instructions) auf maximal 40.000 Zeichen limitiert. Der Name eines Agenten darf 80 Zeichen, die Beschreibung 500 Zeichen nicht überschreiten. Pro Agent können maximal 20 Konversations-Starter mit jeweils maximal 255 Zeichen angelegt werden.

Besonders kritisch sind die Restriktionen bei der Wissensanbindung. Ein statischer Wissensordner (Library Folder) kann maximal 1.000 Dateien fassen. Ein Synced Folder, der sich automatisch mit Cloud-Laufwerken abgleicht, ist auf lediglich 200 Dateien limitiert. Ein Agent kann zudem maximal fünf solcher Synced Folders gleichzeitig anbinden. Beim Upload über die API gilt ein hartes Limit von 256 MB pro einzelner Datei. Tabellarische Daten für die Analyse (Data Analyst Modus) dürfen maximal 30 MB groß sein.

Im Standard-Chat können Nutzer maximal 20 direkte Dateianhänge pro Session hochladen. Das systemweite Memory fasst maximal 50 Einträge pro User. Der Deep Research Modus ist im Standard-Workspace auf 15 Ausführungen pro Nutzer innerhalb von 30 Tagen limitiert. Für automatisierte Workflows gilt ein Default-Budget von 500 Euro pro Monat auf Workspace-Ebene, wobei eine einzelne Workflow-Ausführung bei 2.000 Schritten hart abgebrochen wird, um Endlosschleifen zu unterbinden.

## Marketing-Szenarien aus dieser Domäne

### S-LU-001 Q4-Budget Falsifikations-Audit für Performance-Kanäle

**Wann nutzen (Trigger):** Das Team fordert mehr Budget für Meta-Ads mit der Begründung historisch guter CPLs, während LinkedIn-Ads als 'zu teuer' gelten.
**Strategisches Ziel:** Historischen Bias durch Hinterfragen eliminieren, um Budget nicht ineffizient zu verbrennen.
**Hands-on Ergebnis:** Prioritätenliste, die falsche interne Annahmen zu CPLs aufdeckt.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst + direkter Dateianhang
**Vorgehen (3-5 Schritte):**
1. Öffne den Data Analyst Modus in einem neuen Chat.
2. Lade den rohen CSV-Export der letzten drei Kampagnen-Monate aus dem CRM (Salesforce) hoch.
3. Führe den PTCF-Prompt aus, der die KI zwingt, die Hypothese "Meta ist effizienter" aktiv zu widerlegen.
4. Lass dir vom Data Analyst die wahren Lead-to-Customer Conversion-Raten pro Kanal ausrechnen.
5. Exportiere die Gegenbeweis-Tabelle als PDF.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Widerlege, dass Meta-Ads effizienter sind. CONTEXT: Salesforce-Export anbei. FORMAT: CPA vs. CPL Tabelle."
**Erwartetes Artefakt:** Eine präzise Tabelle, die aufzeigt, in welchen spezifischen Kampagnen-Segmenten die Annahmen des Teams durch die aktuellen Daten entlarvt werden.
**Fallstricke (mind. 2 spezifisch):**
- Der Data Analyst Modus scheitert an unsauberen CSV-Headern → Stelle sicher, dass die Spalten 'Lead_Source' und 'Closed_Won' vor dem Upload normiert sind.
- Die KI verliert sich in statistischen Details ohne Handlungsempfehlung → Im Prompt explizit eine abschließende 'Action-Item'-Zeile einfordern.
**Anschluss-Szenario:** S-LU-002

### S-LU-002 Steelmanning gegen die neue Brand-Kampagne der Konkurrenz

**Wann nutzen (Trigger):** Ein Wettbewerber launcht eine virale Brand-Kampagne. Das Team redet sie als 'oberflächlich' klein.
**Strategisches Ziel:** Interne Überheblichkeit stoppen, indem das stärkste Argument für den Erfolg des Wettbewerbers konstruiert wird.
**Hands-on Ergebnis:** Strategie-Memo zur psychologischen Hebelwirkung der Konkurrenz.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research Modus + Canvas Editor
**Vorgehen (3-5 Schritte):**
1. Aktiviere den Deep Research Modus in Langdock.
2. Gib der KI den Link zum neuen Kampagnenvideo des Wettbewerbers und fordere eine Analyse.
3. Führe den Steelmanning-Prompt aus, um eine Verteidigung der Konkurrenz-Strategie zu erzwingen.
4. Ergebnis im Canvas Editor formatieren.
5. Memo mit der Lead-Agentur teilen.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Konstruiere das stärkste Argument für den Erfolg der Konkurrenz-Kampagne. CONTEXT: Das Team nimmt die Bedrohung nicht ernst. FORMAT: Erklärung der psychologischen Trigger."
**Erwartetes Artefakt:** Ein strukturiertes Canvas-Dokument mit H2-Überschriften, das die Konkurrenz-Strategie glorifiziert, um das eigene Team wachzurütteln.
**Fallstricke (mind. 2 spezifisch):**
- Deep Research verliert sich in PR-Mitteilungen des Konkurrenten statt die Kampagne psychologisch zu analysieren → Gib explizit die Rolle des Verhaltenspsychologen vor.
- Das Team fühlt sich durch das Artefakt demotiviert → Ergänze einen Abschnitt 'Unsere ungenutzten Gegenhebel' im finalen Dokument.
**Anschluss-Szenario:** S-LU-003

### S-LU-003 Pre-Mortem-Check für den B2B-Newsletter-Relaunch

**Wann nutzen (Trigger):** Der Go-Live des B2B-Newsletters steht bevor. Es gibt Bedenken, dass Abhängigkeiten übersehen wurden.
**Strategisches Ziel:** Aufdecken von Single Points of Failure, um Launch-Desaster zu verhindern.
**Hands-on Ergebnis:** Checkliste mit präventiven Notfallmaßnahmen für das Ops-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit angebundenem Wissensordner
**Vorgehen (3-5 Schritte):**
1. Rufe den Ops-Agenten mit HubSpot-Zugriff auf.
2. Lade den finalen HTML-Entwurf des Newsletters als direkte Datei hoch.
3. Nutze den Pre-Mortem-Prompt, um das fiktive Scheitern des Launches durchspielen zu lassen.
4. Bewerte die von der KI identifizierten Risiken (z.B. defekte Personalisierungs-Token).
5. Wandle die Risiken in eine konkrete QA-Checkliste für den HubSpot-Administrator um.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Simuliere ein Scheitern des Newsletter-Relaunches. FORMAT: 5 wahrscheinlichste Ursachen für das Scheitern."
**Erwartetes Artefakt:** Eine harte, ungeschönte Liste an potenziellen Launch-Fehlern, formatiert als direkt anwendbare Checkliste.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent schlägt generische Fehler wie 'zu viele E-Mails' vor → Limitiere die Suche strikt auf technische Fehlerquellen im spezifischen Setup (z.B. HubSpot-Workflows).
- Wenn der Wissensordner veraltete Tool-Dokumentationen enthält, sind die Warnungen nutzlos → Überprüfe das Änderungsdatum der Folder-Dokumente vorab.
**Anschluss-Szenario:** S-LU-004

### S-LU-004 Contrast Classes beim Rebranding-Pitch

**Wann nutzen (Trigger):** Die Agentur präsentiert Rebranding-Routen. Dem Entwurf fehlt Schärfe, wird aber akzeptiert.
**Strategisches Ziel:** Lösungsraum sprengen durch radikale Alternativ-Szenarien.
**Hands-on Ergebnis:** Strukturiertes Gegen-Briefing mit radikalen Positionierungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + File Attachment
**Vorgehen (3-5 Schritte):**
1. Erstelle einen neuen Chat-Verlauf.
2. Lade das PDF-Deck des Agentur-Pitches als Dateianhang hoch.
3. Triggere die KI, den aktuellen Entwurf zu analysieren und drei radikal konträre Stoßrichtungen zu entwickeln (Contrast Classes).
4. Vergleiche die vorgeschlagenen Alternativen mit der ursprünglichen Route.
5. Kopiere die stärksten Gegenentwürfe und sende sie als strategisches Feedback zurück an die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Entwickle drei völlig gegensätzliche 'Contrast Classes' zum Rebranding-Pitch. FORMAT: Drei radikale Gegenentwürfe."
**Erwartetes Artefakt:** Ein Dokument mit drei radikalen Alternativ-Ansätzen, das genutzt wird, um die Agentur beim nächsten Termin aus der Komfortzone zu zwingen.
**Fallstricke (mind. 2 spezifisch):**
- Die KI generiert absurde, branchenfremde Alternativen (z.B. Humor in der Medizintechnik) → Definiere im Prompt harte rote Linien für die Brand-Safety.
- Die Alternativen sind zu vage formuliert → Verlange, dass jede Contrast Class einen konkreten 'Slogan' und eine visuelle Leitidee enthält.
**Anschluss-Szenario:** S-LU-005

### S-LU-005 Bayesian Prior Korrektur bei der Messeplanung

**Wann nutzen (Trigger):** Die Messeplanung steht an. Das Team budgetiert blind den Vorjahresbetrag.
**Strategisches Ziel:** Vorannahmen explizit machen und mit der Realität abgleichen.
**Hands-on Ergebnis:** Gegenüberstellung von Annahmen vs. historischen Fakten zur Entscheidungsfindung.
**Eingesetzte Langdock-Fähigkeit(en):** Agent + Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne den dedizierten Event-Marketing Agenten in Langdock.
2. Lade das finale Lead-Tracking der letzten Messe als CSV hoch.
3. Führe den Bayesian-Prior-Prompt aus, um die KI zur Gegenüberstellung von Kosten und tatsächlich generiertem Umsatz zu zwingen.
4. Lass dir ausrechnen, wie hoch die Conversion-Rate der Messe-Leads nach 12 Monaten wirklich war.
5. Integriere die Ergebnisse direkt in die nächste Budget-Präsentation.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Prüfe den Messe-Kanal auf echten ROI. FORMAT: Tabelle mit Leads, Closed-Won und Messe-CPA."
**Erwartetes Artefakt:** Eine schonungslose ROI-Auswertung, die interne Mythen über den Wert von Messen durch harte Salesforce-Daten widerlegt oder bestätigt.
**Fallstricke (mind. 2 spezifisch):**
- Das CRM-Attributionsmodell ist fehlerhaft, was die Messe-Leads künstlich entwertet → Stelle sicher, dass die KI Multi-Touch-Attribution versteht, falls vorhanden.
- Das Team greift das Ergebnis als 'KI-Fehler' an → Fordere von der KI den exakten Rechenweg für jeden Datenpunkt an.
**Anschluss-Szenario:** S-LU-006

### S-LU-006 Source Triangulation beim Content-Outsourcing

**Wann nutzen (Trigger):** SEO-Agenturen melden Erfolge, aber der organische Traffic stagniert.
**Strategisches Ziel:** Triangulation der Reports zur Ermittlung der wahren Performance.
**Hands-on Ergebnis:** Audit-Report, der Diskrepanzen glasklar aufdeckt.
**Eingesetzte Langdock-Fähigkeit(en):** Standard-Chat mit multiplen Dateianhängen
**Vorgehen (3-5 Schritte):**
1. Öffne einen neuen Chat.
2. Lade alle drei Agentur-Reports (als PDF/Excel) sowie den internen Google Search Console Export hoch.
3. Nutze den Triangulations-Prompt, um die KI zur Suche nach Widersprüchen zwischen den vier Dokumenten zu zwingen.
4. Identifiziere, welche Agentur mit 'Vanity Metrics' (z.B. Rankings für irrelevante Keywords) arbeitet.
5. Nutze den Output, um die Verträge der unprofitablen Dienstleister zu kündigen.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Finde Widersprüche zwischen den Agentur-Reports und unseren GSC-Daten. FORMAT: Liste der drei größten Diskrepanzen."
**Erwartetes Artefakt:** Ein strukturiertes Dokument, das unmissverständlich aufzeigt, an welchen Stellen externe Reports geschönt wurden.
**Fallstricke (mind. 2 spezifisch):**
- Die KI scheitert an unterschiedlichen Datumsformaten in den verschiedenen Reports → Zwinge sie im Prompt, alle Daten auf denselben Monat zu normalisieren.
- Die KI bewertet 'Impressions' fälschlicherweise als echten Geschäftserfolg → Definiere im Prompt, dass nur tatsächliche 'Klicks' und 'Conversions' als Erfolg zählen.
**Anschluss-Szenario:** S-LU-007

### S-LU-007 Red Team Stresstest für den Krisen-PR-Plan

**Wann nutzen (Trigger):** Neues PR-Krisen-Playbook liegt vor, Praxis-Tauglichkeit wird bezweifelt.
**Strategisches Ziel:** Aufdecken von Engpässen im PR-Plan vor dem Ernstfall.
**Hands-on Ergebnis:** Praxistaugliches Action-Sheet für das Management-Board.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner
**Vorgehen (3-5 Schritte):**
1. Greife auf den PR-Agenten zu, der das neue Krisen-Playbook als Wissensordner hinterlegt hat.
2. Formuliere einen Red-Team-Prompt, der ein akutes, extrem feindseliges Data-Leak-Szenario auf Twitter simuliert.
3. Zwinge die KI, basierend auf dem Playbook zu reagieren und attackiere jede Antwort der KI auf ihre Machbarkeit in Echtzeit.
4. Dokumentiere, an welchen Stellen der Prozess (z.B. Freigabe durch Legal) zu langsam ist.
5. Exportiere die gefundenen Schwachstellen zur sofortigen Überarbeitung des Playbooks.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Attackiere unseren Krisenplan. FORMAT: 3 Szenarien, in denen er gnadenlos scheitern würde."
**Erwartetes Artefakt:** Ein schonungsloses Audit-Protokoll des Krisenplans, das zwingt, juristische Freigabeprozesse für den Notfall radikal zu kürzen.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent bleibt zu höflich und greift das eigene Unternehmen nicht hart genug an → Ergänze den Prompt um die Klausel 'Ignoriere Höflichkeit, dein Ziel ist es, unsere Reputation zu zerstören'.
- Die KI bewertet technische IT-Sicherheitsaspekte statt der kommunikativen → Fokus im Prompt explizit auf 'externe Wahrnehmung und Medien-Echo' lenken.
**Anschluss-Szenario:** S-LU-008

### S-LU-008 Pre-Commitment-Definition für das neue Tool-Stack

**Wann nutzen (Trigger):** Einführung eines teuren Attribution-Tools steht an. Angst vor fehlendem ROI.
**Strategisches Ziel:** Festlegen harter Abbruchkriterien vor Vertragsunterschrift.
**Hands-on Ergebnis:** Internes Agreement mit Exit-Bedingungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + Canvas
**Vorgehen (3-5 Schritte):**
1. Eröffne einen neuen Chat und lade das SLA und das Pricing-Deck des Tool-Anbieters hoch.
2. Nutze den Pre-Commitment-Prompt, um die KI zur Definition harter Erfolgsmetriken zu zwingen.
3. Überführe die vorgeschlagenen Metriken in den Canvas-Editor.
4. Passe die Schwellenwerte kollaborativ mit dem MarketingOps-Lead an.
5. Speichere das Dokument als PDF und mache es zur Bedingung für die Budget-Freigabe.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Definiere harte Pre-Commitments für das neue Attribution-Tool. FORMAT: Checkliste für M3 und M6 inklusive Kill-Switch."
**Erwartetes Artefakt:** Ein präziser Projektvertrag (Pre-Commitment-Log) im Canvas, der jede Form von Sunk-Cost-Fallacy präventiv ausschließt.
**Fallstricke (mind. 2 spezifisch):**
- Die KI schlägt Metriken vor, die wir historisch gar nicht tracken können → Ergänze im Prompt: 'Nutze nur Metriken, die wir bereits in unserem aktuellen Setup messen können'.
- Die Abbruchkriterien sind zu weich formuliert (z.B. 'Verbesserung der Datenqualität') → Verlange absolute Zahlen ('Senkung der CPA-Diskrepanz auf unter 5%').
**Anschluss-Szenario:** S-LU-009

### S-LU-009 First-Principles-Dekonstruktion des Lead-Funnels

**Wann nutzen (Trigger):** Der B2B-Sales-Funnel ist viel zu komplex geworden. Drop-off-Raten sind katastrophal.
**Strategisches Ziel:** Reduktion des Funnels auf fundamentale Wahrheiten.
**Hands-on Ergebnis:** Visuelles, radikal reduziertes Funnel-Konzept.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner
**Vorgehen (3-5 Schritte):**
1. Greife auf den CRM-Lifecycle Agenten zu, der die aktuelle Funnel-Dokumentation hinterlegt hat.
2. Führe den First-Principles-Prompt aus, um den aktuellen Funnel komplett zu dekonstruieren.
3. Lass die KI die absolute Basis-Motivation der Zielgruppe identifizieren (ohne Rücksicht auf unsere aktuellen Tools).
4. Fordere einen Neu-Entwurf, der maximal drei Touchpoints bis zum Sales-Call zulässt.
5. Exportiere das neue Konzept zur sofortigen Implementierung im Marketing-Automation-Tool.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Dekonstruiere unseren B2B-Funnel auf First Principles. FORMAT: Fundamentale Kauf-Wahrheit und neuer Prozess mit max. 3 Schritten."
**Erwartetes Artefakt:** Ein kompromisslos gekürzter CRM-Workflow, der sämtliche historisch gewachsenen 'Nice-to-have'-E-Mails streicht und den Pfad zum Kauf befreit.
**Fallstricke (mind. 2 spezifisch):**
- Die KI baut bestehende Prozesse einfach nur minimal um → Zwinge sie im Prompt, mit einem sprichwörtlichen 'weißen Blatt Papier' zu beginnen.
- Wichtige rechtliche Double-Opt-In Schritte werden weggekürzt → Erwähne DSGVO-Konformität als zwingendes First Principle.
**Anschluss-Szenario:** S-LU-010

### S-LU-010 Assumption-Decay-Prüfung der Core Persona

**Wann nutzen (Trigger):** Media-Planung basiert auf veralteten Buyer-Personas.
**Strategisches Ziel:** Überprüfung der Kernannahmen über die Zielgruppe auf Aktualität.
**Hands-on Ergebnis:** Aktualisiertes Persona-Set mit verifizierten Marktgegebenheiten.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research Modus
**Vorgehen (3-5 Schritte):**
1. Starte den Deep Research Modus.
2. Lade das alte Persona-PDF von 2023 als Ausgangsbasis hoch.
3. Nutze den Assumption-Decay-Prompt, damit die KI das Web nach aktuellen Gegenbeweisen zu den alten Persona-Aussagen durchkämmt.
4. Überprüfe die von der KI gefundenen Diskrepanzen (z.B. Shift von LinkedIn zu spezialisierten Slack-Communities).
5. Überführe die verifizierten Updates in das offizielle Brand-Wiki.
**Beispiel-Prompt (DE, PTCF):**
> "TASK: Prüfe Personas auf 'Assumption Decay'. FORMAT: Tabelle (Alte Annahme / Gültigkeit / Harter Beleg)."
**Erwartetes Artefakt:** Eine validierte 'Decay-Matrix', die aufzeigt, welche Marketing-Budgets sofort gestoppt werden müssen, weil die Zielgruppe nicht mehr über diese Kanäle erreichbar ist.
**Fallstricke (mind. 2 spezifisch):**
- Deep Research liefert B2C-Trends, obwohl wir B2B agieren → Den Kontext im Prompt glasklar auf 'B2B Software-Einkäufer' einschränken.
- Die KI findet keine aktuellen Studien und erfindet Trends → Strikte Anweisung: 'Gib nur Quellen an, die du mit einer URL belegen kannst, ansonsten markiere die Annahme als ungeprüft'.
**Anschluss-Szenario:** S-LU-011

### S-LU-011 Langdock-Workspace für eine neue Kampagnen-Saison strukturieren

**Wann nutzen (Trigger):** Zu Beginn eines neuen Quartals oder vor einem großen Launch startet das Team mit leeren, unstrukturierten Chat-Historien und verliert schnell den Überblick über verschiedene Produktlinien und Kampagnen. (Quelle: sources/12 Q-001)
**Strategisches Ziel:** Eine saubere, themenbasierte Workspace-Struktur aufbauen, bevor die operative Hektik beginnt, um den gesamten Kampagnenzyklus nachvollziehbar zu halten.
**Hands-on Ergebnis:** Ein vollständig konfigurierter Workspace mit benannten Projekten pro Kampagne, angepinnten Priority-Chats und einem geteilten Einstiegs-Guide für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Library Folder / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Öffne Langdock und lege für jede aktive Kampagne oder Produktlinie ein eigenes Projekt an (z.B. "Q3-Launch-ProductX", "Brand-Refresh-2026").
2. Lade das Kampagnen-Briefing und den Redaktionsplan als PDF in einen Library Folder, der dem Projekt zugeordnet ist.
3. Pinne die wichtigsten laufenden Chats in der Sidebar, damit das Team ohne Suche direkten Zugriff hat.
4. Erstelle zwei bis drei Konversations-Starter pro Projekt (z.B. "Erstelle einen Post-Entwurf für dieses Kampagnen-Thema"), damit neue Teammitglieder sofort produktiv einsteigen können.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workspace-Administratorin für ein 15-köpfiges Marketing-Team. Schlage eine logische Projektstruktur für unsere drei parallelen Q3-Kampagnen vor. Kontext: Wir arbeiten mit LinkedIn-Content, Newsletter und bezahlten Anzeigen gleichzeitig. Format: Tabelle mit Projekt-Name, Zweck und empfohlenen Konversations-Startern."
**Erwartetes Artefakt:** Eine Tabelle mit empfohlener Projekt-Architektur und fertigen Konversations-Starter-Texten, die direkt in die Agent-Konfiguration kopiert werden können.
**Fallstricke (≥2 spezifisch):**
- Zu viele Projekte angelegt, sodass der Überblick verloren geht → Maximal ein Projekt pro laufender Kampagne; thematisch übergreifende Daueraufgaben (z.B. Brand Voice) als eigenen Agenten, nicht als Projekt.
- Konversations-Starter sind zu generisch formuliert → Jeder Starter muss Produkt, Kanal und gewünschtes Output-Format enthalten, damit er echten Mehrwert bringt.
**Anschluss-Szenario:** S-LU-012

### S-LU-012 ROI des Langdock-Setups für den CFO aufbereiten

**Wann nutzen (Trigger):** Das CMO muss im nächsten Quartalsbericht dem CFO den Mehrwert des Langdock-Einsatzes in CFO-Sprache belegen — Aktivitätszahlen allein reichen nicht. (Quelle: A-01)
**Strategisches Ziel:** KI-Effekte in finanzielle Kennzahlen übersetzen, um das Budget für die Plattform im nächsten Planungszyklus zu sichern.
**Hands-on Ergebnis:** Ein einseitiges Canvas-Dokument mit drei bis fünf KPIs, die den Langdock-ROI in Euro und Stunden belegen, fertig für den Quartalsbericht.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Data Analyst
**Vorgehen (4 Schritte):**
1. Exportiere den Workspace-Usage-Report (Token-Verbrauch pro User, Anzahl Agent-Ausführungen, Workflow-Runs) aus dem Langdock-Admin-Bereich.
2. Lade den Export als CSV in den Data Analyst und berechne das Lohnkosten-Äquivalent: Token-Verbrauch je Task × durchschnittlicher Stundensatz des Teams = eingesparte Arbeitszeit in Euro.
3. Ergänze qualitative KPIs: Time-to-First-Draft (vor vs. nach Langdock), Anzahl Revisionsrunden pro Asset, Iterations-Geschwindigkeit.
4. Überführe die Ergebnisse in den Canvas Editor und formatiere ein einseitiges Executive-Summary-Slide.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist CFO-Kommunikations-Expertin. Übersetze die angehängten Langdock-Nutzungsdaten in drei CFO-relevante KPIs. Kontext: Unser Team hat 12 Personen, durchschnittlicher Stundensatz 85 Euro. Format: Tabelle mit KPI-Name, Messmethode, Ist-Wert und monetärer Bewertung."
**Erwartetes Artefakt:** Ein Canvas-Dokument mit ROI-Tabelle (Lohnkosten-Äquivalent, Time-to-Draft-Reduktion, Cost-per-Brief) als Quartalsbericht-Anhang.
**Fallstricke (≥2 spezifisch):**
- Token-Verbrauch wird mit tatsächlicher Zeitersparnis gleichgesetzt, ohne die Qualitäts-Review-Zeit zu berücksichtigen → Im Prompt explizit nach Netto-Ersparnis (Drafting minus Review-Aufwand) fragen.
- Der CFO akzeptiert keine Hochrechnungen ohne Baseline-Daten → Lege vor der Langdock-Einführung einen Benchmark-Wert für "Stunden pro Asset" fest, um einen echten Vorher/Nachher-Vergleich zu ermöglichen.
**Anschluss-Szenario:** S-LU-013

### S-LU-013 Entscheidungs-Matrix: Agentur beauftragen oder intern mit Langdock lösen

**Wann nutzen (Trigger):** Ein neues Content-Projekt landet auf dem Tisch. Das Team diskutiert, ob eine externe Agentur beauftragt oder die Aufgabe intern mit Langdock umgesetzt werden soll — ohne klares Kriterium. (Quelle: A-02)
**Strategisches Ziel:** Eine objektive Entscheidungsgrundlage schaffen, die Agentureinsatz auf strategische Aufgaben konzentriert und Routineproduktion intern skaliert.
**Hands-on Ergebnis:** Eine Entscheidungs-Matrix mit konkreten Schwellenwerten (Volumen, Komplexität, Brand-Criticality), die für zukünftige Briefings wiederverwendet werden kann.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (3 Schritte):**
1. Liste im Chat alle aktuellen Marketing-Aufgaben auf und kategorisiere sie nach: Volumen (einmalig vs. wiederkehrend), strategischer Tiefe (Konzept vs. Ausführung) und Brand-Criticality (Krisenkommunikation vs. Routine-Content).
2. Führe den PTCF-Prompt aus, um eine Entscheidungs-Matrix zu generieren, die für jede Kombination aus Volumen und Komplexität eine klare Empfehlung (Agentur/intern/hybrid) gibt.
3. Speichere die Matrix im Canvas als wiederverwendbares Entscheidungs-Template, das bei jeder neuen Anfrage als Wissensordner-Referenz dient.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist strategische Marketing-Beraterin. Entwickle eine Entscheidungs-Matrix: Wann lösen wir Content-Aufgaben intern mit KI, wann beauftragen wir eine Agentur? Kontext: Wir haben 3 interne Texter und Langdock-Zugang. Format: 2x2-Matrix (Volumen vs. Strategische Tiefe) mit konkreten Schwellenwerten und Beispielen."
**Erwartetes Artefakt:** Eine 2×2-Matrix im Canvas mit vier Quadranten (Intern/KI, Agentur, Hybrid, Führungs-Entscheidung) und konkreten Trigger-Kriterien pro Quadrant.
**Fallstricke (≥2 spezifisch):**
- Die Matrix ist zu abstrakt und gibt keine Zahlen → Verlange konkrete Schwellenwerte (z.B. "ab 20 Assets/Monat intern; unter 5 Assets mit hoher strategischer Tiefe → Agentur").
- Brand-Crisis-Szenarien werden fälschlicherweise als intern lösbar eingestuft → Ergänze im Prompt: "Krisen-PR und Investor-Kommunikation sind immer Agentur-Pflichtig."
**Anschluss-Szenario:** S-LU-014

### S-LU-014 KI-Champions-Programm für das Marketing-Team aufsetzen

**Wann nutzen (Trigger):** Die Langdock-Adoption im Team stagniert bei 30 % aktiver Nutzer. Vereinzelte Power-User nutzen das Tool intensiv, während der Rest abwartet. (Quelle: A-04)
**Strategisches Ziel:** Interne Multiplikatoren (Champions) identifizieren und strukturiert befähigen, um die Flächenakzeptanz im Team in 60 Tagen auf über 70 % zu steigern.
**Hands-on Ergebnis:** Ein 30-Tage-Onboarding-Plan für 5 Champions mit wöchentlichem Format, geteiltem Konversations-Starter-Katalog und einem monatlichen Demo-Ritual.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Identifiziere im Chat anhand von Nutzungsdaten die fünf aktivsten Langdock-User (je einen pro Team-Bereich: Content, Performance, Social, Brand, Analytics).
2. Lass die KI einen 30-Tage-Aktivierungsplan für die Champions erstellen: Woche 1 Onboarding, Woche 2-3 eigene Use-Case-Erprobung, Woche 4 erstes Team-Demo.
3. Erstelle im Canvas einen gemeinsamen Konversations-Starter-Katalog, in den jeder Champion seinen besten Prompt einbringt.
4. Plane ein monatliches 30-Minuten-Format (AI-Office-Hour): 1 Demo, 2 offene Fragen, 1 Ankündigung neuer Starter.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Change-Management-Expertin für KI-Adoption. Erstelle einen 30-Tage-Plan für unser KI-Champions-Programm. Kontext: 5 Champions aus verschiedenen Marketing-Teams, alle bereits Langdock-Nutzer. Format: Tabelle mit Woche, Aktivität, Verantwortlichem und erwartetes Ergebnis."
**Erwartetes Artefakt:** Ein 30-Tage-Aktivierungsplan im Canvas mit Wochenzielen, Rollenzuweisungen und einem Template für den gemeinsamen Konversations-Starter-Katalog.
**Fallstricke (≥2 spezifisch):**
- Champions werden ohne Freistellung nominiert und haben keine Zeit → Commitment von 2 Stunden/Woche muss vor Programmstart schriftlich von der Führungskraft bestätigt werden.
- Der Konversations-Starter-Katalog wird nie aktualisiert → Quartalsweise Pflege-Ritual als festes Agenda-Item in der AI-Office-Hour einplanen.
**Anschluss-Szenario:** S-LU-015

### S-LU-015 Drei Quick-Win-Agenten für Marketing-Einsteiger konfigurieren

**Wann nutzen (Trigger):** Das Team hat Langdock-Zugang, aber niemand weiß, womit anfangen. Der erste Eindruck entscheidet über die langfristige Adoption. (Quelle: sources/12 Q-031; sources/10 S-039)
**Strategisches Ziel:** Drei sofort nutzbare, fehlerverzeihende Agenten bereitstellen, die ohne Vorkenntnisse echten Mehrwert liefern und die Angst vor dem leeren Eingabefeld nehmen.
**Hands-on Ergebnis:** Drei konfigurierte Agenten (Brand Voice Check, Content-Kürzer, Meeting-Protokoll-Konverter) mit je drei Konversations-Startern, bereit zum Teilen mit dem Team.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Wissensordner / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Konfiguriere Agent 1 "Brand Voice Check": System-Prompt mit Tone-of-Voice-Regeln, angebundener Library Folder mit Corporate Design Manual, Konversations-Starter "Prüfe diesen Text auf Brand Voice".
2. Konfiguriere Agent 2 "Content-Kürzer": System-Prompt für Verdichtung auf 50 % ohne Inhaltsverlust, keine Wissensordner nötig, Konversations-Starter "Kürze diesen LinkedIn-Post auf 300 Zeichen".
3. Konfiguriere Agent 3 "Meeting-Protokoll-Konverter": System-Prompt für Action-Item-Extraktion aus Fließtext, Konversations-Starter "Extrahiere alle To-dos aus diesem Protokoll".
4. Teile alle drei Agenten mit der Marketing-Benutzergruppe und dokumentiere die Starter-Liste im Team-Wiki.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Langdock-Onboarding-Spezialistin. Schreibe einen präzisen System-Prompt für einen Brand-Voice-Check-Agenten. Kontext: Unser Tone of Voice ist professionell, direkt, ohne Floskeln. Format: Fertiger System-Prompt unter 500 Zeichen plus drei Konversations-Starter-Texte."
**Erwartetes Artefakt:** Drei fertige System-Prompts und neun Konversations-Starter-Texte, direkt einsetzbar in der Langdock-Agent-Konfiguration.
**Fallstricke (≥2 spezifisch):**
- Der Brand-Voice-Agent gibt zu vage Feedback → System-Prompt muss konkrete Beispiele für "verboten" und "erwünscht" enthalten, nicht nur abstrakte Adjektive.
- Zu viele Konversations-Starter überfordern Anfänger → Maximal drei pro Agent; der wichtigste Anwendungsfall kommt als erster Starter.
**Anschluss-Szenario:** S-LU-016

### S-LU-016 AI-Pilot-Strategie für die ersten 90 Tage planen

**Wann nutzen (Trigger):** Die Führungsebene hat das Go für Langdock gegeben. Jetzt braucht das Marketing-Team einen strukturierten 90-Tage-Rollout-Plan, bevor die operative Arbeit die Planung überholt. (Quelle: A-04; sources/12 Q-004)
**Strategisches Ziel:** Einen messbaren Piloten mit definierten Meilensteinen, Erfolgsmetriken und einem Go/No-Go-Kriterium für den Vollrollout aufsetzen.
**Hands-on Ergebnis:** Ein 90-Tage-Projektplan im Canvas mit drei Phasen (Onboarding, Quick Wins, Skalierung), KPIs pro Phase und einem Pre-Commitment-Log für den Vollrollout.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (4 Schritte):**
1. Definiere im Chat die drei Pilot-Ziele: Adoption-Rate, erste messbare Zeitersparnis und ein dokumentierter Use-Case für den CFO-Report.
2. Lass die KI einen 90-Tage-Plan in drei Phasen entwickeln: Phase 1 (Tage 1-30) Onboarding der Champions, Phase 2 (Tage 31-60) Rollout der Quick-Win-Agenten, Phase 3 (Tage 61-90) Skalierung auf das Gesamt-Team.
3. Ergänze pro Phase harte Erfolgsmetriken und einen Pre-Commitment-Checkpoint (Szenario S-LU-008).
4. Exportiere den Plan als PDF und verteile ihn als offizielles Kick-off-Dokument.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Rollout-Strategin. Erstelle einen 90-Tage-Pilotplan für die Langdock-Einführung in einem 20-köpfigen Marketing-Team. Kontext: Budget genehmigt, 3 Champions identifiziert, kein technisches IT-Team verfügbar. Format: Tabelle mit Phase, Tage, Hauptaktivität, KPI und Go/No-Go-Kriterium."
**Erwartetes Artefakt:** Ein 90-Tage-Projektplan im Canvas mit drei Phasen, KPI-Tabelle und einem Pre-Commitment-Log, der als offizielles Kick-off-Dokument dient.
**Fallstricke (≥2 spezifisch):**
- Phase 1 dauert zu lange und das Team verliert die Motivation → Quick Wins müssen innerhalb der ersten 14 Tage erlebbar sein; mindestens einen Agenten in Woche 2 aktivieren.
- Der Plan wird nie wieder angeschaut → Wöchentliches 15-Minuten-Standup für Pilot-Status als festes Format in Teamkalender verankern.
**Anschluss-Szenario:** S-LU-017

### S-LU-017 Dateianhänge im Chat für schnelle Kampagnen-Recherche nutzen

**Wann nutzen (Trigger):** Das Team erhält kurz vor einem Strategie-Meeting einen Stapel PDFs (Marktberichte, Wettbewerbsanalysen, alte Kampagnenauswertungen) und hat keine Zeit für eine manuelle Zusammenfassung. (Quelle: sources/10 S-003; sources/10 S-006)
**Strategisches Ziel:** Große Informationsmengen in Minuten statt Stunden synthetisieren, ohne sofort komplexe Wissensordner-Strukturen aufbauen zu müssen.
**Hands-on Ergebnis:** Eine strukturierte Zusammenfassung der wichtigsten Erkenntnisse aus bis zu 20 Dokumenten, fertig für das Strategie-Meeting.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / direkter Dateianhang
**Vorgehen (3 Schritte):**
1. Öffne einen neuen Chat und lade alle relevanten Dateien als direkte Anhänge hoch (maximal 20 Dateien pro Session).
2. Führe den PTCF-Prompt aus, der die KI zur Synthese und Priorisierung der wichtigsten Erkenntnisse zwingt.
3. Kopiere die Zusammenfassung in die Meeting-Agenda oder sende sie als Slack-Nachricht an das Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Marketing-Analytikerin. Lies alle angehängten Dokumente und identifiziere die drei wichtigsten strategischen Erkenntnisse für unsere Q3-Kampagnenplanung. Kontext: Wir fokussieren auf B2B-Software-Käufer in der DACH-Region. Format: Drei nummerierte Punkte mit je einer konkreten Handlungsempfehlung."
**Erwartetes Artefakt:** Eine nummerierte Liste mit drei bis fünf priorisierten Erkenntnissen und konkreten Handlungsempfehlungen, fertig für den Meeting-Einsatz.
**Fallstricke (≥2 spezifisch):**
- Bei mehr als 10 Dateien verliert die KI den Überblick und zitiert falsche Quellen → Priorisiere die wichtigsten fünf Dateien, wenn der Zeitdruck hoch ist; für Vollanalysen auf Wissensordner-Agenten (S-LU-015) wechseln.
- Das 20-Datei-Limit pro Chat-Session wird übersehen → Bei größeren Dokumentenmengen einen Library Folder anlegen statt direkte Anhänge zu nutzen.
**Anschluss-Szenario:** S-LU-018

### S-LU-018 Wissensordner als Single Source of Truth für Kampagnen-Briefings einrichten

**Wann nutzen (Trigger):** Briefings für Freelancer und Agenturen existieren in verschiedenen Versionen auf Google Drive, im E-Mail-Postfach und auf Sharepoint — niemand weiß, welches die aktuelle Version ist. (Quelle: sources/10 S-002; sources/12 Q-038)
**Strategisches Ziel:** Einen einzigen, versionierten Wissensordner als verbindliche Referenz für alle Kampagnen-Briefings etablieren, auf den Agenten und das Team zugreifen.
**Hands-on Ergebnis:** Ein strukturierter Library Folder mit aktuellem Briefing-Template, Brand-Voice-Dokument und Kampagnen-Styleguide, angebunden an den Haupt-Content-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner / Library Folder / Agents
**Vorgehen (4 Schritte):**
1. Lege einen neuen Library Folder "Kampagnen-Briefings 2026" an und definiere eine klare Namenskonvention für alle Dateien (z.B. "YYYY-MM_Kampagne_Briefing_v1.pdf").
2. Lade die aktuellen Masterdokumente hoch: Briefing-Template, Tone-of-Voice-Guide, Zielgruppen-Persona und aktuellen Kampagnenplan.
3. Binde den Folder an den primären Content-Agenten an und teste mit einem Konversations-Starter, ob die KI korrekte Briefing-Inhalte abruft.
4. Kommuniziere im Team: Dieser Folder ist die einzige autorisierte Quelle; alle anderen Versionen werden archiviert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Content-Operations-Managerin. Erstelle eine Namenskonvention und Ordner-Struktur für unsere Kampagnen-Briefings in Langdock. Kontext: 3 parallele Kampagnen, 5 Freelancer, quartalsweiser Update-Rhythmus. Format: Checkliste mit Dateinamen-Muster, Pflicht-Dateien pro Ordner und Update-Prozess."
**Erwartetes Artefakt:** Eine dokumentierte Ordnerstruktur mit Namenskonvention, Pflicht-Dateiliste und einem Update-Prozess, der im Team-Wiki veröffentlicht wird.
**Fallstricke (≥2 spezifisch):**
- Der Folder wird schnell veraltet, weil kein Update-Owner definiert ist → Jedes Briefing-Dokument bekommt einen namentlichen Verantwortlichen und ein Verfallsdatum im Dateinamen.
- Zu viele Dokumente (über 200) machen die Retrieval-Qualität schlechter → Archiviere Dokumente älter als 12 Monate in einem separaten "Archiv"-Folder; aktiver Folder bleibt unter 100 Dateien.
**Anschluss-Szenario:** S-LU-019

### S-LU-019 Redaktionskalender für 90 Tage mit dem Content-Agenten erstellen

**Wann nutzen (Trigger):** Das Content-Team benötigt zu Quartalsstart einen vollständigen 90-Tage-Redaktionsplan, der Produkt-Launches, Branchen-Events und Content-Formate koordiniert — bisher ein 4-Stunden-Workshop. (Quelle: sources/10 S-001)
**Strategisches Ziel:** Den Planungsaufwand für den Redaktionskalender von mehreren Stunden auf unter 30 Minuten reduzieren und dabei eine höhere strategische Kohärenz sicherstellen.
**Hands-on Ergebnis:** Ein vollständiger 90-Tage-Redaktionskalender als Canvas-Tabelle mit Datum, Thema, Format, Zielgruppe und Funnel-Stufe.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Wissensordner / Canvas
**Vorgehen (4 Schritte):**
1. Öffne den Content-Agenten, der den Produkt-Roadmap-Folder und den Kampagnenplan angebunden hat.
2. Gib Eckdaten ein: Quartals-Themen, geplante Produkt-Launches und externe Events (Messen, Feiertage).
3. Führe den PTCF-Prompt aus, um den Kalender zu generieren, und überführe ihn direkt in den Canvas Editor.
4. Passe im Canvas-Split-Screen Engpässe (z.B. zu viele High-Effort-Assets in einer Woche) kollaborativ mit dem Team an.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Content-Strategin. Erstelle einen 90-Tage-Redaktionsplan für ein B2B-Software-Unternehmen. Kontext: Produkt-Launch am 15. des zweiten Monats, zwei Messen im Quartal, Team hat 3 Content-Produzierende. Format: Canvas-Tabelle mit Spalten Datum, Thema, Format (Blog/Social/Newsletter), Zielgruppe und Funnel-Stufe."
**Erwartetes Artefakt:** Eine Canvas-Tabelle mit 90 Tagen, die alle Kampagnen-Themen, Formate und Ressourcen-Zuweisungen enthält und direkt als Basis für das Team-Briefing dient.
**Fallstricke (≥2 spezifisch):**
- Die KI häuft aufwändige Assets (Whitepapers, Videos) in einer einzigen Woche — Produktionskapazitäten ignoriert → Im Prompt explizit eine wöchentliche Kapazitätsgrenze angeben (z.B. "max. 1 Long-Form-Asset pro Woche").
- Nationale Feiertage und Urlaubszeiten werden nicht berücksichtigt → Füge einen Kontext-Block mit DACH-Feiertagen und Urlaubs-Perioden des Teams ein.
**Anschluss-Szenario:** S-LU-020

### S-LU-020 Deep Research für Wettbewerbs-Monitoring automatisieren

**Wann nutzen (Trigger):** Das Team beobachtet Wettbewerber manuell über Google Alerts, was zeitaufwändig und inkonsistent ist. Neue Kampagnen der Konkurrenz werden oft erst Wochen später bemerkt. (Quelle: sources/10 S-006; sources/10 S-021)
**Strategisches Ziel:** Ein strukturiertes, wiederholbares Wettbewerbs-Monitoring aufbauen, das monatlich aktuelle Erkenntnisse liefert, ohne manuellen Rechercheaufwand.
**Hands-on Ergebnis:** Ein strukturierter Monitoring-Report (monatlich) mit den wichtigsten Wettbewerber-Aktivitäten, neuen Kampagnen und identifizierten Lücken als Canvas-Dokument.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research Modus / Canvas / Web Search
**Vorgehen (4 Schritte):**
1. Aktiviere den Deep Research Modus und definiere die drei bis fünf Hauptwettbewerber als feste Recherche-Scope.
2. Führe den strukturierten Recherche-Prompt aus: neue Kampagnen, Positionierungs-Änderungen, neue Produkt-Features, Pressemitteilungen der letzten 30 Tage.
3. Überführe die Ergebnisse in den Canvas Editor und formatiere sie als monatlichen Monitoring-Report mit H2-Abschnitten pro Wettbewerber.
4. Teile den Report mit dem strategischen Marketing-Team als Grundlage für die monatliche Strategie-Runde.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Competitive-Intelligence-Analystin. Recherchiere die letzten 30 Tage der Wettbewerber-Aktivitäten für [Wettbewerber A, B, C] via Deep Research. Kontext: Wir sind im B2B-SaaS-Markt für HR-Software tätig. Format: Bericht mit H2 pro Wettbewerber, je drei Bullet Points zu neuen Kampagnen, Positioning-Änderungen und identifizierten Schwächen."
**Erwartetes Artefakt:** Ein monatlicher Monitoring-Report im Canvas mit je drei Erkenntnissen pro Wettbewerber und einer abschließenden "Strategische Implikationen für uns"-Sektion.
**Fallstricke (≥2 spezifisch):**
- Deep Research liefert PR-Selbstdarstellung statt kritischer Analyse → Den Prompt explizit auf "identifiziere auch Schwächen und Kundenbeschwerden" ausrichten und Bewertungsplattformen (G2, Capterra) als Quelle nennen.
- Der monatliche Report wird produziert, aber niemand liest ihn → Report immer mit einer "Top-3-Handlungsempfehlungen"-Box beginnen; diese Box ist das einzige Pflichtstück für die Strategie-Runde.
**Anschluss-Szenario:** S-LU-021

### S-LU-021 Vendor-Lock-in-Risiko bei Langdock strukturiert bewerten

**Wann nutzen (Trigger):** Die IT oder der CFO fragt: "Was passiert, wenn wir Langdock wechseln wollen?" Das Marketing-Team hat keine Antwort und keine Exit-Strategie. (Quelle: A-03)
**Strategisches Ziel:** Das Vendor-Lock-in-Risiko systematisch bewerten und präventive Maßnahmen (Export-Routine, Multi-Provider-Fallback) in die Governance einbauen.
**Hands-on Ergebnis:** Ein einseitiges Risiko-Assessment mit konkreten Maßnahmen zur Lock-in-Reduktion (BYOK-Option, Wissensordner-Export-Routine, Markdown-Archivierung).
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (4 Schritte):**
1. Liste im Chat alle Langdock-Abhängigkeiten auf: Wissensordner-Inhalte, Agent-Konfigurationen, Workflow-Logiken, gespeicherte Prompts.
2. Führe einen Pre-Mortem-Prompt aus (Quelle: S-LU-003): "Was verlieren wir, wenn Langdock morgen nicht mehr verfügbar ist?"
3. Definiere pro Abhängigkeitstyp eine Gegenstrategie: Wissensordner quartalsweise als Markdown exportieren, Agent-System-Prompts in Git versionieren, Workflow-Logik dokumentieren.
4. Erstelle einen jährlichen "Wechsel-Drill-Kalender" als Canvas-Eintrag, der die Export-Routine und einen Fallback-Test auf einem alternativen Provider enthält.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist IT-Risiko-Beraterin mit Fokus auf SaaS-Abhängigkeiten. Bewerte unser Langdock-Lock-in-Risiko. Kontext: Wir haben 12 konfigurierte Agenten, 5 Wissensordner und 8 aktive Workflows. Format: Tabelle mit Abhängigkeitstyp, Risiko-Level (hoch/mittel/niedrig), Export-Möglichkeit und Gegenstrategie."
**Erwartetes Artefakt:** Eine Risiko-Tabelle mit Gegenstrategie pro Abhängigkeitstyp und einem konkreten Aktionsplan für den jährlichen Wechsel-Drill.
**Fallstricke (≥2 spezifisch):**
- Wissensordner-Inhalte werden als exportiert angenommen, obwohl nur die Rohdateien (nicht die Embeddings) portierbar sind → Klarstellen: Embeddings sind plattformspezifisch; nur die Quelldateien sichern.
- Der Wechsel-Drill wird nie durchgeführt → Konkrete Person und Datum im Pre-Commitment-Log (S-LU-008) festhalten; ohne Datum bleibt es eine Absicht.
**Anschluss-Szenario:** S-LU-022

### S-LU-022 Sales-Enablement-Übergabe mit Langdock strukturieren

**Wann nutzen (Trigger):** Marketing produziert Briefings und Kampagnen-Assets, aber Sales nutzt sie nicht — weil die Übergabe unstrukturiert per E-Mail oder Slack passiert und der Kontext fehlt. (Quelle: A-05)
**Strategisches Ziel:** Eine standardisierte Übergabe-Routine etablieren, die Sales-Mitarbeitende in unter 5 Minuten in jede neue Kampagne einbindet und Einwand-Handling direkt mitliefert.
**Hands-on Ergebnis:** Ein Briefing-Template im Wissensordner und ein dedizierter Konversations-Starter für den Sales-Agent, der Q&A-Format mit Objection-Handling ausgibt.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Wissensordner / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Erstelle ein standardisiertes Kampagnen-Übergabe-Template: Kampagnenziel, Kernbotschaft, Zielgruppen-Persona, Top-3-Argumente und häufigste Einwände mit Antworten.
2. Lade das Template als Masterdokument in den Sales-Enablement-Wissensordner.
3. Konfiguriere einen Sales-Agenten mit Konversations-Starter: "Erkläre mir die aktuelle Kampagne in 5 Minuten" → Output: kompakte Briefing-Zusammenfassung mit Einwand-Handling.
4. Teste den Agenten mit drei echten Sales-Fragen und überarbeite das Template auf Basis der Lücken.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Sales-Enablement-Expertin. Erstelle ein Kampagnen-Briefing-Template, das Sales-Mitarbeitende in unter 5 Minuten auf eine neue Marketing-Kampagne vorbereitet. Kontext: B2B-Software, Sales-Cycle 3-6 Monate, Haupteinwände sind Preis und Implementierungsaufwand. Format: Strukturiertes Template mit Abschnitten Kampagnenziel, Kernbotschaft, Top-3-Argumente und Einwand-Handling-Tabelle."
**Erwartetes Artefakt:** Ein standardisiertes Briefing-Template plus ein fertiger Konversations-Starter-Text für den Sales-Agenten, direkt einsetzbar in der Langdock-Konfiguration.
**Fallstricke (≥2 spezifisch):**
- Das Einwand-Handling ist zu generisch und deckt nicht die echten Kundenfragen ab → Interview vorher drei Sales-Mitarbeitende und integriere die Top-5 echten Einwände aus CRM-Notizen.
- Sales nutzt den Agenten nicht, weil sie nicht wissen, dass er existiert → Onboarding-Ritual: Jede neue Kampagne wird mit einem Slack-Link zum Agenten-Konversations-Starter an den Sales-Kanal kommuniziert.
**Anschluss-Szenario:** S-LU-023

### S-LU-023 AI-Ethik-Leitlinien für das Marketing-Team erstellen

**Wann nutzen (Trigger):** Das Team setzt KI zunehmend für Content-Erstellung, Personalisierung und Wettbewerbs-Analyse ein — ohne klare interne Regeln, was erlaubt ist und was nicht. (Quelle: A-06; A-50)
**Strategisches Ziel:** Einen praxistauglichen KI-Ethik-Kompass entwickeln, der klar definiert, welche Marketing-Aufgaben nie durch KI gehen dürfen, und der EU-AI-Act-Anforderungen vorwegnimmt.
**Hands-on Ergebnis:** Ein einseitiger KI-Ethik-Leitfaden für das Marketing-Team mit vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) und einer konkreten "Nie-KI"-Liste.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (4 Schritte):**
1. Erstelle im Chat eine erste Rohversion der "Nie-KI"-Liste: Strategie-Entscheidungen, Brand-Krisenkommunikation, Mitarbeiter-Feedback, Kompensations-Verhandlungen, Investor-Kommunikation.
2. Führe einen Falsifikations-Prompt aus: "Welche dieser Verbote sind übertrieben und warum könnten sie die Effizienz unnötig einschränken?" — um die Liste zu schärfen.
3. Ergänze die vier Ethik-Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) mit je einem konkreten Marketing-Beispiel pro Säule.
4. Formuliere den finalen Leitfaden im Canvas als einseitigen 1-Pager, der im Team-Wiki und im Onboarding-Material verankert wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Ethik-Beraterin für ein B2B-Marketing-Team. Erstelle einen praxistauglichen KI-Ethik-Kompass. Kontext: Team nutzt KI für Content, Analyse und Personalisierung; EU AI Act tritt 2026-2027 in Kraft. Format: 1-Pager mit vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit), je einem Praxis-Beispiel und einer Nie-KI-Liste mit fünf Punkten."
**Erwartetes Artefakt:** Ein einseitiger KI-Ethik-Leitfaden im Canvas mit vier Säulen, Praxis-Beispielen und einer verbindlichen "Nie-KI"-Liste für das Marketing-Team.
**Fallstricke (≥2 spezifisch):**
- Der Leitfaden ist zu abstrakt und gibt dem Team keine Handlungssicherheit → Jede Säule muss mit einem "Wenn ... dann ..."-Beispiel konkretisiert sein, das direkt aus dem eigenen Marketing-Alltag stammt.
- Die "Nie-KI"-Liste wird nie aktualisiert → Quartalsweise Review als festes Agenda-Item in der AI-Office-Hour (S-LU-014) einplanen; EU-AI-Act-Fristen sind im Kalender zu verankern.
**Anschluss-Szenario:** S-LU-024

### S-LU-024 Wöchentliche AI-Nutzungs-Kennzahlen für das Board-Deck aufbereiten

**Wann nutzen (Trigger):** Das Board fragt in jedem Meeting nach dem Stand der KI-Transformation — das Marketing-Team liefert bisher nur qualitative Eindrücke statt messbarer KPIs. (Quelle: A-10)
**Strategisches Ziel:** Drei Board-taugliche AI-KPIs etablieren, die monatlich automatisch aus dem Langdock-Workspace gezogen und in einem standardisierten Slide-Template aufbereitet werden.
**Hands-on Ergebnis:** Ein Canvas-Template für das monatliche Board-Slide mit drei KPIs (AI-Assisted-Output-Ratio, Cost-per-Brief, Time-from-Brief-to-Draft) und einer Trend-Tabelle.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst / Canvas / Workflows
**Vorgehen (4 Schritte):**
1. Definiere die drei KPIs mit Messlogik: AI-Assisted-Output-Ratio (Anteil KI-gestützter Assets an Gesamt-Output), Cost-per-Brief (Gesamtkosten Langdock ÷ Anzahl produzierter Briefings), Time-from-Brief-to-Draft (Durchschnittliche Stunden von Briefing-Erstellung bis erstem Entwurf).
2. Exportiere die Langdock-Nutzungsdaten monatlich als CSV und lade sie in den Data Analyst.
3. Lass den Data Analyst die drei KPIs berechnen und als Trend-Tabelle (Monat-über-Monat) ausgeben.
4. Überführe die Ergebnisse in ein Canvas-Board-Slide-Template, das mit jeder monatlichen Aktualisierung nur die Zahlen erfordert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-Analytics-Expertin mit Board-Reporting-Erfahrung. Berechne die drei AI-KPIs aus der angehängten CSV. Kontext: Monat Mai 2026, 12 Team-Mitglieder, 45 produzierte Assets, Langdock-Kosten 480 Euro. Format: Tabelle mit KPI-Name, Formel, Ist-Wert Mai, Vormonat-Vergleich und Trend-Pfeil."
**Erwartetes Artefakt:** Eine Canvas-Slide-Vorlage mit drei berechneten KPIs, Trend-Tabelle und einem Platzhalter-Text für die Board-Interpretation.
**Fallstricke (≥2 spezifisch):**
- Die KPIs werden ohne Baseline-Daten gestartet und der Trend ist nichtssagend → KPI-Messung beginnt am ersten Tag der Langdock-Nutzung; rückwirkende Erhebung ist meist unmöglich.
- Das Board akzeptiert nur Umsatz-relevante Kennzahlen → Ergänze optional eine vierte Metrik: "Durch KI-beschleunigte Assets, die zu X Euro Umsatz-Pipeline beigetragen haben" — nur wenn Attribution sauber messbar ist.
**Anschluss-Szenario:** S-LU-025

### S-LU-025 Langdock-Governance-Rahmen für den Workspace-Admin aufsetzen

**Wann nutzen (Trigger):** Der Workspace wächst auf 20+ Nutzer und 10+ Agenten. Ohne klare Governance entstehen doppelte Agenten, veraltete Wissensordner und unkontrollierter Token-Verbrauch. (Quelle: A-35; A-36; sources/12 Q-036)
**Strategisches Ziel:** Einen schlanken Governance-Rahmen einführen, der Verantwortlichkeiten für Agenten, Wissensordner und Budget klar regelt, ohne die Agilität des Teams einzuschränken.
**Hands-on Ergebnis:** Ein Governance-Dokument mit RACI-Modell für Agenten-Ownership, Quartals-Review-Prozess für Wissensordner und einem Budget-Eskalationsplan bei Token-Überschreitung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Erstelle im Chat ein Inventar aller bestehenden Agenten und Wissensordner: Name, Zweck, letztes Update, aktueller Owner.
2. Führe den PTCF-Prompt aus, um ein RACI-Modell für jeden Agenten zu generieren: Owner (Konfiguration), Approver (Brand-Compliance), Consulted (Wissens-Quelle), Informed (Team-Nutzung).
3. Definiere einen Quartals-Review-Prozess für Wissensordner: Prüfe Aktualität, archiviere veraltete Dokumente, aktualisiere System-Prompts bei Produkt-Änderungen.
4. Lege Budget-Schwellenwerte fest: 80-%-Warnschwelle im Workspace-Admin, Eskalationsplan bei Überschreitung, monatlicher Token-Report an den CMO.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workspace-Governance-Beraterin für ein 25-köpfiges Marketing-Team. Erstelle ein RACI-Modell für unsere 12 Langdock-Agenten. Kontext: Team-Struktur ist Content (5 Personen), Performance (4), Social (3), Brand (3), Analytics (2). Format: Tabelle mit Agent-Name, Owner, Approver, Consulted, Informed und Quartals-Review-Datum."
**Erwartetes Artefakt:** Ein vollständiges Governance-Dokument im Canvas mit RACI-Tabelle für alle Agenten, Quartals-Review-Checkliste für Wissensordner und Budget-Eskalationsplan.
**Fallstricke (≥2 spezifisch):**
- Das RACI-Modell wird einmalig erstellt und nie gepflegt → Jeder neue Agent bekommt das RACI-Template als Pflicht-Schritt in der Konfigurations-Checkliste; kein Agent ohne Owner.
- Token-Budget-Limits werden zu restriktiv gesetzt und bremsen produktive Nutzung → Starte mit einem großzügigen Limit (120 % des erwarteten Verbrauchs) und justiere nach drei Monaten Nutzungsdaten.
**Anschluss-Szenario:** S-LU-001
