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

Ergänzt wird das System durch die Integrations-Säule, die 55+ native Integrationen (rund 754 Actions; exakte Zahl nicht offiziell dokumentiert) (CRM, CMS, Analytics) sowie Unterstützung für das Model Context Protocol (MCP) verfügt. Die fünfte Säule, die Library, dient als zentrales Repository. Hier werden kuratierte Prompts, Skills und statische Wissensordner (Library Folders) verwaltet, um eine Single Source of Truth für Markenrichtlinien und Kampagnen-Briefings sicherzustellen.

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

Trigger: Das Team fordert mehr Budget für Meta-Ads mit der Begründung historisch guter CPLs, während LinkedIn-Ads als 'zu teuer' gelten. (Quelle: sources/10 S-031; A-21)
Ziel: Historischen Bias durch Hinterfragen eliminieren, um Budget nicht ineffizient zu verbrennen.
Ergebnis: Prioritätenliste, die falsche interne Annahmen zu CPLs aufdeckt.
Fähigkeit: Data Analyst + direkter Dateianhang
Vorgehen:
1. Öffne den Data Analyst Modus in einem neuen Chat.
2. Lade den rohen CSV-Export der letzten drei Kampagnen-Monate aus dem CRM (Salesforce) hoch.
3. Führe den PTCF-Prompt aus, der die KI zwingt, die Hypothese "Meta ist effizienter" aktiv zu widerlegen.
4. Lass dir vom Data Analyst die wahren Lead-to-Customer Conversion-Raten pro Kanal ausrechnen.
5. Exportiere die Gegenbeweis-Tabelle als PDF.
Prompt:
> "PERSONA: Du bist skeptische Performance-Marketing-Analystin. TASK: Widerlege die Hypothese, dass Meta-Ads effizienter sind als LinkedIn-Ads. CONTEXT: Salesforce-Export der letzten drei Monate anbei; das Team argumentiert mit historischen CPLs. FORMAT: Tabelle mit CPA vs. CPL pro Kanal plus eine abschließende Action-Item-Zeile."
Artefakt: Eine präzise Tabelle, die aufzeigt, in welchen spezifischen Kampagnen-Segmenten die Annahmen des Teams durch die aktuellen Daten entlarvt werden.
Fallstricke:
- Der Data Analyst Modus scheitert an unsauberen CSV-Headern → Stelle sicher, dass die Spalten 'Lead_Source' und 'Closed_Won' vor dem Upload normiert sind.
- Die KI verliert sich in statistischen Details ohne Handlungsempfehlung → Im Prompt explizit eine abschließende 'Action-Item'-Zeile einfordern.
Anschluss: S-LU-002

### S-LU-002 Steelmanning gegen die neue Brand-Kampagne der Konkurrenz

Trigger: Ein Wettbewerber launcht eine virale Brand-Kampagne. Das Team redet sie als 'oberflächlich' klein. (Quelle: A-07; sources/10 S-036)
Ziel: Interne Überheblichkeit stoppen, indem das stärkste Argument für den Erfolg des Wettbewerbers konstruiert wird.
Ergebnis: Strategie-Memo zur psychologischen Hebelwirkung der Konkurrenz.
Fähigkeit: Deep Research Modus + Canvas Editor
Vorgehen:
1. Aktiviere den Deep Research Modus in Langdock.
2. Gib der KI den Link zum neuen Kampagnenvideo des Wettbewerbers und fordere eine Analyse.
3. Führe den Steelmanning-Prompt aus, um eine Verteidigung der Konkurrenz-Strategie zu erzwingen.
4. Ergebnis im Canvas Editor formatieren.
5. Memo mit der Lead-Agentur teilen.
Prompt:
> "PERSONA: Du bist Verhaltenspsychologin mit Marketing-Fokus. TASK: Konstruiere das stärkste Argument für den Erfolg der Konkurrenz-Kampagne. CONTEXT: Das Team nimmt die Bedrohung nicht ernst; Kampagnenvideo-Link anbei. FORMAT: Erklärung der psychologischen Trigger plus ein Abschnitt 'Unsere ungenutzten Gegenhebel'."
Artefakt: Ein strukturiertes Canvas-Dokument mit H2-Überschriften, das die Konkurrenz-Strategie glorifiziert, um das eigene Team wachzurütteln.
Fallstricke:
- Deep Research verliert sich in PR-Mitteilungen des Konkurrenten statt die Kampagne psychologisch zu analysieren → Gib explizit die Rolle des Verhaltenspsychologen vor.
- Das Team fühlt sich durch das Artefakt demotiviert → Ergänze einen Abschnitt 'Unsere ungenutzten Gegenhebel' im finalen Dokument.
Anschluss: S-LU-003

### S-LU-003 Pre-Mortem-Check für den B2B-Newsletter-Relaunch

Trigger: Der Go-Live des B2B-Newsletters steht bevor. Es gibt Bedenken, dass Abhängigkeiten übersehen wurden. (Quelle: A-41; sources/10 S-010)
Ziel: Aufdecken von Single Points of Failure, um Launch-Desaster zu verhindern.
Ergebnis: Checkliste mit präventiven Notfallmaßnahmen für das Ops-Team.
Fähigkeit: Agent mit angebundenem Wissensordner
Vorgehen:
1. Rufe den Ops-Agenten mit HubSpot-Zugriff auf.
2. Lade den finalen HTML-Entwurf des Newsletters als direkte Datei hoch.
3. Nutze den Pre-Mortem-Prompt, um das fiktive Scheitern des Launches durchspielen zu lassen.
4. Bewerte die von der KI identifizierten Risiken (z.B. defekte Personalisierungs-Token).
5. Wandle die Risiken in eine konkrete QA-Checkliste für den HubSpot-Administrator um.
Prompt:
> "PERSONA: Du bist Marketing-Ops-Lead mit HubSpot-Erfahrung. TASK: Simuliere ein Scheitern des Newsletter-Relaunches (Pre-Mortem). CONTEXT: Finaler HTML-Entwurf anbei; Versand läuft über HubSpot-Workflows. FORMAT: Die 5 wahrscheinlichsten technischen Ursachen für das Scheitern als QA-Checkliste."
Artefakt: Eine harte, ungeschönte Liste an potenziellen Launch-Fehlern, formatiert als direkt anwendbare Checkliste.
Fallstricke:
- Der Agent schlägt generische Fehler wie 'zu viele E-Mails' vor → Limitiere die Suche strikt auf technische Fehlerquellen im spezifischen Setup (z.B. HubSpot-Workflows).
- Wenn der Wissensordner veraltete Tool-Dokumentationen enthält, sind die Warnungen nutzlos → Überprüfe das Änderungsdatum der Folder-Dokumente vorab.
Anschluss: S-LU-004

### S-LU-004 Contrast Classes beim Rebranding-Pitch

Trigger: Die Agentur präsentiert Rebranding-Routen. Dem Entwurf fehlt Schärfe, wird aber akzeptiert. (Quelle: sources/10 S-044; A-48)
Ziel: Lösungsraum sprengen durch radikale Alternativ-Szenarien.
Ergebnis: Strukturiertes Gegen-Briefing mit radikalen Positionierungen.
Fähigkeit: Chat + File Attachment
Vorgehen:
1. Erstelle einen neuen Chat-Verlauf.
2. Lade das PDF-Deck des Agentur-Pitches als Dateianhang hoch.
3. Triggere die KI, den aktuellen Entwurf zu analysieren und drei radikal konträre Stoßrichtungen zu entwickeln (Contrast Classes).
4. Vergleiche die vorgeschlagenen Alternativen mit der ursprünglichen Route.
5. Kopiere die stärksten Gegenentwürfe und sende sie als strategisches Feedback zurück an die Agentur.
Prompt:
> "PERSONA: Du bist provokante Brand-Strategin. TASK: Entwickle drei völlig gegensätzliche 'Contrast Classes' zum vorliegenden Rebranding-Pitch. CONTEXT: Agentur-Deck als PDF anbei; rote Linien für Brand-Safety beachten. FORMAT: Drei radikale Gegenentwürfe mit je einem konkreten Slogan und einer visuellen Leitidee."
Artefakt: Ein Dokument mit drei radikalen Alternativ-Ansätzen, das genutzt wird, um die Agentur beim nächsten Termin aus der Komfortzone zu zwingen.
Fallstricke:
- Die KI generiert absurde, branchenfremde Alternativen (z.B. Humor in der Medizintechnik) → Definiere im Prompt harte rote Linien für die Brand-Safety.
- Die Alternativen sind zu vage formuliert → Verlange, dass jede Contrast Class einen konkreten 'Slogan' und eine visuelle Leitidee enthält.
Anschluss: S-LU-005

### S-LU-005 Bayesian Prior Korrektur bei der Messeplanung

Trigger: Die Messeplanung steht an. Das Team budgetiert blind den Vorjahresbetrag. (Quelle: A-01; A-10)
Ziel: Vorannahmen explizit machen und mit der Realität abgleichen.
Ergebnis: Gegenüberstellung von Annahmen vs. historischen Fakten zur Entscheidungsfindung.
Fähigkeit: Agent + Data Analyst
Vorgehen:
1. Öffne den dedizierten Event-Marketing Agenten in Langdock.
2. Lade das finale Lead-Tracking der letzten Messe als CSV hoch.
3. Führe den Bayesian-Prior-Prompt aus, um die KI zur Gegenüberstellung von Kosten und tatsächlich generiertem Umsatz zu zwingen.
4. Lass dir ausrechnen, wie hoch die Conversion-Rate der Messe-Leads nach 12 Monaten wirklich war.
5. Integriere die Ergebnisse direkt in die nächste Budget-Präsentation.
Prompt:
> "PERSONA: Du bist Event-Marketing-Controllerin. TASK: Prüfe den Messe-Kanal auf echten ROI und mache die Vorjahres-Annahme explizit. CONTEXT: Lead-Tracking der letzten Messe als CSV anbei; Multi-Touch-Attribution falls vorhanden berücksichtigen. FORMAT: Tabelle mit Leads, Closed-Won, Messe-CPA und ausgewiesenem Rechenweg pro Datenpunkt."
Artefakt: Eine schonungslose ROI-Auswertung, die interne Mythen über den Wert von Messen durch harte Salesforce-Daten widerlegt oder bestätigt.
Fallstricke:
- Das CRM-Attributionsmodell ist fehlerhaft, was die Messe-Leads künstlich entwertet → Stelle sicher, dass die KI Multi-Touch-Attribution versteht, falls vorhanden.
- Das Team greift das Ergebnis als 'KI-Fehler' an → Fordere von der KI den exakten Rechenweg für jeden Datenpunkt an.
Anschluss: S-LU-006

### S-LU-006 Source Triangulation beim Content-Outsourcing

Trigger: SEO-Agenturen melden Erfolge, aber der organische Traffic stagniert. (Quelle: A-02; sources/10 S-021)
Ziel: Triangulation der Reports zur Ermittlung der wahren Performance.
Ergebnis: Audit-Report, der Diskrepanzen glasklar aufdeckt.
Fähigkeit: Standard-Chat mit multiplen Dateianhängen
Vorgehen:
1. Öffne einen neuen Chat.
2. Lade alle drei Agentur-Reports (als PDF/Excel) sowie den internen Google Search Console Export hoch.
3. Nutze den Triangulations-Prompt, um die KI zur Suche nach Widersprüchen zwischen den vier Dokumenten zu zwingen.
4. Identifiziere, welche Agentur mit 'Vanity Metrics' (z.B. Rankings für irrelevante Keywords) arbeitet.
5. Nutze den Output, um die Verträge der unprofitablen Dienstleister zu kündigen.
Prompt:
> "PERSONA: Du bist forensische SEO-Auditorin. TASK: Finde Widersprüche zwischen den Agentur-Reports und unseren Google-Search-Console-Daten. CONTEXT: Drei Agentur-Reports plus GSC-Export anbei; alle Daten auf denselben Monat normalisieren, nur Klicks und Conversions zählen als Erfolg. FORMAT: Liste der drei größten Diskrepanzen."
Artefakt: Ein strukturiertes Dokument, das unmissverständlich aufzeigt, an welchen Stellen externe Reports geschönt wurden.
Fallstricke:
- Die KI scheitert an unterschiedlichen Datumsformaten in den verschiedenen Reports → Zwinge sie im Prompt, alle Daten auf denselben Monat zu normalisieren.
- Die KI bewertet 'Impressions' fälschlicherweise als echten Geschäftserfolg → Definiere im Prompt, dass nur tatsächliche 'Klicks' und 'Conversions' als Erfolg zählen.
Anschluss: S-LU-007

### S-LU-007 Red Team Stresstest für den Krisen-PR-Plan

Trigger: Neues PR-Krisen-Playbook liegt vor, Praxis-Tauglichkeit wird bezweifelt. (Quelle: sources/10 S-051; A-41)
Ziel: Aufdecken von Engpässen im PR-Plan vor dem Ernstfall.
Ergebnis: Praxistaugliches Action-Sheet für das Management-Board.
Fähigkeit: Agent mit Wissensordner
Vorgehen:
1. Greife auf den PR-Agenten zu, der das neue Krisen-Playbook als Wissensordner hinterlegt hat.
2. Formuliere einen Red-Team-Prompt, der ein akutes, extrem feindseliges Data-Leak-Szenario auf Twitter simuliert.
3. Zwinge die KI, basierend auf dem Playbook zu reagieren und attackiere jede Antwort der KI auf ihre Machbarkeit in Echtzeit.
4. Dokumentiere, an welchen Stellen der Prozess (z.B. Freigabe durch Legal) zu langsam ist.
5. Exportiere die gefundenen Schwachstellen zur sofortigen Überarbeitung des Playbooks.
Prompt:
> "PERSONA: Du bist feindseliger Red-Team-Stratege; ignoriere Höflichkeit, dein Ziel ist es, unsere Reputation zu zerstören. TASK: Attackiere unseren Krisen-PR-Plan. CONTEXT: Krisen-Playbook als Wissensordner hinterlegt; Fokus auf externe Wahrnehmung und Medien-Echo, nicht IT-Sicherheit. FORMAT: 3 Szenarien, in denen der Plan gnadenlos scheitern würde, plus die jeweilige Schwachstelle."
Artefakt: Ein schonungsloses Audit-Protokoll des Krisenplans, das zwingt, juristische Freigabeprozesse für den Notfall radikal zu kürzen.
Fallstricke:
- Der Agent bleibt zu höflich und greift das eigene Unternehmen nicht hart genug an → Ergänze den Prompt um die Klausel 'Ignoriere Höflichkeit, dein Ziel ist es, unsere Reputation zu zerstören'.
- Die KI bewertet technische IT-Sicherheitsaspekte statt der kommunikativen → Fokus im Prompt explizit auf 'externe Wahrnehmung und Medien-Echo' lenken.
Anschluss: S-LU-008

### S-LU-008 Pre-Commitment-Definition für das neue Tool-Stack

Trigger: Einführung eines teuren Attribution-Tools steht an. Angst vor fehlendem ROI. (Quelle: A-08; sources/12 Q-117)
Ziel: Festlegen harter Abbruchkriterien vor Vertragsunterschrift.
Ergebnis: Internes Agreement mit Exit-Bedingungen.
Fähigkeit: Chat + Canvas
Vorgehen:
1. Eröffne einen neuen Chat und lade das SLA und das Pricing-Deck des Tool-Anbieters hoch.
2. Nutze den Pre-Commitment-Prompt, um die KI zur Definition harter Erfolgsmetriken zu zwingen.
3. Überführe die vorgeschlagenen Metriken in den Canvas-Editor.
4. Passe die Schwellenwerte kollaborativ mit dem MarketingOps-Lead an.
5. Speichere das Dokument als PDF und mache es zur Bedingung für die Budget-Freigabe.
Prompt:
> "PERSONA: Du bist nüchterne MarketingOps-Beraterin. TASK: Definiere harte Pre-Commitments für das neue Attribution-Tool. CONTEXT: SLA und Pricing-Deck anbei; nutze nur Metriken, die wir bereits messen können. FORMAT: Checkliste für M3 und M6 mit absoluten Schwellenwerten (z.B. CPA-Diskrepanz unter 5%) inklusive Kill-Switch."
Artefakt: Ein präziser Projektvertrag (Pre-Commitment-Log) im Canvas, der jede Form von Sunk-Cost-Fallacy präventiv ausschließt.
Fallstricke:
- Die KI schlägt Metriken vor, die wir historisch gar nicht tracken können → Ergänze im Prompt: 'Nutze nur Metriken, die wir bereits in unserem aktuellen Setup messen können'.
- Die Abbruchkriterien sind zu weich formuliert (z.B. 'Verbesserung der Datenqualität') → Verlange absolute Zahlen ('Senkung der CPA-Diskrepanz auf unter 5%').
Anschluss: S-LU-009

### S-LU-009 First-Principles-Dekonstruktion des Lead-Funnels

Trigger: Der B2B-Sales-Funnel ist viel zu komplex geworden. Drop-off-Raten sind katastrophal. (Quelle: A-04; sources/10 S-057)
Ziel: Reduktion des Funnels auf fundamentale Wahrheiten.
Ergebnis: Visuelles, radikal reduziertes Funnel-Konzept.
Fähigkeit: Agent mit Wissensordner
Vorgehen:
1. Greife auf den CRM-Lifecycle Agenten zu, der die aktuelle Funnel-Dokumentation hinterlegt hat.
2. Führe den First-Principles-Prompt aus, um den aktuellen Funnel komplett zu dekonstruieren.
3. Lass die KI die absolute Basis-Motivation der Zielgruppe identifizieren (ohne Rücksicht auf unsere aktuellen Tools).
4. Fordere einen Neu-Entwurf, der maximal drei Touchpoints bis zum Sales-Call zulässt.
5. Exportiere das neue Konzept zur sofortigen Implementierung im Marketing-Automation-Tool.
Prompt:
> "PERSONA: Du bist First-Principles-Denkerin mit B2B-Funnel-Expertise. TASK: Dekonstruiere unseren B2B-Funnel auf First Principles, beginne mit einem weißen Blatt. CONTEXT: Aktuelle Funnel-Dokumentation als Wissensordner; DSGVO-konformes Double-Opt-In ist ein zwingendes First Principle. FORMAT: Fundamentale Kauf-Wahrheit und neuer Prozess mit maximal 3 Touchpoints bis zum Sales-Call."
Artefakt: Ein kompromisslos gekürzter CRM-Workflow, der sämtliche historisch gewachsenen 'Nice-to-have'-E-Mails streicht und den Pfad zum Kauf befreit.
Fallstricke:
- Die KI baut bestehende Prozesse einfach nur minimal um → Zwinge sie im Prompt, mit einem sprichwörtlichen 'weißen Blatt Papier' zu beginnen.
- Wichtige rechtliche Double-Opt-In Schritte werden weggekürzt → Erwähne DSGVO-Konformität als zwingendes First Principle.
Anschluss: S-LU-010

### S-LU-010 Assumption-Decay-Prüfung der Core Persona

Trigger: Media-Planung basiert auf veralteten Buyer-Personas. (Quelle: A-11; sources/10 S-028)
Ziel: Überprüfung der Kernannahmen über die Zielgruppe auf Aktualität.
Ergebnis: Aktualisiertes Persona-Set mit verifizierten Marktgegebenheiten.
Fähigkeit: Deep Research Modus
Vorgehen:
1. Starte den Deep Research Modus.
2. Lade das alte Persona-PDF von 2023 als Ausgangsbasis hoch.
3. Nutze den Assumption-Decay-Prompt, damit die KI das Web nach aktuellen Gegenbeweisen zu den alten Persona-Aussagen durchkämmt.
4. Überprüfe die von der KI gefundenen Diskrepanzen (z.B. Shift von LinkedIn zu spezialisierten Slack-Communities).
5. Überführe die verifizierten Updates in das offizielle Brand-Wiki.
Prompt:
> "PERSONA: Du bist Marktforscherin für B2B-Software-Einkäufer. TASK: Prüfe unsere Buyer-Personas auf 'Assumption Decay'. CONTEXT: Persona-PDF von 2023 anbei; Kontext strikt B2B-DACH; gib nur Quellen mit belegbarer URL an, sonst markiere die Annahme als ungeprüft. FORMAT: Tabelle (Alte Annahme / Gültigkeit / Harter Beleg)."
Artefakt: Eine validierte 'Decay-Matrix', die aufzeigt, welche Marketing-Budgets sofort gestoppt werden müssen, weil die Zielgruppe nicht mehr über diese Kanäle erreichbar ist.
Fallstricke:
- Deep Research liefert B2C-Trends, obwohl wir B2B agieren → Den Kontext im Prompt glasklar auf 'B2B Software-Einkäufer' einschränken.
- Die KI findet keine aktuellen Studien und erfindet Trends → Strikte Anweisung: 'Gib nur Quellen an, die du mit einer URL belegen kannst, ansonsten markiere die Annahme als ungeprüft'.
Anschluss: S-LU-011

### S-LU-011 Langdock-Workspace für eine neue Kampagnen-Saison strukturieren

Trigger: Zu Beginn eines neuen Quartals oder vor einem großen Launch startet das Team mit leeren, unstrukturierten Chat-Historien und verliert schnell den Überblick über verschiedene Produktlinien und Kampagnen. (Quelle: sources/12 Q-001)
Ziel: Eine saubere, themenbasierte Workspace-Struktur aufbauen, bevor die operative Hektik beginnt, um den gesamten Kampagnenzyklus nachvollziehbar zu halten.
Ergebnis: Ein vollständig konfigurierter Workspace mit benannten Projekten pro Kampagne, angepinnten Priority-Chats und einem geteilten Einstiegs-Guide für das Team.
Fähigkeit: Chat / Library Folder / Konversations-Starter
Vorgehen:
1. Öffne Langdock und lege für jede aktive Kampagne oder Produktlinie ein eigenes Projekt an (z.B. "Q3-Launch-ProductX", "Brand-Refresh-2026").
2. Lade das Kampagnen-Briefing und den Redaktionsplan als PDF in einen Library Folder, der dem Projekt zugeordnet ist.
3. Pinne die wichtigsten laufenden Chats in der Sidebar, damit das Team ohne Suche direkten Zugriff hat.
4. Erstelle zwei bis drei Konversations-Starter pro Projekt (z.B. "Erstelle einen Post-Entwurf für dieses Kampagnen-Thema"), damit neue Teammitglieder sofort produktiv einsteigen können.
Prompt:
> "Du bist Workspace-Administratorin für ein 15-köpfiges Marketing-Team. Schlage eine logische Projektstruktur für unsere drei parallelen Q3-Kampagnen vor. Kontext: Wir arbeiten mit LinkedIn-Content, Newsletter und bezahlten Anzeigen gleichzeitig. Format: Tabelle mit Projekt-Name, Zweck und empfohlenen Konversations-Startern."
Artefakt: Eine Tabelle mit empfohlener Projekt-Architektur und fertigen Konversations-Starter-Texten, die direkt in die Agent-Konfiguration kopiert werden können.
Fallstricke:
- Zu viele Projekte angelegt, sodass der Überblick verloren geht → Maximal ein Projekt pro laufender Kampagne; thematisch übergreifende Daueraufgaben (z.B. Brand Voice) als eigenen Agenten, nicht als Projekt.
- Konversations-Starter sind zu generisch formuliert → Jeder Starter muss Produkt, Kanal und gewünschtes Output-Format enthalten, damit er echten Mehrwert bringt.
Anschluss: S-LU-012

### S-LU-012 ROI des Langdock-Setups für den CFO aufbereiten

Trigger: Das CMO muss im nächsten Quartalsbericht dem CFO den Mehrwert des Langdock-Einsatzes in CFO-Sprache belegen — Aktivitätszahlen allein reichen nicht. (Quelle: A-01)
Ziel: KI-Effekte in finanzielle Kennzahlen übersetzen, um das Budget für die Plattform im nächsten Planungszyklus zu sichern.
Ergebnis: Ein einseitiges Canvas-Dokument mit drei bis fünf KPIs, die den Langdock-ROI in Euro und Stunden belegen, fertig für den Quartalsbericht.
Fähigkeit: Chat / Canvas / Data Analyst
Vorgehen:
1. Exportiere den Workspace-Usage-Report (Token-Verbrauch pro User, Anzahl Agent-Ausführungen, Workflow-Runs) aus dem Langdock-Admin-Bereich.
2. Lade den Export als CSV in den Data Analyst und berechne das Lohnkosten-Äquivalent: Token-Verbrauch je Task × durchschnittlicher Stundensatz des Teams = eingesparte Arbeitszeit in Euro.
3. Ergänze qualitative KPIs: Time-to-First-Draft (vor vs. nach Langdock), Anzahl Revisionsrunden pro Asset, Iterations-Geschwindigkeit.
4. Überführe die Ergebnisse in den Canvas Editor und formatiere ein einseitiges Executive-Summary-Slide.
Prompt:
> "Du bist CFO-Kommunikations-Expertin. Übersetze die angehängten Langdock-Nutzungsdaten in drei CFO-relevante KPIs. Kontext: Unser Team hat 12 Personen, durchschnittlicher Stundensatz 85 Euro. Format: Tabelle mit KPI-Name, Messmethode, Ist-Wert und monetärer Bewertung."
Artefakt: Ein Canvas-Dokument mit ROI-Tabelle (Lohnkosten-Äquivalent, Time-to-Draft-Reduktion, Cost-per-Brief) als Quartalsbericht-Anhang.
Fallstricke:
- Token-Verbrauch wird mit tatsächlicher Zeitersparnis gleichgesetzt, ohne die Qualitäts-Review-Zeit zu berücksichtigen → Im Prompt explizit nach Netto-Ersparnis (Drafting minus Review-Aufwand) fragen.
- Der CFO akzeptiert keine Hochrechnungen ohne Baseline-Daten → Lege vor der Langdock-Einführung einen Benchmark-Wert für "Stunden pro Asset" fest, um einen echten Vorher/Nachher-Vergleich zu ermöglichen.
Anschluss: S-LU-013

### S-LU-013 Entscheidungs-Matrix: Agentur beauftragen oder intern mit Langdock lösen

Trigger: Ein neues Content-Projekt landet auf dem Tisch. Das Team diskutiert, ob eine externe Agentur beauftragt oder die Aufgabe intern mit Langdock umgesetzt werden soll — ohne klares Kriterium. (Quelle: A-02)
Ziel: Eine objektive Entscheidungsgrundlage schaffen, die Agentureinsatz auf strategische Aufgaben konzentriert und Routineproduktion intern skaliert.
Ergebnis: Eine Entscheidungs-Matrix mit konkreten Schwellenwerten (Volumen, Komplexität, Brand-Criticality), die für zukünftige Briefings wiederverwendet werden kann.
Fähigkeit: Chat / Canvas
Vorgehen:
1. Liste im Chat alle aktuellen Marketing-Aufgaben auf und kategorisiere sie nach: Volumen (einmalig vs. wiederkehrend), strategischer Tiefe (Konzept vs. Ausführung) und Brand-Criticality (Krisenkommunikation vs. Routine-Content).
2. Führe den PTCF-Prompt aus, um eine Entscheidungs-Matrix zu generieren, die für jede Kombination aus Volumen und Komplexität eine klare Empfehlung (Agentur/intern/hybrid) gibt.
3. Speichere die Matrix im Canvas als wiederverwendbares Entscheidungs-Template, das bei jeder neuen Anfrage als Wissensordner-Referenz dient.
Prompt:
> "Du bist strategische Marketing-Beraterin. Entwickle eine Entscheidungs-Matrix: Wann lösen wir Content-Aufgaben intern mit KI, wann beauftragen wir eine Agentur? Kontext: Wir haben 3 interne Texter und Langdock-Zugang. Format: 2x2-Matrix (Volumen vs. Strategische Tiefe) mit konkreten Schwellenwerten und Beispielen."
Artefakt: Eine 2×2-Matrix im Canvas mit vier Quadranten (Intern/KI, Agentur, Hybrid, Führungs-Entscheidung) und konkreten Trigger-Kriterien pro Quadrant.
Fallstricke:
- Die Matrix ist zu abstrakt und gibt keine Zahlen → Verlange konkrete Schwellenwerte (z.B. "ab 20 Assets/Monat intern; unter 5 Assets mit hoher strategischer Tiefe → Agentur").
- Brand-Crisis-Szenarien werden fälschlicherweise als intern lösbar eingestuft → Ergänze im Prompt: "Krisen-PR und Investor-Kommunikation sind immer Agentur-Pflichtig."
Anschluss: S-LU-014

