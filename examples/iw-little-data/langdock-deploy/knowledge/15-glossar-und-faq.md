# Glossar und FAQ — Langdock, Marketing-KI und IW-Kommunikation

> **Was diese Datei abdeckt:**
> - Glossar: präzise Definitionen der Begriffe rund um Langdock, KI/RAG, Marketing-Kommunikation und die Wirtschaftsforschungs-/Politik-Kommunikation der IW.
> - FAQ: direkte, in sich geschlossene Antworten auf häufige Fragen der IW-Kommunikation.
> - Lookup-optimiert: jeder Eintrag steht für sich (ein Retrieval-Chunk).
>
> **Was diese Datei NICHT abdeckt:**
> - Ausführliche Szenarien (dafür: Dateien 00–10, 14, 16, 17).
> - Persona/Stimme (dafür: 11–13).

## Glossar — Langdock-Plattform

**Agent (Agent):** Ein konfigurierbarer, domänenspezifischer KI-Assistent mit festem System-Prompt, angebundenem Wissen und definierten Tools, der wiederkehrende Aufgaben standardisiert und teambar speichert. Warum für die IW-Kommunikation relevant: ein Agent hält Tonalität und Faktenbasis über das gesamte Kommunikationsteam stabil. (Quelle: 00-langdock-uebersicht)

**Auto Mode (Auto Mode):** Eine Funktion, bei der Langdock automatisch das vermeintlich am besten geeignete Modell für die aktuelle Anfrage wählt. Warum für die IW-Kommunikation relevant: bequem, aber eine Kostenfalle, da eine triviale Anfrage versehentlich ein teures Frontier-Modell ansteuern kann. (Quelle: 07-modelle-und-kosten)

**BYOK (Bring Your Own Key):** Verfahren, bei dem das Unternehmen eigene API-Schlüssel der Modell-Provider hinterlegt, sodass die Token-Nutzung direkt über bestehende Provider-Verträge abgerechnet wird. Warum für die IW-Kommunikation relevant: erlaubt Nutzung ausgehandelter Rabatte und strikte Kostenstellen-Trennung, ist aber erst ab Enterprise-Tier verfügbar. (Quelle: 07-modelle-und-kosten)

**Canvas (Canvas / Document Editor):** Die kollaborative Schreiboberfläche neben dem Chat für längere Textformate wie Whitepapers, Berichte oder HTML-Templates. Warum für die IW-Kommunikation relevant: geeignet für die Ausarbeitung von Reports, Memos und Pressetexten direkt neben der Quelle. (Quelle: 00-langdock-uebersicht)

**Chunk (Text-Block):** Ein circa 2.000 Zeichen langer Textabschnitt, in den Langdock hochgeladene Dokumente für das Retrieval zerteilt (entspricht etwa 300 Wörtern). Warum für die IW-Kommunikation relevant: jeder Chunk muss auch ohne Kontext verständlich sein, sonst ruft das System unbrauchbare Studienfragmente ab. (Quelle: 03-wissensordner-und-rag)

**Citation (Quellenangabe):** Eine automatisch der Agenten-Antwort hinzugefügte, verlinkte Referenz auf die abgerufene Wissensordner-Datei, basierend auf dem exakten Dateinamen. Warum für die IW-Kommunikation relevant: erlaubt die sofortige Verifikation, aus welchem IW-Dokument eine Aussage stammt. (Quelle: 03-wissensordner-und-rag)

**Custom Instructions (Custom Instructions):** Nutzer- oder workspaceweite Vorgaben, die das Verhalten der KI dauerhaft prägen, abgegrenzt vom episodischen Memory. Warum für die IW-Kommunikation relevant: verankert Standardvorgaben wie Neutralität und Quellenpflicht für alle Anfragen. (Quelle: 01-chat-und-prompts)

**Data Analyst (Data Analyst):** Eine Fähigkeit, die tabellarische Daten (CSV/Excel, max. 30 MB) als direkten Anhang per Code auswertet, statt über das ungenauere Vektor-Retrieval. Warum für die IW-Kommunikation relevant: das richtige Werkzeug für quantitative Befragungs- oder Performance-Daten, die nicht in den Wissensordner gehören. (Quelle: 03-wissensordner-und-rag)

**Deep Research (Deep Research):** Ein Modus, der asynchron umfangreiche Web-Recherchen durchführt und strukturierte Reports liefert, im Standard-Workspace auf 15 Ausführungen pro Nutzer in 30 Tagen begrenzt. Warum für die IW-Kommunikation relevant: geeignet für strukturiertes Monitoring der wirtschaftspolitischen Debatte. (Quelle: 00-langdock-uebersicht)

**Konversations-Starter (Conversation Starter):** Vordefinierte, anklickbare Buttons in einem Agenten (max. 20, je max. 255 Zeichen), die komplexe Prompts hinter einem Klick verbergen. Warum für die IW-Kommunikation relevant: senken die Einstiegshürde und geben Best-Practice-Prompts für Standardaufgaben vor. (Quelle: 00-langdock-uebersicht)

**Library Folder (Library Folder):** Ein manuell gepflegter Wissensordner mit bis zu 1.000 Dateien für statisches, hoch-kuratiertes Kern-Wissen, bei dem das Team die Version exakt kontrolliert. Warum für die IW-Kommunikation relevant: ideal als Single Source of Truth für selten geänderte Stilrichtlinien und Kernpublikationen. (Quelle: 03-wissensordner-und-rag)

**MCP (Model Context Protocol):** Ein offener Standard, über den Langdock als Client externe MCP-Server anbindet oder selbst als MCP-Server (Endpoint) für Tools wie Claude Desktop fungiert. Warum für die IW-Kommunikation relevant: erlaubt die Anbindung spezialisierter Datenquellen ohne Anbieterbindung. (Quelle: 05-integrationen-und-mcp)

