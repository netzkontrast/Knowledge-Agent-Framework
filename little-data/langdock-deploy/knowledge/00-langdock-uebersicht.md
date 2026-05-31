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
**Anschluss-Szenario:** S-LU-026

### S-LU-026 Token-Verbrauch der teuersten Prompts identifizieren und senken

**Wann nutzen (Trigger):** Der monatliche Workspace-Usage-Report zeigt, dass 5 % der Prompts mehr als 50 % des Token-Budgets verbrauchen — ohne erkennbaren Mehrwert. (Quelle: A-21)
**Strategisches Ziel:** Die kostentreibenden "Heavy-Hitter-Prompts" identifizieren, refaktorieren und das Monatsbudget ohne Qualitätseinbußen um 20–40 % senken.
**Hands-on Ergebnis:** Eine priorisierte Refactor-Liste der Top-5 Token-Fresser mit konkreten Kürzungsvorschlägen und geschätzter Einsparung in Euro.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin-Dashboard / Data Analyst / Chat
**Vorgehen (4 Schritte):**
1. Öffne im Langdock-Admin-Bereich den Usage-Report und sortiere nach Token-Verbrauch pro Agent und pro User — exportiere als CSV.
2. Lade die CSV in den Data Analyst und identifiziere die Top-5 Token-Verbraucher: Agenten-Name, durchschnittliche Prompt-Länge, Häufigkeit und Kosten in Euro.
3. Analysiere pro Heavy-Hitter: Ist der System-Prompt unnötig lang? Wird ein teures Modell (Opus) für eine Routine-Aufgabe genutzt? Könnte ein Flash-Modell denselben Output liefern?
4. Erstelle die Refactor-Liste im Canvas: Alter Prompt (Zeichenanzahl), neuer kürzerer Prompt, Modell-Downgrade-Empfehlung und geschätzte monatliche Ersparnis.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Kostenoptimiererin. Analysiere die angehängte Usage-CSV unseres Langdock-Workspace. Identifiziere die 5 kostenintensivsten Agenten und schlage konkrete Kürzungsmaßnahmen vor. Kontext: Unser Monatsbudget beträgt 600 Euro, aktuell verbrauchen wir 920 Euro. Format: Tabelle mit Agent-Name, aktuellen Kosten, Einsparpotenzial und Maßnahme."
**Erwartetes Artefakt:** Eine Refactor-Prioritätsliste im Canvas mit fünf Einträgen, geschätzter Ersparnis pro Maßnahme und einer Gesamteinsparungsprojektion für den Folgemonat.
**Fallstricke (≥2 spezifisch):**
- Token-Kosten werden mit Modell-Provider-Listenpreisen verwechselt, ohne den Langdock-Aufschlag (10 %) einzurechnen → Immer den Brutto-Betrag aus dem Admin-Export als Basis nehmen, nicht die Provider-API-Preisliste.
- Das günstigste Modell liefert für Brand-Voice-kritische Texte schlechte Qualität → Für jeden Refactor-Schritt eine Qualitätsprüfung mit drei Canary-Prompts durchführen, bevor der Rollout erfolgt.
**Anschluss-Szenario:** S-LU-027

### S-LU-027 Auto-Modus vs. explizite Modellwahl: Operative Entscheidungsregel einführen

**Wann nutzen (Trigger):** Das Team nutzt ausschließlich den Auto-Modus und weiß nicht, wann eine bewusste Modellwahl (z. B. Flash vs. Sonnet) zu besseren Ergebnissen oder niedrigeren Kosten führt. (Quelle: A-23)
**Strategisches Ziel:** Eine einfache Daumenregel etablieren, die das Team befähigt, bei mehr als 100 täglichen Requests eigenständig zwischen Auto-Modus und expliziter Modellwahl zu entscheiden.
**Hands-on Ergebnis:** Eine laminierte Entscheidungskarte (1-Pager) mit Task-Typ-Zuordnung zu Modell-Tier, die im Team-Wiki und als Konversations-Starter hinterlegt wird.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Konversations-Starter
**Vorgehen (3 Schritte):**
1. Kategorisiere alle wiederkehrenden Marketing-Tasks nach zwei Dimensionen: Komplexität (Routine vs. Strategie) und Brand-Criticality (generisch vs. markenprägend).
2. Führe den PTCF-Prompt aus, um die Modell-Zuordnungsregel zu generieren: Flash für Routine-Drafts, Übersetzungen und Klassifikation; Sonnet für Strategie-Reviews, Brand-Voice-kritische Texte und komplexe Argumentation.
3. Überführe die Regel in den Canvas als 1-Pager und hinterlege sie als Konversations-Starter "Welches Modell für diese Aufgabe?" in allen relevanten Agenten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Modell-Stratege. Erstelle eine Daumenregel für unser Marketing-Team: Wann nutzen wir Flash, wann Sonnet, wann Opus? Kontext: 15 Personen, täglich ca. 200 Requests, Budget-Limit 500 Euro/Monat. Format: Tabelle mit Task-Typ, empfohlenem Modell, Begründung und geschätzten Kosten pro 1 000 Requests."
**Erwartetes Artefakt:** Ein 1-Pager im Canvas mit Modell-Zuordnungstabelle (Task-Typ → Modell → Begründung → Kostenschätzung), direkt einsetzbar als Team-Referenzkarte.
**Fallstricke (≥2 spezifisch):**
- Die Regel wird als starr verstanden und Team-Mitglieder wechseln auch bei Ausnahmefällen nicht vom Flash-Modell ab → Die Karte muss explizit eine "Eskalations-Regel" enthalten: Wenn drei Iterationen keinen zufriedenstellenden Output liefern, Modell upgraden.
- Auto-Modus-Kosten sind schwer vorherzusagen, weil das System selbst zwischen Modellen wechselt → Ab 100 Requests/Tag lohnt explizite Wahl, da der Auto-Modus tendenziell zum höherwertigen Modell neigt.
**Anschluss-Szenario:** S-LU-028

### S-LU-028 BYOK-Rentabilitätsschwelle berechnen und Entscheidung herbeiführen

**Wann nutzen (Trigger):** Der CFO fragt, ob "Bring Your Own Key" (BYOK) bei aktuellem Nutzungsvolumen Kosten spart — das Marketing-Team hat keine Antwort. (Quelle: A-26; sources/12 Q-117)
**Strategisches Ziel:** Einen datenbasierten Break-even-Vergleich erstellen: Langdock-Inklusivangebot vs. BYOK-Modell mit direktem Provider-Zugang, um die Entscheidung für den nächsten Vertragszyklus zu fundieren.
**Hands-on Ergebnis:** Eine Canvas-Tabelle mit Break-even-Punkt in Euro/Monat, Aufwandsschätzung für API-Key-Management und einer klaren Go/No-Go-Empfehlung für BYOK.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Exportiere den aktuellen monatlichen Token-Verbrauch nach Modell (Sonnet, Flash, Opus) aus dem Langdock-Admin-Dashboard als CSV.
2. Lade die CSV in den Data Analyst: Berechne die Kosten im Inklusivangebot vs. direktem Provider-Preis (Anthropic/OpenAI) + 10 % Langdock-Aufschlag entfällt bei BYOK.
3. Ergänze im Chat den operativen Aufwand für BYOK: API-Key-Rotation, Billing-Reconciliation, Security-Overhead — schätzungsweise 2–4 Stunden/Monat IT-Zeit.
4. Erstelle im Canvas die Go/No-Go-Empfehlung: BYOK lohnt ab ca. 5 000 Euro/Monat Verbrauch; darunter überwiegt der Verwaltungsaufwand.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SaaS-Beschaffungsanalystin. Vergleiche für unser Langdock-Nutzungsprofil die Kosten von Inklusivangebot vs. BYOK. Kontext: Monatlicher Verbrauch laut CSV anbei, IT-Ressource für API-Management: 3 h/Monat à 90 Euro. Format: Break-even-Tabelle mit Monatsschwelle, Jahresersparnis ab Break-even und Empfehlung."
**Erwartetes Artefakt:** Eine Break-even-Tabelle im Canvas mit Monatsschwelle, Jahresersparnis-Projektion und einer eindeutigen Empfehlung (BYOK Ja/Nein) mit Begründung.
**Fallstricke (≥2 spezifisch):**
- Provider-Preise ändern sich quartalsweise — die Rechnung veraltet schnell → Datum der Preisgrundlage im Dokument vermerken und bei jedem Vertragsverlängerungsgespräch aktualisieren.
- BYOK-Entscheidung wird nur auf Basis der Token-Kosten getroffen, ohne Sicherheits-Overhead zu berücksichtigen → API-Key-Kompromittierung kann bei BYOK direkten Provider-Schaden verursachen; CISO vorab konsultieren.
**Anschluss-Szenario:** S-LU-029

### S-LU-029 Token-Budget-Eskalationsplan bei Monatsende-Explosion einrichten

**Wann nutzen (Trigger):** In der letzten Woche des Monats explodiert der Token-Verbrauch wegen intensiver Kampagnenproduktion — das Workspace-Budget wird überschritten und Workflows brechen ab. (Quelle: A-25; sources/12 Q-122)
**Strategisches Ziel:** Ein dreistufiges Eskalationsmodell einrichten, das Token-Überschreitungen antizipiert, das Team automatisch warnt und eine klare Handlungskette bis zum CMO auslöst.
**Hands-on Ergebnis:** Ein dokumentierter Budget-Eskalationsplan im Wissensordner mit drei Schwellenwerten (60 %, 80 %, 100 %), definierten Aktionen pro Stufe und einer Notfall-Fallback-Prozedur.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin / Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Setze im Langdock-Workspace-Admin drei Budget-Alarmstufen: 60 % (Info-Mail an Workspace-Admin), 80 % (Warnung an CMO + Modell-Downgrade auf Flash für Routine-Tasks), 100 % (automatischer Stopp non-kritischer Workflows).
2. Definiere im Chat eine "Prioritätsliste der Workflows": Welche Prozesse dürfen bei Budget-Engpass weiterlaufen (Lead-Scoring, Krisen-PR), welche werden pausiert (Content-Volumen-Produktion)?
3. Überführe den Plan in den Canvas und dokumentiere die Eskalationskette: Admin → Team-Lead → CMO → CFO mit Reaktionszeit-SLA pro Stufe.
4. Speichere das Dokument im zentralen Governance-Wissensordner als Pflichtdokument für den monatlichen Budget-Review.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Infrastruktur-Managerin. Erstelle einen dreistufigen Token-Budget-Eskalationsplan für einen 20-köpfigen Marketing-Workspace. Kontext: Monatsbudget 800 Euro, häufige Überschreitungen in Kampagnen-Hochphasen. Format: Tabelle mit Stufe, Schwellenwert in %, auslösende Aktion, Verantwortliche und Reaktionszeit."
**Erwartetes Artefakt:** Ein Canvas-Dokument mit Eskalationstabelle (drei Stufen), Priorisierungsliste der Workflows und einer Notfall-Fallback-Prozedur bei vollständigem Budget-Stop.
**Fallstricke (≥2 spezifisch):**
- Die 80-%-Warnung kommt zu spät, weil in der letzten Woche oft 30–40 % des Budgets verbraucht werden → Setze den zweiten Schwellenwert auf 70 % statt 80 % in Hochphasen (Q4, Launch-Wochen).
- Workflow-Stopps lösen Daten-Inkonsistenzen aus, wenn ein Multi-Step-Prozess mitten unterbrochen wird → Für kritische Workflows "Graceful Shutdown"-Logik im Workflow-Builder konfigurieren, die laufende Schritte abschließt.
**Anschluss-Szenario:** S-LU-030

### S-LU-030 EU AI Act: Marketing-Use-Cases klassifizieren und Risiko-Inventar anlegen

**Wann nutzen (Trigger):** Der Rechtsberater weist darauf hin, dass der EU AI Act ab 2027 für Marketing-Anwendungen relevant wird — das Team hat keine Übersicht, welche Use-Cases betroffen sind. (Quelle: A-13)
**Strategisches Ziel:** Ein vollständiges AI-Use-Case-Inventar mit Risikoeinstufung (unacceptable / high / limited / minimal) nach EU-AI-Act-Kategorien erstellen, das als Compliance-Grundlage dient.
**Hands-on Ergebnis:** Ein Canvas-Dokument mit einer Klassifikationstabelle aller aktiven Langdock-Use-Cases, Human-Oversight-Anforderungen pro Kategorie und einem 6-Monats-Aktionsplan für Hoch-Risiko-Fälle.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Deep Research
**Vorgehen (4 Schritte):**
1. Erstelle im Chat eine vollständige Liste aller aktiven KI-Marketing-Anwendungen: Content-Erstellung, Lead-Scoring, Wettbewerbs-Analyse, Personalisierung, Sentiment-Analyse auf Kundendaten.
2. Aktiviere den Deep Research Modus und recherchiere die aktuellen EU-AI-Act-Kategorien (Stand 2026) für Marketing-spezifische Anwendungen; fokussiere auf Art. 5 (verbotene Praktiken) und Annex III (Hoch-Risiko-Systeme).
3. Klassifiziere jeden Use-Case in der Tabelle: Risikostufe, ob Human-Oversight-Log erforderlich ist, ob eine DPIA nötig wird, und welche Dokumentationspflichten gelten.
4. Erstelle einen 6-Monats-Aktionsplan für alle als "limited" oder höher eingestuften Use-Cases: Verantwortlicher, Maßnahme und Deadline.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist EU-AI-Act-Compliance-Beraterin für ein B2B-Marketing-Team. Klassifiziere unsere 8 KI-Anwendungen nach EU-AI-Act-Risikokategorien. Kontext: Anwendungen umfassen Content-Erstellung, Lead-Scoring, Personalisierung und Wettbewerbs-Monitoring. Format: Tabelle mit Use-Case, Risikostufe, Human-Oversight-Pflicht (Ja/Nein) und nächster Maßnahme."
**Erwartetes Artefakt:** Eine Klassifikationstabelle im Canvas mit allen Use-Cases, EU-AI-Act-Risikostufen und einem priorisierten Aktionsplan für compliance-relevante Anwendungen.
**Fallstricke (≥2 spezifisch):**
- Rechtliche Einschätzungen der KI werden ohne Anwaltsprüfung als verbindlich behandelt → Das Inventar ist eine Arbeitsgrundlage für das Gespräch mit dem Datenschutzbeauftragten; keine eigenständige Rechtsauskunft.
- Der Aktionsplan wird erstellt, aber nie umgesetzt, weil kein Owner definiert ist → Jede Zeile bekommt eine namentliche Verantwortliche und ein verbindliches Reviewdatum im Canvas-Dokument.
**Anschluss-Szenario:** S-LU-031

