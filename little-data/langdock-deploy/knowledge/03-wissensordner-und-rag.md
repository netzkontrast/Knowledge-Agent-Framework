# Wissensordner und RAG für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Wissensordner-Strukturierung und Ablagestrategien
> - RAG-Mechanik und Limitierungen der Vektorsuche
> - Limit-Parameter für Dateigrößen und Integrationen
>
> **Was diese Datei NICHT abdeckt:**
> - Konfiguration und Einrichtung von Agenten → siehe `02-agenten-konfiguration`
> - Workflows und tiefergehende Automatisierung → siehe `04-workflows`

## Wissensordner versus direkter Anhang (Entscheidungsmatrix)

Die Entscheidung zwischen der dauerhaften Ablage im Wissensordner (Knowledge Folder) und dem direkten Datei-Anhang im Chat-Fenster determiniert die Qualität der abgerufenen Informationen. Der Wissensordner dient als systematisches, agentspezifisches Langzeitgedächtnis für strategische Referenzdokumente, die kontinuierlich in verschiedenen Kontexten herangezogen werden. Im Gegensatz dazu ist der direkte Datei-Anhang (Direct Attach) auf maximal 20 Dateien pro Sitzung limitiert und injiziert den gesamten Textinhalt unstrukturiert in den Kontext der aktuellen Konversation.

Die Unterscheidung ist architekturgetrieben: Während Dateien im Wissensordner durch eine semantische Vektorsuche (Retrieval-Augmented Generation) indexiert und in kleine Informationsfragmente (Chunks) zerlegt werden, überspringt der direkte Anhang diese Indexierung. Ein direkter Anhang ist zwingend erforderlich bei analytischen Aufgaben, etwa wenn die Funktion Data Analyst eine Tabellenkalkulation (CSV, Excel) zeilenbasiert auswerten soll. Der Wissensordner hingegen ist obligatorisch für Brand-Voice-Richtlinien, Produktkataloge oder historische Kampagnen-Performancedaten, auf die der Agent autonom zugreifen muss.

Zusammenfassend gilt die Regel: Temporäre, transaktionale Daten für den sofortigen Gebrauch werden im Chat angehängt, während statische, strategische Dokumente für die wiederholte Konsultation im Wissensordner verankert werden. Diese strikte Trennung verhindert eine Überflutung des Kontextfensters und maximiert die Relevanz der generierten Antworten.

## Was gehört in einen Wissensordner — was NICHT

Die architektonische Integrität eines Wissensordners (Knowledge Folder) hängt direkt von der Kuratierung seiner Inhalte ab. Ein optimal konfigurierter Ordner enthält ausschließlich textbasierte, semantisch dichte Dokumente, die klare strategische Vorgaben oder umfassende Referenzinformationen liefern. Dazu zählen Markenrichtlinien (Brand Guidelines), Zielgruppen-Personas, historische Kampagnen-Auswertungen in Textform, detaillierte Produktbeschreibungen und redaktionelle Freigabeprozesse. Diese Dokumente profitieren maximal von der semantischen Indexierung.

Umgekehrt existieren Formate und Inhaltskategorien, die explizit NICHT in den Wissensordner integriert werden dürfen. Tabellarische Rohdaten, große Finanz-Spreadsheets (CSV, Excel) oder Exportdateien aus Analytics-Systemen wie GA4 fragmentieren bei der Indexierung und verlieren ihren relationalen Kontext. Diese Formate blockieren die Vektorsuche mit irrelevanter Zahlenstruktur und gehören ausschließlich in den direkten Anhang für die Nutzung mit der Data-Analyst-Fähigkeit. Ebenso wenig eignen sich hochfrequente, kurzlebige Arbeitskopien (Drafts), nicht durchsuchbare Bilddateien (Scans ohne OCR) oder redundante Dokumentversionen, da diese die Präzision der semantischen Suchergebnisse verwässern.

Die konsequente Bereinigung des Wissensordners von diesen dysfunktionalen Formaten stellt sicher, dass der Agent ausschließlich auf die verifizierte, strategische "Single Source of Truth" zugreift und Halluzinationen minimiert werden.

## File-Type-Matrix mit Größenlimits (PDF/DOCX/PPTX 256MB; MD/TXT 10MB; CSV 30MB nur direkt)

Die Verarbeitungskapazität des Langdock-Systems unterliegt strengen, dateispezifischen Limitierungen, die bei der Konfiguration der Wissensordner (Knowledge Folder) zwingend berücksichtigt werden müssen. Das System differenziert zwischen Dokumenten für die semantische Indexierung und Formaten für die direkte Datenanalyse. Standardisierte Office-Dokumente wie PDF, DOCX und PPTX dürfen eine Dateigröße von 256 Megabyte (MB) nicht überschreiten. Diese Dokumente werden beim Upload automatisch mittels OCR (Optical Character Recognition) ausgelesen und in durchsuchbaren Text konvertiert.