**Memory (Memory):** Das systemübergreifende Gedächtnis des Chats, das Nutzerpräferenzen speichert (max. 50 Einträge pro Nutzer), in konfigurierten Agenten jedoch standardmäßig deaktiviert ist. Warum für die IW-Kommunikation relevant: schützt das deterministische, reproduzierbare Verhalten eines Fach-Agenten. (Quelle: 00-langdock-uebersicht)

**Modell-Multiplikator (Cost Multiplier):** Die wirtschaftliche Gewichtung eines Modells relativ zum Plattform-Standard (GPT-5.2 = 1.0x), die belastbarer ist als der absolute Credit-Preis. Warum für die IW-Kommunikation relevant: erlaubt Kostenvergleiche, die unabhängig von schwankenden Preisangaben gültig bleiben. (Quelle: 07-modelle-und-kosten)

**Per-Document-Cap (Per-Document-Cap):** Die Regel, dass pro Datei und Suchanfrage meist nur ein einziger Chunk abgerufen wird, um die Dominanz großer Dokumente zu verhindern. Warum für die IW-Kommunikation relevant: erzwingt das Prinzip „ein Thema pro Datei", damit jede Studienaussage zuverlässig auffindbar bleibt. (Quelle: 03-wissensordner-und-rag)

**Skill (Skill):** Ein wiederverwendbarer, in der Library verwalteter Prompt- oder Aktionsbaustein (System-, Workspace- oder Custom-Skill), der als Inline-Werkzeug aufgerufen wird. Warum für die IW-Kommunikation relevant: kapselt wiederkehrende Redaktions-Mikrotasks wie Kürzen oder Tonalitäts-Abgleich. (Quelle: 01-chat-und-prompts)

**Synced Folder (Synced Folder):** Ein Wissensordner, der sich automatisch (alle 24 Stunden) mit externen Quellen wie Google Drive oder SharePoint abgleicht, limitiert auf 200 Dateien, max. fünf pro Agent. Warum für die IW-Kommunikation relevant: geeignet für häufig aktualisierte Quelldokumente, die extern gepflegt werden. (Quelle: 03-wissensordner-und-rag)

**Token (Token):** Die kleinste Abrechnungs- und Verarbeitungseinheit eines Sprachmodells; Input- und Output-Token bestimmen die Kosten einer Anfrage. Warum für die IW-Kommunikation relevant: lange Studientexte im Prompt treiben die Token-Kosten, weshalb sie besser in den Wissensordner gehören. (Quelle: 07-modelle-und-kosten)

**Web Search (Web Search):** Eine Agenten-Fähigkeit, die das offene Web in Echtzeit abfragt, abgegrenzt vom asynchronen Deep Research. Warum für die IW-Kommunikation relevant: nützlich für die Verifikation datums-sensitiver Fakten wie aktueller regulatorischer Fristen. (Quelle: 02-agenten-konfiguration)

**Wissensordner (Knowledge Folder):** Der Oberbegriff für indizierte Datei-Repositories (Library Folder oder Synced Folder), die einem Agenten als persistente Wissensbasis dienen. Warum für die IW-Kommunikation relevant: das Fundament für konsistente, quellengestützte Antworten eines IW-Agenten. (Quelle: 03-wissensordner-und-rag)

**Workflow (Workflow):** Eine automatisierte, mehrstufige Prozesskette, die event-basiert und ohne manuelle Chat-Interaktion abläuft, mit eigenem Budget und einem harten Stopp bei 2.000 Schritten. Warum für die IW-Kommunikation relevant: automatisiert repetitive Aufgaben wie Übersetzung oder Klassifizierung, sollte aber nie schlechte Prozesse kaschieren. (Quelle: 00-langdock-uebersicht)

## Glossar — KI- und RAG-Grundlagen

**Chunking (Chunking):** Das methodische Zerteilen eines Dokuments in kleine Text-Blöcke (in Langdock circa 2.000 Zeichen) vor der Vektor-Indizierung. Warum für die IW-Kommunikation relevant: bestimmt, wie sauber eine IW-Publikation für das Retrieval aufbereitet werden muss. (Quelle: 03-wissensordner-und-rag)

**CO-STAR (CO-STAR):** Ein Prompt-Framework mit den Komponenten Context, Objective, Style, Tone, Audience, Response als Alternative zu PTCF. Warum für die IW-Kommunikation relevant: hilfreich, wenn Tonalität und Zielpublikum (Fachöffentlichkeit, Politik, Presse) explizit gesteuert werden müssen. (Quelle: 10-prompts-und-skills)

**Embedding (Embedding):** Die Umwandlung eines Text-Blocks in einen hochdimensionalen Vektor (in Langdock 1536-dimensional), der semantische Bedeutung repräsentiert. Warum für die IW-Kommunikation relevant: kann personenbezogen sein, wenn der Quelltext Personendaten enthält, und ist daher datenschutzrelevant. (Quelle: 03-wissensordner-und-rag)

**Few-Shot (Few-Shot Prompting):** Eine Technik, bei der dem Modell im Prompt einige Beispiel-Paare vorgegeben werden, um Format und Stil zu steuern. Warum für die IW-Kommunikation relevant: erzwingt einheitliche Formate, etwa für wiederkehrende Kurzmeldungen. (Quelle: 01-chat-und-prompts)

