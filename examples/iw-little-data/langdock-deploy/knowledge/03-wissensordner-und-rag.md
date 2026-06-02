# Wissensordner und RAG für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Wissensordner versus direkter Anhang (Entscheidungsmatrix)
> - Was gehört in einen Wissensordner — was NICHT
> - Dateiformate und Größenlimits (File-Type-Matrix)
> - Synced Folders (Drive/SharePoint/OneDrive)
> - Library Folders (1.000 Files, manuelle Pflege)
> - RAG-Mechanik (2.000-char Chunks, 1536-dim Embeddings, k=50)
> - Per-Document-Cap (1 Chunk pro Datei pro Query)
> - Wissensordner-Strategie für Brand-Voice-Dokumente
> - Citations und Source-Tracking
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration und Basis-Setup → siehe `02-agenten-konfiguration`
> - Modell-Auswahl und Kosten-Management → siehe `07-modelle-und-kosten`

## Wissensordner versus direkter Anhang (Entscheidungsmatrix)

Ein Wissensordner (Knowledge Folder) speichert langlebige Dokumente, wie Markenrichtlinien (Brand Guidelines) oder Produktkataloge. Der direkte Anhang im Chat dient flüchtigen Dateien, wie aktuellen Kampagnen-Briefings oder temporären Datenexporten. Wissensordner werden für Agenten konfiguriert und indiziert, wodurch das Wissen stabil bleibt. Ein direkter Anhang existiert nur für die laufende Konversation. Die eiserne Entscheidungsregel für Marketing-Direktoren lautet: Wenn eine Information in mehr als drei zukünftigen Kampagnen benötigt wird, gehört diese Information in einen Wissensordner. Wenn eine Datei ausschließlich für einen kurzlebigen Task relevant ist, sollte diese Datei als direkter Anhang hochgeladen werden. Der direkte Anhang ist auf maximal 20 Dateien pro Session limitiert. Wissensordner fassen bis zu 1.000 Dateien bei manueller Pflege im Library Folder. Die richtige Wahl zwischen Wissensordner und Anhang beeinflusst die Token-Effizienz maßgeblich, da unnötige Anhänge das Kontextfenster blockieren. Permanentes Wissen in Anhängen immer wieder neu zu duplizieren, erhöht die Fehlerquote dramatisch. Ein gut strukturierter Wissensordner bildet das unerschütterliche Fundament für die Skalierbarkeit. Das Retrieval-System priorisiert semantische Nähe, daher muss Basis-Wissen sauber getrennt werden. Die RAG-Mechanik (Retrieval-Augmented Generation) erfordert eine strikte Datenhygiene, weshalb Agenten nur auf explizit für sie freigegebene Informationen zugreifen. Marketing-Teams müssen die Dateistruktur (File Structure) regelmäßig evaluieren, um Datenmüll zu vermeiden. Diese Trennung ist der wichtigste Hebel für präzise KI-Antworten. Marketing-Direktoren profitieren hier von einer klaren Governance-Struktur. Die Langdock-Plattform (Langdock Platform) verarbeitet diese Dokumente absolut deterministisch.

## Was gehört in einen Wissensordner — was NICHT

In einen Wissensordner (Knowledge Folder) gehören ausschließlich persistente, statische Dokumente: Markenstimme (Brand Voice) Guidelines, technische Produkt-Spezifikationen, validierte Persona-Definitionen, historische Best-Practices und final freigegebene PR-Materialien. Diese Dokumente bieten dem Retrieval-Augmented-Generation-System (RAG) verlässliche Kontext-Anker. Nicht in einen Wissensordner gehören: dynamische Tabellen (CSV/Excel) mit tagesaktuellen Performance-Daten, unstrukturierte Meeting-Notizen ohne klaren Kontext, sowie Dateien, die wöchentlich geändert werden. Komplexe Daten-Analysen (Data Analysis) erfordern immer den direkten Upload im Chat, da die Data Analyst Funktion Tabellen direkt per Code verarbeitet und nicht über das ungenauere Vektor-Retrieval indiziert. Temporäre Drafts oder rohe Brainstorming-Transkripte verwässern den Wissensordner massiv und führen zu inkonsistenten Antworten. Marketing-Direktoren sollten eine strikte Gatekeeper-Rolle einnehmen. Jedes Dokument muss eine beschreibende Überschrift (H1) aufweisen und als in sich geschlossene Informationsquelle funktionieren. Müll im Wissensordner führt unweigerlich zu Müll im Output (Garbage in, garbage out). Eine saubere Trennung von Kampagnen-Assets und ewigem Basis-Wissen ist essenziell für den Erfolg. Die Langdock-Plattform (Langdock Platform) verarbeitet diese Dokumente deterministisch. Jede Datei im Wissensordner sollte eine einzige, eindeutige Funktion erfüllen und diese im Dateinamen tragen. Wenn Dokumente nicht auf diese Weise vorbereitet sind, wird das Retrieval-System nutzlose Text-Blöcke (Chunks) abrufen und den Agenten in die Irre führen.

## File-Type-Matrix mit Größenlimits

Die Langdock-Plattform (Langdock Platform) unterstützt spezifische Dateiformate (File Formats) mit absoluten Größenlimits für den Wissensordner, die zwingend beachtet werden müssen. PDF-Dokumente, Word-Dateien (.docx) und PowerPoint-Präsentationen (.pptx) werden bis zu einer massiven Größe von 256 Megabyte (MB) unterstützt und eignen sich hervorragend für umfassende Marken-Präsentationen oder Jahresberichte. Markdown-Dateien (.md) und reine Textdateien (.txt) sind auf 10 MB limitiert, bieten jedoch durch ihre saubere Struktur die mit Abstand höchste Präzision für strukturierte Text-Anweisungen und Persona-Definitionen. CSV (.csv) und Excel (.xlsx) Dateien mit bis zu 30 MB dürfen ausdrücklich NICHT in den Wissensordner geladen werden; diese Formate müssen zwingend als direkter Anhang im Chat hochgeladen werden, damit die spezialisierte Data Analyst Funktion (Data Analyst Capability) diese auswerten kann. Bilder (.png, .jpg) bis 20 MB sind ebenfalls ausschließlich als direkter Anhang erlaubt. Die globale Text-Grenze liegt bei etwa acht Millionen Zeichen pro Datei, unabhängig von der Megabyte-Größe. MarketingOps-Verantwortliche müssen diese Format-Matrix bei der Aufbereitung von Schulungsmaterialien zwingend berücksichtigen. Eine Datei, die diese Limits überschreitet, wird kommentarlos nicht indiziert. Die manuelle Konvertierung komplexer PDFs in sauberes Markdown erhöht die Retrieval-Qualität signifikant. Wissensordner (Knowledge Folders) tolerieren absolut keine Format-Fehler. Ein präzises Setup verhindert spätere Halluzinationen in der Ausgabe. Bilder und Videos werden in der Vektordatenbank vollständig ignoriert.

## Synced Folders (Drive/SharePoint/OneDrive)

Synchronisierte Ordner (Synced Folders) verbinden externe Repositories wie Google Drive, SharePoint oder Microsoft OneDrive nahtlos mit der Langdock-Plattform. Ein synchronisierter Ordner aktualisiert sich nach der initialen Einrichtung automatisch alle 24 Stunden, ohne dass ein manuelles Eingreifen nötig ist. Marketing-Direktoren können diese Synchronisation bei dringendem Bedarf auch jederzeit manuell über das Interface auslösen. Für synchronisierte Ordner gilt ein striktes Limit von exakt 200 Dateien (Files) pro verbundenem Ordner, im krassen Gegensatz zu manuell gepflegten Library Folders. Jeder spezifische Agent (Agent) kann maximal fünf solcher synchronisierten Ordner einbinden. Diese Sync-Funktion ist essenziell für dynamische Marketing-Assets, die permanent von externen Agenturen im SharePoint aktualisiert werden. Sobald die Agentur ein neues Briefing-Template in den OneDrive-Ordner legt, ist das Template nach der nächsten Synchronisation automatisch für den Langdock-Agenten verfügbar. Die Einrichtung erfordert entsprechende Admin-Rechte in den externen Cloud-Plattformen. Eine absolut saubere Ordnerstruktur im Quellsystem ist unabdingbar, da Langdock die Dokumente eins zu eins übernimmt. Ungültige Dateiformate im Quellordner werden bei der Synchronisation schlichtweg ignoriert. Diese Automatisierung reduziert den administrativen Overhead für das MarketingOps-Team drastisch und eliminiert Versions-Konflikte. Marketing-Teams müssen die Dateistruktur regelmäßig evaluieren, um das Limit nicht versehentlich zu sprengen. Die strategische Ausrichtung der Ordnerstruktur beschleunigt den Workflow spürbar. MarketingOps-Teams sollten die Zugriffsrechte (Access Rights) genau dokumentieren, um Datenlecks zu vermeiden.

## Library Folders (1.000 Files, manuelle Pflege)

Ein Library Folder (Bibliotheks-Ordner) in Langdock erlaubt das manuelle Hochladen, Organisieren und Verwalten von bis zu 1.000 separaten Dateien (Files) pro Ordner. Diese Ordner eignen sich optimal für statisches, hoch-kuratiertes Kern-Wissen, das sich im Jahresverlauf äußerst selten ändert. Typische Anwendungsfälle im Marketing sind final freigegebene Unternehmens-Historien, Corporate-Identity-Regeln (CI), Tone-of-Voice-Manifeste oder statische Produkt-Handbücher. Im direkten Gegensatz zu Synced Folders erfordert der Library Folder permanente manuelle Pflege durch das Team: Updates müssen händisch aus dem Ordner gelöscht und neu hochgeladen werden. Der massive Vorteil dieses Modells liegt in der absoluten Kontrolle; Marketing-Direktoren wissen exakt, welche Version eines Dokuments der Agent (Agent) verwendet. Bei der manuellen Pflege ist eine extrem konsistente Namenskonvention (Naming Convention) für alle Dokumente entscheidend, da Langdock die Dateinamen für das Quellen-Tracking (Source Tracking) nutzt. Ein gut organisierter Library Folder agiert als unumstößliche Single-Source-of-Truth für alle Content-Marketing-Prozesse. Das großzügige Limit von 1.000 Dateien bietet ausreichend Skalierbarkeit auch für sehr große Kampagnen-Archive. Veraltete Dokumente müssen zwingend proaktiv von Hand entfernt werden, um das Retrieval-System nicht mit veralteten Fakten zu vergiften. Die Qualität der hochgeladenen Dokumente bestimmt direkt die Qualität der generierten KI-Antworten. Ein systematischer Ansatz beim Wissensmanagement spart langfristig wertvolle Ressourcen. Die Pflege des Library Folders ist eine der wichtigsten Kernaufgaben der Marketing-Direktion.

## RAG-Mechanik (2.000-char Chunks, 1536-dim Embeddings, k=50)

Die RAG-Mechanik (Retrieval-Augmented Generation) in Langdock zerteilt hochgeladene Dokumente methodisch in kleine Text-Blöcke (Chunks) von circa 2.000 Zeichen Länge. Diese isolierten Text-Blöcke werden durch ein Embedding-Modell in 1536-dimensionale Vektoren (1536-dim Embeddings) umgewandelt und in der Vektordatenbank gespeichert. Wenn eine Marketing-Direktorin eine Frage stellt, sucht das System blitzschnell die semantisch ähnlichsten Vektoren. Langdock ruft standardmäßig die Top-50 relevantesten Text-Blöcke (k=50) ab und übergibt ausschließlich diese Fragmente dem Sprachmodell. Da die Text-Blöcke hart aus dem Gesamtkontext isoliert werden, dürfen hochgeladene Dokumente keine unaufgelösten Pronomen enthalten; jedes Nomen muss in jedem Absatz stoisch wiederholt werden. Ein aus dem Kontext gerissener Block mit dem Satz 'Dieses Feature ist toll' ist für das Modell völlig nutzlos, da das System nicht weiß, auf welches Feature sich 'Dieses' bezieht. Klare Überschriften (Headings) strukturieren das Dokument und helfen dem Chunking-Algorithmus, sinnvolle Schnittpunkte zu finden. Ein Text-Block von 2.000 Zeichen entspricht grob etwa 300 Wörtern Fließtext. Marketing-Materialien müssen für diese brutale Mechanik hart optimiert werden: Jeder einzelne Absatz muss komplett eigenständig und ohne Vorwissen verständlich sein. Die Vektor-Suche verzeiht keine unstrukturierten, romanhaften Fließtexte. Ein präzises, Substantiv-lastiges Wording verbessert die Trefferquote signifikant. Agenten greifen nur auf explizit freigegebene Informationen zu, die in diesen Chunks liegen. Ein tiefes Verständnis dieser Mechanik unterscheidet professionelle Nutzer von Amateuren.

## Per-Document-Cap (1 Chunk pro Datei pro Query)

Das Per-Document-Cap (Dokumenten-Limit) ist die mit Abstand wichtigste Regel für die Wissensordner-Strukturierung in Langdock. Um zu verhindern, dass ein einziges, massives Dokument die Retrieval-Ergebnisse dominiert, limitiert das System die Treffer auf meist nur einen einzigen Text-Block (Chunk) pro Datei pro Suchanfrage (Query). Wenn eine Datei zwei völlig unterschiedliche Themen behandelt, wird vom System wahrscheinlich nur das erste gefundene Thema abgerufen. Die einzig logische Lösung für Marketing-Direktoren lautet daher: Ein Thema pro Datei (Single-Topic-Per-File). Wenn Preislisten und technische Produkt-Spezifikationen im selben Dokument liegen, könnte eine Frage nach Preisen den Text-Block mit den Spezifikationen verdrängen. Trennen Sie große Kompendien zwingend in atomare, kleine Dateien, zum Beispiel in eine 'Produkt-X-Preis-Datei.md' und eine 'Produkt-X-Specs-Datei.md'. Das Per-Document-Cap zwingt das Team zu einer hochgradig modularen Dokumentation. Lange Handbücher müssen gnadenlos zerlegt werden, um sicherzustellen, dass alle relevanten Aspekte vom Agenten gefunden werden können. Eine granulare Datei-Architektur (File Architecture) ist der einzige Schlüssel zu konsistenten Antworten. Missachtung des Per-Document-Caps führt unweigerlich zu scheinbar willkürlichen Lücken im Wissen des Agenten. Die strategische Ausrichtung der Ordnerstruktur beschleunigt den Workflow enorm. Jede Datei im Wissensordner sollte eine einzige, absolut eindeutige Funktion erfüllen. Die strikte Einhaltung dieser Regel eliminiert die häufigsten Ursachen für Halluzinationen bei der Retrieval-Augmented Generation.

## Wissensordner-Strategie für Brand-Voice-Dokumente

Die Strategie für die Hinterlegung von Markenstimme (Brand Voice) Dokumenten im Wissensordner erfordert höchste redaktionelle Präzision. Brand-Voice-Regeln müssen zwingend in einer eigenen, isolierten Text-Datei liegen, idealerweise im sauberen Markdown-Format (.md). Der erste Satz des Dokuments muss einen eindeutigen Anker-Begriff (Anchor String) enthalten, der in den System-Anweisungen (System Instructions) des Agenten verbatim referenziert wird. Die Datei sollte klare Ge- und Verbote (Do's and Don'ts) in übersichtlichen Tabellen (von maximal 30 Zeilen Länge) und höchst spezifische Positiv-Beispiele für den Tonfall enthalten. Komplexe Formatierungsregeln für das Content-Marketing müssen strikt ohne Pronomen formuliert werden. Jeder Absatz in der Brand-Voice-Datei muss den Begriff 'Markenstimme' oder 'Brand Voice' wiederholen, damit das RAG-System den Text-Block korrekt der Anfrage zuordnet. Marketing-Direktoren sollten verschiedene Markenstimmen (z.B. für LinkedIn vs. TikTok) in komplett separate Dateien auslagern. Diese physische Trennung verhindert zuverlässig, dass das Retrieval-System die Stile versehentlich vermischt. Ein sauber strukturiertes Brand-Voice-Dokument reduziert Korrekturschleifen bei der Content-Erstellung durch KI dramatisch. Die initiale Investition in präzise geschriebene Markdown-Dateien zahlt sich täglich durch markenkonformen Output aus. Die Marketing-Direktorin profitiert hier massiv von einer klaren Governance-Struktur. Die Langdock-Plattform (Langdock Platform) verarbeitet diese Dokumente deterministisch, was den Markenauftritt langfristig vor Verwässerung schützt.

## Citations und Source-Tracking

Citations (Quellenangaben) und Source-Tracking ermöglichen es Marketing-Direktoren, die Herkunft generierter Agenten-Antworten lückenlos nachzuvollziehen. Wenn ein Agent (Agent) Informationen aus einem Wissensordner (Knowledge Folder) abruft, fügt das Langdock-System der Antwort automatisch eine verlinkte Quellen-Referenz hinzu. Das Source-Tracking basiert dabei ausschließlich auf dem exakten Dateinamen der abgerufenen Datei. Aus genau diesem Grund ist eine hochgradig beschreibende Namenskonvention (Naming Convention) absolut unerlässlich. Dateinamen wie 'finales_dokument_v2.pdf' sind für das Tracking völlig nutzlos; Dateinamen wie '2024-Q3-DACH-SEO-Guidelines.md' schaffen sofortige Transparenz für den Nutzer. MarketingOps-Verantwortliche müssen rigide sicherstellen, dass alle Dokumente sprechende, eindeutige Namen tragen. Die präzise Quellenangabe erlaubt dem Nutzer, die Richtigkeit einer KI-Aussage sofort anhand des verlinkten Originaldokuments zu verifizieren und Halluzinationen auszuschließen. In regulierten Branchen ist das Source-Tracking ein hartes Compliance-Instrument. Das System gibt den exakten Namen der Datei und in der Regel einen direkten Link zum Text-Block (Chunk) aus. Ein pedantisch gepflegter Bibliotheks-Ordner (Library Folder) mit glasklaren Dateinamen stärkt das Vertrauen der Nutzer in die KI-Antworten massiv. Ohne saubere Dateinamen verliert das Source-Tracking jeden praktischen Wert für das Team. Ein systematischer Ansatz beim Wissensmanagement spart Ressourcen und schützt die Marke vor gravierenden Fehlern bei der automatisierten Content-Produktion. Dieser Schritt ist für Auditierungen unerlässlich.

## Marketing-Szenarien aus dieser Domäne

### S-WR-001 Brand Guidelines zentralisieren: Library Folder als Single Source of Truth

Trigger: Der Brand-Guardian-Agent zitiert veraltete Tone-of-Voice-Regeln, weil die aktuellen Brand Guidelines in drei verschiedenen Drive-Ordnern und zwei PDFs verteilt liegen — kein Agent greift auf dieselbe Version zu. (Quelle: 12 Q51; sources/10 S-038)

Ziel: Einen Library Folder als einzige, verbindliche Brand-Wissensquelle für alle Agenten aufsetzen, sodass Aktualisierungen einmal gemacht werden und überall wirken.

Ergebnis: Ein strukturierter Library Folder mit separierten MD-Dateien pro Brand-Regelkategorie, der als zentraler Wissensordner aller Marketing-Agenten dient.

Fähigkeit: Library Folder + Wissensordner-Upload + Agent-Anbindung

Vorgehen:
1. Sammle alle Brand-Dokumente (Tone-of-Voice, Tabu-Wörter, Do's and Don'ts, Beispieltexte) und konvertiere jedes Thema in eine separate MD-Datei — eine Datei pro Regelkategorie, nicht ein Sammel-PDF; Dateinamen beschreibend (z.B. `brand-tonalitaet.md`, `brand-vokabular.md`).
2. Erstelle einen Library Folder "Brand Guidelines" im Workspace und lade alle MD-Dateien hoch; prüfe dass keine Datei >10 MB und keine einzelne Datei >8M Zeichen hat.
3. Binde diesen Library Folder an alle relevanten Agenten (Brand-Guardian, Briefing-Agent, Social-Planer) — jeder Agent zeigt auf denselben Ordner statt auf separate Kopien.
4. Dokumentiere im Ordner eine "README-folder.md" die erklärt welche Datei welche Regelkategorie enthält und wann sie zuletzt aktualisiert wurde.

Vorlage: Brand-Guidelines Library Folder (Single Source of Truth):
1. Atomisierung - je Regelkategorie eine MD-Datei (brand-tonalitaet.md, brand-vokabular.md, brand-tabu-woerter.md, brand-beispiele.md), kein Sammel-PDF.
2. Library Folder 'Brand Guidelines' - alle MD-Dateien hochladen; je Datei <10 MB und <8M Zeichen.
3. Anbindung - denselben Ordner an alle Brand-Agenten (Guardian, Briefing, Social) statt separater Kopien.
4. README-folder.md - welche Datei welche Kategorie enthaelt + letztes Update-Datum.

Artefakt: Ein Library Folder mit 4-6 separaten MD-Dateien pro Regelkategorie, verbunden mit allen Brand-Agenten des Workspaces.

Fallstricke:
- Gesamtes Brand-Manual als einzelnes 80-seitiges PDF hochladen → Per-Document-Cap (1 Chunk/Query) liefert pro Anfrage nur einen zufälligen 2000-Zeichen-Block; aufteilen in atomare Dateien ist Pflicht.
- Veraltete PDFs im selben Ordner belassen → Agent zieht widersprüchliche alte und neue Guidelines gleichzeitig; gelöschte Dateien aus dem Ordner müssen physisch entfernt werden, nicht nur überschrieben.

Empfehlung: Teile das Brand-Manual in atomare Dateien je Regelkategorie statt eines 80-Seiten-PDFs - der Per-Document-Cap (1 Chunk/Query) liefert sonst nur einen zufaelligen 2000-Zeichen-Block. Entferne veraltete PDFs physisch aus dem Ordner, nicht nur durch Ueberschreiben, sonst zieht der Agent alte und neue Guidelines gleichzeitig.

Anschluss: S-WR-002

### S-WR-002 Interne Verlinkung via Wissensordner-Semantiksuche beschleunigen

Trigger: Eine neue Pillar-Page zum Thema "Workflow-Automatisierung" ist live — das Team soll 15+ interne Links aus dem bestehenden Blog-Archiv setzen, durchsucht aber manuell 200 Artikel. (Quelle: sources/10 S-017)

Ziel: Den Wissensordner mit dem Blog-Archiv nutzen, um per semantischer Suche exakte Ankertexte und Quellartikel für interne Verlinkung zu finden — Zeitaufwand von 4 Stunden auf 30 Minuten reduzieren.

Ergebnis: Eine Tabelle mit 10-15 internen Link-Möglichkeiten (Quellartikel, Ankertext, Satzkontext), direkt verwendbar für die CMS-Implementierung.

Fähigkeit: Wissensordner (Blog-Archiv) + Chat (semantische Suche)

Vorgehen:
1. Lade die Top-Traffic-Blogposts als Text-Dateien in einen Wissensordner "Blog-Archiv" (MD-Format für beste Chunk-Qualität, eine Datei pro Artikel mit H1 als erstem Element).
2. Stelle im Chat eine semantische Suchanfrage: "Suche in den Dokumenten nach Passagen, die das Thema Workflow-Automatisierung, Prozessoptimierung oder Event-basierte Triggerung erwähnen — nenne Dateiname, den exakten Satz und einen möglichen Ankertext unter 5 Wörtern."
3. Exportiere die Tabelle aus dem Canvas in eine Google-Sheet-kompatible CSV für das CMS-Team.

Prompt:
> "Du bist SEO-Spezialist [Persona]. Finde interne Verlinkungsmöglichkeiten für unsere neue Pillar-Page zu 'Workflow-Automatisierung' [Task]. Durchsuche die Dokumente im Wissensordner nach Absätzen, die Workflow, Automatisierung, Trigger oder ähnliche Synonyme enthalten [Context]. Liefere eine Tabelle mit Spalten: Quelldokument, Ankertext-Vorschlag, exakter Satz im Original [Format]."

Artefakt: Eine Tabelle mit 10-15 internen Link-Möglichkeiten inkl. Quelldokument, vorgeschlagenem Ankertext und Originalzitat.

Fallstricke:
- Artikel als Sammel-PDF hochladen statt als einzelne Dateien → Per-Document-Cap liefert pro Artikel nur einen Chunk; jeder Artikel braucht eine eigene Datei damit alle Abschnitte erreichbar sind.
- Ankertext zu generisch formulieren (z.B. "hier klicken") → Im Prompt explizit fordern: "Ankertext muss das Keyword und max. 5 Wörter lang sein, keine Floskeln".

Empfehlung: Lade jeden Blog-Artikel als eigene MD-Datei hoch, nicht als Sammel-PDF - der Per-Document-Cap liefert pro Datei nur einen Chunk, sodass sonst nicht alle Abschnitte erreichbar sind. Fordere im Prompt explizit 'Ankertext enthaelt das Keyword und ist max. 5 Woerter lang, keine Floskeln', sonst schlaegt der Agent generische Texte wie 'hier klicken' vor.

Anschluss: S-WR-003

### S-WR-003 Community-FAQ im Wissensordner für schnelle Support-Antworten nutzen

Trigger: Ein viraler LinkedIn-Post generiert 60+ Kommentare mit spezifischen Produktfragen — der Community-Manager antwortet 3 Stunden lang manuell und macht dabei inhaltliche Fehler. (Quelle: 12 Q56; sources/10 S-051)

Ziel: Einen Wissensordner mit FAQs, Produktdaten und Preisen aufsetzen, damit der Community-Manager via Chat sofort akkurate Antwortvorlagen für Kommentare generieren kann.

Ergebnis: 5-10 sofort postbare Antwortvorlagen auf die häufigsten Kommentartypen, tonalitätskonsistent und faktisch korrekt aus dem Wissensordner abgeleitet.

Fähigkeit: Wissensordner (FAQ + Produktdaten) + Chat

Vorgehen:
1. Erstelle einen Wissensordner "Community FAQ" mit separaten MD-Dateien pro Thema (Preise, Features, Support-Prozesse, Häufige Einwände) — jede Datei beginnt mit einem beschreibenden H1 als Retrieval-Anker.
2. Öffne Chat mit dem Wissensordner; paste die ersten 5-10 Kommentare als Block; frage: "Generiere für jeden Kommentar eine 2-Satz-Antwort basierend ausschließlich auf dem FAQ-Wissensordner, Tonalität: freundlich aber sachlich, kein Marketing-Sprech."
3. Prüfe manuell ob jede Antwort eine Quellenangabe aus dem Wissensordner hat — wenn nicht, ist die Antwort möglicherweise halluziniert; nur Antworten mit Quellennachweis verwenden.

Prompt:
> "Du bist Community-Manager [Persona]. Erstelle Antworten auf die folgenden LinkedIn-Kommentare [Task]. Stütze jede Antwort ausschließlich auf Informationen aus dem FAQ-Wissensordner; wenn du eine Frage nicht beantworten kannst, schreibe 'Ich leite das weiter' [Context]. Max. 2 Sätze pro Antwort, freundlich und auf-Du-Basis [Format]."

Artefakt: 5-10 qualitätsgesicherte Antwortvorlagen, je mit Quellennachweis aus dem Wissensordner.

Fallstricke:
- FAQ-Dokument mit veralteten Preisen nicht aktualisieren → Agent antwortet mit falschen Zahlen; Library Folder erfordert manuelles Update, Synced Folder (Google Drive) wäre besser für häufig aktualisierte FAQs.
- Agent gibt Antworten zu Themen außerhalb des Wissensordners → im Prompt explizit einfügen: "Erfinde keine Informationen; wenn kein Treffer im Wissensordner, antworte mit 'Ich leite das weiter'".

Empfehlung: Verlange in jeder Antwort einen Quellennachweis aus dem FAQ-Wissensordner und verwende nur belegte Antworten - ohne Quelle ist die Antwort moeglicherweise halluziniert. Lege haeufig aktualisierte FAQs (Preise) in einen Synced Folder statt einen manuell gepflegten Library Folder, sonst antwortet der Agent mit veralteten Zahlen.

Anschluss: S-WR-004

### S-WR-004 Content-Gap-Analyse: Eigener Wissensordner vs. Konkurrenz-Inhalte

Trigger: Drei Konkurrenten ranken auf Page 1 für das Keyword "Marketing-Automatisierung Mittelstand" — das Team hat eigene Inhalte zu diesem Thema, aber offensichtlich unvollständige Abdeckung der relevanten Subtopics. (Quelle: sources/10 S-021)

Ziel: Den eigenen Wissensordner mit Konkurrenz-Inhalten vergleichen und eine priorisierte Gap-Liste erstellen, die das Redaktionsteam direkt in den Content-Plan überführen kann.

Ergebnis: Eine Gap-Analyse-Tabelle mit Subtopics, die Konkurrenten abdecken und die eigene Content-Bibliothek nicht — als direkte Input-Liste für das nächste Redaktionsmeeting.

Fähigkeit: Wissensordner (eigene Inhalte) + Agent + Web Search

Vorgehen:
1. Binde den Wissensordner mit den eigenen Blog-Artikeln an den Agent; aktiviere Web Search.
2. Lasse den Agent die Top-3-Konkurrenz-Artikel per Web Search abrufen und deren H2-Strukturen extrahieren.
3. Lasse den Agent die Konkurrenz-H2s gegen den eigenen Wissensordner prüfen: "Welche Subtopics decken die Konkurrenten ab, die in meinem Wissensordner nicht vorkommen?"
4. Ausgabe als priorisierte Gap-Tabelle im Canvas: Spalten "Subtopic", "Konkurrent", "Priorität (Hoch/Mittel/Niedrig)", "Empfohlenes Format".

Prompt:
> "Du bist SEO-Stratege [Persona]. Führe eine Content-Gap-Analyse für das Keyword 'Marketing-Automatisierung Mittelstand' durch [Task]. Nutze Web Search für die Top-3-Ergebnisse und vergleiche deren H2-Strukturen mit unseren Dokumenten im Wissensordner [Context]. Liefere eine Gap-Tabelle mit Spalten: Fehlendes Subtopic, Welcher Konkurrent deckt es ab, Priorität 1-3 [Format]."

Artefakt: Eine Gap-Analyse-Tabelle mit 5-15 priorisierten Subtopics als direkter Content-Plan-Input.

Fallstricke:
- Web Search ruft Sidebar-Inhalte oder Werbebanner der Konkurrenz-Seiten ab statt der Artikelstruktur → im Prompt präzisieren "Extrahiere nur die H2-Überschriften des Hauptartikels, ignoriere Navigation und Ads".
- Eigene Inhalte im Wissensordner sind nicht alle themenrelevant hochgeladen → vor der Analyse sicherstellen, dass alle Blog-Artikel zu "Automatisierung" und verwandten Themen im Ordner liegen.

Empfehlung: Praezisiere im Prompt 'Extrahiere nur die H2-Ueberschriften des Hauptartikels, ignoriere Navigation und Ads', sonst zieht Web Search Sidebar-Inhalte oder Werbebanner statt der Artikelstruktur. Stelle vor der Analyse sicher, dass alle eigenen themenrelevanten Blog-Artikel im Wissensordner liegen, sonst meldet die Gap-Analyse faelschlich Luecken, die in Wahrheit nur nicht hochgeladen sind.

Anschluss: S-WR-005

### S-WR-005 DSGVO-Check: Was passiert mit Embeddings aus Kunden-Texten?

Trigger: Der Datenschutzbeauftragte fragt, ob die Embeddings aus dem Kunden-Feedback-Wissensordner personenbezogene Daten im Sinne der DSGVO sind und ob ein AV-Vertrag vorliegen muss. (Quelle: A-20)

Ziel: Klären ob Langdock-Wissensordner-Embeddings DSGVO-relevant sind, welche Schutzmaßnahmen greifen (EU-Hosting, Verschlüsselung, AV-Vertrag), und eine schriftliche Antwort für den DSB vorbereiten.

Ergebnis: Ein DSB-Memo (1 Seite) das die DSGVO-Einstufung der Embeddings begründet und auf die konkreten Langdock-Schutzmaßnahmen verweist.

Fähigkeit: Chat + Canvas (Memo-Erstellung) — Advisory-Modus (Beratung, nicht Ausführung)

Vorgehen:
1. Öffne Chat; stelle die Frage: "Sind Langdock-Wissensordner-Embeddings personenbezogene Daten wenn die Quelltexte Kundennamen und -aussagen enthalten?"
2. Lass den Agent die relevanten Punkte strukturieren: (a) Embedding-Natur (Vektor ≠ Klartext, aber Rückschluss möglich wenn PII in Quelltext), (b) EU-Hosting (Microsoft Azure, EU-Region), (c) Verschlüsselung at-rest, (d) Kein Training der Foundation Models, (e) AV-Vertrag-Prüfung empfohlen.
3. Überführe die Strukturierung in ein Canvas-Memo für den DSB mit Abschnitt "Risikoeinstufung", "Bestehende Schutzmaßnahmen", "Empfohlene Maßnahmen".

Vorlage: DSB-Memo (Embedding-DSGVO-Einstufung):
1. Risikoeinstufung - Embedding-Natur (Vektor != Klartext, aber Rueckschluss moeglich bei PII im Quelltext); DSGVO Art. 4 Nr. 1.
2. Bestehende Schutzmassnahmen - EU-Hosting (Azure, Frankfurt), at-rest-Verschluesselung, kein Foundation-Model-Training auf eigenen Daten.
3. Empfohlene Massnahmen - AV-Vertrag auf Embedding-Klausel pruefen lassen; finale Pruefung durch externen Datenschutzberater.

Artefakt: Ein einseitiges DSB-Memo mit DSGVO-Einstufung der Embeddings und konkreten Maßnahmenempfehlungen.

Fallstricke:
- Agent gibt eine abschließende Rechtsmeinung statt einer beratenden Einschätzung → im Prompt klarstellen "Dies ist eine Ersteinschätzung, kein Rechtsrat; finale Prüfung durch externen Datenschutzberater"; Little Data berät, ersetzt nicht den DSB.
- AV-Vertrag mit Langdock nicht geprüft → die DSGVO-Einstufung hängt vom AV-Vertrag ab; im Memo als offene Handlungsempfehlung festhalten: "AVV auf Embedding-Klausel prüfen lassen".

Empfehlung: Formuliere das Memo als Ersteinschaetzung, nicht als abschliessende Rechtsmeinung - Little Data beraet, ersetzt den DSB nicht; finale Pruefung durch externen Datenschutzberater. Halte die AV-Vertrag-Pruefung auf eine Embedding-Klausel als explizite offene Handlungsempfehlung fest, da die DSGVO-Einstufung vom AVV abhaengt.

Anschluss: S-WR-006

### S-WR-006 Dateinamen-Konvention einführen: Source-Tracking nutzbar machen

Trigger: Der Agent zitiert Dateien wie "dokument_final_v3.pdf" oder "kopie_2024.docx" — der Source-Tracking-Link im Chat ist für das Team nutzlos, weil niemand erkennt, welche Information aus welchem Dokument stammt. (Quelle: 12 Q64)

Ziel: Eine verbindliche Dateinamen-Konvention für den gesamten Wissensordner einführen, sodass jede Citation sofort den Inhalt und die Aktualität der Quelle kommuniziert.

Ergebnis: Eine Namenskonvention-Richtlinie als MD-Datei sowie ein umbenannter Wissensordner, dessen Citations ohne Rückfragen verständlich sind.

Fähigkeit: Library Folder + Source-Tracking (Citations)

Vorgehen:
1. Exportiere die aktuelle Dateiliste aus dem Library Folder (Screenshot oder API); identifiziere alle Dateien mit nichtssagenden Namen.
2. Definiere das Namensschema: `[Jahr]-[Quartal]-[Region]-[Thema]-[Version].md` — zum Beispiel `2025-Q3-DACH-Brand-Voice-Tonalitaet-v2.md`; halte das Schema in einer "README-naming-convention.md" fest.
3. Benenne alle Dateien lokal nach Schema um; lade aktualisierte Versionen in den Ordner und lösche die alten Dateien physisch.
4. Teste: Stelle eine Frage, die eine dieser Dateien triggert — prüfe, ob der Citation-Link jetzt aussagekräftig ist.

