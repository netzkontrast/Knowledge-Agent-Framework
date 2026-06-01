# Branchen-Praxis: Think-Tank- und Wirtschaftsforschungs-Kommunikation

> **Was diese Datei abdeckt:**
> - 20 quellenbasierte Szenarien (Prefix S-TT) für die Kommunikations-Praxis von Wirtschaftsforschungsinstituten und Think Tanks im DACH-Raum
> - Übersetzung von Ökonometrie, ehrlicher Umgang mit Unsicherheit, Studien-Launch-Choreografie (Sperrfrist, Pressekonferenz), Policy-Briefs und Stellungnahmen, politischer Kalender, Peer-Benchmarking (ifo/DIW/ZEW), LinkedIn als B2P-Kanal, Datenvisualisierung, SEO-Themen-Hubs, Wirkungsmessung und Krisenkommunikation
> - Governance für KI-gestütztes Publizieren unter Wahrung von Neutralitätsanspruch, Faktentreue und Drittmittel-Transparenz (Quelle: research/11 Kapitel 2, 6)
>
> **Was diese Datei NICHT abdeckt:**
> - Plattform-Übersicht, Säulen und Hard Limits → siehe 00-langdock-uebersicht
> - Generische Marketing-Playbooks (CRM, Lokalisierung, Quartalsplanung) → siehe 09-marketing-praxis
> - Sicherheit, DSGVO und AVV im Detail → siehe 08-sicherheit-und-governance
> - IW-spezifische Formate, Stakeholder und Brand Voice im Detail → siehe research/10 sowie 14/16

## Marketing-Szenarien aus dieser Domäne

Die folgenden 20 Szenarien übertragen die Branchenkonventionen der DACH-Wirtschaftsforschung auf die tägliche Arbeit des IW-Kommunikationsteams mit Langdock. Sie sind durchgängig auf die rigorosen Sektorstandards kalibriert: Faktentreue ohne Spin, ehrliche Kommunikation von Unsicherheiten und Forschungsdesideraten, Wahrung des Neutralitätsanspruchs trotz Arbeitgeber-Nähe und transparenter Umgang mit der Drittmittel-Basis (Quelle: research/11 Kapitel 2). Jede nach außen wirkende Handlung erfordert eine menschliche Freigabe (Human-in-the-Loop); KI ist Assistenzwerkzeug, niemals Autorin (Quelle: research/11 Kapitel 6). Die Kette läuft von S-TT-001 bis S-TT-020 und schließt zurück zu S-TT-001.

### S-TT-001 Ökonometrie in allgemeinverständlichen Erklärtext übersetzen

**Wann nutzen (Trigger):** Ein neuer IW-Report mit einem Panel-Regressionsmodell ist final; das iwd-Team braucht binnen Stunden einen verständlichen Erklärtext, ohne den Kausalmechanismus zu verzerren. (Quelle: research/11 Kapitel 2 "Übersetzungs-Disziplin"; Quelle: research/10 Kapitel 7)
**Strategisches Ziel:** Die Übersetzungs-Disziplin standardisieren — komplexe Ökonometrie in zugängliche Sprache überführen, ohne den eigentlichen Wirkmechanismus zu glätten oder zu überzeichnen.
**Hands-on Ergebnis:** Ein iwd-tauglicher Erklärtext (ca. 400 Wörter), der den Kausalmechanismus narrativ erklärt und alle statistischen Werte unverändert übernimmt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat mit direktem Dateianhang, Canvas
**Vorgehen (4 Schritte):**
1. Den finalen Report als PDF direkt in den Chat anhängen und den Geltungsbereich auf den Quelltext begrenzen.
2. Agenten anweisen, den Kausalmechanismus in aktiver Sprache zu erklären und jede Zahl wörtlich aus dem Quelltext zu zitieren.
3. Entwurf im Canvas redigieren und gegen das Original Wert für Wert abgleichen.
4. Fachliche Freigabe durch die Autorin/den Autor des Reports einholen, bevor der Text in den iwd-Workflow geht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist iwd-Redakteur am IW Köln. PERSONA: sachlich, evidenzbasiert, ohne Marketing-Superlative. TASK: Übersetze den angehängten IW-Report in einen Erklärtext von 400 Wörtern. CONTEXT: Zielgruppe ist die interessierte Öffentlichkeit; der Kausalmechanismus (Energiepreis-Durchschlag auf Kaufkraft) muss erhalten bleiben. Extrapoliere keine Daten und erfinde keine Kausalzusammenhänge, die nicht im Text stehen. FORMAT: Fließtext mit aktiver Sprache, jede Zahl exakt aus der Quelle."
**Erwartetes Artefakt:** Ein iwd-Erklärtext (Markdown, ca. 400 Wörter) im Canvas, freigabebereit nach Fach-Review.
**Fallstricke (≥2 spezifisch):**
- Das Modell glättet Caveats und macht aus einer Korrelation eine Kausalaussage → Im Prompt explizit verbieten, Kausalität zu behaupten, die der Quelltext nicht stützt.
- Tone Drift zu Marketing-Sprache verletzt den Neutralitätsanspruch → Superlative ("bahnbrechend", "revolutionär") hart untersagen; sachliche Termini wie "signifikant", "strukturell" vorgeben.
**Anschluss-Szenario:** S-TT-002

### S-TT-002 Unsicherheit und Caveats ehrlich kommunizieren

