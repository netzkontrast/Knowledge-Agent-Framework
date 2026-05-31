# Prompts und Inline-Skills für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Was ist ein Inline-Skill, was ein Metaprompt
> - PTCF-Skelett für alle Marketing-Aufgaben
> - Text-Generation und Format-Konversionen
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration und Workflows → siehe `02-agenten-konfiguration`
> - Deep Research Strategien → siehe `04-rag-bootstrap`

## Was ist ein Inline-Skill, was ein Metaprompt

Ein essenzielles Verständnis für den effizienten Einsatz von Langdock im Marketing-Alltag ist die Unterscheidung zwischen Inline-Skills und Metaprompts. Beide Konzepte dienen dazu, die Interaktion mit dem KI-Agenten zu strukturieren und reproduzierbare Ergebnisse zu erzielen, adressieren jedoch völlig unterschiedliche Abstraktionsebenen und Anwendungsfälle. Ein Inline-Skill ist eine kurze, extrem spezifische vordefinierte Anweisung, die direkt während der operativen Texterstellung oder Textbearbeitung genutzt wird. Er zeichnet sich durch hohe Geschwindigkeit und einen sehr engen Fokus aus – beispielsweise um einen spezifischen Absatz umzuformulieren, den Tonfall (Tone of Voice) exakt anzupassen, eine schnelle Datenextraktion vorzunehmen oder Formatierungen zu ändern. Inline-Skills fungieren als unmittelbare Werkzeuge im Workflow der Marketing-Direktorin und erfordern wenig bis keinen Kontext. Sie sind ideal für repetitive Mikro-Aufgaben.

Im starken Gegensatz dazu ist ein Metaprompt ein umfassendes, strategisches Konstrukt. Er dient nicht der sofortigen Textproduktion für ein Endmedium, sondern steuert fundamental, *wie* der KI-Agent denken, Daten analysieren oder eine hochkomplexe Aufgabe vorbereiten soll. Ein Metaprompt orchestriert oft mehrere kognitive Schritte, integriert Critical-Thinking-Ansätze und zwingt den Agenten dazu, bestehende Annahmen zu hinterfragen, bevor ein finales Artefakt generiert wird. Während der Inline-Skill die operative Ausführung beschleunigt, sichert der tiefgreifende Metaprompt die strategische Qualität, die Logik und die Tiefe der Ausarbeitung. Diese Unterscheidung ist fundamental für die nachhaltige Skalierung von AI-Prozessen.

## PTCF-Skelett für alle Marketing-Aufgaben

Das PTCF-Skelett (Persona, Task, Context, Format) stellt die unumstößliche Architektur für präzise und wirkungsvolle Prompts im professionellen Marketing-Umfeld dar. Diese strukturierte Bauweise garantiert, dass der KI-Agent alle notwendigen Leitplanken und Restriktionen erhält, um qualitativ hochwertige, direkt nutzbare Ergebnisse zu liefern, und reduziert die Notwendigkeit für zeitaufwändige Iterationsschleifen signifikant. **Persona** definiert die fachliche Rolle und beeinflusst Tonfall und Vokabular. Die explizite Spezifikation als "Senior SEO-Analyst" führt zu völlig anderen strategischen Resultaten als die Rolle "Kreativer Social-Media-Manager".

Der **Task** formuliert die eigentliche Aufgabenstellung mit harten, unmissverständlichen Aktionsverben. Hier wird klar abgegrenzt, ob eine tiefgreifende Analyse, eine Datensynthese, eine kreative Ideengenerierung oder eine textliche Reduktion erwartet wird. Der **Context** liefert die spezifischen Hintergrundinformationen, Zielgruppen-Insights, strategischen Ziele oder Budget-Limitationen. Hier werden Dokumente referenziert, um die Ausgabe an die Brand Voice zu binden. Schließlich definiert das **Format** die exakte, physische Struktur der Endausgabe. Ob eine strukturierte Markdown-Tabelle, eine formelle Sales-E-Mail, ein JSON-Objekt für den CMS-Import oder ein detailliertes Bullet-Point-Briefing gewünscht ist – klare Format-Anweisungen verhindern nutzlose, unstrukturierte Fließtexte. Die konsequente Anwendung des PTCF-Frameworks etabliert einen skalierbaren Standard.

