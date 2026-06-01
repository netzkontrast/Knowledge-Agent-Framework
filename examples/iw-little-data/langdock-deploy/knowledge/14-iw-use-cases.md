# IW-Anwendungsfälle — Little Data im Kommunikationsalltag des IW Köln

> **Was diese Datei abdeckt:**
> - 20 konkrete Anwendungsfälle der IW-Kommunikation mit Little Data (Studien-Aufbereitung, Presse, iwd, Social, Stakeholder).
> - Geerdet im IW-Organisationsprofil (research/10).
>
> **Was diese Datei NICHT abdeckt:**
> - Allgemeine Langdock-Mechanik (dafür: 00–10) · Glossar/FAQ (15) · Branchen-Praxis (17) · Onboarding (16).

## Marketing-Szenarien aus dieser Domäne

Die folgenden Szenarien übertragen die generische Langdock-Praxis (00–10) auf die spezifische Kommunikations-Realität des Instituts der deutschen Wirtschaft. Sie folgen dem dokumentierten Content-Funnel des IW — Forschung, Aufbereitung/Übersetzung, Distribution, Social-Amplifikation — und respektieren in jedem Schritt den Neutralitätsanspruch des Instituts: keine Zuspitzung über die Datenlage hinaus, konsequente Quellenangabe der zugrunde liegenden Studie, transparente Kennzeichnung von Unsicherheit. Little Data berät und entwirft; jede nach außen gerichtete Handlung — Presseversand, Social-Veröffentlichung, Versand an Journalisten — wird von einem Menschen freigegeben (Human-in-the-Loop). Die Tonalität bleibt durchgehend sachlich, evidenzbasiert und ordnungspolitisch konsistent, wie es das Leitbild der Sozialen Marktwirtschaft verlangt.

### S-IW-001 Pressemitteilung aus einem IW-Report

**Wann nutzen (Trigger):** Ein Themencluster hat einen IW-Report (etwa zur Einkommensverteilung) finalisiert, und die Presseabteilung muss daraus innerhalb weniger Stunden eine 300-Wörter-Pressemitteilung für die Tagespresse und Nachrichtenagenturen formulieren. (Quelle: research/10 §7 Content-Workflow; §3 IW-Report)
**Strategisches Ziel:** Die Kernbotschaft und die ordnungspolitische Einordnung des Reports so aufbereiten, dass sie sofort nachrichtenwert ist, ohne die methodischen Grenzen der Studie zu verschleiern.
**Hands-on Ergebnis:** Ein Pressemitteilungs-Entwurf mit journalistischer Überschrift, Lead-Absatz, zwei Belegabsätzen und einem vorformulierten Zitatplatz für den Lead-Autor.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Den finalen Report-PDF in einen dedizierten Wissensordner laden und den auffälligsten, belastbaren Datenpunkt als Lead identifizieren lassen.
2. Entwurf der Pressemitteilung im Canvas generieren — Überschrift, Lead, Beleg, Einordnung.
3. Quellenzeile und Studientitel zwingend in den Fuß setzen; jede Zahl auf die Report-Tabelle zurückführen lassen.
4. Entwurf zur menschlichen Freigabe an die Pressestelle übergeben; Versand erst nach Gegenzeichnung.
**Beispiel-Prompt (DE, PTCF):**
> "Du unterstützt die Pressestelle des IW Köln. Im verknüpften Ordner liegt der finale IW-Report. Entwirf eine Pressemitteilung von maximal 300 Wörtern: journalistische Überschrift, Lead-Absatz mit dem stärksten belastbaren Datenpunkt, zwei Belegabsätze und ein Platzhalter für ein Autoren-Zitat. Tonalität sachlich und evidenzbasiert, keine Zuspitzung über die Daten hinaus. Nenne im Fuß den exakten Studientitel als Quelle und markiere jede Zahl, deren Herkunft im Report nicht eindeutig belegt ist."
**Erwartetes Artefakt:** Ein freigabebereiter Pressemitteilungs-Entwurf (Markdown, ca. 300 Wörter) mit Quellenzeile und markierten Unsicherheiten.
**Fallstricke (≥2 spezifisch):**
- Das Modell formuliert eine reißerische Schlagzeile, die der IW-Neutralität widerspricht → Im Prompt "keine Alarmismus-Rhetorik, statistische Schwere statt Dramatik" hart vorgeben.
- Eine Zahl wird aus dem Kontext gerissen und überdehnt → Verlangen, dass jede Kennzahl mit Seitenverweis auf den Report belegt wird; nicht belegbare Zahlen streichen.
**Anschluss-Szenario:** S-IW-002

### S-IW-002 iwd-Artikel aus einer Studie (Fachsprache → allgemeinverständlich)

**Wann nutzen (Trigger):** Die iwd-Redaktion soll eine 20-seitige IW-Analyse in einen 400-Wörter-Artikel für die breite Öffentlichkeit übersetzen — akademische Vorbehalte raus, aktive Verben rein, der überraschendste Datenpunkt nach vorn. (Quelle: research/10 §6 "Translating"-Rolle des iwd; §3 iwd)
**Strategisches Ziel:** Die ordnungspolitische Kernbotschaft über den Medienwechsel retten und gleichzeitig die Lesbarkeit (Flesch) deutlich erhöhen, ohne die Aussage zu verfälschen.
**Hands-on Ergebnis:** Ein iwd-tauglicher Artikelentwurf mit zugänglicher Überschrift, klarem Takeaway im ersten Absatz und drei verständlichen Belegpunkten.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Die finale Analyse in den Wissensordner laden und die drei Kernbotschaften extrahieren lassen.
2. Den überraschendsten belastbaren Datenpunkt in den Lead-Absatz heben.
3. Akademische Caveats in klare, aber korrekte Alltagssprache überführen — ohne die Aussage zu überdehnen.
4. Entwurf der iwd-Redaktion zur redaktionellen Freigabe vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Redakteur des iwd ('Wirtschaft verständlich erklärt'). Übersetze die verknüpfte IW-Analyse in einen Artikel von höchstens 400 Wörtern für die breite Öffentlichkeit. Beginne mit dem überraschendsten, belegbaren Befund. Nutze aktive Verben und kurze Sätze, ersetze Fachjargon durch Alltagssprache, aber verfälsche die Aussage nicht. Behalte die ordnungspolitische Einordnung bei. Nenne am Ende die Studie als Quelle."
**Erwartetes Artefakt:** Ein iwd-Artikelentwurf (ca. 400 Wörter) mit Quellenhinweis, bereit zur redaktionellen Prüfung.
**Fallstricke (≥2 spezifisch):**
- Beim Vereinfachen fallen wichtige Einschränkungen weg und die Aussage wird falsch → Verlangen, dass kritische Caveats in einem Satz erhalten bleiben statt ersatzlos gestrichen zu werden.
- Das Modell erfindet eingängige, aber unbelegte Beispiele → Zero-Fabrication-Regel: nur Inhalte aus der Studie, keine zusätzlichen Anekdoten.
**Anschluss-Szenario:** S-IW-003