**Wann nutzen (Trigger):** Der Erklärtext aus S-TT-001 soll publiziert werden, aber Konfidenzintervalle, Modellannahmen und Forschungslücken drohen "weggekürzt" zu werden. (Quelle: research/11 Kapitel 2 "Handling uncertainty honestly", Leibniz 11 Grundsätze)
**Strategisches Ziel:** Sicherstellen, dass Unsicherheiten (Konfidenzintervalle, Annahmen) und Forschungsdesiderate transparent benannt werden — die Pflicht zur informierten Öffentlichkeit erfüllen, statt für eine knackigere Story zu glätten.
**Hands-on Ergebnis:** Ein präziser Caveat-Absatz, der die zentralen Unsicherheiten und offenen Forschungsfragen verständlich, aber ehrlich darstellt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat mit direktem Dateianhang
**Vorgehen (4 Schritte):**
1. Den Quell-Report und den Entwurfstext gemeinsam anhängen.
2. Agenten gezielt nach Konfidenzintervallen, Modellannahmen und explizit benannten Forschungslücken im Quelltext suchen lassen.
3. Einen verständlichen Caveat-Absatz formulieren lassen, der nichts beschönigt.
4. Absatz in den Erklärtext integrieren und durch die Autorin auf Vollständigkeit prüfen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissenschaftslektor. TASK: Extrahiere aus dem angehängten Report alle Unsicherheitsangaben (Konfidenzintervalle, Annahmen, Forschungsdesiderate). Formuliere daraus einen verständlichen Absatz für Laien, der diese Unsicherheiten ehrlich benennt, ohne sie zu dramatisieren oder zu verharmlosen. Erfinde keine Unsicherheiten, die nicht im Text stehen."
**Erwartetes Artefakt:** Ein Caveat-Absatz (ca. 120 Wörter), der zur Einbettung in den Erklärtext freigegeben ist.
**Fallstricke (≥2 spezifisch):**
- Das Modell erfindet plausibel klingende, aber nicht im Text belegte Unsicherheiten → Geltung strikt auf den Quelltext begrenzen (Zero-Fabrication).
- Übertriebene Verunsicherung untergräbt die Aussage → Anweisen, Unsicherheiten zu benennen, ohne den Kernbefund zu entwerten.
**Anschluss-Szenario:** S-TT-003

### S-TT-003 Studien-Launch als Multi-Format-Content-Kaskade

**Wann nutzen (Trigger):** Ein 80-seitiges IW-Gutachten ist final; das Team soll daraus simultan ein modulares Distributionspaket erzeugen (Pressemitteilung, Visualisierungs-Outline, LinkedIn-Sequenz). (Quelle: research/11 Kapitel 5 "Content Cascading"; Quelle: research/10 Kapitel 7)
**Strategisches Ziel:** Die Content-Kaskade als "one-to-many"-Engine etablieren — ein Kern-Asset systematisch in Executive-, Digital- und Social-Tier zerlegen, ohne die Kernbotschaft zu verfälschen.
**Hands-on Ergebnis:** Ein Distributionspaket aus 400-Wort-Pressemitteilung, 3-Slide-Konzept für eine Datenvisualisierung und 4-teiliger LinkedIn-Sequenz.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (5 Schritte):**
1. Das Gutachten in den dedizierten Wissensordner des Launch-Agenten laden.
2. Den Agenten die Kernbotschaft und den schlagkräftigsten Datenpunkt isolieren lassen.
3. Pressemitteilung (400 Wörter), Visualisierungs-Outline (3 Slides) und LinkedIn-Sequenz (4 Posts) in einem Durchlauf generieren lassen.
4. Alle Module im Canvas gegen den Kernbefund prüfen und konsistent halten.
5. Paket erst nach Fach- und Kommunikationsfreigabe zur Distribution übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Content-Stratege am IW Köln. TASK: Erzeuge aus dem Gutachten im Wissensordner ein Distributionspaket. CONTEXT: ordnungspolitische, sachliche Tonalität; Kernbefund darf in keinem Format verzerrt werden. FORMAT: (1) Pressemitteilung 400 Wörter mit journalistischer Headline, (2) 3-Slide-Outline für eine interaktive Grafik mit Angabe des wirkungsstärksten Datenpunkts, (3) 4-teilige LinkedIn-Sequenz für die Direktorin. Jede Zahl exakt aus dem Quelltext."
**Erwartetes Artefakt:** Ein modulares Distributionspaket (Canvas-Dokument) mit drei klar getrennten Modulen.
**Fallstricke (≥2 spezifisch):**
- Über mehrere Module driftet die Kernbotschaft → Im Prompt verankern, dass alle Formate denselben Kernbefund tragen, und im Canvas gegenprüfen.
- Wissensordner mit >1.000 Dateien führt zu ungenauem Retrieval → Gutachten in einem fokussierten Ordner ablegen.
**Anschluss-Szenario:** S-TT-004

### S-TT-004 Sperrfrist- und Embargo-Choreografie planen

**Wann nutzen (Trigger):** Eine Studie soll Tier-1-Journalisten 24-48 Stunden vorab unter Sperrfrist erreichen, damit die Berichterstattung am Erscheinungstag synchronisiert ist. (Quelle: research/11 Kapitel 3 "Choreography of the Launch", Sperrfrist-Praxis)
**Strategisches Ziel:** Eine fehlerfreie Embargo-Choreografie aufsetzen — Vorabverteilung, Sperrfristhinweis und exakter Veröffentlichungszeitpunkt synchronisiert, um hochwertige statt oberflächliche Berichterstattung zu sichern.
**Hands-on Ergebnis:** Ein Launch-Ablaufplan inklusive Sperrfrist-formuliertem Anschreiben mit Datum, Uhrzeit und Vorab-Verteiler-Liste.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Canvas
**Vorgehen (4 Schritte):**
1. Veröffentlichungszeitpunkt, Vorablauf (24-48 h) und Verteilerumfang als Kontext eingeben.
2. Agenten einen tabellarischen Ablaufplan (T-48 h bis T+0) erstellen lassen.
3. Sperrfrist-Anschreiben mit deutlich platziertem Embargo-Hinweis formulieren lassen.
4. Verteiler und Sperrfristtext durch die Pressestelle freigeben, bevor versandt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Pressereferent am IW Köln. TASK: Erstelle (1) einen Launch-Ablaufplan von T-48h bis Veröffentlichung und (2) ein Sperrfrist-Anschreiben an den Presseverteiler. CONTEXT: Veröffentlichung Dienstag 9:00 Uhr; Vorabversand 48 Stunden vorher. FORMAT: Ablaufplan als Tabelle; Anschreiben mit dem Embargo-Hinweis 'Gesperrt bis [Datum, Uhrzeit]' in der ersten Zeile. Keine Empfängernamen erfinden."
**Erwartetes Artefakt:** Ablaufplan-Tabelle plus Sperrfrist-Anschreiben (Canvas), freigabebereit.
**Fallstricke (≥2 spezifisch):**
- Sperrfristhinweis unklar oder fehlplatziert riskiert Embargo-Bruch und Verteiler-Ausschluss → Embargo-Hinweis zwingend in die erste Zeile, mit exaktem Datum und Uhrzeit.
- Das Modell erfindet konkrete Journalistennamen/Kontakte → Echte Verteilerdaten nie ins Prompt geben; Platzhalter verwenden (DSGVO, vgl. 08-sicherheit-und-governance).
**Anschluss-Szenario:** S-TT-005

