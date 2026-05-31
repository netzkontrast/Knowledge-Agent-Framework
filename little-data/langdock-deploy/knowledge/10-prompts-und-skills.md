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
**Anschluss-Szenario:** S-PS-005

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
**Anschluss-Szenario:** S-PS-006

### S-PS-006 RSA-Copy für verschiedene Funnel-Stufen mit Few-Shot-Beispielen strukturieren

**Wann nutzen (Trigger):** Das Performance-Team beklagt, dass alle RSA-Varianten klingen als wären sie für denselben Kunden-Intent geschrieben — Awareness-Anzeigen und Purchase-Intent-Anzeigen sind nicht unterscheidbar. (Quelle: sources/10 S-026)
**Strategisches Ziel:** Durch Few-Shot-Beispiele im Prompt sicherstellen, dass der Agent den Unterschied zwischen ToFu (Awareness), MoFu (Consideration) und BoFu (Purchase-Intent) Headlines reproduzierbar beherrscht.
**Hands-on Ergebnis:** Ein RSA-Few-Shot-Prompt mit je 2 Anker-Beispielen pro Funnel-Stufe, der 15 Headlines und 4 Descriptions in drei klar getrennten Intent-Blöcken liefert.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Wähle aus vergangenen Kampagnen je 2 historisch performante Headlines pro Funnel-Stufe als Few-Shot-Anker aus und dokumentiere sie in `rsa-fewshot-examples.md`.
2. Baue den Prompt so auf: erst die Anker-Beispiele mit Label ("ToFu-Beispiel:", "BoFu-Beispiel:"), dann die eigentliche Aufgabe für das neue Produkt.
3. Fordere im Format-Feld explizit drei getrennte Tabellenblöcke an (je Funnel-Stufe eine Tabelle) mit Zeichenzahl-Spalte.
4. Teste den Prompt mit zwei unterschiedlichen Produkten; prüfe, ob die Intent-Differenzierung ohne manuelle Nachkorrektur stabil bleibt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Performance Manager. Erstelle RSA-Copy für {{Produkt}} in drei Funnel-Stufen. Hier sind Referenz-Headlines pro Stufe: ToFu-Beispiel: 'Effizienz steigern – ohne Risiko' | BoFu-Beispiel: 'Jetzt 14 Tage kostenlos testen'. Generiere 5 ToFu-, 5 MoFu- und 5 BoFu-Headlines (max. 30 Zeichen) sowie 4 Descriptions (max. 90 Zeichen). Format: drei separate Markdown-Tabellen mit Spalten Nr | Text | Zeichen | Intent-Typ."
**Erwartetes Artefakt:** Drei Markdown-Tabellen (ToFu/MoFu/BoFu) mit 15 Headlines und 4 Descriptions; Zeichenzählung inline.
**Fallstricke (≥2 spezifisch):**
- Few-Shot-Anker, die aus unterschiedlichen Produktkategorien stammen, verwirren den Agenten — alle Anker müssen aus der gleichen Produkt-Domäne kommen.
- Zu viele Few-Shot-Beispiele (>3 pro Stufe) erhöhen die Token-Last, ohne die Qualität zu verbessern; 2 Anker pro Stufe sind das Optimum.
**Anschluss-Szenario:** S-PS-007

### S-PS-007 LinkedIn-Ads-Copy mit CO-STAR für C-Level-Zielgruppen

**Wann nutzen (Trigger):** Eine Account-Based-Marketing-Kampagne auf LinkedIn zielt auf CFOs und CTOs, und bestehende PTCF-Prompts liefern zu generische Texte, die nicht die Sprache der C-Suite treffen. (Quelle: sources/10 S-028)
**Strategisches Ziel:** CO-STAR als Prompt-Framework einsetzen, um LinkedIn-Ad-Copy zu generieren, die Audience-Spezifität und Tone-of-Voice so präzise steuert, dass keine manuelle Nachbearbeitung nötig ist.
**Hands-on Ergebnis:** Zwei vollständig ausgefüllte CO-STAR-Prompts (je einer für CFO- und CTO-Persona) mit direktem LinkedIn-Ads-Output (Intro Text, Headline, Beschreibung).
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Library Folder / Canvas
**Vorgehen (4 Schritte):**
1. Lade die Buyer-Persona-Dokumente beider Zielgruppen in den Library Folder und referenziere sie per `@`-Mention.
2. Baue je einen CO-STAR-Prompt: Context (Marktdruck + aktuelles Problem der Persona), Objective (Klick auf Demo-Buchung), Style (prägnanter B2B-Leitartikelstil), Tone (sachlich-autoritär), Audience (CFO 45+, DACH, 500+ MA), Response (Intro Text ≤150 Zeichen + Headline ≤70 Zeichen + Beschreibung ≤100 Zeichen als Tabelle).
3. Generiere jeweils 3 Varianten, exportiere als Canvas-Tabelle.
4. Prüfe Varianten gegen die Persona-Dokumente mit dem Persona-Match-Skill.
**Beispiel-Prompt (DE, CO-STAR):**
> "Context: DACH-CFOs stehen 2026 unter Margendruck durch steigende Energiekosten. Objective: Buchung einer 30-Min-Demo für unsere Cost-Control-SaaS-Lösung. Style: knapper Führungskräfte-Bericht. Tone: sachlich, peer-to-peer, kein Superlativ. Audience: CFO, 500+ Mitarbeitende, Fertigungsindustrie DACH. Response: Tabelle mit 3 LinkedIn-Ad-Varianten; je Intro Text (≤150 Z.), Headline (≤70 Z.), Beschreibung (≤100 Z.)."
**Erwartetes Artefakt:** Canvas-Tabelle mit 3 CFO-zielgruppenspezifischen LinkedIn-Ad-Varianten, zeichengeprüft, sofort upload-bereit.
**Fallstricke (≥2 spezifisch):**
- CO-STAR-Prompts ohne expliziten Zeichenlimit im Response-Feld produzieren zu lange Texte; LinkedIn-Limits müssen im R-Feld hart kodiert werden.
- „Sachlich-autoritär" wird oft als kalt interpretiert; ein Satz positiver Kontext im Tone-Feld ("respektvoller Peer-to-Peer-Ton") verhindert kalte, distanzierte Formulierungen.
**Anschluss-Szenario:** S-PS-008

