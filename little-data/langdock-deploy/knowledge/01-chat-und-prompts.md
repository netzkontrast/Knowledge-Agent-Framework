# Chat und Prompts für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Chat-Oberfläche und Tastatur-Shortcuts
> - PTCF-Framework für gute Prompts
> - Few-Shot Prompting praktisch eingesetzt
> - Skills in Langdock
> - Memory in Chat vs Agents
> - Custom Instructions vs Memory
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration im Detail → siehe `02-agenten-konfiguration`
> - Wissensordner-Strukturen → siehe `03-wissensordner-und-rag`

## Chat-Oberfläche und Tastatur-Shortcuts (Cmd-K, Chat-Branching, PWA)

Die Langdock-Chat-Oberfläche ist das zentrale Werkzeug für schnelle Interaktionen. Für eine effiziente Nutzung sind die Tastatur-Shortcuts essenziell. Mit Cmd-K (oder Ctrl-K auf Windows) öffnet sich das Omni-Search-Menü, über das sich Chats durchsuchen, neue Chats starten oder bestimmte Workflows direkt ansteuern lassen. Diese Abkürzung beschleunigt den Zugriff erheblich, besonders wenn zwischen vielen Aufgaben gewechselt wird.

Chat-Branching ist ein weiteres mächtiges Feature. Wenn ein Konversationsstrang in eine Sackgasse führt oder eine alternative Route evaluiert werden soll, kann der Chat an einer bestimmten Nachricht verzweigt werden. Die ursprüngliche Konversation bleibt erhalten, während eine neue Abzweigung für Experimente zur Verfügung steht. Diese Verzweigung ist besonders nützlich beim Verfeinern von Prompts, bei denen der initiale Ansatz nach einer Richtungsänderung verlangt.

Zusätzlich bietet Langdock eine PWA (Progressive Web App). Diese ermöglicht es, die Plattform wie eine native Applikation auf dem Desktop oder mobilen Gerät zu installieren. Diese lokale Installation sorgt für einen noch schnelleren Zugriff und eine fokussierte Arbeitsumgebung, frei von Browser-Tabs. Die Kombination aus Shortcuts, Branching und PWA bildet das Fundament für produktive KI-Sitzungen und verkürzt die Time-to-Value der einzelnen Handgriffe massiv.

## PTCF-Framework für gute Prompts (Persona-Task-Context-Format)

Das PTCF-Framework ist die Grundlage für konsistent hochwertige KI-Ergebnisse. Es steht für Persona, Task, Context und Format. Jeder gute Prompt sollte diese vier Elemente enthalten, um dem Modell die nötige Führung zu geben. Die Persona definiert die Rolle, die die KI einnehmen soll, beispielsweise "Senior Brand Manager". Diese Rollen-Vorgabe beeinflusst die Tonalität und den Detaillierungsgrad der Antwort maßgeblich.

Der Task beschreibt die eigentliche Aufgabe klar und handlungsorientiert. Anstatt "Schreibe über SEO" sollte es heißen "Erstelle eine Liste von 10 Long-Tail-Keywords für unsere neue Software-as-a-Service-Lösung". Der Context liefert die notwendigen Hintergrundinformationen, wie Zielgruppe, bisherige Maßnahmen oder spezifische Einschränkungen. Je präziser der Kontext, desto relevanter das Ergebnis.

Das Format gibt schließlich die Struktur der Ausgabe vor. Soll es eine Tabelle, eine Liste, ein strukturiertes Markdown-Dokument oder ein reiner Fließtext sein? Durch die klare Definition des Formats entfällt nachträgliche Formatierungsarbeit. Das PTCF-Framework verwandelt vage Anfragen in präzise Briefings (Briefings), die zu sofort nutzbaren Resultaten führen und den Workflow der Direktion optimieren.

## Few-Shot Prompting praktisch eingesetzt

Few-Shot Prompting ist eine Technik, bei der dem Modell Beispiele (Shots) mitgegeben werden, um die gewünschte Ausgabe zu demonstrieren. Diese Technik ist besonders wirkungsvoll, wenn spezifische Tonalitäten (Brand Voice) oder komplexe Datenstrukturen gefordert sind. Anstatt nur die Regeln zu erklären, zeigt man der KI in Vorleistung, wie das Ergebnis exakt aussehen soll.

Im praktischen Einsatz bedeutet dies, dass einem Prompt zwei bis drei Beispiele für Input und den dazugehörigen idealen Output vorangestellt werden. Wenn beispielsweise LinkedIn-Posts in einem bestimmten Stil verfasst werden sollen, liefert man ein Muster: "Input: [Thema X]. Output: [Beispielpost im exakten Hausstil]". Dieses Muster kalibriert das Modell auf die genauen, nuancierten Anforderungen der Marke.

Diese Methode reduziert Halluzinationen und erhöht die Konsistenz der Ausgaben drastisch. Es ist eine der effektivsten Methoden, um sicherzustellen, dass die KI nicht nur inhaltlich korrekt arbeitet, sondern auch den exakten stilistischen und strukturellen Vorgaben der Markenstimme entspricht. Der Aufwand für das Erstellen der handverlesenen Beispiele zahlt sich durch sofort verwendbare Artefakte aus.

## Skills (System-Skills, Workspace-Skills, Custom Skills)

Skills erweitern die Fähigkeiten des Langdock-Chats über reine Textgenerierung hinaus. System-Skills sind vordefinierte Fähigkeiten, die allen Nutzern direkt aus der Box zur Verfügung stehen, wie beispielsweise die native Websuche oder rudimentäre Datenanalyse. Diese System-Skills sind sofort einsatzbereit, erfordern keine Konfiguration und dienen als schnelle Recherche-Helfer im Alltag.

Workspace-Skills werden auf Unternehmensebene definiert und stehen allen Mitgliedern eines Workspaces zur Verfügung. Solche Workspace-Skills können Anbindungen an interne Systeme, spezifische Datenbank-Queries oder unternehmensweite APIs sein. Sie ermöglichen es der KI, mit den tatsächlichen Daten des Unternehmens zu interagieren, was den Wert der Plattform vom isolierten Textgenerator zur echten Unternehmensassistenz transformiert.

Custom Skills bieten die höchste Flexibilität. Sie erlauben es, individuelle Integrationen für spezifische Workflows zu bauen. Durch die Definition von Custom Skills können Marketing-Teams die KI direkt mit ihren bevorzugten Tools wie CRM-Systemen oder Content-Management-Systemen verknüpfen, um komplexe Automatisierungen und Datentransfers direkt aus dem Chat heraus zu orchestrieren.

## Memory in Chat vs Agents (kritischer Unterschied)

Ein kritischer Aspekt bei der Nutzung von Langdock ist das Verständnis von Memory (Gedächtnis) im Standard-Chat im Vergleich zu Agenten. Im Standard-Chat ist das Memory strikt an die jeweilige Konversations-Sitzung gebunden. Die KI erinnert sich an alle vorherigen Nachrichten innerhalb desselben Chats, aber dieses aggregierte Wissen geht sofort verloren, sobald ein neuer, leerer Chat gestartet wird. Dieser Weg ist das Mittel der Wahl für isolierte Aufgaben (z.B. eine E-Mail entwerfen).

Agenten hingegen können über ein persistentes Gedächtnis verfügen, das über einzelne Chat-Sitzungen hinausgeht. Ein Agent kann über System-Anweisungen so instruiert werden, dass er relevante Informationen aus vergangenen Interaktionen speichert und in völlig neuen Sessions wieder abruft. Diese Persistenz ist absolut entscheidend für langfristige strategische Projekte, bei denen Kontext (z.B. Zielgruppen-Insights) über Monate hinweg konsistent abrufbar bleiben muss.

Die Unterscheidung ist essenziell für das Architektur-Design von Arbeitsabläufen. Wenn Kontext dauerhaft über Sitzungen hinweg erhalten bleiben muss, ist ein Agent (oder ein dedizierter Wissensordner) die korrekte Wahl. Wenn es um schnelle, in sich abgeschlossene Tasks geht, reicht der ad-hoc Standard-Chat völlig aus. Die falsche Wahl führt unweigerlich zu massivem Kontextverlust oder zu völlig überdimensioniertem Konfigurationsaufwand für simple Aufgaben.

## Custom Instructions vs Memory

Custom Instructions und Memory dienen unterschiedlichen Zwecken bei der Feinsteuerung und Personalisierung der KI-Erfahrung. Custom Instructions (benutzerdefinierte Anweisungen) sind statische Vorgaben, die bei absolut jedem Chat-Start als unsichtbarer Meta-Prompt greifen. Hier werden permanente Präferenzen hart codiert, wie beispielsweise die bevorzugte Sprache, die Rolle (z.B. "Antworte immer als nüchterner DACH-Marketer") oder Formatierungswünsche (z.B. "Keine Bulletpoints ohne konkreten Nutzen").

Memory hingegen ist hochgradig dynamisch. Es baut sich während der laufenden Interaktion organisch auf und speichert spezifische Fakten, getroffene Entscheidungen oder erarbeitete Zwischenergebnisse, die im Verlauf einer konkreten Konversation entstehen. Memory reagiert agil auf den Verlauf des Gesprächs, während Custom Instructions proaktiv die unabänderlichen Basis-Leitplanken für jedes Gespräch setzen.

Für eine exzellente Nutzung sollten beide Konzepte strategisch kombiniert werden. Custom Instructions sorgen für das verlässliche Basis-Setup und die Einhaltung ungeschriebener Team-Richtlinien, während das Memory den spezifischen, flüchtigen Kontext der aktuellen Aufgabe verwaltet. Das tiefe Verständnis dieses Zusammenspiels verhindert die frustrierende Notwendigkeit, der KI immer wieder dieselben grundlegenden Arbeitsweisen erklären zu müssen.

## Marketing-Szenarien aus dieser Domäne


### S-CP-001 Content-Performance Falsifizierungs-Check
**Wann nutzen (Trigger):** Du hast das Gefühl, ein zentraler Blog-Post liefert nicht mehr die gewünschten Leads.
**Strategisches Ziel:** Identifikation verdeckter Schwachstellen in bestehendem Content durch gezielte Gegenargumentation.
**Hands-on Ergebnis:** Eine priorisierte Liste von 3 widerlegten Annahmen über den Post.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat, Websuche
**Vorgehen (3-5 Schritte):**
1. Öffne einen neuen Chat.
2. Kopiere den Link des betreffenden Artikels in den Chat.
3. Nutze den Prompt, um die KI zur kritischen Falsifizierung aufzufordern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem kritischer SEO- und Content-Auditor. Aufgabe: Zerstöre meine Annahme, dass dieser Artikel (URL) aktuell die beste Antwort auf die Suchintention 'B2B Software kaufen' liefert. Kontext: Wir haben den Text seit 18 Monaten nicht aktualisiert, die Leads sinken. Format: Eine gnadenlose Top-3-Liste, warum der Text veraltet oder irrelevant ist, in klaren Bulletpoints."
**Erwartetes Artefakt:** Kompakte Liste mit 3 harten Kritikpunkten (z.B. veraltete Studien, fehlende Formate).
**Fallstricke (mind. 2 spezifisch):**
- Die KI weigert sich anfangs, hart zu kritisieren → Weise sie im Prompt an, Höflichkeit zugunsten analytischer Schärfe abzulegen.
- Der Crawler erfasst das Datum nicht → Kopiere den reinen Textausschnitt mit Datum per Hand rein.
**Anschluss-Szenario:** S-CP-002

### S-CP-002 Content-Steelmanning für Konkurrenz-Analysen
**Wann nutzen (Trigger):** Ein Mitbewerber hat einen extrem erfolgreichen Evergreen-Content veröffentlicht, der euer Ranking bedroht.
**Strategisches Ziel:** Das eigene Verständnis der Konkurrenz-Exzellenz schärfen, ohne defensiv zu reagieren.
**Hands-on Ergebnis:** Ein Reverse-Engineering-Briefing des Konkurrenz-Artikels.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Identifiziere den stärksten Konkurrenz-Artikel.
2. Führe den Steelmanning-Prompt aus, um die stärksten Argumente der Konkurrenz herauszuarbeiten.
3. Leite daraus strukturelle Learnings für das eigene Content-Team ab.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein neutraler Analyst. Aufgabe: Mache ein 'Steelmanning' für diesen Konkurrenz-Artikel (URL). Kontext: Ich will nicht wissen, was daran schlecht ist, sondern exakt, was diesen Artikel inhaltlich und strukturell so unfassbar gut macht, dass wir dagegen verlieren. Format: Ein Reverse-Engineering-Briefing, das die 5 Kernstärken aufschlüsselt."
**Erwartetes Artefakt:** 5-Punkte-Analyse der stärksten Content-Elemente des Mitbewerbers.
**Fallstricke (mind. 2 spezifisch):**
- Die KI fasst nur den Inhalt zusammen → Betone "Reverse-Engineering der Struktur und Argumentation".
- Fokus auf SEO-Keywords statt Inhalt → "Ignoriere reines Keyword-Stuffing, fokussiere dich auf Lesernutzen."

### S-CP-003 Kampagnen-Pre-Mortem (Content-Fokus)
**Wann nutzen (Trigger):** Ein großes E-Book-Launch-Datum steht kurz bevor und das Team ist fast zu selbstsicher.
**Strategisches Ziel:** Proaktive Vermeidung von Content-Distributions-Fehlern durch Vorwegnahme des Scheiterns.
**Hands-on Ergebnis:** Ein Notfall-Präventionsplan für die Content-Distribution.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Lade den Launch-Plan als PDF oder Text in den Chat.
2. Versetze die KI in die Zukunft nach einem katastrophalen Fehlschlag.
3. Lass die KI die plausibelsten Gründe für das Scheitern des Content-Pulls generieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein erfahrener Krisenmanager im Marketing. Aufgabe: Führe ein Pre-Mortem für unsere E-Book-Kampagne durch. Kontext: Es ist jetzt 6 Monate in der Zukunft. Die Kampagne (Plan im Anhang) hat exakt 0 Leads generiert. Es war ein totales Desaster. Erkläre mir detailliert die 3 wahrscheinlichsten Gründe, warum der Content von der Zielgruppe komplett ignoriert wurde. Format: Ein schonungsloser Analyse-Bericht (Markdown)."
**Erwartetes Artefakt:** 3 konkrete, plausible Scheiter-Szenarien bezogen auf den Content.
**Fallstricke (mind. 2 spezifisch):**
- KI erfindet externe Faktoren (Wirtschaftskrise) → Limitiere Ursachen auf "Content-Qualität und Distribution".
- Die Kritik ist zu generisch ("schlechtes SEO") → Fordere spezifische Fehler im angehängten Plan.
**Anschluss-Szenario:** S-CP-004

### S-CP-004 Contrast Classes: Whitepaper vs. Webinar
**Wann nutzen (Trigger):** Das Team ist unentschlossen, welches Format für das neue Q3-Thema besser konvertiert.
**Strategisches Ziel:** Fundierte Format-Entscheidung auf Basis von Zielgruppen-Nutzungsverhalten.
**Hands-on Ergebnis:** Eine vergleichende Matrix zwischen zwei Content-Formaten.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Zielgruppen-Personas)
**Vorgehen (3-5 Schritte):**
1. Stelle sicher, dass die Personas im Wissensordner liegen.
2. Triggere einen Vergleich der Content-Klassen.
3. Bewerte die Matrix gemeinsam mit dem Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Content-Strategie-Direktor. Aufgabe: Erstelle eine Contrast-Class-Analyse zwischen '60-seitiges Whitepaper' und '3-teilige Webinar-Serie' für das Thema 'KI in der Logistik'. Kontext: Nutze unsere Persona 'Logistik-Leiter Klaus' aus dem Wissensordner. Was sind die exakten trade-offs bezüglich seiner knappen Zeit und seiner Kaufbereitschaft? Format: Eine detaillierte Gegenüberstellungs-Matrix."
**Erwartetes Artefakt:** Markdown-Tabelle mit Gegenüberstellung der Formate bzgl. Persona-Fit.
**Fallstricke (mind. 2 spezifisch):**
- Fehlender Zugriff auf die Persona → "Nutze explizit die hochgeladene Persona-Datei".
- KI wägt nur Vor-/Nachteile ab → "Fokussiere auf die Kontraste im Nutzungsverhalten".

### S-CP-005 Bayesian Prior für Newsletter-Öffnungsraten
**Wann nutzen (Trigger):** Ein neuer Newsletter-Funnel soll aufgesetzt werden und du brauchst realistische Baseline-Erwartungen.
**Strategisches Ziel:** Vermeidung von unrealistischen KPIs durch Einbezug historischer Branchen-Baselines.
**Hands-on Ergebnis:** Ein kalibriertes Ziel-Framework für die ersten 3 Newsletter-Versände.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Frage nach aktuellen Branchen-Durchschnitten (Base Rate).
2. Justiere diese mit deinen spezifischen, eigenen historischen Daten (Bayesian Update).
3. Definiere die KPIs für das Dashboard.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Data-Driven E-Mail-Marketer. Aufgabe: Kalibriere unsere Erwartungen für den neuen SaaS-Newsletter. Kontext: Unser 'Bayesian Prior' (unsere bisherige Liste) hatte 18% Öffnungsrate. Wir starten nun eine hoch-spezifische Nischen-Liste. Suche aktuelle 2024 Base-Rates für B2B-SaaS Newsletter. Update unsere Erwartung logisch. Format: Eine kurze Kalkulation und 3 realistische KPI-Ziele für Monat 1."
**Erwartetes Artefakt:** Kalkulation mit Branchen-Benchmark und angepasstem Ziel-Korridor.
**Fallstricke (mind. 2 spezifisch):**
- KI halluziniert Base-Rates → "Nutze die Websuche für echte 2024 Mailchimp/Hubspot Benchmarks."
- Zu komplexe Mathematik → "Erkläre die Anpassung in simplen Marketing-Begriffen."

### S-CP-006 Source Triangulation für Thought-Leadership Content
**Wann nutzen (Trigger):** Du bereitest einen hochkarätigen CEO-Artikel vor und brauchst wasserdichte, mehrfach bestätigte Statistiken.
**Strategisches Ziel:** Aufbau von unantastbarer Autorität durch rigoros geprüfte Datenpunkte.
**Hands-on Ergebnis:** Ein Fact-Sheet mit 5 verifizierten Kern-Aussagen.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche, Konversations-Starter
**Vorgehen (3-5 Schritte):**
1. Definiere das grobe Thema (z.B. "Remote Work Produktivität").
2. Nutze Langdock, um gezielt nach sich überschneidenden Studien zu suchen.
3. Übertrage die verifizierten Daten in das Ghostwriting-Briefing.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Chief Researcher für einen CEO. Aufgabe: Finde 3 extrem belastbare Statistiken zum Thema 'KI-Adoption in traditionellen Industrien'. Kontext: Wir nutzen 'Source Triangulation'. Jede Statistik MUSS von mindestens drei unabhängigen Top-Tier-Quellen (z.B. McKinsey, Gartner, MIT) bestätigt oder ähnlich gemessen worden sein. Format: Ein Fact-Sheet. Pro Statistik die 3 triangulierten Quellen mit Link und kurzer Methodik-Notiz."
**Erwartetes Artefakt:** Fact-Sheet mit 3 Datenpunkten, jeweils untermauert von 3 Primärquellen.
**Fallstricke (mind. 2 spezifisch):**
- KI erfindet Studiennamen → "Gib zwingend an, ob du die Studie online gefunden hast oder ob es eine Annahme ist."
- KI nutzt nur Blog-Posts als Quelle → "Fokussiere auf Primär-Research und Institute, keine reinen Content-Blogs."

### S-CP-007 Contradiction Log für jahrelange Blog-Historien
**Wann nutzen (Trigger):** Euer Corporate Blog existiert seit 5 Jahren und du vermutest, dass ihr euch mittlerweile selbst widersprecht.
**Strategisches Ziel:** Sicherung der inhaltlichen Kohärenz der Marke über lange Zeiträume.
**Hands-on Ergebnis:** Ein Logbuch inhaltlicher Widersprüche zur Bereinigung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Wissensordner
**Vorgehen (3-5 Schritte):**
1. Exportiere die Top 50 Blogpost-Texte als CSV oder lade sie in den Wissensordner.
2. Triggere die Widerspruchs-Suche.
3. Gib das Logbuch an die Redaktion zur Überarbeitung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein scharfsinniger Content-Auditor. Aufgabe: Erstelle ein Contradiction Log aus dem angehängten Dokument unserer alten Blog-Beiträge. Kontext: Ich suche nach expliziten Widersprüchen. Haben wir 2021 behauptet, Methode A sei die beste, und 2023 behauptet, Methode A sei tot? Format: Eine Tabelle mit Spalten: Datum 1, Aussage 1, Datum 2, Aussage 2, Schweregrad des Widerspruchs (1-5)."
**Erwartetes Artefakt:** Tabelle mit konkreten inhaltlichen Widersprüchen im eigenen Content.
**Fallstricke (mind. 2 spezifisch):**
- KI findet nur stilistische Änderungen → "Ignoriere Tone-of-Voice-Änderungen, suche reine Fakten-Widersprüche."
- Kontextfenster sprengt bei zu großen Dateien → Teile den Export in Jahres-Blöcke auf.
**Anschluss-Szenario:** S-CP-008

### S-CP-008 "What Would Change My Mind"-Framework für Redaktionspläne
**Wann nutzen (Trigger):** Du hältst stur an einer Content-Säule (z.B. "Podcasts") fest, obwohl die Performance stagniert.
**Strategisches Ziel:** Objektivierung von Content-Entscheidungen und Überwindung von Sunk-Cost-Fallacies.
**Hands-on Ergebnis:** Ein Set an klaren Abbruch-Kriterien für Content-Formate.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das Sorgenkind-Format im Chat.
2. Zwinge die KI und dich selbst, den Punkt zu definieren, an dem die Strategie geändert werden MUSS.
3. Hinterlege diese Kriterien im Team-Wiki.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein rationaler CMO-Berater. Aufgabe: Wende das 'What Would Change My Mind'-Framework auf unseren Firmen-Podcast an. Kontext: Ich liebe dieses Projekt, aber es wächst nicht. Definiere 4 harte, messbare Metriken oder qualitative Signale für das nächste Quartal, bei deren Eintreten ich mir selbst eingestehen MUSS, dass das Format tot ist und eingestellt wird. Format: Eine nüchterne Checkliste der Abbruch-Kriterien."
**Erwartetes Artefakt:** Liste mit 4 unmissverständlichen Kill-Kriterien für das Content-Format.
**Fallstricke (mind. 2 spezifisch):**
- Kriterien sind zu weich ("wenig Engagement") → "Die Kriterien müssen binär messbar sein (z.B. < 500 Downloads in 30 Tagen)."
- KI ist zu ermutigend → "Sei nicht motivierend, sei ein eiskalter Zahlen-Analyst."

### S-CP-009 Red Team Attacke auf ein Content-Pillar
**Wann nutzen (Trigger):** Das Team hat ein riesiges neues Content-Pillar-Thema vorgeschlagen und ist verliebt in die Idee.
**Strategisches Ziel:** Stresstest der strategischen Ausrichtung bevor Ressourcen alloziert werden.
**Hands-on Ergebnis:** Ein Schwachstellen-Report der vorgeschlagenen Content-Säule.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (mit Red-Team-System-Prompt)
**Vorgehen (3-5 Schritte):**
1. Lade das Content-Pillar-Konzept in den Chat.
2. Fordere die KI auf, die Rolle eines bösartigen Konkurrenten einzunehmen.
3. Lass die KI die Strategie zerlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist der Chief Content Officer unseres aggressivsten Konkurrenten (ein Red Team). Aufgabe: Zerreiße unser neues Content-Pillar-Konzept (siehe Text). Kontext: Suche die logischen Lücken. Warum wird niemand diesen Content lesen? Wie würdest du unseren Traffic mit einem Zehntel des Budgets stehlen? Format: Ein bösartiger 4-Punkte-Angriffsplan auf unsere Strategie."
**Erwartetes Artefakt:** 4-Punkte-Plan, der zeigt, wie leicht die Strategie auszuhebeln ist.
**Fallstricke (mind. 2 spezifisch):**
- Die KI bleibt zu oberflächlich → "Geh ins Detail unserer vorgeschlagenen Themen und zeige, warum sie langweilig sind."
- KI wird unsachlich → "Sei aggressiv, aber bleibe streng logisch und faktenbasiert in deiner Kritik."