### S-LU-014 KI-Champions-Programm für das Marketing-Team aufsetzen

Trigger: Die Langdock-Adoption im Team stagniert bei 30 % aktiver Nutzer. Vereinzelte Power-User nutzen das Tool intensiv, während der Rest abwartet. (Quelle: A-04)
Ziel: Interne Multiplikatoren (Champions) identifizieren und strukturiert befähigen, um die Flächenakzeptanz im Team in 60 Tagen auf über 70 % zu steigern.
Ergebnis: Ein 30-Tage-Onboarding-Plan für 5 Champions mit wöchentlichem Format, geteiltem Konversations-Starter-Katalog und einem monatlichen Demo-Ritual.
Fähigkeit: Chat / Canvas / Konversations-Starter
Vorgehen:
1. Identifiziere im Chat anhand von Nutzungsdaten die fünf aktivsten Langdock-User (je einen pro Team-Bereich: Content, Performance, Social, Brand, Analytics).
2. Lass die KI einen 30-Tage-Aktivierungsplan für die Champions erstellen: Woche 1 Onboarding, Woche 2-3 eigene Use-Case-Erprobung, Woche 4 erstes Team-Demo.
3. Erstelle im Canvas einen gemeinsamen Konversations-Starter-Katalog, in den jeder Champion seinen besten Prompt einbringt.
4. Plane ein monatliches 30-Minuten-Format (AI-Office-Hour): 1 Demo, 2 offene Fragen, 1 Ankündigung neuer Starter.
Prompt:
> "Du bist Change-Management-Expertin für KI-Adoption. Erstelle einen 30-Tage-Plan für unser KI-Champions-Programm. Kontext: 5 Champions aus verschiedenen Marketing-Teams, alle bereits Langdock-Nutzer. Format: Tabelle mit Woche, Aktivität, Verantwortlichem und erwartetes Ergebnis."
Artefakt: Ein 30-Tage-Aktivierungsplan im Canvas mit Wochenzielen, Rollenzuweisungen und einem Template für den gemeinsamen Konversations-Starter-Katalog.
Fallstricke:
- Champions werden ohne Freistellung nominiert und haben keine Zeit → Commitment von 2 Stunden/Woche muss vor Programmstart schriftlich von der Führungskraft bestätigt werden.
- Der Konversations-Starter-Katalog wird nie aktualisiert → Quartalsweise Pflege-Ritual als festes Agenda-Item in der AI-Office-Hour einplanen.
Anschluss: S-LU-015

### S-LU-015 Drei Quick-Win-Agenten für Marketing-Einsteiger konfigurieren

Trigger: Das Team hat Langdock-Zugang, aber niemand weiß, womit anfangen. Der erste Eindruck entscheidet über die langfristige Adoption. (Quelle: sources/12 Q-031; sources/10 S-039)
Ziel: Drei sofort nutzbare, fehlerverzeihende Agenten bereitstellen, die ohne Vorkenntnisse echten Mehrwert liefern und die Angst vor dem leeren Eingabefeld nehmen.
Ergebnis: Drei konfigurierte Agenten (Brand Voice Check, Content-Kürzer, Meeting-Protokoll-Konverter) mit je drei Konversations-Startern, bereit zum Teilen mit dem Team.
Fähigkeit: Agents / Wissensordner / Konversations-Starter
Vorgehen:
1. Konfiguriere Agent 1 "Brand Voice Check": System-Prompt mit Tone-of-Voice-Regeln, angebundener Library Folder mit Corporate Design Manual, Konversations-Starter "Prüfe diesen Text auf Brand Voice".
2. Konfiguriere Agent 2 "Content-Kürzer": System-Prompt für Verdichtung auf 50 % ohne Inhaltsverlust, keine Wissensordner nötig, Konversations-Starter "Kürze diesen LinkedIn-Post auf 300 Zeichen".
3. Konfiguriere Agent 3 "Meeting-Protokoll-Konverter": System-Prompt für Action-Item-Extraktion aus Fließtext, Konversations-Starter "Extrahiere alle To-dos aus diesem Protokoll".
4. Teile alle drei Agenten mit der Marketing-Benutzergruppe und dokumentiere die Starter-Liste im Team-Wiki.
Prompt:
> "Du bist Langdock-Onboarding-Spezialistin. Schreibe einen präzisen System-Prompt für einen Brand-Voice-Check-Agenten. Kontext: Unser Tone of Voice ist professionell, direkt, ohne Floskeln. Format: Fertiger System-Prompt unter 500 Zeichen plus drei Konversations-Starter-Texte."
Artefakt: Drei fertige System-Prompts und neun Konversations-Starter-Texte, direkt einsetzbar in der Langdock-Agent-Konfiguration.
Fallstricke:
- Der Brand-Voice-Agent gibt zu vage Feedback → System-Prompt muss konkrete Beispiele für "verboten" und "erwünscht" enthalten, nicht nur abstrakte Adjektive.
- Zu viele Konversations-Starter überfordern Anfänger → Maximal drei pro Agent; der wichtigste Anwendungsfall kommt als erster Starter.
Anschluss: S-LU-016

### S-LU-016 AI-Pilot-Strategie für die ersten 90 Tage planen

Trigger: Die Führungsebene hat das Go für Langdock gegeben. Jetzt braucht das Marketing-Team einen strukturierten 90-Tage-Rollout-Plan, bevor die operative Arbeit die Planung überholt. (Quelle: A-04; sources/12 Q-004)
Ziel: Einen messbaren Piloten mit definierten Meilensteinen, Erfolgsmetriken und einem Go/No-Go-Kriterium für den Vollrollout aufsetzen.
Ergebnis: Ein 90-Tage-Projektplan im Canvas mit drei Phasen (Onboarding, Quick Wins, Skalierung), KPIs pro Phase und einem Pre-Commitment-Log für den Vollrollout.
Fähigkeit: Chat / Canvas
Vorgehen:
1. Definiere im Chat die drei Pilot-Ziele: Adoption-Rate, erste messbare Zeitersparnis und ein dokumentierter Use-Case für den CFO-Report.
2. Lass die KI einen 90-Tage-Plan in drei Phasen entwickeln: Phase 1 (Tage 1-30) Onboarding der Champions, Phase 2 (Tage 31-60) Rollout der Quick-Win-Agenten, Phase 3 (Tage 61-90) Skalierung auf das Gesamt-Team.
3. Ergänze pro Phase harte Erfolgsmetriken und einen Pre-Commitment-Checkpoint (Szenario S-LU-008).
4. Exportiere den Plan als PDF und verteile ihn als offizielles Kick-off-Dokument.
Prompt:
> "Du bist KI-Rollout-Strategin. Erstelle einen 90-Tage-Pilotplan für die Langdock-Einführung in einem 20-köpfigen Marketing-Team. Kontext: Budget genehmigt, 3 Champions identifiziert, kein technisches IT-Team verfügbar. Format: Tabelle mit Phase, Tage, Hauptaktivität, KPI und Go/No-Go-Kriterium."
Artefakt: Ein 90-Tage-Projektplan im Canvas mit drei Phasen, KPI-Tabelle und einem Pre-Commitment-Log, der als offizielles Kick-off-Dokument dient.
Fallstricke:
- Phase 1 dauert zu lange und das Team verliert die Motivation → Quick Wins müssen innerhalb der ersten 14 Tage erlebbar sein; mindestens einen Agenten in Woche 2 aktivieren.
- Der Plan wird nie wieder angeschaut → Wöchentliches 15-Minuten-Standup für Pilot-Status als festes Format in Teamkalender verankern.
Anschluss: S-LU-017

### S-LU-017 Dateianhänge im Chat für schnelle Kampagnen-Recherche nutzen

Trigger: Das Team erhält kurz vor einem Strategie-Meeting einen Stapel PDFs (Marktberichte, Wettbewerbsanalysen, alte Kampagnenauswertungen) und hat keine Zeit für eine manuelle Zusammenfassung. (Quelle: sources/10 S-003; sources/10 S-006)
Ziel: Große Informationsmengen in Minuten statt Stunden synthetisieren, ohne sofort komplexe Wissensordner-Strukturen aufbauen zu müssen.
Ergebnis: Eine strukturierte Zusammenfassung der wichtigsten Erkenntnisse aus bis zu 20 Dokumenten, fertig für das Strategie-Meeting.
Fähigkeit: Chat / direkter Dateianhang
Vorgehen:
1. Öffne einen neuen Chat und lade alle relevanten Dateien als direkte Anhänge hoch (maximal 20 Dateien pro Session).
2. Führe den PTCF-Prompt aus, der die KI zur Synthese und Priorisierung der wichtigsten Erkenntnisse zwingt.
3. Kopiere die Zusammenfassung in die Meeting-Agenda oder sende sie als Slack-Nachricht an das Team.
Prompt:
> "Du bist Senior Marketing-Analytikerin. Lies alle angehängten Dokumente und identifiziere die drei wichtigsten strategischen Erkenntnisse für unsere Q3-Kampagnenplanung. Kontext: Wir fokussieren auf B2B-Software-Käufer in der DACH-Region. Format: Drei nummerierte Punkte mit je einer konkreten Handlungsempfehlung."
Artefakt: Eine nummerierte Liste mit drei bis fünf priorisierten Erkenntnissen und konkreten Handlungsempfehlungen, fertig für den Meeting-Einsatz.
Fallstricke:
- Bei mehr als 10 Dateien verliert die KI den Überblick und zitiert falsche Quellen → Priorisiere die wichtigsten fünf Dateien, wenn der Zeitdruck hoch ist; für Vollanalysen auf Wissensordner-Agenten (S-LU-015) wechseln.
- Das 20-Datei-Limit pro Chat-Session wird übersehen → Bei größeren Dokumentenmengen einen Library Folder anlegen statt direkte Anhänge zu nutzen.
Anschluss: S-LU-018

### S-LU-018 Wissensordner als Single Source of Truth für Kampagnen-Briefings einrichten

Trigger: Briefings für Freelancer und Agenturen existieren in verschiedenen Versionen auf Google Drive, im E-Mail-Postfach und auf Sharepoint — niemand weiß, welches die aktuelle Version ist. (Quelle: sources/10 S-002; sources/12 Q-038)
Ziel: Einen einzigen, versionierten Wissensordner als verbindliche Referenz für alle Kampagnen-Briefings etablieren, auf den Agenten und das Team zugreifen.
Ergebnis: Ein strukturierter Library Folder mit aktuellem Briefing-Template, Brand-Voice-Dokument und Kampagnen-Styleguide, angebunden an den Haupt-Content-Agenten.
Fähigkeit: Wissensordner / Library Folder / Agents
Vorgehen:
1. Lege einen neuen Library Folder "Kampagnen-Briefings 2026" an und definiere eine klare Namenskonvention für alle Dateien (z.B. "YYYY-MM_Kampagne_Briefing_v1.pdf").
2. Lade die aktuellen Masterdokumente hoch: Briefing-Template, Tone-of-Voice-Guide, Zielgruppen-Persona und aktuellen Kampagnenplan.
3. Binde den Folder an den primären Content-Agenten an und teste mit einem Konversations-Starter, ob die KI korrekte Briefing-Inhalte abruft.
4. Kommuniziere im Team: Dieser Folder ist die einzige autorisierte Quelle; alle anderen Versionen werden archiviert.
Prompt:
> "Du bist Content-Operations-Managerin. Erstelle eine Namenskonvention und Ordner-Struktur für unsere Kampagnen-Briefings in Langdock. Kontext: 3 parallele Kampagnen, 5 Freelancer, quartalsweiser Update-Rhythmus. Format: Checkliste mit Dateinamen-Muster, Pflicht-Dateien pro Ordner und Update-Prozess."
Artefakt: Eine dokumentierte Ordnerstruktur mit Namenskonvention, Pflicht-Dateiliste und einem Update-Prozess, der im Team-Wiki veröffentlicht wird.
Fallstricke:
- Der Folder wird schnell veraltet, weil kein Update-Owner definiert ist → Jedes Briefing-Dokument bekommt einen namentlichen Verantwortlichen und ein Verfallsdatum im Dateinamen.
- Zu viele Dokumente (über 200) machen die Retrieval-Qualität schlechter → Archiviere Dokumente älter als 12 Monate in einem separaten "Archiv"-Folder; aktiver Folder bleibt unter 100 Dateien.
Anschluss: S-LU-019

### S-LU-019 Redaktionskalender für 90 Tage mit dem Content-Agenten erstellen

Trigger: Das Content-Team benötigt zu Quartalsstart einen vollständigen 90-Tage-Redaktionsplan, der Produkt-Launches, Branchen-Events und Content-Formate koordiniert — bisher ein 4-Stunden-Workshop. (Quelle: sources/10 S-001)
Ziel: Den Planungsaufwand für den Redaktionskalender von mehreren Stunden auf unter 30 Minuten reduzieren und dabei eine höhere strategische Kohärenz sicherstellen.
Ergebnis: Ein vollständiger 90-Tage-Redaktionskalender als Canvas-Tabelle mit Datum, Thema, Format, Zielgruppe und Funnel-Stufe.
Fähigkeit: Agents / Wissensordner / Canvas
Vorgehen:
1. Öffne den Content-Agenten, der den Produkt-Roadmap-Folder und den Kampagnenplan angebunden hat.
2. Gib Eckdaten ein: Quartals-Themen, geplante Produkt-Launches und externe Events (Messen, Feiertage).
3. Führe den PTCF-Prompt aus, um den Kalender zu generieren, und überführe ihn direkt in den Canvas Editor.
4. Passe im Canvas-Split-Screen Engpässe (z.B. zu viele High-Effort-Assets in einer Woche) kollaborativ mit dem Team an.
Prompt:
> "Du bist Content-Strategin. Erstelle einen 90-Tage-Redaktionsplan für ein B2B-Software-Unternehmen. Kontext: Produkt-Launch am 15. des zweiten Monats, zwei Messen im Quartal, Team hat 3 Content-Produzierende. Format: Canvas-Tabelle mit Spalten Datum, Thema, Format (Blog/Social/Newsletter), Zielgruppe und Funnel-Stufe."
Artefakt: Eine Canvas-Tabelle mit 90 Tagen, die alle Kampagnen-Themen, Formate und Ressourcen-Zuweisungen enthält und direkt als Basis für das Team-Briefing dient.
Fallstricke:
- Die KI häuft aufwändige Assets (Whitepapers, Videos) in einer einzigen Woche — Produktionskapazitäten ignoriert → Im Prompt explizit eine wöchentliche Kapazitätsgrenze angeben (z.B. "max. 1 Long-Form-Asset pro Woche").
- Nationale Feiertage und Urlaubszeiten werden nicht berücksichtigt → Füge einen Kontext-Block mit DACH-Feiertagen und Urlaubs-Perioden des Teams ein.
Anschluss: S-LU-020

### S-LU-020 Deep Research für Wettbewerbs-Monitoring automatisieren

Trigger: Das Team beobachtet Wettbewerber manuell über Google Alerts, was zeitaufwändig und inkonsistent ist. Neue Kampagnen der Konkurrenz werden oft erst Wochen später bemerkt. (Quelle: sources/10 S-006; sources/10 S-021)
Ziel: Ein strukturiertes, wiederholbares Wettbewerbs-Monitoring aufbauen, das monatlich aktuelle Erkenntnisse liefert, ohne manuellen Rechercheaufwand.
Ergebnis: Ein strukturierter Monitoring-Report (monatlich) mit den wichtigsten Wettbewerber-Aktivitäten, neuen Kampagnen und identifizierten Lücken als Canvas-Dokument.
Fähigkeit: Deep Research Modus / Canvas / Web Search
Vorgehen:
1. Aktiviere den Deep Research Modus und definiere die drei bis fünf Hauptwettbewerber als feste Recherche-Scope.
2. Führe den strukturierten Recherche-Prompt aus: neue Kampagnen, Positionierungs-Änderungen, neue Produkt-Features, Pressemitteilungen der letzten 30 Tage.
3. Überführe die Ergebnisse in den Canvas Editor und formatiere sie als monatlichen Monitoring-Report mit H2-Abschnitten pro Wettbewerber.
4. Teile den Report mit dem strategischen Marketing-Team als Grundlage für die monatliche Strategie-Runde.
Prompt:
> "Du bist Competitive-Intelligence-Analystin. Recherchiere die letzten 30 Tage der Wettbewerber-Aktivitäten für [Wettbewerber A, B, C] via Deep Research. Kontext: Wir sind im B2B-SaaS-Markt für HR-Software tätig. Format: Bericht mit H2 pro Wettbewerber, je drei Bullet Points zu neuen Kampagnen, Positioning-Änderungen und identifizierten Schwächen."
Artefakt: Ein monatlicher Monitoring-Report im Canvas mit je drei Erkenntnissen pro Wettbewerber und einer abschließenden "Strategische Implikationen für uns"-Sektion.
Fallstricke:
- Deep Research liefert PR-Selbstdarstellung statt kritischer Analyse → Den Prompt explizit auf "identifiziere auch Schwächen und Kundenbeschwerden" ausrichten und Bewertungsplattformen (G2, Capterra) als Quelle nennen.
- Der monatliche Report wird produziert, aber niemand liest ihn → Report immer mit einer "Top-3-Handlungsempfehlungen"-Box beginnen; diese Box ist das einzige Pflichtstück für die Strategie-Runde.
Anschluss: S-LU-021

### S-LU-021 Vendor-Lock-in-Risiko bei Langdock strukturiert bewerten

Trigger: Die IT oder der CFO fragt: "Was passiert, wenn wir Langdock wechseln wollen?" Das Marketing-Team hat keine Antwort und keine Exit-Strategie. (Quelle: A-03)
Ziel: Das Vendor-Lock-in-Risiko systematisch bewerten und präventive Maßnahmen (Export-Routine, Multi-Provider-Fallback) in die Governance einbauen.
Ergebnis: Ein einseitiges Risiko-Assessment mit konkreten Maßnahmen zur Lock-in-Reduktion (BYOK-Option, Wissensordner-Export-Routine, Markdown-Archivierung).
Fähigkeit: Chat / Canvas
Vorgehen:
1. Liste im Chat alle Langdock-Abhängigkeiten auf: Wissensordner-Inhalte, Agent-Konfigurationen, Workflow-Logiken, gespeicherte Prompts.
2. Führe einen Pre-Mortem-Prompt aus (Quelle: S-LU-003): "Was verlieren wir, wenn Langdock morgen nicht mehr verfügbar ist?"
3. Definiere pro Abhängigkeitstyp eine Gegenstrategie: Wissensordner quartalsweise als Markdown exportieren, Agent-System-Prompts in Git versionieren, Workflow-Logik dokumentieren.
4. Erstelle einen jährlichen "Wechsel-Drill-Kalender" als Canvas-Eintrag, der die Export-Routine und einen Fallback-Test auf einem alternativen Provider enthält.
Prompt:
> "Du bist IT-Risiko-Beraterin mit Fokus auf SaaS-Abhängigkeiten. Bewerte unser Langdock-Lock-in-Risiko. Kontext: Wir haben 12 konfigurierte Agenten, 5 Wissensordner und 8 aktive Workflows. Format: Tabelle mit Abhängigkeitstyp, Risiko-Level (hoch/mittel/niedrig), Export-Möglichkeit und Gegenstrategie."
Artefakt: Eine Risiko-Tabelle mit Gegenstrategie pro Abhängigkeitstyp und einem konkreten Aktionsplan für den jährlichen Wechsel-Drill.
Fallstricke:
- Wissensordner-Inhalte werden als exportiert angenommen, obwohl nur die Rohdateien (nicht die Embeddings) portierbar sind → Klarstellen: Embeddings sind plattformspezifisch; nur die Quelldateien sichern.
- Der Wechsel-Drill wird nie durchgeführt → Konkrete Person und Datum im Pre-Commitment-Log (S-LU-008) festhalten; ohne Datum bleibt es eine Absicht.
Anschluss: S-LU-022

### S-LU-022 Sales-Enablement-Übergabe mit Langdock strukturieren

Trigger: Marketing produziert Briefings und Kampagnen-Assets, aber Sales nutzt sie nicht — weil die Übergabe unstrukturiert per E-Mail oder Slack passiert und der Kontext fehlt. (Quelle: A-05)
Ziel: Eine standardisierte Übergabe-Routine etablieren, die Sales-Mitarbeitende in unter 5 Minuten in jede neue Kampagne einbindet und Einwand-Handling direkt mitliefert.
Ergebnis: Ein Briefing-Template im Wissensordner und ein dedizierter Konversations-Starter für den Sales-Agent, der Q&A-Format mit Objection-Handling ausgibt.
Fähigkeit: Agents / Wissensordner / Konversations-Starter
Vorgehen:
1. Erstelle ein standardisiertes Kampagnen-Übergabe-Template: Kampagnenziel, Kernbotschaft, Zielgruppen-Persona, Top-3-Argumente und häufigste Einwände mit Antworten.
2. Lade das Template als Masterdokument in den Sales-Enablement-Wissensordner.
3. Konfiguriere einen Sales-Agenten mit Konversations-Starter: "Erkläre mir die aktuelle Kampagne in 5 Minuten" → Output: kompakte Briefing-Zusammenfassung mit Einwand-Handling.
4. Teste den Agenten mit drei echten Sales-Fragen und überarbeite das Template auf Basis der Lücken.
Prompt:
> "Du bist Sales-Enablement-Expertin. Erstelle ein Kampagnen-Briefing-Template, das Sales-Mitarbeitende in unter 5 Minuten auf eine neue Marketing-Kampagne vorbereitet. Kontext: B2B-Software, Sales-Cycle 3-6 Monate, Haupteinwände sind Preis und Implementierungsaufwand. Format: Strukturiertes Template mit Abschnitten Kampagnenziel, Kernbotschaft, Top-3-Argumente und Einwand-Handling-Tabelle."
Artefakt: Ein standardisiertes Briefing-Template plus ein fertiger Konversations-Starter-Text für den Sales-Agenten, direkt einsetzbar in der Langdock-Konfiguration.
Fallstricke:
- Das Einwand-Handling ist zu generisch und deckt nicht die echten Kundenfragen ab → Interview vorher drei Sales-Mitarbeitende und integriere die Top-5 echten Einwände aus CRM-Notizen.
- Sales nutzt den Agenten nicht, weil sie nicht wissen, dass er existiert → Onboarding-Ritual: Jede neue Kampagne wird mit einem Slack-Link zum Agenten-Konversations-Starter an den Sales-Kanal kommuniziert.
Anschluss: S-LU-023

### S-LU-023 AI-Ethik-Leitlinien für das Marketing-Team erstellen

Trigger: Das Team setzt KI zunehmend für Content-Erstellung, Personalisierung und Wettbewerbs-Analyse ein — ohne klare interne Regeln, was erlaubt ist und was nicht. (Quelle: A-06; A-50)
Ziel: Einen praxistauglichen KI-Ethik-Kompass entwickeln, der klar definiert, welche Marketing-Aufgaben nie durch KI gehen dürfen, und der EU-AI-Act-Anforderungen vorwegnimmt.
Ergebnis: Ein einseitiger KI-Ethik-Leitfaden für das Marketing-Team mit vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) und einer konkreten "Nie-KI"-Liste.
Fähigkeit: Chat / Canvas
Vorgehen:
1. Erstelle im Chat eine erste Rohversion der "Nie-KI"-Liste: Strategie-Entscheidungen, Brand-Krisenkommunikation, Mitarbeiter-Feedback, Kompensations-Verhandlungen, Investor-Kommunikation.
2. Führe einen Falsifikations-Prompt aus: "Welche dieser Verbote sind übertrieben und warum könnten sie die Effizienz unnötig einschränken?" — um die Liste zu schärfen.
3. Ergänze die vier Ethik-Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) mit je einem konkreten Marketing-Beispiel pro Säule.
4. Formuliere den finalen Leitfaden im Canvas als einseitigen 1-Pager, der im Team-Wiki und im Onboarding-Material verankert wird.
Prompt:
> "Du bist KI-Ethik-Beraterin für ein B2B-Marketing-Team. Erstelle einen praxistauglichen KI-Ethik-Kompass. Kontext: Team nutzt KI für Content, Analyse und Personalisierung; EU AI Act ist relevant (Frist datums-sensitiv — gegen Primärquelle per Web-Suche verifizieren). Format: 1-Pager mit vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit), je einem Praxis-Beispiel und einer Nie-KI-Liste mit fünf Punkten."
Artefakt: Ein einseitiger KI-Ethik-Leitfaden im Canvas mit vier Säulen, Praxis-Beispielen und einer verbindlichen "Nie-KI"-Liste für das Marketing-Team.
Fallstricke:
- Der Leitfaden ist zu abstrakt und gibt dem Team keine Handlungssicherheit → Jede Säule muss mit einem "Wenn ... dann ..."-Beispiel konkretisiert sein, das direkt aus dem eigenen Marketing-Alltag stammt.
- Die "Nie-KI"-Liste wird nie aktualisiert → Quartalsweise Review als festes Agenda-Item in der AI-Office-Hour (S-LU-014) einplanen; EU-AI-Act-Fristen sind im Kalender zu verankern.
Anschluss: S-LU-024

### S-LU-024 Wöchentliche AI-Nutzungs-Kennzahlen für das Board-Deck aufbereiten

Trigger: Das Board fragt in jedem Meeting nach dem Stand der KI-Transformation — das Marketing-Team liefert bisher nur qualitative Eindrücke statt messbarer KPIs. (Quelle: A-10)
Ziel: Drei Board-taugliche AI-KPIs etablieren, die monatlich automatisch aus dem Langdock-Workspace gezogen und in einem standardisierten Slide-Template aufbereitet werden.
Ergebnis: Ein Canvas-Template für das monatliche Board-Slide mit drei KPIs (AI-Assisted-Output-Ratio, Cost-per-Brief, Time-from-Brief-to-Draft) und einer Trend-Tabelle.
Fähigkeit: Data Analyst / Canvas / Workflows
Vorgehen:
1. Definiere die drei KPIs mit Messlogik: AI-Assisted-Output-Ratio (Anteil KI-gestützter Assets an Gesamt-Output), Cost-per-Brief (Gesamtkosten Langdock ÷ Anzahl produzierter Briefings), Time-from-Brief-to-Draft (Durchschnittliche Stunden von Briefing-Erstellung bis erstem Entwurf).
2. Exportiere die Langdock-Nutzungsdaten monatlich als CSV und lade sie in den Data Analyst.
3. Lass den Data Analyst die drei KPIs berechnen und als Trend-Tabelle (Monat-über-Monat) ausgeben.
4. Überführe die Ergebnisse in ein Canvas-Board-Slide-Template, das mit jeder monatlichen Aktualisierung nur die Zahlen erfordert.
Prompt:
> "Du bist Marketing-Analytics-Expertin mit Board-Reporting-Erfahrung. Berechne die drei AI-KPIs aus der angehängten CSV. Kontext: Monat Mai 2026, 12 Team-Mitglieder, 45 produzierte Assets, Langdock-Kosten 480 Euro. Format: Tabelle mit KPI-Name, Formel, Ist-Wert Mai, Vormonat-Vergleich und Trend-Pfeil."
Artefakt: Eine Canvas-Slide-Vorlage mit drei berechneten KPIs, Trend-Tabelle und einem Platzhalter-Text für die Board-Interpretation.
Fallstricke:
- Die KPIs werden ohne Baseline-Daten gestartet und der Trend ist nichtssagend → KPI-Messung beginnt am ersten Tag der Langdock-Nutzung; rückwirkende Erhebung ist meist unmöglich.
- Das Board akzeptiert nur Umsatz-relevante Kennzahlen → Ergänze optional eine vierte Metrik: "Durch KI-beschleunigte Assets, die zu X Euro Umsatz-Pipeline beigetragen haben" — nur wenn Attribution sauber messbar ist.
Anschluss: S-LU-025