Für reine Textformate gelten abweichende, weitaus striktere Obergrenzen: Markdown-Dateien (.md) und einfache Textdateien (.txt) sind auf maximal 10 MB limitiert. Diese Limitierung reflektiert die extrem hohe Informationsdichte dieser Formate; 10 MB reiner Text entsprechen tausenden Seiten Inhalt, was bei der Indexierung einen enormen Rechenaufwand bedeutet. Insgesamt ist das System auf maximal 8.000.000 Zeichen pro Datei ausgelegt.

Tabellarische Formate (CSV, Excel, JSON) unterliegen einem Limit von 30 MB. Es ist kritisch zu beachten, dass diese Formate, wie zuvor dargelegt, nicht für den Wissensordner vorgesehen sind. Sie müssen zwingend über den direkten Datei-Anhang im Chat für die Auswertung durch den Python-basierten Data Analyst hochgeladen werden, da die RAG-Mechanik zeilenbasierte Relationen zerstört. Die Einhaltung dieser Matrix garantiert eine fehlerfreie Verarbeitung.

## Synced Folders (Drive/SharePoint/OneDrive — 200 Files, 24h-Sync, 5 pro Agent)

Synchronisierte Ordner (Synced Folders) automatisieren die Aktualisierung von Marketing-Richtlinien in Langdock durch eine direkte Anbindung an etablierte Cloud-Infrastrukturen. Diese Integrationen ermöglichen den direkten, automatisierten Zugriff auf bestehende Cloud-Dateien (SharePoint, Google Drive, OneDrive, Confluence) ohne manuellen Upload. Das System authentifiziert sich über eine gesicherte OAuth-Verbindung und spiegelt den aktuellen Zustand des Quellordners in den Langdock-Arbeitsbereich.

Die Architektur dieser Synchronisation ist durch harte Systemlimits determiniert. Das System synchronisiert maximal 200 Dateien pro angebundenem Ordner. Diese Obergrenze erzwingt eine gezielte Selektion der relevantesten Dokumente; große, unstrukturierte Dateiablagen ("Dumps") können nicht als Ganzes angebunden werden. Darüber hinaus erfolgt die Aktualisierung (Sync) im 24-Stunden-Takt. Das bedeutet, dass Änderungen am Quelldokument erst am Folgetag im Agenten-Kontext abrufbar sind. Schließlich ist die Anzahl der nutzbaren Synced Folders pro Agent auf maximal 5 Ordner limitiert.

Dadurch greift der Agent stets auf die Dokumentversion des Vortages zu, ohne dass Nutzer manuell neue Dateiversionen hochladen müssen. Die Limits erfordern von Marketing-Teams eine präzise Ordnerstruktur in der Quell-Cloud, in der ausschließlich relevante, freigegebene Dokumente für die KI-Nutzung bereitgestellt werden.

## Library Folders (1.000 Files, manuelle Pflege)

Bibliotheksordner (Library Folders) stellen das native Langdock-Pendant zu den synchronisierten Cloud-Laufwerken dar und bieten eine alternative Architektur für die Ablage statischer Wissensbestände. Im Gegensatz zu den Synced Folders, die auf externe Systeme zurückgreifen, werden Dokumente in einem Library Folder physisch auf der Langdock-Plattform abgelegt und manuell durch Administratoren oder berechtigte Nutzer gepflegt. Diese Methode bietet maximale Kontrolle über die exakte Dokumentversion, die dem Agenten zur Verfügung steht.

Der entscheidende architektonische Vorteil eines Bibliotheksordners liegt in seiner erweiterten Kapazität: Ein einzelner Library Folder kann bis zu 1.000 Dateien aufnehmen. Dies übersteigt das Limit der Synced Folders (200 Dateien) um das Fünffache. Jede dieser Dateien unterliegt weiterhin den globalen Größen- und Zeichenlimits (z.B. 10 MB für Markdown, maximal 8 Millionen Zeichen). Da die Aktualisierung ausschließlich manuell erfolgt, besteht nicht die Gefahr einer asynchronen Verzögerung wie beim 24-Stunden-Takt der Cloud-Anbindungen. Neue oder geänderte Dokumente stehen sofort nach dem Upload für die Vektorisierung bereit.

Für Marketing-Teams bedeutet dies: Statische Referenzwerke, abgeschlossene Studien oder unveränderliche Kampagnen-Assets sind optimal im Library Folder aufgehoben. Die erweiterte Dateianzahl erlaubt den Aufbau umfangreicher, detaillierter Wissensdatenbanken für spezifische Agenten, erfordert jedoch eine disziplinierte manuelle Versionierungskontrolle durch das Team.