### S-PS-008 A/B-Test-Prompt-Varianten für Subject-Lines systematisch generieren

**Wann nutzen (Trigger):** Das E-Mail-Team testet Subject-Lines ad hoc ohne strukturierten Rahmen — manche Varianten unterscheiden sich nur in einem Wort, echte psychologische Kontraste fehlen. (Quelle: sources/10 S-030)
**Strategisches Ziel:** Einen Prompt entwickeln, der A/B-Varianten nach klar definierten psychologischen Frameworks (Curiosity Gap, Loss Aversion, Social Proof, Direct Benefit) generiert — nicht zufällig, sondern hypothesengesteuert.
**Hands-on Ergebnis:** 8 Subject-Line-Varianten in 4 Frameworks (je 2 pro Framework), ≤50 Zeichen, als ICE-bewertet priorisierte Tabelle.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas
**Vorgehen (3 Schritte):**
1. Definiere im Prompt die vier Frameworks mit je einem Referenzbeispiel als Inline-Few-Shot.
2. Fordere pro Framework exakt 2 Varianten an, Zeichenzahl ≤50, kein Clickbait, mit einer Hypothese (1 Satz), warum diese Variante bei der Zielgruppe funktionieren sollte.
3. Lass den Agenten die Varianten in einer Canvas-Tabelle nach ICE-Score (Impact 1–5, Confidence 1–5, Ease 5 = einfach zu testen) vorsortieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist E-Mail-Conversion-Spezialist. Erstelle 8 Subject-Line-Varianten für {{Kampagnenthema}} in vier psychologischen Frameworks: (1) Curiosity Gap, (2) Loss Aversion, (3) Social Proof, (4) Direct Benefit. Referenzbeispiele: Curiosity: 'Was Ihr Wettbewerber bereits weiß' | Loss Aversion: '3 Fehler, die Ihr Budget kosten'. Je 2 Varianten pro Framework, max. 50 Zeichen. Format: Tabelle mit Spalten Framework | Subject Line | Zeichen | Hypothese (1 Satz) | ICE-Score."
**Erwartetes Artefakt:** Canvas-Tabelle mit 8 zeichengeprüften Subject-Lines, hypothesenbasiert, nach ICE-Score vorsortiert.
**Fallstricke (≥2 spezifisch):**
- Ohne Hypothesen-Spalte gibt es nach dem Test keine Lerngrundlage — die Spalte ist strategisch wichtiger als der ICE-Score selbst.
- "Loss Aversion" neigt zu negativen Formulierungen, die Spam-Filter triggern; explizit anweisen, keine Formulierungen mit "Verlust", "Risiko", "verpassen" zu verwenden.
**Anschluss-Szenario:** S-PS-009

### S-PS-009 Tone-Shift-Skill für Kanalwechsel (B2B-Whitepaper zu LinkedIn-Post)

**Wann nutzen (Trigger):** Ein 8-seitiges Whitepaper wurde freigegeben und soll nun als LinkedIn-Post, als E-Mail-Teaser und als Twitter/X-Thread verwertet werden — drei Redakteure interpretieren Tonalität komplett unterschiedlich. (Quelle: sources/10 S-038 + S-039)
**Strategisches Ziel:** Einen Tone-Shift-Inline-Skill definieren, der dieselbe Kernbotschaft zuverlässig in drei kanalspezifische Tonalitäten überführt, ohne Fakten zu verändern.
**Hands-on Ergebnis:** Ein Library-Dokument `tone-shift-skill.md` mit drei Skill-Varianten (LinkedIn-Peer-Ton, E-Mail-Direktton, Twitter-Kürzel-Ton) plus ein Demoprompt, der alle drei in einer einzigen Chat-Session liefert.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat
**Vorgehen (3 Schritte):**
1. Definiere in `tone-shift-skill.md` die drei Ton-Profile mit je 5 Merkmalen (Satzlänge, Vokabular, Emoji-Policy, CTA-Form, Personalisierungsgrad) — nicht als Abstract, sondern als Checkliste für den Agenten.
2. Schreibe einen Wrapper-Prompt, der den Agenten anweist, denselben Input-Text dreimal zu transformieren (je Kanal ein Abschnitt im Canvas), Fakten identisch zu halten, Struktur kanalgerecht anzupassen.
3. Validiere das Ergebnis gegen Brand-Voice-Guidelines mit dem Brand-Guardian-Agenten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Content-Stratege. Transformiere den folgenden B2B-Whitepaper-Absatz in drei Kanal-Versionen. LinkedIn-Version: Peer-to-Peer-Ton, 1 300 Zeichen max., keine Emojis, endet mit offener Frage. E-Mail-Teaser: direkt, 120 Wörter max., ein CTA. Twitter-Thread: 5 Tweets à max. 280 Zeichen, nummeriert. Fakten und Kernaussage dürfen nicht verändert werden. Kontext: [Absatz einfügen]. Ausgabe: drei klar getrennte Blöcke."
**Erwartetes Artefakt:** Drei fertige Kanal-Varianten in einem Canvas-Dokument; direkt kopierbar in die jeweilige Publishing-Oberfläche.
**Fallstricke (≥2 spezifisch):**
- Wenn der Input-Absatz zu lang ist (>500 Wörter), komprimiert der Agent für Twitter stark und verliert dabei tragende Argumente — Input auf 200–300 Wörter begrenzen.
- "Fakten dürfen nicht verändert werden" wird vom Agenten oft als Erlaubnis zur wörtlichen Wiederholung interpretiert; explizit hinzufügen: "paraphrasiere, aber erfinde keine neuen Zahlen".
**Anschluss-Szenario:** S-PS-010

