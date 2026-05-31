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

### S-PS-001 Redaktionsplanung Q3 unter Risiko-Identifikation

**Wann nutzen (Trigger):** Das C-Level zweifelt stark an den Ressourcen für die Q3-Planung und verlangt ein exaktes Mapping auf kommende Launches.
**Strategisches Ziel:** Einen tabellarischen Redaktionsplan generieren, der Meilensteine und Engpässe aufzeigt.
**Hands-on Ergebnis:** Ein tabellarischer 90-Tage Redaktionsplan für Management-Präsentationen.
**Eingesetzte Langdock-Fähigkeit(en):** Agents / Folders / Canvas
**Vorgehen (3-5 Schritte):**
1. Navigiere in den Langdock-Wissensordner und verknüpfe das Q3-Strategie-Dokument.
2. Füge den spezifischen PTCF-Prompt in den Chat ein und weise der KI die Rolle des kritischen Strategen zu.
3. Lass den Agenten den Output direkt im Canvas aufbauen.
4. Nutze die Split-Screen-Ansicht, um die Spalten für das Ressourcen-Mapping im Team zu ergänzen und iterativ zu verfeinern.
**Beispiel-Prompt (DE, PTCF):**
> "Du agierst als Senior Content-Stratege. Erstelle einen 90-Tage-Redaktionsplan basierend auf dem Q3-Fahrplan. Nutze Falsifikation: Finde 3 messbare Gründe, warum dieser Plan aufgrund unserer aktuellen Ressourcen völlig scheitern wird, und füge diese als Warnungen hinzu. Strukturiere die Antwort in einer professionellen B2B-Tonalität und vermeide Buzzwords. Liefere das Ergebnis als Tabelle: Datum, Thema, Format, Zielgruppe, Risiko-Faktor."
**Erwartetes Artefakt:** Ein tabellarischer 90-Tage Content-Kalender mit integrierten Risikobewertungen.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent schätzt Ressourcen-Engpässe oft zu optimistisch ein.
- Ohne exakte Formatvorgaben resultiert oft unstrukturierter Fließtext.
**Anschluss-Szenario:** S-PS-002

### S-PS-002 Wettbewerbs-Simulation für Responsive Search Ads

**Wann nutzen (Trigger):** Die Google Ads CTR für die Hauptkampagne ist auf unter 1,5% gefallen. Julia bemerkt, dass der härteste Konkurrent seine Copy stark überarbeitet hat und massiv Klicks abzieht.
**Strategisches Ziel:** Die Argumentation der Konkurrenz dekonstruieren und darauf basierend 15 überlegene RSA-Headlines entwerfen, die den CPA senken.
**Hands-on Ergebnis:** Eine detaillierte Google Ads Copy-Tabelle (RSA) mit klaren, nutzenorientierten Hooks.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search / Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne einen neuen Agenten-Chat und aktiviere zwingend die Web-Search für tagesaktuelle Marktdaten.
2. Kopiere die Landingpage-URL des Konkurrenten in den Chat.
3. Setze den Metaprompt ein und fordere die KI auf, die Perspektive des Wettbewerbers einzunehmen.
4. Exportiere die finale Headline-Matrix direkt aus dem Canvas als CSV-Datei für den Ads-Import.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Performance-Manager. Unser Hauptkonkurrent hat seine Ads-Strategie geändert. Konstruiere das absolut stärkste Argument, warum Kunden zu ihm wechseln sollten (Steelmanning). Entwickle danach 15 Google Ads Headlines und 4 Descriptions für unser Produkt, die dieses Argument präzise und elegant aushebeln. Bleibe absolut sachlich, fokussiere dich auf harte B2B-Fakten und vermeide plumpe Superlative."
**Erwartetes Artefakt:** Eine sofort exportierbare CSV-Struktur mit 15 Headlines und 4 Descriptions.
**Fallstricke (mind. 2 spezifisch):**
- Ohne aktivierte Web-Search greift die KI auf veraltete Daten zurück.
- Die Tonalität gerät oft zu werblich oder enthusiastisch ('Das beste Produkt!').
**Anschluss-Szenario:** S-PS-003