## RAG-Mechanik (2.000-char Chunks, 1536-dim Embeddings, k=50)

Die Funktion der Wissensordner basiert auf Retrieval-Augmented Generation (RAG), einem Verfahren, das statische Dokumente in maschinenlesbare Vektorrepräsentationen übersetzt. Wenn ein Dokument in Langdock hochgeladen wird, zerlegt das System den Text zunächst in kleine, überlappende Informationsfragmente, sogenannte Chunks. Die feste Größe eines Chunks beträgt exakt 2.000 Zeichen. Diese Fragmentierung ist notwendig, da das Kontextfenster großer Sprachmodelle limitiert ist und nicht gesamte Dokumentbibliotheken auf einmal verarbeiten kann.

Nach der Zerlegung wird jeder Chunk von einem Embedding-Modell (OpenAI Text Embeddings) in einen hochdimensionalen mathematischen Vektor transformiert. Der Vektorraum umfasst 1.536 Dimensionen (1536-dim Embeddings). Semantisch verwandte Konzepte, unabhängig von ihrer genauen Formulierung, werden in diesem Raum dicht beieinander platziert. Stellt ein Nutzer eine Suchanfrage (Query), wird diese ebenfalls vektorisiert. Das System vergleicht die Vektoren und ruft die semantisch ähnlichsten Chunks ab. Die Abfragemenge ist auf die 50 relevantesten Chunks pro Suchanfrage limitiert (Retrieval Limit k=50), was etwa 100.000 injizierten Zeichen entspricht.

Diese Mechanik stellt sicher, dass der Agent punktgenaues Kontextwissen aus extrem großen Textmengen extrahiert. Das Verständnis dieser 2.000-Zeichen-Architektur ermöglicht es Marketing-Teams, Dokumente so zu strukturieren (z. B. durch aussagekräftige Zwischenüberschriften), dass sie vom Algorithmus optimal erfasst und abgerufen werden.

## Per-Document-Cap (1 Chunk pro Datei pro Query — die wichtigste Regel)

Die kritischste Limitierung der gesamten Langdock-RAG-Architektur ist das sogenannte Per-Document-Cap. Das System ist restriktiv so konfiguriert, dass pro Suchanfrage (Query) und pro Dokument maximal ein einziger Text-Chunk (1 Chunk pro Datei) als Ergebnis zurückgeliefert wird. Langdock's Search API extrahiert ausschließlich das Fragment mit dem absolut höchsten Relevanz-Score (Cosine Similarity) aus einer Datei. Alle weiteren potenziell relevanten Informationen im selben Dokument werden für diese spezifische Suchanfrage ignoriert.

Diese singuläre Regel determiniert alle Entscheidungen beim Aufbau von Wissensordnern. Behandelt ein einzelnes Dokument zwei konkurrierende Themen (beispielsweise Richtlinien für LinkedIn-Posts und für Instagram-Reels in einem langen Text), und der Nutzer fragt nach "Social Media Best Practices", ruft das System nur den Abschnitt ab, der mathematisch näher an der Anfrage liegt. Der andere Abschnitt bleibt unsichtbar. Eine massive "Big Index"-Datei, die alle Marketing-Richtlinien bündelt, stellt somit einen Single Point of Failure dar, da immer nur 2.000 Zeichen daraus extrahiert werden.

Für die Dokumentenarchitektur bedeutet das zwingend: Ein Thema pro Datei. Die Aufsplittung großer Handbücher in viele kleine, thematisch extrem spitz fokussierte Einzeldokumente maximiert die Trefferquote. Nur so kann sichergestellt werden, dass bei einer komplexen Anfrage mehrere Chunks aus verschiedenen, hochspezifischen Dateien zusammengesetzt werden, um eine umfassende Antwort zu generieren.

## Wissensordner-Strategie für Brand-Voice-Dokumente

Die Bereitstellung der Markenstimme (Brand Voice) in einem Wissensordner erfordert eine hochgradig atomisierte Dokumentenstruktur, um das limitierende Per-Document-Cap effektiv zu umgehen. Anstatt das gesamte Brand-Framework in ein monolithisches PDF-Dokument zu pressen, muss die Markenidentität in mehrere, in sich geschlossene Textdokumente separiert werden. Eine funktionierende Struktur trennt beispielsweise die Kernwerte (Core Values), die stilistischen Richtlinien (Tone of Voice), spezifische Dos & Don'ts und zielgruppenspezifische Vokabulare in jeweils eigene Dateien.