### S-PS-010 Prompt-Debugging: Fehlerdiagnose bei unerwartetem Output

**Wann nutzen (Trigger):** Ein bewährter Briefing-Prompt liefert nach einem Modell-Update plötzlich Outputs, die alle Format-Vorgaben ignorieren — das Team weiß nicht, ob das Problem im Prompt, im Modell oder im Kontext liegt. (Quelle: A-49 + sources/12 Q84)
**Strategisches Ziel:** Eine strukturierte Debugging-Methodik für Prompts einführen, die in drei Schritten (Isolation, Hypothese, Verifikation) die Fehlerursache ohne blindes Trial-and-Error aufdeckt.
**Hands-on Ergebnis:** Eine `prompt-debug-checkliste.md` mit 5 Diagnose-Fragen und ein Diagnose-Prompt, der den Agenten zwingt, seinen eigenen Output gegen die Prompt-Anweisungen zu prüfen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Library Folder
**Vorgehen (4 Schritte):**
1. Isoliere die fehlerhafte Prompt-Sektion: Zerlege den Prompt in P, T, C, F und teste jede Sektion einzeln mit einem Minimal-Input.
2. Stelle dem Agenten den Meta-Diagnose-Prompt: "Hier ist meine Anweisung und hier ist dein Output — benenne, welche Anweisung du nicht befolgt hast und warum."
3. Prüfe die System-Ebene: War das Modell in diesem Chat gewechselt? Ist Memory aktiv und kontaminiert den Kontext?
4. Dokumentiere die Ursache in `prompt-changelog.md` (→ S-PS-004) unter "Testergebnis: FAIL" mit Notiz der Modell-Version.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Qualitätsprüfer. Ich zeige dir einen Prompt und deinen Output. Prompt: [Prompt einfügen]. Output: [Output einfügen]. Analysiere: (1) Welche der Formatanweisungen wurden nicht eingehalten? (2) Welcher Satz im Prompt ist am wahrscheinlichsten missverständlich? (3) Formuliere eine konkrete Verbesserung für den missverständlichen Satz. Ausgabe: nummerierte Antworten auf alle drei Fragen."
**Erwartetes Artefakt:** Diagnose-Bericht mit identifizierter Fehler-Sektion, Verbesserungsvorschlag und überarbeitetem Prompt-Satz.
**Fallstricke (≥2 spezifisch):**
- Den Agenten nach seiner eigenen Fehler-Ursache zu fragen ist wirkungslos, wenn er keinen vollständigen Kontext (Prompt + Output) bekommt — immer beides im selben Chat-Turn einfügen.
- Prompt-Fehler nach Modell-Wechsel sind nicht immer reproduzierbar; Diagnose immer im selben Modell durchführen, das den fehlerhaften Output produziert hat.
**Anschluss-Szenario:** S-PS-011

### S-PS-011 JSON-Output-Prompts für CMS-Import strukturieren