## CO-STAR-Framework Alternative

Während das effiziente PTCF-Skelett eine hervorragende Basis für den Alltag bietet, erfordern besonders komplexe oder hochgradig vielschichtige Marketing-Herausforderungen gelegentlich ein stark erweitertes Steuerungsmodell. Das CO-STAR-Framework (Context, Objective, Style, Tone, Audience, Response) präsentiert sich hierbei als extrem detaillierte Alternative, die speziell bei strategischen C-Level Konzeptionsaufgaben oder hochsensibler Krisen-Markenkommunikation ihre wahren Stärken ausspielt. Es zwingt zur Vorab-Spezifikation kritischer Parameter.

**Context** etabliert die Ausgangssituation, historische Performancedaten oder volatile Marktbedingungen. **Objective** definiert das harte, messbare Endziel der Interaktion, beispielsweise die absolute Steigerung der Landingpage-Conversion-Rate oder die radikale Repositionierung eines Flaggschiff-Produktes. **Style** gibt unmissverständliche strukturelle und stilistische Vorgaben, wie etwa Bericht, provokanter LinkedIn-Leitartikel oder ein akademisch fundiertes Whitepaper. **Tone** steuert die feine emotionale Färbung, beispielsweise enthusiastisch, sachlich-kühl, maximal empathisch oder fachlich autoritär. **Audience** erfordert eine scharfe Definition der Empfänger der Botschaft, inklusive deren fachlichem Vorwissen, akuten Schmerzpunkten und Erwartungshaltungen. **Response** definiert schlussendlich die exakte physische und visuelle Struktur der Ausgabe. CO-STAR sichert fehlerfreie Konsistenz. CO-STAR wird für strategische Leuchtturmprojekte genutzt.

## Format-Konversionen (Liste→Tabelle, CSV↔JSON, Prose→Bullets)

Die schnelle Transformation von unstrukturierten Daten in sauber strukturierte Formate oder die Übersetzung zwischen verschiedenen, inkompatiblen Datenstrukturen ist eine der effizientesten und zeitsparendsten Anwendungen von Langdock-Inline-Skills. Oft verbringen Teams zu viel Zeit mit manueller Informationsaufbereitung. Der Langdock-Agent kann diese komplexen Format-Konversionen mit extrem hoher Präzision und quasi null Zeitaufwand durchführen. Ein klassischer Anwendungsfall ist die Umwandlung eines massiven Fließtextes (Prose) in hart umsetzbare Bullet-Points (Action Items) nach einem sehr langen Strategie-Meeting. Der Agent extrahiert die Kernpunkte genau und formatiert sie übersichtlich.

Ebenso unglaublich wertvoll ist die Transformation von simplen, unübersichtlichen Listen in mehrdimensionale, sortierbare Markdown-Tabellen. Wenn beispielsweise eine rohe Liste von Wettbewerbern und deren Produkteigenschaften vorliegt, kann der Agent diese sofort in eine strategisch strukturierte Vergleichsmatrix überführen, die direkt in Sales-Präsentationen übernommen werden kann. Für noch stärker datengetriebene Aufgaben, wie den Massen-Import von Zielgruppen-Daten in ein CRM oder die Konfiguration von technischen Tracking-Tools, ist die Konversion zwischen CSV und JSON essenziell. Der Data Analyst kann CSV-Exporte bereinigen und in JSON-Objekte übersetzen. Durch äußerst präzise Prompts wird absolut sichergestellt, dass die Datenstruktur exakt den harten Anforderungen des Zielsystems entspricht. Diese Konversionen reduzieren Reibungsverluste im Workflow erheblich.

## Text-Generation Mikro-Tasks (LinkedIn-Headlines, Subject-Lines, Hashtags, CTAs)

