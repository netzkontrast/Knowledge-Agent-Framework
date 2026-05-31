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

**Wann nutzen (Trigger):** Der Brand-Guardian-Agent zitiert veraltete Tone-of-Voice-Regeln, weil die aktuellen Brand Guidelines in drei verschiedenen Drive-Ordnern und zwei PDFs verteilt liegen — kein Agent greift auf dieselbe Version zu.
**Strategisches Ziel:** Einen Library Folder als einzige, verbindliche Brand-Wissensquelle für alle Agenten aufsetzen, sodass Aktualisierungen einmal gemacht werden und überall wirken.
**Hands-on Ergebnis:** Ein strukturierter Library Folder mit separierten MD-Dateien pro Brand-Regelkategorie, der als zentraler Wissensordner aller Marketing-Agenten dient.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Wissensordner-Upload + Agent-Anbindung
**Vorgehen (4 Schritte):**
1. Sammle alle Brand-Dokumente (Tone-of-Voice, Tabu-Wörter, Do's and Don'ts, Beispieltexte) und konvertiere jedes Thema in eine separate MD-Datei — eine Datei pro Regelkategorie, nicht ein Sammel-PDF; Dateinamen beschreibend (z.B. `brand-tonalitaet.md`, `brand-vokabular.md`).
2. Erstelle einen Library Folder "Brand Guidelines" im Workspace und lade alle MD-Dateien hoch; prüfe dass keine Datei >10 MB und keine einzelne Datei >8M Zeichen hat.
3. Binde diesen Library Folder an alle relevanten Agenten (Brand-Guardian, Briefing-Agent, Social-Planer) — jeder Agent zeigt auf denselben Ordner statt auf separate Kopien.
4. Dokumentiere im Ordner eine "README-folder.md" die erklärt welche Datei welche Regelkategorie enthält und wann sie zuletzt aktualisiert wurde.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Brand-Berater [Persona]. Prüfe ob der folgende Entwurf unserer Kampagnen-Headline unserer Brand Voice entspricht [Task]. Kontext: Brand Voice ist sachlich-souverän, kein Konjunktiv, keine Superlative, kein Slang [Context]. Format: Bullet-Liste mit je 'OK' oder 'Problem: [Regelverstoß]' pro Satz [Format]."
**Erwartetes Artefakt:** Ein Library Folder mit 4-6 separaten MD-Dateien pro Regelkategorie, verbunden mit allen Brand-Agenten des Workspaces.
**Fallstricke (≥2 spezifisch):**
- Gesamtes Brand-Manual als einzelnes 80-seitiges PDF hochladen → Per-Document-Cap (1 Chunk/Query) liefert pro Anfrage nur einen zufälligen 2000-Zeichen-Block; aufteilen in atomare Dateien ist Pflicht.
- Veraltete PDFs im selben Ordner belassen → Agent zieht widersprüchliche alte und neue Guidelines gleichzeitig; gelöschte Dateien aus dem Ordner müssen physisch entfernt werden, nicht nur überschrieben.
**Anschluss-Szenario:** S-WR-002

### S-WR-002 Interne Verlinkung via Wissensordner-Semantiksuche beschleunigen

**Wann nutzen (Trigger):** Eine neue Pillar-Page zum Thema "Workflow-Automatisierung" ist live — das Team soll 15+ interne Links aus dem bestehenden Blog-Archiv setzen, durchsucht aber manuell 200 Artikel.
**Strategisches Ziel:** Den Wissensordner mit dem Blog-Archiv nutzen, um per semantischer Suche exakte Ankertexte und Quellartikel für interne Verlinkung zu finden — Zeitaufwand von 4 Stunden auf 30 Minuten reduzieren.
**Hands-on Ergebnis:** Eine Tabelle mit 10-15 internen Link-Möglichkeiten (Quellartikel, Ankertext, Satzkontext), direkt verwendbar für die CMS-Implementierung.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Blog-Archiv) + Chat (semantische Suche)
**Vorgehen (3 Schritte):**
1. Lade die Top-Traffic-Blogposts als Text-Dateien in einen Wissensordner "Blog-Archiv" (MD-Format für beste Chunk-Qualität, eine Datei pro Artikel mit H1 als erstem Element).
2. Stelle im Chat eine semantische Suchanfrage: "Suche in den Dokumenten nach Passagen, die das Thema Workflow-Automatisierung, Prozessoptimierung oder Event-basierte Triggerung erwähnen — nenne Dateiname, den exakten Satz und einen möglichen Ankertext unter 5 Wörtern."
3. Exportiere die Tabelle aus dem Canvas in eine Google-Sheet-kompatible CSV für das CMS-Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Spezialist [Persona]. Finde interne Verlinkungsmöglichkeiten für unsere neue Pillar-Page zu 'Workflow-Automatisierung' [Task]. Durchsuche die Dokumente im Wissensordner nach Absätzen, die Workflow, Automatisierung, Trigger oder ähnliche Synonyme enthalten [Context]. Liefere eine Tabelle mit Spalten: Quelldokument, Ankertext-Vorschlag, exakter Satz im Original [Format]."
**Erwartetes Artefakt:** Eine Tabelle mit 10-15 internen Link-Möglichkeiten inkl. Quelldokument, vorgeschlagenem Ankertext und Originalzitat.
**Fallstricke (≥2 spezifisch):**
- Artikel als Sammel-PDF hochladen statt als einzelne Dateien → Per-Document-Cap liefert pro Artikel nur einen Chunk; jeder Artikel braucht eine eigene Datei damit alle Abschnitte erreichbar sind.
- Ankertext zu generisch formulieren (z.B. "hier klicken") → Im Prompt explizit fordern: "Ankertext muss das Keyword und max. 5 Wörter lang sein, keine Floskeln".
**Anschluss-Szenario:** S-WR-003

### S-WR-003 Community-FAQ im Wissensordner für schnelle Support-Antworten nutzen

**Wann nutzen (Trigger):** Ein viraler LinkedIn-Post generiert 60+ Kommentare mit spezifischen Produktfragen — der Community-Manager antwortet 3 Stunden lang manuell und macht dabei inhaltliche Fehler.
**Strategisches Ziel:** Einen Wissensordner mit FAQs, Produktdaten und Preisen aufsetzen, damit der Community-Manager via Chat sofort akkurate Antwortvorlagen für Kommentare generieren kann.
**Hands-on Ergebnis:** 5-10 sofort postbare Antwortvorlagen auf die häufigsten Kommentartypen, tonalitätskonsistent und faktisch korrekt aus dem Wissensordner abgeleitet.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (FAQ + Produktdaten) + Chat
**Vorgehen (3 Schritte):**
1. Erstelle einen Wissensordner "Community FAQ" mit separaten MD-Dateien pro Thema (Preise, Features, Support-Prozesse, Häufige Einwände) — jede Datei beginnt mit einem beschreibenden H1 als Retrieval-Anker.
2. Öffne Chat mit dem Wissensordner; paste die ersten 5-10 Kommentare als Block; frage: "Generiere für jeden Kommentar eine 2-Satz-Antwort basierend ausschließlich auf dem FAQ-Wissensordner, Tonalität: freundlich aber sachlich, kein Marketing-Sprech."
3. Prüfe manuell ob jede Antwort eine Quellenangabe aus dem Wissensordner hat — wenn nicht, ist die Antwort möglicherweise halluziniert; nur Antworten mit Quellennachweis verwenden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Community-Manager [Persona]. Erstelle Antworten auf die folgenden LinkedIn-Kommentare [Task]. Stütze jede Antwort ausschließlich auf Informationen aus dem FAQ-Wissensordner; wenn du eine Frage nicht beantworten kannst, schreibe 'Ich leite das weiter' [Context]. Max. 2 Sätze pro Antwort, freundlich und auf-Du-Basis [Format]."
**Erwartetes Artefakt:** 5-10 qualitätsgesicherte Antwortvorlagen, je mit Quellennachweis aus dem Wissensordner.
**Fallstricke (≥2 spezifisch):**
- FAQ-Dokument mit veralteten Preisen nicht aktualisieren → Agent antwortet mit falschen Zahlen; Library Folder erfordert manuelles Update, Synced Folder (Google Drive) wäre besser für häufig aktualisierte FAQs.
- Agent gibt Antworten zu Themen außerhalb des Wissensordners → im Prompt explizit einfügen: "Erfinde keine Informationen; wenn kein Treffer im Wissensordner, antworte mit 'Ich leite das weiter'".
**Anschluss-Szenario:** S-WR-004

### S-WR-004 Content-Gap-Analyse: Eigener Wissensordner vs. Konkurrenz-Inhalte

**Wann nutzen (Trigger):** Drei Konkurrenten ranken auf Page 1 für das Keyword "Marketing-Automatisierung Mittelstand" — das Team hat eigene Inhalte zu diesem Thema, aber offensichtlich unvollständige Abdeckung der relevanten Subtopics.
**Strategisches Ziel:** Den eigenen Wissensordner mit Konkurrenz-Inhalten vergleichen und eine priorisierte Gap-Liste erstellen, die das Redaktionsteam direkt in den Content-Plan überführen kann.
**Hands-on Ergebnis:** Eine Gap-Analyse-Tabelle mit Subtopics, die Konkurrenten abdecken und die eigene Content-Bibliothek nicht — als direkte Input-Liste für das nächste Redaktionsmeeting.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (eigene Inhalte) + Agent + Web Search
**Vorgehen (4 Schritte):**
1. Binde den Wissensordner mit den eigenen Blog-Artikeln an den Agent; aktiviere Web Search.
2. Lasse den Agent die Top-3-Konkurrenz-Artikel per Web Search abrufen und deren H2-Strukturen extrahieren.
3. Lasse den Agent die Konkurrenz-H2s gegen den eigenen Wissensordner prüfen: "Welche Subtopics decken die Konkurrenten ab, die in meinem Wissensordner nicht vorkommen?"
4. Ausgabe als priorisierte Gap-Tabelle im Canvas: Spalten "Subtopic", "Konkurrent", "Priorität (Hoch/Mittel/Niedrig)", "Empfohlenes Format".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Stratege [Persona]. Führe eine Content-Gap-Analyse für das Keyword 'Marketing-Automatisierung Mittelstand' durch [Task]. Nutze Web Search für die Top-3-Ergebnisse und vergleiche deren H2-Strukturen mit unseren Dokumenten im Wissensordner [Context]. Liefere eine Gap-Tabelle mit Spalten: Fehlendes Subtopic, Welcher Konkurrent deckt es ab, Priorität 1-3 [Format]."
**Erwartetes Artefakt:** Eine Gap-Analyse-Tabelle mit 5-15 priorisierten Subtopics als direkter Content-Plan-Input.
**Fallstricke (≥2 spezifisch):**
- Web Search ruft Sidebar-Inhalte oder Werbebanner der Konkurrenz-Seiten ab statt der Artikelstruktur → im Prompt präzisieren "Extrahiere nur die H2-Überschriften des Hauptartikels, ignoriere Navigation und Ads".
- Eigene Inhalte im Wissensordner sind nicht alle themenrelevant hochgeladen → vor der Analyse sicherstellen, dass alle Blog-Artikel zu "Automatisierung" und verwandten Themen im Ordner liegen.
**Anschluss-Szenario:** S-WR-005

### S-WR-005 DSGVO-Check: Was passiert mit Embeddings aus Kunden-Texten?

**Wann nutzen (Trigger):** Der Datenschutzbeauftragte fragt, ob die Embeddings aus dem Kunden-Feedback-Wissensordner personenbezogene Daten im Sinne der DSGVO sind und ob ein AV-Vertrag vorliegen muss.
**Strategisches Ziel:** Klären ob Langdock-Wissensordner-Embeddings DSGVO-relevant sind, welche Schutzmaßnahmen greifen (EU-Hosting, Verschlüsselung, AV-Vertrag), und eine schriftliche Antwort für den DSB vorbereiten.
**Hands-on Ergebnis:** Ein DSB-Memo (1 Seite) das die DSGVO-Einstufung der Embeddings begründet und auf die konkreten Langdock-Schutzmaßnahmen verweist.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + Canvas (Memo-Erstellung) — Advisory-Modus (Beratung, nicht Ausführung)
**Vorgehen (3 Schritte):**
1. Öffne Chat; stelle die Frage: "Sind Langdock-Wissensordner-Embeddings personenbezogene Daten wenn die Quelltexte Kundennamen und -aussagen enthalten?"
2. Lass den Agent die relevanten Punkte strukturieren: (a) Embedding-Natur (Vektor ≠ Klartext, aber Rückschluss möglich wenn PII in Quelltext), (b) EU-Hosting (Microsoft Azure, EU-Region), (c) Verschlüsselung at-rest, (d) Kein Training der Foundation Models, (e) AV-Vertrag-Prüfung empfohlen.
3. Überführe die Strukturierung in ein Canvas-Memo für den DSB mit Abschnitt "Risikoeinstufung", "Bestehende Schutzmaßnahmen", "Empfohlene Maßnahmen".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Datenschutz-Berater für Langdock-Deployments [Persona]. Beantworte: Sind Embeddings aus einem Langdock-Wissensordner, der Kunden-Feedback mit Namen enthält, personenbezogene Daten gemäß DSGVO Art. 4 Nr. 1? [Task]. Kontext: Wir nutzen EU-Hosting Frankfurt, kein Modell-Training auf unseren Daten laut AVV [Context]. Format: DSB-Memo mit Abschnitten Risikoeinstufung, Schutzmaßnahmen, Handlungsempfehlungen [Format]."
**Erwartetes Artefakt:** Ein einseitiges DSB-Memo mit DSGVO-Einstufung der Embeddings und konkreten Maßnahmenempfehlungen.
**Fallstricke (≥2 spezifisch):**
- Agent gibt eine abschließende Rechtsmeinung statt einer beratenden Einschätzung → im Prompt klarstellen "Dies ist eine Ersteinschätzung, kein Rechtsrat; finale Prüfung durch externen Datenschutzberater"; Little Data berät, ersetzt nicht den DSB.
- AV-Vertrag mit Langdock nicht geprüft → die DSGVO-Einstufung hängt vom AV-Vertrag ab; im Memo als offene Handlungsempfehlung festhalten: "AVV auf Embedding-Klausel prüfen lassen".
**Anschluss-Szenario:** S-WR-006

### S-WR-006 Dateinamen-Konvention einführen: Source-Tracking nutzbar machen

**Wann nutzen (Trigger):** Der Agent zitiert Dateien wie "dokument_final_v3.pdf" oder "kopie_2024.docx" — der Source-Tracking-Link im Chat ist für das Team nutzlos, weil niemand erkennt, welche Information aus welchem Dokument stammt. (Quelle: 12 Q64)
**Strategisches Ziel:** Eine verbindliche Dateinamen-Konvention für den gesamten Wissensordner einführen, sodass jede Citation sofort den Inhalt und die Aktualität der Quelle kommuniziert.
**Hands-on Ergebnis:** Eine Namenskonvention-Richtlinie als MD-Datei sowie ein umbenannter Wissensordner, dessen Citations ohne Rückfragen verständlich sind.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Source-Tracking (Citations)
**Vorgehen (4 Schritte):**
1. Exportiere die aktuelle Dateiliste aus dem Library Folder (Screenshot oder API); identifiziere alle Dateien mit nichtssagenden Namen.
2. Definiere das Namensschema: `[Jahr]-[Quartal]-[Region]-[Thema]-[Version].md` — zum Beispiel `2025-Q3-DACH-Brand-Voice-Tonalitaet-v2.md`; halte das Schema in einer "README-naming-convention.md" fest.
3. Benenne alle Dateien lokal nach Schema um; lade aktualisierte Versionen in den Ordner und lösche die alten Dateien physisch.
4. Teste: Stelle eine Frage, die eine dieser Dateien triggert — prüfe, ob der Citation-Link jetzt aussagekräftig ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Beraterin [Persona]. Erstelle eine Dateinamen-Konvention für unseren Marketing-Wissensordner [Task]. Kontext: Wir nutzen Library Folders in Langdock; Citation-Links zeigen den Dateinamen direkt im Chat; Dokumente kommen aus DACH-Marketing, Brand, SEO und PR [Context]. Format: Regel-Tabelle mit Muster, Pflichtfeldern, Beispiel-Gut und Beispiel-Schlecht [Format]."
**Erwartetes Artefakt:** Eine einseitige Namenskonvention-MD-Datei und ein bereinigter Wissensordner mit sprechenden Dateinamen.
**Fallstricke (≥2 spezifisch):**
- Sonderzeichen, Umlaute oder Leerzeichen im Dateinamen → manche Browser-Links brechen ab; Konvention muss explizit ASCII-only und Bindestrich als Trennzeichen vorschreiben.
- Alte und neue Version gleichzeitig im Ordner lassen → Agent zitiert beide und liefert widersprüchliche Inhalte; immer zuerst löschen, dann neu hochladen.
**Anschluss-Szenario:** S-WR-007