Diese Granularität stellt sicher, dass der Agent bei einer Anfrage wie "Schreibe einen Newsletter an unsere B2B-Kunden im neuen Tonfall" die spezifischen Chunks für "B2B-Vokabular" aus einer Datei und "Tone of Voice - Newsletter" aus einer anderen Datei abrufen kann. Wären alle Informationen in einer Datei gebündelt, würde das System lediglich die 2.000 Zeichen abrufen, die der Suchanfrage mathematisch am nächsten kommen, und essenzielle tonale Nuancen unterschlagen.

Zusätzlich müssen Brand-Voice-Dokumente mit hybriden Suchbegriffen ausgestattet werden. Die durchgängige Verwendung von englischen und deutschen Begriffspaaren (z.B. "Markenstimme / Brand Voice" oder "Tonalität / Tone of Voice") in den Überschriften und Einleitungen garantiert, dass die Vektorsuche unabhängig von der Formulierung der Nutzeranfrage erfolgreich ist. Diese strukturierte Aufbereitung sichert eine konsistente Markenkommunikation in allen generierten Artefakten.

## Citations und Source-Tracking

Das System gewährleistet die Nachvollziehbarkeit generierter Inhalte durch automatisiertes Source-Tracking und integrierte Zitationen (Citations). Wenn der Agent Informationen aus einem verknüpften Wissensordner (Knowledge Folder) abruft und in die Antwort integriert, wird der entsprechende Textabschnitt automatisch mit einer Quellenangabe versehen. Diese Referenz verlinkt direkt auf das exakte Quelldokument, das zur Generierung dieses spezifischen Informationsfragments herangezogen wurde.

Die Verlässlichkeit dieser Citations hängt direkt von der Qualität der abgelegten Dokumente ab. Das System verweist stets auf den Dateinamen als primären Indikator. Daher müssen Dateinamen zwingend deskriptiv im Kebab-Case-Format strukturiert sein (beispielsweise `brand-voice-richtlinien-2026.pdf` statt `entwurf-final-v3.docx`). Einprägsame, standardisierte Dateinamen ermöglichen es dem menschlichen Nutzer, die referenzierte Quelle sofort zu verifizieren, ohne das Dokument zwingend öffnen zu müssen. Die Nachprüfbarkeit (Fact-Checking) von KI-Aussagen ist im Enterprise-Umfeld essenziell, um Halluzinationen zu identifizieren.

Falls ein Dokument aus einer Synchronisationsquelle (Synced Folder) stammt, verlinkt die Citation direkt auf die aktive Cloud-Version (z.B. die SharePoint-URL). Sollte die ursprüngliche URL aufgrund von Umstrukturierungen einen 404-Fehler erzeugen, bleibt der im Langdock-System zwischengespeicherte Chunk dennoch aktiv, bis der 24-Stunden-Sync-Zyklus den fehlenden Ursprung registriert. Die Citation-Funktion schafft somit Vertrauen und erzwingt eine saubere Nomenklatur in der Wissensablage.

## Marketing-Szenarien aus dieser Domäne

### S-WR-001 Content-Lokalisierung mit hybrider Brand Voice

**Wann nutzen (Trigger):** Die Marketing-Direktorin muss eine englische Kampagne in den DACH-Markt überführen, ohne den globalen Markenkern zu verwässern.
**Strategisches Ziel:** Sicherstellung der exakten tonalen Konsistenz trotz Sprachbarriere.
**Hands-on Ergebnis:** Vollständig lokalisierter Kampagnen-Entwurf im Document Editor.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Document Editor
**Vorgehen (3-5 Schritte):**
1. Die globalen "Brand Guidelines" und "DACH Localization Rules" in separaten Dateien in den Wissensordner hochladen.
2. Den Agenten mit einer spezifischen Rolle und dem Kontext der Kampagne briefen.
3. Den Prompt um eine strikte Anweisung ergänzen, ausschließlich verifizierte Begriffe aus dem Wissensordner zu verwenden.
4. Den finalen Text im Canvas überprüfen und das Source-Tracking der verwendeten Fachbegriffe validieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior Localization Manager. Task: Translatiere die angehängte englische Q3-Kampagne für den DACH-Markt. Context: Die Tonalität muss exakt unserer 'Markenstimme (Brand Voice)' entsprechen. Format: Ein strukturierter Draft im Canvas. Restriction: Verwende für technische Features ausschließlich das genehmigte Vokabular aus dem Wissensordner. Gib die Quellen als Referenz am Ende an."
**Erwartetes Artefakt:** Ein vollständig lokalisierter Kampagnen-Draft im Document Editor, inklusive Quellenverweisen auf die verwendeten Glossar-Begriffe.
**Fallstricke:**
- Zu große, monolithische Glossar-Dokumente blockieren das Per-Document-Cap; Glossare müssen nach Produktbereichen aufgeteilt sein.
- Fehlendes Bilingual Seeding im Ordner führt dazu, dass englische Fachbegriffe nicht gefunden werden.
**Anschluss-Szenario:** S-WR-002 Redaktionelle Freigabe nach Corporate Wording