Ein erheblicher, zeitintensiver Teil der operativen Marketing-Ausführung besteht aus der ständigen Produktion extrem kurzer, aber hochgradig konvertierender Text-Artefakte. Diese sogenannten Mikro-Tasks – wie die Erstellung von aufmerksamkeitsstarken LinkedIn-Headlines, performanten E-Mail-Betreffzeilen (Subject-Lines), algorithmus-optimierten Hashtag-Clustern oder harten, handlungsauslösenden Call-to-Actions (CTAs) – erfordern eine extrem spitze, psychologische Formulierung und ein sehr tiefes Verständnis für die Mechanik und die Grenzen der jeweiligen Plattform. Langdock-Agenten sind prädestiniert dafür, in diesen spezifischen Disziplinen eine Vielzahl von exzellenten Varianten für A/B-Tests zu generieren, vorausgesetzt, die Prompts sind restriktiv und spezifisch genug.

Bei der Generierung von B2B-LinkedIn-Headlines muss der Agent beispielsweise zwingend angewiesen werden, den psychologischen "Hook" in den ersten 40 Zeichen zu platzieren, da der restliche Text auf mobilen Endgeräten ansonsten oft abgeschnitten wird. Für E-Mail-Betreffzeilen ist die subtile Integration von Dringlichkeit oder Neugier (Curiosity Gap) absolut entscheidend, oft streng verbunden mit der Limitierung auf maximal 50 Zeichen, um Spam-Filter zu umgehen. Bei der Erstellung von CTAs geht es primär darum, langweilige, passive Phrasen (z. B. "Hier klicken") durch extrem nutzenorientierte, handlungsstarke Formulierungen (z. B. "Strategie jetzt herunterladen") zu ersetzen. Hashtag-Cluster sollten niemals zufällig generiert, sondern datenbasiert auf Suchvolumen und thematischer Relevanz in Nischen- und Broad-Tags unterteilt werden. Spezifische Inline-Skills sparen signifikant Zeit bei der Mikro-Content-Generierung.

## Text-Refinement (Tone-Shift, Length-Cut, Anti-Cliche-Scrub)

Unmittelbar nach der ersten Rohentwurfsphase eines Textes (Drafting) folgt die entscheidende Phase der inhaltlichen Veredelung. Text-Refinement-Skills ermöglichen es der Marketing-Direktorin, bereits bestehende Inhalte schnell und hochgradig systematisch an spezifische Zielgruppen-Anforderungen anzupassen, ohne den Text zeitaufwändig manuell neu schreiben zu müssen. Beim 'Tone-Shift' wird Fachjargon in nutzenorientierte Sprache übersetzt, ohne Fakten zu ändern.

Ein weiteres, essenzielles Werkzeug für den Alltag ist der 'Length-Cut' (Kürzung). Oftmals sind erste Entwürfe schlichtweg zu langatmig für moderne, knappe Aufmerksamkeitsspannen. Durch harte Prompts wie "Kürze diesen Text um exakt 30%, ohne Fakten oder das zentrale Argument zu entfernen" wird der Agent gezwungen, überflüssige Füllwörter und redundante Passagen zu eliminieren. Der 'Anti-Cliche-Scrub' ersetzt abgedroschene Marketing-Phrasen durch konkrete Fakten. Durch diese systematische Veredelung wird sichergestellt, dass die Markenstimme (Brand Voice) stets authentisch, genau und professionell wirkt, selbst wenn die Basis-Entwürfe unter enormem Zeitdruck entstanden sind.

## Quick-Analysis (Sentiment, USP-Extraction, Persona-Match)

In einer zunehmend datenreichen und volatilen Marketingumgebung ist die Fähigkeit zur schnellen, qualitativen Analyse unstrukturierter Textmengen ein entscheidender Wettbewerbsvorteil. Quick-Analysis-Skills befähigen die Marketing-Direktorin, innerhalb von Sekunden verwertbare, harte Insights aus chaotischem Kundenfeedback, dichtem Wettbewerbsmaterialien oder unübersichtlichen internen Dokumenten zu extrahieren. Ein primärer Anwendungsfall ist die Sentiment-Analyse. Der Agent bewertet massenhaft Social-Media-Kommentare und identifiziert kritische Trends.