Vorlage: Dateinamen-Konvention (Source-Tracking):
1. Ist-Aufnahme - Dateiliste exportieren, nichtssagende Namen (final, v2, kopie) identifizieren.
2. Schema - [Jahr]-[Quartal]-[Region]-[Thema]-[Version].md (z. B. 2025-Q3-DACH-Brand-Voice-Tonalitaet-v2.md); ASCII-only, Bindestriche.
3. Umbenennen - lokal nach Schema, neu hochladen, alte Dateien physisch loeschen.
4. README-naming-convention.md - Muster, Pflichtfelder, Gut/Schlecht-Beispiel.

Artefakt: Eine einseitige Namenskonvention-MD-Datei und ein bereinigter Wissensordner mit sprechenden Dateinamen.

Fallstricke:
- Sonderzeichen, Umlaute oder Leerzeichen im Dateinamen → manche Browser-Links brechen ab; Konvention muss explizit ASCII-only und Bindestrich als Trennzeichen vorschreiben.
- Alte und neue Version gleichzeitig im Ordner lassen → Agent zitiert beide und liefert widersprüchliche Inhalte; immer zuerst löschen, dann neu hochladen.

Empfehlung: Schreibe in der Konvention ASCII-only mit Bindestrich als Trennzeichen vor - Sonderzeichen, Umlaute oder Leerzeichen im Dateinamen lassen manche Citation-Links abbrechen. Loesche die alte Version immer zuerst und lade dann die neue hoch, sonst zitiert der Agent beide und liefert widerspruechliche Inhalte.

Anschluss: S-WR-007

### S-WR-007 Ein-Thema-pro-Datei: Produktkatalog atomisieren für zuverlässiges Retrieval

Trigger: Das Team fragt den Agenten nach Produktpreisen — er antwortet mit Spezifikationen statt Preisen, weil Preisliste und Technisches Datenblatt im selben 40-seitigen Produkthandbuch-PDF stecken. Das Per-Document-Cap liefert nur einen Chunk. (Quelle: sources/10 S-017)

Ziel: Das Per-Document-Cap durch atomare Dateistruktur (ein Thema = eine Datei) systematisch umschiffen, damit jede relevante Information zuverlässig abrufbar ist.

Ergebnis: Ein atomisierter Wissensordner, in dem pro Produkt mindestens drei separate Dateien existieren (Preis, Specs, Anwendungsfälle) — mit messbarer Verbesserung der Retrieval-Trefferquote.

Fähigkeit: Library Folder + Per-Document-Cap-Logik

Vorgehen:
1. Identifiziere alle Multi-Themen-Dokumente im Ordner (Faustregel: PDFs mit >3 H2-Sektionen zu verschiedenen Themen).
2. Zerlege jedes Dokument manuell oder via Chat in thematisch atomare Einheiten: `produkt-x-preis-dach-2025.md`, `produkt-x-specs-technisch-2025.md`, `produkt-x-anwendungsfaelle-2025.md`.
3. Stelle sicher, dass jede neue Datei die Produktbezeichnung im ersten Satz wiederholt (Retrieval-Anker gegen Per-Document-Cap).
4. Lösche die ursprüngliche Multi-Themen-Datei aus dem Ordner.
5. Führe einen Retrieval-Test durch: frage nach Preis, dann nach Specs — beide Antworten müssen unterschiedliche, korrekte Quellen zitieren.

Vorlage: Ein-Thema-pro-Datei (Atomisierung):
1. Multi-Themen-Dokumente finden - Faustregel: PDFs mit >3 H2-Sektionen zu verschiedenen Themen.
2. Zerlegen - je Thema eine atomare MD-Datei (produkt-x-preis-dach-2025.md, produkt-x-specs-2025.md, produkt-x-anwendungsfaelle-2025.md).
3. Retrieval-Anker - Produktbezeichnung im ersten Satz jeder Datei wiederholen.
4. Test - nach Preis und nach Specs fragen; beide Antworten zitieren unterschiedliche, korrekte Quellen.

Artefakt: 3-5 separate MD-Dateien pro Produkt, jede thematisch geschlossen und mit Produktname im Eröffnungssatz.

Fallstricke:
- Datei enthält noch Quervereise wie "Siehe Abschnitt 3 für Preise" → nach Atomisierung sind diese Verweise gebrochen; alle internen Querverweise müssen beim Zerlegen entfernt werden.
- Zu kleinteilige Atomisierung (z.B. jede FAQ-Zeile als eigene Datei) → nähert sich dem 1.000-Datei-Limit des Library Folders; Faustregel: mind. 300 Wörter pro Datei.

Empfehlung: Entferne beim Zerlegen alle internen Querverweise ('Siehe Abschnitt 3 fuer Preise') - nach der Atomisierung sind sie gebrochen. Atomisiere nicht zu kleinteilig (nicht jede FAQ-Zeile als Datei), sonst naeherst du dich dem 1.000-Datei-Limit; Faustregel mind. 300 Woerter pro Datei.

Anschluss: S-WR-008

### S-WR-008 Synced Folder für Live-Preislisten einrichten

Trigger: Die Vertriebsabteilung aktualisiert Preislisten in SharePoint wöchentlich — der Wissensordner zeigt dem Agenten veraltete Preise, weil manuelle Re-Uploads immer vergessen werden. (Quelle: 12 Q59)

Ziel: Einen automatisch synchronisierten Ordner (Synced Folder) mit SharePoint verbinden, damit Preislisten ohne manuellen Eingriff täglich aktuell bleiben.

Ergebnis: Ein konfigurierter Synced Folder mit max. 200 Dateien, der sich alle 24 Stunden automatisch aktualisiert und Preisfragen des Agenten mit tagesaktuellen Daten beantwortet.

Fähigkeit: Synced Folder (SharePoint-Verbindung) + Agent-Anbindung

Vorgehen:
1. Prüfe, ob der SharePoint-Ordner für Preislisten max. 200 Dateien enthält und ausschließlich unterstützte Formate (PDF, DOCX, MD, TXT, PPTX) enthält — CSV/XLSX-Preislisten müssen in PDF oder DOCX konvertiert werden.
2. Erstelle in Langdock einen neuen Synced Folder, verbinde ihn mit dem SharePoint-Ordner via OAuth; stelle die Sync-Frequenz auf 24h.
3. Binde den Synced Folder an den Vertriebs-Agenten als Wissensordner; entferne gleichzeitig den alten manuell gepflegten Library Folder mit den veralteten Preisen.
4. Richte eine wöchentliche manuelle Sync-Kontrolle ein: Prüfe im Interface, ob der letzte Sync erfolgreich war; dokumentiere die Prüfung in einem Governance-Log.

Vorlage: Synced Folder fuer Live-Preislisten (SharePoint):
1. Quellordner pruefen - max. 200 Dateien, nur unterstuetzte Formate (PDF/DOCX/MD/TXT/PPTX); CSV/XLSX in PDF/DOCX konvertieren.
2. Synced Folder anlegen - via OAuth mit SharePoint verbinden, Sync-Frequenz 24h.
3. Anbindung - an den Vertriebs-Agenten; alten manuell gepflegten Library Folder mit veralteten Preisen entfernen.
4. Sync-Kontrolle - woechentlich im Interface pruefen, im Governance-Log dokumentieren.

Artefakt: Ein aktiver Synced Folder der sich täglich von SharePoint aktualisiert, verbunden mit dem Vertriebs-Agenten.

Fallstricke:
- SharePoint-Ordner enthält >200 Dateien → Langdock synchronisiert nur die ersten 200 alphabetisch; ältere Dateien werden ignoriert; Ordner-Struktur im Quellsystem muss thematisch sauber begrenzt sein.
- Ungültige Formate (XLSX, CSV) landen im SharePoint-Ordner → werden beim Sync kommentarlos übersprungen; alle Daten-Zulieferer müssen angewiesen werden, ausschließlich PDF oder DOCX einzustellen.

Empfehlung: Halte den SharePoint-Ordner unter 200 Dateien - Langdock synchronisiert nur die ersten 200 alphabetisch und ignoriert aeltere kommentarlos. Weise alle Daten-Zulieferer an, ausschliesslich PDF oder DOCX einzustellen, da XLSX/CSV beim Sync stillschweigend uebersprungen werden.

Anschluss: S-WR-009

### S-WR-009 Wissensordner-Audit: Veraltete Dokumente identifizieren und bereinigen

Trigger: Der Agent antwortet mit widersprüchlichen Informationen — Preise aus 2023 versus 2025, alte und neue Brand-Farben gleichzeitig. Das Team vermutet, dass der Library Folder seit über einem Jahr nicht bereinigt wurde. (Quelle: 12 Q65)

Ziel: Einen strukturierten Quartals-Audit-Prozess für den Wissensordner etablieren, der veraltete, duplizierte und widersprüchliche Dateien identifiziert und entfernt.

Ergebnis: Ein bereinigter Wissensordner ohne veraltete Dokumente sowie eine Audit-Checkliste die quartalsweise wiederverwendet werden kann.

Fähigkeit: Library Folder (Verwaltungsansicht) + Chat (Audit-Assistent)

Vorgehen:
1. Exportiere die vollständige Dateiliste des Library Folders (Name, Upload-Datum); paste sie in einen Chat und frage: "Identifiziere Dateien die (a) älter als 12 Monate sind, (b) doppelt vorkommen, (c) Dateinamen wie 'final', 'v2', 'alt' oder 'kopie' enthalten."
2. Prüfe jede markierte Datei manuell: gibt es eine neuere Version? Wenn ja, lade die neue Version hoch und lösche die alte physisch — nie nur überschreiben.
3. Für jede beibehaltene Datei: füge das Aktualisierungsdatum im ersten Absatz des Dokuments ein (z.B. "Stand: 2025-Q2") und lade die Datei mit beschreibendem Namen neu hoch.
4. Erstelle eine "AUDIT-LOG-[Datum].md" im Ordner mit den Ergebnissen: Anzahl gelöschter Dateien, Anzahl aktualisierter Dateien, nächstes Audit-Datum.

Vorlage: Wissensordner-Audit (quartalsweise):
1. Dateiliste exportieren - Name + Upload-Datum; per Chat markieren: >12 Monate, Dubletten, Namen mit 'final/v2/alt/kopie'.
2. Manuelle Pruefung - neuere Version vorhanden? Wenn ja, neu hochladen, alte physisch loeschen (nie nur ueberschreiben).
3. Stand-Header - in beibehaltene Dateien ein 'Stand: JJJJ-QQ' im ersten Absatz; mit beschreibendem Namen neu hochladen.
4. AUDIT-LOG-[Datum].md - geloeschte/aktualisierte Dateien, naechstes Audit-Datum.

Artefakt: Eine Audit-Tabelle mit Handlungsempfehlung pro Datei und ein bereinigter Library Folder.

Fallstricke:
- Datei aus Ordner "löschen" ohne physische Entfernung → der Vektor-Eintrag bleibt bestehen bis zur nächsten Neu-Indizierung; in der Langdock-UI explizit "Delete" und nicht nur "Remove from folder" wählen.
- Audit nur nach Datum durchführen und inhaltliche Redundanzen übersehen → zwei Dateien gleichen Inhalts mit unterschiedlichen Namen bleiben beide aktiv; immer nach inhaltlichen Duplikaten suchen.

Empfehlung: Waehle in der UI explizit 'Delete', nicht nur 'Remove from folder' - der Vektor-Eintrag bleibt sonst bis zur naechsten Neu-Indizierung bestehen und vergiftet das Retrieval. Suche aktiv nach inhaltlichen Duplikaten, nicht nur nach Datum, da zwei gleich-inhaltliche Dateien mit verschiedenen Namen sonst beide aktiv bleiben.

Anschluss: S-WR-010

### S-WR-010 RAG-Qualitätstest: Retrieval-Misses systematisch diagnostizieren

Trigger: Das Team meldet, dass der Agent bei Fragen zu bestimmten Themen "Keine Information gefunden" antwortet, obwohl die entsprechenden Dokumente im Wissensordner liegen. Die Ursache ist unklar — falsches Format, schlechter Dateiname, oder schlechte Dokumentstruktur. (Quelle: 12 Q57)

Ziel: Einen reproduzierbaren Testprozess für das RAG-Retrieval aufbauen, der Retrieval-Misses auf ihre Ursache zurückführt und konkrete Verbesserungsmaßnahmen identifiziert.

Ergebnis: Ein Canary-Prompt-Set mit 5-10 Testfragen und einem Diagnose-Protokoll, das Retrieval-Misses kategorisiert und priorisiert behebt.

Fähigkeit: Wissensordner + Chat (Retrieval-Test) + Citations-Analyse

Vorgehen:
1. Definiere 5-10 Canary-Prompts: konkrete Fragen zu jedem Kernthema im Wissensordner (z.B. "Was ist der aktuelle DACH-Preis für Produkt X?", "Welche Farben sind in unserer Brand-CI verboten?").
2. Stelle alle Canary-Prompts im Chat; dokumentiere für jede Antwort: (a) korrekte Citation vorhanden? (b) Inhalt faktisch korrekt? (c) "Keine Information"-Antwort obwohl Dokument vorhanden?
3. Kategorisiere Misses: (A) Datei nicht im Ordner → Upload fehlt; (B) Datei vorhanden aber kein Chunk abgerufen → Per-Document-Cap oder schlechter Dateiname; (C) Falscher Chunk abgerufen → Multi-Themen-Datei atomisieren.
4. Behebe pro Kategorie: (A) Datei hochladen; (B) Datei umbenennen + Anker-Begriff in ersten Satz; (C) Datei atomisieren wie in S-WR-007.

Vorlage: RAG-Qualitaetstest (Canary-Set):
1. 5-10 Canary-Prompts - konkrete Fragen je Kernthema, im Wortlaut realer Nutzeranfragen.
2. Durchlauf - je Antwort dokumentieren: Citation vorhanden? Inhalt korrekt? 'Keine Information' trotz vorhandenem Dokument?
3. Miss-Kategorien - (A) Datei fehlt -> Upload; (B) Datei da, kein Chunk -> Per-Document-Cap/Dateiname; (C) falscher Chunk -> atomisieren (S-WR-007).
4. Behebung je Kategorie + Wiederholung.

Artefakt: Ein Diagnose-Protokoll mit kategorisierten Retrieval-Misses und priorisierten Maßnahmen, wiederverwendbar als monatliches Qualitätscheck-Instrument.

Fallstricke:
- Canary-Prompts zu vage formulieren (z.B. "Was wissen wir über Produkt X?") → breite Suchanfragen liefern generische Ergebnisse; Canary-Prompts müssen denselben spezifischen Wortlaut wie reale Nutzeranfragen verwenden.
- Test direkt nach Upload durchführen → Langdock indiziert asynchron; nach einem Massen-Upload mind. 10 Minuten warten bevor Retrieval-Tests ausgeführt werden.

Empfehlung: Formuliere Canary-Prompts im exakten Wortlaut realer Nutzeranfragen, nicht vage ('Was wissen wir ueber X?') - breite Fragen liefern generische Ergebnisse. Warte nach einem Massen-Upload mindestens 10 Minuten vor dem Retrieval-Test, da Langdock asynchron indiziert.

Anschluss: S-WR-011

### S-WR-011 Embedding-Qualität verbessern: Dokumente für das Chunking optimieren

Trigger: Der Retrieval-Test (S-WR-010) zeigt, dass Dokumente im Wissensordner zwar indexiert sind, aber der zurückgegebene 2.000-Zeichen-Chunk immer wieder einen unbrauchbaren Absatz abruft, der Pronomen wie "dieser", "das", "sie" ohne klaren Antezedent enthält. (Quelle: sources/10 S-038)

Ziel: Bestehende Marketing-Dokumente nach RAG-Optimierungsregeln überarbeiten, sodass jeder 2.000-Zeichen-Chunk auch ohne Kontext vollständig verständlich ist und das richtige Keyword enthält.

Ergebnis: 2-3 überarbeitete Kerndokumente (Brand Voice, Produktspecs, FAQ) die messbar höhere Retrieval-Präzision erzielen als die Originalversionen.

Fähigkeit: Chat (Dokument-Überarbeitung) + Library Folder

Vorgehen:
1. Wähle ein schlecht performendes Dokument (identifiziert via Canary-Test); öffne es im Chat und frage: "Analysiere dieses Dokument auf Pronomen-Anaphern und Kontextverlust-Risiken für ein 2.000-Zeichen-Chunking-System."
2. Wende die drei RAG-Optimierungsregeln an: (a) Jeder Absatz wiederholt den Schlüsselbegriff (kein "es", "das", "diese" ohne Nomen); (b) Jeder Absatz ist ohne Vorwissen verständlich; (c) H2-Überschriften sind keyword-reich und beschreibend.
3. Überarbeite das Dokument im Canvas; prüfe: Ist jeder Absatz eigenständig lesbar? Enthält jeder Absatz den Hauptbegriff mindestens einmal?
4. Lade die überarbeitete Version hoch, lösche die alte; führe Canary-Test erneut durch.

Vorlage: Chunking-Optimierung (Embedding-Qualitaet):
1. Schwaches Dokument waehlen (aus Canary-Test); auf Pronomen-Anaphern und Kontextverlust pruefen.
2. Drei Regeln - (a) jeder Absatz wiederholt den Schluesselbegriff (kein 'es/das/diese' ohne Nomen), (b) jeder Absatz ohne Vorwissen verstaendlich, (c) H2 keyword-reich und beschreibend.
3. Ueberarbeiten + neu hochladen, alte loeschen, Canary-Test wiederholen.

Artefakt: Ein RAG-optimiertes Dokument, das bei Canary-Tests messbar häufiger den richtigen Chunk zurückgibt als die Originalversion.

Fallstricke:
- Keyword-Wiederholung so aggressiv umsetzen, dass der Text maschinell klingt → Optimierung darf erst nach abgeschlossener menschlicher Qualitätsprüfung live gehen; Keyword-Dichte max. 2-3× pro Absatz.
- Überschriften als fließende Fragen formulieren ("Was ist gute Brand Voice?") statt als Substantiv-Schlüsselwörter ("Brand Voice: Ton, Stil, Regeln") → Fragen verbessern Lesbarkeit, Substantive verbessern Vektor-Retrieval; für Wissensordner immer Substantiv-Überschriften wählen.

Empfehlung: Halte die Keyword-Dichte bei 2-3x pro Absatz und gib das Dokument erst nach menschlicher Qualitaetspruefung live - zu aggressive Wiederholung laesst den Text maschinell klingen. Waehle fuer Wissensordner Substantiv-Ueberschriften ('Brand Voice: Ton, Stil, Regeln') statt fliessender Fragen, da Substantive das Vektor-Retrieval verbessern.

Anschluss: S-WR-012

### S-WR-012 Persona-Definitionen für den Brand-Voice-Agenten strukturieren

Trigger: Der Brand-Voice-Agent wendet die Tonalität inkonsistent an — manchmal sachlich-souverän, manchmal überschwänglich. Bei der Untersuchung zeigt sich: Persona-Beschreibungen, Brand-Voice-Regeln und Beispieltexte stecken alle in einer einzigen langen Datei. (Quelle: sources/10 S-039)

Ziel: Persona-Definitionen als eigenständige, atomare Wissensordner-Dateien strukturieren, die vom RAG-System zuverlässig gefunden werden und dem Agenten einen stabilen Tonalitäts-Anker liefern.

Ergebnis: Separate MD-Dateien für jede Zielgruppen-Persona mit eindeutigem H1-Anker und expliziten Tonalitäts-Regeln pro Kommunikationskanal.

Fähigkeit: Library Folder + Agent-Wissensordner-Anbindung

Vorgehen:
1. Zerlege die Sammel-Datei: eine MD-Datei pro Persona-Typ (z.B. `persona-entscheider-cmo-2025.md`, `persona-anwender-marketing-manager-2025.md`); H1 muss "Persona: [Name]" lauten damit der System-Prompt des Agenten verbatim darauf referenzieren kann.
2. Füge in jede Persona-Datei einen Abschnitt "Tonalität nach Kanal" ein: LinkedIn (sachlich, Bullet-Punkte), E-Mail-Newsletter (persönlich, kurze Sätze), Social Ads (provokant, Frageformulierung) — jeder Kanal als eigener H2.
3. Aktualisiere die System-Instructions des Agenten: "Rufe für Zielgruppenanalysen die Datei 'Persona: [Name]' aus dem Wissensordner ab" — der verbatim Anker-String stellt sicher dass das richtige Chunk abgerufen wird.

Vorlage: Persona-Definitionen strukturieren:
1. Zerlegen - eine MD-Datei pro Persona (persona-entscheider-cmo-2025.md); H1 = 'Persona: [Name]' fuer verbatim System-Prompt-Referenz.
2. Tonalitaet nach Kanal - je Kanal ein H2 (LinkedIn sachlich/Bullets, Newsletter persoenlich/kurz, Social Ads provokant/Frage).
3. System-Instruction - 'Rufe fuer Zielgruppenanalysen die Datei "Persona: [Name]" ab'.

Artefakt: 2-4 separate Persona-MD-Dateien mit eindeutigem H1-Anker, Tonalitäts-Regeln pro Kanal und System-Prompt-kompatiblem Struktur.

Fallstricke:
- Anker-Begriff in System-Prompt und H1 der Datei weichen voneinander ab (z.B. "CMO-Persona" vs. "Persona: CMO") → der Agent findet die Datei nicht zuverlässig; verbatim Übereinstimmung ist zwingend.
- Tonalitäts-Regeln als lange Fließtext-Absätze statt als strukturierte Listen → bei 2.000-Zeichen-Chunks werden Listen besser als abgeschlossene Einheiten abgerufen; Ge- und Verbote immer als Strichlisten formatieren.

Empfehlung: Halte den Anker-Begriff in System-Prompt und H1 der Datei verbatim identisch ('Persona: CMO', nicht 'CMO-Persona') - bei Abweichung findet der Agent die Datei nicht zuverlaessig. Formatiere Ge- und Verbote als Strichlisten statt Fliesstext, da Listen bei 2.000-Zeichen-Chunks besser als abgeschlossene Einheiten abgerufen werden.

Anschluss: S-WR-013

### S-WR-013 Brand Guidelines aus Beispieltexten reverse-engineeren

Trigger: Das Unternehmen hat keine formalen Brand-Voice-Guidelines — es gibt nur eine Sammlung von 10 hochqualitativen historischen Blog-Artikeln und Pressemitteilungen. Freelancer erhalten keine einheitliche Briefing-Grundlage. (Quelle: sources/10 S-038)

Ziel: Aus vorhandenen Best-Practice-Texten automatisiert ein Brand-Voice-Dokument extrahieren, das als Wissensordner-Datei dient und sofort mit dem Brand-Guardian-Agenten verbunden werden kann.

Ergebnis: Ein vollständiges Brand-Voice-Dokument im MD-Format mit Tonalitäts-Analyse, Do's-and-Don'ts-Tabelle und drei Vorher/Nachher-Beispielen.

Fähigkeit: Wissensordner (Beispieltexte-Ordner) + Chat + Canvas

Vorgehen:
1. Lade die 10 Beispieltexte als separate MD-Dateien in einen temporären Wissensordner "Brand Samples" (eine Datei pro Text, H1 als Dokumentname).
2. Frage im Chat mit aktiviertem Ordner: "Analysiere alle Dokumente im Ordner und extrahiere: (a) Satzlänge-Muster, (b) Vokabular-Präferenzen, (c) wiederkehrende rhetorische Devices, (d) Themen die vermieden werden."
3. Überführe die Analyse in ein Canvas-Dokument mit Struktur: Tonalitäts-Beschreibung, Do's-and-Don'ts-Tabelle (max. 30 Zeilen), drei Vorher/Nachher-Beispiele.
4. Exportiere als `brand-voice-manual-[Jahr]-v1.md`; lade in den produktiven Library Folder hoch; entferne den temporären Samples-Ordner.

Prompt:
> "Du bist Brand-Stratege [Persona]. Analysiere alle Texte im verknüpften Wissensordner und extrahiere unsere implizite Brand Voice [Task]. Fokus auf: Satzlänge, Fachbegriffe, Formulierungen die wiederholt vorkommen, und Themen die konsequent vermieden werden [Context]. Erstelle ein Brand-Voice-Manual mit Tonalitäts-Beschreibung, Do's-and-Don'ts-Tabelle und drei Vorher/Nachher-Beispielen [Format]."

Artefakt: Ein vollständiges Brand-Voice-MD-Dokument bereit für den Library Folder und die Agent-Anbindung.

Fallstricke:
- Beispieltexte stammen aus verschiedenen Phasen (alter Stil 2020 + neuer Stil 2024) → die Analyse extrahiert einen Misch-Stil der keiner Periode entspricht; Texte müssen vorher nach Zeitraum kuratiert werden.
- Brand-Voice-Analyse-Dokument wird nie durch einen Human-Review validiert → KI-extrahierte Guidelines können subtile Fehlmuster reproduzieren; Freigabe durch Brand-Verantwortlichen vor Library-Folder-Upload ist Pflicht.

Empfehlung: Kuratiere die Beispieltexte vor der Analyse nach Zeitraum - eine Mischung aus altem (2020) und neuem (2024) Stil extrahiert einen Misch-Stil, der keiner Periode entspricht. Lass das KI-extrahierte Brand-Voice-Manual vor dem Library-Folder-Upload vom Brand-Verantwortlichen freigeben, da die Analyse subtile Fehlmuster reproduzieren kann.

Anschluss: S-WR-014

### S-WR-014 Wissensordner für spezifische Agenten-Typen konfigurieren

Trigger: Ein Workspace enthält fünf Agenten (SEO, Brand, Community, Vertrieb, PR) — alle greifen auf denselben gemeinsamen Wissensordner zu. Der SEO-Agent zitiert Brand-Voice-Regeln bei SEO-Fragen und der Community-Agent liefert technische Produktspezifikationen als Antwort auf Nutzer-Kommentare. (Quelle: 12 Q38)

Ziel: Pro Agenten-Typ einen dedizierten, thematisch gefilterten Wissensordner einrichten, damit jeder Agent ausschließlich themenrelevante Dokumente als Kontext erhält.

Ergebnis: Eine Wissensordner-Architektur mit 3-5 spezialisierten Ordnern, deren Anbindung an die jeweiligen Agenten dokumentiert ist.

Fähigkeit: Library Folder (mehrere) + Agent-Konfiguration + Wissensordner-Anbindung

Vorgehen:
1. Mappe alle vorhandenen Dokumente nach Agenten-Relevanz: Tabelle mit Spalten "Dokument", "SEO-Agent", "Brand-Agent", "Community-Agent" — Kreuzchen setzen wo relevant.
2. Erstelle separate Library Folders pro Agenten-Typ: "WO-SEO", "WO-Brand", "WO-Community"; lade nur die relevanten Dokumente in den jeweiligen Ordner (Duplikate sind erlaubt — besser doppelt als falsch zugeordnet).
3. Aktualisiere die Agenten-Konfiguration: löse die Verbindung zum gemeinsamen Ordner; verbinde jeden Agenten ausschließlich mit seinem dedizierten Ordner.
4. Dokumentiere die Ordner-Architektur in einer "WO-ARCHITEKTUR-[Datum].md" Datei im Workspace.

Vorlage: Wissensordner pro Agent-Typ:
1. Relevanz-Mapping - Tabelle Dokument x Agent (SEO/Brand/Community...), Kreuzchen wo relevant.
2. Dedizierte Library Folders - 'WO-SEO', 'WO-Brand', 'WO-Community'; nur relevante Dokumente je Ordner (Duplikate erlaubt).
3. Anbindung - gemeinsamen Ordner loesen, jeden Agenten nur an seinen dedizierten Ordner.
4. WO-ARCHITEKTUR-[Datum].md dokumentieren.

Artefakt: Eine dokumentierte Wissensordner-Architektur-Matrix und 3-5 konfigurierte spezialisierte Library Folders mit korrekter Agenten-Anbindung.

Fallstricke:
- Gemeinsamer Basis-Ordner (z.B. Unternehmensgeschichte, Impressum) wird vergessen → wiederkehrende allgemeine Informationen in einen "WO-BASIS" Ordner auslagern den alle Agenten zusätzlich einbinden.
- Zu viele Ordner pro Agent konfigurieren → jeder Agent kann max. 5 Synced Folders einbinden; Library Folders zählen separat; bei über 3 Ordnern pro Agent Konfigurationsaufwand abwägen.

Empfehlung: Lagere wiederkehrende allgemeine Informationen (Unternehmensgeschichte, Impressum) in einen 'WO-BASIS'-Ordner aus, den alle Agenten zusaetzlich einbinden, statt sie zu vergessen. Erwaege ab >3 Ordnern pro Agent den Konfigurationsaufwand; Synced Folders sind auf 5 pro Agent begrenzt, Library Folders zaehlen separat.

Anschluss: S-WR-015

### S-WR-015 Structured vs. Unstructured Content: Format-Entscheidungsmatrix anwenden

Trigger: Das MarketingOps-Team fragt, welche Dokumente in den Wissensordner gehören und welche als direkter Chat-Anhang hochgeladen werden müssen — der Unterschied zwischen tabellarischen Performance-Daten (CSV) und redaktionellen Briefings (DOCX) ist dem Team nicht klar. (Quelle: 12 Q52, Q53)

Ziel: Eine praxisnahe Entscheidungsmatrix etablieren, die für jeden Dokument-Typ klar benennt: Wissensordner (RAG), direkter Anhang (Data Analyst) oder kein Upload (nicht geeignet).

Ergebnis: Eine laminierbare Ein-Seiten-Entscheidungsmatrix als MD-Datei für das Team, die zukünftige Upload-Entscheidungen eigenständig ermöglicht.

Fähigkeit: Chat (Matrix-Erstellung) + Canvas + Library Folder (Ablage der Matrix)

Vorgehen:
1. Erstelle im Chat eine erste Rohdraft-Tabelle mit drei Spalten: "Dokument-Typ", "Empfohlener Upload-Weg", "Begründung" — befülle die Zeilen mit den häufigsten Marketing-Dokumenten (Preisliste, Brand Guidelines, Kampagnen-Brief, Performance-CSV, Meeting-Notiz, Pressemitteilung).
2. Ergänze eine Spalte "Warnsignal": Situationen in denen ein Dokument vermeintlich in den Wissensordner gehört, aber tatsächlich nicht (z.B. CSV mit Performance-Daten: immer Data Analyst, nie Wissensordner).
3. Speichere als `entscheidungsmatrix-upload-wissensordner-v1.md`; lade in den Library Folder "WO-BASIS"; referenziere im Onboarding-Dokument für neue Mitarbeiter.

Vorlage: Upload-Entscheidungsmatrix (Wissensordner/Anhang/keiner):
1. Spalten - Dokument-Typ, empfohlener Upload-Weg, Begruendung, Warnsignal.
2. Zeilen - Preisliste, Brand Guidelines, Kampagnen-Brief, Performance-CSV, Meeting-Notiz, Pressemitteilung.
3. Kernregel - PDF/DOCX/MD/TXT/PPTX -> Wissensordner; CSV/XLSX -> Data Analyst (Anhang); Bilder -> nur Anhang.
4. Ablage - entscheidungsmatrix-upload-v1.md im WO-BASIS, im Onboarding verlinkt.

Artefakt: Eine Ein-Seiten-Entscheidungsmatrix als MD-Datei, im Library Folder abgelegt und im Team-Onboarding verlinkt.

Fallstricke:
- Redaktionell formatierte Excel-Tabellen (z.B. Editorial-Kalender als XLSX) als XLSX hochladen wollen → auch redaktionell formatierte Tabellenkalkulationen werden vom Wissensordner abgelehnt; als PDF oder DOCX exportieren oder in MD konvertieren.
- Matrix nach Erstellung nie aktualisieren → wenn Langdock neue Formate unterstützt, ist die Matrix veraltet; Versionsdatum im Dateinamen ist Pflicht; Quartals-Review in Audit-Prozess integrieren.

Empfehlung: Exportiere auch redaktionell formatierte Excel-Tabellen (Editorial-Kalender) als PDF/DOCX oder MD - der Wissensordner lehnt jede Tabellenkalkulation ab, egal wie sauber formatiert. Versieh die Matrix mit Versionsdatum und nimm sie in den Quartals-Audit auf, da sie veraltet, sobald Langdock neue Formate unterstuetzt.

Anschluss: S-WR-016

### S-WR-016 Wissensordner-Freshness-Management: Dokumentenaktualität steuern

Trigger: Ein Vertriebs-Mitarbeiter fragt den Agenten nach dem aktuellen Produktpreis; der Agent antwortet korrekt — aber der Preis gilt seit diesem Quartal nicht mehr. Das Dokument im Wissensordner wurde seit 14 Monaten nicht aktualisiert, hat aber keinen sichtbaren Hinweis auf sein Erstellungsdatum. (Quelle: A-33)

Ziel: Einen systematischen Freshness-Management-Prozess einführen, der für jedes Wissensordner-Dokument einen definierten Review-Rhythmus sicherstellt und veraltete Dokumente proaktiv markiert.

Ergebnis: Eine Freshness-Inventur-Tabelle aller Wissensordner-Dokumente mit definierten Review-Deadlines und ein Kalender-Event-Set für die nächsten vier Quartale.

Fähigkeit: Library Folder (Verwaltung) + Chat (Inventur-Assistent)

Vorgehen:
1. Exportiere Dateiliste (Name + Upload-Datum); kategorisiere Dokumente nach natürlichem Update-Rhythmus: Preislisten (monatlich), Brand Guidelines (jährlich), FAQ (quartalsweise), Personas (halbjährlich).
2. Füge in die erste Zeile jedes Dokuments einen "Stand"-Header ein: "Stand: [JJJJ-MM] | Nächster Review: [JJJJ-MM]" — dieser Anker erscheint im Citation-Text und warnt den Nutzer aktiv.
3. Richte für jeden Review-Rhythmus ein Kalender-Event ein (z.B. monatliche Erinnerung "Preislisten-Check im Wissensordner") mit dem Wissensordner-Owner als Verantwortlichem.
4. Definiere eine Escalation-Regel: Dokumente die ihren Review-Termin um >30 Tage überschreiten werden mit Präfix "VERALTET-" im Dateinamen versehen bis zum nächsten Update.

Vorlage: Freshness-Management:
1. Inventur - Dateiliste + Update-Rhythmus je Kategorie (Preise monatlich, Brand jaehrlich, FAQ quartalsweise, Personas halbjaehrlich).
2. Stand-Header - erste Zeile jedes Dokuments 'Stand: JJJJ-MM | Naechster Review: JJJJ-MM'.
3. Kalender-Events - je Rhythmus eine Erinnerung mit dem Ordner-Owner.
4. Eskalation - Dokumente >30 Tage ueber Review-Termin mit Praefix 'VERALTET-' kennzeichnen.

Artefakt: Eine Freshness-Inventur-Tabelle mit definierten Review-Terminen und eine README-Datei im Library Folder die den Update-Prozess beschreibt.

Fallstricke:
- Stand-Header nur im Dateinamen und nicht im Dokumenteninhalt → der Header erscheint im Citation-Link aber nicht im abgerufenen Chunk; immer in die erste Zeile des Dokuments schreiben damit er im Chunk-Text sichtbar ist.
- Freshness-Prozess ohne klare Ownership einführen → ohne namentliche Verantwortliche wird der Prozess nach zwei Quartalen nicht mehr gelebt; je Dokument-Kategorie eine einzige verantwortliche Person benennen.

Empfehlung: Schreibe den Stand-Header in die erste Zeile des Dokumentinhalts, nicht nur in den Dateinamen - im Dateinamen erscheint er im Citation-Link, aber nicht im abgerufenen Chunk-Text. Benenne je Dokument-Kategorie eine einzige verantwortliche Person, sonst wird der Freshness-Prozess nach zwei Quartalen nicht mehr gelebt.

Anschluss: S-WR-017

### S-WR-017 Krisenkomm-Playbook als Wissensordner für Sofortzugriff strukturieren

Trigger: Ein Serverausfall löst eine Flut negativer Social-Media-Kommentare aus — der Community-Manager sucht 20 Minuten lang in SharePoint nach dem Krisenkomm-Playbook, weil es in drei verschiedenen Ordner-Hierarchien liegt. Der erste Response kommt zu spät. (Quelle: sources/10 S-051)

Ziel: Das gesamte Krisenkomm-Playbook als sofort abrufbaren Wissensordner strukturieren, damit der Agent innerhalb von 60 Sekunden kanalspezifische Holding-Statements auf Basis validierter Richtlinien liefert.