**Fine-Tuning (Fine-Tuning):** Das Nachtrainieren eines Basismodells auf domänenspezifischen Daten, abzugrenzen von der prompt- und RAG-basierten Steuerung in Langdock. Warum für die IW-Kommunikation relevant: in der Praxis ersetzt der Wissensordner das Fine-Tuning, ohne dass Daten ins Modelltraining fließen. (Quelle: 08-sicherheit-und-governance)

**Halluzination (Hallucination):** Die Erzeugung plausibel klingender, aber faktisch falscher oder erfundener Inhalte durch ein Sprachmodell. Warum für die IW-Kommunikation relevant: bei Wirtschaftsforschung ist eine erfundene Studienzahl ein Reputationsrisiko, das nur durch Quellenbindung und menschlichen Faktencheck beherrschbar ist. (Quelle: 03-wissensordner-und-rag)

**Inferenz (Inference):** Der Vorgang, bei dem ein bereits trainiertes Modell aus einem Prompt eine Antwort generiert; jede Anfrage ist ein Inferenz-Lauf. Warum für die IW-Kommunikation relevant: die Inferenz-Kosten skalieren mit Modellwahl und Token-Menge pro Anfrage. (Quelle: 07-modelle-und-kosten)

**Kontextfenster (Context Window):** Die maximale Token-Menge, die ein Modell pro Anfrage gleichzeitig verarbeiten kann (Prompt plus Antwort). Warum für die IW-Kommunikation relevant: begrenzt, wie viel Studientext direkt eingefügt werden kann, bevor ein Wissensordner nötig wird. (Quelle: 07-modelle-und-kosten)

**LLM (Large Language Model):** Ein großes Sprachmodell, das auf Basis statistischer Muster Text erzeugt; Langdock ist modellagnostisch und bindet mehrere Anbieter ein. Warum für die IW-Kommunikation relevant: die bewusste Modellwahl steuert Qualität, Kosten und Datenresidenz. (Quelle: 07-modelle-und-kosten)

**Prompt (Prompt):** Die an das Modell gerichtete Eingabe-Anweisung; ihre Präzision bestimmt maßgeblich die Qualität und Reproduzierbarkeit der Antwort. Warum für die IW-Kommunikation relevant: ein präziser Prompt reduziert teure Korrekturschleifen und verhindert vage Aussagen. (Quelle: 01-chat-und-prompts)

**PTCF (Persona-Task-Context-Format):** Ein Prompt-Skelett mit den vier Slots Persona, Task, Context und Format für gut strukturierte Anweisungen. Warum für die IW-Kommunikation relevant: der Standard, um Rolle, Aufgabe, Quellkontext und gewünschtes Ausgabeformat eindeutig festzulegen. (Quelle: 01-chat-und-prompts)

**RAG (Retrieval-Augmented Generation):** Ein Verfahren, das relevante Text-Blöcke aus einer Wissensbasis abruft und dem Modell als Kontext übergibt, statt sich auf Modellwissen zu verlassen. Warum für die IW-Kommunikation relevant: bindet Antworten an die hinterlegten IW-Quellen und macht sie nachvollziehbar. (Quelle: 03-wissensordner-und-rag)

**Re-Ranking (Re-Ranking):** Ein nachgelagerter Schritt, der die per Vektorsuche gefundenen Treffer nach Relevanz neu ordnet, bevor sie dem Modell übergeben werden. Warum für die IW-Kommunikation relevant: beeinflusst, welcher Studienabschnitt einer Antwort tatsächlich zugrunde liegt. (Quelle: 03-wissensordner-und-rag)

**Reasoning-Modell (Reasoning Model):** Ein Modell, das vor der Antwort eine interne, mehrstufige Lösungsfindung durchläuft, geeignet für komplexe Deduktion (z. B. Opus 4.8, GPT-5.2 Pro). Warum für die IW-Kommunikation relevant: gerechtfertigt für die Synthese widersprüchlicher Datenquellen, nicht für Routinetexte. (Quelle: 07-modelle-und-kosten)

**System-Prompt (System Prompt):** Die dauerhaften Instructions eines Agenten (in Langdock max. 40.000 Zeichen), die Rolle und Verhalten festlegen. Warum für die IW-Kommunikation relevant: hier werden Neutralitätsanspruch und Quellenpflicht des IW-Agenten verbindlich verankert. (Quelle: 00-langdock-uebersicht)

**Temperature (Temperature):** Ein Parameter, der die Zufälligkeit der Modellausgabe steuert; niedrige Werte erzeugen konsistentere, höhere Werte kreativere Ergebnisse. Warum für die IW-Kommunikation relevant: für faktentreue Sachtexte ist geringe Varianz erwünscht. (Quelle: 07-modelle-und-kosten)

**Vektorsuche (Vector Search):** Die Suche nach den semantisch ähnlichsten gespeicherten Vektoren zu einer Anfrage; Langdock ruft standardmäßig die Top-50 (k=50) ab. Warum für die IW-Kommunikation relevant: bestimmt, ob die passenden Studienpassagen zu einer Frage gefunden werden. (Quelle: 03-wissensordner-und-rag)

## Glossar — Marketing und Kommunikation

**Brand Voice (Brand Voice / Markenstimme):** Die definierte, konsistente Tonalität und Sprachregeln einer Organisation, idealerweise als isoliertes Wissensordner-Dokument hinterlegt. Warum für die IW-Kommunikation relevant: sichert einen einheitlichen, sachlich-souveränen Auftritt über alle Publikationskanäle. (Quelle: 03-wissensordner-und-rag)

**Briefing (Briefing):** Eine präzise Arbeitsanweisung für interne Teams oder Dienstleister, die Ziel, Kontext und Format einer Aufgabe festlegt. Warum für die IW-Kommunikation relevant: die Grundlage, damit aus einer Studie ein passgenaues Kommunikationsprodukt entsteht. (Quelle: 07-modelle-und-kosten)