### S-LU-025 Langdock-Governance-Rahmen für den Workspace-Admin aufsetzen

Trigger: Der Workspace wächst auf 20+ Nutzer und 10+ Agenten. Ohne klare Governance entstehen doppelte Agenten, veraltete Wissensordner und unkontrollierter Token-Verbrauch. (Quelle: A-35; A-36; sources/12 Q-036)
Ziel: Einen schlanken Governance-Rahmen einführen, der Verantwortlichkeiten für Agenten, Wissensordner und Budget klar regelt, ohne die Agilität des Teams einzuschränken.
Ergebnis: Ein Governance-Dokument mit RACI-Modell für Agenten-Ownership, Quartals-Review-Prozess für Wissensordner und einem Budget-Eskalationsplan bei Token-Überschreitung.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Erstelle im Chat ein Inventar aller bestehenden Agenten und Wissensordner: Name, Zweck, letztes Update, aktueller Owner.
2. Führe den PTCF-Prompt aus, um ein RACI-Modell für jeden Agenten zu generieren: Owner (Konfiguration), Approver (Brand-Compliance), Consulted (Wissens-Quelle), Informed (Team-Nutzung).
3. Definiere einen Quartals-Review-Prozess für Wissensordner: Prüfe Aktualität, archiviere veraltete Dokumente, aktualisiere System-Prompts bei Produkt-Änderungen.
4. Lege Budget-Schwellenwerte fest: 80-%-Warnschwelle im Workspace-Admin, Eskalationsplan bei Überschreitung, monatlicher Token-Report an den CMO.
Prompt:
> "Du bist Workspace-Governance-Beraterin für ein 25-köpfiges Marketing-Team. Erstelle ein RACI-Modell für unsere 12 Langdock-Agenten. Kontext: Team-Struktur ist Content (5 Personen), Performance (4), Social (3), Brand (3), Analytics (2). Format: Tabelle mit Agent-Name, Owner, Approver, Consulted, Informed und Quartals-Review-Datum."
Artefakt: Ein vollständiges Governance-Dokument im Canvas mit RACI-Tabelle für alle Agenten, Quartals-Review-Checkliste für Wissensordner und Budget-Eskalationsplan.
Fallstricke:
- Das RACI-Modell wird einmalig erstellt und nie gepflegt → Jeder neue Agent bekommt das RACI-Template als Pflicht-Schritt in der Konfigurations-Checkliste; kein Agent ohne Owner.
- Token-Budget-Limits werden zu restriktiv gesetzt und bremsen produktive Nutzung → Starte mit einem großzügigen Limit (120 % des erwarteten Verbrauchs) und justiere nach drei Monaten Nutzungsdaten.
Anschluss: S-LU-026

### S-LU-026 Token-Verbrauch der teuersten Prompts identifizieren und senken

Trigger: Der monatliche Workspace-Usage-Report zeigt, dass 5 % der Prompts mehr als 50 % des Token-Budgets verbrauchen — ohne erkennbaren Mehrwert. (Quelle: A-21)
Ziel: Die kostentreibenden "Heavy-Hitter-Prompts" identifizieren, refaktorieren und das Monatsbudget ohne Qualitätseinbußen um 20–40 % senken.
Ergebnis: Eine priorisierte Refactor-Liste der Top-5 Token-Fresser mit konkreten Kürzungsvorschlägen und geschätzter Einsparung in Euro.
Fähigkeit: Workspace-Admin-Dashboard / Data Analyst / Chat
Vorgehen:
1. Öffne im Langdock-Admin-Bereich den Usage-Report und sortiere nach Token-Verbrauch pro Agent und pro User — exportiere als CSV.
2. Lade die CSV in den Data Analyst und identifiziere die Top-5 Token-Verbraucher: Agenten-Name, durchschnittliche Prompt-Länge, Häufigkeit und Kosten in Euro.
3. Analysiere pro Heavy-Hitter: Ist der System-Prompt unnötig lang? Wird ein teures Modell (Opus) für eine Routine-Aufgabe genutzt? Könnte ein Flash-Modell denselben Output liefern?
4. Erstelle die Refactor-Liste im Canvas: Alter Prompt (Zeichenanzahl), neuer kürzerer Prompt, Modell-Downgrade-Empfehlung und geschätzte monatliche Ersparnis.
Prompt:
> "Du bist KI-Kostenoptimiererin. Analysiere die angehängte Usage-CSV unseres Langdock-Workspace. Identifiziere die 5 kostenintensivsten Agenten und schlage konkrete Kürzungsmaßnahmen vor. Kontext: Unser Monatsbudget beträgt 600 Euro, aktuell verbrauchen wir 920 Euro. Format: Tabelle mit Agent-Name, aktuellen Kosten, Einsparpotenzial und Maßnahme."
Artefakt: Eine Refactor-Prioritätsliste im Canvas mit fünf Einträgen, geschätzter Ersparnis pro Maßnahme und einer Gesamteinsparungsprojektion für den Folgemonat.
Fallstricke:
- Token-Kosten werden mit Modell-Provider-Listenpreisen verwechselt, ohne den Langdock-Aufschlag (10 %) einzurechnen → Immer den Brutto-Betrag aus dem Admin-Export als Basis nehmen, nicht die Provider-API-Preisliste.
- Das günstigste Modell liefert für Brand-Voice-kritische Texte schlechte Qualität → Für jeden Refactor-Schritt eine Qualitätsprüfung mit drei Canary-Prompts durchführen, bevor der Rollout erfolgt.
Anschluss: S-LU-027

### S-LU-027 Auto-Modus vs. explizite Modellwahl: Operative Entscheidungsregel einführen

Trigger: Das Team nutzt ausschließlich den Auto-Modus und weiß nicht, wann eine bewusste Modellwahl (z. B. Flash vs. Sonnet) zu besseren Ergebnissen oder niedrigeren Kosten führt. (Quelle: A-23)
Ziel: Eine einfache Daumenregel etablieren, die das Team befähigt, bei mehr als 100 täglichen Requests eigenständig zwischen Auto-Modus und expliziter Modellwahl zu entscheiden.
Ergebnis: Eine laminierte Entscheidungskarte (1-Pager) mit Task-Typ-Zuordnung zu Modell-Tier, die im Team-Wiki und als Konversations-Starter hinterlegt wird.
Fähigkeit: Chat / Canvas / Konversations-Starter
Vorgehen:
1. Kategorisiere alle wiederkehrenden Marketing-Tasks nach zwei Dimensionen: Komplexität (Routine vs. Strategie) und Brand-Criticality (generisch vs. markenprägend).
2. Führe den PTCF-Prompt aus, um die Modell-Zuordnungsregel zu generieren: Flash für Routine-Drafts, Übersetzungen und Klassifikation; Sonnet für Strategie-Reviews, Brand-Voice-kritische Texte und komplexe Argumentation.
3. Überführe die Regel in den Canvas als 1-Pager und hinterlege sie als Konversations-Starter "Welches Modell für diese Aufgabe?" in allen relevanten Agenten.
Prompt:
> "Du bist KI-Modell-Stratege. Erstelle eine Daumenregel für unser Marketing-Team: Wann nutzen wir Flash, wann Sonnet, wann Opus? Kontext: 15 Personen, täglich ca. 200 Requests, Budget-Limit 500 Euro/Monat. Format: Tabelle mit Task-Typ, empfohlenem Modell, Begründung und geschätzten Kosten pro 1 000 Requests."
Artefakt: Ein 1-Pager im Canvas mit Modell-Zuordnungstabelle (Task-Typ → Modell → Begründung → Kostenschätzung), direkt einsetzbar als Team-Referenzkarte.
Fallstricke:
- Die Regel wird als starr verstanden und Team-Mitglieder wechseln auch bei Ausnahmefällen nicht vom Flash-Modell ab → Die Karte muss explizit eine "Eskalations-Regel" enthalten: Wenn drei Iterationen keinen zufriedenstellenden Output liefern, Modell upgraden.
- Auto-Modus-Kosten sind schwer vorherzusagen, weil das System selbst zwischen Modellen wechselt → Ab 100 Requests/Tag lohnt explizite Wahl, da der Auto-Modus tendenziell zum höherwertigen Modell neigt.
Anschluss: S-LU-028

### S-LU-028 BYOK-Rentabilitätsschwelle berechnen und Entscheidung herbeiführen

Trigger: Der CFO fragt, ob "Bring Your Own Key" (BYOK) bei aktuellem Nutzungsvolumen Kosten spart — das Marketing-Team hat keine Antwort. (Quelle: A-26; sources/12 Q-117)
Ziel: Einen datenbasierten Break-even-Vergleich erstellen: Langdock-Inklusivangebot vs. BYOK-Modell mit direktem Provider-Zugang, um die Entscheidung für den nächsten Vertragszyklus zu fundieren.
Ergebnis: Eine Canvas-Tabelle mit Break-even-Punkt in Euro/Monat, Aufwandsschätzung für API-Key-Management und einer klaren Go/No-Go-Empfehlung für BYOK.
Fähigkeit: Data Analyst / Chat / Canvas
Vorgehen:
1. Exportiere den aktuellen monatlichen Token-Verbrauch nach Modell (Sonnet, Flash, Opus) aus dem Langdock-Admin-Dashboard als CSV.
2. Lade die CSV in den Data Analyst: Berechne die Kosten im Inklusivangebot vs. direktem Provider-Preis (Anthropic/OpenAI) + 10 % Langdock-Aufschlag entfällt bei BYOK.
3. Ergänze im Chat den operativen Aufwand für BYOK: API-Key-Rotation, Billing-Reconciliation, Security-Overhead — schätzungsweise 2–4 Stunden/Monat IT-Zeit.
4. Erstelle im Canvas die Go/No-Go-Empfehlung: BYOK lohnt ab ca. 5 000 Euro/Monat Verbrauch; darunter überwiegt der Verwaltungsaufwand.
Prompt:
> "Du bist SaaS-Beschaffungsanalystin. Vergleiche für unser Langdock-Nutzungsprofil die Kosten von Inklusivangebot vs. BYOK. Kontext: Monatlicher Verbrauch laut CSV anbei, IT-Ressource für API-Management: 3 h/Monat à 90 Euro. Format: Break-even-Tabelle mit Monatsschwelle, Jahresersparnis ab Break-even und Empfehlung."
Artefakt: Eine Break-even-Tabelle im Canvas mit Monatsschwelle, Jahresersparnis-Projektion und einer eindeutigen Empfehlung (BYOK Ja/Nein) mit Begründung.
Fallstricke:
- Provider-Preise ändern sich quartalsweise — die Rechnung veraltet schnell → Datum der Preisgrundlage im Dokument vermerken und bei jedem Vertragsverlängerungsgespräch aktualisieren.
- BYOK-Entscheidung wird nur auf Basis der Token-Kosten getroffen, ohne Sicherheits-Overhead zu berücksichtigen → API-Key-Kompromittierung kann bei BYOK direkten Provider-Schaden verursachen; CISO vorab konsultieren.
Anschluss: S-LU-029

### S-LU-029 Token-Budget-Eskalationsplan bei Monatsende-Explosion einrichten

Trigger: In der letzten Woche des Monats explodiert der Token-Verbrauch wegen intensiver Kampagnenproduktion — das Workspace-Budget wird überschritten und Workflows brechen ab. (Quelle: A-25; sources/12 Q-122)
Ziel: Ein dreistufiges Eskalationsmodell einrichten, das Token-Überschreitungen antizipiert, das Team automatisch warnt und eine klare Handlungskette bis zum CMO auslöst.
Ergebnis: Ein dokumentierter Budget-Eskalationsplan im Wissensordner mit drei Schwellenwerten (60 %, 80 %, 100 %), definierten Aktionen pro Stufe und einer Notfall-Fallback-Prozedur.
Fähigkeit: Workspace-Admin / Chat / Canvas / Wissensordner
Vorgehen:
1. Setze im Langdock-Workspace-Admin drei Budget-Alarmstufen: 60 % (Info-Mail an Workspace-Admin), 80 % (Warnung an CMO + Modell-Downgrade auf Flash für Routine-Tasks), 100 % (automatischer Stopp non-kritischer Workflows).
2. Definiere im Chat eine "Prioritätsliste der Workflows": Welche Prozesse dürfen bei Budget-Engpass weiterlaufen (Lead-Scoring, Krisen-PR), welche werden pausiert (Content-Volumen-Produktion)?
3. Überführe den Plan in den Canvas und dokumentiere die Eskalationskette: Admin → Team-Lead → CMO → CFO mit Reaktionszeit-SLA pro Stufe.
4. Speichere das Dokument im zentralen Governance-Wissensordner als Pflichtdokument für den monatlichen Budget-Review.
Prompt:
> "Du bist KI-Infrastruktur-Managerin. Erstelle einen dreistufigen Token-Budget-Eskalationsplan für einen 20-köpfigen Marketing-Workspace. Kontext: Monatsbudget 800 Euro, häufige Überschreitungen in Kampagnen-Hochphasen. Format: Tabelle mit Stufe, Schwellenwert in %, auslösende Aktion, Verantwortliche und Reaktionszeit."
Artefakt: Ein Canvas-Dokument mit Eskalationstabelle (drei Stufen), Priorisierungsliste der Workflows und einer Notfall-Fallback-Prozedur bei vollständigem Budget-Stop.
Fallstricke:
- Die 80-%-Warnung kommt zu spät, weil in der letzten Woche oft 30–40 % des Budgets verbraucht werden → Setze den zweiten Schwellenwert auf 70 % statt 80 % in Hochphasen (Q4, Launch-Wochen).
- Workflow-Stopps lösen Daten-Inkonsistenzen aus, wenn ein Multi-Step-Prozess mitten unterbrochen wird → Für kritische Workflows "Graceful Shutdown"-Logik im Workflow-Builder konfigurieren, die laufende Schritte abschließt.
Anschluss: S-LU-030

### S-LU-030 EU AI Act: Marketing-Use-Cases klassifizieren und Risiko-Inventar anlegen

Trigger: Der Rechtsberater weist darauf hin, dass der EU AI Act für Marketing-Anwendungen relevant wird (Frist datums-sensitiv — gegen Primärquelle per Web-Suche verifizieren) — das Team hat keine Übersicht, welche Use-Cases betroffen sind. (Quelle: A-13)
Ziel: Ein vollständiges AI-Use-Case-Inventar mit Risikoeinstufung (unacceptable / high / limited / minimal) nach EU-AI-Act-Kategorien erstellen, das als Compliance-Grundlage dient.
Ergebnis: Ein Canvas-Dokument mit einer Klassifikationstabelle aller aktiven Langdock-Use-Cases, Human-Oversight-Anforderungen pro Kategorie und einem 6-Monats-Aktionsplan für Hoch-Risiko-Fälle.
Fähigkeit: Chat / Canvas / Deep Research
Vorgehen:
1. Erstelle im Chat eine vollständige Liste aller aktiven KI-Marketing-Anwendungen: Content-Erstellung, Lead-Scoring, Wettbewerbs-Analyse, Personalisierung, Sentiment-Analyse auf Kundendaten.
2. Aktiviere den Deep Research Modus und recherchiere die aktuellen EU-AI-Act-Kategorien (Stand 2026) für Marketing-spezifische Anwendungen; fokussiere auf Art. 5 (verbotene Praktiken) und Annex III (Hoch-Risiko-Systeme).
3. Klassifiziere jeden Use-Case in der Tabelle: Risikostufe, ob Human-Oversight-Log erforderlich ist, ob eine DPIA nötig wird, und welche Dokumentationspflichten gelten.
4. Erstelle einen 6-Monats-Aktionsplan für alle als "limited" oder höher eingestuften Use-Cases: Verantwortlicher, Maßnahme und Deadline.
Prompt:
> "Du bist EU-AI-Act-Compliance-Beraterin für ein B2B-Marketing-Team. Klassifiziere unsere 8 KI-Anwendungen nach EU-AI-Act-Risikokategorien. Kontext: Anwendungen umfassen Content-Erstellung, Lead-Scoring, Personalisierung und Wettbewerbs-Monitoring. Format: Tabelle mit Use-Case, Risikostufe, Human-Oversight-Pflicht (Ja/Nein) und nächster Maßnahme."
Artefakt: Eine Klassifikationstabelle im Canvas mit allen Use-Cases, EU-AI-Act-Risikostufen und einem priorisierten Aktionsplan für compliance-relevante Anwendungen.
Fallstricke:
- Rechtliche Einschätzungen der KI werden ohne Anwaltsprüfung als verbindlich behandelt → Das Inventar ist eine Arbeitsgrundlage für das Gespräch mit dem Datenschutzbeauftragten; keine eigenständige Rechtsauskunft.
- Der Aktionsplan wird erstellt, aber nie umgesetzt, weil kein Owner definiert ist → Jede Zeile bekommt eine namentliche Verantwortliche und ein verbindliches Reviewdatum im Canvas-Dokument.
Anschluss: S-LU-031

### S-LU-031 DSGVO-Konflikt bei KI-gestützter Sentiment-Analyse auf Kundendaten prüfen

Trigger: Das CRM-Team möchte Langdock nutzen, um Kundenfeedback-Texte automatisch auf Sentiment zu analysieren — die Datenschutzbeauftragte fragt nach der Rechtsgrundlage. (Quelle: A-14)
Ziel: Den Unterschied zwischen datenschutzkonformer aggregierter Sentiment-Analyse und unzulässigem individuellem Profiling klar herausarbeiten und die interne Entscheidungslinie definieren.
Ergebnis: Ein 1-seitiges Entscheidungsblatt für das CRM-Team: Wann ist Sentiment-Analyse mit Langdock DSGVO-konform, wann braucht es eine explizite Rechtsgrundlage nach Art. 6 DSGVO.
Fähigkeit: Chat / Canvas
Vorgehen:
1. Definiere im Chat die zwei Analyse-Szenarien: (A) aggregierte Auswertung von 5 000 anonymisierten Feedbacks → Trend-Report ohne Personenbezug; (B) individuelle Sentiment-Bewertung pro Kontakt-ID → Profiling mit möglichem Personenbezug.
2. Führe den PTCF-Prompt aus, um den datenschutzrechtlichen Unterschied zu erläutern: Szenario A ist bei korrekter Pseudonymisierung unbedenklich; Szenario B erfordert Rechtsgrundlage (Art. 6 (1) f DSGVO) plus Information an die betroffene Person.
3. Erstelle das Entscheidungsblatt im Canvas mit einer "Ampel-Regel": Grün (aggregiert + pseudonymisiert), Gelb (individuell + Rechtsgrundlage vorhanden + DSB informiert), Rot (individuell + keine Rechtsgrundlage = STOP).
Prompt:
> "Du bist DSGVO-Beraterin für Marketing-Teams. Erkläre den datenschutzrechtlichen Unterschied zwischen aggregierter Sentiment-Analyse und individuellem Sentiment-Profiling. Kontext: Wir verarbeiten Kundenfeedback-Texte in Langdock, Daten sind pseudonymisiert (nur Kontakt-IDs). Format: Ampel-Entscheidungsblatt mit drei Szenarien (Grün/Gelb/Rot), Rechtsgrundlage und empfohlener Maßnahme."
Artefakt: Ein Canvas-Entscheidungsblatt mit Ampel-Regel (drei Szenarien), konkreter DSGVO-Rechtsgrundlage pro Szenario und einem empfohlenen Handlungspfad für das CRM-Team.
Fallstricke:
- "Pseudonymisiert" wird mit "anonym" verwechselt, obwohl re-Identifizierung via CRM-ID möglich ist → Im Dokument explizit festhalten: Pseudonyme Daten sind weiterhin personenbezogen nach DSGVO; nur echte Anonymisierung hebt den Schutzstatus auf.
- Das Entscheidungsblatt wird ohne Abstimmung mit dem Datenschutzbeauftragten als Policy behandelt → Verbindliche interne Leitlinie erfordert DSB-Freigabe und sollte im Team-Wiki mit Status "DSB-geprüft am [Datum]" markiert werden.
Anschluss: S-LU-032

### S-LU-032 Langdock-Nutzungsanalysen dem Betriebsrat gegenüber transparent machen

Trigger: Der Betriebsrat fragt, ob die Workspace-Nutzungsanalysen (welche Mitarbeiterin welche Agenten wie oft nutzt) eine unzulässige Verhaltens- oder Leistungsüberwachung nach BetrVG § 87 (1) Nr. 6 darstellen. (Quelle: A-18; sources/12 Q-132)
Ziel: Eine klare, belegte Antwort für den Betriebsrat vorbereiten, die zeigt, welche Nutzungsdaten zu welchem Zweck erhoben werden — und eine Vereinbarung vorschlagen, die KI-Adoption fördert, ohne Mitbestimmungsrechte zu verletzen.
Ergebnis: Ein Briefing-Dokument für das Betriebsratsgespräch mit einer Übersicht der Langdock-Analytics-Datenfelder, einer RACI-Tabelle (wer darf was sehen) und einem Vorschlag für eine Betriebsvereinbarung.
Fähigkeit: Chat / Canvas
Vorgehen:
1. Exportiere aus dem Langdock-Admin-Bereich die vollständige Liste der erfassten Analytics-Datenpunkte: User-ID, Zeitstempel, Agent-ID, Token-Verbrauch pro Session.
2. Kategorisiere im Chat jeden Datenpunkt: Dient er der System-Optimierung (zulässig ohne Mitbestimmung) oder ermöglicht er Rückschlüsse auf individuelle Arbeitsleistung (mitbestimmungspflichtig nach BetrVG § 87 (1) Nr. 6)?
3. Erstelle im Canvas einen RACI-Vorschlag: Workspace-Admin sieht aggregierte Team-Statistiken; individuelle User-Daten nur für den User selbst sichtbar; CMO erhält nur Team-Level-Reports.
4. Formuliere einen Betriebsvereinbarungs-Entwurf (1 Seite): Zweck der Nutzungsanalyse, Datenzugriffs-RACI, Aufbewahrungsfrist und Mitbestimmungs-Vorbehalt bei Änderungen.
Prompt:
> "Du bist Arbeitsrechtsberaterin mit Fokus auf Digitalisierung. Erstelle ein Briefing für ein Betriebsratsgespräch über KI-Nutzungsanalysen. Kontext: Langdock erfasst anonymisierte Nutzungsdaten auf User-Ebene; Betriebsrat besorgt wegen Leistungsüberwachung (BetrVG § 87 (1) Nr. 6). Format: Zwei-seitiges Dokument mit Datenpunkt-Übersicht, RACI-Tabelle und Betriebsvereinbarungs-Entwurf."
Artefakt: Ein zweiseitiges Canvas-Dokument mit Datenpunkt-Kategorisierung, RACI-Vorschlag und Betriebsvereinbarungs-Entwurf für das Gespräch mit dem Betriebsrat.
Fallstricke:
- Der Betriebsvereinbarungs-Entwurf wird ohne Rechtsanwalt als fertige Vereinbarung behandelt → Das Dokument ist ein Verhandlungs-Startpunkt; der finale Text muss durch einen Fachanwalt für Arbeitsrecht geprüft werden.
- Nutzungsdaten werden für inoffizielle Leistungsbeurteilungen genutzt, obwohl dies nicht vereinbart ist → RACI-Restriktion technisch im Admin-Dashboard umsetzen, nicht nur dokumentarisch.
Anschluss: S-LU-033

### S-LU-033 Agent-Qualitätsdrift monatlich mit Canary-Prompts erkennen

Trigger: Ein konfigurierter Agent liefert seit Wochen schleichend schlechtere Outputs — das Team bemerkt es erst, wenn Kunden-Briefings fehlerhaft sind. (Quelle: A-34)
Ziel: Einen monatlichen Spot-Check-Prozess einrichten, der Agent-Qualitätsdrift frühzeitig erkennt und eine definierte Eskalationsschwelle auslöst, bevor der Fehler produktiv wirkt.
Ergebnis: Ein Canary-Prompt-Set mit fünf Testfragen pro Agent, einer Erwartungs-Benchmark-Tabelle und einem Eskalationsprotokoll bei zwei oder mehr Abweichungen.
Fähigkeit: Agents / Chat / Canvas / Wissensordner
Vorgehen:
1. Definiere für jeden kritischen Agenten fünf Canary-Prompts: einfache Fragen, deren korrekte Antwort klar und stabil sein sollte (z. B. "Wie lang ist unser Standard-Blogpost laut Brand-Guide?").
2. Führe den Spot-Check einmal monatlich durch: Führe alle fünf Canary-Prompts aus und dokumentiere die Antworten in einer Tabelle (Datum, Prompt, Erwarteter Output, Tatsächlicher Output, Abweichung Ja/Nein).
3. Definiere die Eskalationsschwelle: Zwei oder mehr Abweichungen von fünf → Agent-Owner wird benachrichtigt und hat 48 Stunden, um Wissensordner und System-Prompt zu prüfen.
4. Archiviere alle Spot-Check-Protokolle im Governance-Wissensordner als Audit-Trail.
Prompt:
> "Du bist KI-Qualitätssicherungsmanagerin. Erstelle ein Canary-Prompt-Set für unseren Brand-Voice-Agenten. Kontext: Der Agent soll Texte im formellen, direkten B2B-Ton ausgeben; Benchmark ist unser Tone-of-Voice-Guide. Format: Tabelle mit 5 Canary-Fragen, erwartetem Output (Schlüsselwort oder Stil-Merkmal) und Bewertungskriterium (bestanden/nicht bestanden)."
Artefakt: Eine Canary-Prompt-Tabelle mit fünf Testfragen pro Agent, Bewertungskriterien und einem Eskalationsprotokoll-Template für den monatlichen Spot-Check-Prozess.
Fallstricke:
- Canary-Prompts testen nur Fakten, nicht Ton — und der Ton-Drift wird übersehen → Mindestens zwei der fünf Prompts müssen explizit Stil und Tonalität testen, nicht nur Fakten abrufen.
- Der Spot-Check wird wegen Zeitdruck übersprungen → Canary-Check als monatliche Workflow-Automation konfigurieren, die die fünf Prompts automatisch ausführt und eine Ergebnis-Mail an den Agent-Owner sendet.
Anschluss: S-LU-034

### S-LU-034 Pilot auf Company-wide Rollout skalieren: 30-Tage-Skalierungsplan