### S-IW-003 LinkedIn-Posts aus einer Studie

**Wann nutzen (Trigger):** Nach Veröffentlichung eines IW-Policy-Papers soll der Kanal des Kommunikationsleiters einen debattenorientierten LinkedIn-Beitrag erhalten, der Fachpeers und Politik direkt anspricht. (Quelle: research/10 §4 LinkedIn-Strategie; §3 IW-Policy-Paper)
**Strategisches Ziel:** Thought-Leadership-Sichtbarkeit für die ordnungspolitische Position des IW erzeugen, ohne in werblichen oder polarisierenden Ton zu verfallen.
**Hands-on Ergebnis:** Ein formeller, debattenorientierter LinkedIn-Entwurf (ca. 200 Wörter) mit These, Beleg und offener Frage ans Fachpublikum.
**Eingesetzte Langdock-Fähigkeit(en):** Agenten, Canvas
**Vorgehen (3 Schritte):**
1. Kernforderung des Policy-Papers und den stärksten Beleg als Kontext an den Agenten übergeben.
2. Entwurf generieren — formelle "Sie"-Ansprache, sachlicher Debattenton, abschließende Frage an die Fachcommunity.
3. Entwurf im Canvas prüfen und zur persönlichen Freigabe durch den Kanalinhaber bereitstellen; Veröffentlichung nur durch ihn.
**Beispiel-Prompt (DE, PTCF):**
> "Du formulierst LinkedIn-Beiträge für den Kommunikationsleiter des IW Köln. Erstelle aus der Kernforderung des angehängten IW-Policy-Papers einen Beitrag von maximal 200 Wörtern. Tonalität: professionell, debattenorientiert, formelles 'Sie', keine Emojis, keine Superlative. Beginne mit einer These, belege sie mit genau einer Kennzahl aus der Studie und schließe mit einer offenen Frage an Fachkolleginnen und Politik. Nenne die Studie als Quelle."
**Erwartetes Artefakt:** Ein LinkedIn-Entwurf (ca. 200 Wörter) mit Quellenangabe, bereit zur Freigabe durch den Kanalinhaber.
**Fallstricke (≥2 spezifisch):**
- Generischer "LinkedIn-Broetry"-Tonfall mit leeren Floskeln → Drei Negativbeispiele ("klingt NICHT wie das IW") im System-Prompt verankern.
- Der Beitrag driftet in parteipolitische Wertung ab → Institutionelle Zurückhaltung erzwingen: Aussagen als Deduktion aus Daten rahmen, nicht als Meinung.
**Anschluss-Szenario:** S-IW-004

### S-IW-004 Grafik- und Chart-Briefing aus Studiendaten

**Wann nutzen (Trigger):** Aus einer datenreichen IW-Analyse mit Excel- oder LaTeX-Tabellen muss das IW-Medien-Grafikteam zwei Infografiken bauen — die Kommunikation soll vorab entscheiden, welche zwei Variablen die stärkste, verständliche Aussage ergeben. (Quelle: research/10 §7 Grafik-Konzeption; §4 Instagram @iwd_de)
**Strategisches Ziel:** Das aussagekräftigste Variablenpaar identifizieren und ein präzises Chart-Briefing liefern, das Revisionsschleifen mit dem Grafikteam reduziert.
**Hands-on Ergebnis:** Ein Briefing mit Chart-Typ-Empfehlung, Variablenauswahl, Kernaussage je Grafik und Zielkanal (Instagram-Kachel vs. LinkedIn).
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Chat
**Vorgehen (4 Schritte):**
1. Die strukturierte Tabelle als CSV in den Data Analyst laden (nicht in den RAG-Wissensordner).
2. Die zwei Variablen mit dem stärksten, klar erzählbaren Kontrast bestimmen lassen.
3. Chart-Typ (Balken, Linie, Streudiagramm) je Zielkanal empfehlen und Kernaussage in einem Satz festhalten.
4. Briefing an das Grafikteam übergeben; finale Gestaltung und Freigabe liegen bei IW Medien.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Daten-Kommunikator beim IW. Im Data Analyst liegt eine Tabelle aus einer IW-Analyse. Bestimme die zwei Variablen, die für eine breite Zielgruppe den stärksten, korrekten Kontrast ergeben. Empfiehl je einen Chart-Typ für eine Instagram-Kachel und einen LinkedIn-Beitrag, formuliere die Kernaussage je Grafik in einem Satz und nenne die Achsenbeschriftungen. Keine irreführenden Achsenkürzungen vorschlagen."
**Erwartetes Artefakt:** Ein Chart-Briefing (Markdown) mit Variablenauswahl, Chart-Typ, Kernaussage und Quellenverweis je Grafik.
**Fallstricke (≥2 spezifisch):**
- Multi-Sheet-Excel im RAG-Wissensordner führt zu Lesefehlern → Tabellarische Daten ausschließlich im Data Analyst verarbeiten.
- Vorschlag einer manipulativen Achsen-Skalierung, die die Aussage überzeichnet → Explizit eine ehrliche, bei Null beginnende Skala und korrekte Bezugsgrößen fordern.
**Anschluss-Szenario:** S-IW-005

### S-IW-005 Newsletter-Zusammenstellung