### S-LU-031 DSGVO-Konflikt bei KI-gestützter Sentiment-Analyse auf Kundendaten prüfen

**Wann nutzen (Trigger):** Das CRM-Team möchte Langdock nutzen, um Kundenfeedback-Texte automatisch auf Sentiment zu analysieren — die Datenschutzbeauftragte fragt nach der Rechtsgrundlage. (Quelle: A-14)
**Strategisches Ziel:** Den Unterschied zwischen datenschutzkonformer aggregierter Sentiment-Analyse und unzulässigem individuellem Profiling klar herausarbeiten und die interne Entscheidungslinie definieren.
**Hands-on Ergebnis:** Ein 1-seitiges Entscheidungsblatt für das CRM-Team: Wann ist Sentiment-Analyse mit Langdock DSGVO-konform, wann braucht es eine explizite Rechtsgrundlage nach Art. 6 DSGVO.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (3 Schritte):**
1. Definiere im Chat die zwei Analyse-Szenarien: (A) aggregierte Auswertung von 5 000 anonymisierten Feedbacks → Trend-Report ohne Personenbezug; (B) individuelle Sentiment-Bewertung pro Kontakt-ID → Profiling mit möglichem Personenbezug.
2. Führe den PTCF-Prompt aus, um den datenschutzrechtlichen Unterschied zu erläutern: Szenario A ist bei korrekter Pseudonymisierung unbedenklich; Szenario B erfordert Rechtsgrundlage (Art. 6 (1) f DSGVO) plus Information an die betroffene Person.
3. Erstelle das Entscheidungsblatt im Canvas mit einer "Ampel-Regel": Grün (aggregiert + pseudonymisiert), Gelb (individuell + Rechtsgrundlage vorhanden + DSB informiert), Rot (individuell + keine Rechtsgrundlage = STOP).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist DSGVO-Beraterin für Marketing-Teams. Erkläre den datenschutzrechtlichen Unterschied zwischen aggregierter Sentiment-Analyse und individuellem Sentiment-Profiling. Kontext: Wir verarbeiten Kundenfeedback-Texte in Langdock, Daten sind pseudonymisiert (nur Kontakt-IDs). Format: Ampel-Entscheidungsblatt mit drei Szenarien (Grün/Gelb/Rot), Rechtsgrundlage und empfohlener Maßnahme."
**Erwartetes Artefakt:** Ein Canvas-Entscheidungsblatt mit Ampel-Regel (drei Szenarien), konkreter DSGVO-Rechtsgrundlage pro Szenario und einem empfohlenen Handlungspfad für das CRM-Team.
**Fallstricke (≥2 spezifisch):**
- "Pseudonymisiert" wird mit "anonym" verwechselt, obwohl re-Identifizierung via CRM-ID möglich ist → Im Dokument explizit festhalten: Pseudonyme Daten sind weiterhin personenbezogen nach DSGVO; nur echte Anonymisierung hebt den Schutzstatus auf.
- Das Entscheidungsblatt wird ohne Abstimmung mit dem Datenschutzbeauftragten als Policy behandelt → Verbindliche interne Leitlinie erfordert DSB-Freigabe und sollte im Team-Wiki mit Status "DSB-geprüft am [Datum]" markiert werden.
**Anschluss-Szenario:** S-LU-032

### S-LU-032 Langdock-Nutzungsanalysen dem Betriebsrat gegenüber transparent machen

**Wann nutzen (Trigger):** Der Betriebsrat fragt, ob die Workspace-Nutzungsanalysen (welche Mitarbeiterin welche Agenten wie oft nutzt) eine unzulässige Verhaltens- oder Leistungsüberwachung nach BetrVG § 87 (1) Nr. 6 darstellen. (Quelle: A-18; sources/12 Q-132)
**Strategisches Ziel:** Eine klare, belegte Antwort für den Betriebsrat vorbereiten, die zeigt, welche Nutzungsdaten zu welchem Zweck erhoben werden — und eine Vereinbarung vorschlagen, die KI-Adoption fördert, ohne Mitbestimmungsrechte zu verletzen.
**Hands-on Ergebnis:** Ein Briefing-Dokument für das Betriebsratsgespräch mit einer Übersicht der Langdock-Analytics-Datenfelder, einer RACI-Tabelle (wer darf was sehen) und einem Vorschlag für eine Betriebsvereinbarung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (4 Schritte):**
1. Exportiere aus dem Langdock-Admin-Bereich die vollständige Liste der erfassten Analytics-Datenpunkte: User-ID, Zeitstempel, Agent-ID, Token-Verbrauch pro Session.
2. Kategorisiere im Chat jeden Datenpunkt: Dient er der System-Optimierung (zulässig ohne Mitbestimmung) oder ermöglicht er Rückschlüsse auf individuelle Arbeitsleistung (mitbestimmungspflichtig nach BetrVG § 87 (1) Nr. 6)?
3. Erstelle im Canvas einen RACI-Vorschlag: Workspace-Admin sieht aggregierte Team-Statistiken; individuelle User-Daten nur für den User selbst sichtbar; CMO erhält nur Team-Level-Reports.
4. Formuliere einen Betriebsvereinbarungs-Entwurf (1 Seite): Zweck der Nutzungsanalyse, Datenzugriffs-RACI, Aufbewahrungsfrist und Mitbestimmungs-Vorbehalt bei Änderungen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Arbeitsrechtsberaterin mit Fokus auf Digitalisierung. Erstelle ein Briefing für ein Betriebsratsgespräch über KI-Nutzungsanalysen. Kontext: Langdock erfasst anonymisierte Nutzungsdaten auf User-Ebene; Betriebsrat besorgt wegen Leistungsüberwachung (BetrVG § 87 (1) Nr. 6). Format: Zwei-seitiges Dokument mit Datenpunkt-Übersicht, RACI-Tabelle und Betriebsvereinbarungs-Entwurf."
**Erwartetes Artefakt:** Ein zweiseitiges Canvas-Dokument mit Datenpunkt-Kategorisierung, RACI-Vorschlag und Betriebsvereinbarungs-Entwurf für das Gespräch mit dem Betriebsrat.
**Fallstricke (≥2 spezifisch):**
- Der Betriebsvereinbarungs-Entwurf wird ohne Rechtsanwalt als fertige Vereinbarung behandelt → Das Dokument ist ein Verhandlungs-Startpunkt; der finale Text muss durch einen Fachanwalt für Arbeitsrecht geprüft werden.
- Nutzungsdaten werden für inoffizielle Leistungsbeurteilungen genutzt, obwohl dies nicht vereinbart ist → RACI-Restriktion technisch im Admin-Dashboard umsetzen, nicht nur dokumentarisch.
**Anschluss-Szenario:** S-LU-033

### S-LU-033 Agent-Qualitätsdrift monatlich mit Canary-Prompts erkennen

**Wann nutzen (Trigger):** Ein konfigurierter Agent liefert seit Wochen schleichend schlechtere Outputs — das Team bemerkt es erst, wenn Kunden-Briefings fehlerhaft sind. (Quelle: A-34)
**Strategisches Ziel:** Einen monatlichen Spot-Check-Prozess einrichten, der Agent-Qualitätsdrift frühzeitig erkennt und eine definierte Eskalationsschwelle auslöst, bevor der Fehler produktiv wirkt.
**Hands-on Ergebnis:** Ein Canary-Prompt-Set mit fünf Testfragen pro Agent, einer Erwartungs-Benchmark-Tabelle und einem Eskalationsprotokoll bei zwei oder mehr Abweichungen.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Definiere für jeden kritischen Agenten fünf Canary-Prompts: einfache Fragen, deren korrekte Antwort klar und stabil sein sollte (z. B. "Wie lang ist unser Standard-Blogpost laut Brand-Guide?").
2. Führe den Spot-Check einmal monatlich durch: Führe alle fünf Canary-Prompts aus und dokumentiere die Antworten in einer Tabelle (Datum, Prompt, Erwarteter Output, Tatsächlicher Output, Abweichung Ja/Nein).
3. Definiere die Eskalationsschwelle: Zwei oder mehr Abweichungen von fünf → Agent-Owner wird benachrichtigt und hat 48 Stunden, um Wissensordner und System-Prompt zu prüfen.
4. Archiviere alle Spot-Check-Protokolle im Governance-Wissensordner als Audit-Trail.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Qualitätssicherungsmanagerin. Erstelle ein Canary-Prompt-Set für unseren Brand-Voice-Agenten. Kontext: Der Agent soll Texte im formellen, direkten B2B-Ton ausgeben; Benchmark ist unser Tone-of-Voice-Guide. Format: Tabelle mit 5 Canary-Fragen, erwartetem Output (Schlüsselwort oder Stil-Merkmal) und Bewertungskriterium (bestanden/nicht bestanden)."
**Erwartetes Artefakt:** Eine Canary-Prompt-Tabelle mit fünf Testfragen pro Agent, Bewertungskriterien und einem Eskalationsprotokoll-Template für den monatlichen Spot-Check-Prozess.
**Fallstricke (≥2 spezifisch):**
- Canary-Prompts testen nur Fakten, nicht Ton — und der Ton-Drift wird übersehen → Mindestens zwei der fünf Prompts müssen explizit Stil und Tonalität testen, nicht nur Fakten abrufen.
- Der Spot-Check wird wegen Zeitdruck übersprungen → Canary-Check als monatliche Workflow-Automation konfigurieren, die die fünf Prompts automatisch ausführt und eine Ergebnis-Mail an den Agent-Owner sendet.
**Anschluss-Szenario:** S-LU-034

### S-LU-034 Pilot auf Company-wide Rollout skalieren: 30-Tage-Skalierungsplan

**Wann nutzen (Trigger):** Der 90-Tage-Pilot (S-LU-016) war erfolgreich. Das Go für den Vollrollout auf das gesamte Unternehmen (100+ Nutzer) ist gegeben — aber ein strukturierter Skalierungsplan fehlt. (Quelle: A-04; sources/12 Q-136)
**Strategisches Ziel:** Den Übergang vom Marketing-Piloten zur unternehmensweiten Nutzung in 30 Tagen strukturiert vollziehen, ohne die Qualität der bestehenden Marketing-Agenten zu gefährden.
**Hands-on Ergebnis:** Ein 30-Tage-Skalierungsplan im Canvas mit Phasen (Infrastruktur, Onboarding, Stabilisierung), KPIs und einem Kommunikationsplan für alle Abteilungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Workflows
**Vorgehen (4 Schritte):**
1. Inventarisiere im Chat alle Pilot-Artefakte, die skaliert werden müssen: Agenten-Konfigurationen, Wissensordner, Governance-Dokument (S-LU-025), KI-Ethik-Leitfaden (S-LU-023).
2. Erstelle den 30-Tage-Plan in drei Phasen: Phase 1 (Tage 1–10) Infrastruktur — neue Nutzer anlegen, RACI aktualisieren, Budget-Limits anpassen; Phase 2 (Tage 11–20) Onboarding — Abteilungs-Champions aus dem Pilot briefen neue Teams; Phase 3 (Tage 21–30) Stabilisierung — erste Canary-Checks (S-LU-033), Feedback-Sammlung, Optimierungen.
3. Definiere Kommunikations-Meilensteine: Kick-off-Mail an alle Abteilungen (Tag 1), Mid-Point-Update (Tag 15), Go-Live-Confirmation (Tag 30).
4. Lege drei Skalierungs-KPIs fest: Adoption-Rate nach 30 Tagen (Ziel: 60 % aktive Nutzer), durchschnittliche Onboarding-Zeit pro neuer Abteilung und Anzahl kritischer Incidents.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Skalierungsstrategin für KI-Plattform-Rollouts. Erstelle einen 30-Tage-Plan für die unternehmensweite Ausweitung unseres Langdock-Piloten. Kontext: Pilot mit 20 Marketing-Nutzern war erfolgreich, Skalierung auf 120 Nutzer in 5 Abteilungen. Format: Tabelle mit Phase, Tage, Hauptaktivität, Verantwortlicher und KPI."
**Erwartetes Artefakt:** Ein 30-Tage-Skalierungsplan im Canvas mit drei Phasen, Kommunikationsplan und drei messbaren Skalierungs-KPIs für den Vollrollout-Report an die Geschäftsführung.
**Fallstricke (≥2 spezifisch):**
- Neue Abteilungen erhalten denselben Agenten wie Marketing, obwohl ihre Use-Cases völlig verschieden sind → Jede Abteilung bekommt einen dedizierten Onboarding-Champion, der den Marketing-Agenten als Vorlage anpasst, nicht 1:1 übernimmt.
- Das Budget-Limit aus dem Pilot wird unverändert übernommen und reicht für 120 Nutzer nicht aus → Token-Budget für den Vollrollout auf Basis der Pilot-Nutzungsdaten hochrechnen und vor Tag 1 mit dem CFO abstimmen.
**Anschluss-Szenario:** S-LU-035

### S-LU-035 Mehrsprachiges Team-Setup: DACH-Lokalisierung plus internationale Arbeitsteilung