Trigger: Der 90-Tage-Pilot (S-LU-016) war erfolgreich. Das Go für den Vollrollout auf das gesamte Unternehmen (100+ Nutzer) ist gegeben — aber ein strukturierter Skalierungsplan fehlt. (Quelle: A-04; sources/12 Q-136)
Ziel: Den Übergang vom Marketing-Piloten zur unternehmensweiten Nutzung in 30 Tagen strukturiert vollziehen, ohne die Qualität der bestehenden Marketing-Agenten zu gefährden.
Ergebnis: Ein 30-Tage-Skalierungsplan im Canvas mit Phasen (Infrastruktur, Onboarding, Stabilisierung), KPIs und einem Kommunikationsplan für alle Abteilungen.
Fähigkeit: Chat / Canvas / Workflows
Vorgehen:
1. Inventarisiere im Chat alle Pilot-Artefakte, die skaliert werden müssen: Agenten-Konfigurationen, Wissensordner, Governance-Dokument (S-LU-025), KI-Ethik-Leitfaden (S-LU-023).
2. Erstelle den 30-Tage-Plan in drei Phasen: Phase 1 (Tage 1–10) Infrastruktur — neue Nutzer anlegen, RACI aktualisieren, Budget-Limits anpassen; Phase 2 (Tage 11–20) Onboarding — Abteilungs-Champions aus dem Pilot briefen neue Teams; Phase 3 (Tage 21–30) Stabilisierung — erste Canary-Checks (S-LU-033), Feedback-Sammlung, Optimierungen.
3. Definiere Kommunikations-Meilensteine: Kick-off-Mail an alle Abteilungen (Tag 1), Mid-Point-Update (Tag 15), Go-Live-Confirmation (Tag 30).
4. Lege drei Skalierungs-KPIs fest: Adoption-Rate nach 30 Tagen (Ziel: 60 % aktive Nutzer), durchschnittliche Onboarding-Zeit pro neuer Abteilung und Anzahl kritischer Incidents.
Prompt:
> "Du bist Skalierungsstrategin für KI-Plattform-Rollouts. Erstelle einen 30-Tage-Plan für die unternehmensweite Ausweitung unseres Langdock-Piloten. Kontext: Pilot mit 20 Marketing-Nutzern war erfolgreich, Skalierung auf 120 Nutzer in 5 Abteilungen. Format: Tabelle mit Phase, Tage, Hauptaktivität, Verantwortlicher und KPI."
Artefakt: Ein 30-Tage-Skalierungsplan im Canvas mit drei Phasen, Kommunikationsplan und drei messbaren Skalierungs-KPIs für den Vollrollout-Report an die Geschäftsführung.
Fallstricke:
- Neue Abteilungen erhalten denselben Agenten wie Marketing, obwohl ihre Use-Cases völlig verschieden sind → Jede Abteilung bekommt einen dedizierten Onboarding-Champion, der den Marketing-Agenten als Vorlage anpasst, nicht 1:1 übernimmt.
- Das Budget-Limit aus dem Pilot wird unverändert übernommen und reicht für 120 Nutzer nicht aus → Token-Budget für den Vollrollout auf Basis der Pilot-Nutzungsdaten hochrechnen und vor Tag 1 mit dem CFO abstimmen.
Anschluss: S-LU-035

### S-LU-035 Mehrsprachiges Team-Setup: DACH-Lokalisierung plus internationale Arbeitsteilung

Trigger: Das Marketing-Team arbeitet in Deutschland, Österreich und der Schweiz — und soll bald internationale Kollegen einbinden. Agenten antworten inkonsistent auf DE-AT-CH-Nuancen und Englisch-Inputs. (Quelle: A-46; sources/12 Q-077)
Ziel: Agenten und Prompt-Templates so konfigurieren, dass sie DACH-spezifische Sprachvarianten (DE-DE, DE-AT, DE-CH-Hochdeutsch) sowie englische Inputs korrekt verarbeiten und konsistente Outputs liefern.
Ergebnis: Eine Lokalisierungs-Konfiguration für die drei wichtigsten Team-Agenten mit sprachspezifischen Konversations-Startern und einem Eskalationspfad für Dialekt-Anfragen.
Fähigkeit: Agents / Konversations-Starter / Wissensordner / Chat
Vorgehen:
1. Definiere im Chat für jeden Agenten die gewünschten Output-Sprachen und lege im System-Prompt explizite Sprachregeln fest: "Antworte immer auf Hochdeutsch; wenn der Input auf Englisch ist, antworte auf Englisch; vermeide Dialektausdrücke."
2. Erstelle sprachspezifische Konversations-Starter: "Erstelle einen LinkedIn-Post für die Schweizer Zielgruppe (DE-CH-Hochdeutsch, kein 'ss' durch 'ß')" vs. "Create a LinkedIn post for our UK audience (EN-GB)".
3. Lade ein Glossar mit DACH-spezifischen Marketing-Begriffen (z. B. "Mwst." vs. "MwSt." vs. "MWST.") als Wissensordner-Dokument an alle relevanten Agenten an.
4. Dokumentiere den Eskalationspfad: Dialekt-Anfragen (z. B. Schwiizerdütsch) werden mit dem Hinweis "Manuell überarbeiten: Dialekt nicht zuverlässig" flagged und an einen Human-Editor weitergeleitet.
Prompt:
> "Du bist Lokalisierungsexpertin für DACH-Marketing. Erstelle einen System-Prompt für unseren Content-Agenten, der korrekt zwischen DE-DE, DE-AT und DE-CH-Hochdeutsch unterscheidet. Kontext: Team in Frankfurt, Wien und Zürich; gelegentliche englische Inputs von internationalen Kollegen. Format: Fertiger System-Prompt (max. 400 Zeichen) plus Tabelle mit sprachspezifischen Konversations-Startern."
Artefakt: Ein überarbeiteter System-Prompt für den Content-Agenten plus eine Tabelle mit sprachspezifischen Konversations-Startern und Eskalationspfad für Dialekt-Anfragen.
Fallstricke:
- De-CH-Hochdeutsch wird mit Schwiizerdütsch verwechselt, das Modell liefert unzuverlässige Dialekt-Texte → Im System-Prompt explizit: "DE-CH bedeutet schweizerisches Standardhochdeutsch ohne Dialekt; für Mundart-Texte immer Human-Review-Flag setzen."
- Das Glossar-Dokument wird zu groß und beeinträchtigt die Retrieval-Qualität → Maximal 50 Einträge pro Glossar-Datei; nach Themenbereich (Produkt, Recht, Zahlen) trennen.
Anschluss: S-LU-036

### S-LU-036 Modell-agnostische Prompt-Strategie: Prompts zwischen GPT und Claude portieren

Trigger: Das IT-Management erwägt, von Anthropic-Modellen auf OpenAI-Modelle umzustellen (oder umgekehrt). Das Team befürchtet, alle gespeicherten Prompts neu schreiben zu müssen. (Quelle: A-30; sources/12 Q-084)
Ziel: Eine modell-agnostische Prompt-Strategie entwickeln, die sicherstellt, dass 80 % der bestehenden Prompts ohne vollständiges Rewriting auf einem anderen Modell-Provider funktionieren.
Ergebnis: Eine Portierungsrichtlinie im Wissensordner mit einer Checkliste der modell-spezifischen Eigenheiten (Claude vs. GPT), einem Test-Framework und einer Schätzung des Anpassungsaufwands.
Fähigkeit: Chat / Canvas / Wissensordner / Agents
Vorgehen:
1. Exportiere alle gespeicherten System-Prompts aus der Langdock-Prompt-Library als Markdown-Dateien und kategorisiere sie nach: modell-neutral (keine Modell-spezifischen Anweisungen), Claude-spezifisch (z. B. XML-Tags, "thinking"-Anweisungen), GPT-spezifisch (z. B. "act as"-Stil).
2. Führe einen A/B-Test mit den 10 wichtigsten Prompts durch: Führe jeden Prompt auf beiden Modellen aus und vergleiche Output-Qualität nach drei Dimensionen (Ton, Vollständigkeit, Format).
3. Erstelle die Portierungsrichtlinie im Canvas: Welche Prompt-Muster funktionieren universell, welche müssen angepasst werden (Schätzung: 15–20 % der Prompts brauchen geringfügige Anpassung).
4. Versioniere alle Prompts in Git (eine Markdown-Datei pro Prompt) als zukunftssichere Basis für Modell-Wechsel.
Prompt:
> "Du bist Prompt-Engineering-Spezialistin. Analysiere die angehängten 10 Prompt-Texte auf Modell-spezifische Abhängigkeiten. Kontext: Wir erwägen Wechsel von Claude Sonnet auf GPT-4o. Format: Tabelle mit Prompt-Name, modell-spezifischen Elementen, Portierungsaufwand (gering/mittel/hoch) und konkretem Änderungsvorschlag."
Artefakt: Eine Portierungsrisiko-Tabelle mit allen Prompts, Aufwandseinschätzung und einer Schritt-für-Schritt-Anleitung für den Modell-Wechsel ohne Qualitätsverlust.
Fallstricke:
- Das Team nimmt an, dass PTCF-Prompts automatisch modell-agnostisch sind — das stimmt für einfache Tasks, aber nicht für komplexe mehrstufige Anweisungen → Mehrstufige Prompts (mehr als drei Anweisungsblöcke) immer manuell testen, bevor ein Modell-Wechsel produktiv geht.
- Versionshistorie der Prompts fehlt, sodass nach einem fehlgeschlagenen Wechsel kein Rollback möglich ist → Git-Versionierung der Prompts ist kein Luxus, sondern Pflicht ab mehr als 20 aktiven Prompt-Templates.
Anschluss: S-LU-037

### S-LU-037 Wettbewerber-KI-Landschaft monitoren: Competitive AI Intelligence aufbauen

Trigger: Wettbewerber setzen zunehmend sichtbar auf KI-generierte Inhalte, neue Chatbots und automatisierte Kampagnen — das Team hat keine strukturierte Übersicht über die KI-Strategie der Konkurrenz. (Quelle: A-07; sources/10 S-036)
Ziel: Ein vierteljährliches Competitive-AI-Intelligence-Format aufbauen, das die KI-Reife der drei Hauptwettbewerber bewertet und Differenzierungshebel für die eigene Strategie ableitet.
Ergebnis: Ein quartalsweiser AI-Competitive-Report im Canvas mit Bewertung der KI-Reife jedes Wettbewerbers (Skala 1–5), identifizierten Lücken und drei strategischen Differenzierungsempfehlungen.
Fähigkeit: Deep Research Modus / Canvas / Chat
Vorgehen:
1. Aktiviere den Deep Research Modus und recherchiere pro Wettbewerber: Öffentlich sichtbare KI-Tools im Marketing (Chatbots, generierte Inhalte, automatisierte Werbekanäle), Job-Ausschreibungen mit KI-Bezug (Indikator für interne Investitionen) und offizielle Statements zur KI-Strategie.
2. Bewerte jeden Wettbewerber nach einem 5-Punkte-KI-Reife-Scoring: (1) keine sichtbare KI-Nutzung, (3) selektiver Einsatz in einzelnen Kanälen, (5) vollintegrierte KI-First-Strategie.
3. Identifiziere die strategischen Lücken: Wo nutzen Wettbewerber KI, wo tun wir es nicht (und umgekehrt)? Welche Differenzierung entsteht durch First-Party-Daten + KI-Komposition?
4. Formuliere drei Differenzierungsempfehlungen als Aktionsplan und überführe den Report in den Canvas.
Prompt:
> "Du bist Competitive-Intelligence-Strategin. Bewerte die KI-Reife unserer drei Hauptwettbewerber im DACH-SaaS-Markt. Kontext: Wettbewerber A, B, C; Deep-Research-Quellen: Karriereseiten, Pressemitteilungen, LinkedIn-Posts, G2-Reviews. Format: Tabelle mit Wettbewerber, KI-Reife-Score (1–5), sichtbare KI-Anwendungen und strategische Implikation für uns."
Artefakt: Ein quartalsweiser AI-Competitive-Report im Canvas mit Reife-Scoring-Tabelle, Lückenanalyse und drei priorisierten Differenzierungsempfehlungen.
Fallstricke:
- Deep Research wertet Selbst-PR der Wettbewerber als Beweis für echte KI-Reife — überschätzt den Fortschritt → Jobanzeigen und Kundenbeschwerden (G2/Capterra) als Gegenindikator explizit in den Recherche-Scope aufnehmen.
- Der Report wird produziert, aber keine Konsequenzen gezogen → Jeder Report muss mit einer "Was ändert sich an unserer Strategie nächstes Quartal?"-Sektion enden; sonst hat er keinen geschäftlichen Wert.
Anschluss: S-LU-038

### S-LU-038 Langdock-Ausfall-Fallback: 2-Stunden-Notfall-Playbook aufstellen

Trigger: Langdock ist unerwartet nicht erreichbar — in einer Kampagnenhochphase oder Krisenreaktion. Das Team steht ohne Werkzeug da und verliert wertvolle Zeit. (Quelle: A-44)
Ziel: Ein praxistaugliches 2-Stunden-Notfall-Playbook erstellen, das die wichtigsten KI-Aufgaben ohne Langdock überbrückt und das Team handlungsfähig hält.
Ergebnis: Ein ausgedrucktes (oder lokal gespeichertes) Notfall-Playbook mit den drei wichtigsten Konversations-Startern als Markdown, direkten Links zu Anthropic/OpenAI/Gemini-Web-Interfaces und einem SLA-Eskalationspfad.
Fähigkeit: Canvas / Wissensordner (Vorbereitung vor dem Ausfall)
Vorgehen:
1. Identifiziere die drei zeitkritischsten Marketing-Aufgaben, die bei einem Ausfall sofort eingeschränkt sind: z. B. Krisen-PR-Entwurf, tägliches Newsletter-Mailing, Lead-Scoring-Workflow.
2. Exportiere die System-Prompts dieser drei kritischen Agenten als lokale Markdown-Dateien (offline verfügbar auf dem Laptop des Team-Leads).
3. Erstelle das Notfall-Playbook: Link zu status.langdock.com für Statusprüfung, direkte URLs zu Claude.ai, ChatGPT und Gemini als Alternativ-Interfaces, Schritt-für-Schritt-Anleitung zum manuellen Ausführen der drei kritischen Prompts.
4. Plane einen jährlichen "Fallback-Drill" (15 Minuten): Team-Lead simuliert einen Ausfall und führt alle drei kritischen Prompts manuell über ein Alternativ-Interface aus.
Prompt:
> "Du bist Business-Continuity-Planerin für ein Marketing-Team. Erstelle ein 2-Stunden-Notfall-Playbook für den Fall eines vollständigen KI-Plattform-Ausfalls. Kontext: 3 kritische Aufgaben (Krisen-PR, Newsletter-Draft, Lead-Scoring), Team hat Zugang zu Claude.ai und ChatGPT. Format: Checkliste mit Schritt-für-Schritt-Anleitung, Alternativ-Links und Eskalationsplan."
Artefakt: Ein 1-seitiges Notfall-Playbook im Canvas, das lokal als PDF gespeichert wird, mit den drei kritischen Prompts als Markdown und einem Fallback-Drill-Termin im Jahreskalender.
Fallstricke:
- Das Playbook liegt nur in Langdock selbst und ist beim Ausfall nicht erreichbar → Die finale PDF plus die drei System-Prompt-Markdowns müssen offline (lokaler Laptop des Team-Leads, geteiltes Cloud-Drive) gespeichert sein, nie ausschließlich im Workspace.
- Die exportierten System-Prompts referenzieren Wissensordner-Inhalte, die im Alternativ-Interface fehlen → Bei kritischen Prompts die benötigten Kernfakten (Brand-Voice-Regeln, Krisen-Eskalationskontakte) direkt in den offline-Prompt einbetten, statt auf den nicht-portablen Wissensordner zu verweisen.
Anschluss: S-LU-039

### S-LU-039 AI-Disclosure-Strategie für KI-assistierten Content entwickeln

Trigger: Die Rechtsabteilung fragt nach einer einheitlichen Policy: Muss KI-assistierter Content in Werbemitteln, auf der Website und in Social-Media-Posts offengelegt werden? (Quelle: A-09; A-19)
Ziel: Eine praxistaugliche Disclosure-Strategie entwickeln, die EU-AI-Act-Transparenzpflichten (Art. 50) und UWG-Anforderungen erfüllt, ohne die Kreativfreiheit des Teams einzuschränken.
Ergebnis: Ein 1-Pager mit drei Disclosure-Szenarien (Pflicht, empfohlen, nicht nötig), fertigem Disclosure-Wording auf Deutsch und einem Entscheidungsbaum für das Content-Team.
Fähigkeit: Chat / Canvas / Deep Research
Vorgehen:
1. Aktiviere den Deep Research Modus und recherchiere den aktuellen Stand der EU-AI-Act-Transparenzpflichten für Deepfakes und synthetische Medien (Art. 50) sowie das UWG § 5a zu irreführenden Unterlassungen im DACH-Raum.
2. Kategorisiere im Chat alle Content-Typen des Teams nach Disclosure-Pflicht: (A) KI-generierter Text mit Faktenaussagen zu Produkten → Pflicht; (B) KI-assistiertes Redigieren → empfohlen; (C) KI-generierte Übersetzungen → nicht nötig.
3. Erstelle das Disclosure-Wording für Szenario A: kurze, authentische Formulierungen, die Vertrauen aufbauen statt rechtliche Angst auszustrahlen (z. B. "Dieser Text wurde mit KI-Unterstützung erstellt und redaktionell geprüft.").
4. Visualisiere den Entscheidungsbaum im Canvas: Wenn [Content-Typ] → dann [Disclosure-Stufe] → dann [Wording-Vorschlag].
Prompt:
> "Du bist Medienrechtsspezialistin im DACH-Raum. Erstelle einen Entscheidungsbaum für KI-Disclosure in Marketing-Content. Kontext: Wir produzieren Blogposts, Social-Media-Posts, Produktbeschreibungen und Newsletter; EU AI Act Art. 50 und UWG § 5a sind relevant. Format: Entscheidungsbaum mit drei Pfaden (Pflicht/Empfohlen/Nicht nötig), fertigem Disclosure-Wording (DE) und Beispiel pro Pfad."
Artefakt: Ein Canvas-Dokument mit Entscheidungsbaum (drei Pfade), fertigem Disclosure-Wording auf Deutsch und einer Zusammenfassung der relevanten Rechtsgrundlagen als Referenz für die Rechtsabteilung.
Fallstricke:
- KI-generiertes Wording zur Disclosure wird selbst von der KI geschrieben und klingt unnatürlich → Das Disclosure-Wording muss redaktionell überarbeitet werden; der Mensch schreibt die finale Formulierung, die KI liefert Entwürfe.
- Die Policy wird ohne Einbindung der Rechtsabteilung als verbindlich kommuniziert → Klarer Hinweis im Dokument: "Entwurf, erfordert Rechtsprüfung vor Veröffentlichung"; Freigabe-Datum im Dateinamen vermerken.
Anschluss: S-LU-040

### S-LU-040 Langdock-ROI mit Business-KPIs verknüpfen: Pipeline-Attribution für KI-Assets

Trigger: Das CMO-Team hat S-LU-012 umgesetzt, aber der CFO fragt weiter: "Welche dieser KI-generierten Assets haben tatsächlich zu Umsatz beigetragen?" Die Effizienz-KPIs reichen dem Board nicht mehr aus. (Quelle: A-01; A-10)
Ziel: Einen Attributions-Mechanismus entwickeln, der KI-produzierte Marketing-Assets mit konkreten Pipeline-Beiträgen (Opportunities, Closed-Won-Deals) in Verbindung bringt.
Ergebnis: Ein Canvas-Template für den monatlichen Pipeline-Attribution-Report mit einer Tracking-Methodik, die Langdock-Assets mit CRM-Opportunities verknüpft.
Fähigkeit: Data Analyst / Chat / Canvas / Workflows
Vorgehen:
1. Definiere im Chat eine einfache Tracking-Methodik: Jedes mit Langdock produzierte Asset erhält ein UTM-Tag oder ein internes Label (z. B. "AI-generated-Q2-2026"), das beim Upload ins CMS/CRM mitgeführt wird.
2. Exportiere nach 30 Tagen die CRM-Daten: Welche Opportunities wurden durch Assets mit dem KI-Label beeinflusst (Touchpoint vorhanden)? Welche dieser Deals wurden zu Closed-Won?
3. Lade den Export in den Data Analyst: Berechne den Pipeline-Beitrag (Summe der Opportunity-Values mit KI-Asset-Touchpoint) und den Closed-Won-Anteil als konkreten Umsatzbeitrag.
4. Erstelle das Canvas-Template: KPI 1 = Pipeline-Beitrag KI-Assets in Euro; KPI 2 = Closed-Won-Deals mit KI-Asset-Touchpoint; KPI 3 = Anteil KI-Assets an gesamtem Content-Output.
Prompt:
> "Du bist Revenue-Marketing-Analystin. Erstelle ein Attribution-Template, das KI-generierte Marketing-Assets mit CRM-Pipeline-Daten verknüpft. Kontext: Wir nutzen Salesforce als CRM, Langdock für Content-Produktion, UTM-Labels für Asset-Tracking. Format: Tabelle mit KPI-Name, Tracking-Methode, Datenquelle, Berechnungsformel und Berichtszyklus."
Artefakt: Ein Canvas-Template für den monatlichen Pipeline-Attribution-Report mit drei KPIs, Tracking-Methodik und einer Datenfluss-Übersicht (Langdock → UTM-Labels → CRM → Report).
Fallstricke:
- Multi-Touch-Attribution überschätzt den letzten KI-Asset-Touchpoint und ignoriert frühere Berührungspunkte → Im Prompt explizit festlegen, ob First-Touch, Last-Touch oder lineares Attributionsmodell genutzt wird; Modell-Wahl mit dem Revenue-Team abstimmen.
- CRM-Daten sind unvollständig, weil nicht alle Assets konsequent gelabelt werden → Labeling-Pflicht als Schritt in die Inhaltsfreigabe-Checkliste aufnehmen; kein Asset geht ohne Label live.
Anschluss: S-LU-041

### S-LU-041 Neuen Marketing-Manager in 14 Tagen auf KI-Workflows onboarden

Trigger: Eine neue Marketing-Managerin beginnt am Montag. Das Team hat keine Zeit für ausgedehnte KI-Schulungen — sie soll innerhalb von 14 Tagen produktiv mit Langdock arbeiten. (Quelle: A-37; sources/12 Q-042)
Ziel: Einen strukturierten 14-Tage-Onboarding-Plan entwickeln, der neue Teammitglieder schrittweise mit den wichtigsten Agenten, Workflows und Prompts vertraut macht, ohne sie zu überfordern.
Ergebnis: Ein 14-Tage-Onboarding-Plan im Canvas mit täglichen Mini-Aufgaben, einem Starter-Prompts-Katalog und einem Day-14-Self-Check zur Kompetenzmessung.
Fähigkeit: Chat / Canvas / Agents / Konversations-Starter
Vorgehen:
1. Strukturiere den Plan in vier Phasen: Tag 1 — drei Konversations-Starter im Standard-Chat ausprobieren; Tag 3 — einen bestehenden Agenten für eine echte Aufgabe nutzen; Tag 7 — eigene Variante eines Konversations-Starters erstellen und mit dem Team teilen; Tag 14 — einen einfachen Workflow nachstellen und dokumentieren.
2. Erstelle im Canvas den täglichen Mini-Aufgaben-Kalender: Jede Aufgabe dauert max. 20 Minuten, hat ein konkretes Artefakt als Output und einen Ansprechpartner aus dem Champions-Programm (S-LU-014).
3. Kuratiere einen Starter-Prompts-Katalog: fünf Prompts aus dem Team-Prompt-Library, die für den jeweiligen Aufgabenbereich der neuen Person am relevantesten sind.
4. Erstelle den Day-14-Self-Check: fünf Fragen, die die Neue selbst beantwortet, um ihren Kompetenzstand einzuschätzen (z. B. "Welches Modell würdest du für einen Routine-Draft wählen?").
Prompt:
> "Du bist KI-Onboarding-Designerin. Erstelle einen 14-Tage-Onboarding-Plan für eine neue Marketing-Managerin bei Langdock-Einführung. Kontext: Sie hat keine KI-Vorerfahrung, ihr Fokus liegt auf Content-Marketing und Newsletter. Format: Tabelle mit Tag, Aufgabe, Dauer (max. 20 min), erwartetes Artefakt und Ansprechperson."
Artefakt: Ein 14-Tage-Onboarding-Kalender im Canvas mit täglichen Mini-Aufgaben, einem kuratierten Starter-Prompts-Katalog und einem Day-14-Self-Check-Fragebogen.
Fallstricke:
- Der Plan ist zu ambitiös und neue Mitarbeitende fühlen sich überfordert → Jeder Tag hat maximal eine Hauptaufgabe; Abweichungen von der Reihenfolge sind erlaubt, die Reihenfolge ist ein Vorschlag, keine Pflicht.
- Der Onboarding-Plan wird einmalig erstellt und für jede neue Person ohne Anpassung kopiert → Plan quartalsweise mit den neuesten Agenten und Prompts aktualisieren; veraltete Starter-Prompts raus, neue Champions-Erkenntnisse rein.
Anschluss: S-LU-042

### S-LU-042 Bulk-Lokalisierungsjob für 50 Produktbeschreibungen kostenoptimiert durchführen

Trigger: 50 Produktbeschreibungen müssen für den Launch in drei Sprachen (DE, EN, FR) übersetzt werden — im Standard-Chat-Modus würde das 150 manuelle Einzelanfragen bedeuten. (Quelle: A-24; sources/10 S-025)
Ziel: Den Lokalisierungsjob über einen Workflow mit einem kosteneffizienten Flash-Modell und JSON-Array-Input durchführen — Ziel: Faktor 5–10 Kostensenkung gegenüber synchronem Chat-Modus.
Ergebnis: Drei CSV-Dateien (DE/EN/FR) mit allen 50 übersetzten Produktbeschreibungen, produziert durch einen einzigen Workflow-Run mit dokumentierten Kosten pro Übersetzung.
Fähigkeit: Workflows / Data Analyst / Agents
Vorgehen:
1. Bereite die Eingabedaten vor: Eine CSV mit 50 Zeilen (Produkt-ID, Originalbeschreibung auf DE), exportiert aus dem CMS.
2. Baue im Workflow-Builder einen Loop-Workflow: Input = CSV-Zeile, Agent-Step = Übersetzung in EN und FR mit Flash-Modell + Glossar-Wissensordner, Output = JSON mit Produkt-ID + Übersetzungen.
3. Aktiviere den Workflow und lass ihn asynchron im Hintergrund laufen (ca. 10–15 Minuten für 50 Zeilen).
4. Exportiere das JSON-Ergebnis als drei separate CSVs (eine pro Sprache) und importiere sie direkt ins CMS; dokumentiere die Gesamtkosten im monatlichen Budget-Report.
Prompt:
> "Du bist Lokalisierungsworkflow-Architektin. Beschreibe den optimalen Workflow-Aufbau für die Bulk-Übersetzung von 50 Produktbeschreibungen in drei Sprachen mit Langdock. Kontext: Flash-Modell für Kosteneffizienz, Glossar als Wissensordner, Ausgabe als JSON. Format: Schritt-für-Schritt-Workflow-Beschreibung mit Node-Typen, geschätzten Kosten pro Übersetzung und Qualitätsprüfungs-Schritt."
Artefakt: Eine Workflow-Konfigurationsbeschreibung plus drei übersetzte CSVs als Output des Workflow-Runs, mit dokumentierten Kosten pro Übersetzung für den Budget-Report.
Fallstricke:
- Das Flash-Modell übersetzt Fachbegriffe ohne Glossar-Anbindung falsch → Glossar-Wissensordner mit Produktterminologie muss vor dem Workflow-Start angebunden sein; ohne Glossar qualitative Stichproben aus 10 % der Outputs machen.
- JSON-Output enthält Sonderzeichen, die beim CSV-Export korrumpiert werden → Encoding im Workflow explizit auf UTF-8 setzen; insbesondere für Französisch (é, à, ç) und Deutsche Umlaute (ä, ö, ü).
Anschluss: S-LU-043

### S-LU-043 Prompt-Bibliothek versionieren und zwischen Modellen portieren