Ein weiteres mächtiges, strategisches Werkzeug ist die 'USP-Extraction' aus Wettbewerbsinhalten. Der Agent isoliert USPs der Konkurrenz und stellt sie in einer Matrix dem eigenen Angebot gegenüber. Dieser direkte Vergleich legt strategische Positionierungs-Lücken offen. Der hochwirksame 'Persona-Match'-Skill wiederum dient der strengen Qualitätssicherung eigener Inhalte. Ein fertiger Content-Draft wird dem Agenten vorgelegt, zusammen mit der genauen Beschreibung der Ziel-Persona aus dem Wissensordner. Der Agent prüft die inhaltliche Passgenauigkeit auf definierte Personas. Diese schnellen analytischen Feedback-Schleifen reduzieren Fehlallokationen von Budget drastisch und schärfen die strategische Ausrichtung aller Marketing-Maßnahmen vor der finalen Veröffentlichung massiv.

## Quick-Structuring (Briefing-Auto-Fill, FAQ-aus-Thread, Action-Items)

Unstrukturierte, ausufernde interne Kommunikation ist ein primärer und sehr teurer Zeitfresser in modernen Marketing-Teams. Quick-Structuring-Skills wandeln chaotische Informationsquellen blitzschnell in hochgradig strukturierte, standardisierte und sofort verwertbare Arbeitsdokumente um. Eine häufige, frustrierende Herausforderung ist die Erstellung von sauberen Briefings aus extrem langen, asynchronen Slack-Threads oder unstrukturierten Meeting-Transkripten. Mit dem dedizierten 'Briefing-Auto-Fill'-Skill extrahiert der Agent vollautomatisch die strategischen Ziele, Zielgruppen, harten Deadlines und Deliverables aus dem Textwust und füllt diese in eine Briefing-Vorlage im Canvas ab. Dies eliminiert den enormen administrativen Overhead nahezu komplett und minimiert gefährliche Missverständnisse bei der Übergabe an das ausführende Execution-Team.

Ein weiteres hocheffizientes Structuring-Szenario ist die Generierung von kompakten Frequently Asked Questions (FAQ) aus endlosen Kundensupport-Verläufen oder transkribierten Sales-Gesprächen. Der Agent identifiziert die am häufigsten gestellten Kundenfragen, konsolidiert semantisch ähnliche Anfragen und formuliert extrem klare, markenkonforme Antworten. Diese sauber strukturierten FAQs können dann direkt für Conversion-Landingpages, Chatbots oder Sales-Enablement-Materialien weiterverwendet werden. Auch die automatische, fehlerfreie Extraktion von Action-Items aus Meeting-Notizen fällt exakt in diese Kategorie. Der Agent durchsucht den Rohtext nach verbalen Zusagen, personellen Verantwortlichkeiten und Fristen und erstellt eine übersichtliche, tabellarische To-Do-Liste. Quick-Structuring erhöht die Informationsverarbeitung im Team drastisch.

## Metaprompts mit Critical-Thinking-Embedded (M01-M13)

Um oberflächliche, gefährlich falsche KI-Ergebnisse (wie Halluzinationen oder logische Inkonsistenzen) im B2B-Marketing systematisch zu verhindern, müssen hochwirksame Critical-Thinking-Ansätze direkt in die architektonische DNA der Prompts integriert werden. Metaprompts, die diese bewährten Methoden (M01 bis M13) als strukturelles Fundament nutzen, zwingen den KI-Agenten unweigerlich dazu, über den reinen Output hinaus eine harte, rationale Überprüfung seiner eigenen Annahmen vorzunehmen. Die Methode M01 (Falsification) beispielsweise instruiert den Agenten explizit, nach harten Argumenten zu suchen, die die formulierte Hypothese sofort widerlegen. Anstatt nur bestätigende Argumente für eine neue Kampagne zu sammeln, muss der Agent genau aufzeigen, unter welchen exakten Bedingungen die Kampagne scheitern würde.