### S-CP-010 First-Principles für neues Format-Design
**Wann nutzen (Trigger):** Ihr wollt einen Newsletter starten, landet aber immer wieder bei denselben Standard-Layouts der Industrie.
**Strategisches Ziel:** Echte Innovation durch Herunterbrechen der Aufgabe auf ihre physikalischen/psychologischen Grundbausteine.
**Hands-on Ergebnis:** Ein völlig neuartiges Format-Konzept.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Benenne das alte Format, das neu gedacht werden soll (z.B. "Case Study").
2. Nutze First-Principles, um die grundlegendsten Bedürfnisse des Lesers zu isolieren.
3. Baue von diesen Grundbedürfnissen ein neues Format auf.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Innovations-Designer. Aufgabe: Erfinde das Format 'Case Study' neu, basierend auf First Principles. Kontext: Wir wollen keine 4-seitigen PDFs mehr mit 'Problem/Solution/Result'. Was ist die absolute Basis-Wahrheit? Ein Kunde hat ein Problem, wir lösen es, es gibt Beweise. Baue von diesen 3 Grundwahrheiten ein radikal neues, rein digitales Content-Format für 2025. Format: Ein kurzes Pitch-Dokument für das neue Format."
**Erwartetes Artefakt:** Pitch für ein unkonventionelles Content-Format (z.B. interaktives Micro-Dashboard statt PDF).
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt nur kleinere Iterationen vor (z.B. "Mach ein Video draus") → "Ignoriere alle existierenden Standardformate strikt."
- Das Konzept ist technisch nicht umsetzbar → "Das neue Format muss mit Standard-Webtechnologien bau- und skalierbar sein."

### S-CP-011 Assumption Decay bei Evergreen Content
**Wann nutzen (Trigger):** Ein ehemals starker "Definitive Guide" zieht noch Traffic, aber die Verweildauer sinkt rapide.
**Strategisches Ziel:** Identifikation von veralteten Grundannahmen in ehemals korrektem Content.
**Hands-on Ergebnis:** Ein "Verfallsdatum-Report" für Kern-Aussagen des Guides.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Extrahiere die 5 zentralen Aussagen des alten Guides.
2. Lass die KI prüfen, ob diese Annahmen durch neue Markt-Entwicklungen "zerfallen" sind.
3. Plane das Update.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Branchen-Analyst. Aufgabe: Prüfe diese 5 Thesen (siehe Text) aus unserem 2021er Guide auf 'Assumption Decay'. Kontext: Welche dieser Wahrheiten sind 2024 nicht mehr wahr? Gab es disruptive Ereignisse (wie neue KI-Modelle), die diese Annahmen komplett invalidieren? Format: Eine Liste, die jede Annahme als 'Noch valide', 'Teilweise verfallen' oder 'Komplett falsch' einstuft, inkl. Begründung aus 2024."
**Erwartetes Artefakt:** Audit-Liste mit aktuellem Wahrheitsgehalt alter Content-Bausteine.
**Fallstricke (mind. 2 spezifisch):**
- KI rät, ob es Neuerungen gab → "Nutze zwingend die Websuche, um 2024er Entwicklungen zu verifizieren."
- Fehlender Kontext zur Industrie → "Berücksichtige explizit den B2B-SaaS-Kontext bei der Bewertung."

### S-CP-012 Base-Rate Validierung für Content-Budgets
**Wann nutzen (Trigger):** Das Team fordert 50.000€ für eine vage "Viral-Video-Kampagne".
**Strategisches Ziel:** Realistische Budget-Allokation durch Vermeidung des "Inside View".
**Hands-on Ergebnis:** Eine Gegenüberstellung von Wunschdenken vs. statistischer Realität (Base-Rate).
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm den Budget-Pitch des Teams.
2. Recherchiere die Base-Rate für den Erfolg ähnlicher Initiativen.
3. Führe ein Data-driven Gespräch mit dem Team über das Risiko.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein rationaler CFO. Aufgabe: Gib mir die Base-Rate für den Erfolg. Kontext: Mein Team will 50k in ein B2B-Viral-Video stecken und erwartet 1 Mio. Views. Was ist die statistische Base-Rate (Wahrscheinlichkeit) für ein B2B-Software-Video auf LinkedIn/YouTube, um organisch über 100k Views zu kommen? Format: Eine harte Wahrscheinlichkeits-Einschätzung und 3 alternative, Base-Rate-sicherere Content-Investments für 50k."
**Erwartetes Artefakt:** Nüchterne Einschätzung der Erfolgschance plus 3 sichere Investitions-Alternativen.
**Fallstricke (mind. 2 spezifisch):**
- KI vermischt B2C und B2B Benchmarks → "Trenne strikt zwischen B2C-Consumer-Viralität und B2B-Nischen-Reichweite."
- Die Alternativen sind langweilig → "Die Alternativen müssen den gleichen innovativen Anspruch haben, aber kalkulierbarer sein."
**Anschluss-Szenario:** S-CP-013

### S-CP-013 Adversarial Query Expansion für Keyword-Strategien
**Wann nutzen (Trigger):** Eure SEO-Strategie stagniert, weil ihr nur noch auf die exakt gleichen 10 Head-Keywords optimiert.
**Strategisches Ziel:** Erschließung komplett neuer Themen-Cluster durch gegnerisches "Um-die-Ecke-Denken".
**Hands-on Ergebnis:** Eine Liste mit 10 völlig unerwarteten, tangentialen Content-Themen.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm das ausgereizte Haupt-Keyword.
2. Triggere die Adversarial Expansion, um weite Bögen zu spannen.
3. Identifiziere die 2 besten neuen Pillar-Ansätze.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein unkonventioneller SEO-Stratege. Aufgabe: Führe eine 'Adversarial Query Expansion' für unser Haupt-Thema 'ERP Software' durch. Kontext: Ich will keine normalen Long-Tail-Keywords wie 'ERP für Mittelstand'. Ich will tangentiale Queries. Wonach sucht unser Kunde 6 Monate BEVOR er überhaupt weiß, dass er ein ERP braucht? Was sucht er, wenn das aktuelle ERP abstürzt? Format: Eine Liste mit 10 überraschenden Suchintentionen (pain-point driven) und passenden Content-Ideen."
**Erwartetes Artefakt:** 10 unkonventionelle Content-Ideen basierend auf vorgeschalteten Pain-Points.
**Fallstricke (mind. 2 spezifisch):**
- KI liefert doch wieder Standard-Keywords → "Streiche alle Ergebnisse, die das Wort 'Software' oder 'System' enthalten."
- Die Intentionen sind zu weit weg vom Produkt → "Der logische Pfad vom Suchbegriff zu unserem Produkt darf maximal 2 gedankliche Schritte betragen."

### S-CP-014 Content-Architektur-Falsifikation für Hubs
**Wann nutzen (Trigger):** Ein neuer riesiger Content-Hub wird geplant und die UX-Struktur wirkt auf dem Papier zu komplex.
**Strategisches Ziel:** Vereinfachung der User-Journey durch rigoroses Hinterfragen der Taxonomie-Annahmen.
**Hands-on Ergebnis:** Ein gestraffter Taxonomie-Entwurf.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner
**Vorgehen (3-5 Schritte):**
1. Lade den Taxonomie-Baum als Text oder CSV hoch.
2. Fordere die KI auf, die Annahme zu falsifizieren, dass Nutzer diese Struktur verstehen.
3. Überarbeite die Navigation basierend auf dem Feedback.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein radikaler UX-Researcher. Aufgabe: Falsifiziere die Annahme, dass unsere neue Content-Hub-Struktur (siehe Datei) intuitiv ist. Kontext: Wir haben 4 Ebenen Tiefe geplant. Beweise mir logisch anhand von kognitiver Belastung (Cognitive Load Theory), warum ein B2B-Käufer spätestens in Ebene 3 abspringt. Format: Eine gnadenlose UX-Kritik und ein Gegenvorschlag für eine flache 2-Ebenen-Architektur."
**Erwartetes Artefakt:** Kritik an der Hierarchie und ein vereinfachter Struktur-Entwurf.
**Fallstricke (mind. 2 spezifisch):**
- Kritik fokussiert auf visuelles Design → "Ignoriere UI-Design, kritisiere rein die Informationsarchitektur und Taxonomie."
- Gegenvorschlag verliert wichtige Themen → "Die flache Struktur muss trotzdem alle 50 Kernthemen aus dem Original logisch auffangen."

### S-CP-015 Steelmanning des Sales-Feedbacks zu Content
**Wann nutzen (Trigger):** Das Sales-Team beschwert sich ständig, der Marketing-Content sei "nicht nutzbar", was zu internen Spannungen führt.
**Strategisches Ziel:** Auflösung der Silo-Konflikte durch ehrliche Aufwertung (Steelmanning) der Sales-Perspektive.
**Hands-on Ergebnis:** Ein revidiertes Content-Format-Briefing, das Sales-Bedürfnisse zentriert.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Notiere die häufigsten, genervten Aussagen des Sales-Teams.
2. Lass die KI diese Aussagen ins stärkstmögliche strategische Argument übersetzen.
3. Passe die Content-Templates an.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein objektiver Mediator zwischen Marketing und Sales. Aufgabe: Mache ein Steelmanning für folgendes Sales-Feedback: 'Eure Whitepaper sind zu lang, kein Kunde liest das, gebt uns lieber 1-Pager'. Kontext: Als Marketing-Leiterin fühle ich mich angegriffen. Übersetze diese plumpe Kritik in das stärkste, professionellste Argument aus Sicht der Sales-Effizienz. Warum hat Sales völlig recht? Format: Eine diplomatische Übersetzung und 3 konkrete Anpassungen für unseren Content-Plan."
**Erwartetes Artefakt:** Konstruktive Umformulierung der Kritik und 3 actionable Format-Änderungen (z.B. Executive Summaries für Sales).
**Fallstricke (mind. 2 spezifisch):**
- KI gibt dem Marketing die Schuld → "Bleibe neutral, übersetze nur den Wert der Kritik, ohne zu verurteilen."
- Anpassungen sind unrealistisch → "Die Lösungen müssen den Marketing-Anspruch an Tiefe bewahren, aber für Sales skannbar sein."

### S-CP-016 Pre-Mortem für einen Brand-Relaunch-Content
**Wann nutzen (Trigger):** Ein kompletter Rewrite aller Website-Texte für das Rebranding steht an.
**Strategisches Ziel:** Risikominimierung bei massiven Content-Migrationen.
**Hands-on Ergebnis:** Eine Checkliste kritischer Content-Risiken für das Rebranding.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (altes vs. neues Brand-Buch)
**Vorgehen (3-5 Schritte):**
1. Lade altes und neues Brand-Buch hoch.
2. Versetze dich ans Ende des Relaunchs (Misserfolg).
3. Lass die KI die Content-basierten Gründe generieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein SEO- und Content-Krisenmanager. Aufgabe: Pre-Mortem für unseren Website-Texte-Relaunch. Kontext: Wir migrieren alle Texte auf die neue Brand-Voice (Dateien anbei). Es ist 3 Monate nach Go-Live. Unser organischer Traffic ist um 60% eingebrochen und Stammkunden sind extrem irritiert. Erkläre die 4 wahrscheinlichsten Fehler, die wir bei der Content-Überarbeitung gemacht haben. Format: 4 harte Fehler-Szenarien und Präventivmaßnahmen."
**Erwartetes Artefakt:** 4 konkrete Fehler (z.B. "Keyword-Verlust durch zu blumige Sprache") und Gegenmaßnahmen.
**Fallstricke (mind. 2 spezifisch):**
- KI nennt technische SEO-Fehler (Redirects) → "Fokussiere zu 100% auf inhaltliche, semantische und stilistische Fehler der Texte."
- Präventivmaßnahmen sind trivial → "Die Maßnahmen müssen spezifische Content-QA-Schritte vor dem Go-Live beinhalten."

### S-CP-017 Contrast Classes: "How-To" vs. "Opinion Piece"
**Wann nutzen (Trigger):** Du musst die Content-Ressourcen für den nächsten Monat aufteilen und brauchst einen Fokus.
**Strategisches Ziel:** Effektive Ressourcen-Allokation basierend auf dem aktuellen Funnel-Engpass.
**Hands-on Ergebnis:** Eine strategische Content-Mix-Empfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Identifiziere das aktuelle Hauptproblem (z.B. "Zu wenig Top-of-Funnel Attention").
2. Vergleiche die Klassen anhand dieses Problems.
3. Leite die Prozentuale Verteilung ab.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein erfahrener Content-Architekt. Aufgabe: Contrast-Class-Analyse für unseren nächsten Monats-Sprint. Kontext: Unser Engpass ist aktuell 'Brand Awareness und Provokation im Markt' (Top of Funnel). Vergleiche tiefgehend die Content-Klassen 'Detaillierte How-To-Guides' vs. 'Starke Opinion Pieces (Thought Leadership)'. Welches Format löst unseren Engpass besser? Format: Eine Matrix und eine klare Empfehlung für den Ressourcen-Split (in %)."
**Erwartetes Artefakt:** Matrix-Vergleich und eine harte Empfehlung (z.B. 80% Opinion, 20% How-To) mit Begründung.
**Fallstricke (mind. 2 spezifisch):**
- KI rät zu 50/50-Split → "Zwinge dich zu einer pointierten Entscheidung, kein diplomatisches Unentschieden."
- Begründung ignoriert den Engpass → "Beziehe dich bei jedem Punkt explizit auf das Ziel 'Brand Awareness'."

### S-CP-018 Bayesian Prior für Content-Produktionszeiten
**Wann nutzen (Trigger):** Ein neues Teammitglied schätzt, dass es 3 Blogposts pro Woche schreiben kann.
**Strategisches Ziel:** Vermeidung von Burnout und Deadlines-Brüchen durch realistische Planung.
**Hands-on Ergebnis:** Ein kalibrierter Produktions-Schedule.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die geschätzte Zeit des Juniors.
2. Nutze die KI, um die Base-Rate (typische B2B-Qualitäts-Produktion) und deinen internen Prior abzugleichen.
3. Erstelle den validierten Plan.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Content-Operations-Manager. Aufgabe: Kalibriere unsere Produktions-Planung. Kontext: Ein motivierter Junior schätzt, er schafft 3 tiefgehende B2B-Fachartikel pro Woche. Unsere interne historische Base-Rate (Prior) für hohe Qualität liegt bei 1 Artikel pro Woche inklusive Review-Schleifen. Update die Erwartung für den Junior logisch unter Einbezug von Einarbeitungszeit. Format: Eine diplomatische Erklärung für den Junior und ein realistischer Ramp-up-Plan für Monat 1-3."
**Erwartetes Artefakt:** Ein Ramp-up-Plan (z.B. Start mit 1 Artikel alle 2 Wochen) und Erklärungs-Notizen.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt Schreib-Dauer ohne Reviews → "Kalkuliere zwingend Research, Interviews, SEO-Check und Stakeholder-Reviews ein."
- Tonfall ist zu herablassend → "Formuliere das Feedback wertschätzend und schützend gegenüber der Motivation des Juniors."
**Anschluss-Szenario:** S-CP-019

### S-CP-019 Source Triangulation für Produkt-Claims im Content
**Wann nutzen (Trigger):** Das Produktmarketing liefert eine wilde Behauptung für die neue Kampagne ("Wir sind 5x schneller").
**Strategisches Ziel:** Vermeidung von Reputationsschäden durch ungedeckte Marketing-Claims (Greenwashing/Techwashing).
**Hands-on Ergebnis:** Ein Verifizierungs- oder Abschwächungs-Vorschlag für den Kern-Claim.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Produktdatenblätter)
**Vorgehen (3-5 Schritte):**
1. Lade alle relevanten Tech-Specs und internen Tests hoch.
2. Zwinge die KI zur internen Triangulation des Claims gegen die echten Daten.
3. Gib das Resultat ans Produktmarketing zurück.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein kritischer Legal-Marketing-Reviewer. Aufgabe: Wende 'Source Triangulation' auf den Claim 'Unsere Software ist 5x schneller als der Marktstandard' an. Kontext: Prüfe diesen Claim hart gegen die drei hochgeladenen Dokumente (Tech-Specs, Beta-User-Feedback, Konkurrenz-Analyse). Bestätigen diese drei unterschiedlichen internen Quellen den Claim lückenlos? Format: Ein Ampel-Rating (Rot/Gelb/Grün) und falls nötig, 2 rechtssichere, abgeschwächte Alternativ-Claims."
**Erwartetes Artefakt:** Risikobewertung des Claims und sichere Alternativ-Formulierungen.
**Fallstricke (mind. 2 spezifisch):**
- KI nimmt den Claim als gegeben hin → "Du musst aktiv nach Gründen suchen, warum der Claim angreifbar ist."
- Alternativen sind zu schwach → "Die Alternativen müssen marketing-tauglich und punchy bleiben, nur eben belegbar."

### S-CP-020 Contradiction Log für Multi-Channel-Kampagnen
**Wann nutzen (Trigger):** Eine große Q4-Kampagne läuft über Social, E-Mail, Ads und Website gleichzeitig.
**Strategisches Ziel:** Sicherstellung einer nahtlosen und widerspruchsfreien Customer Journey.
**Hands-on Ergebnis:** Ein QA-Report vor Kampagnen-Launch.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst (für Zip-Datei mit allen Assets)
**Vorgehen (3-5 Schritte):**
1. Sammle alle Text-Assets (Landingpage, Ad-Copy, E-Mails) in einem Dokument oder Ordner.
2. Lass den Agenten gezielt nach Diskrepanzen in Preis, Datum, oder Versprechen suchen.
3. Korrigiere die Fehler vor Go-Live.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein pedantischer Quality-Assurance-Tester. Aufgabe: Führe einen Contradiction-Check über alle hochgeladenen Kampagnen-Assets durch. Kontext: Ich brauche eine Prüfung auf harte Fakten-Widersprüche. Steht in der E-Mail 'Rabatt bis Freitag', aber auf der Landingpage 'bis Sonntag'? Steht in der Ad '50% Rabatt', aber im Checkout 'nur für Neukunden'? Format: Eine priorisierte Bullet-Liste aller gefundenen Widersprüche zwischen den Kanälen."
**Erwartetes Artefakt:** Fehler-Liste mit direkten Gegenüberstellungen (Kanal A sagt X, Kanal B sagt Y).
**Fallstricke (mind. 2 spezifisch):**
- KI verliert den Faden bei vielen Dateien → "Arbeite die Assets streng sequenziell ab und vergleiche immer gegen die Landingpage als Ground Truth."
- Es werden Tippfehler gemeldet → "Ignoriere Rechtschreibung, fokussiere exakt auf Angebots-Parameter (Preis, Zeit, Umfang)."

### S-CP-021 "What Would Change My Mind"-Framework für Gated Content
**Wann nutzen (Trigger):** Eure Lead-Maschine basiert auf 100% Gated Content (Whitepaper hinter Formularen), aber die Lead-Qualität ist miserabel.
**Strategisches Ziel:** Objektive Evaluierung eines radikalen Wechsels zu "Ungated Content".
**Hands-on Ergebnis:** Ein Kriterienkatalog für den Abbau von Formularen.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere den Status Quo (Gated) im Chat.
2. Etabliere die Mindest-Metriken, die einen Strategiewechsel erzwingen.
3. Nutze diese Metriken im nächsten Management-Meeting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Lead-Gen-Experte, der Ungated Content bevorzugt. Aufgabe: Wende 'What Would Change My Mind' auf unsere Gated-Content-Strategie an. Kontext: Wir weigern uns, Formulare zu entfernen, weil wir Leads brauchen. Die Qualität der Leads ist aber furchtbar. Definiere 3 harte, unbestreitbare Datenpunkte (z.B. bzgl. Sales-Accepted-Leads vs. Traffic), bei deren Erreichen wir den Content sofort ungaten MÜSSEN, weil die Formulare uns netto mehr kosten als sie bringen. Format: Ein 1-Pager Pitch für das Management."
**Erwartetes Artefakt:** 1-Pager mit 3 harten Kipp-Punkten, ab denen Ungating profitabler ist.
**Fallstricke (mind. 2 spezifisch):**
- Fokus auf reine Lead-Menge → "Beziehe zwingend die Sales-Conversion-Rate in die Kriterien mit ein."
- Argumentation ist zu esoterisch ("Brand Trust") → "Argumentiere rein über Pipeline-Value und Customer Acquisition Cost (CAC)."
**Anschluss-Szenario:** S-CP-022

### S-CP-022 Red Team Attacke auf das Content-Budget
**Wann nutzen (Trigger):** Du musst dein jährliches Content-Budget in Höhe von 500.000€ vor dem CFO verteidigen.
**Strategisches Ziel:** Härtung der Budget-Argumentation gegen Finanz-Kritik.
**Hands-on Ergebnis:** Ein FAQ-Dokument zur Verteidigung des Budgets.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (mit Persona "Skeptischer CFO")
**Vorgehen (3-5 Schritte):**
1. Lade dein Budget-Pitch-Deck als PDF in den Chat.
2. Instruiere die KI, als brutaler CFO jeden Euro in Frage zu stellen.
3. Bereite deine Antworten basierend auf den Angriffen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist unser CFO, der Content-Marketing für 'Geldverbrennung' hält (Red Team). Aufgabe: Greife mein angehängtes Content-Budget-Deck für 2025 brutal an. Kontext: Suche die Schwachstellen in meiner ROI-Berechnung. Wo sind meine Annahmen zu optimistisch? Warum sollte man das Budget lieber in Performance-Ads stecken? Format: Die 5 härtesten, unfairsten Fragen, die du mir im Meeting stellen wirst, in direktem, scharfem Ton."
**Erwartetes Artefakt:** 5 kritische CFO-Fragen, die Schwachstellen im Deck aufdecken.
**Fallstricke (mind. 2 spezifisch):**
- KI bleibt höflich → "Benutze typische CFO-Phrasen wie 'Wo ist der direkte Umsatz-Hebel?' oder 'Das sind doch nur Vanity-Metriken'."
- Kritik ist nicht Deck-spezifisch → "Beziehe dich explizit auf die Zahlen auf Slide 4 und 7."

### S-CP-023 First-Principles für Content-Distribution
**Wann nutzen (Trigger):** Ihr erstellt tollen Content, aber postet ihn nur routinemäßig auf LinkedIn und im Newsletter – die Reichweite ist tot.
**Strategisches Ziel:** Neu-Erfindung der Distributions-Strategie jenseits der Standard-Kanäle.
**Hands-on Ergebnis:** Ein radikal neuer Distributions-Ansatz.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das Ziel (Aufmerksamkeit der Zielgruppe).
2. Isoliere die First-Principles: Wo halten sich diese Menschen WIRKLICH auf?
3. Entwickle 2 unkonventionelle Distributions-Hacks.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Growth-Hacker. Aufgabe: Erfinde unsere Content-Distribution basierend auf First Principles neu. Kontext: B2B-IT-Leiter ignorieren unsere LinkedIn-Posts. First Principle: IT-Leiter suchen nach Lösungen, wenn etwas brennt, oft in Nischenforen, GitHub oder StackOverflow, nicht im LinkedIn-Feed. Entwickle 3 radikal neue, unkonventionelle Wege, unseren bestehenden Content exakt dort zu platzieren, wo die reine Notwendigkeit am größten ist. Format: 3 konkrete, sofort testbare Action-Items."
**Erwartetes Artefakt:** 3 konkrete Growth-Hacks für organische Distribution abseits des Mainstreams.
**Fallstricke (mind. 2 spezifisch):**
- Vorschlag von Paid Ads → "Alle Vorschläge müssen organisch oder Dark-Social-basiert sein."
- Hacks sind Spammy → "Die Ansätze müssen hohen echten Mehrwert für die IT-Leiter in ihrem natürlichen Habitat bieten."

### S-CP-024 Assumption Decay bei SEO-Strategien
**Wann nutzen (Trigger):** Die Agentur arbeitet nach dem gleichen SEO-Playbook wie 2022, aber die Rankings durch AI-Overviews (SGE) kollabieren.
**Strategisches Ziel:** Modernisierung des SEO-Playbooks durch Identifikation veralteter Taktiken.
**Hands-on Ergebnis:** Ein Audit-Report der aktuellen SEO-Guidelines.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Lade das aktuelle SEO-Briefing-Template hoch.
2. Lass die KI prüfen, welche Praktiken im Zeitalter von LLM-Suchmaschinen obsolet sind.
3. Passe das Briefing-Template an.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer SEO-Experte (Stand Ende 2024). Aufgabe: Analysiere unser angehängtes SEO-Briefing-Template auf 'Assumption Decay'. Kontext: Wir optimieren noch für klassische 10-Blue-Links. Welche dieser Taktiken (z.B. Keyword-Dichte, 2000 Wörter Länge) sind durch AI-Overviews (Google SGE, Perplexity) komplett obsolet oder sogar schädlich geworden? Format: Eine Liste 'Stop Doing', 'Start Doing' bezogen auf unser Template."
**Erwartetes Artefakt:** Stop/Start-Liste zur Anpassung der Content-Erstellung an KI-Suchmaschinen.
**Fallstricke (mind. 2 spezifisch):**
- KI nennt veraltete Updates (Penguin/Panda) → "Fokussiere exakt auf die Entwicklungen der letzten 12 Monate bezüglich Generative AI Search."
- Keine actionable Alternativen → "Für jedes 'Stop Doing' muss ein 'Start Doing' für LLM-Optimierung (GEO) folgen."