### S-PS-003 Fehleranalyse im Vorfeld der DMEXCO-Planung

**Wann nutzen (Trigger):** Das sechsstellige Budget für die nächste große Branchen-Messe wurde soeben freigegeben. Julia will sicherstellen, dass nicht wieder Leads im Nachgang verloren gehen.
**Strategisches Ziel:** Präventive Maßnahmen definieren, um die typischen Fehler in der Event-Planung und im Follow-up von Anfang an auszuschließen.
**Hands-on Ergebnis:** Ein priorisiertes Pre-Mortem-Dokument mit konkreten Gegenmaßnahmen für das Event-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat / Document Editor
**Vorgehen (3-5 Schritte):**
1. Starte einen dedizierten Event-Chat und lade das aktuelle Standkonzept als PDF hoch.
2. Triggere den Pre-Mortem-Prompt und zwinge den Agenten, in die Zukunft zu springen.
3. Werte die aufgelisteten Schwachstellen im Team-Meeting aus.
4. Nutze den Canvas-Editor, um die identifizierten Gegenmaßnahmen direkt in Action-Items umzuwandeln und Aufgaben zuzuweisen.
**Beispiel-Prompt (DE, PTCF):**
> "Agiere als Senior Event-Manager. Stell dir vor, unsere Teilnahme an der Leitmesse im Q3 war ein kompletter Fehlschlag. Das Budget wurde verbrannt und wir haben keine SQLs (Sales Qualified Leads) generiert. Führe ein Pre-Mortem durch: Liste 5 detaillierte, strategische Fehler auf, die wir in der Konzeption und im Follow-Up gemacht haben. Leite für jeden Fehler eine konkrete Präventivmaßnahme in Tabellenform ab."
**Erwartetes Artefakt:** Ein detailliertes Pre-Mortem Audit mit verknüpften Präventivmaßnahmen.
**Fallstricke (mind. 2 spezifisch):**
- Die KI verfällt oft in banale operative Fehler (z.B. 'Kaffee war alle').
- Der Agent neigt zu unprofessionellen Anglizismen.
**Anschluss-Szenario:** S-PS-004

### S-PS-004 Kategorien-Abgleich für ein neues Value Proposition Design

**Wann nutzen (Trigger):** Ein neues Enterprise-Modul steht kurz vor dem Launch. Das aktuelle Messaging klingt extrem trocken und ist austauschbar mit jedem anderen SaaS-Anbieter.
**Strategisches Ziel:** Völlig neue, unkonventionelle Messaging-Winkel finden, die sich deutlich vom Branchenstandard abheben und Aufmerksamkeit erzeugen.
**Hands-on Ergebnis:** Ein Messaging-Framework mit drei radikal unterschiedlichen Positionierungs-Ansätzen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne den Chat und wähle die Persona des Brand-Managers aus.
2. Füge das bisherige, generische Value Proposition Statement in den Chat ein.
3. Triggere den Contrast-Classes-Prompt, um branchenfremde Vergleiche zu forcieren.
4. Verfeinere die generierten Ansätze im Canvas, um sicherzustellen, dass sie trotzdem seriös und B2B-kompatibel bleiben.
**Beispiel-Prompt (DE, PTCF):**
> "Du agierst als Senior Brand-Manager. Unser aktuelles Messaging lautet: [Füge aktuelles generisches Messaging ein]. Vergleiche unseren Ansatz mit völlig branchenfremden Kategorien. Wie würde ein Luxusauto-Hersteller oder eine schnelle Fast-Food-Kette unseren Service verkaufen? Generiere 3 unkonventionelle Messaging-Ansätze, die herausstechen, aber den B2B-Kontext respektieren. Keine Floskeln."
**Erwartetes Artefakt:** Ein strukturiertes Messaging-Dokument mit drei alternativen Positionierungs-Routen.
**Fallstricke (mind. 2 spezifisch):**
- Das Modell kann bei diesem kreativen Prompt zu verspielt werden.
- Ohne Formatvorgaben liefert der Agent oft zusammenhängende Textblöcke.
**Anschluss-Szenario:** S-PS-005