Ergebnis: Ein "WO-Krisenkomm" Library Folder mit atomisierten Dateien pro Krisen-Typ und Kanal, verbunden mit einem dedizierten Krisen-Agenten.

Fähigkeit: Library Folder + Agent-Konfiguration + Wissensordner-Anbindung

Vorgehen:
1. Zerlege das bestehende Krisenkomm-Playbook in atomare Dateien: eine Datei pro Krisen-Typ (Serverausfall, Datenleck, Produktrückruf, Negativ-Medienberichte) und eine Datei pro Kanal-Regel (Twitter/X-Stil, LinkedIn-Stil, Presse-Statement-Stil).
2. Füge in jede Krisen-Datei im ersten Absatz einen Trigger-Begriff ein der im Agenten-Prompt verbatim referenziert wird (z.B. "Krisentyp: Serverausfall" als H1).
3. Erstelle einen dedizierten "Krisen-Agenten" mit System-Instruction: "Greife bei Krisenkomm-Anfragen sofort auf den Wissensordner WO-Krisenkomm zu; erfinde niemals ETAs oder Schadenszahlen."
4. Teste den Agenten mit einer Simulationsfrage: "Serverausfall seit 2 Stunden — schreibe Tweet und LinkedIn-Statement"; prüfe ob beide Antworten aus dem Ordner stammen (Citations vorhanden).

Vorlage: Krisenkomm-Playbook als Wissensordner:
1. Atomisieren - je Krisen-Typ (Serverausfall, Datenleck, Produktrueckruf, Negativ-Medien) und je Kanal-Regel (X/LinkedIn/Presse) eine Datei.
2. Trigger-Anker - im ersten Absatz/H1 verbatim referenzierbarer Begriff ('Krisentyp: Serverausfall').
3. Krisen-Agent - System-Instruction: sofort auf WO-Krisenkomm zugreifen; nie ETAs/Schadenszahlen erfinden.
4. Simulationstest - 'Serverausfall seit 2h: Tweet + LinkedIn'; Citations pruefen.

Artefakt: Ein vollständiger WO-Krisenkomm Library Folder mit atomisierten Dateien pro Krisen-Typ und ein getesteter Krisen-Agent mit nachgewiesenen Citations.

Fallstricke:
- Krisenkomm-Playbook nur als Muster-Dokument strukturieren ohne kanalspezifische Anpassungen → Agent liefert generische Statements die für den jeweiligen Kanal unpassend sind; Kanal-Regeln müssen explizit als separate Datei vorliegen.
- Agent gibt geschätzte Wiederherstellungszeiten aus obwohl diese nicht im Wissensordner stehen → Halluzinations-Risiko bei Krisen ist besonders hoch; System-Instruction muss explizites Verbot enthalten: "Erfinde niemals ETAs."

Empfehlung: Lege Kanal-Regeln als separate Dateien an, sonst liefert der Agent generische, fuer den Kanal unpassende Statements. Verankere im System-Prompt das explizite Verbot 'Erfinde niemals ETAs oder Schadenszahlen' - das Halluzinations-Risiko ist im Krisenfall besonders hoch.

Anschluss: S-WR-018

### S-WR-018 SEO-Content-Archiv im Wissensordner für interne Verlinkung nutzen

Trigger: Eine neue Pillar-Page zum Thema "B2B-Automatisierung" ist live — das Team muss 15 interne Links aus dem 200-Artikel-Blog-Archiv setzen, durchsucht aber manuell. Vier Stunden Recherchearbeit für einen einzigen Linking-Durchgang. (Quelle: sources/10 S-017)

Ziel: Das Blog-Archiv als semantisch durchsuchbaren Wissensordner aufbauen, sodass interne Verlinkungsempfehlungen in 30 Minuten statt 4 Stunden generiert werden.

Ergebnis: Eine Tabelle mit 10-15 internen Link-Möglichkeiten (Quellartikel, Ankertext-Vorschlag, Originalzitat) direkt verwendbar für die CMS-Implementierung.

Fähigkeit: Wissensordner (Blog-Archiv) + Chat (semantische Suche)

Vorgehen:
1. Exportiere die Top-Traffic-Artikel aus dem CMS als HTML oder Text; konvertiere zu MD-Dateien (eine Datei pro Artikel, H1 = Artikel-Titel); lade in Library Folder "WO-Blog-Archiv".
2. Führe eine semantische Suche durch: "Suche in den Dokumenten nach Passagen die das Thema B2B-Automatisierung, Workflow-Optimierung oder API-Integration behandeln — nenne Dateiname, exakten Satz und Ankertext-Vorschlag unter 5 Wörtern."
3. Prüfe alle Ergebnisse auf Citation-Vollständigkeit — nur Vorschläge mit Quellenangabe weiterverwenden; Tabelle aus Canvas in CMS-kompatibles Format exportieren.
4. Aktualisiere den Wissensordner nach jedem neuen Artikel-Batch (monatlich); alte Artikel die depubliziert wurden sofort entfernen.

Prompt:
> "Du bist SEO-Spezialistin [Persona]. Finde interne Verlinkungsmöglichkeiten für unsere neue Pillar-Page zu 'B2B-Automatisierung' [Task]. Durchsuche die Dokumente im Wissensordner nach Absätzen die Workflow, Automatisierung, API-Integration oder ähnliche Synonyme enthalten [Context]. Liefere eine Tabelle mit: Quelldokument, Ankertext-Vorschlag (max. 5 Wörter, kein 'hier klicken'), exakter Originalsatz [Format]."

Artefakt: Eine Link-Tabelle mit 10-15 Einträgen, je mit Quelldokument, Ankertext und Originalzitat — direkt verwendbar für den CMS-Import.

Fallstricke:
- Artikel als Sammel-PDF statt einzelne Dateien hochladen → Per-Document-Cap liefert pro PDF nur einen einzigen Chunk; jeder Artikel braucht eine eigene MD-Datei damit alle Abschnitte erreichbar sind.
- Ankertext-Vorschläge ohne Keyword-Anforderung im Prompt → Agent schlägt generische Texte wie "mehr dazu" vor; Prompt muss explizit fordern "Ankertext enthält das Ziel-Keyword und ist max. 5 Wörter lang."

Empfehlung: Lade jeden Blog-Artikel als eigene MD-Datei (H1 = Titel), nicht als Sammel-PDF - der Per-Document-Cap liefert pro PDF nur einen Chunk, sodass sonst nicht alle Abschnitte erreichbar sind. Fordere im Prompt 'Ankertext enthaelt das Ziel-Keyword und ist max. 5 Woerter lang', sonst schlaegt der Agent generische Texte wie 'mehr dazu' vor.

Anschluss: S-WR-019

### S-WR-019 Mehrere Wissensordner gleichzeitig für Cross-Themen-Recherche abfragen

Trigger: Das Team führt eine Content-Gap-Analyse durch und muss gleichzeitig den SEO-Archiv-Ordner und den Konkurrenz-Analyse-Ordner abfragen, um festzustellen welche Subtopics die Konkurrenz abdeckt die im eigenen Content-Bestand fehlen. (Quelle: 12 Q69)

Ziel: Durch parallele Abfrage mehrerer Wissensordner in einem einzigen Chat eine umfassende Cross-Themen-Analyse durchführen, ohne Dokumente zusammenzuführen oder duplizieren zu müssen.

Ergebnis: Eine priorisierte Content-Gap-Tabelle mit Subtopics, zugeordneter Konkurrenz-Quelle und Empfehlung für Content-Format und Priorität.

Fähigkeit: Wissensordner (mehrere) + Agent + Web Search

Vorgehen:
1. Verbinde den Agenten mit beiden relevanten Wissensordnern ("WO-Blog-Archiv" und "WO-Konkurrenz-Analyse"); aktiviere zusätzlich Web Search für Live-Daten.
2. Weise den Agenten an beide Ordner explizit zu referenzieren: "Suche in WO-Blog-Archiv nach vorhandenen Inhalten zu [Thema] UND in WO-Konkurrenz-Analyse nach Subtopics der Top-3-Konkurrenten."
3. Lasse den Agenten eine Gap-Tabelle erstellen: Spalten "Subtopic", "Im eigenen Archiv vorhanden (J/N)", "Konkurrent der es abdeckt", "Priorität (1-3)".
4. Exportiere die Tabelle aus dem Canvas für das Redaktionsmeeting; priorisiere die Top-5-Gaps für den nächsten Content-Sprint.

Prompt:
> "Du bist SEO-Content-Strategin [Persona]. Führe eine Content-Gap-Analyse für das Keyword-Cluster 'Marketing-Automatisierung Mittelstand' durch [Task]. Suche in WO-Blog-Archiv nach vorhandenen Inhalten und in WO-Konkurrenz-Analyse nach Subtopics die Wettbewerber abdecken; ergänze fehlende Wettbewerber-Daten via Web Search [Context]. Liefere eine Gap-Tabelle mit Spalten: Subtopic, Eigener Content vorhanden, Konkurrent, Priorität 1-3, Empfohlenes Format [Format]."

Artefakt: Eine Content-Gap-Tabelle mit 5-15 priorisierten Subtopics als direkter Input für das Redaktions-Backlog.

Fallstricke:
- Beide Ordner enthalten zu viele Dokumente zu demselben Thema → semantische Suche liefert 50 Kandidaten (k=50) die sich thematisch überlappen; Abfrage-Prompt muss thematisch eng gehalten werden um rauschfreie Ergebnisse zu erhalten.
- Web Search ruft Navigations-Elemente oder Werbebanner der Konkurrenz-Seiten ab statt der Artikel-Struktur → im Prompt präzisieren: "Extrahiere nur H2-Überschriften des Hauptartikels; ignoriere Navigation und Sidebar."

Empfehlung: Halte die Abfrage thematisch eng, wenn du mehrere Ordner parallel durchsuchst - bei breiter Frage liefert k=50 ueberlappende, verrauschte Kandidaten aus beiden Ordnern. Praezisiere bei Web Search 'nur H2-Ueberschriften des Hauptartikels, ignoriere Navigation und Sidebar', sonst landen Werbebanner statt Artikelstruktur in der Analyse.

Anschluss: S-WR-020

### S-WR-020 DSGVO-konformer Wissensordner für Kundenfeedback-Analyse aufbauen

Trigger: Das Team möchte 200 Kunden-Survey-Antworten in den Wissensordner laden, damit der Agent daraus Persona-Updates und Produkt-Insights ableiten kann — der Datenschutzbeauftragte fragt nach einer DSGVO-Bewertung bevor der Upload stattfindet. (Quelle: A-20 + A-16)

Ziel: Einen DSGVO-konformen Prozess für die Nutzung von Kundenfeedback im Wissensordner definieren: Anonymisierung vor Upload, Embedding-Einschätzung, AV-Vertrag-Prüfung und dokumentiertes Freigabe-Gate.

Ergebnis: Ein einseitiges DSGVO-Freigabe-Memo für den DSB sowie ein anonymisierter Wissensordner mit Kundenfeedback-Zusammenfassungen statt Roh-Antworten.

Fähigkeit: Chat + Canvas (Memo-Erstellung) + Library Folder (anonymisierte Daten)

Vorgehen:
1. Anonymisiere die Rohdaten via Data Analyst (Tags statt PII); nie Roh-PII in den Wissensordner.
2. Erstelle je Segment eine aggregierte Zusammenfassungs-Datei (mind. 5 Antworten).
3. Verfasse das DSB-Memo und lade den Ordner erst nach schriftlicher Freigabe hoch.

Vorlage: DSGVO-konformer Kundenfeedback-Wissensordner:
1. Anonymisierung - vor Upload Namen/E-Mail/Firmen durch Tags ([Kunde-A], [Branche: Handel]) ersetzen (via Data Analyst als Anhang); nie Roh-PII in den Wissensordner.
2. Aggregation - je Segment eine Zusammenfassungs-Datei (mind. 5 Antworten) statt Einzelantworten.
3. DSB-Memo (Canvas) - Datenquelle/Anonymisierung, Embedding-Einschaetzung (EU-Hosting, at-rest), AV-Vertrag-Status, Risikoeinstufung, Freigabe.
4. Upload erst nach schriftlicher DSB-Freigabe; Freigabedatum in README.

Artefakt: Ein DSB-Memo mit DSGVO-Einschätzung, ein anonymisierter Wissensordner mit Feedback-Zusammenfassungen und ein dokumentiertes Freigabe-Gate.

Fallstricke:
- Aggregierte Zusammenfassungen enthalten noch indirekt identifizierende Details (z.B. "einziger Kunde in der Region X der Produkt Y nutzt") → Aggregation muss inhaltlich geprüft werden; Faustregel: Zusammenfassung muss mind. 5 Antworten zusammenfassen damit Rückschlüsse ausgeschlossen sind.
- AV-Vertrag mit Langdock auf Embedding-Klausel nicht geprüft → die DSGVO-Einschätzung hängt vom AV-Vertrag ab; im Memo als explizite offene Handlungsempfehlung festhalten; Little Data berät, ersetzt nicht den DSB.

Empfehlung: Pruefe Aggregate inhaltlich auf indirekt identifizierende Details ('einziger Kunde in Region X mit Produkt Y') und fasse mindestens 5 Antworten je Zusammenfassung zusammen, damit Rueckschluesse ausgeschlossen sind. Halte die AV-Vertrag-Pruefung auf eine Embedding-Klausel als explizite offene Handlungsempfehlung fest - Little Data beraet, ersetzt den DSB nicht.

Anschluss: S-WR-021

### S-WR-021 PDF vs. Markdown: Dateiformat-Entscheidung für optimale Chunk-Qualität

Trigger: Das Team lädt Brand-Guidelines sowohl als fertig formatiertes PDF als auch als rohes Markdown hoch — die Retrieval-Ergebnisse aus der PDF-Datei sind fragmentarisch, weil Kopfzeilen, Spalten und Fußnoten den Fließtext unterbrechen und das Chunking-Muster zerstören. (Quelle: 12 Q64, Q67)

Ziel: Eine verbindliche Format-Entscheidungsregel einführen, die für jeden Dokumenttyp das Dateiformat mit der höchsten Chunk-Qualität bestimmt, damit die Retrieval-Trefferquote systematisch steigt.

Ergebnis: Eine Ein-Seiten-Format-Entscheidungsmatrix als MD-Datei im Library Folder sowie eine konvertierte Pilotdatei (Brand Guidelines als MD statt PDF) mit messbarem Retrieval-Vergleich.

Fähigkeit: Library Folder + Wissensordner-Upload + Chat (Canary-Test)