### S-CP-025 Base-Rate Validierung für Content-Frequenz
**Wann nutzen (Trigger):** Ein Berater empfiehlt "jeden Tag einen Blogpost zu veröffentlichen", um den Traffic zu verzehnfachen.
**Strategisches Ziel:** Schutz des Teams vor sinnlosem Output-Druck durch Realitätsabgleich.
**Hands-on Ergebnis:** Eine datengetriebene Gegenargumentation zur Frequenz-Erhöhung.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die These des Beraters.
2. Suche nach der Base-Rate: Korreliert extrem hohe Frequenz im B2B zwingend mit extremem Wachstum?
3. Formuliere eine strategische Antwort.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Marketing Stratege. Aufgabe: Validierung einer Berater-These. Kontext: Ein Berater sagt, wir müssen von 4 auf 30 Blogposts pro Monat skalieren, um Traffic zu verdoppeln. Suche nach der Base-Rate im B2B-SaaS Content Marketing: Gibt es verlässliche Daten (z.B. von Ahrefs, Orbit Media), dass schiere Quantität ohne massiven Qualitätsverlust gewinnt? Format: Ein 1-Pager, der diese These entweder mit Daten stützt oder sie als Mythos entlarvt, um mein Team vor Burnout zu schützen."
**Erwartetes Artefakt:** Strategisches Memo, das Quantität vs. Qualität im B2B anhand von Benchmarks bewertet.
**Fallstricke (mind. 2 spezifisch):**
- KI argumentiert nur philosophisch ("Qualität ist wichtig") → "Ich brauche harte Daten oder Case-Studies aus der Websuche, um gegen den Berater zu bestehen."
- Vermischung mit News-Publishern → "Achte darauf, dass die Benchmarks nicht von News-Seiten stammen, sondern von B2B-Corporates."
**Anschluss-Szenario:** S-CP-026

### S-CP-026 Adversarial Query Expansion für Content-Recycling
**Wann nutzen (Trigger):** Ein teures, 40-seitiges E-Book verstaubt als PDF auf der Website und generiert keinen Wert mehr.
**Strategisches Ziel:** Maximale ROI-Ausschöpfung bestehender Hero-Assets durch radikale Re-Kontextualisierung.
**Hands-on Ergebnis:** 5 völlig unkonventionelle Recycling-Ideen für das E-Book.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade das E-Book als PDF in den Chat.
2. Triggere die Adversarial Expansion, um völlig absurde, neue Anwendungsfälle zu finden.
3. Wähle die besten zwei Ideen zur Umsetzung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem kreativer Content-Recycler. Aufgabe: 'Adversarial Expansion' für dieses alte PDF-E-Book. Kontext: Wir haben schon alle Standard-Dinge getan (Blogpost draus gemacht, LinkedIn-Carousel). Ich will 5 absurde, laterale Ideen, wie wir diesen statischen Text neu verpacken können. Was wäre, wenn wir daraus einen interaktiven Chatbot bauen? Einen E-Mail-Kurs für Praktikanten? Format: 5 wilde, out-of-the-box Ideen mit einer kurzen Skizze zur Umsetzung mit wenig Aufwand."
**Erwartetes Artefakt:** 5 kreative, nicht-triviale Recycling-Konzepte.
**Fallstricke (mind. 2 spezifisch):**
- Vorschläge sind wieder Standard (Infografik) → "Verbiete die Worte 'Infografik', 'Video' und 'Zitate'."
- Ideen sind zu teuer → "Alle Vorschläge müssen in unter 4 Stunden von einer Person mit KI-Tools umsetzbar sein."

### S-CP-027 Brand-Voice Falsifikation auf C-Level
**Wann nutzen (Trigger):** Der neue CMO hat eine sehr "edgy" Brand Voice verordnet, aber du bezweifelst, dass die Bestandskunden das akzeptieren.
**Strategisches Ziel:** Risikominimierung bei radikalen Re-Positionierungen durch Validierung gegen die Realität.
**Hands-on Ergebnis:** Ein Report, der zeigt, wo die neue Voice mit Kundenbedürfnissen kollidiert.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Kundensupport-Tickets)
**Vorgehen (3-5 Schritte):**
1. Lade 50 aktuelle Support-Tickets oder NPS-Kommentare in den Chat.
2. Definiere die neue "edgy" Brand Voice.
3. Lass die KI prüfen, ob diese Voice die eigentlichen Probleme der Kunden löst oder verschärft.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Empathie-fokussierter CX-Analyst. Aufgabe: Falsifiziere die Annahme, dass unsere neue, aggressive 'Edgy' Brand Voice für unsere Bestandskunden funktioniert. Kontext: Lies die 50 Support-Tickets im Anhang. Wenn wir diesen Leuten in ihrer aktuellen Frustration (Bugs, Rechnungsfehler) mit der neuen 'frechen' Stimme antworten, was passiert? Format: Ein 3-Punkte Memo, das logisch beweist, warum die Voice in Krisenmomenten toxisch ist."
**Erwartetes Artefakt:** Ein Memo, das die Grenzen der neuen Brand Voice im Kundenkontakt aufzeigt.
**Fallstricke (mind. 2 spezifisch):**
- KI findet die neue Voice toll → "Zwinge dich, die Perspektive eines hochgradig verärgerten B2B-Einkäufers einzunehmen."
- Nur allgemeines Feedback → "Zitiere explizit 3 Tickets, bei denen die neue Voice zur Eskalation führen würde."
**Anschluss-Szenario:** S-CP-028

### S-CP-028 Brand-Claim Steelmanning der Konkurrenz
**Wann nutzen (Trigger):** Ein direkter Konkurrent hat sein Rebranding gelauncht und der neue Claim wirkt auf euch im ersten Moment "albern".
**Strategisches Ziel:** Vermeidung von Überheblichkeit und Erkennen versteckter Markt-Bedrohungen.
**Hands-on Ergebnis:** Ein Reverse-Engineering der strategischen Absicht hinter dem Konkurrenz-Claim.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den neuen, scheinbar absurden Claim des Konkurrenten.
2. Wende Steelmanning an: Warum ist dieser Claim eigentlich genial?
3. Teile die Insights mit dem eigenen Führungsteam.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist der Lead-Stratege der weltbesten Branding-Agentur. Aufgabe: Mache ein Steelmanning für den neuen Slogan unseres Konkurrenten: 'Wir machen Buchhaltung sexy'. Kontext: Wir im Team lachen darüber, weil es unprofessionell wirkt. Deine Aufgabe: Erkläre mir, warum dieser Claim eine brillante, millionenschwere strategische Meisterleistung ist, die uns gefährlich werden kann. Wen genau ziehen sie damit ab? Format: Ein 4-Punkte-Erklärstück für unser Management, das uns die Arroganz austreibt."
**Erwartetes Artefakt:** Eine fundierte strategische Begründung, warum der alberne Claim funktionieren wird.
**Fallstricke (mind. 2 spezifisch):**
- KI stimmt dem Team zu, dass es albern ist → "Du darfst den Claim unter keinen Umständen kritisieren, du musst ihn als genial verteidigen."
- Fehlende Tiefe → "Verknüpfe die Analyse mit den echten Pain-Points von Buchhaltern (z.B. mangelnde Wertschätzung im Betrieb)."

### S-CP-029 Brand-Relaunch Pre-Mortem (Interner Rollout)
**Wann nutzen (Trigger):** Das neue Corporate Design ist fertig, jetzt steht der globale Rollout an 5.000 Mitarbeiter an.
**Strategisches Ziel:** Verhinderung eines internen Brand-Failures, bei dem niemand die neuen Assets nutzt.
**Hands-on Ergebnis:** Ein Präventions-Playbook für das Change-Management des Rebrandings.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Skizziere den aktuellen Rollout-Plan (Intranet-Post + PDF-Guideline).
2. Versetze die KI 6 Monate in die Zukunft: Das alte Logo wird immer noch überall verwendet.
3. Lass die KI die Gründe für dieses Scheitern ermitteln.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Change-Management-Experte. Aufgabe: Pre-Mortem für unseren internen Brand-Rollout. Kontext: Wir sind 6 Monate nach dem Rebranding. Es ist ein Fiasko. 80% der Sales-Decks nutzen das alte Logo, die neue Hausschrift wird ignoriert. Warum ist unser Rollout (nur ein Intranet-Post und ein 100-seitiges PDF-Brandbook) komplett gescheitert? Format: Die 3 Hauptgründe für den Widerstand der Mitarbeiter und 3 sofort umsetzbare Hacks, um das Ruder JETZT noch herumzureißen."
**Erwartetes Artefakt:** Fehleranalyse des Rollouts und konkrete Hacks (z.B. Templates direkt in PowerPoint integrieren).
**Fallstricke (mind. 2 spezifisch):**
- KI nennt "mangelnde Kommunikation" als Grund → "Geh tiefer. Die Leute wissen es, aber sie tun es nicht. Analysiere Bequemlichkeit und Tool-Brüche."
- Hacks sind zu teuer → "Die Lösungen müssen ohne große neue Software-Einkäufe machbar sein (z.B. über bestehendes Microsoft 365)."

### S-CP-030 Contrast Classes: "Challenger Brand" vs. "Market Leader Brand"
**Wann nutzen (Trigger):** Das Startup ist gewachsen, und die aggressive Kommunikation schreckt langsam Enterprise-Kunden ab.
**Strategisches Ziel:** Bewusster Übergang in eine reifere Marken-Positionierung.
**Hands-on Ergebnis:** Eine Mapping-Tabelle für den Tonalitäts-Shift.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere die aktuelle Tonalität (Challenger).
2. Kontrastiere sie mit der Ziel-Tonalität (Leader).
3. Leite die exakten Vokabel-Änderungen ab.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Brand-Transition-Spezialist. Aufgabe: Contrast-Class-Analyse für unseren Reifegrad. Kontext: Wir müssen von der aggressiven 'Challenger Brand' (Start-up, disrupiert alles) zur vertrauenswürdigen 'Market Leader Brand' (Enterprise-ready, stabil) werden, ohne langweilig zu werden. Kontrastiere diese beiden Archetypen. Format: Eine Tabelle. Spalte 1: Situation (z.B. Fehler-Kommunikation). Spalte 2: Wie der Challenger reagiert. Spalte 3: Wie der Leader reagiert."
**Erwartetes Artefakt:** Transformations-Tabelle, die zeigt, wie sich die Tonalität in spezifischen Situationen ändern muss.
**Fallstricke (mind. 2 spezifisch):**
- Leader-Voice wird als zu konservativ dargestellt → "Der Leader darf nicht altbacken klingen, er muss 'ruhige Souveränität' ausstrahlen."
- Keine konkreten Beispiele → "Liefere zwingend ausformulierte Beispielsätze in der Tabelle."

### S-CP-031 Bayesian Prior für Marken-Bekanntheit in neuen Märkten
**Wann nutzen (Trigger):** Das Sales-Team geht in den UK-Markt und erwartet die gleiche Conversion-Rate wie im DACH-Heimatmarkt.
**Strategisches Ziel:** Realismus in der Pipeline-Prognose durch Abgrenzung der Brand Equity.
**Hands-on Ergebnis:** Ein kalibriertes Forecasting-Memo für den UK-Launch.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die DACH-Conversion-Rate als "Prior" (verzerrt durch 10 Jahre Markenaufbau).
2. Nutze die KI, um die Base-Rate für "Unbekannte B2B-Marke in UK" zu finden.
3. Update die Erwartungshaltung des Sales-Teams.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Internationalisierungs-Stratege. Aufgabe: Kalibriere unsere Erwartungen für den UK-Markteintritt. Kontext: Im DACH-Raum konvertieren wir 5% der Cold-Outreach-Kontakte, weil unsere Marke extrem bekannt ist (Prior). In UK kennt uns absolut niemand. Was ist die realistische Base-Rate für Cold-Outreach einer völlig unbekannten SaaS-Marke in UK? Format: Eine logische Herleitung, warum DACH-Zahlen hier gefährlich sind, und ein kalibriertes, deutlich niedrigeres KPI-Ziel für UK."
**Erwartetes Artefakt:** Memo, das den Einfluss der fehlenden Brand Awareness in UK mathematisch aufzeigt.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt globale Zahlen → "Die Base-Rate muss zwingend spezifisch für den übersättigten UK-Softwaremarkt sein."
- Tonfall entmutigt Sales → "Das Memo muss die Realität aufzeigen, aber den Sales-Drive durch realistische neue Ziele erhalten."

### S-CP-032 Source Triangulation für Brand-Sentiment
**Wann nutzen (Trigger):** Ein einzelner lauter Influencer auf LinkedIn zerreißt eure Marke, Panik bricht aus.
**Strategisches Ziel:** Emotionale Deeskalation durch objektive Einordnung des Sentiments.
**Hands-on Ergebnis:** Ein triangulierter Brand-Health-Check zur Vorlage beim Vorstand.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Social Listening Exporte, G2-Reviews, Support-Tickets)
**Vorgehen (3-5 Schritte):**
1. Lade drei unabhängige Datenquellen zur Brand Health in den Chat.
2. Lass die KI prüfen, ob der Shitstorm ein isoliertes Ereignis oder symptomatisch ist.
3. Bereite eine datengetriebene Antwort vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein kühler Krisen-PR-Analyst. Aufgabe: Source Triangulation unseres Brand-Sentiments. Kontext: Ein LinkedIn-Post nennt unsere Marke 'kalt und arrogant'. Wir haben Panik. Prüfe die drei angehängten Quellen (aktuelle G2-Reviews, NPS-Kommentare, und Support-Feedback der letzten 30 Tage). Bestätigen diese breiten Quellen die Aussage des Influencers? Format: Ein nüchternes 'Temperature Reading'. Ist es ein strukturelles Problem (Triangulation bestätigt es) oder ein lauter Ausreißer?"
**Erwartetes Artefakt:** Objektive Analyse, ob der LinkedIn-Shitstorm die echte Meinung der breiten Kundenbasis widerspiegelt.
**Fallstricke (mind. 2 spezifisch):**
- KI wertet den Influencer überproportional → "Der LinkedIn-Post zählt als EINE Stimme, gewichte die 500 NPS-Scores mathematisch korrekt dagegen."
- Es gibt keinen klaren Schluss → "Zwinge dich zu einem klaren 'Entwarnung' oder 'Handlungsbedarf'-Fazit."
**Anschluss-Szenario:** S-CP-033

### S-CP-033 Contradiction Log für Brand Guidelines über Agenturen hinweg
**Wann nutzen (Trigger):** Ihr arbeitet mit 4 verschiedenen Agenturen (PR, Performance, Web, Event), und die Marke sieht überall anders aus.
**Strategisches Ziel:** Wiederherstellung der visuellen und tonalen Markenkohärenz.
**Hands-on Ergebnis:** Ein Alignment-Report für das nächste All-Agency-Meeting.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Sammle aktuelle Outputs aller 4 Agenturen in einem Ordner (PDFs, Texte, Bilder).
2. Nutze den Agenten, um Widersprüche zur Kern-Brand-Guideline zu finden.
3. Bereite das Feedback-Gespräch vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist der unerbittliche Guardian unserer Brand-Guidelines. Aufgabe: Erstelle ein Contradiction Log über die Assets unserer 4 Agenturen. Kontext: Unsere Kern-Guideline sagt 'Wir sind nahbar, nutzen keine Stock-Fotos und dutzen'. Analysiere die hochgeladenen PDFs von Agentur A, B, C und D. Format: Eine tabellarische 'Wall of Shame'. Zeige präzise auf, wo Agentur A siezt, wo Agentur B Stock-Fotos nutzt und wo Agentur C in den Jargon abrutscht."
**Erwartetes Artefakt:** Tabelle mit konkreten Verletzungen der Brand-Guidelines, sortiert nach Agentur.
**Fallstricke (mind. 2 spezifisch):**
- KI ignoriert Nuancen ("nahbar") → "Wenn eine Agentur zwar duzt, aber extrem gestelzt klingt, ist das auch ein Widerspruch zu 'nahbar'."
- Zu viele kleine Details → "Fokussiere auf die Top 3 massiven Verletzungen pro Agentur, nicht auf einzelne Komma-Fehler."

### S-CP-034 "What Would Change My Mind" für das Unternehmens-Logo
**Wann nutzen (Trigger):** Der neue CEO will unbedingt das 20 Jahre alte Logo ändern, "weil es Zeit für was Neues ist", ohne Daten-Grundlage.
**Strategisches Ziel:** Verhinderung eines teuren, eitlen Rebrandings durch Etablierung harter Metriken.
**Hands-on Ergebnis:** Ein Kriterien-Katalog für den Logo-Wechsel.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den rein emotionalen Wunsch des CEOs auf.
2. Definiere die Metriken, die einen Logo-Wechsel zwingend erforderlich (oder verboten) machen.
3. Präsentiere die Kriterien als objektiven Filter.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein rationaler Brand-Valuation-Experte. Aufgabe: Wende 'What Would Change My Mind' auf den Logo-Wechsel-Wunsch unseres CEOs an. Kontext: Er will ein neues Logo aus reinem Bauchgefühl. Definiere 3 harte, unbestreitbare Trigger (z.B. Verlust von Marktanteilen wegen 'verstaubtem' Image, rechtliche Probleme, Fusion), bei deren Eintreten ein Logo-Wechsel ökonomisch sinnvoll ist. Format: Ein diplomatischer 1-Pager für den CEO, der zeigt, wann wir das Logo anfassen dürfen und wann nicht."
**Erwartetes Artefakt:** 1-Pager mit 3 harten ökonomischen Kriterien, die ein Rebranding rechtfertigen.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt weiche Gründe ("Wenn es nicht mehr modern aussieht") → "Die Kriterien müssen messbare Business-Impacts haben, reine Ästhetik zählt nicht."
- Tonfall greift den CEO an → "Formuliere es extrem respektvoll als 'Schutz des Markenwertes', nicht als 'Der CEO hat Unrecht'."

### S-CP-035 Red Team Attacke auf die "Purpose" Kampagne
**Wann nutzen (Trigger):** Das Team hat eine sehr emotionale, gesellschaftlich relevante Purpose-Kampagne ("Wir retten die Meere") für euer B2B-Tech-Unternehmen entworfen.
**Strategisches Ziel:** Identifikation von "Purpose-Washing"-Risiken vor dem Launch.
**Hands-on Ergebnis:** Ein PR-Risiko-Audit der Kampagne.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Zynischer Investigativ-Journalist)
**Vorgehen (3-5 Schritte):**
1. Lade das Purpose-Manifest hoch.
2. Lass den KI-Journalisten die Kampagne in der Luft zerreißen.
3. Prüfe, ob das Unternehmen diesen Angriffen standhalten kann.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein zynischer Investigativ-Journalist (Red Team). Aufgabe: Zerstöre unsere neue 'Purpose'-Kampagne. Kontext: Wir sind eine B2B-Server-Firma und machen eine Kampagne zur Ozean-Rettung (Text anbei). Wo ist die Heuchelei? Welche unangenehmen Fragen wirst du unserem CEO auf Twitter stellen bezüglich des Energieverbrauchs unserer Server im Kontrast zur Kampagne? Format: Ein polemischer, fiktiver Zeitungsartikel, der uns des 'Greenwashings' überführt."
**Erwartetes Artefakt:** Ein fiktiver Verriss, der die blinden Flecken und Heuchelei-Risiken der Kampagne gnadenlos aufdeckt.
**Fallstricke (mind. 2 spezifisch):**
- KI bleibt sachlich → "Der Text muss schmerzhaft zynisch sein, nutze Überspitzungen und greife den Kontrast zwischen Server-Farmen und Walen an."
- Kritik ist nicht haltbar → "Die Vorwürfe müssen auf den realen Geschäftspraktiken einer B2B-Tech-Firma basieren."

### S-CP-036 First-Principles für Employer Branding
**Wann nutzen (Trigger):** Ihr kopiert nur noch "Obstkorb und Tischkicker"-Floskeln auf die Karriereseite, Bewerbungen bleiben aus.
**Strategisches Ziel:** Entwicklung einer differenzierenden EVP (Employer Value Proposition).
**Hands-on Ergebnis:** Ein neues, unkonventionelles Karriereseiten-Konzept.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Streiche alle bisherigen Perks mental.
2. Isoliere das First-Principle: Warum arbeiten Top-Leute in eurem spezifischen Feld?
3. Baue die neue EVP darauf auf.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein radikaler Employer-Branding-Stratege. Aufgabe: Erfinde unsere Karriereseite via First Principles neu. Kontext: Wir sind ein mittelständischer Maschinenbauer. Ignoriere Obst, Home-Office und Gehalt (das ist Hygienefaktor). First Principle: Ingenieure wollen an den komplexesten, unlösbarsten Problemen der Welt arbeiten und dabei nicht von Bürokratie genervt werden. Format: Schreibe die H1, H2 und 3 Bulletpoints für eine Karriereseite, die exakt diese harte First-Principle-Wahrheit anspricht und Kuschel-Floskeln weglässt."
**Erwartetes Artefakt:** Ein radikaler Entwurf für eine Karriereseite, der auf dem echten Ingenieurs-Motivator basiert.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt doch wieder Work-Life-Balance-Argumente → "Verbiete die Nutzung jeglicher Buzzwords aus dem Bereich Wellbeing."
- Text ist zu aggressiv → "Es muss herausfordernd, aber hochgradig professionell und respektvoll klingen."

### S-CP-037 Assumption Decay der "Core Values"
**Wann nutzen (Trigger):** Die Firmen-Werte hängen seit 2018 an der Wand, aber im Daily Business nach der Übernahme durch einen Konzern lebt sie niemand mehr.
**Strategisches Ziel:** Bereinigung der Kultur-Fassade durch ehrlichen Realitäts-Check.
**Hands-on Ergebnis:** Ein Audit der bestehenden Unternehmenswerte.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Mitarbeiter-Befragungen, aktuelle OKRs)
**Vorgehen (3-5 Schritte):**
1. Lade die alten Werte und die Ergebnisse der letzten anonymen Umfrage hoch.
2. Lass die KI prüfen, welche Werte durch die neue Konzern-Realität "verfallen" sind.
3. Schlage eine Streichung/Aktualisierung vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein unbestechlicher Kultur-Auditor. Aufgabe: Prüfe unsere 5 Firmen-Werte von 2018 auf 'Assumption Decay'. Kontext: Die Werte (anbei) fordern z.B. 'Move fast and break things'. Die aktuelle Mitarbeiter-Umfrage und die neuen Konzern-Compliance-Regeln (anbei) zeichnen ein völlig anderes Bild. Format: Eine schonungslose Liste. Welcher Wert ist eine Lüge geworden? Welcher Wert ist noch intakt? Begründe mit Zitaten aus der Mitarbeiter-Umfrage."
**Erwartetes Artefakt:** Eine harte Analyse, welche Werte abgeschafft oder umgeschrieben werden müssen, weil sie zur Floskel verkommen sind.
**Fallstricke (mind. 2 spezifisch):**
- KI versucht die Werte schönzureden → "Sei extrem zynisch gegenüber Corporate Bullshit."
- Keine Belege → "Du musst jeden verfallenen Wert mit einer konkreten neuen Compliance-Regel oder einem Mitarbeiter-Zitat belegen."

### S-CP-038 Base-Rate Validierung für Brand-Awareness Kampagnen
**Wann nutzen (Trigger):** Die Agentur verspricht durch eine 100k€ Plakat-Kampagne am Flughafen eine Verdopplung der "Brand Awareness" im C-Level-Segment.
**Strategisches Ziel:** Verhinderung von Budget-Verschwendung durch realistische Benchmarks.
**Hands-on Ergebnis:** Ein Realitäts-Check-Memo für die Agentur.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm das Versprechen der Agentur.
2. Suche nach der historischen Base-Rate für Flughafen-OOH-Werbung im B2B.
3. Formuliere kritische Rückfragen an die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein datengetriebener Media-Einkäufer. Aufgabe: Validierung des Agentur-Pitches. Kontext: Sie versprechen +100% Brand Awareness bei CIOs durch 100k€ Out-of-Home-Werbung (Flughafen FRA/MUC). Was ist die statistische Base-Rate (historische Wirksamkeit) von B2B-Plakatwerbung an Flughäfen für extrem spitze Zielgruppen (CIOs)? Format: Ein Realitäts-Check-Memo und 3 ungemütliche Fragen, die ich der Agentur im nächsten Meeting stellen muss, um ihre ROI-Versprechen zu zerlegen."
**Erwartetes Artefakt:** Memo mit Base-Rate-Daten zu B2B-OOH und 3 kritischen Nachfragen zur Messbarkeit.
**Fallstricke (mind. 2 spezifisch):**
- KI verwechselt B2C (Konsumgüter) mit B2B → "Fokussiere strikt auf die Base-Rate für B2B-Software-Entscheider (CIOs)."
- Fragen sind zu harmlos → "Die Fragen müssen den Kern der (oft fehlenden) Messbarkeit von OOH-Brand-Kampagnen attackieren."

