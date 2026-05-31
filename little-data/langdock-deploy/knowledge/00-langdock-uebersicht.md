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
**Anschluss-Szenario:** S-LU-001