**Wann nutzen (Trigger):** Das Content-Team exportiert Agenten-Outputs als Fließtext und muss sie manuell in CMS-Felder eintragen — ein fehleranfälliger, stündenlanger Prozess bei großen Content-Produktionen. (Quelle: sources/12 Q80)
**Strategisches Ziel:** Prompts so schreiben, dass der Agent valides JSON als Output liefert, das direkt per API oder Copy-Paste in CMS-Felder (Contentful, WordPress, Storyblok) importiert werden kann.
**Hands-on Ergebnis:** Ein JSON-Output-Prompt-Template in der Library, das Title, Slug, Meta-Description, Body und Tags als sauberes JSON-Objekt zurückgibt.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat
**Vorgehen (4 Schritte):**
1. Definiere das exakte JSON-Schema des Ziel-CMS (Feldnamen, Datentypen, Zeichenlimits) und füge es als Schema-Block in den Prompt ein.
2. Schreibe im Format-Feld: "Antworte ausschließlich mit einem validen JSON-Objekt ohne Markdown-Wrapper, kein Kommentar-Text davor oder danach."
3. Füge ein Validierungs-Step ein: Lass den Agenten nach der JSON-Generierung prüfen, ob alle Felder befüllt und unter dem Zeichenlimit sind.
4. Teste das JSON mit einem kostenlosen JSON-Validator (z.B. jsonlint.com) vor dem ersten Live-Import.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist CMS-Daten-Engineer. Erzeuge ein valides JSON-Objekt für den folgenden Blog-Artikel: [Artikel-Text]. JSON-Schema: {\"title\": string max 70 Zeichen, \"slug\": string lowercase-kebab, \"meta_description\": string max 155 Zeichen, \"body\": string (HTML-frei), \"tags\": array max 5 Strings}. Antworte NUR mit dem JSON-Objekt, ohne Markdown-Code-Block, ohne Einleitung."
**Erwartetes Artefakt:** Valides JSON-Objekt, copy-paste-bereit für CMS-Import oder API-Call.
**Fallstricke (≥2 spezifisch):**
- Modelle fügen standardmäßig Markdown-Code-Fences (```json ... ```) ein — die Anweisung "ohne Markdown-Wrapper" ist Pflicht, sonst scheitert der programmatische Import.
- Bei langen Body-Texten bricht das Modell manchmal mitten im JSON ab (Token-Limit) — für Artikel >800 Wörter den Body separat generieren und erst im zweiten Schritt ins JSON einfügen.
**Anschluss-Szenario:** S-PS-012

### S-PS-012 Competitor-Ad-Analyse-Prompt mit Screenshot-Input

**Wann nutzen (Trigger):** Wettbewerber schalten aggressiv auf Brand-Keywords; Julia will verstehen, welche Botschafts-Winkel die Konkurrenz nutzt, um gezielt Konter-Headlines zu entwickeln. (Quelle: sources/10 S-036)
**Strategisches Ziel:** Einen strukturierten Analyse-Prompt für Wettbewerber-Ad-Screenshots einsetzen, der USPs der Konkurrenz extrahiert, Schwachstellen benennt und direkt 5 Konter-Headlines für die eigene Brand-Defense-Kampagne formuliert.
**Hands-on Ergebnis:** Eine Analyse-Tabelle (Konkurrenz-USP | Schwachstelle | Konter-Argument) plus 5 sofort einsetzbare Konter-Headlines für Google Ads.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Vision/Bild-Analyse) / Canvas
**Vorgehen (3 Schritte):**
1. Lade 3–5 Screenshots der Konkurrenz-Anzeigen direkt in den Chat (Langdock Vision extrahiert den Text aus dem Bild).
2. Sende den Analyse-Prompt: USPs extrahieren, Botschafts-Winkel kategorisieren, Schwachstellen identifizieren.
3. Lass den Agenten im zweiten Turn 5 spezifische Konter-Headlines formulieren, die gezielt die identifizierten Schwachstellen der Konkurrenz adressieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Competitive-Intelligence-Stratege. Analysiere die angehängten Screenshots der Konkurrenz-Anzeigen. Extrahiere: (1) die drei dominanten USP-Botschaften, (2) die emotionalen Trigger, die eingesetzt werden, (3) potenzielle Glaubwürdigkeitslücken. Unser Produkt: {{Eigener USP}}. Liefere: eine 3-spaltige Tabelle (Konkurrenz-USP | Unsere Stärke | Konter-Argument) sowie 5 Google-Ads-Konter-Headlines (max. 30 Zeichen) als nummerierten Block."
**Erwartetes Artefakt:** Wettbewerbsanalyse-Tabelle + 5 zeichengeprüfte Konter-Headlines, exportierbar in die RSA-Prompt-Library (→ S-PS-001).
**Fallstricke (≥2 spezifisch):**
- Bei komprimierten oder niedrig aufgelösten Screenshots extrahiert der Vision-Modell Text unvollständig — Screenshots immer als PNG in voller Auflösung exportieren, nicht als JPEG-Thumbnail.
- Der Agent neigt dazu, Konter-Headlines inhaltlich zu stark auf die Schwäche der Konkurrenz zu fixieren statt auf die eigene Stärke — im Format-Feld explizit fordern: "Headline betont UNSEREN Benefit, nicht den Konkurrenz-Nachteil".
**Anschluss-Szenario:** S-PS-013

### S-PS-013 Performance-Max-Asset-Matrix mit strikter Format-Kontrolle

**Wann nutzen (Trigger):** Google Ads Performance-Max-Kampagnen benötigen exakte Asset-Kombinationen (5 Short Headlines, 5 Long Headlines, 4 Descriptions) — ohne strikte Format-Kontrolle entstehen Assets, die Google als "unvollständig" ablehnt. (Quelle: sources/10 S-033)
**Strategisches Ziel:** Einen PMax-Prompt entwickeln, der durch Format-Constraints und eingebaute Selbst-Validierung eine vollständige, sofort upload-fähige Asset-Matrix liefert.
**Hands-on Ergebnis:** Eine vollständige PMax-Asset-Tabelle mit 5 Short Headlines (≤30 Z.), 5 Long Headlines (≤90 Z.), 1 Short Description (≤60 Z.) und 4 Descriptions (≤90 Z.) — zeichengeprüft, ohne Wiederholungen.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Speichere die exakten PMax-Zeichenlimits und Asset-Mengen als `pmax-schema.md` in der Library — der Prompt referenziert diese Datei per `@pmax-schema`.
2. Integriere eine Wiederholungs-Sperr-Anweisung: "Jedes Asset muss einen einzigartigen Eröffnungs-Hook enthalten; kein Verb darf in mehr als 2 Assets vorkommen."
3. Fordere eine Selbst-Validierungs-Zeile am Ende der Tabelle: "Validierung: X von Y Assets unter Zeichenlimit / Z Wiederholungen gefunden."
4. Exportiere die Tabelle als CSV für den Google Ads Editor.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Google-Ads-Spezialist. Erstelle eine vollständige Performance-Max-Asset-Matrix für {{Produkt-URL}}. Zeichenlimits: Short Headline ≤30, Long Headline ≤90, Short Description ≤60, Description ≤90. Mengen: 5 Short Headlines, 5 Long Headlines, 1 Short Description, 4 Descriptions. Regel: kein Verb wiederholt in >2 Assets. Format: Markdown-Tabelle mit Spalten Asset-Typ | Text | Zeichenanzahl | Validiert (✓/✗). Letzter Eintrag: Gesamt-Validierungszeile."
**Erwartetes Artefakt:** Vollständige PMax-Asset-Tabelle mit Inline-Validierung; direkt in Google Ads Editor importierbar.
**Fallstricke (≥2 spezifisch):**
- PMax kombiniert Assets dynamisch — wenn alle Headlines mit demselben Verb beginnen, entstehen schwache automatische Kombinationen; Varianz der Eröffnungs-Hooks ist wichtiger als hohe Sprachqualität einzelner Assets.
- Die Selbst-Validierungszeile ist ein Hinweis, kein Garantie-Check; finale manuelle Zeichenzählung in einem separaten Tool (Google Ads Editor Preview) ist vor dem Upload Pflicht.
**Anschluss-Szenario:** S-PS-014