### S-WR-007 Ein-Thema-pro-Datei: Produktkatalog atomisieren für zuverlässiges Retrieval

**Wann nutzen (Trigger):** Das Team fragt den Agenten nach Produktpreisen — er antwortet mit Spezifikationen statt Preisen, weil Preisliste und Technisches Datenblatt im selben 40-seitigen Produkthandbuch-PDF stecken. Das Per-Document-Cap liefert nur einen Chunk. (Quelle: sources/10 S-017)
**Strategisches Ziel:** Das Per-Document-Cap durch atomare Dateistruktur (ein Thema = eine Datei) systematisch umschiffen, damit jede relevante Information zuverlässig abrufbar ist.
**Hands-on Ergebnis:** Ein atomisierter Wissensordner, in dem pro Produkt mindestens drei separate Dateien existieren (Preis, Specs, Anwendungsfälle) — mit messbarer Verbesserung der Retrieval-Trefferquote.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Per-Document-Cap-Logik
**Vorgehen (5 Schritte):**
1. Identifiziere alle Multi-Themen-Dokumente im Ordner (Faustregel: PDFs mit >3 H2-Sektionen zu verschiedenen Themen).
2. Zerlege jedes Dokument manuell oder via Chat in thematisch atomare Einheiten: `produkt-x-preis-dach-2025.md`, `produkt-x-specs-technisch-2025.md`, `produkt-x-anwendungsfaelle-2025.md`.
3. Stelle sicher, dass jede neue Datei die Produktbezeichnung im ersten Satz wiederholt (Retrieval-Anker gegen Per-Document-Cap).
4. Lösche die ursprüngliche Multi-Themen-Datei aus dem Ordner.
5. Führe einen Retrieval-Test durch: frage nach Preis, dann nach Specs — beide Antworten müssen unterschiedliche, korrekte Quellen zitieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensarchitekt [Persona]. Zerlege das folgende Produkthandbuch in atomare MD-Dateien nach dem Prinzip Ein-Thema-pro-Datei [Task]. Das Handbuch enthält: Preisstruktur, Technische Spezifikationen, Anwendungsbeispiele, Support-Kontakte [Context]. Erstelle für jedes Thema eine separate Datei mit H1-Überschrift, Produktname im ersten Satz, und allen relevanten Details [Format]."
**Erwartetes Artefakt:** 3-5 separate MD-Dateien pro Produkt, jede thematisch geschlossen und mit Produktname im Eröffnungssatz.
**Fallstricke (≥2 spezifisch):**
- Datei enthält noch Quervereise wie "Siehe Abschnitt 3 für Preise" → nach Atomisierung sind diese Verweise gebrochen; alle internen Querverweise müssen beim Zerlegen entfernt werden.
- Zu kleinteilige Atomisierung (z.B. jede FAQ-Zeile als eigene Datei) → nähert sich dem 1.000-Datei-Limit des Library Folders; Faustregel: mind. 300 Wörter pro Datei.
**Anschluss-Szenario:** S-WR-008

### S-WR-008 Synced Folder für Live-Preislisten einrichten

**Wann nutzen (Trigger):** Die Vertriebsabteilung aktualisiert Preislisten in SharePoint wöchentlich — der Wissensordner zeigt dem Agenten veraltete Preise, weil manuelle Re-Uploads immer vergessen werden. (Quelle: 12 Q59)
**Strategisches Ziel:** Einen automatisch synchronisierten Ordner (Synced Folder) mit SharePoint verbinden, damit Preislisten ohne manuellen Eingriff täglich aktuell bleiben.
**Hands-on Ergebnis:** Ein konfigurierter Synced Folder mit max. 200 Dateien, der sich alle 24 Stunden automatisch aktualisiert und Preisfragen des Agenten mit tagesaktuellen Daten beantwortet.
**Eingesetzte Langdock-Fähigkeit(en):** Synced Folder (SharePoint-Verbindung) + Agent-Anbindung
**Vorgehen (4 Schritte):**
1. Prüfe, ob der SharePoint-Ordner für Preislisten max. 200 Dateien enthält und ausschließlich unterstützte Formate (PDF, DOCX, MD, TXT, PPTX) enthält — CSV/XLSX-Preislisten müssen in PDF oder DOCX konvertiert werden.
2. Erstelle in Langdock einen neuen Synced Folder, verbinde ihn mit dem SharePoint-Ordner via OAuth; stelle die Sync-Frequenz auf 24h.
3. Binde den Synced Folder an den Vertriebs-Agenten als Wissensordner; entferne gleichzeitig den alten manuell gepflegten Library Folder mit den veralteten Preisen.
4. Richte eine wöchentliche manuelle Sync-Kontrolle ein: Prüfe im Interface, ob der letzte Sync erfolgreich war; dokumentiere die Prüfung in einem Governance-Log.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Vertriebs-Assistent [Persona]. Beantworte die folgende Kundenfrage zum aktuellen Preis von Produkt X [Task]. Stütze dich ausschließlich auf die Preislisten im synchronisierten Wissensordner; wenn kein aktueller Preis gefunden wird, antworte 'Bitte direkt beim Vertrieb anfragen' [Context]. Format: Eine Zeile mit Preis und Quelle [Format]."
**Erwartetes Artefakt:** Ein aktiver Synced Folder der sich täglich von SharePoint aktualisiert, verbunden mit dem Vertriebs-Agenten.
**Fallstricke (≥2 spezifisch):**
- SharePoint-Ordner enthält >200 Dateien → Langdock synchronisiert nur die ersten 200 alphabetisch; ältere Dateien werden ignoriert; Ordner-Struktur im Quellsystem muss thematisch sauber begrenzt sein.
- Ungültige Formate (XLSX, CSV) landen im SharePoint-Ordner → werden beim Sync kommentarlos übersprungen; alle Daten-Zulieferer müssen angewiesen werden, ausschließlich PDF oder DOCX einzustellen.
**Anschluss-Szenario:** S-WR-009

### S-WR-009 Wissensordner-Audit: Veraltete Dokumente identifizieren und bereinigen

**Wann nutzen (Trigger):** Der Agent antwortet mit widersprüchlichen Informationen — Preise aus 2023 versus 2025, alte und neue Brand-Farben gleichzeitig. Das Team vermutet, dass der Library Folder seit über einem Jahr nicht bereinigt wurde. (Quelle: 12 Q65)
**Strategisches Ziel:** Einen strukturierten Quartals-Audit-Prozess für den Wissensordner etablieren, der veraltete, duplizierte und widersprüchliche Dateien identifiziert und entfernt.
**Hands-on Ergebnis:** Ein bereinigter Wissensordner ohne veraltete Dokumente sowie eine Audit-Checkliste die quartalsweise wiederverwendet werden kann.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (Verwaltungsansicht) + Chat (Audit-Assistent)
**Vorgehen (4 Schritte):**
1. Exportiere die vollständige Dateiliste des Library Folders (Name, Upload-Datum); paste sie in einen Chat und frage: "Identifiziere Dateien die (a) älter als 12 Monate sind, (b) doppelt vorkommen, (c) Dateinamen wie 'final', 'v2', 'alt' oder 'kopie' enthalten."
2. Prüfe jede markierte Datei manuell: gibt es eine neuere Version? Wenn ja, lade die neue Version hoch und lösche die alte physisch — nie nur überschreiben.
3. Für jede beibehaltene Datei: füge das Aktualisierungsdatum im ersten Absatz des Dokuments ein (z.B. "Stand: 2025-Q2") und lade die Datei mit beschreibendem Namen neu hoch.
4. Erstelle eine "AUDIT-LOG-[Datum].md" im Ordner mit den Ergebnissen: Anzahl gelöschter Dateien, Anzahl aktualisierter Dateien, nächstes Audit-Datum.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensordner-Auditorin [Persona]. Analysiere die folgende Dateiliste unseres Library Folders [Task]. Kontext: Library Folders in Langdock löschen alte Vektor-Einträge nicht automatisch wenn Dateien entfernt werden — jede veraltete Datei vergiftet das Retrieval [Context]. Erstelle eine Audit-Tabelle mit Spalten: Dateiname, Upload-Datum, Auffälligkeit, Empfehlung (Behalten / Aktualisieren / Löschen) [Format]."
**Erwartetes Artefakt:** Eine Audit-Tabelle mit Handlungsempfehlung pro Datei und ein bereinigter Library Folder.
**Fallstricke (≥2 spezifisch):**
- Datei aus Ordner "löschen" ohne physische Entfernung → der Vektor-Eintrag bleibt bestehen bis zur nächsten Neu-Indizierung; in der Langdock-UI explizit "Delete" und nicht nur "Remove from folder" wählen.
- Audit nur nach Datum durchführen und inhaltliche Redundanzen übersehen → zwei Dateien gleichen Inhalts mit unterschiedlichen Namen bleiben beide aktiv; immer nach inhaltlichen Duplikaten suchen.
**Anschluss-Szenario:** S-WR-010

### S-WR-010 RAG-Qualitätstest: Retrieval-Misses systematisch diagnostizieren

**Wann nutzen (Trigger):** Das Team meldet, dass der Agent bei Fragen zu bestimmten Themen "Keine Information gefunden" antwortet, obwohl die entsprechenden Dokumente im Wissensordner liegen. Die Ursache ist unklar — falsches Format, schlechter Dateiname, oder schlechte Dokumentstruktur. (Quelle: 12 Q57)
**Strategisches Ziel:** Einen reproduzierbaren Testprozess für das RAG-Retrieval aufbauen, der Retrieval-Misses auf ihre Ursache zurückführt und konkrete Verbesserungsmaßnahmen identifiziert.
**Hands-on Ergebnis:** Ein Canary-Prompt-Set mit 5-10 Testfragen und einem Diagnose-Protokoll, das Retrieval-Misses kategorisiert und priorisiert behebt.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner + Chat (Retrieval-Test) + Citations-Analyse
**Vorgehen (4 Schritte):**
1. Definiere 5-10 Canary-Prompts: konkrete Fragen zu jedem Kernthema im Wissensordner (z.B. "Was ist der aktuelle DACH-Preis für Produkt X?", "Welche Farben sind in unserer Brand-CI verboten?").
2. Stelle alle Canary-Prompts im Chat; dokumentiere für jede Antwort: (a) korrekte Citation vorhanden? (b) Inhalt faktisch korrekt? (c) "Keine Information"-Antwort obwohl Dokument vorhanden?
3. Kategorisiere Misses: (A) Datei nicht im Ordner → Upload fehlt; (B) Datei vorhanden aber kein Chunk abgerufen → Per-Document-Cap oder schlechter Dateiname; (C) Falscher Chunk abgerufen → Multi-Themen-Datei atomisieren.
4. Behebe pro Kategorie: (A) Datei hochladen; (B) Datei umbenennen + Anker-Begriff in ersten Satz; (C) Datei atomisieren wie in S-WR-007.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist RAG-Diagnose-Assistentin [Persona]. Beantworte die folgende Frage und zeige mir explizit, welche Dokumente aus dem Wissensordner du für diese Antwort verwendet hast [Task]. Wenn du keine relevante Information findest, schreibe explizit 'Retrieval-Miss: kein Treffer für [Schlüsselbegriff]' statt die Frage zu umgehen [Context]. Antwort mit Citation, Dokumentname und Fundstelle [Format]."
**Erwartetes Artefakt:** Ein Diagnose-Protokoll mit kategorisierten Retrieval-Misses und priorisierten Maßnahmen, wiederverwendbar als monatliches Qualitätscheck-Instrument.
**Fallstricke (≥2 spezifisch):**
- Canary-Prompts zu vage formulieren (z.B. "Was wissen wir über Produkt X?") → breite Suchanfragen liefern generische Ergebnisse; Canary-Prompts müssen denselben spezifischen Wortlaut wie reale Nutzeranfragen verwenden.
- Test direkt nach Upload durchführen → Langdock indiziert asynchron; nach einem Massen-Upload mind. 10 Minuten warten bevor Retrieval-Tests ausgeführt werden.
**Anschluss-Szenario:** S-WR-011

### S-WR-011 Embedding-Qualität verbessern: Dokumente für das Chunking optimieren

**Wann nutzen (Trigger):** Der Retrieval-Test (S-WR-010) zeigt, dass Dokumente im Wissensordner zwar indexiert sind, aber der zurückgegebene 2.000-Zeichen-Chunk immer wieder einen unbrauchbaren Absatz abruft, der Pronomen wie "dieser", "das", "sie" ohne klaren Antezedent enthält. (Quelle: sources/10 S-038)
**Strategisches Ziel:** Bestehende Marketing-Dokumente nach RAG-Optimierungsregeln überarbeiten, sodass jeder 2.000-Zeichen-Chunk auch ohne Kontext vollständig verständlich ist und das richtige Keyword enthält.
**Hands-on Ergebnis:** 2-3 überarbeitete Kerndokumente (Brand Voice, Produktspecs, FAQ) die messbar höhere Retrieval-Präzision erzielen als die Originalversionen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Dokument-Überarbeitung) + Library Folder
**Vorgehen (4 Schritte):**
1. Wähle ein schlecht performendes Dokument (identifiziert via Canary-Test); öffne es im Chat und frage: "Analysiere dieses Dokument auf Pronomen-Anaphern und Kontextverlust-Risiken für ein 2.000-Zeichen-Chunking-System."
2. Wende die drei RAG-Optimierungsregeln an: (a) Jeder Absatz wiederholt den Schlüsselbegriff (kein "es", "das", "diese" ohne Nomen); (b) Jeder Absatz ist ohne Vorwissen verständlich; (c) H2-Überschriften sind keyword-reich und beschreibend.
3. Überarbeite das Dokument im Canvas; prüfe: Ist jeder Absatz eigenständig lesbar? Enthält jeder Absatz den Hauptbegriff mindestens einmal?
4. Lade die überarbeitete Version hoch, lösche die alte; führe Canary-Test erneut durch.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist RAG-Redakteurin [Persona]. Überarbeite den folgenden Text für optimales Retrieval in einem Vektor-Datenbanksystem mit 2.000-Zeichen-Chunks [Task]. Regeln: Kein Absatz darf unaufgelöste Pronomen enthalten; der Hauptbegriff 'Brand Voice' muss in jedem Absatz mindestens einmal ausgeschrieben vorkommen; H2-Überschriften müssen keyword-reich sein [Context]. Liefere den überarbeiteten Text mit markierten Änderungen [Format]."
**Erwartetes Artefakt:** Ein RAG-optimiertes Dokument, das bei Canary-Tests messbar häufiger den richtigen Chunk zurückgibt als die Originalversion.
**Fallstricke (≥2 spezifisch):**
- Keyword-Wiederholung so aggressiv umsetzen, dass der Text maschinell klingt → Optimierung darf erst nach abgeschlossener menschlicher Qualitätsprüfung live gehen; Keyword-Dichte max. 2-3× pro Absatz.
- Überschriften als fließende Fragen formulieren ("Was ist gute Brand Voice?") statt als Substantiv-Schlüsselwörter ("Brand Voice: Ton, Stil, Regeln") → Fragen verbessern Lesbarkeit, Substantive verbessern Vektor-Retrieval; für Wissensordner immer Substantiv-Überschriften wählen.
**Anschluss-Szenario:** S-WR-012

### S-WR-012 Persona-Definitionen für den Brand-Voice-Agenten strukturieren

**Wann nutzen (Trigger):** Der Brand-Voice-Agent wendet die Tonalität inkonsistent an — manchmal sachlich-souverän, manchmal überschwänglich. Bei der Untersuchung zeigt sich: Persona-Beschreibungen, Brand-Voice-Regeln und Beispieltexte stecken alle in einer einzigen langen Datei. (Quelle: sources/10 S-039)
**Strategisches Ziel:** Persona-Definitionen als eigenständige, atomare Wissensordner-Dateien strukturieren, die vom RAG-System zuverlässig gefunden werden und dem Agenten einen stabilen Tonalitäts-Anker liefern.
**Hands-on Ergebnis:** Separate MD-Dateien für jede Zielgruppen-Persona mit eindeutigem H1-Anker und expliziten Tonalitäts-Regeln pro Kommunikationskanal.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Agent-Wissensordner-Anbindung
**Vorgehen (3 Schritte):**
1. Zerlege die Sammel-Datei: eine MD-Datei pro Persona-Typ (z.B. `persona-entscheider-cmo-2025.md`, `persona-anwender-marketing-manager-2025.md`); H1 muss "Persona: [Name]" lauten damit der System-Prompt des Agenten verbatim darauf referenzieren kann.
2. Füge in jede Persona-Datei einen Abschnitt "Tonalität nach Kanal" ein: LinkedIn (sachlich, Bullet-Punkte), E-Mail-Newsletter (persönlich, kurze Sätze), Social Ads (provokant, Frageformulierung) — jeder Kanal als eigener H2.
3. Aktualisiere die System-Instructions des Agenten: "Rufe für Zielgruppenanalysen die Datei 'Persona: [Name]' aus dem Wissensordner ab" — der verbatim Anker-String stellt sicher dass das richtige Chunk abgerufen wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Brand-Voice-Spezialistin [Persona]. Verfasse eine Persona-Beschreibung für 'Marketing-Manager im Mittelstand' als eigenständige Wissensordner-Datei [Task]. Kontext: Die Datei wird in einem RAG-System mit 2.000-Zeichen-Chunks indiziert; jeder Absatz muss den Begriff 'Marketing-Manager' enthalten; H1 muss 'Persona: Marketing-Manager Mittelstand' lauten [Context]. Format: MD-Datei mit H1, Kurzprofil (3 Sätze), Motivationen, Schmerzpunkte, Tonalität nach Kanal [Format]."
**Erwartetes Artefakt:** 2-4 separate Persona-MD-Dateien mit eindeutigem H1-Anker, Tonalitäts-Regeln pro Kanal und System-Prompt-kompatiblem Struktur.
**Fallstricke (≥2 spezifisch):**
- Anker-Begriff in System-Prompt und H1 der Datei weichen voneinander ab (z.B. "CMO-Persona" vs. "Persona: CMO") → der Agent findet die Datei nicht zuverlässig; verbatim Übereinstimmung ist zwingend.
- Tonalitäts-Regeln als lange Fließtext-Absätze statt als strukturierte Listen → bei 2.000-Zeichen-Chunks werden Listen besser als abgeschlossene Einheiten abgerufen; Ge- und Verbote immer als Strichlisten formatieren.
**Anschluss-Szenario:** S-WR-013