**Wann nutzen (Trigger):** Zum Wochenende muss aus den veröffentlichten IW-Nachrichten, Kurzberichten und Medienauftritten ein Teaser-Newsletter für den iwd-Verteiler und den IW-Trends-Verteiler zusammengestellt werden. (Quelle: research/10 §4 Newsletter & RSS; §9 Task 9 Newsletter-Kuratierung)
**Strategisches Ziel:** Die Assemblierzeit deutlich senken und für jeden Verteiler die passende Tonalität treffen — journalistisch für iwd, wissenschaftlich für IW-Trends.
**Hands-on Ergebnis:** Zwei Teaser-Sets mit je Titel, Zweizeiler und Link-Platzhalter, getrennt nach Zielgruppe.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Die Woche der veröffentlichten Beiträge (Titel, Kurzfassung, Links) als Liste in den Kontext geben.
2. Teaser für den iwd-Verteiler generieren — journalistisch, zugänglich, nachrichtenwert-fokussiert.
3. Teaser für den IW-Trends-Verteiler erzeugen — sachlich, methodisch, ohne Vereinfachung.
4. Beide Sets an die Newsletter-Redaktion zur Freigabe übergeben; Versand erst nach Gegenzeichnung.
**Beispiel-Prompt (DE, PTCF):**
> "Du kuratierst die IW-Newsletter. Hier ist die Liste der diese Woche veröffentlichten Beiträge. Erzeuge zwei getrennte Teaser-Sets: (1) für den iwd-Verteiler journalistisch und allgemeinverständlich, (2) für den IW-Trends-Verteiler sachlich-wissenschaftlich. Pro Beitrag: Titel, ein bis zwei Zeilen Teaser, Link-Platzhalter. Keine Übertreibungen, behalte je den Originaltitel der Studie als Quelle bei."
**Erwartetes Artefakt:** Zwei Teaser-Sets (Markdown) mit Titel, Teaser und Link-Platzhalter je Beitrag und Verteiler.
**Fallstricke (≥2 spezifisch):**
- iwd- und IW-Trends-Tonalität verschwimmen zu einem Einheitsbrei → Beide Register im Prompt scharf trennen und je ein Beispiel vorgeben.
- Veraltete Links oder falsch zugeordnete Studien → Link-Platzhalter statt erfundener URLs verwenden; Zuordnung manuell prüfen.
**Anschluss-Szenario:** S-IW-006

### S-IW-006 Policy-Brief / Stellungnahme-Entwurf für Ministerien und Bundestag

**Wann nutzen (Trigger):** Ein Gesetzesvorhaben steht zur Anhörung an, und das Hauptstadtbüro braucht aus vorhandener IW-Forschung einen zweiseitigen Policy-Brief mit konkreten, ordnungspolitischen Handlungsempfehlungen für Abgeordnete und Ministerialbeamte. (Quelle: research/10 §5 Policymakers; §9 Task 6 Executive Summaries)
**Strategisches Ziel:** Empirische Argumente als legislative Munition bereitstellen und die konkreten Empfehlungen an die Spitze des Dokuments ziehen.
**Hands-on Ergebnis:** Ein strukturierter Policy-Brief mit Empfehlungen oben, gefolgt von Evidenz und ordnungspolitischer Einordnung.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Die relevanten IW-Studien zum Thema in einen Wissensordner laden.
2. Drei konkrete, ordnungspolitisch konsistente Handlungsempfehlungen ableiten und nach oben stellen.
3. Jede Empfehlung mit genau einem belastbaren Datenpunkt aus den Studien unterlegen.
4. Brief im Canvas finalisieren und vom Hauptstadtbüro freigeben lassen, bevor er an Adressaten geht.
**Beispiel-Prompt (DE, PTCF):**
> "Du unterstützt das Berliner Hauptstadtbüro des IW. Erstelle aus den verknüpften IW-Studien einen zweiseitigen Policy-Brief für Abgeordnete. Struktur: drei konkrete Handlungsempfehlungen ganz oben (im Sinne der Sozialen Marktwirtschaft), darunter je ein belegender Datenpunkt mit Quellenangabe, abschließend eine kurze ordnungspolitische Einordnung. Sachlich, prägnant, kein Alarmismus. Markiere offene Forschungsfragen als solche."
**Erwartetes Artefakt:** Ein zweiseitiger Policy-Brief (Markdown) mit priorisierten Empfehlungen, Belegen und Quellen.
**Fallstricke (≥2 spezifisch):**
- Empfehlungen gehen über die Datenlage hinaus → Jede Empfehlung muss durch eine zitierbare Studie gedeckt sein; ungedeckte Aussagen entfernen.
- Der Brief liest sich wie Lobbyismus statt evidenzbasierte Beratung → Schlussfolgerungen als Ableitung aus Daten rahmen, nicht als ideologische Forderung.
**Anschluss-Szenario:** S-IW-007

### S-IW-007 O-Ton- und Zitat-Vorschläge für Forschende

**Wann nutzen (Trigger):** Für die Pressemitteilung zu einem Kurzbericht braucht die Pressestelle drei Zitatvarianten, die der Lead-Autor freigeben kann — sachlich, prägnant, soundbite-tauglich für Tagespresse und Radio. (Quelle: research/10 §5 Media & Journalists; §9 Task 2 Pressemitteilungen)
**Strategisches Ziel:** Dem Forschenden Formulierungsarbeit abnehmen und gleichzeitig die ordnungspolitische Linie sowie die wissenschaftliche Vorsicht wahren.
**Hands-on Ergebnis:** Drei Zitatvarianten unterschiedlicher Schärfe, jeweils belegbar durch die Studie und freigabebereit.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Chat
**Vorgehen (3 Schritte):**
1. Kernbefund des Kurzberichts und die zentrale Einordnung als Kontext bereitstellen.
2. Drei Zitatvarianten generieren — nüchtern, mittel, pointiert —, alle innerhalb der Datenlage.
3. Varianten dem Forschenden zur Auswahl und persönlichen Freigabe vorlegen; nur autorisierte Zitate verwenden.
**Beispiel-Prompt (DE, PTCF):**
> "Du formulierst Zitatvorschläge für eine IW-Autorin. Erzeuge aus dem Kernbefund des angehängten IW-Kurzberichts drei Zitatvarianten von je maximal zwei Sätzen: eine nüchtern-beschreibende, eine mittlere, eine pointierte. Alle müssen durch die Studie gedeckt sein, sachlich bleiben und dürfen nicht über die Daten hinausgehen. Kennzeichne, falls eine Variante eine Unsicherheit benennen sollte."
**Erwartetes Artefakt:** Drei freigabebereite Zitatvarianten mit Kennzeichnung der jeweiligen Aussageschärfe.
**Fallstricke (≥2 spezifisch):**
- Die pointierte Variante überdehnt die Aussage zur Schlagzeile → Auch die schärfste Variante muss durch einen konkreten Datenpunkt belegbar bleiben.
- Zitat wird ohne Autoren-Freigabe versendet → Strikte Regel: kein O-Ton ohne persönliche Autorisierung des Forschenden.
**Anschluss-Szenario:** S-IW-008