Trigger: Das Team hat über 30 bewährte Prompts in der Langdock-Prompt-Library gespeichert, aber keine Versionshistorie — Änderungen werden einfach überschrieben, Rückwärts-Kompatibilität ist nicht gewährleistet. (Quelle: A-49; sources/12 Q-080)
Ziel: Alle produktiven Prompts in ein Git-Repository überführen, mit Pull-Request-Prozess für Änderungen, sodass jede Prompt-Version nachvollziehbar ist und bei einem Modell-Wechsel gezielt portiert werden kann.
Ergebnis: Ein Git-Repository mit allen Prompt-Markdown-Dateien, einer Namenskonvention, einem PR-Review-Prozess und einem Build-Step, der die freigegebenen Prompts automatisch in Langdock-Konversations-Starter überführt.
Fähigkeit: Prompt Library / Agents / Konversations-Starter / Chat
Vorgehen:
1. Exportiere alle bestehenden Prompts aus der Langdock-Prompt-Library als Markdown-Dateien und lege sie in einem Git-Repository ab (eine Datei pro Prompt, Namensschema: "YYYY-MM_Domäne_Aufgabe.md").
2. Definiere den PR-Review-Prozess: Prompt-Änderung → Branch anlegen → PR erstellen → Review durch Agent-Owner → Merge in Main → automatisches Update des Konversations-Starters in Langdock.
3. Ergänze in jeder Prompt-Datei einen Header mit Metadaten: Zielmodell, letztes Testdatum, Qualitätsbewertung (1–5), Ansprechpartner.
4. Führe einmal im Quartal einen "Prompt-Audit": Alle Prompts mit Qualitätsbewertung unter 3 oder Testdatum älter als 90 Tage werden überarbeitet oder archiviert.
Prompt:
> "Du bist Prompt-Engineering-Governerin. Erstelle eine Namenskonvention und einen Review-Prozess für unsere 35-Prompts-Bibliothek in Git. Kontext: Team von 15 Personen, monatlich 5–10 neue Prompts, Wechsel zwischen Claude und GPT möglich. Format: Namenskonvention-Regel, Markdown-Header-Template und 4-Schritte-PR-Prozess."
Artefakt: Eine Namenskonventions-Regel, ein Markdown-Header-Template für Prompt-Metadaten und eine dokumentierte 4-Schritte-PR-Review-Prozessbeschreibung, direkt einsetzbar im Team-Git-Repository.
Fallstricke:
- Git-Kenntnisse fehlen bei nicht-technischen Team-Mitgliedern → Für nicht-technische Nutzer eine vereinfachte GitHub-Web-UI-Anleitung erstellen; der Git-Prozess läuft primär über den Champion, nicht alle Teammitglieder müssen Git beherrschen.
- Der automatische Build-Step zur Langdock-Integration existiert noch nicht → Bis zur Automatisierung: Manueller Copy-Paste-Prozess nach jedem PR-Merge; Automatisierung als Milestone für Quartal 2 einplanen.
Anschluss: S-LU-044

### S-LU-044 KI-Carbon-Footprint messen und ins Nachhaltigkeits-Reporting integrieren

Trigger: Die Sustainability-Abteilung fragt, ob der KI-Einsatz im Marketing zum CO₂-Fußabdruck des Unternehmens beiträgt — und ob dies im Nachhaltigkeitsbericht ausgewiesen werden muss. (Quelle: A-45)
Ziel: Eine nachvollziehbare Methodik entwickeln, die den Token-Verbrauch des Langdock-Workspace in eine CO₂-Schätzung übersetzt, die im Nachhaltigkeitsbericht unter "Scope 3 — digitale Dienstleistungen" veröffentlicht werden kann.
Ergebnis: Eine jährliche CO₂-Schätzungstabelle im Canvas mit Berechnungsmethodik, Quellenangaben (ML.energy, Hugging Face Public Estimates) und einem Hinweis auf Unsicherheitsfaktoren.
Fähigkeit: Data Analyst / Chat / Canvas
Vorgehen:
1. Exportiere den Jahres-Token-Verbrauch aus dem Langdock-Admin-Dashboard (aufgeschlüsselt nach Modell: Flash, Sonnet, Opus).
2. Recherchiere im Chat die aktuellen CO₂-Faktoren pro 1 000 Token für die eingesetzten Modelle (Basis: ML.energy und Hugging Face-Schätzungen, Stand 2026); dokumentiere Quellen und Unsicherheitsranges.
3. Lade den Token-Verbrauch als CSV in den Data Analyst: Berechne die Gesamt-CO₂-Schätzung (Token-Verbrauch × CO₂-Faktor pro Modell) und vergleiche sie mit Referenzwerten (z. B. CO₂ einer Transatlantik-Flugreise: ca. 1,8 t CO₂).
4. Erstelle die Reporting-Tabelle im Canvas mit Methodikbeschreibung, Quellenangaben, Schätzwert und einer Einschränkungsklausel ("Schätzung basiert auf öffentlichen Durchschnittswerten; tatsächliche Werte können abweichen").
Prompt:
> "Du bist Nachhaltigkeits-Reportingspezialistin. Erstelle eine CO₂-Schätzungsmethodik für unseren KI-Verbrauch in Langdock. Kontext: Jahresverbrauch laut CSV anbei, eingesetzte Modelle: Claude Sonnet, Flash; Basis: öffentliche ML.energy-Schätzwerte. Format: Tabelle mit Modell, Jahres-Token-Verbrauch, CO₂-Faktor, Gesamt-CO₂-Schätzung in kg und Quellenangabe."
Artefakt: Eine CO₂-Schätzungstabelle im Canvas mit vollständiger Methodikbeschreibung, Quellenangaben und einer Einschränkungsklausel, direkt einsetzbar im Nachhaltigkeitsbericht unter Scope 3.
Fallstricke:
- CO₂-Faktoren aus 2024 werden für 2026 verwendet, ohne zu prüfen, ob aktuellere Werte vorliegen → Quelldaten jährlich zum Reporting-Zeitpunkt aktualisieren; Veröffentlichungsdatum der verwendeten Studie im Dokument vermerken.
- Die Schätzung wird als exakter Wert kommuniziert und erzeugt bei kritischen Stakeholdern Vertrauensverlust → Im Nachhaltigkeitsbericht immer als "Schätzung ±40 % Unsicherheitsrange" kommunizieren und die Methodik vollständig transparent darstellen.
Anschluss: S-LU-045

### S-LU-045 Agent-Rentenplan: Veraltete Agenten systematisch stilllegen

Trigger: Der Workspace-Governance-Review (S-LU-025) zeigt, dass vier Agenten seit mehr als 90 Tagen nicht genutzt wurden — aber niemand traut sich, sie zu löschen, ohne zu wissen, ob jemand auf sie angewiesen ist. (Quelle: A-33)
Ziel: Einen strukturierten Agenten-Retirement-Prozess einführen, der veraltete Agenten sicher identifiziert, archiviert und deaktiviert — ohne produktive Nutzung zu unterbrechen.
Ergebnis: Ein Retirement-Protokoll im Canvas mit Checkliste für jeden zu deaktivierenden Agenten, einem Archiv-Snapshot-Verfahren und einem Sunset-Memo an alle Nutzer.
Fähigkeit: Workspace-Admin / Chat / Canvas / Wissensordner
Vorgehen:
1. Exportiere aus dem Langdock-Admin-Dashboard die Nutzungsstatistik aller Agenten: letzte Nutzung, Anzahl Sessions in den letzten 90 Tagen, Owner.
2. Identifiziere Retirement-Kandidaten nach drei Kriterien: (a) 0 Sessions in 90 Tagen, (b) Wissensordner-Quelldaten veraltet (letztes Update > 6 Monate), (c) Use-Case durch neueren Agenten abgelöst.
3. Führe für jeden Kandidaten den Pre-Retirement-Check durch: System-Prompt und Wissensordner-Dateien als Markdown exportieren und in einem "Archiv"-Ordner ablegen; Sunset-Memo an alle bisherigen Nutzer senden mit 14-Tage-Vorlauffrist.
4. Deaktiviere den Agenten nach der Vorlauffrist und aktualisiere das RACI-Governance-Dokument (S-LU-025).
Prompt:
> "Du bist KI-Workplace-Governerin. Erstelle ein Retirement-Protokoll für die Stilllegung veralteter Langdock-Agenten. Kontext: Vier Agenten mit 0 Sessions in 90 Tagen, Workspace mit 25 Nutzern. Format: Checkliste mit Schritten (Nutzungscheck, Owner-Konsultation, Archiv-Snapshot, Sunset-Memo, Deaktivierung), Zeitplan und Archivierungs-Vorlage."
Artefakt: Ein Retirement-Protokoll im Canvas mit Schritt-für-Schritt-Checkliste, Archiv-Snapshot-Vorlage und einem Sunset-Memo-Template, das für jeden zu deaktivierenden Agenten angepasst wird.
Fallstricke:
- Ein "ungenutzter" Agent wird gelöscht, aber eine automatisierte Workflow-Komponente hat ihn still im Hintergrund gerufen → Vor Deaktivierung im Workflow-Builder nach Referenzen auf den Agenten suchen; Workflow-Abhängigkeiten sind unsichtbar im Nutzungs-Dashboard.
- Das Archiv-Snapshot-Verfahren wird übersprungen und das Wissen geht verloren → Kein Agent wird ohne exportierten System-Prompt und Wissensordner-Backup deaktiviert; Pre-Retirement-Export ist Pflichtschritt in der Checkliste.
Anschluss: S-LU-046

### S-LU-046 KI-Adoptionsrate teamübergreifend messen und steuern

Trigger: Nach drei Monaten Langdock-Betrieb fragt die Geschäftsführung: "Wie viele Teams nutzen KI wirklich produktiv — und wie messen wir den Fortschritt?" Bisherige Zahlen basieren auf Gefühl, nicht auf Daten. (Quelle: A-04; sources/12 Q-004)
Ziel: Ein standardisiertes Adoptionsmessmodell einführen, das monatlich die aktive Nutzung über Teams hinweg erfasst, Stagnation sichtbar macht und gezielte Interventionen ermöglicht.
Ergebnis: Ein monatliches Adoptions-Dashboard-Template im Canvas mit vier Metriken (Aktive-Nutzer-Rate, Sessions-pro-Person, Agenten-Aktivierungstiefe, Prompt-Library-Beiträge) pro Team-Einheit.
Fähigkeit: Workspace-Admin / Data Analyst / Canvas
Vorgehen:
1. Exportiere monatlich aus dem Langdock-Admin-Dashboard die Nutzungsstatistik auf Team-Ebene: Anzahl aktiver Nutzer (mind. 1 Session/Woche), Sessions pro Kopf, genutzte Agenten-Typen und Library-Beiträge.
2. Lade den Export in den Data Analyst und berechne die vier Adoptionsmetriken pro Team-Einheit; visualisiere als Heatmap (Team × Metrik).
3. Definiere Ampel-Schwellenwerte: Grün = Aktive-Nutzer-Rate ≥ 70 %; Gelb = 40–69 %; Rot = unter 40 % — und verbinde jeden Rot-Eintrag automatisch mit einer Champion-Intervention (S-LU-014).
4. Veröffentliche das Dashboard monatlich im Team-Wiki und nutze es als Steuerungsinstrument für das CMO-Reporting.
Prompt:
> "Du bist KI-Transformations-Controllerin. Erstelle ein Adoptionsmessmodell für Langdock in einem 30-köpfigen Marketing-Team. Kontext: 5 Team-Einheiten (Content, Performance, Social, Brand, Analytics), monatlicher Reporting-Zyklus. Format: Tabelle mit Metrik-Name, Definition, Messmethode, Zielwert und Ampel-Schwellenwert."
Artefakt: Ein Canvas-Dashboard-Template mit vier Adoptionsmetriken, Team-Heatmap-Vorlage und einem Ampel-Handlungsplan für Rot-Einheiten.
Fallstricke:
- Nutzungsstatistiken werden als Leistungsbeurteilung missverstanden → Kommuniziere ausdrücklich: Das Dashboard misst Werkzeugnutzung, nicht individuelle Performance; Datenschutz-Hinweis (S-LU-032) voranstellen.
- Hohe Session-Zahlen ohne Output-Qualität gelten als Erfolg → Ergänze mindestens eine Output-Qualitäts-Metrik (z. B. Anteil der Agenten-Outputs, die ohne Revision freigegeben werden).
Anschluss: S-LU-047

### S-LU-047 Abteilungsübergreifendes KI-Champion-Netzwerk aufbauen

Trigger: Das Marketing-Champion-Programm (S-LU-014) läuft gut, aber andere Abteilungen (Sales, HR, Legal) fragen nach KI-Unterstützung — ohne eigene Struktur und ohne Schnittstelle zur bestehenden Langdock-Infrastruktur. (Quelle: A-35; A-04)
Ziel: Das bestehende Marketing-Champions-Programm auf ein abteilungsübergreifendes Netzwerk ausweiten, das Best-Practice-Transfer ermöglicht und die Gesamt-Adoption im Unternehmen beschleunigt.
Ergebnis: Ein Champion-Netzwerk-Handbuch im Canvas mit Rollen-Definition, monatlichem Format (Cross-Department AI Roundtable), geteiltem Prompt-Katalog und einem Eskalationspfad für departmentspezifische Bedarfe.
Fähigkeit: Chat / Canvas / Wissensordner / Konversations-Starter
Vorgehen:
1. Identifiziere in jedem relevanten Department einen Champion: dieselben Kriterien wie in S-LU-014 (aktivste Nutzer, Bereitschaft zur Wissensweitergabe, Führungskraft-Unterstützung).
2. Definiere die Netzwerk-Rollen: Marketing-Champion = Moderator und Wissens-Hub; Abteilungs-Champions = Übersetzer zwischen Team-Bedarf und Plattform-Fähigkeiten.
3. Etabliere ein monatliches 45-Minuten-Format: 15 Minuten Demo eines neuen Use-Cases, 20 Minuten Cross-Department-Problem-Solving, 10 Minuten Ankündigung neuer Features.
4. Lege einen gemeinsamen Wissensordner "Champion-Network-Resources" an: Prompt-Katalog aller Departments, Best-Practice-Protokolle, Onboarding-Materialien für neue Champions.
Prompt:
> "Du bist Organisationsentwicklungs-Expertin für KI-Transformation. Erstelle ein Handbuch für ein abteilungsübergreifendes KI-Champion-Netzwerk. Kontext: 5 Departments, je 1 Champion, monatlicher Roundtable, Langdock als gemeinsame Plattform. Format: Handbuch mit Rollen-Beschreibung, Meeting-Agenda-Template und Wissensordner-Struktur."
Artefakt: Ein Canvas-Handbuch mit Rollen-Definition, Meeting-Agenda-Template für den monatlichen Roundtable und einer dokumentierten Wissensordner-Struktur für das Netzwerk.
Fallstricke:
- Abteilungs-Champions werden nominiert, ohne dass ihre Führungskraft Zeit freigibt → Verbindliche Ressourcen-Zusage (2 Stunden/Monat) muss vor der Nominierung schriftlich vorliegen — dieselbe Bedingung wie in S-LU-014.
- Der gemeinsame Prompt-Katalog enthält sensible Marketing-Insights, die nicht alle Departments sehen sollen → Berechtigungsstruktur im Wissensordner vorab definieren: öffentliche Prompts vs. department-interne Prompts.
Anschluss: S-LU-048

### S-LU-048 KI-Ideation-Workshop für neue Marketing-Use-Cases moderieren

Trigger: Das Team hat die offensichtlichen Quick-Win-Use-Cases abgedeckt — aber der Vorrat an Ideen versiegt. Der nächste Schritt ist ein strukturierter Workshop, um verborgene Automatisierungspotenziale zu heben. (Quelle: A-07; A-39)
Ziel: Einen halbtägigen KI-Ideation-Workshop mit dem Marketing-Team durchführen, der systematisch neue Use-Cases generiert, nach Business-Impact priorisiert und direkt in das Agenten-Backlog überführt.
Ergebnis: Ein priorisiertes Use-Case-Backlog im Canvas mit 10–15 neuen Szenarien, bewertet nach Impact, Machbarkeit und Dringlichkeit (ICE-Score), mit je einem zugewiesenen Owner.
Fähigkeit: Chat / Canvas / Konversations-Starter
Vorgehen:
1. Eröffne den Workshop mit einem strukturierten "Pain-Point-Dump" im Chat: Jedes Teammitglied nennt drei wiederkehrende Aufgaben, die zeitintensiv, fehleranfällig oder inkonsistent sind — KI gibt eine erste Machbarkeitseinschätzung.
2. Führe den PTCF-Prompt aus, um jeden Pain-Point in einen Use-Case-Vorschlag zu überführen: Beschreibung, benötigte Langdock-Funktion, geschätzte Zeitersparnis.
3. Bewerte alle Vorschläge im Canvas nach ICE-Score (Impact 1–10, Confidence 1–10, Ease 1–10) und sortiere das Backlog absteigend nach Gesamt-Score.
4. Weise den Top-5-Use-Cases je einen Owner aus dem Champions-Netzwerk zu und setze ein 30-Tage-Implementierungsziel.
Prompt:
> "Du bist KI-Workshop-Moderatorin. Überführe die folgende Liste von Marketing-Pain-Points in priorisierte Langdock-Use-Cases. Kontext: B2B-Marketing-Team mit 15 Personen, Langdock seit 3 Monaten im Einsatz. Format: Tabelle mit Use-Case-Titel, Pain-Point, benötigter Langdock-Funktion, ICE-Score (Impact/Confidence/Ease) und vorgeschlagenem Owner."
Artefakt: Ein priorisiertes Use-Case-Backlog im Canvas mit 10–15 Szenarien, ICE-Scores, Owner-Zuweisung und einem 30-Tage-Implementierungsplan für die Top-5-Prioritäten.
Fallstricke:
- Alle Use-Cases landen im "Workflow-Automatisierung"-Bereich und ignorieren strategische Chat-Anwendungen → Workshop-Moderation muss explizit auch Formate wie Deep-Research, Canvas-Kollaboration und Agent-Beratung adressieren.
- ICE-Scores werden subjektiv vergeben und Lieblingsideen gewinnen → Ease-Score muss technisch validiert werden; Champion schätzt Implementierungsaufwand, nicht der Use-Case-Einreicher.
Anschluss: S-LU-049

### S-LU-049 Langdock-Feature-Request-Prozess strukturieren und an den Anbieter kommunizieren

Trigger: Das Team sammelt Feature-Wünsche per Slack-Kanal — aber es gibt keinen Prozess, der populäre Anfragen konsolidiert, priorisiert und strukturiert an den Langdock-Support kommuniziert. (Quelle: sources/12 Q-036; A-35)
Ziel: Einen internen Feature-Request-Prozess etablieren, der Nutzerfeedback systematisch erfasst, nach Häufigkeit und Business-Impact clustert und monatlich als konsolidiertes Dokument an den Anbieter übermittelt.
Ergebnis: Ein Feature-Request-Log-Template im Canvas mit Erfassungsformular, Cluster-Methodik und einem standardisierten Anbieter-Kommunikations-Template.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Richte im Canvas ein Feature-Request-Log mit Spalten an: Datum, Melder, Beschreibung, betroffene Funktion, Business-Impact (hoch/mittel/niedrig), Häufigkeit (wie viele Nutzer haben dasselbe gemeldet) und Status (offen/kommuniziert/umgesetzt).
2. Führe monatlich einen PTCF-Prompt aus: "Clustere alle offenen Feature-Requests nach Funktionsbereich und priorisiere nach Häufigkeit × Business-Impact — erstelle eine Top-5-Liste."
3. Verfasse mit dem Output ein einseitiges Anbieter-Kommunikations-Template: Top-5-Requests mit Use-Case-Kontext, geschätzter Nutzeranzahl und erwünschtem Umsetzungsdatum — und sende es an den zuständigen Customer-Success-Manager.
Prompt:
> "Du bist Product-Feedback-Managerin. Clustere die folgende Liste von 18 Feature-Requests für Langdock nach Funktionsbereich und Business-Impact. Kontext: 25 Marketing-Nutzer, häufigste Kategorien: Workflow-Erweiterungen, Agent-UI, Wissensordner-Performance. Format: Top-5-Priorisierungsliste mit Cluster-Name, Anzahl Meldungen, Impact-Begründung und vorgeschlagenem Kommunikations-Wording."
Artefakt: Ein strukturiertes Feature-Request-Log im Canvas plus ein fertiges Anbieter-Kommunikations-Dokument mit Top-5-Priorisierung, direkt versandbereit an den Langdock-Customer-Success-Manager.
Fallstricke:
- Feature-Requests werden als Produktversprechen missverstanden → Das Kommunikations-Template muss explizit formulieren: "Dies sind interne Nutzerwünsche, keine vertraglichen Anforderungen."
- Das Log wird nie aktualisiert, weil der Prozess zu aufwändig ist → Quartalsweise 30-minütige Log-Hygiene-Session im Champion-Netzwerk-Roundtable (S-LU-047) einplanen; nicht jeden Monat neu starten.
Anschluss: S-LU-050

### S-LU-050 Workspace-Backup- und Export-Strategie implementieren

Trigger: Die IT-Abteilung fragt nach einer Datensicherungsstrategie für Langdock — und niemand im Marketing-Team kann erklären, welche Daten wie exportiert werden können und wo die Grenzen liegen. (Quelle: A-03; S-LU-021)
Ziel: Eine dokumentierte Backup-Routine einrichten, die alle exportierbaren Langdock-Assets quartalsweise sichert und dabei klar zwischen portablen Daten (Quelldateien, Prompts) und nicht-portablen Daten (Embeddings, Chat-Historien) unterscheidet.
Ergebnis: Ein Backup-Protokoll im Wissensordner mit Exportcheckliste, Speicherort-Struktur (Git für Prompts, Cloud-Drive für Wissensordner-Dateien) und einem jährlichen Wiederherstellungs-Drill-Termin.
Fähigkeit: Workspace-Admin / Chat / Canvas / Wissensordner
Vorgehen:
1. Inventarisiere alle exportierbaren Langdock-Assets: System-Prompts (Markdown), Konversations-Starter-Texte (Markdown), Wissensordner-Quelldateien (Original-PDFs/DOCX), Workflow-Konfigurationen (JSON-Export falls verfügbar).
2. Definiere die Backup-Methodik pro Asset-Typ: System-Prompts und Konversations-Starter → Git-Repository (S-LU-043); Wissensordner-Quelldateien → Google Drive mit Versionierung; Workflow-Logik → Dokumentation im Canvas.
3. Etabliere einen quartalsweisen Backup-Rhythmus: Fester Termin im Teamkalender, 30 Minuten, Owner ist der Workspace-Admin; Backup-Protokoll im Wissensordner aktualisieren.
4. Plane einen jährlichen Wiederherstellungs-Drill: Stelle einen archivierten Agenten aus dem Backup wieder her und prüfe, ob er ohne Qualitätsverlust funktioniert.
Prompt:
> "Du bist IT-Risikomanagerin für SaaS-Plattformen. Erstelle eine Backup-Strategie für einen Langdock-Workspace mit 12 Agenten, 5 Wissensordnern und 35 Prompts. Kontext: Keine nativen Backup-Funktionen verfügbar; manuelle Exportroutine erforderlich. Format: Tabelle mit Asset-Typ, Exportmethode, Speicherort, Backup-Rhythmus und Wiederherstellungstest-Verfahren."
Artefakt: Ein Backup-Protokoll im Canvas mit Asset-Inventar, Export-Methodik pro Typ, Quartalsroutine und einem dokumentierten Wiederherstellungs-Drill-Verfahren.
Fallstricke:
- Embeddings werden als "gesichert" betrachtet, obwohl nur die Quelldateien portierbar sind → Im Backup-Protokoll explizit festhalten: Embeddings sind plattformspezifisch und müssen nach einer Migration neu generiert werden.
- Der Backup-Termin wird immer wieder verschoben → Backup-Aufgabe als wiederkehrendes Kalender-Event mit dem Workspace-Admin als Pflicht-Teilnehmer und dem CMO als eskalierender Empfänger bei Nicht-Durchführung.
Anschluss: S-LU-051

### S-LU-051 KI-gestützte Meeting-Moderation und Protokollierung einführen

Trigger: Strategie-Meetings dauern zu lang, Entscheidungen bleiben unklar und Protokolle werden oft erst Tage später fertiggestellt — oder gar nicht. Das Team verliert Follow-up-Disziplin. (Quelle: sources/10 S-008; A-39)
Ziel: Langdock als aktives Meeting-Moderationswerkzeug einsetzen: strukturierte Agenda-Generierung vor dem Meeting, Live-Protokollierung als Canvas-Dokument während des Meetings und automatische Action-Item-Extraktion danach.
Ergebnis: Ein Meeting-Moderation-Workflow-Template mit drei Komponenten: Pre-Meeting-Agenda-Agent, Live-Protokoll-Canvas-Template und Post-Meeting-Action-Item-Extraktor.
Fähigkeit: Agents / Canvas / Chat / Konversations-Starter
Vorgehen:
1. Konfiguriere einen Meeting-Prep-Agenten mit Konversations-Starter "Bereite die Agenda für dieses Meeting vor" — Input: Thema, Teilnehmer, Ziel, Dauer; Output: strukturierte Agenda mit Zeitblöcken und vorbereitenden Fragen.
2. Erstelle ein Live-Protokoll-Canvas-Template: Abschnitte für Entscheidungen (mit Datum und Entscheidungsträger), offene Fragen und Action Items (wer, was, bis wann).
3. Definiere den Post-Meeting-Konversations-Starter: "Extrahiere alle Action Items aus diesem Protokoll" → Output: nummerierte Liste mit Owner und Deadline, bereit für Slack-Versand.
4. Trainiere das Team in einem 20-minütigen Workshop auf das Format; der erste Champion moderiert das erste Live-Meeting mit dem neuen Prozess.
Prompt:
> "Du bist Meeting-Effizienz-Beraterin. Erstelle ein Langdock-Canvas-Template für strukturierte Marketing-Meetings. Kontext: Wöchentliches 60-Minuten-Team-Meeting, 8 Teilnehmer, häufige Nacharbeit durch fehlende Protokolle. Format: Canvas-Template mit Abschnitten Agenda (mit Zeitblöcken), Entscheidungen (Tabelle), Action Items (wer/was/bis wann) und offenen Fragen."
Artefakt: Ein Canvas-Meeting-Template mit drei Abschnitten plus ein fertiger System-Prompt für den Meeting-Prep-Agenten und ein Post-Meeting-Konversations-Starter.
Fallstricke:
- Das Canvas-Protokoll wird live nicht gepflegt, weil alle im Meeting-Fluss sind → Dedizierte Protokollantin für jedes Meeting festlegen; rotierend, 10-Minuten-Nachbearbeitung ist Pflichtbestandteil der Meeting-Kultur.
- Action-Item-Extraktion übersieht implizite Zusagen ("ich schaue das mal an") → Im Konversations-Starter explizit: "Markiere auch implizite Zusagen als Action Items und frage nach Owner und Deadline."
Anschluss: S-LU-052

### S-LU-052 Langdock als Wissensmanagement-Layer für das Marketing-Team etablieren