### S-PS-014 Retargeting-Ad-Sequenz mit kanalem Ton-Progressions-Prompt

**Wann nutzen (Trigger):** Eine 14-tägige Facebook-Retargeting-Sequenz klingt in allen Stufen gleich — weder Ton noch Dringlichkeit eskalieren, was zu Bannerblindheit führt. (Quelle: sources/10 S-035)
**Strategisches Ziel:** Einen Sequenz-Prompt entwerfen, der drei Eskalationsstufen (Social Proof → Einwandbehandlung → Dringlichkeit) mit klar definierten Ton-Progressions-Regeln generiert, sodass alle drei Stages in einer einzigen Chat-Session entstehen.
**Hands-on Ergebnis:** Ein Canvas-Dokument mit drei Retargeting-Ad-Varianten (Primary Text + Headline je Stage), ton-progressiv aufgebaut, für 14-Tage-Funnel getaggt.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Chat
**Vorgehen (3 Schritte):**
1. Definiere die drei Ton-Zustände im Prompt als Kontinuum: Stage 1 = "warm-hilfreich, kein Druck", Stage 2 = "direkt-empathisch, ein konkretes Einwand-Szenario aufgreifen", Stage 3 = "freundlich-drängend, Knappheit ohne Falschaussage".
2. Füge die Ton-Regeln als Negativ-Constraints hinzu: "Stage 1 darf keine Dringlichkeits-Wörter enthalten; Stage 3 darf keine neuen Informationen einführen, nur Bekanntes verstärken."
3. Lass Canvas alle drei Stages nebeneinander aufbauen, damit Ton-Konsistenz auf Blick prüfbar ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Funnel-Architekt für Paid Social. Erstelle eine 3-stufige Facebook-Retargeting-Sequenz für {{Produkt}}. Stage 1 (Tag 1–4): Social Proof, warm-hilfreich, kein Druck. Stage 2 (Tag 5–9): Einwandbehandlung, direkt-empathisch, greife einen realen Einwand auf. Stage 3 (Tag 10–14): Dringlichkeit, freundlich-drängend, keine Falschaussagen zu Verfügbarkeit. Pro Stage: Primary Text (≤125 Wörter) + Headline (≤40 Zeichen). Ausgabe: drei klar getrennte Blöcke im Canvas."
**Erwartetes Artefakt:** Canvas-Dokument mit 3 Stage-Blöcken (Primary Text + Headline je), ton-progressiv, direkt in Facebook Ads Manager einsetzbar.
**Fallstricke (≥2 spezifisch):**
- Stage 3 mit erfundener Knappheit ("Nur noch 3 Plätze!") erzeugt UWG-Risiko — den Negativconstraint "keine Falschaussagen zur Verfügbarkeit" niemals aus dem Prompt streichen.
- Wenn alle drei Stages in einem einzigen langen Prompt stehen, tendiert der Agent dazu, Stage 2 inhaltlich mit Stage 3 zu vermischen; Stages als nummerierte Blöcke mit Trennzeile trennen.
**Anschluss-Szenario:** S-PS-015

### S-PS-015 Chain-of-Thought-Prompt für strategische Positionierungsanalyse