### S-IW-008 Sperrfrist- und Embargo-Kommunikationsplan für einen Studien-Launch

**Wann nutzen (Trigger):** Ein IW-Report wird unter Sperrfrist exklusiv an Top-Journalisten gegeben; das Team braucht einen abgestimmten Embargo-Zeitplan mit Pressekit-Komponenten und einer Eskalationsregel für Sperrfristbrüche. (Quelle: research/10 §4 Media Relations, Pressekit & Embargo; §7 Distribution)
**Strategisches Ziel:** Exklusive Berichterstattung zum Launch sichern und Risiken aus Sperrfristbrüchen kontrolliert handhaben.
**Hands-on Ergebnis:** Ein Embargo-Plan mit Timeline, Verteiler-Tranchen, Pressekit-Checkliste und Reaktionsregel bei Bruch.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Canvas
**Vorgehen (4 Schritte):**
1. Launch-Datum, Sperrfristzeitpunkt und Zielmedien als Rahmen vorgeben.
2. Timeline mit Vorab-Tranche (Embargo), öffentlichem Versand und Social-Welle entwerfen lassen.
3. Pressekit-Checkliste erstellen (Sperrfrist-Report, vorformulierte Statements, Grafiken, Kontaktnummern).
4. Plan im Canvas finalisieren und von der Kommunikationsleitung freigeben lassen; Journalisten-Ansprache erst nach Freigabe.
**Beispiel-Prompt (DE, PTCF):**
> "Du planst den Launch eines IW-Reports unter Sperrfrist. Erstelle einen Embargo-Kommunikationsplan: Timeline mit Vorab-Tranche an ausgewählte Journalisten, öffentlichem Versand zum Sperrfristende und anschließender Social-Welle. Ergänze eine Pressekit-Checkliste (Sperrfrist-PDF, vorformulierte Statements, hochauflösende Grafiken, direkte Kontaktnummern der Ökonomen) und eine klare Regel, wie das Team auf einen Sperrfristbruch reagiert."
**Erwartetes Artefakt:** Ein Embargo-Plan (Markdown) mit Timeline-Tabelle, Pressekit-Checkliste und Eskalationsregel.
**Fallstricke (≥2 spezifisch):**
- Sperrfristzeitpunkt und Social-Posts kollidieren, Inhalte gehen zu früh raus → Social-Welle erst nach Sperrfristende terminieren und im Plan hart als Abhängigkeit markieren.
- Pressekit ohne direkte Erreichbarkeit der Ökonomen → Kontaktnummern und Ansprechpartner als Pflichtfeld der Checkliste führen.
**Anschluss-Szenario:** S-IW-009

### S-IW-009 Kurzzusammenfassung eines Gutachtens für die Geschäftsführung

**Wann nutzen (Trigger):** Ein umfangreiches IW-Gutachten (Buchformat, Auftragsforschung) liegt vor, und die Geschäftsführung braucht bis zur nächsten Sitzung eine zweiseitige, strukturierte Kurzfassung mit den Kernaussagen und Handlungsbezügen. (Quelle: research/10 §3 IW-Gutachten; §9 Task 6 Executive Summaries)
**Strategisches Ziel:** Die wesentlichen Befunde und ihre strategische Relevanz schnell entscheidungsreif aufbereiten, ohne methodische Einschränkungen zu unterschlagen.
**Hands-on Ergebnis:** Eine zweiseitige, gegliederte Management-Zusammenfassung mit Befunden, offenen Fragen und Relevanz für das IW.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Das Gutachten in den Wissensordner laden und die Kernaussagen sowie zentralen Belege extrahieren.
2. Zusammenfassung mit Bullet-Struktur erstellen — Befunde, Annahmen, Limitationen.
3. Strategische Relevanz und mögliche Anschlusskommunikation kurz benennen.
4. Entwurf der Geschäftsführung vorlegen; finale Bewertung bleibt bei der Leitung.
**Beispiel-Prompt (DE, PTCF):**
> "Du fasst ein IW-Gutachten für die Geschäftsführung zusammen. Erstelle eine zweiseitige, strukturierte Kurzfassung: zentrale Befunde als Bullet-Liste, zugrunde liegende Annahmen, methodische Limitationen explizit benannt, und eine kurze Einschätzung der strategischen Relevanz für das Institut. Sachlich, ohne Wertung über die Daten hinaus. Quellenverweis auf das Gutachten am Ende."
**Erwartetes Artefakt:** Eine zweiseitige Management-Zusammenfassung (Markdown) mit Befunden, Limitationen und Relevanz.
**Fallstricke (≥2 spezifisch):**
- Limitationen des Gutachtens werden weggekürzt und die Befunde wirken sicherer als sie sind → Methodische Einschränkungen als Pflichtabschnitt erzwingen.
- Bei Auftragsforschung wird der Auftraggeberkontext ignoriert → Im Entwurf vermerken, dass es sich um beauftragte Forschung handelt, sofern relevant für die Einordnung.
**Anschluss-Szenario:** S-IW-010

### S-IW-010 Media-Monitoring der wirtschaftspolitischen Debatte