Trigger: Wissen über Kampagnen-Learnings, Brand-Entscheidungen und Agentur-Briefings ist über E-Mail, Google Drive, Confluence und Slack verstreut — neue Mitarbeitende finden wichtige Informationen nicht und wiederholen Fehler der Vergangenheit. (Quelle: sources/12 Q-038; A-35)
Ziel: Langdock als zentrale Wissensmanagement-Schicht einsetzen, die strukturierte Wissensordner mit einem Retrieval-Agenten verbindet — sodass das Team Fragen an die eigene Wissenshistorie stellen kann statt endlos zu suchen.
Ergebnis: Eine dreistufige Wissensarchitektur im Canvas: Tier 1 (immer aktuell: Brand-Dokumente), Tier 2 (quartalsweise aktualisiert: Kampagnen-Learnings), Tier 3 (archiviert: abgeschlossene Projekte) — plus ein "Ask-the-Archive"-Agent.
Fähigkeit: Wissensordner / Agents / Canvas / Konversations-Starter
Vorgehen:
1. Definiere die Wissensarchitektur: Tier-1-Ordner (Brand, Personas, Tone-of-Voice — Owner: CMO, Update-Rhythmus: bei Änderung), Tier-2-Ordner (Kampagnen-Retros, Agentur-Briefings — Owner: Team-Leads, Update-Rhythmus: quartalsweise), Tier-3-Ordner (archivierte Projekte — schreibgeschützt, read-only).
2. Migriere die wichtigsten Dokumente aus Google Drive und Confluence in die jeweiligen Tier-Ordner; lege klare Namenskonventionen (S-LU-018) fest.
3. Konfiguriere den "Ask-the-Archive"-Agenten: System-Prompt "Du beantwortest Fragen aus dem Marketing-Wissensarchiv und gibst immer die Quell-Datei an"; Konversations-Starter "Was haben wir beim letzten LinkedIn-Kampagnen-Launch gelernt?"
4. Kommuniziere im Team: Neue Kampagnen-Learnings werden ab sofort als 1-seitige Retro-Datei im Tier-2-Ordner abgelegt — nicht mehr als Slack-Thread.
Prompt:
> "Du bist Wissensmanagement-Architektin. Entwickle eine dreistufige Wissensordner-Architektur für ein 15-köpfiges Marketing-Team in Langdock. Kontext: Aktuell 300 Dokumente verstreut auf Google Drive und Confluence; Ziel: retrieval-fähige Wissensbasis mit klarem Update-Rhythmus. Format: Tabelle mit Tier, Inhaltstyp, Owner, Update-Rhythmus und Zugriffsregel."
Artefakt: Eine dreistufige Wissensarchitektur-Tabelle im Canvas, ein System-Prompt für den "Ask-the-Archive"-Agenten und eine Migrations-Checkliste für die wichtigsten 50 Dokumente.
Fallstricke:
- Tier-3-Archivordner wächst unkontrolliert auf über 1.000 Dateien und beeinträchtigt die Retrieval-Qualität → Archivordner quartalsweise auf maximal 200 Dateien begrenzen; ältere Dateien in ein externes Drive auslagern.
- Das Team nutzt den Agenten nicht, weil sie ihn nicht kennen → Onboarding-Konversations-Starter ist Pflichtbestandteil des 14-Tage-Onboarding-Plans (S-LU-041).
Anschluss: S-LU-053

### S-LU-053 KI-Reife-Assessment für das Marketing-Team durchführen

Trigger: Vor einer neuen Investitionsrunde in KI-Tools oder vor dem Aufsetzen eines neuen Langdock-Piloten fragt das Management: "Wo stehen wir eigentlich im Vergleich zu Best Practice — und wo sind unsere größten Lücken?" (Quelle: A-04; A-10; sources/12 Q-004)
Ziel: Einen strukturierten KI-Reife-Assessment-Prozess einführen, der die aktuelle Nutzungsreife in fünf Dimensionen bewertet und einen priorisierten Entwicklungsplan ableitet.
Ergebnis: Ein Reife-Assessment-Report im Canvas mit Scoring in fünf Dimensionen (Strategie, Tooling, Kompetenz, Governance, Output-Qualität), Benchmark-Vergleich und einem 90-Tage-Entwicklungsplan.
Fähigkeit: Chat / Canvas / Deep Research
Vorgehen:
1. Definiere die fünf Assessment-Dimensionen: (1) KI-Strategie & Vision, (2) Tool-Integration & Infrastruktur, (3) Team-Kompetenz & Adoption, (4) Governance & Compliance, (5) messbare Output-Qualität.
2. Bewerte jede Dimension auf einer 1–5-Skala: (1) nicht vorhanden, (3) selektiv implementiert, (5) systematisch und messbar; nutze konkrete Evidenz aus dem Workspace (Nutzungsdaten, Governance-Dokumente, Canary-Check-Protokolle).
3. Aktiviere den Deep Research Modus, um den aktuellen KI-Reife-Benchmark für Marketing-Teams im B2B-SaaS-Segment zu recherchieren; identifiziere die drei größten Lücken zum Best Practice.
4. Erstelle den 90-Tage-Entwicklungsplan: Top-3-Maßnahmen pro Lücke, Owner, KPI und Checkpoint-Datum.
Prompt:
> "Du bist KI-Strategie-Beraterin für B2B-Marketing-Teams. Erstelle ein KI-Reife-Assessment-Framework in fünf Dimensionen. Kontext: Marketing-Team mit 6 Monaten Langdock-Erfahrung, 12 Personen, 8 aktive Agenten, Governance-Dokument vorhanden. Format: Bewertungsmatrix mit Dimension, Score (1–5), Evidenz, Lücke zum Best Practice und Top-Maßnahme."
Artefakt: Ein Reife-Assessment-Report im Canvas mit Bewertungsmatrix (5 Dimensionen × Score), Benchmark-Vergleich und einem priorisierten 90-Tage-Entwicklungsplan.
Fallstricke:
- Das Assessment wird zu positiv, weil das Team die eigene Arbeit bewertet → Mindestens einen externen Champion (aus S-LU-047) oder einen Langdock-Customer-Success-Manager als neutrale Perspektive einbinden.
- Das Assessment endet ohne Konsequenzen → 90-Tage-Entwicklungsplan muss innerhalb von 7 Tagen nach dem Assessment finalisiert und vom CMO freigegeben sein; sonst verliert es seine Steuerungswirkung.
Anschluss: S-LU-054

### S-LU-054 Langdock-Onboarding für externe Agenturen und Freelancer strukturieren

Trigger: Externe Texter, Designer und Agenturen sollen auf Langdock-Agenten und Wissensordner zugreifen — aber es gibt keinen sicheren, strukturierten Onboarding-Prozess für externe Nutzer. (Quelle: A-06; sources/12 Q-042; sources/10 S-002)
Ziel: Einen sicheren, effizienten Onboarding-Prozess für externe Partner entwickeln, der Zugriffsrechte klar regelt, nur relevante Wissensordner freigibt und externe Nutzer in maximal zwei Stunden produktionsfähig macht.
Ergebnis: Ein externes Onboarding-Kit im Canvas: Zugriffsrechte-Matrix, ein schreibgeschützter Onboarding-Agent für externe Nutzer und ein 2-Stunden-Schnell-Einstiegs-Guide.
Fähigkeit: Agents / Wissensordner / Canvas / Konversations-Starter
Vorgehen:
1. Definiere die Zugriffsrechte-Matrix: Externe Nutzer erhalten Lese-Zugriff auf freigegebene Wissensordner (Brand-Guide, aktuelle Kampagnenbriefings), können aber keine Agenten konfigurieren oder Wissensordner bearbeiten.
2. Konfiguriere einen dedizierten "External Partner Agent": System-Prompt mit expliziten Grenzen ("Du kannst nur auf die freigegebenen Ordner zugreifen"), Konversations-Starter für die häufigsten externen Aufgaben (Brand-Voice-Check, Briefing-Frage, Asset-Format-Anfrage).
3. Erstelle den 2-Stunden-Schnell-Einstiegs-Guide im Canvas: Schritt 1 Account-Aktivierung, Schritt 2 die drei wichtigsten Agenten kennenlernen, Schritt 3 erste echte Aufgabe mit dem Brand-Voice-Agenten erledigen.
4. Definiere den Offboarding-Prozess: Zugriffsentzug nach Projektende, Audit welche Daten der externe Nutzer gesehen hat.
Prompt:
> "Du bist IT-Security-Beraterin für kollaborative KI-Plattformen. Erstelle eine Zugriffsrechte-Matrix für externe Agentur-Mitarbeitende in Langdock. Kontext: 3 externe Nutzer, Zugriff auf Brand-Guide und aktuelle Briefings, kein Zugriff auf CRM-Daten oder interne Analysen. Format: Tabelle mit Nutzer-Typ, freigegebene Wissensordner, erlaubte Aktionen, verbotene Aktionen und Offboarding-Prozess."
Artefakt: Eine Zugriffsrechte-Matrix im Canvas, ein konfigurierter External-Partner-Agent und ein 2-Stunden-Onboarding-Guide für externe Partner.
Fallstricke:
- Externe Nutzer erhalten versehentlich Zugriff auf interne Governance-Dokumente oder CRM-verknüpfte Wissensordner → Separate Wissensordner-Struktur für externe Partner anlegen; nie denselben Ordner intern und extern freigeben.
- Externer Nutzer verlässt die Agentur, der Zugang bleibt aktiv → Offboarding-Prozess mit Ablaufdatum bei Projektvergabe als Standard festlegen; Workspace-Admin prüft monatlich aktive externe Zugänge.
Anschluss: S-LU-055

### S-LU-055 Multi-Workspace-Governance für größere Marketing-Organisationen aufbauen

Trigger: Das Unternehmen hat mehrere Business-Units oder Regionen, jede mit einem eigenen Langdock-Workspace — und es gibt keine übergreifenden Standards für Agenten-Konfiguration, Prompt-Qualität oder Sicherheitsrichtlinien. (Quelle: A-35; A-36; sources/12 Q-036)
Ziel: Ein Multi-Workspace-Governance-Modell einführen, das gemeinsame Standards definiert, ohne die Autonomie der einzelnen Teams zu beschneiden — nach dem Prinzip "Global Standards, Local Execution".
Ergebnis: Ein Multi-Workspace-Governance-Rahmen im Canvas mit drei Schichten: zwingende Standards (Sicherheit, DSGVO, Brand), empfohlene Richtlinien (Prompt-Qualität, Namenskonventionen) und freie lokale Entscheidungen.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Inventarisiere alle bestehenden Workspaces: Teams, Nutzeranzahl, aktive Agenten, Wissensordner, aktuelle Governance-Stand.
2. Definiere die drei Governance-Schichten: Schicht 1 (zwingend) — DSGVO-Konformität, Brand-Voice-Standard-Agent, Budget-Eskalationsplan; Schicht 2 (empfohlen) — Namenskonventionen, RACI-Modell, Canary-Check-Prozess; Schicht 3 (lokal frei) — spezifische Agenten, Workflow-Logik, Prompt-Katalog.
3. Etabliere einen Cross-Workspace-Champions-Roundtable (quartalsweise, 60 Minuten): Workspace-Admins aller Business-Units tauschen Best Practices aus und koordinieren Schicht-1-Updates.
4. Erstelle einen zentralen "Governance-Hub"-Wissensordner, der für alle Workspaces lesbar ist: zwingende Standards, aktuelle Compliance-Dokumente, Änderungsprotokoll.
Prompt:
> "Du bist Enterprise-KI-Governance-Beraterin. Entwickle ein Multi-Workspace-Governance-Modell für 4 Langdock-Workspaces in verschiedenen Business-Units. Kontext: DACH-Region, unterschiedliche Team-Größen (8–30 Nutzer), gemeinsame Brand-Standards aber unterschiedliche Use-Cases. Format: Drei-Schichten-Modell mit zwingenden Standards, Empfehlungen und lokalen Freiheiten — als Tabelle mit Maßnahme, Schicht, Verantwortlichkeit und Durchsetzungs-Mechanismus."
Artefakt: Ein Multi-Workspace-Governance-Dokument im Canvas mit Drei-Schichten-Modell, einem Governance-Hub-Wissensordner-Plan und einer Quartals-Roundtable-Agenda-Vorlage.
Fallstricke:
- Zwingende Standards werden von lokalen Teams als Bevormundung empfunden und ignoriert → Co-Creation der Schicht-1-Standards mit je einem Vertreter pro Business-Unit; keine Standards ohne lokalen Input.
- Der Governance-Hub-Wissensordner veraltet, weil keine klare Ownership → CMO oder Head of Marketing Ops ist Owner; Änderungen an Schicht-1-Standards erfordern explizite Freigabe und Update-Protokoll im Hub.
Anschluss: S-LU-056

### S-LU-056 KI-Content-Kennzeichnungsstrategie teamweit umsetzen

Trigger: Nach der Erstellung der Disclosure-Strategie (S-LU-039) muss das Team nun operativ sicherstellen, dass alle mit KI produzierten Assets konsistent und korrekt gekennzeichnet werden — ohne dabei jeden Mitarbeitenden manuell zu kontrollieren. (Quelle: A-09; A-19; A-50)
Ziel: Die KI-Content-Kennzeichnung von einer Richtlinie in eine automatische, im Produktionsprozess verankerte Praxis überführen — so dass Kennzeichnung kein Extra-Schritt ist, sondern im Workflow eingebaut.
Ergebnis: Ein Kennzeichnungs-Workflow mit drei Komponenten: automatisches Labeling-Flag in jedem KI-Output-Agenten, eine Freigabe-Checkliste mit Kennzeichnungs-Pflichtfeld und ein monatliches Stichproben-Audit.
Fähigkeit: Agents / Workflows / Canvas / Wissensordner
Vorgehen:
1. Ergänze jeden Content-Agenten mit einer Standard-Ausgabe-Zeile im System-Prompt: "Füge am Ende jedes Outputs einen Disclosure-Hinweis ein: '[KI-assistiert, redaktionell geprüft]' — sofern der Content für externe Kanäle bestimmt ist."
2. Integriere ein Kennzeichnungs-Pflichtfeld in die Content-Freigabe-Checkliste (S-LU-040): Kein Asset geht live ohne ausgefülltes Feld "KI-Anteil: voll generiert / assistiert / nicht genutzt" und "Disclosure angewendet: Ja/Nein".
3. Baue einen monatlichen Stichproben-Audit-Workflow: Ziehe 10 zufällige veröffentlichte Assets aus dem CMS und prüfe via Agent, ob Disclosure korrekt angewendet wurde — Abweichungen werden direkt an den Asset-Owner kommuniziert.
4. Dokumentiere das Kennzeichnungs-Setup im Governance-Wissensordner als Nachweis für eventuelle Compliance-Prüfungen.
Prompt:
> "Du bist Compliance-Managerin für KI-Content-Produktion. Erstelle einen operativen Kennzeichnungs-Workflow für ein 15-köpfiges Marketing-Team, das täglich KI-Inhalte produziert. Kontext: EU AI Act Art. 50 relevant, Produktion von Blogs, Social Posts und Newslettern. Format: Prozess-Checkliste mit Schritten, Verantwortlichkeiten, Tool-Integration und Audit-Mechanismus."
Artefakt: Ein Kennzeichnungs-Workflow-Dokument im Canvas mit Agent-System-Prompt-Ergänzung, Freigabe-Checkliste und Audit-Prozess-Beschreibung.
Fallstricke:
- Die Disclosure-Zeile im Agent-Output wird vom Redakteur beim Copy-Paste-Schritt gelöscht, ohne es zu bemerken → Disclosure als Pflichtfeld im CMS-Upload-Formular einrichten — unabhängig von der Langdock-Integration.
- Stichproben-Audit ohne klare Konsequenz bei Nicht-Einhaltung ist zahnlos → Im Governance-Dokument definieren: Erster Verstoß = Erinnerung, zweiter Verstoß = Eskalation an Teamlead, dritter Verstoß = Compliance-Review.
Anschluss: S-LU-057

### S-LU-057 Langdock in den bestehenden Martech-Stack integrieren

Trigger: Das Marketing-Team nutzt HubSpot, Google Analytics, Slack und Canva parallel zu Langdock — aber die Werkzeuge sind nicht verbunden, sodass KI-Outputs immer manuell in die anderen Systeme übertragen werden müssen. (Quelle: sources/12 Q-117; sources/10 S-002)
Ziel: Langdock als KI-Schicht in den bestehenden Martech-Stack einbetten — mindestens drei automatisierte Verbindungspunkte schaffen, die manuelle Übertragunsschritte eliminieren.
Ergebnis: Eine Martech-Integrations-Karte im Canvas mit drei implementierten Workflows (HubSpot → Langdock → HubSpot, Google Analytics → Langdock → Slack, CMS → Langdock → Freigabe-Workflow) und einer Priorisierung weiterer Integrations-Kandidaten.
Fähigkeit: Workflows / Integrations / Canvas / Agents
Vorgehen:
1. Kartiere den aktuellen Martech-Stack: Welche Tools werden täglich genutzt? Wo entstehen manuelle Übergabeschritte zwischen Langdock und anderen Systemen (z. B. Langdock-Output → manuell in HubSpot)?
2. Priorisiere die drei vielversprechendsten Integrationspunkte nach Zeitersparnis und technischer Machbarkeit; nutze die native Langdock-Integrations-Liste (55+ native Integrationen, rund 754 Actions; exakte Zahl nicht offiziell dokumentiert) als Ausgangspunkt.
3. Baue Workflow 1 (Quick Win): Wenn HubSpot ein neues Lead-Formular-Submission erhält → Langdock generiert automatisch eine personalisierte Follow-up-E-Mail → zurück in HubSpot als Draft.
4. Dokumentiere alle Integrationen im Canvas als Martech-Stack-Karte: Tool, Verbindungstyp (native/MCP/Webhook), Trigger, Langdock-Aktion, Output-Ziel, Owner und Wartungsaufwand.
Prompt:
> "Du bist Martech-Integrationsarchitektin. Entwickle eine Integrations-Strategie für Langdock in einem Marketing-Stack mit HubSpot, Google Analytics und Slack. Kontext: Aktuell alle Übergaben manuell, Team will Automatisierung ohne IT-Ressourcen. Format: Integrations-Karte mit Tool-Kombination, Trigger, Langdock-Funktion, Output-Ziel, geschätzter Zeitersparnis/Monat und Implementierungsaufwand (h)."
Artefakt: Eine Martech-Integrations-Karte im Canvas mit drei implementierten Verbindungen, Priorisierungsliste für weitere Integrationen und einer Wartungs-RACI-Tabelle.
Fallstricke:
- Native HubSpot-Integration überträgt sensible Kontaktdaten nach Langdock → DSGVO-Prüfung (S-LU-031) vor jeder CRM-Integration zwingend; nur anonymisierte oder aggregierte Daten in KI-Layer übertragen.
- Workflow-Automatisierung bricht bei API-Änderungen des Tool-Anbieters → Monatlichen Integration-Health-Check in den Governance-Review (S-LU-025) aufnehmen; bei Bruch des Workflows wird sofort der Workflow-Owner benachrichtigt.
Anschluss: S-LU-058

### S-LU-058 KI-Strategie-Präsentation für das Board vorbereiten

Trigger: Die Geschäftsführung hat KI als strategische Priorität ausgerufen und der CMO soll im nächsten Board-Meeting eine KI-Strategie-Präsentation halten — aber es gibt noch keine konsolidierte Darstellung. (Quelle: A-10; A-01; sources/12 Q-004)
Ziel: Eine überzeugende, datengestützte KI-Strategie-Präsentation für das Board entwickeln, die Ist-Zustand, Potenzial, Investitionsbedarf und ROI-Projektion in einem kohärenten Narrativ verbindet.
Ergebnis: Ein Board-Ready-Präsentations-Deck im Canvas (10–12 Slides) mit sechs Kernbotschaften: Ist-Zustand, strategische Vision, Quick Wins (realisiert), nächste Investitionen, Risiken und Governance.
Fähigkeit: Chat / Canvas / Data Analyst / Deep Research
Vorgehen:
1. Sammle alle relevanten Datenpunkte im Chat: Adoption-Rate (S-LU-046), ROI-KPIs (S-LU-012), Reife-Assessment-Score (S-LU-053), Pipeline-Attribution (S-LU-040) und CO₂-Fußabdruck (S-LU-044).
2. Aktiviere den Deep Research Modus für den Markt-Kontext: Wie hoch ist die KI-Adoptionsrate im B2B-Marketing-Segment? Was investieren vergleichbare Unternehmen? Welche regulatorischen Entwicklungen sind relevant?
3. Entwickle das Deck-Narrativ im Canvas: Folie 1 (Executive Summary), Folien 2–4 (Ist-Zustand + Quick Wins mit Daten), Folien 5–7 (strategische Vision + nächste Schritte + Investitionsbedarf), Folien 8–10 (Risiken + Governance + ROI-Projektion), Folien 11–12 (Entscheidungsaufruf + Anhang).
4. Teste die Präsentation mit dem Steel-Manning-Test (S-LU-002): "Was ist das stärkste Gegenargument gegen diese KI-Investition?" — und baue die Antwort in Folie 8 ein.
Prompt:
> "Du bist Board-Kommunikations-Expertin für digitale Transformation. Erstelle eine Gliederung für eine 20-minütige KI-Strategie-Präsentation für das Board. Kontext: CMO präsentiert nach 6 Monaten KI-Pilot im Marketing; Board will Investitionsgrundlage für den Vollrollout. Format: Slide-Struktur mit Folientitel, Kernbotschaft (1 Satz), empfohlene Visualisierung und wichtigste Daten-/Quellenangabe pro Folie."
Artefakt: Eine 10–12-Slide-Präsentationsgliederung im Canvas mit Folientitel, Kernbotschaft, Visualisierungsempfehlung und Datenquellen — bereit für die Umsetzung in PowerPoint oder Google Slides.
Fallstricke:
- Die Präsentation enthält zu viele operative Details und verliert das Board → Faustregel: Pro Folie eine Kernbotschaft, maximal drei Datenpunkte; alles andere in den Anhang.
- ROI-Projektion basiert auf zu optimistischen Annahmen und verliert Glaubwürdigkeit → Projiziere konservativ (unteres Drittel der realistischen Bandbreite) und kommuniziere die Annahmen transparent auf der Folie.
Anschluss: S-LU-059

### S-LU-059 Kontinuierlicher Verbesserungskreislauf für KI-Prozesse einrichten

Trigger: Langdock ist im Einsatz und die erste Aufbauphase ist abgeschlossen — aber es gibt keinen systematischen Prozess, der sicherstellt, dass Agenten, Prompts und Workflows kontinuierlich verbessert werden statt zu veralten. (Quelle: A-34; A-33; A-39)
Ziel: Einen strukturierten Continuous-Improvement-Loop für alle KI-Prozesse etablieren, der monatliche Feedback-Sammlung, quartalsweises Review und jährliche Strategie-Neubewertung verbindet.
Ergebnis: Ein CI-Prozess-Dokument im Canvas mit drei Zyklen (monatlich: Canary-Checks + Nutzungs-Feedback; quartalsweise: Governance-Review + Backlog-Priorisierung; jährlich: Reife-Assessment + Board-Update) und klaren Ownership-Zuweisungen.
Fähigkeit: Chat / Canvas / Agents / Wissensordner
Vorgehen:
1. Definiere die drei CI-Zyklen mit Aktivitäten: Monatszyklus (Canary-Checks S-LU-033, Adoptions-Dashboard S-LU-046, Feature-Request-Clustering S-LU-049), Quartalszyklus (Governance-Review S-LU-025, Use-Case-Backlog-Priorisierung S-LU-048, Wissensordner-Hygiene S-LU-018), Jahreszyklus (Reife-Assessment S-LU-053, Board-Präsentation S-LU-058, Wechsel-Drill S-LU-050).
2. Erstelle für jeden Zyklus eine Aktivitätscheckliste mit Dauer, Owner und Output-Artefakt; integriere alle Termine in den Teamkalender als Wiederkehrende Events.
3. Konfiguriere einen CI-Loop-Agenten als Moderation-Unterstützung: Konversations-Starter "Erstelle die Agenda für unseren monatlichen KI-Review" → Output: vorausgefüllte Meeting-Agenda mit Datenpunkten aus dem letzten Zyklus.
4. Verankere die CI-Philosophie im Team-Onboarding (S-LU-041): Neue Mitarbeitende lernen ab Tag 7, wie sie Verbesserungsvorschläge einreichen.
Prompt:
> "Du bist Prozess-Exzellenz-Beraterin mit KI-Fokus. Erstelle einen Continuous-Improvement-Loop für KI-Prozesse in einem Marketing-Team. Kontext: 15 Personen, Langdock seit 6 Monaten, Champions-Programm aktiv. Format: Drei-Zyklen-Tabelle (monatlich/quartalsweise/jährlich) mit Aktivität, Dauer, Owner, Input-Artefakt und Output-Artefakt."
Artefakt: Ein CI-Prozess-Dokument im Canvas mit Drei-Zyklen-Tabelle, Wiederkehrenden-Termin-Liste und einem CI-Loop-Agenten-System-Prompt.
Fallstricke:
- Der monatliche Zyklus wird im operativen Stress übersprungen → Monatszyklus auf maximal 60 Minuten begrenzen; wenn es länger dauert, wird das Format sofort vereinfacht — nicht der Termin gestrichen.
- Die jährliche Strategie-Neubewertung findet statt, aber keine Konsequenzen werden gezogen → Das Reife-Assessment (S-LU-053) schreibt vor, dass innerhalb von 14 Tagen ein aktualisierter 90-Tage-Plan vorliegen muss.
Anschluss: S-LU-060

### S-LU-060 Community of Practice für Marketing-KI aufbauen und verstetigen

Trigger: Das interne Champion-Netzwerk (S-LU-047) funktioniert gut, aber das Team wünscht sich mehr Austausch mit anderen Marketing-Teams, die ähnliche Herausforderungen mit KI haben — über Unternehmensgrenzen hinaus. (Quelle: A-39; A-07; A-48)
Ziel: Eine nachhaltige Community of Practice für Marketing-KI aufbauen, die internen Wissenstransfer mit externem Austausch verbindet und das Team als Thought Leader im DACH-KI-Marketing-Ökosystem positioniert.
Ergebnis: Ein Community-of-Practice-Konzept im Canvas mit drei Formaten (internem monatlichem Showcase, halbjährlichem externem Event, Public-Content-Beitrag), Governance-Regeln und einem ersten Jahresplan.
Fähigkeit: Chat / Canvas / Deep Research / Agents
Vorgehen:
1. Definiere die drei Community-Formate: (1) Interner monatlicher Showcase — 30 Minuten, ein Use-Case-Demo, offen für alle Langdock-Nutzer im Unternehmen; (2) Halbjährliches externes Event — 2 Stunden, 2–3 externe Referenten aus anderen DACH-Unternehmen, kein Sales-Pitch; (3) Public-Content-Beitrag — quartalsweise einen anonymisierten Use-Case als LinkedIn-Post oder Blog-Artikel publizieren.
2. Aktiviere den Deep Research Modus: Welche bestehenden KI-Marketing-Communities gibt es im DACH-Raum (Slack-Groups, LinkedIn-Gruppen, Verbände)? Identifiziere Kooperationspartner für das externe Event.
3. Erstelle den ersten Jahresplan im Canvas: 12 interne Showcases, 2 externe Events, 4 Public-Content-Beiträge — mit Themenvorschlägen, die auf dem Use-Case-Backlog (S-LU-048) basieren.
4. Konfiguriere einen Community-Content-Agenten: System-Prompt "Du hilfst dabei, interne Use-Cases für die externe Kommunikation zu anonymisieren und publikationsreif aufzubereiten"; Konversations-Starter "Bereite diesen internen Use-Case als LinkedIn-Artikel auf."
Prompt:
> "Du bist Community-Building-Expertin für Technologie-Ökosysteme. Entwickle ein Community-of-Practice-Konzept für Marketing-KI im DACH-Raum. Kontext: Ausgangspunkt ist ein internes Champion-Netzwerk mit 6 Personen; Ziel ist schrittweise Öffnung nach außen. Format: Konzept mit drei Community-Formaten, Governance-Regeln (wer darf was teilen), erstem Jahresplan und KPIs für Community-Erfolg."
Artefakt: Ein Community-of-Practice-Konzept im Canvas mit drei Formaten, Governance-Regeln, Jahresplan und einem System-Prompt für den Community-Content-Agenten.
Fallstricke:
- Externe Teilnehmende erwarten Exklusivwissen und sind enttäuscht von zu allgemeinen Inhalten → Jedes externe Event braucht mindestens einen konkreten, anonymisierten Praxisfall mit echten Zahlen — keine reinen Tool-Demos.
- Public-Content-Beiträge enthalten versehentlich sensible Business-Daten → Jeder externe Content-Beitrag muss den Community-Content-Agenten zur Anonymisierung durchlaufen und dann von der Rechtsabteilung (10 Minuten Durchsicht) freigegeben werden.
Anschluss: S-LU-061