### S-PS-005 Bias-Korrektur bei B2B Buyer Personas

**Wann nutzen (Trigger):** Das Sales-Team beklagt, dass die Marketing-Leads keine Kaufintention haben. Julia vermutet, dass die alten Persona-Profile die tatsächliche Marktdynamik ignorieren.
**Strategisches Ziel:** Bestehende Annahmen über die Zielgruppe radikal hinterfragen und mit echten Markttrends abgleichen, um Fehlallokationen im Budget zu stoppen.
**Hands-on Ergebnis:** Ein fundiertes Persona-Update-Briefing für das Content- und Performance-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst / Canvas
**Vorgehen (3-5 Schritte):**
1. Exportiere die letzten verlorenen Deals (Lost Deals) aus dem CRM als CSV und lade sie hoch.
2. Aktiviere den Data Analyst und füttere ihn mit dem bisherigen Persona-Dokument.
3. Triggere die Bayesian-Prior-Analyse, um die kognitive Verzerrung der alten Profile zu entlarven.
4. Aktualisiere das Persona-Template im Canvas auf Basis der neu gewonnenen Erkenntnisse.
**Beispiel-Prompt (DE, PTCF):**
> "Agiere als Senior Product-Marketer. Wir gehen seit zwei Jahren davon aus, dass unsere Haupt-Persona primär wegen des Features X kauft. Analysiere die hochgeladenen CRM-Daten der verlorenen Deals. Wo liegen kognitive Verzerrungen (Bayesian Priors) in unserer Annahme? Welche echten Trends entkräften diese Prämisse? Liefere eine knallharte Auswertung und drei sofortige Anpassungsempfehlungen für unser Targeting."
**Erwartetes Artefakt:** Ein analytisches Persona-Audit-Dokument inklusive Anpassungsempfehlungen.
**Fallstricke (mind. 2 spezifisch):**
- Die KI interpretiert CRM-Spalten manchmal falsch.
- Der Data Analyst vergisst oft die strategische Einordnung.
**Anschluss-Szenario:** S-PS-006

### S-PS-006 Datenquellen-Verifikation bei Content-Gap-Analysen

**Wann nutzen (Trigger):** Für einen wichtigen Pillar-Artikel liegen widersprüchliche Suchvolumen und Trends aus zwei verschiedenen SEO-Tools (z.B. Ahrefs und Semrush) vor.
**Strategisches Ziel:** Eine valide und verlässliche Keyword-Datenbasis schaffen, bevor massiv Budget in die Content-Produktion investiert wird.
**Hands-on Ergebnis:** Ein konsolidiertes, priorisiertes Keyword-Set in tabellarischer Form.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search / Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade beide Keyword-Exporte als separate CSV-Dateien in den Chat hoch.
2. Instruiere den Data Analyst, die Listen zusammenzuführen und Metriken abzugleichen.
3. Fordere die KI auf, bei starken Diskrepanzen die Web-Suche für eine dritte Einschätzung (z.B. Google Trends) heranzuziehen.
4. Lass dir die bereinigte Liste direkt im Chat als Markdown-Tabelle ausgeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior SEO-Analyst. Zwei Keyword-Exporte sind hochgeladen, die sich bei Suchvolumen und Keyword-Difficulty widersprechen. Führe eine Source Triangulation durch: Gleiche die Listen ab, identifiziere Ausreißer und ermittle einen realistischen Konsens-Wert für unsere Top 10 Keywords. Begründe deine Entscheidung bei starken Abweichungen. Strukturiere die finale Liste als Tabelle, aufsteigend sortiert nach Priorität."
**Erwartetes Artefakt:** Eine bereinigte, konsolidierte Keyword-Matrix als Markdown-Tabelle.
**Fallstricke (mind. 2 spezifisch):**
- Wenn Datensätze sehr groß sind, bricht die Auswertung manchmal ab.
- Der Agent erfindet manchmal Durchschnittswerte.
**Anschluss-Szenario:** S-PS-007