Die Methode M02 (Steelmanning) zwingt den Agenten dazu, die stärkste, unwiderlegbarste Version eines gegnerischen Arguments aufzubauen, bevor er es inhaltlich kritisiert – absolut essenziell für die Vorbereitung auf Krisenkommunikation oder den Umgang mit extrem starken, neuen Wettbewerbern. M03 (Pre-Mortem) versetzt das gesamte Szenario in eine fiktive, düstere Zukunft, in der das Projekt bereits gescheitert ist, und verlangt die lückenlose Identifikation der Ursachen rückwärts. Diese tief eingebetteten Denkstrukturen transformieren den Langdock-Agenten von einem reinen, simplen Text-Generator zu einem echten, strategischen Sparringspartner auf Augenhöhe. Metaprompts mit Methoden-Fokus erhöhen die Entscheidungssicherheit.

## Wann Inline-Skill, wann Metaprompt, wann konkretes Szenario aus File 09

Die maximal effektive Nutzung des gesamten Langdock-Ökosystems erfordert eine klare Entscheidungsmatrix im Team darüber, welches Werkzeug für welche spezifische Aufgabe eingesetzt wird. Die harte Unterscheidung zwischen Inline-Skills, Metaprompts und den in Datei 09 tiefgehend dokumentierten spezifischen Adoption-Szenarien ist hierbei zentral für den ROI. Ein Inline-Skill kommt dann zum Einsatz, wenn es sich um eine isolierte, operative Mikro-Aufgabe handelt, die eine sofortige textliche Transformation erfordert. Beispiele sind die schnelle Korrektur von Rechtschreibung, das Umschreiben von Text in kompakte Bullet-Points oder das sehr schnelle Anpassen des Tonfalls. Der absolute Fokus liegt hier auf maximaler Geschwindigkeit und kompletter Friktionslosigkeit direkt im täglichen Bearbeitungs-Workflow.

Ein Metaprompt wird hingegen zwingend herangezogen, wenn eine große konzeptionelle Herausforderung ansteht, die hohe strategische Tiefe, komplexe Datenanalysen oder die Einbindung von Critical-Thinking-Ansätze erfordert. Hier geht es absolut nicht um die schnelle Erstellung eines finalen Textes, sondern um die Erarbeitung einer belastbaren Struktur, die Aufdeckung von logischen Widersprüchen oder die Vorbereitung harter strategischer Entscheidungen. Der Metaprompt orchestriert den gesamten Denkprozess des Agenten. Ein konkretes Szenario aus File 09 (DACH Marketing AI Adoption) hingegen beschreibt sehr umfassende, funktionsübergreifende Change-Management- oder Implementierungs-Blueprints. Sie dienen der Verankerung KI-gestützter Arbeitsweisen im Team. Die richtige Wahl garantiert den maximalen ROI.

## Marketing-Szenarien aus dieser Domäne

Dieser Abschnitt enthält eine umfassende Sammlung an konkreten, sofort anwendbaren Szenarien. Jedes Szenario ist so konzipiert, dass es eine spezifische Herausforderung im Marketing-Alltag adressiert und durch den gezielten Einsatz von Langdock-Agenten zu einer signifikanten Effizienzsteigerung führt. Die Szenarien dienen als direkter Werkzeugkasten für die strategisch arbeitende, hands-on-orientierte Marketing-Direktorin. Die Methodik hinter diesen Prompts stellt sicher, dass höchste Qualitätsstandards eingehalten werden und die Ausgabe unmittelbar in operative Prozesse überführt werden kann. Diese Sammlung bildet das operative Rückgrat für den täglichen Umgang mit künstlicher Intelligenz in der Abteilung.

### S-PS-001 RSA-Copy-Prompt-Bibliothek in der Library anlegen