### S-TT-005 Pressekonferenz und Hintergrundgespräch vorbereiten

**Wann nutzen (Trigger):** Für einen großen Release wird eine Pressekonferenz in Berlin plus ein Hintergrundgespräch "unter drei" mit Leitkolumnisten vorbereitet; die Ökonomin braucht ein belastbares Briefing. (Quelle: research/11 Kapitel 3 "Pressekonferenzen", "Hintergrundgespräche")
**Strategisches Ziel:** Auftritte so vorbereiten, dass die Nuancen des Modells erklärbar sind, kritische Fragen antizipiert werden und die Kernbotschaft sachlich trägt — ohne attribuierten Druck im Hintergrundgespräch.
**Hands-on Ergebnis:** Ein Briefing-Dokument mit Kernbotschaften, antizipierten kritischen Fragen und evidenzbasierten Antworten aus der eigenen Studie.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Die zugrunde liegende Studie in den Agenten-Wissensordner laden.
2. Agenten die fünf wahrscheinlichsten kritischen Fragen generieren lassen.
3. Zu jeder Frage eine evidenzbasierte Antwort ausschließlich aus den Studiendaten ableiten lassen.
4. Briefing mit der Ökonomin durchgehen und Off-the-record-Grenzen markieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Medien-Coach am IW Köln. TASK: Erstelle ein Briefing für eine Pressekonferenz. CONTEXT: Studie im Wissensordner; Ziel ist es, das ökonometrische Modell für Leitjournalisten verständlich zu machen. FORMAT: (1) drei Kernbotschaften, (2) fünf antizipierte kritische Fragen, (3) je eine Antwort, die ausschließlich auf Studiendaten basiert. Nenne keine Zahlen, die nicht in der Studie stehen."
**Erwartetes Artefakt:** Ein Briefing-Dokument (Markdown) mit Q&A-Teil und markierten Off-the-record-Passagen.
**Fallstricke (≥2 spezifisch):**
- Antworten enthalten halluzinierte Zahlen → Antwortgrundlage strikt auf den Wissensordner begrenzen.
- Off-the-record-Inhalte werden versehentlich in zitierfähige Statements überführt → Hintergrund-Passagen im Briefing klar als "unter drei" kennzeichnen.
**Anschluss-Szenario:** S-TT-006

### S-TT-006 Medienresonanzanalyse aufbereiten

**Wann nutzen (Trigger):** Nach einem Launch liegt ein Rohexport der Clippings vor; die Leitung will wissen, ob die Berichterstattung prominent, korrekt und im eigenen Framing erfolgte und wie der Share of Voice gegenüber Peers steht. (Quelle: research/11 Kapitel 3 "Measuring Media Impact", Kapitel 7)
**Strategisches Ziel:** Von reiner Mengenzählung zur qualitativen Medienresonanzanalyse kommen — Prominenz, Korrektheit und Narrativ-Treue auswerten, um Meinungsführerschaft statt nur Sichtbarkeit zu messen.
**Hands-on Ergebnis:** Ein Resonanz-Report mit Tier-1-Platzierungen, Framing-Treue-Bewertung und Share-of-Voice-Einordnung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (4 Schritte):**
1. Den anonymisierten Clipping-Export als CSV in den Data Analyst laden.
2. Platzierungen nach Tier und Tonalität klassifizieren lassen.
3. Framing-Treue je Beitrag bewerten lassen (wurde das IW-Framing übernommen?).
4. Share-of-Voice-Tabelle und Management-Summary erzeugen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Medienanalyst am IW Köln. TASK: Analysiere den angehängten Clipping-Export. FORMAT: (1) Tabelle der Tier-1-Platzierungen (FAZ, Handelsblatt, SZ) mit Tonalität, (2) Bewertung pro Beitrag, ob unser Kern-Framing übernommen wurde, (3) Share-of-Voice-Einordnung relativ zu genannten Peer-Instituten. Liefere ein nüchternes einseitiges Summary. Erfinde keine Reichweitenzahlen."
**Erwartetes Artefakt:** Ein Resonanz-Report (PDF/Markdown) mit Tabellen und einseitigem Summary.
**Fallstricke (≥2 spezifisch):**
- Multi-Sheet-Export überfordert den Data Analyst → Vorher auf relevante Spalten reduzieren (max. 30 MB).
- Das Modell extrapoliert Reichweiten, die nicht im Export stehen → Auswertung strikt auf vorhandene Daten begrenzen.
**Anschluss-Szenario:** S-TT-007

### S-TT-007 Policy-Brief und Stellungnahme für Anhörungen