**Wann nutzen (Trigger):** Julia muss dem CMO eine Empfehlung zur Repositionierung einer Produktlinie präsentieren — ein Standard-Analyse-Prompt liefert Oberflächen-Bulletpoints statt einer strategisch belastbaren Argumentation. (Quelle: A-07)
**Strategisches Ziel:** Chain-of-Thought (CoT) explizit im Prompt aktivieren, sodass der Agent seinen Analyse-Pfad transparent Schritt für Schritt aufbaut, bevor er eine Empfehlung formuliert — Denkprozess sichtbar, Empfehlung besser begründet.
**Hands-on Ergebnis:** Eine Positionierungs-Analyse mit sichtbarem Reasoning-Pfad (Marktlage → Wettbewerbs-GAP → Zielgruppen-Fit → Empfehlung) als Canvas-Dokument, CMO-präsentationsfertig.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Canvas / Library Folder (Wettbewerbs-Ordner)
**Vorgehen (4 Schritte):**
1. Aktiviere CoT explizit mit der Anweisung: "Bevor du eine Empfehlung gibst, führe deine Analyse in nummerierten Reasoning-Schritten durch. Jeder Schritt endet mit einer Zwischenkonklusion."
2. Verbinde den Prompt mit dem Wettbewerbs-Ordner per `@`-Mention, damit Marktdaten das Reasoning verankern.
3. Fordere am Ende eine explizite Gegenhypothese: "Formuliere das stärkste Argument GEGEN deine Empfehlung in einem eigenen Abschnitt."
4. Exportiere das Canvas-Dokument als PDF für die CMO-Präsentation.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Chief Strategy Officer. Analysiere die Repositionierungsoption für {{Produktlinie}}. Führe zuerst deine Analyse in numerierten Schritten durch: (1) Aktuelle Marktposition, (2) Wettbewerbs-GAP laut @Wettbewerbs-Ordner, (3) Zielgruppen-Fit, (4) Risiken. Jeder Schritt endet mit einer Zwischenkonklusion. Dann: strategische Empfehlung in 3 Sätzen. Danach: stärkste Gegen-Hypothese. Ausgabe: strukturiertes Canvas-Dokument."
**Erwartetes Artefakt:** Canvas-Dokument mit sichtbarem Reasoning-Pfad (4 Schritte + Konklusion + Gegen-Hypothese), CMO-tauglich formatiert.
**Fallstricke (≥2 spezifisch):**
- Ohne explizite Zwischenkonklusionen nach jedem Schritt tendiert CoT zum "Reasoning-Theater" — der Agent zeigt viele Schritte, zieht aber keine tragfähigen Schlüsse daraus.
- CoT-Prompts sind signifikant token-intensiver als Standard-Prompts; für Routine-Analysen auf PTCF zurückwechseln, CoT nur bei strategisch gewichtigen Entscheidungen einsetzen.
**Anschluss-Szenario:** S-PS-016

### S-PS-016 Prompt-Output-Validierung: Automatischer Qualitäts-Check vor Übergabe

**Wann nutzen (Trigger):** Agenten-Outputs werden direkt ins CMS oder in Briefings übernommen, ohne dass jemand prüft, ob alle Anforderungen tatsächlich erfüllt wurden — Qualitätsprobleme kommen erst beim Review durch die Geschäftsführung ans Licht. (Quelle: sources/12 Q75 + A-34)
**Strategisches Ziel:** Einen zweistufigen Workflow einführen: Erst Output generieren, dann denselben Agenten beauftragen, seinen Output gegen eine Checkliste zu validieren — als letzter Gate vor der Übergabe.
**Hands-on Ergebnis:** Ein Validierungs-Prompt-Template in der Library, das jeden Marketing-Output in 5 Dimensionen prüft (Format-Compliance, Zeichenlimits, Brand-Voice, Fakten-Plausibilität, Vollständigkeit) und ein PASS/FAIL-Protokoll liefert.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Schreibe `output-validierung-template.md` mit 5 Prüf-Dimensionen und je einer binären Prüffrage (JA/NEIN).
2. Konfiguriere den zweiten Chat-Turn als Validierungs-Run: Agenten-Output + Validierungs-Template im selben Turn einreichen.
3. Fordere als Format: "Liefere eine Tabelle: Dimension | Prüfergebnis (✓/✗) | Begründung (1 Satz) | Korrektur-Vorschlag wenn ✗."
4. Erst wenn alle 5 Dimensionen ✓ zeigen, wird der Output freigegeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Qualitätsprüfer. Prüfe den folgenden Marketing-Output gegen die Anforderungen: [Output einfügen]. Anforderungen: (1) Alle Felder ausgefüllt? (2) Zeichenlimits eingehalten (max. {{Limit}})? (3) Kein Superlativ ohne Beleg? (4) Produktname korrekt geschrieben? (5) CTA vorhanden? Format: 5-Zeilen-Tabelle mit Spalten Dimension | Ergebnis (✓/✗) | Begründung | Korrektur."
**Erwartetes Artefakt:** 5-Zeilen-PASS/FAIL-Tabelle mit Korrektur-Vorschlägen für jede fehlgeschlagene Dimension.
**Fallstricke (≥2 spezifisch):**
- Der Agent validiert seine eigenen Outputs mit Optimismus-Bias; bei sicherheitskritischen Texten (rechtliche Claims, Pricing) muss ein zweiter Mensch die ✓-Einträge stichprobenartig gegenchecken.
- Zu viele Prüfdimensionen (>7) überfordern den Agenten und führen zu oberflächlichen Begründungen; 5 Dimensionen sind das produktive Maximum.
**Anschluss-Szenario:** S-PS-017

### S-PS-017 Prompt-Sharing-Workflow: Bewährte Prompts aus dem Chat in die Library überführen