**Content-Repurposing (Content Repurposing):** Die Wiederverwertung eines Inhalts in mehrere Formate und Kanäle, etwa aus einer Studie ein Artikel, ein Post und eine Grafik. Warum für die IW-Kommunikation relevant: skaliert die Reichweite einer einzelnen Publikation effizient.

**CTA (Call to Action):** Eine konkrete Handlungsaufforderung an die Zielgruppe, etwa „Studie herunterladen" oder „zum Standpunkt". Warum für die IW-Kommunikation relevant: lenkt Leser gezielt zur vertiefenden Publikation oder zum Kontakt. (Quelle: 10-prompts-und-skills)

**KPI (Key Performance Indicator):** Eine messbare Leitkennzahl zur Bewertung des Kommunikationserfolgs, abzugrenzen von reinen Vanity-Metriken. Warum für die IW-Kommunikation relevant: zwingt zur Definition von Wirkung (z. B. Downloads, Medienaufnahme) statt bloßer Sichtbarkeit.

**Medienresonanz (Media Coverage):** Der Umfang und die Art der Aufnahme einer Publikation oder Meldung in Medien und Fachöffentlichkeit. Warum für die IW-Kommunikation relevant: ein zentraler Wirkungsindikator für die Verbreitung von Forschungsergebnissen.

**O-Ton (Originalton / Soundbite):** Ein kurzes, zitierfähiges Original-Statement einer Person, das Medien direkt übernehmen können. Warum für die IW-Kommunikation relevant: erhöht die Zitierwahrscheinlichkeit von Expertenaussagen in der Berichterstattung.

**Persona (Persona):** Ein verdichtetes, repräsentatives Profil einer Zielgruppe mit Motivationen, Schmerzpunkten und Kanalpräferenzen. Warum für die IW-Kommunikation relevant: hilft, Forschungsergebnisse zielgruppengerecht für Politik, Wirtschaft oder Presse aufzubereiten. (Quelle: 03-wissensordner-und-rag)

**Pressemitteilung (Press Release):** Ein standardisierter, an Medien gerichteter Text, der eine Nachricht mit Kernaussage, Beleg und Zitat verdichtet. Warum für die IW-Kommunikation relevant: das zentrale Format, um Studienergebnisse pressegerecht zu verbreiten. (Quelle: 08-sicherheit-und-governance)

**Reichweite (Reach):** Die Anzahl erreichter Personen oder Kontakte über einen Kanal, ein früher Funnel-Indikator, aber kein Wirkungsnachweis. Warum für die IW-Kommunikation relevant: nützlich als Begleitgröße, ersetzt aber keine belastbare Wirkungsmetrik. (Quelle: 11-persona-core)

**Redaktionsplan (Editorial Calendar):** Eine zeitliche Planung von Themen, Formaten und Kanälen über einen definierten Zeitraum. Warum für die IW-Kommunikation relevant: koordiniert Publikationen mit politischen Terminen und Fachveranstaltungen. (Quelle: 00-langdock-uebersicht)

**SEO (Search Engine Optimization):** Die Optimierung von Inhalten für die organische Auffindbarkeit in Suchmaschinen über Keywords, Struktur und interne Verlinkung. Warum für die IW-Kommunikation relevant: erhöht die dauerhafte Auffindbarkeit von Online-Publikationen. (Quelle: 03-wissensordner-und-rag)

**Sperrfrist (Embargo):** Eine zeitliche Vorgabe, bis zu der Medien eine vorab erhaltene Information nicht veröffentlichen dürfen. Warum für die IW-Kommunikation relevant: erlaubt Journalisten die Vorbereitung umfassender Berichterstattung zu Studien vor dem offiziellen Termin.

**Tonalität (Tone of Voice):** Die situative sprachliche Färbung eines Textes, abgeleitet aus der übergeordneten Brand Voice und an Kanal sowie Publikum angepasst. Warum für die IW-Kommunikation relevant: differenziert zwischen nüchternem Fachton und zugänglicherer Pressesprache. (Quelle: 03-wissensordner-und-rag)

**Touchpoint (Touchpoint):** Ein konkreter Kontaktpunkt zwischen Organisation und Zielgruppe entlang ihrer Customer Journey. Warum für die IW-Kommunikation relevant: hilft, die Wege von der Veröffentlichung bis zur Wahrnehmung durch Entscheider zu strukturieren. (Quelle: 11-persona-core)

## Glossar — Recht und Compliance

**AVV (Auftragsverarbeitungsvertrag):** Ein Vertrag nach Art. 28 DSGVO, der die Verarbeitung personenbezogener Daten durch einen Dienstleister regelt; bei Langdock über die Admin-Oberfläche abschließbar. Warum für die IW-Kommunikation relevant: rechtliche Grundvoraussetzung, bevor personenbezogene Daten verarbeitet werden. (Quelle: 08-sicherheit-und-governance)

**BDSG (Bundesdatenschutzgesetz):** Das deutsche Datenschutzgesetz, das die DSGVO national ergänzt und konkretisiert. Warum für die IW-Kommunikation relevant: einschlägig für die deutsche Verarbeitung von Personendaten in Ergänzung zur DSGVO.

**Datenresidenz (Data Residency):** Die vertraglich und technisch festgelegte geografische Region, in der Daten physisch verarbeitet und gespeichert werden. Warum für die IW-Kommunikation relevant: stellt sicher, dass sensible Inhalte den EU-Rechtsraum nicht verlassen. (Quelle: 08-sicherheit-und-governance)