**Wann nutzen (Trigger):** Für eine Bundestags-Anhörung wird eine formale Stellungnahme bzw. ein 4-8-seitiger Policy-Brief gebraucht, der methodische Exposition wegstrafft und konkrete Handlungsempfehlungen fokussiert. (Quelle: research/11 Kapitel 4 "Formats for Policy Interception"; Quelle: research/10 Kapitel 3)
**Strategisches Ziel:** Ein anhörungstaugliches Format erzeugen, das empirische Befunde und konkrete ordnungspolitische Empfehlungen in den Vordergrund stellt und direkt in den Gesetzgebungsprozess einspeisbar ist.
**Hands-on Ergebnis:** Ein strukturierter Policy-Brief mit Kernbefunden, Empfehlungen und transparentem Hinweis auf Mandat und Drittmittel-Basis.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Studie und Gesetzeskontext in den Agenten laden.
2. Kernbefunde und ableitbare Handlungsempfehlungen extrahieren lassen.
3. Brief im anhörungstauglichen Format strukturieren (Befund → Empfehlung).
4. Transparenz-Footer zu Mandat und Drittmittel-Basis ergänzen und juristisch prüfen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Policy-Referent am IW Köln. TASK: Erstelle einen 6-seitigen Policy-Brief für eine Bundestags-Anhörung. CONTEXT: Studie im Wissensordner; ordnungspolitische Ausrichtung. FORMAT: (1) Zusammenfassung, (2) je Befund eine konkrete Handlungsempfehlung, (3) Transparenz-Hinweis zu Mandat und Förderbasis. Empfehlungen müssen aus den Befunden folgen, nicht umgekehrt."
**Erwartetes Artefakt:** Ein Policy-Brief (Canvas, 4-8 Seiten) mit Empfehlungsteil und Transparenz-Footer.
**Fallstricke (≥2 spezifisch):**
- "Spin": die gewünschte politische Aussage diktiert die Befunde → Im Prompt verankern, dass Empfehlungen aus den Daten folgen, nie umgekehrt.
- Fehlender Drittmittel-/Mandatshinweis verletzt Transparenzpflichten → Transparenz-Footer als zwingendes Pflichtfeld setzen.
**Anschluss-Szenario:** S-TT-008

### S-TT-008 Reaktion entlang des politischen Kalenders timen

**Wann nutzen (Trigger):** Haushaltsdebatte, Wahlen oder das EU-Semester stehen an; das Team will Working Paper und Policy Brief vorpositionieren, um antizipierte Mediennachfrage abzufangen. (Quelle: research/11 Kapitel 3 "Synchronization with the Political and Economic Calendar")
**Strategisches Ziel:** Content-Pipelines mit externen Meilensteinen synchronisieren — analytische Frameworks bereitstellen, bevor Journalisten nach Experteneinordnung suchen.
**Hands-on Ergebnis:** Ein 8-Wochen-Themenkalender, der vorhandene IW-Studien den anstehenden politischen Terminen zuordnet.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research, Canvas
**Vorgehen (4 Schritte):**
1. Per Deep Research die anstehenden Termine (Haushalt, Wahlen, EU-Semester) der nächsten acht Wochen recherchieren.
2. Vorhandene IW-Studien thematisch den Terminen zuordnen lassen.
3. Lücken markieren, für die kurzfristig ein Kurzbericht sinnvoll wäre.
4. Kalender im Canvas finalisieren und mit der Redaktionsleitung abstimmen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Redaktionsplaner am IW Köln. TASK: Führe einen Deep Research zu wirtschaftspolitischen Terminen der nächsten 8 Wochen durch (Haushaltsdebatten, Wahlen, EU-Semester, EZB-Sitzungen). Ordne die übergebene Liste vorhandener IW-Studien diesen Terminen zu und markiere thematische Lücken. FORMAT: Wochenkalender als Tabelle mit Spalten Termin, passende Studie, Lücke."
**Erwartetes Artefakt:** Ein 8-Wochen-Themenkalender (Canvas-Tabelle) mit Termin-Studien-Zuordnung.
**Fallstricke (≥2 spezifisch):**
- Deep Research liefert veraltete oder falsche Termine → Termine vor Nutzung gegen offizielle Quellen (Bundestag, EU-Kommission) gegenprüfen.
- Deep Research ist auf 15 Ausführungen pro 30 Tage limitiert → Recherche bündeln statt mehrfach einzeln starten.
**Anschluss-Szenario:** S-TT-009

### S-TT-009 Peer-Benchmarking gegen ifo, DIW und ZEW

**Wann nutzen (Trigger):** Die Leitung will wissen, wie sich die IW-Kommunikationsformate zu ifo, DIW und ZEW verhalten, um Positionierung und Format-Mix zu schärfen. (Quelle: research/11 Kapitel 1 "Peer-Comparison Matrix")
**Strategisches Ziel:** Ein evidenzbasiertes Peer-Benchmarking erstellen, das Ausrichtung, Leitformate und Kommunikationsstärken vergleicht — als Grundlage strategischer Differenzierung.
**Hands-on Ergebnis:** Eine Benchmark-Matrix mit Ausrichtung, Leitformaten, Kanal-Mix und Kernstärken je Institut sowie abgeleiteten Differenzierungschancen.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research, Canvas
**Vorgehen (4 Schritte):**
1. Deep Research zu den aktuellen Leitformaten und Kanälen von ifo, DIW, ZEW starten.
2. Ergebnisse in eine Vergleichsmatrix überführen lassen.
3. Differenzierungschancen für das IW ableiten lassen (z.B. interaktive Datenvisualisierung als Stärke).
4. Matrix im Canvas finalisieren und gegen die research/11-Peer-Matrix plausibilisieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Strategie-Analyst am IW Köln. TASK: Erstelle ein Peer-Benchmarking für ifo, DIW und ZEW. FORMAT: Matrix mit Spalten Institut, Ausrichtung, Leitformate, Kanal-Mix, Kommunikations-Kernstärke. Ergänze drei konkrete Differenzierungschancen für das IW. Stütze dich auf belegbare Quellen, kennzeichne Unsicheres als solches."
**Erwartetes Artefakt:** Eine Peer-Benchmark-Matrix (Canvas) plus drei Differenzierungsempfehlungen.
**Fallstricke (≥2 spezifisch):**
- Deep Research vermischt veraltete Format-Bezeichnungen → Formate gegen die research/11-Matrix abgleichen.
- Vergleich kippt in abwertende Konkurrenz-Rhetorik → Neutralen, sachlichen Ton vorgeben; keine Herabsetzung von Peers.
**Anschluss-Szenario:** S-TT-010

### S-TT-010 LinkedIn als B2P-Kanal bespielen