### S-WR-013 Brand Guidelines aus Beispieltexten reverse-engineeren

**Wann nutzen (Trigger):** Das Unternehmen hat keine formalen Brand-Voice-Guidelines — es gibt nur eine Sammlung von 10 hochqualitativen historischen Blog-Artikeln und Pressemitteilungen. Freelancer erhalten keine einheitliche Briefing-Grundlage. (Quelle: sources/10 S-038)
**Strategisches Ziel:** Aus vorhandenen Best-Practice-Texten automatisiert ein Brand-Voice-Dokument extrahieren, das als Wissensordner-Datei dient und sofort mit dem Brand-Guardian-Agenten verbunden werden kann.
**Hands-on Ergebnis:** Ein vollständiges Brand-Voice-Dokument im MD-Format mit Tonalitäts-Analyse, Do's-and-Don'ts-Tabelle und drei Vorher/Nachher-Beispielen.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Beispieltexte-Ordner) + Chat + Canvas
**Vorgehen (4 Schritte):**
1. Lade die 10 Beispieltexte als separate MD-Dateien in einen temporären Wissensordner "Brand Samples" (eine Datei pro Text, H1 als Dokumentname).
2. Frage im Chat mit aktiviertem Ordner: "Analysiere alle Dokumente im Ordner und extrahiere: (a) Satzlänge-Muster, (b) Vokabular-Präferenzen, (c) wiederkehrende rhetorische Devices, (d) Themen die vermieden werden."
3. Überführe die Analyse in ein Canvas-Dokument mit Struktur: Tonalitäts-Beschreibung, Do's-and-Don'ts-Tabelle (max. 30 Zeilen), drei Vorher/Nachher-Beispiele.
4. Exportiere als `brand-voice-manual-[Jahr]-v1.md`; lade in den produktiven Library Folder hoch; entferne den temporären Samples-Ordner.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Brand-Stratege [Persona]. Analysiere alle Texte im verknüpften Wissensordner und extrahiere unsere implizite Brand Voice [Task]. Fokus auf: Satzlänge, Fachbegriffe, Formulierungen die wiederholt vorkommen, und Themen die konsequent vermieden werden [Context]. Erstelle ein Brand-Voice-Manual mit Tonalitäts-Beschreibung, Do's-and-Don'ts-Tabelle und drei Vorher/Nachher-Beispielen [Format]."
**Erwartetes Artefakt:** Ein vollständiges Brand-Voice-MD-Dokument bereit für den Library Folder und die Agent-Anbindung.
**Fallstricke (≥2 spezifisch):**
- Beispieltexte stammen aus verschiedenen Phasen (alter Stil 2020 + neuer Stil 2024) → die Analyse extrahiert einen Misch-Stil der keiner Periode entspricht; Texte müssen vorher nach Zeitraum kuratiert werden.
- Brand-Voice-Analyse-Dokument wird nie durch einen Human-Review validiert → KI-extrahierte Guidelines können subtile Fehlmuster reproduzieren; Freigabe durch Brand-Verantwortlichen vor Library-Folder-Upload ist Pflicht.
**Anschluss-Szenario:** S-WR-014

### S-WR-014 Wissensordner für spezifische Agenten-Typen konfigurieren

**Wann nutzen (Trigger):** Ein Workspace enthält fünf Agenten (SEO, Brand, Community, Vertrieb, PR) — alle greifen auf denselben gemeinsamen Wissensordner zu. Der SEO-Agent zitiert Brand-Voice-Regeln bei SEO-Fragen und der Community-Agent liefert technische Produktspezifikationen als Antwort auf Nutzer-Kommentare. (Quelle: 12 Q38)
**Strategisches Ziel:** Pro Agenten-Typ einen dedizierten, thematisch gefilterten Wissensordner einrichten, damit jeder Agent ausschließlich themenrelevante Dokumente als Kontext erhält.
**Hands-on Ergebnis:** Eine Wissensordner-Architektur mit 3-5 spezialisierten Ordnern, deren Anbindung an die jeweiligen Agenten dokumentiert ist.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (mehrere) + Agent-Konfiguration + Wissensordner-Anbindung
**Vorgehen (4 Schritte):**
1. Mappe alle vorhandenen Dokumente nach Agenten-Relevanz: Tabelle mit Spalten "Dokument", "SEO-Agent", "Brand-Agent", "Community-Agent" — Kreuzchen setzen wo relevant.
2. Erstelle separate Library Folders pro Agenten-Typ: "WO-SEO", "WO-Brand", "WO-Community"; lade nur die relevanten Dokumente in den jeweiligen Ordner (Duplikate sind erlaubt — besser doppelt als falsch zugeordnet).
3. Aktualisiere die Agenten-Konfiguration: löse die Verbindung zum gemeinsamen Ordner; verbinde jeden Agenten ausschließlich mit seinem dedizierten Ordner.
4. Dokumentiere die Ordner-Architektur in einer "WO-ARCHITEKTUR-[Datum].md" Datei im Workspace.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensarchitektin [Persona]. Erstelle eine Wissensordner-Architektur für fünf Marketing-Agenten: SEO, Brand, Community, Vertrieb, PR [Task]. Kontext: Jeder Agent soll nur auf seinen thematisch relevanten Dokumentenbestand zugreifen; ein Dokument kann in mehreren Ordnern liegen [Context]. Liefere eine Zuordnungs-Matrix mit Spalten: Dokument-Typ, SEO, Brand, Community, Vertrieb, PR [Format]."
**Erwartetes Artefakt:** Eine dokumentierte Wissensordner-Architektur-Matrix und 3-5 konfigurierte spezialisierte Library Folders mit korrekter Agenten-Anbindung.
**Fallstricke (≥2 spezifisch):**
- Gemeinsamer Basis-Ordner (z.B. Unternehmensgeschichte, Impressum) wird vergessen → wiederkehrende allgemeine Informationen in einen "WO-BASIS" Ordner auslagern den alle Agenten zusätzlich einbinden.
- Zu viele Ordner pro Agent konfigurieren → jeder Agent kann max. 5 Synced Folders einbinden; Library Folders zählen separat; bei über 3 Ordnern pro Agent Konfigurationsaufwand abwägen.
**Anschluss-Szenario:** S-WR-015

### S-WR-015 Structured vs. Unstructured Content: Format-Entscheidungsmatrix anwenden

**Wann nutzen (Trigger):** Das MarketingOps-Team fragt, welche Dokumente in den Wissensordner gehören und welche als direkter Chat-Anhang hochgeladen werden müssen — der Unterschied zwischen tabellarischen Performance-Daten (CSV) und redaktionellen Briefings (DOCX) ist dem Team nicht klar. (Quelle: 12 Q52, Q53)
**Strategisches Ziel:** Eine praxisnahe Entscheidungsmatrix etablieren, die für jeden Dokument-Typ klar benennt: Wissensordner (RAG), direkter Anhang (Data Analyst) oder kein Upload (nicht geeignet).
**Hands-on Ergebnis:** Eine laminierbare Ein-Seiten-Entscheidungsmatrix als MD-Datei für das Team, die zukünftige Upload-Entscheidungen eigenständig ermöglicht.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Matrix-Erstellung) + Canvas + Library Folder (Ablage der Matrix)
**Vorgehen (3 Schritte):**
1. Erstelle im Chat eine erste Rohdraft-Tabelle mit drei Spalten: "Dokument-Typ", "Empfohlener Upload-Weg", "Begründung" — befülle die Zeilen mit den häufigsten Marketing-Dokumenten (Preisliste, Brand Guidelines, Kampagnen-Brief, Performance-CSV, Meeting-Notiz, Pressemitteilung).
2. Ergänze eine Spalte "Warnsignal": Situationen in denen ein Dokument vermeintlich in den Wissensordner gehört, aber tatsächlich nicht (z.B. CSV mit Performance-Daten: immer Data Analyst, nie Wissensordner).
3. Speichere als `entscheidungsmatrix-upload-wissensordner-v1.md`; lade in den Library Folder "WO-BASIS"; referenziere im Onboarding-Dokument für neue Mitarbeiter.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Langdock-Onboarding-Trainerin [Persona]. Erstelle eine Entscheidungsmatrix für Upload-Entscheidungen in einem Marketing-Team [Task]. Kontext: Langdock unterstützt PDF, DOCX, MD, TXT, PPTX im Wissensordner; CSV/XLSX müssen als direkter Chat-Anhang für den Data Analyst hochgeladen werden; Bilder sind ausschließlich als Anhang geeignet [Context]. Format: Tabelle mit Dokument-Typ, empfohlenem Weg, Begründung und Warnsignal pro Zeile [Format]."
**Erwartetes Artefakt:** Eine Ein-Seiten-Entscheidungsmatrix als MD-Datei, im Library Folder abgelegt und im Team-Onboarding verlinkt.
**Fallstricke (≥2 spezifisch):**
- Redaktionell formatierte Excel-Tabellen (z.B. Editorial-Kalender als XLSX) als XLSX hochladen wollen → auch redaktionell formatierte Tabellenkalkulationen werden vom Wissensordner abgelehnt; als PDF oder DOCX exportieren oder in MD konvertieren.
- Matrix nach Erstellung nie aktualisieren → wenn Langdock neue Formate unterstützt, ist die Matrix veraltet; Versionsdatum im Dateinamen ist Pflicht; Quartals-Review in Audit-Prozess integrieren.
**Anschluss-Szenario:** S-WR-016

### S-WR-016 Wissensordner-Freshness-Management: Dokumentenaktualität steuern

**Wann nutzen (Trigger):** Ein Vertriebs-Mitarbeiter fragt den Agenten nach dem aktuellen Produktpreis; der Agent antwortet korrekt — aber der Preis gilt seit diesem Quartal nicht mehr. Das Dokument im Wissensordner wurde seit 14 Monaten nicht aktualisiert, hat aber keinen sichtbaren Hinweis auf sein Erstellungsdatum. (Quelle: A-33)
**Strategisches Ziel:** Einen systematischen Freshness-Management-Prozess einführen, der für jedes Wissensordner-Dokument einen definierten Review-Rhythmus sicherstellt und veraltete Dokumente proaktiv markiert.
**Hands-on Ergebnis:** Eine Freshness-Inventur-Tabelle aller Wissensordner-Dokumente mit definierten Review-Deadlines und ein Kalender-Event-Set für die nächsten vier Quartale.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (Verwaltung) + Chat (Inventur-Assistent)
**Vorgehen (4 Schritte):**
1. Exportiere Dateiliste (Name + Upload-Datum); kategorisiere Dokumente nach natürlichem Update-Rhythmus: Preislisten (monatlich), Brand Guidelines (jährlich), FAQ (quartalsweise), Personas (halbjährlich).
2. Füge in die erste Zeile jedes Dokuments einen "Stand"-Header ein: "Stand: [JJJJ-MM] | Nächster Review: [JJJJ-MM]" — dieser Anker erscheint im Citation-Text und warnt den Nutzer aktiv.
3. Richte für jeden Review-Rhythmus ein Kalender-Event ein (z.B. monatliche Erinnerung "Preislisten-Check im Wissensordner") mit dem Wissensordner-Owner als Verantwortlichem.
4. Definiere eine Escalation-Regel: Dokumente die ihren Review-Termin um >30 Tage überschreiten werden mit Präfix "VERALTET-" im Dateinamen versehen bis zum nächsten Update.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Koordinatorin [Persona]. Erstelle einen Freshness-Management-Plan für unseren Wissensordner [Task]. Kontext: Dokumente haben unterschiedliche Update-Rhythmen; Langdock zeigt Datei-Upload-Datum im Citation-Link aber kein Inhalt-Stand-Datum [Context]. Liefere eine Inventur-Tabelle mit Spalten: Dokument-Typ, Update-Rhythmus, Verantwortlich, Nächster-Review-Termin [Format]."
**Erwartetes Artefakt:** Eine Freshness-Inventur-Tabelle mit definierten Review-Terminen und eine README-Datei im Library Folder die den Update-Prozess beschreibt.
**Fallstricke (≥2 spezifisch):**
- Stand-Header nur im Dateinamen und nicht im Dokumenteninhalt → der Header erscheint im Citation-Link aber nicht im abgerufenen Chunk; immer in die erste Zeile des Dokuments schreiben damit er im Chunk-Text sichtbar ist.
- Freshness-Prozess ohne klare Ownership einführen → ohne namentliche Verantwortliche wird der Prozess nach zwei Quartalen nicht mehr gelebt; je Dokument-Kategorie eine einzige verantwortliche Person benennen.
**Anschluss-Szenario:** S-WR-017

### S-WR-017 Krisenkomm-Playbook als Wissensordner für Sofortzugriff strukturieren

**Wann nutzen (Trigger):** Ein Serverausfall löst eine Flut negativer Social-Media-Kommentare aus — der Community-Manager sucht 20 Minuten lang in SharePoint nach dem Krisenkomm-Playbook, weil es in drei verschiedenen Ordner-Hierarchien liegt. Der erste Response kommt zu spät. (Quelle: sources/10 S-051)
**Strategisches Ziel:** Das gesamte Krisenkomm-Playbook als sofort abrufbaren Wissensordner strukturieren, damit der Agent innerhalb von 60 Sekunden kanalspezifische Holding-Statements auf Basis validierter Richtlinien liefert.
**Hands-on Ergebnis:** Ein "WO-Krisenkomm" Library Folder mit atomisierten Dateien pro Krisen-Typ und Kanal, verbunden mit einem dedizierten Krisen-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Agent-Konfiguration + Wissensordner-Anbindung
**Vorgehen (4 Schritte):**
1. Zerlege das bestehende Krisenkomm-Playbook in atomare Dateien: eine Datei pro Krisen-Typ (Serverausfall, Datenleck, Produktrückruf, Negativ-Medienberichte) und eine Datei pro Kanal-Regel (Twitter/X-Stil, LinkedIn-Stil, Presse-Statement-Stil).
2. Füge in jede Krisen-Datei im ersten Absatz einen Trigger-Begriff ein der im Agenten-Prompt verbatim referenziert wird (z.B. "Krisentyp: Serverausfall" als H1).
3. Erstelle einen dedizierten "Krisen-Agenten" mit System-Instruction: "Greife bei Krisenkomm-Anfragen sofort auf den Wissensordner WO-Krisenkomm zu; erfinde niemals ETAs oder Schadenszahlen."
4. Teste den Agenten mit einer Simulationsfrage: "Serverausfall seit 2 Stunden — schreibe Tweet und LinkedIn-Statement"; prüfe ob beide Antworten aus dem Ordner stammen (Citations vorhanden).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Krisenkommunikations-Direktor [Persona]. Verfasse ein Holding-Statement für Twitter und LinkedIn zum folgenden Krisenfall: Serverausfall seit 90 Minuten [Task]. Nutze ausschließlich die Richtlinien aus dem Wissensordner WO-Krisenkomm; erfinde keine Wiederherstellungszeiten und keine Schadenszahlen [Context]. Format: Twitter-Post (max. 280 Zeichen) + LinkedIn-Statement (max. 150 Wörter) [Format]."
**Erwartetes Artefakt:** Ein vollständiger WO-Krisenkomm Library Folder mit atomisierten Dateien pro Krisen-Typ und ein getesteter Krisen-Agent mit nachgewiesenen Citations.
**Fallstricke (≥2 spezifisch):**
- Krisenkomm-Playbook nur als Muster-Dokument strukturieren ohne kanalspezifische Anpassungen → Agent liefert generische Statements die für den jeweiligen Kanal unpassend sind; Kanal-Regeln müssen explizit als separate Datei vorliegen.
- Agent gibt geschätzte Wiederherstellungszeiten aus obwohl diese nicht im Wissensordner stehen → Halluzinations-Risiko bei Krisen ist besonders hoch; System-Instruction muss explizites Verbot enthalten: "Erfinde niemals ETAs."
**Anschluss-Szenario:** S-WR-018