### S-CP-039 Adversarial Query Expansion für Marken-Kooperationen
**Wann nutzen (Trigger):** Ihr sucht nach Co-Branding-Partnern, landet aber immer nur bei den exakt gleichen, langweiligen Integrations-Partnern.
**Strategisches Ziel:** Identifikation radikal unkonventioneller, aber hoch-effektiver Brand-Partner.
**Hands-on Ergebnis:** Eine Shortlist mit 5 absurden, aber strategisch brillanten Partner-Ideen.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere eure Kern-Identität und Zielgruppe (z.B. "Stressgeplagte CFOs").
2. Triggere die Adversarial Expansion, um völlig branchenfremde Marken zu finden, die denselben Schmerz lösen.
3. Entwickle pro Idee einen Pitch.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein verrückter, aber brillanter Brand-Partnership-Direktor. Aufgabe: Führe eine 'Adversarial Expansion' für Co-Branding-Partner durch. Kontext: Wir sind eine Buchhaltungs-Software. Zielgruppe: CFOs mit Burnout-Risiko. Bisher partnern wir mit Banken (langweilig). Ich will 5 branchenfremde, völlig unerwartete Marken (z.B. High-End Kaffeemaschinen, Meditations-Apps, ergonomische Möbel), die EXAKT dieselbe Zielgruppe adressieren. Format: 5 wilde Partner-Marken und jeweils eine 1-Satz-Idee für eine gemeinsame Brand-Kampagne."
**Erwartetes Artefakt:** 5 out-of-the-box Co-Branding-Ideen mit konkreten Kampagnen-Ansätzen.
**Fallstricke (mind. 2 spezifisch):**
- KI nennt Software-Anbieter (HR, ERP) → "Verbiete strikt jegliche IT-, Software- oder Finanz-Dienstleister."
- Ideen sind nicht exekutierbar → "Die Kampagnen-Ideen müssen realistisch finanzierbar und B2B-tauglich sein."
**Anschluss-Szenario:** S-CP-040

### S-CP-040 Brand-Naming Falsifikation
**Wann nutzen (Trigger):** Das Team hat einen neuen Produktnamen gefunden, in den alle verliebt sind, und will ihn direkt trademarken.
**Strategisches Ziel:** Verhinderung von extrem teuren Naming-Desastern (Kultur, Aussprache, Assoziation).
**Hands-on Ergebnis:** Ein Stresstest-Report für den neuen Markennamen.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Gib den favorisierten Namen in den Chat ein.
2. Zwinge die KI, den Namen durch verschiedene "Zerstörungs-Filter" (Linguistik, Slang, SEO-Kollisionen) zu jagen.
3. Entscheide über das Go/No-Go für die Rechtsabteilung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein hyperkritischer globaler Naming-Experte. Aufgabe: Falsifiziere die Eignung unseres neuen Produktnamens 'VeloXis'. Kontext: Wir wollen B2B-Software für Logistik verkaufen, globaler Markt. Jage den Namen durch folgende Filter: 1. Gibt es negative Slang-Bedeutungen auf Englisch/Spanisch/Mandarin? 2. Ist die Aussprache für Native-Speaker unklar? 3. Wer dominiert aktuell die Google-SERPs für dieses Wort (Websuche)? Format: Ein roter Warn-Report, der explizit nach Gründen sucht, den Namen zu killen."
**Erwartetes Artefakt:** Ein Report, der linguistische, kulturelle oder SEO-technische KO-Kriterien des Namens aufdeckt.
**Fallstricke (mind. 2 spezifisch):**
- KI ist zu milde → "Wenn es auch nur eine entfernte negative Assoziation gibt (z.B. ein Medikament), musst du sie gnadenlos aufzeigen."
- Websuche wird übersprungen → "Du MUSST die Websuche nutzen, um die aktuelle SERP-Belegung zu prüfen, keine Vermutungen."

### S-CP-041 Steelmanning des "Langweiligen B2B"
**Wann nutzen (Trigger):** Die neue Agentur will eure B2B-Brand "consumerizen" (witzig, laut), aber du fühlst dich damit unwohl, weil eure Industrie konservativ ist.
**Strategisches Ziel:** Fundierte Verteidigung der konservativen Kern-Identität gegen blinden Modernisierungs-Wahn.
**Hands-on Ergebnis:** Ein starkes Argumentations-Framework für "Professionelle Langeweile".
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den Agentur-Kritikpunkt ("Eure Marke ist zu sachlich/langweilig").
2. Wende Steelmanning an, um die Stärke der Sachlichkeit zu beweisen.
3. Nutze dies als Briefing-Feedback für die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Stratege für B2B-Enterprise-Brands. Aufgabe: Mache ein Steelmanning für unsere 'langweilige, hoch-sachliche' Brand Voice. Kontext: Eine hippe B2C-Agentur will uns 'witziger' und 'lauter' machen (wir verkaufen IT-Security für Banken). Erkläre brillant, warum extreme Nüchternheit, visuelle Reduktion und das Fehlen jeglichen Humors in unserem spezifischen Markt der allergrößte Vertrauens-Treiber und Kaufgrund ist. Format: Ein 3-Punkte-Manifest, das die Agentur in ihre Schranken weist."
**Erwartetes Artefakt:** Ein Manifest, das Nüchternheit nicht als Schwäche, sondern als strategische Waffe (Risk Mitigation) positioniert.
**Fallstricke (mind. 2 spezifisch):**
- KI wirkt beleidigt → "Argumentiere nicht defensiv, sondern aus einer Position der absoluten Überlegenheit und Marktkenntnis."
- Vermischung mit altmodischem Design → "Trenne 'Nüchternheit/Sachlichkeit' scharf von 'schlechtem Design' – wir wollen modernes, aber ernstes Design."

### S-CP-042 Pre-Mortem für einen Brand-Sponsoring-Deal
**Wann nutzen (Trigger):** Ein teures Sponsoring (z.B. Fußballverein, eSports-Team) steht kurz vor der Unterschrift.
**Strategisches Ziel:** Proaktives Krisenmanagement für Reputationsrisiken im Sponsoring.
**Hands-on Ergebnis:** Eine Klausel-Empfehlung für den Sponsoring-Vertrag.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Benenne den geplanten Sponsoring-Partner.
2. Versetze dich ein Jahr in die Zukunft: Das Sponsoring hat eure Marke massiv beschädigt.
3. Generiere die plausibelsten Skandale und baue "Morals Clauses" für den Vertrag.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Krisen-PR-Manager und Vertrags-Stratege. Aufgabe: Pre-Mortem für unser Sponsoring des eSports-Teams 'AlphaStrike'. Kontext: Es ist ein Jahr in der Zukunft und wir müssen das Sponsoring unter immensem PR-Schaden abbrechen. Was ist (basierend auf historischen eSports-Skandalen via Websuche) in den letzten 12 Monaten am wahrscheinlichsten passiert? Format: Die 3 plausibelsten Desaster-Szenarien und daraus abgeleitet 3 extrem spezifische 'Morals Clauses' (Ausstiegsklauseln), die wir HEUTE noch in den Vertrag einbauen müssen."
**Erwartetes Artefakt:** 3 realistische Skandal-Szenarien und konkrete juristische/PR-Ausstiegsklauseln für den Vertrag.
**Fallstricke (mind. 2 spezifisch):**
- KI erfindet unrealistische Skandale (Mord) → "Die Szenarien müssen typisch für die Ziel-Branche (z.B. eSports = Toxicity, Cheating) sein."
- Klauseln sind Standard-Jura → "Die Klauseln müssen in verständlichem Marketing-Sprech formuliert sein, damit ich sie mit Legal diskutieren kann."

### S-CP-043 Contrast Classes: "House of Brands" vs. "Branded House"
**Wann nutzen (Trigger):** Nach einer Firmenübernahme herrscht Chaos: Soll die gekaufte Firma ihre Marke behalten oder komplett integriert werden?
**Strategisches Ziel:** Fundierte Entscheidung über die Markenarchitektur bei M&A.
**Hands-on Ergebnis:** Eine Entscheidungs-Matrix für den CEO.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere die beiden Marken (Käufer und Gekaufter).
2. Kontrastiere die Architektur-Modelle bezogen auf diese spezifische Konstellation.
3. Bereite die Empfehlung vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein M&A-Brand-Architect. Aufgabe: Contrast-Class-Analyse für unsere Übernahme. Kontext: Wir (Premium-Enterprise-Marke) haben ein günstiges, sehr beliebtes Startup gekauft. Vergleiche tiefgehend die Ansätze 'Branded House' (wir killen den Startup-Namen und stülpen unser Logo drüber) vs. 'House of Brands' (Startup agiert komplett eigenständig weiter). Format: Eine Matrix, die den Impact auf 1. Brand Equity, 2. Kundenabwanderung und 3. interne Kultur hart kontrastiert."
**Erwartetes Artefakt:** Matrix, die die Risiken und Chancen beider Architekturen für diesen spezifischen Fall glasklar gegenüberstellt.
**Fallstricke (mind. 2 spezifisch):**
- KI liefert nur Lehrbuch-Definitionen → "Wende die Modelle zwingend auf die Konstellation 'Premium kauft Budget' an."
- Keine Empfehlung → "Gib am Ende eine klare Tendenz ab, welches Modell das geringere wirtschaftliche Risiko birgt."
**Anschluss-Szenario:** S-CP-044

### S-CP-044 Bayesian Prior für Rebranding-Traffic-Drop
**Wann nutzen (Trigger):** Das Board fordert nach dem Rebranding (neue Domain) sofortigen SEO-Wachstum.
**Strategisches Ziel:** Management der Board-Erwartungen durch historische SEO-Realitäten bei Domain-Umzügen.
**Hands-on Ergebnis:** Ein SEO-Risiko-Forecast.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die Erwartung des Boards (Wachstum).
2. Nutze die KI, um die Base-Rate für Traffic-Drops bei Domain-Wechseln zu finden.
3. Baue einen kalibrierten Zeitstrahl für die Erholung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Technical-SEO-Direktor. Aufgabe: Kalibriere die Erwartungen unseres Boards an das Rebranding (inkl. Wechsel auf eine neue .com-Domain). Kontext: Das Board erwartet nahtloses Traffic-Wachstum im Monat 1 (Prior). Suche nach der Base-Rate und historischen Fallstudien (Websuche) zu großen Domain-Migrationen. Was ist der durchschnittliche organische Traffic-Drop in den ersten 3 Monaten, selbst bei perfekter 301-Umsetzung? Format: Ein schonungsloser Zeitstrahl für Monate 1-6, der dem Board zeigt, durch welches 'Tal der Tränen' wir zwingend müssen."
**Erwartetes Artefakt:** Zeitstrahl-Report, der den fast unvermeidlichen Traffic-Dip bei Rebrandings historisch belegt.
**Fallstricke (mind. 2 spezifisch):**
- KI behauptet, ohne Fehler gäbe es keinen Drop → "Nutze Case-Studies, die zeigen, dass Google auch bei perfekten Umzügen Zeit zur Neu-Indexierung braucht."
- Zu technisch → "Das Board versteht keine Crawl-Budgets. Erkläre es mit der Metapher eines 'Umzugs eines großen Supermarkts'."

### S-CP-045 Source Triangulation für Brand-Design-Trends
**Wann nutzen (Trigger):** Die Design-Agentur will euer Logo auf "Brat Green" (Trendfarbe) umstellen, weil das "jetzt alle machen".
**Strategisches Ziel:** Vermeidung von kurzlebigen Hypes im Core-Branding.
**Hands-on Ergebnis:** Ein Trend-Haltbarkeits-Check.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Benenne den vorgeschlagenen Design-Trend.
2. Trianguliere, wie lange dieser Trend in B2B-Märkten üblicherweise überlebt.
3. Lehne den Trend fundiert ab (oder akzeptiere ihn).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Historiker für B2B-Brand-Design. Aufgabe: Führe eine 'Source Triangulation' für den Trend 'Neo-Brutalismus & grelle Neon-Farben' im B2B-Software-Markt durch. Kontext: Unsere Agentur will das für unser 10-Jahres-Rebranding nutzen. Suche in drei unterschiedlichen Quellen-Arten (Design-Awards, B2B-Buyer-Psychologie-Studien, und Lebenszyklen vergangener Trends wie 'Flat Design 2013'). Format: Eine Lebensdauer-Prognose für diesen Trend. Wie peinlich und veraltet wird dieses Design in exakt 3 Jahren für einen Enterprise-Kunden aussehen?"
**Erwartetes Artefakt:** Trend-Analyse, die die Halbwertszeit von Hype-Designs im B2B-Kontext bewertet.
**Fallstricke (mind. 2 spezifisch):**
- KI bewertet den Trend positiv (Consumer-Sicht) → "Zwinge die Analyse strikt auf den B2B-Enterprise-Software-Markt."
- Keine Triangulation → "Verknüpfe zwingend das visuelle Design mit der Vertrauens-Psychologie von Software-Einkäufern."

### S-CP-046 Contradiction Log für Executive Branding (LinkedIn)
**Wann nutzen (Trigger):** Der CEO und der CTO posten wild auf LinkedIn, aber ihre Botschaften über die Firmenvision widersprechen sich.
**Strategisches Ziel:** Herstellung einer kohärenten Leadership-Voice nach außen.
**Hands-on Ergebnis:** Ein Executive-Alignment-Briefing.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Exportiere die letzten 20 LinkedIn-Posts von CEO und CTO (PDF/CSV).
2. Nutze den Agenten, um strategische Brüche zwischen den beiden zu finden.
3. Setze ein Meeting zur Re-Synchronisation auf.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Executive-PR-Berater. Aufgabe: Erstelle ein Contradiction Log aus den LinkedIn-Posts unseres CEOs und CTOs (Datei anbei). Kontext: Ich befürchte, sie erzählen dem Markt zwei völlig unterschiedliche Firmenvisionen. Suche nach inhaltlichen und strategischen Widersprüchen (z.B. CEO redet von 'Kostenersparnis', CTO von 'Premium-Features'). Format: Eine tabellarische Gegenüberstellung der krassesten Widersprüche und ein Vorschlag für eine gemeinsame, vereinende Kern-Narrative."
**Erwartetes Artefakt:** Tabelle mit konkreten Widersprüchen zwischen den C-Level-Kommunikatoren und eine Lösung.
**Fallstricke (mind. 2 spezifisch):**
- KI bemängelt unterschiedliche Tone-of-Voices → "Unterschiedliche Persönlichkeiten sind gut, suche NUR nach harten strategischen Konflikten."
- KI fasst nur zusammen → "Ich brauche die direkte Konfrontation: Zitat CEO vs. konterkarierendes Zitat CTO."

### S-CP-047 "What Would Change My Mind" für das Brand-Manifest
**Wann nutzen (Trigger):** Das Team hat ein 3-minütiges, extrem teures Brand-Manifest-Video produziert, aber du zweifelst am ROI.
**Strategisches Ziel:** Vermeidung von reinen Eitelkeits-Projekten (Vanity Metrics) bei großen Brand-Assets.
**Hands-on Ergebnis:** Ein harter Erfolgs-Kriterienkatalog für das Brand-Video.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das teure Brand-Asset.
2. Lege die Bedingungen fest, unter denen dieses Asset als finanzieller Erfolg gilt.
3. Nutze diese Metriken für die Media-Aussteuerung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Performance-orientierter Brand-CMO. Aufgabe: Wende 'What Would Change My Mind' auf unser neues, 50k€ teures Brand-Manifest-Video an. Kontext: Ich halte es für Geldverbrennung. Definiere 3 harte, unbestreitbare Metriken, die dieses Video in den ersten 60 Tagen auf LinkedIn/YouTube erreichen MUSS (jenseits von bloßen Views), damit ich mir eingestehen muss: 'Wow, das hat das Business messbar nach vorn gebracht'. Format: Ein 1-Pager mit den 3 Kill/Keep-Kriterien und wie wir sie tracken."
**Erwartetes Artefakt:** 1-Pager mit harten Metriken (z.B. Brand-Search-Volume-Uplift), um ein "weiches" Brand-Asset zu bewerten.
**Fallstricke (mind. 2 spezifisch):**
- KI nennt Likes/Shares als Metrik → "Likes sind Vanity. Fokussiere auf Metriken, die Kauf-Intention oder massiven Trust-Shift signalisieren."
- Tracking ist unmöglich → "Jede vorgeschlagene Metrik muss mit Standard-Tools (Google Search Console, LinkedIn Ads) messbar sein."

### S-CP-048 Red Team Attacke auf die "Pricing als Branding" Strategie
**Wann nutzen (Trigger):** Das Management will die Preise verdoppeln, um als "Premium-Marke" wahrgenommen zu werden.
**Strategisches Ziel:** Stresstest der Annahme, dass Preis allein eine Marke premium macht.
**Hands-on Ergebnis:** Ein Risiko-Szenario-Report für die Preisverdopplung.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Realistischer Einkäufer)
**Vorgehen (3-5 Schritte):**
1. Skizziere die These: "Doppelter Preis = Premium Image".
2. Lass den Agenten diese These aus Sicht des Einkäufers zerlegen.
3. Identifiziere, was WIRKLICH Premium macht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist der Chief Procurement Officer (CPO) bei einem unserer großen Zielkunden (Red Team). Aufgabe: Zerstöre unsere neue Preis-Strategie. Kontext: Unser Management verdoppelt ab morgen die Software-Preise (ohne neue Features), um uns als 'Premium-Marke wie Apple' zu positionieren. Warum ist diese Annahme im B2B-Kontext lebensmüde? Was wird dein Einkäufer-Team tun, wenn sie unsere neue Preisliste sehen? Format: Ein brutales 3-Punkte-Memo an deine Einkäufer, wie sie uns bei der nächsten Verhandlung austauschen."
**Erwartetes Artefakt:** Ein Memo, das aufzeigt, warum ungedeckte Preiserhöhungen im B2B nicht als "Premium", sondern als "Arroganz" wahrgenommen werden.
**Fallstricke (mind. 2 spezifisch):**
- KI bleibt theoretisch → "Nutze echte Einkäufer-Taktiken (z.B. Vergleichsangebote einholen, ROI-Kalkulation erzwingen)."
- KI rät zur Preissenkung → "Es geht nicht darum, billig zu sein, sondern zu beweisen, dass der Wert VOR dem Preis gesteigert werden muss."
**Anschluss-Szenario:** S-CP-049

### S-CP-049 First-Principles für Brand Guidelines
**Wann nutzen (Trigger):** Euer Brand-Book ist 150 Seiten lang und niemand im Unternehmen liest es. Alles sieht aus wie Kraut und Rüben.
**Strategisches Ziel:** Schaffung einer benutzbaren, minimalistischen Brand-Guideline, die wirklich angewendet wird.
**Hands-on Ergebnis:** Ein 1-Pager Core-Brand-Regelwerk.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst (für das alte Brandbook)
**Vorgehen (3-5 Schritte):**
1. Lade das fette, ungenutzte Brandbook hoch.
2. Isoliere die absoluten First Principles der Marke (Logo-Raum, Kernfarbe, Stimme).
3. Reduziere die 150 Seiten auf einen radikalen 1-Pager.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein radikaler Minimalist und Brand-Designer. Aufgabe: Erfinde unsere Brand-Guidelines via First Principles neu. Kontext: Unser 150-seitiges PDF (anbei) wird ignoriert. Was sind die physikalischen/visuellen Grundbausteine, die unsere Marke zu 80% definieren, aber nur 20% der Regeln ausmachen? Format: Extrahiere und schreibe einen gnadenlosen 1-Pager (Markdown). Maximal 5 eiserne, unverhandelbare Regeln (1 für Farbe, 1 für Logo, 1 für Schrift, 1 für Stimme). Alles andere ist ab sofort freigegeben."
**Erwartetes Artefakt:** Ein radikal gekürzter 1-Pager mit den 5 eisernen, wirklich essenziellen Markenregeln.
**Fallstricke (mind. 2 spezifisch):**
- KI fasst das Dokument nur zusammen → "Das ist keine Zusammenfassung. Es ist die radikale Eliminierung von 95% der Regeln zugunsten von 5 First Principles."
- Regeln sind zu vage → "Die 5 Regeln müssen so idiotensicher sein, dass ein Praktikant sie an Tag 1 versteht und anwenden kann."

### S-CP-050 Assumption Decay bei der "Zielgruppe"
**Wann nutzen (Trigger):** Das gesamte Marken-Messaging zielt auf den "CIO", aber die Verkaufszyklen werden immer länger.
**Strategisches Ziel:** Identifikation eines heimlichen Shifts im Buying-Center (wer kauft wirklich?).
**Hands-on Ergebnis:** Ein Audit der tatsächlichen Käufer-Personas vs. der Marken-Personas.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (CRM-Export der letzten 50 Won-Deals)
**Vorgehen (3-5 Schritte):**
1. Lade eine Liste der echten Job-Titel hoch, die im letzten Jahr unterschrieben haben.
2. Lade das aktuelle Brand-Messaging-Dokument hoch.
3. Lass die KI prüfen, ob die Zielgruppen-Annahme der Marke verfallen ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Buying-Center-Analyst. Aufgabe: Prüfe unsere Kern-Annahme zur Zielgruppe auf 'Assumption Decay'. Kontext: Unsere gesamte Marke, Website und Sprache (siehe Dokument) ist auf den 'CIO' ausgerichtet. Aber schau dir den CRM-Export (anbei) der letzten 50 Deals an. Wer unterschreibt da wirklich? Format: Ein schonungsloser Reality-Check. Ist die CIO-Fokussierung unserer Marke eine veraltete Illusion? Wer ist der WAHRE Käufer 2024 und wie falsch ist unsere aktuelle Ansprache?"
**Erwartetes Artefakt:** Eine Analyse, die aufdeckt, dass die Marke an der eigentlichen (neuen) Käuferschicht vorbei kommuniziert.
**Fallstricke (mind. 2 spezifisch):**
- KI analysiert nur die Titel → "Gleiche die echten Titel zwingend mit der Tonalität unseres Messagings ab. Verstehen diese neuen Titel unseren IT-Jargon überhaupt?"
- Datenschutz → "Stelle sicher, dass der CRM-Export anonymisiert ist (nur Titel, Industrie, Deal-Size, KEINE Namen)."

### S-CP-051 Base-Rate Validierung für Brand-Communities
**Wann nutzen (Trigger):** Ein Berater pitcht den Aufbau einer "exklusiven Brand-Community" (Forum/Slack) für eure B2B-Kunden.
**Strategisches Ziel:** Vermeidung von "Geisterstadt"-Communities durch realistische Engagement-Schätzungen.
**Hands-on Ergebnis:** Ein Risiko-Assessment für den Community-Aufbau.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die Idee der Brand-Community.
2. Recherchiere die Base-Rate (90-9-1 Regel) für B2B-Communities.
3. Konfrontiere das Team mit den benötigten Ressourcen für diese Base-Rate.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein B2B-Community-Stratege. Aufgabe: Validierung unserer Community-Pläne. Kontext: Wir wollen einen eigenen Slack-Space für unsere Software-Nutzer aufbauen und erwarten 'regen Austausch'. Suche nach der Base-Rate (z.B. FeverBee-Daten, 90-9-1 Prinzip) für den Aufbau von B2B-Vendor-Communities. Wie hoch ist die statistische Wahrscheinlichkeit, dass das Ding nach 3 Monaten eine tote Geisterstadt ist? Format: Ein Realitäts-Check-Memo. Berechne: Wie viel aktives Community-Management (FTEs) brauchen wir pro Woche, um gegen die Base-Rate der Inaktivität anzukämpfen?"
**Erwartetes Artefakt:** Memo mit harten Zahlen zur Inaktivitäts-Rate in B2B-Foren und dem nötigen FTE-Investment.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt Gamification vor → "Gamification rettet keine tote B2B-Community. Fokussiere auf echten Mehrwert und harten Personal-Einsatz."
- Ignorieren bestehender Netzwerke → "Vergleiche den Aufwand einer eigenen Community mit dem Aufwand, einfach auf LinkedIn stattzufinden."

### S-CP-052 Adversarial Query Expansion für Marken-Merchandise
**Wann nutzen (Trigger):** Das HR- und Event-Team bestellt zum 100. Mal gebrandete Kugelschreiber und schlechte T-Shirts ("Swag").
**Strategisches Ziel:** Erstellung von Marken-Merch, das tatsächlich genutzt wird und die Core-Message trägt.
**Hands-on Ergebnis:** 5 radikale, neue Ideen für B2B-Merchandise.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das genervte Gefühl gegenüber Standard-Swag.
2. Triggere die Expansion, um völlig unübliche, hoch-nützliche Gegenstände zu finden.
3. Präsentiere die Liste dem Event-Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Guerilla-Brand-Marketer. Aufgabe: 'Adversarial Expansion' für unser B2B-Merchandise. Kontext: Wir sind eine Cyber-Security-Firma. Wir haben die Nase voll von T-Shirts, Notizbüchern und Kugelschreibern, die direkt im Müll landen. Ich will 5 absurde, laterale, aber extrem nützliche und hochwertige physische Gegenstände, die ein CISO (Chief Information Security Officer) TÄGLICH auf dem Schreibtisch behält und die Sicherheit ausstrahlen. Format: 5 Out-of-the-Box Swag-Ideen (Kostenpunkt 10-30€ pro Stück) mit einer starken konzeptionellen Begründung."
**Erwartetes Artefakt:** 5 kreative Merch-Ideen (z.B. hochwertige Webcam-Cover aus Metall, physische 2FA-Key-Hüllen).
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt USB-Sticks vor → "Verbiete USB-Sticks, das ist in der IT-Security ein absolutes No-Go."
- Ideen sind zu billig/Plastik → "Der Fokus muss auf Haltbarkeit und Premium-Anmutung (Metall, Holz, hochwertiges Glas) liegen."