**Wann nutzen (Trigger):** Ein Gutachten soll als Business-to-Policy-Content auf LinkedIn laufen — als zugänglicher Carousel mit kontraintuitivem Datenpunkt und strategischem Tagging relevanter Entscheider. (Quelle: research/11 Kapitel 5 "LinkedIn as the Primary B2P Channel")
**Strategisches Ziel:** Den algorithmusfreien Direktkanal zu Entscheidern stärken — komplexe Gutachten in zugängliche Carousels überführen und Reichweite über das Personal Branding der Leitung erzeugen.
**Hands-on Ergebnis:** Ein 5-Slide-LinkedIn-Carousel-Skript mit kontraintuitivem Aufhänger und Vorschlägen für strategisches Tagging.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Gutachten in den Agenten laden und den überraschendsten belegten Datenpunkt isolieren lassen.
2. 5-Slide-Carousel-Skript im debattenorientierten, sachlichen Ton der Leitung erzeugen lassen.
3. Vorschläge für sinnvolle Tags (Verbände, Fachjournalisten) ergänzen lassen — als Vorschlag, nicht als automatisches Markieren.
4. Skript im Canvas mit der Person abstimmen, in deren Namen gepostet wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist B2P-Social-Stratege am IW Köln. TASK: Erstelle ein 5-Slide-LinkedIn-Carousel aus dem Gutachten im Wissensordner. CONTEXT: Stimme der Direktorin, sachlich-debattenorientiert, keine Emojis. FORMAT: Slide 1 kontraintuitiver, belegter Datenpunkt; Slides 2-4 Erklärung; Slide 5 ordnungspolitische Einordnung. Schlage 3-5 relevante Tags vor (Verbände, Journalisten), markiere sie aber nicht automatisch."
**Erwartetes Artefakt:** Ein Carousel-Skript (5 Slides) plus Tagging-Vorschlagsliste, freigabebereit.
**Fallstricke (≥2 spezifisch):**
- Der "kontraintuitive" Datenpunkt wird zugespitzt bis zur Verzerrung → Datenpunkt muss exakt belegt und im Kontext korrekt bleiben.
- Automatisches Tagging von Personen ohne Freigabe ist eine ungeprüfte Außenhandlung → Tags nur vorschlagen; Veröffentlichung erst nach menschlicher Freigabe.
**Anschluss-Szenario:** S-TT-011

### S-TT-011 Datenvisualisierung und interaktive Charts konzipieren

**Wann nutzen (Trigger):** Aus einer Studie soll ein interaktives Tool entstehen, das abstrakte Makrodaten personalisiert — analog zum IW-Erfolg "Geld geht immer". (Quelle: research/11 Kapitel 5 "Data Visualization and Interactive Assets"; Quelle: research/10 Kapitel 7)
**Strategisches Ziel:** Abstrakte Ökonometrie in personalisierte Mikroökonomie überführen — interaktive Assets konzipieren, die Verweildauer und Zitierfähigkeit erhöhen.
**Hands-on Ergebnis:** Ein Konzeptpapier für ein interaktives Tool mit Eingabeparametern, Logik und empfohlenem Chart-Typ.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Canvas
**Vorgehen (4 Schritte):**
1. Die Studien-Datentabelle in den Data Analyst laden und die personalisierbarste Kenngröße identifizieren lassen.
2. Eingabeparameter und Ausgabelogik des Tools entwerfen lassen.
3. Chart-Typ und narrative Botschaft je Zielgruppe empfehlen lassen.
4. Konzept im Canvas für die IW-Medien-Designer aufbereiten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Data-Journalism-Konzepter am IW Köln. TASK: Entwirf ein interaktives Tool aus der angehängten Datentabelle, analog zu 'Geld geht immer'. FORMAT: (1) personalisierbare Eingabeparameter, (2) Ausgabelogik (wo steht der Nutzer in der Verteilung), (3) empfohlener Chart-Typ mit Begründung. Nutze nur Werte aus der Tabelle."
**Erwartetes Artefakt:** Ein Tool-Konzeptpapier (Canvas) mit Parametern, Logik und Chart-Empfehlung.
**Fallstricke (≥2 spezifisch):**
- Vision/Chart-Empfehlung kann keine exakten HEX-Corporate-Farben validieren → Farbwerte aus dem offiziellen IW-Designguide manuell ergänzen.
- Personalisierungslogik suggeriert Genauigkeit, die die Daten nicht hergeben → Unsicherheitsbereiche im Tool sichtbar machen (vgl. S-TT-002).
**Anschluss-Szenario:** S-TT-012

### S-TT-012 SEO-Themen-Hub für Forschungsinhalte aufbauen

**Wann nutzen (Trigger):** Zu einem strukturellen Dauerthema (z.B. Schuldenbremse, Demografie) soll ein Evergreen-Themen-Hub entstehen, der bei aufflammenden Debatten zuverlässig oben rankt. (Quelle: research/11 Kapitel 5 "Content Cascading and SEO Strategy")
**Strategisches Ziel:** Über "Evergreen Explainer" die Default-Autorität zu strukturellen Themen sichern — damit IW-Forschung bei zyklischen Debatten ganz oben in den Suchergebnissen steht.
**Hands-on Ergebnis:** Eine Themen-Hub-Architektur mit Pillar-Page, Cluster-Unterseiten und Keyword-Zuordnung.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research, Canvas
**Vorgehen (4 Schritte):**
1. Deep Research zu Suchintentionen und wiederkehrenden Debattenbegriffen des Themas durchführen.
2. Pillar-Page und thematische Cluster-Unterseiten strukturieren lassen.
3. Vorhandene IW-Studien den Cluster-Seiten zuordnen lassen.
4. Architektur im Canvas finalisieren und mit der iwd-Redaktion abstimmen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Content-Architekt am IW Köln. TASK: Entwirf einen Evergreen-Themen-Hub zum Thema [Schuldenbremse]. FORMAT: (1) Pillar-Page-Outline, (2) 5-7 Cluster-Unterseiten mit Suchintention und Keyword, (3) Zuordnung vorhandener IW-Studien. Sachlicher, erklärender Ton ohne Werbesprache."
**Erwartetes Artefakt:** Eine Themen-Hub-Architektur (Canvas) mit Pillar/Cluster-Struktur und Keyword-Mapping.
**Fallstricke (≥2 spezifisch):**
- SEO-Optimierung kippt in Clickbait-Headlines, die den Neutralitätsanspruch verletzen → Sachliche, präzise Titel vorgeben.
- Keyword-Empfehlungen aus Deep Research sind nicht validiert → Vor Umsetzung mit echtem Keyword-Tool gegenprüfen.
**Anschluss-Szenario:** S-TT-013