**Wann nutzen (Trigger):** Nach einer IW-Veröffentlichung will das Team wissen, wie die eigenen Datenpunkte in der wirtschaftspolitischen Debatte aufgegriffen — oder von Politik und Gewerkschaften umgedeutet — werden. (Quelle: research/10 §7 Media Monitoring; §5 Stakeholder)
**Strategisches Ziel:** Die Rezeption der IW-Daten nachvollziehen, Fehlnutzungen früh erkennen und Reaktionsbedarf bewerten.
**Hands-on Ergebnis:** Ein Monitoring-Bericht mit Fundstellen, Tonalität, korrekter vs. verzerrter Nutzung und Handlungsempfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Deep Research, Chat
**Vorgehen (4 Schritte):**
1. Die zentralen Kennzahlen und Kernaussagen der Studie als Suchanker definieren.
2. Deep Research auf die jüngste Berichterstattung und politische Statements ansetzen.
3. Fundstellen nach korrekter Nutzung, verkürzter Nutzung und Fehlnutzung clustern lassen.
4. Bericht mit Handlungsempfehlung an die Kommunikationsleitung übergeben; etwaige Richtigstellungen nur nach Freigabe.
**Beispiel-Prompt (DE, PTCF):**
> "Du beobachtest die wirtschaftspolitische Debatte für das IW. Führe einen Deep Research durch, wie unsere folgenden Kennzahlen [Liste] in den letzten zwei Wochen in Medien und politischen Statements aufgegriffen wurden. Clustere die Fundstellen in 'korrekt zitiert', 'verkürzt' und 'verzerrt/fehlgenutzt'. Benenne pro Cluster Beispiele mit Quelle und gib eine nüchterne Empfehlung, ob und wo eine sachliche Richtigstellung angebracht wäre."
**Erwartetes Artefakt:** Ein Monitoring-Bericht (Markdown) mit Fundstellen-Tabelle, Cluster-Bewertung und Empfehlung.
**Fallstricke (≥2 spezifisch):**
- Deep Research kann mehrere Minuten dauern und ist limitiert → Das Team einplanen lassen und die Suchanker eng fassen, um Läufe zu sparen.
- Quellen werden halluziniert oder falsch zitiert → Jede Fundstelle muss mit verifizierbarer URL belegt sein; unbelegte Treffer verwerfen.
**Anschluss-Szenario:** S-IW-011

### S-IW-011 Zielgruppenspezifische Botschaften (Politik vs. Presse vs. Wirtschaft)

**Wann nutzen (Trigger):** Ein einziger Befund zu Tarif- oder Lohndaten muss in drei Versionen ausgespielt werden — Politik-Newsletter (Policy-Wirkung), Presse (Nachrichtenwert), Arbeitgeberverbände (Wettbewerbsfähigkeit). (Quelle: research/10 §7 Audience adjustment; §10 Task 10 Target Audience Adaptation)
**Strategisches Ziel:** Denselben Kern faktentreu für drei Stakeholder framen, ohne die Aussage je nach Publikum zu verbiegen.
**Hands-on Ergebnis:** Drei zielgruppengerechte Kurztexte mit identischer Faktenbasis, aber unterschiedlichem Fokus.
**Eingesetzte Langdock-Fähigkeit(en):** Agenten, Wissensordner
**Vorgehen (3 Schritte):**
1. Den Kernbefund und die belastbaren Zahlen einmal sauber als Single Source of Truth festhalten.
2. Drei Varianten erzeugen — Politik (systemische Wirkung), Presse (Nachrichtenwert), Wirtschaft (Standort/Kosten).
3. Konsistenz-Check: alle drei müssen auf derselben Datenlage fußen; danach Freigabe je Kanal.
**Beispiel-Prompt (DE, PTCF):**
> "Du adaptierst einen IW-Befund für drei Zielgruppen. Hier ist der Kernbefund mit Zahlen. Erzeuge drei Kurztexte von je 120 Wörtern: (1) Politik-Newsletter mit Fokus auf legislative Wirkung, (2) Presse mit Fokus auf Nachrichtenwert, (3) Arbeitgeberverbände mit Fokus auf Wettbewerbsfähigkeit und Kostenlast. Die Faktenbasis muss in allen drei identisch sein. Keine Aussage darf je nach Publikum die Daten verbiegen. Quelle nennen."
**Erwartetes Artefakt:** Drei Kurztexte (je ca. 120 Wörter) mit identischer Faktenbasis und kanalgerechtem Fokus.
**Fallstricke (≥2 spezifisch):**
- Das Modell überdehnt die Aussage in der Wirtschafts-Variante zugunsten der Geldgeber → Neutralitäts-Check: Kern und Zahlen müssen in allen drei Versionen deckungsgleich sein.
- Drei Versionen widersprechen sich in Details → Single Source of Truth zuerst fixieren, dann erst variieren.
**Anschluss-Szenario:** S-IW-012

### S-IW-012 FAQ zu einer kontroversen Studie

**Wann nutzen (Trigger):** Eine Studie zu einem umstrittenen Thema (etwa Mindestlohn oder Vermögensverteilung) löst kritische Rückfragen aus; das Team braucht ein internes FAQ mit belegten, sachlichen Antworten auf die zu erwartenden Einwände. (Quelle: research/10 §6 Neutralität vs. Arbeitgebernähe; §5 Media)
**Strategisches Ziel:** Sprechfähigkeit herstellen, methodische Angriffe vorwegnehmen und die Neutralitäts-Firewall (SOEP, Langzeitdaten) sichtbar machen.
**Hands-on Ergebnis:** Ein FAQ mit den härtesten erwartbaren Fragen und belegten, ruhigen Antworten plus Quellenverweisen.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Studie und Methodenteil in den Wissensordner laden.
2. Die zehn kritischsten, auch unbequemen Fragen antizipieren lassen (Red-Team-Logik).
3. Antworten ausschließlich aus der Studie und ihren Datenquellen formulieren; Unsicherheiten offen benennen.
4. FAQ der Pressestelle und dem Autor zur Freigabe vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bereitest ein internes FAQ zu einer kontroversen IW-Studie vor. Antizipiere die zehn kritischsten Fragen von Journalisten und Kritikern, auch unbequeme zu möglicher Arbeitgebernähe. Formuliere zu jeder eine sachliche, belegte Antwort ausschließlich auf Basis der Studie und der verwendeten Datenquellen (z.B. SOEP). Wo die Datenlage Grenzen hat, benenne die Unsicherheit offen statt sie zu überspielen. Nenne je die Quelle."
**Erwartetes Artefakt:** Ein internes FAQ (Markdown) mit zehn Frage-Antwort-Paaren inklusive Quellen und offen benannten Unsicherheiten.
**Fallstricke (≥2 spezifisch):**
- Defensive Antworten verschweigen die Auftraggebernähe und wirken unglaubwürdig → Transparenz über Finanzierung und Methodik als bewusste Stärke einbauen.
- Das Modell erfindet beschwichtigende Zahlen → Zero-Fabrication: nur Werte aus der Studie; fehlende Belege als "nicht belegbar" markieren.
**Anschluss-Szenario:** S-IW-013