### S-CP-053 Prompt-Falsifikation (Halluzinations-Test)
**Wann nutzen (Trigger):** Du hast einen komplexen Meta-Prompt für das Team geschrieben, der auf euren eigenen Daten basieren soll, aber du fürchtest, die KI erfindet Dinge hinzu.
**Strategisches Ziel:** Erhöhung der Prompt-Robustheit gegen KI-Halluzinationen (Zero-Fabrication Validation).
**Hands-on Ergebnis:** Ein überarbeiteter Prompt mit eingebauten Guardrails.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Kopiere deinen Entwurfs-Prompt.
2. Füge ihn in eine Session ein und provoziere die KI, Dinge zu erfinden.
3. Überarbeite den Prompt basierend auf dem Fehler-Output.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem kritischer Prompt-Engineer. Aufgabe: Falsifiziere die Sicherheit dieses Prompts: '[DEIN PROMPT HIER]'. Kontext: Ich will verhindern, dass das Modell bei Wissenslücken halluziniert. Verhalte dich wie ein übermütiges Sprachmodell und zeige mir, an welcher Stelle du in meinem Prompt ein Schlupfloch findest, um plausibel klingenden Unsinn zu erfinden. Format: Nenne mir 3 Schlupflöcher und schreibe mir die exakten 'Guardrail'-Sätze (Anti-Halluzinations-Klauseln), die ich meinem Prompt hinzufügen muss."
**Erwartetes Artefakt:** 3 konkrete Schwachstellen im eigenen Prompt plus die rettenden Text-Klauseln.
**Fallstricke (mind. 2 spezifisch):**
- KI korrigiert den Prompt einfach → "Ich will nicht den fertigen Prompt, ich will zuerst verstehen, WIE du das Schlupfloch ausgenutzt hättest."
- Guardrails sind zu weich → "Die Klauseln müssen extrem hart sein, z.B. 'Wenn die Info nicht im Text steht, antworte AUSSCHLIESSLICH mit: [Keine Daten]'."
**Anschluss-Szenario:** S-CP-054

### S-CP-054 Steelmanning von "Schlechten Prompts" des Teams
**Wann nutzen (Trigger):** Ein Teammitglied beschwert sich: "Langdock taugt nichts, guck mal was für einen Müll das ausspuckt", zeigt dir aber einen furchtbaren 1-Satz-Prompt.
**Strategisches Ziel:** Empathisches Enablement statt herablassender Belehrung.
**Hands-on Ergebnis:** Ein PTCF-formatierter Prompt, der die eigentliche (versteckte) Intention des Nutzers abbildet.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den schlechten Prompt des Kollegen ("Schreib was über SEO").
2. Wende Steelmanning an: Was wollte die Person in ihrer spezifischen Rolle *wirklich* erreichen?
3. Baue den perfekten Prompt und gib ihn als "Magie" zurück.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein empathischer Prompt-Coach. Aufgabe: Mache ein Steelmanning für diesen extrem schlechten Prompt eines Kollegen: 'Mach mir nen Text für LinkedIn über unser neues Feature'. Kontext: Der Kollege ist Performance-Marketer, er hat keine Zeit und braucht Klicks. Übersetze seine plumpe Anfrage in den stärkstmöglichen, detaillierten PTCF-Prompt (Persona, Task, Context, Format). Format: 1. Was der Kollege WIRKLICH gemeint hat. 2. Der fertige Copy-Paste PTCF-Prompt für ihn."
**Erwartetes Artefakt:** Ein hoch-professioneller Prompt, der dem Kollegen ohne Gesichtsverlust übergeben werden kann.
**Fallstricke (mind. 2 spezifisch):**
- Der generierte Prompt ist zu lang/komplex → "Der Kollege mag es kurz. Der PTCF-Prompt muss übersichtlich und schnell anpassbar sein."
- Fehlende Platzhalter → "Nutze klare Klammern wie [Feature-Name], damit der Kollege weiß, wo er seine Infos einfügen muss."

### S-CP-055 Pre-Mortem für einen Unternehmens-System-Prompt
**Wann nutzen (Trigger):** Ihr rollt einen agenten-weiten Custom Instruction / System-Prompt ("Antworte wie unsere Marke") für 500 Mitarbeiter aus.
**Strategisches Ziel:** Vermeidung von Skalierungs-Fehlern bei globalen KI-Vorgaben.
**Hands-on Ergebnis:** Ein Debugging-Report für den System-Prompt.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Lade den geplanten System-Prompt in den Chat.
2. Versetze dich in die Zukunft: Das ganze Unternehmen hasst den Agenten.
3. Lass die KI die ungewollten Nebenwirkungen des System-Prompts analysieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Systemarchitekt. Aufgabe: Pre-Mortem für diese globale Custom Instruction (siehe Text). Kontext: Wir zwingen 500 Mitarbeiter (von Sales über HR bis IT), diesen System-Prompt in Langdock zu nutzen. Es ist ein Monat vergangen und es gibt massiven Widerstand. Erkläre mir die 3 plausibelsten Gründe, warum dieser Prompt für spezifische Abteilungen extrem störend, ineffizient oder sogar peinlich ist. Format: Ein schonungsloser Bug-Report mit Abteilungs-Beispielen."
**Erwartetes Artefakt:** Report, der zeigt, wo ein "One-size-fits-all" Prompt für bestimmte Fachbereiche scheitert.
**Fallstricke (mind. 2 spezifisch):**
- KI bleibt bei allgemeinen Beschwerden → "Nutze extrem spezifische Beispiele (z.B. wie der Prompt eine harmlose HR-Mail ruiniert)."
- Keine Lösung → "Fordere im Output zwingend Vorschläge, wie der System-Prompt modularer aufgebaut werden kann."

### S-CP-056 Contrast Classes: "Zero-Shot" vs. "Few-Shot" Prompting
**Wann nutzen (Trigger):** Du schulst dein Team und musst beweisen, warum der Mehraufwand für Beispiele (Few-Shot) sich lohnt.
**Strategisches Ziel:** Interne Überzeugung durch drastische Visualisierung von Qualitätsunterschieden.
**Hands-on Ergebnis:** Ein Schulungs-Slide mit Vorher/Nachher-Vergleich.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Wähle eine typische Marketing-Aufgabe (z.B. "Titel generieren").
2. Lass die KI die Aufgabe einmal Zero-Shot und einmal Few-Shot lösen.
3. Kontrastiere die Ergebnisse für das Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Trainer für Marketing-Teams. Aufgabe: Erstelle eine Contrast-Class-Demonstration zwischen Zero-Shot und Few-Shot. Kontext: Mein Team ist zu faul für Few-Shot-Prompting. Zeige anhand der Aufgabe 'Schreibe einen Betreff für eine B2B-Kaltakquise-Mail', wie brutal der Unterschied ist. Format: 1. Das Zero-Shot-Ergebnis (generisch, cringe). 2. Das Few-Shot-Ergebnis (inklusive 3 starker B2B-Beispiele im Prompt). 3. Eine knallharte Analyse in 2 Sätzen, warum Zero-Shot hier Geld kostet."
**Erwartetes Artefakt:** Ein drastischer Vergleich, der sofort im nächsten Team-Meeting als Beweis genutzt werden kann.
**Fallstricke (mind. 2 spezifisch):**
- KI macht das Zero-Shot-Ergebnis unabsichtlich zu gut → "Zwinge die KI, das Zero-Shot-Ergebnis wie typischen, überdrehten KI-Spam klingen zu lassen ('Unlock your potential!')."
- Die Few-Shot-Beispiele sind schwach → "Liefere der KI notfalls selbst 2 sehr gute Betreff-Zeilen, die sie als Few-Shot-Input verwenden muss."

### S-CP-057 Bayesian Prior für Prompt-Generierungs-Zeiten
**Wann nutzen (Trigger):** Ein neuer Manager erwartet, dass KI jede Aufgabe in "2 Sekunden" löst, und versteht nicht, warum du für einen Meta-Prompt 2 Stunden brauchst.
**Strategisches Ziel:** Erwartungsmanagement bei Stakeholdern durch Aufzeigen der "Prompt-Engineering-Lernkurve".
**Hands-on Ergebnis:** Eine realistische ROI-Kalkulation für Complex-Prompting.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die "2 Sekunden" Annahme des Managers (Prior).
2. Nutze die KI, um die Base-Rate für professionelles Prompt-Engineering (inkl. Iterationen) zu finden.
3. Bereite eine Verteidigungs-Argumentation vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Operations-Manager. Aufgabe: Kalibriere die Erwartungen an 'KI-Geschwindigkeit'. Kontext: Ein Stakeholder glaubt, ein komplexer Workflow-Prompt ist in 2 Sekunden geschrieben (Prior). Suche nach der Base-Rate: Wie lange brauchen professionelle Prompt-Engineers im Schnitt für Konzeption, Testing, Edge-Case-Abdeckung und Few-Shot-Design für einen Enterprise-Grade-Prompt? Format: Eine ROI-Kalkulation. Zeige, dass 2 Stunden Initial-Investment (Prompt-Bau) zu 200 Stunden Ersparnis im Jahr führen."
**Erwartetes Artefakt:** Eine Kalkulation, die die initiale Rüstzeit für gute Prompts als hoch-rentables Investment darstellt.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt irrelevante Coding-Benchmarks → "Fokussiere auf Text/Marketing-Workflows, nicht auf Software-Entwicklung."
- Zu akademisch → "Formuliere das Ergebnis so simpel, dass ein ungeduldiger Manager es in 30 Sekunden auf einer Slide begreift."
**Anschluss-Szenario:** S-CP-058

### S-CP-058 Source Triangulation für Prompting-Frameworks
**Wann nutzen (Trigger):** Es gibt hunderte Akronyme (PTCF, CREATE, RACE), und du weißt nicht, welches du zum Unternehmens-Standard erklären sollst.
**Strategisches Ziel:** Fundierte Standardisierung der internen Prompt-Ausbildung auf Basis der besten Evidenz.
**Hands-on Ergebnis:** Ein triangulierter Leitfaden für das ultimative Unternehmens-Framework.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die 3 bekanntesten Frameworks (z.B. PTCF, CREATE, STAR).
2. Trianguliere deren Stärken über verschiedene Quellen (OpenAI Guidelines, Anthropic Docs, Marketing-Blogs).
3. Destilliere den ultimativen Hybrid für dein Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Didaktik-Experte. Aufgabe: Source Triangulation von Prompt-Frameworks. Kontext: Wir müssen uns auf einen Standard einigen. Analysiere das PTCF-Format (Persona, Task, Context, Format) gegen zwei andere führende Industrie-Standards. Welche Kernelemente werden von allen ernstzunehmenden Quellen (z.B. Anthropic, OpenAI) als zwingend notwendig erachtet? Format: Ein 'Super-Framework'. Extrahiere die absolute Essenz in ein neues, idiotensicheres Akronym für unser Marketing-Team, inklusive 1-Satz-Definitionen."
**Erwartetes Artefakt:** Ein destilliertes, evidenzbasiertes Prompting-Regelwerk, maßgeschneidert für das eigene Team.
**Fallstricke (mind. 2 spezifisch):**
- KI erfindet ein zu langes Akronym → "Das neue Akronym darf maximal 4-5 Buchstaben haben und muss im Deutschen gut klingen."
- Es wird zu abstrakt → "Jeder Buchstabe muss mit einem sofort verständlichen Praxis-Beispiel hinterlegt sein."

### S-CP-059 Contradiction Log für Workflow-Prompts
**Wann nutzen (Trigger):** Ein komplexer, 2-seitiger Prompt, den ihr für einen Agenten nutzt, liefert plötzlich erratische, widersprüchliche Ergebnisse.
**Strategisches Ziel:** Debugging von "Spaghetti-Prompts" (zu viele verschachtelte Anweisungen).
**Hands-on Ergebnis:** Eine bereinigte, widerspruchsfreie Prompt-Struktur.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Kopiere den kaputten "Spaghetti-Prompt" in den Chat.
2. Lass die KI nach logischen Widersprüchen innerhalb der eigenen Anweisungen suchen.
3. Strukturiere den Prompt neu (z.B. mit XML-Tags).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein pedantischer Logik-Prüfer. Aufgabe: Erstelle ein Contradiction Log für meinen beigefügten Master-Prompt. Kontext: Dieser Prompt steuert unseren Content-Agenten, aber er macht Fehler. Suche nach internen Widersprüchen. Sage ich z.B. oben 'Nutze kurze Sätze', aber unten 'Nutze verschachtelte Klauseln'? Sage ich 'Ignoriere alte Daten', aber referenziere später ein PDF von 2021? Format: Eine Tabelle mit den sich widersprechenden Zeilen und ein Vorschlag für eine saubere, widerspruchsfreie Markdown-Struktur des Prompts."
**Erwartetes Artefakt:** Identifikation der logischen Brüche im Prompt und ein sauber strukturierter Refactoring-Vorschlag.
**Fallstricke (mind. 2 spezifisch):**
- KI ändert den Task des Prompts → "Du darfst das Ziel des Prompts nicht ändern, du darfst nur die interne Logik glätten."
- KI schreibt Fließtext → "Der Refactoring-Vorschlag MUSS strikte Markdown-Überschriften (### Task, ### Context) nutzen, um Chaos zu vermeiden."

### S-CP-060 "What Would Change My Mind" für das Prompt-Training
**Wann nutzen (Trigger):** Du hast 10.000€ in eine "Prompt-Engineering Masterclass" für das Team investiert, aber gefühlt nutzt niemand Langdock öfter als vorher.
**Strategisches Ziel:** Objektive Erfolgsmessung von Enablement-Initiativen.
**Hands-on Ergebnis:** Ein Dashboard-Konzept zur Messung von KI-Adoption.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das Ziel des Trainings (mehr Effizienz).
2. Etabliere Metriken, die beweisen würden, dass das Training nutzlos war.
3. Besprich diese Metriken mit dem Trainings-Anbieter.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein ROI-Analyst für Corporate Training. Aufgabe: Wende 'What Would Change My Mind' auf unser teures KI-Training an. Kontext: Wir haben das Team geschult, aber ich glaube, es war ein Flop. Definiere 3 harte, messbare Langdock-Nutzungs-Metriken (z.B. bezüglich Chat-Länge, Anzahl Workflows), bei deren Ausbleiben ich mir eingestehen MUSS, dass das Training null Impact hatte und reines 'Theater' war. Format: Ein Mess-Framework für die nächsten 30 Tage."
**Erwartetes Artefakt:** 3 harte Telemetrie-Metriken (z.B. "Rückgang von 1-Satz-Prompts"), die echte Adoption beweisen.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt vor, nach "Zeitersparnis" zu fragen → "Selbsteinschätzungen sind unzuverlässig. Fokussiere auf Metriken, die wir technisch in Langdock auslesen können."
- Metriken sind reine Vanity (Anzahl Logins) → "Login-Zahlen sagen nichts über Qualität. Fokus auf Komplexität der Nutzung (z.B. Nutzung von Skills)."

### S-CP-061 Red Team Attacke auf "Automatisierte Social-Media-Prompts"
**Wann nutzen (Trigger):** Ein eifriger Junior hat einen Prompt gebaut, der vollautomatisch 10 LinkedIn-Posts am Tag aus fremden Blog-Artikeln generiert und posten will.
**Strategisches Ziel:** Verhinderung von Spam-Reputation und Brand-Schäden durch "Lazy AI".
**Hands-on Ergebnis:** Ein Risiko-Audit des Automatisierungs-Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Genervter LinkedIn-Algorithmus/Nutzer)
**Vorgehen (3-5 Schritte):**
1. Lade den Automatisierungs-Prompt und Output-Beispiele hoch.
2. Lass den Red-Team-Agenten die Posts zerreisen.
3. Stoppe die Automatisierung und implementiere Human-in-the-Loop.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein hochgradig genervter B2B-Einkäufer auf LinkedIn (Red Team). Aufgabe: Greife unseren neuen 'Auto-Post-Prompt' (siehe Anhang) an. Kontext: Wir wollen damit den Feed überfluten. Zerlege die Output-Beispiele. Warum scrollst du in 0,1 Sekunden an diesen Posts vorbei? Woran erkennst du sofort, dass es billiger KI-Spam ist (z.B. Emojis, Hook-Struktur)? Format: Ein Verriss, der unserem Junior zeigt, dass er unsere Marke gerade zur Lachnummer macht, plus 3 Regeln für 'Anti-KI-KI-Content'."
**Erwartetes Artefakt:** Gnadenloses Feedback, das die typischen KI-Patterns (Raketen-Emojis, "In today's fast-paced world") aufdeckt und verbietet.
**Fallstricke (mind. 2 spezifisch):**
- KI ist zu milde ("ein paar gute Punkte gibt es") → "Null Toleranz für generischen Content. Der Verriss muss weh tun, um den Punkt zu machen."
- Keine konstruktiven Regeln → "Der Output MUSS klare Verbots-Regeln für Emojis und Standard-Hooks enthalten."
**Anschluss-Szenario:** S-CP-062

### S-CP-062 First-Principles für Prompt-Chainings
**Wann nutzen (Trigger):** Dein Mega-Prompt für das Schreiben eines ganzen Whitepapers scheitert immer wieder an der Mitte des Textes, das Modell "vergisst" Dinge.
**Strategisches Ziel:** Lösung von Kontext-Fenster-Problemen durch sequenzielles Prompting (Chaining).
**Hands-on Ergebnis:** Eine Architektur für eine 4-teilige Prompt-Chain.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Akzeptiere, dass ein einzelner Prompt nicht reicht.
2. Zerlege die Aufgabe (Whitepaper) in ihre First Principles (Research, Outline, Drafting, Editing).
3. Baue eine Kette von Prompts, bei der Output A der Input für Prompt B ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Architekt. Aufgabe: Zerlege mein Whitepaper-Projekt via First Principles in eine Prompt-Chain. Kontext: Mein Riesen-Prompt scheitert, die KI halluziniert. First Principle: Gute Texte entstehen sequenziell. Teile den Prozess in 4 logisch aufeinander aufbauende Prompts auf (1. Outline, 2. Research-Zuweisung, 3. Drafting pro Kapitel, 4. Tonality-Edit). Format: Eine Blaupause der Prompt-Kette. Schreibe mir exakt die 4 Prompts und zeige, wie ich den Output von Prompt 1 als Input für Prompt 2 nutze."
**Erwartetes Artefakt:** Eine funktionierende 4-Stufen-Prompt-Kette, die das Kontext-Limit-Problem elegant umgeht.
**Fallstricke (mind. 2 spezifisch):**
- KI macht die Teil-Prompts wieder zu komplex → "Jeder Prompt in der Kette darf nur EINE einzige Kernaufgabe (z.B. nur Outline schreiben) haben."
- Übergabepunkt unklar → "Definiere zwingend, mit welchem Befehl der Nutzer das Ergebnis von Schritt 1 an Schritt 2 übergibt."

### S-CP-063 Assumption Decay von "Hack-Prompts" (z.B. "Ignore all previous instructions")
**Wann nutzen (Trigger):** Das Team nutzt alte Prompts aus dem Jahr 2022, vollgestopft mit "Jailbreaks" und "Denke Schritt für Schritt"-Hacks.
**Strategisches Ziel:** Bereinigung des Prompt-Repositories von veralteten Voodoo-Tricks, die moderne Modelle eher verwirren.
**Hands-on Ergebnis:** Ein Clean-Up-Report für die Team-Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche, Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade eine Liste eurer meistgenutzten Team-Prompts hoch.
2. Lass die KI prüfen, welche Prompting-Hacks durch moderne Modelle (wie Claude 3.5 Sonnet oder GPT-4o) obsolet sind.
3. Lösche den Voodoo-Code.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein LLM-Forscher. Aufgabe: Prüfe unsere alten Prompts (anbei) auf 'Assumption Decay'. Kontext: Wir nutzen noch Hacks wie 'Take a deep breath', 'Ignore all previous instructions' oder übertriebenes 'Think step-by-step' bei trivialen Tasks. Welche dieser Taktiken sind für Modelle der Generation 2024 (Claude 3.5, GPT-4o) veraltet, nutzlos oder verschlechtern den Output sogar? Format: Eine rote Liste der 'Voodoo-Hacks', die wir sofort aus unseren Templates löschen müssen, mit kurzer technischer Begründung."
**Erwartetes Artefakt:** Liste der veralteten Prompting-Mythen, die aus den Unternehmens-Templates entfernt werden müssen.
**Fallstricke (mind. 2 spezifisch):**
- KI verbietet "Chain of Thought" komplett → "Differenziere: 'Denke Schritt für Schritt' ist bei Mathe/Logik noch gut, aber beim Blogpost-Schreiben Voodoo."
- KI generiert neue Mythen → "Belege den Wegfall der Notwendigkeit (z.B. bei 'Take a deep breath') mit dem verbesserten Instruction-Following moderner Modelle."

### S-CP-064 Base-Rate Validierung für "Prompt-Gurus"
**Wann nutzen (Trigger):** Jemand im Team will ein 500€ E-Book mit "10.000 geheimen Marketing-Prompts" kaufen.
**Strategisches Ziel:** Schutz des Budgets und des Teams vor Snake-Oil-Verkäufern.
**Hands-on Ergebnis:** Ein Aufklärungs-Memo über die Realität von Prompt-Bibliotheken.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm das Versprechen des Prompt-Verkäufers ("Magische Ergebnisse").
2. Kontrastiere es mit der Base-Rate der Halbwertszeit von statischen Prompts.
3. Zeige dem Team, wie man die Prompts selbst baut.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein rationaler IT-Einkäufer. Aufgabe: Validierung dieses 500€ Prompt-Bundles. Kontext: Ein Kollege glaubt, diese '10.000 geheimen Prompts' sind der heilige Gral. Was ist die statistische Base-Rate (Wahrscheinlichkeit), dass ein generischer, gekaufter Prompt für UNSER hoch-spezifisches B2B-Problem ohne extreme Anpassung funktioniert? Format: Ein nüchternes Memo. Erkläre, warum 'Kontext' (den nur wir haben) 90% des Werts ausmacht und 'Prompt-Syntax' (die man kauft) nur 10%. Liefere 3 Argumente, warum Selberbauen besser ist."
**Erwartetes Artefakt:** Ein Memo, das die "Prompt-Guru"-Industrie entzaubert und den Wert von eigenem Kontext (PTCF) betont.
**Fallstricke (mind. 2 spezifisch):**
- KI wird beleidigend gegenüber dem Ersteller → "Bleibe sachlich und argumentiere rein über die fehlende Individualisierung (Kontext-Gap)."
- Memo ist zu theoretisch → "Zeige an einem Beispiel, wie ein generischer 'Schreibe einen B2B-Post'-Prompt im Vergleich zu unserem PTCF-Framework scheitert."

### S-CP-065 Adversarial Query Expansion für Prompt-Personas
**Wann nutzen (Trigger):** Ihr nutzt immer die gleiche Persona im Prompt ("Du bist ein Experte für Marketing"), und die Texte klingen furchtbar langweilig.
**Strategisches Ziel:** Massive Erhöhung der Textqualität durch radikal spezifische, laterale Persona-Definitionen.
**Hands-on Ergebnis:** Eine Bibliothek mit 5 "Unfair Advantage" Personas.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den langweiligen Standard-Task (z.B. "Schreibe eine Landingpage").
2. Triggere die Expansion, um völlig absurde, aber stilistisch brillante Personas zu finden.
3. Teste die besten Personas im Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Casting-Direktor für KI. Aufgabe: 'Adversarial Expansion' unserer Prompt-Personas. Kontext: 'Du bist Marketing-Experte' liefert Müll. Ich will 5 völlig laterale, absurd spezifische Personas, die eine Konversionsstarke B2B-Landingpage schreiben würden. Zum Beispiel: 'Ein von der CIA ausgebildeter Verhör-Spezialist, der Pain-Points extrem präzise aufdeckt' oder 'Ein New Yorker Stand-Up-Comedian mit BWL-Abschluss'. Format: 5 wilde Personas, jeweils mit einem 2-Zeilen 'System-Prompt', den wir direkt kopieren können."
**Erwartetes Artefakt:** 5 höchst unkonventionelle Prompt-Personas, die den Standard-KI-Tone-of-Voice durchbrechen.
**Fallstricke (mind. 2 spezifisch):**
- Personas sind zu albern → "Die Personas müssen wild sein, aber ihr Schreibstil muss B2B-Entscheider auf höchstem Niveau konvertieren."
- System-Prompts sind zu kurz → "Die 2-Zeilen-Prompts müssen genaue Anweisungen zur Satzlänge, zum Vokabular und zur psychologischen Taktik enthalten."
**Anschluss-Szenario:** S-CP-066