### S-WR-018 SEO-Content-Archiv im Wissensordner für interne Verlinkung nutzen

**Wann nutzen (Trigger):** Eine neue Pillar-Page zum Thema "B2B-Automatisierung" ist live — das Team muss 15 interne Links aus dem 200-Artikel-Blog-Archiv setzen, durchsucht aber manuell. Vier Stunden Recherchearbeit für einen einzigen Linking-Durchgang. (Quelle: sources/10 S-017)
**Strategisches Ziel:** Das Blog-Archiv als semantisch durchsuchbaren Wissensordner aufbauen, sodass interne Verlinkungsempfehlungen in 30 Minuten statt 4 Stunden generiert werden.
**Hands-on Ergebnis:** Eine Tabelle mit 10-15 internen Link-Möglichkeiten (Quellartikel, Ankertext-Vorschlag, Originalzitat) direkt verwendbar für die CMS-Implementierung.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Blog-Archiv) + Chat (semantische Suche)
**Vorgehen (4 Schritte):**
1. Exportiere die Top-Traffic-Artikel aus dem CMS als HTML oder Text; konvertiere zu MD-Dateien (eine Datei pro Artikel, H1 = Artikel-Titel); lade in Library Folder "WO-Blog-Archiv".
2. Führe eine semantische Suche durch: "Suche in den Dokumenten nach Passagen die das Thema B2B-Automatisierung, Workflow-Optimierung oder API-Integration behandeln — nenne Dateiname, exakten Satz und Ankertext-Vorschlag unter 5 Wörtern."
3. Prüfe alle Ergebnisse auf Citation-Vollständigkeit — nur Vorschläge mit Quellenangabe weiterverwenden; Tabelle aus Canvas in CMS-kompatibles Format exportieren.
4. Aktualisiere den Wissensordner nach jedem neuen Artikel-Batch (monatlich); alte Artikel die depubliziert wurden sofort entfernen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Spezialistin [Persona]. Finde interne Verlinkungsmöglichkeiten für unsere neue Pillar-Page zu 'B2B-Automatisierung' [Task]. Durchsuche die Dokumente im Wissensordner nach Absätzen die Workflow, Automatisierung, API-Integration oder ähnliche Synonyme enthalten [Context]. Liefere eine Tabelle mit: Quelldokument, Ankertext-Vorschlag (max. 5 Wörter, kein 'hier klicken'), exakter Originalsatz [Format]."
**Erwartetes Artefakt:** Eine Link-Tabelle mit 10-15 Einträgen, je mit Quelldokument, Ankertext und Originalzitat — direkt verwendbar für den CMS-Import.
**Fallstricke (≥2 spezifisch):**
- Artikel als Sammel-PDF statt einzelne Dateien hochladen → Per-Document-Cap liefert pro PDF nur einen einzigen Chunk; jeder Artikel braucht eine eigene MD-Datei damit alle Abschnitte erreichbar sind.
- Ankertext-Vorschläge ohne Keyword-Anforderung im Prompt → Agent schlägt generische Texte wie "mehr dazu" vor; Prompt muss explizit fordern "Ankertext enthält das Ziel-Keyword und ist max. 5 Wörter lang."
**Anschluss-Szenario:** S-WR-019

### S-WR-019 Mehrere Wissensordner gleichzeitig für Cross-Themen-Recherche abfragen

**Wann nutzen (Trigger):** Das Team führt eine Content-Gap-Analyse durch und muss gleichzeitig den SEO-Archiv-Ordner und den Konkurrenz-Analyse-Ordner abfragen, um festzustellen welche Subtopics die Konkurrenz abdeckt die im eigenen Content-Bestand fehlen. (Quelle: 12 Q69)
**Strategisches Ziel:** Durch parallele Abfrage mehrerer Wissensordner in einem einzigen Chat eine umfassende Cross-Themen-Analyse durchführen, ohne Dokumente zusammenzuführen oder duplizieren zu müssen.
**Hands-on Ergebnis:** Eine priorisierte Content-Gap-Tabelle mit Subtopics, zugeordneter Konkurrenz-Quelle und Empfehlung für Content-Format und Priorität.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (mehrere) + Agent + Web Search
**Vorgehen (4 Schritte):**
1. Verbinde den Agenten mit beiden relevanten Wissensordnern ("WO-Blog-Archiv" und "WO-Konkurrenz-Analyse"); aktiviere zusätzlich Web Search für Live-Daten.
2. Weise den Agenten an beide Ordner explizit zu referenzieren: "Suche in WO-Blog-Archiv nach vorhandenen Inhalten zu [Thema] UND in WO-Konkurrenz-Analyse nach Subtopics der Top-3-Konkurrenten."
3. Lasse den Agenten eine Gap-Tabelle erstellen: Spalten "Subtopic", "Im eigenen Archiv vorhanden (J/N)", "Konkurrent der es abdeckt", "Priorität (1-3)".
4. Exportiere die Tabelle aus dem Canvas für das Redaktionsmeeting; priorisiere die Top-5-Gaps für den nächsten Content-Sprint.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Content-Strategin [Persona]. Führe eine Content-Gap-Analyse für das Keyword-Cluster 'Marketing-Automatisierung Mittelstand' durch [Task]. Suche in WO-Blog-Archiv nach vorhandenen Inhalten und in WO-Konkurrenz-Analyse nach Subtopics die Wettbewerber abdecken; ergänze fehlende Wettbewerber-Daten via Web Search [Context]. Liefere eine Gap-Tabelle mit Spalten: Subtopic, Eigener Content vorhanden, Konkurrent, Priorität 1-3, Empfohlenes Format [Format]."
**Erwartetes Artefakt:** Eine Content-Gap-Tabelle mit 5-15 priorisierten Subtopics als direkter Input für das Redaktions-Backlog.
**Fallstricke (≥2 spezifisch):**
- Beide Ordner enthalten zu viele Dokumente zu demselben Thema → semantische Suche liefert 50 Kandidaten (k=50) die sich thematisch überlappen; Abfrage-Prompt muss thematisch eng gehalten werden um rauschfreie Ergebnisse zu erhalten.
- Web Search ruft Navigations-Elemente oder Werbebanner der Konkurrenz-Seiten ab statt der Artikel-Struktur → im Prompt präzisieren: "Extrahiere nur H2-Überschriften des Hauptartikels; ignoriere Navigation und Sidebar."
**Anschluss-Szenario:** S-WR-020

### S-WR-020 DSGVO-konformer Wissensordner für Kundenfeedback-Analyse aufbauen

**Wann nutzen (Trigger):** Das Team möchte 200 Kunden-Survey-Antworten in den Wissensordner laden, damit der Agent daraus Persona-Updates und Produkt-Insights ableiten kann — der Datenschutzbeauftragte fragt nach einer DSGVO-Bewertung bevor der Upload stattfindet. (Quelle: A-20 + A-16)
**Strategisches Ziel:** Einen DSGVO-konformen Prozess für die Nutzung von Kundenfeedback im Wissensordner definieren: Anonymisierung vor Upload, Embedding-Einschätzung, AV-Vertrag-Prüfung und dokumentiertes Freigabe-Gate.
**Hands-on Ergebnis:** Ein einseitiges DSGVO-Freigabe-Memo für den DSB sowie ein anonymisierter Wissensordner mit Kundenfeedback-Zusammenfassungen statt Roh-Antworten.
**Eingesetzte Langdock-Fähigkeit(en):** Chat + Canvas (Memo-Erstellung) + Library Folder (anonymisierte Daten)
**Vorgehen (4 Schritte):**
1. Anonymisiere alle Kunden-Rohdaten vor dem Upload: Namen, E-Mail-Adressen, Unternehmensnamen ersetzen durch generische Tags (z.B. "[Kunde-A]", "[Branche: Handel]"); verwende den Data Analyst als direkten Anhang für die Anonymisierung — nie Roh-PII in den Wissensordner laden.
2. Erstelle pro Kunden-Segment eine aggregierte Zusammenfassungs-Datei (z.B. "feedback-segment-kmu-2025-q2.md") statt einzelner Antworten — Aggregation ist DSGVO-freundlicher als Einzeldaten.
3. Erstelle ein DSB-Memo im Canvas: Abschnitte "Datenquelle und Anonymisierungsprozess", "Embedding-Einschätzung (EU-Hosting Frankfurt, at-rest-Verschlüsselung)", "AV-Vertrag-Status", "Risikoeinstufung", "Freigabe-Empfehlung".
4. Lade den anonymisierten Wissensordner erst nach schriftlicher DSB-Freigabe hoch; dokumentiere das Freigabedatum in der README-Datei des Ordners.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist DSGVO-Beraterin für Marketing-KI-Deployments [Persona]. Erstelle ein Freigabe-Memo für den Datenschutzbeauftragten [Task]. Kontext: Wir möchten anonymisierte Kunden-Feedback-Zusammenfassungen in einen Langdock-Wissensordner laden; Langdock nutzt EU-Hosting Frankfurt, at-rest-Verschlüsselung, kein Modell-Training auf unseren Daten [Context]. Format: Einseitiges Memo mit Abschnitten Datenquelle, Anonymisierungsprozess, Embedding-Einschätzung, AV-Vertrag-Status, Risikoeinstufung [Format]."
**Erwartetes Artefakt:** Ein DSB-Memo mit DSGVO-Einschätzung, ein anonymisierter Wissensordner mit Feedback-Zusammenfassungen und ein dokumentiertes Freigabe-Gate.
**Fallstricke (≥2 spezifisch):**
- Aggregierte Zusammenfassungen enthalten noch indirekt identifizierende Details (z.B. "einziger Kunde in der Region X der Produkt Y nutzt") → Aggregation muss inhaltlich geprüft werden; Faustregel: Zusammenfassung muss mind. 5 Antworten zusammenfassen damit Rückschlüsse ausgeschlossen sind.
- AV-Vertrag mit Langdock auf Embedding-Klausel nicht geprüft → die DSGVO-Einschätzung hängt vom AV-Vertrag ab; im Memo als explizite offene Handlungsempfehlung festhalten; Little Data berät, ersetzt nicht den DSB.
**Anschluss-Szenario:** S-WR-021

### S-WR-021 PDF vs. Markdown: Dateiformat-Entscheidung für optimale Chunk-Qualität

**Wann nutzen (Trigger):** Das Team lädt Brand-Guidelines sowohl als fertig formatiertes PDF als auch als rohes Markdown hoch — die Retrieval-Ergebnisse aus der PDF-Datei sind fragmentarisch, weil Kopfzeilen, Spalten und Fußnoten den Fließtext unterbrechen und das Chunking-Muster zerstören.
**Strategisches Ziel:** Eine verbindliche Format-Entscheidungsregel einführen, die für jeden Dokumenttyp das Dateiformat mit der höchsten Chunk-Qualität bestimmt, damit die Retrieval-Trefferquote systematisch steigt.
**Hands-on Ergebnis:** Eine Ein-Seiten-Format-Entscheidungsmatrix als MD-Datei im Library Folder sowie eine konvertierte Pilotdatei (Brand Guidelines als MD statt PDF) mit messbarem Retrieval-Vergleich.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Wissensordner-Upload + Chat (Canary-Test)
**Vorgehen (4 Schritte):**
1. Analysiere die Chunk-Problematik: PDFs mit Mehrspaltenlayout, Seitennummern und Wasserzeichen erzeugen Chunks in denen Textzeilen mitten im Satz brechen; Markdown produziert saubere, semantisch abgeschlossene Absätze die dem 2.000-Zeichen-Chunking-Algorithmus folgen.
2. Konvertiere testalweise die Brand-Guidelines-PDF in eine saubere MD-Datei (Pandoc-Kommandozeile oder manuelle Konvertierung): alle Tabellen als Markdown-Tabellen (max. 30 Zeilen), alle Bilder entfernen (Bilder werden von der Vektordatenbank ignoriert), alle Überschriften als #/## strukturieren.
3. Lade beide Versionen in den Library Folder; führe identische Canary-Fragen durch und vergleiche die Citation-Qualität — die MD-Version liefert in der Regel präzisere Chunks.
4. Schreibe die Faustregel in die Format-Entscheidungsmatrix: Redaktionelle Texte → MD; Offizielle Publizierungen die als PDF bleiben müssen → PDF nur wenn kein Mehrspaltenlayout; Präsentationen → PPTX akzeptiert aber MD-Export bevorzugt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist RAG-Qualitätsprüferin [Persona]. Vergleiche die folgenden zwei Antworten auf dieselbe Frage — eine aus der PDF-Version und eine aus der MD-Version unserer Brand Guidelines [Task]. Kontext: Chunking-Algorithmus schneidet bei ~2.000 Zeichen; PDF-Chunks enthalten oft Seitenzahlen und Zeilenbrüche mitten im Satz [Context]. Bewerte Vollständigkeit und semantische Kohärenz jedes Chunks auf einer Skala 1-5 und nenne die Ursache der Unterschiede [Format]."
**Erwartetes Artefakt:** Eine Format-Entscheidungsmatrix als MD-Datei und ein Canary-Test-Protokoll, das den Qualitätsunterschied zwischen PDF- und MD-Retrieval für 3 Kernfragen dokumentiert.
**Fallstricke (≥2 spezifisch):**
- Markdown-Konvertierung eines komplexen PDFs mit vielen Tabellen produziert korrumpierte Tabellen-Syntax → nach der Konvertierung jede Tabelle manuell auf valide MD-Syntax prüfen; fehlerhafte Tabellen als Text-Absätze umschreiben.
- PDF behalten weil "offizielles Dokument" obwohl Retrieval schlecht ist → offizielle Publizierung kann als PDF im Ordner liegen für Downloads, aber eine parallele MD-Version für die RAG-Indizierung anlegen.
**Anschluss-Szenario:** S-WR-022

### S-WR-022 Ordner-Hierarchie für große Content-Bibliotheken gestalten

**Wann nutzen (Trigger):** Das Marketing-Team hat über 300 Dokumente in einem einzigen Library Folder — der Agent gibt häufig thematisch falsche Treffer zurück, weil alle Dokumente in einem Einzel-Ordner konkurrieren und das k=50-Retrieval mit irrelevanten Kandidaten geflutet wird. (Quelle: 12 Q54, Q66)
**Strategisches Ziel:** Eine mehrschichtige Ordner-Hierarchie entwerfen, die Retrieval-Rauschen durch thematische Isolation reduziert und gleichzeitig das 1.000-Datei-Limit des Library Folders nicht überschreitet.
**Hands-on Ergebnis:** Ein Ordner-Architektur-Blueprint mit 4-6 spezialisierten Library Folders und einer dokumentierten Zuordnungslogik für bestehende und künftige Dokumente.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (mehrere) + Agent-Konfiguration
**Vorgehen (4 Schritte):**
1. Kategorisiere alle vorhandenen Dokumente nach 4-6 thematischen Clustern (z.B. WO-Brand, WO-SEO, WO-PR, WO-Produkt, WO-Compliance, WO-Kampagnen-Archiv); Dokumente die themenübergreifend relevant sind kommen in einen WO-Basis-Ordner.
2. Definiere pro Ordner eine Kapazitätsregel: WO-Brand max. 50 Dateien (statisch, selten >1 File/Monat), WO-Kampagnen-Archiv max. 400 Dateien (wächst monatlich); plane eine Archivierungsstrategie für Kampagnen-Ordner ab 300 Dateien.
3. Konfiguriere jeden Agenten so dass er maximal 2-3 thematisch passende Ordner einbindet — niemals alle Ordner gleichzeitig; ein SEO-Agent braucht WO-SEO + WO-Basis, nicht WO-PR oder WO-Brand.
4. Erstelle eine Ordner-Architektur-Übersicht als MD-Datei im WO-Basis-Ordner: Tabelle mit Ordner-Name, Zweck, max. Dateizahl, Verantwortlich, Agenten-Anbindung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Informationsarchitektin [Persona]. Entwirf eine Library-Folder-Hierarchie für ein 8-köpfiges Marketing-Team mit 350 Dokumenten [Task]. Kontext: Langdock Library Folders fassen max. 1.000 Dateien; ein Agent liefert bessere Resultate wenn er maximal 2-3 thematisch enge Ordner nutzt; Retrieval-Rauschen entsteht wenn zu viele thematisch unverwandte Dokumente konkurrieren [Context]. Liefere einen Blueprint mit Ordner-Namen, Zweck, empfohlene Datei-Obergrenze und Agenten-Zuordnung [Format]."
**Erwartetes Artefakt:** Ein Ordner-Architektur-Blueprint als MD-Datei mit 4-6 Library Folders, Kapazitätsregeln und Agenten-Zuordnungsmatrix.
**Fallstricke (≥2 spezifisch):**
- Zu viele Ordner erstellen und jeden Agenten mit 5+ Ordnern verbinden → maximale Synced-Folder-Grenze (5 pro Agent) ist eine harte Grenze; Library Folders zählen separat, aber kognitive Last für den Agenten steigt mit jedem zusätzlichen Ordner; weniger ist mehr.
- Ordner nach Abteilung statt nach Thema strukturieren → Abteilungsordner "Marketing-Operations" enthält alles von Preislisten bis Persona-Definitionen; thematische Trennung (Preis, Persona, Brand) liefert immer besseres Retrieval als organisatorische Trennung.
**Anschluss-Szenario:** S-WR-023