**Wann nutzen (Trigger):** Das Marketing-Team arbeitet in Deutschland, Österreich und der Schweiz — und soll bald internationale Kollegen einbinden. Agenten antworten inkonsistent auf DE-AT-CH-Nuancen und Englisch-Inputs. (Quelle: A-46; sources/12 Q-077)
**Strategisches Ziel:** Agenten und Prompt-Templates so konfigurieren, dass sie DACH-spezifische Sprachvarianten (DE-DE, DE-AT, DE-CH-Hochdeutsch) sowie englische Inputs korrekt verarbeiten und konsistente Outputs liefern.
**Hands-on Ergebnis:** Eine Lokalisierungs-Konfiguration für die drei wichtigsten Team-Agenten mit sprachspezifischen Konversations-Startern und einem Eskalationspfad für Dialekt-Anfragen.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Konversations-Starter / Wissensordner / Chat
**Vorgehen (4 Schritte):**
1. Definiere im Chat für jeden Agenten die gewünschten Output-Sprachen und lege im System-Prompt explizite Sprachregeln fest: "Antworte immer auf Hochdeutsch; wenn der Input auf Englisch ist, antworte auf Englisch; vermeide Dialektausdrücke."
2. Erstelle sprachspezifische Konversations-Starter: "Erstelle einen LinkedIn-Post für die Schweizer Zielgruppe (DE-CH-Hochdeutsch, kein 'ss' durch 'ß')" vs. "Create a LinkedIn post for our UK audience (EN-GB)".
3. Lade ein Glossar mit DACH-spezifischen Marketing-Begriffen (z. B. "Mwst." vs. "MwSt." vs. "MWST.") als Wissensordner-Dokument an alle relevanten Agenten an.
4. Dokumentiere den Eskalationspfad: Dialekt-Anfragen (z. B. Schwiizerdütsch) werden mit dem Hinweis "Manuell überarbeiten: Dialekt nicht zuverlässig" flagged und an einen Human-Editor weitergeleitet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lokalisierungsexpertin für DACH-Marketing. Erstelle einen System-Prompt für unseren Content-Agenten, der korrekt zwischen DE-DE, DE-AT und DE-CH-Hochdeutsch unterscheidet. Kontext: Team in Frankfurt, Wien und Zürich; gelegentliche englische Inputs von internationalen Kollegen. Format: Fertiger System-Prompt (max. 400 Zeichen) plus Tabelle mit sprachspezifischen Konversations-Startern."
**Erwartetes Artefakt:** Ein überarbeiteter System-Prompt für den Content-Agenten plus eine Tabelle mit sprachspezifischen Konversations-Startern und Eskalationspfad für Dialekt-Anfragen.
**Fallstricke (≥2 spezifisch):**
- De-CH-Hochdeutsch wird mit Schwiizerdütsch verwechselt, das Modell liefert unzuverlässige Dialekt-Texte → Im System-Prompt explizit: "DE-CH bedeutet schweizerisches Standardhochdeutsch ohne Dialekt; für Mundart-Texte immer Human-Review-Flag setzen."
- Das Glossar-Dokument wird zu groß und beeinträchtigt die Retrieval-Qualität → Maximal 50 Einträge pro Glossar-Datei; nach Themenbereich (Produkt, Recht, Zahlen) trennen.
**Anschluss-Szenario:** S-LU-036

### S-LU-036 Modell-agnostische Prompt-Strategie: Prompts zwischen GPT und Claude portieren

**Wann nutzen (Trigger):** Das IT-Management erwägt, von Anthropic-Modellen auf OpenAI-Modelle umzustellen (oder umgekehrt). Das Team befürchtet, alle gespeicherten Prompts neu schreiben zu müssen. (Quelle: A-30; sources/12 Q-084)
**Strategisches Ziel:** Eine modell-agnostische Prompt-Strategie entwickeln, die sicherstellt, dass 80 % der bestehenden Prompts ohne vollständiges Rewriting auf einem anderen Modell-Provider funktionieren.
**Hands-on Ergebnis:** Eine Portierungsrichtlinie im Wissensordner mit einer Checkliste der modell-spezifischen Eigenheiten (Claude vs. GPT), einem Test-Framework und einer Schätzung des Anpassungsaufwands.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Wissensordner / Agents
**Vorgehen (4 Schritte):**
1. Exportiere alle gespeicherten System-Prompts aus der Langdock-Prompt-Library als Markdown-Dateien und kategorisiere sie nach: modell-neutral (keine Modell-spezifischen Anweisungen), Claude-spezifisch (z. B. XML-Tags, "thinking"-Anweisungen), GPT-spezifisch (z. B. "act as"-Stil).
2. Führe einen A/B-Test mit den 10 wichtigsten Prompts durch: Führe jeden Prompt auf beiden Modellen aus und vergleiche Output-Qualität nach drei Dimensionen (Ton, Vollständigkeit, Format).
3. Erstelle die Portierungsrichtlinie im Canvas: Welche Prompt-Muster funktionieren universell, welche müssen angepasst werden (Schätzung: 15–20 % der Prompts brauchen geringfügige Anpassung).
4. Versioniere alle Prompts in Git (eine Markdown-Datei pro Prompt) als zukunftssichere Basis für Modell-Wechsel.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Engineering-Spezialistin. Analysiere die angehängten 10 Prompt-Texte auf Modell-spezifische Abhängigkeiten. Kontext: Wir erwägen Wechsel von Claude Sonnet auf GPT-4o. Format: Tabelle mit Prompt-Name, modell-spezifischen Elementen, Portierungsaufwand (gering/mittel/hoch) und konkretem Änderungsvorschlag."
**Erwartetes Artefakt:** Eine Portierungsrisiko-Tabelle mit allen Prompts, Aufwandseinschätzung und einer Schritt-für-Schritt-Anleitung für den Modell-Wechsel ohne Qualitätsverlust.
**Fallstricke (≥2 spezifisch):**
- Das Team nimmt an, dass PTCF-Prompts automatisch modell-agnostisch sind — das stimmt für einfache Tasks, aber nicht für komplexe mehrstufige Anweisungen → Mehrstufige Prompts (mehr als drei Anweisungsblöcke) immer manuell testen, bevor ein Modell-Wechsel produktiv geht.
- Versionshistorie der Prompts fehlt, sodass nach einem fehlgeschlagenen Wechsel kein Rollback möglich ist → Git-Versionierung der Prompts ist kein Luxus, sondern Pflicht ab mehr als 20 aktiven Prompt-Templates.
**Anschluss-Szenario:** S-LU-037

### S-LU-037 Wettbewerber-KI-Landschaft monitoren: Competitive AI Intelligence aufbauen

**Wann nutzen (Trigger):** Wettbewerber setzen zunehmend sichtbar auf KI-generierte Inhalte, neue Chatbots und automatisierte Kampagnen — das Team hat keine strukturierte Übersicht über die KI-Strategie der Konkurrenz. (Quelle: A-07; sources/10 S-036)
**Strategisches Ziel:** Ein vierteljährliches Competitive-AI-Intelligence-Format aufbauen, das die KI-Reife der drei Hauptwettbewerber bewertet und Differenzierungshebel für die eigene Strategie ableitet.
**Hands-on Ergebnis:** Ein quartalsweiser AI-Competitive-Report im Canvas mit Bewertung der KI-Reife jedes Wettbewerbers (Skala 1–5), identifizierten Lücken und drei strategischen Differenzierungsempfehlungen.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research Modus / Canvas / Chat
**Vorgehen (4 Schritte):**
1. Aktiviere den Deep Research Modus und recherchiere pro Wettbewerber: Öffentlich sichtbare KI-Tools im Marketing (Chatbots, generierte Inhalte, automatisierte Werbekanäle), Job-Ausschreibungen mit KI-Bezug (Indikator für interne Investitionen) und offizielle Statements zur KI-Strategie.
2. Bewerte jeden Wettbewerber nach einem 5-Punkte-KI-Reife-Scoring: (1) keine sichtbare KI-Nutzung, (3) selektiver Einsatz in einzelnen Kanälen, (5) vollintegrierte KI-First-Strategie.
3. Identifiziere die strategischen Lücken: Wo nutzen Wettbewerber KI, wo tun wir es nicht (und umgekehrt)? Welche Differenzierung entsteht durch First-Party-Daten + KI-Komposition?
4. Formuliere drei Differenzierungsempfehlungen als Aktionsplan und überführe den Report in den Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Competitive-Intelligence-Strategin. Bewerte die KI-Reife unserer drei Hauptwettbewerber im DACH-SaaS-Markt. Kontext: Wettbewerber A, B, C; Deep-Research-Quellen: Karriereseiten, Pressemitteilungen, LinkedIn-Posts, G2-Reviews. Format: Tabelle mit Wettbewerber, KI-Reife-Score (1–5), sichtbare KI-Anwendungen und strategische Implikation für uns."
**Erwartetes Artefakt:** Ein quartalsweiser AI-Competitive-Report im Canvas mit Reife-Scoring-Tabelle, Lückenanalyse und drei priorisierten Differenzierungsempfehlungen.
**Fallstricke (≥2 spezifisch):**
- Deep Research wertet Selbst-PR der Wettbewerber als Beweis für echte KI-Reife — überschätzt den Fortschritt → Jobanzeigen und Kundenbeschwerden (G2/Capterra) als Gegenindikator explizit in den Recherche-Scope aufnehmen.
- Der Report wird produziert, aber keine Konsequenzen gezogen → Jeder Report muss mit einer "Was ändert sich an unserer Strategie nächstes Quartal?"-Sektion enden; sonst hat er keinen geschäftlichen Wert.
**Anschluss-Szenario:** S-LU-038

### S-LU-038 Langdock-Ausfall-Fallback: 2-Stunden-Notfall-Playbook aufstellen

**Wann nutzen (Trigger):** Langdock ist unerwartet nicht erreichbar — in einer Kampagnenhochphase oder Krisenreaktion. Das Team steht ohne Werkzeug da und verliert wertvolle Zeit. (Quelle: A-44)
**Strategisches Ziel:** Ein praxistaugliches 2-Stunden-Notfall-Playbook erstellen, das die wichtigsten KI-Aufgaben ohne Langdock überbrückt und das Team handlungsfähig hält.
**Hands-on Ergebnis:** Ein ausgedrucktes (oder lokal gespeichertes) Notfall-Playbook mit den drei wichtigsten Konversations-Startern als Markdown, direkten Links zu Anthropic/OpenAI/Gemini-Web-Interfaces und einem SLA-Eskalationspfad.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Wissensordner (Vorbereitung vor dem Ausfall)
**Vorgehen (4 Schritte):**
1. Identifiziere die drei zeitkritischsten Marketing-Aufgaben, die bei einem Ausfall sofort eingeschränkt sind: z. B. Krisen-PR-Entwurf, tägliches Newsletter-Mailing, Lead-Scoring-Workflow.
2. Exportiere die System-Prompts dieser drei kritischen Agenten als lokale Markdown-Dateien (offline verfügbar auf dem Laptop des Team-Leads).
3. Erstelle das Notfall-Playbook: Link zu status.langdock.com für Statusprüfung, direkte URLs zu Claude.ai, ChatGPT und Gemini als Alternativ-Interfaces, Schritt-für-Schritt-Anleitung zum manuellen Ausführen der drei kritischen Prompts.
4. Plane einen jährlichen "Fallback-Drill" (15 Minuten): Team-Lead simuliert einen Ausfall und führt alle drei kritischen Prompts manuell über ein Alternativ-Interface aus.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Business-Continuity-Planerin für ein Marketing-Team. Erstelle ein 2-Stunden-Notfall-Playbook für den Fall eines vollständigen KI-Plattform-Ausfalls. Kontext: 3 kritische Aufgaben (Krisen-PR, Newsletter-Draft, Lead-Scoring), Team hat Zugang zu Claude.ai und ChatGPT. Format: Checkliste mit Schritt-für-Schritt-Anleitung, Alternativ-Links und Eskalationsplan."
**Erwartetes Artefakt:** Ein 1-seitiges Notfall-Playbook im Canvas, das lokal als PDF gespeichert wird, mit den drei kritischen Prompts als Markdown und einem Fallback-Drill-Termin im Jahreskalender.
**Anschluss-Szenario:** S-LU-039

### S-LU-039 AI-Disclosure-Strategie für KI-assistierten Content entwickeln