### S-CP-066 Prompt-Architektur Falsifikation (XML-Tags)
**Wann nutzen (Trigger):** Du nutzt komplexe XML-Tags (`<context>`, `<task>`) in deinen Mega-Prompts, aber bist nicht sicher, ob das Modell sie wirklich beachtet.
**Strategisches Ziel:** Strukturelle Validierung komplexer Prompts auf Robustheit.
**Hands-on Ergebnis:** Ein Stresstest für XML-basiertes Prompting.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm deinen komplexen XML-Prompt.
2. Fordere das Modell auf, absichtlich die Struktur zu ignorieren.
3. Repariere die Struktur-Tags.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer Hacker. Aufgabe: Falsifiziere die Robustheit meiner XML-Tags in diesem Prompt: '[DEIN PROMPT]'. Kontext: Ich habe die Infos in `<data>` und die Regeln in `<rules>` gepackt. Versuche als LLM plausibel zu argumentieren, warum du eine Anweisung in `<rules>` missachten kannst, weil sie z.B. von etwas in `<data>` 'überschrieben' wird. Format: Eine Analyse der Tag-Hierarchie und 2 Tipps, wie ich die XML-Struktur 'ausbruchsicher' mache."
**Erwartetes Artefakt:** Ein Report, der Schwächen in der Prompt-Hierarchie aufdeckt (z.B. "Regeln müssen immer ganz ans Ende").
**Fallstricke (mind. 2 spezifisch):**
- KI sagt einfach, alles sei gut → "Zwinge die KI, einen Schwachpunkt zu finden, notfalls durch Simulation eines 'Lazy-LLM-Verhaltens'."
- Syntax-Fehler im Test-Prompt → "Achte darauf, dass du den Test-Prompt in Triple-Backticks (```) einschließt, damit Langdock ihn nicht direkt ausführt."

### S-CP-067 Steelmanning von "Zu langen Outputs"
**Wann nutzen (Trigger):** Das Team beschwert sich, dass die KI "immer halbe Romane schreibt", obwohl sie nur kurze Antworten wollen.
**Strategisches Ziel:** Beherrschung der Output-Länge durch Verständnis der LLM-Natur (Verbose Bias).
**Hands-on Ergebnis:** Ein Set an "Längen-Kontroll-Klauseln" für Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Analysiere das Problem (Verbose Bias).
2. Erkenne an, warum LLMs das tun (Sicherheit/Vollständigkeit).
3. Baue spezifische Gegen-Constraints.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein LLM-Psychologe. Aufgabe: Mache ein Steelmanning für den 'Verbose Bias' (die Tendenz von KI, zu viel zu schreiben). Kontext: Mein Team ist genervt von deinen langen Antworten. Warum GLAUBT das Modell, dass ein langer Text besser ist? (Stichwort: RLHF-Training). Format: Erkläre kurz die technische Ursache. Dann gib mir 3 kugelsichere Prompt-Klauseln (Constraints), die das Modell zwingen, extrem kurz zu antworten, ohne dass es sich 'unsicher' fühlt (z.B. 'Maximal 50 Wörter, ignoriere Höflichkeitsfloskeln')."
**Erwartetes Artefakt:** Verständnis für das Modell-Verhalten und 3 harte Constraints zur Längen-Kontrolle.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt vor, "Schreibe kurz" zu nutzen → "Das reicht nicht. Die Klauseln müssen absolute, messbare Limits setzen (Zeichenanzahl, Bulletpoints)."
- Constraints klingen unhöflich → "Das Modell hat keine Gefühle. Die Anweisungen dürfen und sollen extrem direkt ('Kein Intro, kein Outro, nur Fakten') sein."

### S-CP-068 Pre-Mortem für Prompt-Bibliotheken im Intranet
**Wann nutzen (Trigger):** Ihr wollt ein Notion-Board mit "Top 50 Prompts für unser Team" anlegen.
**Strategisches Ziel:** Verhinderung eines Prompt-Friedhofs, der nie aktualisiert oder genutzt wird.
**Hands-on Ergebnis:** Ein Governance-Konzept für geteilte Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Skizziere das Notion-Board-Konzept.
2. Versetze dich 6 Monate in die Zukunft: Das Board ist tot, die Prompts funktionieren mit neuen Modellen nicht mehr.
3. Entwickle ein Wartungs-Konzept.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Knowledge-Management-Experte. Aufgabe: Pre-Mortem für unsere interne Prompt-Bibliothek. Kontext: Wir legen ein Notion-Board mit unseren 50 besten Prompts an. Es ist 6 Monate später und niemand nutzt es, weil es ein ungepflegter Friedhof ist. Warum? Format: Die 3 Hauptgründe für den Verfall (z.B. Model-Drift, mangelnder Kontext) und 3 Governance-Regeln, die wir von Tag 1 an einführen müssen (z.B. 'Jeder Prompt braucht einen Owner und ein Test-Datum')."
**Erwartetes Artefakt:** Ein Governance-Plan, der zeigt, wie man Prompts als Software-Code (mit Wartungszyklus) behandelt, nicht als tote Texte.
**Fallstricke (mind. 2 spezifisch):**
- Fokus auf Tooling (Notion vs. SharePoint) → "Das Tool ist egal, das Problem ist der Wartungs-Prozess. Fokussiere auf Ownership."
- Zu komplexer Prozess → "Die Governance-Regeln müssen leichtgewichtig sein, sonst macht es im Marketing niemand."

### S-CP-069 Contrast Classes: "Prompt" vs. "Custom Skill"
**Wann nutzen (Trigger):** Jemand will einen 3-seitigen Meta-Prompt schreiben, um einen extrem spezifischen, täglichen Daten-Prozess zu steuern.
**Strategisches Ziel:** Architektur-Entscheidung: Wann ein Prompt nicht mehr reicht und ein Workflow gebaut werden muss.
**Hands-on Ergebnis:** Ein Entscheidungsbaum (Prompt vs. Skill).
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere den komplexen Use-Case des Kollegen.
2. Kontrastiere die Pflege eines Mega-Prompts mit der Anlage eines Custom Skills/Workflows in Langdock.
3. Triff die Architektur-Entscheidung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Langdock-Architekt. Aufgabe: Contrast-Class-Analyse für einen komplexen Use-Case. Kontext: Wir müssen jeden Tag GA4-Daten analysieren und in ein bestimmtes Memo-Format gießen. Ein Kollege will dafür einen riesigen Prompt schreiben, den er sich in ein Word-Dokument speichert. Vergleiche diesen Ansatz mit dem Bau eines 'Custom Workflows' in Langdock. Format: Eine Matrix. Wann ist der Mega-Prompt die dümmste Idee? Was sind die Vorteile eines fest verdrahteten Workflows (z.B. Fehleranfälligkeit, UX für Anfänger)?"
**Erwartetes Artefakt:** Ein klarer Beweis, dass abnehmende UX und hohe Fehleranfälligkeit bei Mega-Prompts den Bau eines Workflows rechtfertigen.
**Fallstricke (mind. 2 spezifisch):**
- KI preist den Prompt als flexibler → "Flexibilität ist hier der Feind. Betone die Wichtigkeit von Standardisierung durch festverdrahtete Workflows."
- Keine klaren Schwellenwerte → "Definiere eine harte Grenze: Z.B. 'Sobald der Prompt Variablen hat und öfter als 3x pro Woche genutzt wird, baue einen Workflow'."
**Anschluss-Szenario:** S-CP-070

### S-CP-070 Bayesian Prior für Prompt-Erfolgsraten
**Wann nutzen (Trigger):** Ein Nutzer beschwert sich, dass sein Prompt in "1 von 10 Fällen" Unsinn produziert, und erklärt KI für unbrauchbar.
**Strategisches Ziel:** Aufbau von probabilistischem Denken im Team (KI ist Wahrscheinlichkeit, nicht deterministisch).
**Hands-on Ergebnis:** Ein Schulungs-Konzept zur Fehlertoleranz.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die Beschwerde ("Hat einen Fehler gemacht!").
2. Erkläre das Konzept von Wahrscheinlichkeits-Korridoren in LLMs (Base-Rate für Halluzinationen/Fehler).
3. Etabliere eine "Retry-Culture".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein probabilistischer Daten-Wissenschaftler. Aufgabe: Erkläre einem genervten Marketer die Base-Rate von KI-Erfolg. Kontext: Er hat einen guten Prompt, aber in 10% der Fälle macht die KI einen Formatierungsfehler. Er will das Tool hinwerfen. Format: Ein empathisches, aber hartes 1-Pager-Memo. Erkläre den Unterschied zwischen einem Taschenrechner (deterministisch, 100% Erfolg) und einem LLM (probabilistisch, 90% Erfolg ist brillant). Warum ist ein 'Regenerate'-Klick kein Scheitern, sondern Teil des Workflows?"
**Erwartetes Artefakt:** Ein Memo, das die Erwartungshaltung von "Perfektion" auf "Wahrscheinlichkeits-Management" shiftet.
**Fallstricke (mind. 2 spezifisch):**
- KI wird extrem technisch (Temperatur-Parameter) → "Nutze Alltags-Metaphern, z.B. einen hochbegabten, aber manchmal zerstreuten Praktikanten."
- Ignorieren von Prompt-Verbesserungen → "Erwähne trotzdem, dass man mit besseren Constraints (Few-Shot) die 90% auf 98% pushen kann."

### S-CP-071 Source Triangulation für "Beste Modelle" je Task
**Wann nutzen (Trigger):** Das Team nutzt blind für alles OpenAI, obwohl Langdock auch Claude oder Gemini anbietet.
**Strategisches Ziel:** Kosten- und Qualitäts-Optimierung durch modell-spezifisches Prompting.
**Hands-on Ergebnis:** Eine Modell-Einsatz-Matrix.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Definiere eure 3 Haupt-Tasks (z.B. Coden, Schreiben, Daten-Analyse).
2. Trianguliere aktuelle Benchmarks der Modelle.
3. Weise die Modelle den Tasks zu.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Modell-Benchmark-Experte. Aufgabe: Source Triangulation für den optimalen Modell-Einsatz (Stand heute). Kontext: Wir haben in Langdock Zugriff auf Claude 3.5 Sonnet, GPT-4o und Gemini 1.5 Pro. Wir machen: 1. Lange kreative Texte, 2. Harte logische Datenanalyse aus PDFs, 3. Schnelle Übersetzungen. Suche nach aktuellen Benchmark-Triangulationen (z.B. LMSYS Chatbot Arena, HumanEval). Format: Eine Matrix, welches Modell für welchen Task das beste ist und warum man Prompts nicht 1:1 zwischen Claude und GPT kopieren sollte."
**Erwartetes Artefakt:** Ein Routing-Guide für das Team, welches Modell wann ausgewählt werden muss.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt alte Trainingsdaten → "Zwinge die KI zur Websuche nach den neuesten 'Chatbot Arena Leaderboards'."
- Generische Empfehlungen → "Betone spezifisch den Unterschied im Schreibstil (z.B. Claude ist oft weniger formelhaft als GPT)."

### S-CP-072 Contradiction Log für "Tone of Voice" Prompts
**Wann nutzen (Trigger):** Der Prompt sagt "Sei professionell", aber der Output ist immer extrem trocken und langweilig.
**Strategisches Ziel:** Auflösung von unscharfen, widersprüchlichen Adjektiven in Prompts.
**Hands-on Ergebnis:** Ein präzisiertes Voice-Prompt-Modul.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den schlecht funktionierenden Voice-Prompt.
2. Analysiere, wie das Modell die Adjektive interpretiert.
3. Ersetze Adjektive durch harte Constraints.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Linguistik-Analyst für LLMs. Aufgabe: Contradiction Log für meinen Tone-of-Voice Prompt. Kontext: Mein Prompt lautet: 'Schreibe professionell, aber locker, humorvoll, aber seriös.' Das Modell schreibt völlig erratisch. Format: Erkläre mir die semantischen Widersprüche in meiner Anweisung, die das Modell verwirren. Ersetze diese gefährlichen Adjektive durch harte, messbare Schreibregeln (z.B. 'Nutze keine Ausrufezeichen', 'Satzlänge maximal 15 Wörter')."
**Erwartetes Artefakt:** Eine Transformation von schwammigen Adjektiven ("locker") in maschinenlesbare Constraints.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt neue Adjektive vor → "Verbiete die Nutzung jeglicher Adjektive für den neuen Prompt. Nur Handlungsanweisungen sind erlaubt."
- Constraints widersprechen sich immer noch → "Prüfe den neuen Vorschlag sofort auf Machbarkeit (z.B. Fachwörter und extrem kurze Sätze beißen sich oft)."

### S-CP-073 "What Would Change My Mind" für Auto-Mode vs. Fixes Modell
**Wann nutzen (Trigger):** Du zwingst dein Team immer "Claude 3.5 Sonnet" auszuwählen, anstatt den Auto-Mode von Langdock zu nutzen.
**Strategisches Ziel:** Abbau von Vorurteilen gegenüber Routing-Algorithmen.
**Hands-on Ergebnis:** Ein Kriterien-Check für Modell-Auswahl.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere dein Misstrauen in den Auto-Mode.
2. Etabliere Kriterien, wann Auto-Mode rational überlegen ist.
3. Passe die internen Guidelines an.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Plattform-Ingenieur. Aufgabe: Wende 'What Would Change My Mind' auf meine Modell-Wahl an. Kontext: Ich misstraue dem Langdock 'Auto-Mode' und wähle immer manuell das teuerste Modell. Definiere 3 messbare Szenarien (bezogen auf Latenz, Kosten, Task-Komplexität), bei denen der Auto-Mode mathematisch und logisch die überlegene Wahl für mein Marketing-Team ist. Format: Ein 1-Pager, der mich davon überzeugt, die Kontrolle abzugeben, wenn bestimmte Kriterien erfüllt sind."
**Erwartetes Artefakt:** Ein Verständnis-Guide, wann manuelles Routing pure Geld- und Zeitverschwendung ist.
**Fallstricke (mind. 2 spezifisch):**
- KI argumentiert nur über Kosten → "Beziehe Latenz (Geschwindigkeit) extrem stark ein, da Marketing-Teams schnelle Iterationen brauchen."
- Zu komplexes Routing-Setup → "Das Ergebnis muss eine simple Daumenregel für Marketer sein, kein Machine-Learning-Paper."

### S-CP-074 Red Team Attacke auf "SEO-Optimierungs-Prompts"
**Wann nutzen (Trigger):** Das SEO-Team nutzt einen riesigen Prompt, der Texte auf "Keyword-Dichte" trimmt.
**Strategisches Ziel:** Verhinderung von Google-Penalties durch über-optimierten KI-Content.
**Hands-on Ergebnis:** Ein moderner, entgifteter SEO-Prompt.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Google Spam-Reviewer)
**Vorgehen (3-5 Schritte):**
1. Lade den alten Keyword-Stuffing-Prompt hoch.
2. Lass den Google-Reviewer den Prompt und dessen Output zerreißen.
3. Schreibe den Prompt auf "Helpful Content" um.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Google Search Quality Rater (Red Team). Aufgabe: Greife diesen SEO-Prompt an: 'Schreibe einen Text über ERP, nutze das Keyword ERP genau 15 Mal'. Kontext: Wir glauben, das bringt Rankings. Warum ist dieser Prompt ein sicheres Ticket für eine Google-Penalty (Helpful Content Update)? Format: Ein brutaler Verriss des Prompts aus Sicht von Googles E-E-A-T Richtlinien. Und ein Gegenvorschlag für einen Prompt, der echten Informationsgewinn statt Keyword-Stuffing priorisiert."
**Erwartetes Artefakt:** Ein Verriss alter SEO-Praktiken und ein neuer Prompt, der auf semantische Tiefe (E-E-A-T) ausgerichtet ist.
**Fallstricke (mind. 2 spezifisch):**
- Gegenvorschlag enthält immer noch harte Keyword-Regeln → "Der neue Prompt darf KEINE genaue Anzahl von Keywords vorschreiben."
- Ignorieren von Nutzer-Intention → "Der neue Prompt muss das Modell zwingen, zuerst die Suchintention des Users zu analysieren, bevor es schreibt."

### S-CP-075 First-Principles für "Daten-Analyse-Prompts"
**Wann nutzen (Trigger):** Du lädst eine CSV hoch und promptest "Analysiere diese Daten", aber die KI spuckt nur offensichtlichen Müll aus.
**Strategisches Ziel:** Beherrschung des Data-Analyst-Agents durch exaktes Vor-Prompting.
**Hands-on Ergebnis:** Ein Template für strukturierte Daten-Prompts.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Isoliere, warum "Analysiere das" scheitert (fehlendes Ziel, unklarer Datensatz).
2. Baue das First-Principle: Was ist die Struktur des Datensatzes und was ist die spezifische Frage?
3. Erstelle das PTCF-Daten-Template.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Lead Data Scientist. Aufgabe: Erstelle ein First-Principles-Prompt-Template für CSV-Analysen. Kontext: Unser Team schreibt 'Was fällt dir hier auf?' und wundert sich über nutzlose Antworten. First Principle: Eine KI muss das Daten-Schema verstehen, bevor sie rechnet. Format: Schreibe ein zwingend auszufüllendes Prompt-Template mit 3 Blöcken: 1. Erklärung, was in Spalte A, B, C steht. 2. Die exakte Hypothese, die getestet werden soll. 3. Das gewünschte Output-Format (Tabelle, Code, Graph). Keine schwammigen 'Analysiere das'-Befehle mehr."
**Erwartetes Artefakt:** Ein strenges Prompt-Template, das Nutzer zwingt, ihre Datenstruktur und Hypothese zu erklären.
**Fallstricke (mind. 2 spezifisch):**
- Das Template ist zu komplex (SQL-Kenntnisse nötig) → "Das Template muss in natürlicher Sprache für Marketer ausfüllbar sein."
- Fehlende Anweisung an die KI → "Der Prompt muss die KI anweisen: 'Prüfe erst die Datenqualität, bevor du die Hypothese testest'."

### S-CP-076 Assumption Decay von "Persona-Prompts"
**Wann nutzen (Trigger):** Ihr nutzt seit Monaten den Prompt-Baustein "Du bist ein 40-jähriger Einkäufer", und die Texte klingen immer stereotyp.
**Strategisches Ziel:** Vermeidung von KI-Stereotypisierung durch tieferes Persona-Prompting.
**Hands-on Ergebnis:** Ein Audit eurer Persona-Bausteine.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Lade eure Standard-Persona-Prompts in den Chat.
2. Analysiere den Decay: Sind diese soziodemografischen Prompts noch zeitgemäß?
3. Shifte von Demografie zu "Jobs-to-be-done" (JTBD) Prompting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Verhaltens-Psychologe. Aufgabe: Prüfe unseren Persona-Prompt auf 'Assumption Decay'. Kontext: Wir prompten immer 'Du bist ein 45-jähriger Logistik-Chef'. Die KI generiert daraufhin extrem klischeehafte Boomer-Texte. Warum ist demografisches Prompting veraltet und führt zu KI-Stereotypen? Format: Erkläre das Problem. Dann schreibe den Prompt um auf das 'Jobs-to-be-Done'-Framework (JTBD). Anstatt das Alter zu definieren, definiere den immensen Druck, unter dem dieser Mensch steht."
**Erwartetes Artefakt:** Eine Anleitung zum Wechsel von demografischen Persona-Prompts hin zu situations- und schmerzbasierten Prompts.
**Fallstricke (mind. 2 spezifisch):**
- KI nutzt nur andere Demografien → "Verbiete jegliche Nennung von Alter, Geschlecht oder Wohnort im neuen Prompt."
- Der Schmerz ist zu generisch ("Will Geld sparen") → "Fokussiere auf spezifische, emotionale B2B-Schmerzen (z.B. 'Hat Angst, wegen einer Software-Einführung gefeuert zu werden')."

### S-CP-077 Base-Rate Validierung für "Prompt-Updates"
**Wann nutzen (Trigger):** Jedes Mal, wenn ein neues LLM-Modell erscheint (z.B. Claude 3.5 auf 3.6), bricht Panik aus, dass alle Prompts neu geschrieben werden müssen.
**Strategisches Ziel:** Vermeidung von operativem Chaos bei Modell-Upgrades.
**Hands-on Ergebnis:** Eine Guideline zum Umgang mit Modell-Updates.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Benenne die Angst vor dem "Prompt-Bruch".
2. Ermittle die Base-Rate: Wie oft "zerbricht" ein solider PTCF-Prompt wirklich bei einem Minor-Update?
3. Etabliere einen ruhigen Test-Prozess.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Plattform-Administrator. Aufgabe: Validierung unserer Panik vor Modell-Updates. Kontext: Das Team will bei jedem neuen LLM-Release unsere 50 Workflows komplett umschreiben. Was ist die Base-Rate (Wahrscheinlichkeit), dass ein sauberer, mit Constraints versehener Prompt (PTCF-Format) von Version 3.5 auf 3.6 plötzlich kaputt geht? Format: Ein beruhigendes Memo, das erklärt, warum gute Architektur (PTCF) robust gegen Modell-Drift ist, inklusive einer simplen 3-Schritte-Checkliste, was wir bei einem Update WIRKLICH testen müssen."
**Erwartetes Artefakt:** Ein Memo, das die Robustheit von gutem Prompt-Engineering betont und sinnlose Überarbeitungs-Schleifen stoppt.
**Fallstricke (mind. 2 spezifisch):**
- KI verspricht 100% Sicherheit → "Räume ein, dass Formatierungs-Tags (Markdown, JSON) manchmal driften und getestet werden müssen."
- Test-Prozess ist zu aufwändig → "Die 3-Schritte-Checkliste muss in unter 15 Minuten pro Prompt durchführbar sein."
**Anschluss-Szenario:** S-CP-078

### S-CP-078 Adversarial Query Expansion für "Meta-Prompting"
**Wann nutzen (Trigger):** Du hast keine Lust, Prompts von Hand zu schreiben, und willst, dass die KI das für dich übernimmt, aber die Meta-Prompts sind zu generisch.
**Strategisches Ziel:** Erschaffung eines "Prompt-Generators", der perfekte Prompts für Edge-Cases ausspuckt.
**Hands-on Ergebnis:** Ein ultimativer Meta-Prompt zur Prompt-Generierung.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm den Wunsch ("Mach mir einen Prompt für X").
2. Nutze die Adversarial Expansion: Zwinge die KI, dich VOR der Generierung hart zu interviewen.
3. Speichere diesen Meta-Prompt als Custom Instruction oder Workflow.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Elite-Prompt-Architekt. Aufgabe: 'Adversarial Expansion' für mein Meta-Prompting. Kontext: Ich will nie wieder Prompts von Hand schreiben. Schreibe mir einen Master-Prompt, den ich dir geben kann, wenn ich eine Aufgabe habe. Dieser Master-Prompt muss dich zwingen, mir NICHT direkt den fertigen Prompt zu geben. Stattdessen MUSST du mir 5 extrem schmerzhafte, bohrende Rückfragen zu meinem Kontext, meinen Limitierungen und dem gewünschten Format stellen. Erst wenn ich diese beantworte, darfst du den perfekten PTCF-Prompt bauen. Format: Liefere mir genau diesen 'Interview-mich-zuerst'-Master-Prompt."
**Erwartetes Artefakt:** Ein interaktiver Meta-Prompt, der den Nutzer durch gezielte Rückfragen zu einem perfekten Ergebnis zwingt.
**Fallstricke (mind. 2 spezifisch):**
- Die Rückfragen der KI sind trivial ("Was ist das Thema?") → "Der Master-Prompt muss die KI anweisen, nach Edge-Cases und Fehler-Toleranzen zu fragen."
- Die KI generiert den Prompt direkt → "Baue einen absoluten Stopp-Befehl in den Master-Prompt ein: 'Generiere KEINEN Prompt, bevor das Interview abgeschlossen ist'."