### S-WR-023 Wissensordner-Berechtigungen und Team-Sharing konfigurieren

**Wann nutzen (Trigger):** Ein neuer Marketing-Manager ändert versehentlich die Brand-Guidelines-Datei im gemeinsamen Library Folder, weil er Editor-Rechte hat — die korrekte Version muss wiederhergestellt werden und das Team fragt nach einer Lösung für sichere Freigaben. (Quelle: 12 Q58, Q70)
**Strategisches Ziel:** Ein Berechtigungskonzept für alle Wissensordner implementieren, das die Rolle "Owner" (kann löschen und hinzufügen), "Editor" (kann hinzufügen, nicht löschen) und "Viewer" (kann nur lesen und als Wissensquelle nutzen) klar voneinander trennt.
**Hands-on Ergebnis:** Eine dokumentierte Berechtigungs-Matrix für alle Library Folders sowie konfigurierte Ordner-Freigaben mit rollenspezifischen Zugriffsrechten.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Workspace-Admin-Konfiguration
**Vorgehen (4 Schritte):**
1. Inventarisiere alle Library Folders und ihre aktuellen Berechtigungen; identifiziere Ordner mit zu weiten Editor-Rechten (typisches Problem: Brand-Ordner hat Team-weite Editor-Rechte).
2. Setze die Berechtigungsregel: Kritische Kern-Ordner (WO-Brand, WO-Compliance) nur Owner = Marketing-Direktion + 1 Backup; Editor-Rechte ausschließlich für Personen mit aktivem Update-Auftrag; alle anderen als Viewer.
3. Konfiguriere die Sharing-Einstellungen im Workspace-Admin: verhindere dass Standard-Nutzer einen Wissensordner für die gesamte Organisation freigeben können (Restricted-Sharing-Einstellung aktivieren).
4. Dokumentiere die Berechtigungs-Matrix in einer "WO-BERECHTIGUNGEN-[Datum].md" im Basis-Ordner: Tabelle mit Ordner, Owner, Editor, Viewer-Gruppe, Änderungsprotokoll-Pflicht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Governance-Beraterin [Persona]. Erstelle eine Berechtigungs-Matrix für unsere 6 Library Folders [Task]. Kontext: Langdock unterscheidet Owner (volle Kontrolle), Editor (Upload und Umbenennung) und Viewer (Lesen und Abrufen im Chat); Standard-Nutzer können Ordner ggf. für die gesamte Organisation freigeben wenn der Workspace-Admin dies nicht einschränkt [Context]. Liefere eine Tabelle mit Ordner, Owner, Editor-Berechtigung (Personenkreis), Viewer-Berechtigung, Änderungsprotokoll-Pflicht (J/N) [Format]."
**Erwartetes Artefakt:** Eine Berechtigungs-Matrix als MD-Datei und konfigurierte Ordner-Freigaben mit rollenspezifischen Zugriffsrechten, die unbeabsichtigte Dateiänderungen durch Standard-Nutzer verhindern.
**Fallstricke (≥2 spezifisch):**
- Workspace-Admin hat "Restricted Sharing" nicht aktiviert → Standard-Nutzer können sensible Ordner mit der gesamten Organisation teilen; Workspace-Admin muss diese Einstellung aktiv prüfen und deaktivieren.
- Berechtigungs-Matrix nur dokumentieren aber nicht im System umsetzen → Dokumentation ohne tatsächliche Konfiguration schützt nicht; nach jeder Änderung kurzer Audit ob Einstellungen mit Dokumentation übereinstimmen.
**Anschluss-Szenario:** S-WR-024

### S-WR-024 Mehrsprachige Wissensordner für DACH-Märkte aufbauen

**Wann nutzen (Trigger):** Das DACH-Team arbeitet in drei Ländern — die Schweizer Niederlassung erstellt Dokumente auf Deutsch und Französisch, die österreichische auf Deutsch mit lokalen Rechtshinweisen, und Deutschland hat eigene Brand-Varianten. Der gemeinsame Wissensordner mischt alle drei Sprachvarianten und der Agent gibt inkonsistente, sprachlich gemischte Antworten zurück.
**Strategisches Ziel:** Eine mehrsprachige Wissensordner-Architektur aufbauen, in der sprachspezifische Dokumente in separaten Ordnern liegen und Agenten gezielt die Sprache des anfragenden Marktes zurückgeben.
**Hands-on Ergebnis:** Separate Library Folders pro Sprachraum (DE-DE, DE-AT, DE-CH, FR-CH) mit einer Agenten-Routing-Logik, die die korrekte Sprachversion abruft.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (mehrere) + Agent-Konfiguration + System-Instructions
**Vorgehen (4 Schritte):**
1. Trenne alle Dokumente nach Sprach-Markt-Kombination: Datei-Präfix `[DE-DE]`, `[DE-AT]`, `[DE-CH]`, `[FR-CH]`; lege separate Library Folders pro Sprachraum an.
2. Erstelle einen Basis-Ordner mit sprachübergreifenden Dokumenten (globale Brand-Regeln, technische Produktspezifikationen die nicht marktspezifisch sind) — dieser Ordner wird allen DACH-Agenten gemeinsam angebunden.
3. Konfiguriere marktspezifische Agenten: der Schweizer Agent erhält WO-Basis + WO-DE-CH + WO-FR-CH; der österreichische Agent erhält WO-Basis + WO-DE-AT; System-Instructions spezifizieren die Antwortsprache explizit.
4. Füge in die System-Instructions ein: "Wenn die Anfrage in Deutsch erfolgt und kein Markt angegeben ist, frage nach dem Zielmarkt (DE, AT, oder CH) bevor du eine marktspezifische Antwort generierst."
**Beispiel-Prompt (DE, PTCF):**
> "Du bist DACH-Marketingassistentin für den Schweizer Markt [Persona]. Erstelle einen LinkedIn-Post zum Thema Produktneuheit unter Berücksichtigung der Schweizer Marktbesonderheiten [Task]. Nutze ausschließlich Dokumente aus dem Wissensordner WO-DE-CH und WO-Basis; verwende Schweizer Schreibkonventionen (kein ß, Franken statt Euro) [Context]. Format: LinkedIn-Post, max. 150 Wörter, ohne Emojis [Format]."
**Erwartetes Artefakt:** Separate Library Folders pro Sprachraum, eine Agenten-Routing-Tabelle und eine README-Datei die erklärt welcher Agent für welchen Markt zuständig ist.
**Fallstricke (≥2 spezifisch):**
- Dokumente die in mehreren Sprachversionen existieren nur in einem Ordner ablegen → Übersetzungen gehören als separate Dateien in den jeweiligen Sprach-Ordner; eine DE-DE-Datei im FR-CH-Ordner erzeugt sprachgemischte Chunks.
- Mehrsprachige Retrieval-Qualität nicht testen → Vektor-Embeddings sind sprachübergreifend; eine Frage auf Français kann auch deutsch-sprachige Dokumente zurückgeben wenn semantisch ähnlich; Canary-Tests pro Sprache sind Pflicht nach dem Setup.
**Anschluss-Szenario:** S-WR-025

### S-WR-025 Tabellen-reiche Dokumente für zuverlässiges Retrieval optimieren

**Wann nutzen (Trigger):** Das Team lädt eine Preisübersicht als DOCX mit einer 8-spaltige Excel-Tabelle hoch — der Agent liefert bei Preisnfragen immer "Keine Information gefunden", weil die Tabelle vom Chunking-Algorithmus als unlesbarer Text-Brei verarbeitet wird und der Chunk keine semantisch verwertbare Information enthält. (Quelle: 12 Q53)
**Strategisches Ziel:** Tabellen-reiche Dokumente für das RAG-System aufbereiten, sodass tabellarische Inhalte zuverlässig retrievt werden, ohne auf den Data Analyst (direkter Chat-Anhang) ausweichen zu müssen.
**Hands-on Ergebnis:** Eine überarbeitete Tabellen-Datei als strukturiertes MD-Dokument mit erklärendem Fließtext pro Tabellenzeile, das Canary-Tests für Tabellen-Inhalte besteht.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Chat (Dokument-Optimierung)
**Vorgehen (4 Schritte):**
1. Verstehe die Einschränkung: Tabellen mit mehr als 30 Zeilen oder komplexen Mehrfach-Spalten werden beim Chunking häufig zerrissen — eine Tabellenzeile landet in einem Chunk, die Spaltenüberschriften in einem anderen Chunk und damit fehlt der semantische Kontext.
2. Konvertiere komplexe Tabellen in ein hybrides Format: Behalte Tabellen mit max. 30 Zeilen in MD-Syntax; zerlege große Tabellen (>30 Zeilen) in thematische Blöcke mit erläuterndem Fließtext — z.B. "Produkt X kostet 299 EUR (DACH, Q2-2025). Mengenrabatt ab 10 Einheiten: 15 %. Mindestbestellmenge: 5 Einheiten."
3. Füge vor jeder konvertierten Tabelle einen 2-3-Sätze-Zusammenfassungsabsatz ein, der die Kernaussage der Tabelle in Fließtext wiederholt — dieser Absatz wird als Retrieval-Anker vom Chunking-Algorithmus bevorzugt indiziert.
4. Führe Canary-Tests durch: Frage nach spezifischen Preisen, Rabatten und Mengenstaffeln; prüfe ob Citations aus dem Tabellen-Dokument kommen und ob die Antworten faktisch korrekt sind.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist RAG-Dokumenten-Optimiererin [Persona]. Konvertiere die folgende Preistabelle in ein RAG-optimiertes Markdown-Format [Task]. Kontext: Langdock zerlegt Dokumente in ~2.000-Zeichen-Chunks; Tabellen mit mehr als 30 Zeilen werden beim Chunking zerrissen; das System gibt pro Datei nur einen Chunk pro Suchanfrage zurück [Context]. Erstelle für jede Produktgruppe einen eigenständigen Absatz mit Fließtext-Zusammenfassung gefolgt von einer MD-Tabelle mit max. 10 Zeilen [Format]."
**Erwartetes Artefakt:** Ein RAG-optimiertes MD-Dokument mit Fließtext-Zusammenfassungen vor jeder Tabelle, das bei Canary-Tests Preise und Rabatte korrekt zurückliefert.
**Fallstricke (≥2 spezifisch):**
- Sehr große Preistabellen (>100 Zeilen) als eine MD-Datei behalten und auf das 1-Chunk-Cap hoffen → bei komplexen Preis-Matrizen immer in separate Dateien pro Produktgruppe aufteilen; Per-Document-Cap gilt auch für das beste MD-Dokument.
- Tabellen-Inhalte ausschließlich als Fließtext umschreiben und Tabellen weglassen → für Fälle wo Nutzer die exakte Tabellenstruktur sehen wollen (z.B. Vergleichsübersicht), immer die MD-Tabelle zusätzlich zum Fließtext einschließen.
**Anschluss-Szenario:** S-WR-026

### S-WR-026 Kampagnen-spezifischen Wissensordner für ein Launch-Projekt aufbauen

**Wann nutzen (Trigger):** Ein neues Produkt wird in 8 Wochen gelauncht — fünf Team-Mitglieder arbeiten parallel an Briefings, Social-Copy, PR-Texten und Performance-Ads und verlieren Zeit durch inkonsistente Verwendung von Produktnamen, Kernbotschaften und Zielgruppen-Definitionen.
**Strategisches Ziel:** Einen temporären, kampagnen-spezifischen Library Folder als Single Source of Truth für alle Launch-Inhalte aufsetzen, der nach dem Launch archiviert wird und nicht den dauerhaften Brand-Wissensordner verunreinigt.
**Hands-on Ergebnis:** Ein "WO-Launch-[Produktname]-[Jahr]" Library Folder mit Kernbotschaften, Zielgruppen-Definitionen, Sprachleitfaden und Freigabe-Status-Dokument, der allen Launch-Agenten angebunden ist.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Agent-Konfiguration + Wissensordner-Anbindung
**Vorgehen (4 Schritte):**
1. Erstelle den kampagnen-spezifischen Ordner `WO-Launch-[Produkt]-[JJJJ]`; lade die unveränderlichen Launch-Basis-Dokumente hoch: Produktpositionierung, USP-Liste, Zielgruppen-Persona, Verbotene-Begriffe-Liste, Freigabe-Status.
2. Binde den Ordner an alle für den Launch relevanten Agenten (Content-Agent, PR-Agent, Social-Agent) zusätzlich zu deren Standard-Ordnern — nach dem Launch wird der Launch-Ordner von allen Agenten wieder entfernt.
3. Erstelle im Ordner eine "LAUNCH-STATUS.md" die den aktuellen Freigabe-Stand dokumentiert: welche Dokumente sind finalisiert, welche noch in Review — damit kein Agent auf unfertige Draft-Dokumente zugreift.
4. Setze am Ende des Launches einen Archivierungs-Kalender-Eintrag: Launch-Ordner wird nach 30 Tagen in einen Archiv-Ordner verschoben und von allen Live-Agenten getrennt; Kern-Learnings werden in die dauerhaften Wissensordner überführt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Launch-Copywriter [Persona]. Verfasse eine LinkedIn-Ankündigung für unseren Produktlaunch [Task]. Nutze ausschließlich die Kernbotschaften, USPs und Zielgruppen-Definition aus dem Wissensordner WO-Launch; verwende keine Begriffe aus der Verbotenen-Begriffe-Liste im selben Ordner [Context]. Format: LinkedIn-Post, max. 200 Wörter, mit 3 Bullet-Points zu den Hauptvorteilen [Format]."
**Erwartetes Artefakt:** Ein vollständig konfigurierter WO-Launch-Ordner mit allen Launch-Basis-Dokumenten, verbunden mit allen Launch-Agenten, und ein Archivierungs-Plan nach dem Launch.
**Fallstricke (≥2 spezifisch):**
- Launch-Ordner nach dem Projekt nicht von den Agenten trennen → veraltete Launch-Botschaften konkurrieren mit aktuellen Brand-Richtlinien im Retrieval; im Kalender nach Launch explizit "Ordner von Agenten trennen" eintragen.
- Dokumente im Launch-Ordner noch während des Launches laufend überschreiben → Langdock erkennt überschriebene Dateien nicht automatisch als neu; immer löschen und neu hochladen um frische Vektorisierung sicherzustellen.
**Anschluss-Szenario:** S-WR-027

### S-WR-027 Bilder in Dokumenten: Was RAG sieht und was nicht

**Wann nutzen (Trigger):** Das Team lädt ein Brand-Manual als PDF hoch, das zu 40 % aus Infografiken und Farbpaletten-Bildern besteht — der Agent beantwortet Fragen zur Primärfarbe der Marke mit "Keine Information gefunden", weil die Farbangabe ausschließlich in einer eingebetteten Grafik steht und nicht als Text vorliegt. (Quelle: 12 Q61, Q99)
**Strategisches Ziel:** Klären was das RAG-System aus Bildern in Dokumenten extrahieren kann und was nicht, und eine Aufbereitungs-Praxis etablieren, die bildbasierte Informationen für die Vektorsuche zugänglich macht.
**Hands-on Ergebnis:** Ein überarbeitetes Brand-Manual in dem alle bildinformativen Angaben (Farb-HEX-Codes, Schriftgrößen, Abstände) als Fließtext neben den Bildern stehen, sodass Retrieval-Anfragen zu visuellen Brand-Elementen korrekt beantwortet werden.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Chat (Dokument-Audit)
**Vorgehen (4 Schritte):**
1. Verstehe die technische Grenze: Eingebettete Bilder in PDFs und DOCX-Dateien werden von der Vektordatenbank vollständig ignoriert — nur der Textteil eines Dokuments wird indiziert; PPTX-Bilder ebenfalls; reiner Bildinhalt ist unsichtbar für RAG.
2. Führe einen Image-Text-Audit durch: öffne alle brand-kritischen Dokumente; markiere alle Inhalte die ausschließlich als Bild vorliegen (Farbpaletten, Logotype-Proportionen, Abstands-Regeln); liste diese Inhalte für die Überarbeitung.
3. Füge zu jedem bild-basierten Brand-Element einen Textblock hinzu der dieselbe Information in Fließtext enthält: "Primärfarbe der Marke: #1A2B3C (Navy Blue). Sekundärfarbe: #FF6B35 (Coral Orange). Beide Farben erscheinen im Logo als einzige zulässige Farbkombination."
4. Lade die überarbeiteten Dokumente hoch; Canary-Test: "Was ist die Primärfarbe unserer Marke?" muss jetzt mit Citation beantwortet werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Corporate-Identity-Redakteurin [Persona]. Extrahiere alle visuellen Brand-Angaben aus dem folgenden Brand-Manual und schreibe sie als eigenständige Textblöcke auf [Task]. Kontext: Das Dokument wird in einem RAG-System verarbeitet das Bilder ignoriert; alle Farb-HEX-Codes, Schriftgrößen und Abstands-Regeln müssen als Fließtext verfügbar sein [Context]. Format: Pro visuelles Element einen Absatz mit Bezeichnung, exaktem Wert und Verwendungsregel [Format]."
**Erwartetes Artefakt:** Ein überarbeitetes Brand-Manual in dem alle visuellen Brand-Angaben als Textblöcke neben den Bildern stehen, mit Canary-Test-Nachweis für korrekte Farb- und CI-Retrieval.
**Fallstricke (≥2 spezifisch):**
- Vision-Modell via direktem Chat-Anhang verwenden um Bildinhalte zu extrahieren, aber das Ergebnis nicht dauerhaft ins Wissensordner-Dokument zurückschreiben → One-Shot-Extraction hilft nur in der laufenden Konversation; Extraktion muss dauerhaft in die Datei eingearbeitet werden.
- Bilder aus dem Dokument entfernen um "cleanes Markdown" zu erzeugen → Menschen im Team sehen das Dokument auch noch; Bilder beibehalten, aber Textäquivalente als Kommentar oder Paralleltext hinzufügen.
**Anschluss-Szenario:** S-WR-028