### S-WR-002 Redaktionelle Freigabe nach Corporate Wording

**Wann nutzen (Trigger):** Externe Agenturen liefern Text-Drafts, die auf Einhaltung der internen Richtlinien geprüft werden müssen.
**Strategisches Ziel:** Drastische Reduzierung der Korrekturschleifen durch automatisierte Compliance-Prüfung.
**Hands-on Ergebnis:** Tabellarische Übersicht mit präzisen Korrekturvorschlägen.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search
**Vorgehen (3-5 Schritte):**
1. Das "Corporate Wording Manual" und die "Blacklist-Begriffe" in den Wissensordner stellen.
2. Den Text-Draft der Agentur als direkten Datei-Anhang hochladen.
3. Den Agenten anweisen, den Text gegen die hinterlegten Regeln zu auditieren.
4. Änderungsvorschläge generieren und kritische Abweichungen extrahieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lead Editor. Task: Prüfe den angehängten Artikel der Agentur auf Einhaltung unserer Kommunikationsregeln. Context: Unser 'Corporate Wording' und die 'Blacklist' liegen in deinem Wissensordner. Format: Eine tabellarische Übersicht mit Fehler, Original-Satz, Korrektur-Vorschlag und der referenzierten Regel. Restriction: Ändere keine inhaltlichen Aussagen, nur tonale und terminologische Abweichungen."
**Erwartetes Artefakt:** Eine Tabelle mit präzisen Korrekturvorschlägen, gekoppelt an spezifische Regeln aus dem Wissensordner.
**Fallstricke:**
- Das Per-Document-Cap verhindert das Abrufen aller Regeln, wenn die Anfrage zu allgemein formuliert ist; spezifisch nach "Blacklist" fragen ist essenziell.
- Die KI könnte Regeln halluzinieren, die nicht im Dokument stehen, wenn der Prompt keine strikte "Restriction" enthält.
**Anschluss-Szenario:** S-WR-003 Audit von bestehenden Blog-Archiven

### S-WR-003 Strategisches Q4-Kampagnen-Pre-Mortem

**Wann nutzen (Trigger):** Das Q4-Kampagnen-Konzept steht, aber das Team fürchtet blinde Flecken basierend auf historischen Fehlern.
**Strategisches Ziel:** Frühzeitige Identifikation von Schwachstellen durch Abgleich mit vergangenen Kampagnen-Post-Mortems.
**Hands-on Ergebnis:** Fokussierter Risikobericht mit Top-3-Risiken und Gegenmaßnahmen.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Web Search
**Vorgehen (3-5 Schritte):**
1. Post-Mortem-Analysen der letzten drei Jahre als Markdown-Dateien in den Wissensordner laden.
2. Das aktuelle Q4-Konzept als direkten Anhang bereitstellen.
3. Den Agenten beauftragen, potenzielle Misserfolgs-Risiken aus den alten Daten zu extrapolieren.
4. Markttrends über die Web Search abgleichen, um externe Risiken zu identifizieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Strategischer Berater. Task: Führe ein Pre-Mortem für die angehängte Q4-Kampagne durch. Context: Nutze die 'Post-Mortem-Analysen' der vergangenen Jahre aus deinem Wissensordner, um wiederkehrende Fehlerquellen zu identifizieren. Format: Eine priorisierte Liste der Top-3-Risiken mit konkreten Gegenmaßnahmen. Restriction: Beziehe aktuelle Markttrends ein, ignoriere aber Budget-Fragen, da diese bereits geklärt sind."
**Erwartetes Artefakt:** Ein fokussierter Risikobericht, der historische Daten mit aktuellen externen Faktoren verbindet.
**Fallstricke:**
- Historische Daten als unstrukturierte Tabellen hochgeladen; RAG benötigt Textbeschreibungen der Fehler.
- Der Agent gewichtet alte Fehler überproportional hoch und ignoriere die Besonderheiten des neuen Konzepts.
**Anschluss-Szenario:** S-WR-004 Konzeption von Risiko-Mitigation-Strategien

### S-WR-004 Konkurrenz-Audit für neue Produkt-Slogans