### S-IW-013 Übersetzung DE↔EN eines IW-Reports

**Wann nutzen (Trigger):** Für die englische Website (iwkoeln.de/en) muss eine Pressemitteilung oder ein Abstract übersetzt werden, inklusive spezifischer ordnungspolitischer Termini wie "Tarifautonomie" oder "Allgemeinverbindlichkeitserklärung". (Quelle: research/10 §7 Bilingual demands; §9 Task 7 Bilingual Translation)
**Strategisches Ziel:** Eine idiomatische, fachlich präzise englische Fassung erstellen, die die ordnungspolitischen Konzepte korrekt überträgt.
**Hands-on Ergebnis:** Eine englische Übersetzung mit konsistenter Verwendung der IW-Glossar-Terminologie und markierten Zweifelsfällen.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (IW-Glossar), Chat
**Vorgehen (3 Schritte):**
1. Das IW-Terminologie-Glossar als Wissensordner verknüpfen und den Ausgangstext bereitstellen.
2. Übersetzung mit zwingender Nutzung der freigegebenen Term-Entsprechungen generieren.
3. Zweifelsfälle markieren lassen und an einen fachkundigen Menschen zur Endredaktion geben.
**Beispiel-Prompt (DE, PTCF):**
> "Du übersetzt eine IW-Pressemitteilung ins Englische für iwkoeln.de/en. Nutze ausschließlich die im verknüpften Glossar hinterlegten englischen Entsprechungen für Begriffe wie 'Soziale Marktwirtschaft', 'Tarifautonomie' und 'Allgemeinverbindlichkeitserklärung'. Übersetze idiomatisch und fachlich präzise, keine generischen Anglizismen. Markiere jede Stelle, an der keine eindeutige Glossar-Entsprechung existiert, für die menschliche Endredaktion."
**Erwartetes Artefakt:** Eine englische Fassung mit glossarkonformer Terminologie und markierten Zweifelsfällen.
**Fallstricke (≥2 spezifisch):**
- Das Modell übersetzt Fachtermini frei und inkonsistent → Glossar als verbindliche Quelle verankern; freie Übersetzung der Kernbegriffe untersagen.
- Idiomatische Glättung verändert eine fachliche Aussage → Bei Bedeutungsverschiebung lieber wörtlicher bleiben und Stelle zur Prüfung markieren.
**Anschluss-Szenario:** S-IW-014

### S-IW-014 Veranstaltungs- und Pressekonferenz-Vorbereitung

**Wann nutzen (Trigger):** Für eine Berliner Pressekonferenz zu einer neuen Studie braucht das Hauptstadtbüro ein Briefing für die vortragenden Ökonomen — Kernbotschaften, erwartete kritische Fragen und belegte Antworten. (Quelle: research/10 §4 Events; §9 Task 8 Podcast/Briefing-Vorbereitung)
**Strategisches Ziel:** Die Sprecher auf das Agenda-Setting vorbereiten und auf kritische Fragen evidenzbasiert antwortfähig machen.
**Hands-on Ergebnis:** Ein Briefing mit drei Kernbotschaften, antizipierten kritischen Fragen und studiengestützten Antworten.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Chat
**Vorgehen (4 Schritte):**
1. Studie und geplante Botschaften in den Wissensordner laden.
2. Drei einprägsame, belegbare Kernbotschaften herausarbeiten.
3. Erwartbare kritische Fragen generieren und je eine evidenzbasierte Antwort aus der Studie ableiten.
4. Briefing den Sprechern zur Vorbereitung und Freigabe übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bereitest ein IW-Briefing für eine Pressekonferenz in Berlin vor. Aus der verknüpften Studie: formuliere drei prägnante, belegbare Kernbotschaften. Antizipiere anschließend die acht kritischsten Fragen von Wirtschaftsjournalisten und liefere zu jeder eine sachliche, durch die Studiendaten gedeckte Antwort. Benenne Unsicherheiten offen. Tonalität sachlich, ordnungspolitisch konsistent, kein Alarmismus."
**Erwartetes Artefakt:** Ein Pressekonferenz-Briefing (Markdown) mit Kernbotschaften und Q&A-Block samt Quellen.
**Fallstricke (≥2 spezifisch):**
- Vorbereitete Antworten überdehnen die Studie unter Erwartungsdruck → Jede Antwort an einen konkreten Datenpunkt binden; spekulative Antworten als solche kennzeichnen.
- Die schwierigsten Fragen werden ausgespart → Explizit die unbequemsten Fragen anfordern, nicht nur die naheliegenden.
**Anschluss-Szenario:** S-IW-015

### S-IW-015 Themen-Hub / Evergreen-Explainer

**Wann nutzen (Trigger):** Zu einem Dauerthema (etwa Fachkräftemangel oder Soziale Marktwirtschaft) soll ein verständlicher Evergreen-Explainer für iwd.de entstehen, der mehrere IW-Studien bündelt und langfristig SEO-relevant bleibt. (Quelle: research/10 §4 iwd.de SEO; §8 Kompetenzfelder)
**Strategisches Ziel:** Makroökonomische Grundbildung fördern und die ordnungspolitische Logik dauerhaft auffindbar erklären.
**Hands-on Ergebnis:** Ein strukturierter Explainer-Entwurf mit Definitionen, Daten aus mehreren IW-Studien und FAQ-Block.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Mehrere thematisch passende IW-Studien in einen Wissensordner laden.
2. Gemeinsame Kernaussagen und die wichtigsten Begriffe extrahieren.
3. Explainer-Struktur im Canvas aufbauen — Einleitung, Definitionen, Datenlage, FAQ.
4. Entwurf der iwd-Redaktion zur Freigabe vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du schreibst einen Evergreen-Explainer für iwd.de zum Thema Fachkräftemangel. Bündle die Kernaussagen der verknüpften IW-Studien zu einem allgemeinverständlichen Artikel von ca. 700 Wörtern: kurze Einleitung, klare Begriffsdefinitionen, die wichtigsten Datenpunkte mit Quellenangabe und ein FAQ-Block mit fünf Fragen. Aktive Sprache, kein Jargon, ordnungspolitische Einordnung beibehalten. Markiere veraltungsgefährdete Zahlen als aktualisierungsbedürftig."
**Erwartetes Artefakt:** Ein Evergreen-Explainer (ca. 700 Wörter) mit Definitionen, Belegen, FAQ und Quellen.
**Fallstricke (≥2 spezifisch):**
- Daten aus verschiedenen Studienjahrgängen werden vermischt und wirken aktueller als sie sind → Jede Zahl mit Studienjahr und Quelle ausweisen; Veraltungsrisiken markieren.
- SEO-Optimierung kippt in Keyword-Stuffing auf Kosten der Sachlichkeit → Lesbarkeit und Korrektheit priorisieren; Keywords nur natürlich einbinden.
**Anschluss-Szenario:** S-IW-016