### S-WR-028 Library Folder und Synced Folder kombiniert in einem Agenten nutzen

**Wann nutzen (Trigger):** Ein Vertriebs-Agent soll gleichzeitig auf statische Brand-Guidelines (Library Folder, manuell gepflegt, jährlich aktualisiert) und auf live-synchronisierte Preislisten aus SharePoint (Synced Folder, täglich aktualisiert) zugreifen — das Team ist unsicher ob beide Ordner-Typen in einem Agenten kombiniert werden können.
**Strategisches Ziel:** Einen Agenten konfigurieren der sowohl Library Folder als auch Synced Folder gleichzeitig nutzt, mit einer klaren Governance-Regel welcher Ordner welche Art von Information liefert.
**Hands-on Ergebnis:** Ein konfigurierter Hybrid-Agent mit einem Library Folder für statisches Kern-Wissen und einem Synced Folder für täglich aktualisierte Daten, inklusive dokumentierter Update-Verantwortlichkeiten.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Synced Folder (SharePoint) + Agent-Konfiguration
**Vorgehen (4 Schritte):**
1. Trenne klipp und klar: Library Folder = statisches Wissen das selten wechselt (Brand-Regeln, Produkt-Beschreibungen, Persona-Definitionen, Support-Prozesse); Synced Folder = dynamisches Wissen das wöchentlich oder täglich wechselt (Preislisten, Aktions-Konditionen, aktuelle Kampagnen-Briefs vom SharePoint).
2. Verbinde den Agenten mit beiden Ordner-Typen: in der Agenten-Konfiguration sowohl den Library Folder als auch den Synced Folder als Wissensquellen eintragen — Langdock unterstützt diese Kombination nativ.
3. Füge in die System-Instructions einen Hinweis ein: "Für Preis- und Konditionsfragen priorisiere den synchronisierten Ordner [Synced-Folder-Name]; für Brand- und Prozessfragen priorisiere den Library Folder [Folder-Name] — nenne immer beide Quellen wenn du beide Ordner nutzt."
4. Dokumentiere die Update-Verantwortlichkeiten: Synced Folder = automatisch via SharePoint-Sync; Library Folder = manuell durch [Name], Update-Rhythmus quartalsweise — halte dies in der README-Datei des Library Folders fest.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Vertriebs-Assistent [Persona]. Beantworte die folgende Kundenfrage zu Preis und Produkteigenschaften von Produkt X [Task]. Prüfe den synchronisierten Preislisten-Ordner für aktuelle Preise und den Library Folder für Produkt-Beschreibungen und Brand-konforme Formulierungen [Context]. Format: Zwei-Absatz-Antwort mit Preis in Absatz 1 (mit Quelle) und Produktbeschreibung in Absatz 2 (mit Quelle) [Format]."
**Erwartetes Artefakt:** Ein konfigurierter Hybrid-Agent mit dokumentierter Trennung von statischen und dynamischen Wissensquellen, inklusive Canary-Test-Protokoll das beide Ordner-Typen als Quellen nachweist.
**Fallstricke (≥2 spezifisch):**
- Synced Folder für Brand-Regeln nutzen weil "automatisch bequemer" → Synced Folder ist auf 200 Dateien begrenzt und synchronisiert nur was im SharePoint-Ordner liegt; wenn Brand-Regeln aus Versehen aus SharePoint gelöscht werden, verschwindet das Wissen; kritisches Kern-Wissen gehört ausschließlich in Library Folders.
- Keine System-Instructions zur Ordner-Priorisierung schreiben → bei widersprüchlichen Informationen (alte Preisinformation in Library Folder vs. neue in Synced Folder) wählt der Agent willkürlich; explizite Priorisierungs-Regel ist Pflicht.
**Anschluss-Szenario:** S-WR-029

### S-WR-029 Semantische Suchanfragen für präziseres Retrieval formulieren

**Wann nutzen (Trigger):** Der Agent liefert bei der Frage "Was kostet das Produkt?" immer generische Antworten aus dem falschen Dokument, obwohl die Preislistendatei im Ordner liegt — das Team fragt warum kurze Fragen schlechte Ergebnisse liefern und wie man Suchanfragen formuliert die das richtige Chunk abrufen. (Quelle: 12 Q68)
**Strategisches Ziel:** Das Team in der Formulierung semantisch präziser Retrieval-Anfragen schulen, sodass die Vektorsuche (k=50) konsistent die relevantesten Chunks abruft statt semantisch ähnlicher aber thematisch falscher Dokumente.
**Hands-on Ergebnis:** Ein Schulungs-Leitfaden mit 5 Retrieval-Optimierungsregeln und 10 Vorher/Nachher-Prompt-Paaren der als Onboarding-Material im WO-Basis-Ordner abgelegt wird.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner + Chat (Retrieval-Optimierung)
**Vorgehen (3 Schritte):**
1. Erkläre die Vektor-Suchmechanik praxisnah: "Was kostet das Produkt?" erzeugt einen Embedding-Vektor der semantisch auch Dokumente zu "Wert", "Investition" und "Budget" zurückgibt; "Aktueller DACH-Listenpreis für Produkt X in EUR, Q2-2025" erzeugt einen spezifischen Vektor der direkt auf Preislisten-Chunks zeigt.
2. Formuliere 5 Retrieval-Optimierungsregeln: (a) Produktname vollständig ausschreiben; (b) Zeitraum oder Markt-Region nennen wenn relevant; (c) Dokumenttyp andeuten ("in der Preisliste", "laut FAQ"); (d) Fachbegriff aus dem Dokument selbst verwenden; (e) Bei Misses den Prompt um Synonyme erweitern die im Quelldokument vorkommen.
3. Erstelle 10 Vorher/Nachher-Prompt-Paare (schlecht→gut) als MD-Tabelle; speichere als `retrieval-suchanfragen-leitfaden-v1.md` im WO-Basis-Ordner; referenziere im Team-Onboarding.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Retrieval-Trainerin [Persona]. Überarbeite die folgenden 10 Suchanfragen so dass sie präzises Retrieval aus einem Langdock-Wissensordner auslösen [Task]. Kontext: Langdock nutzt semantische Vektorsuche mit 1536-dimensionalen Embeddings; kurze generische Fragen liefern semantisch ähnliche aber thematisch falsche Chunks; spezifische Fachbegriffe aus dem Zieldokument verbessern die Trefferquote [Context]. Liefere eine Tabelle mit Original-Anfrage, überarbeiteter Anfrage und Begründung der Verbesserung [Format]."
**Erwartetes Artefakt:** Ein Schulungs-Leitfaden mit 10 Vorher/Nachher-Prompt-Paaren als MD-Datei im WO-Basis-Ordner, verwendbar als Onboarding-Material für neue Team-Mitglieder.
**Fallstricke (≥2 spezifisch):**
- Retrieval-Optimierung auf den Prompt-Stil reduzieren und vergessen die Quelldokumente zu optimieren → die beste Suchanfrage findet nichts wenn das Zieldokument schlechte Schlüsselbegriffe enthält; Retrieval-Optimierung ist immer ein zwei-seitiger Prozess (Frage UND Dokument).
- Leitfaden als einmalige Schulung behandeln und nie aktualisieren → wenn neue Dokumente mit anderen Schlüsselbegriffen hochgeladen werden, können alte Retrieval-Tipps irreführend sein; Leitfaden nach jedem größeren Wissensordner-Update prüfen.
**Anschluss-Szenario:** S-WR-030

### S-WR-030 Migration von einem anderen RAG-System zu Langdock-Wissensordnern

**Wann nutzen (Trigger):** Das Team wechselt von einer bestehenden SharePoint-basierten Knowledge-Base zu Langdock-Wissensordnern und muss 150 Dokumente migrieren — dabei sollen Dokumentenqualität verbessert werden (schlechte OCR-Scans, unstrukturierte Word-Dokumente) ohne die Migration zu einem Jahresprojekt zu machen. (Quelle: 12 Q67)
**Strategisches Ziel:** Einen strukturierten Migrations-Workflow definieren der bestehende Dokumente batchweise prüft, bereinigt und in Langdock-optimierte Formate überführt — mit klarer Priorisierung der wichtigsten Dokumente für die ersten vier Wochen.
**Hands-on Ergebnis:** Ein Migrations-Tracking-Board mit 150 Dokumenten, kategorisiert nach Migrations-Aufwand (Niedrig/Mittel/Hoch), und ein priorisierter Batch-Plan für die ersten 30 Tage.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Migrations-Assistent) + Library Folder + Canvas (Tracking-Board)
**Vorgehen (4 Schritte):**
1. Kategorisiere alle 150 Dokumente nach Migrations-Aufwand: Niedrig = saubere DOCX/PDF ohne Scan-Probleme (direkt hochladen); Mittel = strukturiertes PDF mit Mehrspaltenlayout (Konvertierung in MD empfohlen); Hoch = eingescannte Dokumente mit schlechter OCR-Qualität (manuelle Neuschreibung oder OCR-Re-Processing nötig).
2. Priorisiere die 30 wichtigsten Dokumente (nach Nutzungshäufigkeit oder strategischer Relevanz) für die erste Migrations-Woche; handle diese manuell und sorgfältig; lade die restlichen 120 in drei Batches über vier Wochen hoch.
3. Führe nach jedem Batch einen Canary-Test durch: 10 typische Fragen die das Team stellt; dokumentiere Retrieval-Misses und passe die Dokument-Aufbereitung an bevor der nächste Batch startet.
4. Erstelle ein Migrations-Log als MD-Datei: Dokument-Name, Migrations-Status (Ausstehend / In Bearbeitung / Hochgeladen / Getestet), Auffälligkeiten, Verantwortliche Person.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Dokumentenmigrations-Beraterin [Persona]. Kategorisiere die folgende Liste von 150 Dokumenten nach dem Aufwand für die Migration in Langdock-Wissensordner [Task]. Kontext: Langdock unterstützt PDF, DOCX, MD, TXT, PPTX; max. 1.000 Dateien pro Library Folder; eingescannte Dokumente mit schlechter OCR werden fehlerhaft indiziert; Markdown liefert bessere Chunk-Qualität als komplexe PDFs [Context]. Erstelle eine Tabelle mit Dokument-Name, Migrations-Aufwand (Niedrig/Mittel/Hoch), Begründung, Empfohlenes Zielformat [Format]."
**Erwartetes Artefakt:** Ein Migrations-Tracking-Board mit priorisiertem Batch-Plan für 30 Tage und ein Canary-Test-Set, das nach jedem Batch-Upload ausgeführt wird.
**Fallstricke (≥2 spezifisch):**
- Alle 150 Dokumente auf einmal hochladen ohne Qualitätsprüfung → schlechte Dokumente vergiften den Wissensordner und verursachen Retrieval-Probleme die schwer zu diagnostizieren sind; batchweise Migration mit Test-Gate ist Pflicht.
- OCR-problematische Scans "trotzdem hochladen und schauen was passiert" → Langdock indiziert den fehlerhafte OCR-Text ohne Warnung; das Ergebnis sind Chunks mit korrumpierten Zeichen die nie die richtige Suchanfrage matchen; Re-OCR oder Neuschreibung vor dem Upload ist zwingend.
**Anschluss-Szenario:** S-WR-031

### S-WR-031 Produkt-Dokumentation als Wissensordner für den Support-Agenten

**Wann nutzen (Trigger):** Das Support-Team verwendet einen Langdock-Agenten für Kundenfragen — der Agent gibt häufig veraltete oder unvollständige Antworten, weil die Produkt-Dokumentation als einziges 200-seitiges PDF im Wissensordner liegt und das Per-Document-Cap immer denselben Abschnitt zurückgibt. (Quelle: sources/10 S-039; A-34)
**Strategisches Ziel:** Die Produkt-Dokumentation in einen Wissensordner mit atomaren, thematisch getrennten Dateien umstrukturieren, sodass der Support-Agent jede Art von Produktfrage mit einer korrekten, zitierten Antwort beantworten kann.
**Hands-on Ergebnis:** Ein "WO-Produkt-Docs" Library Folder mit 15-30 atomaren MD-Dateien pro Themenbereich (Installation, Fehlermeldungen, Konfiguration, FAQ, Versionshistorie), verbunden mit dem Support-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Chat (Dokumenten-Atomisierung) + Agent-Konfiguration
**Vorgehen (4 Schritte):**
1. Analysiere die Produkt-Dokumentation auf ihre Themenstruktur: liste alle H1/H2-Kapitel auf; identifiziere Themen-Cluster die eigenständig für sich stehen (Installation, Konfiguration, Fehlerbehebung, Glossar, Versionshistorie, häufige Fragen).
2. Zerlege das Gesamt-Dokument in atomare Dateien pro Themen-Cluster: `produkt-x-installation-v2.md`, `produkt-x-fehlerbehebung-verbindungsprobleme.md`; jede Datei beginnt mit dem Produktnamen und dem Thema in der H1-Überschrift.
3. Erstelle eine "VERSIONSHISTORIE.md" als separate Datei die nur Changelog-Einträge enthält — diese Datei wird bei Software-Updates aktualisiert und stellt sicher dass der Agent immer auf die neueste Version verweist.
4. Teste den Support-Agenten mit den 10 häufigsten Support-Tickets als Canary-Prompts; prüfe ob jede Antwort eine Quellenangabe aus dem WO-Produkt-Docs enthält.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Support-Assistent für Produkt X [Persona]. Beantworte die folgende Kunden-Support-Anfrage zu einem Installationsproblem [Task]. Stütze dich ausschließlich auf die Dokumente im Wissensordner WO-Produkt-Docs; wenn du keine Antwort findest, schreibe 'Ich eskaliere diesen Fall an den Level-2-Support' [Context]. Format: Klare Schritt-für-Schritt-Anleitung, max. 5 Schritte, mit Quellenangabe am Ende [Format]."
**Erwartetes Artefakt:** Ein WO-Produkt-Docs Library Folder mit 15-30 atomaren MD-Dateien, ein getesteter Support-Agent mit nachgewiesenen Citations für die 10 häufigsten Support-Fragen.
**Fallstricke (≥2 spezifisch):**
- Versionshistorie in jede atomare Datei einbetten statt als separate Datei → wenn eine neue Software-Version erscheint, müssen 30 Dateien aktualisiert werden statt einer; Versionshistorie immer als eigenständige Datei führen.
- Support-Agent ohne explizite Eskalations-Anweisung konfigurieren → wenn kein Dokument die Antwort enthält, halluziniert der Agent; System-Instructions müssen immer eine Fallback-Formulierung für "Weiß ich nicht" enthalten.
**Anschluss-Szenario:** S-WR-032

### S-WR-032 A/B-Test für Wissensordner-Layouts durchführen