**Wann nutzen (Trigger):** Ein Produktlaunch erfordert neue Slogans, die sich radikal vom aktuellen Marktstandard abheben müssen.
**Strategisches Ziel:** Vermeidung von Redundanz und Sicherstellung von Unique Selling Propositions (USPs).
**Hands-on Ergebnis:** Liste von 5 differenzierenden Slogans mit strategischer Rationale.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Web Search
**Vorgehen (3-5 Schritte):**
1. Die eigene "Markenpositionierung" und "Messaging-Architektur" im Wissensordner hinterlegen.
2. Eine Liste aktueller Konkurrenten als Textdatei hochladen.
3. Den Agenten anweisen, aktuelle Konkurrenz-Slogans über das Web zu recherchieren.
4. Slogans entwerfen, die im direkten Kontrast zur Konkurrenz stehen, aber markenkonform bleiben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Creative Director. Task: Entwickle 5 neue Slogans für unseren Produktlaunch. Context: Die Slogans müssen unserer 'Markenpositionierung' (im Wissensordner) entsprechen, sich aber radikal von den aktuellen Claims der Wettbewerber abheben. Format: Eine Liste mit dem neuen Slogan, dem referenzierten Konkurrenz-Claim und der strategischen Rationale. Restriction: Nutze das Web, um die Claims von Wettbewerber X, Y und Z live abzufragen."
**Erwartetes Artefakt:** Fünf differenzierende Slogans mit strategischer Begründung und Wettbewerbsvergleich.
**Fallstricke:**
- Web Search halluziniert veraltete Konkurrenz-Slogans, wenn nicht explizit das aktuelle Jahr abgefragt wird.
- Der Kontrast wird so extrem gewählt, dass die Slogans nicht mehr der internen "Markenpositionierung" entsprechen.
**Anschluss-Szenario:** S-WR-005 Erstellung zielgruppenspezifischer Pitch-Decks

### S-WR-005 Erstellung zielgruppenspezifischer Pitch-Decks

**Wann nutzen (Trigger):** Das Sales-Team benötigt dringend auf die B2B-Persona "IT-Entscheider" zugeschnittene Präsentationsinhalte.
**Strategisches Ziel:** Schnelle Adaption generischer Verkaufsargumente in hochspezifische, nutzenargumentierte Folien-Strukturen.
**Hands-on Ergebnis:** Exportfertige, 10-seitige Präsentationsstruktur (Outline).
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Document Editor
**Vorgehen (3-5 Schritte):**
1. Die "Buyer Personas" (separat für jede Zielgruppe) in den Wissensordner laden.
2. Das generische Produkt-Whitepaper als Basis-Dokument anhängen.
3. Den Agenten beauftragen, eine Outline für ein Pitch-Deck zu strukturieren, die exakt auf die Schmerzpunkte der Persona abzielt.
4. Die Struktur im Canvas finalisieren und für den Export vorbereiten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Sales Enablement Manager. Task: Erstelle eine 10-Slide-Outline für ein Pitch-Deck basierend auf dem angehängten Whitepaper. Context: Die Präsentation richtet sich ausschließlich an die Persona 'IT-Entscheider' (siehe Wissensordner). Format: Ein detailliertes Slide-by-Slide Outline im Canvas. Restriction: Fokussiere dich auf technische Sicherheit und ROI; ignoriere oberflächliche Marketing-Phrasen."
**Erwartetes Artefakt:** Eine exportfertige, fachlich tiefe Präsentationsstruktur im Document Editor.
**Fallstricke:**
- Wenn alle Personas in einer einzigen Datei liegen, zieht RAG durch das Limit womöglich die falsche Persona-Beschreibung.
- Der Agent formuliert Folientexte zu detailliert, anstatt stichpunktartige Sprechernotizen zu liefern.
**Anschluss-Szenario:** S-WR-006 Übersetzung technischer Whitepapers

### S-WR-006 Red-Team-Audit für das neue Crisis-Messaging

**Wann nutzen (Trigger):** Ein potenzieller PR-Skandal erfordert ein schnelles Statement, das auf seine Belastbarkeit getestet werden muss.
**Strategisches Ziel:** Identifikation von Schwachstellen und interpretativen Risiken im Krisen-Statement durch radikale Gegenpositionierung.
**Hands-on Ergebnis:** Liste der drei stärksten Gegenargumente gegen das Krisen-Statement.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search
**Vorgehen (3-5 Schritte):**
1. Den "Crisis Communication Plan" und historische "Shitstorm-Analysen" in den Wissensordner integrieren.
2. Das vorgeschlagene Krisen-Statement als direkten Anhang übergeben.
3. Dem Agenten die Rolle eines feindseligen Kritikers zuweisen.
4. Das Statement auf Lücken, Widersprüche und Angriffsflächen prüfen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein extrem kritischer Investigativ-Journalist. Task: Nimm das angehängte Krisen-Statement systematisch auseinander. Context: Berücksichtige unsere historischen Fehler bei Krisen, die im 'Crisis Communication Plan' (Wissensordner) dokumentiert sind. Format: Eine Liste der drei stärksten Gegenargumente, die die Öffentlichkeit gegen dieses Statement vorbringen könnte, inklusive Zitat-Extrakt. Restriction: Keine konstruktive Kritik, nur radikale Falsifikation der Kernaussagen."
**Erwartetes Artefakt:** Ein schonungsloses Audit des Statements mit den drei wahrscheinlichsten medialen Angriffspunkten.
**Fallstricke:**
- Zu weiche Persona-Instruktionen führen zu generischem Feedback statt harter Falsifikation.
- Fehlende historische Krisen-Analysen im Wissensordner machen das Audit kontextlos und oberflächlich.
**Anschluss-Szenario:** S-WR-007 Erstellung von Q&A-Katalogen für PR-Interviews