### S-TT-013 Newsletter- und Podcast-Repurposing automatisieren

**Wann nutzen (Trigger):** Die Woche brachte mehrere IW-Nachrichten, Kurzberichte und Medienauftritte; Newsletter und Podcast-Teaser sollen daraus effizient befüllt werden. (Quelle: research/10 Kapitel 4, 9 "Newsletter Curation"; Quelle: research/11 Kapitel 5)
**Strategisches Ziel:** Die Assembly-Zeit drastisch senken — die Wochenproduktion zu Newsletter-Teasern und Podcast-Anmoderationen verdichten, ohne Faktentreue zu verlieren.
**Hands-on Ergebnis:** Ein befüllter Newsletter-Entwurf mit Teaser-Copy je Beitrag plus eine Podcast-Anmoderation.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Workflows
**Vorgehen (4 Schritte):**
1. Die Wochenpublikationen in den Agenten-Wissensordner laden.
2. Je Beitrag einen prägnanten Teaser (max. 60 Wörter) generieren lassen.
3. Aus dem stärksten Thema eine Podcast-Anmoderation für "Economic Challenges" ableiten lassen.
4. Entwurf im Workflow in die Newsletter-Vorlage schreiben und redaktionell freigeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Newsletter-Redakteur am IW Köln. TASK: Erzeuge aus den Wochenpublikationen im Wissensordner (1) je einen Teaser von max. 60 Wörtern und (2) eine Podcast-Anmoderation von 80 Wörtern zum stärksten Thema. CONTEXT: serviceorientiert, nachrichtenwert-fokussiert, sachlich. Übernimm Zahlen exakt aus den Quellen."
**Erwartetes Artefakt:** Newsletter-Entwurf mit Teasern plus Podcast-Anmoderation, freigabebereit.
**Fallstricke (≥2 spezifisch):**
- Teaser überzeichnen Befunde, um Klicks zu erzeugen → Nachrichtenwert ohne Spin; Zahlen exakt übernehmen.
- Workflow scheitert bei falsch konfigurierter Vorlagen-ID → Verbindung vor dem Live-Lauf in der Sandbox testen.
**Anschluss-Szenario:** S-TT-014

### S-TT-014 Neutralitäts- und Drittmittel-Transparenz in KI-Texten sichern

**Wann nutzen (Trigger):** Ein KI-gestützter Advocacy-Entwurf soll publiziert werden; Mandat, Geschäftsbasis und ggf. Drittmittel müssen transparent und korrekt ausgewiesen sein. (Quelle: research/11 Kapitel 2 "Avoiding Spin", Kapitel 4 Lobbyregister; Quelle: research/10 Kapitel 1)
**Strategisches Ziel:** Den Neutralitätsanspruch trotz Arbeitgeber-Nähe wahren — durch lückenlose Transparenz zu Mandat und Förderbasis und durch Vermeidung von Spin als Firewall gegen Lobbyismus-Vorwürfe.
**Hands-on Ergebnis:** Ein geprüfter Transparenz-Footer plus Spin-Check-Bericht für den Entwurf.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Verbindliche Transparenz-Bausteine (Mandat, Förderbasis, Registernummer) im Wissensordner hinterlegen.
2. Agenten den Entwurf auf ausgelassene Gegenbefunde und tendenziöse Kausalaussagen prüfen lassen (Spin-Check).
3. Korrekten Transparenz-Footer aus den Bausteinen einfügen lassen.
4. Ergebnis durch die Kommunikationsleitung freigeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Compliance-Lektor am IW Köln. TASK: Prüfe den Entwurf auf Spin (ausgelassene Gegenbefunde, tendenziöse Kausalität) und ergänze den Transparenz-Footer aus dem Wissensordner. FORMAT: (1) Spin-Check-Liste mit Fundstellen, (2) korrekter Transparenz-Footer mit Mandat und Förderbasis. Erfinde keine Registerangaben; nutze nur die Bausteine aus dem Wissensordner."
**Erwartetes Artefakt:** Ein Spin-Check-Bericht plus eingefügter, geprüfter Transparenz-Footer.
**Fallstricke (≥2 spezifisch):**
- Das Modell halluziniert eine Registernummer oder Förderquelle → Transparenzangaben ausschließlich aus dem kuratierten Wissensordner; nie generieren lassen.
- Spin-Check übersieht subtile Auslassungen → Prompt zwingt explizit zur Suche nach weggelassenen widersprechenden Daten.
**Anschluss-Szenario:** S-TT-015

### S-TT-015 Faktentreue bei Studienzahlen absichern

**Wann nutzen (Trigger):** Vor Versand einer Pressemitteilung müssen alle Zahlen, Dezimalstellen und Kausalaussagen gegen die Originalstudie verifiziert werden. (Quelle: research/11 Kapitel 6 "Factual Fidelity and Hallucinations")
**Strategisches Ziel:** Faktentreue als oberste Priorität durchsetzen — jede statistische Angabe und jeder Kausalzusammenhang muss dem Quelltext exakt entsprechen, da ein einziger falscher Dezimalpunkt die Glaubwürdigkeit zerstört.
**Hands-on Ergebnis:** Ein Verifikationsprotokoll, das jede Zahl im Entwurf der Fundstelle in der Studie gegenüberstellt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat mit direktem Dateianhang
**Vorgehen (4 Schritte):**
1. Originalstudie und Entwurf gemeinsam anhängen.
2. Agenten jede Zahl im Entwurf der exakten Fundstelle in der Studie zuordnen lassen.
3. Abweichungen, Rundungsfehler und nicht belegte Kausalaussagen markieren lassen.
4. Protokoll prüfen; Entwurf erst nach Korrektur aller Abweichungen freigeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Fact-Checker am IW Köln. TASK: Gleiche jede Zahl im angehängten Pressemitteilungs-Entwurf gegen die angehängte Originalstudie ab. FORMAT: Tabelle mit Spalten Aussage im Entwurf, Wert, Fundstelle in der Studie, Status (korrekt/abweichend/nicht belegt). Markiere jede behauptete Kausalität, die die Studie nicht stützt. Verändere keine Werte selbst."
**Erwartetes Artefakt:** Ein Verifikationsprotokoll (Tabelle) mit Status je Zahl und markierten nicht belegten Aussagen.
**Fallstricke (≥2 spezifisch):**
- Das Modell "korrigiert" Zahlen eigenmächtig statt nur abzugleichen → Anweisen, ausschließlich zu vergleichen und nichts zu ändern.
- Gerundete Werte werden fälschlich als Fehler markiert → Rundungstoleranz im Prompt definieren und manuell prüfen.
**Anschluss-Szenario:** S-TT-016