### S-LU-061 Workspace-ROI-Dashboard für das vierteljährliche Leitungs-Review bauen

Trigger: Die Geschäftsführung will den Langdock-Wertbeitrag nicht mehr in Einzel-Slides, sondern in einem stehenden, vierteljährlich aktualisierten ROI-Dashboard sehen, das auf einen Blick Nutzung, Kosten und Ersparnis zusammenführt. (Quelle: A-10; sources/12 Q-122)
Ziel: Ein wiederverwendbares ROI-Dashboard etablieren, das die wichtigsten Wert- und Kostenkennzahlen bündelt und die Quartals-Diskussion von Anekdoten auf Daten umstellt.
Ergebnis: Ein Canvas-Dashboard-Template mit vier Kacheln (Gesamtnutzung, Kosten pro Asset, eingesparte Stunden, Top-3-Werttreiber) und einem Quartals-Vergleich.
Fähigkeit: Data Analyst / Canvas / Workspace-Admin
Vorgehen:
1. Exportiere die Quartals-Nutzungsdaten aus dem Workspace-Admin (Token, Agent-Runs, aktive Nutzer, Workflow-Läufe) als CSV.
2. Lade die CSV in den Data Analyst und berechne die vier Dashboard-Kennzahlen plus den Vergleich zum Vorquartal.
3. Überführe die Ergebnisse in ein Canvas-Kachel-Layout und ergänze pro Kachel eine 1-Satz-Interpretation für die Leitung.
4. Speichere das Layout als Template, das im Folgequartal nur neue Zahlen erfordert; verlinke es im Governance-Wissensordner.
Prompt:
> "Du bist KI-Transformations-Controllerin. Baue aus der angehängten Quartals-CSV ein ROI-Dashboard für die Geschäftsführung. Kontext: 15 Nutzer, Stundensatz 85 Euro, Langdock-Quartalskosten 1.450 Euro. Format: Vier-Kachel-Layout (Gesamtnutzung, Kosten pro Asset, eingesparte Stunden, Top-3-Werttreiber) mit Vorquartals-Delta und je einem Interpretations-Satz."
Artefakt: Ein Canvas-ROI-Dashboard-Template mit vier Kacheln, Quartals-Delta und Interpretations-Sätzen, direkt im Leitungs-Review präsentierbar.
Fallstricke:
- Eingesparte Stunden werden als reine Drafting-Zeit gerechnet, ohne Review-Aufwand abzuziehen → Im Data-Analyst-Prompt explizit Netto-Ersparnis (Drafting minus Review) anfordern, sonst wirkt das Dashboard unglaubwürdig.
- Das Dashboard wird einmal gebaut und dann nicht gepflegt → Quartals-Aktualisierung als wiederkehrenden 30-Minuten-Kalendertermin mit dem Workspace-Admin als Owner verankern.
Anschluss: S-LU-062

### S-LU-062 Executive-KI-Reporting-Kadenz festlegen statt Ad-hoc-Updates

Trigger: Das CMO liefert KI-Updates immer dann, wenn jemand danach fragt — mal als E-Mail, mal als Slide, mal mündlich. Es fehlt eine verlässliche Berichts-Kadenz, die die Leitung kalibriert. (Quelle: A-10; A-01)
Ziel: Eine klare Reporting-Kadenz (monatlich/quartalsweise/jährlich) mit definierten Empfängern, Formaten und Kennzahlen festlegen, damit KI-Berichterstattung planbar und vergleichbar wird.
Ergebnis: Ein Reporting-Kadenz-Plan im Canvas mit drei Ebenen (Monats-Snapshot, Quartals-Review, Jahres-Strategie-Update), je Empfängerkreis, Format und Pflicht-Kennzahlen.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Liste im Chat alle aktuellen KI-Berichtsanlässe und ihre Empfänger auf (Team, CMO, Board, Finance).
2. Ordne jeden Anlass einer der drei Kadenz-Ebenen zu und definiere pro Ebene das Format (1-Pager / Slide-Set / Deck) und die Pflicht-Kennzahlen.
3. Lege Verantwortliche und feste Termine fest (z.B. Monats-Snapshot am 3. Werktag, Quartals-Review in KW-Schluss-Woche).
4. Dokumentiere den Plan im Governance-Wissensordner und verteile ihn als verbindlichen Reporting-Standard.
Prompt:
> "Du bist Executive-Communications-Beraterin. Entwirf eine KI-Reporting-Kadenz für ein Marketing-Team mit CMO und Board. Kontext: Aktuell unregelmäßige Ad-hoc-Updates; gewünscht sind planbare Berichtsrhythmen. Format: Tabelle mit Kadenz-Ebene, Empfängerkreis, Format, Pflicht-Kennzahlen, Verantwortlicher und festem Termin."
Artefakt: Ein Reporting-Kadenz-Plan im Canvas mit drei Ebenen, Empfängern, Formaten, Kennzahlen und festen Terminen.
Fallstricke:
- Die Kadenz erzeugt mehr Reporting-Aufwand als Erkenntnis → Pro Ebene maximal drei Pflicht-Kennzahlen; alles andere nur auf Nachfrage als Anhang.
- Monats- und Quartalsbericht zeigen inkonsistente Zahlen, weil Datenquellen abweichen → Eine einzige Datenquelle (Workspace-Admin-Export) für alle Ebenen festschreiben; abweichende manuelle Schätzungen sind verboten.
Anschluss: S-LU-063

### S-LU-063 Cross-Team-Adoptions-Playbook für Nicht-Marketing-Abteilungen erstellen

Trigger: Nach erfolgreicher Marketing-Adoption wollen Sales, HR und Produkt Langdock ebenfalls nutzen — aber jede Abteilung beginnt bei null und wiederholt die Fehler, die Marketing längst gelöst hat. (Quelle: sources/12 Q-136; A-37)
Ziel: Die Marketing-Lernkurve in ein übertragbares Adoptions-Playbook gießen, das jede neue Abteilung in einem strukturierten, wiederholbaren Pfad schnell produktiv macht.
Ergebnis: Ein Cross-Team-Adoptions-Playbook im Canvas mit fünf Phasen (Use-Case-Findung, Quick-Win-Agent, Onboarding, Messung, Skalierung) und abteilungsspezifischen Anpassungshinweisen.
Fähigkeit: Chat / Canvas / Wissensordner / Konversations-Starter
Vorgehen:
1. Extrahiere aus der Marketing-Adoption die übertragbaren Schritte und die abteilungsspezifischen (nicht übertragbaren) Schritte.
2. Strukturiere das Playbook in fünf Phasen mit je einem konkreten Artefakt pro Phase (z.B. Phase 1 = priorisierte Use-Case-Liste).
3. Ergänze pro Phase einen "Adaptions-Hinweis": Was muss eine Abteilung anpassen (z.B. HR hat strengere Datenschutz-Auflagen als Marketing)?
4. Lege das Playbook als Wissensordner-Dokument ab und benenne pro startender Abteilung einen Marketing-Paten.
Prompt:
> "Du bist KI-Adoptions-Strategin. Erstelle ein übertragbares Cross-Team-Adoptions-Playbook auf Basis unserer Marketing-Erfahrung. Kontext: Nächste Abteilungen sind Sales, HR und Produkt; jede hat eigene Use-Cases und Compliance-Anforderungen. Format: Fünf-Phasen-Tabelle mit Phase, Aktivität, Artefakt, typischer Stolperstein und abteilungsspezifischem Adaptions-Hinweis."
Artefakt: Ein Cross-Team-Adoptions-Playbook im Canvas mit fünf Phasen, Artefakten pro Phase und Adaptions-Hinweisen je Abteilung.
Fallstricke:
- Marketing-Agenten werden 1:1 übernommen, obwohl die Use-Cases anders sind → Das Playbook schreibt vor, dass jede Abteilung mindestens einen eigenen Quick-Win-Agenten neu konfiguriert, statt Marketing-Agenten zu kopieren.
- Das Playbook bleibt theoretisch, weil kein Pate die neue Abteilung begleitet → Jede startende Abteilung bekommt einen benannten Marketing-Champion mit 2 Stunden/Woche für die ersten 30 Tage.
Anschluss: S-LU-064

### S-LU-064 Langdock vs. Punkt-Tools: Konsolidierungs-Analyse für den Tool-Stack

Trigger: Das Team zahlt parallel für mehrere spezialisierte KI-Punkt-Tools (Copy-Generator, Übersetzer, Social-Scheduler-KI) — und der CFO fragt, welche davon Langdock ersetzen kann, um Lizenzkosten zu sparen. (Quelle: A-08; sources/12 Q-117)
Ziel: Eine faktenbasierte Konsolidierungs-Analyse erstellen, die zeigt, welche Punkt-Tools durch Langdock ablösbar sind, welche bleiben müssen und welche jährliche Ersparnis daraus folgt.
Ergebnis: Eine Konsolidierungs-Matrix im Canvas mit Tool, Jahreskosten, Langdock-Abdeckungsgrad (voll/teilweise/keine), Migrationsaufwand und Netto-Ersparnis.
Fähigkeit: Chat / Canvas / Data Analyst
Vorgehen:
1. Inventarisiere alle aktiven KI-Punkt-Tools mit Jahreskosten, Hauptnutzen und Nutzeranzahl.
2. Bewerte pro Tool den Langdock-Abdeckungsgrad: Kann eine Säule (Chat, Agents, Workflows) den Kernnutzen voll, teilweise oder gar nicht ersetzen?
3. Schätze pro ablösbares Tool den Migrationsaufwand (Stunden) und die jährliche Netto-Ersparnis (Lizenz minus Migrations- und Langdock-Mehrkosten).
4. Erstelle die Konsolidierungs-Matrix im Canvas und markiere klare Ablöse-Kandidaten farblich.
Prompt:
> "Du bist SaaS-Portfolio-Analystin. Bewerte unsere KI-Punkt-Tools auf Ablösbarkeit durch Langdock. Kontext: Vier Tools mit zusammen 18.000 Euro Jahreskosten; Langdock ist bereits lizenziert. Format: Matrix mit Tool, Jahreskosten, Langdock-Abdeckungsgrad (voll/teilweise/keine), Migrationsaufwand in Stunden und Netto-Jahresersparnis."
Artefakt: Eine Konsolidierungs-Matrix im Canvas mit Ablöse-Kandidaten, Migrationsaufwand und Gesamt-Jahresersparnis als Entscheidungsgrundlage für den CFO.
Fallstricke:
- Ein Tool wird als "voll ablösbar" markiert, obwohl es eine Spezialfunktion hat, die Langdock nicht bietet (z.B. native Social-Scheduling-Queue) → Abdeckungsgrad immer am konkreten Kern-Workflow prüfen, nicht am Marketing-Versprechen des Tools.
- Migrationsaufwand wird unterschätzt und die Ersparnis dadurch überschätzt → Migration eines Tools als Pilot durchführen und den realen Aufwand messen, bevor die Gesamtersparnis dem CFO zugesagt wird.
Anschluss: S-LU-065

### S-LU-065 Change-Management-Fahrplan gegen KI-Rollout-Widerstand aufsetzen

Trigger: Ein Teil des Teams begegnet dem Langdock-Rollout mit offener Skepsis oder stiller Verweigerung ("KI nimmt uns die Arbeit weg") — die Adoption stockt nicht an der Technik, sondern an der Haltung. (Quelle: sources/12 Q-146; A-04)
Ziel: Einen strukturierten Change-Management-Fahrplan etablieren, der Widerstand sichtbar adressiert, Betroffene zu Beteiligten macht und die emotionale Adoption neben der technischen sicherstellt.
Ergebnis: Ein Change-Fahrplan im Canvas mit Stakeholder-Map (Promotoren/Skeptiker/Blockierer), gezielten Interventionen pro Gruppe und einem Kommunikations-Narrativ.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Erstelle im Chat eine Stakeholder-Map: Wer ist Promotor, wer Skeptiker, wer Blockierer — und was ist die jeweilige Kernsorge?
2. Lass die KI pro Gruppe eine gezielte Intervention vorschlagen (z.B. Skeptiker bekommen einen sichtbaren Quick-Win, Blockierer ein 1:1-Gespräch).
3. Formuliere ein ehrliches Kommunikations-Narrativ: Was ändert sich, was bleibt, welche Ängste sind unbegründet, welche werden ernst genommen.
4. Lege Check-in-Punkte fest (Tag 30/60/90), an denen die Stimmung neu gemessen wird.
Prompt:
> "Du bist Change-Management-Beraterin für KI-Transformation. Entwickle einen Fahrplan gegen Rollout-Widerstand in einem 15-köpfigen Marketing-Team. Kontext: Drei offene Skeptiker, zwei stille Verweigerer, Hauptsorge ist Jobverlust. Format: Stakeholder-Map (Gruppe, Kernsorge, Intervention) plus ein 3-Absatz-Kommunikations-Narrativ und Check-in-Punkte."
Artefakt: Ein Change-Fahrplan im Canvas mit Stakeholder-Map, Interventionen pro Gruppe, Kommunikations-Narrativ und Stimmungs-Check-in-Terminen.
Fallstricke:
- Das Narrativ verspricht "kein Stellenabbau", obwohl das nicht zugesichert werden kann → Nur kommunizieren, was die Führung tatsächlich garantieren kann; falsche Beruhigung zerstört Vertrauen dauerhaft.
- Skeptiker werden überredet statt eingebunden → Mindestens einen früheren Skeptiker als Champion (S-LU-014) gewinnen; seine sichtbare Wandlung wirkt stärker als jede Top-down-Botschaft.
Anschluss: S-LU-066

### S-LU-066 KI-Literacy-Trainingspfade nach Rollen differenzieren

Trigger: Ein einheitliches KI-Training für alle überfordert die Einsteiger und langweilt die Power-User — das Team braucht rollendifferenzierte Lernpfade statt einer Einheitsschulung. (Quelle: sources/12 Q-042; A-37)
Ziel: Drei abgestufte KI-Literacy-Tracks (Basis, Fortgeschritten, Builder) definieren, die jede Person auf dem passenden Niveau abholen und einen klaren Kompetenz-Aufstiegspfad bieten.
Ergebnis: Ein Trainingspfad-Plan im Canvas mit drei Tracks, je Lernzielen, Übungen, geschätztem Zeitaufwand und einem Abschluss-Kompetenznachweis.
Fähigkeit: Chat / Canvas / Agents / Konversations-Starter
Vorgehen:
1. Definiere im Chat drei Kompetenzstufen mit klaren Lernzielen: Basis (Chat + Konversations-Starter nutzen), Fortgeschritten (Agenten kalibrieren, Wissensordner pflegen), Builder (Workflows bauen, Prompts versionieren).
2. Weise jeder Stufe 3–5 konkrete Übungen mit echten Team-Aufgaben zu (max. 30 Minuten pro Übung).
3. Definiere pro Track einen Abschluss-Kompetenznachweis (z.B. Builder: einen funktionierenden Workflow demonstrieren).
4. Lege einen Aufstiegspfad fest: Wann und wie wechselt jemand von Basis zu Fortgeschritten?
Prompt:
> "Du bist KI-Learning-Designerin. Entwickle drei rollendifferenzierte KI-Literacy-Tracks für ein Marketing-Team. Kontext: Mischung aus Einsteigern, erfahrenen Nutzern und einem technik-affinen Champion. Format: Tabelle pro Track mit Lernziel, drei Übungen (max. 30 min), Zeitaufwand gesamt und Abschluss-Kompetenznachweis."
Artefakt: Ein Trainingspfad-Plan im Canvas mit drei Tracks, Übungen, Zeitaufwand, Kompetenznachweisen und einem Aufstiegspfad.
Fallstricke:
- Die Tracks bleiben theoretisch, weil die Übungen keine echten Aufgaben sind → Jede Übung muss an einer realen, anstehenden Team-Aufgabe ansetzen, damit das Gelernte sofort Wert schafft.
- Niemand steigt vom Basis-Track auf, weil kein Anreiz besteht → Aufstieg sichtbar machen (z.B. Champion-Rolle für Builder-Absolventen) und im Onboarding (S-LU-041) als Pfad verankern.
Anschluss: S-LU-067

### S-LU-067 Vendor-Relationship mit Langdock-Customer-Success strukturiert steuern

Trigger: Der Kontakt zum Langdock-Anbieter ist rein reaktiv — man meldet sich nur bei Problemen. Quartals-Reviews, Roadmap-Einblicke und Eskalationswege mit dem Customer-Success-Manager sind ungenutzt. (Quelle: sources/12 Q-136; A-49)
Ziel: Die Anbieter-Beziehung von reaktivem Support zu einer gesteuerten Partnerschaft entwickeln, die Roadmap-Einfluss, schnellere Eskalation und bessere Konditionen ermöglicht.
Ergebnis: Ein Vendor-Relationship-Plan im Canvas mit Quartals-Review-Agenda, Eskalations-Kontaktmatrix und einer Liste der Verhandlungs-Hebel für den nächsten Vertragszyklus.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Sammle im Chat alle Berührungspunkte mit dem Anbieter: Support-Tickets, Feature-Requests (S-LU-049), Vertragsdaten, Ansprechpartner.
2. Entwirf eine Quartals-Review-Agenda mit dem Customer-Success-Manager: Nutzungsentwicklung, offene Feature-Requests, Roadmap-Ausblick, Eskalations-Rückschau.
3. Erstelle eine Eskalations-Kontaktmatrix: Wer wird bei welcher Schwere kontaktiert, mit welcher erwarteten Reaktionszeit?
4. Liste die Verhandlungs-Hebel für den nächsten Vertragszyklus auf (Volumen, Mehrjahres-Commitment, Referenz-Bereitschaft).
Prompt:
> "Du bist Vendor-Management-Beraterin für SaaS-Plattformen. Strukturiere unsere Beziehung zum Langdock-Customer-Success-Team. Kontext: Aktuell rein reaktiver Kontakt, Vertragsverlängerung in 6 Monaten. Format: Quartals-Review-Agenda (Tagesordnungspunkte), Eskalations-Kontaktmatrix (Schweregrad/Kontakt/Reaktionszeit) und Liste der Verhandlungs-Hebel."
Artefakt: Ein Vendor-Relationship-Plan im Canvas mit Quartals-Review-Agenda, Eskalations-Kontaktmatrix und Verhandlungs-Hebel-Liste für den Vertragszyklus.
Fallstricke:
- Feature-Requests werden im Review als verbindliche Zusagen des Anbieters missverstanden → Roadmap-Aussagen immer als unverbindlich protokollieren; nur schriftlich Zugesichertes als Planungsgrundlage nutzen.
- Die Verhandlungs-Hebel werden erst kurz vor Vertragsende gesammelt → Hebel-Liste ab Vertragsmitte pflegen; Nutzungs- und Referenzdaten frühzeitig dokumentieren, um Verhandlungsmacht aufzubauen.
Anschluss: S-LU-068

### S-LU-068 Multi-Region-Workspace-Governance für DACH plus internationale Einheiten

Trigger: Das Unternehmen betreibt getrennte Langdock-Workspaces für DACH und internationale Regionen mit unterschiedlichen Datenschutz-Regimen und Sprachen — es fehlt ein Rahmen, der Datenresidenz, Sprache und gemeinsame Standards regional differenziert. (Quelle: A-17; sources/12 Q-132)
Ziel: Ein Multi-Region-Governance-Modell aufbauen, das regionale Rechtsräume (DSGVO/DSG-Schweiz/außereuropäisch) respektiert und zugleich gemeinsame Brand- und Sicherheitsstandards durchsetzt.
Ergebnis: Ein Multi-Region-Governance-Rahmen im Canvas mit Region, Datenresidenz-Anforderung, Primärsprache, zwingenden Standards und regional erlaubten Abweichungen.
Fähigkeit: Chat / Canvas / Wissensordner / Deep Research
Vorgehen:
1. Inventarisiere die regionalen Workspaces mit Nutzerzahl, geltendem Datenschutz-Regime und Primärsprache.
2. Aktiviere den Deep Research Modus, um die Datentransfer-Anforderungen je Region zu prüfen (z.B. DSG-Schweiz-Adäquanz, EU-Hosting für DACH).
3. Definiere global zwingende Standards (Brand-Voice, Sicherheits-Baseline) und regional zulässige Abweichungen (Sprache, lokale Use-Cases).
4. Lege einen Cross-Region-Governance-Owner und einen halbjährlichen Abgleich-Termin fest; dokumentiere alles im Governance-Hub-Wissensordner.
Prompt:
> "Du bist Enterprise-KI-Governance-Beraterin mit Datenschutz-Fokus. Entwickle ein Multi-Region-Governance-Modell für Langdock-Workspaces in DACH und zwei internationalen Regionen. Kontext: DACH unterliegt DSGVO/DSG-Schweiz; gemeinsame Brand-Standards, aber unterschiedliche Sprachen und Rechtsräume. Format: Tabelle mit Region, Datenresidenz-Anforderung, Primärsprache, zwingende Standards und erlaubte Abweichungen."
Artefakt: Ein Multi-Region-Governance-Rahmen im Canvas mit Regional-Tabelle, zwingenden Standards, erlaubten Abweichungen und einem Cross-Region-Abgleich-Termin.
Fallstricke:
- Datenresidenz-Annahmen der KI werden ohne juristische Prüfung übernommen → Die Deep-Research-Ergebnisse sind Arbeitsgrundlage; jede Datentransfer-Regel muss durch den Datenschutzbeauftragten bestätigt werden.
- Globale Standards werden international als DACH-Bevormundung empfunden → Standards mit je einem Vertreter pro Region co-kreieren, statt das DACH-Modell unverändert zu exportieren.
Anschluss: S-LU-069

### S-LU-069 KI-Nutzungs-Policy für das Marketing-Team verfassen

Trigger: Das Team nutzt Langdock breit, aber es gibt kein schriftliches, verbindliches Regelwerk, das festhält, was erlaubt, was eingeschränkt und was verboten ist — bei einem Audit gäbe es nichts vorzuzeigen. (Quelle: A-06; sources/12 Q-126)
Ziel: Eine knappe, praxistaugliche KI-Nutzungs-Policy verfassen, die erlaubte und verbotene Nutzungen klar abgrenzt, Datenschutz-Leitplanken setzt und als Audit-fähiges Dokument dient.
Ergebnis: Eine 1- bis 2-seitige KI-Nutzungs-Policy im Canvas mit Geltungsbereich, Erlaubt/Eingeschränkt/Verboten-Listen, Datenschutz-Regeln und Verstoß-Konsequenzen.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Definiere im Chat den Geltungsbereich (welche Tools, welche Daten, welche Nutzergruppen) und die drei Kategorien Erlaubt/Eingeschränkt/Verboten.
2. Befülle die Kategorien mit konkreten Marketing-Beispielen (erlaubt: Content-Entwürfe; eingeschränkt: Kundendaten nur pseudonymisiert; verboten: sensible Personaldaten).
3. Ergänze Datenschutz-Leitplanken (Verweis auf S-LU-031) und Verstoß-Konsequenzen in drei Eskalationsstufen.
4. Lege das Dokument im Governance-Wissensordner ab und mache es zum Pflicht-Lesestoff im Onboarding (S-LU-041).
Prompt:
> "Du bist KI-Policy-Autorin für ein DACH-Marketing-Team. Verfasse eine knappe, audit-fähige KI-Nutzungs-Policy. Kontext: Breite Langdock-Nutzung, DSGVO-Pflicht, kein bestehendes Regelwerk. Format: 1- bis 2-seitige Policy mit Geltungsbereich, Erlaubt/Eingeschränkt/Verboten-Listen (je 3 Beispiele), Datenschutz-Leitplanken und dreistufigen Verstoß-Konsequenzen."
Artefakt: Eine KI-Nutzungs-Policy im Canvas mit Geltungsbereich, drei Nutzungs-Kategorien, Datenschutz-Regeln und Verstoß-Konsequenzen, ablagefertig im Governance-Wissensordner.
Fallstricke:
- Die Policy ist zu abstrakt und gibt im Zweifel keine Antwort → Jede Kategorie braucht konkrete Marketing-Beispiele, keine reinen Prinzipien; das Team muss eine echte Frage daran entscheiden können.
- Die Policy wird ohne Einbindung von Datenschutzbeauftragtem und Betriebsrat als verbindlich kommuniziert → Vor Inkraftsetzung DSB- und (bei Mitbestimmung) Betriebsrats-Freigabe einholen; Freigabe-Datum im Dokument vermerken.
Anschluss: S-LU-070

### S-LU-070 Erfolgsmetrik-Framework für KI-Initiativen definieren

Trigger: Verschiedene KI-Initiativen im Team werden mit verschiedenen, teils widersprüchlichen Erfolgsmaßen bewertet — es fehlt ein gemeinsames Metrik-Framework, das Vergleichbarkeit und Priorisierung erlaubt. (Quelle: A-10; sources/10 S-031)
Ziel: Ein einheitliches Erfolgsmetrik-Framework etablieren, das jede KI-Initiative auf denselben vier Dimensionen (Effizienz, Qualität, Adoption, Geschäftswert) misst und so eine faire Priorisierung ermöglicht.
Ergebnis: Ein Metrik-Framework im Canvas mit vier Dimensionen, je 1–2 Leitmetriken, Messmethode, Zielwert und Datenquelle.
Fähigkeit: Chat / Canvas / Data Analyst
Vorgehen:
1. Definiere im Chat die vier Dimensionen und ordne jede bestehende KI-Initiative testweise zu.
2. Lege pro Dimension 1–2 Leitmetriken mit klarer Messmethode und Datenquelle fest (z.B. Qualität = Anteil revisionsfrei freigegebener Outputs).
3. Bestimme realistische Zielwerte auf Basis vorhandener Baseline-Daten aus dem Workspace-Admin.
4. Erstelle das Framework als Canvas-Referenz, die für jede neue Initiative als verbindliche Bewertungsvorlage dient.
Prompt:
> "Du bist Marketing-Performance-Architektin. Entwickle ein einheitliches Erfolgsmetrik-Framework für KI-Initiativen. Kontext: Mehrere parallele Langdock-Initiativen, bisher uneinheitlich bewertet. Format: Tabelle mit Dimension (Effizienz/Qualität/Adoption/Geschäftswert), 1–2 Leitmetriken, Messmethode, Zielwert und Datenquelle."
Artefakt: Ein Erfolgsmetrik-Framework im Canvas mit vier Dimensionen, Leitmetriken, Messmethoden, Zielwerten und Datenquellen als verbindliche Bewertungsvorlage.
Fallstricke:
- Nur Effizienz wird gemessen, weil sie am leichtesten quantifizierbar ist → Mindestens eine Qualitäts- und eine Geschäftswert-Metrik sind pro Initiative Pflicht, sonst werden reine Vielnutzer fälschlich als Erfolg gewertet.
- Zielwerte werden ohne Baseline gesetzt und sind willkürlich → Jeder Zielwert braucht einen dokumentierten Ist-Wert als Ausgangspunkt; ohne Baseline gilt das erste Quartal als Messphase, nicht als Bewertung.
Anschluss: S-LU-071

### S-LU-071 KI-Vendor-Vertragsverlängerung mit Faktenbasis verhandeln