**Wann nutzen (Trigger):** Die Rechtsabteilung fragt nach einer einheitlichen Policy: Muss KI-assistierter Content in Werbemitteln, auf der Website und in Social-Media-Posts offengelegt werden? (Quelle: A-09; A-19)
**Strategisches Ziel:** Eine praxistaugliche Disclosure-Strategie entwickeln, die EU-AI-Act-Transparenzpflichten (Art. 50) und UWG-Anforderungen erfüllt, ohne die Kreativfreiheit des Teams einzuschränken.
**Hands-on Ergebnis:** Ein 1-Pager mit drei Disclosure-Szenarien (Pflicht, empfohlen, nicht nötig), fertigem Disclosure-Wording auf Deutsch und einem Entscheidungsbaum für das Content-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Deep Research
**Vorgehen (4 Schritte):**
1. Aktiviere den Deep Research Modus und recherchiere den aktuellen Stand der EU-AI-Act-Transparenzpflichten für Deepfakes und synthetische Medien (Art. 50) sowie das UWG § 5a zu irreführenden Unterlassungen im DACH-Raum.
2. Kategorisiere im Chat alle Content-Typen des Teams nach Disclosure-Pflicht: (A) KI-generierter Text mit Faktenaussagen zu Produkten → Pflicht; (B) KI-assistiertes Redigieren → empfohlen; (C) KI-generierte Übersetzungen → nicht nötig.
3. Erstelle das Disclosure-Wording für Szenario A: kurze, authentische Formulierungen, die Vertrauen aufbauen statt rechtliche Angst auszustrahlen (z. B. "Dieser Text wurde mit KI-Unterstützung erstellt und redaktionell geprüft.").
4. Visualisiere den Entscheidungsbaum im Canvas: Wenn [Content-Typ] → dann [Disclosure-Stufe] → dann [Wording-Vorschlag].
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Medienrechtsspezialistin im DACH-Raum. Erstelle einen Entscheidungsbaum für KI-Disclosure in Marketing-Content. Kontext: Wir produzieren Blogposts, Social-Media-Posts, Produktbeschreibungen und Newsletter; EU AI Act Art. 50 und UWG § 5a sind relevant. Format: Entscheidungsbaum mit drei Pfaden (Pflicht/Empfohlen/Nicht nötig), fertigem Disclosure-Wording (DE) und Beispiel pro Pfad."
**Erwartetes Artefakt:** Ein Canvas-Dokument mit Entscheidungsbaum (drei Pfade), fertigem Disclosure-Wording auf Deutsch und einer Zusammenfassung der relevanten Rechtsgrundlagen als Referenz für die Rechtsabteilung.
**Fallstricke (≥2 spezifisch):**
- KI-generiertes Wording zur Disclosure wird selbst von der KI geschrieben und klingt unnatürlich → Das Disclosure-Wording muss redaktionell überarbeitet werden; der Mensch schreibt die finale Formulierung, die KI liefert Entwürfe.
- Die Policy wird ohne Einbindung der Rechtsabteilung als verbindlich kommuniziert → Klarer Hinweis im Dokument: "Entwurf, erfordert Rechtsprüfung vor Veröffentlichung"; Freigabe-Datum im Dateinamen vermerken.
**Anschluss-Szenario:** S-LU-040

### S-LU-040 Langdock-ROI mit Business-KPIs verknüpfen: Pipeline-Attribution für KI-Assets

**Wann nutzen (Trigger):** Das CMO-Team hat S-LU-012 umgesetzt, aber der CFO fragt weiter: "Welche dieser KI-generierten Assets haben tatsächlich zu Umsatz beigetragen?" Die Effizienz-KPIs reichen dem Board nicht mehr aus. (Quelle: A-01; A-10)
**Strategisches Ziel:** Einen Attributions-Mechanismus entwickeln, der KI-produzierte Marketing-Assets mit konkreten Pipeline-Beiträgen (Opportunities, Closed-Won-Deals) in Verbindung bringt.
**Hands-on Ergebnis:** Ein Canvas-Template für den monatlichen Pipeline-Attribution-Report mit einer Tracking-Methodik, die Langdock-Assets mit CRM-Opportunities verknüpft.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst / Chat / Canvas / Workflows
**Vorgehen (4 Schritte):**
1. Definiere im Chat eine einfache Tracking-Methodik: Jedes mit Langdock produzierte Asset erhält ein UTM-Tag oder ein internes Label (z. B. "AI-generated-Q2-2026"), das beim Upload ins CMS/CRM mitgeführt wird.
2. Exportiere nach 30 Tagen die CRM-Daten: Welche Opportunities wurden durch Assets mit dem KI-Label beeinflusst (Touchpoint vorhanden)? Welche dieser Deals wurden zu Closed-Won?
3. Lade den Export in den Data Analyst: Berechne den Pipeline-Beitrag (Summe der Opportunity-Values mit KI-Asset-Touchpoint) und den Closed-Won-Anteil als konkreten Umsatzbeitrag.
4. Erstelle das Canvas-Template: KPI 1 = Pipeline-Beitrag KI-Assets in Euro; KPI 2 = Closed-Won-Deals mit KI-Asset-Touchpoint; KPI 3 = Anteil KI-Assets an gesamtem Content-Output.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Revenue-Marketing-Analystin. Erstelle ein Attribution-Template, das KI-generierte Marketing-Assets mit CRM-Pipeline-Daten verknüpft. Kontext: Wir nutzen Salesforce als CRM, Langdock für Content-Produktion, UTM-Labels für Asset-Tracking. Format: Tabelle mit KPI-Name, Tracking-Methode, Datenquelle, Berechnungsformel und Berichtszyklus."
**Erwartetes Artefakt:** Ein Canvas-Template für den monatlichen Pipeline-Attribution-Report mit drei KPIs, Tracking-Methodik und einer Datenfluss-Übersicht (Langdock → UTM-Labels → CRM → Report).
**Fallstricke (≥2 spezifisch):**
- Multi-Touch-Attribution überschätzt den letzten KI-Asset-Touchpoint und ignoriert frühere Berührungspunkte → Im Prompt explizit festlegen, ob First-Touch, Last-Touch oder lineares Attributionsmodell genutzt wird; Modell-Wahl mit dem Revenue-Team abstimmen.
- CRM-Daten sind unvollständig, weil nicht alle Assets konsequent gelabelt werden → Labeling-Pflicht als Schritt in die Inhaltsfreigabe-Checkliste aufnehmen; kein Asset geht ohne Label live.
**Anschluss-Szenario:** S-LU-041

### S-LU-041 Neuen Marketing-Manager in 14 Tagen auf KI-Workflows onboarden

**Wann nutzen (Trigger):** Eine neue Marketing-Managerin beginnt am Montag. Das Team hat keine Zeit für ausgedehnte KI-Schulungen — sie soll innerhalb von 14 Tagen produktiv mit Langdock arbeiten. (Quelle: A-37; sources/12 Q-042)
**Strategisches Ziel:** Einen strukturierten 14-Tage-Onboarding-Plan entwickeln, der neue Teammitglieder schrittweise mit den wichtigsten Agenten, Workflows und Prompts vertraut macht, ohne sie zu überfordern.
**Hands-on Ergebnis:** Ein 14-Tage-Onboarding-Plan im Canvas mit täglichen Mini-Aufgaben, einem Starter-Prompts-Katalog und einem Day-14-Self-Check zur Kompetenzmessung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Agents / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Strukturiere den Plan in vier Phasen: Tag 1 — drei Konversations-Starter im Standard-Chat ausprobieren; Tag 3 — einen bestehenden Agenten für eine echte Aufgabe nutzen; Tag 7 — eigene Variante eines Konversations-Starters erstellen und mit dem Team teilen; Tag 14 — einen einfachen Workflow nachstellen und dokumentieren.
2. Erstelle im Canvas den täglichen Mini-Aufgaben-Kalender: Jede Aufgabe dauert max. 20 Minuten, hat ein konkretes Artefakt als Output und einen Ansprechpartner aus dem Champions-Programm (S-LU-014).
3. Kuratiere einen Starter-Prompts-Katalog: fünf Prompts aus dem Team-Prompt-Library, die für den jeweiligen Aufgabenbereich der neuen Person am relevantesten sind.
4. Erstelle den Day-14-Self-Check: fünf Fragen, die die Neue selbst beantwortet, um ihren Kompetenzstand einzuschätzen (z. B. "Welches Modell würdest du für einen Routine-Draft wählen?").
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Onboarding-Designerin. Erstelle einen 14-Tage-Onboarding-Plan für eine neue Marketing-Managerin bei Langdock-Einführung. Kontext: Sie hat keine KI-Vorerfahrung, ihr Fokus liegt auf Content-Marketing und Newsletter. Format: Tabelle mit Tag, Aufgabe, Dauer (max. 20 min), erwartetes Artefakt und Ansprechperson."
**Erwartetes Artefakt:** Ein 14-Tage-Onboarding-Kalender im Canvas mit täglichen Mini-Aufgaben, einem kuratierten Starter-Prompts-Katalog und einem Day-14-Self-Check-Fragebogen.
**Fallstricke (≥2 spezifisch):**
- Der Plan ist zu ambitiös und neue Mitarbeitende fühlen sich überfordert → Jeder Tag hat maximal eine Hauptaufgabe; Abweichungen von der Reihenfolge sind erlaubt, die Reihenfolge ist ein Vorschlag, keine Pflicht.
- Der Onboarding-Plan wird einmalig erstellt und für jede neue Person ohne Anpassung kopiert → Plan quartalsweise mit den neuesten Agenten und Prompts aktualisieren; veraltete Starter-Prompts raus, neue Champions-Erkenntnisse rein.
**Anschluss-Szenario:** S-LU-042

### S-LU-042 Bulk-Lokalisierungsjob für 50 Produktbeschreibungen kostenoptimiert durchführen

**Wann nutzen (Trigger):** 50 Produktbeschreibungen müssen für den Launch in drei Sprachen (DE, EN, FR) übersetzt werden — im Standard-Chat-Modus würde das 150 manuelle Einzelanfragen bedeuten. (Quelle: A-24; sources/10 S-025)
**Strategisches Ziel:** Den Lokalisierungsjob über einen Workflow mit einem kosteneffizienten Flash-Modell und JSON-Array-Input durchführen — Ziel: Faktor 5–10 Kostensenkung gegenüber synchronem Chat-Modus.
**Hands-on Ergebnis:** Drei CSV-Dateien (DE/EN/FR) mit allen 50 übersetzten Produktbeschreibungen, produziert durch einen einzigen Workflow-Run mit dokumentierten Kosten pro Übersetzung.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows / Data Analyst / Agents
**Vorgehen (4 Schritte):**
1. Bereite die Eingabedaten vor: Eine CSV mit 50 Zeilen (Produkt-ID, Originalbeschreibung auf DE), exportiert aus dem CMS.
2. Baue im Workflow-Builder einen Loop-Workflow: Input = CSV-Zeile, Agent-Step = Übersetzung in EN und FR mit Flash-Modell + Glossar-Wissensordner, Output = JSON mit Produkt-ID + Übersetzungen.
3. Aktiviere den Workflow und lass ihn asynchron im Hintergrund laufen (ca. 10–15 Minuten für 50 Zeilen).
4. Exportiere das JSON-Ergebnis als drei separate CSVs (eine pro Sprache) und importiere sie direkt ins CMS; dokumentiere die Gesamtkosten im monatlichen Budget-Report.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lokalisierungsworkflow-Architektin. Beschreibe den optimalen Workflow-Aufbau für die Bulk-Übersetzung von 50 Produktbeschreibungen in drei Sprachen mit Langdock. Kontext: Flash-Modell für Kosteneffizienz, Glossar als Wissensordner, Ausgabe als JSON. Format: Schritt-für-Schritt-Workflow-Beschreibung mit Node-Typen, geschätzten Kosten pro Übersetzung und Qualitätsprüfungs-Schritt."
**Erwartetes Artefakt:** Eine Workflow-Konfigurationsbeschreibung plus drei übersetzte CSVs als Output des Workflow-Runs, mit dokumentierten Kosten pro Übersetzung für den Budget-Report.
**Fallstricke (≥2 spezifisch):**
- Das Flash-Modell übersetzt Fachbegriffe ohne Glossar-Anbindung falsch → Glossar-Wissensordner mit Produktterminologie muss vor dem Workflow-Start angebunden sein; ohne Glossar qualitative Stichproben aus 10 % der Outputs machen.
- JSON-Output enthält Sonderzeichen, die beim CSV-Export korrumpiert werden → Encoding im Workflow explizit auf UTF-8 setzen; insbesondere für Französisch (é, à, ç) und Deutsche Umlaute (ä, ö, ü).
**Anschluss-Szenario:** S-LU-043

### S-LU-043 Prompt-Bibliothek versionieren und zwischen Modellen portieren

**Wann nutzen (Trigger):** Das Team hat über 30 bewährte Prompts in der Langdock-Prompt-Library gespeichert, aber keine Versionshistorie — Änderungen werden einfach überschrieben, Rückwärts-Kompatibilität ist nicht gewährleistet. (Quelle: A-49; sources/12 Q-080)
**Strategisches Ziel:** Alle produktiven Prompts in ein Git-Repository überführen, mit Pull-Request-Prozess für Änderungen, sodass jede Prompt-Version nachvollziehbar ist und bei einem Modell-Wechsel gezielt portiert werden kann.
**Hands-on Ergebnis:** Ein Git-Repository mit allen Prompt-Markdown-Dateien, einer Namenskonvention, einem PR-Review-Prozess und einem Build-Step, der die freigegebenen Prompts automatisch in Langdock-Konversations-Starter überführt.
**Eingesetzte Langdock-Fähigkeit(en):** Prompt Library / Agents / Konversations-Starter / Chat
**Vorgehen (4 Schritte):**
1. Exportiere alle bestehenden Prompts aus der Langdock-Prompt-Library als Markdown-Dateien und lege sie in einem Git-Repository ab (eine Datei pro Prompt, Namensschema: "YYYY-MM_Domäne_Aufgabe.md").
2. Definiere den PR-Review-Prozess: Prompt-Änderung → Branch anlegen → PR erstellen → Review durch Agent-Owner → Merge in Main → automatisches Update des Konversations-Starters in Langdock.
3. Ergänze in jeder Prompt-Datei einen Header mit Metadaten: Zielmodell, letztes Testdatum, Qualitätsbewertung (1–5), Ansprechpartner.
4. Führe einmal im Quartal einen "Prompt-Audit": Alle Prompts mit Qualitätsbewertung unter 3 oder Testdatum älter als 90 Tage werden überarbeitet oder archiviert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Engineering-Governerin. Erstelle eine Namenskonvention und einen Review-Prozess für unsere 35-Prompts-Bibliothek in Git. Kontext: Team von 15 Personen, monatlich 5–10 neue Prompts, Wechsel zwischen Claude und GPT möglich. Format: Namenskonvention-Regel, Markdown-Header-Template und 4-Schritte-PR-Prozess."
**Erwartetes Artefakt:** Eine Namenskonventions-Regel, ein Markdown-Header-Template für Prompt-Metadaten und eine dokumentierte 4-Schritte-PR-Review-Prozessbeschreibung, direkt einsetzbar im Team-Git-Repository.
**Fallstricke (≥2 spezifisch):**
- Git-Kenntnisse fehlen bei nicht-technischen Team-Mitgliedern → Für nicht-technische Nutzer eine vereinfachte GitHub-Web-UI-Anleitung erstellen; der Git-Prozess läuft primär über den Champion, nicht alle Teammitglieder müssen Git beherrschen.
- Der automatische Build-Step zur Langdock-Integration existiert noch nicht → Bis zur Automatisierung: Manueller Copy-Paste-Prozess nach jedem PR-Merge; Automatisierung als Milestone für Quartal 2 einplanen.
**Anschluss-Szenario:** S-LU-044

