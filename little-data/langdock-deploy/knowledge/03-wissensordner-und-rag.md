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
**Anschluss-Szenario:** S-WR-001