### S-PS-007 Widerspruchs-Analyse in Lead-Nurturing Workflows

**Wann nutzen (Trigger):** Eine neue 12-stufige Drip-Kampagne wurde entworfen, aber die Logik der Segmentierung wirkt extrem komplex und fehleranfällig.
**Strategisches Ziel:** Logische Brüche und Dead-Ends im E-Mail-Workflow auflösen, bevor die Kampagne live im CRM geschaltet wird.
**Hands-on Ergebnis:** Ein fehlerbereinigtes Automations-Schema, das direkt ins Marketing-Automation-Tool übertragen werden kann.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3-5 Schritte):**
1. Öffne einen Chat und wähle die Persona des CRM-Spezialisten.
2. Füge das textliche Konzept des aktuellen Drip-Workflows inklusive aller Wenn-Dann-Bedingungen ein.
3. Triggere die Widerspruchs-Analyse.
4. Nutze den Canvas, um das optimierte Workflow-Mapping als Baumstruktur oder strukturierte Liste zu speichern.
**Beispiel-Prompt (DE, PTCF):**
> "Du agierst als Senior CRM-Spezialist. Hier ist das Konzept für einen 12-stufigen Lead-Nurturing Workflow. Analysiere das gesamte Dokument ausschließlich auf logische Widersprüche (Contradiction Log). Wo gibt es Endlosschleifen? Welche Segmente erhalten doppelte E-Mails? Welche Bedingungen schließen sich gegenseitig aus? Erstelle ein Fehlerprotokoll und präsentiere eine korrigierte Logik-Struktur."
**Erwartetes Artefakt:** Ein Workflow-Fehlerprotokoll und ein korrigiertes Drip-Kampagnen-Schema.
**Fallstricke (mind. 2 spezifisch):**
- Die KI verliert sich gerne in inhaltlichen Text-Korrekturen (Copywriting).
- Ohne Format-Template liefert das Modell unübersichtliche Ergebnisse.
**Anschluss-Szenario:** S-PS-008

### S-PS-008 Schwellenwert-Definition für den Start eines TikTok-Kanals

**Wann nutzen (Trigger):** Das Management drängt auf einen eigenen TikTok-Kanal für das B2B-Produkt, aber Julia sieht darin eine reine Ressourcen-Verbrennung ohne Zielgruppen-Fit.
**Strategisches Ziel:** Objektive, harte Metriken und Schwellenwerte definieren, unter denen das Projekt sofort abgebrochen oder als Erfolg bewertet wird.
**Hands-on Ergebnis:** Ein datenbasiertes Entscheidungs-Framework für den C-Level-Pitch.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search / Canvas
**Vorgehen (3-5 Schritte):**
1. Aktiviere die Web-Search-Fähigkeit, um aktuelle B2B-Fallstudien zu diesem Kanal zu recherchieren.
2. Füge den spezifischen Schwellenwert-Prompt ein.
3. Übertrage das Framework ins Canvas.
4. Teile das Dokument mit dem Management, um die Abnahmekriterien vor dem ersten Drehbuch festzuzurren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Social-Media-Manager. Das Management will einen B2B-TikTok-Kanal starten. Wir sind extrem skeptisch. Erarbeite ein Framework nach dem Prinzip 'What Would Change My Mind'. Definiere exakte, messbare Schwellenwerte für die ersten 3 Monate (Views, Engagement, Qualifizierte Leads). Was muss genau passieren, damit wir diesen Kanal als validen Hebel akzeptieren, und bei welchen Werten brechen wir das Projekt hart ab?"
**Erwartetes Artefakt:** Ein konkretes Entscheidungs-Framework mit harten Go/No-Go Metriken.
**Fallstricke (mind. 2 spezifisch):**
- Das Modell schlägt oft weiche Metriken (wie 'Brand Awareness') vor.
- Die KI generiert manchmal unrealistische Vanity-Metriken.
**Anschluss-Szenario:** S-PS-009