### S-LU-044 KI-Carbon-Footprint messen und ins Nachhaltigkeits-Reporting integrieren

**Wann nutzen (Trigger):** Die Sustainability-Abteilung fragt, ob der KI-Einsatz im Marketing zum CO₂-Fußabdruck des Unternehmens beiträgt — und ob dies im Nachhaltigkeitsbericht ausgewiesen werden muss. (Quelle: A-45)
**Strategisches Ziel:** Eine nachvollziehbare Methodik entwickeln, die den Token-Verbrauch des Langdock-Workspace in eine CO₂-Schätzung übersetzt, die im Nachhaltigkeitsbericht unter "Scope 3 — digitale Dienstleistungen" veröffentlicht werden kann.
**Hands-on Ergebnis:** Eine jährliche CO₂-Schätzungstabelle im Canvas mit Berechnungsmethodik, Quellenangaben (ML.energy, Hugging Face Public Estimates) und einem Hinweis auf Unsicherheitsfaktoren.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Exportiere den Jahres-Token-Verbrauch aus dem Langdock-Admin-Dashboard (aufgeschlüsselt nach Modell: Flash, Sonnet, Opus).
2. Recherchiere im Chat die aktuellen CO₂-Faktoren pro 1 000 Token für die eingesetzten Modelle (Basis: ML.energy und Hugging Face-Schätzungen, Stand 2026); dokumentiere Quellen und Unsicherheitsranges.
3. Lade den Token-Verbrauch als CSV in den Data Analyst: Berechne die Gesamt-CO₂-Schätzung (Token-Verbrauch × CO₂-Faktor pro Modell) und vergleiche sie mit Referenzwerten (z. B. CO₂ einer Transatlantik-Flugreise: ca. 1,8 t CO₂).
4. Erstelle die Reporting-Tabelle im Canvas mit Methodikbeschreibung, Quellenangaben, Schätzwert und einer Einschränkungsklausel ("Schätzung basiert auf öffentlichen Durchschnittswerten; tatsächliche Werte können abweichen").
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Nachhaltigkeits-Reportingspezialistin. Erstelle eine CO₂-Schätzungsmethodik für unseren KI-Verbrauch in Langdock. Kontext: Jahresverbrauch laut CSV anbei, eingesetzte Modelle: Claude Sonnet, Flash; Basis: öffentliche ML.energy-Schätzwerte. Format: Tabelle mit Modell, Jahres-Token-Verbrauch, CO₂-Faktor, Gesamt-CO₂-Schätzung in kg und Quellenangabe."
**Erwartetes Artefakt:** Eine CO₂-Schätzungstabelle im Canvas mit vollständiger Methodikbeschreibung, Quellenangaben und einer Einschränkungsklausel, direkt einsetzbar im Nachhaltigkeitsbericht unter Scope 3.
**Fallstricke (≥2 spezifisch):**
- CO₂-Faktoren aus 2024 werden für 2026 verwendet, ohne zu prüfen, ob aktuellere Werte vorliegen → Quelldaten jährlich zum Reporting-Zeitpunkt aktualisieren; Veröffentlichungsdatum der verwendeten Studie im Dokument vermerken.
- Die Schätzung wird als exakter Wert kommuniziert und erzeugt bei kritischen Stakeholdern Vertrauensverlust → Im Nachhaltigkeitsbericht immer als "Schätzung ±40 % Unsicherheitsrange" kommunizieren und die Methodik vollständig transparent darstellen.
**Anschluss-Szenario:** S-LU-045

### S-LU-045 Agent-Rentenplan: Veraltete Agenten systematisch stilllegen

**Wann nutzen (Trigger):** Der Workspace-Governance-Review (S-LU-025) zeigt, dass vier Agenten seit mehr als 90 Tagen nicht genutzt wurden — aber niemand traut sich, sie zu löschen, ohne zu wissen, ob jemand auf sie angewiesen ist. (Quelle: A-33)
**Strategisches Ziel:** Einen strukturierten Agenten-Retirement-Prozess einführen, der veraltete Agenten sicher identifiziert, archiviert und deaktiviert — ohne produktive Nutzung zu unterbrechen.
**Hands-on Ergebnis:** Ein Retirement-Protokoll im Canvas mit Checkliste für jeden zu deaktivierenden Agenten, einem Archiv-Snapshot-Verfahren und einem Sunset-Memo an alle Nutzer.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin / Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Exportiere aus dem Langdock-Admin-Dashboard die Nutzungsstatistik aller Agenten: letzte Nutzung, Anzahl Sessions in den letzten 90 Tagen, Owner.
2. Identifiziere Retirement-Kandidaten nach drei Kriterien: (a) 0 Sessions in 90 Tagen, (b) Wissensordner-Quelldaten veraltet (letztes Update > 6 Monate), (c) Use-Case durch neueren Agenten abgelöst.
3. Führe für jeden Kandidaten den Pre-Retirement-Check durch: System-Prompt und Wissensordner-Dateien als Markdown exportieren und in einem "Archiv"-Ordner ablegen; Sunset-Memo an alle bisherigen Nutzer senden mit 14-Tage-Vorlauffrist.
4. Deaktiviere den Agenten nach der Vorlauffrist und aktualisiere das RACI-Governance-Dokument (S-LU-025).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Workplace-Governerin. Erstelle ein Retirement-Protokoll für die Stilllegung veralteter Langdock-Agenten. Kontext: Vier Agenten mit 0 Sessions in 90 Tagen, Workspace mit 25 Nutzern. Format: Checkliste mit Schritten (Nutzungscheck, Owner-Konsultation, Archiv-Snapshot, Sunset-Memo, Deaktivierung), Zeitplan und Archivierungs-Vorlage."
**Erwartetes Artefakt:** Ein Retirement-Protokoll im Canvas mit Schritt-für-Schritt-Checkliste, Archiv-Snapshot-Vorlage und einem Sunset-Memo-Template, das für jeden zu deaktivierenden Agenten angepasst wird.
**Fallstricke (≥2 spezifisch):**
- Ein "ungenutzter" Agent wird gelöscht, aber eine automatisierte Workflow-Komponente hat ihn still im Hintergrund gerufen → Vor Deaktivierung im Workflow-Builder nach Referenzen auf den Agenten suchen; Workflow-Abhängigkeiten sind unsichtbar im Nutzungs-Dashboard.
- Das Archiv-Snapshot-Verfahren wird übersprungen und das Wissen geht verloren → Kein Agent wird ohne exportierten System-Prompt und Wissensordner-Backup deaktiviert; Pre-Retirement-Export ist Pflichtschritt in der Checkliste.
**Anschluss-Szenario:** S-LU-046

### S-LU-046 KI-Adoptionsrate teamübergreifend messen und steuern

**Wann nutzen (Trigger):** Nach drei Monaten Langdock-Betrieb fragt die Geschäftsführung: "Wie viele Teams nutzen KI wirklich produktiv — und wie messen wir den Fortschritt?" Bisherige Zahlen basieren auf Gefühl, nicht auf Daten. (Quelle: A-04; sources/12 Q-004)
**Strategisches Ziel:** Ein standardisiertes Adoptionsmessmodell einführen, das monatlich die aktive Nutzung über Teams hinweg erfasst, Stagnation sichtbar macht und gezielte Interventionen ermöglicht.
**Hands-on Ergebnis:** Ein monatliches Adoptions-Dashboard-Template im Canvas mit vier Metriken (Aktive-Nutzer-Rate, Sessions-pro-Person, Agenten-Aktivierungstiefe, Prompt-Library-Beiträge) pro Team-Einheit.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin / Data Analyst / Canvas
**Vorgehen (4 Schritte):**
1. Exportiere monatlich aus dem Langdock-Admin-Dashboard die Nutzungsstatistik auf Team-Ebene: Anzahl aktiver Nutzer (mind. 1 Session/Woche), Sessions pro Kopf, genutzte Agenten-Typen und Library-Beiträge.
2. Lade den Export in den Data Analyst und berechne die vier Adoptionsmetriken pro Team-Einheit; visualisiere als Heatmap (Team × Metrik).
3. Definiere Ampel-Schwellenwerte: Grün = Aktive-Nutzer-Rate ≥ 70 %; Gelb = 40–69 %; Rot = unter 40 % — und verbinde jeden Rot-Eintrag automatisch mit einer Champion-Intervention (S-LU-014).
4. Veröffentliche das Dashboard monatlich im Team-Wiki und nutze es als Steuerungsinstrument für das CMO-Reporting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Transformations-Controllerin. Erstelle ein Adoptionsmessmodell für Langdock in einem 30-köpfigen Marketing-Team. Kontext: 5 Team-Einheiten (Content, Performance, Social, Brand, Analytics), monatlicher Reporting-Zyklus. Format: Tabelle mit Metrik-Name, Definition, Messmethode, Zielwert und Ampel-Schwellenwert."
**Erwartetes Artefakt:** Ein Canvas-Dashboard-Template mit vier Adoptionsmetriken, Team-Heatmap-Vorlage und einem Ampel-Handlungsplan für Rot-Einheiten.
**Fallstricke (≥2 spezifisch):**
- Nutzungsstatistiken werden als Leistungsbeurteilung missverstanden → Kommuniziere ausdrücklich: Das Dashboard misst Werkzeugnutzung, nicht individuelle Performance; Datenschutz-Hinweis (S-LU-032) voranstellen.
- Hohe Session-Zahlen ohne Output-Qualität gelten als Erfolg → Ergänze mindestens eine Output-Qualitäts-Metrik (z. B. Anteil der Agenten-Outputs, die ohne Revision freigegeben werden).
**Anschluss-Szenario:** S-LU-047

### S-LU-047 Abteilungsübergreifendes KI-Champion-Netzwerk aufbauen

**Wann nutzen (Trigger):** Das Marketing-Champion-Programm (S-LU-014) läuft gut, aber andere Abteilungen (Sales, HR, Legal) fragen nach KI-Unterstützung — ohne eigene Struktur und ohne Schnittstelle zur bestehenden Langdock-Infrastruktur. (Quelle: A-35; A-04)
**Strategisches Ziel:** Das bestehende Marketing-Champions-Programm auf ein abteilungsübergreifendes Netzwerk ausweiten, das Best-Practice-Transfer ermöglicht und die Gesamt-Adoption im Unternehmen beschleunigt.
**Hands-on Ergebnis:** Ein Champion-Netzwerk-Handbuch im Canvas mit Rollen-Definition, monatlichem Format (Cross-Department AI Roundtable), geteiltem Prompt-Katalog und einem Eskalationspfad für departmentspezifische Bedarfe.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Wissensordner / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Identifiziere in jedem relevanten Department einen Champion: dieselben Kriterien wie in S-LU-014 (aktivste Nutzer, Bereitschaft zur Wissensweitergabe, Führungskraft-Unterstützung).
2. Definiere die Netzwerk-Rollen: Marketing-Champion = Moderator und Wissens-Hub; Abteilungs-Champions = Übersetzer zwischen Team-Bedarf und Plattform-Fähigkeiten.
3. Etabliere ein monatliches 45-Minuten-Format: 15 Minuten Demo eines neuen Use-Cases, 20 Minuten Cross-Department-Problem-Solving, 10 Minuten Ankündigung neuer Features.
4. Lege einen gemeinsamen Wissensordner "Champion-Network-Resources" an: Prompt-Katalog aller Departments, Best-Practice-Protokolle, Onboarding-Materialien für neue Champions.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Organisationsentwicklungs-Expertin für KI-Transformation. Erstelle ein Handbuch für ein abteilungsübergreifendes KI-Champion-Netzwerk. Kontext: 5 Departments, je 1 Champion, monatlicher Roundtable, Langdock als gemeinsame Plattform. Format: Handbuch mit Rollen-Beschreibung, Meeting-Agenda-Template und Wissensordner-Struktur."
**Erwartetes Artefakt:** Ein Canvas-Handbuch mit Rollen-Definition, Meeting-Agenda-Template für den monatlichen Roundtable und einer dokumentierten Wissensordner-Struktur für das Netzwerk.
**Fallstricke (≥2 spezifisch):**
- Abteilungs-Champions werden nominiert, ohne dass ihre Führungskraft Zeit freigibt → Verbindliche Ressourcen-Zusage (2 Stunden/Monat) muss vor der Nominierung schriftlich vorliegen — dieselbe Bedingung wie in S-LU-014.
- Der gemeinsame Prompt-Katalog enthält sensible Marketing-Insights, die nicht alle Departments sehen sollen → Berechtigungsstruktur im Wissensordner vorab definieren: öffentliche Prompts vs. department-interne Prompts.
**Anschluss-Szenario:** S-LU-048

### S-LU-048 KI-Ideation-Workshop für neue Marketing-Use-Cases moderieren