Vorgehen:
1. Analysiere die Chunk-Problematik der PDFs (Mehrspalten/Seitenzahlen brechen Saetze mitten im Satz).
2. Konvertiere die Pilotdatei in saubere MD (Tabellen <=30 Zeilen, Bilder raus, #/##-Ueberschriften).
3. Vergleiche PDF- vs. MD-Retrieval per Canary und halte die Faustregel in der Format-Matrix fest.

Vorlage: PDF-vs-Markdown Format-Entscheidung:
1. Problem - PDFs mit Mehrspalten/Seitenzahlen/Wasserzeichen erzeugen Chunks mit Zeilenbruechen mitten im Satz; MD liefert saubere, semantisch abgeschlossene Absaetze.
2. Konvertierung - Brand-Guidelines-PDF -> saubere MD (Tabellen als MD max. 30 Zeilen, Bilder entfernen, Ueberschriften als #/##).
3. Canary-Vergleich - identische Fragen gegen PDF- und MD-Version; Citation-Qualitaet bewerten.
4. Faustregel-Matrix - redaktionelle Texte -> MD; offizielle PDFs nur ohne Mehrspaltenlayout; Praesentationen -> MD-Export bevorzugt.

Artefakt: Eine Format-Entscheidungsmatrix als MD-Datei und ein Canary-Test-Protokoll, das den Qualitätsunterschied zwischen PDF- und MD-Retrieval für 3 Kernfragen dokumentiert.

Fallstricke:
- Markdown-Konvertierung eines komplexen PDFs mit vielen Tabellen produziert korrumpierte Tabellen-Syntax → nach der Konvertierung jede Tabelle manuell auf valide MD-Syntax prüfen; fehlerhafte Tabellen als Text-Absätze umschreiben.
- PDF behalten weil "offizielles Dokument" obwohl Retrieval schlecht ist → offizielle Publizierung kann als PDF im Ordner liegen für Downloads, aber eine parallele MD-Version für die RAG-Indizierung anlegen.

Empfehlung: Pruefe nach jeder MD-Konvertierung jede Tabelle auf valide Syntax - komplexe PDF-Tabellen erzeugen oft korrumpierte MD-Tabellen; fehlerhafte als Text-Absaetze umschreiben. Lege offizielle PDFs fuer Downloads ab, aber erzeuge eine parallele MD-Version fuer die RAG-Indizierung, statt das schlecht retrievte PDF zu behalten.

Anschluss: S-WR-022

### S-WR-022 Ordner-Hierarchie für große Content-Bibliotheken gestalten

Trigger: Das Marketing-Team hat über 300 Dokumente in einem einzigen Library Folder — der Agent gibt häufig thematisch falsche Treffer zurück, weil alle Dokumente in einem Einzel-Ordner konkurrieren und das k=50-Retrieval mit irrelevanten Kandidaten geflutet wird. (Quelle: 12 Q54, Q66)

Ziel: Eine mehrschichtige Ordner-Hierarchie entwerfen, die Retrieval-Rauschen durch thematische Isolation reduziert und gleichzeitig das 1.000-Datei-Limit des Library Folders nicht überschreitet.

Ergebnis: Ein Ordner-Architektur-Blueprint mit 4-6 spezialisierten Library Folders und einer dokumentierten Zuordnungslogik für bestehende und künftige Dokumente.

Fähigkeit: Library Folder (mehrere) + Agent-Konfiguration

Vorgehen:
1. Kategorisiere alle vorhandenen Dokumente nach 4-6 thematischen Clustern (z.B. WO-Brand, WO-SEO, WO-PR, WO-Produkt, WO-Compliance, WO-Kampagnen-Archiv); Dokumente die themenübergreifend relevant sind kommen in einen WO-Basis-Ordner.
2. Definiere pro Ordner eine Kapazitätsregel: WO-Brand max. 50 Dateien (statisch, selten >1 File/Monat), WO-Kampagnen-Archiv max. 400 Dateien (wächst monatlich); plane eine Archivierungsstrategie für Kampagnen-Ordner ab 300 Dateien.
3. Konfiguriere jeden Agenten so dass er maximal 2-3 thematisch passende Ordner einbindet — niemals alle Ordner gleichzeitig; ein SEO-Agent braucht WO-SEO + WO-Basis, nicht WO-PR oder WO-Brand.
4. Erstelle eine Ordner-Architektur-Übersicht als MD-Datei im WO-Basis-Ordner: Tabelle mit Ordner-Name, Zweck, max. Dateizahl, Verantwortlich, Agenten-Anbindung.

Vorlage: Library-Folder-Hierarchie (grosse Bibliotheken):
1. Thematische Cluster - 4-6 Ordner (WO-Brand, WO-SEO, WO-PR, WO-Produkt, WO-Compliance, WO-Kampagnen-Archiv); themenuebergreifendes in WO-Basis.
2. Kapazitaetsregel je Ordner - WO-Brand max. 50 (statisch), WO-Kampagnen-Archiv max. 400 (waechst); Archivierung ab 300.
3. Agenten-Anbindung - je Agent max. 2-3 thematisch passende Ordner, nie alle.
4. Architektur-Uebersicht (MD) im WO-Basis - Ordner, Zweck, max. Dateizahl, Verantwortlich, Anbindung.

Artefakt: Ein Ordner-Architektur-Blueprint als MD-Datei mit 4-6 Library Folders, Kapazitätsregeln und Agenten-Zuordnungsmatrix.

Fallstricke:
- Zu viele Ordner erstellen und jeden Agenten mit 5+ Ordnern verbinden → maximale Synced-Folder-Grenze (5 pro Agent) ist eine harte Grenze; Library Folders zählen separat, aber kognitive Last für den Agenten steigt mit jedem zusätzlichen Ordner; weniger ist mehr.
- Ordner nach Abteilung statt nach Thema strukturieren → Abteilungsordner "Marketing-Operations" enthält alles von Preislisten bis Persona-Definitionen; thematische Trennung (Preis, Persona, Brand) liefert immer besseres Retrieval als organisatorische Trennung.

Empfehlung: Strukturiere Ordner nach Thema, nicht nach Abteilung - ein Abteilungsordner 'Marketing-Operations' mischt Preislisten bis Persona-Definitionen, waehrend thematische Trennung immer besseres Retrieval liefert. Verbinde jeden Agenten mit maximal 2-3 Ordnern; die kognitive Last und das Retrieval-Rauschen steigen mit jedem zusaetzlichen Ordner.

Anschluss: S-WR-023

### S-WR-023 Wissensordner-Berechtigungen und Team-Sharing konfigurieren

Trigger: Ein neuer Marketing-Manager ändert versehentlich die Brand-Guidelines-Datei im gemeinsamen Library Folder, weil er Editor-Rechte hat — die korrekte Version muss wiederhergestellt werden und das Team fragt nach einer Lösung für sichere Freigaben. (Quelle: 12 Q58, Q70)

Ziel: Ein Berechtigungskonzept für alle Wissensordner implementieren, das die Rolle "Owner" (kann löschen und hinzufügen), "Editor" (kann hinzufügen, nicht löschen) und "Viewer" (kann nur lesen und als Wissensquelle nutzen) klar voneinander trennt.

Ergebnis: Eine dokumentierte Berechtigungs-Matrix für alle Library Folders sowie konfigurierte Ordner-Freigaben mit rollenspezifischen Zugriffsrechten.

Fähigkeit: Library Folder + Workspace-Admin-Konfiguration

Vorgehen:
1. Inventarisiere alle Library Folders und ihre aktuellen Berechtigungen; identifiziere Ordner mit zu weiten Editor-Rechten (typisches Problem: Brand-Ordner hat Team-weite Editor-Rechte).
2. Setze die Berechtigungsregel: Kritische Kern-Ordner (WO-Brand, WO-Compliance) nur Owner = Marketing-Direktion + 1 Backup; Editor-Rechte ausschließlich für Personen mit aktivem Update-Auftrag; alle anderen als Viewer.
3. Konfiguriere die Sharing-Einstellungen im Workspace-Admin: verhindere dass Standard-Nutzer einen Wissensordner für die gesamte Organisation freigeben können (Restricted-Sharing-Einstellung aktivieren).
4. Dokumentiere die Berechtigungs-Matrix in einer "WO-BERECHTIGUNGEN-[Datum].md" im Basis-Ordner: Tabelle mit Ordner, Owner, Editor, Viewer-Gruppe, Änderungsprotokoll-Pflicht.

Vorlage: Wissensordner-Berechtigungs-Matrix:
1. Ist-Aufnahme - alle Library Folders + aktuelle Berechtigungen; zu weite Editor-Rechte identifizieren.
2. Regel - kritische Kern-Ordner (WO-Brand, WO-Compliance) nur Owner (Direktion + 1 Backup); Editor nur mit aktivem Update-Auftrag; Rest Viewer.
3. Restricted Sharing - im Workspace-Admin aktivieren, damit Standard-Nutzer keine org-weite Freigabe ausloesen.
4. WO-BERECHTIGUNGEN-[Datum].md - Ordner, Owner, Editor, Viewer, Aenderungsprotokoll-Pflicht.

Artefakt: Eine Berechtigungs-Matrix als MD-Datei und konfigurierte Ordner-Freigaben mit rollenspezifischen Zugriffsrechten, die unbeabsichtigte Dateiänderungen durch Standard-Nutzer verhindern.

Fallstricke:
- Workspace-Admin hat "Restricted Sharing" nicht aktiviert → Standard-Nutzer können sensible Ordner mit der gesamten Organisation teilen; Workspace-Admin muss diese Einstellung aktiv prüfen und deaktivieren.
- Berechtigungs-Matrix nur dokumentieren aber nicht im System umsetzen → Dokumentation ohne tatsächliche Konfiguration schützt nicht; nach jeder Änderung kurzer Audit ob Einstellungen mit Dokumentation übereinstimmen.

Empfehlung: Lass den Workspace-Admin 'Restricted Sharing' aktiv pruefen und deaktivieren - sonst koennen Standard-Nutzer sensible Ordner mit der gesamten Organisation teilen. Setze die Berechtigungs-Matrix tatsaechlich im System um und auditiere nach jeder Aenderung; reine Dokumentation ohne Konfiguration schuetzt nicht.

Anschluss: S-WR-024

### S-WR-024 Mehrsprachige Wissensordner für DACH-Märkte aufbauen

Trigger: Das DACH-Team arbeitet in drei Ländern — die Schweizer Niederlassung erstellt Dokumente auf Deutsch und Französisch, die österreichische auf Deutsch mit lokalen Rechtshinweisen, und Deutschland hat eigene Brand-Varianten. Der gemeinsame Wissensordner mischt alle drei Sprachvarianten und der Agent gibt inkonsistente, sprachlich gemischte Antworten zurück. (Quelle: 12 Q77; A-17)

Ziel: Eine mehrsprachige Wissensordner-Architektur aufbauen, in der sprachspezifische Dokumente in separaten Ordnern liegen und Agenten gezielt die Sprache des anfragenden Marktes zurückgeben.

Ergebnis: Separate Library Folders pro Sprachraum (DE-DE, DE-AT, DE-CH, FR-CH) mit einer Agenten-Routing-Logik, die die korrekte Sprachversion abruft.

Fähigkeit: Library Folder (mehrere) + Agent-Konfiguration + System-Instructions

Vorgehen:
1. Trenne Dokumente nach Sprach-Markt (Praefix) in separate Library Folders.
2. Lege einen sprachuebergreifenden Basis-Ordner an und binde marktspezifische Agenten an Basis + Sprach-Ordner.
3. Setze Antwortsprache + Markt-Rueckfrage in die System-Instructions; Canary je Sprache.

Vorlage: Mehrsprachige Wissensordner-Architektur (DACH):
1. Trennung - Datei-Praefix [DE-DE]/[DE-AT]/[DE-CH]/[FR-CH]; separate Library Folders pro Sprachraum.
2. Basis-Ordner - sprachuebergreifende Dokumente (globale Brand-Regeln, technische Specs) fuer alle DACH-Agenten.
3. Marktspezifische Agenten - CH-Agent: WO-Basis + WO-DE-CH + WO-FR-CH; AT-Agent: WO-Basis + WO-DE-AT; Antwortsprache in System-Instructions.
4. Fallback - bei DE-Anfrage ohne Markt zuerst nach Zielmarkt (DE/AT/CH) fragen.

Artefakt: Separate Library Folders pro Sprachraum, eine Agenten-Routing-Tabelle und eine README-Datei die erklärt welcher Agent für welchen Markt zuständig ist.

Fallstricke:
- Dokumente die in mehreren Sprachversionen existieren nur in einem Ordner ablegen → Übersetzungen gehören als separate Dateien in den jeweiligen Sprach-Ordner; eine DE-DE-Datei im FR-CH-Ordner erzeugt sprachgemischte Chunks.
- Mehrsprachige Retrieval-Qualität nicht testen → Vektor-Embeddings sind sprachübergreifend; eine Frage auf Français kann auch deutsch-sprachige Dokumente zurückgeben wenn semantisch ähnlich; Canary-Tests pro Sprache sind Pflicht nach dem Setup.

Empfehlung: Lege Uebersetzungen als separate Dateien im jeweiligen Sprach-Ordner ab - eine DE-DE-Datei im FR-CH-Ordner erzeugt sprachgemischte Chunks. Fuehre Canary-Tests pro Sprache nach dem Setup durch, da Vektor-Embeddings sprachuebergreifend sind und eine FR-Anfrage semantisch aehnliche DE-Dokumente zurueckgeben kann.

Anschluss: S-WR-025

### S-WR-025 Tabellen-reiche Dokumente für zuverlässiges Retrieval optimieren

Trigger: Das Team lädt eine Preisübersicht als DOCX mit einer 8-spaltige Excel-Tabelle hoch — der Agent liefert bei Preisnfragen immer "Keine Information gefunden", weil die Tabelle vom Chunking-Algorithmus als unlesbarer Text-Brei verarbeitet wird und der Chunk keine semantisch verwertbare Information enthält. (Quelle: 12 Q53)

Ziel: Tabellen-reiche Dokumente für das RAG-System aufbereiten, sodass tabellarische Inhalte zuverlässig retrievt werden, ohne auf den Data Analyst (direkter Chat-Anhang) ausweichen zu müssen.

Ergebnis: Eine überarbeitete Tabellen-Datei als strukturiertes MD-Dokument mit erklärendem Fließtext pro Tabellenzeile, das Canary-Tests für Tabellen-Inhalte besteht.

Fähigkeit: Library Folder + Chat (Dokument-Optimierung)

Vorgehen:
1. Verstehe die Tabellen-Chunking-Grenze (>30 Zeilen werden zerrissen).
2. Konvertiere in Hybridformat (kleine MD-Tabellen + Fliesstext-Bloecke je Produktgruppe) mit Anker-Absatz.
3. Canary-Test auf Preise, Rabatte und Mengenstaffeln.

Vorlage: Tabellen-reiche Dokumente RAG-optimieren:
1. Einschraenkung - Tabellen >30 Zeilen werden beim Chunking zerrissen (Zeile und Spaltenkopf in getrennten Chunks).
2. Hybridformat - Tabellen <=30 Zeilen in MD behalten; grosse zerlegen in thematische Bloecke mit Fliesstext ('Produkt X kostet 299 EUR (DACH, Q2-2025), Mengenrabatt ab 10 Stueck 15 %').
3. Anker-Absatz - vor jeder Tabelle 2-3 Saetze Fliesstext-Zusammenfassung der Kernaussage.
4. Canary-Test - nach Preisen, Rabatten, Mengenstaffeln fragen; Citations pruefen.

Artefakt: Ein RAG-optimiertes MD-Dokument mit Fließtext-Zusammenfassungen vor jeder Tabelle, das bei Canary-Tests Preise und Rabatte korrekt zurückliefert.

Fallstricke:
- Sehr große Preistabellen (>100 Zeilen) als eine MD-Datei behalten und auf das 1-Chunk-Cap hoffen → bei komplexen Preis-Matrizen immer in separate Dateien pro Produktgruppe aufteilen; Per-Document-Cap gilt auch für das beste MD-Dokument.
- Tabellen-Inhalte ausschließlich als Fließtext umschreiben und Tabellen weglassen → für Fälle wo Nutzer die exakte Tabellenstruktur sehen wollen (z.B. Vergleichsübersicht), immer die MD-Tabelle zusätzlich zum Fließtext einschließen.

Empfehlung: Teile sehr grosse Preistabellen (>100 Zeilen) in separate Dateien pro Produktgruppe - der Per-Document-Cap gilt auch fuer das beste MD-Dokument. Schliesse fuer Vergleichsuebersichten die MD-Tabelle zusaetzlich zum Fliesstext ein, statt Tabellen ganz wegzulassen, wenn Nutzer die exakte Struktur sehen muessen.

Anschluss: S-WR-026

### S-WR-026 Kampagnen-spezifischen Wissensordner für ein Launch-Projekt aufbauen

Trigger: Ein neues Produkt wird in 8 Wochen gelauncht — fünf Team-Mitglieder arbeiten parallel an Briefings, Social-Copy, PR-Texten und Performance-Ads und verlieren Zeit durch inkonsistente Verwendung von Produktnamen, Kernbotschaften und Zielgruppen-Definitionen. (Quelle: 12 Q51; sources/10 S-038)

Ziel: Einen temporären, kampagnen-spezifischen Library Folder als Single Source of Truth für alle Launch-Inhalte aufsetzen, der nach dem Launch archiviert wird und nicht den dauerhaften Brand-Wissensordner verunreinigt.

Ergebnis: Ein "WO-Launch-[Produktname]-[Jahr]" Library Folder mit Kernbotschaften, Zielgruppen-Definitionen, Sprachleitfaden und Freigabe-Status-Dokument, der allen Launch-Agenten angebunden ist.

Fähigkeit: Library Folder + Agent-Konfiguration + Wissensordner-Anbindung

Vorgehen:
1. Lege WO-Launch-[Produkt]-[JJJJ] an und lade die Launch-Basis-Dokumente hoch.
2. Binde den Ordner an alle Launch-Agenten zusaetzlich zu den Standard-Ordnern; LAUNCH-STATUS.md fuehren.
3. Plane die Archivierung nach 30 Tagen (Ordner von Agenten trennen, Learnings ueberfuehren).

Vorlage: Kampagnen-spezifischer Wissensordner:
1. Ordner WO-Launch-[Produkt]-[JJJJ] - Launch-Basis hochladen: Positionierung, USP-Liste, Zielgruppen-Persona, Verbotene-Begriffe, Freigabe-Status.
2. Anbindung - an alle Launch-Agenten (Content/PR/Social) zusaetzlich zu Standard-Ordnern.
3. LAUNCH-STATUS.md - Freigabe-Stand je Dokument (finalisiert/in Review), damit kein Agent Drafts nutzt.
4. Archivierung - Kalender-Eintrag: nach 30 Tagen Launch-Ordner archivieren, von Live-Agenten trennen, Learnings in Dauer-Ordner ueberfuehren.

Artefakt: Ein vollständig konfigurierter WO-Launch-Ordner mit allen Launch-Basis-Dokumenten, verbunden mit allen Launch-Agenten, und ein Archivierungs-Plan nach dem Launch.

Fallstricke:
- Launch-Ordner nach dem Projekt nicht von den Agenten trennen → veraltete Launch-Botschaften konkurrieren mit aktuellen Brand-Richtlinien im Retrieval; im Kalender nach Launch explizit "Ordner von Agenten trennen" eintragen.
- Dokumente im Launch-Ordner noch während des Launches laufend überschreiben → Langdock erkennt überschriebene Dateien nicht automatisch als neu; immer löschen und neu hochladen um frische Vektorisierung sicherzustellen.

Empfehlung: Trage im Kalender nach dem Launch explizit 'Ordner von Agenten trennen' ein - veraltete Launch-Botschaften konkurrieren sonst im Retrieval mit aktuellen Brand-Richtlinien. Loesche und lade Dokumente neu, statt sie waehrend des Launches zu ueberschreiben, da Langdock ueberschriebene Dateien nicht automatisch als neu erkennt.

Anschluss: S-WR-027

### S-WR-027 Bilder in Dokumenten: Was RAG sieht und was nicht

Trigger: Das Team lädt ein Brand-Manual als PDF hoch, das zu 40 % aus Infografiken und Farbpaletten-Bildern besteht — der Agent beantwortet Fragen zur Primärfarbe der Marke mit "Keine Information gefunden", weil die Farbangabe ausschließlich in einer eingebetteten Grafik steht und nicht als Text vorliegt. (Quelle: 12 Q61, Q99)

Ziel: Klären was das RAG-System aus Bildern in Dokumenten extrahieren kann und was nicht, und eine Aufbereitungs-Praxis etablieren, die bildbasierte Informationen für die Vektorsuche zugänglich macht.

Ergebnis: Ein überarbeitetes Brand-Manual in dem alle bildinformativen Angaben (Farb-HEX-Codes, Schriftgrößen, Abstände) als Fließtext neben den Bildern stehen, sodass Retrieval-Anfragen zu visuellen Brand-Elementen korrekt beantwortet werden.

Fähigkeit: Library Folder + Chat (Dokument-Audit)

Vorgehen:
1. Verstehe die Grenze: eingebettete Bilder werden ignoriert, nur Text wird indiziert.
2. Image-Text-Audit: rein bildbasierte Inhalte (Farben, Proportionen, Abstaende) markieren.
3. Ergaenze je Element einen Textblock und pruefe per Canary ('Was ist die Primaerfarbe?').

Vorlage: Bild-Informationen RAG-zugaenglich machen:
1. Grenze - eingebettete Bilder in PDF/DOCX/PPTX werden von der Vektordatenbank ignoriert; nur Text wird indiziert.
2. Image-Text-Audit - brand-kritische Dokumente durchgehen, rein bildbasierte Inhalte (Farbpaletten, Proportionen, Abstaende) markieren.
3. Textaequivalente - je Bild-Element einen Textblock ('Primaerfarbe: #1A2B3C Navy Blue; Sekundaer: #FF6B35 Coral Orange; einzige zulaessige Logo-Kombination').
4. Canary-Test - 'Was ist die Primaerfarbe?' muss mit Citation beantwortet werden.

Artefakt: Ein überarbeitetes Brand-Manual in dem alle visuellen Brand-Angaben als Textblöcke neben den Bildern stehen, mit Canary-Test-Nachweis für korrekte Farb- und CI-Retrieval.

Fallstricke:
- Vision-Modell via direktem Chat-Anhang verwenden um Bildinhalte zu extrahieren, aber das Ergebnis nicht dauerhaft ins Wissensordner-Dokument zurückschreiben → One-Shot-Extraction hilft nur in der laufenden Konversation; Extraktion muss dauerhaft in die Datei eingearbeitet werden.
- Bilder aus dem Dokument entfernen um "cleanes Markdown" zu erzeugen → Menschen im Team sehen das Dokument auch noch; Bilder beibehalten, aber Textäquivalente als Kommentar oder Paralleltext hinzufügen.

Empfehlung: Schreibe die Vision-Extraktion dauerhaft ins Wissensordner-Dokument zurueck - eine One-Shot-Extraktion im Chat hilft nur in der laufenden Konversation. Behalte die Bilder im Dokument fuer menschliche Leser und ergaenze die Textaequivalente parallel, statt Bilder fuer 'cleanes Markdown' zu entfernen.

Anschluss: S-WR-028

### S-WR-028 Library Folder und Synced Folder kombiniert in einem Agenten nutzen

Trigger: Ein Vertriebs-Agent soll gleichzeitig auf statische Brand-Guidelines (Library Folder, manuell gepflegt, jährlich aktualisiert) und auf live-synchronisierte Preislisten aus SharePoint (Synced Folder, täglich aktualisiert) zugreifen — das Team ist unsicher ob beide Ordner-Typen in einem Agenten kombiniert werden können. (Quelle: 12 Q59; A-33)

Ziel: Einen Agenten konfigurieren der sowohl Library Folder als auch Synced Folder gleichzeitig nutzt, mit einer klaren Governance-Regel welcher Ordner welche Art von Information liefert.

Ergebnis: Ein konfigurierter Hybrid-Agent mit einem Library Folder für statisches Kern-Wissen und einem Synced Folder für täglich aktualisierte Daten, inklusive dokumentierter Update-Verantwortlichkeiten.

Fähigkeit: Library Folder + Synced Folder (SharePoint) + Agent-Konfiguration

Vorgehen:
1. Trenne statisches Wissen (Library Folder) von dynamischem (Synced Folder).
2. Binde beide Ordner-Typen am Agenten an und setze eine Ordner-Priorisierungs-Regel in die System-Instructions.
3. Dokumentiere die Update-Verantwortung je Ordner in der README.

Vorlage: Hybrid-Agent (Library + Synced Folder):
1. Trennung - Library Folder = statisches Wissen (Brand, Specs, Personas, Prozesse); Synced Folder = dynamisches (Preise, Aktions-Konditionen, aktuelle Briefs).
2. Anbindung - beide Ordner-Typen als Wissensquellen am Agenten (native Kombination).
3. Priorisierung (System-Instructions) - Preise/Konditionen -> Synced; Brand/Prozesse -> Library; immer beide Quellen nennen wenn beide genutzt.
4. Update-Verantwortung - Synced via SharePoint-Sync; Library manuell durch [Name] quartalsweise; in README.

Artefakt: Ein konfigurierter Hybrid-Agent mit dokumentierter Trennung von statischen und dynamischen Wissensquellen, inklusive Canary-Test-Protokoll das beide Ordner-Typen als Quellen nachweist.

Fallstricke:
- Synced Folder für Brand-Regeln nutzen weil "automatisch bequemer" → Synced Folder ist auf 200 Dateien begrenzt und synchronisiert nur was im SharePoint-Ordner liegt; wenn Brand-Regeln aus Versehen aus SharePoint gelöscht werden, verschwindet das Wissen; kritisches Kern-Wissen gehört ausschließlich in Library Folders.
- Keine System-Instructions zur Ordner-Priorisierung schreiben → bei widersprüchlichen Informationen (alte Preisinformation in Library Folder vs. neue in Synced Folder) wählt der Agent willkürlich; explizite Priorisierungs-Regel ist Pflicht.

Empfehlung: Halte kritisches Kern-Wissen ausschliesslich in Library Folders, nicht im Synced Folder - der Synced Folder ist auf 200 Dateien begrenzt und Wissen verschwindet, wenn jemand die Quelldatei aus SharePoint loescht. Schreibe eine explizite Ordner-Priorisierungs-Regel in die System-Instructions, sonst waehlt der Agent bei widerspruechlichen Infos (alte Library- vs. neue Synced-Preise) willkuerlich.

Anschluss: S-WR-029

### S-WR-029 Semantische Suchanfragen für präziseres Retrieval formulieren

Trigger: Der Agent liefert bei der Frage "Was kostet das Produkt?" immer generische Antworten aus dem falschen Dokument, obwohl die Preislistendatei im Ordner liegt — das Team fragt warum kurze Fragen schlechte Ergebnisse liefern und wie man Suchanfragen formuliert die das richtige Chunk abrufen. (Quelle: 12 Q68)

Ziel: Das Team in der Formulierung semantisch präziser Retrieval-Anfragen schulen, sodass die Vektorsuche (k=50) konsistent die relevantesten Chunks abruft statt semantisch ähnlicher aber thematisch falscher Dokumente.

Ergebnis: Ein Schulungs-Leitfaden mit 5 Retrieval-Optimierungsregeln und 10 Vorher/Nachher-Prompt-Paaren der als Onboarding-Material im WO-Basis-Ordner abgelegt wird.

Fähigkeit: Wissensordner + Chat (Retrieval-Optimierung)

Vorgehen:
1. Erklaere die Vektor-Suchmechanik praxisnah (generische vs. spezifische Anfrage).
2. Formuliere 5 Optimierungsregeln und 10 Vorher/Nachher-Paare.
3. Lege den Leitfaden als MD im WO-Basis ab und verlinke ihn im Onboarding.

Vorlage: Retrieval-Suchanfragen-Leitfaden:
1. Mechanik erklaeren - 'Was kostet X?' trifft auch 'Wert/Investition/Budget'; 'Aktueller DACH-Listenpreis Produkt X in EUR, Q2-2025' zeigt direkt auf Preislisten-Chunks.
2. 5 Optimierungsregeln - Produktname ausschreiben; Zeitraum/Region nennen; Dokumenttyp andeuten ('in der Preisliste'); Fachbegriff aus dem Dokument; bei Miss um Synonyme erweitern.
3. 10 Vorher/Nachher-Paare als MD-Tabelle; Ablage als retrieval-leitfaden-v1.md im WO-Basis, im Onboarding verlinkt.

Artefakt: Ein Schulungs-Leitfaden mit 10 Vorher/Nachher-Prompt-Paaren als MD-Datei im WO-Basis-Ordner, verwendbar als Onboarding-Material für neue Team-Mitglieder.

Fallstricke:
- Retrieval-Optimierung auf den Prompt-Stil reduzieren und vergessen die Quelldokumente zu optimieren → die beste Suchanfrage findet nichts wenn das Zieldokument schlechte Schlüsselbegriffe enthält; Retrieval-Optimierung ist immer ein zwei-seitiger Prozess (Frage UND Dokument).
- Leitfaden als einmalige Schulung behandeln und nie aktualisieren → wenn neue Dokumente mit anderen Schlüsselbegriffen hochgeladen werden, können alte Retrieval-Tipps irreführend sein; Leitfaden nach jedem größeren Wissensordner-Update prüfen.

Empfehlung: Optimiere immer beide Seiten - Frage UND Quelldokument; die beste Suchanfrage findet nichts, wenn das Zieldokument schlechte Schluesselbegriffe enthaelt. Pruefe den Leitfaden nach jedem groesseren Wissensordner-Update, da neue Dokumente mit anderen Schluesselbegriffen alte Retrieval-Tipps irrefuehrend machen koennen.

Anschluss: S-WR-030

### S-WR-030 Migration von einem anderen RAG-System zu Langdock-Wissensordnern

Trigger: Das Team wechselt von einer bestehenden SharePoint-basierten Knowledge-Base zu Langdock-Wissensordnern und muss 150 Dokumente migrieren — dabei sollen Dokumentenqualität verbessert werden (schlechte OCR-Scans, unstrukturierte Word-Dokumente) ohne die Migration zu einem Jahresprojekt zu machen. (Quelle: 12 Q67)

Ziel: Einen strukturierten Migrations-Workflow definieren der bestehende Dokumente batchweise prüft, bereinigt und in Langdock-optimierte Formate überführt — mit klarer Priorisierung der wichtigsten Dokumente für die ersten vier Wochen.

Ergebnis: Ein Migrations-Tracking-Board mit 150 Dokumenten, kategorisiert nach Migrations-Aufwand (Niedrig/Mittel/Hoch), und ein priorisierter Batch-Plan für die ersten 30 Tage.

Fähigkeit: Chat (Migrations-Assistent) + Library Folder + Canvas (Tracking-Board)

Vorgehen:
1. Kategorisiere alle Dokumente nach Migrations-Aufwand (Niedrig/Mittel/Hoch).
2. Priorisiere die Top-30 fuer Woche 1, restliche in 3 Batches mit Test-Gate je Batch.
3. Fuehre ein Migrations-Log (Datei, Status, Auffaelligkeiten, Verantwortliche).

Vorlage: RAG-Migrations-Workflow:
1. Aufwands-Kategorisierung - Niedrig (saubere DOCX/PDF), Mittel (Mehrspalten-PDF -> MD), Hoch (Scan/schlechte OCR -> Neuschreibung/Re-OCR).
2. Priorisierung - Top-30 (Nutzung/Relevanz) in Woche 1 manuell; restliche 120 in 3 Batches ueber 4 Wochen.
3. Test-Gate - nach jedem Batch 10 typische Fragen als Canary; Misses beheben vor naechstem Batch.
4. Migrations-Log (MD) - Datei, Status, Auffaelligkeiten, Verantwortliche.

Artefakt: Ein Migrations-Tracking-Board mit priorisiertem Batch-Plan für 30 Tage und ein Canary-Test-Set, das nach jedem Batch-Upload ausgeführt wird.

Fallstricke:
- Alle 150 Dokumente auf einmal hochladen ohne Qualitätsprüfung → schlechte Dokumente vergiften den Wissensordner und verursachen Retrieval-Probleme die schwer zu diagnostizieren sind; batchweise Migration mit Test-Gate ist Pflicht.
- OCR-problematische Scans "trotzdem hochladen und schauen was passiert" → Langdock indiziert den fehlerhafte OCR-Text ohne Warnung; das Ergebnis sind Chunks mit korrumpierten Zeichen die nie die richtige Suchanfrage matchen; Re-OCR oder Neuschreibung vor dem Upload ist zwingend.

Empfehlung: Migriere batchweise mit Test-Gate statt alle 150 Dokumente auf einmal hochzuladen - schlechte Dokumente vergiften sonst den Ordner und die Retrieval-Probleme sind schwer zu diagnostizieren. Fuehre bei OCR-problematischen Scans ein Re-OCR oder eine Neuschreibung vor dem Upload durch, da Langdock korrupten OCR-Text ohne Warnung indiziert.

Anschluss: S-WR-031

### S-WR-031 Produkt-Dokumentation als Wissensordner für den Support-Agenten

Trigger: Das Support-Team verwendet einen Langdock-Agenten für Kundenfragen — der Agent gibt häufig veraltete oder unvollständige Antworten, weil die Produkt-Dokumentation als einziges 200-seitiges PDF im Wissensordner liegt und das Per-Document-Cap immer denselben Abschnitt zurückgibt. (Quelle: sources/10 S-039; A-34)

Ziel: Die Produkt-Dokumentation in einen Wissensordner mit atomaren, thematisch getrennten Dateien umstrukturieren, sodass der Support-Agent jede Art von Produktfrage mit einer korrekten, zitierten Antwort beantworten kann.

Ergebnis: Ein "WO-Produkt-Docs" Library Folder mit 15-30 atomaren MD-Dateien pro Themenbereich (Installation, Fehlermeldungen, Konfiguration, FAQ, Versionshistorie), verbunden mit dem Support-Agenten.

Fähigkeit: Library Folder + Chat (Dokumenten-Atomisierung) + Agent-Konfiguration

Vorgehen:
1. Analysiere die Themenstruktur und identifiziere eigenstaendige Cluster.
2. Atomisiere je Cluster eine MD-Datei (Produktname+Thema im H1); Versionshistorie als separate Datei.
3. Teste mit den 10 haeufigsten Support-Tickets als Canary.

Vorlage: Produkt-Dokumentation als Support-Wissensordner:
1. Themenstruktur - H1/H2-Kapitel auflisten, eigenstaendige Cluster identifizieren (Installation, Konfiguration, Fehlerbehebung, Glossar, Versionshistorie, FAQ).
2. Atomisieren - je Cluster eine Datei (produkt-x-installation-v2.md, produkt-x-fehlerbehebung-verbindung.md); Produktname + Thema im H1.
3. VERSIONSHISTORIE.md - separate Datei nur fuer Changelog; bei Updates aktualisieren.
4. Test - 10 haeufigste Support-Tickets als Canary; Citations pruefen.

Artefakt: Ein WO-Produkt-Docs Library Folder mit 15-30 atomaren MD-Dateien, ein getesteter Support-Agent mit nachgewiesenen Citations für die 10 häufigsten Support-Fragen.

Fallstricke:
- Versionshistorie in jede atomare Datei einbetten statt als separate Datei → wenn eine neue Software-Version erscheint, müssen 30 Dateien aktualisiert werden statt einer; Versionshistorie immer als eigenständige Datei führen.
- Support-Agent ohne explizite Eskalations-Anweisung konfigurieren → wenn kein Dokument die Antwort enthält, halluziniert der Agent; System-Instructions müssen immer eine Fallback-Formulierung für "Weiß ich nicht" enthalten.

Empfehlung: Fuehre die Versionshistorie als eigenstaendige Datei, nicht eingebettet in jede atomare Datei - sonst muessen bei einer neuen Version 30 Dateien statt einer aktualisiert werden. Konfiguriere eine explizite Eskalations-Anweisung ('Ich eskaliere an Level-2-Support'), sonst halluziniert der Agent, wenn kein Dokument die Antwort enthaelt.

Anschluss: S-WR-032

### S-WR-032 A/B-Test für Wissensordner-Layouts durchführen

Trigger: Das Team ist unsicher ob es die Brand-Guidelines als drei große Dateien (je ~30 KB) oder als zwölf kleine atomare Dateien (je ~8 KB) im Wissensordner ablegen soll — die Theorie sagt "atomarer ist besser", aber niemand hat es für diesen Bestand konkret getestet. (Quelle: 10 S-017; A-34)

Ziel: Einen systematischen A/B-Vergleich zweier Wissensordner-Strukturen durchführen, um empirisch zu bestimmen welches Datei-Layout für die spezifischen Dokumente des Teams die höchste Retrieval-Präzision liefert.

Ergebnis: Ein A/B-Test-Protokoll mit 10 Canary-Prompts, Retrieval-Scores für beide Layouts und eine klare Empfehlung welche Struktur produktiv eingesetzt werden soll.

Fähigkeit: Library Folder (zwei Test-Ordner) + Chat (Canary-Test) + Citations-Analyse

Vorgehen:
1. Erstelle zwei Test-Ordner (3 grosse vs. 12 atomare Dateien).
2. Definiere 10 repraesentative Canary-Prompts (einfach/mittel/komplex).
3. Stelle die Fragen je Ordner einzeln, bewerte Citation/Korrektheit/Vollstaendigkeit, waehle den Sieger.

Vorlage: A/B-Test Wissensordner-Layouts:
1. Zwei Test-Ordner - WO-Test-A (3 grosse Dateien) vs. WO-Test-B (12 atomare Dateien, Ein-Thema-pro-Datei).
2. 10 Canary-Prompts - Mix aus Direktfragen, Kombinations-Fragen, Edge-Cases (im Wortlaut realer Anfragen).
3. Bewertung je Antwort - Citation (J/N), Inhalt korrekt (1-5), Vollstaendigkeit (1-5).
4. Entscheidung - hoeherer Gesamt-Score wird produktiv; Verlierer-Ordner loeschen, Ergebnis im WO-Basis dokumentieren.

Artefakt: Ein A/B-Test-Protokoll als MD-Tabelle mit Retrieval-Scores für beide Layouts und einer dokumentierten Entscheidung für die produktive Wissensordner-Struktur.

Fallstricke:
- Beide Test-Ordner gleichzeitig an denselben Agenten anbinden → der Agent greift auf beide Ordner parallel zu und die Ergebnisse können nicht mehr eindeutig einem Layout zugeordnet werden; immer einen Ordner pro Test-Run aktivieren, den anderen deaktivieren.
- A/B-Test mit zu wenigen oder zu spezifischen Canary-Prompts durchführen → 5 Fragen sind zu wenig für statistisch belastbare Aussagen; mix aus einfachen, mittleren und komplexen Fragen verwenden; mindestens 10 Fragen.

Empfehlung: Aktiviere pro Test-Run nur einen Ordner und deaktiviere den anderen - bei paralleler Anbindung lassen sich Ergebnisse nicht mehr eindeutig einem Layout zuordnen. Verwende mindestens 10 Fragen mit einem Mix aus einfach/mittel/komplex; 5 Fragen sind zu wenig fuer eine belastbare Aussage.

Anschluss: S-WR-033

### S-WR-033 Wissensordner-Bestand für einen neuen Agenten von Null aufbauen

Trigger: Ein neuer "Tender-Agent" für Ausschreibungs-Antworten soll aufgebaut werden — das Team muss von Grund auf entscheiden welche Dokumente in den Wissensordner gehören, ohne Vorerfahrung aus bestehenden Ordnern zu haben. (Quelle: 12 Q51; A-35)

Ziel: Einen strukturierten Aufbau-Prozess für einen neuen Agenten-Wissensordner durchführen: Bedarfsanalyse, Dokumenten-Selektion, Qualitätsprüfung und initiales Testing — von Null bis einsatzbereit in einer Woche.

Ergebnis: Einen einsatzfähigen Library Folder mit 8-15 kuratierten Dokumenten, einem dokumentierten Aufbau-Prozess und einem initialen Canary-Test-Set für den Tender-Agenten.

Fähigkeit: Library Folder + Agent-Konfiguration + Chat (Bedarfsanalyse)

Vorgehen:
1. Bedarfsanalyse: alle Fragen auflisten, die der Agent beantworten muss.
2. Selektiere je Kategorie das praeziseste Dokument (atomar) und pruefe RAG-Tauglichkeit.
3. Upload + initialer Canary als Baseline-Score; Misses vor Freigabe optimieren.

Vorlage: Neuen Agenten-Wissensordner aufbauen:
1. Bedarfsanalyse - alle Fragen auflisten, die der Agent beantworten muss (Referenz-Projekte, Preisspanne, Zertifizierungen, Team-Credentials); diese definieren die Dokumente.
2. Selektion - je Fragen-Kategorie das praeziseste Dokument; atomare Einzeldateien statt Sammel-Dokumente.
3. Qualitaetspruefung - klare H1, Fachbegriffe ausgeschrieben, keine Pronomen ohne Antezedent, kein Mehrspaltenlayout.
4. Upload + initialer Canary-Test (eine Frage je Dokument) als Baseline-Score; Misses optimieren vor Freigabe.

Artefakt: Ein einsatzfähiger WO-Tender Library Folder mit 8-15 kuratierten Dokumenten, dokumentiertem Aufbau-Prozess und einem initialen Canary-Test-Set das als monatliches Qualitäts-Benchmark wiederverwendet wird.

Fallstricke:
- Alle verfügbaren Tender-Dokumente hochladen ohne Selektion ("mehr ist mehr") → ein nicht selektierter Ordner enthält veraltete Referenzen, überschriebene Angebote und Duplikate die das Retrieval vergiften; Selektion ist unverzichtbar.
- Initiale Canary-Tests überspringen weil "der Agent funktioniert bestimmt" → ohne Test-Gate existiert kein Baseline-Score; wenn Nutzer später Fehler melden, fehlt der Vergleichswert für die Diagnose.

Empfehlung: Selektiere die Dokumente streng statt alles hochzuladen ('mehr ist mehr') - ein unselektierter Ordner enthaelt veraltete Referenzen, ueberschriebene Angebote und Duplikate, die das Retrieval vergiften. Fuehre den initialen Canary-Test durch, bevor der Agent freigeschaltet wird; ohne Baseline-Score fehlt bei spaeteren Fehlermeldungen der Vergleichswert.

Anschluss: S-WR-034

### S-WR-034 Retrieval-Schwellenwert-Effekte verstehen und mit Prompt-Design steuern

Trigger: Der Agent antwortet auf bestimmte Fragen mit konfidenten aber falschen Informationen, weil das System einen semantisch ähnlichen aber inhaltlich falschen Chunk zurückgegeben hat — das Team möchte verstehen wie der Retrieval-Scoring-Mechanismus funktioniert und wie Prompts helfen die Qualitätsschwelle effektiv zu steuern. (Quelle: 12 Q57, Q60)

Ziel: Den Retrieval-Scoring-Mechanismus von Langdock praxisnah erklären und konkrete Prompt-Design-Techniken einführen, die den Agenten zwingen nur bei hoher Konfidenz zu antworten und bei unsicheren Treffern explizit auf das Limit hinzuweisen.

Ergebnis: Ein Prompt-Design-Leitfaden mit 5 Techniken zur Konfidenz-Steuerung im Retrieval-Kontext sowie ein überarbeitetes System-Instruction-Template für alle Wissensordner-Agenten.

Fähigkeit: Wissensordner + Agent-Konfiguration + System-Instructions

Vorgehen:
1. Erklaere den Scoring-Mechanismus (k=50 ohne Konfidenz-Schwelle).
2. Fuehre Konfidenz-Techniken ein (Quellenpflicht, [Ableitung]-Marker).
3. Ueberarbeite das zentrale System-Instruction-Template mit Konfidenz-Klausel.

Vorlage: Konfidenz-Steuerung (Retrieval-Scoring):
1. Mechanik - k=50 liefert die 50 aehnlichsten Chunks unabhaengig von der Treffer-Guete; es gibt keine automatische Konfidenz-Schwelle, die blockiert.
2. Technik 1 - 'Wenn kein direkter Quellenbeleg: "Kein verlaesslicher Treffer - bitte im Original pruefen" statt halluzinieren.'
3. Technik 2 - Saetze auf Schlussfolgerung (nicht Zitat) mit Praefix [Ableitung] markieren.
4. System-Instruction-Template - Standard-Konfidenz-Klausel fuer alle Wissensordner-Agenten.

Artefakt: Ein überarbeitetes System-Instruction-Template für alle Wissensordner-Agenten mit Konfidenz-Klausel sowie ein Prompt-Design-Leitfaden mit 5 Konfidenz-Steuerungstechniken.

Fallstricke:
- "Niedriger Konfidenz-Score" als Entschuldigung für generelle Zurückhaltung missbrauchen → der Agent darf nicht bei jeder zweiten Frage eskalieren; Konfidenz-Klauseln nur für Fälle wo tatsächlich kein direkter Quellenbeleg vorliegt; Canary-Tests müssen sicherstellen dass der Agent klare Fragen direkt beantwortet.
- System-Instructions nur in einem Agenten aktualisieren und vergessen die anderen Agenten nachzuziehen → führe eine zentrale System-Instructions-Vorlage in einer README-Datei im WO-Basis-Ordner; alle Agenten-Konfigurationen referenzieren dieses Template.

Empfehlung: Stelle per Canary-Test sicher, dass der Agent klare Fragen direkt beantwortet - die Konfidenz-Klausel darf nicht als Entschuldigung fuer staendige Eskalation missbraucht werden. Fuehre eine zentrale System-Instructions-Vorlage im WO-Basis und lass alle Agenten darauf referenzieren, statt die Klausel nur in einem Agenten zu aktualisieren.

Anschluss: S-WR-035

### S-WR-035 Wissensordner für Produkt-Roadmap-Kommunikation nach innen aufbauen

Trigger: Das Marketing-Team muss laufend Produkt-Feature-Ankündigungen kanalspezifisch aufbereiten — aber der Produkt-Manager liefert Roadmap-Informationen als strukturlose Notion-Seiten, Slack-Nachrichten und PowerPoint-Slides, was zu inkonsistenten Feature-Beschreibungen in verschiedenen Marketing-Kanälen führt. (Quelle: 12 Q59; A-05)

Ziel: Einen Wissensordner als zentrales Interface zwischen Produkt-Management und Marketing aufbauen, in dem validierte Feature-Beschreibungen in einem strukturierten Format abgelegt werden, das der Marketing-Agent direkt für Kanal-Adaptierungen abrufen kann.

Ergebnis: Ein "WO-Roadmap" Synced Folder (verbunden mit dem Google-Drive-Ordner des Produkt-Managers) mit einer Datei-Vorlage für Feature-Beschreibungen, die der Marketing-Agent für SEO-Texte, Social-Posts und Pressemitteilungen verwendet.

Fähigkeit: Synced Folder (Google Drive) + Library Folder + Agent-Konfiguration

Vorgehen:
1. Erstelle die Feature-Beschreibungs-Vorlage (MD) mit Pflichtfeldern.
2. Lege die Vorlage in den Drive des Produkt-Managers; taeglicher Synced Folder.
3. Binde den Marketing-Agenten an; bei Luecken eskaliert er an Produkt-Management.

Vorlage: Roadmap-Wissensordner (Produkt<->Marketing):
1. Feature-Vorlage (MD) - H1 Feature-Name; Kurzbeschreibung (marketing-tauglich), Technische Details (FAQ), Zielgruppe+Nutzen, Freigabe-Status+Launch-Datum.
2. Synced Folder - Vorlage im Google-Drive des Produkt-Managers; je Feature eine ausgefuellte Kopie; taeglicher Sync.
3. Anbindung - Marketing-Agent nutzt WO-Roadmap fuer SEO/Blog/PR/Social.
4. Governance - Marketing aendert nichts im Ordner; bei Luecke eskaliert der Agent an Produkt-Management.

Artefakt: Ein WO-Roadmap Synced Folder mit verbindlicher Feature-Vorlage, ein Marketing-Agent der Feature-Beschreibungen kanalspezifisch adaptiert, und eine Governance-Regel die unfertige Features blockiert.

Fallstricke:
- Produkt-Manager füllt Vorlage nicht konsequent aus (leere Felder, fehlende Zielgruppen-Angaben) → Agent gibt unvollständige Marketing-Texte aus; Vorlage muss Pflichtfelder klar markieren und der Agent muss bei fehlenden Pflichtfeldern explizit eskalieren statt mit Platzhaltern zu füllen.
- Synced Folder synchronisiert alle Dateien im Google-Drive-Ordner, auch Drafts und Notizen → Ordner im Google Drive muss sauber gehalten werden; nur fertige Feature-Beschreibungen im Sync-Ordner ablegen, Drafts in einem separaten Unter-Ordner außerhalb des Sync-Bereichs.

Empfehlung: Lass das Marketing Feature-Beschreibungen nicht im Wissensordner aendern, sondern bei Luecken an das Produkt-Management zurueckeskalieren ('Fehlende Information: [Feld] - bitte Vorlage vervollstaendigen') - der Ordner ist die validierte Single Source. Definiere die Feature-Vorlage verbindlich mit Freigabe-Status, damit der Agent keine unfertigen Roadmap-Entwuerfe nach aussen kommuniziert.

Anschluss: S-WR-036

### S-WR-036 Spot-Check-Protokoll für schleichende Retrieval-Qualitätsverschlechterung

Trigger: Ein Wissensordner-Agent ist seit sechs Monaten in Betrieb — das Team bemerkt, dass die Antwortqualität schleichend schlechter geworden ist, aber niemand hat dokumentiert wann das begann oder was sich geändert hat. (Quelle: A-34)

Ziel: Einen monatlichen Spot-Check-Prozess einführen, der Retrieval-Qualitätsverschlechterungen früh erkennt, bevor Nutzer systematisch falsche Informationen erhalten — mit einem definierten Eskalations-Protokoll bei mehr als 2 von 5 Canary-Misses.

Ergebnis: Ein wiederverwendbares Spot-Check-Protokoll als MD-Datei mit 5 Canary-Prompts, einer Bewertungs-Skala und einem Eskalations-Trigger, das monatlich in 30 Minuten durchgeführt werden kann.

Fähigkeit: Wissensordner + Chat (Canary-Test) + Library Folder (Protokoll-Ablage)

Vorgehen:
1. Definiere 5 permanente Canary-Prompts zu den 5 wichtigsten Themen.
2. Fuehre den Spot-Check monatlich durch (Citation/Korrektheit/Vollstaendigkeit).
3. Eskaliere ab >=2 Misses zum Diagnose-Audit; archiviere je Bericht fuer die Trend-Zeitreihe.

Vorlage: Spot-Check-Protokoll (Retrieval-Drift):
1. 5 permanente Canary-Prompts - je eine Frage zu den 5 wichtigsten Themen; werden nie geaendert.
2. Monatslauf (30 Min) - Citation (J/N), Korrektheit (1-5), Vollstaendigkeit (1-5) in Tabelle.
3. Eskalations-Trigger - >=2 Misses oder Score <=3 -> Diagnose-Audit (S-WR-010) vor Weiternutzung.
4. Archiv - SPOT-CHECK-[JJJJ-MM]-[Agent].md im WO-Basis; nach 12 Monaten Trend-Zeitreihe.

Artefakt: Ein wiederverwendbares Spot-Check-Protokoll als MD-Datei mit 5 permanenten Canary-Prompts, Bewertungs-Skala und Eskalations-Trigger, archiviert im WO-Basis-Ordner für Trend-Analyse.

Fallstricke:
- Canary-Prompts nach jeder Wissensordner-Änderung anpassen → Canary-Prompts dürfen sich nicht verändern wenn sich der Wissensordner ändert; das ist Sinn des Tests; wenn neue Themen hinzukommen, werden neue Canary-Prompts zu einem separaten Erweiterungs-Set hinzugefügt ohne die alten zu ersetzen.
- Spot-Check-Protokoll ohne kalendarische Pflicht-Erinnerung einführen → ohne feste Kalender-Einträge wird das Protokoll nach zwei Monaten nicht mehr gelebt; je Agent eine monatliche Kalender-Erinnerung mit dem Protokoll als Anhang einrichten.

Empfehlung: Halte die 5 Canary-Prompts unveraendert, auch wenn sich der Wissensordner aendert - genau das ist der Sinn des Tests; neue Themen kommen in ein separates Erweiterungs-Set, ohne die alten zu ersetzen. Richte je Agent eine monatliche Kalender-Erinnerung mit dem Protokoll als Anhang ein, sonst wird der Spot-Check nach zwei Monaten nicht mehr gelebt.

Anschluss: S-WR-037

### S-WR-037 Wissensordner-Export und Portabilitätsstrategie für Vendor-Risiko-Management

Trigger: Die IT-Leitung fragt: "Was passiert mit unseren Wissensordner-Inhalten wenn wir Langdock wechseln oder der Anbieter nicht mehr verfügbar ist?" — das Team hat keine Backup-Strategie für den Wissensordner-Bestand. (Quelle: A-03)

Ziel: Eine Portabilitätsstrategie für alle Wissensordner-Inhalte entwickeln, die sicherstellt dass Marketing-Kern-Wissen nicht ausschließlich in der Langdock-Plattform eingeschlossen ist sondern in plattform-unabhängigen Formaten existiert.

Ergebnis: Ein Backup-Protokoll das quartalsweise alle Library-Folder-Inhalte in einem neutralen Format (MD/PDF) außerhalb der Plattform sichert, sowie eine Export-Checkliste für einen etwaigen Plattformwechsel.

Fähigkeit: Library Folder (Export-Management) + Chat (Backup-Planung)

Vorgehen:
1. Inventarisiere den Bestand nach Portabilitaets-Risiko.
2. Exportiere Canvas-Dokumente quartalsweise als MD/PDF nach SharePoint (Dateiname = Langdock-Name).
3. Dokumentiere die Export-Checkliste und einen jaehrlichen Wechsel-Drill.

Vorlage: Wissensordner-Portabilitaetsstrategie:
1. Risiko-Inventar - hochgeladene Dateien (niedrig, Kopie existiert), Canvas-erstellte (hoch, nur in Langdock), Synced (kein Risiko, Original extern).
2. Quartals-Backup - Canvas-Dokumente als MD/PDF in SharePoint exportieren; Dateiname = Langdock-Name.
3. Wechsel-Drill (jaehrlich, 30 Min) - was existiert extern, was muss neu erstellt werden, wo liegt die System-Instructions-Vorlage.
4. Export-Checkliste (MD) - kritische Ordner, Format, Verantwortliche, Backup-Ort.

Artefakt: Eine Export-Checkliste als MD-Datei im WO-Basis-Ordner, ein dokumentierter quartalsweiser Backup-Prozess und ein Wechsel-Drill-Plan für den Jahres-Review.

Fallstricke:
- Synced-Folder-Inhalte als gesichert betrachten weil "sie im SharePoint liegen" → SharePoint-Ordner können ebenfalls gelöscht oder verschoben werden; sicherstellen dass SharePoint-Quellordner eigene Backup-Regeln haben unabhängig von Langdock.
- Canvas-Dokumente manuell exportieren ohne Namenskonvention → ohne eindeutige Namenskonvention ist nach einem Jahr nicht mehr klar welcher Export zu welchem Langdock-Dokument gehört; Backup-Dateinamen müssen dem Langdock-Dateinamen 1:1 entsprechen.

Empfehlung: Behandle Synced-Folder-Inhalte nicht automatisch als gesichert - SharePoint-Quellordner brauchen eigene Backup-Regeln unabhaengig von Langdock, da auch sie geloescht oder verschoben werden koennen. Benenne Backup-Dateien 1:1 wie das Langdock-Dokument, sonst ist nach einem Jahr nicht mehr klar, welcher Export zu welchem Dokument gehoert.

Anschluss: S-WR-038

### S-WR-038 Einscankataloge mit schlechter OCR-Qualität vor dem Upload reparieren

Trigger: Das Team versucht einen alten Produktkatalog aus 2019 (eingescanntes PDF, 80 Seiten) in den Wissensordner hochzuladen — nach dem Upload liefert der Agent bei Produktfragen korrumpierte Textreste wie "Pr0dukt X k0stet €2.9,99" weil die OCR des Scans fehlerhaft war. (Quelle: 12 Q67)

Ziel: Einen praktischen Workflow für die Aufbereitung von OCR-problematischen Scan-Dokumenten entwickeln, der aus fehlerhaften Scans hochwertige RAG-taugliche MD-Dateien erzeugt ohne jede Seite manuell abtippen zu müssen.

Ergebnis: 3-5 saubere MD-Dateien aus dem eingescannten Produktkatalog (atomisiert nach Produktgruppen), die Canary-Tests mit korrekten Citations bestehen.

Fähigkeit: Chat (direkter Anhang für OCR-Korrekturen) + Library Folder

Vorgehen:
1. Lade das Scan-PDF als Direktanhang und identifiziere die OCR-Fehler.
2. Erstelle eine bereinigte Version ([UNLESERLICH] statt raten); atomisiere nach Produktgruppe.
3. Canary-Test; Zahlenwerte gegen das Original verifizieren.

Vorlage: OCR-Scan-Aufbereitung:
1. Direktanhang (nicht Wissensordner) - Scan-PDF in den Chat; OCR-Fehler per Vision/Chat identifizieren.
2. Korrektur - bereinigte Version erstellen; Unlesbares als [UNLESERLICH] markieren statt raten.
3. Atomisieren - korrigierten Text nach Ein-Thema-pro-Datei in MD-Dateien (H1 + Produktname im ersten Satz).
4. Canary-Test - Produktfragen liefern korrekte Citations; [UNLESERLICH] zeigt manuelle Nacharbeit.

Artefakt: 3-5 saubere MD-Dateien aus dem eingescannten Katalog, bereit für den Library-Folder-Upload, mit dokumentierten [UNLESERLICH]-Stellen die manuell nachgeprüft werden müssen.

Fallstricke:
- OCR-Korrekturen an das Modell delegieren ohne Human-Review der Zahlenwerte → bei Preisangaben kann ein OCR-Fehler "€2.999" in "€299" korrumpieren; alle Zahlen im korrigierten Text müssen gegen die Original-Quelle (gedruckter Katalog) manuell verifiziert werden.
- Korrigiertes Dokument als ein Gesamt-PDF speichern statt in atomare MD-Dateien aufzuteilen → ein 80-seitiges korrigiertes Dokument hat dasselbe Per-Document-Cap-Problem wie das Original; atomare Aufteilung ist auch nach der OCR-Korrektur Pflicht.

Empfehlung: Verifiziere alle Zahlenwerte im korrigierten Text manuell gegen den gedruckten Original-Katalog - ein OCR-Fehler kann '2.999 EUR' in '299 EUR' korrumpieren, und das Modell raet plausibel falsch. Teile das korrigierte Dokument in atomare MD-Dateien auf; ein 80-seitiges korrigiertes Gesamt-PDF hat dasselbe Per-Document-Cap-Problem wie das Original.

Anschluss: S-WR-039

### S-WR-039 Wissensordner-Governance-Board für Marketing-Direktoren etablieren

Trigger: Ein 25-köpfiges Marketing-Team nutzt Langdock seit 9 Monaten — der Wissensordner-Bestand ist organisch auf 340 Dateien in 8 Ordnern angewachsen, die Verantwortlichkeiten sind unklar, veraltete Dokumente werden nicht bereinigt und neue Agenten werden ohne Abstimmung mit bestehenden Ordnern verbunden. (Quelle: A-35; 12 Q66, Q70)

Ziel: Ein schlankes Governance-Board für alle Wissensordner einrichten, das Verantwortlichkeiten definiert, Änderungsprozesse regelt und als RACI-Modell dokumentiert ist — Aufwand nicht mehr als 2 Stunden pro Monat für die Direktion.

Ergebnis: Ein Governance-RACI-Dokument als MD-Datei im WO-Basis-Ordner mit definierten Rollen (Owner, Approver, Contributor, Informed), einem Änderungs-Antragsformular und einem monatlichen Review-Kalender.

Fähigkeit: Library Folder + Chat (RACI-Entwurf) + Canvas

Vorgehen:
1. Definiere das RACI-Modell (Owner/Approver/Contributor/Informed).
2. Erstelle ein 5-Zeilen-Aenderungs-Antragsformular.
3. Richte einen monatlichen 30-Min-Governance-Termin ein; RACI im WO-Basis ablegen und im Onboarding verlinken.

Vorlage: Wissensordner-Governance-Board (RACI):
1. RACI - Owner (Direktion, Strukturaenderungen), Approver (Team-Leads je Bereich), Contributor (laedt vor), Informed (Nutzer).
2. Aenderungs-Antragsformular (5 Zeilen) - Antragsteller, Ordner, Datei, Art, Begruendung.
3. Monats-Termin (30 Min) - offene Antraege, Spot-Check-Ergebnisse (S-WR-036), naechste Audit-Faelligkeit.
4. GOVERNANCE-RACI-[JJJJ].md im WO-Basis, im Onboarding verlinkt.

Artefakt: Ein RACI-Governance-Dokument als MD-Datei, ein Änderungs-Antragsformular und ein monatliches Review-Template, zusammen im WO-Basis-Ordner abgelegt.

Fallstricke:
- Governance-Prozess zu komplex gestalten (mehrere Freigabeschritte, wöchentliche Meetings) → bei zu hohem Overhead wird der Prozess nach zwei Monaten umgangen; RACI-Modell muss schlanker sein als das Problem das es löst; max. 2 Stunden/Monat ist die harte Grenze.
- RACI-Dokument im Basis-Ordner ablegen ohne dem Team davon zu erzählen → ein Governance-Dokument das niemand kennt existiert nicht; aktive Kommunikation im Team-Meeting und Verlinkung im Onboarding-Dokument sind Pflicht beim Rollout.

Empfehlung: Halte das RACI-Modell schlanker als das Problem, das es loest - max. 2 Stunden/Monat ist die harte Grenze; bei zu vielen Freigabeschritten oder woechentlichen Meetings wird der Prozess nach zwei Monaten umgangen. Kommuniziere das RACI aktiv im Team-Meeting und verlinke es im Onboarding; ein Governance-Dokument, das niemand kennt, existiert nicht.

Anschluss: S-WR-040

### S-WR-040 Wissensordner als Langzeit-Lernarchiv für kampagnen-übergreifende Insights

Trigger: Nach jedem Kampagnen-Abschluss erstellt das Team einen Post-Mortem-Bericht — aber diese Berichte landen in SharePoint und werden nie wieder geöffnet. Bei der nächsten vergleichbaren Kampagne werden dieselben Fehler gemacht, weil kein Agent auf die historischen Learnings zugreifen kann. (Quelle: A-34; 12 Q69)

Ziel: Einen "WO-Kampagnen-Learnings" Library Folder als Langzeit-Lernarchiv aufbauen, in dem kampagnenübergreifende Insights in einem standardisierten Format abgelegt werden und vom Marketing-Planungs-Agenten aktiv abgerufen werden können.

Ergebnis: Ein "WO-Kampagnen-Learnings" Library Folder mit einer verbindlichen Post-Mortem-Vorlage, 3 exemplarischen Einträgen aus vergangenen Kampagnen und einem Planungs-Agenten der bei neuen Kampagnen automatisch nach historischen Parallelen sucht.

Fähigkeit: Library Folder + Agent-Konfiguration + Chat (semantische Ähnlichkeitssuche)

Vorgehen:
1. Erstelle die kompakte Post-Mortem-Vorlage (MD, 4 Abschnitte).
2. Wandle 3 vergangene Berichte ins Format und lade sie hoch.
3. Binde den Planungs-Agenten an und mache den Post-Mortem-Upload zum Pflicht-Abschlussschritt.

Vorlage: Kampagnen-Learnings-Lernarchiv:
1. Post-Mortem-Vorlage (MD) - H1 Kampagne+Jahr; Typ+Zielgruppe, Was funktionierte (3 Bullets, Zahlen), Was nicht (3 Bullets), Empfehlungen.
2. Pilot - 3 wichtigste vergangene Berichte ins Format; je Datei kampagne-[Jahr]-[Name]-learnings.md.
3. Planungs-Agent - System-Instruction: bei neuer Planung WO-Kampagnen-Learnings nach Parallelen pruefen und zitieren.
4. Pflicht-Schritt - Post-Mortem-Upload als letzte Aufgabe im Kampagnen-Abschluss.

Artefakt: Ein WO-Kampagnen-Learnings Library Folder mit verbindlicher Post-Mortem-Vorlage, 3 Pilot-Einträgen und einem Planungs-Agenten der bei jeder neuen Kampagnen-Planung automatisch auf historische Parallelen verweist.

Fallstricke:
- Post-Mortem-Einträge zu lang und unstrukturiert gestalten (5+ Seiten Fließtext) → das Per-Document-Cap liefert pro Kampagnen-Datei nur einen einzigen Chunk; Vorlage muss kompakt sein (max. 1-2 Seiten) damit alle vier Abschnitte in einem einzigen Chunk Platz haben.
- Kampagnen-Learnings-Ordner nie auf Relevanz bereinigen → nach 30+ Kampagnen enthält der Ordner auch Learnings aus veralteten Kanal-Strategien (z.B. organische Reichweite auf Facebook 2020) die aktuelle Empfehlungen kontaminieren; jährlicher Relevanz-Audit mit explizitem Archivierungs-Schritt für Kampagnen-Einträge die älter als 3 Jahre sind.

Empfehlung: Halte jeden Post-Mortem-Eintrag kompakt (1-2 Seiten), damit alle vier Abschnitte in einen einzigen Chunk passen - das Per-Document-Cap liefert pro Datei nur einen Chunk. Fuehre einen jaehrlichen Relevanz-Audit mit Archivierungs-Schritt fuer Eintraege aelter als 3 Jahre durch, sonst kontaminieren Learnings aus veralteten Kanal-Strategien aktuelle Empfehlungen.

Anschluss: S-WR-041

### S-WR-041 Legal- und Compliance-Dokumente im Wissensordner sicher bereitstellen

Trigger: Das Marketing-Team fragt regelmäßig die Rechtsabteilung nach erlaubten Werbeaussagen, Disclaimer-Pflichten und UWG-Vorgaben — die Rechtsabteilung ist überlastet mit Standardfragen die in bestehenden Compliance-Dokumenten bereits beantwortet sind. (Quelle: 12 Q52)

Ziel: Einen "WO-Compliance" Library Folder aufsetzen, der juristisch freigegebene Werberichtlinien, Disclaimer-Pflichten und UWG-Hinweise in abfragbarer Form bereitstellt, ohne dass Marketing-Mitarbeiter direkt auf Rohdokumente der Rechtsabteilung zugreifen.

Ergebnis: Ein WO-Compliance Library Folder mit 5-10 atomaren MD-Dateien pro Compliance-Thema (Werbeaussagen, Disclaimer, Preisangaben, Testimonials, UWG-Grundregeln), verbunden mit dem Marketing-Agenten als Read-only-Wissensquelle.

Fähigkeit: Library Folder + Agent-Wissensordner-Anbindung + Berechtigungskonzept

Vorgehen:
1. Klaere mit der Rechtsabteilung, welche Dokumente zur Selbstauskunft taugen.
2. Lass marketing-freundliche MD-Kurzfassungen erstellen und atomar (Read-only) hochladen.
3. Setze die System-Instruction: nur aus WO-Compliance antworten, sonst an die Rechtsabteilung verweisen.

Vorlage: Compliance-Wissensordner (Read-only):
1. Abstimmung - mit der Rechtsabteilung klaeren, welche Dokumente zur Selbstauskunft taugen (Werberegeln, Disclaimer, Preisangaben, Testimonials).
2. Kurzfassungen - Legal erstellt marketing-freundliche MD (je Thema max. 1 Seite, Ge-/Verbote, Beispiele); atomar hochladen.
3. Berechtigung - WO-Compliance Read-only (Viewer ausser Owner).
4. System-Instruction - nur aus WO-Compliance antworten; bei Unsicherheit 'Bitte Rechtsabteilung konsultieren'.

Artefakt: Ein WO-Compliance Library Folder mit 5-10 freigegebenen Compliance-MD-Dateien, Read-only-Berechtigungen und einem Agenten der Compliance-Standardfragen eigenständig beantwortet.

Fallstricke:
- Agent gibt eine abschließende Rechtsaussage statt einer Ersteinschätzung → Compliance-Wissensordner entbindet nicht von juristischer Prüfpflicht; System-Instructions müssen explizit formulieren "Diese Antwort ersetzt keine Rechtsberatung."
- Compliance-Dokumente werden nach Gesetzesänderungen nicht aktualisiert → Compliance-Owner muss quartalsweise prüfen ob neue Gesetzesänderungen (z.B. EU AI Act, UWG-Novelle) die Dokumente betreffen; Freshness-Header "Stand: [JJJJ-MM]" in jede Datei.

Empfehlung: Formuliere im System-Prompt explizit 'Diese Antwort ersetzt keine Rechtsberatung' - der Compliance-Wissensordner entbindet nicht von der juristischen Pruefpflicht; der Agent darf keine abschliessende Rechtsaussage treffen. Lass den Compliance-Owner quartalsweise auf Gesetzesaenderungen (EU AI Act, UWG-Novelle) pruefen und einen 'Stand: JJJJ-MM'-Header in jede Datei setzen.

Anschluss: S-WR-042

### S-WR-042 Versionierte Produktspezifikationen im Synced Folder verwalten

Trigger: Das Produkt-Team veröffentlicht quartalsweise neue technische Spezifikations-Sheets in SharePoint — der Marketing-Agent verwendet jedoch häufig die Vorquartal-Version, weil der Library Folder manuell gepflegt wird und das Update vergessen wird. (Quelle: 12 Q59; A-33)

Ziel: Versionierte Produktspezifikationen über einen Synced Folder automatisch aktuell halten und eine Versionierungskonvention einführen, die dem Agenten und dem Nutzer sofort klar macht welche Spec-Version aktuell ist.

Ergebnis: Ein Synced Folder (SharePoint) für Produktspecs mit einer Versionierungskonvention im Dateinamen, einem automatischen Sync-Protokoll und einem Canary-Test-Set das nach jedem Quarterly-Update ausgeführt wird.

Fähigkeit: Synced Folder (SharePoint) + Agent-Konfiguration + Citations-Analyse

Vorgehen:
1. Pruefe/konvertiere den SharePoint-Ordner (Formate, Versionierung im Dateinamen).
2. Lege den Synced Folder an und binde ihn an den Marketing-Agenten; alten Library Folder entfernen.
3. Canary-Test nach jedem Quarterly-Update.

Vorlage: Versionierte Produktspecs (Synced Folder):
1. Synced Folder (SharePoint) - quartalsweise Spec-Sheets; Versionierung im Dateinamen ([Produkt]-specs-v[Q]-[JJJJ]).
2. Anbindung - an Marketing-Agenten; alten Library Folder mit Vorquartal-Specs entfernen.
3. Sync-Protokoll - 24h-Sync + woechentliche Kontrolle des letzten erfolgreichen Syncs.
4. Canary-Test - nach jedem Quarterly-Update spezifische Spec-Fragen; aktuelle Version zitiert?

Artefakt: Ein konfigurierter Synced Folder mit versionierten Produktspecs, einem Canary-Test-Set für Quarterly-Updates und einem Agenten der Versionsnummern aktiv in Citations nennt.

Fallstricke:
- Alte und neue Spec-Version gleichzeitig im Sync-Ordner lassen → der Agent zitiert beide Versionen und liefert widersprüchliche Spezifikationen; alte Versionen müssen vor dem nächsten Sync in den Archiv-Unterordner verschoben werden.
- Versionierungskonvention im Dateinamen nicht konsequent durchsetzen → wenn Produkt-Manager Dateien nach eigenem Schema benennen, versagt das automatische Versions-Tracking; Naming-Konvention muss im SharePoint-Ordner als README hinterlegt und verbindlich kommuniziert sein.

Empfehlung: Schreibe die Version in den Dateinamen UND in den ersten Absatz des Dokuments, damit der Agent und der Nutzer im Citation-Link sofort die aktuelle Version erkennen. Halte den SharePoint-Ordner sauber (nur die aktuelle Spec-Version je Produkt), sonst synchronisiert Langdock auch Vorquartal-Versionen und der Agent zitiert die falsche.

Anschluss: S-WR-043

### S-WR-043 FAQ-Wissensbasis systematisch pflegen und erweitern

Trigger: Der Community-Agent beantwortet FAQ-Fragen seit sechs Monaten korrekt — aber das Support-Team meldet, dass fünf neue Fragen monatlich unbeantwortet bleiben, weil die FAQ-Wissensbasis seit dem initialen Upload nie erweitert wurde. (Quelle: 12 Q64, Q65)

Ziel: Einen strukturierten FAQ-Pflegeprozess etablieren, der neue Kundenfragen automatisch als Erweiterungs-Kandidaten identifiziert und die FAQ-Wissensbasis in einem definierten monatlichen Update-Zyklus erweitert.

Ergebnis: Ein FAQ-Maintenance-Protokoll als MD-Datei mit einem monatlichen Erweiterungs-Workflow, einer FAQ-Lücken-Tabelle und einer überarbeiteten FAQ-Wissensbasis die alle aktuell unbeantwortet gebliebenen Fragen abdeckt.

Fähigkeit: Library Folder + Chat (FAQ-Gap-Analyse) + Canvas

Vorgehen:
1. Sammle monatlich alle Fragen die der Agent mit "Ich leite das weiter" oder "Keine Information gefunden" beantwortet hat — diese Fragen sind die FAQ-Lücken; exportiere die Liste aus dem Support-Log oder Community-Management-Tool.
2. Kategorisiere die neuen Fragen nach Themenbereich; entscheide pro Frage ob sie (a) in eine bestehende FAQ-Datei ergänzt wird, (b) eine neue atomare Datei rechtfertigt (>3 Fragen zum selben neuen Thema), oder (c) nicht in den Wissensordner gehört (zu spezifisch für einen Einzelfall).
3. Erstelle oder aktualisiere die FAQ-Dateien im MD-Format; jede FAQ-Datei enthält eine eindeutige H1, einen beschreibenden Einleitungssatz mit dem Schlüsselbegriff und maximal 10 Frage-Antwort-Paare (mehr → neue Datei).
4. Führe nach dem Update einen Canary-Test mit den zuvor unbeantwortet gebliebenen Fragen durch; jede neue FAQ muss jetzt mit Citation beantwortet werden.

Vorlage: FAQ-Maintenance-Protokoll:
1. Monats-Workflow - unbeantwortet gebliebene Fragen sammeln, in die FAQ-Wissensbasis einarbeiten.
2. FAQ-Luecken-Tabelle - offene Fragen, Haeufigkeit, Ziel-Datei.
3. Struktur - max. 10 Frage-Antwort-Paare pro Datei; thematisch getrennte FAQ-Dateien.
4. Canary-Test nach jedem Update.

Artefakt: Eine aktualisierte FAQ-Wissensbasis mit abgedeckten Lücken, ein FAQ-Maintenance-Protokoll mit monatlichem Update-Rhythmus und einem Canary-Test-Nachweis für alle neu aufgenommenen Fragen.

Fallstricke:
- Zu viele Frage-Antwort-Paare in eine FAQ-Datei aufnehmen (>15 Paare) → Per-Document-Cap liefert nur einen Chunk; wenn eine FAQ-Datei 20 Fragen enthält, werden die letzten 10 nie retrievt; max. 10 Paare pro Datei ist die Faustregel.
- FAQ-Erweiterung ohne Canary-Test-Kontrolle einspielen → neue FAQ-Einträge können bestehendes Retrieval stören wenn der neue Text semantisch ähnliche Keywords wie bestehende Dateien enthält; immer den vollständigen Canary-Test nach jedem Update ausführen.

Empfehlung: Begrenze jede FAQ-Datei auf maximal 10 Frage-Antwort-Paare - der Per-Document-Cap liefert nur einen Chunk, sodass bei 20 Fragen die letzten 10 nie retrievt werden. Fuehre nach jedem FAQ-Update den vollstaendigen Canary-Test aus, da neue Eintraege mit aehnlichen Keywords bestehendes Retrieval stoeren koennen.

Anschluss: S-WR-044

### S-WR-044 Chunk-Optimierung für lange technische PDFs mit Anhang-Struktur

Trigger: Ein technisches Whitepaper (48 Seiten PDF) mit ausführlichem Anhang (Tabellen, Abkürzungsverzeichnis, Quellenangaben auf den letzten 15 Seiten) wird in den Wissensordner geladen — der Agent retrievet regelmäßig Chunks aus dem Anhang statt dem Haupttext, weil der Anhang das Dokument volumenmäßig dominiert. (Quelle: 12 Q57, Q67)

Ziel: Lange technische PDFs mit Anhang-Struktur so für das Chunking optimieren, dass Anhang-Inhalte nicht die Haupt-Retrieval-Ergebnisse verdrängen, und eine Aufteilungs-Strategie für Haupttext und Anhang entwickeln.

Ergebnis: Ein aufgeteiltes Whitepaper (Haupttext als separate MD-Datei, Anhang als separate Datei wenn relevant, Quellenangaben entfernt) das bei Canary-Tests konsistent Chunks aus dem Haupttext statt dem Anhang zurückgibt.

Fähigkeit: Library Folder + Chat (Dokument-Splitting) + Canary-Test

Vorgehen:
1. Teile das Whitepaper (Haupttext + ggf. Anhang als separate Dateien).
2. Entferne das Literaturverzeichnis vor dem Upload.
3. Canary-Test: Antworten zitieren Haupttext-Chunks, nicht Anhang/Quellen.

Vorlage: Whitepaper RAG-aufbereiten:
1. Aufteilung - Haupttext als separate MD-Datei; Anhang nur als eigene Datei, wenn substantieller erklaerender Text.
2. Quellenangaben entfernen - Literaturverzeichnis raus, bevor es in den Wissensordner kommt.
3. Canary-Test - Antworten zitieren konsistent Haupttext-Chunks, nicht Anhang/Quellen.

Artefakt: Zwei separate MD-Dateien (Haupttext + optionaler Anhang) mit nachgewiesenem Retrieval aus dem Haupttext bei Canary-Tests zu Kern-Argumenten des Whitepapers.

Fallstricke:
- Quellenangaben im Haupttext belassen weil "sie zum Dokument gehören" → Quellenangaben erzeugen Chunks wie "[1] Müller, K. (2023). Journal of..." die bei fast jeder Frage als semantisch ähnlich bewertet werden; Quellenangaben immer entfernen bevor das Dokument in den Wissensordner kommt.
- Anhang als eigene Datei hochladen wenn er nur Abkürzungen enthält → ein Abkürzungsverzeichnis ist kein sinnvolles RAG-Dokument; nur Anhänge mit substantiellem erklärendem Text (z.B. Methodik-Anhang) als separate Datei hochladen.

Empfehlung: Entferne Quellenangaben vor dem Upload - Eintraege wie '[1] Mueller, K. (2023). Journal of...' erzeugen Chunks, die bei fast jeder Frage als semantisch aehnlich bewertet werden und echtes Retrieval verdraengen. Lade einen Anhang nur als eigene Datei hoch, wenn er substantiellen erklaerenden Text enthaelt; ein reines Abkuerzungsverzeichnis ist kein sinnvolles RAG-Dokument.

Anschluss: S-WR-045

### S-WR-045 Indexierungslatenz nach Massen-Upload managen

Trigger: Das Team lädt 40 Dokumente in einen Library Folder hoch und führt sofort danach Canary-Tests durch — fast alle Tests liefern "Keine Information gefunden", obwohl die Dateien im Ordner sichtbar sind. Das Team glaubt, die Dateien seien fehlerhaft hochgeladen worden. (Quelle: 12 Q57)

Ziel: Das Team über die asynchrone Indexierungslatenz nach Uploads aufklären und einen dokumentierten Warteprozess etablieren, der verhindert dass Retrieval-Tests zu früh und damit irreführend ausgeführt werden.

Ergebnis: Ein Upload-Protokoll mit definierten Wartezeiten (nach Upload-Batch mind. 10-15 Minuten warten), einem Indexierungs-Status-Check-Schritt und einem dokumentierten Warm-up-Prozess für neue Wissensordner.

Fähigkeit: Library Folder + Chat (Indexierungs-Status-Test)

Vorgehen:
1. Erkläre die technische Realität: Langdock indiziert Dokumente asynchron nach dem Upload — die Vektorisierung läuft im Hintergrund und kann bei Massen-Uploads (>20 Dateien) 10-30 Minuten in Anspruch nehmen; Dateien sind im Ordner sichtbar bevor sie retrievable sind.
2. Definiere den Warm-up-Prozess: nach einem Massen-Upload von >10 Dateien mindestens 15 Minuten warten; führe dann einen einzelnen Canary-Test mit einer Frage durch die eindeutig auf eine der neu hochgeladenen Dateien zielen sollte — wenn dieser Test erfolgreich ist, sind alle Dokumente indiziert.
3. Dokumentiere den Warm-up-Prozess im Upload-Protokoll des Ordners als obligatorischen Schritt: "Nach jedem Batch-Upload von >5 Dateien: 15 Minuten Wartezeit, dann einzelner Canary-Test, bei Erfolg: vollständiges Canary-Set ausführen."

Vorlage: Upload- und Indexierungs-Protokoll:
1. Wartezeit - nach jedem Upload-Batch mind. 10-15 Minuten vor Retrieval-Test.
2. Status-Check - im Interface pruefen, ob die Indexierung abgeschlossen ist.
3. Warm-up - dokumentierter Prozess fuer neue Wissensordner vor Produktiv-Nutzung.
4. Diagnose-Schwelle - erst nach 30 Min auf Format-Fehler diagnostizieren.

Artefakt: Ein Upload-Protokoll mit Warm-up-Schritten, definierten Wartezeiten und einem Single-Canary-Test-Template für die Indexierungs-Bestätigung nach Massen-Uploads.

Fallstricke:
- Sofort nach Upload Produktiv-Anfragen an den Agenten stellen ohne Warm-up → "Keine Information gefunden"-Antworten führen zu falschen Diagnosen (Datei-Format-Fehler vermutet statt Indexierungslatenz erkannt); immer mindestens 15 Minuten warten.
- Indexierungslatenz mit Datei-Format-Fehler verwechseln → wenn nach 30 Minuten ein Canary-Test immer noch fehlschlägt, liegt ein tatsächlicher Fehler vor (falsches Format, Datei zu groß, Text nicht extrahierbar); erst nach 30 Minuten auf Format-Fehler diagnosieren.

Empfehlung: Warte nach jedem Upload mindestens 15 Minuten vor Produktiv-Anfragen - sofortige 'Keine Information'-Antworten fuehren sonst zu Fehldiagnosen (Format-Fehler vermutet statt Indexierungslatenz). Diagnostiziere erst nach 30 Minuten auf einen echten Format-Fehler (falsches Format, zu gross, Text nicht extrahierbar), wenn ein Canary-Test dann immer noch fehlschlaegt.

Anschluss: S-WR-046

### S-WR-046 Duplikat-Erkennung und Bereinigung im Wissensordner

Trigger: Bei einem Wissensordner-Audit (S-WR-009) stellt das Team fest, dass 23 von 180 Dateien inhaltliche Duplikate oder fast-identische Versionen desselben Dokuments sind — der Agent liefert bei bestimmten Fragen inkonsistente Antworten weil zwei leicht unterschiedliche Versionen desselben Inhalts konkurrieren. (Quelle: 12 Q65)

Ziel: Einen systematischen Duplikat-Erkennungs-Prozess einführen, der inhaltliche Doppelungen — nicht nur Dateinamen-Duplikate — identifiziert und eine eindeutige Bereinigungsentscheidung pro Duplikat-Paar trifft.

Ergebnis: Eine bereinigte Wissensordner-Dateiliste ohne inhaltliche Duplikate, ein Duplikat-Erkennungs-Protokoll und eine Regel wann Inhalte als "zu ähnlich" gelten und welche Version behalten wird.

Fähigkeit: Library Folder (Verwaltungsansicht) + Chat (inhaltlicher Duplikat-Check)

Vorgehen:
1. Vergleiche Kandidaten inhaltlich als Direktanhang (nicht nur Dateinamen).
2. Definiere die Aehnlichkeits-Regel (wann 'zu aehnlich', welche Version behalten).
3. Bestaetige die neuere Version explizit, archiviere bei Zweifel die aeltere.

Vorlage: Duplikat-Erkennung und -Bereinigung:
1. Inhaltlicher Vergleich - nicht nur Dateinamen; Kandidaten als Direktanhang vergleichen.
2. Aehnlichkeits-Regel - wann Inhalte als 'zu aehnlich' gelten, welche Version behalten.
3. Bestaetigung - neuere Version explizit bestaetigen, dann aeltere loeschen.

Artefakt: Ein bereinigter Wissensordner ohne inhaltliche Duplikate, ein Duplikat-Log als MD-Datei und eine Duplikat-Erkennungs-Regel im Governance-Dokument (S-WR-039).

Fallstricke:
- Duplikat-Erkennung nur auf Dateinamen-Basis durchführen → zwei Dateien mit verschiedenen Namen können identischen Inhalt haben (z.B. `brand-guide-2025.md` und `markenleitfaden-q1-2025.md`); immer inhaltlichen Vergleich als direkten Anhang durchführen.
- Beide Versionen eines Duplikat-Paars löschen aus Unsicherheit → Datenverlust-Risiko; immer die neuere Version explizit bestätigen bevor die ältere gelöscht wird; bei Unsicherheit die ältere archivieren statt löschen.

Empfehlung: Fuehre den Duplikat-Vergleich inhaltlich durch, nicht nur ueber Dateinamen - zwei Dateien mit verschiedenen Namen (brand-guide-2025.md vs. markenleitfaden-q1-2025.md) koennen identischen Inhalt haben. Loesche nie beide Versionen aus Unsicherheit; bestaetige die neuere explizit, und archiviere bei Zweifel die aeltere statt sie zu loeschen.

Anschluss: S-WR-047

### S-WR-047 Wissensordner für das Onboarding neuer Marketing-Mitarbeiter

Trigger: Neue Marketing-Mitarbeiter werden im ersten Monat mit Fragen an Kolleginnen und Kollegen überhäuft — Markenrichtlinien, Produktnamen, interne Prozesse, Ansprechpartner und Tool-Zugänge sind auf SharePoint, E-Mails und Köpfen verteilt und nicht strukturiert abrufbar. (Quelle: A-37)

Ziel: Einen "WO-Onboarding" Library Folder als selbstbedienbare Wissensquelle für neue Mitarbeiter aufbauen, der strukturiert die wichtigsten Fragen der ersten 30 Tage beantwortet und von einem Onboarding-Agenten aktiv genutzt wird.

Ergebnis: Ein WO-Onboarding Library Folder mit 8-12 atomaren MD-Dateien (Unternehmensstruktur, Brand-Basics, Tool-Zugänge, interne Prozesse, häufige Fragen, Ansprechpartner-Verzeichnis), verbunden mit einem Onboarding-Agenten der neue Mitarbeiter durch die erste Arbeitswoche führt.

Fähigkeit: Library Folder + Agent-Konfiguration + Konversations-Starter

Vorgehen:
1. Erstelle 8-12 atomare Onboarding-MD-Dateien (Rollen statt Personendaten).
2. Konfiguriere den Onboarding-Agenten fuer die erste Woche.
3. Plane einen quartalsweisen Review.

Vorlage: Onboarding-Wissensordner:
1. 8-12 atomare MD-Dateien - Unternehmensstruktur, Brand-Basics, Tool-Zugaenge, interne Prozesse, FAQ, Ansprechpartner (Rollen, keine Personendaten).
2. Onboarding-Agent - fuehrt neue Mitarbeiter durch die erste Woche.
3. Pflege - mind. quartalsweiser Review.

Artefakt: Ein WO-Onboarding Library Folder mit 8-12 atomaren Dateien, ein Onboarding-Agent mit 3 Konversations-Startern und ein Feedback-Prozess für die quartalsweise Erweiterung.

Fallstricke:
- Ansprechpartner-Verzeichnis mit persönlichen E-Mail-Adressen und Telefonnummern direkt in den Wissensordner laden → Onboarding-Wissensordner ist oft für das gesamte Team freigegeben; persönliche Kontaktdaten gehören nicht in öffentlich zugängliche Wissensordner; Rollen-Beschreibungen ohne persönliche Daten verwenden.
- Onboarding-Wissensordner nach dem ersten Aufbau nie aktualisieren → in wachsenden Teams ändern sich Ansprechpartner, Prozesse und Tools laufend; veraltetes Onboarding-Wissen frustriert neue Mitarbeiter; mindestens quartalsweiser Review ist Pflicht.

Empfehlung: Verwende Rollen-Beschreibungen statt persoenlicher E-Mails/Telefonnummern - der Onboarding-Ordner ist oft team-weit freigegeben, und persoenliche Kontaktdaten gehoeren nicht in oeffentlich zugaengliche Wissensordner. Reviewe den Ordner mindestens quartalsweise, da sich Ansprechpartner, Prozesse und Tools in wachsenden Teams laufend aendern und veraltetes Onboarding-Wissen neue Mitarbeiter frustriert.

Anschluss: S-WR-048

### S-WR-048 Press-Kit-Management im Wissensordner für schnelle Journalisten-Anfragen

Trigger: Ein Journalist ruft an und braucht sofort Unternehmens-Boilerplate, aktuelle Führungskräfte-Biographien, Fact-Sheets und offizielle Zitate des CEOs — der PR-Manager durchsucht 20 Minuten lang SharePoint-Ordner und E-Mail-Anhänge um die richtigen Versionen zu finden. (Quelle: sources/10 S-051)

Ziel: Das gesamte Press-Kit als sofort abrufbaren Wissensordner strukturieren, damit der PR-Agent bei Journalisten-Anfragen innerhalb von 60 Sekunden die korrekten, aktuellen Materialien mit Citations liefert.

Ergebnis: Ein "WO-Press-Kit" Library Folder mit atomaren MD-Dateien pro Press-Kit-Element (Boilerplate, Bio-Texte, Fact-Sheet, Approved-Quotes, Logo-Verweise), verbunden mit einem PR-Agenten der Journalisten-Anfragen selbstständig bearbeitet.

Fähigkeit: Library Folder + Agent-Konfiguration + Freshness-Management

Vorgehen:
1. Atomisiere die Press-Kit-Elemente je Datei.
2. Kennzeichne jedes Zitat mit Kontext + Freigabe-Status.
3. Binde den PR-Agenten an und verknuepfe den Update-Rhythmus mit Unternehmens-Ereignissen.

Vorlage: Press-Kit-Wissensordner:
1. Atomare Dateien je Element - Boilerplate, Bio-Texte, Fact-Sheet, Approved-Quotes, Logo-Verweise.
2. Kontext-Kennzeichnung - jedes Zitat mit Kontext + Freigabe-Status.
3. PR-Agent - bearbeitet Journalisten-Anfragen selbststaendig aus dem Ordner.

Artefakt: Ein WO-Press-Kit Library Folder mit aktuellen atomaren Press-Kit-Elementen, ein getesteter PR-Agent mit Citations-Nachweis für 5 typische Journalisten-Fragen und ein definierter Update-Rhythmus pro Press-Kit-Element.

Fallstricke:
- Approved-Quotes aus unterschiedlichen Kontexten (Pressekonferenz vs. interne Rede) ohne Kontext-Kennzeichnung in den Ordner laden → Agent verwendet ein Zitat das für eine interne Veranstaltung gedacht war in einem Presse-Statement; jedes Zitat muss mit Kontext und Freigabe-Status gekennzeichnet sein.
- Press-Kit nach Unternehmensveränderungen (Führungswechsel, Rebranding) nicht aktualisieren → Journalisten erhalten veraltete Bio-Texte oder alte Unternehmens-Kennzahlen; Update-Rhythmus muss mit dem Kalender der Unternehmens-Ereignisse verknüpft sein.

Empfehlung: Kennzeichne jedes Approved-Quote mit Kontext und Freigabe-Status - sonst verwendet der Agent ein fuer eine interne Veranstaltung gedachtes Zitat in einem Presse-Statement. Verknuepfe den Update-Rhythmus mit dem Kalender der Unternehmens-Ereignisse (Fuehrungswechsel, Rebranding), damit Journalisten keine veralteten Bio-Texte oder Kennzahlen erhalten.

Anschluss: S-WR-049

### S-WR-049 Voice-of-Customer-Archiv im Wissensordner für Persona-Updates nutzen

Trigger: Das Marketing-Team aktualisiert die Buyer-Personas jährlich — die Grundlage sind Kunden-Interview-Transkripte, Survey-Ergebnisse und Support-Ticket-Muster die irgendwo in SharePoint liegen und mühsam manuell ausgewertet werden müssen. (Quelle: sources/10 S-038; A-17)

Ziel: Ein anonymisiertes "WO-Voice-of-Customer"-Archiv aufbauen, das aggregierte Kundenstimmen als RAG-Dokumente bereitstellt und dem Persona-Agenten ermöglicht, aus echten Kundenzitaten und -mustern automatisch Persona-Update-Vorschläge zu generieren.

Ergebnis: Ein WO-Voice-of-Customer Library Folder mit 5-10 aggregierten Segment-Zusammenfassungen (je Kunden-Segment eine Datei, vollständig anonymisiert), verbunden mit einem Persona-Update-Agenten der jährliche Persona-Revisionen vorbereitet.

Fähigkeit: Library Folder + Chat (Persona-Update-Analyse) + DSGVO-konformer Upload-Prozess

Vorgehen:
1. Anonymisiere und aggregiere je Segment eine Zusammenfassungs-Datei.
2. Binde den Persona-Update-Agenten an.
3. Ersetze die Zusammenfassungen jaehrlich vollstaendig (nicht kumulativ).

Vorlage: Voice-of-Customer-Wissensordner:
1. 5-10 aggregierte Segment-Zusammenfassungen - je Segment eine Datei, vollstaendig anonymisiert.
2. Persona-Update-Agent - bereitet jaehrliche Persona-Revisionen vor.
3. Anonymisierung - keine Namen, keine unternehmens-spezifischen Details.

Artefakt: Ein WO-Voice-of-Customer Library Folder mit anonymisierten Segment-Zusammenfassungen und ein Persona-Update-Agent der jährliche Revisions-Vorschläge mit O-Ton-Belegen liefert.

Fallstricke:
- O-Ton-Zitate ohne Anonymisierungsprüfung hochladen → auch kurze Kundenaussagen können in Kombination mit Segment-Angaben zur Re-Identifikation führen; jedes Zitat muss ohne Namen und ohne unternehmens-spezifische Details abrufbar sein.
- Archiv nur jährlich mit neuen Daten befüllen und alte Segment-Zusammenfassungen nie löschen → veraltete Kundenstimmen aus 2021 können 2025er Persona-Updates verzerren; Segment-Zusammenfassungen jährlich vollständig ersetzen statt kumulativ erweitern.

Empfehlung: Pruefe jedes O-Ton-Zitat auf Re-Identifikation - auch kurze Aussagen koennen in Kombination mit Segment-Angaben jemanden identifizieren; nur ohne Namen und unternehmens-spezifische Details abrufbar machen. Ersetze die Segment-Zusammenfassungen jaehrlich vollstaendig statt kumulativ zu erweitern, da Kundenstimmen aus 2021 die 2025er Persona-Updates verzerren.

Anschluss: S-WR-050

### S-WR-050 Konkurrenz-Recherche-Archiv im Wissensordner strukturieren

Trigger: Das Marketing-Team führt quartalsweise Konkurrenz-Analysen durch — die Ergebnisse werden als PowerPoint-Präsentationen gespeichert, sind aber für den Strategie-Agenten nicht abrufbar, weil die PPTX-Dateien schlechte Chunk-Qualität liefern und die historischen Analysen nie strukturiert in den Wissensordner überführt wurden. (Quelle: sources/10 S-021; A-43)

Ziel: Einen "WO-Konkurrenz" Library Folder aufbauen, der quartalsweise Konkurrenz-Insights in einem strukturierten Format speichert und dem Strategie-Agenten ermöglicht, historische Marktverschiebungen und aktuelle Positioning-Gaps auf Knopfdruck abzurufen.

Ergebnis: Ein WO-Konkurrenz Library Folder mit atomaren Konkurrenz-Profil-Dateien (je Mitbewerber eine Datei, quartalsweise aktualisiert) und einem Strategie-Agenten der Positioning-Fragen mit historischem Kontext beantwortet.

Fähigkeit: Library Folder + Agent (Web Search für Live-Updates) + Citations-Analyse

Vorgehen:
1. Erstelle je Mitbewerber eine quartalsweise aktualisierte Profil-Datei.
2. Belege jede Aussage oder kennzeichne sie als 'interne Einschaetzung'.
3. Binde den Strategie-Agenten an; Profile aelter als 8 Quartale ins Archiv.

Vorlage: Konkurrenz-Wissensordner:
1. Atomare Profil-Dateien - je Mitbewerber eine Datei, quartalsweise aktualisiert.
2. Belege - jede Aussage mit oeffentlicher Quelle oder als 'interne Einschaetzung' gekennzeichnet.
3. Strategie-Agent - beantwortet Positioning-Fragen mit historischem Kontext.
4. Archiv - Profile aelter als 8 Quartale in Archiv-Unterordner.

Artefakt: Ein WO-Konkurrenz Library Folder mit Quartals-Profilen je Mitbewerber, ein Strategie-Agent mit Web Search + historischem Archiv, und ein quartalsweises Update-Protokoll.

Fallstricke:
- Konkurrenz-Profile aus internen Bewertungen ohne externe Belege hochladen → interne Meinungen ohne Quellen-Verweis im Wissensordner werden vom Agenten als Fakten behandelt; jede Aussage in den Profilen muss mit öffentlichen Quellen belegt oder als "interne Einschätzung" gekennzeichnet sein.
- Alle historischen Quartalsprofile behalten ohne Archivierungsregel → nach 3 Jahren sind 48 Konkurrenz-Profil-Dateien je Wettbewerber im Ordner; Faustregel: Profile älter als 8 Quartale in einen Archiv-Unterordner verschieben außerhalb des aktiven Sync-Bereichs.

Empfehlung: Kennzeichne interne Bewertungen ohne externe Belege als 'interne Einschaetzung' - sonst behandelt der Agent ungestuetzte Meinungen als Fakten. Verschiebe Profile aelter als 8 Quartale in einen Archiv-Unterordner ausserhalb des aktiven Sync-Bereichs, sonst sammeln sich nach 3 Jahren 48 Dateien je Wettbewerber.

Anschluss: S-WR-051

### S-WR-051 Event-Debrief-Archiv im Wissensordner für Follow-up-Planung nutzen

Trigger: Das Team plant eine Messe-Teilnahme und fragt sich welche Botschaften, Stand-Konzepte und Follow-up-Aktionen beim letzten Mal gut funktioniert haben — die Event-Debrief-Berichte von vor zwei Jahren liegen als Word-Dokumente in einem SharePoint-Ordner den niemand mehr kennt. (Quelle: A-40)

Ziel: Einen "WO-Event-Debriefs" Library Folder als strukturiertes Event-Lernarchiv aufbauen, das bei der Planung neuer Events sofort relevante historische Erkenntnisse liefert und die Event-Planungsqualität systematisch steigert.

Ergebnis: Ein WO-Event-Debriefs Library Folder mit 3-5 standardisierten Debrief-MD-Dateien aus vergangenen Events, verbunden mit einem Event-Planungs-Agenten der bei neuen Event-Briefings automatisch historische Parallelen zieht.

Fähigkeit: Library Folder + Agent-Konfiguration + semantische Suche

Vorgehen:
1. Standardisiere 3-5 Debrief-MD-Dateien (max. 1,5 Seiten).
2. Binde den Event-Planungs-Agenten an.
3. Regle die Vertraulichkeit ueber Zugriffsrechte (S-WR-023), nicht ueber Nicht-Upload.

Vorlage: Event-Debrief-Wissensordner:
1. 3-5 standardisierte Debrief-MD-Dateien aus vergangenen Events.
2. Event-Planungs-Agent - zieht bei neuen Briefings automatisch historische Parallelen.
3. Laengen-Grenze - max. 1,5 Seiten pro Debrief (Per-Document-Cap).

Artefakt: Ein WO-Event-Debriefs Library Folder mit 3-5 standardisierten Debrief-Einträgen, ein Event-Planungs-Agent der historische Learnings aktiv einbezieht und eine Debrief-Pflicht im Event-Abschluss-Prozess.

Fallstricke:
- Debrief-Dateien zu lang und detailliert erstellen (>3 Seiten) → Per-Document-Cap liefert nur einen Chunk pro Datei; lange Debriefs werden unvollständig retrievt; die 1,5-Seiten-Grenze in der Vorlage ist keine Empfehlung sondern eine technische Notwendigkeit.
- Event-Debriefs als vertrauliche interne Dokumente werten und nicht in den Wissensordner hochladen → Debriefs die nur in SharePoint liegen helfen dem Agenten nicht; Vertraulichkeit der Debriefs kann durch rollenbasierte Zugriffsrechte (S-WR-023) geregelt werden, nicht durch Nicht-Upload.

Empfehlung: Halte jede Debrief-Datei unter 1,5 Seiten - das ist keine Empfehlung, sondern technische Notwendigkeit, da der Per-Document-Cap nur einen Chunk pro Datei liefert und lange Debriefs unvollstaendig retrievt werden. Regle die Vertraulichkeit ueber rollenbasierte Zugriffsrechte (S-WR-023), nicht durch Nicht-Upload; nur in SharePoint liegende Debriefs helfen dem Agenten nicht.

Anschluss: S-WR-052

### S-WR-052 Markdown-Header-Struktur für optimale Chunk-Grenzen nutzen

Trigger: Das Team beobachtet, dass der Chunking-Algorithmus thematisch zusammengehörige Absätze auseinanderreißt und unzusammenhängende Textfragmente in einem Chunk zusammenfasst — nach einer Überprüfung zeigt sich, dass die hochgeladenen Dokumente keine klare Überschriften-Hierarchie (H1/H2/H3) verwenden. (Quelle: 12 Q57; S-WR-011)

Ziel: Die Markdown-Überschriften-Hierarchie als aktives Steuerungsinstrument für den Chunking-Algorithmus einsetzen, sodass thematische Grenzen im Dokument mit Chunk-Grenzen übereinstimmen und jeder abgerufene Chunk eine semantisch abgeschlossene Einheit ist.

Ergebnis: Ein Heading-Style-Guide als MD-Datei im WO-Basis-Ordner sowie 2-3 nach dem Guide überarbeitete Kerndokumente mit messbarer Verbesserung der Chunk-Kohärenz in Canary-Tests.

Fähigkeit: Library Folder + Chat (Dokument-Überarbeitung) + Canary-Test

Vorgehen:
1. Definiere den Heading-Style-Guide (keyword-reiche H2, >=300 Woerter/Abschnitt).
2. Ueberarbeite 2-3 Kerndokumente nach dem Guide.
3. Pruefe die Chunk-Kohaerenz im Canary-Test.

Vorlage: Heading-Style-Guide (Chunk-Kohaerenz):
1. H2-Regel - keyword-reiche Aussagen ('Preis und Rabattstruktur DACH 2025') statt Einwort-Begriffe ('Preis').
2. Abschnitts-Mindestlaenge - >=300 Woerter pro Abschnitt.
3. Pilot - 2-3 Kerndokumente nach dem Guide ueberarbeiten; Chunk-Kohaerenz im Canary-Test pruefen.

Artefakt: Ein Heading-Style-Guide als MD-Datei im WO-Basis-Ordner und 2-3 überarbeitete Kerndokumente mit Canary-Test-Nachweis für verbesserte Chunk-Kohärenz.

Fallstricke:
- H2-Überschriften als kurze Einwort-Begriffe formulieren ("Preis", "Eigenschaften") statt als keyword-reiche Aussagen → einwörtige Überschriften erzeugen schlechte Embedding-Vektoren; H2-Überschriften müssen den Kontext des Abschnitts transportieren: "Preis und Rabattstruktur für DACH-Kunden 2025" ist besser als "Preis".
- Header-Struktur so granular gestalten dass jeder H3-Abschnitt kürzer als 300 Wörter ist → Abschnitte unter 300 Wörtern erzeugen sehr kleine Chunks die zusammen mit dem nächsten Abschnitt verarbeitet werden und die Themen-Trennung aufheben; Mindestlänge pro Abschnitt: 300 Wörter.

Empfehlung: Formuliere H2-Ueberschriften als keyword-reiche Aussagen, die den Abschnittskontext transportieren - Einwort-Begriffe wie 'Preis' erzeugen schlechte Embedding-Vektoren. Halte jeden Abschnitt bei mindestens 300 Woertern; kuerzere Abschnitte erzeugen Mini-Chunks, die mit dem naechsten Abschnitt verschmelzen und die Themen-Trennung aufheben.

Anschluss: S-WR-053

### S-WR-053 Wissensordner-Health-Scorecard etablieren

Trigger: Die Marketing-Direktion möchte auf einen Blick wissen ob die Wissensordner des Teams in einem guten Zustand sind — aktuell gibt es keine Kennzahl für "Wissensordner-Gesundheit" und Probleme werden erst bemerkt wenn Nutzer sich über schlechte Antwort-Qualität beschweren. (Quelle: A-36; S-WR-036)

Ziel: Eine monatliche Wissensordner-Health-Scorecard einführen, die fünf messbare Kennzahlen aggregiert und der Direktion in 5 Minuten einen klaren Gesundheitsstatus aller Wissensordner liefert.

Ergebnis: Eine Scorecard-Vorlage als MD-Datei mit fünf definierten KPIs (Canary-Score, Freshness-Index, Duplikat-Rate, Datei-Auslastung, Retrieval-Miss-Rate) und einem monatlichen Ausfüll-Prozess der in 15 Minuten erledigt ist.

Fähigkeit: Library Folder (Verwaltungsansicht) + Chat (Canary-Test) + Canvas (Scorecard-Erstellung)

Vorgehen:
1. Definiere die fünf Scorecard-KPIs: (1) Canary-Score (Anteil bestandener Canary-Tests von 5, Zielwert ≥4/5); (2) Freshness-Index (Anteil Dateien mit aktuellem "Stand:"-Header, Zielwert >90 %); (3) Duplikat-Rate (Anteil verdächtiger Duplikat-Paare, Zielwert <5 %); (4) Datei-Auslastung (Anzahl Dateien / max. 1.000, Warnschwelle >80 %); (5) Retrieval-Miss-Rate (Anteil "Kein Treffer"-Antworten in der letzten Periode, Zielwert <10 %).
2. Erstelle die Scorecard-Vorlage im Canvas als MD-Tabelle: Spalten KPI, Aktueller Wert, Zielwert, Status (Grün/Gelb/Rot), Maßnahme wenn Rot.
3. Lege den monatlichen Ausfüll-Prozess fest: Canary-Test (10 min), Freshness-Stichprobe (3 min), Datei-Auslastung prüfen (1 min), Duplikat-Verdächtige aus Dateiliste (3 min), Retrieval-Miss-Feedback einsammeln (3 min) — gesamt 20 Minuten.
4. Archiviere jede monatliche Scorecard als `HEALTH-SCORECARD-[JJJJ-MM].md` im WO-Basis-Ordner; nach 12 Monaten ist ein Trend-Dashboard möglich.

Vorlage: Wissensordner-Scorecard (monatlich):
1. 5 KPIs - Canary-Score, Freshness-Index, Duplikat-Rate, Datei-Auslastung, Retrieval-Miss-Rate.
2. Ausfuell-Prozess - 15 Min/Monat, fester Termin + namentliche Ownership.
3. Schwellen je KPI mit Ampel.

Artefakt: Eine Health-Scorecard-Vorlage als MD-Datei mit fünf KPIs, definierten Zielwerten und einem monatlichen Ausfüll-Protokoll — archiviert als Zeitreihe im WO-Basis-Ordner.

Fallstricke:
- Scorecard mit zu vielen KPIs überladen (>7) → eine Scorecard die 30 Minuten zur Ausfüllung braucht wird nicht monatlich ausgefüllt; 5 KPIs sind das Maximum für ein nachhaltiges Monitoring-Instrument.
- Scorecard als einmaliges Projekt behandeln und nie in den monatlichen Rhythmus integrieren → ohne Kalender-Eintrag und namentliche Ownership der Scorecard verschwindet das Instrument nach zwei Monaten; monatlicher 20-Minuten-Termin ist Pflicht beim Rollout.

Empfehlung: Beschraenke die Scorecard auf maximal 5 KPIs - eine Scorecard, die 30 Minuten zum Ausfuellen braucht, wird nicht monatlich gepflegt. Verankere einen monatlichen 20-Minuten-Termin mit namentlicher Ownership beim Rollout, sonst verschwindet das Instrument nach zwei Monaten.

Anschluss: S-WR-054

### S-WR-054 Preis- und Packaging-Historik im Wissensordner für Verhandlungsvorbereitung

Trigger: Ein Key-Account-Manager bereitet sich auf eine Preisneuverhandlung mit einem Stammkunden vor und braucht die Preisentwicklung des Kunden über drei Jahre sowie alle gewährten Rabattkonditionen — diese Informationen sind in verstreuten Angebots-PDFs und Vertrags-Anhängen in SharePoint. (Quelle: A-22; 12 Q59)

Ziel: Eine strukturierte Preis- und Packaging-Historik im Wissensordner aufbauen, die es dem Vertriebs-Agenten ermöglicht, auf Basis historischer Konditionen und aktueller Preislisten datengestützte Verhandlungspositionen vorzubereiten.

Ergebnis: Ein "WO-Preis-Historik" Synced Folder mit Quartals-Preislisten und einer separaten Konditions-Übersicht je Kundensegment, aus dem der Vertriebs-Agent Verhandlungs-Briefings in unter 5 Minuten generiert.

Fähigkeit: Synced Folder + Library Folder + Agent-Konfiguration

Vorgehen:
1. Lege den Synced Folder mit Quartals-Preislisten + Segment-Konditionen an (anonymisiert).
2. Binde den Vertriebs-Agenten an.
3. Verschiebe Preisuebersichten aelter als 8 Quartale ins Archiv.

Vorlage: Preis-Historik-Wissensordner (Synced):
1. Synced Folder - Quartals-Preislisten + separate Konditions-Uebersicht je Segment.
2. Vertriebs-Agent - generiert Verhandlungs-Briefings in <5 Min.
3. Anonymisierung - nur Segment-Konditionen, keine individuellen Kundennamen/Vertraege.
4. Archiv - Preisuebersichten aelter als 8 Quartale auslagern.

Artefakt: Ein WO-Preis-Historik mit Synced Folder (aktuelle Preise) und Library Folder (historische Konditions-Übersichten), ein Vertriebs-Agent der Verhandlungs-Briefings mit Preis-Trendanalyse generiert.

Fallstricke:
- Individuelle Kundennamen und Vertragskonditionen direkt in den Wissensordner laden → Wissensordner sind für das gesamte Sales-Team zugänglich; individuelle Kundendaten sind DSGVO-relevant und dürfen nicht in Team-Wissensordnern liegen; nur anonymisierte Segment-Konditionen hochladen.
- Historische Preisübersichten nie löschen → nach fünf Jahren enthält der Ordner Preishistorien aus 2019 die für aktuelle Verhandlungen irrelevant sind und Trend-Analysen verzerren; Preisübersichten die älter als 8 Quartale sind in einen Archiv-Ordner verschieben.

Empfehlung: Lade nur anonymisierte Segment-Konditionen hoch, keine individuellen Kundennamen oder Vertragskonditionen - der Ordner ist team-weit zugaenglich und individuelle Kundendaten sind DSGVO-relevant. Verschiebe Preisuebersichten aelter als 8 Quartale in ein Archiv, sonst verzerren Preishistorien aus 2019 aktuelle Verhandlungen und Trend-Analysen.

Anschluss: S-WR-055

### S-WR-055 Retrieval-Debugging mit bekannt-guten Testanfragen

Trigger: Nach einer Wissensordner-Umstrukturierung (neue Dateinamen, neue Ordner-Aufteilung) berichtet ein Team-Mitglied dass der Agent Fragen falsch beantwortet — das Team ist unsicher ob die Ursache in der neuen Struktur, einem Indexierungs-Problem oder einem Prompt-Fehler liegt. (Quelle: 12 Q57, Q65; S-WR-010)

Ziel: Eine Retrieval-Debugging-Methodik einführen, die mit bekannt-guten Testanfragen (Goldstandard-Fragen mit bekannter richtiger Antwort) systematisch die Ursache von Retrieval-Fehlern nach Strukturänderungen isoliert.

Ergebnis: Ein Goldstandard-Test-Set mit 10 Fragen, bekannten Antworten und erwarteten Citations, das als Regressions-Test nach jeder Wissensordner-Änderung in unter 15 Minuten ausgeführt werden kann.

Fähigkeit: Wissensordner + Chat (Debugging) + Citations-Analyse

Vorgehen:
1. Erstelle 10 Goldstandard-Fragen mit Soll-Antworten und erwarteten Citations.
2. Fuehre den Test nach jeder Aenderung aus (>=15 Min Wartezeit).
3. Zieh die Soll-Antworten bei legitimen Inhaltsaenderungen bewusst nach.

Vorlage: Goldstandard-Regressions-Test:
1. 10 Fragen - mit bekannten Soll-Antworten und erwarteten Citations.
2. Lauf - nach jeder Wissensordner-Aenderung in <15 Min.
3. Pflege - Soll-Antworten mit legitimen Inhaltsaenderungen bewusst mitziehen (protokolliert).

Artefakt: Ein Goldstandard-Test-Set als MD-Datei mit 10 Fragen, bekannten Antworten und erwarteten Citations — wiederverwendbarer Regressions-Test nach jeder Wissensordner-Änderung.

Fallstricke:
- Goldstandard-Test-Set nach Wissensordner-Updates anpassen → wenn sich die richtige Antwort für eine Test-Frage durch ein Dokument-Update ändert, muss das Test-Set ebenfalls aktualisiert werden; veraltete Test-Sets liefern falsch-positive Fehler und sabotieren die Diagnose.
- Debugging-Session durchführen bevor die Indexierungslatenz nach dem Upload abgeklungen ist → nach einer Umstrukturierung immer mind. 15 Minuten warten (S-WR-045) bevor Goldstandard-Tests ausgeführt werden; Latenz-Fehler werden sonst als Struktur-Fehler fehldiagnostiziert.

Empfehlung: Aktualisiere das Goldstandard-Set, wenn ein Dokument-Update die richtige Antwort aendert - ein veraltetes Test-Set liefert falsch-positive Fehler und sabotiert die Diagnose. Warte nach einer Umstrukturierung mindestens 15 Minuten (S-WR-045), bevor du das Set laufen laesst, sonst werden Latenz-Effekte als Struktur-Fehler fehldiagnostiziert.

Anschluss: S-WR-056

### S-WR-056 Brand-Fotografie-Guidelines im Wissensordner für Bild-Redaktion bereitstellen

Trigger: Freelance-Fotografen und interne Content-Ersteller fragen immer wieder nach den Brand-Fotografie-Richtlinien — welche Motive, Stimmungen, Farb-Temperaturen und Bildkompositionen zur Marke passen und welche explizit vermieden werden sollen. Die Guidelines existieren als 40-seitiges PDF das niemand vollständig liest. (Quelle: S-WR-001; 12 Q64)

Ziel: Die Brand-Fotografie-Guidelines als abrufbaren Wissensordner strukturieren, damit ein Fotografie-Briefing-Agent in 2 Minuten ein kanalspezifisches Foto-Briefing auf Basis der validierten Richtlinien generiert.

Ergebnis: Ein WO-Brand-Fotografie Library Folder mit atomaren MD-Dateien (Stil-Leitfaden, Motiv-Kategorien, Verbotene-Motive-Liste, Kanal-spezifische Anforderungen), verbunden mit einem Briefing-Agenten für Fotografen und Content-Creator.

Fähigkeit: Library Folder + Agent-Konfiguration + Wissensordner-Anbindung

Vorgehen:
1. Atomisiere die Fotografie-Guidelines je Thema (alles als Text, S-WR-027).
2. Uebersetze subjektive Vorgaben in operative Anweisungen.
3. Binde den Briefing-Agenten fuer Fotografen/Creator an.

Vorlage: Brand-Fotografie-Wissensordner:
1. Atomare MD-Dateien - Stil-Leitfaden, Motiv-Kategorien, Verbotene-Motive, Kanal-Anforderungen.
2. Briefing-Agent - fuer Fotografen und Content-Creator.
3. Textbeschreibung - alle visuellen Regeln als Text (S-WR-027), Beispielbilder nur als Link-Referenzen.

Artefakt: Ein WO-Brand-Fotografie Library Folder mit 5 atomaren Richtlinien-Dateien und ein Briefing-Agent der kanalspezifische Foto-Briefings mit Citations in 2 Minuten generiert.

Fallstricke:
- Fotografie-Guidelines nur als visuelle Referenz-Bilder in den Wissensordner hochladen → Bilder werden von der Vektordatenbank vollständig ignoriert; alle visuellen Regeln müssen als Textbeschreibung vorliegen (S-WR-027); Beispielbilder können separat als Link-Referenzen im Text erwähnt werden.
- Stil-Vorgaben zu subjektiv formulieren ("authentisch", "lebendig", "modern") → subjektive Beschreibungen erzeugen inkonsistente Briefings; jede Stil-Vorgabe muss in operative Anweisungen übersetzt werden die ein Fotograf ohne Rückfragen umsetzen kann.

Empfehlung: Lege alle Fotografie-Regeln als Textbeschreibung an, nicht nur als Referenz-Bilder - Bilder werden von der Vektordatenbank ignoriert (S-WR-027); Beispielbilder koennen als Link-Referenzen im Text erwaehnt werden. Uebersetze subjektive Stil-Vorgaben ('authentisch', 'lebendig') in operative Anweisungen, die ein Fotograf ohne Rueckfragen umsetzen kann.

Anschluss: S-WR-057

### S-WR-057 Pro-Agent vs. Shared-Folder-Strategie abwägen und dokumentieren

Trigger: Das Marketing-Team diskutiert ob es besser ist jedem der acht Agenten einen eigenen dedizierten Wissensordner zu geben oder einen gemeinsamen zentralen Ordner für alle Agenten zu nutzen — die Entscheidung beeinflusst Governance-Aufwand, Retrieval-Qualität und Skalierbarkeit. (Quelle: 12 Q38; S-WR-014)

Ziel: Eine strukturierte Entscheidungsmatrix für die Pro-Agent-vs.-Shared-Folder-Frage entwickeln, die anhand von Retrieval-Qualität, Governance-Aufwand und Skalierbarkeit eine fundierte Empfehlung für die spezifische Team-Situation liefert.

Ergebnis: Eine dokumentierte Architektur-Entscheidung (ADR) als MD-Datei mit Entscheidungsmatrix, begründeter Empfehlung und einem Migrations-Plan für die gewählte Architektur.

Fähigkeit: Library Folder + Agent-Konfiguration + Chat (Architektur-Beratung)

Vorgehen:
1. Liste die Use-Cases und Dokumentenbestaende auf.
2. Vergleiche Shared- vs. Pro-Agent-Architektur per A/B-Test (S-WR-032) auf Retrieval-Qualitaet.
3. Dokumentiere die Wahl als ADR mit Entscheidungsmatrix und Migrations-Plan.

Empfehlung: Entscheide Shared- vs. Pro-Agent-Wissensordner-Architektur datenbasiert, nicht nach 'einfacher': Ein Shared Folder mit 300 Dokumenten liefert messbar schlechteres Retrieval als drei thematische Ordner mit je 100 - fuehre vor der finalen Entscheidung einen A/B-Test (S-WR-032) durch. Waehle die Pro-Agent-Architektur fuer thematisch klar trennbare Use-Cases, aber dupliziere Basis-Dokumente nicht in jeden Ordner; lege gemeinsam genutzte Inhalte in einen WO-Basis-Ordner, den alle Agenten zusaetzlich einbinden, sonst steigt der Governance-Aufwand ohne Retrieval-Benefit. Dokumentiere die Wahl als ADR mit Entscheidungsmatrix, begruendeter Empfehlung und Migrations-Plan.

Artefakt: Eine ADR-Datei mit Entscheidungsmatrix, begründeter Empfehlung (Pro-Agent / Shared / Hybrid) und einem Migrations-Plan für die gewählte Architektur.

Fallstricke:
- Entscheidung für Shared Folder treffen weil "einfacher" ohne Retrieval-Qualität zu testen → ein Shared Folder mit 300 Dokumenten liefert messbar schlechtere Retrieval-Ergebnisse als drei thematische Ordner mit je 100 Dokumenten; immer A/B-Test (S-WR-032) vor der finalen Entscheidung.
- Pro-Agent-Architektur wählen und Basis-Dokumente sieben Mal duplizieren → Duplikate in jedem Ordner erhöhen den Governance-Aufwand ohne Retrieval-Benefit; Basis-Dokumente gehören in einen gemeinsamen WO-Basis-Ordner den alle Agenten zusätzlich einbinden.

Anschluss: S-WR-058

### S-WR-058 Token-bewusstes Dokument-Trimming vor dem Upload

Trigger: Das Team entdeckt, dass ein 200-seitiges Unternehmens-Kompendium als einzelne PDF-Datei im Wissensordner liegt — das Dokument enthält neben wertvollem Kernwissen auch ausgedehnte Rechtskapitel, redundante Anhänge und historische Kapitel die seit 2015 nicht mehr aktuell sind und das Retrieval mit irrelevanten Chunks überschwemmen. (Quelle: S-WR-007; A-28)

Ziel: Einen strukturierten Trimming-Prozess für übermäßig lange Dokumente vor dem Wissensordner-Upload einführen, der irrelevante Abschnitte identifiziert und entfernt ohne wertvolles Kern-Wissen zu verlieren.

Ergebnis: Ein getrimmtes Kern-Dokument (max. 20-30 Seiten) aus dem ursprünglichen 200-seitigen Kompendium, aufgeteilt in atomare Dateien nach dem Ein-Thema-pro-Datei-Prinzip, mit einem dokumentierten Trimming-Protokoll das erklärt was entfernt wurde und warum.

Fähigkeit: Chat (direkter Anhang für Trimming-Analyse) + Library Folder + Canvas

Vorgehen:
1. Extrahiere aus dem Kompendium einen 20-30-Seiten-Kern, atomisiert.
2. Stimme die Trimming-Entscheidungen mit den Fach-Ownern ab.
3. Fuehre ein Trimming-Protokoll (was entfernt, warum, wo das Original liegt).

Vorlage: Dokument-Trimming (Kompendium):
1. Kern extrahieren - aus 200 Seiten ein 20-30-Seiten-Kern, atomisiert nach Ein-Thema-pro-Datei.
2. Fach-Owner-Abstimmung - vor dem Weglassen je Abschnitt mit dem Fach-Owner klaeren.
3. Trimming-Protokoll - was entfernt wurde, warum, und wo das Original liegt.

Artefakt: Ein getrimmtes Kern-Dokument (max. 30 Seiten gesamt, aufgeteilt in atomare MD-Dateien) mit einem Trimming-Protokoll das alle Entscheidungen dokumentiert.

Fallstricke:
- Trimming-Entscheidungen ohne Rücksprache mit Fachexperten treffen → ein Marketeer kann nicht beurteilen ob ein Rechtskapitel für Compliance-Anfragen relevant ist; Trimming immer mit dem jeweiligen Fach-Owner abstimmen bevor Abschnitte weggelassen werden.
- "Weglassen" mit "Archivieren" verwechseln → weggelassene Kapitel müssen im Original-Dokument außerhalb des Wissensordners weiterhin auffindbar sein; Trimming-Protokoll muss den Speicherort des Originals nennen.

Empfehlung: Stimme Trimming-Entscheidungen mit dem jeweiligen Fach-Owner ab - ein Marketeer kann nicht beurteilen, ob ein Rechtskapitel fuer Compliance-Anfragen relevant ist. Verwechsle 'Weglassen' nicht mit 'Archivieren'; das Trimming-Protokoll muss den Speicherort des vollstaendigen Originals ausserhalb des Wissensordners nennen.

Anschluss: S-WR-059

### S-WR-059 Lokalisierungs-Glossare im Wissensordner für konsistente Übersetzungen

Trigger: Das DACH-Team und das globale Marketing-Team übersetzen Kampagnen-Materialien — dabei entstehen inkonsistente Übersetzungen für Produkt-Begriffe, Marken-Slogan-Varianten und regulatorische Fachtermini weil kein zentrales Lokalisierungs-Glossar existiert. (Quelle: 12 Q77, Q103; A-24)

Ziel: Ein "WO-Lokalisierung" Library Folder mit Sprach-spezifischen Glossar-Dateien aufbauen, der dem Übersetzungs-Agenten verbindliche Begriffe für DE-DE, DE-AT, DE-CH und EN-INTL vorschreibt und inkonsistente Eigenerfindungen verhindert.

Ergebnis: Ein WO-Lokalisierung Library Folder mit 4 Sprach-Glossar-MD-Dateien (je 50-100 Begriffe), verbunden mit dem Übersetzungs-Agenten der bei jedem Übersetzungs-Auftrag zuerst das Glossar konsultiert.

Fähigkeit: Library Folder + Agent-Konfiguration + System-Instructions

Vorgehen:
1. Erstelle 4 Sprach-Glossar-MD-Dateien (MD-Tabellen, max. 30 Zeilen).
2. Binde den Uebersetzungs-Agenten an (Glossar zuerst konsultieren).
3. Beschraenke den Scope auf Fachbegriffe, Produktnamen und regulatorische Termini.

Vorlage: Lokalisierungs-Glossar-Wissensordner:
1. 4 Sprach-Glossar-MD-Dateien - je 50-100 Begriffe als MD-Tabelle (max. 30 Zeilen/Tabelle, mehrere Tabellen je Datei wenn noetig).
2. Anbindung - Uebersetzungs-Agent konsultiert bei jedem Auftrag zuerst das Glossar.
3. Scope - Marketing-Fachbegriffe, Produktnamen, regulatorische Termini.

Artefakt: Ein WO-Lokalisierung Library Folder mit 4 Sprach-Glossar-Dateien (DE-DE, DE-AT, DE-CH, EN-INTL), ein Übersetzungs-Agent der Glossar-Begriffe verbindlich anwendet und ein vierteljährlicher Glossar-Pflege-Prozess.

Fallstricke:
- Glossar als Fließtext statt als MD-Tabelle formatieren → Fließtext-Glossare erzeugen schlechte Chunks weil der Chunking-Algorithmus Begriff-Übersetzungs-Paare auseinanderreißt; Tabellen-Format ist für Glossare zwingend (max. 30 Zeilen pro Tabelle → mehrere Tabellen pro Datei wenn nötig).
- Glossar mit zu vielen Allgemeinbegriffen überladen (500+ Einträge) → sehr große Glossar-Dateien nähern sich dem 8-Millionen-Zeichen-Limit; Glossar auf Marketing-spezifische Fachbegriffe, Produktnamen und regulatorische Termini beschränken; allgemeine Wörterbuch-Einträge weglassen.

Empfehlung: Formatiere Glossare als MD-Tabelle, nicht als Fliesstext - der Chunking-Algorithmus reisst sonst Begriff-Uebersetzungs-Paare auseinander; bei >30 Zeilen mehrere Tabellen je Datei. Beschraenke das Glossar auf Marketing-spezifische Fachbegriffe, Produktnamen und regulatorische Termini; allgemeine Woerterbuch-Eintraege (500+) naehern sich dem 8-Millionen-Zeichen-Limit.

Anschluss: S-WR-060

### S-WR-060 Wissensordner-Strategie für die nächste Skalierungsstufe planen

Trigger: Das Marketing-Team wächst von 8 auf 25 Personen, die Anzahl der Agenten soll von 4 auf 12 steigen und der Wissensordner-Bestand wächst von 80 auf voraussichtlich 400 Dateien — die bisherige Ad-hoc-Wissensordner-Struktur ist nicht mehr skalierbar und die Direktion braucht einen strategischen Migrations-Plan. (Quelle: A-35; A-36; S-WR-039)

Ziel: Einen strukturierten Skalierungs-Plan für die Wissensordner-Infrastruktur eines wachsenden Marketing-Teams entwickeln, der bestehende Ordner reorganisiert, neue Ordner definiert, Governance-Prozesse skaliert und einen Migrations-Pfad mit minimaler Unterbrechung des laufenden Betriebs skizziert.

Ergebnis: Ein Skalierungs-Plan als MD-Dokument mit Ist-Zustand-Analyse, Ziel-Architektur (Ordner-Namen, Kapazitätsgrenzen, Agenten-Zuordnung), Migrations-Schritte in drei Phasen und aktualisiertem Governance-RACI für das größere Team.

Fähigkeit: Library Folder (Verwaltungsansicht) + Chat (Architektur-Planung) + Canvas (Skalierungs-Plan-Dokument)

Vorgehen:
1. Analysiere den Ist-Zustand und entwirf die Ziel-Architektur.
2. Migriere in 3 Phasen mit Test-Gates zwischen den Phasen.
3. Aktualisiere das Governance-RACI und kommuniziere die Struktur vor Phase 1.

Vorlage: Wissensordner-Skalierungs-Plan:
1. Ist-Analyse - aktuelle Ordner, Dateizahl, Agenten-Anbindung.
2. Ziel-Architektur - Ordner-Namen, Kapazitaetsgrenzen, Agenten-Zuordnung.
3. Migration in 3 Phasen - mit Test-Gates zwischen den Phasen.
4. Governance-RACI fuers groessere Team aktualisieren.

Artefakt: Ein vollständiger Skalierungs-Plan als MD-Dokument mit Ist-Zustand, Ziel-Architektur, 3-Phasen-Migrations-Plan und aktualisiertem Governance-RACI — als Canvas-Dokument erstellt und im WO-Basis-Ordner abgelegt.

Fallstricke:
- Migration auf einmal statt in Phasen durchführen → Big-Bang-Migration von 80 auf 400 Dateien in einer Woche verursacht Indexierungslatenz-Probleme (S-WR-045), unkontrollierten Qualitätsverlust und überfordert das Team; 3-Phasen-Plan mit Test-Gates zwischen den Phasen ist Pflicht.
- Skalierungs-Plan ohne Team-Kommunikation ausrollen → eine neue Ordner-Struktur ohne Briefing des Teams führt zu Verwirrung, falschen Uploads in alte Ordner und Widerstand gegen die neue Governance; aktive Kommunikation vor Phase 1 ist kein optionaler Schritt.

Empfehlung: Migriere in 3 Phasen mit Test-Gates statt als Big-Bang - 80 auf 400 Dateien in einer Woche verursacht Indexierungslatenz-Probleme (S-WR-045) und unkontrollierten Qualitaetsverlust. Kommuniziere die neue Ordner-Struktur aktiv vor Phase 1; ohne Briefing landen Uploads in alten Ordnern und es entsteht Widerstand gegen die Governance.

Anschluss: S-WR-061

### S-WR-061 Retrieval-Evaluations-Harness als wiederholbares Testgerüst aufbauen

Trigger: Das Team optimiert laufend Dokumente und Ordner-Strukturen, kann aber nie objektiv beweisen ob eine Änderung das Retrieval verbessert oder verschlechtert hat — jede Bewertung ist subjektiv und es fehlt ein standardisiertes Mess-Instrument. (Quelle: 12 Q57; A-34)

Ziel: Einen reproduzierbaren Retrieval-Evaluations-Harness aufbauen, der jede Wissensordner-Änderung gegen ein festes Frage-Antwort-Set scort und so datengestützte Optimierungsentscheidungen statt Bauchgefühl ermöglicht.

Ergebnis: Ein Evaluations-Harness als MD-Datei mit 15-20 Test-Items (Frage, erwartete Quelldatei, Soll-Antwort) und einem standardisierten Scoring-Bogen, der vor und nach jeder Änderung in unter 30 Minuten ausgeführt wird.

Fähigkeit: Wissensordner + Chat (Evaluations-Lauf) + Citations-Analyse

Vorgehen:
1. Definiere 15-20 Evaluations-Items über alle Kernthemen des Ordners: je Item eine Frage, die erwartete Quelldatei und die korrekte Kern-Antwort — mische einfache Faktenfragen, Kombinationsfragen und bekannte Edge-Cases.
2. Lege das Scoring-Schema fest: pro Item drei Dimensionen — Citation korrekt (0/1), Quelldatei stimmt (0/1), Antwort faktisch korrekt (0/1); Gesamt-Score als Prozentsatz der erreichten Punkte von Maximum.
3. Führe den Harness als Baseline aus (vor jeder Änderung), dokumentiere den Baseline-Score; nach jeder Wissensordner-Änderung erneut ausführen und Score-Delta berechnen.
4. Speichere jeden Lauf als `EVAL-HARNESS-[JJJJ-MM-TT].md` im WO-Basis-Ordner; nur Änderungen mit positivem oder neutralem Score-Delta werden produktiv übernommen, Regressionen zurückgerollt.

Vorlage: Evaluations-Harness:
1. 15-20 Test-Items - Frage, erwartete Quelldatei, Soll-Antwort.
2. Scoring-Bogen - standardisiert, vor und nach jeder Aenderung in <30 Min.
3. Soll-Wert-Prioritaet - Inhalt vor Dateiname.

Artefakt: Ein Retrieval-Evaluations-Harness als MD-Datei mit 15-20 gescorten Items, Baseline-Score und einem Score-Delta-Protokoll für jede Wissensordner-Änderung.

Fallstricke:
- Harness direkt nach einem Massen-Upload ausführen → Indexierungslatenz (S-WR-045) erzeugt falsch-negative Scores; mindestens 15 Minuten nach Upload warten bevor der Harness läuft, sonst werden Latenz-Effekte als Qualitätsverlust fehlinterpretiert.
- Evaluations-Items zu eng an den aktuellen Dateinamen koppeln → wenn eine Datei umbenannt wird, schlägt der Quelldatei-Check fehl obwohl der Inhalt korrekt retrievt wurde; im Soll-Wert den Inhalt priorisieren und Dateinamen-Erwartung nach jeder Umbenennung nachziehen.

Empfehlung: Warte mindestens 15 Minuten nach einem Massen-Upload, bevor der Harness laeuft (S-WR-045) - sonst erzeugt die Indexierungslatenz falsch-negative Scores, die als Qualitaetsverlust fehlinterpretiert werden. Priorisiere im Soll-Wert den Inhalt und zieh die Dateinamen-Erwartung nach jeder Umbenennung nach, sonst schlaegt der Quelldatei-Check fehl, obwohl der Inhalt korrekt retrievt wurde.

Anschluss: S-WR-062

### S-WR-062 Chunk-Grenzen gezielt über Header-Tuning steuern

Trigger: Der Evaluations-Harness (S-WR-061) zeigt, dass ein wichtiges Dokument bei mehreren Fragen Chunks zurückgibt, die mitten in einem Argument anfangen und an unlogischer Stelle enden — die Ursache liegt in fehlenden oder falsch platzierten Markdown-Headern, die den Chunking-Algorithmus fehlleiten. (Quelle: 12 Q57; S-WR-052)

Ziel: Header-Positionierung als präzises Tuning-Instrument einsetzen, um Chunk-Grenzen exakt auf semantische Themengrenzen zu legen, sodass jeder abgerufene Chunk eine in sich abgeschlossene Argumentationseinheit bildet.

Ergebnis: Ein nach Header-Tuning-Regeln überarbeitetes Kerndokument mit nachgewiesener Chunk-Kohärenz sowie eine wiederverwendbare Tuning-Checkliste für künftige Dokumente.

Fähigkeit: Library Folder + Chat (Header-Tuning) + Canary-Test

Vorgehen:
1. Diagnostiziere die Chunk-Brüche: stelle die problematische Frage und prüfe wo der zurückgegebene Chunk beginnt und endet — markiere die unlogische Schnittstelle im Quelldokument.
2. Setze einen H2- oder H3-Header genau an die Stelle die der Chunk als Themengrenze haben sollte; halte die Faustregel ein, dass zwischen zwei H2-Headern nicht mehr als circa 2.000 Zeichen liegen, damit ein Thema in einen Chunk passt.
3. Formuliere nach jedem Header einen keyword-reichen Eröffnungssatz, der das Thema des Abschnitts explizit benennt — dieser Satz wird zum semantischen Anker des Chunks.
4. Canary-Test vor und nach dem Tuning: dieselbe Frage stellen und prüfen ob der Chunk jetzt sauber an der Header-Grenze beginnt und das vollständige Thema enthält.

Vorlage: Header-Tuning (Chunk-Kohaerenz):
1. Header an Themengrenzen - nicht an Absatz-Mitten, kein zusammengehoeriges Argument zerteilen.
2. Eroeffnungssatz - je neuer Header ein keyword-reicher Themen-Eroeffnungssatz.
3. Tuning-Checkliste - wiederverwendbar; Chunk-Kohaerenz im Canary-Test nachweisen.

Artefakt: Ein header-getuntes Dokument mit Canary-Nachweis für saubere Chunk-Grenzen und eine Header-Tuning-Checkliste als MD-Datei im WO-Basis-Ordner.

Fallstricke:
- Header rein optisch nach Lesbarkeit setzen statt nach Chunk-Logik → ein Header der ein zusammengehöriges Argument in zwei Chunks trennt zerstört die Antwort-Vollständigkeit; Header immer an echte Themengrenzen setzen, nicht an Absatz-Mitten.
- Nach dem Tuning den Eröffnungssatz vergessen → ein Header ohne keyword-reichen Folgesatz erzeugt einen Chunk dessen erster Satz keinen Kontext trägt; jeder neue Header braucht einen expliziten Themen-Eröffnungssatz.

Empfehlung: Setze Header an echte Themengrenzen, nicht rein optisch nach Lesbarkeit - ein Header, der ein zusammengehoeriges Argument in zwei Chunks trennt, zerstoert die Antwort-Vollstaendigkeit. Gib jedem neuen Header einen expliziten, keyword-reichen Eroeffnungssatz, sonst traegt der erste Satz des Chunks keinen Kontext.

Anschluss: S-WR-063

### S-WR-063 Metadaten-Tagging-Strategie für gezieltes Retrieval einführen

Trigger: Der Agent vermischt bei Anfragen Dokumente unterschiedlicher Gültigkeit und Zielgruppe, weil die Dateien keine maschinenlesbaren Metadaten tragen — es gibt keine konsistente Methode um Region, Gültigkeitszeitraum, Kanal oder Freigabe-Status im Dokument selbst zu kodieren. (Quelle: 12 Q56; sources/10 S-039)

Ziel: Eine einheitliche Metadaten-Tagging-Konvention im Dokumenten-Kopf einführen, sodass der Agent über In-Text-Tags gezielt nach Region, Zeitraum, Kanal und Status filtern kann und das Retrieval präziser steuerbar wird.

Ergebnis: Eine Metadaten-Tagging-Konvention als MD-Datei sowie 5-10 nachgetaggte Pilotdokumente, bei denen tag-basierte Suchanfragen nachweislich präziser filtern als untaggte Dokumente.

Fähigkeit: Library Folder + Chat (Tagging-Anwendung) + Citations-Analyse

Vorgehen:
1. Definiere das Tag-Schema als Klartext-Block in der ersten Zeile jeder Datei (Langdock indiziert nur Text, daher keine separate Metadaten-Ebene): `[TAGS: region=DACH | gueltig=2025-Q2 | kanal=LinkedIn | status=freigegeben]`.
2. Lege die erlaubten Tag-Werte fest (kontrolliertes Vokabular): region = DE/AT/CH/DACH/INTL; status = entwurf/review/freigegeben; kanal = LinkedIn/Blog/Print/Mail — uneinheitliche Freitext-Tags zerstören die Filterwirkung.
3. Tagge 5-10 Pilotdokumente; weise den Agenten in der System-Instruction an: "Berücksichtige die [TAGS:]-Zeile am Dokumentanfang; bevorzuge bei mehreren Treffern Dokumente mit status=freigegeben und passender region."
4. Teste mit gefilterten Anfragen ("Nutze nur freigegebene DACH-Dokumente aus 2025") und prüfe ob der Agent die Tags korrekt für die Auswahl heranzieht.

Vorlage: Metadaten-Tagging-Konvention:
1. Sichtbarer Klartext - Tags als Klartext am Dokumentanfang, nicht als YAML/versteckte Kommentare.
2. Kontrolliertes Vokabular - verbindliches Werte-Set (z. B. 'Q2', nicht 'Q2/Quartal 2/2. Quartal').
3. Pilot - 5-10 Dokumente nachtaggen; tag-basierte Suchanfragen vs. ungetaggt vergleichen.

Artefakt: Eine Metadaten-Tagging-Konvention als MD-Datei und 5-10 getaggte Pilotdokumente mit nachgewiesener tag-basierter Filterwirkung.

Fallstricke:
- Tags als YAML-Frontmatter oder versteckte Kommentare setzen in der Annahme Langdock werte sie als echte Metadaten aus → Langdock kennt keine echte Metadaten-Ebene und filtert nicht hart über Tags; die Tags wirken nur als Text-Signal im Chunk, deshalb müssen sie als sichtbarer Klartext am Dokumentanfang stehen.
- Freitext-Tags ohne kontrolliertes Vokabular zulassen → "Q2", "Quartal 2", "2. Quartal" als drei Schreibweisen desselben Werts machen die Filterung unbrauchbar; ein verbindliches Werte-Set ist Pflicht.

Empfehlung: Setze Tags als sichtbaren Klartext am Dokumentanfang - Langdock kennt keine echte Metadaten-Ebene und filtert nicht hart ueber Tags; sie wirken nur als Text-Signal im Chunk. Erzwinge ein kontrolliertes Vokabular; drei Schreibweisen desselben Werts machen die Filterung unbrauchbar.

Anschluss: S-WR-064

### S-WR-064 Mehrsprachige Wissensordner mit Sprach-Routing produktiv betreiben

Trigger: Ein internationales Team pflegt Marketing-Wissen in Deutsch, Englisch und Französisch in einem gemeinsamen Ordner — der Agent gibt auf eine französische Anfrage teils deutsche Chunks zurück, weil die Vektor-Embeddings sprachübergreifend ähnliche Inhalte matchen und keine Sprach-Trennung erzwingen. (Quelle: 12 Q77, Q103; A-24)

Ziel: Eine mehrsprachige Wissensordner-Architektur mit explizitem Sprach-Routing aufbauen, sodass jede Anfrage zuverlässig Chunks in der Anfragesprache erhält und sprachgemischte Antworten ausgeschlossen sind.

Ergebnis: Sprach-getrennte Library Folders (WO-DE, WO-EN, WO-FR) mit einer Routing-Logik in den System-Instructions und einem mehrsprachigen Canary-Test-Set, das die Sprach-Treue pro Sprache nachweist.

Fähigkeit: Library Folder (mehrere) + Agent-Konfiguration + System-Instructions

Vorgehen:
1. Trenne alle Dokumente strikt nach Sprache in separate Library Folders; eine Datei enthält nur eine Sprache — gemischtsprachige Dokumente werden in je eine Datei pro Sprache aufgeteilt.
2. Konfiguriere den Agenten mit allen drei Sprach-Ordnern, aber gib in den System-Instructions eine harte Routing-Regel: "Erkenne die Sprache der Nutzeranfrage; rufe ausschließlich Dokumente aus dem Ordner der entsprechenden Sprache ab; antworte in derselben Sprache."
3. Lege für sprachneutrale Fakten (Zahlen, Produktnamen, technische Specs) einen separaten WO-Basis-Ordner an, der allen Sprachen gemeinsam dient — diese Inhalte sind sprachunabhängig.
4. Führe ein mehrsprachiges Canary-Test-Set aus: dieselbe Frage in DE, EN und FR; jede Antwort muss in der Anfragesprache erfolgen und aus dem korrekten Sprach-Ordner zitieren.

Vorlage: Sprach-getrennte Wissensordner (DE/EN/FR):
1. Drei Ordner - WO-DE/WO-EN/WO-FR; jede Sprachversion physisch im eigenen Ordner.
2. Routing-Logik - in den System-Instructions je Anfrage-Sprache.
3. Mehrsprachiges Canary-Set - Sprach-Treue pro Sprache nachweisen.

Artefakt: Sprach-getrennte Library Folders mit Routing-Regel in den System-Instructions und ein mehrsprachiges Canary-Test-Protokoll, das Sprach-Treue für DE, EN und FR nachweist.

Fallstricke:
- Sich darauf verlassen dass die System-Instruction das Cross-Language-Matching vollständig unterbindet → Vektor-Embeddings sind sprachübergreifend, deshalb kann ein deutscher Chunk auf eine französische Frage als semantisch ähnlich erscheinen; die physische Ordner-Trennung ist die eigentliche Absicherung, die Routing-Regel allein reicht nicht.
- Übersetzte Dokumente nur in einem Sprach-Ordner ablegen → eine EN-Datei im WO-FR-Ordner erzeugt sprachgemischte Treffer; jede Sprachversion gehört physisch in ihren eigenen Ordner.

Empfehlung: Verlass dich nicht allein auf die System-Instruction zur Sprach-Trennung - Vektor-Embeddings sind sprachuebergreifend, sodass ein deutscher Chunk auf eine franzoesische Frage matchen kann; die physische Ordner-Trennung ist die eigentliche Absicherung. Lege jede Sprachversion physisch in ihren eigenen Ordner; eine EN-Datei im WO-FR erzeugt sprachgemischte Treffer.

Anschluss: S-WR-065

### S-WR-065 Knowledge-Freshness-SLA mit verbindlichen Reaktionszeiten definieren

Trigger: Veraltete Dokumente im Wissensordner werden zwar irgendwann bemerkt, aber niemand ist verpflichtet sie innerhalb einer definierten Frist zu aktualisieren — die Marketing-Direktion möchte verbindliche Freshness-Zusagen je Dokumenttyp festschreiben statt sich auf Ad-hoc-Bereinigung zu verlassen. (Quelle: A-33; 12 Q65)

Ziel: Ein Freshness-SLA (Service-Level-Agreement) für den Wissensordner einführen, das pro Dokumenttyp eine maximale Veraltungs-Toleranz und eine verbindliche Reaktionszeit für Updates festlegt und deren Einhaltung messbar macht.

Ergebnis: Ein Freshness-SLA-Dokument als MD-Datei mit Aktualitäts-Klassen, maximalen Veraltungs-Fristen und einem monatlichen SLA-Compliance-Report.

Fähigkeit: Library Folder (Verwaltung) + Chat (SLA-Entwurf) + Canvas

Vorgehen:
1. Klassifiziere alle Dokumenttypen nach Aktualitäts-Kritikalität: Klasse A = preis-/konditionskritisch (max. 30 Tage Veraltung), Klasse B = produkt-/feature-bezogen (max. 90 Tage), Klasse C = stabile Grundlagen wie Brand-Werte (max. 365 Tage).
2. Schreibe pro Klasse eine SLA-Zusage: maximale Veraltungs-Frist, verantwortliche Rolle, Reaktionszeit bei Überschreitung (z.B. Klasse A: Update binnen 5 Werktagen nach Ablauf).
3. Verankere die SLA-Information im "Stand:"-Header jeder Datei (aus S-WR-016): "Stand: [JJJJ-MM] | SLA-Klasse: A | Review fällig: [JJJJ-MM]".
4. Erstelle monatlich einen SLA-Compliance-Report: Anteil der Dokumente je Klasse die innerhalb der Frist liegen; Dokumente außerhalb der Frist werden eskaliert.

Vorlage: Freshness-SLA:
1. Aktualitaets-Klassen - je Klasse maximale Veraltungs-Frist.
2. SLA-Owner - je Klasse eine konkrete Person/Rolle.
3. Monats-Report - SLA-Compliance; Eskalation bei Verstoss (Praefix 'VERALTET-', S-WR-016).

Artefakt: Ein Freshness-SLA-Dokument mit Aktualitäts-Klassen und Fristen sowie ein monatlicher SLA-Compliance-Report-Vorlage im WO-Basis-Ordner.

Fallstricke:
- SLA-Fristen definieren ohne sie an namentliche Rollen zu binden → ein SLA ohne klaren Verantwortlichen wird nicht eingehalten; je Aktualitäts-Klasse muss eine konkrete Person oder Rolle als SLA-Owner benannt sein.
- SLA-Compliance nur intern messen ohne Eskalation bei Verstoß → ein gemessener aber folgenloser SLA-Bruch ändert nichts; Überschreitungen müssen ein dokumentiertes Eskalations-Verfahren auslösen (z.B. Präfix "VERALTET-" nach S-WR-016).

Empfehlung: Binde jede Aktualitaets-Klasse an eine namentliche Rolle als SLA-Owner - ein SLA ohne klaren Verantwortlichen wird nicht eingehalten. Loese bei jedem SLA-Bruch ein dokumentiertes Eskalations-Verfahren aus (z. B. 'VERALTET-'-Praefix nach S-WR-016); ein gemessener, aber folgenloser Verstoss aendert nichts.

Anschluss: S-WR-066

### S-WR-066 Embedding-Drift durch periodische Re-Indizierungs-Checks überwachen

Trigger: Ein Wissensordner liefert seit Monaten stabile Antworten, aber nach einem stillen Plattform-Update (geändertes Embedding-Modell oder Re-Indizierung) verschieben sich plötzlich die Retrieval-Treffer für bekannte Fragen — das Team hat keine Methode, solche Drift-Effekte früh zu erkennen. (Quelle: A-34; 12 Q57)

Ziel: Ein Drift-Monitoring etablieren, das mit einem festen Referenz-Frage-Set periodisch prüft ob sich die Retrieval-Ergebnisse bei unverändertem Wissensordner verschieben — und solche systemseitigen Verschiebungen von echten Dokumenten-Problemen unterscheidet.

Ergebnis: Ein Drift-Monitoring-Protokoll mit einem eingefrorenen Referenz-Frage-Set und einer Vergleichs-Tabelle, die monatlich dokumentiert ob dieselben Fragen weiterhin dieselben Quelldateien zurückgeben.

Fähigkeit: Wissensordner + Chat (Drift-Lauf) + Citations-Analyse

Vorgehen:
1. Friere ein Referenz-Set von 10 Fragen ein, für die bei einem stabilen Wissensordner die zurückgegebene Quelldatei bekannt und konstant ist — dieses Set wird nie verändert solange die Quelldokumente unverändert bleiben.
2. Führe das Referenz-Set monatlich aus und dokumentiere pro Frage die tatsächlich zitierte Quelldatei; vergleiche mit dem Vormonat.
3. Interpretiere Abweichungen: ändert sich die Quelldatei bei unverändertem Dokumentenbestand, deutet das auf systemseitige Embedding- oder Indizierungs-Verschiebung hin (Drift), nicht auf ein Dokumenten-Problem.
4. Bei festgestelltem Drift: re-validiere die betroffenen Antworten manuell, informiere das Team und prüfe ob betroffene Dokumente nach den RAG-Regeln (S-WR-011) robuster gemacht werden müssen.

Vorlage: Retrieval-Drift-Monitoring:
1. Eingefrorenes Referenz-Frage-Set - bei unveraendertem Wissensordner.
2. Vergleichs-Tabelle - monatlich: liefern dieselben Fragen weiterhin dieselben Quelldateien?
3. Aenderungs-Protokoll - jede Dokument-Aenderung festhalten.

Artefakt: Ein Drift-Monitoring-Protokoll mit eingefrorenem Referenz-Set und einer Monats-Vergleichstabelle der zitierten Quelldateien, archiviert im WO-Basis-Ordner.

Fallstricke:
- Drift-Verschiebung mit eigener Dokumenten-Änderung verwechseln → das Referenz-Set ist nur aussagekräftig wenn der Wissensordner zwischen zwei Läufen wirklich unverändert blieb; jede Dokument-Änderung muss protokolliert werden, sonst sind Drift und Eigenänderung nicht trennbar.
- Drift-Check als Ersatz für den Evaluations-Harness (S-WR-061) behandeln → der Drift-Check misst Stabilität bei Nicht-Änderung, der Harness misst Qualität bei Änderung; beide Instrumente ergänzen sich und ersetzen einander nicht.

Empfehlung: Protokolliere jede Dokument-Aenderung - das Referenz-Set ist nur aussagekraeftig, wenn der Wissensordner zwischen zwei Laeufen unveraendert blieb; sonst sind Drift und Eigenaenderung nicht trennbar. Behandle den Drift-Check nicht als Ersatz fuer den Evaluations-Harness (S-WR-061): der eine misst Stabilitaet bei Nicht-Aenderung, der andere Qualitaet bei Aenderung.

Anschluss: S-WR-067

### S-WR-067 Granulares Folder-Access-Control nach Vertraulichkeitsstufen umsetzen

Trigger: Ein Wissensordner enthält gemischt öffentlich nutzbare und vertrauliche Dokumente (interne Margen, Verhandlungsspielräume) — alle Team-Mitglieder haben denselben Zugriff, und es gibt keine Kontrolle darüber wer welche Inhalte über den Agenten abrufen kann. (Quelle: 12 Q58, Q70)

Ziel: Ein Access-Control-Modell nach Vertraulichkeitsstufen einführen, das vertrauliche Inhalte in zugriffsbeschränkte Ordner isoliert und so verhindert dass sensible Informationen über breit freigegebene Agenten unkontrolliert abrufbar sind.

Ergebnis: Eine nach Vertraulichkeitsstufen getrennte Ordner-Struktur mit dokumentierter Zugriffs-Matrix und Agenten, die je nach Nutzerkreis nur die freigegebene Vertraulichkeitsstufe einbinden.

Fähigkeit: Library Folder (mehrere) + Workspace-Admin-Konfiguration + Agent-Konfiguration

Vorgehen:
1. Klassifiziere alle Dokumente nach drei Vertraulichkeitsstufen: öffentlich (team-weit), intern (nur Marketing-Kern), vertraulich (nur Direktion + benannte Personen).
2. Lege je Stufe einen eigenen Library Folder an (WO-Public, WO-Intern, WO-Vertraulich) und setze die Zugriffsrechte entsprechend restriktiv im Workspace-Admin — vertrauliche Ordner nur für den benannten Personenkreis.
3. Binde Agenten gezielt an: ein team-weit nutzbarer Agent erhält ausschließlich WO-Public; ein Direktions-Agent darf zusätzlich WO-Vertraulich einbinden — kein breit freigegebener Agent sieht je vertrauliche Ordner.
4. Dokumentiere die Zugriffs-Matrix als `ACCESS-CONTROL-[JJJJ].md`: Ordner, Vertraulichkeitsstufe, Personenkreis, welche Agenten den Ordner einbinden dürfen.

Vorlage: Vertraulichkeits-getrennte Ordner-Struktur:
1. Stufen - je Vertraulichkeitsstufe ein physisch getrennter, zugriffsbeschraenkter Ordner.
2. Zugriffs-Matrix - dokumentiert, wer welche Stufe sieht.
3. Agenten - binden je nach Nutzerkreis nur die freigegebene Stufe ein.

Artefakt: Eine vertraulichkeits-getrennte Ordner-Struktur und eine Access-Control-Matrix als MD-Datei, die definiert welche Agenten welche Vertraulichkeitsstufe einbinden dürfen.

Fallstricke:
- Vertrauliche Dokumente im selben Ordner lassen und nur den Agenten anweisen sie nicht zu zitieren → eine Prompt-Anweisung ist keine Zugriffskontrolle; sobald ein Dokument im eingebundenen Ordner liegt, kann es im Retrieval auftauchen; echte Trennung erfolgt nur über physisch getrennte, zugriffsbeschränkte Ordner.
- Access-Control-Matrix dokumentieren aber die Workspace-Admin-Rechte nicht tatsächlich setzen → Dokumentation ohne durchgesetzte Berechtigung schützt nicht; nach jeder Änderung prüfen ob die echten Ordner-Rechte mit der Matrix übereinstimmen.

Empfehlung: Trenne vertrauliche Dokumente physisch in zugriffsbeschraenkte Ordner, statt den Agenten nur anzuweisen, sie nicht zu zitieren - eine Prompt-Anweisung ist keine Zugriffskontrolle; was im eingebundenen Ordner liegt, kann im Retrieval auftauchen. Setze die Workspace-Admin-Rechte tatsaechlich und pruefe nach jeder Aenderung, ob die echten Ordner-Rechte mit der Matrix uebereinstimmen.

Anschluss: S-WR-068

### S-WR-068 Knowledge-Deduplication als wiederkehrenden Automatik-nahen Prozess etablieren

Trigger: Trotz eines einmaligen Duplikat-Audits (S-WR-046) wachsen erneut inhaltliche Doppelungen heran, weil bei jedem Update neue Versionen hochgeladen werden ohne dass die alten zuverlässig entfernt werden — das Team braucht einen wiederkehrenden, weitgehend standardisierten Dedup-Prozess statt sporadischer Einmal-Aktionen. (Quelle: 12 Q65; S-WR-046)

Ziel: Einen wiederkehrenden Deduplizierungs-Prozess mit einem festen monatlichen Rhythmus und einem standardisierten Chat-gestützten Vergleichsverfahren etablieren, der inhaltliche Duplikate früh erkennt bevor sie das Retrieval halbieren.

Ergebnis: Ein Dedup-Routine-Protokoll mit monatlichem Trigger, einem standardisierten Vergleichs-Prompt und einer Dedup-Historie, die zeigt wie viele Duplikate pro Periode entfernt wurden.

Fähigkeit: Library Folder (Verwaltung) + Chat (inhaltlicher Vergleich) + Citations-Analyse

Vorgehen:
1. Exportiere monatlich die Dateiliste; identifiziere Verdachtspaare über Namens-Heuristik (gleiche Themen-Keywords, Versions-Suffixe) und über inhaltliche Nähe (zwei Dateien die in Canary-Tests oft gemeinsam zitiert werden).
2. Lade jedes Verdachtspaar als direkten Chat-Anhang und führe den standardisierten Vergleichs-Prompt aus: inhaltlich identisch / aktualisierte Version / thematisch verwandt aber verschieden.
3. Wende die Entscheidungsregel aus S-WR-046 an (neuere behalten, ältere löschen bei Identität/Update; beide behalten bei echter Themenverschiedenheit mit klarerer Benennung) und entferne Duplikate physisch.
4. Pflege eine Dedup-Historie: Datum, Anzahl geprüfter Paare, Anzahl entfernter Duplikate — ein steigender Trend signalisiert ein Governance-Problem im Upload-Prozess (S-WR-039).

Vorlage: Dedup-Routine (monatlich):
1. Monats-Trigger + standardisierter Vergleichs-Prompt.
2. Menschliche Bestaetigung - jede Loeschentscheidung bestaetigen.
3. Dedup-Historie - wie viele Duplikate je Periode entfernt.

Artefakt: Ein wiederkehrendes Dedup-Routine-Protokoll mit monatlichem Trigger, standardisiertem Vergleichs-Prompt und einer Dedup-Historie als Trend-Indikator.

Fallstricke:
- "Automatik" wörtlich nehmen und auf menschliche Bestätigung verzichten → es gibt keine echte Auto-Dedup-Funktion in Langdock; der Prozess ist Chat-gestützt aber jede Löschentscheidung braucht menschliche Bestätigung, sonst droht Datenverlust durch falsch erkannte Duplikate.
- Steigenden Dedup-Trend ignorieren statt die Ursache zu beheben → wenn jeden Monat mehr Duplikate entstehen, liegt das Problem im Upload-Verhalten; der Dedup-Prozess behandelt dann nur Symptome, die Governance-Regel (löschen vor neu hochladen) muss durchgesetzt werden.

Empfehlung: Verlange fuer jede Loeschentscheidung menschliche Bestaetigung - es gibt keine echte Auto-Dedup-Funktion; ohne Bestaetigung droht Datenverlust durch falsch erkannte Duplikate. Behebe bei steigendem Dedup-Trend die Ursache im Upload-Verhalten (Governance-Regel 'loeschen vor neu hochladen'), statt nur Symptome zu behandeln.

Anschluss: S-WR-069

### S-WR-069 Citation-Qualität systematisch auditieren

Trigger: Der Agent liefert Antworten mit Quellenangaben, aber niemand prüft ob die zitierte Datei die Aussage tatsächlich stützt — bei einer Stichprobe zeigt sich, dass einige Citations auf Dateien zeigen die das Thema nur streifen, nicht belegen. (Quelle: 12 Q68; sources/10 S-039)

Ziel: Ein Citation-Quality-Audit einführen, das die Beleg-Tauglichkeit zitierter Quellen systematisch prüft, sodass jede Citation die zugehörige Aussage wirklich stützt und nicht nur thematisch ähnlich ist.

Ergebnis: Ein Citation-Audit-Protokoll mit einer Stichproben-Methode, einer Bewertungs-Skala für Beleg-Stärke und einer Maßnahmenliste für Dokumente, deren Chunks Aussagen nicht sauber stützen.

Fähigkeit: Wissensordner + Chat (Citation-Prüfung) + Citations-Analyse

Vorgehen:
1. Ziehe eine Stichprobe von 10 realen Agenten-Antworten mit Citations; öffne für jede die zitierte Quelldatei und den genannten Abschnitt.
2. Bewerte je Citation die Beleg-Stärke: 3 = Aussage wörtlich/eindeutig im Chunk belegt; 2 = sinngemäß belegt aber Interpretation nötig; 1 = nur thematisch verwandt, Aussage nicht belegt (Pseudo-Citation).
3. Für jede Citation mit Score 1: prüfe ob die Aussage halluziniert war oder ob das Quelldokument die Information zwar enthält aber in einem nicht-abgerufenen Chunk steht (Per-Document-Cap-Effekt) — letzteres erfordert Atomisierung (S-WR-007).
4. Dokumentiere die durchschnittliche Beleg-Stärke und leite Maßnahmen ab: Dokumente mit schwachen Belegen nach RAG-Regeln überarbeiten, halluzinationsanfällige Themen mit strengeren System-Instructions absichern.

Vorlage: Citation-Audit:
1. Stichproben-Methode - Aussage gegen zitierten Chunk inhaltlich abgleichen.
2. Beleg-Staerke-Skala - bewertet, ob die Quelle die Aussage stuetzt.
3. Massnahmenliste - Dokumente, deren Chunks Aussagen nicht sauber stuetzen.

Artefakt: Ein Citation-Audit-Protokoll mit Beleg-Stärke-Scores für eine Stichprobe von 10 Antworten und einer Maßnahmenliste für schwach belegende Dokumente.

Fallstricke:
- Citation-Existenz mit Citation-Korrektheit gleichsetzen → eine vorhandene Quellenangabe garantiert nicht dass die Quelle die Aussage stützt; nur der inhaltliche Abgleich von Aussage und zitiertem Chunk deckt Pseudo-Citations auf.
- Bei Score-1-Citations vorschnell Halluzination annehmen → oft steht die Information im Dokument, aber in einem anderen Chunk der wegen des Per-Document-Caps nicht abgerufen wurde; vor der Halluzinations-Diagnose immer prüfen ob Atomisierung das Problem löst.

Empfehlung: Setze Citation-Existenz nicht mit Citation-Korrektheit gleich - eine vorhandene Quellenangabe garantiert nicht, dass die Quelle die Aussage stuetzt; nur der inhaltliche Abgleich deckt Pseudo-Citations auf. Pruefe bei Score-1-Citations zuerst, ob Atomisierung (S-WR-007) das Problem loest, bevor du Halluzination annimmst - oft steht die Information in einem anderen, wegen des Per-Document-Caps nicht abgerufenen Chunk.

Anschluss: S-WR-070

### S-WR-070 Golden-Query-Regressions-Set für jede Wissensordner-Änderung pflegen

Trigger: Nach jeder Wissensordner-Änderung tauchen unerwartet neue Fehler bei Fragen auf die vorher funktioniert haben — das Team braucht ein festes Regressions-Set bewährter Fragen, das nach jeder Änderung garantiert dass keine bisher korrekte Antwort kaputtgeht. (Quelle: 12 Q57; A-34)

Ziel: Ein gepflegtes Golden-Query-Regressions-Set aufbauen, das die wichtigsten bekannt-korrekten Frage-Antwort-Paare festhält und nach jeder Änderung als Schutz vor Regressionen ausgeführt wird.

Ergebnis: Ein Golden-Query-Set als MD-Datei mit 12-15 Fragen, bekannten Soll-Antworten und Soll-Quelldateien, das als verpflichtendes Gate vor der Freigabe jeder Wissensordner-Änderung dient.

Fähigkeit: Wissensordner + Chat (Regressions-Lauf) + Citations-Analyse

Vorgehen:
1. Sammle die 12-15 wichtigsten realen Fragen die der Agent korrekt beantwortet (aus Nutzungs-Logs oder Team-Befragung); fixiere je Frage die Soll-Antwort und die Soll-Quelldatei als "Golden Record".
2. Definiere die Pass-Bedingung: eine Frage gilt als bestanden wenn die Antwort inhaltlich der Soll-Antwort entspricht und die Soll-Quelldatei zitiert wird.
3. Führe das Golden-Set vor jeder geplanten Änderung (Baseline) und nach der Änderung aus; jede Frage die von Pass auf Fail kippt ist eine Regression und blockiert die Freigabe.
4. Pflege das Set bewusst: wenn ein Dokument-Update die korrekte Soll-Antwort legitim ändert, wird der Golden Record kontrolliert aktualisiert und die Änderung im Set protokolliert.

Vorlage: Golden-Query-Set (Freigabe-Gate):
1. 12-15 Fragen - mit bekannten Soll-Antworten und Soll-Quelldateien.
2. Gate - verpflichtend vor der Freigabe jeder Wissensordner-Aenderung.
3. Aenderungs-Protokoll - jede Golden-Record-Aenderung bewusst dokumentieren.

Artefakt: Ein Golden-Query-Regressions-Set als MD-Datei mit 12-15 fixierten Frage-Antwort-Quelldatei-Tripeln, eingesetzt als Freigabe-Gate vor jeder Wissensordner-Änderung.

Fallstricke:
- Golden Records bei jeder legitimen Inhaltsänderung stillschweigend mitziehen ohne Protokoll → das Set verliert seinen Schutz-Wert wenn die Soll-Antworten unkontrolliert wandern; jede Golden-Record-Änderung muss bewusst dokumentiert und begründet werden.
- Regressions-Lauf vor Abklingen der Indexierungslatenz starten → ein direkt nach Upload ausgeführtes Golden-Set produziert falsche Regressionen (S-WR-045); immer mindestens 15 Minuten warten.

Empfehlung: Dokumentiere und begruende jede Golden-Record-Aenderung bewusst, statt Soll-Antworten bei jeder Inhaltsaenderung stillschweigend mitzuziehen - sonst verliert das Set seinen Schutz-Wert. Warte vor dem Regressions-Lauf mindestens 15 Minuten auf das Abklingen der Indexierungslatenz (S-WR-045), sonst produziert das Golden-Set falsche Regressionen.

Anschluss: S-WR-071

### S-WR-071 Wissensordner-Kostentreiber transparent nachverfolgen

Trigger: Die Token-Kosten der Wissensordner-Agenten steigen, aber niemand weiß welche Ordner oder Dokumente die teuersten Abfragen verursachen — große, schlecht strukturierte Dokumente blähen jeden Retrieval-Kontext auf und treiben unbemerkt die Kosten. (Quelle: A-21; A-25)

Ziel: Ein Kosten-Tracking für Wissensordner einführen, das die Kostentreiber auf Ordner- und Dokumentenebene transparent macht und teure, ineffiziente Dokumente für die Optimierung priorisiert.

Ergebnis: Ein Wissensordner-Kosten-Report, der je Ordner den Beitrag zum Token-Verbrauch schätzt und die teuersten Dokumente für ein Trimming (S-WR-058) priorisiert.

Fähigkeit: Library Folder (Verwaltung) + Workspace-Dashboard (Token-Verbrauch) + Chat (Kosten-Analyse)

Vorgehen:
1. Lies im Workspace-Dashboard den Token-Verbrauch je Agent aus; ordne jeden Agenten seinen eingebundenen Wissensordnern zu, um den Verbrauch grob auf Ordner-Ebene zuzurechnen.
2. Identifiziere innerhalb teurer Ordner die größten Dokumente (Zeichen-/Seitenzahl): große Dokumente mit vielen langen Chunks erhöhen den pro Abfrage übergebenen Kontext und damit die Kosten.
3. Priorisiere Optimierungs-Kandidaten: Dokumente die groß sind UND häufig zitiert werden haben den höchsten Kosten-Hebel; markiere sie für Trimming (S-WR-058) und Atomisierung (S-WR-007).
4. Dokumentiere die Kosten-Hypothesen in einem Report und re-messe nach der Optimierung den Token-Verbrauch der betroffenen Agenten, um die Einsparung zu belegen.

Vorlage: Wissensordner-Kosten-Report:
1. Schaetzung je Ordner - Beitrag zum Token-Verbrauch (Groesse x Zitierhaeufigkeit).
2. Trimming-Priorisierung - teuerste Dokumente fuers Trimming (S-WR-058).
3. Deklaration - als Priorisierungs-Hilfe, nicht als exakte Messung.

Artefakt: Ein Wissensordner-Kosten-Report mit Verbrauchs-Zurechnung je Ordner und einer priorisierten Optimierungsliste der kostenintensivsten Dokumente.

Fallstricke:
- Token-Verbrauch exakt einzelnen Dateien zuschreiben wollen → das Dashboard zeigt Verbrauch je Agent/Nutzer, nicht je Datei; die Datei-Ebene bleibt eine begründete Schätzung über Größe und Zitierhäufigkeit, keine exakte Messung — Report entsprechend als Priorisierungs-Hilfe deklarieren.
- Dokumente nur nach Größe trimmen ohne Zitierhäufigkeit zu beachten → ein großes, nie abgerufenes Dokument kostet kaum; der Kosten-Hebel entsteht erst aus Größe MAL Abrufhäufigkeit; beide Faktoren gemeinsam betrachten.

Empfehlung: Deklariere den Report als Priorisierungs-Hilfe, nicht als exakte Messung - das Dashboard zeigt Verbrauch je Agent/Nutzer, nicht je Datei; die Datei-Ebene bleibt eine begruendete Schaetzung. Betrachte Groesse UND Zitierhaeufigkeit gemeinsam; ein grosses, nie abgerufenes Dokument kostet kaum, der Hebel entsteht erst aus Groesse mal Abrufhaeufigkeit.

Anschluss: S-WR-072

### S-WR-072 Source-of-Truth-Governance über konkurrierende Wissensquellen durchsetzen

Trigger: Für dieselbe Information existieren mehrere Quellen (ein Brand-Wert steht in einer alten Präsentation, einem aktuellen Manifest und einer Kampagnen-Datei) — der Agent zitiert je nach Frage eine andere Quelle und es ist nicht definiert welche die verbindliche Wahrheit ist. (Quelle: A-35; 12 Q66)

Ziel: Eine Source-of-Truth-Governance einführen, die für jede zentrale Informationskategorie genau ein verbindliches Master-Dokument festlegt und konkurrierende Sekundärquellen aus dem Retrieval-Pfad entfernt oder klar nachordnet.

Ergebnis: Ein Source-of-Truth-Register, das je Informationskategorie das eine Master-Dokument benennt, sowie ein bereinigter Wissensordner in dem konkurrierende Quellen aufgelöst sind.

Fähigkeit: Library Folder (Verwaltung) + Chat (Quellen-Konflikt-Analyse) + Governance-Dokument

Vorgehen:
1. Liste die zentralen Informationskategorien (Brand-Werte, Preise, Produktnamen, Personas, Compliance-Regeln); identifiziere pro Kategorie alle Dokumente die diese Information enthalten.
2. Bestimme je Kategorie das eine Master-Dokument (Source of Truth) — das aktuellste, freigegebene, vollständigste; trage es ins Source-of-Truth-Register ein.
3. Löse Konflikte auf: veraltete oder redundante Sekundärquellen werden entweder entfernt (S-WR-046) oder so bereinigt dass sie auf das Master-Dokument verweisen statt eigene konkurrierende Werte zu nennen.
4. Verankere die Regel in der Governance (S-WR-039): neue Dokumente die eine Master-Kategorie berühren dürfen die Master-Information nicht duplizieren, sondern referenzieren.

Vorlage: Source-of-Truth-Register:
1. Register - je Informationskategorie das eine Master-Dokument benennen.
2. Bereinigung - konkurrierende Sekundaerquellen physisch entfernen/umschreiben.
3. Aktualitaet - Master-Dokument auf Freshness (S-WR-016) pruefen.

Artefakt: Ein Source-of-Truth-Register als MD-Datei und ein bereinigter Wissensordner ohne konkurrierende Master-Quellen, verankert in der Governance.

Fallstricke:
- Konkurrierende Sekundärquellen im Ordner belassen und nur das Register dokumentieren → solange beide Quellen im eingebundenen Ordner liegen, kann der Agent weiterhin die nicht-verbindliche zitieren; das Register wirkt nur wenn Sekundärquellen physisch bereinigt oder umgeschrieben werden.
- Master-Dokument festlegen ohne Aktualität zu prüfen → wenn das gewählte Master-Dokument selbst veraltet ist, zementiert die Governance einen falschen Wert; vor der Master-Wahl Freshness (S-WR-016) sicherstellen.

Empfehlung: Bereinige konkurrierende Sekundaerquellen physisch oder schreibe sie um - solange beide im eingebundenen Ordner liegen, kann der Agent weiterhin die nicht-verbindliche zitieren; das Register allein wirkt nicht. Stelle vor der Master-Wahl die Aktualitaet sicher (S-WR-016), sonst zementiert die Governance einen veralteten Wert.

Anschluss: S-WR-073

### S-WR-073 PDF-Tabellen-Extraktion für retrievbares Tabellenwissen handhaben

Trigger: Wichtige Daten (Vergleichsmatrizen, Konditions-Tabellen) stecken in PDF-Tabellen, die beim Upload als unstrukturierter Text-Brei extrahiert werden — Zeilen und Spaltenüberschriften landen getrennt, sodass der Agent Tabellenwerte nicht zuverlässig den richtigen Kategorien zuordnen kann. (Quelle: 12 Q53; 12 Q61)

Ziel: Einen verlässlichen Aufbereitungs-Workflow für PDF-Tabellen etablieren, der tabellarische Inhalte in retrievbare, semantisch eindeutige Strukturen überführt, ohne dass Zeilen-Spalten-Bezüge beim Chunking verloren gehen.

Ergebnis: Aus PDF-Tabellen aufbereitete MD-Dateien, in denen jede Tabellenzeile als eigenständiger, vollständig benannter Fließtext-Satz plus kompakte MD-Tabelle vorliegt und Canary-Tests Tabellenwerte korrekt zurückgeben.

Fähigkeit: Chat (direkter Anhang für Tabellen-Extraktion) + Library Folder + Canary-Test

Vorgehen:
1. Lade das PDF als direkten Chat-Anhang (nicht in den Wissensordner) und lasse die Tabelle extrahieren: "Gib jede Zeile mit allen Spaltenüberschriften als vollständigen Satz wieder — keine isolierten Zellwerte."
2. Wandle jede Zeile in einen selbsterklärenden Satz um, der Spaltenkontext mitführt: "Produkt Alpha (Kategorie Premium) kostet 499 EUR netto bei einer Mindestabnahme von 10 Stück." — so überlebt der Zeilen-Spalten-Bezug das Chunking.
3. Ergänze pro Tabellenblock eine kompakte MD-Tabelle (max. 30 Zeilen) für Nutzer die die Struktur sehen wollen; größere Tabellen nach Kategorie auf mehrere Dateien aufteilen (Per-Document-Cap).
4. Canary-Test: frage konkrete Zellwerte ab (Preis eines bestimmten Produkts in einer bestimmten Kategorie) und prüfe ob der Agent den richtigen Wert mit korrektem Spaltenkontext liefert.

Vorlage: PDF-Tabellen RAG-aufbereiten:
1. Zeilenweise Ausformulierung - jede Tabellenzeile als vollstaendig benannter Fliesstext-Satz + kompakte MD-Tabelle.
2. Aufteilung - Tabellen >30 Zeilen nach Kategorie auf mehrere Dateien.
3. Canary-Test - Tabellenwerte korrekt zurueckgegeben?

Artefakt: Aus PDF-Tabellen aufbereitete MD-Dateien mit zeilenweise ausformulierten Fließtext-Sätzen plus kompakten Tabellen, mit Canary-Nachweis für korrekte Zellwert-Retrieval.

Fallstricke:
- Die PDF-Tabelle direkt in den Wissensordner laden und auf Auto-Extraktion vertrauen → die rohe PDF-Tabellen-Extraktion trennt Überschriften von Werten, der Agent ordnet Zahlen falschen Kategorien zu; die zeilenweise Ausformulierung als Fließtext ist zwingend.
- Sehr große Datentabellen als eine Datei behalten → das Per-Document-Cap liefert pro Datei nur einen Chunk, viele Zeilen werden nie abgerufen; Tabellen über 30 Zeilen nach Kategorie auf mehrere Dateien aufteilen.

Empfehlung: Formuliere PDF-Tabellen zeilenweise als Fliesstext aus, statt auf Auto-Extraktion zu vertrauen - die rohe Extraktion trennt Ueberschriften von Werten und der Agent ordnet Zahlen falschen Kategorien zu. Teile Tabellen ueber 30 Zeilen nach Kategorie auf mehrere Dateien auf, da der Per-Document-Cap pro Datei nur einen Chunk liefert und viele Zeilen sonst nie abgerufen werden.

Anschluss: S-WR-074

### S-WR-074 Knowledge-Versionierung mit nachvollziehbarer Änderungshistorie führen

Trigger: Ein Brand-Dokument wird mehrfach im Jahr überarbeitet, aber es ist nie nachvollziehbar welche Version wann galt und was sich geändert hat — bei einer Compliance-Rückfrage ("Welche Tonalitätsregel galt im Q1?") kann das Team die historische Fassung nicht belegen. (Quelle: 12 Q59; A-33)

Ziel: Eine Knowledge-Versionierungs-Praxis einführen, die für versionskritische Dokumente eine nachvollziehbare Änderungshistorie führt, ohne dass veraltete Versionen das Live-Retrieval mit konkurrierenden Inhalten vergiften.

Ergebnis: Eine Versionierungs-Konvention mit Versions-Header im aktiven Dokument und einem getrennten Archiv-Ordner außerhalb des Retrieval-Pfads, der historische Fassungen belegbar aufbewahrt.

Fähigkeit: Library Folder (aktiv + Archiv) + Chat (Changelog-Pflege)

Vorgehen:
1. Führe im aktiven Dokument einen Versions-Header in den ersten Zeilen: "Version: v3 | Gültig ab: [JJJJ-MM] | Änderung ggü. v2: [Kurzbeschreibung]" — so reist die Versionsinfo in den Chunk und erscheint in Citations.
2. Halte genau eine aktive Version je Dokument im Live-Ordner; ältere Versionen werden beim Update in einen Archiv-Ordner verschoben, der NICHT an Live-Agenten angebunden ist (kein Retrieval-Konflikt).
3. Pflege je versionskritischem Dokument eine separate Changelog-Datei (oder einen Changelog-Abschnitt) der die Versions-Übergänge dokumentiert: Version, Datum, Was geändert, Wer freigegeben.
4. Bei historischen Rückfragen: die belegende Fassung wird aus dem Archiv-Ordner herangezogen (nicht über den Live-Agenten), sodass die Live-Retrieval-Qualität unberührt bleibt.

Vorlage: Versionierung mit Archiv-Ordner:
1. Versions-Header - im aktiven Dokument.
2. Archiv-Ordner - historische Fassungen ausserhalb des Retrieval-Pfads (nicht angebunden).
3. Changelog - inhaltliche Aenderungsbeschreibung, nicht nur Versionsnummer.

Artefakt: Eine Versionierungs-Konvention mit Versions-Header, einem retrieval-getrennten Archiv-Ordner und einer Changelog-Vorlage für versionskritische Dokumente.

Fallstricke:
- Mehrere Versionen desselben Dokuments gleichzeitig im Live-Ordner halten um "die Historie verfügbar zu haben" → der Agent zitiert dann konkurrierende Versionen mit widersprüchlichen Werten; historische Fassungen gehören in einen separaten, nicht-angebundenen Archiv-Ordner.
- Changelog nur im Dateinamen führen (v1, v2, v3) ohne inhaltliche Änderungsbeschreibung → die Versionsnummer allein belegt nicht WAS sich geändert hat; bei Compliance-Rückfragen ist die inhaltliche Änderungsbeschreibung entscheidend.

Empfehlung: Halte nur die aktive Version im angebundenen Ordner und historische Fassungen in einem separaten, nicht-angebundenen Archiv-Ordner - mehrere Live-Versionen lassen den Agenten konkurrierende, widerspruechliche Werte zitieren. Fuehre den Changelog mit inhaltlicher Aenderungsbeschreibung, nicht nur mit Versionsnummern (v1/v2/v3); bei Compliance-Rueckfragen ist entscheidend, WAS sich geaendert hat.

Anschluss: S-WR-075

### S-WR-075 Retrieval-Miss-Analytics für datengestützte Wissenslücken-Schließung

Trigger: Der Agent antwortet regelmäßig mit "Keine Information gefunden", aber diese Misses werden nirgends erfasst — das Team weiß nicht welche Themen am häufigsten fehlen und kann den Wissensordner nicht gezielt nach echtem Bedarf erweitern. (Quelle: 12 Q57; 12 Q68)

Ziel: Ein Retrieval-Miss-Analytics einführen, das Fehlanfragen systematisch erfasst, nach Themen clustert und so die Wissensordner-Erweiterung datengestützt nach tatsächlichem Nutzerbedarf priorisiert.

Ergebnis: Ein Miss-Log mit kategorisierten Fehlanfragen, eine Häufigkeits-Auswertung der fehlenden Themen und eine priorisierte Backlog-Liste für die nächste Wissensordner-Erweiterung.

Fähigkeit: Wissensordner + Chat (Miss-Erfassung) + Canvas (Auswertung)

Vorgehen:
1. Konfiguriere die Agenten so, dass jeder Miss eine eindeutige, erfassbare Antwort liefert: "Retrieval-Miss: kein Treffer für [Schlüsselbegriff]" — dieser strukturierte Marker macht Misses überhaupt erst auswertbar.
2. Sammle die Miss-Marker periodisch (aus Chat-Verläufen oder Nutzer-Meldungen) in ein Miss-Log mit Frage, Schlüsselbegriff und Datum.
3. Clustere die Misses nach Themen und zähle die Häufigkeit; ein häufig fehlendes Thema signalisiert eine echte Wissenslücke, ein einmaliger Miss eher einen Spezialfall.
4. Leite eine priorisierte Erweiterungs-Backlog ab: häufigste Miss-Themen zuerst schließen (neues Dokument erstellen oder bestehendes ergänzen), danach Canary-Test ob der Miss behoben ist.

Vorlage: Retrieval-Miss-Log:
1. Einheitlicher Miss-Marker - in den System-Instructions erzwingen (maschinell sammelbar).
2. Haeufigkeits-Auswertung - fehlende Themen kategorisieren.
3. Backlog - priorisierte Liste fuer die naechste Wissensordner-Erweiterung.

Artefakt: Ein Miss-Log mit kategorisierten Fehlanfragen und eine priorisierte Erweiterungs-Backlog, die die Wissensordner-Pflege an tatsächlichem Nutzerbedarf ausrichtet.

Fallstricke:
- Misses nicht als strukturierten Marker erzwingen → wenn der Agent Fehlanfragen mal mit "weiß ich nicht", mal mit Umformulierungen beantwortet, sind die Misses nicht maschinell sammelbar; ein einheitlicher Miss-Marker in den System-Instructions ist Voraussetzung für die Auswertung.
- Jeden einzelnen Miss sofort durch ein neues Dokument schließen → seltene Einzelfall-Misses blähen den Ordner mit kaum genutztem Wissen auf; nur wiederkehrende Themen-Cluster rechtfertigen neue Dokumente.

Empfehlung: Erzwinge einen einheitlichen Miss-Marker in den System-Instructions - antwortet der Agent mal mit 'weiss ich nicht', mal mit Umformulierungen, sind Misses nicht maschinell sammelbar. Schliesse nur wiederkehrende Themen-Cluster durch neue Dokumente, nicht jeden Einzelfall-Miss, sonst blaehst du den Ordner mit kaum genutztem Wissen auf.

Anschluss: S-WR-076

### S-WR-076 Ordner-Struktur entlang von Personas statt Abteilungen schneiden

Trigger: Die Wissensordner sind nach Abteilungen geschnitten (Ordner "Content", Ordner "Performance"), aber die Agenten bedienen Personas mit klaren Aufgabenprofilen — ein Persona-Agent muss Wissen aus mehreren Abteilungs-Ordnern zusammensuchen und erhält viel thematisches Rauschen. (Quelle: sources/10 S-039; 12 Q38)

Ziel: Die Wissensordner-Struktur entlang der Personas und ihrer Aufgaben statt entlang der Organigramm-Abteilungen schneiden, sodass jeder Persona-Agent genau das thematisch passende, rauschfreie Wissensbündel erhält.

Ergebnis: Eine persona-zentrierte Ordner-Architektur, in der jeder Persona-Agent einen aufgaben-passenden Ordner (plus WO-Basis) einbindet, mit nachgewiesener Reduktion von Fehl-Treffern gegenüber der abteilungs-zentrierten Struktur.

Fähigkeit: Library Folder (mehrere) + Agent-Konfiguration + A/B-Test

Vorgehen:
1. Liste die Personas und ihre Kernaufgaben (z.B. Persona "SEO-Redakteur": Recherche, interne Verlinkung, Keyword-Mapping); leite je Persona das benötigte Wissensbündel ab — quer zu Abteilungsgrenzen.
2. Schneide die Ordner neu entlang dieser Persona-Wissensbündel statt entlang Abteilungen; gemeinsame Grundlagen kommen in WO-Basis, das alle Personas zusätzlich einbinden.
3. Binde jeden Persona-Agenten an genau seinen Persona-Ordner plus WO-Basis (max. 2-3 Ordner, um Rauschen zu minimieren).
4. Belege den Vorteil per A/B-Test (S-WR-032): dieselben Persona-typischen Fragen gegen alte Abteilungs-Struktur und neue Persona-Struktur; die Persona-Struktur sollte präzisere, rauschärmere Treffer liefern.

Vorlage: Persona-zentrierte Ordner-Architektur:
1. Persona-Ordner - je Persona-Agent ein aufgaben-passender Ordner + WO-Basis.
2. Gemeinsame Inhalte - in WO-Basis, nicht in jeden Persona-Ordner kopiert.
3. Nachweis - Reduktion von Fehl-Treffern vs. abteilungs-zentrierter Struktur.

Artefakt: Eine persona-zentrierte Ordner-Architektur mit Persona-zu-Ordner-Zuordnung und A/B-Test-Nachweis für reduzierte Fehl-Treffer gegenüber der Abteilungs-Struktur.

Fallstricke:
- Persona-Schnitt führt zu massiver Dokument-Duplikation über Persona-Ordner hinweg → wenn dasselbe Grunddokument in fünf Persona-Ordnern liegt, steigt der Pflegeaufwand; gemeinsam genutzte Inhalte gehören in WO-Basis, nicht in jeden Persona-Ordner kopiert.
- Personas zu fein schneiden → zu viele Mikro-Personas erzeugen zu viele Kleinst-Ordner mit Pflege-Overhead; Personas auf die realen, häufig bedienten Aufgabenprofile beschränken.

Empfehlung: Lege gemeinsam genutzte Inhalte in WO-Basis statt sie in jeden Persona-Ordner zu kopieren - dasselbe Grunddokument in fuenf Ordnern vervielfacht den Pflegeaufwand. Beschraenke die Personas auf die realen, haeufig bedienten Aufgabenprofile; zu fein geschnittene Mikro-Personas erzeugen viele Kleinst-Ordner mit Pflege-Overhead.

Anschluss: S-WR-077

### S-WR-077 Large-Document-Splitting nach einer klaren Aufteilungs-Strategie durchführen

Trigger: Ein 150-seitiges Kompendium soll in den Wissensordner — das Team weiß dass es aufgeteilt werden muss, aber nicht nach welchem Schnitt-Prinzip (nach Kapiteln? nach Themen? nach Zeichenzahl?), sodass jede Datei ein eigenständig retrievbares Thema bildet ohne gebrochene Querverweise. (Quelle: 12 Q54, Q55; A-28)

Ziel: Eine klare Large-Document-Splitting-Strategie definieren, die lange Dokumente nach semantischen Themengrenzen in atomare, eigenständig retrievbare Dateien zerlegt und dabei Querverweise und Kontextverlust kontrolliert.

Ergebnis: Ein Splitting-Leitfaden mit Schnitt-Prinzip und Checkliste sowie ein nach dem Leitfaden aufgeteiltes Pilot-Dokument, dessen Teildateien jeweils ein Thema vollständig und eigenständig abdecken.

Fähigkeit: Chat (Splitting-Analyse) + Library Folder + Canary-Test

Vorgehen:
1. Lege das Schnitt-Prinzip fest: primär nach semantischen Themengrenzen (ein abgeschlossenes Thema = eine Datei), nicht nach Seitenzahl oder Zeichenzahl; eine Datei soll genau eine Frage-Kategorie vollständig beantworten (Ein-Thema-pro-Datei, S-WR-007).
2. Erstelle aus dem Inhaltsverzeichnis eine Schnitt-Liste: welche Kapitel/Abschnitte bilden ein eigenständiges Thema, welche gehören zusammen; Mindestlänge je Datei circa 300 Wörter, sonst zu kleinteilig.
3. Schneide das Dokument entlang der Themengrenzen; bei jedem Schnitt alle internen Querverweise ("siehe Abschnitt 3") auflösen, da diese nach der Aufteilung gebrochen sind; jede Datei beginnt mit H1 und Themenname im ersten Satz.
4. Canary-Test: je Teildatei eine repräsentative Frage; jede Datei muss ihr Thema eigenständig und vollständig beantworten ohne auf eine andere Datei zu verweisen.

Vorlage: Dokument-Splitting-Leitfaden:
1. Schnitt-Prinzip - an semantischen Themengrenzen, nicht nach fester Zeichen-/Seitenzahl.
2. Querverweise aufloesen - 'siehe Abschnitt 3' in eigenstaendigen Text umschreiben.
3. Pilot - ein Dokument nach Leitfaden aufteilen; je Teildatei ein Thema vollstaendig.

Artefakt: Ein Splitting-Leitfaden mit Schnitt-Prinzip und Checkliste sowie ein aufgeteiltes Pilot-Dokument mit Canary-Nachweis für eigenständige Themen-Abdeckung je Teildatei.

Fallstricke:
- Nach fester Zeichen- oder Seitenzahl statt nach Themengrenzen schneiden → ein mechanischer Schnitt zerreißt zusammengehörige Themen mitten im Argument; der Schnitt muss immer an semantischen Grenzen erfolgen, auch wenn die Teildateien dadurch unterschiedlich lang werden.
- Querverweise nach dem Split unaufgelöst lassen → "siehe Abschnitt 3" zeigt nach der Aufteilung ins Leere, der Agent kann den Verweis nicht folgen; jeder interne Verweis muss beim Schneiden in eigenständigen Text aufgelöst werden.

Empfehlung: Schneide an semantischen Themengrenzen, nicht nach fester Zeichen-/Seitenzahl - ein mechanischer Schnitt zerreisst zusammengehoerige Themen mitten im Argument, auch wenn die Teildateien dadurch unterschiedlich lang werden. Loese jeden internen Querverweis beim Schneiden in eigenstaendigen Text auf, sonst zeigt 'siehe Abschnitt 3' nach der Aufteilung ins Leere.

Anschluss: S-WR-078

### S-WR-078 Knowledge-Onboarding-Pfad für neue Mitarbeiter über den Wissensordner gestalten

Trigger: Neue Mitarbeiter sollen die KI-Wissensordner produktiv nutzen, wissen aber nicht welche Ordner für ihre Rolle relevant sind, wie man präzise Anfragen formuliert und wie man Citations bewertet — sie stellen entweder gar keine oder unbrauchbar vage Anfragen. (Quelle: A-37)

Ziel: Einen strukturierten Knowledge-Onboarding-Pfad gestalten, der neue Mitarbeiter in definierten Schritten befähigt die relevanten Wissensordner und Agenten produktiv und qualitätsbewusst zu nutzen.

Ergebnis: Ein Knowledge-Onboarding-Pfad als MD-Datei mit einem gestuften Lernplan (Ordner-Überblick, Retrieval-Formulierung, Citation-Bewertung) und einer kurzen Abschluss-Übung, die die produktive Nutzung nachweist.

Fähigkeit: Library Folder + Agent-Konfiguration + Konversations-Starter

Vorgehen:
1. Erstelle eine rollenspezifische Ordner-Landkarte: welche Wissensordner und Agenten sind für welche Rolle relevant, was enthält jeder Ordner — als erste Onboarding-Lektion.
2. Lehre präzise Retrieval-Formulierung anhand des Leitfadens aus S-WR-029: Vorher/Nachher-Beispiele wie man vage Fragen in spezifische, treffsichere Anfragen verwandelt.
3. Lehre Citation-Bewertung: wie man erkennt ob eine Antwort durch eine Quelle gestützt ist und wann man bei fehlender oder schwacher Citation nachhaken muss (Bezug zu S-WR-069).
4. Schließe mit einer praktischen Übung ab: der neue Mitarbeiter beantwortet drei reale Arbeitsfragen über den Agenten und bewertet selbst die Citations — Erfolg wird im Onboarding-Log vermerkt.

Vorlage: Knowledge-Onboarding-Pfad:
1. Gestufter Lernplan - Ordner-Ueberblick, Retrieval-Formulierung, Citation-Bewertung.
2. Abschluss-Uebung - weist produktive Nutzung nach.
3. Verzahnung mit Inhalts-Onboarding (S-WR-047).

Artefakt: Ein Knowledge-Onboarding-Pfad als MD-Datei mit gestuftem Lernplan und einer Abschluss-Übung, abgelegt im WO-Onboarding-Ordner (S-WR-047).

Fallstricke:
- Onboarding auf "hier sind die Ordner, viel Erfolg" reduzieren → ohne Schulung in Retrieval-Formulierung und Citation-Bewertung stellen neue Mitarbeiter vage Fragen und vertrauen ungeprüft jeder Antwort; die beiden Fertigkeiten sind der Kern des Onboardings, nicht der Ordner-Überblick.
- Onboarding-Pfad nicht mit dem Inhalts-Onboarding (S-WR-047) verzahnen → der Knowledge-Nutzungs-Pfad (wie nutze ich die Ordner) und der Inhalts-Wissensordner (was steht drin) müssen aufeinander verweisen, sonst entstehen zwei unverbundene Onboarding-Stränge.

Empfehlung: Mach Retrieval-Formulierung und Citation-Bewertung zum Kern des Onboardings, nicht nur den Ordner-Ueberblick - ohne diese beiden Fertigkeiten stellen neue Mitarbeiter vage Fragen und vertrauen ungeprueft jeder Antwort. Verzahne den Knowledge-Nutzungs-Pfad mit dem Inhalts-Onboarding (S-WR-047), sonst entstehen zwei unverbundene Onboarding-Straenge.

Anschluss: S-WR-079

### S-WR-079 Cross-Folder-Retrieval-Routing über einen Dispatcher-Agenten steuern

Trigger: Ein Nutzer stellt eine Frage die Wissen aus mehreren spezialisierten Ordnern erfordert (Preis aus WO-Preis, Tonalität aus WO-Brand, Compliance aus WO-Compliance) — ein einzelner Agent mit allen Ordnern liefert Rauschen, aber der Nutzer weiß nicht welchen Spezial-Agenten er fragen soll. (Quelle: 12 Q69; 12 Q56)

Ziel: Ein Cross-Folder-Retrieval-Routing aufbauen, das Anfragen anhand ihres Themas an den richtigen spezialisierten Wissensordner-Pfad leitet, sodass jede Anfrage rauschfrei aus dem thematisch passenden Ordner bedient wird.

Ergebnis: Eine dokumentierte Routing-Logik (Dispatcher-Regeln oder klare Konversations-Starter je Thema), die Anfragen verlässlich dem korrekten Spezial-Ordner zuordnet und thematisches Rauschen vermeidet.

Fähigkeit: Agent-Konfiguration + Library Folder (mehrere) + System-Instructions

Vorgehen:
1. Definiere Routing-Regeln oder thematische Konversations-Starter je Spezial-Ordner.
2. Lege fest, wie Misch-Anfragen aus mehreren Ordnern kombiniert und getrennt zitiert werden.
3. Teste mit reinen und gemischten Anfragen.

Vorlage: Multi-Ordner-Routing:
1. Routing-Regeln oder thematische Konversations-Starter - ordnen Anfragen dem korrekten Spezial-Ordner zu.
2. Misch-Anfragen - explizit festlegen, wie Teil-Antworten aus mehreren Ordnern kombiniert und getrennt zitiert werden.

Artefakt: Eine dokumentierte Cross-Folder-Routing-Logik (Dispatcher-Regeln oder thematische Konversations-Starter) mit Test-Nachweis für rauschfreie, korrekt zugeordnete Misch-Anfragen.

Fallstricke:
- Alle Ordner einfach an einen Agenten hängen und auf "der findet das Richtige" hoffen → bei vielen thematisch breiten Ordnern flutet das k=50-Retrieval den Kontext mit irrelevanten Kandidaten; explizite Routing-Regeln oder thematisch getrennte Konversations-Starter sind nötig, nicht nur das Anbinden aller Ordner.
- Routing-Regeln definieren aber Misch-Anfragen nicht behandeln → reale Anfragen mischen oft Themen; das Routing muss explizit festlegen wie Teil-Antworten aus mehreren Ordnern kombiniert und getrennt zitiert werden, sonst bricht es bei der ersten Misch-Frage.

Empfehlung: Definiere explizite Routing-Regeln oder thematisch getrennte Konversations-Starter, statt alle Ordner an einen Agenten zu haengen und auf 'der findet das Richtige' zu hoffen - viele breite Ordner fluten das k=50-Retrieval mit irrelevanten Kandidaten. Lege fuer Misch-Anfragen explizit fest, wie Teil-Antworten aus mehreren Ordnern kombiniert und getrennt zitiert werden, sonst bricht das Routing bei der ersten themenuebergreifenden Frage.

Anschluss: S-WR-080

### S-WR-080 Wissensordner-Portfolio-Health-Scorecard über alle Ordner aggregieren

Trigger: Die Marketing-Direktion hat einzelne Monitoring-Instrumente etabliert (Spot-Check S-WR-036, Health-Scorecard S-WR-053, Evaluations-Harness, Drift-Monitoring, Miss-Analytics), aber kein einziges Blatt das über alle Wissensordner hinweg den Gesamt-Gesundheitszustand des Portfolios zeigt. (Quelle: A-36; S-WR-053)

Ziel: Eine Portfolio-weite Health-Scorecard aufbauen, die die Einzel-Metriken aller Wissensordner zu einem aggregierten Gesundheits-Gesamtbild verdichtet und der Direktion in 5 Minuten zeigt welche Ordner Aufmerksamkeit brauchen.

Ergebnis: Eine aggregierte Portfolio-Scorecard, die je Wissensordner die Kern-KPIs zusammenfasst und einen Portfolio-Gesamtstatus mit klarer Priorisierung der handlungsbedürftigen Ordner ausgibt.

Fähigkeit: Library Folder (alle) + Chat (Aggregation) + Canvas (Portfolio-Scorecard)

Vorgehen:
1. Sammle je Wissensordner die bereits erhobenen Einzel-KPIs ein: Canary-/Harness-Score (S-WR-061), Freshness-/SLA-Status (S-WR-065), Drift-Status (S-WR-066), Miss-Rate (S-WR-075), Datei-Auslastung gegen das 1.000-Datei-Limit.
2. Normiere je Ordner die KPIs auf einen Ampel-Status (Grün/Gelb/Rot) und verdichte sie zu einem Ordner-Gesamtstatus nach einer klaren Regel (z.B. ein Rot dominiert den Ordner-Status).
3. Aggregiere alle Ordner-Status zu einer Portfolio-Zeile; priorisiere die handlungsbedürftigen Ordner (rote zuerst) mit konkreter nächster Maßnahme je Ordner.
4. Archiviere die Portfolio-Scorecard monatlich als `PORTFOLIO-HEALTH-[JJJJ-MM].md` im WO-Basis-Ordner; über die Monate entsteht ein Portfolio-Trend der strukturelle Probleme sichtbar macht.

Vorlage: Wissensordner-Portfolio-Scorecard:
1. Aggregation - je Ordner die Kern-KPIs aus den Einzel-Instrumenten (S-WR-036/053/061/066/075) zusammenfassen.
2. Portfolio-Gesamtstatus - mit Priorisierung der handlungsbeduerftigen Ordner.
3. Durchreich-Regel - kritische Einzelzustaende sichtbar nach oben.

Artefakt: Eine aggregierte Portfolio-Health-Scorecard als MD-Datei mit Ampel-Status je Ordner, Portfolio-Gesamtstatus und priorisierter Maßnahmenliste, monatlich archiviert für den Portfolio-Trend.

Fallstricke:
- Die Portfolio-Scorecard mit den Einzel-Instrumenten verwechseln und doppelt erheben → die Portfolio-Scorecard aggregiert nur bereits erhobene KPIs, sie erhebt nichts neu; wenn die Einzel-Instrumente (S-WR-036/053/061/066/075) nicht laufen, hat die Aggregation keine Datenbasis.
- Aggregations-Regel zu mild wählen, sodass ein roter Ordner im Portfolio-Schnitt verschwindet → ein einzelner kritischer Ordner darf nicht durch gute Durchschnittswerte überdeckt werden; die Aggregations-Regel muss kritische Einzelzustände sichtbar nach oben durchreichen.

Empfehlung: Lass die Einzel-Instrumente (S-WR-036/053/061/066/075) tatsaechlich laufen - die Portfolio-Scorecard aggregiert nur bereits erhobene KPIs und hat ohne sie keine Datenbasis. Waehle die Aggregations-Regel streng genug, dass ein einzelner roter Ordner nicht durch gute Durchschnittswerte ueberdeckt wird; kritische Einzelzustaende muessen sichtbar nach oben durchgereicht werden.

Anschluss: S-WR-001