### S-TT-016 Governance für KI-gestütztes Publizieren etablieren

**Wann nutzen (Trigger):** Das Team will eine verbindliche Richtlinie für den KI-Einsatz im Publizieren, abgeleitet aus FactoryWisskomm (Mai 2025) und IQ_HKom (März 2026). (Quelle: research/11 Kapitel 6 "Governance Frameworks")
**Strategisches Ziel:** Die unteilbare redaktionelle Verantwortung verankern — KI als Assistenzwerkzeug, jede Ausgabe mit menschlicher Prüfung, DSGVO-Grenzen und Transparenzpflichten klar geregelt.
**Hands-on Ergebnis:** Eine Governance-Checkliste mit rechtlichen, organisatorischen und professionellen Leitplanken für KI-gestütztes Publizieren.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Die beiden Frameworks (FactoryWisskomm, IQ_HKom) in den Wissensordner laden.
2. Agenten die drei Governance-Tiers (rechtlich, organisatorisch, professionell) als Checkliste extrahieren lassen.
3. Jede Regel auf konkrete IW-Workflows anwenden (z.B. keine unveröffentlichten Daten in externe Prompts).
4. Checkliste im Canvas finalisieren und mit Datenschutz und Leitung abstimmen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Governance-Beauftragter am IW Köln. TASK: Leite aus den Frameworks im Wissensordner eine Publishing-Checkliste ab. FORMAT: drei Abschnitte (rechtliche Pflichten, organisatorische Schutzmaßnahmen, professionelle Standards) mit je konkreten, prüfbaren Regeln für unsere Workflows. Stütze dich nur auf die hinterlegten Dokumente."
**Erwartetes Artefakt:** Eine Governance-Checkliste (Canvas) mit drei Tiers und prüfbaren Regeln.
**Fallstricke (≥2 spezifisch):**
- Regeln bleiben abstrakt und nicht operationalisierbar → Jede Regel mit konkretem IW-Workflow-Bezug ausformulieren lassen.
- Das Modell ergänzt erfundene Vorgaben → Geltung strikt auf die hinterlegten Frameworks begrenzen.
**Anschluss-Szenario:** S-TT-017

### S-TT-017 Journalisten-Verteiler pflegen und Pitches personalisieren

**Wann nutzen (Trigger):** Eine lokalisierbare Studie (z.B. "Gemeindecheck") soll regional ausgespielt werden; Pitches an Fachjournalisten brauchen personalisierte, datenbezogene Aufhänger. (Quelle: research/10 Kapitel 4 "Media Relations"; Quelle: research/11 Kapitel 3)
**Strategisches Ziel:** Pitch-Treffsicherheit erhöhen — regionale/thematische Aufhänger passgenau auf Journalisten zuschneiden, ohne personenbezogene Daten in die KI zu geben.
**Hands-on Ergebnis:** Personalisierte Pitch-Bausteine je Zielsegment plus regional aufbereitete Datenpunkte.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Chat
**Vorgehen (4 Schritte):**
1. Die anonymisierte Studien-Datentabelle in den Data Analyst laden und regionale Spitzenwerte extrahieren.
2. Je Region/Thema einen datenbezogenen Aufhänger formulieren lassen.
3. Pitch-Bausteine mit Platzhaltern (z.B. {{Medium}}, {{Region}}) statt echter Kontaktdaten erstellen lassen.
4. Bausteine durch die Pressestelle gegen den realen Verteiler abgleichen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Media-Relations-Manager am IW Köln. TASK: Erstelle aus der angehängten anonymisierten Datentabelle regionale Pitch-Aufhänger. FORMAT: je Region (1) der lokale Spitzenwert, (2) ein Pitch-Baustein von max. 80 Wörtern mit Platzhaltern {{Medium}}, {{Region}}. Nutze keine echten Journalistennamen oder -mails."
**Erwartetes Artefakt:** Pitch-Bausteine mit Platzhaltern plus regionale Datenaufhänger.
**Fallstricke (≥2 spezifisch):**
- Echte Kontaktdaten im Prompt verletzen DSGVO → Nur Platzhalter; reale Verteilerdaten nie in die KI geben (vgl. 08-sicherheit-und-governance).
- Regionalwerte werden überzeichnet ("schlechteste Kommune") → Datenpunkte sachlich und kontextualisiert darstellen.
**Anschluss-Szenario:** S-TT-018

### S-TT-018 Wirkungsmessung über Politik-Zitationen und Reichweite