**Wann nutzen (Trigger):** Das Team hat die offensichtlichen Quick-Win-Use-Cases abgedeckt — aber der Vorrat an Ideen versiegt. Der nächste Schritt ist ein strukturierter Workshop, um verborgene Automatisierungspotenziale zu heben. (Quelle: A-07; A-39)
**Strategisches Ziel:** Einen halbtägigen KI-Ideation-Workshop mit dem Marketing-Team durchführen, der systematisch neue Use-Cases generiert, nach Business-Impact priorisiert und direkt in das Agenten-Backlog überführt.
**Hands-on Ergebnis:** Ein priorisiertes Use-Case-Backlog im Canvas mit 10–15 neuen Szenarien, bewertet nach Impact, Machbarkeit und Dringlichkeit (ICE-Score), mit je einem zugewiesenen Owner.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Eröffne den Workshop mit einem strukturierten "Pain-Point-Dump" im Chat: Jedes Teammitglied nennt drei wiederkehrende Aufgaben, die zeitintensiv, fehleranfällig oder inkonsistent sind — KI gibt eine erste Machbarkeitseinschätzung.
2. Führe den PTCF-Prompt aus, um jeden Pain-Point in einen Use-Case-Vorschlag zu überführen: Beschreibung, benötigte Langdock-Funktion, geschätzte Zeitersparnis.
3. Bewerte alle Vorschläge im Canvas nach ICE-Score (Impact 1–10, Confidence 1–10, Ease 1–10) und sortiere das Backlog absteigend nach Gesamt-Score.
4. Weise den Top-5-Use-Cases je einen Owner aus dem Champions-Netzwerk zu und setze ein 30-Tage-Implementierungsziel.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Workshop-Moderatorin. Überführe die folgende Liste von Marketing-Pain-Points in priorisierte Langdock-Use-Cases. Kontext: B2B-Marketing-Team mit 15 Personen, Langdock seit 3 Monaten im Einsatz. Format: Tabelle mit Use-Case-Titel, Pain-Point, benötigter Langdock-Funktion, ICE-Score (Impact/Confidence/Ease) und vorgeschlagenem Owner."
**Erwartetes Artefakt:** Ein priorisiertes Use-Case-Backlog im Canvas mit 10–15 Szenarien, ICE-Scores, Owner-Zuweisung und einem 30-Tage-Implementierungsplan für die Top-5-Prioritäten.
**Fallstricke (≥2 spezifisch):**
- Alle Use-Cases landen im "Workflow-Automatisierung"-Bereich und ignorieren strategische Chat-Anwendungen → Workshop-Moderation muss explizit auch Formate wie Deep-Research, Canvas-Kollaboration und Agent-Beratung adressieren.
- ICE-Scores werden subjektiv vergeben und Lieblingsideen gewinnen → Ease-Score muss technisch validiert werden; Champion schätzt Implementierungsaufwand, nicht der Use-Case-Einreicher.
**Anschluss-Szenario:** S-LU-049

### S-LU-049 Langdock-Feature-Request-Prozess strukturieren und an den Anbieter kommunizieren

**Wann nutzen (Trigger):** Das Team sammelt Feature-Wünsche per Slack-Kanal — aber es gibt keinen Prozess, der populäre Anfragen konsolidiert, priorisiert und strukturiert an den Langdock-Support kommuniziert. (Quelle: sources/12 Q-036; A-35)
**Strategisches Ziel:** Einen internen Feature-Request-Prozess etablieren, der Nutzerfeedback systematisch erfasst, nach Häufigkeit und Business-Impact clustert und monatlich als konsolidiertes Dokument an den Anbieter übermittelt.
**Hands-on Ergebnis:** Ein Feature-Request-Log-Template im Canvas mit Erfassungsformular, Cluster-Methodik und einem standardisierten Anbieter-Kommunikations-Template.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Wissensordner
**Vorgehen (3 Schritte):**
1. Richte im Canvas ein Feature-Request-Log mit Spalten an: Datum, Melder, Beschreibung, betroffene Funktion, Business-Impact (hoch/mittel/niedrig), Häufigkeit (wie viele Nutzer haben dasselbe gemeldet) und Status (offen/kommuniziert/umgesetzt).
2. Führe monatlich einen PTCF-Prompt aus: "Clustere alle offenen Feature-Requests nach Funktionsbereich und priorisiere nach Häufigkeit × Business-Impact — erstelle eine Top-5-Liste."
3. Verfasse mit dem Output ein einseitiges Anbieter-Kommunikations-Template: Top-5-Requests mit Use-Case-Kontext, geschätzter Nutzeranzahl und erwünschtem Umsetzungsdatum — und sende es an den zuständigen Customer-Success-Manager.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Product-Feedback-Managerin. Clustere die folgende Liste von 18 Feature-Requests für Langdock nach Funktionsbereich und Business-Impact. Kontext: 25 Marketing-Nutzer, häufigste Kategorien: Workflow-Erweiterungen, Agent-UI, Wissensordner-Performance. Format: Top-5-Priorisierungsliste mit Cluster-Name, Anzahl Meldungen, Impact-Begründung und vorgeschlagenem Kommunikations-Wording."
**Erwartetes Artefakt:** Ein strukturiertes Feature-Request-Log im Canvas plus ein fertiges Anbieter-Kommunikations-Dokument mit Top-5-Priorisierung, direkt versandbereit an den Langdock-Customer-Success-Manager.
**Fallstricke (≥2 spezifisch):**
- Feature-Requests werden als Produktversprechen missverstanden → Das Kommunikations-Template muss explizit formulieren: "Dies sind interne Nutzerwünsche, keine vertraglichen Anforderungen."
- Das Log wird nie aktualisiert, weil der Prozess zu aufwändig ist → Quartalsweise 30-minütige Log-Hygiene-Session im Champion-Netzwerk-Roundtable (S-LU-047) einplanen; nicht jeden Monat neu starten.
**Anschluss-Szenario:** S-LU-050

### S-LU-050 Workspace-Backup- und Export-Strategie implementieren

**Wann nutzen (Trigger):** Die IT-Abteilung fragt nach einer Datensicherungsstrategie für Langdock — und niemand im Marketing-Team kann erklären, welche Daten wie exportiert werden können und wo die Grenzen liegen. (Quelle: A-03; S-LU-021)
**Strategisches Ziel:** Eine dokumentierte Backup-Routine einrichten, die alle exportierbaren Langdock-Assets quartalsweise sichert und dabei klar zwischen portablen Daten (Quelldateien, Prompts) und nicht-portablen Daten (Embeddings, Chat-Historien) unterscheidet.
**Hands-on Ergebnis:** Ein Backup-Protokoll im Wissensordner mit Exportcheckliste, Speicherort-Struktur (Git für Prompts, Cloud-Drive für Wissensordner-Dateien) und einem jährlichen Wiederherstellungs-Drill-Termin.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin / Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Inventarisiere alle exportierbaren Langdock-Assets: System-Prompts (Markdown), Konversations-Starter-Texte (Markdown), Wissensordner-Quelldateien (Original-PDFs/DOCX), Workflow-Konfigurationen (JSON-Export falls verfügbar).
2. Definiere die Backup-Methodik pro Asset-Typ: System-Prompts und Konversations-Starter → Git-Repository (S-LU-043); Wissensordner-Quelldateien → Google Drive mit Versionierung; Workflow-Logik → Dokumentation im Canvas.
3. Etabliere einen quartalsweisen Backup-Rhythmus: Fester Termin im Teamkalender, 30 Minuten, Owner ist der Workspace-Admin; Backup-Protokoll im Wissensordner aktualisieren.
4. Plane einen jährlichen Wiederherstellungs-Drill: Stelle einen archivierten Agenten aus dem Backup wieder her und prüfe, ob er ohne Qualitätsverlust funktioniert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist IT-Risikomanagerin für SaaS-Plattformen. Erstelle eine Backup-Strategie für einen Langdock-Workspace mit 12 Agenten, 5 Wissensordnern und 35 Prompts. Kontext: Keine nativen Backup-Funktionen verfügbar; manuelle Exportroutine erforderlich. Format: Tabelle mit Asset-Typ, Exportmethode, Speicherort, Backup-Rhythmus und Wiederherstellungstest-Verfahren."
**Erwartetes Artefakt:** Ein Backup-Protokoll im Canvas mit Asset-Inventar, Export-Methodik pro Typ, Quartalsroutine und einem dokumentierten Wiederherstellungs-Drill-Verfahren.
**Fallstricke (≥2 spezifisch):**
- Embeddings werden als "gesichert" betrachtet, obwohl nur die Quelldateien portierbar sind → Im Backup-Protokoll explizit festhalten: Embeddings sind plattformspezifisch und müssen nach einer Migration neu generiert werden.
- Der Backup-Termin wird immer wieder verschoben → Backup-Aufgabe als wiederkehrendes Kalender-Event mit dem Workspace-Admin als Pflicht-Teilnehmer und dem CMO als eskalierender Empfänger bei Nicht-Durchführung.
**Anschluss-Szenario:** S-LU-051

### S-LU-051 KI-gestützte Meeting-Moderation und Protokollierung einführen

**Wann nutzen (Trigger):** Strategie-Meetings dauern zu lang, Entscheidungen bleiben unklar und Protokolle werden oft erst Tage später fertiggestellt — oder gar nicht. Das Team verliert Follow-up-Disziplin. (Quelle: sources/10 S-008; A-39)
**Strategisches Ziel:** Langdock als aktives Meeting-Moderationswerkzeug einsetzen: strukturierte Agenda-Generierung vor dem Meeting, Live-Protokollierung als Canvas-Dokument während des Meetings und automatische Action-Item-Extraktion danach.
**Hands-on Ergebnis:** Ein Meeting-Moderation-Workflow-Template mit drei Komponenten: Pre-Meeting-Agenda-Agent, Live-Protokoll-Canvas-Template und Post-Meeting-Action-Item-Extraktor.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Canvas / Chat / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Konfiguriere einen Meeting-Prep-Agenten mit Konversations-Starter "Bereite die Agenda für dieses Meeting vor" — Input: Thema, Teilnehmer, Ziel, Dauer; Output: strukturierte Agenda mit Zeitblöcken und vorbereitenden Fragen.
2. Erstelle ein Live-Protokoll-Canvas-Template: Abschnitte für Entscheidungen (mit Datum und Entscheidungsträger), offene Fragen und Action Items (wer, was, bis wann).
3. Definiere den Post-Meeting-Konversations-Starter: "Extrahiere alle Action Items aus diesem Protokoll" → Output: nummerierte Liste mit Owner und Deadline, bereit für Slack-Versand.
4. Trainiere das Team in einem 20-minütigen Workshop auf das Format; der erste Champion moderiert das erste Live-Meeting mit dem neuen Prozess.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Meeting-Effizienz-Beraterin. Erstelle ein Langdock-Canvas-Template für strukturierte Marketing-Meetings. Kontext: Wöchentliches 60-Minuten-Team-Meeting, 8 Teilnehmer, häufige Nacharbeit durch fehlende Protokolle. Format: Canvas-Template mit Abschnitten Agenda (mit Zeitblöcken), Entscheidungen (Tabelle), Action Items (wer/was/bis wann) und offenen Fragen."
**Erwartetes Artefakt:** Ein Canvas-Meeting-Template mit drei Abschnitten plus ein fertiger System-Prompt für den Meeting-Prep-Agenten und ein Post-Meeting-Konversations-Starter.
**Fallstricke (≥2 spezifisch):**
- Das Canvas-Protokoll wird live nicht gepflegt, weil alle im Meeting-Fluss sind → Dedizierte Protokollantin für jedes Meeting festlegen; rotierend, 10-Minuten-Nachbearbeitung ist Pflichtbestandteil der Meeting-Kultur.
- Action-Item-Extraktion übersieht implizite Zusagen ("ich schaue das mal an") → Im Konversations-Starter explizit: "Markiere auch implizite Zusagen als Action Items und frage nach Owner und Deadline."
**Anschluss-Szenario:** S-LU-052

### S-LU-052 Langdock als Wissensmanagement-Layer für das Marketing-Team etablieren

**Wann nutzen (Trigger):** Wissen über Kampagnen-Learnings, Brand-Entscheidungen und Agentur-Briefings ist über E-Mail, Google Drive, Confluence und Slack verstreut — neue Mitarbeitende finden wichtige Informationen nicht und wiederholen Fehler der Vergangenheit. (Quelle: sources/12 Q-038; A-35)
**Strategisches Ziel:** Langdock als zentrale Wissensmanagement-Schicht einsetzen, die strukturierte Wissensordner mit einem Retrieval-Agenten verbindet — sodass das Team Fragen an die eigene Wissenshistorie stellen kann statt endlos zu suchen.
**Hands-on Ergebnis:** Eine dreistufige Wissensarchitektur im Canvas: Tier 1 (immer aktuell: Brand-Dokumente), Tier 2 (quartalsweise aktualisiert: Kampagnen-Learnings), Tier 3 (archiviert: abgeschlossene Projekte) — plus ein "Ask-the-Archive"-Agent.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner / Agents / Canvas / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Definiere die Wissensarchitektur: Tier-1-Ordner (Brand, Personas, Tone-of-Voice — Owner: CMO, Update-Rhythmus: bei Änderung), Tier-2-Ordner (Kampagnen-Retros, Agentur-Briefings — Owner: Team-Leads, Update-Rhythmus: quartalsweise), Tier-3-Ordner (archivierte Projekte — schreibgeschützt, read-only).
2. Migriere die wichtigsten Dokumente aus Google Drive und Confluence in die jeweiligen Tier-Ordner; lege klare Namenskonventionen (S-LU-018) fest.
3. Konfiguriere den "Ask-the-Archive"-Agenten: System-Prompt "Du beantwortest Fragen aus dem Marketing-Wissensarchiv und gibst immer die Quell-Datei an"; Konversations-Starter "Was haben wir beim letzten LinkedIn-Kampagnen-Launch gelernt?"
4. Kommuniziere im Team: Neue Kampagnen-Learnings werden ab sofort als 1-seitige Retro-Datei im Tier-2-Ordner abgelegt — nicht mehr als Slack-Thread.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Architektin. Entwickle eine dreistufige Wissensordner-Architektur für ein 15-köpfiges Marketing-Team in Langdock. Kontext: Aktuell 300 Dokumente verstreut auf Google Drive und Confluence; Ziel: retrieval-fähige Wissensbasis mit klarem Update-Rhythmus. Format: Tabelle mit Tier, Inhaltstyp, Owner, Update-Rhythmus und Zugriffsregel."
**Erwartetes Artefakt:** Eine dreistufige Wissensarchitektur-Tabelle im Canvas, ein System-Prompt für den "Ask-the-Archive"-Agenten und eine Migrations-Checkliste für die wichtigsten 50 Dokumente.
**Fallstricke (≥2 spezifisch):**
- Tier-3-Archivordner wächst unkontrolliert auf über 1.000 Dateien und beeinträchtigt die Retrieval-Qualität → Archivordner quartalsweise auf maximal 200 Dateien begrenzen; ältere Dateien in ein externes Drive auslagern.
- Das Team nutzt den Agenten nicht, weil sie ihn nicht kennen → Onboarding-Konversations-Starter ist Pflichtbestandteil des 14-Tage-Onboarding-Plans (S-LU-041).
**Anschluss-Szenario:** S-LU-053