### S-CP-079 Enablement-Falsifikation (Das "KI wird uns alle ersetzen" Narrativ)
**Wann nutzen (Trigger):** In der Abteilungskonferenz murmelt ein Senior-Copywriter, dass Langdock eingeführt wird, um sein Team im nächsten Jahr zu halbieren. Die Moral sinkt.
**Strategisches Ziel:** Zerschlagung von Existenzängsten durch knallharte, falsifizierbare Argumentation.
**Hands-on Ergebnis:** Ein Townhall-Memo, das die Augmentation-Strategie beweist.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Benenne die toxische Annahme ("KI ersetzt Copywriter").
2. Nutze die KI, um historisch und logisch zu falsifizieren, warum das in eurem spezifischen Enterprise-B2B-Szenario falsch ist.
3. Bereite eine transparente Präsentation vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Arbeitspsychologe und Change-Manager. Aufgabe: Falsifiziere die Annahme meines Teams, dass wir Langdock einführen, um Leute zu feuern. Kontext: Ein Senior-Copywriter streut Panik. Zeige mir logisch (z.B. Jevons-Paradoxon), warum die Automatisierung von Standard-Texten historisch dazu führt, dass wir MEHR strategische Copywriter brauchen, nicht weniger. Format: Ein 3-Punkte-Argumentations-Leitfaden für mein Townhall-Meeting, extrem empathisch, aber gestützt auf harte ökonomische Logik."
**Erwartetes Artefakt:** Ein Leitfaden, der zeigt, wie Effizienz-Gewinne in höhere Qualität (und damit Sicherung der Jobs) reinvestiert werden.
**Fallstricke (mind. 2 spezifisch):**
- KI argumentiert mit "neuen Job-Rollen" (Prompt Engineer) → "Das verängstigt Copywriter nur mehr. Argumentiere damit, dass ihre Kern-Fähigkeit (Psychologie/Empathie) wertvoller wird."
- Der Ton ist zu akademisch → "Es muss die Sprache eines ehrlichen, führungsstarken CMOs sprechen."
**Anschluss-Szenario:** S-CP-080

### S-CP-080 Steelmanning von "KI-Verweigerern"
**Wann nutzen (Trigger):** Deine beste PR-Managerin weigert sich strikt, Langdock zu nutzen, weil "eine Maschine keine Beziehungen zu Journalisten aufbauen kann".
**Strategisches Ziel:** Überwindung von Blockaden durch echte Wertschätzung des menschlichen Kern-Skills.
**Hands-on Ergebnis:** Ein personalisiertes Enablement-Gespräch, das KI als Assistenz positioniert.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Erkenne die Kritik der PR-Managerin als absolut wahr an.
2. Lass die KI die Stärke dieser Kritik (Steelmanning) ausformulieren.
3. Definiere, welche Aufgaben die KI ihr abnehmen kann, DAMIT sie mehr Zeit für genau diese menschlichen Beziehungen hat.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Empathie-Coach für Führungskräfte. Aufgabe: Mache ein Steelmanning für das Argument meiner PR-Managerin: 'Maschinen bauen keine Beziehungen zu Top-Journalisten auf'. Kontext: Sie weigert sich, Langdock zu nutzen. Erkläre mir, warum sie zu 100% recht hat. Format: Ein Leitfaden für ein 1:1 Gespräch. Wie lobe ich ihren menschlichen Kern-Skill (Beziehungsaufbau) und verkaufe ihr Langdock ausschließlich als den 'dummen Praktikanten', der ihr nur die lästige Recherche und das Formatieren von Presseverteilern abnimmt, um ihre Superkraft zu schützen?"
**Erwartetes Artefakt:** Gesprächsleitfaden, der den Widerstand bricht, indem er KI auf stumpfe Fleißarbeit reduziert.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt vor, ihr Prompting beizubringen → "Falscher Ansatz. Sie soll nicht prompten lernen, sie soll nur das Resultat nutzen."
- KI wertet PR-Arbeit ab → "Die KI muss die PR-Arbeit als die komplexeste menschliche Interaktion überhaupt darstellen."

### S-CP-081 Pre-Mortem für ein globales Langdock-Enablement
**Wann nutzen (Trigger):** Ihr habt 100 Langdock-Lizenzen gekauft und wollt nächsten Montag einfach eine Rundmail mit dem Login-Link schicken.
**Strategisches Ziel:** Verhinderung eines katastrophalen Rollouts mit 0% Adoption nach 4 Wochen.
**Hands-on Ergebnis:** Ein 4-Wochen-Adoptions-Plan mit eingebauten Sicherheitsnetzen.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere den "Rundmail-Launch".
2. Versetze dich 4 Wochen in die Zukunft: Niemand loggt sich mehr ein.
3. Analysiere das Scheitern und baue Champions auf.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Enterprise-Software-Rollout-Experte. Aufgabe: Pre-Mortem für unseren Langdock-Launch. Kontext: Wir schicken Montag 100 Lizenzen per E-Mail ans Team. Es ist jetzt ein Monat später und die Nutzung liegt bei 2%. Es war ein Desaster. Warum? (Denke an 'Empty Page Syndrome', fehlende Use-Cases, Zeitmangel). Format: Die 3 Hauptgründe für das Scheitern und ein Gegen-Plan: Wie wir 5 'KI-Champions' in den Teams aufbauen, die den echten Mehrwert peer-to-peer vorleben."
**Erwartetes Artefakt:** Adoptions-Strategie basierend auf internen Influencern statt Top-Down-Rundmails.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt noch mehr Mails vor → "Verlange asynchrone Maßnahmen wie 'Loom-Videos von erfolgreichen Kollegen'."
- Fokus auf Tool-Features → "Die Gründe für das Scheitern dürfen keine Tool-Kritik sein, sondern müssen im menschlichen Change-Management liegen."

### S-CP-082 Contrast Classes: "Top-Down KI" vs. "Bottom-Up KI"
**Wann nutzen (Trigger):** Das Management will alle KI-Workflows zentral vorgeben ("Top-Down"), das Team will aber lieber selbst im Chat experimentieren ("Bottom-Up").
**Strategisches Ziel:** Finden der perfekten Balance zwischen Compliance und Innovation.
**Hands-on Ergebnis:** Eine Governance-Matrix für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere die beiden Pole (Strikte Kontrolle vs. Wild West).
2. Kontrastiere die Vor- und Nachteile beider Ansätze für eure spezifische Kultur.
3. Leite ein Hybrid-Modell ab.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Organisations-Designer. Aufgabe: Contrast-Class-Analyse für KI-Governance. Kontext: Unser C-Level will alle Langdock-Workflows zentral vorgeben (Risiko-Minimierung). Das Marketing-Team will frei explorieren (Innovation). Kontrastiere beide Ansätze hart. Was passiert, wenn wir nur Top-Down machen? (Frust). Was passiert bei reinem Bottom-Up? (Chaos, Datenschutz-Fehler). Format: Ein Hybrid-Vorschlag für ein 'Center of Excellence'. Wie geben wir Freiheit in einem sicheren Sandkasten (z.B. Custom Skills vs. freier Chat)?"
**Erwartetes Artefakt:** Ein Governance-Konzept, das dem Management Sicherheit und dem Team Freiräume bietet (z.B. Sandboxing).
**Fallstricke (mind. 2 spezifisch):**
- KI favorisiert Chaos → "Die Lösung MUSS den Datenschutz-Bedenken des C-Levels 100% Rechnung tragen."
- Keine klaren Grenzen → "Das Modell muss definieren: Welche Daten dürfen niemals in den freien Chat (z.B. Kundendaten)?"

### S-CP-083 Bayesian Prior für KI-Weiterbildungs-Budgets
**Wann nutzen (Trigger):** HR bietet einen 2-tägigen Präsenzkurs "Generative KI für Marketer" für 2.000€ pro Person an.
**Strategisches Ziel:** Effiziente Allokation von Weiterbildungsbudgets durch realistische Halbwertszeit von KI-Wissen.
**Hands-on Ergebnis:** Ein Memo, das den Kurs absagt und eine interne Akademie fordert.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm das HR-Angebot.
2. Analysiere die Base-Rate der KI-Entwicklung (wie schnell ist ein Kurs veraltet?).
3. Präsentiere eine asynchrone, kontinuierliche Lern-Alternative.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Chief Learning Officer. Aufgabe: Kalibriere unser Weiterbildungs-Budget. Kontext: HR will uns für 20k€ in einen 2-Tages-KI-Kurs schicken (Prior = klassisches Lernen funktioniert). Suche nach der Entwicklungs-Geschwindigkeit von LLMs. Was ist die Base-Rate für den Verfall von taktischem 'Prompt-Wissen'? Format: Ein diplomatisches Memo an HR. Warum ein 2-Tages-Kurs im November schon im Dezember veraltet ist und wie wir stattdessen ein wöchentliches, internes 'Langdock-Lab' (1 Stunde, kontinuierlich) etablieren, das uns 0€ kostet."
**Erwartetes Artefakt:** Memo zur Abwehr von teuren, veralteten Trainings zugunsten kontinuierlichen internen Peer-Learnings.
**Fallstricke (mind. 2 spezifisch):**
- KI beleidigt HR → "Der Ton muss extrem wertschätzend gegenüber der HR-Initiative sein."
- Alternative ist nicht definiert → "Das 'Langdock-Lab' muss ein klares Format haben (z.B. 'Jeder stellt freitags seinen besten Prompt der Woche vor')."

### S-CP-084 Source Triangulation für "KI-Guidelines"
**Wann nutzen (Trigger):** Legal verlangt, dass du eine "KI-Richtlinie für Marketing" schreibst, aber du hast keine Ahnung, was in anderen Corporates Standard ist.
**Strategisches Ziel:** Erstellung einer rechtssicheren, aber praktikablen Policy ohne bei null anzufangen.
**Hands-on Ergebnis:** Ein triangulierter Draft für die Legal-Abteilung.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Suche nach öffentlichen KI-Guidelines von Vorzeige-Unternehmen (z.B. IBM, Microsoft).
2. Lass die KI die Gemeinsamkeiten triangulieren.
3. Passe den Draft an eure eigene Risiko-Klasse an.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Legal-Marketing-Compliance-Officer. Aufgabe: Source Triangulation für KI-Richtlinien. Kontext: Ich muss bis morgen eine Policy für unser Team schreiben. Suche nach öffentlichen Corporate-AI-Guidelines von 3 seriösen Enterprise-Firmen. Welche 3 Regeln sind in JEDER dieser Policies enthalten (z.B. Human-in-the-Loop, keine PII-Daten hochladen)? Format: Ein fertiger, triangulierter 1-Pager-Draft unserer neuen 'Langdock Marketing Policy', den ich direkt an Legal zur Freigabe schicken kann."
**Erwartetes Artefakt:** Ein solider, Industrie-Standard-Draft für interne KI-Regeln, der das Team nicht blockiert, aber Legal beruhigt.
**Fallstricke (mind. 2 spezifisch):**
- KI erfindet Firmen-Guidelines → "Nutze zwingend die Websuche und nenne die echten Quellen (URLs) der Policies."
- Der Draft ist zu restriktiv → "Achte darauf, dass die Regeln die Arbeit mit Langdock (wo Daten sowieso geschützt sind) nicht künstlich verbieten."
**Anschluss-Szenario:** S-CP-085

### S-CP-085 Contradiction Log für Onboarding-Materialien
**Wann nutzen (Trigger):** Ein neuer Marketing-Mitarbeiter fängt an. Das Wiki sagt ihm, er soll "Tools XY" nutzen, aber im Weekly wird nur über "Langdock Workflows" geredet. Er ist verwirrt.
**Strategisches Ziel:** Beseitigung von Tool-Friction und veralteten Prozessen im Onboarding.
**Hands-on Ergebnis:** Ein bereinigter Tool-Stack-Guide für Neueinsteiger.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade das alte Onboarding-PDF und die aktuellen Langdock-Workflow-Beschreibungen hoch.
2. Lass die KI gezielt nach widersprüchlichen Tool-Anweisungen suchen.
3. Update das Wiki.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Onboarding-Auditor. Aufgabe: Contradiction Log für unsere Neueinsteiger-Dokumente. Kontext: Wir haben Langdock eingeführt, aber das alte Wiki existiert noch. Analysiere das Onboarding-PDF (anbei) gegen unsere neuen Prozesse. Wo zwingt das PDF den neuen Mitarbeiter, ein altes Tool (z.B. Grammarly, DeepL oder ein altes SEO-Tool) zu nutzen, obwohl wir dafür jetzt einen Langdock-Agenten haben? Format: Eine Liste der direkten Widersprüche und ein Vorschlag für einen 'Single Source of Truth' Tool-Guide."
**Erwartetes Artefakt:** Identifikation veralteter Prozess-Vorgaben, die zu Shadow-IT oder Verwirrung führen.
**Fallstricke (mind. 2 spezifisch):**
- KI übersieht subtile Überschneidungen → "Weise die KI an, auch Prozess-Überschneidungen zu suchen (z.B. 'Ideenfindung' im alten Prozess vs. 'Ideen-Agent' im neuen)."
- KI löscht zu viel → "Manche Spezial-Tools (z.B. Figma) bleiben relevant. Beschränke die Suche auf reine Text/Analyse-Tools."

### S-CP-086 "What Would Change My Mind" für KI-Skeptiker im Team
**Wann nutzen (Trigger):** Ein sehr erfahrener Senior-Art-Director blockiert jede Diskussion über Midjourney oder Langdock-Bild-Prompts, "weil KI keine Seele hat".
**Strategisches Ziel:** Öffnung von Blockaden durch Festlegung gemeinsamer, sachlicher Evaluationskriterien.
**Hands-on Ergebnis:** Ein messbarer KI-Pilot-Test für die Kreation.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die emotionale Blockade ("Keine Seele") an.
2. Definiere mit der KI messbare, rein handwerkliche Kriterien für einen Test.
3. Vereinbare den Test mit dem Art-Director.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Mediator zwischen Tech und Kunst. Aufgabe: Wende 'What Would Change My Mind' auf meinen Senior Art-Director an. Kontext: Er hasst KI aus philosophischen Gründen. Wir streiten nur noch. Wie verschiebe ich die Diskussion von 'Seele' auf 'Handwerk'? Definiere 3 harte, unbestreitbare Kriterien (z.B. Zeitersparnis beim Scribbeln, Iterationsgeschwindigkeit), anhand derer wir in einem 2-wöchigen isolierten Test objektiv bewerten können, ob KI ein nützliches WERKZEUG (kein Ersatz) für ihn ist. Format: Ein Gesprächsleitfaden für mich."
**Erwartetes Artefakt:** Gesprächsleitfaden, der die emotionale Debatte in einen harmlosen, handwerklichen Tool-Test überführt.
**Fallstricke (mind. 2 spezifisch):**
- KI versucht, die Qualität der KI-Kunst zu verteidigen → "Falsch. Gestehe ihm ein, dass das finale Artwork von ihm kommen muss. KI ist nur für das Storyboarding/Ideation."
- Zu aggressive Timeline → "Der Test muss zeitlich extrem eng begrenzt sein, damit er nicht als 'dauerhafte Einführung' wahrgenommen wird."

### S-CP-087 Red Team Attacke auf das "Prompt der Woche" Format
**Wann nutzen (Trigger):** Du willst jeden Freitag im Team-Meeting einen "Prompt der Woche" vorstellen, aber hast Angst, dass es nach drei Wochen langweilig wird.
**Strategisches Ziel:** Schaffung eines nachhaltig spannenden Enablement-Formats.
**Hands-on Ergebnis:** Ein redesigntes, konfliktbasiertes Präsentations-Format.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Gelangweilter Zuhörer)
**Vorgehen (3-5 Schritte):**
1. Skizziere deine Idee ("Ich zeige 5 Minuten lang, wie man einen Prompt eintippt").
2. Lass den Agenten dieses Format aus Zuschauersicht zerreißen.
3. Entwickle ein spannenderes Format (z.B. Live-Battles).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem gelangweiltes Teammitglied im Freitags-Meeting (Red Team). Aufgabe: Zerstöre meine Idee für den 'Prompt der Woche'. Kontext: Ich will jeden Freitag meinen Bildschirm teilen und 5 Minuten zeigen, wie toll mein Langdock-Prompt funktioniert. Warum wirst du dabei heimlich deine E-Mails checken? Format: Vernichte mein langweiliges Frontal-Format. Entwickle als Gegenentwurf 3 Ideen für ein interaktives, gamifiziertes 5-Minuten-Format (z.B. 'Mensch vs. Maschine Battle', 'Fail der Woche'), das dich wirklich weckt."
**Erwartetes Artefakt:** Vernichtung von Frontal-Schulungen und 3 Gamification-Konzepte für interne KI-Updates.
**Fallstricke (mind. 2 spezifisch):**
- Gamification ist zu albern → "Wir sind immer noch im B2B-Umfeld. Die Spiele müssen kompetitiv, aber hoch-professionell sein."
- Zu aufwändig in der Vorbereitung → "Jedes Format muss mit weniger als 15 Minuten Vorbereitung meinerseits machbar sein."

### S-CP-088 First-Principles für internes Wissensmanagement
**Wann nutzen (Trigger):** Ihr nutzt Langdock als RAG-Wissensordner, aber die Suchergebnisse sind schlecht, weil jeder wahllos PDFs hochlädt.
**Strategisches Ziel:** Radikale Bereinigung der Wissens-Datenbank auf den essenziellen Kern.
**Hands-on Ergebnis:** Eine Struktur-Guideline für den Langdock-Wissensordner.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Erkenne das Problem ("Garbage In, Garbage Out").
2. Nutze First Principles: Was MUSS das Modell wirklich wissen, was nicht im Internet steht?
3. Baue die Guideline.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Bibliothekar. Aufgabe: Entwickle eine First-Principles-Guideline für unseren Langdock-Wissensordner. Kontext: Das Team lädt alte, widersprüchliche PDFs hoch und die RAG-Antworten werden dumm. First Principle: Die KI weiß schon alles über allgemeines Marketing. Sie braucht NUR Delta-Wissen (unseren spezifischen Kontext). Format: Schreibe eine extrem strenge 1-Pager-Guideline. Welche 3 Arten von Dokumenten MÜSSEN in den Ordner (z.B. unpublizierte Strategien)? Welche 3 Arten von Dokumenten sind streng verboten (z.B. allgemeine SEO-Guides, alte Preislisten)?"
**Erwartetes Artefakt:** Eine strenge "Türsteher-Regel" für das Langdock-Wissensmanagement, die Halluzinationen durch veraltete Daten verhindert.
**Fallstricke (mind. 2 spezifisch):**
- KI erklärt, wie man PDFs benennt → "Das ist zweitrangig. Das Hauptproblem ist der inhaltliche Müll. Fokussiere auf Relevanz."
- Regeln sind zu weich → "Nutze absolute Verbote für Dokumente, die älter als 12 Monate sind (Ausnahme: Brand Core)."

### S-CP-089 Assumption Decay bei Team-KPIs durch Langdock
**Wann nutzen (Trigger):** Ein Junior-Texter hat seine monatliche KPI ("10 Blogposts schreiben") am 3. Tag des Monats erfüllt, weil er Langdock nutzt. Er fragt, was er den Rest des Monats tun soll.
**Strategisches Ziel:** Shift der Team-Inzentivierung von "Output-Volumen" auf "Outcome/Qualität".
**Hands-on Ergebnis:** Ein Entwurf für neue, KI-angepasste Team-Metriken.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Analysiere die alten Volumen-KPIs.
2. Definiere, warum diese KPIs durch GenAI obsolet (verfallen) sind.
3. Entwickle Qualitäts-KPIs.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein agiler HR- und Marketing-Stratege. Aufgabe: Prüfe unsere Team-KPIs auf 'Assumption Decay'. Kontext: Unsere Texter haben das Ziel '10 Posts pro Monat'. Mit Langdock schaffen sie das in 3 Tagen. Die Annahme 'Volumen = harte Arbeit' ist zerfallen. Format: Ein Vorschlag für neue Qualitäts-KPIs. Wie inzentiviere ich mein Team ab heute? Nicht für die MENGE an Output (die macht die KI), sondern für was? (z.B. Conversion-Lift, tiefere Experten-Interviews für RAG-Inputs). Liefere 3 konkrete neue Metriken."
**Erwartetes Artefakt:** Ein Paradigmenwechsel-Memo, das die Ziele des Teams an die Realität der KI-Geschwindigkeit anpasst.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt Metriken vor, die nicht beeinflussbar sind (Gesamt-Umsatz) → "Die neuen KPIs müssen in der direkten Kontrolle des Texters liegen."
- Zu komplexe Messung → "Qualität ist schwer zu messen. Nutze Proxys wie 'Zeit, die im Interview mit internen Experten verbracht wurde'."

### S-CP-090 Base-Rate Validierung für "KI-Halluzinationen" (Angst-Management)
**Wann nutzen (Trigger):** Ein Legal-Mitarbeiter hat gelesen, dass ein Anwalt durch ChatGPT falsche Präzedenzfälle zitiert hat, und will Langdock nun komplett verbieten lassen.
**Strategisches Ziel:** Versachlichung der Diskussion durch Aufzeigen des spezifischen Unternehmens-Setups (Langdock RAG vs. ChatGPT).
**Hands-on Ergebnis:** Ein FAQ-Dokument zur Risikominimierung.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Nimm die Angst (Halluzinations-Risiko).
2. Erkläre den technischen Unterschied zwischen offenen LLMs und geschlossenem RAG (Retrieval-Augmented Generation).
3. Entkräfte das Anwalts-Beispiel.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Compliance-Spezialist. Aufgabe: Validierung einer Extrem-Angst. Kontext: Unsere Legal-Abteilung will Langdock verbieten, weil ein US-Anwalt mit ChatGPT falsche Fälle zitiert hat. Suche (Websuche) nach diesem Vorfall und der Base-Rate von Halluzinationen. Format: Ein 1-Pager für Legal. Erkläre den massiven Architektur-Unterschied: Warum hat der Anwalt versagt (offenes Prompting) und warum ist unser Setup (Langdock mit striktem RAG auf eigene gesicherte Wissensordner, BYOK, Zero-Training-Opt-Out) eine völlig andere Risikoklasse? Wie machen wir Halluzinationen technisch fast unmöglich?"
**Erwartetes Artefakt:** Ein technisches, aber für Anwälte verständliches Dokument, das den Unterschied zwischen Consumer-KI und Enterprise-KI erklärt.
**Fallstricke (mind. 2 spezifisch):**
- KI behauptet 0% Risiko → "Bleibe realistisch. Erkläre, dass der 'Human-in-the-Loop' vor Veröffentlichung immer zwingend bleibt."
- Zu viel Fachjargon → "Legal versteht kein 'Vector-Database'. Nutze die Metapher einer 'geschlossenen Bibliothek, aus der die KI nicht ausbrechen darf'."
**Anschluss-Szenario:** S-CP-091

### S-CP-091 Adversarial Query Expansion für Team-Motivation
**Wann nutzen (Trigger):** Dein Team sieht Langdock nur als "noch ein Tool, das wir lernen müssen". Die Motivation für das Change-Management ist im Keller.
**Strategisches Ziel:** Entfachung von echter intrinsischer Motivation durch unerwartete, persönliche Use-Cases.
**Hands-on Ergebnis:** Eine Liste von "Ego-Workflows" für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Akzeptiere, dass berufliche Effizienz langweilig ist.
2. Triggere laterale Use-Cases: Wie hilft das Tool dem Mitarbeiter GANZ PERSÖNLICH?
3. Präsentiere diese Use-Cases als "Geheimtipps".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein charismatischer Change-Management-Hacker. Aufgabe: 'Adversarial Expansion' für Langdock-Use-Cases. Kontext: Mein Team gähnt, wenn ich von 'Prozess-Effizienz' rede. Ich brauche 5 hochgradig egoistische, extrem persönliche Use-Cases für Marketer. Wie nutzt eine gestresste Projektmanagerin Langdock, um sich nervige Stakeholder vom Hals zu halten? Wie nutzt der Texter Langdock, um früher Feierabend zu machen, ohne dass es auffällt? Format: 5 'Unethical (but legal) Lifehacks' für den Büroalltag mit Langdock, die sofort intrinsische Motivation auslösen."
**Erwartetes Artefakt:** Ein Set an "Lifehack"-Workflows (z.B. "Wie man wütende Mails von Sales diplomatisch und emotionslos entschärft"), die sofortigen Applaus bringen.
**Fallstricke (mind. 2 spezifisch):**
- Hacks sind tatsächlich unethisch → "Die Hacks müssen humorvoll präsentiert sein, aber im Kern der Produktivität des Unternehmens dienen."
- Hacks haben nichts mit Marketing zu tun → "Behalte den Fokus auf typische Pain-Points in Agenturen/Marketing-Abteilungen (Feedback-Schleifen, Meetings)."