**DSG-AT (Datenschutzgesetz Österreich) / DSG-Schweiz:** Nationale Datenschutzgesetze, die neben der DSGVO bzw. für die Schweiz eigenständig gelten; das revidierte Schweizer DSG gilt seit September 2023. Warum für die IW-Kommunikation relevant: relevant, sobald österreichische oder Schweizer Stellen denselben Workspace nutzen. (Quelle: 08-sicherheit-und-governance)

**DSGVO (Datenschutz-Grundverordnung):** Die EU-Verordnung zum Schutz personenbezogener Daten; Langdock adressiert sie nach Anbieterangaben durch EU-Hosting und Trainings-Opt-out. Warum für die IW-Kommunikation relevant: das fundamentale Compliance-Kriterium für jeden KI-Einsatz mit Personenbezug. (Quelle: 08-sicherheit-und-governance)

**EU AI Act (EU-KI-Verordnung):** Die EU-Verordnung zur Regulierung von KI, die Systeme nach Risikoklassen einstuft und in Art. 50 Transparenzpflichten für KI-generierte Inhalte vorsieht. Warum für die IW-Kommunikation relevant: bestimmt Kennzeichnungs- und Dokumentationspflichten für KI-gestützte Inhalte. (Quelle: 08-sicherheit-und-governance)

**ISO 27001 (ISO 27001):** Ein international anerkannter Standard für ein Information Security Management System (ISMS), für den Langdock zertifiziert ist (Stand jeweils zum Audit-Zeitraum). Warum für die IW-Kommunikation relevant: beschleunigt die Sicherheitsfreigabe durch IT und Rechtsabteilung. (Quelle: 08-sicherheit-und-governance)

**Kennzeichnung KI-generierter Inhalte (AI Content Disclosure):** Die Pflicht, KI-erzeugte Inhalte als solche transparent zu machen (u. a. nach UWG und Art. 50 EU AI Act). Warum für die IW-Kommunikation relevant: reduziert das Abmahnrisiko und wahrt die Glaubwürdigkeit; Umfang und Form sind datums- und kontextabhängig mit der Rechtsabteilung zu klären. (Quelle: 08-sicherheit-und-governance)

**Quellenangabe (Source Attribution):** Die nachvollziehbare Benennung der Herkunft einer Aussage; in Langdock technisch über das Source-Tracking je Wissensordner-Datei abgebildet. Warum für die IW-Kommunikation relevant: zentral für die wissenschaftliche Belegpflicht und die Verifizierbarkeit von Zahlen. (Quelle: 03-wissensordner-und-rag)

**SOC 2 Type II (SOC 2 Type II):** Ein Prüftestat über die Wirksamkeit von Kontrollen zu Sicherheit, Verfügbarkeit, Integrität, Vertraulichkeit und Datenschutz über einen auditierten Zeitraum. Warum für die IW-Kommunikation relevant: objektivierter Vertrauensnachweis im Procurement-Prozess. (Quelle: 08-sicherheit-und-governance)

**Urheberrecht (Copyright):** Das Schutzrecht an geistigen Werken, relevant bei der Verwendung und Erzeugung von Texten und Bildern. Warum für die IW-Kommunikation relevant: betrifft die Nutzung fremder Quellen und die Rechte an KI-gestützt erstellten Inhalten. (Quelle: 08-sicherheit-und-governance)

**UWG (Gesetz gegen den unlauteren Wettbewerb):** Das deutsche Wettbewerbsrecht, das u. a. Irreführung und fehlende Kennzeichnung (z. B. AI-Washing) sanktioniert. Warum für die IW-Kommunikation relevant: einschlägig bei werblicher Außenkommunikation und der Kennzeichnung KI-gestützter Inhalte. (Quelle: 08-sicherheit-und-governance)

## Glossar — Wirtschaftsforschung und Politik-Kommunikation (IW-Domäne)