**Wann nutzen (Trigger):** Ein Redakteur entwickelt im täglichen Chat einen exzellenten Prompt für LinkedIn-Thought-Leadership-Posts — dieser bleibt in seiner privaten Chat-History und geht nach 30 Tagen verloren, ohne dass das Team davon profitiert. (Quelle: sources/12 Q71 + Q74)
**Strategisches Ziel:** Einen standardisierten Sharing-Workflow etablieren: Guter Prompt im Chat → PTCF-Normierung → Peer-Review → Library-Eintrag — damit kein bewährter Prompt ungenutzt verloren geht.
**Hands-on Ergebnis:** Ein `prompt-sharing-sop.md` in der Library (Standard Operating Procedure, 1 Seite) plus ein Nominiierungs-Konversations-Starter, mit dem jeder Kollege einen Prompt zur Library-Aufnahme einreichen kann.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Konversations-Starter / Chat
**Vorgehen (4 Schritte):**
1. Definiere in der SOP 3 Aufnahme-Kriterien: (a) Prompt erzeugte mindestens 3× einen direkt nutzbaren Output, (b) er ist auf PTCF normierbar, (c) er ist mit {{Variablen}} parametrisierbar.
2. Konfiguriere einen "Prompt-Nominierung"-Konversations-Starter: Kollegin fügt Roh-Prompt ein → Agent normiert auf PTCF → liefert Normierungs-Vorschlag + Begründung ob Kriterien erfüllt.
3. Julia reviewed normierten Prompt (2-Minuten-Check) und lädt die freigegebene Version in die Library hoch.
4. Quartals-Review der Library: Prompts mit <3 Verwendungen in 3 Monaten werden archiviert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Bibliothekar. Ich reiche folgenden Roh-Prompt zur Library-Aufnahme ein: [Prompt einfügen]. Prüfe: (1) Lässt er sich auf PTCF normieren? (2) Gibt es {{Variablen}}, die parametrisiert werden sollten? (3) Sind alle drei Aufnahme-Kriterien erfüllt? Ausgabe: normierter PTCF-Prompt-Entwurf + Checkliste der drei Kriterien (✓/✗) + Empfehlung: aufnehmen / überarbeiten / ablehnen."
**Erwartetes Artefakt:** PTCF-normierter Prompt-Entwurf + Aufnahme-Entscheidung mit Begründung.
**Fallstricke (≥2 spezifisch):**
- Ohne definierten Reviewer (Julia oder Team-Lead) landen unkurierte Prompts in der Library und senken die Gesamtqualität — der Freigabe-Step ist nicht optional.
- Prompts, die von einem bestimmten Modell abhängen (z.B. nur mit Claude Opus stabil), müssen in der Library mit Modell-Hinweis getaggt werden, damit Kollegen das richtige Modell wählen.
**Anschluss-Szenario:** S-PS-018

### S-PS-018 Prompt-Deprecation bei Modell-Drift: Ruhestands-Prozess für veraltete Prompts

**Wann nutzen (Trigger):** Nach einem Langdock-Modell-Update verhalten sich 3 von 10 Library-Prompts anders als erwartet — unklar ist, welche noch verlässlich sind und welche retired werden müssen. (Quelle: A-49 + sources/12 Q84)
**Strategisches Ziel:** Einen formellen Deprecation-Prozess einführen, der durch monatliche Canary-Tests erkennt, welche Prompts durch Modell-Drift unbrauchbar geworden sind, und diese sauber archiviert, bevor sie Schäden im Tagesgeschäft verursachen.
**Hands-on Ergebnis:** Eine `prompt-deprecation-log.md` mit Status-Labels (Active / Under-Review / Deprecated) und ein Canary-Test-Protokoll für den monatlichen Health-Check.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat
**Vorgehen (4 Schritte):**
1. Erstelle `prompt-deprecation-log.md`: Spalten Prompt-Name | Letzter-Test-Datum | Modell | Status | Nachfolger-Prompt.
2. Definiere den Canary-Test: 3 Standard-Inputs mit bekanntem erwarteten Output; FAIL = Output weicht in Format, Tonalität oder Vollständigkeit ab.
3. Führe nach jedem Langdock-Modell-Update den Canary-Test für alle 10 Schlüssel-Prompts durch (Aufwand: ~20 Min.).
4. Prompts mit 2 von 3 Canary-FAILs werden auf "Under-Review" gesetzt; nach erfolglosem Repair-Versuch auf "Deprecated" — kein Löschen, nur Archivierung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Tester. Führe einen Canary-Test für den folgenden Prompt durch: [Prompt einfügen]. Testinput: [Standard-Input 1]. Erwarteter Output: [Beschreibung]. Bewerte: (1) Format eingehalten? (2) Tonalität korrekt? (3) Alle geforderten Elemente vorhanden? Ausgabe: Tabelle mit Dimension | Ergebnis (PASS/FAIL) | Abweichung | Schweregrad (kritisch/minor)."
**Erwartetes Artefakt:** Canary-Test-Protokoll mit PASS/FAIL je Dimension + Empfehlung: Active / Under-Review / Deprecated.
**Fallstricke (≥2 spezifisch):**
- Canary-Tests ohne fixierte Standard-Inputs sind nicht reproduzierbar und liefern kein echtes Signal über Modell-Drift — Testinputs einmalig festlegen und nie ändern.
- "Deprecated" als Label ist kein Lösch-Befehl; archivierte Prompts dokumentieren den historischen Kontext und helfen beim Rebuild, wenn ein neues Modell den alten Ansatz wieder besser unterstützt.
**Anschluss-Szenario:** S-PS-019

### S-PS-019 DACH-Lokalisierungs-Prompt für kulturelle Nuancen in Ad-Copy