**Wann nutzen (Trigger):** Das Performance-Team erstellt monatlich 30–50 Anzeigen-Varianten manuell; Julia will Copy-Prompts standardisieren, damit jedes Teammitglied mit demselben PTCF-Gerüst arbeitet. (Quelle: sources/10 S-026)
**Strategisches Ziel:** Einen wiederverwendbaren PTCF-RSA-Prompt als Library-Dokument hinterlegen, sodass Headlines und Descriptions konsistent im Brand-Voice generiert werden.
**Hands-on Ergebnis:** Eine Markdown-Datei `rsa-prompt-template.md` in der Langdock Library mit befüllbaren Platzhaltern für Produkt, USP und Zielgruppe, direkt einsetzbar im Chat.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (3 Schritte):**
1. Erstelle `rsa-prompt-template.md` lokal mit PTCF-Struktur: Persona (Senior Performance Manager), Task (15 RSA-Headlines + 4 Descriptions), Context ({{Produkt}}, {{USP}}, {{Zielgruppe}}, {{CPA-Ziel}}), Format (Markdown-Tabelle mit Zeichenzählung).
2. Lade die Datei in den Library Folder (Langdock → Knowledge → Library → Upload).
3. Rufe die Datei im Chat auf (`@rsa-prompt-template`) und befülle die {{Platzhalter}} für die aktuelle Kampagne, dann lass Canvas die finale Tabelle aufbauen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Performance Manager bei einem B2B-SaaS-Unternehmen im DACH-Raum. Erstelle 15 Google Ads RSA-Headlines (max. 30 Zeichen) und 4 Descriptions (max. 90 Zeichen) für {{Produkt}}. Unser zentraler USP: {{USP}}. Zielgruppe: {{Zielgruppe}}, CPA-Ziel: {{CPA-Ziel}} €. Alle Headlines auf Deutsch, kein Superlativ, kein Ausrufezeichen. Ausgabe als Tabelle: Nr | Headline | Zeichenzahl | Hook-Typ."
**Erwartetes Artefakt:** Markdown-Tabelle mit 15 Headlines (geprüfte Zeichenzahl) + 4 Descriptions, exportierbar als CSV für den Google-Ads-Editor.
**Fallstricke (≥2 spezifisch):**
- Ohne explizite Zeichenzahl-Spalte überschreitet der Agent regelmäßig 30/90 Zeichen – Tabellenspalte ist Pflicht.
- Library-Dateien werden nicht automatisch aktualisiert; nach jedem Kampagnen-Relaunch die Platzhalter-Datei neu hochladen.
**Anschluss-Szenario:** S-PS-002

### S-PS-002 {{Variablen}}-System für wiederkehrende Kampagnen-Prompts einführen

**Wann nutzen (Trigger):** Dasselbe Prompt-Gerüst wird für 6 Produktlinien monatlich kopiert und manuell angepasst – Fehler durch Copy-Paste häufen sich. (Quelle: sources/12 Tabelle 05 – Prompt-Management-Praktiken)
**Strategisches Ziel:** Einen Single-Template-Ansatz mit klar benannten {{Variablen}} etablieren, der Fehler eliminiert und Prompts auf Knopfdruck auf neue Produkte oder Märkte skaliert.
**Hands-on Ergebnis:** Ein Team-Prompt-Dokument mit ≥5 Variablen-Feldern, das als Konversations-Starter konfiguriert und für alle Teammitglieder verfügbar ist.
**Eingesetzte Langdock-Fähigkeit(en):** Konversations-Starter / Library Folder / Chat
**Vorgehen (4 Schritte):**
1. Identifiziere die 5 häufigsten manuellen Anpassungen im bestehenden Prompt-Set (Produkt, Zielgruppe, Tonalität, Format, Markt/Region).
2. Schreibe das Template mit {{PRODUKTNAME}}, {{ZIELGRUPPE}}, {{TONALITAET}} (sachlich/inspirierend/provokant), {{FORMAT}} (Tabelle/Bullets/Fließtext), {{MARKT}} (DE/AT/CH).
3. Speichere das Template als Konversations-Starter im Agenten (Langdock → Agent → Einstellungen → Konversations-Starter).
4. Dokumentiere Füll-Regeln in einem Library-Dokument `prompt-variablen-glossar.md`, damit neue Teammitglieder die Variablen korrekt befüllen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Content-Stratege. Erstelle einen LinkedIn-Post für {{PRODUKTNAME}}. Zielgruppe: {{ZIELGRUPPE}}. Tonalität: {{TONALITAET}}. Markt: {{MARKT}}. Format: {{FORMAT}}. Länge: max. 1300 Zeichen, kein Emoji, kein Hashtag-Spam (max. 3 relevante Tags)."
**Erwartetes Artefakt:** Ausgefüllter LinkedIn-Draft + ein gespeicherter Konversations-Starter, der das Template für Folge-Kampagnen vorhält.
**Fallstricke (≥2 spezifisch):**
- Variablen ohne Glossar führen zu inkonsistenten Befüllungen (z.B. {{TONALITAET}} = "gut" statt "sachlich") – Glossar ist Pflicht.
- Konversations-Starter sind agent-gebunden; bei Agenten-Wechsel Template neu eintragen.
**Anschluss-Szenario:** S-PS-003