(Nur etablierte, öffentlich belegbare Begriffe. IW-spezifische Detailangaben — exakte Formate, Frequenzen — mit „Stand: 2026-06 — über IW-Recherche zu verifizieren" markieren, NICHT erfinden.)

**Drittmittel-Transparenz (Third-Party Funding Transparency):** Die offene Ausweisung externer Finanzierungsquellen einer Studie oder eines Projekts. Warum für die IW-Kommunikation relevant: stützt die Glaubwürdigkeit und beugt dem Vorwurf interessengeleiteter Forschung vor.

**Gutachten (Expert Report):** Eine systematische wissenschaftliche Bewertung einer Frage, häufig im Auftrag erstellt. Warum für die IW-Kommunikation relevant: ein Format, dessen Kernaussagen für Presse und Politik verdichtet werden müssen.

**iwd (Informationsdienst der deutschen Wirtschaft):** Das publizistische Medium des IW zur allgemeinverständlichen Aufbereitung wirtschaftlicher Themen. Warum für die IW-Kommunikation relevant: typisches Zielformat, um Forschungsergebnisse einem breiteren Publikum zugänglich zu machen. (Stand: 2026-06 — über IW-Recherche zu verifizieren)

**IW-Kurzbericht (IW-Kurzbericht):** Ein kompaktes Publikationsformat des IW zur knappen Darstellung eines Forschungsergebnisses. Warum für die IW-Kommunikation relevant: dichte Quelle, aus der sich Meldungen und Posts ableiten lassen. (Stand: 2026-06 — über IW-Recherche zu verifizieren)

**IW-Report (IW-Report):** Ein ausführlicheres Publikationsformat des IW zur Darstellung von Analysen und Befunden. Warum für die IW-Kommunikation relevant: häufige Ausgangsbasis für Pressemitteilungen und iwd-Artikel. (Stand: 2026-06 — über IW-Recherche zu verifizieren)

**IW-Trends (IW-Trends):** Eine Publikationsreihe des IW für empirisch fundierte Beiträge zur wirtschaftlichen Entwicklung. Warum für die IW-Kommunikation relevant: liefert belastbare Datenpunkte für die Fachkommunikation. (Stand: 2026-06 — über IW-Recherche zu verifizieren)

**Neutralitätsanspruch (Claim to Neutrality):** Der Anspruch, Forschungsergebnisse sachlich und ohne parteipolitische Einfärbung darzustellen. Warum für die IW-Kommunikation relevant: prägt Tonalität und Formulierungsregeln aller nach außen gerichteten Texte.

**Ordnungspolitik (Regulatory / Framework Policy):** Ein Politikansatz, der den ordnungsrechtlichen Rahmen für Wirtschaftsprozesse betont, statt einzelne Marktergebnisse zu steuern. Warum für die IW-Kommunikation relevant: ein wiederkehrender inhaltlicher Bezugsrahmen wirtschaftspolitischer Beiträge.

**Policy Brief (Policy Brief):** Ein kurzes, adressatenorientiertes Papier, das Forschungsbefunde in Handlungsempfehlungen für Entscheidungsträger übersetzt. Warum für die IW-Kommunikation relevant: das Format, um wissenschaftliche Befunde politiknah und entscheidungsorientiert aufzubereiten.

**Wissenschaftskommunikation (Science Communication):** Die zielgruppengerechte Vermittlung wissenschaftlicher Inhalte an Fach- und Laienpublikum. Warum für die IW-Kommunikation relevant: der übergeordnete Rahmen, in dem die Übersetzung von Forschung in Kommunikation stattfindet.

## FAQ

### F-001 Wo fange ich als KI-Einsteiger im IW-Kommunikationsteam an?
**Frage:** "Ich habe noch nie mit Langdock gearbeitet — womit starte ich sinnvoll?"
**Antwort:** Beginnen Sie im Standard-Chat mit einer einzelnen, klar umrissenen Aufgabe, etwa dem Kürzen eines vorhandenen Textes. Nutzen Sie für wiederkehrende Aufgaben einen fokussierten Agenten mit Konversations-Startern, die Best-Practice-Prompts vorgeben und die Hürde des leeren Eingabefelds nehmen. Komplexe Workflows und Integrationen sind ein späterer Schritt. Formulieren Sie Anfragen nach dem PTCF-Skelett (Persona, Task, Context, Format). (Quelle: 00-langdock-uebersicht)

### F-002 Welches Modell soll ich für welche Aufgabe wählen?
**Frage:** "Wie entscheide ich zwischen einem günstigen und einem teuren Modell?"
**Antwort:** Die Faustregel lautet: das günstigste Modell, das die Aufgabe zuverlässig löst. Routine-Drafts und Übersetzungen laufen auf Light- oder Efficient-Default-Modellen (z. B. Haiku 4.5), faktenkritische oder stilistisch anspruchsvolle Texte auf einem Strong Generalist wie Sonnet 4.6. Frontier-Reasoning-Modelle wie Opus 4.8 sind nur für seltene, komplexe Synthesen gerechtfertigt. Maßgeblich ist der Modell-Multiplikator, nicht der absolute Preis. (Quelle: 07-modelle-und-kosten)

### F-003 Welches Modell eignet sich für eine Pressemitteilung aus einem IW-Report?
**Frage:** "Ich will aus einem IW-Report eine Pressemitteilung erstellen lassen — welches Modell?"
**Antwort:** Eine Pressemitteilung verlangt stilistische Präzision und korrekte Zahlen, daher empfiehlt sich ein Strong Generalist wie Sonnet 4.6 für den Textentwurf. Legen Sie den IW-Report im Wissensordner ab und binden Sie die Zahlen strikt daran, statt sie aus dem Modellwissen ziehen zu lassen. Ein Light-Modell genügt nur für rein formale Mikrotasks. Ein menschlicher Faktencheck bleibt vor jedem Versand verpflichtend. (Quelle: 07-modelle-und-kosten)

### F-004 Wie verhindere ich, dass die KI eine Studienzahl falsch wiedergibt?
**Frage:** "Wie stelle ich sicher, dass keine erfundenen oder verfälschten Zahlen in den Text gelangen?"
**Antwort:** Binden Sie jede Zahl an den Wissensordner und weisen Sie das Modell im Prompt an, ausschließlich Zahlen aus den Quellen zu verwenden und fehlende Angaben mit „[Quelle fehlt]" zu markieren, statt zu schätzen. Lassen Sie jede Zahl mit Quellenangabe versehen. Ein günstiges Modell ohne Quellenbindung erhöht das Halluzinationsrisiko. Ein menschlicher Faktencheck vor der Veröffentlichung ist unabhängig vom Modell Pflicht. (Quelle: 07-modelle-und-kosten)

### F-005 Darf ich eine IW-Studie in den Wissensordner laden — verlässt sie die EU?
**Frage:** "Wenn ich eine unveröffentlichte Studie hochlade, wo wird sie gespeichert?"
**Antwort:** Nach Anbieterangaben betreibt Langdock seine Systemkomponenten, Datenbanken und Vektor-Indizes in der Microsoft Azure EU-Region, sodass Inhalte den europäischen Rechtsraum nicht verlassen. Diese Zusicherung ist vor dem Rollout anhand des aktuellen AVV und der Sub-Prozessor-Liste mit dem Datenschutzbeauftragten zu verifizieren. Achten Sie zusätzlich darauf, dass das genutzte Modell in der EU-Region läuft und nicht nur global oder in den USA. (Quelle: 08-sicherheit-und-governance)

### F-006 Werden meine hochgeladenen Inhalte zum Training der Modelle verwendet?
**Frage:** "Fließen unsere Daten in das Training von OpenAI oder Anthropic ein?"
**Antwort:** Nach Anbieterangaben gilt der Grundsatz, dass Langdock und die angebundenen Provider Kundendaten nicht für das Modelltraining nutzen; dies wird über Datenresidenz- und Trainings-Opt-out-Verträge (Zero-Data-Retention) abgesichert. Diese Zusage ist vertraglich über AVV und Provider-DPA zu belegen und vor dem Produktivgang mit der Rechtsabteilung zu verifizieren, statt sie als gegeben anzunehmen. (Quelle: 08-sicherheit-und-governance)

### F-007 Wie übersetze ich einen IW-Report in einen iwd-Artikel?
**Frage:** "Wie komme ich von einem fachlichen IW-Report zu einem allgemeinverständlichen iwd-Artikel?"
**Antwort:** Legen Sie den IW-Report als eigene Datei im Wissensordner ab und nutzen Sie einen Agenten mit klarer Tonalitäts-Vorgabe für ein breiteres Publikum. Weisen Sie im Prompt das Zielformat, die Zielgruppe und die maximale Länge an und lassen Sie die Kernbefunde des Reports verständlich verdichten, ohne Zahlen zu verändern. Halten Sie die Quellenbindung aufrecht und prüfen Sie das Ergebnis fachlich gegen den Report. (Quelle: 07-modelle-und-kosten)

### F-008 Wie kennzeichne ich KI-generierte Inhalte rechtssicher?
**Frage:** "Muss ich KI-gestützt erstellte Inhalte kennzeichnen, und wie?"
**Antwort:** Eine Kennzeichnungspflicht kann sich aus dem UWG und Art. 50 EU AI Act ergeben; synthetische Inhalte wie KI-Bilder oder KI-Testimonials sind in der Regel offenzulegen. Erstellen Sie eine Kennzeichnungs-Richtlinie mit Disclaimer-Bausteinen je Inhaltstyp und verankern Sie sie im Freigabe-Workflow. Da Umfang und Form datums- und kontextabhängig sind und Fristen sich ändern, ist die konkrete Ausgestaltung mit der Rechtsabteilung zu klären und die aktuelle Frist gegen eine Primärquelle zu verifizieren. (Quelle: 08-sicherheit-und-governance)

### F-009 Wie wahre ich den Neutralitätsanspruch des IW in KI-Texten?
**Frage:** "Wie verhindere ich, dass die KI wertende oder parteiische Formulierungen einbaut?"
**Antwort:** Verankern Sie den Neutralitätsanspruch im System-Prompt des Agenten und hinterlegen Sie Tonalitäts- und Vokabularregeln als Brand-Voice-Dokument im Wissensordner. Weisen Sie das Modell an, Befunde sachlich darzustellen und Wertungen zu vermeiden. Prüfen Sie Entwürfe gezielt auf wertende Adjektive und Superlative. Die finale redaktionelle Verantwortung bleibt beim Menschen. (Quelle: 03-wissensordner-und-rag)

### F-010 Wann nutze ich einen Wissensordner und wann einen direkten Anhang?
**Frage:** "Soll ich eine Datei in den Wissensordner laden oder direkt in den Chat hängen?"
**Antwort:** Langlebiges, in mehreren Kontexten benötigtes Wissen (Stilrichtlinien, Kernpublikationen) gehört in einen Wissensordner; kurzlebige, einmalige Dateien hängen Sie direkt im Chat an (max. 20 pro Session). Tabellarische Daten (CSV/Excel) dürfen nicht in den Wissensordner, sondern müssen als direkter Anhang vom Data Analyst ausgewertet werden. Die Faustregel: Wird die Information in mehr als drei künftigen Vorhaben gebraucht, gehört sie in den Wissensordner. (Quelle: 03-wissensordner-und-rag)

### F-011 Warum findet der Agent eine bestimmte Studienaussage nicht?
**Frage:** "Die Information steht im Dokument, aber der Agent sagt, er finde nichts — woran liegt das?"
**Antwort:** Häufigste Ursache ist das Per-Document-Cap: pro Datei und Anfrage wird meist nur ein Chunk abgerufen. Liegen mehrere Themen in einer Datei, verdrängt eines die anderen. Zerlegen Sie große Dokumente nach dem Prinzip „ein Thema pro Datei" und wiederholen Sie den Schlüsselbegriff im ersten Satz jedes Abschnitts. Prüfen Sie zudem Dateiformat, beschreibenden Dateinamen und ob die Indizierung nach dem Upload abgeschlossen ist. (Quelle: 03-wissensordner-und-rag)

### F-012 Wie muss ich ein Dokument aufbereiten, damit das Retrieval funktioniert?
**Frage:** "Wie sollte ich eine Studie für den Wissensordner formatieren?"
**Antwort:** Schreiben Sie so, dass jeder circa 2.000 Zeichen lange Abschnitt auch ohne Kontext verständlich ist: keine unaufgelösten Pronomen, Schlüsselbegriffe in jedem Absatz wiederholen und keyword-reiche Substantiv-Überschriften setzen. Bevorzugen Sie sauberes Markdown und ein Thema pro Datei. Vergeben Sie sprechende Dateinamen, da das Source-Tracking sie für Citations nutzt. (Quelle: 03-wissensordner-und-rag)

### F-013 Was unterscheidet einen Library Folder von einem Synced Folder?
**Frage:** "Welchen Ordnertyp soll ich für unsere Quellen verwenden?"
**Antwort:** Ein Library Folder fasst bis zu 1.000 Dateien, wird manuell gepflegt und gibt Ihnen volle Kontrolle über die genutzte Version — ideal für selten geänderte Kernpublikationen. Ein Synced Folder gleicht sich automatisch alle 24 Stunden mit externen Quellen ab, ist aber auf 200 Dateien begrenzt (max. fünf pro Agent) und passt für häufig aktualisierte, extern gepflegte Dokumente. Wählen Sie nach Änderungsrhythmus und gewünschter Kontrolle. (Quelle: 03-wissensordner-und-rag)

### F-014 Wie halte ich die Kosten unter Kontrolle?
**Frage:** "Wie verhindere ich, dass die KI-Nutzung das Budget sprengt?"
**Antwort:** Pinnen Sie für wiederkehrende Aufgaben bewusst ein günstiges Modell, statt sich auf den Auto Mode zu verlassen, der teure Modelle ansteuern kann. Nutzen Sie das Workspace-Limit (Standard 500 Euro/Monat) und die Warn-Schwellen bei 50/75/90 Prozent. Legen Sie wiederkehrendes Wissen einmalig im Wissensordner ab, statt es in jeden Prompt zu kopieren, und wickeln Sie Massenaufgaben über Workflows mit fest zugewiesenem günstigem Modell ab. (Quelle: 07-modelle-und-kosten)

### F-015 Warum sollte ich den Auto Mode in Automatisierungen vermeiden?
**Frage:** "Kann ich den Auto Mode einfach immer aktiviert lassen?"
**Antwort:** Im explorativen Chat ist der Auto Mode vertretbar, in Workflows und Agenten aber nicht: Er kann unvorhersehbar teure Modelle anstoßen und so die Kosten einer trivialen Aufgabe um eine Größenordnung erhöhen. Weisen Sie jeder Automatisierung ein festes Modell zu, um die Kosten planbar zu halten. (Quelle: 07-modelle-und-kosten)

### F-016 Konfiguriert Little Data Agenten und Workflows selbst?
**Frage:** "Kann der Agent die Einrichtung gleich für mich übernehmen?"
**Antwort:** Nein. Little Data berät und liefert vollständige, copy-paste-fähige Bausteine wie System-Prompts, Konversations-Starter und Schrittfolgen, führt die Einrichtung im Backend aber nicht aus („Beratung, nicht Ausführung"). Die Aktivierung im Workspace nimmt eine zuständige Person vor. So bleibt die Kontrolle und Verantwortung beim Menschen. (Quelle: 04-workflows)

### F-017 Wie sichere ich Zugriffsrechte auf sensible Studien ab?
**Frage:** "Wie stelle ich sicher, dass unveröffentlichte Studien nur das richtige Team sieht?"
**Antwort:** Langdock nutzt ein rollenbasiertes Zugriffsmodell (Owner/Editor/Viewer) auf vier Ebenen (Workspace, Folder, Agent, Workflow) nach dem Prinzip der minimalen Rechte. Geben Sie sensible Wissensordner über definierte Gruppen frei statt einzeln, idealerweise per SCIM mit dem Verzeichnisdienst synchronisiert. So erlischt der Zugriff beim Offboarding automatisch. (Quelle: 08-sicherheit-und-governance)

### F-018 Sind die Vektor-Embeddings unserer Dokumente personenbezogene Daten?
**Frage:** "Gelten die aus unseren Dokumenten erzeugten Embeddings als personenbezogen?"
**Antwort:** Embeddings aus Texten mit Personenbezug (Namen, E-Mails, Kundennummern) gelten in der Regel als personenbezogen; Embeddings aus anonymisierten Inhalten meist nicht. Prüfen Sie daher den Ursprungsdaten-Typ und ob der AVV die Vektor-Index-Verarbeitung abdeckt. Pseudonymisieren Sie PII vor dem Upload oder beantragen Sie eine AVV-Ergänzung; EU-Hosting und Verschlüsselung sind Mindeststandard. Die abschließende Einstufung trifft der Datenschutzbeauftragte. (Quelle: 08-sicherheit-und-governance)

### F-019 Wie nutze ich Deep Research für das wirtschaftspolitische Monitoring?
**Frage:** "Kann ich mit Langdock die wirtschaftspolitische Debatte strukturiert beobachten?"
**Antwort:** Der Deep Research Modus führt asynchrone, umfangreiche Web-Recherchen durch und liefert strukturierte Reports; er ist im Standard-Workspace auf 15 Ausführungen pro Nutzer in 30 Tagen begrenzt. Definieren Sie einen festen Recherche-Scope und ein klares Ausgabeformat und überführen Sie das Ergebnis in den Canvas. Weisen Sie das Modell an, nur belegbare Aussagen mit Quelle zu liefern und Ungeprüftes zu markieren. (Quelle: 00-langdock-uebersicht)

### F-020 Welche Nachweise braucht die Rechtsabteilung vor dem Rollout?
**Frage:** "Was muss ich der Rechtsabteilung vorlegen, um die Freigabe zu beschleunigen?"
**Antwort:** Stellen Sie einen One-Pager mit den ISO-27001- und SOC-2-Type-II-Testaten, dem Standard-AVV und einer Skizze der EU-Datenverarbeitung zusammen; das beantwortet die meisten Standard-Rückfragen. Belegen Sie zusätzlich die Zero-Data-Retention-Zusage des Modell-Providers separat und führen Sie ein Stand-Datum für die Sub-Prozessor-Liste. Die rechtsverbindliche Bewertung bleibt der Rechtsabteilung und dem Datenschutzbeauftragten vorbehalten. (Quelle: 08-sicherheit-und-governance)