**Wann nutzen (Trigger):** Das Team ist unsicher ob es die Brand-Guidelines als drei große Dateien (je ~30 KB) oder als zwölf kleine atomare Dateien (je ~8 KB) im Wissensordner ablegen soll — die Theorie sagt "atomarer ist besser", aber niemand hat es für diesen Bestand konkret getestet. (Quelle: 10 S-017; A-34)
**Strategisches Ziel:** Einen systematischen A/B-Vergleich zweier Wissensordner-Strukturen durchführen, um empirisch zu bestimmen welches Datei-Layout für die spezifischen Dokumente des Teams die höchste Retrieval-Präzision liefert.
**Hands-on Ergebnis:** Ein A/B-Test-Protokoll mit 10 Canary-Prompts, Retrieval-Scores für beide Layouts und eine klare Empfehlung welche Struktur produktiv eingesetzt werden soll.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (zwei Test-Ordner) + Chat (Canary-Test) + Citations-Analyse
**Vorgehen (4 Schritte):**
1. Erstelle zwei identisch benannte aber unterschiedlich strukturierte Test-Ordner: "WO-Test-A" (3 große Dateien, jede ~10 Seiten) und "WO-Test-B" (12 kleine atomare Dateien, jede ~1-2 Seiten, strikt Ein-Thema-pro-Datei).
2. Definiere 10 Canary-Prompts die repräsentativ für echte Nutzeranfragen sind: mische einfache Direktfragen ("Welche Primärfarbe hat die Marke?"), komplexere Kombinations-Fragen ("Welche Tonalität und welche Farben dürfen in einer LinkedIn-Anzeige kombiniert werden?") und Edge-Cases.
3. Stelle dieselben 10 Fragen jeweils mit WO-Test-A und WO-Test-B als aktivem Wissensordner; bewerte jede Antwort nach drei Kriterien: (a) Citation vorhanden (J/N), (b) Inhalt faktisch korrekt (1-5), (c) Vollständigkeit der Antwort (1-5).
4. Aggregiere die Scores; das Layout mit dem höheren Gesamt-Score wird zur produktiven Ordner-Struktur; lösche den Verlierer-Ordner und dokumentiere das Test-Ergebnis im WO-Basis-Ordner.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Retrieval-Qualitätsprüferin [Persona]. Beantworte die folgende Frage zu unseren Brand Guidelines und zeige explizit welches Dokument aus dem Wissensordner du verwendet hast [Task]. Kontext: Dieser Test vergleicht zwei Wissensordner-Layouts; Citation mit Dateiname ist Pflicht für die Auswertung; schreibe explizit 'Kein Treffer' wenn kein relevantes Dokument gefunden wurde [Context]. Antwort mit Inhalt und Citation in getrennten Absätzen [Format]."
**Erwartetes Artefakt:** Ein A/B-Test-Protokoll als MD-Tabelle mit Retrieval-Scores für beide Layouts und einer dokumentierten Entscheidung für die produktive Wissensordner-Struktur.
**Fallstricke (≥2 spezifisch):**
- Beide Test-Ordner gleichzeitig an denselben Agenten anbinden → der Agent greift auf beide Ordner parallel zu und die Ergebnisse können nicht mehr eindeutig einem Layout zugeordnet werden; immer einen Ordner pro Test-Run aktivieren, den anderen deaktivieren.
- A/B-Test mit zu wenigen oder zu spezifischen Canary-Prompts durchführen → 5 Fragen sind zu wenig für statistisch belastbare Aussagen; mix aus einfachen, mittleren und komplexen Fragen verwenden; mindestens 10 Fragen.
**Anschluss-Szenario:** S-WR-033

### S-WR-033 Wissensordner-Bestand für einen neuen Agenten von Null aufbauen

**Wann nutzen (Trigger):** Ein neuer "Tender-Agent" für Ausschreibungs-Antworten soll aufgebaut werden — das Team muss von Grund auf entscheiden welche Dokumente in den Wissensordner gehören, ohne Vorerfahrung aus bestehenden Ordnern zu haben. (Quelle: 12 Q51; A-35)
**Strategisches Ziel:** Einen strukturierten Aufbau-Prozess für einen neuen Agenten-Wissensordner durchführen: Bedarfsanalyse, Dokumenten-Selektion, Qualitätsprüfung und initiales Testing — von Null bis einsatzbereit in einer Woche.
**Hands-on Ergebnis:** Einen einsatzfähigen Library Folder mit 8-15 kuratierten Dokumenten, einem dokumentierten Aufbau-Prozess und einem initialen Canary-Test-Set für den Tender-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Agent-Konfiguration + Chat (Bedarfsanalyse)
**Vorgehen (5 Schritte):**
1. Bedarfsanalyse: liste alle Fragen die der Tender-Agent realistisch beantworten muss (z.B. "Referenz-Projekte für Branche X", "Preisspanne für Service Y", "Compliance-Zertifizierungen", "Team-Credentials") — diese Fragen definieren die benötigten Dokumente.
2. Selektiere Dokumente: für jede Fragen-Kategorie identifiziere das eine präziseste Dokument das die Antwort enthält; bevorzuge atomare Einzeldateien (je Referenz-Projekt eine Datei, je Zertifizierung eine Datei) statt Sammel-Dokumente.
3. Qualitätsprüfung: prüfe jedes Dokument auf RAG-Tauglichkeit bevor es hochgeladen wird — klare H1, Fachbegriffe im Text ausgeschrieben, keine unaufgelösten Pronomen, kein komplexes Mehrspaltenlayout.
4. Lade die Dokumente hoch und führe sofort die initiale Canary-Test-Runde durch: eine Frage pro Dokument; dokumentiere die Ergebnisse als "Baseline-Qualitätsscore".
5. Optimiere Dokumente die beim ersten Test scheitern (Canary-Miss) bevor der Tender-Agent für das gesamte Team freigeschaltet wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensordner-Architektin [Persona]. Führe eine Bedarfsanalyse für einen neuen Tender-Agenten durch [Task]. Kontext: Der Agent soll Ausschreibungs-Antworten für B2B-Dienstleistungen vorbereiten; typische Fragen betreffen Referenzprojekte, Preisspannen, Compliance-Nachweise und Team-Qualifikationen [Context]. Erstelle eine Liste der benötigten Dokument-Typen mit Begründung, empfohlenem Format und Priorität (Muss/Soll/Kann) [Format]."
**Erwartetes Artefakt:** Ein einsatzfähiger WO-Tender Library Folder mit 8-15 kuratierten Dokumenten, dokumentiertem Aufbau-Prozess und einem initialen Canary-Test-Set das als monatliches Qualitäts-Benchmark wiederverwendet wird.
**Fallstricke (≥2 spezifisch):**
- Alle verfügbaren Tender-Dokumente hochladen ohne Selektion ("mehr ist mehr") → ein nicht selektierter Ordner enthält veraltete Referenzen, überschriebene Angebote und Duplikate die das Retrieval vergiften; Selektion ist unverzichtbar.
- Initiale Canary-Tests überspringen weil "der Agent funktioniert bestimmt" → ohne Test-Gate existiert kein Baseline-Score; wenn Nutzer später Fehler melden, fehlt der Vergleichswert für die Diagnose.
**Anschluss-Szenario:** S-WR-034

### S-WR-034 Retrieval-Schwellenwert-Effekte verstehen und mit Prompt-Design steuern

**Wann nutzen (Trigger):** Der Agent antwortet auf bestimmte Fragen mit konfidenten aber falschen Informationen, weil das System einen semantisch ähnlichen aber inhaltlich falschen Chunk zurückgegeben hat — das Team möchte verstehen wie der Retrieval-Scoring-Mechanismus funktioniert und wie Prompts helfen die Qualitätsschwelle effektiv zu steuern. (Quelle: 12 Q57, Q60)
**Strategisches Ziel:** Den Retrieval-Scoring-Mechanismus von Langdock praxisnah erklären und konkrete Prompt-Design-Techniken einführen, die den Agenten zwingen nur bei hoher Konfidenz zu antworten und bei unsicheren Treffern explizit auf das Limit hinzuweisen.
**Hands-on Ergebnis:** Ein Prompt-Design-Leitfaden mit 5 Techniken zur Konfidenz-Steuerung im Retrieval-Kontext sowie ein überarbeitetes System-Instruction-Template für alle Wissensordner-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner + Agent-Konfiguration + System-Instructions
**Vorgehen (4 Schritte):**
1. Erkläre den Scoring-Mechanismus: k=50 gibt die 50 semantisch ähnlichsten Chunks zurück unabhängig davon ob die Übereinstimmung hoch oder niedrig ist; ein Chunk über "Produktpreise 2023" kann bei einer Frage zu "Produktwert 2025" als Treffer erscheinen weil "Produkt" + "Preis" semantisch ähnlich sind — das System kennt keine Konfidenz-Schwelle die automatisch blockiert.
2. Einführung Technik 1: "Explizite Quellenangabe als Pflicht" — im Prompt: "Wenn du keinen direkten Quellenbeleg findest, schreibe 'Kein verlässlicher Treffer — bitte direkt im Originaldokument prüfen' statt zu halluzinieren."
3. Einführung Technik 2: "Hypothesen-Marker" — im Prompt: "Markiere jeden Satz der auf Schlussfolgerung statt direktem Zitat basiert mit dem Präfix [Ableitung]."
4. Überarbeite das System-Instruction-Template aller Wissensordner-Agenten: füge standardmäßig eine "Konfidenz-Klausel" ein die den Agenten anweist bei unsicheren Treffern zu eskalieren statt zu raten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Qualitätssicherungs-Agentin [Persona]. Beantworte die folgende Frage zu unseren Produktkonditionen und bewerte selbst deine Konfidenz [Task]. Kontext: Wenn du einen direkten Beleg im Wissensordner findest, zitiere ihn mit Dateiname; wenn der Treffer unsicher ist, schreibe '[Niedriger Konfidenz-Score — bitte Original prüfen]'; erfinde niemals fehlende Details [Context]. Format: Antwort in zwei Teilen: Inhalt (mit Citation) und Konfidenz-Einschätzung (Hoch/Mittel/Niedrig) [Format]."
**Erwartetes Artefakt:** Ein überarbeitetes System-Instruction-Template für alle Wissensordner-Agenten mit Konfidenz-Klausel sowie ein Prompt-Design-Leitfaden mit 5 Konfidenz-Steuerungstechniken.
**Fallstricke (≥2 spezifisch):**
- "Niedriger Konfidenz-Score" als Entschuldigung für generelle Zurückhaltung missbrauchen → der Agent darf nicht bei jeder zweiten Frage eskalieren; Konfidenz-Klauseln nur für Fälle wo tatsächlich kein direkter Quellenbeleg vorliegt; Canary-Tests müssen sicherstellen dass der Agent klare Fragen direkt beantwortet.
- System-Instructions nur in einem Agenten aktualisieren und vergessen die anderen Agenten nachzuziehen → führe eine zentrale System-Instructions-Vorlage in einer README-Datei im WO-Basis-Ordner; alle Agenten-Konfigurationen referenzieren dieses Template.
**Anschluss-Szenario:** S-WR-035

### S-WR-035 Wissensordner für Produkt-Roadmap-Kommunikation nach innen aufbauen

**Wann nutzen (Trigger):** Das Marketing-Team muss laufend Produkt-Feature-Ankündigungen kanalspezifisch aufbereiten — aber der Produkt-Manager liefert Roadmap-Informationen als strukturlose Notion-Seiten, Slack-Nachrichten und PowerPoint-Slides, was zu inkonsistenten Feature-Beschreibungen in verschiedenen Marketing-Kanälen führt.
**Strategisches Ziel:** Einen Wissensordner als zentrales Interface zwischen Produkt-Management und Marketing aufbauen, in dem validierte Feature-Beschreibungen in einem strukturierten Format abgelegt werden, das der Marketing-Agent direkt für Kanal-Adaptierungen abrufen kann.
**Hands-on Ergebnis:** Ein "WO-Roadmap" Synced Folder (verbunden mit dem Google-Drive-Ordner des Produkt-Managers) mit einer Datei-Vorlage für Feature-Beschreibungen, die der Marketing-Agent für SEO-Texte, Social-Posts und Pressemitteilungen verwendet.
**Eingesetzte Langdock-Fähigkeit(en):** Synced Folder (Google Drive) + Library Folder + Agent-Konfiguration
**Vorgehen (4 Schritte):**
1. Erstelle eine verbindliche Feature-Beschreibungs-Vorlage als MD-Template: H1 = Feature-Name, Abschnitt 1 = Kurzbeschreibung (1-2 Sätze, marketing-tauglich), Abschnitt 2 = Technische Details (für FAQ), Abschnitt 3 = Zielgruppe + Nutzen, Abschnitt 4 = Freigabe-Status und Launch-Datum.
2. Lege die Vorlage im Google-Drive-Ordner des Produkt-Managers ab; Produkt-Manager füllt für jedes neue Feature eine Kopie aus und legt sie im selben Ordner ab; Langdock synchronisiert den Ordner täglich als Synced Folder.
3. Verbinde den Marketing-Agenten mit dem WO-Roadmap-Synced-Folder als Wissensordner; der Agent kann jetzt Feature-Beschreibungen für LinkedIn, Blog, PR und Social Ads aus der validierten Quelle abrufen.
4. Definiere einen Governance-Schritt: Marketing darf Feature-Beschreibungen nicht im Wissensordner ändern; wenn eine Beschreibung unvollständig ist, eskaliert der Agent zurück an Produkt-Management ("Fehlende Information: [Feld] — bitte Vorlage vervollständigen").
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Produktmarketing-Managerin [Persona]. Schreibe einen LinkedIn-Ankündigungs-Post für das neue Feature [Feature-Name] [Task]. Nutze ausschließlich die Feature-Beschreibung aus dem Wissensordner WO-Roadmap; wenn der Freigabe-Status 'Draft' ist, schreibe 'Dieses Feature ist noch nicht für externe Kommunikation freigegeben' [Context]. Format: LinkedIn-Post max. 200 Wörter, sachlich-enthousiast, mit einem Call-to-Action [Format]."
**Erwartetes Artefakt:** Ein WO-Roadmap Synced Folder mit verbindlicher Feature-Vorlage, ein Marketing-Agent der Feature-Beschreibungen kanalspezifisch adaptiert, und eine Governance-Regel die unfertige Features blockiert.
**Fallstricke (≥2 spezifisch):**
- Produkt-Manager füllt Vorlage nicht konsequent aus (leere Felder, fehlende Zielgruppen-Angaben) → Agent gibt unvollständige Marketing-Texte aus; Vorlage muss Pflichtfelder klar markieren und der Agent muss bei fehlenden Pflichtfeldern explizit eskalieren statt mit Platzhaltern zu füllen.
- Synced Folder synchronisiert alle Dateien im Google-Drive-Ordner, auch Drafts und Notizen → Ordner im Google Drive muss sauber gehalten werden; nur fertige Feature-Beschreibungen im Sync-Ordner ablegen, Drafts in einem separaten Unter-Ordner außerhalb des Sync-Bereichs.
**Anschluss-Szenario:** S-WR-036

### S-WR-036 Spot-Check-Protokoll für schleichende Retrieval-Qualitätsverschlechterung

**Wann nutzen (Trigger):** Ein Wissensordner-Agent ist seit sechs Monaten in Betrieb — das Team bemerkt, dass die Antwortqualität schleichend schlechter geworden ist, aber niemand hat dokumentiert wann das begann oder was sich geändert hat. (Quelle: A-34)
**Strategisches Ziel:** Einen monatlichen Spot-Check-Prozess einführen, der Retrieval-Qualitätsverschlechterungen früh erkennt, bevor Nutzer systematisch falsche Informationen erhalten — mit einem definierten Eskalations-Protokoll bei mehr als 2 von 5 Canary-Misses.
**Hands-on Ergebnis:** Ein wiederverwendbares Spot-Check-Protokoll als MD-Datei mit 5 Canary-Prompts, einer Bewertungs-Skala und einem Eskalations-Trigger, das monatlich in 30 Minuten durchgeführt werden kann.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner + Chat (Canary-Test) + Library Folder (Protokoll-Ablage)
**Vorgehen (4 Schritte):**
1. Definiere 5 permanente Canary-Prompts die über alle Agenten-Versionen hinweg dieselben Fragen stellen: je eine Frage zu den fünf wichtigsten Themen im Wissensordner (z.B. "Was ist unsere Primärfarbe?", "Welcher Preis gilt für Produkt X im DACH?", "Welche Kanal-Regeln gelten für LinkedIn?"); diese Fragen werden nie geändert.
2. Führe den Spot-Check monatlich durch (30 Minuten): stelle alle 5 Canary-Prompts, dokumentiere Citation (J/N), inhaltliche Korrektheit (1-5) und Vollständigkeit (1-5) in der Protokoll-Tabelle.
3. Eskalations-Trigger: wenn ≥2 von 5 Canary-Prompts einen Miss produzieren oder einen Score ≤3 erhalten, wird ein Diagnose-Audit nach S-WR-010 ausgelöst bevor der Agent weiter genutzt wird.
4. Archiviere jeden Spot-Check-Bericht als `SPOT-CHECK-[JJJJ-MM]-[Agent-Name].md` im WO-Basis-Ordner; nach 12 Monaten ist der Trend-Verlauf der Qualitäts-Scores als Zeitreihe sichtbar.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Qualitäts-Auditeurin [Persona]. Beantworte die folgende Canary-Frage und gib explizit an welches Dokument aus dem Wissensordner du verwendet hast [Task]. Kontext: Dieser Test ist Teil eines monatlichen Spot-Check-Protokolls; Citation mit Dateiname ist Pflicht; schreibe explizit 'Retrieval-Miss: Kein Treffer für [Begriff]' wenn kein Beleg gefunden wird [Context]. Format: Antwort (1-3 Sätze) + Citation (Dateiname) + Konfidenz (Hoch/Mittel/Niedrig) [Format]."
**Erwartetes Artefakt:** Ein wiederverwendbares Spot-Check-Protokoll als MD-Datei mit 5 permanenten Canary-Prompts, Bewertungs-Skala und Eskalations-Trigger, archiviert im WO-Basis-Ordner für Trend-Analyse.
**Fallstricke (≥2 spezifisch):**
- Canary-Prompts nach jeder Wissensordner-Änderung anpassen → Canary-Prompts dürfen sich nicht verändern wenn sich der Wissensordner ändert; das ist Sinn des Tests; wenn neue Themen hinzukommen, werden neue Canary-Prompts zu einem separaten Erweiterungs-Set hinzugefügt ohne die alten zu ersetzen.
- Spot-Check-Protokoll ohne kalendarische Pflicht-Erinnerung einführen → ohne feste Kalender-Einträge wird das Protokoll nach zwei Monaten nicht mehr gelebt; je Agent eine monatliche Kalender-Erinnerung mit dem Protokoll als Anhang einrichten.
**Anschluss-Szenario:** S-WR-037