**Wann nutzen (Trigger):** Eine Kampagne, die auf dem deutschen Markt erfolgreich war, wird 1:1 für Österreich und die Schweiz übernommen — mit deutlich schlechterer Performance, weil kulturelle Markt-Spezifika ignoriert wurden. (Quelle: sources/12 Q77 + A-46)
**Strategisches Ziel:** Einen Lokalisierungs-Prompt entwickeln, der DE-Copy für AT und CH nicht nur übersetzt, sondern kulturell adaptiert: Register, Anrede, regionalspezifische Referenzen und rechtliche Besonderheiten (AT: Preisangaben, CH: Hochdeutsch-Standard).
**Hands-on Ergebnis:** Drei Markt-Varianten (DE / AT / CH) jeder Ad-Copy, mit einem strukturierten Diff-Block, der die vorgenommenen kulturellen Anpassungen erklärt.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Chat / Canvas
**Vorgehen (4 Schritte):**
1. Speichere ein `dach-lokalisierungs-glossar.md` in der Library: DE vs. AT vs. CH für Anrede (Sie/du-Konvention pro Kanal), Währungssymbol (€ vs. CHF), typische Formulierungsunterschiede.
2. Referenziere das Glossar per `@`-Mention im Prompt und fordere explizit: "Prüfe jede Anpassung gegen das Glossar, bevor du sie vornimmst."
3. Fordere im Output einen Diff-Block: "Liste nach jeder Variante die 3 größten Anpassungen im Vergleich zur DE-Version auf."
4. Schwiizerdütsch-Anfragen grundsätzlich ablehnen und auf CH-Hochdeutsch umlenken (→ Fallstricke).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist DACH-Lokalisierungs-Spezialist. Adaptiere die folgende DE-Ad-Copy für AT und CH. Nutze das Glossar @dach-lokalisierungs-glossar für Anrede, Währung und Register. AT-Version: formelles 'Sie', Preis inkl. USt. kennzeichnen, österreichische Idiome wenn passend. CH-Version: Hochdeutsch (kein Dialekt), CHF statt €, kein 'ß'. Format: drei getrennte Blöcke (DE | AT | CH) + je ein Diff-Block mit den 3 größten Anpassungen."
**Erwartetes Artefakt:** Canvas-Dokument mit drei Markt-Varianten (DE/AT/CH) + Diff-Blöcke für jede Variante; Grundlage für A/B-Tests im jeweiligen Markt.
**Fallstricke (≥2 spezifisch):**
- Schwiizerdütsch ist für aktuelle LLMs nicht zuverlässig produzierbar — jede Anfrage nach Dialekt-Content für CH muss im Prompt auf "CH-Standardhochdeutsch" umgeleitet werden; Dialekt-Texte müssen manuell überprüft oder erstellt werden.
- AT-Preisangaben unterliegen dem UWG-AT und PAngV-Äquivalent (Angabe von Bruttopreisen); der Prompt muss explizit auf Preisdarstellungs-Compliance hinweisen und darf keine Nettopreise als Endpreise kommunizieren.
**Anschluss-Szenario:** S-PS-020

### S-PS-020 CO-STAR vs. PTCF Entscheidungsmatrix: Das richtige Framework wählen

**Wann nutzen (Trigger):** Das Team setzt PTCF für alle Aufgaben ein, auch für strategische C-Level-Kommunikation und Krisenbriefings — mit unbefriedigenden Ergebnissen, weil PTCF für hochkomplexe, mehrdimensionale Aufgaben zu wenig Steuerungstiefe bietet. (Quelle: sources/12 Q75 + A-07)
**Strategisches Ziel:** Eine klare, entscheidungslogische Matrix einführen, die das Team in 30 Sekunden zum richtigen Framework führt: PTCF für operative Geschwindigkeit, CO-STAR für strategische Tiefe — mit konkreten Schwellenwerten.
**Hands-on Ergebnis:** Ein `framework-entscheidungsmatrix.md` in der Library (1 Seite) plus ein Entscheidungs-Konversations-Starter, der anhand von 3 Fragen das passende Framework empfiehlt.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder / Konversations-Starter / Chat
**Vorgehen (3 Schritte):**
1. Baue die Entscheidungsmatrix mit 3 Schwellenwerten: (a) Ist die Zielgruppe intern (Team) oder extern mit Reputationsrisiko? (b) Hat die Aufgabe >2 gleichzeitig zu steuernde Dimensionen? (c) Ist Tonalität und Audience kritisch verschieden (z.B. CFO vs. Endkunde)? → 2+ JA = CO-STAR; sonst PTCF.
2. Konfiguriere den Entscheidungs-Starter: Aufgabe kurz beschreiben → Agent stellt die 3 Schwellenwert-Fragen → empfiehlt Framework mit Begründung + befüllt direkt das empfohlene Skeleton.
3. Ergänze in der Matrix 5 konkrete Use-Case-Beispiele (je 2–3 PTCF, je 2–3 CO-STAR) aus dem Alltag des Marketing-Teams.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Framework-Berater. Ich beschreibe meine Aufgabe: [Aufgabe]. Stelle mir diese drei Fragen nacheinander: (1) Ist die Zielgruppe extern mit Reputationsrisiko (Kunde, Presse, C-Level)? (2) Muss ich gleichzeitig Stil, Tonalität UND Audience-Spezifika steuern? (3) Ist ein Fehler in Ton oder Format hier geschäftlich schädlich? Bei 2+ JA empfehle CO-STAR mit befülltem Skeleton. Bei <2 JA empfehle PTCF mit befülltem Skeleton. Begründe die Wahl in 2 Sätzen."
**Erwartetes Artefakt:** Framework-Empfehlung (PTCF oder CO-STAR) mit Begründung + direkt befülltes Prompt-Skeleton für die aktuelle Aufgabe.
**Fallstricke (≥2 spezifisch):**
- Teams neigen dazu, CO-STAR für alle Aufgaben zu nutzen, sobald sie es kennen — das erzeugt unnötig lange Prompts und erhöht Latenz; die Matrix muss explizit PTCF als Default positionieren.
- CO-STAR ohne klar ausgefülltes Audience-Feld produziert generische Outputs, die nicht besser sind als PTCF — der A-Parameter ist der häufigste CO-STAR-Ausfüll-Fehler; im Leitfaden explizit warnen.
**Anschluss-Szenario:** S-PS-001