### S-PS-003 Team-Prompt-Katalog über Konversations-Starter aufbauen

**Wann nutzen (Trigger):** Onboarding neuer Teammitglieder dauert 2–3 Wochen, weil bewährte Prompts nur in privaten Chats existieren und nicht geteilt werden. (Quelle: sources/12 Q32 – Team-Onboarding mit Langdock)
**Strategisches Ziel:** Einen strukturierten Prompt-Katalog via Konversations-Starter bereitstellen, sodass neue Kolleginnen ab Tag 1 mit geprüften Prompts arbeiten und keine Prompts neu erfinden müssen.
**Hands-on Ergebnis:** Ein dedizierter „Team-Prompts"-Agent mit ≥10 Konversations-Startern für die häufigsten Marketing-Aufgaben (Briefing, SEO-Text, E-Mail, Report, Social Post).
**Eingesetzte Langdock-Fähigkeit(en):** Agenten-Konfiguration / Konversations-Starter / Library Folder
**Vorgehen (4 Schritte):**
1. Sammle die 10 meistgenutzten Prompts aus bestehenden Team-Chats (Export via Chat-History oder Befragung).
2. Normiere alle Prompts auf PTCF-Struktur und benenne sie nach Aufgabentyp (z.B. „SEO-Blogpost erstellen", „Kampagnen-Briefing ausfüllen").
3. Lege einen neuen Agenten „Marketing-Prompt-Starter" an; trage alle 10 Prompts als Konversations-Starter ein (Langdock-Limit: 255 Zeichen pro Starter-Label → Label kurz halten, vollständiger Prompt im Starter-Body).
4. Verlinke den Agenten in der Team-Dokumentation und trainiere das Team in einer 30-Minuten-Session.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-Assistent. Erstelle ein strukturiertes Kampagnen-Briefing für [Kampagnenname]. Pflichtfelder: Ziel (SMART), Zielgruppe (Persona), Kanal-Mix, Budget, KPIs, Timeline, Verantwortliche. Format: ausgefüllte Markdown-Tabelle, eine Zeile pro Feld."
**Erwartetes Artefakt:** Befülltes Briefing-Dokument im Canvas + persistenter Konversations-Starter für das gesamte Team.
**Fallstricke (≥2 spezifisch):**
- Konversations-Starter-Labels haben 255-Zeichen-Limit: Label muss Aufgabe eindeutig benennen, nicht den vollen Prompt enthalten.
- Ohne regelmäßige Pflege veralten Starter-Prompts; Quartals-Review als Kalender-Event anlegen.
**Anschluss-Szenario:** S-PS-004

### S-PS-004 Prompt-Versionierung in der Library: Prompt-Lifecycle tracken