### S-WR-037 Wissensordner-Export und Portabilitätsstrategie für Vendor-Risiko-Management

**Wann nutzen (Trigger):** Die IT-Leitung fragt: "Was passiert mit unseren Wissensordner-Inhalten wenn wir Langdock wechseln oder der Anbieter nicht mehr verfügbar ist?" — das Team hat keine Backup-Strategie für den Wissensordner-Bestand. (Quelle: A-03)
**Strategisches Ziel:** Eine Portabilitätsstrategie für alle Wissensordner-Inhalte entwickeln, die sicherstellt dass Marketing-Kern-Wissen nicht ausschließlich in der Langdock-Plattform eingeschlossen ist sondern in plattform-unabhängigen Formaten existiert.
**Hands-on Ergebnis:** Ein Backup-Protokoll das quartalsweise alle Library-Folder-Inhalte in einem neutralen Format (MD/PDF) außerhalb der Plattform sichert, sowie eine Export-Checkliste für einen etwaigen Plattformwechsel.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder (Export-Management) + Chat (Backup-Planung)
**Vorgehen (4 Schritte):**
1. Inventarisiere den gesamten Wissensordner-Bestand nach Portabilitäts-Risiko: Dateien die in Langdock hochgeladen wurden (niedrig — externe Kopie existiert), Dokumente die ausschließlich im Langdock-Canvas erstellt wurden (hoch — Originalformat ist die Plattform) und Synced-Folder-Inhalte (kein Risiko — Original liegt im SharePoint/Drive).
2. Für Canvas-erstellte Dokumente: exportiere quartalsweise als Markdown oder PDF; speichere im zentralen SharePoint-Ordner außerhalb der Plattform; Dateiname entspricht dem Langdock-Dateinamen für einfache Zuordnung.
3. Dokumentiere den Wechsel-Drill: Eine jährliche Übung die das Team 30 Minuten lang den Ablauf eines Plattformwechsels simuliert — welche Dokumente existieren außerhalb? Welche müssen neu erstellt werden? Wo liegt die System-Instructions-Vorlage?
4. Erstelle eine Export-Checkliste als MD-Datei: Welche Ordner enthalten kritische Inhalte, welche Formate werden für den Export gewählt, wer ist für den Export verantwortlich, wo werden die Backups gespeichert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Risiko-Beraterin [Persona]. Erstelle eine Portabilitätsstrategie für unsere Langdock-Wissensordner [Task]. Kontext: Wir haben 6 Library Folders mit 280 Dokumenten; einige Dokumente wurden ausschließlich im Canvas erstellt und existieren nur in Langdock; ein Plattformwechsel muss in maximal 2 Wochen vollziehbar sein [Context]. Liefere eine Export-Checkliste mit Dokumententyp, Backup-Format, Backup-Ort und verantwortliche Person [Format]."
**Erwartetes Artefakt:** Eine Export-Checkliste als MD-Datei im WO-Basis-Ordner, ein dokumentierter quartalsweiser Backup-Prozess und ein Wechsel-Drill-Plan für den Jahres-Review.
**Fallstricke (≥2 spezifisch):**
- Synced-Folder-Inhalte als gesichert betrachten weil "sie im SharePoint liegen" → SharePoint-Ordner können ebenfalls gelöscht oder verschoben werden; sicherstellen dass SharePoint-Quellordner eigene Backup-Regeln haben unabhängig von Langdock.
- Canvas-Dokumente manuell exportieren ohne Namenskonvention → ohne eindeutige Namenskonvention ist nach einem Jahr nicht mehr klar welcher Export zu welchem Langdock-Dokument gehört; Backup-Dateinamen müssen dem Langdock-Dateinamen 1:1 entsprechen.
**Anschluss-Szenario:** S-WR-038

### S-WR-038 Einscankataloge mit schlechter OCR-Qualität vor dem Upload reparieren

**Wann nutzen (Trigger):** Das Team versucht einen alten Produktkatalog aus 2019 (eingescanntes PDF, 80 Seiten) in den Wissensordner hochzuladen — nach dem Upload liefert der Agent bei Produktfragen korrumpierte Textreste wie "Pr0dukt X k0stet €2.9,99" weil die OCR des Scans fehlerhaft war. (Quelle: 12 Q67)
**Strategisches Ziel:** Einen praktischen Workflow für die Aufbereitung von OCR-problematischen Scan-Dokumenten entwickeln, der aus fehlerhaften Scans hochwertige RAG-taugliche MD-Dateien erzeugt ohne jede Seite manuell abtippen zu müssen.
**Hands-on Ergebnis:** 3-5 saubere MD-Dateien aus dem eingescannten Produktkatalog (atomisiert nach Produktgruppen), die Canary-Tests mit korrekten Citations bestehen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (direkter Anhang für OCR-Korrekturen) + Library Folder
**Vorgehen (4 Schritte):**
1. Lade das fehlerhafte Scan-PDF als direkten Chat-Anhang (nicht in den Wissensordner) hoch; nutze das Vision-Modell oder Chat um die OCR-Fehler zu identifizieren: "Identifiziere alle Zeichen-Fehler in diesem Dokument und liste die korrumpierten Passagen auf."
2. Lasse den Chat eine bereinigte Version des Textes erstellen: "Korrigiere alle OCR-Fehler im folgenden Text; wenn ein Begriff nicht lesbar ist, markiere ihn als [UNLESERLICH] statt zu raten."
3. Zerlege den korrigierten Text nach dem Ein-Thema-pro-Datei-Prinzip in atomare MD-Dateien pro Produktgruppe; jede Datei enthält einen klaren H1 und den Produktnamen im ersten Satz.
4. Führe Canary-Tests durch: spezifische Produktfragen müssen jetzt korrekte Citations aus den MD-Dateien liefern; ein [UNLESERLICH]-Tag in einer Antwort zeigt an wo noch manuelle Nacharbeit nötig ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Dokumenten-Restauratorin [Persona]. Der folgende Text stammt aus einer fehlerhaften OCR-Erkennung eines eingescannten Produktkatalogs [Task]. Kontext: Häufige OCR-Fehler sind: 0 statt O, 1 statt l, Leerzeichen in Zahlen (2. 999 statt 2.999), fehlende Umlaute; markiere unleserliche Stellen als [UNLESERLICH] statt zu raten [Context]. Liefere den korrigierten Text als sauberes Markdown mit H1 für den Produktnamen und einer Tabelle für Preis und Spezifikationen [Format]."
**Erwartetes Artefakt:** 3-5 saubere MD-Dateien aus dem eingescannten Katalog, bereit für den Library-Folder-Upload, mit dokumentierten [UNLESERLICH]-Stellen die manuell nachgeprüft werden müssen.
**Fallstricke (≥2 spezifisch):**
- OCR-Korrekturen an das Modell delegieren ohne Human-Review der Zahlenwerte → bei Preisangaben kann ein OCR-Fehler "€2.999" in "€299" korrumpieren; alle Zahlen im korrigierten Text müssen gegen die Original-Quelle (gedruckter Katalog) manuell verifiziert werden.
- Korrigiertes Dokument als ein Gesamt-PDF speichern statt in atomare MD-Dateien aufzuteilen → ein 80-seitiges korrigiertes Dokument hat dasselbe Per-Document-Cap-Problem wie das Original; atomare Aufteilung ist auch nach der OCR-Korrektur Pflicht.
**Anschluss-Szenario:** S-WR-039

### S-WR-039 Wissensordner-Governance-Board für Marketing-Direktoren etablieren

**Wann nutzen (Trigger):** Ein 25-köpfiges Marketing-Team nutzt Langdock seit 9 Monaten — der Wissensordner-Bestand ist organisch auf 340 Dateien in 8 Ordnern angewachsen, die Verantwortlichkeiten sind unklar, veraltete Dokumente werden nicht bereinigt und neue Agenten werden ohne Abstimmung mit bestehenden Ordnern verbunden. (Quelle: A-35; 12 Q66, Q70)
**Strategisches Ziel:** Ein schlankes Governance-Board für alle Wissensordner einrichten, das Verantwortlichkeiten definiert, Änderungsprozesse regelt und als RACI-Modell dokumentiert ist — Aufwand nicht mehr als 2 Stunden pro Monat für die Direktion.
**Hands-on Ergebnis:** Ein Governance-RACI-Dokument als MD-Datei im WO-Basis-Ordner mit definierten Rollen (Owner, Approver, Contributor, Informed), einem Änderungs-Antragsformular und einem monatlichen Review-Kalender.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Chat (RACI-Entwurf) + Canvas
**Vorgehen (4 Schritte):**
1. Definiere das RACI-Modell für die Wissensordner-Governance: Owner = Marketing-Direktion (genehmigt Strukturänderungen), Approver = Team-Leads pro Bereich (genehmigen neue Dokumente in ihrem Fachbereich), Contributor = Team-Mitglieder (laden Dokumente vor, Owner genehmigt), Informed = alle Nutzer der Agenten.
2. Erstelle ein Änderungs-Antragsformular: ein 5-Zeilen-Template (Antragsteller, Ordner, Datei-Name, Art der Änderung, Begründung) das jeder Contributor vor einer Änderung ausfüllt und an den Approver sendet — verhindert unkontrollierten Wildwuchs.
3. Richte einen monatlichen Governance-Termin ein (30 Minuten): offene Anträge prüfen, Spot-Check-Ergebnisse (S-WR-036) reviewen, nächste Audit-Fälligkeit prüfen.
4. Schreibe das RACI-Dokument im Canvas und speichere es als `GOVERNANCE-RACI-[JJJJ].md` im WO-Basis-Ordner; verlinke im Team-Onboarding-Dokument.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wissensmanagement-Governance-Beraterin [Persona]. Erstelle ein RACI-Dokument für die Governance unserer Langdock-Wissensordner [Task]. Kontext: 25-köpfiges Marketing-Team, 8 Library Folders, 340 Dokumente; die Direktion hat max. 2 Stunden pro Monat für Governance-Aufgaben; unkontrollierter Upload vergiftet das Retrieval [Context]. Liefere: RACI-Tabelle, Änderungs-Antragsformular (5 Zeilen), monatlicher Review-Agenda-Template [Format]."
**Erwartetes Artefakt:** Ein RACI-Governance-Dokument als MD-Datei, ein Änderungs-Antragsformular und ein monatliches Review-Template, zusammen im WO-Basis-Ordner abgelegt.
**Fallstricke (≥2 spezifisch):**
- Governance-Prozess zu komplex gestalten (mehrere Freigabeschritte, wöchentliche Meetings) → bei zu hohem Overhead wird der Prozess nach zwei Monaten umgangen; RACI-Modell muss schlanker sein als das Problem das es löst; max. 2 Stunden/Monat ist die harte Grenze.
- RACI-Dokument im Basis-Ordner ablegen ohne dem Team davon zu erzählen → ein Governance-Dokument das niemand kennt existiert nicht; aktive Kommunikation im Team-Meeting und Verlinkung im Onboarding-Dokument sind Pflicht beim Rollout.
**Anschluss-Szenario:** S-WR-040

### S-WR-040 Wissensordner als Langzeit-Lernarchiv für kampagnen-übergreifende Insights

**Wann nutzen (Trigger):** Nach jedem Kampagnen-Abschluss erstellt das Team einen Post-Mortem-Bericht — aber diese Berichte landen in SharePoint und werden nie wieder geöffnet. Bei der nächsten vergleichbaren Kampagne werden dieselben Fehler gemacht, weil kein Agent auf die historischen Learnings zugreifen kann. (Quelle: A-34; 12 Q69)
**Strategisches Ziel:** Einen "WO-Kampagnen-Learnings" Library Folder als Langzeit-Lernarchiv aufbauen, in dem kampagnenübergreifende Insights in einem standardisierten Format abgelegt werden und vom Marketing-Planungs-Agenten aktiv abgerufen werden können.
**Hands-on Ergebnis:** Ein "WO-Kampagnen-Learnings" Library Folder mit einer verbindlichen Post-Mortem-Vorlage, 3 exemplarischen Einträgen aus vergangenen Kampagnen und einem Planungs-Agenten der bei neuen Kampagnen automatisch nach historischen Parallelen sucht.
**Eingesetzte Langdock-Fähigkeit(en):** Library Folder + Agent-Konfiguration + Chat (semantische Ähnlichkeitssuche)
**Vorgehen (4 Schritte):**
1. Erstelle eine standardisierte Post-Mortem-Vorlage als MD-Template: H1 = Kampagnen-Name und Jahr, Abschnitt 1 = Kampagnen-Typ und Zielgruppe, Abschnitt 2 = Was funktioniert hat (max. 3 Bullet-Points mit konkreten Zahlen), Abschnitt 3 = Was nicht funktioniert hat (max. 3 Bullet-Points), Abschnitt 4 = Empfehlungen für zukünftige ähnliche Kampagnen — jede Datei ist eine Kampagne.
2. Wandle die drei wichtigsten vergangenen Post-Mortem-Berichte in das neue Format um; lade sie als separate MD-Dateien in den WO-Kampagnen-Learnings-Ordner hoch; Dateiname: `kampagne-[Jahr]-[Kampagnen-Name]-learnings.md`.
3. Verbinde den Kampagnen-Planungs-Agenten mit WO-Kampagnen-Learnings als Wissensordner; füge in die System-Instructions ein: "Bei jeder neuen Kampagnen-Planung prüfe den Wissensordner WO-Kampagnen-Learnings nach ähnlichen historischen Kampagnen und zitiere relevante Learnings."
4. Etabliere den Post-Mortem-Upload als Pflicht-Schritt im Kampagnen-Abschluss-Prozess: der Kampagnen-Manager fügt das fertige Post-Mortem-Dokument im neuen Format als letzte Aufgabe nach dem Kampagnen-Ende in den Ordner ein — kein Abschluss ohne Eintrag.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Kampagnen-Planungsassistentin [Persona]. Wir planen eine B2B-LinkedIn-Kampagne im Mittelstand-Segment für Q3-2025 [Task]. Durchsuche den Wissensordner WO-Kampagnen-Learnings nach historischen Kampagnen mit ähnlichem Zielgruppen-Segment und Kanal; extrahiere die relevantesten Learnings und Empfehlungen [Context]. Format: Tabelle mit Spalten Kampagnen-Name, Jahres-Kontext, Relevantes Learning, Empfehlung für die neue Kampagne [Format]."
**Erwartetes Artefakt:** Ein WO-Kampagnen-Learnings Library Folder mit verbindlicher Post-Mortem-Vorlage, 3 Pilot-Einträgen und einem Planungs-Agenten der bei jeder neuen Kampagnen-Planung automatisch auf historische Parallelen verweist.
**Fallstricke (≥2 spezifisch):**
- Post-Mortem-Einträge zu lang und unstrukturiert gestalten (5+ Seiten Fließtext) → das Per-Document-Cap liefert pro Kampagnen-Datei nur einen einzigen Chunk; Vorlage muss kompakt sein (max. 1-2 Seiten) damit alle vier Abschnitte in einem einzigen Chunk Platz haben.
- Kampagnen-Learnings-Ordner nie auf Relevanz bereinigen → nach 30+ Kampagnen enthält der Ordner auch Learnings aus veralteten Kanal-Strategien (z.B. organische Reichweite auf Facebook 2020) die aktuelle Empfehlungen kontaminieren; jährlicher Relevanz-Audit mit explizitem Archivierungs-Schritt für Kampagnen-Einträge die älter als 3 Jahre sind.
**Anschluss-Szenario:** S-WR-001