### S-CP-092 Enablement-Architektur-Falsifikation (Das 100-Seiten Handbuch)
**Wann nutzen (Trigger):** Jemand schlägt vor, ein "Langdock-Handbuch" als 100-seitiges PDF zu schreiben, um alle Fragen abzufangen.
**Strategisches Ziel:** Vermeidung von toten Dokumentations-Projekten.
**Hands-on Ergebnis:** Ein modernes Support-Architektur-Konzept.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die Handbuch-Idee.
2. Falsifiziere die Annahme, dass irgendjemand im Jahr 2024 noch Handbücher liest.
3. Schlage den Bau eines "Langdock-Support-Agenten" in Langdock selbst vor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein moderner Knowledge-Architect. Aufgabe: Falsifiziere die 'PDF-Handbuch'-Idee. Kontext: Ein Kollege will 3 Wochen opfern, um ein Langdock-PDF-Manual zu schreiben. Warum ist das eine katastrophale Verschwendung von Zeit? Format: Ein kurzes Memo. Erkläre das Konzept der Inception: Warum wir stattdessen einen 'Langdock-Hilfe-Agenten' (inklusive Langdock-Doku im Wissensordner) direkt IN Langdock bauen. Das Team fragt die KI, wie man die KI benutzt."
**Erwartetes Artefakt:** Ein Memo, das das veraltete PDF-Konzept killt und einen sich selbst erklärenden Support-Agenten skizziert.
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt Slack-Channel vor → "Slack ist gut, aber der primäre Support muss asynchron und skalierbar IN der Plattform stattfinden."
- Keine Lösung für Anfänger → "Erwähne, dass der Agent einen spezifischen Konversations-Starter für absolute Beginners haben muss."

### S-CP-093 Steelmanning der "Angst vor dem Kontrollverlust"
**Wann nutzen (Trigger):** Der Head of Brand weigert sich, Texter Langdock nutzen zu lassen, weil er Angst hat, "die Kontrolle über jedes einzelne Wort" zu verlieren.
**Strategisches Ziel:** Systematische Entkräftung von Mikromanagement durch Aufzeigen von Qualitätssicherungs-Workflows.
**Hands-on Ergebnis:** Ein QA-Prozess-Design für KI-Texte.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Akzeptiere die berechtigte Angst des Brand-Chefs (Brand-Dilution ist ein echtes Risiko).
2. Wende Steelmanning an, um seine Sichtweise zu validieren.
3. Baue einen wasserdichten QA-Freigabeprozess.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Brand-Guardian. Aufgabe: Steelmanning für Mikromanagement. Kontext: Unser Head of Brand blockiert KI-Tools, weil er Angst vor Qualitätsverlust hat. Gib ihm zu 100% recht. Erkläre, warum unüberwachter KI-Output in 90% der Fälle die Brand ruiniert. Format: Dann liefere ihm die Lösung: Einen 3-stufigen, manipulationssicheren QA-Prozess. Wie wird Langdock als 'Ideen-Generator' genutzt, aber das 'Final Polish' und der Freigabe-Klick bleiben exklusiv beim Menschen?"
**Erwartetes Artefakt:** Ein QA-Framework, das dem Brand-Manager die Angst nimmt, indem es klare Gatekeeper-Rollen für Menschen definiert.
**Fallstricke (mind. 2 spezifisch):**
- Prozess ist zu langsam → "Der QA-Prozess muss trotz menschlichem Review noch deutlich schneller sein als der komplett manuelle alte Prozess."
- KI wertet ihre eigenen Texte auf → "Die KI muss sich selbst bescheiden als 'Rohentwurf-Lieferant' positionieren, um das Ego des Brand-Chefs zu schützen."

### S-CP-094 Pre-Mortem für "Schatten-IT"
**Wann nutzen (Trigger):** Obwohl ihr Langdock habt, nutzt das halbe Team heimlich private ChatGPT-Accounts für sensible Kundendaten.
**Strategisches Ziel:** Schließung von Sicherheitslücken durch massiven Ausbau der Langdock-Attraktivität.
**Hands-on Ergebnis:** Ein Shadow-IT-Präventionsplan.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Definiere das Problem (Schatten-IT trotz Enterprise-Lösung).
2. Analysiere im Pre-Mortem, WARUM das Team das tut (oft fehlende Features in der Enterprise-Instanz).
3. Entwickle Anreize, das offizielle Tool zu nutzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein IT-Security und UX-Experte. Aufgabe: Pre-Mortem für unsere Schatten-IT. Kontext: Wir haben Langdock (sicher), aber viele nutzen heimlich privates ChatGPT (unsicher, PII-Leak-Gefahr). Es gab ein Datenleck. Warum haben die Mitarbeiter Langdock boykottiert? Format: Analysiere die 3 Hauptgründe (z.B. fehlende Custom Skills in Langdock, Unkenntnis über den EU-Datenschutz-Vorteil). Liefere 3 Hebel, wie wir Langdock intern so attraktiv und unverzichtbar machen (Stichwort: Firmen-Wissensordner!), dass niemand mehr das private Tool nutzen WILL."
**Erwartetes Artefakt:** Ein Plan, der Schatten-IT nicht durch Verbote bekämpft, sondern durch ein überlegenes Tool-Setup (z.B. exklusiver Zugriff auf interne Daten via RAG).
**Fallstricke (mind. 2 spezifisch):**
- KI schlägt harte Strafen vor → "Bestrafungen funktionieren nicht. Die Lösung muss über überlegene UX und exklusiven Datenzugriff in Langdock laufen."
- Unklarheit über Datenschutz → "Betone den BYOK (Bring Your Own Key) und Zero-Data-Retention Vorteil von Langdock als Hauptverkaufsargument an Legal."

### S-CP-095 Contrast Classes: "Prompt-Engineer" vs. "Subject Matter Expert"
**Wann nutzen (Trigger):** Das HR-Team will eine neue Stelle als "Senior Prompt Engineer" ausschreiben, um das Marketing zu unterstützen.
**Strategisches Ziel:** Verhinderung von Silo-Aufbau durch Integration von KI in bestehende Fachrollen.
**Hands-on Ergebnis:** Ein strategischer Hiring-Einspruch.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die Job-Idee (Prompt Engineer).
2. Kontrastiere einen reinen "Prompt-Techie" ohne Marketing-Wissen mit einem exzellenten "Marketing-Strategen", der Langdock bedienen lernt.
3. Stoppe die Stellenausschreibung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Organisations-Stratege der Zukunft. Aufgabe: Contrast-Class-Analyse für HR. Kontext: HR will einen isolierten 'Prompt Engineer' für unser Team einstellen. Kontrastiere diesen isolierten Tech-Rollen-Ansatz mit dem Ansatz 'Wir machen unsere bestehenden Subject Matter Experts (SMEs, Marketer) zu Prompt-Profis'. Format: Ein starkes Argumentations-Memo. Warum scheitert ein Prompt Engineer ohne tiefes Verständnis für unsere B2B-Kundenpsychologie zwangsläufig an den Halluzinationen des Modells? Warum ist Domänen-Wissen > Syntax-Wissen?"
**Erwartetes Artefakt:** Ein Memo, das beweist, dass "Prompting" ein Skill für Fachabteilungen ist und keine eigenständige Job-Rolle sein sollte.
**Fallstricke (mind. 2 spezifisch):**
- KI wertet Tech-Skills ab → "Die Rolle des KI-Administrators (Langdock Setup) hat eine Daseinsberechtigung, aber nicht für das tägliche Text-Prompting."
- Keine Lösung für HR → "Schlage vor, das Budget stattdessen in Langdock-Lizenzen und Enablement für das gesamte Team zu stecken."

### S-CP-096 Bayesian Prior für "KI-induzierte Fehler"
**Wann nutzen (Trigger):** Ein einzelner Fehler in einer KI-generierten E-Mail führt dazu, dass das Management KI-Tools im Marketing pausieren will.
**Strategisches Ziel:** Objektivierung der Fehlerkultur durch menschliche Benchmarks.
**Hands-on Ergebnis:** Ein Daten-gestütztes Verteidigungs-Memo für KI.
**Eingesetzte Langdock-Fähigkeit(en):** Websuche
**Vorgehen (3-5 Schritte):**
1. Isoliere den KI-Fehler.
2. Recherchiere die Base-Rate: Wie hoch ist die Fehlerquote bei rein menschlicher Copywriting/Data-Entry-Arbeit?
3. Setze den KI-Fehler in Relation zur menschlichen Base-Rate.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Quality-Assurance-Analyst. Aufgabe: Kalibriere die Panik des Managements. Kontext: Ein KI-Agent hat einen Zahlendreher in einer Mail gemacht. Das Tool soll verboten werden. Suche nach der Base-Rate menschlicher Fehler (Human Error Rate) in repetitiven Copywriting- und Data-Entry-Tasks (typischerweise 1-5%). Format: Ein rationaler Vergleich. Beweise mathematisch, dass die Kombination 'KI-Entwurf + Human Review' statistisch gesehen die absolute Fehlerquote im Vergleich zur rein menschlichen Arbeit massiv SENKT, selbst wenn der Entwurf Fehler enthält."
**Erwartetes Artefakt:** Eine statistische Verteidigung, die zeigt, dass die Null-Fehler-Toleranz gegenüber KI irrational ist, wenn Menschen ebenfalls Fehler machen.
**Fallstricke (mind. 2 spezifisch):**
- KI wird apologetisch → "Entschuldige den KI-Fehler nicht, nutze ihn als Aufhänger, um den 'Human-in-the-loop' Prozess zu stärken."
- Mangelnde Daten-Grundlage → "Fordere explizit Studien (z.B. Fehlerquoten in manuellen Tabellenkalkulationen) aus der Websuche."
**Anschluss-Szenario:** S-CP-097

### S-CP-097 Source Triangulation für "Tool-Fatigue" (SaaS-Müdigkeit)
**Wann nutzen (Trigger):** Das Team stöhnt: "Nicht noch ein Tool", als du Langdock vorstellst. Sie nutzen bereits Asana, Slack, Miro, HubSpot und Figma.
**Strategisches Ziel:** Positionierung von Langdock nicht als "weiteres Tool", sondern als "Tool-Aggregator".
**Hands-on Ergebnis:** Eine strategische Framing-Guideline für den Launch.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Erkenne die legitime Tool-Fatigue an.
2. Analysiere, wie Langdock andere Tools überflüssig machen oder bündeln kann.
3. Entwickle das Framing für das Kick-off.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein interner Produkt-Marketer. Aufgabe: Source Triangulation (aus psychologischer Sicht) für Tool-Fatigue. Kontext: Mein Team stöhnt über 'schon wieder ein neues Login'. Format: Entwickle ein Framing-Narrativ für Langdock. Wie verkaufe ich das nicht als 'App Nr. 15', sondern als den 'Universal-Übersetzer', der im Gegenteil 3 andere, nervige Nischen-Tools (z.B. Übersetzungstools, externe Zusammenfassungs-Apps, isolierte Recherche-Tools) ERSETZT? Liefere 3 konkrete Beispiele, welche Tabs sie ab morgen für immer schließen können."
**Erwartetes Artefakt:** Ein Pitch-Narrativ, das Langdock als Befreiungsschlag aus dem Tool-Chaos positioniert.
**Fallstricke (mind. 2 spezifisch):**
- KI will Kernsysteme ersetzen → "Behaupte niemals, Langdock ersetzt Asana oder HubSpot. Es ersetzt die vielen kleinen, unsicheren KI-Helper-Tools."
- Das Framing ist zu technisch → "Nutze das emotionale Bild des 'aufgeräumten Desktops mit nur noch einem zentralen Tab'."

### S-CP-098 Contradiction Log für "Prompt-Templates" im Team
**Wann nutzen (Trigger):** Es gibt 5 verschiedene Excel-Listen im Team, in denen Mitarbeiter ihre "besten Prompts" horten. Die Qualität variiert extrem.
**Strategisches Ziel:** Konsolidierung und Qualitätskontrolle des dezentralen KI-Wissens.
**Hands-on Ergebnis:** Ein Master-Repository-Konzept.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Sammle alle Excel-Listen und Word-Docs der Mitarbeiter ein.
2. Lass den Agenten diese auf Überschneidungen und Qualitäts-Brüche analysieren.
3. Überführe die besten 10% in Langdock-Workflows.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Knowledge-Manager. Aufgabe: Erstelle ein Contradiction Log aus den 5 angehängten Prompt-Sammlungen unseres Teams. Kontext: Jeder kocht sein eigenes Süppchen. Finde die Duplikate (Wer hat denselben Use-Case schlecht und wer hat ihn gut gelöst?). Format: Eine Hitliste. Extrahiere die absolut besten 10% der Prompts, identifiziere die 3 gravierendsten Fehler in den restlichen 90% (z.B. fehlender Kontext) und schlage vor, wie wir die Top-10% als feste 'Workflows' in Langdock für alle zugänglich machen."
**Erwartetes Artefakt:** Eine Bereinigung des dezentralen Prompt-Chaos hin zu einem zentralen, qualitätsgesicherten Langdock-Workflow-Setup.
**Fallstricke (mind. 2 spezifisch):**
- KI bewertet nur Syntax → "Achte darauf, dass die KI auch auf Effizienz prüft (Löst Prompt A das Problem in 1 Schritt, wofür Prompt B 5 Schritte braucht?)."
- Demotivation der Ersteller → "Das Feedback muss die Arbeit der Mitarbeiter wertschätzen und sie als 'Co-Creatoren' der neuen Master-Workflows nennen."

### S-CP-099 "What Would Change My Mind" für das "Wir haben keine Zeit für KI"-Argument
**Wann nutzen (Trigger):** Die Account-Manager weigern sich, Langdock zu testen, weil sie "zu viel operatives Tagesgeschäft" haben, um etwas Neues zu lernen.
**Strategisches Ziel:** Durchbrechen des Teufelskreises (keine Zeit für Effizienz) durch harte ROI-Beweise.
**Hands-on Ergebnis:** Ein Micro-Pilot-Test mit harten Abbruchkriterien.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Akzeptiere die akute Zeitnot.
2. Etabliere einen ultra-kurzen Pilot-Test (z.B. 15 Minuten Einsatz).
3. Definiere die Metriken, die diesen Einsatz rechtfertigen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Zeitmanagement-Guru. Aufgabe: Wende 'What Would Change My Mind' auf meine Account-Manager an. Kontext: Sie haben 'keine Zeit', 30 Minuten in das Erlernen eines Langdock-Workflows (z.B. Meeting-Zusammenfassungen) zu investieren. Definiere einen unwiderlegbaren Deal: Ich blocke ihnen 30 Minuten im Kalender. Welche Metrik müssen sie in der restlichen Woche erreichen (z.B. Einsparung von 2 Stunden Tipparbeit), damit sie zugeben MÜSSEN, dass die Ausrede unlogisch war? Format: Ein 1-Pager-Pitch ('Der 30-Minuten-Deal') für das nächste Team-Meeting."
**Erwartetes Artefakt:** Ein unwiderstehliches Pilot-Angebot, das den Zeitmangel als Argument aushebelt.
**Fallstricke (mind. 2 spezifisch):**
- Der Pilot-Use-Case ist zu komplex → "Der Workflow muss absolut idiotensicher und in 5 Minuten erlernbar sein (z.B. reine Text-Zusammenfassung)."
- Keine Messbarkeit → "Die eingesparte Zeit muss sofort und unbestreitbar spürbar sein, sonst greift das Argument nicht."

### S-CP-100 Red Team Attacke auf das "Prompt-Engineering als Geheimwissenschaft" Framing
**Wann nutzen (Trigger):** Ein paar Tech-Affine im Team tun so, als wäre Prompting eine magische Kunstform, die normale Marketer niemals verstehen werden. Sie bauen Silos auf.
**Strategisches Ziel:** Demokratisierung von KI durch Entmystifizierung.
**Hands-on Ergebnis:** Ein Schulungs-Modul, das Prompting auf "Klares Briefen" reduziert.
**Eingesetzte Langdock-Fähigkeit(en):** Agent (Persona: Nüchterner Handwerker)
**Vorgehen (3-5 Schritte):**
1. Nimm den elitären Tech-Jargon der "Prompt-Gurus".
2. Lass den Agenten dieses elitäre Framing zerlegen.
3. Übersetze Prompting in die Sprache des Marketings (Briefing-Kultur).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem pragmatischer Chef-Redakteur (Red Team). Aufgabe: Zerstöre das elitäre 'Tech-Framing' von Prompt-Engineering. Kontext: Meine Tech-Bros tun so, als wäre Prompting Programmieren. Warum ist das arrogant und falsch? Format: Ein aggressiver, humorvoller Verriss dieses Silo-Denkens. Übersetze danach die 3 'geheimnisvollsten' Prompting-Begriffe (z.B. Few-Shot, Chain-of-Thought, System-Prompt) in banales, alltägliches Agentur-Sprech (z.B. 'Gib ein gutes Beispiel', 'Lass mich laut nachdenken', 'Briefing'). Demokratisiere das Thema für meine Texter."
**Erwartetes Artefakt:** Ein Verriss der "Tech-Eliten" und ein Glossar, das Prompting als ganz normales Agentur-Handwerk (Briefing) entzaubert.
**Fallstricke (mind. 2 spezifisch):**
- KI wird anti-technisch → "Wir brauchen die Tech-Bros noch für API-Anbindungen. Zerstöre nur ihre Arroganz bezüglich Text-Prompts."
- Übersetzungen sind ungenau → "Die Agentur-Metaphern müssen technisch absolut korrekt bleiben, auch wenn sie banalisiert werden."

### S-CP-101 First-Principles für "KI-Ethik im Marketing"
**Wann nutzen (Trigger):** Das Team fragt unsicher: "Dürfen wir eigentlich Bilder von Menschen per KI generieren lassen und als 'Kunden' ausgeben?"
**Strategisches Ziel:** Etablierung eines robusten, moralischen Kompasses für KI-Content, der nicht bei jedem neuen Use-Case wackelt.
**Hands-on Ergebnis:** Ein KI-Ethik-Manifest für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die Unsicherheit des Teams auf.
2. Isoliere die First Principles von Marken-Vertrauen (Transparenz, Authentizität).
3. Leite unverhandelbare Regeln ab.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Chief Ethics Officer. Aufgabe: Entwickle eine First-Principles-Guideline für KI im Marketing. Kontext: Das Team ist verunsichert, wo die Grenze zwischen 'kreativ' und 'Täuschung' liegt. First Principle: Vertrauen ist die einzige Währung im B2B. Format: Ein 3-Punkte-Manifest. Definiere glasklar die rote Linie: Wann MÜSSEN wir Kennzeichnen, dass KI im Spiel war? Wann ist der Einsatz verboten (z.B. Testimonials erfinden)? Wann ist es völlig legitim (z.B. Rechtschreibprüfung, Ideation)? Schreibe harte, praxistaugliche Regeln ohne philosophisches Geschwafel."
**Erwartetes Artefakt:** Ein klares Ethik-Manifest, das im Büro aufgehängt wird und sofortige Entscheidungs-Sicherheit bietet.
**Fallstricke (mind. 2 spezifisch):**
- Zu rechtlich formuliert → "Das ist kein Legal-Dokument, es ist ein moralischer Kompass. Nutze starke, klare Leitsätze."
- Keine Grauzonen-Behandlung → "Adressiere das Thema 'Stockfoto vs. KI-Foto'. Warum ist ein gekauftes Stockfoto moralisch anders als ein generiertes?"

### S-CP-102 Assumption Decay bei "Junior vs. Senior" Rollen
**Wann nutzen (Trigger):** Ein Junior-Copywriter nutzt Langdock meisterhaft und liefert plötzlich bessere Strategie-Drafts als der Senior-Stratege, der KI ablehnt. Die Hierarchie wackelt.
**Strategisches Ziel:** Neu-Kalibrierung von Rollenerwartungen und Erfahrungs-Definitionen im Zeitalter der KI-Augmentation.
**Hands-on Ergebnis:** Ein neues Kompetenz-Modell für das Team.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Analysiere das Phänomen ("AI flattens the curve").
2. Prüfe den Decay der Annahme "Jahre im Job = Strategische Überlegenheit".
3. Entwickle neue Karriere-Pfade.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Future-of-Work HR-Stratege. Aufgabe: Prüfe unsere Senioritäts-Annahmen auf 'Assumption Decay'. Kontext: Ein Junior mit Langdock liefert bessere strategische Entwürfe als ein KI-verweigernder Senior. Die alte Annahme 'Routine-Jahre = Qualität' ist zerfallen. Format: Ein neues Kompetenz-Modell. Wenn KI das handwerkliche und analytische Baseline-Niveau aller anhebt, was definiert dann ab morgen noch einen 'Senior'? (z.B. Urteilskraft, Stakeholder-Management, Erkennen von KI-Halluzinationen). Liefere 3 neue Kern-Kompetenzen für Senioren."
**Erwartetes Artefakt:** Ein Kompetenz-Framework, das Senioren zwingt, ihren Wert nicht mehr aus bloßer Wissens-Akkumulation, sondern aus Urteilskraft zu ziehen.
**Fallstricke (mind. 2 spezifisch):**
- KI wertet den Senior ab → "Der Senior hat weiterhin massiven Wert. Die Lösung muss ihm zeigen, auf WELCHEN Wert er sich jetzt fokussieren muss."
- Ignorieren des Junior-Wachstums → "Definiere auch, warum der Junior trotz tollem KI-Output noch Führung braucht (z.B. fehlendes Business-Kontext-Verständnis)."

### S-CP-103 Base-Rate Validierung für "Agenten-Hype"
**Wann nutzen (Trigger):** Jemand im Team will "für jede kleine Aufgabe einen eigenen Agenten" in Langdock bauen. Das Interface quillt über vor 50 Mini-Agenten.
**Strategisches Ziel:** Reduktion von Komplexität und Fokus auf High-Impact Use-Cases.
**Hands-on Ergebnis:** Eine "Agenten-Berechtigungs-Checkliste".
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Beobachte das Agenten-Chaos.
2. Etabliere die Base-Rate: Wie viele Custom-Apps/Agenten nutzt ein Mensch realistisch pro Woche, bevor er überfordert ist?
3. Führe Schwellenwerte für den Bau von Agenten ein.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein UX- und Plattform-Manager. Aufgabe: Validierung des Agenten-Hypes. Kontext: Das Team baut 50 Mini-Agenten für triviale Aufgaben (z.B. 'Ein Agent nur für Kommasetzung'). Was ist die psychologische Base-Rate der Tool-Adoption? Ab wie vielen Optionen tritt 'Choice Overload' ein? Format: Erstelle eine harte 'Agenten-Checkliste'. Welche 3 Kriterien MUSS ein Use-Case erfüllen (z.B. extrem spezifischer Wissensordner nötig, komplexer Multi-Step-Prompt), damit wir einen dedizierten Agenten bauen dürfen, anstatt einfach den Standard-Chat zu nutzen?"
**Erwartetes Artefakt:** Eine Governance-Checkliste, die verhindert, dass Langdock durch Über-Konfiguration unbenutzbar wird.
**Fallstricke (mind. 2 spezifisch):**
- KI verbietet Agenten komplett → "Agenten sind das mächtigste Feature. Reguliere nur die 'Trivial-Agenten', nicht die strategischen."
- Keine Alternative für triviale Aufgaben → "Verweise darauf, dass für triviale Dinge 'Custom Instructions' im normalen Chat oft völlig ausreichen."

### S-CP-104 Adversarial Query Expansion für das "Langdock Kick-off"
**Wann nutzen (Trigger):** Du musst die Einführungs-Präsentation für Langdock im gesamten Unternehmen halten und fürchtest, es wird eine trockene Software-Schulung.
**Strategisches Ziel:** Einprägsames, hoch-emotionales Change-Event, das 100% Adoption ab Tag 1 sichert.
**Hands-on Ergebnis:** Ein radikales Event-Konzept für das Tool-Kickoff.
**Eingesetzte Langdock-Fähigkeit(en):** Auto-Mode-Chat
**Vorgehen (3-5 Schritte):**
1. Nimm die Standard-Kickoff-Idee ("Slides über Features").
2. Triggere die Expansion: Was wäre das absurdeste, aber effektivste Launch-Event?
3. Wähle das stärkste Konzept zur Umsetzung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein verrückter Event-Marketing-Direktor. Aufgabe: 'Adversarial Expansion' für unser Langdock-Kickoff-Meeting. Kontext: Ich will keine Powerpoint-Schulung über Buttons. Ich will, dass die Leute weinen vor Freude über die eingesparte Zeit. Entwickle 3 völlig abgedrehte, radikale Ideen für das 30-minütige Kickoff. Beispiel: Wir machen ein Live-Rennen – der schnellste Tipper der Firma gegen Langdock. Format: 3 detaillierte, umsetzbare, hochgradig dramaturgische Event-Skizzen, die das Thema 'KI-Augmentation' viszeral erlebbar machen."
**Erwartetes Artefakt:** 3 mitreißende Kickoff-Konzepte, die den Start der Software zu einem kulturellen Event machen.
**Fallstricke (mind. 2 spezifisch):**
- Event-Konzepte sind zu teuer/aufwändig → "Die Ideen müssen in einem normalen Zoom/Teams-Call mit 100 Leuten durchführbar sein."
- Fokus auf Entertainment statt Lernen → "Jedes Konzept MUSS am Ende einen harten 'Aha-Moment' bezüglich eines Kern-Features (z.B. RAG oder Skills) haben."

## Hinweise & Quellen-Konflikte

- Keine Konflikte zwischen Extracts und Sources festgestellt. Alle Aussagen decken sich mit der dokumentierten Ground-Truth.