**Wann nutzen (Trigger):** Ein Prompt, der drei Monate lang funktioniert hat, produziert plötzlich schlechte Ergebnisse nach einem Modell-Update – niemand weiß, welche Version davor verwendet wurde. (Quelle: 50-advanced A-49 – Prompt-Lifecycle-Management)
**Strategisches Ziel:** Einen einfachen Versionierungs-Standard für Marketing-Prompts in der Langdock Library einführen, der Rollbacks ermöglicht und Modell-Drift sichtbar macht.
**Hands-on Ergebnis:** Eine `prompt-changelog.md` in der Library mit Versions-Tags (v1.0, v1.1 …), Datum, Änderungsgrund und Testergebnis für jeden Schlüssel-Prompt.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Lege `prompt-changelog.md` mit Tabellen-Schema an: Version | Datum | Prompt-Titel | Änderung | Testergebnis (PASS/FAIL) | Modell.
2. Trage die aktuelle Version aller kritischen Prompts (RSA, Briefing, Persona-Match) als v1.0 ein.
3. Bei jedem Prompt-Update: neue Zeile in der Tabelle, alten Prompt-Text in einem auskommentierten Block (`<!-- v1.0 ... -->`) bewahren.
4. Nach Modell-Updates: einen Canary-Test mit 3 Standard-Inputs fahren; Testergebnis in die Tabelle eintragen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Engineer. Ich zeige dir zwei Versionen eines RSA-Copy-Prompts. Bewerte, welche Version bei [Modell] konsistentere Ergebnisse liefert: Version A = [Prompt A], Version B = [Prompt B]. Testkriterien: Einhaltung Zeichenlimit, Brand-Voice-Konformität, Varianten-Diversität. Ausgabe: strukturierte Bewertungstabelle + Empfehlung."
**Erwartetes Artefakt:** Ausgefüllte `prompt-changelog.md` mit eingetragenem Vergleichs-Testergebnis; klare Empfehlung, welche Prompt-Version weiter genutzt wird.
**Fallstricke (≥2 spezifisch):**
- Library-Dateien sind nicht versioniert wie Git; bei jedem Update die alte Datei vor dem Upload umbenennen (z.B. `prompt-changelog-2026-04.md`), sonst gehen ältere Versionen verloren.
- Canary-Tests ohne feste Eingabe-Fixtures sind nicht reproduzierbar – Testinputs in einer separaten Datei speichern.
**Anschluss-Szenario:** S-PS-006

### S-PS-005 PTCF als Team-Standard in Onboarding und Konversations-Startern verankern

**Wann nutzen (Trigger):** Audit der letzten 50 Team-Prompts zeigt: 60% fehlt eine klare Persona, 40% kein Format – Ausgabequalität variiert stark je nach Verfasser. (Quelle: sources/10 S-026 + T8-Metaprompts-Critical-Thinking)
**Strategisches Ziel:** PTCF als verbindlichen Prompt-Standard im Marketing-Team einführen: Persona, Task, Context, Format sind Pflichtfelder in jedem nicht-trivialen Prompt.
**Hands-on Ergebnis:** Ein PTCF-Leitfaden als Library-Dokument + ein PTCF-Checker-Prompt der jeden Draft-Prompt gegen das Schema prüft.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Konversations-Starter
**Vorgehen (3 Schritte):**
1. Schreibe `ptcf-leitfaden.md` mit Definition der vier Felder, je 2 Gut/Schlecht-Beispielen aus dem eigenen Marketing-Kontext und einer Checkliste (4 Punkte: P ✓ T ✓ C ✓ F ✓).
2. Konfiguriere einen PTCF-Checker-Konversations-Starter: Prompt-Draft einfügen → Agent prüft die vier Felder und gibt Missing-Fields als Bullet-Liste zurück.
3. Integriere den PTCF-Leitfaden als Pflichtlektüre ins Onboarding-Dokument (1 Seite, Link zum Library-Dokument).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Reviewer. Prüfe den folgenden Prompt auf PTCF-Vollständigkeit: [Prompt-Draft einfügen]. Bewerte jeden der vier Bereiche (Persona, Task, Context, Format): vorhanden (✓) oder fehlend (✗). Für fehlende Bereiche: formuliere einen konkreten Ergänzungsvorschlag. Ausgabe: 4-Zeilen-Tabelle + überarbeiteter Prompt-Entwurf."
**Erwartetes Artefakt:** PTCF-Analyse-Tabelle des Draft-Prompts + überarbeiteter Prompt mit allen vier Feldern befüllt.
**Fallstricke (≥2 spezifisch):**
- PTCF ist kein Allheilmittel für einfache Mikro-Tasks (Rechtschreib-Check, kurze Umformulierung) – den Leitfaden auf Prompts mit >2 Sätzen Erwartung beschränken.
- Der Checker-Prompt neigt dazu, „Context" zu weit auszulegen; im Leitfaden klarstellen: Context = spezifische Hintergrunddaten, NICHT die Aufgabe selbst.