### S-IW-016 Verteiler-gerechte Pitch-Personalisierung für Journalisten

**Wann nutzen (Trigger):** Vor dem Launch einer Studie mit regionalisierbaren Daten (etwa ein "Gemeindecheck") sollen einzelne Journalisten mit genau den für ihre Region relevanten Zahlen angepitcht werden. (Quelle: research/10 §4 lokalisierte Pressearbeit; §5 Media)
**Strategisches Ziel:** Exklusivität und Relevanz pro Journalist erzeugen, indem der jeweils passende Datenausschnitt in den Pitch wandert.
**Hands-on Ergebnis:** Personalisierte Pitch-Entwürfe mit regionalem Datenpunkt, Aufhänger und Angebot eines O-Tons.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Agenten
**Vorgehen (4 Schritte):**
1. Den regionalisierten Datensatz als CSV in den Data Analyst laden und je Region den relevantesten Wert ziehen.
2. Pitch-Vorlage mit Platzhaltern wie {{Region}}, {{Kennzahl}}, {{Aufhänger}} definieren.
3. Personalisierte Entwürfe je Journalist generieren lassen — kurz, relevant, mit O-Ton-Angebot.
4. Entwürfe der Pressestelle vorlegen; Versand an Journalisten erst nach menschlicher Freigabe.
**Beispiel-Prompt (DE, PTCF):**
> "Du personalisierst Journalisten-Pitches für eine IW-Studie mit regionalen Daten. Für jeden Journalisten in der Liste: ziehe aus dem Data Analyst den für seine Region relevantesten Datenpunkt und formuliere einen Pitch von maximal 90 Wörtern mit konkretem regionalem Aufhänger, der Sperrfrist und dem Angebot eines O-Tons. Formelles 'Sie', sachlich. Keine Region erhält erfundene Zahlen; bei fehlenden Daten Pitch ohne Regionalwert."
**Erwartetes Artefakt:** Personalisierte Pitch-Entwürfe je Journalist mit regionalem Datenpunkt und Sperrfristhinweis.
**Fallstricke (≥2 spezifisch):**
- Für Regionen ohne Datenpunkt wird ein Wert halluziniert → Strikte Regel: kein Pitch mit erfundener Regionalzahl; fehlende Werte leer lassen.
- Personalisierte Pitches gehen ohne Freigabe an den Verteiler → Versand an Journalisten zwingend mit menschlicher Gegenzeichnung.
**Anschluss-Szenario:** S-IW-017

### S-IW-017 Konjunkturprognose-Kommunikation

**Wann nutzen (Trigger):** Das IW veröffentlicht eine aktualisierte Konjunkturprognose, und die Kommunikation muss revidierte Zahlen gegenüber der Vorprognose einordnen — inklusive transparenter Darstellung der Unsicherheitsspannen. (Quelle: research/10 §8 Internationale Wirtschaftspolitik; §6 Brand Voice evidenzbasiert)
**Strategisches Ziel:** Die Prognoserevision nachvollziehbar kommunizieren, ohne Scheingenauigkeit zu suggerieren oder Unsicherheit zu verschweigen.
**Hands-on Ergebnis:** Ein Kommunikationspaket mit Kernzahl, Vergleich zur Vorprognose, Begründung der Revision und klar benannter Unsicherheit.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Chat
**Vorgehen (4 Schritte):**
1. Aktuelle und vorherige Prognosewerte als Tabelle in den Data Analyst laden.
2. Delta und Treiber der Revision herausarbeiten lassen.
3. Kommunikationstext mit Kernzahl, Vergleich und ausdrücklich benannter Prognoseunsicherheit entwerfen.
4. Paket an die Pressestelle zur Freigabe übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du kommunizierst eine revidierte IW-Konjunkturprognose. Vergleiche die aktuelle mit der vorherigen Prognose, benenne die Höhe und die Treiber der Revision und formuliere einen Kommunikationstext von 200 Wörtern. Stelle die Unsicherheitsspanne ausdrücklich dar und vermeide Scheingenauigkeit. Sachlich, evidenzbasiert, ordnungspolitisch konsistent. Quelle: aktuelle IW-Prognose."
**Erwartetes Artefakt:** Ein Prognose-Kommunikationstext (ca. 200 Wörter) mit Vorjahresvergleich und ausgewiesener Unsicherheit.
**Fallstricke (≥2 spezifisch):**
- Prognosewerte werden als sichere Tatsachen kommuniziert → Unsicherheitsspanne und Annahmen verpflichtend ausweisen.
- Die Revision wird dramatisiert ("Absturz", "Boom") → Neutrale, quantifizierte Formulierungen erzwingen statt wertender Schlagworte.
**Anschluss-Szenario:** S-IW-018

### S-IW-018 Jahresbericht-Bausteine