### S-WR-007 Onboarding-Simulator für neue Content-Manager

**Wann nutzen (Trigger):** Neue Teammitglieder benötigen ein tiefes Verständnis für die komplexe Produktarchitektur, bevor sie erste Texte verfassen.
**Strategisches Ziel:** Interaktive Wissensvermittlung statt statischem Lesen von Handbüchern.
**Hands-on Ergebnis:** Interaktives Q&A-Training mit 5 aufeinanderfolgenden Fragen.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search
**Vorgehen (3-5 Schritte):**
1. Alle "Produkt-Spezifikationen" und "Technologie-Glossare" in den Bibliotheksordner (Library Folder) laden.
2. Einen Agenten als dedizierten Onboarding-Buddy konfigurieren.
3. Den Agenten anweisen, den neuen Mitarbeiter durch ein interaktives Q&A-Szenario zu führen.
4. Das Wissen schrittweise abfragen und falsche Antworten korrigieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Onboarding-Buddy für neue Content-Manager. Task: Simuliere ein interaktives Training zu unserer Produktarchitektur. Context: Alle Fakten stammen aus den 'Produkt-Spezifikationen' in deinem Wissensordner. Format: Stelle mir nacheinander 5 Fragen im Multiple-Choice-Format. Warte auf meine Antwort, bevor du korrigierst oder die nächste Frage stellst. Restriction: Gib nie sofort die Lösung vor, sondern erkläre im Fehlerfall die Zusammenhänge basierend auf dem Glossar."
**Erwartetes Artefakt:** Ein iterativer Lerndialog, der das Faktenwissen des neuen Mitarbeiters interaktiv testet.
**Fallstricke:**
- Der Agent ignoriert die schrittweise Ausführung und generiert alle 5 Fragen sowie die Antworten auf einmal.
- Die Produkt-Dateien sind zu groß (Per-Document-Cap), wodurch der Agent spezifische Nischendetails nicht abfragen kann.
**Anschluss-Szenario:** S-WR-008 Fachlicher Faktencheck für Blogbeiträge

### S-WR-008 Fachlicher Faktencheck für Blogbeiträge

**Wann nutzen (Trigger):** Ein Freelancer liefert einen fachlich anspruchsvollen Blogpost, der technische Produkt-Details enthält.
**Strategisches Ziel:** Absolute inhaltliche Korrektheit ohne manuellen Abgleich mit Datenblättern.
**Hands-on Ergebnis:** Prüfbericht mit Korrekturen und Referenzen zu den Datenblättern.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search
**Vorgehen (3-5 Schritte):**
1. Die validierten "Technischen Datenblätter" (getrennt nach Produktgruppen) in den Wissensordner legen.
2. Den Draft des Freelancers anhängen.
3. Den Agenten anweisen, jede technische Behauptung im Text gegen die Datenblätter abzugleichen.
4. Abweichungen exakt kennzeichnen und korrigieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Technical Reviewer. Task: Überprüfe alle technischen Behauptungen im angehängten Blogpost. Context: Die unumstößliche Wahrheit sind die 'Technischen Datenblätter' in deinem Wissensordner. Format: Eine Übersicht, die für jede Behauptung den Status (Korrekt/Falsch) angibt. Bei Fehlern musst du den falschen Text zitieren und durch die exakten Fakten aus dem Datenblatt ersetzen. Restriction: Prüfe nur harte Fakten, keinen Schreibstil."
**Erwartetes Artefakt:** Ein verlässlicher Prüfbericht, der Faktenfehler im Freelancer-Text eliminiert.
**Fallstricke:**
- Datenblätter, die als PDFs ohne saubere Text-Layer hochgeladen wurden, liefern falsche OCR-Werte (z.B. falsche Zahlen).
- Der Agent markiert stilistische Formulierungen als Faktenfehler, wenn die "Restriction" nicht streng genug formuliert ist.
**Anschluss-Szenario:** S-WR-009 Transformation von Whitepapers in Social-Media-Snippets