**Wann nutzen (Trigger):** Zum Jahres- oder Quartalsende soll der Kommunikationserfolg über die höchstwertigen Metriken belegt werden — Politik-Zitationen, Anhörungs-Einladungen, Tier-1-Resonanz. (Quelle: research/11 Kapitel 7 "Metrics & KPIs")
**Strategisches Ziel:** Über Vanity-Metriken hinausgehen — politische Penetration (Plenarprotokolle, Gesetzesentwürfe, Anhörungen) und qualitative Medienresonanz als Beleg für Meinungsführerschaft aufbereiten.
**Hands-on Ergebnis:** Ein Impact-Report mit Politik-Zitationen, Anhörungs-Beteiligungen und Resonanz-Kennzahlen.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Deep Research
**Vorgehen (4 Schritte):**
1. Die Tracking-Daten (Erwähnungen, Anhörungen, Clippings) als CSV in den Data Analyst laden.
2. Politik-Zitationen und Anhörungs-Beteiligungen als Kernmetrik priorisiert auswerten lassen.
3. Per Deep Research ergänzende öffentliche Erwähnungen verifizieren lassen.
4. Impact-Report im Canvas zusammenstellen und Kennzahlen gegen die Rohdaten prüfen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Impact-Analyst am IW Köln. TASK: Erstelle aus den angehängten Tracking-Daten einen Impact-Report. FORMAT: (1) Politik-Zitationen (Plenarprotokolle, Gesetzesentwürfe) als höchstwertige Metrik, (2) Anhörungs-Beteiligungen, (3) Tier-1-Medienresonanz. Liefere ein nüchternes Summary; erfinde keine Zitationen oder Reichweiten."
**Erwartetes Artefakt:** Ein Impact-Report (Canvas) mit priorisierten KPIs und Summary.
**Fallstricke (≥2 spezifisch):**
- Das Modell mischt Vanity-Metriken (Impressions) prominent unter die Kernmetriken → KPI-Hierarchie im Prompt vorgeben (Politik-Zitationen zuerst).
- Deep Research bestätigt nicht belegbare Erwähnungen → Jede Zitation an eine nachprüfbare Quelle binden.
**Anschluss-Szenario:** S-TT-019

### S-TT-019 Krisenkommunikation bei bestrittenen Befunden

**Wann nutzen (Trigger):** Ein IW-Befund wird öffentlich bestritten — etwa von einem gegenläufig ausgerichteten Institut oder politischen Akteuren; eine sachliche, evidenzbasierte Reaktion ist binnen Stunden nötig. (Quelle: research/11 Kapitel 2 Siggener Impulse "Disinformation"; Quelle: research/10 Kapitel 6)
**Strategisches Ziel:** Den "Schutzkern" der wissenschaftlichen Aussage verteidigen — sachlich, faktenbasiert und ohne Polemik auf bestrittene Befunde reagieren und dabei die methodische Grundlage transparent machen.
**Hands-on Ergebnis:** Ein abgestuftes Reaktions-Statement (Kurzversion + ausführliche Version) mit methodischer Klarstellung und ehrlicher Caveat-Einordnung.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Studie und den öffentlich vorgebrachten Einwand in den Agenten laden.
2. Den Einwand sachlich gegen die eigene Methodik und Daten spiegeln lassen.
3. Ein zweistufiges Statement (3-Satz-Kurzfassung + ausführliche Klarstellung) erzeugen lassen.
4. Statement durch Fachautorin und Kommunikationsleitung freigeben, bevor es nach außen geht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Krisenkommunikator am IW Köln. TASK: Verfasse eine Reaktion auf den angehängten öffentlichen Einwand gegen unsere Studie. CONTEXT: sachlich, ohne Polemik, methodisch transparent. FORMAT: (1) 3-Satz-Kurzstatement, (2) ausführliche Klarstellung mit Verweis auf Methodik und ehrlicher Einordnung verbleibender Unsicherheiten. Nur belegte Daten verwenden; keine Gegen-Angriffe."
**Erwartetes Artefakt:** Ein zweistufiges Reaktions-Statement (Canvas), freigabebereit.
**Fallstricke (≥2 spezifisch):**
- Das Statement wird defensiv-polemisch und verletzt den Neutralitätsanspruch → Ton hart auf sachlich begrenzen; keine Herabsetzung der Gegenseite.
- Caveats werden verschwiegen, um stärker zu wirken → Verbleibende Unsicherheiten ehrlich benennen, statt Überlegenheit zu suggerieren.
**Anschluss-Szenario:** S-TT-020

### S-TT-020 Thought-Leadership-Ghostwriting aus Interview-Transkripten

**Wann nutzen (Trigger):** Aus einem Interview- oder Podcast-Transkript eines IW-Ökonomen soll ein Thought-Leadership-Beitrag (Op-Ed/LinkedIn) in dessen authentischer Stimme entstehen. (Quelle: research/10 Kapitel 4, 9; Quelle: research/11 Kapitel 5)
**Strategisches Ziel:** Die Personal-Branding-Strecke der Leitung speisen — gesprochene Substanz in einen authentischen, sachlich-ordnungspolitischen Beitrag überführen, ohne Befunde zu erfinden.
**Hands-on Ergebnis:** Ein Thought-Leadership-Entwurf (ca. 600 Wörter) in der Stimme des Ökonomen, mit klarem Argument und ohne erfundene Daten.
**Eingesetzte Langdock-Fähigkeit(en):** Agent mit Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Transkript und einschlägige Studie in den Agenten laden.
2. Die Kernthese und drei tragende Argumente aus dem Transkript extrahieren lassen.
3. Beitrag in der dokumentierten Stimme des Ökonomen verfassen lassen (sachlich, keine Emojis, ordnungspolitisch).
4. Entwurf im Canvas abstimmen und durch die Person freigeben lassen, in deren Namen er erscheint.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Ghostwriter am IW Köln. TASK: Erstelle aus dem angehängten Interview-Transkript einen Op-Ed von 600 Wörtern in der Stimme des Ökonomen. CONTEXT: sachlich, ordnungspolitisch, keine Emojis, formelles Register. FORMAT: konträre, belegte These als Einstieg; drei tragende Argumente; Schluss mit klarer Empfehlung. Verwende nur Aussagen und Daten aus Transkript und verlinkter Studie."
**Erwartetes Artefakt:** Ein Op-Ed/LinkedIn-Beitrag (Canvas, ca. 600 Wörter), freigabebereit durch den Ökonomen.
**Fallstricke (≥2 spezifisch):**
- Das Modell legt dem Ökonomen Aussagen oder Zahlen in den Mund, die er nicht getroffen hat → Geltung strikt auf Transkript und Studie begrenzen; Freigabe durch die Person zwingend.
- Generischer "LinkedIn-Broetry"-Ton trifft die Stimme nicht → Drei Negativbeispiele ("klingt NICHT wie unser Ökonom") im System-Prompt verankern. Schließt zurück zu S-TT-001, wenn der Beitrag eine neue Studienübersetzung anstößt.
**Anschluss-Szenario:** S-TT-001