**Wann nutzen (Trigger):** Zum Jahresende müssen aus den über das Jahr veröffentlichten Studien, Medienauftritten und Veranstaltungen modulare Textbausteine für den IW-Jahresbericht zusammengestellt werden. (Quelle: research/10 §3 Publikationsformate; §7 wiederkehrende Aufgaben)
**Strategisches Ziel:** Die Jahresleistung des Instituts strukturiert und konsistent darstellen und Redundanzen über die Themencluster hinweg vermeiden.
**Hands-on Ergebnis:** Modulare Bausteine je Themencluster mit Highlights, Kennzahlen und Quellenverweisen, bereit zur Endredaktion.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Die Jahresübersicht (Studien, Auftritte, Events) je Themencluster in den Wissensordner laden.
2. Pro Cluster einen Baustein mit zwei bis drei Highlights und Belegen erstellen lassen.
3. Bausteine im Canvas zusammenführen und auf Dopplungen prüfen.
4. Entwurf an die Redaktion des Jahresberichts zur Freigabe übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du erstellst Bausteine für den IW-Jahresbericht. Fasse je Themencluster die wichtigsten Veröffentlichungen, Medienauftritte und Veranstaltungen des Jahres in einem Abschnitt von ca. 150 Wörtern zusammen: zwei bis drei Highlights mit konkreten Kennzahlen und Quellenverweis. Sachlich, ohne Eigenlob über die Belege hinaus. Markiere Stellen, an denen mir Daten zur Vervollständigung fehlen."
**Erwartetes Artefakt:** Modulare Jahresbericht-Bausteine je Cluster (Markdown) mit Highlights, Kennzahlen und Lücken-Markierungen.
**Fallstricke (≥2 spezifisch):**
- Selbstdarstellung kippt in werbliche Übertreibung → Aussagen an konkrete Veröffentlichungen und Zahlen binden; Superlative streichen.
- Dieselbe Studie taucht in mehreren Clustern auf → Im Canvas auf Redundanzen prüfen und eindeutig zuordnen.
**Anschluss-Szenario:** S-IW-019

### S-IW-019 Redaktionsplan aus dem politischen Kalender

**Wann nutzen (Trigger):** Für das kommende Quartal soll ein Redaktionsplan entstehen, der IW-Themen an den politischen Kalender (Haushaltsdebatte, Tarifrunden, EU-Termine) andockt, um anschlussfähige Veröffentlichungen rechtzeitig zu platzieren. (Quelle: research/10 §5 Policymakers; §8 Kompetenzfelder)
**Strategisches Ziel:** Agenda-Setting verbessern, indem IW-Forschung passgenau zu politischen Anlässen ausgespielt wird.
**Hands-on Ergebnis:** Ein Quartals-Redaktionsplan mit Datum, Anlass, passendem IW-Thema, Format und Zielkanal.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows, Chat
**Vorgehen (4 Schritte):**
1. Politische Termine des Quartals und verfügbare IW-Themen als Eingabe bereitstellen.
2. Themen den Anlässen zuordnen und das passende Format (Kurzbericht, iwd-Artikel, Policy-Brief) wählen lassen.
3. Plan mit Datum, Anlass, Thema, Format und Kanal als Tabelle ausgeben.
4. Plan dem Team zur Freigabe und Ressourcenplanung vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du erstellst einen Quartals-Redaktionsplan für das IW. Hier sind die politischen Termine des Quartals und die verfügbaren IW-Themen. Ordne jedem relevanten Termin ein passendes IW-Thema zu, wähle ein geeignetes Format (IW-Kurzbericht, iwd-Artikel, Policy-Brief, Social-Post) und benenne den Zielkanal. Liefere eine Tabelle: Datum, politischer Anlass, IW-Thema, Format, Kanal, Vorlauf. Markiere Termine, zu denen aktuell kein passendes Thema vorliegt."
**Erwartetes Artefakt:** Ein Quartals-Redaktionsplan (Tabelle) mit Anlass, Thema, Format, Kanal und Vorlaufzeit.
**Fallstricke (≥2 spezifisch):**
- Das Modell erfindet politische Termine oder Daten → Nur die vorgegebenen Kalendertermine verwenden; keine Termine halluzinieren.
- Themen werden zu eng an Tagespolitik gekoppelt und kompromittieren die wahrgenommene Neutralität → Anlassbezug sachlich halten, keine parteipolitische Positionierung.
**Anschluss-Szenario:** S-IW-020

### S-IW-020 Wording-Check auf Neutralität und Ordnungspolitik-Konsistenz

**Wann nutzen (Trigger):** Bevor ein Text (Pressemitteilung, Op-Ed, iwd-Artikel) das Haus verlässt, soll er auf Tonalität geprüft werden — keine Alarmismus-Rhetorik, keine umgangssprachlichen Ausreißer, Konsistenz mit der ordnungspolitischen Linie. (Quelle: research/10 §6 Brand Voice; §9 Task 5 Ordnungspolitischer Check)
**Strategisches Ziel:** Den IW-Markenton als redaktionelles Gatekeeping absichern und Abweichungen von der evidenzbasierten Zurückhaltung früh abfangen.
**Hands-on Ergebnis:** Ein Lektorats-Report, der Tonalitätsbrüche, Alarmismus und Inkonsistenzen markiert und sachliche Korrekturen vorschlägt.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner, Canvas
**Vorgehen (4 Schritte):**
1. Den IW-Stilleitfaden und Beispieltexte als Referenz im Wissensordner verknüpfen.
2. Den zu prüfenden Text gegen die Linie checken lassen — Alarmismus, Umgangssprache, ordnungspolitische Konsistenz.
3. Eine tabellarische Auflistung der Fundstellen mit konkreten, sachlichen Korrekturvorschlägen erzeugen.
4. Report an den Autor zur Entscheidung übergeben; finale Textfreigabe bleibt menschlich.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist redaktioneller Gatekeeper für den IW-Markenton. Prüfe den folgenden Text gegen den verknüpften IW-Stilleitfaden. Markiere jede Stelle mit Alarmismus, emotionaler Zuspitzung, umgangssprachlichen Ausreißern oder Aussagen, die von der evidenzbasierten, ordnungspolitischen Linie abweichen. Liefere eine Tabelle: Fundstelle, Problem, sachlicher Korrekturvorschlag. Sei pedantisch, aber begründe jede Markierung mit dem Leitfaden."
**Erwartetes Artefakt:** Ein Wording-Report (Tabelle) mit Fundstellen, Problemklasse und konkreten Korrekturvorschlägen.
**Fallstricke (≥2 spezifisch):**
- Der Check beschränkt sich auf Rechtschreibung statt Tonalität → Prompt muss explizit Tonalität, Alarmismus und ordnungspolitische Konsistenz adressieren.
- Das Modell glättet jede Schärfe weg und entkernt die Aussage → Ziel ist Neutralität, nicht Verwässerung; belegte, pointierte Aussagen dürfen bestehen bleiben.
**Anschluss-Szenario:** S-IW-001