Trigger: Die Langdock-Vertragsverlängerung steht in wenigen Monaten an, und Finance fragt, ob das Abrechnungsmodell (AI Models Included vs. BYOK) und der Lizenzpreis noch zu Volumen und Nutzung passen — bisher fehlt eine verhandlungsfähige Faktenbasis. (Quelle: sources/12 Q-117; sources/12 Q-118)
Ziel: Die Verlängerung von einer reflexhaften Zustimmung in eine datenbelegte Verhandlung überführen, die Abrechnungsmodell, Volumenrabatt-Stufe und Konditionen am realen Verbrauch ausrichtet.
Ergebnis: Ein Verhandlungs-Briefing im Canvas mit Ist-Verbrauch, Modell-Vergleich (Included vs. BYOK), erreichbarer Rabattstufe und drei priorisierten Verhandlungsforderungen.
Fähigkeit: Data Analyst / Canvas / Wissensordner
Vorgehen:
1. Exportiere die 12-Monats-Nutzungsdaten (aktive Seats, Token-Verbrauch, Workflow-Läufe) aus dem Workspace-Admin als CSV.
2. Lade die CSV in den Data Analyst und berechne den jährlichen Ist-Verbrauch sowie den Break-even zwischen AI Models Included und BYOK.
3. Gleiche die aktive Seat-Zahl mit den Volumenrabatt-Stufen ab und ermittle, wie viele Seats bis zur nächsten Rabattschwelle fehlen.
4. Formuliere im Canvas drei priorisierte Verhandlungsforderungen (z.B. Wechsel auf BYOK ab Break-even, Rabattstufe bei Seat-Bündelung, fixierter Preis über die Laufzeit).
Prompt:
> "Du bist SaaS-Einkaufs-Analystin. Erstelle aus den angehängten Langdock-Nutzungsdaten ein Verhandlungs-Briefing für die Vertragsverlängerung. Kontext: 15 aktive Seats, aktuelles Modell AI Models Included, Verlängerung in 4 Monaten. Format: Tabelle mit Ist-Verbrauch, Break-even Included vs. BYOK, fehlende Seats bis zur nächsten Rabattstufe und drei priorisierten Verhandlungsforderungen."
Artefakt: Ein Verhandlungs-Briefing im Canvas mit Verbrauchs-Ist, Modell-Break-even, Rabattstufen-Abstand und drei Verhandlungsforderungen, vorlagefertig für das Renewal-Gespräch.
Fallstricke:
- Der BYOK-Break-even wird ohne den Verwaltungsaufwand (API-Key-Management, Billing-Abgleich) gerechnet und wirkt zu attraktiv → Den Mehraufwand als Stundenwert in die Vergleichsrechnung aufnehmen, sonst kippt die Empfehlung in der Praxis.
- Verhandlungsforderungen ohne Priorität verwässern das Gespräch → Maximal drei Forderungen, klar nach Hebelwirkung sortiert; alles Weitere nur als Verhandlungsmasse vermerken.
Anschluss: S-LU-072

### S-LU-072 Build-vs-Buy-Memo: eigener Langdock-Workflow oder zugekauftes Spezial-Tool

Trigger: Für eine wiederkehrende Aufgabe (z.B. Lokalisierung, Lead-Scoring) liegt ein zukaufbares Spezial-Tool auf dem Tisch — gleichzeitig könnte ein eigener Langdock-Workflow dieselbe Aufgabe lösen. Es fehlt ein nüchternes Entscheidungsmemo statt Bauchgefühl. (Quelle: A-08; A-26)
Ziel: Eine wiederverwendbare Build-vs-Buy-Entscheidung treffen, die Eigenbau und Zukauf über Gesamtkosten, Time-to-Value und Wartungslast vergleicht und so Tool-Wildwuchs verhindert.
Ergebnis: Ein Build-vs-Buy-Memo im Canvas mit Kosten- und Aufwandsvergleich, einer klaren Empfehlung und definierten Bedingungen, unter denen die Empfehlung kippt.
Fähigkeit: Chat / Canvas / Workflows
Vorgehen:
1. Beschreibe die Aufgabe präzise: Volumen pro Monat, Wiederholungsfrequenz, geforderte Output-Qualität und Integrationsbedarf.
2. Schätze für "Build" (Langdock-Workflow) den einmaligen Bau-Aufwand, die laufenden Run-Kosten und die Wartungslast; für "Buy" Lizenzkosten, Einführungsaufwand und Lock-in-Risiko.
3. Stelle beide Optionen in einer Tabelle gegenüber (Jahres-Gesamtkosten, Time-to-Value, Wartung, Abhängigkeit) und leite eine begründete Empfehlung ab.
4. Definiere im Memo die Kipp-Bedingungen: ab welchem Volumen oder welcher Komplexität die Empfehlung wechselt.
Prompt:
> "Du bist nüchterne MarketingOps-Beraterin. Erstelle ein Build-vs-Buy-Memo für eine wiederkehrende Lokalisierungs-Aufgabe. Kontext: ca. 200 Texte/Monat, ein Langdock-Workflow wäre baubar, ein Spezial-Tool kostet 6.000 Euro/Jahr. Format: Vergleichstabelle (Build vs. Buy) mit Jahres-Gesamtkosten, Time-to-Value, Wartungslast und Lock-in, plus Empfehlung und Kipp-Bedingungen."
Artefakt: Ein Build-vs-Buy-Memo im Canvas mit Vergleichstabelle, begründeter Empfehlung und expliziten Kipp-Bedingungen als Entscheidungsvorlage.
Fallstricke:
- Der Bau-Aufwand des Workflows wird unterschätzt, weil nur die Erstkonfiguration, nicht die Wartung gerechnet wird → Eine jährliche Wartungs-Pauschale (Tests, Anpassung an Modell-/API-Änderungen) verbindlich einplanen.
- Das Memo entscheidet rein über den Preis und ignoriert strategische Abhängigkeit → Lock-in und Exit-Aufwand als eigene Vergleichszeile führen, nicht im Preis verstecken.
Anschluss: S-LU-073

### S-LU-073 KI-Reife extern benchmarken statt nur intern bewerten

Trigger: Das interne Reife-Assessment (S-LU-053) zeigt einen Score, aber die Leitung fragt: "Ist das gut oder schlecht im Vergleich zu vergleichbaren Marketing-Teams?" — ohne externen Referenzwert bleibt die Selbstbewertung im luftleeren Raum. (Quelle: A-10; sources/12 Q-145)
Ziel: Den internen Reife-Score gegen recherchierte externe Referenzwerte vergleichbarer B2B-Marketing-Teams einordnen und so die größten relativen Rückstände sichtbar machen.
Ergebnis: Ein Benchmark-Vergleich im Canvas, der den eigenen Score je Dimension einem recherchierten Referenzkorridor gegenüberstellt und die drei größten Lücken priorisiert.
Fähigkeit: Deep Research / Canvas / Chat
Vorgehen:
1. Übernimm die fünf Dimensionen und Scores aus dem internen Assessment (S-LU-053) als Ausgangsbasis.
2. Aktiviere den Deep Research Modus und recherchiere öffentlich belegbare Referenzwerte zur KI-Reife vergleichbarer B2B-SaaS-Marketing-Teams (Studien, Reports); markiere unbelegbare Werte als Schätzung.
3. Stelle je Dimension den eigenen Score dem externen Referenzkorridor gegenüber und berechne den relativen Abstand.
4. Priorisiere die drei Dimensionen mit dem größten Rückstand und ordne ihnen je eine konkrete Aufholmaßnahme zu.
Prompt:
> "Du bist KI-Benchmarking-Analystin. Vergleiche unseren internen KI-Reife-Score mit externen Referenzwerten vergleichbarer B2B-SaaS-Marketing-Teams. Kontext: Fünf Dimensionen mit Eigenscores liegen vor; nur Quellen mit belegbarer URL gelten, sonst als Schätzung markieren. Format: Tabelle mit Dimension, Eigenscore, externem Referenzkorridor, relativem Abstand und Aufholmaßnahme für die drei größten Lücken."
Artefakt: Ein Benchmark-Vergleich im Canvas mit Eigenscore vs. Referenzkorridor je Dimension und drei priorisierten Aufholmaßnahmen.
Fallstricke:
- Deep Research erfindet plausibel klingende Benchmark-Zahlen ohne belastbare Quelle → Jeden Referenzwert mit URL belegen lassen; unbelegte Werte ausdrücklich als Schätzung kennzeichnen und nicht für Entscheidungen nutzen.
- Externe Benchmarks aus anderen Branchen werden 1:1 übernommen → Den Vergleichskorridor strikt auf B2B-SaaS-Marketing in vergleichbarer Teamgröße einschränken, sonst täuscht der Abstand.
Anschluss: S-LU-074

### S-LU-074 Quartals-KI-Business-Review-Paket als erzählendes Deck schnüren

Trigger: Das ROI-Dashboard (S-LU-061) liefert Zahlen, aber das Quartals-Business-Review braucht ein erzählendes Paket, das Zahlen, Entscheidungen, Risiken und nächste Schritte zusammenführt — bisher wird das Deck jedes Quartal mühsam von Hand gebaut. (Quelle: A-10; A-01)
Ziel: Ein wiederverwendbares Quarterly-Business-Review-Paket etablieren, das den KI-Wertbeitrag als zusammenhängende Geschichte (Ergebnis, Entscheidung, Risiko, Ausblick) erzählt statt als isolierte Kennzahlen.
Ergebnis: Ein QBR-Deck-Gerüst im Canvas mit fünf festen Abschnitten (Highlights, KPI-Entwicklung, getroffene Entscheidungen, offene Risiken, Quartalsziele), je mit Kernaussage.
Fähigkeit: Canvas / Data Analyst / Wissensordner
Vorgehen:
1. Ziehe die Quartals-Kennzahlen aus dem ROI-Dashboard (S-LU-061) und die Metrik-Werte aus dem Erfolgs-Framework (S-LU-070) als Datengrundlage zusammen.
2. Strukturiere das Deck in fünf feste Abschnitte und formuliere pro Abschnitt eine einzige Kernaussage (eine Zeile), bevor Details ergänzt werden.
3. Ergänze pro Abschnitt nur die belegenden Daten und maximal eine Visualisierung; halte das Narrativ vor den Zahlen.
4. Speichere das Gerüst als Template im Governance-Wissensordner, das im Folgequartal nur neue Aussagen und Zahlen erfordert.
Prompt:
> "Du bist Executive-Storytelling-Beraterin. Baue aus den angehängten Quartalszahlen ein erzählendes KI-Business-Review-Deck-Gerüst. Kontext: Empfänger ist die Geschäftsführung, Vorquartals-Vergleich liegt vor. Format: Fünf Abschnitte (Highlights, KPI-Entwicklung, getroffene Entscheidungen, offene Risiken, Quartalsziele) mit je einer Kernaussage in einer Zeile plus belegenden Daten."
Artefakt: Ein QBR-Deck-Gerüst im Canvas mit fünf Abschnitten, je einer Kernaussage und belegenden Daten, als wiederverwendbares Quartals-Template.
Fallstricke:
- Das Deck wird zur Zahlenwüste ohne roten Faden → Jeder Abschnitt beginnt mit genau einer Kernaussage; Zahlen dienen nur als Beleg, nicht als Ersatz für die Aussage.
- Risiken werden geschönt oder weggelassen, um gut dazustehen → Der Abschnitt "offene Risiken" ist Pflicht und nennt mindestens ein konkretes, ungelöstes Problem mit Verantwortlichem.
Anschluss: S-LU-075

### S-LU-075 Wissens-Kurations-Ritual für saubere Wissensordner verankern

Trigger: Die Wissensordner sind über Monate gewachsen, enthalten veraltete Briefings, Dubletten und Dateien nahe am Zeichen-Limit — die Retrieval-Qualität der Agenten sinkt spürbar, weil niemand für die Pflege zuständig ist. (Quelle: sources/12 Q-154; sources/10 S-005)
Ziel: Ein festes, leichtgewichtiges Kurations-Ritual etablieren, das Wissensordner aktuell, dublettenfrei und unter den Limits hält und so die Antwortqualität der Agenten dauerhaft stabilisiert.
Ergebnis: Ein Kurations-Ritual im Canvas mit Monats-Checkliste, klaren Archivierungs-Regeln und benanntem Folder-Owner pro Wissensordner.
Fähigkeit: Wissensordner / Data Analyst / Canvas
Vorgehen:
1. Exportiere je Wissensordner die Datei-Inventarliste (Name, Datum, Größe) und lade sie in den Data Analyst, um veraltete Dateien, Dubletten und Limit-Nähe (8-Mio-Zeichen-Grenze) zu identifizieren.
2. Definiere Archivierungs-Regeln: Dateien älter als 12 Monate oder als überholt markiert wandern in einen separaten Archiv-Folder; aktiver Folder bleibt unter der vereinbarten Dateizahl.
3. Lege eine Monats-Checkliste fest (Dubletten prüfen, Verfallsdaten kontrollieren, ein Canary-Retrieval-Test pro Agent) und benenne pro Folder einen Owner.
4. Dokumentiere das Ritual im Governance-Wissensordner und verankere den Termin als festes Kalender-Item.
Prompt:
> "Du bist Knowledge-Operations-Managerin. Entwirf ein monatliches Kurations-Ritual für unsere Langdock-Wissensordner. Kontext: Fünf aktive Folder, Retrieval-Qualität sinkt, kein definierter Owner. Format: Monats-Checkliste mit Prüfschritten, Archivierungs-Regeln (Alter, Dubletten, Limit-Nähe) und einer Owner-Zuordnung pro Folder."
Artefakt: Ein Kurations-Ritual im Canvas mit Monats-Checkliste, Archivierungs-Regeln und Folder-Owner-Zuordnung, abgelegt im Governance-Wissensordner.
Fallstricke:
- Alte Dateien werden gelöscht statt archiviert und gehen als Nachweis verloren → Überholte Dokumente immer in einen Archiv-Folder verschieben, nie löschen; das aktive Retrieval bleibt trotzdem sauber.
- Das Ritual wird nach zwei Monaten vergessen, weil kein Owner verantwortlich ist → Pro Folder einen namentlichen Owner mit fixem Monatstermin festschreiben; ohne Owner gilt der Folder als nicht freigegeben.
Anschluss: S-LU-076

### S-LU-076 Wissensordner-Governance über Regionen: zentral vs. lokal abgrenzen

Trigger: DACH und internationale Einheiten arbeiten mit eigenen Wissensordnern, aber Brand-Kerndokumente liegen mehrfach in unterschiedlichen Versionen vor — es fehlt eine Regel, welche Inhalte zentral verbindlich sind und welche regional ergänzt werden dürfen. (Quelle: A-17; sources/12 Q-128)
Ziel: Eine Folder-Governance aufbauen, die zentrale Pflicht-Inhalte (Brand, Compliance) eindeutig von regional erlaubten Ergänzungen trennt und Datenresidenz pro Region respektiert.
Ergebnis: Ein Folder-Governance-Modell im Canvas mit Klassifizierung jeder Inhaltskategorie als zentral-verbindlich, regional-ergänzbar oder rein-lokal, plus Datenresidenz-Hinweis.
Fähigkeit: Wissensordner / Canvas / Deep Research
Vorgehen:
1. Inventarisiere die bestehenden Wissensordner je Region mit Inhaltskategorien (Brand, Compliance, Kampagnen, lokale Marktdaten).
2. Klassifiziere jede Kategorie: zentral-verbindlich (eine Master-Quelle, regional nur lesbar), regional-ergänzbar (Master plus lokaler Zusatz) oder rein-lokal.
3. Prüfe mit Deep Research die Datenresidenz-Anforderungen je Region und ordne jeder Kategorie einen Hosting-/Ablage-Hinweis zu; Ergebnisse vom Datenschutzbeauftragten bestätigen lassen.
4. Lege fest, wer zentrale Master-Folder pflegt und wie regionale Einheiten Änderungswünsche einbringen; dokumentiere alles im Governance-Hub.
Prompt:
> "Du bist Enterprise-Knowledge-Governance-Beraterin. Entwickle ein Folder-Governance-Modell für Wissensordner in DACH und zwei internationalen Regionen. Kontext: Brand-Kerndokumente existieren mehrfach, unterschiedliche Datenschutz-Regime, gemeinsame Marke. Format: Tabelle mit Inhaltskategorie, Klassifizierung (zentral-verbindlich/regional-ergänzbar/rein-lokal), Datenresidenz-Hinweis und Pflege-Verantwortlichem."
Artefakt: Ein Folder-Governance-Modell im Canvas mit Inhalts-Klassifizierung, Datenresidenz-Hinweisen und Pflege-Verantwortlichen je Kategorie.
Fallstricke:
- Datenresidenz-Aussagen der KI werden ohne juristische Prüfung übernommen → Die Deep-Research-Ergebnisse sind nur Arbeitsgrundlage; jede Ablage-Regel muss der Datenschutzbeauftragte bestätigen.
- Zentrale Master-Folder werden als Bevormundung empfunden und regional umgangen → Einen verbindlichen Änderungs-Einbringungsweg definieren, damit Regionen Master-Inhalte mitgestalten statt Schatten-Kopien anzulegen.
Anschluss: S-LU-077

### S-LU-077 Einwand-Playbook gegen wiederkehrende KI-Skepsis erstellen

Trigger: In jeder Teamrunde tauchen dieselben Einwände gegen Langdock auf ("KI ist generisch", "kostenlose Chatbots reichen", "halluziniert bei rechtlichen Aussagen") — und jede Führungskraft beantwortet sie improvisiert und inkonsistent. (Quelle: sources/12 Q-146; sources/12 Q-150)
Ziel: Ein wiederverwendbares Einwand-Playbook schaffen, das die häufigsten Skepsis-Argumente mit ehrlichen, faktenbasierten Antworten kontert und so die Change-Kommunikation konsistent macht.
Ergebnis: Ein Einwand-Playbook im Canvas mit den Top-Einwänden, je einer Kernsorge, einer ehrlichen Antwort und einem konkreten Beleg oder Quick-Win.
Fähigkeit: Chat / Canvas / Wissensordner
Vorgehen:
1. Sammle im Chat die real geäußerten Einwände aus dem Team und gruppiere sie (Qualität, Kosten/kostenlose Tools, Datensicherheit, Jobangst, Halluzination).
2. Formuliere pro Einwand die dahinterliegende echte Sorge und eine ehrliche Antwort, die nichts verspricht, was nicht haltbar ist.
3. Hinterlege pro Antwort einen konkreten Beleg (z.B. EU-Hosting-Nachweis, Brand-Voice-Agent als Anti-Generisch-Beispiel) oder einen sichtbaren Quick-Win.
4. Lege das Playbook im Governance-Wissensordner ab und mache es zum Standard-Werkzeug für alle Führungskräfte in Adoptions-Gesprächen.
Prompt:
> "Du bist Change-Kommunikations-Beraterin für KI-Adoption. Erstelle ein Einwand-Playbook gegen wiederkehrende Langdock-Skepsis. Kontext: Häufige Einwände sind Generik, kostenlose Chatbots, Halluzination und Jobangst; ehrliche, nicht beschönigende Antworten gefordert. Format: Tabelle mit Einwand, dahinterliegender Kernsorge, ehrlicher Antwort und konkretem Beleg oder Quick-Win."
Artefakt: Ein Einwand-Playbook im Canvas mit Top-Einwänden, Kernsorgen, ehrlichen Antworten und Belegen, ablagefertig im Governance-Wissensordner.
Fallstricke:
- Die Antworten beschönigen oder versprechen "kein Stellenabbau", was nicht garantiert werden kann → Nur kommunizieren, was die Führung tatsächlich zusichern kann; falsche Beruhigung zerstört Vertrauen dauerhaft.
- Das Playbook bleibt abstrakt und überzeugt niemanden → Jede Antwort braucht einen nachprüfbaren Beleg oder einen erlebbaren Quick-Win, keine reinen Behauptungen.
Anschluss: S-LU-078

### S-LU-078 Selbstlern-Agent als KI-Literacy-Trainingsspur bereitstellen

Trigger: Einsteiger trauen sich nicht, in Schulungen Fragen zu stellen, und vergessen Gelerntes bis zum nächsten Termin — sie brauchen einen jederzeit verfügbaren, geduldigen Übungspartner statt eines weiteren Schulungstermins. (Quelle: sources/12 Q-148; A-37)
Ziel: Eine selbstgesteuerte KI-Literacy-Spur bereitstellen, die Einsteiger über einen dedizierten Lern-Agenten an echten Aufgaben übt und so die Hemmschwelle ohne zusätzliche Schulungstermine senkt.
Ergebnis: Ein konfigurierter Lern-Agent mit gestuften Konversations-Startern (Grundlagen, erste eigene Aufgabe, Selbstcheck) und einem kurzen Begleit-Leitfaden.
Fähigkeit: Agents / Konversations-Starter / Wissensordner
Vorgehen:
1. Konfiguriere einen Lern-Agenten mit geduldigem, erklärendem System-Prompt und binde die team-eigenen Grundlagen-Dokumente (diese Übersicht, Quick-Win-Agenten-Liste) als Wissensordner an.
2. Lege drei gestufte Konversations-Starter an: "Erkläre mir Langdock in 5 Minuten", "Begleite mich durch meine erste echte Aufgabe", "Stelle mir 3 Selbstcheck-Fragen".
3. Lass den Agenten jede Übung an einer realen, anstehenden Aufgabe des Lernenden ansetzen, nicht an erfundenen Beispielen.
4. Ergänze einen 1-seitigen Begleit-Leitfaden, der den Einstieg und den Übergang zum Fortgeschrittenen-Track (S-LU-066) beschreibt.
Prompt:
> "Du bist KI-Learning-Designerin. Schreibe einen System-Prompt für einen geduldigen Langdock-Lern-Agenten für absolute Einsteiger. Kontext: Nutzer trauen sich keine Fragen in Gruppenschulungen, sollen an echten Aufgaben üben. Format: System-Prompt unter 500 Zeichen plus drei gestufte Konversations-Starter (Grundlagen, erste Aufgabe, Selbstcheck)."
Artefakt: Ein konfigurierter Lern-Agent mit drei gestuften Konversations-Startern und einem 1-seitigen Begleit-Leitfaden, teilbar mit der Einsteiger-Gruppe.
Fallstricke:
- Der Lern-Agent übt an erfundenen Beispielen, sodass kein Praxistransfer entsteht → Jede Übung muss an einer echten, anstehenden Aufgabe des Lernenden ansetzen; das System-Prompt fordert das ausdrücklich ein.
- Einsteiger bleiben dauerhaft im Selbstlern-Modus und steigen nie auf → Der Begleit-Leitfaden definiert ein klares Signal (z.B. erste eigene Aufgabe ohne Hilfe gelöst), das den Wechsel in den Fortgeschrittenen-Track (S-LU-066) auslöst.
Anschluss: S-LU-079

### S-LU-079 Executive-Snapshot-Agent für den monatlichen 1-Pager bauen

Trigger: Die Reporting-Kadenz (S-LU-062) verlangt einen monatlichen KI-Snapshot, aber das Aufbereiten der Zahlen zum 1-Pager frisst jedes Mal eine Stunde Handarbeit — ein standardisierter Snapshot-Agent fehlt. (Quelle: A-10; sources/12 Q-124)
Ziel: Den monatlichen Executive-Snapshot von Handarbeit auf einen konfigurierten Agenten umstellen, der aus dem Usage-Export verlässlich denselben 1-Pager im selben Format erzeugt.
Ergebnis: Ein konfigurierter Snapshot-Agent, der aus dem Usage-Export-CSV einen 1-Pager mit drei Kennzahlen, Vormonats-Delta und einer Kernaussage produziert.
Fähigkeit: Agents / Data Analyst / Wissensordner
Vorgehen:
1. Definiere das feste 1-Pager-Format aus der Reporting-Kadenz (S-LU-062): genau drei Pflicht-Kennzahlen, Vormonats-Delta und eine Kernaussage.
2. Konfiguriere einen Snapshot-Agenten mit System-Prompt, der dieses Format erzwingt, und binde eine Beispiel-Vorlage als Wissensordner an.
3. Lass den Agenten den über die Usage-Export-API gezogenen Monats-CSV im Data Analyst verarbeiten und das Format strikt befüllen.
4. Teste mit zwei Monaten Realdaten, ob das Format stabil bleibt, und gib den Agenten dann für den festen Monatslauf frei.
Prompt:
> "Du bist KI-Reporting-Architektin. Schreibe einen System-Prompt für einen Executive-Snapshot-Agenten, der aus dem monatlichen Usage-Export einen 1-Pager erzeugt. Kontext: Empfänger CMO, festes Format aus der Reporting-Kadenz, eine Datenquelle. Format: System-Prompt, der genau drei Kennzahlen, Vormonats-Delta und eine Kernaussage erzwingt und Abweichungen vom Format verbietet."
Artefakt: Ein konfigurierter Snapshot-Agent plus ein Beispiel-1-Pager mit drei Kennzahlen, Vormonats-Delta und Kernaussage, freigegeben für den Monatslauf.
Fallstricke:
- Der Agent variiert Format und Kennzahlen von Monat zu Monat, sodass keine Vergleichbarkeit entsteht → Das System-Prompt fixiert genau drei Kennzahlen und verbietet Format-Abweichungen; Memory bleibt deaktiviert, um Drift zu vermeiden.
- Der Snapshot übernimmt die Export-Zahlen ungeprüft, auch bei fehlerhaftem Export → Eine Plausibilitäts-Zeile (z.B. aktive Seats vs. Vormonat) einbauen, die unrealistische Sprünge sichtbar markiert.
Anschluss: S-LU-080

### S-LU-080 Migrations-Pilot nach dem Konsolidierungs-Entscheid sauber aufsetzen

Trigger: Die Konsolidierungs-Analyse (S-LU-064) hat ein Punkt-Tool als ablösbar markiert — bevor es gekündigt wird, soll ein kontrollierter Migrations-Pilot beweisen, dass Langdock den Kern-Workflow real und in vergleichbarer Qualität abdeckt. (Quelle: A-08; sources/12 Q-150)
Ziel: Den Wechsel von einem abzulösenden Punkt-Tool über einen messbaren Pilot absichern, statt die zugesagte Ersparnis blind umzusetzen und ein Qualitätsrisiko einzugehen.
Ergebnis: Ein Migrations-Pilotplan im Canvas mit Pilot-Scope, Vorher/Nachher-Qualitätskriterien, Abbruch-Schwelle und einem Go/No-Go-Termin für die Kündigung.
Fähigkeit: Chat / Canvas / Workflows
Vorgehen:
1. Grenze den Pilot-Scope eng ein: ein konkreter Kern-Workflow des abzulösenden Tools, ein definierter Zeitraum, eine repräsentative Aufgabenmenge.
2. Lege Vorher/Nachher-Qualitätskriterien fest (z.B. Output-Qualität, Durchlaufzeit, Fehlerquote) und erfasse die Baseline aus dem bestehenden Tool, bevor der Pilot startet.
3. Baue die Langdock-Lösung (Agent oder Workflow) für den Pilot-Scope und lasse beide Wege parallel laufen, um real zu vergleichen.
4. Definiere eine Abbruch-Schwelle und einen Go/No-Go-Termin: Nur bei erreichter Qualität und gemessener Ersparnis wird das Alt-Tool gekündigt.
Prompt:
> "Du bist Migrations-Projektleiterin. Erstelle einen Migrations-Pilotplan für die Ablösung eines KI-Punkt-Tools durch Langdock. Kontext: Ein Kern-Workflow soll pilotiert werden, Kündigung erst nach Nachweis, Baseline aus dem Alt-Tool verfügbar. Format: Plan mit Pilot-Scope, Vorher/Nachher-Qualitätskriterien, Abbruch-Schwelle und Go/No-Go-Termin für die Kündigung."
Artefakt: Ein Migrations-Pilotplan im Canvas mit Scope, Vorher/Nachher-Kriterien, Abbruch-Schwelle und Go/No-Go-Termin als Absicherung vor der Tool-Kündigung.
Fallstricke:
- Das Alt-Tool wird gekündigt, bevor der Pilot die Qualität belegt hat → Kündigung erst nach erreichtem Go/No-Go-Kriterium; bis dahin laufen beide Wege parallel, auch wenn das kurzzeitig doppelte Kosten verursacht.
- Der Pilot misst nur Kosten, nicht die Output-Qualität → Mindestens ein Qualitätskriterium mit dokumentierter Baseline ist Pflicht; reine Kostenersparnis bei schlechterem Output ist ein Fehlschlag.
Anschluss: S-LU-001