### S-PS-009 Fundamentalanalyse von Krisen-Kommunikations-Statements

**Wann nutzen (Trigger):** Ein technischer Ausfall der Software hat massive Kundenbeschwerden ausgelöst. Der aktuelle PR-Entwurf klingt nach juristischen Ausreden und nicht nach Verantwortungsübernahme.
**Strategisches Ziel:** Das Statement auf die absolut unumstößlichen Wahrheiten reduzieren und Vertrauen durch radikale Transparenz zurückgewinnen.
**Hands-on Ergebnis:** Ein klares, empathisches und faktenbasiertes Krisen-Statement.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne den Chat und wähle die Persona des Brand-Managers.
2. Füge den bisherigen PR-Entwurf und die technischen Fakten des Ausfalls ein.
3. Fordere die Reduktion auf First-Principles.
4. Nutze den Canvas, um den Text gemeinsam mit der Rechtsabteilung minimalinvasiv zu verfeinern.
**Beispiel-Prompt (DE, PTCF):**
> "Du agierst als Senior Brand-Manager. Unser aktueller Entwurf für ein Krisen-Statement lautet: [PR-Entwurf]. Dieser Text klingt nach Ausreden. Reduziere die Kommunikation auf First-Principles. Was ist das fundamentale, technische Problem, das passiert ist? Was tun wir genau jetzt dagegen? Schreibe ein neues, extrem ehrliches Statement, das auf Marketing-Floskeln verzichtet, volle Verantwortung übernimmt und Vertrauen schafft."
**Erwartetes Artefakt:** Ein veröffentlichungsreifes, faktenbasiertes PR-Statement.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent schreibt oft dramatische und übermäßig emotionale Entschuldigungen.
- Die KI formuliert oft unvorsichtige Haftungs-Zusagen.
**Anschluss-Szenario:** S-PS-010

### S-PS-010 Historischer Abgleich von Lead-Erwartungen bei E-Books

**Wann nutzen (Trigger):** Ein E-Book aus dem US-Markt wird lokalisiert. Das Sales-Team erwartet Tausende Leads im DACH-Raum, da es in den USA gut performt hat.
**Strategisches Ziel:** Erwartungshaltungen erden und realistische Benchmarks für den DACH-Markt etablieren, um spätere Enttäuschungen zu vermeiden.
**Hands-on Ergebnis:** Eine Benchmark-Analyse mit realistischen Lead-Prognosen für die DACH-Lokalisierung.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search / Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade historische Kampagnendaten vergangener DACH-Whitepapers als Referenz hoch.
2. Triggere die Base-Rate-Analyse, um die US-Zahlen zu entkräften.
3. Lass die KI die Marktdifferenzen strukturieren.
4. Präsentiere die realistische Prognose im nächsten Alignment-Meeting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Content-Stratege. Das US-Team hat mit dem E-Book [Titel] 5.000 Leads generiert und erwartet dasselbe für den DACH-Markt. Nutze Base-Rate-Analyse: Vergleiche diese Erwartung mit typischen Benchmarks für B2B-Lead-Gen im DACH-Raum sowie unseren historischen Daten. Erkläre die Unterschiede (z.B. Marktgröße, DSGVO-Opt-In Raten) und berechne eine fundierte, realistische Lead-Prognose. Liefere das Ergebnis als strukturiertes Briefing."
**Erwartetes Artefakt:** Ein detaillierter Benchmark-Report zur realistischen Kampagnen-Prognose.
**Fallstricke (mind. 2 spezifisch):**
- Die KI verwechselt oft DACH-Raten mit globalen Durchschnitten.
- Prognosen bleiben ohne DSGVO-Kontext oft viel zu hoch.
**Anschluss-Szenario:** S-PS-001

## Hinweise & Quellen-Konflikte

Keine Quellen-Widersprüche festgestellt.