### S-LU-053 KI-Reife-Assessment für das Marketing-Team durchführen

**Wann nutzen (Trigger):** Vor einer neuen Investitionsrunde in KI-Tools oder vor dem Aufsetzen eines neuen Langdock-Piloten fragt das Management: "Wo stehen wir eigentlich im Vergleich zu Best Practice — und wo sind unsere größten Lücken?" (Quelle: A-04; A-10; sources/12 Q-004)
**Strategisches Ziel:** Einen strukturierten KI-Reife-Assessment-Prozess einführen, der die aktuelle Nutzungsreife in fünf Dimensionen bewertet und einen priorisierten Entwicklungsplan ableitet.
**Hands-on Ergebnis:** Ein Reife-Assessment-Report im Canvas mit Scoring in fünf Dimensionen (Strategie, Tooling, Kompetenz, Governance, Output-Qualität), Benchmark-Vergleich und einem 90-Tage-Entwicklungsplan.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Deep Research
**Vorgehen (4 Schritte):**
1. Definiere die fünf Assessment-Dimensionen: (1) KI-Strategie & Vision, (2) Tool-Integration & Infrastruktur, (3) Team-Kompetenz & Adoption, (4) Governance & Compliance, (5) messbare Output-Qualität.
2. Bewerte jede Dimension auf einer 1–5-Skala: (1) nicht vorhanden, (3) selektiv implementiert, (5) systematisch und messbar; nutze konkrete Evidenz aus dem Workspace (Nutzungsdaten, Governance-Dokumente, Canary-Check-Protokolle).
3. Aktiviere den Deep Research Modus, um den aktuellen KI-Reife-Benchmark für Marketing-Teams im B2B-SaaS-Segment zu recherchieren; identifiziere die drei größten Lücken zum Best Practice.
4. Erstelle den 90-Tage-Entwicklungsplan: Top-3-Maßnahmen pro Lücke, Owner, KPI und Checkpoint-Datum.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Strategie-Beraterin für B2B-Marketing-Teams. Erstelle ein KI-Reife-Assessment-Framework in fünf Dimensionen. Kontext: Marketing-Team mit 6 Monaten Langdock-Erfahrung, 12 Personen, 8 aktive Agenten, Governance-Dokument vorhanden. Format: Bewertungsmatrix mit Dimension, Score (1–5), Evidenz, Lücke zum Best Practice und Top-Maßnahme."
**Erwartetes Artefakt:** Ein Reife-Assessment-Report im Canvas mit Bewertungsmatrix (5 Dimensionen × Score), Benchmark-Vergleich und einem priorisierten 90-Tage-Entwicklungsplan.
**Fallstricke (≥2 spezifisch):**
- Das Assessment wird zu positiv, weil das Team die eigene Arbeit bewertet → Mindestens einen externen Champion (aus S-LU-047) oder einen Langdock-Customer-Success-Manager als neutrale Perspektive einbinden.
- Das Assessment endet ohne Konsequenzen → 90-Tage-Entwicklungsplan muss innerhalb von 7 Tagen nach dem Assessment finalisiert und vom CMO freigegeben sein; sonst verliert es seine Steuerungswirkung.
**Anschluss-Szenario:** S-LU-054

### S-LU-054 Langdock-Onboarding für externe Agenturen und Freelancer strukturieren

**Wann nutzen (Trigger):** Externe Texter, Designer und Agenturen sollen auf Langdock-Agenten und Wissensordner zugreifen — aber es gibt keinen sicheren, strukturierten Onboarding-Prozess für externe Nutzer. (Quelle: A-06; sources/12 Q-042; sources/10 S-002)
**Strategisches Ziel:** Einen sicheren, effizienten Onboarding-Prozess für externe Partner entwickeln, der Zugriffsrechte klar regelt, nur relevante Wissensordner freigibt und externe Nutzer in maximal zwei Stunden produktionsfähig macht.
**Hands-on Ergebnis:** Ein externes Onboarding-Kit im Canvas: Zugriffsrechte-Matrix, ein schreibgeschützter Onboarding-Agent für externe Nutzer und ein 2-Stunden-Schnell-Einstiegs-Guide.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Wissensordner / Canvas / Konversations-Starter
**Vorgehen (4 Schritte):**
1. Definiere die Zugriffsrechte-Matrix: Externe Nutzer erhalten Lese-Zugriff auf freigegebene Wissensordner (Brand-Guide, aktuelle Kampagnenbriefings), können aber keine Agenten konfigurieren oder Wissensordner bearbeiten.
2. Konfiguriere einen dedizierten "External Partner Agent": System-Prompt mit expliziten Grenzen ("Du kannst nur auf die freigegebenen Ordner zugreifen"), Konversations-Starter für die häufigsten externen Aufgaben (Brand-Voice-Check, Briefing-Frage, Asset-Format-Anfrage).
3. Erstelle den 2-Stunden-Schnell-Einstiegs-Guide im Canvas: Schritt 1 Account-Aktivierung, Schritt 2 die drei wichtigsten Agenten kennenlernen, Schritt 3 erste echte Aufgabe mit dem Brand-Voice-Agenten erledigen.
4. Definiere den Offboarding-Prozess: Zugriffsentzug nach Projektende, Audit welche Daten der externe Nutzer gesehen hat.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist IT-Security-Beraterin für kollaborative KI-Plattformen. Erstelle eine Zugriffsrechte-Matrix für externe Agentur-Mitarbeitende in Langdock. Kontext: 3 externe Nutzer, Zugriff auf Brand-Guide und aktuelle Briefings, kein Zugriff auf CRM-Daten oder interne Analysen. Format: Tabelle mit Nutzer-Typ, freigegebene Wissensordner, erlaubte Aktionen, verbotene Aktionen und Offboarding-Prozess."
**Erwartetes Artefakt:** Eine Zugriffsrechte-Matrix im Canvas, ein konfigurierter External-Partner-Agent und ein 2-Stunden-Onboarding-Guide für externe Partner.
**Fallstricke (≥2 spezifisch):**
- Externe Nutzer erhalten versehentlich Zugriff auf interne Governance-Dokumente oder CRM-verknüpfte Wissensordner → Separate Wissensordner-Struktur für externe Partner anlegen; nie denselben Ordner intern und extern freigeben.
- Externer Nutzer verlässt die Agentur, der Zugang bleibt aktiv → Offboarding-Prozess mit Ablaufdatum bei Projektvergabe als Standard festlegen; Workspace-Admin prüft monatlich aktive externe Zugänge.
**Anschluss-Szenario:** S-LU-055

### S-LU-055 Multi-Workspace-Governance für größere Marketing-Organisationen aufbauen

**Wann nutzen (Trigger):** Das Unternehmen hat mehrere Business-Units oder Regionen, jede mit einem eigenen Langdock-Workspace — und es gibt keine übergreifenden Standards für Agenten-Konfiguration, Prompt-Qualität oder Sicherheitsrichtlinien. (Quelle: A-35; A-36; sources/12 Q-036)
**Strategisches Ziel:** Ein Multi-Workspace-Governance-Modell einführen, das gemeinsame Standards definiert, ohne die Autonomie der einzelnen Teams zu beschneiden — nach dem Prinzip "Global Standards, Local Execution".
**Hands-on Ergebnis:** Ein Multi-Workspace-Governance-Rahmen im Canvas mit drei Schichten: zwingende Standards (Sicherheit, DSGVO, Brand), empfohlene Richtlinien (Prompt-Qualität, Namenskonventionen) und freie lokale Entscheidungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Inventarisiere alle bestehenden Workspaces: Teams, Nutzeranzahl, aktive Agenten, Wissensordner, aktuelle Governance-Stand.
2. Definiere die drei Governance-Schichten: Schicht 1 (zwingend) — DSGVO-Konformität, Brand-Voice-Standard-Agent, Budget-Eskalationsplan; Schicht 2 (empfohlen) — Namenskonventionen, RACI-Modell, Canary-Check-Prozess; Schicht 3 (lokal frei) — spezifische Agenten, Workflow-Logik, Prompt-Katalog.
3. Etabliere einen Cross-Workspace-Champions-Roundtable (quartalsweise, 60 Minuten): Workspace-Admins aller Business-Units tauschen Best Practices aus und koordinieren Schicht-1-Updates.
4. Erstelle einen zentralen "Governance-Hub"-Wissensordner, der für alle Workspaces lesbar ist: zwingende Standards, aktuelle Compliance-Dokumente, Änderungsprotokoll.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Enterprise-KI-Governance-Beraterin. Entwickle ein Multi-Workspace-Governance-Modell für 4 Langdock-Workspaces in verschiedenen Business-Units. Kontext: DACH-Region, unterschiedliche Team-Größen (8–30 Nutzer), gemeinsame Brand-Standards aber unterschiedliche Use-Cases. Format: Drei-Schichten-Modell mit zwingenden Standards, Empfehlungen und lokalen Freiheiten — als Tabelle mit Maßnahme, Schicht, Verantwortlichkeit und Durchsetzungs-Mechanismus."
**Erwartetes Artefakt:** Ein Multi-Workspace-Governance-Dokument im Canvas mit Drei-Schichten-Modell, einem Governance-Hub-Wissensordner-Plan und einer Quartals-Roundtable-Agenda-Vorlage.
**Fallstricke (≥2 spezifisch):**
- Zwingende Standards werden von lokalen Teams als Bevormundung empfunden und ignoriert → Co-Creation der Schicht-1-Standards mit je einem Vertreter pro Business-Unit; keine Standards ohne lokalen Input.
- Der Governance-Hub-Wissensordner veraltet, weil keine klare Ownership → CMO oder Head of Marketing Ops ist Owner; Änderungen an Schicht-1-Standards erfordern explizite Freigabe und Update-Protokoll im Hub.
**Anschluss-Szenario:** S-LU-056

### S-LU-056 KI-Content-Kennzeichnungsstrategie teamweit umsetzen

**Wann nutzen (Trigger):** Nach der Erstellung der Disclosure-Strategie (S-LU-039) muss das Team nun operativ sicherstellen, dass alle mit KI produzierten Assets konsistent und korrekt gekennzeichnet werden — ohne dabei jeden Mitarbeitenden manuell zu kontrollieren. (Quelle: A-09; A-19; A-50)
**Strategisches Ziel:** Die KI-Content-Kennzeichnung von einer Richtlinie in eine automatische, im Produktionsprozess verankerte Praxis überführen — so dass Kennzeichnung kein Extra-Schritt ist, sondern im Workflow eingebaut.
**Hands-on Ergebnis:** Ein Kennzeichnungs-Workflow mit drei Komponenten: automatisches Labeling-Flag in jedem KI-Output-Agenten, eine Freigabe-Checkliste mit Kennzeichnungs-Pflichtfeld und ein monatliches Stichproben-Audit.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Workflows / Canvas / Wissensordner
**Vorgehen (4 Schritte):**
1. Ergänze jeden Content-Agenten mit einer Standard-Ausgabe-Zeile im System-Prompt: "Füge am Ende jedes Outputs einen Disclosure-Hinweis ein: '[KI-assistiert, redaktionell geprüft]' — sofern der Content für externe Kanäle bestimmt ist."
2. Integriere ein Kennzeichnungs-Pflichtfeld in die Content-Freigabe-Checkliste (S-LU-040): Kein Asset geht live ohne ausgefülltes Feld "KI-Anteil: voll generiert / assistiert / nicht genutzt" und "Disclosure angewendet: Ja/Nein".
3. Baue einen monatlichen Stichproben-Audit-Workflow: Ziehe 10 zufällige veröffentlichte Assets aus dem CMS und prüfe via Agent, ob Disclosure korrekt angewendet wurde — Abweichungen werden direkt an den Asset-Owner kommuniziert.
4. Dokumentiere das Kennzeichnungs-Setup im Governance-Wissensordner als Nachweis für eventuelle Compliance-Prüfungen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Compliance-Managerin für KI-Content-Produktion. Erstelle einen operativen Kennzeichnungs-Workflow für ein 15-köpfiges Marketing-Team, das täglich KI-Inhalte produziert. Kontext: EU AI Act Art. 50 relevant, Produktion von Blogs, Social Posts und Newslettern. Format: Prozess-Checkliste mit Schritten, Verantwortlichkeiten, Tool-Integration und Audit-Mechanismus."
**Erwartetes Artefakt:** Ein Kennzeichnungs-Workflow-Dokument im Canvas mit Agent-System-Prompt-Ergänzung, Freigabe-Checkliste und Audit-Prozess-Beschreibung.
**Fallstricke (≥2 spezifisch):**
- Die Disclosure-Zeile im Agent-Output wird vom Redakteur beim Copy-Paste-Schritt gelöscht, ohne es zu bemerken → Disclosure als Pflichtfeld im CMS-Upload-Formular einrichten — unabhängig von der Langdock-Integration.
- Stichproben-Audit ohne klare Konsequenz bei Nicht-Einhaltung ist zahnlos → Im Governance-Dokument definieren: Erster Verstoß = Erinnerung, zweiter Verstoß = Eskalation an Teamlead, dritter Verstoß = Compliance-Review.
**Anschluss-Szenario:** S-LU-057