### S-WR-009 Cross-Channel-Adaption einer Leitkampagne

**Wann nutzen (Trigger):** Die Kernbotschaft einer Dachkampagne muss schnell auf fünf unterschiedliche Kanäle (LinkedIn, Newsletter, Blog, Ads, Vertriebs-Mail) adaptiert werden.
**Strategisches Ziel:** Maximale Effizienz bei der Content-Produktion unter Beibehaltung der kanalspezifischen Eigenheiten.
**Hands-on Ergebnis:** Strukturiertes Multi-Channel-Dokument mit Kanal-Adaptionen.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Document Editor
**Vorgehen (3-5 Schritte):**
1. Das "Channel Best Practices Handbook" in den Wissensordner hochladen.
2. Das Konzept der Leitkampagne (Dachbotschaft) anhängen.
3. Den Agenten beauftragen, für jeden Kanal eine spezifische Adaption zu schreiben.
4. Die Ergebnisse im Canvas zusammenführen und redigieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Cross-Channel-Manager. Task: Adaptiere die angehängte Dachkampagne für LinkedIn, einen B2B-Newsletter und eine Sales-Mail. Context: Nutze zwingend die kanalspezifischen Formate und Längenbeschränkungen aus unserem 'Channel Best Practices Handbook' (Wissensordner). Format: Ein strukturiertes Dokument im Canvas mit klaren Abschnitten pro Kanal. Restriction: Jeder Kanal benötigt einen völlig eigenen Einstieg (Hook); vermeide copy-paste zwischen den Kanälen."
**Erwartetes Artefakt:** Ein fertiges Multi-Channel-Dokument, das strategisch konsistent, aber taktisch diversifiziert ist.
**Fallstricke:**
- Das Channel-Handbook ist ein 50-seitiges PDF; der Agent findet wegen des Limits nur die Regeln für LinkedIn und erfindet den Rest.
- Der Agent verwendet für alle Kanäle dieselbe Headline, anstatt die geforderte Diversifikation umzusetzen.
**Anschluss-Szenario:** S-WR-010 Skalierung von Event-Recaps

### S-WR-010 Evaluierung von Agentur-Pitches anhand interner Metriken

**Wann nutzen (Trigger):** Drei Agenturen haben Pitches für den neuen Jahresvertrag eingereicht; eine objektive Entscheidungsgrundlage fehlt.
**Strategisches Ziel:** Systematischer, emotionsloser Abgleich der Agentur-Leistungen mit den internen strategischen Prioritäten.
**Hands-on Ergebnis:** Bewertungsmatrix mit Scores (1-10) und Begründungen.
**Eingesetzte Langdock-Fähigkeit(en):** Initial Knowledge Search, Data Analyst
**Vorgehen (3-5 Schritte):**
1. Das interne "Strategische Zielbild 2027" und die "Evaluations-Matrix" in den Wissensordner laden.
2. Die Budget-Kalkulationen der Agenturen als CSV über den direkten Anhang bereitstellen.
3. Die Konzept-Präsentationen der Agenturen einzeln bewerten lassen.
4. Einen konsolidierten Scoring-Bericht generieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Procurement Manager. Task: Evaluiere die drei Agentur-Konzepte auf Basis unserer Vorgaben. Context: Werte die angehängten Budget-CSVs analytisch aus und vergleiche die Konzepte mit dem 'Strategischen Zielbild 2027' aus dem Wissensordner. Format: Eine Matrix mit Scores (1-10) für Strategie-Fit, Budget-Effizienz und Innovationsgrad. Restriction: Begründe jeden Score in maximal zwei Sätzen und ziehe keine Schlussfolgerungen, die nicht durch Zahlen oder unsere Vorgaben gedeckt sind."
**Erwartetes Artefakt:** Eine objektive, datengestützte Bewertungsmatrix, die quantitative und qualitative Aspekte vereint.
**Fallstricke:**
- Versuch, die Budget-CSVs in den Wissensordner zu laden; dies zerstört die Zeilenstruktur und führt zu falschen Berechnungen.
- Die Agentur-Konzepte sind als Bilder-PDFs ohne OCR angehängt, wodurch der Agent keinen Text extrahieren kann.
**Anschluss-Szenario:** S-WR-001 Content-Lokalisierung mit hybrider Brand Voice

## Hinweise & Quellen-Konflikte

Keine Widersprüche zwischen den Research-Sources und Extracts festgestellt. Die harten Datei-Limits und die RAG-Limitierungen (Per-Document-Cap) aus T2 und research/04 wurden konsistent integriert.