### S-LU-057 Langdock in den bestehenden Martech-Stack integrieren

**Wann nutzen (Trigger):** Das Marketing-Team nutzt HubSpot, Google Analytics, Slack und Canva parallel zu Langdock — aber die Werkzeuge sind nicht verbunden, sodass KI-Outputs immer manuell in die anderen Systeme übertragen werden müssen. (Quelle: sources/12 Q-117; sources/10 S-002)
**Strategisches Ziel:** Langdock als KI-Schicht in den bestehenden Martech-Stack einbetten — mindestens drei automatisierte Verbindungspunkte schaffen, die manuelle Übertragunsschritte eliminieren.
**Hands-on Ergebnis:** Eine Martech-Integrations-Karte im Canvas mit drei implementierten Workflows (HubSpot → Langdock → HubSpot, Google Analytics → Langdock → Slack, CMS → Langdock → Freigabe-Workflow) und einer Priorisierung weiterer Integrations-Kandidaten.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows / Integrations / Canvas / Agents
**Vorgehen (4 Schritte):**
1. Kartiere den aktuellen Martech-Stack: Welche Tools werden täglich genutzt? Wo entstehen manuelle Übergabeschritte zwischen Langdock und anderen Systemen (z. B. Langdock-Output → manuell in HubSpot)?
2. Priorisiere die drei vielversprechendsten Integrationspunkte nach Zeitersparnis und technischer Machbarkeit; nutze die native Langdock-Integrations-Liste (über 60 Konnektoren) als Ausgangspunkt.
3. Baue Workflow 1 (Quick Win): Wenn HubSpot ein neues Lead-Formular-Submission erhält → Langdock generiert automatisch eine personalisierte Follow-up-E-Mail → zurück in HubSpot als Draft.
4. Dokumentiere alle Integrationen im Canvas als Martech-Stack-Karte: Tool, Verbindungstyp (native/MCP/Webhook), Trigger, Langdock-Aktion, Output-Ziel, Owner und Wartungsaufwand.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Martech-Integrationsarchitektin. Entwickle eine Integrations-Strategie für Langdock in einem Marketing-Stack mit HubSpot, Google Analytics und Slack. Kontext: Aktuell alle Übergaben manuell, Team will Automatisierung ohne IT-Ressourcen. Format: Integrations-Karte mit Tool-Kombination, Trigger, Langdock-Funktion, Output-Ziel, geschätzter Zeitersparnis/Monat und Implementierungsaufwand (h)."
**Erwartetes Artefakt:** Eine Martech-Integrations-Karte im Canvas mit drei implementierten Verbindungen, Priorisierungsliste für weitere Integrationen und einer Wartungs-RACI-Tabelle.
**Fallstricke (≥2 spezifisch):**
- Native HubSpot-Integration überträgt sensible Kontaktdaten nach Langdock → DSGVO-Prüfung (S-LU-031) vor jeder CRM-Integration zwingend; nur anonymisierte oder aggregierte Daten in KI-Layer übertragen.
- Workflow-Automatisierung bricht bei API-Änderungen des Tool-Anbieters → Monatlichen Integration-Health-Check in den Governance-Review (S-LU-025) aufnehmen; bei Bruch des Workflows wird sofort der Workflow-Owner benachrichtigt.
**Anschluss-Szenario:** S-LU-058

### S-LU-058 KI-Strategie-Präsentation für das Board vorbereiten

**Wann nutzen (Trigger):** Die Geschäftsführung hat KI als strategische Priorität ausgerufen und der CMO soll im nächsten Board-Meeting eine KI-Strategie-Präsentation halten — aber es gibt noch keine konsolidierte Darstellung. (Quelle: A-10; A-01; sources/12 Q-004)
**Strategisches Ziel:** Eine überzeugende, datengestützte KI-Strategie-Präsentation für das Board entwickeln, die Ist-Zustand, Potenzial, Investitionsbedarf und ROI-Projektion in einem kohärenten Narrativ verbindet.
**Hands-on Ergebnis:** Ein Board-Ready-Präsentations-Deck im Canvas (10–12 Slides) mit sechs Kernbotschaften: Ist-Zustand, strategische Vision, Quick Wins (realisiert), nächste Investitionen, Risiken und Governance.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Data Analyst / Deep Research
**Vorgehen (4 Schritte):**
1. Sammle alle relevanten Datenpunkte im Chat: Adoption-Rate (S-LU-046), ROI-KPIs (S-LU-012), Reife-Assessment-Score (S-LU-053), Pipeline-Attribution (S-LU-040) und CO₂-Fußabdruck (S-LU-044).
2. Aktiviere den Deep Research Modus für den Markt-Kontext: Wie hoch ist die KI-Adoptionsrate im B2B-Marketing-Segment? Was investieren vergleichbare Unternehmen? Welche regulatorischen Entwicklungen sind relevant?
3. Entwickle das Deck-Narrativ im Canvas: Folie 1 (Executive Summary), Folien 2–4 (Ist-Zustand + Quick Wins mit Daten), Folien 5–7 (strategische Vision + nächste Schritte + Investitionsbedarf), Folien 8–10 (Risiken + Governance + ROI-Projektion), Folien 11–12 (Entscheidungsaufruf + Anhang).
4. Teste die Präsentation mit dem Steel-Manning-Test (S-LU-002): "Was ist das stärkste Gegenargument gegen diese KI-Investition?" — und baue die Antwort in Folie 8 ein.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Board-Kommunikations-Expertin für digitale Transformation. Erstelle eine Gliederung für eine 20-minütige KI-Strategie-Präsentation für das Board. Kontext: CMO präsentiert nach 6 Monaten KI-Pilot im Marketing; Board will Investitionsgrundlage für den Vollrollout. Format: Slide-Struktur mit Folientitel, Kernbotschaft (1 Satz), empfohlene Visualisierung und wichtigste Daten-/Quellenangabe pro Folie."
**Erwartetes Artefakt:** Eine 10–12-Slide-Präsentationsgliederung im Canvas mit Folientitel, Kernbotschaft, Visualisierungsempfehlung und Datenquellen — bereit für die Umsetzung in PowerPoint oder Google Slides.
**Fallstricke (≥2 spezifisch):**
- Die Präsentation enthält zu viele operative Details und verliert das Board → Faustregel: Pro Folie eine Kernbotschaft, maximal drei Datenpunkte; alles andere in den Anhang.
- ROI-Projektion basiert auf zu optimistischen Annahmen und verliert Glaubwürdigkeit → Projiziere konservativ (unteres Drittel der realistischen Bandbreite) und kommuniziere die Annahmen transparent auf der Folie.
**Anschluss-Szenario:** S-LU-059

### S-LU-059 Kontinuierlicher Verbesserungskreislauf für KI-Prozesse einrichten

**Wann nutzen (Trigger):** Langdock ist im Einsatz und die erste Aufbauphase ist abgeschlossen — aber es gibt keinen systematischen Prozess, der sicherstellt, dass Agenten, Prompts und Workflows kontinuierlich verbessert werden statt zu veralten. (Quelle: A-34; A-33; A-39)
**Strategisches Ziel:** Einen strukturierten Continuous-Improvement-Loop für alle KI-Prozesse etablieren, der monatliche Feedback-Sammlung, quartalsweises Review und jährliche Strategie-Neubewertung verbindet.
**Hands-on Ergebnis:** Ein CI-Prozess-Dokument im Canvas mit drei Zyklen (monatlich: Canary-Checks + Nutzungs-Feedback; quartalsweise: Governance-Review + Backlog-Priorisierung; jährlich: Reife-Assessment + Board-Update) und klaren Ownership-Zuweisungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Agents / Wissensordner
**Vorgehen (4 Schritte):**
1. Definiere die drei CI-Zyklen mit Aktivitäten: Monatszyklus (Canary-Checks S-LU-033, Adoptions-Dashboard S-LU-046, Feature-Request-Clustering S-LU-049), Quartalszyklus (Governance-Review S-LU-025, Use-Case-Backlog-Priorisierung S-LU-048, Wissensordner-Hygiene S-LU-018), Jahreszyklus (Reife-Assessment S-LU-053, Board-Präsentation S-LU-058, Wechsel-Drill S-LU-050).
2. Erstelle für jeden Zyklus eine Aktivitätscheckliste mit Dauer, Owner und Output-Artefakt; integriere alle Termine in den Teamkalender als Wiederkehrende Events.
3. Konfiguriere einen CI-Loop-Agenten als Moderation-Unterstützung: Konversations-Starter "Erstelle die Agenda für unseren monatlichen KI-Review" → Output: vorausgefüllte Meeting-Agenda mit Datenpunkten aus dem letzten Zyklus.
4. Verankere die CI-Philosophie im Team-Onboarding (S-LU-041): Neue Mitarbeitende lernen ab Tag 7, wie sie Verbesserungsvorschläge einreichen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prozess-Exzellenz-Beraterin mit KI-Fokus. Erstelle einen Continuous-Improvement-Loop für KI-Prozesse in einem Marketing-Team. Kontext: 15 Personen, Langdock seit 6 Monaten, Champions-Programm aktiv. Format: Drei-Zyklen-Tabelle (monatlich/quartalsweise/jährlich) mit Aktivität, Dauer, Owner, Input-Artefakt und Output-Artefakt."
**Erwartetes Artefakt:** Ein CI-Prozess-Dokument im Canvas mit Drei-Zyklen-Tabelle, Wiederkehrenden-Termin-Liste und einem CI-Loop-Agenten-System-Prompt.
**Fallstricke (≥2 spezifisch):**
- Der monatliche Zyklus wird im operativen Stress übersprungen → Monatszyklus auf maximal 60 Minuten begrenzen; wenn es länger dauert, wird das Format sofort vereinfacht — nicht der Termin gestrichen.
- Die jährliche Strategie-Neubewertung findet statt, aber keine Konsequenzen werden gezogen → Das Reife-Assessment (S-LU-053) schreibt vor, dass innerhalb von 14 Tagen ein aktualisierter 90-Tage-Plan vorliegen muss.
**Anschluss-Szenario:** S-LU-060

### S-LU-060 Community of Practice für Marketing-KI aufbauen und verstetigen

**Wann nutzen (Trigger):** Das interne Champion-Netzwerk (S-LU-047) funktioniert gut, aber das Team wünscht sich mehr Austausch mit anderen Marketing-Teams, die ähnliche Herausforderungen mit KI haben — über Unternehmensgrenzen hinaus. (Quelle: A-39; A-07; A-48)
**Strategisches Ziel:** Eine nachhaltige Community of Practice für Marketing-KI aufbauen, die internen Wissenstransfer mit externem Austausch verbindet und das Team als Thought Leader im DACH-KI-Marketing-Ökosystem positioniert.
**Hands-on Ergebnis:** Ein Community-of-Practice-Konzept im Canvas mit drei Formaten (internem monatlichem Showcase, halbjährlichem externem Event, Public-Content-Beitrag), Governance-Regeln und einem ersten Jahresplan.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Deep Research / Agents
**Vorgehen (4 Schritte):**
1. Definiere die drei Community-Formate: (1) Interner monatlicher Showcase — 30 Minuten, ein Use-Case-Demo, offen für alle Langdock-Nutzer im Unternehmen; (2) Halbjährliches externes Event — 2 Stunden, 2–3 externe Referenten aus anderen DACH-Unternehmen, kein Sales-Pitch; (3) Public-Content-Beitrag — quartalsweise einen anonymisierten Use-Case als LinkedIn-Post oder Blog-Artikel publizieren.
2. Aktiviere den Deep Research Modus: Welche bestehenden KI-Marketing-Communities gibt es im DACH-Raum (Slack-Groups, LinkedIn-Gruppen, Verbände)? Identifiziere Kooperationspartner für das externe Event.
3. Erstelle den ersten Jahresplan im Canvas: 12 interne Showcases, 2 externe Events, 4 Public-Content-Beiträge — mit Themenvorschlägen, die auf dem Use-Case-Backlog (S-LU-048) basieren.
4. Konfiguriere einen Community-Content-Agenten: System-Prompt "Du hilfst dabei, interne Use-Cases für die externe Kommunikation zu anonymisieren und publikationsreif aufzubereiten"; Konversations-Starter "Bereite diesen internen Use-Case als LinkedIn-Artikel auf."
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Community-Building-Expertin für Technologie-Ökosysteme. Entwickle ein Community-of-Practice-Konzept für Marketing-KI im DACH-Raum. Kontext: Ausgangspunkt ist ein internes Champion-Netzwerk mit 6 Personen; Ziel ist schrittweise Öffnung nach außen. Format: Konzept mit drei Community-Formaten, Governance-Regeln (wer darf was teilen), erstem Jahresplan und KPIs für Community-Erfolg."
**Erwartetes Artefakt:** Ein Community-of-Practice-Konzept im Canvas mit drei Formaten, Governance-Regeln, Jahresplan und einem System-Prompt für den Community-Content-Agenten.
**Fallstricke (≥2 spezifisch):**
- Externe Teilnehmende erwarten Exklusivwissen und sind enttäuscht von zu allgemeinen Inhalten → Jedes externe Event braucht mindestens einen konkreten, anonymisierten Praxisfall mit echten Zahlen — keine reinen Tool-Demos.
- Public-Content-Beiträge enthalten versehentlich sensible Business-Daten → Jeder externe Content-Beitrag muss den Community-Content-Agenten zur Anonymisierung durchlaufen und dann von der Rechtsabteilung (10 Minuten Durchsicht) freigegeben werden.
**Anschluss-Szenario:** S-LU-001
