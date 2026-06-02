# Workflows für Marketing-Direktoren (Beratung)

> **Was diese Datei abdeckt:**
> - Architektur und Funktion von mehrstufigen Automatisierungs-Pipelines (Workflows)
> - Die vier Node-Typen (Triggers, Logic, Action, AI) und fünf Trigger-Typen
> - Strategisches Cost-Engineering, Structured Outputs und HITL-Konzepte
>
> **Was diese Datei NICHT abdeckt:**
> - Erstellung interaktiver Chat-Agenten → siehe `02-agenten-konfiguration`
> - Management unstrukturierter Dokumente → siehe `03-wissensordner-und-rag`

## Was Workflows sind und wann sie sich lohnen

Workflows in der Langdock-Plattform repräsentieren die Automatisierung für deterministische, mehrstufige Prozesse. Im Gegensatz zu Agenten, die auf offene Konversationen ausgelegt sind, strukturieren Workflows definierte Abfolgen von Aktionen. Sie lohnen sich immer dann, wenn Marketing-Prozesse wiederholbar oder zeitkritisch sind. Eine strategisch arbeitende Marketing-Direktorin nutzt Workflows, um Standard-Operative-Procedures in ausführbare Pipelines zu übersetzen. Dies reduziert manuelle Schnittstellen-Arbeit.

Die Wirtschaftlichkeit berechnet sich aus der eingesparten Zeit pro Ausführung multipliziert mit der Frequenz. Ein Prozess, der wöchentlich drei Stunden beansprucht — beispielsweise das Aggregieren von Performance-Daten — ist ein idealer Kandidat. Die Implementierung erfordert ein initiales Zeitinvestment für die Konfiguration der Nodes. Sobald der Workflow stabil läuft, skaliert er ohne zusätzlichen menschlichen Aufwand.

Ein entscheidender Faktor ist die Minimierung von Übertragungsfehlern. Wenn Daten manuell zwischen Content-Management-Systemen und internen Kommunikationstools transferiert werden, steigt das Risiko für Datenverlust. Workflows eliminieren diese Fehlerquelle durch nahtlose Integrationen. Sie schaffen eine zuverlässige Infrastruktur für komplexe Marketing-Operationen und ermöglichen es dem Team, sich auf strategische Initiativen zu konzentrieren. Die Investition in das Setup zahlt sich somit durch höhere Prozesssicherheit aus.

## Node-Typen Überblick (Triggers, Logic, Action, AI)

Die Architektur eines Langdock-Workflows basiert auf einem Node-System. Jeder Workflow besteht aus einer Anordnung dieser Nodes, die Daten verarbeiten oder externe Systeme ansprechen. Triggers bilden stets den Startpunkt einer jeden Kette. Sie definieren, welches Ereignis die Ausführung initiiert — sei es eine manuelle Eingabe, ein zeitgesteuertes Signal oder ein ankommender Webhook. Ohne Trigger bleibt der Workflow inaktiv.

Logic-Nodes orchestrieren den Informationsfluss innerhalb der Pipeline. Sie umfassen bedingte Verzweigungen, Schleifen für die Verarbeitung von Listen und Filter-Mechanismen. Für eine Marketing-Direktorin bedeutet dies die Möglichkeit, komplexe Kampagnen-Logiken abzubilden. Ein Loop kann eine Liste von Leads iterativ verarbeiten, während ein If-Else-Node Leads basierend auf ihrem Scoring unterschiedlichen Nurturing-Pfaden zuweist. Diese Steuerung ist essenziell für die Erstellung personalisierter Marketing-Erlebnisse.

Action-Nodes und AI-Nodes führen operative Aufgaben aus. Action-Nodes interagieren mit externen Systemen über native Integrationen. Sie aktualisieren Datensätze im CRM oder versenden Benachrichtigungen in Slack. AI-Nodes integrieren die analytische Leistung von Large Language Models direkt in den Prozess. Sie können unstrukturierte Daten klassifizieren oder Text-Entwürfe generieren. Die Kombination dieser Node-Typen ermöglicht die Konstruktion autonomer Systeme, die deterministische Logik und probabilistische KI-Fähigkeiten vereinen.

## Trigger-Typen (Manual, Webhook, Scheduled, Integration, Form)

Der Trigger definiert den Auslöser eines Workflows und bestimmt, wie nahtlos sich eine Automatisierung integriert. Manuelle Trigger erfordern die aktive Initiierung durch einen Nutzer, oft kombiniert mit der Eingabe von Parametern. Dies eignet sich für On-Demand-Aufgaben wie die Generierung eines Briefings. Form-Trigger erweitern dieses Konzept, indem sie strukturierte Eingabemasken bereitstellen. Sie zwingen den Nutzer zur Eingabe vordefinierter Variablen, was die Datenqualität für die nachfolgenden Nodes erhöht.

Webhook-Trigger ermöglichen die passive Initiierung durch externe Systeme. Sobald ein Ereignis stattfindet — beispielsweise ein neuer Lead-Eintrag auf einer Landingpage — sendet das System ein Datenpaket an die Webhook-URL des Workflows. Dies startet die Automatisierung unmittelbar und übergibt relevante Lead-Daten. Webhooks sind das Rückgrat für hochgradig reaktive Marketing-Architekturen, die ohne Zeitverzögerung auf Interaktionen reagieren müssen.

Scheduled Trigger und Integration Trigger runden das Portfolio ab. Scheduled Trigger führen Workflows nach einem Zeitplan aus. Sie sind prädestiniert für regelmäßige Reporting-Aufgaben oder periodische Audits. Integration Trigger nutzen native Verbindungen von Langdock zu Systemen wie Salesforce, um systeminterne Ereignisse direkt als Startpunkt zu verwenden. Die Wahl des richtigen Triggers ist die fundamentale erste Entscheidung bei der Konzeption eines neuen Workflows.

## Cost-Engineering in Workflows (Workspace-/Workflow-/Per-Execution-Limits, Warn-Schwellen)

Die Automatisierung komplexer Marketing-Prozesse birgt das Risiko steigender Kosten, insbesondere wenn generative KI-Nodes in Schleifen operieren. Cost-Engineering ist daher eine kritische Kompetenz für das Management von Langdock-Workflows. Die Kostenkontrolle erfolgt auf drei hierarchischen Ebenen: Workspace-Limits, Workflow-Limits und Per-Execution-Limits. Workspace-Limits definieren das maximale Budget für die Organisation und fungieren als ultimative Notbremse. Warn-Schwellen bei 50, 75 und 90 Prozent Auslastung gewährleisten eine frühzeitige Benachrichtigung.

Auf der Workflow-Ebene werden Budgets für individuelle Automatisierungen allokiert. Ein hochvolumiger Lead-Enrichment-Workflow benötigt ein höheres Budget als ein Reporting-Prozess. Diese Granularität verhindert, dass ein fehlerhafter Workflow die Ressourcen des Workspaces aufbraucht. Die Per-Execution-Limits definieren die maximalen Kosten für einen einzelnen Durchlauf. Sie schützen vor Fehlkonfigurationen in Loop-Nodes, die potenziell in Endlosschleifen resultieren und erhebliche Kosten verursachen könnten.

Effizientes Cost-Engineering erfordert zudem die bewusste Auswahl von Modellen innerhalb der AI-Nodes. Für einfache Klassifizierungsaufgaben sollten ressourcenschonende Modelle präferiert werden, da sie einen Bruchteil der Kosten verursachen. Große, ressourcenintensive Modelle sollten strategisch nur für jene Nodes reserviert werden, die tiefgehende logische Schlussfolgerungen erfordern. Die kontinuierliche Analyse der Logs ermöglicht die Identifikation von Kosten-Treibern.

## Structured Outputs für deterministische Pipelines

Die Zuverlässigkeit eines Workflows steht und fällt mit der Qualität der Datenübergabe zwischen den Nodes. In Pipelines, die KI-Nodes integrieren, ist die deterministische Formatierung der generierten Ausgaben essenziell. Sprachmodelle tendieren zu variabler, unstrukturierter Prosa, die nachfolgende Action-Nodes nicht verarbeiten können. Structured Outputs zwingen das Modell, seine Antwort in einem strikt definierten Datenformat — üblicherweise JSON — zu liefern, das einem vordefinierten Schema entspricht.

Für eine Marketing-Operation bedeutet dies den Übergang von einer unvorhersehbaren Text-Generierung zu einer maschinenlesbaren Datenverarbeitung. Wenn ein KI-Node das Sentiment und die Hauptthemen von tausend Kundenbewertungen extrahieren soll, garantiert ein Structured Output, dass jede Ausgabe die Felder "Sentiment_Score" und "Key_Topics" enthält. Fehlt diese Strukturierung, könnte das Modell narrative Zusammenfassungen generieren, die den nachfolgenden Update-Node unweigerlich zum Absturz bringen würden.

Die Konfiguration von Structured Outputs erfordert präzises Prompting innerhalb des AI-Nodes. Das JSON-Schema muss im Prompt unmissverständlich definiert werden, idealerweise begleitet von konkreten Beispielen für korrekt formatierte Ausgaben. Zusätzlich muss die Fehlerbehandlung berücksichtigt werden, falls das Modell vom Schema abweicht. Durch die konsequente Nutzung von Structured Outputs transformieren Marketing-Teams generative KI in einen zuverlässigen, berechenbaren Motor für Daten-Pipelines.

## Human-in-the-Loop (HITL) für Genehmigungen

Trotz des hohen Automatisierungsgrades in Langdock-Workflows bleiben bestimmte Entscheidungen und Qualitätssicherungs-Schritte dem menschlichen Ermessen vorbehalten. Das Human-in-the-Loop (HITL) Konzept integriert manuelle Freigabeprozesse nahtlos in automatisierte Pipelines. Ein HITL-Node pausiert die Ausführung des Workflows an einer kritischen Schnittstelle und fordert eine explizite Genehmigung oder eine inhaltliche Anpassung durch einen designierten Nutzer an. Erst nach erfolgter Freigabe wird die Verarbeitung der nachfolgenden Nodes fortgesetzt.

Dieses Konzept ist relevant bei Aktionen, die nach außen sichtbare Konsequenzen haben oder signifikante Budgets allokieren. Wenn ein Workflow basierend auf Performance-Daten neue Anzeigentexte und Gebotsstrategien generiert, darf die Publikation nicht blind erfolgen. Ein HITL-Node präsentiert der Marketing-Direktorin die Vorschläge zur finalen Prüfung. Der Nutzer kann die Vorschläge unverändert freigeben, manuell editieren oder komplett verwerfen, wodurch ein unkontrolliertes Aussteuern von potenziell ineffizientem Content verhindert wird.

Die Integration von HITL-Nodes steigert zudem die Akzeptanz von Automatisierungs-Lösungen innerhalb des Teams, da die Kontrolle beim Menschen verbleibt. Es etabliert eine symbiotische Beziehung zwischen maschineller Effizienz und menschlicher Urteilskraft. Der Workflow übernimmt die arbeitsintensive Datensammlung, während der menschliche Experte die strategische Bewertung fokussiert. Dies gewährleistet Compliance mit internen Richtlinien und minimiert das Risiko von Fehlausführungen.

## Marketing-Workflow-Beispiele (Multi-Channel-Content-Distribution, Lead-Nurturing)

Die praktische Anwendung von Workflows manifestiert sich in hochgradig skalierbaren, mehrstufigen Automatisierungen. Ein klassisches Szenario ist die Multi-Channel-Content-Distribution. Dieser Workflow beginnt mit einem Form-Trigger, in den ein neuer Artikel eingegeben wird. Im ersten AI-Node wird der Text analysiert und Kernaussagen extrahiert. Anschließend verzweigt die Logik in parallele Stränge: Ein Strang generiert drei formelle LinkedIn-Posts, ein weiterer produziert kurze X-Updates, und ein dritter entwirft den Teaser-Text für den E-Mail-Newsletter. Ein Action-Node plant die fertigen Beiträge zur zeitversetzten Veröffentlichung.

Ein weiteres zentrales Anwendungsfeld ist das komplexe Lead-Nurturing. Der Trigger wird durch einen Webhook ausgelöst, sobald ein Nutzer ein Whitepaper herunterlädt. Ein Action-Node reichert die E-Mail-Adresse über eine externe Datenbank mit Unternehmensinformationen an. Anschließend evaluiert ein AI-Node das Potenzial des Leads basierend auf dem Kontext. Fällt das Scoring positiv aus, übergibt ein CRM-Integration-Node den Datensatz direkt an das Sales-Team. Bei geringerem Scoring wird der Lead stattdessen in eine automatisierte E-Mail-Nurturing-Sequenz eingereiht.

Diese Beispiele illustrieren die transformative Kraft von Workflows. Sie brechen Datensilos auf, vernetzen isolierte Tools und etablieren einen kontinuierlichen Informationsfluss. Durch die Standardisierung dieser Abläufe erreichen Marketing-Organisationen operative Exzellenz. Die Zeitersparnis ist beträchtlich, doch der größere Wert liegt in der Konsistenz der Ausführung und der Reduktion der Time-to-Market für Kampagnen.

## Workflow versus Agent — wann was

Die Unterscheidung zwischen einem Workflow und einem Agenten entscheidet über den Erfolg einer Automatisierungs-Initiative. Ein Agent agiert als dynamischer, interaktiver Berater. Er operiert in einer flexiblen Chat-Oberfläche, kann Rückfragen stellen und seine Vorgehensweise an den Verlauf der Konversation anpassen. Ein Agent ist die optimale Wahl für explorative, unstrukturierte Aufgaben — wie das Brainstorming von Kampagnen-Ideen, die inhaltliche Kritik an einem Entwurf oder die schrittweise Analyse von Datensätzen durch den Data-Analyst.

Im Gegensatz dazu ist ein Workflow eine deterministische, geschlossene Pipeline. Er erfordert keine fortlaufende Interaktion, sondern führt nach der Initiierung eine starr definierte Sequenz von Nodes aus. Workflows glänzen bei hochfrequenten, repetitiven Aufgaben, die eine garantierte Konsistenz und Struktur erfordern. Wenn ein Prozess hundertmal pro Woche exakt gleich ablaufen muss — etwa das Formatieren von Produktbeschreibungen und der Upload in ein PIM-System —, ist der Workflow das Werkzeug der Wahl. Er eliminiert die Varianz, die bei der Interaktion mit einem Agenten entstehen würde.

Die Entscheidungskriterien für Marketing-Verantwortliche sind eindeutig: Erfordert die Aufgabe kreative Flexibilität, inhaltliche Sparringspartner-Qualitäten und iterative Verfeinerung durch den Nutzer, wird ein Agent konfiguriert. Erfordert der Prozess absolute Zuverlässigkeit, strukturierte Datenverarbeitung und minimale menschliche Intervention, wird ein Workflow implementiert. Oftmals ergänzen sich beide Systeme für unterschiedliche Prozessphasen optimal.

## Advisory-Grenze (Little Data konfiguriert KEINE Workflows — der Mensch baut, der Agent berät)

Innerhalb der Langdock-Architektur und in der Interaktion mit dem Little Data Agenten existiert eine scharfe funktionale Demarkationslinie: die Advisory-Grenze. Diese Regelung stipuliert eindeutig, dass der KI-Agent ausschließlich beratende und analytische Funktionen übernimmt. Der Agent generiert Strategien, entwirft Logik-Bäume, formuliert Prompt-Templates für AI-Nodes und evaluiert potenzielle Fehlerquellen in der Architektur. Er besitzt jedoch keine Berechtigung und keine technische Schnittstelle, um Workflows aktiv im System zu konfigurieren, Nodes zu verknüpfen oder Triggers live zu schalten. Beratung, nicht Ausführung, ist das unumstößliche Paradigma.

Für die Marketing-Direktorin bedeutet dies, dass die operative Verantwortung für das System-Design beim Menschen verbleibt. Wenn komplexe Pipelines geplant werden, fungiert der Agent als hochspezialisierter Solution-Architect. Er kann auf Anfrage detaillierte Spezifikationen ausgeben, wie ein Multi-Channel-Workflow aufgebaut sein sollte und welche Structured-Output-Formate erforderlich sind. Die tatsächliche Umsetzung — das Ziehen der Nodes auf das Canvas und die Konfiguration der API-Keys — muss jedoch durch den menschlichen Nutzer erfolgen.

Diese strikte Trennung dient der Systemstabilität, der Governance und der Vermeidung von unkontrollierten Wucherungen. Würde man einem autonomen Agenten gestatten, eigenständig Workflows zu erstellen, entstünde ein erhebliches Risiko für Fehlkonfigurationen und unkalkulierbare Kosten. Indem die Konfigurationsebene dem Menschen vorbehalten bleibt, wird sichergestellt, dass jede Automatisierung einem bewussten Entwurfsprozess entspringt.

## Marketing-Szenarien aus dieser Domäne

Jedes Szenario beschreibt eine Workflow-Architektur, die Little Data **berät, aber nicht baut** — der Output ist ein Architektur-Entwurf (Canvas/Markdown), kein deployter Workflow. Die zugrundeliegenden Analyse-Methoden bleiben unsichtbares Konstruktions-Gerüst und erscheinen nicht als Feld.

### S-WF-001 Wöchentlicher Newsletter-Zusammenbau (Scheduled Trigger)

Trigger: Der Newsletter erscheint jeden Donnerstag, und die Kuratierung der Inhalte kostet die Redaktion jede Woche mehrere Stunden manueller Recherche. (Quelle: 04-workflows)
Ziel: Die wiederkehrende Kuratierung automatisieren, ohne die redaktionelle Endkontrolle aufzugeben.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Workflow mit menschlicher Freigabe vor Versand.
Fähigkeit: Workflow (Scheduled-Trigger), AI-Node, Web Search, HITL-Node
Vorgehen:
1. Den Scheduled-Trigger auf Mittwoch früh setzen, damit vor dem Versand Pufferzeit bleibt.
2. Einen AI-Node mit Web Search die relevanten Themen der Woche sammeln und in ein festes Format bringen lassen.
3. Einen HITL-Node für die redaktionelle Freigabe vor dem Übergang in das E-Mail-Tool einplanen.
Workflow: Scheduled-Trigger (Mittwoch früh, Puffer vor Do-Versand) → AI-Node + Web Search (Wochenthemen sammeln, in Festformat bringen) → HITL-Node (redaktionelle Freigabe) → Action-Node (Übergabe an E-Mail-Tool). Kein Versand vor Freigabe.
Budget: Workflow-Budget-Guard pro Lauf (Standard €25); AI-Node fix auf Efficient-Default-Modell, Auto Mode aus; 2.000-Schritte-Stopp aktiv. (Quelle: 04-workflows, 07-modelle-und-kosten)
Artefakt: Ein Workflow-Architektur-Entwurf (Canvas) mit Trigger-Zeitpunkt, AI-Node-Briefing und HITL-Punkt — bereit zur Umsetzung durch den Workspace-Admin.
Fallstricke:
- Ohne HITL-Node würde ein unfertiger Newsletter automatisch versendet → Freigabe-Node vor jeder externen Aktion zwingend einplanen.
- Der Scheduled-Trigger läuft zu knapp vor Versand → genügend Pufferzeit für die Redaktion vorsehen.
Empfehlung: Setze den HITL-Node als ersten Architektur-Entscheid, nicht als Anhängsel — er ist der einzige Schutz davor, dass ein halbfertiger Newsletter automatisch rausgeht. Der Scheduled-Trigger gehört auf Mittwoch, damit die Redaktion vor dem Do-Versand Freigabe-Puffer hat.
Anschluss: S-WF-005

### S-WF-002 Lead-Scoring bei Formular-Eingang (Form/Webhook Trigger)

Trigger: Jede Formular-Anfrage auf der Website soll automatisch bewertet und priorisiert an den Vertrieb übergeben werden. (Quelle: 04-workflows)
Ziel: Eingehende Leads ohne manuelle Vorsortierung qualifizieren, bevor sie das CRM erreichen.
Ergebnis: Ein Architektur-Entwurf für einen ereignisgesteuerten Scoring-Workflow mit deterministischem Output.
Fähigkeit: Workflow (Form-/Webhook-Trigger), AI-Node mit Structured Output, Integration-Action (CRM), HITL-Node bei hohem Score
Vorgehen:
1. Den Form- oder Webhook-Trigger an das Website-Formular koppeln.
2. Einen AI-Node mit erzwungenem JSON-Schema (Score + Begründung) konfigurieren, damit der Output maschinenlesbar bleibt.
3. Bei hohem Score einen HITL-Node für die persönliche Vertriebsansprache einplanen, bei niedrigem Score automatisch ins Nurturing routen.
Workflow: Form-/Webhook-Trigger (Website-Formular) → AI-Node mit erzwungenem JSON-Schema (score, reason) → Verzweigung: hoher Score → HITL-Node (persönliche Vertriebsansprache) → CRM-Action; niedriger Score → Nurturing-Strecke.
Budget: Pro Lauf günstig (kurze Inputs); Efficient-Default-Modell genügt fürs Scoring; Auto Mode aus. (Quelle: 04-workflows)
Artefakt: Ein Workflow-Entwurf inklusive JSON-Schema-Vorschlag für die Lead-Bewertung.
Fallstricke:
- Structured Output wird über Prompt-Wording statt über die Node-Konfiguration erzwungen → das JSON-Schema in der Agent-Node hinterlegen, nicht im Prompt erbitten.
- Niedrig bewertete Leads werden verworfen statt genurtured → eine zweite Verzweigung ins Lead-Nurturing vorsehen.
Empfehlung: Erzwinge das JSON-Schema (score, reason) in der Node-Konfiguration, nicht über Prompt-Formulierungen — nur so bleibt der Output zuverlässig maschinenlesbar fürs CRM. Verwirf niedrig bewertete Leads nie, route sie in die Nurturing-Strecke.
Anschluss: S-WF-010

### S-WF-003 Massen-Erzeugung von Meta-Descriptions (Manual Trigger + Loop)

Trigger: Für 800 Bestandsseiten fehlen SEO-Meta-Descriptions, und die manuelle Pflege ist nicht leistbar. (Quelle: 04-workflows)
Ziel: Einen einmaligen Massen-Lauf aufsetzen, der die Texte erzeugt, ohne das Workspace-Budget zu sprengen.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit Kostenkontrolle.
Fähigkeit: Workflow (Manual-Trigger, Loop-Node ≤100 Items), AI-Node, Sheets-Integration
Vorgehen:
1. Die URL-Liste in Chargen aufteilen, da ein Loop maximal 100 Items pro Durchlauf verarbeitet.
2. Einen AI-Node mit klarer Längen- und Keyword-Vorgabe je Seite konfigurieren.
3. Vor dem Start eine Kostenschätzung gegen das Per-Execution-Limit (Standard 25 €) und die Warn-Schwellen prüfen.
Workflow: Manual-Trigger (URL-Liste) → Loop-Node (Chargen ≤100 Items) → AI-Node (Längen- + Keyword-Vorgabe je Seite) → Sheets-Integration (Rückschreiben). Vor Start: Kostenschätzung gegen das Per-Execution-Limit.
Budget: Per-Execution-Limit Standard €25 pro Lauf; Warn-Schwellen 50/75/90 % vor Start aktivieren; Efficient-Default-Modell; 800 Seiten in ≥8 Chargen splitten. (Quelle: 04-workflows, 07-modelle-und-kosten)
Artefakt: Ein Batch-Workflow-Entwurf mit Chargen-Logik und einer Kostenschätzung pro Lauf.
Fallstricke:
- Mehr als 100 Items im Loop führen zum Abbruch → die Liste vorab in Chargen aufteilen.
- Ein unkontrollierter Lauf reißt das Per-Execution-Limit → Warn-Schwellen (50/75/90 %) vor dem Start aktivieren.
Empfehlung: Teile die 800 URLs in Chargen zu ≤100 — ein Loop bricht darüber ab. Rechne vor dem Start die Kosten gegen das €25-Per-Execution-Limit; ein unkontrollierter Massenlauf ist der häufigste Budget-Ausreißer.
Anschluss: S-WF-007

### S-WF-004 Klassifizierung eingehender Support-Tickets (Integration Trigger)

Trigger: Eingehende Kunden-Tickets sollen automatisch nach Thema und Dringlichkeit sortiert werden, bevor das Team sie sieht. (Quelle: 04-workflows)
Ziel: Die Triage automatisieren und konsistent halten, ohne falsch-kritische Eskalationen zu riskieren.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Klassifizierungs-Workflow.
Fähigkeit: Workflow (Integration-Trigger), AI-Node mit Structured Output (Enum-Kategorien)
Vorgehen:
1. Den Integration-Trigger an das Ticket-System (z. B. Zendesk) koppeln.
2. Einen AI-Node mit festen Enum-Kategorien für Thema und Dringlichkeit konfigurieren.
3. Eine Eskalations-Verzweigung definieren, die nur bei eindeutiger Hoch-Dringlichkeit automatisch alarmiert.
Workflow: Integration-Trigger (Ticket-System, z. B. Zendesk) → AI-Node mit Structured Output (Enum: Thema, Dringlichkeit) → Eskalations-Verzweigung (Auto-Alarm nur bei eindeutiger Hoch-Dringlichkeit, sonst normale Queue).
Budget: Pro Ticket günstig; Efficient-Default-Modell; Auto Mode aus. (Quelle: 04-workflows)
Artefakt: Ein Workflow-Entwurf mit definierter Enum-Kategorienliste und Eskalationslogik.
Fallstricke:
- Freitext-Kategorien statt Enums führen zu inkonsistenter Sortierung → die erlaubten Werte als Enum im Schema fixieren.
- Jede Kategorie löst Alarme aus → Auto-Eskalation strikt auf eindeutige Hoch-Dringlichkeit begrenzen.
Empfehlung: Fixiere die Kategorien als Enum im Structured-Output-Schema — Freitext-Kategorien zerfasern die Triage. Begrenze die Auto-Eskalation strikt auf eindeutige Hoch-Dringlichkeit, sonst trainierst du dem Team Alarm-Müdigkeit an.
Anschluss: S-WF-008

### S-WF-005 Multi-Channel-Distribution eines Blog-Artikels (Manual Trigger)

Trigger: Ein fertiger Blog-Artikel soll als kanal-spezifische Teaser für LinkedIn, X und den Newsletter aufbereitet werden. (Quelle: 04-workflows)
Ziel: Aus einem Quelltext mehrere kanalgerechte Varianten erzeugen, ohne die Markenstimme zu verlieren.
Ergebnis: Ein Architektur-Entwurf für einen Distributions-Workflow mit Brand-Voice-Bindung.
Fähigkeit: Workflow (Manual-Trigger), AI-Node, Wissensordner (Brand-Voice), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit der Artikel-URL als Eingabe definieren.
2. Einen AI-Node je Kanal konfigurieren, jeweils gebunden an den Brand-Voice-Wissensordner und die Plattform-Limits (z. B. LinkedIn-Hook in den ersten 40 Zeichen).
3. Einen HITL-Node für die Freigabe aller Varianten vor der Veröffentlichung einplanen.
Workflow: Manual-Trigger (Artikel-URL) → drei parallele AI-Nodes (LinkedIn/X/Newsletter), jeder an Brand-Voice-Wissensordner + Plattform-Limit gebunden (z. B. LinkedIn-Hook ≤40 Zeichen) → HITL-Node (Freigabe aller Varianten) → Veröffentlichung.
Budget: Drei AI-Aufrufe pro Lauf; Strong-Generalist nur wenn Brand-Voice-Präzision kritisch, sonst Efficient-Default. (Quelle: 04-workflows, 07-modelle-und-kosten)
Artefakt: Ein Distributions-Workflow-Entwurf mit kanal-spezifischen AI-Node-Briefings.
Fallstricke:
- Ein einziger Node für alle Kanäle erzeugt uniforme Texte → je Kanal einen eigenen Node mit eigenen Limits.
- Die Markenstimme driftet ab → jeden Node verbindlich an den Brand-Voice-Wissensordner koppeln.
Empfehlung: Ein Node pro Kanal, nicht ein Sammelnode — sonst bekommst du drei Mal denselben uniformen Text. Koppel jeden Node verbindlich an den Brand-Voice-Wissensordner, sonst driftet die Stimme über die Kanäle auseinander.
Anschluss: S-WF-001

### S-WF-006 Lokalisierungs-Pipeline für neue CMS-Artikel (Integration Trigger)

Trigger: Jeder neue deutschsprachige CMS-Artikel soll automatisch eine englische Transkreation für den internationalen Markt erhalten. (Quelle: 04-workflows)
Ziel: Lokalisierung beschleunigen, ohne dass roh-übersetzte Texte ungeprüft live gehen.
Ergebnis: Ein Architektur-Entwurf für eine getriggerte Übersetzungs- und Prüf-Pipeline.
Fähigkeit: Workflow (Integration-Trigger), DeepL-Integration, AI-Node (Brand-Voice-Check), HITL-Node
Vorgehen:
1. Den Integration-Trigger an die CMS-Veröffentlichung koppeln.
2. Eine DeepL-Integration die Rohübersetzung erzeugen lassen, gefolgt von einem AI-Node, der Tonalität und Fachbegriffe gegen den Brand-Voice-Wissensordner prüft.
3. Einen HITL-Node vor der Veröffentlichung der lokalisierten Fassung einplanen.
Workflow: Integration-Trigger (CMS-Veröffentlichung) → DeepL-Integration (Rohübersetzung) → AI-Node (Brand-Voice- + Terminologie-Check gegen Glossar im Wissensordner) → HITL-Node (Freigabe) → Veröffentlichung der EN-Fassung. Keine ungeprüfte Live-Schaltung.
Budget: DeepL plus ein AI-Check-Aufruf pro Artikel; Efficient-Default für den Check. (Quelle: 04-workflows)
Artefakt: Ein Lokalisierungs-Workflow-Entwurf mit Übersetzungs- und Prüfschritt.
Fallstricke:
- Roh-Übersetzungen gehen ungeprüft live → den HITL-Node vor der Veröffentlichung zwingend setzen.
- Fachbegriffe werden falsch übersetzt → ein Glossar im Brand-Voice-Wissensordner hinterlegen und im Check-Node referenzieren.
Empfehlung: Hinterlege ein Fachglossar im Brand-Voice-Wissensordner und referenziere es im Check-Node — DeepL allein übersetzt Fachbegriffe oft falsch. Der HITL-Node vor Veröffentlichung ist nicht verhandelbar: roh-übersetzte Texte gehen nie ungeprüft live.
Anschluss: S-WF-005

### S-WF-007 Täglicher Wettbewerbs-Nachrichten-Digest (Scheduled Trigger)

Trigger: Das Team möchte jeden Morgen eine kompakte Übersicht relevanter Wettbewerber- und Marktnachrichten erhalten. (Quelle: 04-workflows)
Ziel: Marktbeobachtung automatisieren und auf das Wesentliche verdichten, ohne Quellenrauschen.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Recherche- und Zusammenfassungs-Workflow.
Fähigkeit: Workflow (Scheduled-Trigger), Web Search, AI-Node, Action-Node (interner Versand)
Vorgehen:
1. Den Scheduled-Trigger auf jeden Werktagmorgen setzen.
2. Einen AI-Node mit Web Search die definierten Wettbewerber und Themen abfragen und auf maximal fünf Kernpunkte verdichten lassen.
3. Eine Action den Digest in den internen Team-Kanal stellen — ohne externe Veröffentlichung, daher ohne HITL.
Workflow: Scheduled-Trigger (Werktagmorgen) → AI-Node + Web Search (feste Wettbewerber-/Themenliste, auf ≤5 Kernpunkte verdichten) → Action-Node (Post in internen Team-Kanal). Rein intern, daher kein HITL nötig.
Budget: Ein Web-Search-Lauf pro Tag; Efficient-Default genügt; enger Quellen-Scope spart Tokens. (Quelle: 04-workflows)
Artefakt: Ein Digest-Workflow-Entwurf mit Quellen-Scope und Verdichtungsregel.
Fallstricke:
- Web Search liefert irrelevantes Rauschen → den Quellen-Scope und die Wettbewerberliste eng definieren.
- Der Digest wird zu lang → eine harte Obergrenze von fünf Kernpunkten im Node-Briefing setzen.
Empfehlung: Definiere Wettbewerberliste und Quellen-Scope eng — offene Web Search liefert sonst Rauschen statt Marktsignal. Eine harte Obergrenze von fünf Kernpunkten hält den Digest lesbar; weil er nur intern läuft, ist hier ausnahmsweise kein HITL nötig.
Anschluss: S-WF-003

### S-WF-008 Sentiment-Monitoring für Produkt-Reviews (Scheduled Trigger)

Trigger: Negative Bewegungen in Produkt-Reviews sollen früh erkannt werden, bevor sie eskalieren. (Quelle: 04-workflows)
Ziel: Stimmungsverschiebungen automatisch erkennen und nur bei echten Ausschlägen alarmieren.
Ergebnis: Ein Architektur-Entwurf für einen Monitoring-Workflow mit Schwellen-Alarm.
Fähigkeit: Workflow (Scheduled-Trigger), Integration (Review-Quelle), AI-Node (Sentiment, Structured Output)
Vorgehen:
1. Den Scheduled-Trigger auf einen täglichen Lauf setzen.
2. Einen AI-Node die neuen Reviews klassifizieren und einen aggregierten Sentiment-Wert mit fester Skala ausgeben lassen.
3. Einen Alarm nur auslösen, wenn der Wert eine vorab definierte Schwelle unterschreitet.
Workflow: Scheduled-Trigger (täglich) → Integration (Review-Quelle) → AI-Node (Sentiment-Klassifikation, Structured Output mit fester numerischer Skala, aggregierter Wert) → Schwellen-Verzweigung (Alarm nur bei Unterschreiten der definierten Schwelle).
Budget: Ein Lauf pro Tag; Efficient-Default-Modell; nur neue Reviews verarbeiten. (Quelle: 04-workflows)
Artefakt: Ein Monitoring-Workflow-Entwurf mit definierter Sentiment-Skala und Alarmschwelle.
Fallstricke:
- Jede leichte Schwankung löst Alarm aus → eine sinnvolle Schwelle und einen Glättungszeitraum definieren.
- Die Sentiment-Skala ist unscharf → eine feste numerische Skala im Structured Output erzwingen.
Empfehlung: Erzwinge eine feste numerische Sentiment-Skala im Structured Output und definiere Alarmschwelle plus Glättungszeitraum — sonst feuert jede Tagesschwankung einen Fehlalarm. Alarmiere nur bei echtem Ausschlag.
Anschluss: S-WF-004

### S-WF-009 Wöchentlicher Kampagnen-Reporting-Digest (Scheduled Trigger)

Trigger: Das wöchentliche Performance-Reporting aus mehreren Analytics-Quellen kostet das Team jeden Montag viel Zusammenbau-Zeit. (Quelle: 04-workflows)
Ziel: Das Reporting automatisch aggregieren und narrativ aufbereiten, mit klarer Trennung von Daten und Interpretation.
Ergebnis: Ein Architektur-Entwurf für einen Reporting-Workflow mit menschlicher Interpretations-Freigabe.
Fähigkeit: Workflow (Scheduled-Trigger), Integration (Analytics/BI), AI-Node, HITL-Node
Vorgehen:
1. Den Scheduled-Trigger auf Montagmorgen setzen.
2. Über Integrationen die Kennzahlen ziehen und einen AI-Node eine faktentreue Zusammenfassung mit benannten Veränderungen erstellen lassen.
3. Einen HITL-Node einplanen, in dem die Leitung die Interpretation prüft, bevor der Report verteilt wird.
Workflow: Scheduled-Trigger (Montagmorgen) → Integration-Nodes (Analytics/BI: Kennzahlen ziehen, auf gleichen Zeitraum normalisieren) → AI-Node (faktentreue Zusammenfassung mit benannten Veränderungen, Daten ≠ Deutung) → HITL-Node (Leitung prüft Interpretation) → Verteilung.
Budget: Ein Lauf pro Woche; Strong-Generalist für saubere Synthese vertretbar; Auto Mode aus. (Quelle: 04-workflows, 07-modelle-und-kosten)
Artefakt: Ein Reporting-Workflow-Entwurf mit Datenquellen-Liste und Interpretations-Freigabepunkt.
Fallstricke:
- Der AI-Node interpretiert Zahlen eigenmächtig → Daten und Deutung trennen, Deutung dem HITL-Schritt überlassen.
- Unterschiedliche Zeiträume der Quellen verfälschen die Aggregation → vorab auf denselben Zeitraum normalisieren.
Empfehlung: Trenne Daten und Deutung strikt: der AI-Node liefert faktentreue Zahlen mit benannten Veränderungen, die Interpretation gehört in den HITL-Schritt. Normalisiere alle Quellen vorab auf denselben Zeitraum, sonst aggregierst du Äpfel und Birnen.
Anschluss: S-WF-007

### S-WF-010 Personalisierte Follow-up-Sequenz nach Event-Anmeldung (Webhook Trigger)

Trigger: Nach einer Webinar-Anmeldung soll automatisch eine personalisierte, aber freigabepflichtige Follow-up-Nachricht vorbereitet werden. (Quelle: 04-workflows)
Ziel: Zeitnahe Personalisierung ermöglichen, ohne unkontrollierten automatischen Versand an Kontakte.
Ergebnis: Ein Architektur-Entwurf für eine webhook-getriggerte Follow-up-Pipeline mit Freigabe.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node, Wissensordner (Segment-Kontext), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an die Anmelde-Bestätigung koppeln.
2. Einen AI-Node einen personalisierten Entwurf auf Basis des Segment-Kontexts aus dem Wissensordner erstellen lassen.
3. Einen HITL-Node vor jedem externen Versand zwingend einplanen.
Workflow: Webhook-Trigger (Anmelde-Bestätigung) → AI-Node (personalisierter Entwurf aus Segment-Kontext im Wissensordner) → HITL-Node (Freigabe vor Versand) → E-Mail-Tool.
Budget: Pro Anmeldung ein kurzer AI-Aufruf; Efficient-Default genügt. (Quelle: 04-workflows)
Artefakt: Ein Follow-up-Workflow-Entwurf mit Personalisierungs-Logik und verpflichtendem Freigabe-Schritt.
Fallstricke:
- Ein automatischer Versand ohne Freigabe verletzt die Kontrolle über Kunden-Kommunikation → HITL vor jeder externen Aktion.
- Fehlender Segment-Kontext erzeugt generische Nachrichten → den Wissensordner mit Segment-Profilen verbinden.
Empfehlung: Kein automatischer Versand an Kontakte — der HITL-Node vor jeder externen Aktion ist Pflicht. Verbinde den Wissensordner mit Segment-Profilen, sonst entstehen generische Nachrichten, die die Personalisierung aushebeln.
Anschluss: S-WF-011

### S-WF-011 Reaktivierung dormanter CRM-Kontakte nach Klick-Ereignis (Webhook Trigger)

Trigger: Ein inaktiver CRM-Kontakt klickt auf eine Win-back-E-Mail und soll sofort und automatisch in die aktive Segment-Liste wechseln — ohne manuelle CSV-Exporte. (Quelle: sources/10 S-061)
Ziel: CRM-Datenhygiene in Echtzeit automatisieren und sicherstellen, dass reaktivierte Kontakte keine Dormant-Kommunikation mehr erhalten.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Listenumschalt-Workflow mit Bot-Klick-Filter.
Fähigkeit: Workflow (Webhook-Trigger), Logic-Node (Condition), Action-Node (CRM-Integration HubSpot/Salesforce)
Vorgehen:
1. Den Webhook-Trigger an das Klick-Event des E-Mail-Tools koppeln und die Kontakt-ID sowie Kampagnen-ID als Payload übergeben.
2. Einen Condition-Node prüfen lassen, ob der Kontakt tatsächlich auf der Dormant-Liste steht und kein Bot-Flag gesetzt ist.
3. Einen CRM-Action-Node den Kontakt aus der Dormant-Liste entfernen und zur Active-Liste hinzufügen lassen.
4. Einen zweiten Action-Node eine interne Slack-Notification mit Kontaktname und Kampagne auslösen lassen — kein automatischer Folgeversand.
Workflow: Webhook-Trigger (Klick-Event, Payload: Kontakt-ID + Kampagnen-ID) → Condition-Node (auf Dormant-Liste? kein Bot-Flag? DSGVO-Opt-out geprüft?) → CRM-Action (Dormant → Active) → Slack-Notification (intern). Kein automatischer Folgeversand.
Budget: Logik-/Action-Workflow ohne teuren AI-Node; vernachlässigbare Kosten pro Lauf. (Quelle: sources/10 S-061)
Artefakt: Ein Workflow-Entwurf mit Bot-Filter-Logik, CRM-Listenumschalt-Action und interner Benachrichtigung — ohne automatischen Kunden-Versand.
Fallstricke:
- Bot-Crawler lösen Klick-Events aus und reaktivieren Kontakte fälschlicherweise → den Condition-Node auf User-Agent-Prüfung oder Double-Klick-Logik auslegen.
- Der Workflow reaktiviert einen Kontakt, der aus Datenschutzgründen explizit deaktiviert wurde → vor dem Listenumschalten eine DSGVO-Opt-out-Prüfung als zusätzlichen Condition-Node einplanen.
Empfehlung: Filtere Bot-Klicks über einen Condition-Node (User-Agent / Double-Klick-Logik) — Crawler reaktivieren sonst falsch. Schalte einen DSGVO-Opt-out-Check vor das Listenumschalten: ein bewusst deaktivierter Kontakt darf nie automatisch reaktiviert werden.
Anschluss: S-WF-012

### S-WF-012 Hyper-personalisierter Webinar-Follow-up per CRM-Trigger (Integration Trigger)

Trigger: Nach einem Webinar liegen Teilnehmer-Fragen als CRM-Feld vor; jeder Kontakt soll eine Follow-up-E-Mail erhalten, die genau seine gestellte Frage aufgreift — bei 50 Teilnehmern manuell nicht leistbar. (Quelle: sources/10 S-062)
Ziel: Personalisierung im Post-Event-CRM auf Zeilenskalierung bringen, ohne dass die Qualität auf generische Textbausteine abfällt.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Personalisierungs-Workflow mit HITL vor dem Versand.
Fähigkeit: Workflow (Integration-Trigger HubSpot/Salesforce), AI-Node (Structured Output), Action-Node (CRM-Feld-Update), HITL-Node
Vorgehen:
1. Den Integration-Trigger auf das Ereignis "Neues Formularfeld ausgefüllt" (Teilnehmer-Frage) im CRM koppeln.
2. Einen AI-Node die individuelle Frage analysieren und eine 2-Satz-Antwort als JSON-Feld ausgeben lassen — Structured Output erzwingen.
3. Einen Action-Node den generierten Text als Custom-Property im CRM-Kontakt speichern lassen — kein direkter Versand.
4. Einen HITL-Node aktivieren, der alle generierten Antworten zur Batch-Prüfung vorlegt, bevor das E-Mail-Tool die Injektion vornimmt.
Workflow: Integration-Trigger (CRM: Teilnehmer-Frage ausgefüllt) → Condition-Node (leere Inputs ausfiltern) → AI-Node (Structured Output: antwort_text als 2-Satz-JSON) → CRM-Action (Custom-Property speichern) → HITL-Node (Batch-Freigabe) → E-Mail-Injektion. Kein Direktversand.
Budget: 50 kurze AI-Aufrufe pro Event; Efficient-Default; Structured Output spart Nacharbeit. (Quelle: sources/10 S-062)
Artefakt: Ein Personalisierungs-Workflow-Entwurf mit JSON-Schema-Vorlage für das CRM-Feld und verpflichtendem Batch-Freigabe-Schritt.
Fallstricke:
- Ein leeres oder sinnloses Frage-Feld lässt den AI-Node halluzinieren → einen Condition-Node für leere Inputs vorschalten, der diese Datensätze ausfiltert.
- Der AI-Node gibt Freitext statt maschinenlesbares JSON zurück → das Structured-Output-Schema direkt in der Node-Konfiguration hinterlegen, nicht nur im Prompt bitten.
Empfehlung: Schalte einen Condition-Node für leere Frage-Felder vor — sonst halluziniert der AI-Node auf Leerinput. Hinterlege das JSON-Schema (antwort_text) in der Node-Konfiguration, nicht im Prompt, und lege alle Antworten dem HITL-Batch vor, bevor das E-Mail-Tool injiziert.
Anschluss: S-WF-013

### S-WF-013 Bulk-Lokalisierungs-Pipeline für mehrere Zielmärkte (Manual Trigger + Loop)

Trigger: Ein neues Produkt-Feature muss in 6 Sprachen lokalisiert werden; die manuelle Einzelübersetzung pro Markt kostet das Team eine Woche. (Quelle: A-24)
Ziel: Lokalisierungs-Jobs kostengünstig im Batch verarbeiten und dabei ein schlankes Modell für Standard-Übersetzung einsetzen, um den Faktor 5–10× Kostenvorteil gegenüber Einzelläufen zu erzielen.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit sprach-spezifischen AI-Nodes, Kostenkontrolle und HITL-Freigabe.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (≤100 Items), AI-Node (Flash-Modell für Routine, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit einer JSON-Array-Eingabe aufsetzen, die Quelltext und Zielsprachen-Liste übergibt.
2. Einen Loop-Node über die Sprachliste iterieren lassen und für jede Sprache einen AI-Node mit Flash-Modell und Glossar-Wissensordner triggern.
3. Die Outputs als JSON-Array sammeln und einen HITL-Node für die native Muttersprachler-Prüfung je Sprache einplanen.
4. Vor dem Start eine Kostenschätzung gegen das Per-Execution-Limit prüfen und die Warn-Schwellen auf 75 % setzen.
Workflow: Manual-Trigger (JSON-Array: Quelltext + Zielsprachen) → Loop-Node (≤100 Items, über Sprachliste) → AI-Node je Sprache (Efficient-Default/Flash + Glossar-Wissensordner, Structured Output) → Outputs als JSON-Array → HITL-Node (Muttersprachler-Prüfung je Sprache).
Budget: Flash/Efficient-Default für Routine-Übersetzung; Warn-Schwellen auf 75 %; Kostenschätzung gegen Per-Execution-Limit vor Start. (Quelle: 04-workflows, 07-modelle-und-kosten)
Artefakt: Ein Bulk-Lokalisierungs-Workflow-Entwurf mit Loop-Logik, Modell-Auswahl-Begründung und Kostenschätzung pro Lauf.
Fallstricke:
- Der Loop überschreitet 100 Items → die Sprachliste in Chargen aufteilen oder Loop-Limit vorab prüfen.
- Das Flash-Modell liefert fehlerhafte Fachterminologie → ein Glossar als Pflicht-Wissensordner in jeden Sprach-Node einbinden.
Empfehlung: Setze ein Flash-/Efficient-Default-Modell für Routine-Übersetzung — der Kostenvorteil gegenüber Einzelläufen rechtfertigt keinen Strong-Generalist. Binde ein Fachglossar als Pflicht-Wissensordner in jeden Sprach-Node, sonst kippt die Terminologie. Splitte bei mehr als 100 Items in Chargen.
Anschluss: S-WF-014

### S-WF-014 HITL-Gate-Architektur für mehrstufige Briefing-Workflows (Manual Trigger)

Trigger: Ein mehrstufiger Briefing-Workflow läuft durch Recherche, Brand-Voice-Pass und Legal-Check — unklar ist, nach welchem Schritt der Mensch eingreifen muss, damit keine unkontrollierten Outputs das System verlassen. (Quelle: A-32)
Ziel: Die drei optimalen HITL-Checkpoints in einer mehrstufigen Pipeline definieren, um Kontrolle zu maximieren ohne die Automatisierung zu torpedieren.
Ergebnis: Ein Architektur-Entwurf mit drei explizit platzierten HITL-Gates und deren jeweiliger Prüfaufgabe.
Fähigkeit: Workflow (Manual-Trigger), AI-Node (Recherche + Brand-Voice + Legal), HITL-Node (3×), Wissensordner (Brand-Voice, Legal-Guidelines)
Vorgehen:
1. Gate 1 nach der Recherche-Phase einplanen: Fakten-Check — der Mensch prüft, ob Quellen korrekt und vollständig sind.
2. Gate 2 nach dem Brand-Voice-Pass einplanen: Tonalitäts-Check — der Mensch entscheidet, ob Stimme und Botschaft konsistent sind.
3. Gate 3 vor jedem externen Output einplanen: Rechts-Check — der Mensch bestätigt, dass keine rechtlichen Risiken (UWG, DSGVO) im Text vorliegen.
4. Jeden HITL-Node mit einer klaren Prüf-Instruktion ausstatten, damit der Reviewer weiß, welche Dimension er genehmigt.
Workflow: Manual-Trigger → AI-Recherche-Node → HITL-Gate 1 (Fakten-Check) → AI-Brand-Voice-Node → HITL-Gate 2 (Tonalitäts-Check) → AI-Legal-Node → HITL-Gate 3 (Rechts-Check: UWG/DSGVO) → externer Output. Jedes Gate mit eigener Prüf-Instruktion.
Budget: Drei AI-Pässe pro Durchlauf; Modell je Phase wählen (Recherche günstig, Legal-Check sorgfältiger). (Quelle: A-32, 04-workflows)
Artefakt: Ein Briefing-Workflow-Entwurf mit drei beschrifteten HITL-Gates und einer Prüf-Instruktions-Vorlage pro Gate.
Fallstricke:
- Zu viele HITL-Gates lähmem den Workflow → drei Gates sind das Optimum; mehr als fünf defeats den Automatisierungszweck.
- Ein HITL-Node ohne klare Prüf-Instruktion wird vom Reviewer übersprungen → jede Gate-Node muss eine konkrete Entscheidungsfrage enthalten.
Empfehlung: Drei HITL-Gates sind das Optimum — eines nach Recherche (Fakten), eines nach Brand-Voice (Tonalität), eines vor Output (Recht). Gib jedem Gate eine konkrete Entscheidungsfrage; ein Gate ohne Prüf-Instruktion wird übersprungen. Mehr als fünf Gates ersticken die Automatisierung.
Anschluss: S-WF-015

### S-WF-015 Eingehende Leads per E-Mail-Trigger qualifizieren und routen (Email Trigger)

Trigger: Eingehende Anfragen landen im Marketing-Postfach als Freitext-E-Mails; die manuelle Triage kostet täglich Zeit und führt zu Weiterleitungsfehlern. (Quelle: 12 Q-111)
Ziel: E-Mail-Eingänge automatisch klassifizieren, qualifizieren und an das richtige Team routen — mit HITL vor der finalen CRM-Übergabe.
Ergebnis: Ein Architektur-Entwurf für einen email-getriggerten Qualifizierungs- und Routing-Workflow.
Fähigkeit: Workflow (Email-Trigger), AI-Node (Klassifizierung, Structured Output), Logic-Node (Condition), Action-Node (Slack-Routing), HITL-Node
Vorgehen:
1. Den Email-Trigger auf die Marketing-Inbox koppeln und den E-Mail-Body als Variable übergeben.
2. Einen AI-Node die Anfrage klassifizieren lassen — Structured Output mit Enum-Feldern: Typ (Lead/Support/Spam), Priorität (hoch/mittel/niedrig), zuständiges Team.
3. Condition-Nodes für jede Routing-Option aufsetzen: Lead → Slack-Nachricht an Sales, Support → Ticket-System, Spam → Archivierung ohne Aktion.
4. Einen HITL-Node nur für hoch-priorisierte Leads einplanen, bevor die CRM-Übergabe erfolgt.
Workflow: Email-Trigger (Marketing-Inbox, Body als Variable) → Vorfilter-Condition (Bounces/Out-of-Office aussortieren) → AI-Node (Structured Output, Enum: Typ Lead/Support/Spam, Priorität, Team) → Condition-Routing (Lead → Slack/Sales, Support → Ticket, Spam → Archiv) → HITL-Node (nur hoch-priorisierte Leads vor CRM-Übergabe).
Budget: Ein kurzer Klassifikations-Aufruf pro Mail; Efficient-Default. (Quelle: 12 Q-111)
Artefakt: Ein E-Mail-Routing-Workflow-Entwurf mit Enum-Klassifizierungs-Schema und bedingter HITL-Logik.
Fallstricke:
- Newsletter-Bounces und automatische Out-of-Office-Antworten triggern den Workflow unnötig → einen Vorfilter-Condition-Node für bekannte Absender-Muster einplanen.
- Freitext-Klassifizierung ohne Enum-Schema liefert inkonsistente Routing-Entscheidungen → die erlaubten Kategorien als feste Enum-Werte im Structured Output erzwingen.
Empfehlung: Schalte einen Vorfilter für Bounces und Out-of-Office vor den AI-Node, sonst feuert der Workflow auf Maschinen-Mails. Erzwinge Enum-Kategorien im Structured Output; HITL nur bei hoher Priorität, damit die Triage schlank bleibt.
Anschluss: S-WF-016

### S-WF-016 Neuen CMS-Artikel per File-Watch-Trigger zur Freigabe routen (New File in Folder)

Trigger: Autoren legen fertige Blog-Artikel-Entwürfe in einem geteilten Ordner ab; der Freigabeprozess läuft per E-Mail und geht regelmäßig unter. (Quelle: sources/10 S-006)
Ziel: Den Content-Freigabeprozess durch einen automatisch ausgelösten Review-Workflow ersetzen, der den Entwurf prüft und strukturiert zur Genehmigung vorlegt.
Ergebnis: Ein Architektur-Entwurf für einen dateigetriggerten Freigabe-Workflow mit Brand-Voice-Check und HITL.
Fähigkeit: Workflow (New-File-in-Folder-Trigger), AI-Node (Brand-Voice-Check, Wissensordner), HITL-Node, Action-Node (Slack-Benachrichtigung)
Vorgehen:
1. Den New-File-in-Folder-Trigger auf den geteilten Content-Ordner konfigurieren — der Workflow startet automatisch bei jeder neu abgelegten Datei.
2. Einen AI-Node den Entwurf gegen den Brand-Voice-Wissensordner prüfen lassen und einen strukturierten Review-Report (Tonalität, Fehler, Optimierungsvorschläge) als Structured Output erzeugen lassen.
3. Einen HITL-Node den Report zusammen mit dem Originalentwurf dem designierten Freigeber präsentieren lassen.
4. Nach Freigabe einen Slack-Action-Node den Autor über die Genehmigung benachrichtigen lassen — kein automatischer CMS-Upload.
Workflow: New-File-in-Folder-Trigger (geteilter Content-Ordner, Filter FINAL_) → AI-Node (Brand-Voice-Check gegen Wissensordner, Structured Review-Report: Tonalität/Fehler/Vorschläge) → HITL-Node (Report + Originalentwurf an Redaktionsleitung) → Slack-Action (Autor benachrichtigen). Kein automatischer CMS-Upload.
Budget: Ein Review-Aufruf pro finalem Entwurf; Strong-Generalist nur bei kritischer Brand-Voice. (Quelle: sources/10 S-006)
Artefakt: Ein Content-Freigabe-Workflow-Entwurf mit Brand-Voice-Check-Node, HITL-Präsentation und Benachrichtigungs-Action.
Fallstricke:
- Jede Dateiversion (Draft v2, v3 …) triggert den Workflow erneut → eine Namenskonvention für finale Entwürfe (z. B. "FINAL_") als Trigger-Filter definieren.
- Der AI-Node bewertet zu hart und blockiert gute Artikel → den Brand-Voice-Check auf konkrete Prüfpunkte beschränken, nicht auf subjektive Qualitätsurteile.
Empfehlung: Definiere eine Namenskonvention (z. B. FINAL_) als Trigger-Filter, sonst löst jede Zwischenversion den Workflow aus. Beschränke den Brand-Voice-Check auf konkrete Prüfpunkte, nicht auf subjektive Qualitätsurteile — sonst blockiert der Node gute Artikel.
Anschluss: S-WF-017

### S-WF-017 Tägliche Performance-Anomalie-Erkennung mit automatischer Slack-Eskalation (Scheduled Trigger)

Trigger: Kampagnen-KPIs verändern sich täglich — das Team bemerkt Anomalien oft erst bei der Wochenmeldung, zu spät für reaktives Steuern. (Quelle: sources/10 S-072)
Ziel: Statistisch signifikante Ausschläge in Performance-Daten täglich automatisch erkennen und sofort intern melden, ohne manuellen Dashboard-Check.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Anomalie-Erkennungs-Workflow mit schwellenwertbasierter Eskalation.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Analytics/CRM), AI-Node (Anomalie-Analyse, Structured Output), Condition-Node, Action-Node (Slack)
Vorgehen:
1. Den Scheduled-Trigger auf jeden Werktagmorgen setzen und aktuelle KPI-Daten via Analytics-Integration ziehen.
2. Einen AI-Node die Daten gegen den 7-Tage-Durchschnitt vergleichen lassen und Ausschläge mit festem Structured-Output-Schema (Metrik, Abweichung %, Schwere) identifizieren.
3. Einen Condition-Node nur bei Abweichungen ≥ 20 % eine Slack-Eskalation auslösen lassen — darunter stille Protokollierung.
4. Die Slack-Nachricht mit konkreten Werten, betroffener Kampagne und einem Empfehlungs-Satz befüllen — kein automatisches Steuern der Kampagne.
Prompt:
> "Du bist Performance-Monitoring-Architect. Entwirf einen täglichen Anomalie-Erkennungs-Workflow für Kampagnen-KPIs. Kontext: 7-Tage-Vergleich, Eskalation nur ab 20% Abweichung, keine automatische Kampagnen-Anpassung. Format: Scheduled-Trigger, Analytics-Integration, AI-Node mit Abweichungs-Schema, Condition, Slack-Action."
Artefakt: Ein Anomalie-Workflow-Entwurf mit Abweichungs-Schema, Schwellenwert-Definition und Slack-Nachrichten-Template.
Fallstricke:
- Saisonale Schwankungen (z. B. Feiertage) lösen Fehlalarme aus → den Vergleichszeitraum auf gleichartige Wochentage beschränken.
- Jede kleine Abweichung löst Slack-Flut aus → den Condition-Node auf einen klar definierten Schwellenwert halten und ihn dokumentieren.
Anschluss: S-WF-018

### S-WF-018 Workflow-Fehlerbehandlung und Dead-Letter-Queue-Muster (Manual Trigger)

Trigger: Ein produktiver Workflow bricht ab, weil ein einzelner API-Call fehlschlägt — ohne Fehlerbehandlung gehen Daten still verloren und das Team merkt es nicht. (Quelle: A-40)
Ziel: Eine robuste Fehlerbehandlungs-Architektur etablieren, die fehlerhafte Runs sichtbar macht und eine manuelle Nachverarbeitung ermöglicht.
Ergebnis: Ein Architektur-Entwurf für einen Workflow mit Error-Branch, Dead-Letter-Queue-Muster und Monitoring-Alert.
Fähigkeit: Workflow (Manual-Trigger), Error-Branch-Logik, Action-Node (Fehler-Protokollierung in Sheets), Action-Node (Slack-Alert), HITL-Node
Vorgehen:
1. Jeden kritischen Action-Node mit einem Error-Branch versehen, der bei Fehler nicht den Workflow abbricht, sondern in einen Fehler-Pfad umleitet.
2. Im Fehler-Pfad einen Action-Node den fehlerhaften Datensatz (Input + Fehlermeldung + Timestamp) in ein Fehler-Protokoll-Sheet schreiben lassen.
3. Einen Slack-Action-Node sofortige Benachrichtigung an den Workflow-Admin auslösen lassen — mit Workflow-Name, Fehlertyp und Link zum Log.
4. Einen HITL-Node am Ende des Fehler-Pfads einplanen, der die manuelle Nachverarbeitung der fehlerhaften Items initiiert.
Prompt:
> "Du bist Workflow-Reliability-Architect. Entwirf ein Fehlerbehandlungs-Muster für einen produktiven Marketing-Workflow. Kontext: Fehler dürfen nicht still verschwinden, manuelle Nachverarbeitung muss möglich sein. Format: Error-Branch-Architektur, Dead-Letter-Sheet-Action, Slack-Alert-Node, HITL für Nachverarbeitung."
Artefakt: Ein Fehlerbehandlungs-Architektur-Entwurf mit Error-Branch-Logik, Log-Schema und Slack-Alert-Template.
Fallstricke:
- Kein Error-Branch an der richtigen Node → Fehler propagieren still und korrumpieren Downstream-Daten; jeden External-Call absichern.
- Das Fehler-Log füllt sich mit Duplikaten, wenn der Workflow zu oft retried → eine Retry-Limit-Regel (max. 2 Versuche) vorab definieren.
Anschluss: S-WF-019

### S-WF-019 Workflow-Teststrategien vor Produktiv-Rollout (Manual Trigger)

Trigger: Ein neuer Workflow soll produktiv gesetzt werden — unklar ist, wie man ihn ohne Live-Daten und Kunden-Kontakt sicher testen kann. (Quelle: A-40)
Ziel: Eine dreistufige Test-Strategie definieren, die Fehler vor dem Produktiv-Betrieb entdeckt und die Akzeptanz im Team stärkt.
Ergebnis: Ein Architektur-Entwurf für eine strukturierte Workflow-Test-Pipeline mit synthetischen Daten, Dry-Run und Canary-Release.
Fähigkeit: Workflow (Manual-Trigger für Test-Runs), Structured Output (Output-Validierung), HITL-Node (Canary-Freigabe)
Vorgehen:
1. Phase 1 — Unit-Test: Den Workflow mit synthetischen Eingaben (edge cases: leer, zu lang, Sonderzeichen) manuell ausführen und prüfen, ob jede Node korrekt reagiert.
2. Phase 2 — Dry-Run: Den Workflow mit echten Daten ausführen, aber alle externen Actions (CRM-Update, E-Mail-Versand) auf Mock-Endpunkte umleiten.
3. Phase 3 — Canary-Release: Den Workflow für 5–10 % realer Inputs live schalten und einen HITL-Node die ersten Outputs validieren lassen.
4. Erst nach drei fehlerfreien Canary-Zyklen den Workflow vollständig in Produktion bringen.
Prompt:
> "Du bist Workflow-QA-Architect. Entwirf eine dreistufige Test-Strategie für einen neuen Marketing-Workflow vor dem Produktiv-Rollout. Kontext: Keine Live-Kunden-Interaktion während der Tests, HITL für Canary-Validierung. Format: Teststufen mit Beschreibung, synthetische Test-Cases, Canary-Kriterien."
Artefakt: Eine Workflow-Test-Strategie mit drei Phasen, Beispiel-Test-Cases pro Phase und Canary-Freigabe-Kriterien.
Fallstricke:
- Direkt auf Produktiv-Daten testen → real Kunden-E-Mails oder CRM-Einträge werden ungewollt modifiziert; Mock-Endpunkte sind nicht optional.
- Kein Canary-Release → Fehler treten erst unter voller Last auf; 5 % Canary-Traffic entdeckt Skalierungs-Probleme rechtzeitig.
Anschluss: S-WF-020

### S-WF-020 Workflow-ROI-Messung und Reporting für den CFO (Scheduled Trigger)

Trigger: Der CFO fordert einen Quartalsbericht über den Wert der Workflow-Automatisierungen — bislang gibt es keine strukturierte Messmethodik. (Quelle: A-01)
Ziel: Workflow-Effizienz in CFO-lesbare Kennzahlen übersetzen: eingesparte Zeit, Kostenvermeidung und Output-Qualitäts-Proxy.
Ergebnis: Ein Architektur-Entwurf für einen monatlichen ROI-Reporting-Workflow mit automatischer Daten-Aggregation und menschlicher Interpretations-Freigabe.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Langdock Usage-Export-API), AI-Node, HITL-Node
Vorgehen:
1. Den Scheduled-Trigger auf Monatsende setzen und via Usage-Export-API die Workflow-Lauf-Anzahl, Token-Verbrauch und Ausführungszeiten ziehen.
2. Einen AI-Node die Rohdaten in drei CFO-KPIs übersetzen lassen: Lohnkosten-Äquivalent (Token-Verbrauch × Stunden-Basis), Time-to-Brief-Reduktion, Output-Volumen-Steigerung.
3. Den Output als Structured-Output-Tabelle erzeugen, die direkt in das Quartalsbericht-Template einpastet werden kann.
4. Einen HITL-Node die Interpretation durch die Marketing-Leitung freigeben lassen, bevor der Report ans CFO-Büro geht.
Prompt:
> "Du bist Marketing-ROI-Architect. Entwirf einen monatlichen Workflow-ROI-Reporting-Workflow für den CFO. Kontext: Drei KPIs (Lohnkosten-Äquivalent, Time-to-Brief, Output-Volumen), Zahlen aus der Usage-API, Interpretation durch Marketing-Leitung freigegeben. Format: Scheduled-Trigger, Usage-API-Integration, AI-Node mit KPI-Schema, HITL."
Artefakt: Ein ROI-Reporting-Workflow-Entwurf mit KPI-Definitions-Schema und einem Quartalsbericht-Template.
Fallstricke:
- Der AI-Node überschätzt Einsparungen durch unrealistische Stunden-Baseline → die Basis-Stundenrate für das Lohnkosten-Äquivalent mit dem CFO vorab abstimmen.
- Usage-API-Daten fehlen für ältere Workflows → historische Daten frühzeitig exportieren und im Reporting-Sheet kumulieren, bevor der erste Bericht fällig ist.
Anschluss: S-WF-021

### S-WF-021 Batch-Verarbeitung vs. Agenten-Chat-Sandwich — Entscheidungsworkflow (Manual Trigger)

Trigger: Das Team diskutiert, ob ein neuer Prozess als deterministischer Workflow oder als zwei Agenten im Chat-Dialog aufgebaut werden soll — die Entscheidung ist unklar. (Quelle: A-28 + A-40)
Ziel: Klare Entscheidungskriterien bereitstellen, die die Wahl zwischen Batch-Workflow und Agent-Chat-Modus auf Basis von Volumen, Determiniertheit und Kostenprofil objektivieren.
Ergebnis: Eine Entscheidungsmatrix mit Break-even-Analyse und ein Architektur-Entwurf für den empfohlenen Pfad.
Fähigkeit: Workflow (Manual-Trigger als Beratungs-Input), AI-Node (Entscheidungsanalyse), Wissensordner (Cost-Engineering-Regeln)
Vorgehen:
1. Die vier Entscheidungsdimensionen prüfen: (a) Volumen >100 Items, (b) identisches Template pro Item, (c) JSON-Output erforderlich, (d) cron-getriggerter Lauf → wenn alle vier JA: Workflow.
2. Wenn mindestens zwei Dimensionen NEIN: Agent-Chat-Sandwich als Prototyp-Phase empfehlen — mit explizitem Hinweis, dass Chat-Sandwich kein Produktionssystem ist.
3. Eine Break-even-Tabelle ausgeben: Workflow amortisiert Setup-Kosten ab ca. 50 Runs/Monat; darunter lohnt sich Agent-Chat.
Prompt:
> "Du bist Workflow-vs-Agent-Entscheidungsarchitekt. Analysiere den beschriebenen Prozess und empfehle Workflow oder Agent-Chat-Modus. Kontext: Vier Kriterien (Volumen, Determiniertheit, JSON-Output, Cron), Break-even bei 50 Runs/Monat. Format: Entscheidungsmatrix-Tabelle, Empfehlung mit Begründung, Break-even-Kalkulation."
Artefakt: Eine Entscheidungsmatrix mit vier Kriterien, Break-even-Kalkulation und einer begründeten Architektur-Empfehlung.
Fallstricke:
- Das Team baut sofort einen komplexen Workflow für einen Prozess, der nur 5× pro Monat läuft → Setup-Kosten nie amortisiert; Agent-Chat ist hier die richtige Wahl.
- Chat-Sandwich wird als Produktionssystem betrieben → kein Monitoring, keine Fehlerbehandlung, keine Kostenkontrolle; nach Prototyp-Phase in echten Workflow überführen.
Anschluss: S-WF-022

### S-WF-022 Intent-Signal-Eskalation aus Drittanbieter-Tool per Webhook (Webhook Trigger)

Trigger: Ein Intent-Daten-Tool meldet einen Aktivitäts-Spike eines Target-Accounts — das Sales-Team soll sofort und kontextuell informiert werden, ohne manuellen Dashboard-Check. (Quelle: sources/10 S-072)
Ziel: Intent-Signale in Echtzeit in kontextreiche Sales-Empfehlungen übersetzen und über Slack an den zuständigen Account-Executive liefern.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Intent-Eskalations-Workflow mit Content-Matching und HITL vor der Outreach-Empfehlung.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Intent-Analyse, Wissensordner Content-Bibliothek), Action-Node (Slack), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an den Intent-Daten-Provider koppeln und Account-Name sowie Intent-Themen als Payload übergeben.
2. Einen AI-Node die Intent-Themen gegen den Content-Bibliotheks-Wissensordner matchen lassen und das relevanteste Asset als Empfehlung ausgeben.
3. Einen Condition-Node prüfen lassen, ob der Intent-Spike einen vordefinierten Score-Schwellenwert übersteigt — nur dann Eskalation.
4. Einen HITL-Node dem Account-Executive die Empfehlung vorlegen lassen (Asset + Kontext + vorgeschlagener Outreach-Text) — kein automatischer Versand.
Prompt:
> "Du bist ABM-Workflow-Architekt. Entwirf einen Intent-Signal-Eskalations-Workflow. Kontext: Webhook vom Intent-Tool, Content-Matching gegen Wissensordner, HITL vor Outreach, kein automatischer Kundenkontakt. Format: Webhook-Trigger, AI-Matching-Node, Score-Condition, HITL-Empfehlung, Slack-Action."
Artefakt: Ein Intent-Eskalations-Workflow-Entwurf mit Score-Schwellenwert-Regel, Content-Matching-Logik und HITL-Präsentations-Template.
Fallstricke:
- Zu breite Intent-Themen führen zur Empfehlung generischer Assets → den AI-Node anweisen, nur Assets mit thematischer Überlappung ≥ 2 Keywords zu empfehlen.
- Der Workflow feuert für jeden minimalen Intent-Anstieg → den Score-Schwellenwert klar definieren und im Condition-Node dokumentieren.
Anschluss: S-WF-023

### S-WF-023 Workflow-Chaining — Ausgabe eines Workflows als Trigger des nächsten (Webhook Trigger)

Trigger: Zwei getrennte Workflows existieren — ein Content-Generierungs-Workflow und ein Distributions-Workflow — und die manuelle Übergabe zwischen beiden kostet Zeit und führt zu Formatierungsfehlern. (Quelle: A-40)
Ziel: Zwei bestehende Workflows nahtlos verketten, sodass der Output des ersten automatisch den zweiten startet — mit einem HITL-Gate zwischen den Chains.
Ergebnis: Ein Architektur-Entwurf für eine Workflow-Chain mit Webhook-Übergabe, Structured-Output-Handshake und HITL-Übergangs-Gate.
Fähigkeit: Workflow (Webhook-Trigger für Chain-Empfänger), Structured Output (Handshake-Schema), HITL-Node (Übergangs-Gate), Action-Node (HTTP-POST zum nächsten Workflow)
Vorgehen:
1. Den ersten Workflow mit einem finalen Action-Node abschließen, der seinen Output als JSON-Payload per HTTP-POST an die Webhook-URL des zweiten Workflows sendet.
2. Ein Structured-Output-Handshake-Schema definieren, das beide Workflows verbindet: exakte Feldnamen, Typen und Pflichtfelder dokumentieren.
3. Einen HITL-Node zwischen den Chains als optionales Gate einplanen — aktiviert für kritische Übergaben, deaktivierbar für vollständig validierte Pipelines.
4. Im zweiten Workflow einen Validation-Condition-Node vorschalten, der das empfangene Payload gegen das Handshake-Schema prüft — bei Schema-Fehler in den Error-Branch.
Prompt:
> "Du bist Workflow-Chaining-Architect. Entwirf eine Verkettung zwischen einem Content-Generierungs- und einem Distributions-Workflow. Kontext: HTTP-POST-Übergabe, JSON-Handshake-Schema, HITL-Gate zwischen den Chains, Schema-Validierung im Empfänger. Format: Chain-Architektur-Entwurf mit Handshake-Schema-Definition."
Artefakt: Ein Workflow-Chain-Entwurf mit HTTP-POST-Übergabe-Logik, Handshake-Schema-Vorlage und optionalem HITL-Gate.
Fallstricke:
- Das Handshake-Schema ist undokumentiert → bei Änderung an Workflow 1 bricht Workflow 2 still ab; Schema-Versionierung und Änderungs-Protokoll sind Pflicht.
- Endlosschleifen entstehen, wenn Workflow 2 fälschlicherweise zurück an Workflow 1 postet → jede Chain-Verbindung nur als Einwegrichtung auslegen.
Anschluss: S-WF-024

### S-WF-024 Workflow-Monitoring und Laufzeit-Observability (Scheduled Trigger)

Trigger: Produktive Workflows laufen täglich — ohne Monitoring-Routine bemerkt das Team Ausfälle, Latenz-Degradation oder Kostensteigerungen erst im Nachhinein. (Quelle: A-36)
Ziel: Eine strukturierte Monitoring-Routine für produktive Workflows etablieren, die Laufzeit, Fehlerrate und Kosten-pro-Run regelmäßig sichtbar macht.
Ergebnis: Ein Architektur-Entwurf für einen täglichen Monitoring-Workflow, der Laufzeit-Metriken aggregiert und bei SLO-Verletzungen eskaliert.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Langdock Audit-Log-Export), AI-Node (Anomalie-Analyse), Action-Node (Slack-Alert)
Vorgehen:
1. Den Scheduled-Trigger täglich auf einen fixen Zeitpunkt setzen und die Audit-Log-Daten der vergangenen 24 Stunden über die Langdock-API ziehen.
2. Die Logs nach vier Monitoring-Dimensionen auswerten lassen: Laufzeit pro Workflow, Fehlerrate, Token-Kosten-pro-Run, HITL-Genehmigungsrate.
3. Einen Condition-Node SLO-Verletzungen erkennen lassen (z. B. Fehlerrate > 5 % oder Kosten-pro-Run +30 % gegenüber Vorwoche) und bei Verletzung Slack-Alert auslösen.
4. Eine Monitoring-Tabelle im Fehler-Log-Sheet kumulieren, damit Trends über Zeit sichtbar werden — Grundlage für den monatlichen ROI-Report (S-WF-020).
Prompt:
> "Du bist Workflow-Monitoring-Architect. Entwirf einen täglichen Observability-Workflow für produktive Marketing-Workflows. Kontext: Vier SLO-Dimensionen (Laufzeit, Fehlerrate, Kosten, HITL-Rate), Eskalation nur bei Grenzwert-Verletzung. Format: Scheduled-Trigger, Audit-Log-Integration, SLO-Condition, Slack-Alert, kumulatives Log-Sheet."
Artefakt: Ein Monitoring-Workflow-Entwurf mit vier SLO-Definitionen, Condition-Schwellenwerten und einem kumulativen Log-Schema.
Fallstricke:
- Der Monitoring-Workflow selbst hat kein Fehler-Monitoring → ein separater manueller Check-in oder externer Uptime-Monitor ist als Backup nötig.
- Zu viele SLO-Dimensionen führen zu Alert-Fatigue → mit vier Kernmetriken starten und erst bei gesicherter Datenbasis erweitern.
Anschluss: S-WF-025

### S-WF-025 Kampagnen-Brief-Intake per Form-Trigger mit automatischer Routing-Logik (Form Trigger)

Trigger: Kampagnen-Anfragen aus dem ganzen Unternehmen kommen per E-Mail und Slack ohne Struktur an — das Marketing-Ops-Team verbringt zu viel Zeit mit Rückfragen und manueller Weiterleitung. (Quelle: sources/10 S-094 + 12 Q-111)
Ziel: Einen strukturierten Intake-Prozess einführen, der jede Anfrage in ein standardisiertes Briefing überführt und automatisch an das richtige Team routet.
Ergebnis: Ein Architektur-Entwurf für einen Form-getriggerten Intake-Workflow mit KI-Briefing-Ergänzung, Routing-Logik und HITL-Freigabe.
Fähigkeit: Workflow (Form-Trigger), AI-Node (Briefing-Ergänzung, Structured Output), Condition-Node (Routing), Action-Node (Notion/Confluence + Slack), HITL-Node
Vorgehen:
1. Den Form-Trigger mit Pflichtfeldern ausstatten: Kampagnentyp, Zielgruppe, Budget-Rahmen, Deadline, Anfragender — strukturierte Eingabe erzwingt Datenqualität.
2. Einen AI-Node fehlende strategische Felder ergänzen lassen (z. B. fehlende KPI-Vorschläge auf Basis des Kampagnentyps) und das komplette Briefing als Structured Output ausgeben.
3. Einen Condition-Node das Briefing nach Ressourcenbedarf klassifizieren lassen: Design → Design-Slack-Kanal, Text → Copy-Kanal, Performance → Media-Kanal.
4. Einen HITL-Node das ergänzte Briefing dem Anfragenden zur Bestätigung vorlegen lassen, bevor es als Notion-Seite angelegt und das Team benachrichtigt wird.
Prompt:
> "Du bist Marketing-Ops-Workflow-Architect. Entwirf einen Form-Trigger-Intake-Workflow für Kampagnen-Briefings. Kontext: Pflichtfelder im Form, KI ergänzt fehlende KPIs, Routing nach Ressourcentyp, HITL-Bestätigung vor Notion-Anlage. Format: Form-Trigger mit Feldliste, AI-Briefing-Node, Condition-Routing, HITL, Notion-Action, Slack-Benachrichtigungen."
Artefakt: Ein Kampagnen-Intake-Workflow-Entwurf mit Form-Feldliste, KI-Ergänzungs-Logik, Routing-Matrix und HITL-Bestätigungs-Schritt.
Fallstricke:
- Der AI-Node halluziniert unrealistische KPIs, wenn der Kampagnentyp zu generisch ist → den Form-Trigger mit einer kontrollierten Auswahlliste für Kampagnentypen ausstatten.
- Das Briefing wird ohne HITL-Bestätigung direkt an das Team gesendet → den Condition-Node erst nach HITL-Freigabe in die Routing-Actions übergehen lassen.
Anschluss: S-WF-026

### S-WF-026 Content-Freigabe-Workflow-Kette (Entwurf → Review → Publish) (Manual Trigger)

Trigger: Der Content-Freigabeprozess läuft über mehrere Stufen (Autor → Redaktion → Legal → Publish), aber die Übergaben passieren per E-Mail und gehen regelmäßig unter. (Quelle: sources/10 S-006 + A-32)
Ziel: Jede Freigabestufe als expliziten HITL-Node in eine automatisierte Kette überführen, damit kein Artikel live geht, ohne jede Stufe passiert zu haben.
Ergebnis: Ein Architektur-Entwurf für eine dreistufige Freigabe-Kette mit je einem HITL-Gate pro Stufe.
Fähigkeit: Workflow (Manual-Trigger), AI-Node (Brand-Voice-Check), HITL-Node (3×: Redaktion, Legal, Final), Action-Node (Slack-Benachrichtigung)
Vorgehen:
1. Den Manual-Trigger mit dem Artikel-Entwurf als Eingabe definieren; einen AI-Node den Text auf Tonalität und Brand-Voice prüfen lassen.
2. HITL-Gate 1 — Redaktions-Check: Reviewer prüft Inhalt und Fakten; bei Ablehnung Rückgabe an Autor ohne weiteres Fortschreiten.
3. HITL-Gate 2 — Legal-Check: Reviewer prüft auf UWG/DSGVO-Risiken; nur bei Freigabe weiter.
4. HITL-Gate 3 — Final-Publish-Gate: Letzte Freigabe vor der CMS-Action-Node, die den Artikel veröffentlicht.
Prompt:
> "Du bist Content-Pipeline-Architekt. Entwirf eine dreistufige Freigabe-Kette für Blog-Artikel. Kontext: Stufen Redaktion, Legal, Final-Publish; bei jeder Ablehnung Rückgabe ohne Weiterleitung. Format: Node-Liste mit HITL-Positionen, Prüf-Instruktion pro Gate und Bedingungslogik."
Artefakt: Ein Freigabe-Ketten-Entwurf mit drei HITL-Gates, Ablehnungs-Routing und CMS-Action am Ende.
Fallstricke:
- Zu viele Gates lähmem den Redaktionsbetrieb → drei Gates sind das Optimum; jedes Gate muss eine klare Prüfaufgabe und ein Zeitlimit (z. B. 24 h) haben.
- Ein abgelehnter Artikel bleibt im Workflow hängen, weil kein Rückgabe-Branch definiert ist → jeden HITL-Node mit einem expliziten Ablehnungs-Pfad und Autor-Benachrichtigung versehen.
Anschluss: S-WF-027

### S-WF-027 Newsletter-Personalisierungs-Pipeline nach Segment (Integration Trigger)

Trigger: Der monatliche Newsletter soll nicht mehr als ein Einheitstext, sondern als drei segment-spezifische Varianten ausgesendet werden — der manuelle Aufwand ist dafür zu hoch. (Quelle: sources/10 S-063 + A-24)
Ziel: Aus einem Basis-Newsletter automatisch drei segment-spezifische Varianten erzeugen und für den Versand vorbereiten, ohne dass die Redaktion dreifachen Aufwand hat.
Ergebnis: Ein Architektur-Entwurf für eine integrations-getriggerte Personalisierungs-Pipeline mit Segment-Loop und HITL-Batch-Freigabe.
Fähigkeit: Workflow (Integration-Trigger CRM), Loop-Node (Segment-Array), AI-Node (Segment-Adaption, Wissensordner Brand-Voice), HITL-Node (Batch-Freigabe)
Vorgehen:
1. Den Integration-Trigger auf das CRM-Event "Newsletter-Kampagne erstellt" koppeln; Basis-Text und Segmentliste als Payload übergeben.
2. Einen Loop-Node über die drei Segmente (z. B. Entscheider, Anwender, Partner) iterieren lassen und für jedes Segment einen AI-Node eine angepasste Variante erzeugen lassen.
3. Alle drei Varianten als JSON-Array sammeln und dem HITL-Node zur Batch-Freigabe präsentieren — kein automatischer Versand.
4. Nach Freigabe einen Action-Node die Varianten als Entwürfe in das E-Mail-Tool einspielen; Versand verbleibt beim Menschen.
Prompt:
> "Du bist Newsletter-Workflow-Architekt. Entwirf eine Segment-Personalisierungs-Pipeline für drei Zielgruppen. Kontext: Basis-Text aus CRM-Trigger, Brand-Voice aus Wissensordner, Batch-Freigabe vor E-Mail-Tool-Übergabe. Format: Integration-Trigger, Loop-Node mit Segment-Array, AI-Node-Konfiguration, HITL-Batch, E-Mail-Action."
Artefakt: Ein Personalisierungs-Workflow-Entwurf mit Segment-Definitions-Tabelle und Batch-Freigabe-Schritt.
Fallstricke:
- Segment-Definitionen sind zu vage → der Wissensordner muss konkrete Segment-Profile (Jobtitel, Pain Points, Tonalität) enthalten, nicht nur Bezeichnungen.
- Die drei Varianten sehen zu ähnlich aus, weil der AI-Node die Unterschiede nicht stark genug ausarbeitet → in jede Loop-Iteration eine explizite Differenzierungsanweisung pro Segment einbauen.
Anschluss: S-WF-028

### S-WF-028 ABM-Kampagnen-Trigger bei Account-Score-Anstieg (Integration Trigger)

Trigger: Ein Target-Account erreicht im ABM-Scoring-Modell einen definierten Schwellenwert — das Sales-Team soll sofort eine koordinierte, mehrstufige Kampagnen-Aktion erhalten, nicht nur eine Slack-Nachricht. (Quelle: sources/10 S-072)
Ziel: Einen Account-Score-Anstieg im CRM automatisch in eine mehrstufige ABM-Reaktionskette übersetzen: Content-Empfehlung, Outreach-Vorlage und Kalender-Reminder in einem Lauf.
Ergebnis: Ein Architektur-Entwurf für eine integrations-getriggerte ABM-Reaktionskette mit drei parallelen Action-Strängen und HITL vor dem Kundenkontakt.
Fähigkeit: Workflow (Integration-Trigger CRM), AI-Node (Content-Matching, Wissensordner), Condition-Node (Score-Schwelle), Action-Node (Slack + CRM-Task + Kalender), HITL-Node
Vorgehen:
1. Den Integration-Trigger auf das CRM-Event "Account-Score ≥ definierter Schwellenwert" koppeln; Account-Name, Score und Intent-Themen als Payload übergeben.
2. Einen Condition-Node prüfen lassen, ob der Score den Kampagnen-Auslösewert überschreitet — darunter nur Protokollierung.
3. Einen AI-Node die Intent-Themen gegen den Content-Bibliotheks-Wissensordner matchen und eine priorisierte Asset-Liste erzeugen lassen.
4. Drei parallele Action-Nodes: (a) Slack-Alert an Account-Executive mit Asset-Empfehlung, (b) CRM-Task "Outreach vorbereiten" anlegen, (c) Kalender-Reminder für Follow-up in 3 Tagen setzen — alle vor dem HITL-Gate für den finalen Outreach-Entwurf.
Prompt:
> "Du bist ABM-Workflow-Architekt. Entwirf eine dreistrangige Reaktionskette für Account-Score-Anstiege. Kontext: Integration-Trigger aus CRM, Score-Schwelle als Condition, Content-Matching gegen Wissensordner, HITL vor Kundenkontakt. Format: Trigger, Condition, AI-Node, drei parallele Actions, HITL."
Artefakt: Ein ABM-Reaktions-Workflow-Entwurf mit Score-Schwellenwert-Definition, paralleler Action-Architektur und HITL-Outreach-Gate.
Fallstricke:
- Ein zu niedriger Score-Schwellenwert lässt den Workflow zu häufig feuern und überhäuft das Sales-Team mit Signalen → den Schwellenwert initial konservativ setzen und erst nach 4 Wochen Daten kalibrieren.
- CRM-Task und Kalender-Reminder entstehen doppelt, wenn derselbe Account erneut den Schwellenwert überschreitet → einen Condition-Node prüfen lassen, ob für diesen Account bereits ein offener Task existiert.
Anschluss: S-WF-029

### S-WF-029 Onboarding-Sequenz bei CRM-Lifecycle-Stage-Wechsel (Integration Trigger)

Trigger: Ein neuer Kunde wechselt im CRM von "Closed Won" zu "Onboarding" — die Welcome-Sequenz (E-Mails, Slack-Alert an Customer-Success, Kalender-Link) soll automatisch starten, ohne manuelle Übergabe. (Quelle: sources/10 S-057 + S-063)
Ziel: Den Übergang von Sales zu Customer-Success nahtlos automatisieren und die ersten Onboarding-Touchpoints konsistent und zeitgerecht auslösen.
Ergebnis: Ein Architektur-Entwurf für eine integrations-getriggerte Onboarding-Pipeline mit mehrstufiger Touchpoint-Logik und HITL vor dem ersten personalisierten Kundenkontakt.
Fähigkeit: Workflow (Integration-Trigger CRM), AI-Node (Welcome-Personalisierung, Wissensordner Segment-Profile), Action-Node (Slack + Kalender + CRM-Feld-Update), HITL-Node
Vorgehen:
1. Den Integration-Trigger auf das CRM-Event "Lifecycle-Stage = Onboarding" koppeln; Kontaktname, Unternehmen und Produkt als Payload übergeben.
2. Einen AI-Node eine personalisierte Welcome-Nachricht auf Basis des Segment-Profils aus dem Wissensordner erstellen lassen — Structured Output mit Feldern: Betreff, Body, Ansprechpartner-Empfehlung.
3. Parallele Actions: (a) Slack-Alert an Customer-Success-Manager, (b) Kalender-Link für Onboarding-Call als CRM-Feld hinterlegen, (c) Erstes Onboarding-To-do in CRM anlegen.
4. HITL-Node: Customer-Success-Manager prüft die personalisierte Welcome-Nachricht und gibt sie frei — erst dann Übergabe an das E-Mail-Tool.
Prompt:
> "Du bist Lifecycle-Workflow-Architekt. Entwirf eine Onboarding-Pipeline, die bei einem CRM-Stage-Wechsel zu 'Onboarding' startet. Kontext: Personalisierung per Segment-Wissensordner, Slack-Alert an CS-Manager, HITL vor Welcome-E-Mail-Versand. Format: Integration-Trigger, AI-Personalisierungs-Node, parallele Actions, HITL-Gate."
Artefakt: Ein Onboarding-Pipeline-Entwurf mit Personalisierungs-Logik, parallelen Action-Strängen und CS-Manager-Freigabe-Schritt.
Fallstricke:
- Der Trigger feuert erneut, wenn das CRM-Feld kurzzeitig zurückgesetzt und wieder auf "Onboarding" gesetzt wird → einen Condition-Node prüfen lassen, ob für diesen Kontakt bereits eine Onboarding-Sequenz aktiv ist.
- Der AI-Node generiert eine generische Welcome-Nachricht, weil das Segment-Profil im Wissensordner zu dünn ist → die Segment-Profile mit mindestens drei konkreten Differenzierungspunkten (Branche, Unternehmensgröße, Primär-Use-Case) ausstatten.
Anschluss: S-WF-030

### S-WF-030 Retargeting-Signal-Verarbeitungs-Workflow (Webhook Trigger)

Trigger: Ein Besucher hat die Pricing-Seite dreimal innerhalb von 7 Tagen aufgerufen — das Pixel-Tool sendet ein Retargeting-Signal, das automatisch eine priorisierte Sales-Aktion auslösen soll. (Quelle: sources/10 S-072 + A-32)
Ziel: Hochwertige Retargeting-Signale vom anonymen Pixel-Layer in konkrete, namentlich zugeordnete Sales-Aktionen überführen, ohne manuelles Dashboard-Monitoring.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Retargeting-Signal-Workflow mit CRM-Lookup, Score-Logik und HITL-Outreach-Gate.
Fähigkeit: Workflow (Webhook-Trigger), Action-Node (CRM-Lookup), AI-Node (Signal-Bewertung), Condition-Node (Score-Schwelle), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an das Pixel-Tool koppeln; Session-ID, besuchte Seite und Besuchs-Frequenz als Payload übergeben.
2. Einen CRM-Lookup-Action-Node versuchen lassen, die Session-ID einer bekannten Kontakt-E-Mail zuzuordnen — bei keinem Match anonymes Signal protokollieren und Workflow beenden.
3. Einen AI-Node Besuchs-Muster und CRM-Profil kombinieren und eine Signal-Stärke (hoch/mittel/niedrig) als Structured Output ausgeben lassen.
4. Condition-Node: bei "hoch" → HITL-Node mit Outreach-Empfehlung an Account-Executive; bei "mittel" → automatische CRM-Task-Anlage; bei "niedrig" → stilles Protokoll.
Prompt:
> "Du bist Retargeting-Workflow-Architekt. Entwirf einen Signal-Verarbeitungs-Workflow für Pricing-Page-Besuche. Kontext: Webhook vom Pixel-Tool, CRM-Lookup, Signal-Stärke-Klassifizierung, HITL nur bei hoher Priorität. Format: Webhook-Trigger, CRM-Lookup-Action, AI-Bewertungs-Node, Condition mit drei Pfaden, HITL."
Artefakt: Ein Retargeting-Signal-Workflow-Entwurf mit CRM-Lookup-Logik, Signal-Stärke-Schema und dreistufiger Condition-Architektur.
Fallstricke:
- Wiederholte Bot-Besuche derselben IP erzeugen falsche Hochprioritäts-Signale → einen Condition-Node für bekannte Bot-IPs oder Crawler-User-Agents vorschalten.
- Der CRM-Lookup schlägt fehl, weil die Session-ID nicht mit E-Mail-Adressen verknüpft ist → die Logik von Beginn an auf "kein Match → anonymes Protokoll, kein Sales-Alert" ausrichten.
Anschluss: S-WF-031

### S-WF-031 Content-Kalender-Automatisierung (Scheduled Trigger)

Trigger: Der monatliche Content-Kalender wird manuell in einer Tabelle gepflegt — Themenideen, Kanalzuordnung und Deadlines entstehen durch mehrstündige Abstimmungsrunden, die sich mit einem datengestützten Workflow erheblich verkürzen lassen. (Quelle: A-24 + sources/10 S-071)
Ziel: Den monatlichen Content-Kalender automatisch aus bestehenden Kampagnenzielen, Evergreen-Themen und Saisonalitäts-Daten vorschlagen lassen — mit menschlicher Kuratierungs-Freigabe.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Content-Kalender-Entwurfs-Workflow mit KI-Themenvorschlag und HITL-Freigabe.
Fähigkeit: Workflow (Scheduled-Trigger), AI-Node (Themenvorschlag, Wissensordner Kampagnenziele + Saisonalitätskalender), Action-Node (Notion/Sheets-Export), HITL-Node
Vorgehen:
1. Den Scheduled-Trigger auf den ersten Werktag jedes Monats setzen.
2. Einen AI-Node aus dem Wissensordner (aktive Kampagnenziele, Saisonalitätskalender, Evergreen-Themen) einen Kalender-Entwurf für den Folgemonat generieren lassen — Structured Output: Titel, Kanal, Format, Deadline, verantwortliche Person.
3. Einen HITL-Node den Entwurf dem Content-Lead zur Freigabe und Anpassung vorlegen lassen.
4. Nach Freigabe einen Action-Node den Kalender als strukturierte Seite in Notion oder als Tabelle in Google Sheets anlegen lassen.
Prompt:
> "Du bist Content-Kalender-Architekt. Entwirf einen monatlichen Kalender-Vorschlags-Workflow. Kontext: Kampagnenziele und Saisonalität im Wissensordner, Structured Output mit Titel/Kanal/Deadline/Owner, HITL-Freigabe vor Notion-Export. Format: Scheduled-Trigger, AI-Kalender-Node, HITL, Notion-Action."
Artefakt: Ein Content-Kalender-Workflow-Entwurf mit Structured-Output-Schema für Kalendereinträge und HITL-Freigabe-Schritt.
Fallstricke:
- Der AI-Node schlägt immer dieselben Evergreen-Themen vor, weil der Wissensordner nicht aktualisiert wird → den Saisonalitätskalender und die Kampagnenziele monatlich vor dem Trigger-Datum aktualisieren.
- Der Kalender-Entwurf enthält zu viele Einträge und überfordert das Team → eine harte Obergrenze für Einträge pro Monat (z. B. 12–16) im AI-Node-Briefing vorgeben.
Anschluss: S-WF-032

### S-WF-032 Pressemitteilungs-Distributions-Pipeline (Manual Trigger)

Trigger: Eine fertige Pressemitteilung soll an Journalisten-Listen, den Unternehmens-Blog, Social-Media und die Investor-Relations-Seite ausgespielt werden — die manuelle Verteilung auf fünf Kanäle kostet das PR-Team halbe Arbeitstage. (Quelle: sources/10 S-076 + S-083)
Ziel: Die Pressemitteilung einmal in den Workflow eingeben und automatisch kanalgerechte Adaptionen sowie alle Distributions-Actions erzeugen, mit HITL vor jeder externen Ausspielung.
Ergebnis: Ein Architektur-Entwurf für eine manuell angestoßene Pressemitteilungs-Distributions-Pipeline mit parallelen Kanal-Nodes und gestaffelten HITL-Gates.
Fähigkeit: Workflow (Manual-Trigger), AI-Node je Kanal (LinkedIn-Post, X-Thread, Blog-Teaser, IR-Summary, Journalisten-Pitch), HITL-Node (je Kanal), Action-Node
Vorgehen:
1. Den Manual-Trigger mit dem Pressemitteilungs-Text und der Ziel-Publikationsliste als Eingabe definieren.
2. Parallele AI-Nodes für die fünf Kanäle: LinkedIn (300 Zeichen + Hashtags), X-Thread (5 Tweets), Blog-Teaser (150 Wörter), IR-Summary (100 Wörter sachlich), Journalisten-Pitch (150 Wörter mit News-Hook).
3. Je Kanal einen HITL-Node einplanen — die PR-Leitung freigt jede Variante einzeln frei; eine abgelehnte Variante blockiert nur diesen Kanal, nicht die anderen.
4. Nach Kanal-spezifischer Freigabe feuert je ein Action-Node — kein kanalübergreifender Automatismus.
Prompt:
> "Du bist PR-Distributions-Workflow-Architekt. Entwirf eine fünfkanalige Pressemitteilungs-Pipeline. Kontext: Manuelle Eingabe der PM, parallele Kanal-Adaptionen, je Kanal eigener HITL, keine kanalübergreifende Automatik. Format: Trigger, fünf parallele AI-Nodes, fünf HITL-Nodes, fünf Actions."
Artefakt: Ein Distributions-Pipeline-Entwurf mit Kanal-spezifischen AI-Node-Briefings, paralleler HITL-Architektur und Kanal-Freigabe-Matrix.
Fallstricke:
- Ein einziger AI-Node für alle Kanäle produziert uniform adaptierten Text → je Kanal einen eigenen Node mit eigenen Längen- und Formatvorgaben zwingend trennen.
- Die Journalisten-Pitch-Variante enthält Corporate-Jargon, der Redakteure abschreckt → den Pitch-Node explizit auf journalistischen Nachrichtenwert (Wer, Was, Warum jetzt) optimieren lassen.
Anschluss: S-WF-033

### S-WF-033 Messe-Lead-Follow-up-Automatisierung (Manual Trigger + Loop)

Trigger: Nach einer Messe liegen 120 Visitenkarten-Scans als CSV vor — jeder Kontakt soll innerhalb von 48 Stunden eine personalisierte Follow-up-E-Mail erhalten, die auf das Messegespräch Bezug nimmt. (Quelle: sources/10 S-062 + A-24)
Ziel: Den Post-Messe-Follow-up-Prozess in einem einzigen Batch-Lauf erledigen, ohne dass 120 E-Mails manuell verfasst werden — mit HITL-Stichprobe vor dem Versand.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit Gesprächsnotiz-Personalisierung, Kostenkontrolle und HITL-Stichproben-Gate.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (≤100 Items pro Charge), AI-Node (Personalisierung, Wissensordner Produkt-Kontext), HITL-Node (Stichproben-Check), Action-Node (CRM-Feld-Update)
Vorgehen:
1. Die CSV in zwei Chargen à ≤100 Items aufteilen; den Manual-Trigger mit dem JSON-Array aus Kontaktname, Unternehmen und Gesprächsnotiz-Stichpunkt konfigurieren.
2. Einen Loop-Node iterieren lassen; pro Item einen AI-Node eine 3-Satz-Personalisierung auf Basis der Gesprächsnotiz und des Produkt-Kontext-Wissensordners erzeugen lassen — Structured Output: Betreff + Body.
3. Einen HITL-Node eine zufällige Stichprobe von 10 % der generierten E-Mails zur Qualitätsprüfung vorlegen lassen — erst nach Freigabe der Stichprobe läuft die Action.
4. Einen Action-Node den generierten Text als Draft-Feld im CRM hinterlegen — der tatsächliche Versand bleibt beim Menschen.
Prompt:
> "Du bist Messe-Follow-up-Workflow-Architekt. Entwirf einen Batch-Personalisierungs-Workflow für 120 Messe-Kontakte. Kontext: CSV-Input mit Gesprächsnotizen, Flash-Modell für Kosteneffizienz, 10%-Stichproben-HITL, Versand durch Menschen. Format: Manual-Trigger, Loop-Node mit Chargenlogik, AI-Node, HITL-Stichprobe, CRM-Draft-Action."
Artefakt: Ein Messe-Follow-up-Workflow-Entwurf mit Loop-Chargenlogik, Stichproben-HITL-Definition und CRM-Draft-Action-Konfiguration.
Fallstricke:
- Gesprächsnotizen sind zu kurz oder leer → einen Condition-Node vorschalten, der Items ohne verwertbare Notiz in eine manuelle Nachbearbeitungs-Liste umleitet statt eine generische E-Mail zu erzeugen.
- Die Kostenschätzung wird nicht vorab geprüft → 120 Items × Personalisierungs-Node können das Per-Execution-Limit überschreiten; Warn-Schwelle auf 75 % setzen und Chargengröße entsprechend wählen.
Anschluss: S-WF-034

### S-WF-034 Social-Media-Scheduling-Workflow (Scheduled Trigger)

Trigger: Das Social-Media-Team plant Posts manuell für die Woche — der Prozess aus Themenauswahl, Texterstellung und Tool-Einplanung kostet jeden Montag mehrere Stunden. (Quelle: sources/10 S-071 + A-24)
Ziel: Die wöchentliche Social-Media-Planung automatisieren: Themenauswahl aus dem Content-Kalender, kanalgerechte Texterstellung und strukturierte Übergabe an das Scheduling-Tool — mit menschlicher Freigabe vor der Einplanung.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Social-Media-Planungs-Workflow mit Loop-Kanal-Verarbeitung und HITL-Wochenfreigabe.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Content-Kalender-Quelle), Loop-Node (Kanal-Array), AI-Node (Post-Generierung, Wissensordner Brand-Voice), HITL-Node, Action-Node (Scheduling-Tool-API)
Vorgehen:
1. Den Scheduled-Trigger auf Montag früh setzen; die Wochenthemen aus dem Content-Kalender via Integration-Node ziehen.
2. Einen Loop-Node über die aktiven Kanäle (LinkedIn, Instagram, X) iterieren lassen; pro Kanal und Thema einen AI-Node einen kanalgerechten Post mit Brand-Voice-Wissensordner erstellen lassen — Structured Output: Text, Hashtags, empfohlener Publish-Zeitpunkt.
3. Einen HITL-Node alle Posts der Woche als Batch zur Freigabe präsentieren — Social-Media-Manager prüft und kann einzelne Posts ablehnen oder bearbeiten.
4. Nach Freigabe sendet ein Action-Node die genehmigten Posts an die Scheduling-Tool-API — kein direktes Veröffentlichen durch den Workflow.
Prompt:
> "Du bist Social-Media-Scheduling-Workflow-Architekt. Entwirf eine wöchentliche Post-Planungs-Pipeline. Kontext: Themen aus Content-Kalender, Loop über LinkedIn/Instagram/X, Brand-Voice aus Wissensordner, HITL-Batch-Freigabe vor Scheduling-Tool-Übergabe. Format: Scheduled-Trigger, Integration-Node, Loop, AI-Post-Node, HITL, Scheduling-Action."
Artefakt: Ein Social-Media-Scheduling-Workflow-Entwurf mit Kanal-Loop-Logik, Structured-Output-Schema für Posts und HITL-Batch-Freigabe-Beschreibung.
Fallstricke:
- Der AI-Node erzeugt Posts, die Plattform-Limits überschreiten (z. B. X: 280 Zeichen) → jede Kanal-Iteration mit einem harten Zeichenlimit im Node-Briefing versehen.
- Das Scheduling-Tool akzeptiert keine automatischen Posts ohne Nutzer-Authentifizierung → die Action-Node muss auf einen API-Endpunkt mit gültigem OAuth-Token konfiguriert sein; Token-Rotation als Wartungsaufgabe planen.
Anschluss: S-WF-035

### S-WF-035 Budget-Alert-Workflow bei Kampagnen-Ausgaben-Überschreitung (Scheduled Trigger)

Trigger: Das Media-Budget wird über mehrere Kanäle verteilt eingesetzt — das Team bemerkt Überschreitungen oft erst beim Monatsabschluss, zu spät für korrektive Steuerung. (Quelle: sources/10 S-017 + A-25)
Ziel: Tägliche Budget-Abfragen automatisieren und bei drohender Überschreitung sofort eskalieren, ohne dass jemand manuell Dashboards überprüft.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Budget-Alert-Workflow mit schwellenwertbasierter Eskalation und HITL-Freigabe für Umverteilungsempfehlungen.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Ad-Plattform-API oder Analytics), AI-Node (Ausgaben-Analyse, Umverteilungs-Empfehlung), Condition-Node (Schwellenwert 80/95 %), Action-Node (Slack), HITL-Node
Vorgehen:
1. Den Scheduled-Trigger täglich auf einen fixen Zeitpunkt setzen; aktuelle Ausgaben je Kanal via Ad-Plattform-Integration ziehen.
2. Einen AI-Node Ausgaben gegen Budget-Pläne vergleichen lassen — Structured Output: Kanal, verbrauchte %, verbleibende Tage, Prognose zum Monatsende.
3. Condition-Node: bei 80 % Budget-Verbrauch → Slack-Warning ohne HITL; bei 95 % → HITL-Node mit AI-generierter Umverteilungsempfehlung an die Kampagnen-Leitung.
4. Die Umverteilungsempfehlung enthält konkrete Vorschläge (z. B. Kanal X pausieren, Budget nach Y verlagern) — Umsetzung nur durch den Menschen.
Prompt:
> "Du bist Budget-Monitoring-Workflow-Architekt. Entwirf einen täglichen Budget-Alert-Workflow für Kampagnen-Ausgaben. Kontext: Integration mit Ad-Plattform, 80%-Warning ohne HITL, 95%-Eskalation mit Umverteilungsempfehlung per HITL, keine automatische Kampagnen-Steuerung. Format: Scheduled-Trigger, Integration-Node, AI-Analyse-Node, Condition mit zwei Schwellenwerten, Slack-Action, HITL."
Artefakt: Ein Budget-Alert-Workflow-Entwurf mit zweistufiger Condition-Logik, Structured-Output-Schema für Ausgaben-Analyse und HITL-Umverteilungs-Briefing.
Fallstricke:
- Wochenend-Lücken in der Ad-Plattform-API führen zu falschen Auslastungsberechnungen am Montag → den Workflow an Wochenenden entweder deaktivieren oder die Berechnung auf Montag-Basis normalisieren.
- Der HITL-Node zeigt Umverteilungsempfehlungen, die technisch nicht sofort umsetzbar sind (z. B. gesperrte Kampagnen) → den AI-Node anweisen, nur Kanäle zu empfehlen, deren Status im Payload als "aktiv" markiert ist.
Anschluss: S-WF-036

### S-WF-036 Wettbewerber-Erwähnungs-Alert-Workflow (Scheduled Trigger)

Trigger: Das Marketing-Team möchte wissen, wenn ein definierter Wettbewerber in Branchenmedien, Fachforen oder sozialen Netzwerken erwähnt wird — manuelles Monitoring ist zu zeitaufwendig. (Quelle: sources/10 S-007 + S-072)
Ziel: Wettbewerber-Erwähnungen automatisch sammeln, nach Relevanz filtern und nur strategisch signifikante Nennungen an das Team eskalieren — ohne Alert-Fatigue.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Monitoring-Workflow mit Web-Search-Scope-Filter, Relevanz-Scoring und schwellenwertbasierter Eskalation.
Fähigkeit: Workflow (Scheduled-Trigger), AI-Node (Web Search + Relevanz-Bewertung, Structured Output), Condition-Node (Relevanz-Schwelle), Action-Node (Slack + internes Notiz-Dokument)
Vorgehen:
1. Den Scheduled-Trigger täglich auf einen fixen Werktags-Zeitpunkt setzen; eine Wettbewerberliste und Quellen-Whitelist (z. B. Branchenmedien, LinkedIn, G2) im Workflow hinterlegen.
2. Einen AI-Node mit Web Search die definierten Quellen nach den Wettbewerber-Namen absuchen und jede Erwähnung mit Relevanz-Score (1–10), Quelle, Thema und Kurzzusammenfassung als Structured Output ausgeben lassen.
3. Condition-Node: Relevanz ≥ 7 → Slack-Eskalation an Strategie-Team; Relevanz < 7 → stille Protokollierung im Notiz-Dokument.
4. Die Slack-Nachricht enthält: Wettbewerber-Name, Quelle, Relevanz-Score, Kern-Aussage und Link — kein automatisches Handeln.
Prompt:
> "Du bist Wettbewerbs-Monitoring-Architekt. Entwirf einen täglichen Erwähnungs-Alert-Workflow für drei Wettbewerber. Kontext: Web-Search-Scope auf Branchen-Whitelist begrenzt, Relevanz-Score 1–10, Eskalation nur ab Score 7, stille Protokollierung darunter. Format: Scheduled-Trigger, Web-Search-AI-Node mit Structured Output, Condition, Slack-Action."
Artefakt: Ein Wettbewerber-Monitoring-Workflow-Entwurf mit Quellen-Whitelist, Relevanz-Score-Schema und zweistufiger Condition-Eskalation.
Fallstricke:
- Web Search liefert dieselben News-Artikel täglich erneut, weil keine Deduplizierung existiert → einen Condition-Node vorschalten, der bereits protokollierte URLs gegen ein persistentes Log-Sheet prüft.
- Zu breite Wettbewerber-Suchbegriffe treffen auch irrelevante Nennungen (z. B. gleichnamige Unternehmen in anderen Branchen) → die Suchbegriffe mit Branchen-Qualifikatoren kombinieren und im Node-Briefing eng definieren.
Anschluss: S-WF-037

### S-WF-037 Kunden-Lifecycle-Stage-Übergangs-Workflow (Integration Trigger)

Trigger: Kunden wechseln im CRM von "Aktiv" zu "At-Risk" — bislang bemerkt das Team diesen Wechsel erst beim wöchentlichen CRM-Review, zu spät für präventive Maßnahmen. (Quelle: sources/10 S-061 + S-065)
Ziel: Lifecycle-Stage-Übergänge in Echtzeit erkennen und automatisch die passende Retention-Maßnahme einleiten — mit HITL vor dem ersten Kundenkontakt.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Lifecycle-Transitions-Workflow mit risikobasierter Maßnahmen-Logik und HITL-Gate.
Fähigkeit: Workflow (Integration-Trigger CRM), AI-Node (Risiko-Analyse, Wissensordner Retention-Playbook), Condition-Node (Risiko-Tier), Action-Node (Slack + CRM-Task), HITL-Node
Vorgehen:
1. Den Integration-Trigger auf das CRM-Event "Lifecycle-Stage-Wechsel zu At-Risk" koppeln; Kontaktprofil, letzten Kauf-Zeitpunkt und Nutzungsfrequenz als Payload übergeben.
2. Einen AI-Node das Risiko-Profil gegen das Retention-Playbook im Wissensordner analysieren lassen und eine Risiko-Tier-Klassifikation (hoch/mittel) sowie eine Maßnahmen-Empfehlung ausgeben lassen.
3. Condition-Node: Risiko-Tier "hoch" → HITL-Node mit personalisertem Retention-Angebot-Entwurf an Account-Manager; Risiko-Tier "mittel" → automatische CRM-Task "Eincheck-Anruf in 7 Tagen".
4. HITL-Node: Account-Manager prüft den Entwurf und gibt die Kontaktaufnahme frei — kein automatischer Kunden-Kontakt.
Prompt:
> "Du bist Lifecycle-Retention-Workflow-Architekt. Entwirf einen At-Risk-Transitions-Workflow. Kontext: CRM-Integration-Trigger, Risiko-Analyse gegen Retention-Playbook-Wissensordner, HITL nur für hohes Risiko, CRM-Task für mittleres Risiko. Format: Integration-Trigger, AI-Analyse-Node, Condition mit zwei Pfaden, HITL-Gate, CRM-Task-Action."
Artefakt: Ein Lifecycle-Transitions-Workflow-Entwurf mit Risiko-Tier-Definition, zweistufiger Condition-Architektur und HITL-Freigabe-Schritt.
Fallstricke:
- Das Retention-Playbook im Wissensordner ist veraltet und empfiehlt Rabatte, die nicht mehr genehmigt sind → das Playbook mindestens quartalsweise gegen die aktuelle Genehmigungsmatrix aktualisieren.
- Der Workflow klassifiziert denselben Kontakt mehrfach als "At-Risk", wenn das CRM-Feld fluktuiert → einen Condition-Node prüfen lassen, ob für diesen Kontakt innerhalb der letzten 30 Tage bereits eine Retention-Action angelegt wurde.
Anschluss: S-WF-038

### S-WF-038 Re-Engagement-Kampagnen-Automatisierung nach Inaktivitätssignal (Scheduled Trigger)

Trigger: CRM-Kontakte, die seit 90 Tagen keine Interaktion gezeigt haben, sollen automatisch in eine Re-Engagement-Sequenz eingereiht werden — bislang passiert dies manuell und unregelmäßig. (Quelle: sources/10 S-060 + S-061)
Ziel: Inaktive Kontakte systematisch und zeitgerecht identifizieren und in eine freigabepflichtige Re-Engagement-Sequenz überführen, bevor sie endgültig churn-gefährdet werden.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Inaktivitäts-Erkennungs- und Sequenz-Einleitungs-Workflow mit Datenschutz-Prüfung und HITL.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (CRM-Abfrage Inaktivitäts-Segment), Condition-Node (DSGVO-Opt-out-Prüfung), AI-Node (Re-Engagement-E-Mail-Entwurf), HITL-Node, Action-Node (CRM-Sequenz-Start)
Vorgehen:
1. Den Scheduled-Trigger wöchentlich setzen; via CRM-Integration alle Kontakte abrufen, deren letzte Interaktion > 90 Tage zurückliegt und die aktiv opt-in sind.
2. Einen Condition-Node jeden Kontakt auf DSGVO-Opt-out-Status prüfen lassen — Kontakte mit Opt-out werden ohne weitere Aktion archiviert.
3. Einen AI-Node für verbleibende Kontakte einen personalisierten Re-Engagement-E-Mail-Entwurf auf Basis des letzten Kaufs oder letzten Interaktionsthemas erstellen lassen.
4. Einen HITL-Node eine Stichprobe von 10 % der Entwürfe zur Qualitätsprüfung vorlegen lassen; nach Freigabe startet ein CRM-Action-Node die Sequenz.
Prompt:
> "Du bist Re-Engagement-Workflow-Architekt. Entwirf einen wöchentlichen Inaktivitäts-Erkennungs-Workflow. Kontext: 90-Tage-Inaktivitäts-Schwelle, DSGVO-Opt-out-Filter als Condition, KI-Personalisierung per letzter Interaktion, HITL-Stichprobe, kein automatischer Versand. Format: Scheduled-Trigger, CRM-Integration, Condition (Opt-out), AI-Entwurf-Node, HITL, CRM-Sequenz-Action."
Artefakt: Ein Re-Engagement-Workflow-Entwurf mit DSGVO-Opt-out-Filter-Logik, Stichproben-HITL-Definition und CRM-Sequenz-Action-Konfiguration.
Fallstricke:
- Kontakte ohne Opt-out-Prüfung erhalten Re-Engagement-E-Mails nach einem Abmelde-Wunsch → den Condition-Node für DSGVO-Opt-out als den allerersten Check-Schritt im Workflow verankern, nicht als nachgelagerter Filter.
- Der AI-Node generiert eine generische "Wir vermissen Sie"-E-Mail ohne Personalisierungsankerpunkt → den Workflow so konfigurieren, dass Kontakte ohne verwertbaren Interaktions-Historien-Eintrag in eine manuelle Nachbearbeitungs-Liste fließen statt eine leere Personalisierung zu erhalten.
Anschluss: S-WF-039

### S-WF-039 SLA-Verletzungs-Eskalations-Workflow (Integration Trigger)

Trigger: Intern vereinbarte Service-Level-Agreements (z. B. "Briefing-Feedback innerhalb von 24 Stunden") werden regelmäßig überschritten — das Marketing-Ops-Team bemerkt es erst beim nächsten Sprint-Review. (Quelle: sources/10 S-097 + A-36)
Ziel: SLA-Verletzungen automatisch und in Echtzeit erkennen und an die verantwortliche Führungskraft eskalieren, bevor sie sich auf Kampagnen-Timelines auswirken.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten SLA-Überwachungs- und Eskalations-Workflow mit schwellenwertbasierter Dringlichkeitsstufe.
Fähigkeit: Workflow (Integration-Trigger Projektmanagement-Tool), Condition-Node (Fälligkeits-Prüfung), AI-Node (Kontext-Eskalations-Nachricht), Action-Node (Slack + PM-Tool-Task-Update), HITL-Node (bei kritischer Eskalation)
Vorgehen:
1. Den Integration-Trigger an das Projektmanagement-Tool (z. B. Jira, Asana) koppeln; bei Statuswechsel "Überfällig" feuert der Workflow mit Task-Name, Verantwortlichem und Fälligkeitsdatum als Payload.
2. Condition-Node: Überziehung 1–24 h → automatische Slack-Erinnerung an Verantwortlichen; Überziehung > 24 h → HITL-Node mit Eskalations-Vorschlag an Teamleitung.
3. Einen AI-Node eine kontextuelle Eskalations-Nachricht generieren lassen, die Task-Kontext, Auswirkung auf abhängige Kampagnen und einen Lösungsvorschlag enthält.
4. HITL-Node: Teamleitung prüft die Eskalation und entscheidet über Maßnahme — kein automatisches Eingreifen in Task-Zuweisung oder Deadlines.
Prompt:
> "Du bist SLA-Eskalations-Workflow-Architekt. Entwirf einen Überziehungs-Erkennungs-Workflow für interne Marketing-Briefings. Kontext: PM-Tool-Integration-Trigger, zweistufige Condition (1–24 h Erinnerung, >24 h HITL-Eskalation), KI-Kontext-Nachricht mit Auswirkungsanalyse. Format: Integration-Trigger, Condition mit zwei Pfaden, AI-Eskalations-Node, Slack-Action, HITL."
Artefakt: Ein SLA-Eskalations-Workflow-Entwurf mit zweistufiger Condition-Logik, AI-Eskalations-Nachrichts-Template und HITL-Freigabe-Schritt.
Fallstricke:
- Der Workflow eskaliert auch Tasks, die absichtlich on-hold gestellt wurden → den Condition-Node auf den Task-Status-Qualifier "on-hold" prüfen lassen und diese Tasks aus der Eskalations-Logik ausschließen.
- Zu häufige Eskalations-Nachrichten für kleine Überziehungen untergraben die Wirkung → die 1–24-h-Erinnerung als direkte Slack-DM (nicht als Kanal-Nachricht) an den Verantwortlichen senden, um Alert-Fatigue im Team-Kanal zu vermeiden.
Anschluss: S-WF-040

### S-WF-040 Internes Wissens-Update-Benachrichtigungs-Workflow (Integration Trigger)

Trigger: Wissensordner-Inhalte (Brand-Guidelines, Produkt-Sheets, Compliance-Dokumente) werden aktualisiert — das Team weiß nicht, dass die Agenten nun auf neue Quellen zugreifen, und nutzt weiterhin veraltete Annahmen. (Quelle: sources/12 Q-65 + A-33)
Ziel: Jede Wissensordner-Aktualisierung automatisch an alle betroffenen Agent-Owner und Workflow-Nutzer kommunizieren, damit Agenten-Konfigurationen und Prompts zeitnah angepasst werden.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Änderungs-Benachrichtigungs-Workflow mit Change-Summary und direktem RACI-Routing.
Fähigkeit: Workflow (Integration-Trigger Wissensordner-Update), AI-Node (Change-Summary-Generierung), Action-Node (Slack-Benachrichtigung nach RACI-Matrix), HITL-Node (bei kritischen Compliance-Dokumenten)
Vorgehen:
1. Den Integration-Trigger auf das Event "Datei in Wissensordner aktualisiert oder gelöscht" koppeln; Dateiname, Ordner-Name und ändernder Nutzer als Payload übergeben.
2. Einen AI-Node eine kompakte Change-Summary (max. 5 Sätze) aus dem neuen Dokument-Inhalt erzeugen lassen — was hat sich inhaltlich verändert, was sind die Implikationen für Agenten-Prompts.
3. Action-Node: Slack-Benachrichtigung an alle Nutzer, die diesen Wissensordner in einem Agenten oder Workflow referenzieren — basierend auf einer RACI-Matrix im Wissensordner.
4. HITL-Node nur bei Compliance-Dokumenten (Brand-Guidelines, Legal-Dokumente): Agent-Owner bestätigt explizit, dass er seine Agenten-Konfiguration auf Basis der Änderung geprüft hat.
Prompt:
> "Du bist Wissensordner-Change-Management-Architekt. Entwirf einen Benachrichtigungs-Workflow für Wissensordner-Updates. Kontext: Integration-Trigger bei Dateiänderung, AI-Change-Summary, Slack-Routing nach RACI-Matrix, HITL nur bei Compliance-Dokumenten. Format: Integration-Trigger, AI-Summary-Node, Condition (Compliance ja/nein), Slack-Action, optionaler HITL."
Artefakt: Ein Wissens-Update-Workflow-Entwurf mit Change-Summary-Node, RACI-Routing-Logik und selektivem HITL-Gate für Compliance-Dokumente.
Fallstricke:
- Automatische Formatierungs-Updates (z. B. Whitespace-Korrekturen) triggern unnötige Benachrichtigungen → den AI-Node anweisen, den Diff auf inhaltlich signifikante Änderungen zu prüfen und bei rein formalen Änderungen den Workflow ohne Benachrichtigung zu beenden.
- Die RACI-Matrix ist veraltet und versendet Benachrichtigungen an frühere Team-Mitglieder → die RACI-Matrix als eigenes, regelmäßig geprüftes Dokument im Wissensordner führen und quartalsweise aktualisieren.
Anschluss: S-WF-041

### S-WF-041 Automatische Qualitätsprüfung bei KI-generiertem Content (Manual Trigger + Loop)

Trigger: Das Team generiert wöchentlich eine große Menge KI-produzierter Texte (Social Posts, E-Mail-Betreff, Ad-Copy) — eine konsistente Qualitätsprüfung fehlt, und schlechte Outputs gehen unbemerkt in die Pipeline. (Quelle: A-34 + A-38)
Ziel: Einen strukturierten QA-Schritt in die Content-Produktion einbauen, der KI-Outputs systematisch auf Brand-Voice-Konformität, Faktentreue und Tonalität prüft, bevor sie das Team zur Freigabe erreichen.
Ergebnis: Ein Architektur-Entwurf für einen Loop-basierten QA-Workflow mit Multi-Kriterien-Bewertung, Schwellen-Filter und HITL-Eskalation für Ausreißer.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (Content-Array), AI-Node (QA-Bewertung, Wissensordner Brand-Voice + Fakten-Referenz), Condition-Node (QA-Score-Schwelle), HITL-Node, Action-Node
Vorgehen:
1. Den Manual-Trigger mit dem Content-Array (Text-Items + Typ) als Eingabe definieren; der Loop-Node iteriert über alle Items.
2. Pro Item bewertet ein AI-Node drei Dimensionen: Brand-Voice-Konformität (1–5), Faktentreue (1–5), Tonalitäts-Passgenauigkeit (1–5) — Structured Output: Scores + Begründung pro Dimension.
3. Condition-Node: Gesamt-Score < 10/15 → HITL-Node mit Item + Begründung zur manuellen Überarbeitung; Score ≥ 10/15 → automatisch zur Freigabe-Queue.
4. Die Freigabe-Queue wird als Notion-Seite oder Sheets-Export bereitgestellt — der finale Freigabe-Klick verbleibt beim Menschen.
Prompt:
> "Du bist Content-QA-Workflow-Architekt. Entwirf einen Batch-QA-Workflow für KI-generierte Marketing-Texte. Kontext: Drei Bewertungsdimensionen (Brand-Voice, Faktentreue, Tonalität) je 1–5 Punkte, Schwelle 10/15, Ausreißer per HITL, Freigabe-Queue als Export. Format: Manual-Trigger, Loop-Node, AI-QA-Node mit Structured Output, Condition, HITL-Eskalation, Export-Action."
Artefakt: Ein Content-QA-Workflow-Entwurf mit Bewertungs-Kriterien-Schema, Score-Schwellenwert-Definition und HITL-Eskalations-Logik.
Fallstricke:
- Der AI-QA-Node bewertet seinen eigenen zuvor generierten Content generös, weil kein unabhängiger Prüfkontext vorhanden ist → den QA-Node als vollständig separaten Node mit eigenem System-Prompt und eigenem Wissensordner-Anker konfigurieren, unabhängig vom Generierungs-Node.
- Zu strenge Schwellenwerte blockieren zu viele Items und lähmen die Pipeline → die Schwellenwerte in den ersten zwei Wochen manuell kalibrieren, bevor der Workflow in den Regelbetrieb geht.
Anschluss: S-WF-042

### S-WF-042 Kampagnen-Launch-Readiness-Check-Workflow (Manual Trigger)

Trigger: Kurz vor dem Launch einer Kampagne ist unklar, ob alle Assets und Konfigurationen vollständig sind — die Checkliste wird manuell durchgegangen und es gibt regelmäßig Last-Minute-Fehler. (Quelle: sources/10 S-094 + S-097)
Ziel: Einen automatisierten Pre-Launch-Check einführen, der alle Kampagnen-Bestandteile systematisch auf Vollständigkeit und Konsistenz prüft und einen strukturierten Go/No-Go-Report erzeugt.
Ergebnis: Ein Architektur-Entwurf für einen manuell angestoßenen Readiness-Check-Workflow mit AI-gestützter Asset-Prüfung, Blocker-Identifikation und HITL-Go/No-Go-Entscheidung.
Fähigkeit: Workflow (Manual-Trigger), AI-Node (Readiness-Check gegen Checklisten-Wissensordner, Structured Output), Condition-Node (Blocker vorhanden ja/nein), HITL-Node, Action-Node (Notion-Report)
Vorgehen:
1. Den Manual-Trigger mit der Kampagnen-ID und einem Link zur Asset-Liste als Eingabe definieren.
2. Einen AI-Node alle Assets und Konfigurationen gegen eine Checkliste im Wissensordner prüfen lassen — Structured Output: Status pro Punkt (OK/Offen/Blocker) + Verantwortlicher.
3. Condition-Node: mindestens ein Blocker vorhanden → HITL-Node mit vollständigem Report an Kampagnen-Leitung; keine Blocker → direkter Übergang zur Go-Bestätigung.
4. Nach menschlicher Go/No-Go-Entscheidung einen Action-Node den Report als Notion-Seite archivieren lassen — revisionssicherer Nachweis des Launch-Checks.
Prompt:
> "Du bist Kampagnen-Launch-Readiness-Architekt. Entwirf einen Pre-Launch-Check-Workflow für Kampagnen. Kontext: Asset-Liste als Trigger-Input, Checklisten-Wissensordner als Referenz, Blocker-Erkennung per Condition, HITL-Go/No-Go, Notion-Archivierung. Format: Manual-Trigger, AI-Check-Node mit Structured Output, Condition, HITL, Notion-Action."
Artefakt: Ein Readiness-Check-Workflow-Entwurf mit Checklisten-Schema, Blocker-Condition-Logik und Go/No-Go-HITL-Beschreibung.
Fallstricke:
- Die Checkliste im Wissensordner wird nicht kampagnentyp-spezifisch gepflegt → eine separate Checkliste pro Kampagnentyp (Performance, Event, Content) anlegen und den Trigger mit einem Kampagnentyp-Parameter versehen.
- Der Report enthält "Offen"-Punkte, die keine echten Blocker sind, und verzögert den Launch → die Checkliste klar zwischen "Blocker" (Launch nicht möglich) und "Empfehlung" (Launch möglich, aber suboptimal) unterscheiden lassen.
Anschluss: S-WF-043

### S-WF-043 Automatischer Reporting-Digest nach Kampagnen-Ende (Integration Trigger)

Trigger: Eine Kampagne endet und das Abschluss-Reporting muss innerhalb von 48 Stunden vorliegen — die Daten-Aggregation aus mehreren Plattformen (Google Ads, LinkedIn, E-Mail-Tool) kostet das Team Stunden. (Quelle: sources/10 S-098 + A-01)
Ziel: Den Post-Kampagnen-Reporting-Prozess automatisieren: Daten aggregieren, KPIs berechnen, narrative Zusammenfassung erzeugen und an den Stakeholder-Verteiler senden — mit HITL-Interpretations-Freigabe.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Post-Kampagnen-Reporting-Workflow mit Multi-Quellen-Aggregation und HITL-Freigabe.
Fähigkeit: Workflow (Integration-Trigger Kampagnen-Management-Tool), Integration-Node (Google Ads + LinkedIn + E-Mail-Tool), AI-Node (KPI-Berechnung + Narrative, Structured Output), HITL-Node, Action-Node (PDF-Report + Slack-Versand)
Vorgehen:
1. Den Integration-Trigger auf das Kampagnen-End-Event im Management-Tool koppeln; Kampagnen-ID und Laufzeitzeitraum als Payload übergeben.
2. Parallele Integration-Nodes die Rohdaten aus Google Ads, LinkedIn und dem E-Mail-Tool ziehen und auf denselben Zeitraum normalisieren.
3. Einen AI-Node die aggregierten Daten in ein standardisiertes KPI-Set übersetzen lassen (Impressionen, Klicks, Conversions, CPL, ROAS) und eine faktentreue narrative Zusammenfassung erzeugen — kein Werturteil ohne Datenbasis.
4. HITL-Node: Kampagnen-Manager prüft KPIs und Narrative, ergänzt strategische Interpretation; nach Freigabe sendet ein Action-Node den Report als PDF und Slack-Nachricht an den Stakeholder-Verteiler.
Prompt:
> "Du bist Post-Kampagnen-Reporting-Architekt. Entwirf einen automatisierten Reporting-Workflow nach Kampagnen-Ende. Kontext: Multi-Quellen-Integration (Google Ads, LinkedIn, E-Mail), KPI-Normalisierung, faktentreue KI-Narrative, HITL für Interpretation, PDF+Slack-Verteilung. Format: Integration-Trigger, parallele Daten-Nodes, AI-KPI-Node, HITL, Report-Action."
Artefakt: Ein Post-Kampagnen-Reporting-Workflow-Entwurf mit Multi-Quellen-Normalisierungs-Logik, KPI-Schema und HITL-Interpretations-Gate.
Fallstricke:
- Unterschiedliche Attribution-Fenster der Plattformen verzerren den Gesamtvergleich → das Reporting-Node explizit auf einen einheitlichen Attribution-Zeitraum (z. B. 7-Tage-Klick-Attribution) normalisieren und im Report-Header dokumentieren.
- Der AI-Node fügt wertende Aussagen ("Schlechte Performance") ohne Benchmarks ein → den Node anweisen, ausschließlich delta-basierte Aussagen ("+15 % vs. letzter Kampagne") zu verwenden; absolute Urteile dem menschlichen HITL-Reviewer überlassen.
Anschluss: S-WF-044

### S-WF-044 Influencer-Briefing-Genehmigungs-Workflow (Manual Trigger)

Trigger: Influencer-Briefings durchlaufen mehrere interne Genehmigungsstufen (Kampagnen-Manager → Brand-Director → Legal) und einen externen Feedback-Schritt mit dem Talent — der Prozess läuft unstrukturiert per E-Mail und erzeugt Versionschaos. (Quelle: A-42 + sources/10 S-083)
Ziel: Den Influencer-Briefing-Prozess in eine strukturierte Genehmigungs-Kette überführen, die jede Stufe dokumentiert und sicherstellt, dass ausschließlich freigegebene Versionen das Talent erreichen.
Ergebnis: Ein Architektur-Entwurf für einen manuell angestoßenen mehrstufigen Briefing-Genehmigungs-Workflow mit versioniertem Output und Talent-Übergabe-Gate.
Fähigkeit: Workflow (Manual-Trigger), AI-Node (Briefing-Vollständigkeits-Check, Brand-Voice-Prüfung), HITL-Node (3×: Kampagnen-Manager, Brand-Director, Legal), Action-Node (versioniertes Dokument in Cloud-Storage + Slack-Benachrichtigung)
Vorgehen:
1. Den Manual-Trigger mit dem Briefing-Entwurf und dem Talent-Profil als Eingabe definieren; einen AI-Node auf Vollständigkeit (alle Pflichtfelder vorhanden) und Brand-Voice-Konformität prüfen lassen.
2. HITL-Gate 1 (Kampagnen-Manager): inhaltliche Prüfung auf Kampagnenziel-Konsistenz.
3. HITL-Gate 2 (Brand-Director): Markenstimme und kreative Leitlinien — Freigabe oder Ablehnung mit Kommentar.
4. HITL-Gate 3 (Legal): UWG-Konformität und Influencer-Kennzeichnungspflicht prüfen; nach finaler Freigabe Action-Node: versioniertes PDF in Cloud-Storage ablegen und Talent-Manager per Slack benachrichtigen — kein direkter Versand an das Talent durch den Workflow.
Prompt:
> "Du bist Influencer-Briefing-Workflow-Architekt. Entwirf eine dreistufige Genehmigungs-Kette für Influencer-Briefings. Kontext: Pflichtfeld-Check durch KI, drei HITL-Gates (KM, Brand, Legal), UWG-Kennzeichnungspflicht im Legal-Gate, kein automatischer Versand ans Talent. Format: Manual-Trigger, AI-Check-Node, drei HITL-Nodes mit Prüfinstruktion, Cloud-Storage-Action, Slack-Benachrichtigung."
Artefakt: Ein Influencer-Briefing-Genehmigungs-Workflow-Entwurf mit Pflichtfeld-Schema, dreistufiger HITL-Architektur und versionierter Cloud-Storage-Action.
Fallstricke:
- Ein abgelehntes Briefing landet in einer Sackgasse, weil kein Überarbeitungs-Pfad definiert ist → jeden HITL-Gate-Node mit einem expliziten Ablehnungs-Pfad versehen, der den Entwurf mit Kommentar an den Kampagnen-Manager zurückgibt.
- Die Influencer-Kennzeichnungspflicht (§ 5a UWG) wird vom Legal-Gate nicht explizit geprüft → den Legal-HITL-Node mit einer konkreten Prüf-Checkliste für Kennzeichnungspflicht-Elemente ausstatten.
Anschluss: S-WF-045

### S-WF-045 Monatlicher Wissensordner-Audit-Workflow (Scheduled Trigger)

Trigger: Wissensordner akkumulieren über Zeit veraltete Dokumente, widersprüchliche Quellen und nicht mehr gültige Brand-Guidelines — ohne regelmäßigen Audit driften Agenten-Outputs schleichend in Qualität und Compliance-Konformität ab. (Quelle: sources/12 Q-65 + Q-67 + A-33)
Ziel: Einen monatlichen Wissensordner-Audit etablieren, der veraltete und widersprüchliche Inhalte identifiziert und den verantwortlichen Owner zur Entscheidung (Behalten/Aktualisieren/Löschen) auffordert.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Wissensordner-Audit-Workflow mit AI-gestützter Aktualitätsprüfung, Konflikt-Erkennung und HITL-Entscheidungs-Gate.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Node (Wissensordner-Dateiliste via API), AI-Node (Aktualitätsprüfung + Konflikt-Erkennung, Structured Output), HITL-Node, Action-Node (Audit-Report in Notion + Slack-Alert an Owner)
Vorgehen:
1. Den Scheduled-Trigger auf den ersten Montag jedes Monats setzen; via API alle Dateien des Wissensordners mit Erstellungs- und letztem Änderungsdatum abrufen.
2. Einen AI-Node jede Datei auf drei Dimensionen prüfen lassen: (a) Zeitliche Aktualität (letztes Änderungsdatum > 6 Monate → Flag), (b) inhaltliche Widersprüche zu anderen Dokumenten im Ordner, (c) fehlende Pflicht-Metadaten (Owner, Gültigkeitsdatum) — Structured Output: Dateiname, Flag-Typ, Begründung, Empfehlung.
3. HITL-Node: Wissensordner-Owner erhält den vollständigen Audit-Report mit allen geflaggten Dateien und muss je Datei eine Entscheidung treffen (Behalten/Aktualisieren/Löschen).
4. Nach der HITL-Entscheidung erstellt ein Action-Node eine versionierte Audit-Report-Seite in Notion und sendet einen Slack-Alert mit der Anzahl der offenen Aktionspunkte an den Team-Channel.
Prompt:
> "Du bist Wissensordner-Audit-Architekt. Entwirf einen monatlichen Audit-Workflow für Langdock-Wissensordner. Kontext: API-Dateiliste als Trigger-Basis, drei Prüfdimensionen (Aktualität, Widersprüche, Metadaten), HITL mit Dreifach-Entscheidung (Behalten/Aktualisieren/Löschen), Notion-Archivierung und Slack-Alert. Format: Scheduled-Trigger, API-Integration, AI-Audit-Node, HITL-Gate, Notion+Slack-Actions."
Artefakt: Ein Wissensordner-Audit-Workflow-Entwurf mit Dreifach-Flag-Schema, HITL-Entscheidungsmatrix und versionierter Notion-Archivierungs-Action.
Fallstricke:
- Der AI-Node flaggt zu viele Dokumente als "veraltet", weil das Änderungsdatum-Kriterium zu eng ist (z. B. 3 Monate) → das Aktualitätsschwellenwert-Kriterium nach Dokumenttyp differenzieren: Brand-Guidelines alle 6 Monate, Compliance-Dokumente alle 3 Monate, Evergreen-Inhalte jährlich.
- Der Owner ignoriert HITL-Requests systematisch, weil keine Eskalationsregel definiert ist → einen sekundären Scheduled-Trigger einrichten, der offene HITL-Requests nach 5 Arbeitstagen ohne Reaktion automatisch an die nächsthöhere Führungsebene eskaliert.
Anschluss: S-WF-046

### S-WF-046 DSGVO-Einwilligungs-Widerruf-Verarbeitungs-Workflow (Webhook Trigger)

Trigger: Ein Kontakt widerruft seine Einwilligung (z. B. Newsletter-Abbestellung, Cookie-Opt-out) und muss rechtssicher aus allen Marketing-Systemen entfernt werden — manuelle Löschung über mehrere Plattformen ist fehleranfällig und zu langsam für die DSGVO-Frist. (Quelle: sources/12 H-Compliance + sources/10 S-103)
Ziel: Einwilligungswiderrufe innerhalb der gesetzlichen Frist vollständig, nachvollziehbar und dokumentiert in allen verknüpften Systemen umsetzen, ohne manuelle Einzelschritte.
Ergebnis: Ein Architektur-Entwurf für einen Webhook-getriggerten Widerruf-Workflow mit Multi-System-Sync, Bestätigungs-E-Mail und Audit-Protokoll.
Fähigkeit: Workflow (Webhook-Trigger), Logic-Node (Bedingungsverzweigung nach Einwilligungstyp), Action-Nodes (HubSpot/Salesforce Kontakt-Update, E-Mail-Bestätigung), AI-Node (Bestätigungs-E-Mail-Generierung), HITL-Node bei Datenlöschung mit Beweissicherungspflicht
Vorgehen:
1. Den Webhook-Trigger an das Einwilligungs-Management-System koppeln; das Payload enthält Kontakt-ID, Einwilligungstyp und Widerrufszeitpunkt.
2. Einen Logic-Node verzweigen lassen: Newsletter-Widerruf → Abbestellung in E-Mail-Tool; Cookie-Opt-out → Tracking-Flag im CRM; Vollständige Datenlöschung → HITL-Node für juristische Freigabe vor irreversiblem Löschen.
3. Action-Nodes synchronisieren den Status in allen verknüpften Systemen (CRM, E-Mail-Tool, Analytics-Plattform); ein AI-Node generiert eine tonalitätsgerechte Bestätigungs-E-Mail an den Kontakt.
4. Ein abschließender Action-Node schreibt Zeitstempel, Kontakt-ID, Einwilligungstyp und ausgeführte Aktionen in ein Audit-Log (z. B. Notion-Datenbank oder Compliance-CSV) für den Datenschutzbeauftragten.
Prompt:
> "Du bist DSGVO-Workflow-Architekt. Entwirf einen Webhook-Workflow für Einwilligungswiderrufe. Kontext: Widerruf-Payload mit Kontakt-ID und Typ, Multi-System-Sync (CRM + E-Mail-Tool), HITL bei Vollständigem-Löschauftrag, revisionssicheres Audit-Log. Format: Trigger, Logic-Verzweigung nach Typ, Action-Nodes je System, AI-Bestätigungs-E-Mail, Audit-Log-Action."
Artefakt: Ein DSGVO-konformer Widerruf-Workflow-Entwurf mit Einwilligungstyp-Verzweigung, Multi-System-Action-Nodes und Audit-Log-Architektur.
Fallstricke:
- Der Webhook feuert mehrfach bei Netzwerkfehlern und löscht Kontaktdaten doppelt → einen Idempotenz-Check (Deduplizierung per Kontakt-ID + Zeitstempel) vor den Action-Nodes einbauen.
- Das Audit-Log wird in einem Langdock-eigenen Speicher abgelegt und ist bei Behördenanfragen nicht als eigenständiges Dokument exportierbar → externe Compliance-Datenbank oder unveränderliche CSV außerhalb von Langdock als Audit-Ziel wählen.
Anschluss: S-WF-047

### S-WF-047 Produkt-Update-Benachrichtigungs-Workflow (Integration Trigger)

Trigger: Immer wenn im PIM oder CMS ein Produktdatensatz mit Status „Release-bereit" markiert wird, müssen kanalspezifische Update-Nachrichten (E-Mail an Bestandskunden, Slack an Sales, Push-Benachrichtigung an App-Nutzer) ausgeliefert werden — heute passiert das manuell mit Zeitverzögerung. (Quelle: sources/10 S-064 + research/julia-lens A-24)
Ziel: Produktupdates sofort nach Freigabe kanalgerecht kommunizieren und dabei keine Kundengruppe vergessen.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Update-Benachrichtigungs-Workflow mit kanalspezifischen AI-Nodes und HITL-Freigabe.
Fähigkeit: Workflow (Integration-Trigger), AI-Node (kanal-spezifische Textvarianten, Structured Output), HITL-Node, Action-Nodes (E-Mail-Tool, Slack, Push-Service)
Vorgehen:
1. Den Integration-Trigger an das PIM-/CMS-Status-Event „Release-bereit" koppeln; das Payload enthält Produktname, Änderungsbeschreibung und Zielgruppe.
2. Einen AI-Node drei Textvarianten parallel generieren lassen: (a) Kunden-E-Mail (nutzenorientiert, 120 Wörter), (b) Slack-Nachricht für Sales (feature-fokussiert, 3 Bulletpoints), (c) Push-Benachrichtigung (≤90 Zeichen) — Structured Output mit je einem Feld pro Kanal.
3. Einen HITL-Node einschalten, damit Product-Marketing alle drei Varianten vor dem Versand in einer Übersicht prüfen und bei Bedarf editieren kann.
4. Nach Freigabe distribuieren parallele Action-Nodes die Varianten an E-Mail-Tool, Slack-Channel und Push-Service.
Prompt:
> "Du bist Produkt-Kommunikations-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow für Produkt-Updates. Kontext: PIM-Trigger mit Produktdaten-Payload, drei Kanäle (Kunden-E-Mail, Sales-Slack, App-Push), HITL-Freigabe vor Versand. Format: Trigger, parallele AI-Nodes je Kanal, HITL, drei Action-Nodes."
Artefakt: Ein Produkt-Update-Workflow-Entwurf mit Parallel-AI-Nodes, Structured-Output-Schema und HITL-Freigabe-Gate.
Fallstricke:
- Der AI-Node generiert für alle drei Kanäle denselben Text in leicht veränderter Form → für jeden Kanal einen eigenen AI-Node mit kanalspezifischem System-Prompt und explizitem Längen-Constraint konfigurieren.
- Updates für zurückgezogene Produktvarianten werden trotzdem versendet, weil der Trigger keine Varianten-Prüfung enthält → einen Logic-Node vor den AI-Nodes einbauen, der nur aktive, nicht-zurückgezogene Produkte durchlässt.
Anschluss: S-WF-048

### S-WF-048 Partner-Portal-Content-Update-Workflow (Webhook Trigger)

Trigger: Wenn interne Vertriebs- oder Marketingmaterialien aktualisiert werden, müssen Partner-Portal-Seiten synchronisiert und Partner per E-Mail informiert werden — aktuell passiert das mit wochenlangem Verzug und lückenhafter Abdeckung. (Quelle: sources/10 S-099 + sources/12 F-B2B-Lead-Gen)
Ziel: Sicherstellen, dass Partnerunternehmen stets mit aktuellen Materialien arbeiten und sofort über Änderungen informiert werden, ohne manuelle Koordination.
Ergebnis: Ein Architektur-Entwurf für einen Webhook-getriggerten Partner-Content-Sync-Workflow mit Partner-Segment-Logik und automatischer Update-Kommunikation.
Fähigkeit: Workflow (Webhook-Trigger), Logic-Node (Segmentierung nach Partner-Tier), AI-Node (Partner-Update-E-Mail, Structured Output), Action-Nodes (Portal-CMS-Update, E-Mail-Versand), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an das interne DAM/CMS koppeln, das bei Asset-Aktualisierung feuert; Payload enthält Asset-ID, Asset-Typ und betroffene Partner-Segmente.
2. Einen Logic-Node die Partner-Tiering-Logik abbilden lassen: Tier-1-Partner erhalten sofortige E-Mail-Benachrichtigung mit Kontext-Zusammenfassung; Tier-2-Partner erhalten eine wöchentliche Digest-Einreihung; ein AI-Node generiert den E-Mail-Text aus den Asset-Metadaten.
3. Ein HITL-Node hält die Kommunikation bei strategisch sensiblen Materialien (z. B. neue Preislisten) für eine manuelle Freigabe an, bevor Action-Nodes das Portal-CMS aktualisieren und E-Mails auslösen.
Prompt:
> "Du bist Partner-Enablement-Workflow-Architekt. Entwirf einen Webhook-Workflow für Partner-Portal-Updates. Kontext: DAM-Trigger bei Asset-Update, Tier-1-Sofort-E-Mail vs. Tier-2-Digest, HITL bei Preislisten-Updates. Format: Webhook-Trigger, Logic-Tier-Node, AI-E-Mail-Node, HITL, Portal-CMS-Action."
Artefakt: Ein Partner-Portal-Update-Workflow-Entwurf mit Tier-Segmentierungslogik, AI-generierter Kommunikation und HITL-Gate für sensible Assets.
Fallstricke:
- Der Webhook feuert auch bei Metadaten-Only-Änderungen (z. B. Tags umbenennen) und löst unnötige Partner-E-Mails aus → einen Filter-Node einbauen, der nur inhaltliche Änderungen (Content-Hash-Vergleich) durchlässt.
- Partner-E-Mail-Adressen sind im Portal veraltet, sodass Updates ins Leere laufen → regelmäßigen Datenqualitäts-Check der Partner-Kontakte als Voraussetzung für den Workflow definieren (ggf. als separater S-WF-059).
Anschluss: S-WF-049

### S-WF-049 Mitarbeiter-Spotlight-Generierungs-Workflow (Form Trigger)

Trigger: HR oder Marketing möchten regelmäßig kurze Mitarbeiter-Portraits für interne Newsletter, LinkedIn oder das Karriereportal veröffentlichen — die manuelle Interviewauswertung und Textredaktion kostet unverhältnismäßig viel Zeit. (Quelle: sources/10 S-083 + sources/12 F-Content)
Ziel: Aus strukturierten Mitarbeiter-Inputs automatisch publishingfähige Spotlight-Texte in mehreren Längen und Formaten generieren und dabei Employer-Branding-Konsistenz wahren.
Ergebnis: Ein Architektur-Entwurf für einen formulargetriggerten Spotlight-Generierungs-Workflow mit Employer-Branding-Bindung und HITL-Freigabe.
Fähigkeit: Workflow (Form-Trigger), AI-Node (Spotlight-Text in drei Längen, Wissensordner Employer-Branding-Guidelines), HITL-Node, Action-Node (Notion-Entwurf)
Vorgehen:
1. Ein Form-Trigger sammelt strukturierte Eingaben der Mitarbeiter: Name, Rolle, 3 Lieblingsaufgaben, ein persönliches Zitat und ein optionaler Fun-Fact — vordefinierte Felder erhöhen die Datenqualität für den AI-Node.
2. Ein AI-Node generiert drei Textvarianten aus denselben Inputs: (a) Intranet-Kurzprofil (80 Wörter), (b) LinkedIn-Post (150 Wörter mit Hashtags), (c) Karriereseiten-Teaser (50 Wörter) — alle drei gegen den Employer-Branding-Wissensordner gebunden.
3. Ein HITL-Node ermöglicht dem HR-Team und der betreffenden Person die Freigabe oder Anpassung aller Varianten; nach Freigabe legt ein Action-Node einen Notion-Entwurf für die weitere Veröffentlichung an.
Prompt:
> "Du bist Employer-Branding-Workflow-Architekt. Entwirf einen Form-Trigger-Workflow für Mitarbeiter-Spotlights. Kontext: Strukturiertes Eingabeformular, drei Textlängen (Intranet, LinkedIn, Karriere), Bindung an Employer-Branding-Wissensordner, HITL-Freigabe durch HR + Mitarbeiter. Format: Form-Trigger, AI-Node mit drei Outputs, HITL, Notion-Action."
Artefakt: Ein Spotlight-Workflow-Entwurf mit Formular-Design, dreifachem AI-Output-Schema und Employer-Branding-gebundenem Wissensordner-Link.
Fallstricke:
- Das persönliche Zitat des Mitarbeiters wird vom AI-Node umformuliert und verliert seine Authentizität → das Zitat-Feld als unveränderlichen Platzhalter im Prompt definieren, der direkt in den Text injiziert wird, ohne KI-Paraphrase.
- Der Workflow geht ohne DSGVO-Einwilligung der Mitarbeitenden live → das Formular muss eine explizite Einwilligungsabfrage für die Veröffentlichung der Personendaten enthalten.
Anschluss: S-WF-050

### S-WF-050 Kunden-Bewertungsanfrage-Workflow (Integration Trigger)

Trigger: Nach Abschluss eines Kaufs oder einer Projektphase soll automatisch eine personalisierte Bewertungsanfrage versendet werden — bisher erfolgt das manuell mit inkonsistentem Timing und generischen Texten. (Quelle: sources/10 S-064 + S-090 + research/julia-lens A-32)
Ziel: Den optimalen Review-Anfrage-Zeitpunkt automatisch treffen, die Anfrage personalisieren und die Antwortquote messbar steigern.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Review-Anfrage-Workflow mit personalisiertem AI-Copywriting, Plattform-Routing und HITL-Template-Freigabe.
Fähigkeit: Workflow (Integration-Trigger), Logic-Node (Verzögerung nach Kaufabschluss + Kundensegment-Filter), AI-Node (personalisierte E-Mail, Structured Output), HITL-Node (Template-Freigabe), Action-Node (E-Mail-Tool)
Vorgehen:
1. Den Integration-Trigger an das CRM-/E-Commerce-Event „Kauf abgeschlossen" oder „Projektphase abgenommen" koppeln; Payload enthält Kundenname, Produkt/Projekt, Kaufdatum und Kundensegment.
2. Einen Logic-Node eine Wartezeit von 3–5 Tagen einplanen lassen (Zeitversatz-Node), danach nach Kundensegment verzweigen: B2B → G2/Capterra-Anfrage; B2C → Google/Trustpilot-Anfrage.
3. Ein AI-Node generiert eine kurze, personalisierte Bewertungsanfrage-E-Mail mit direktem Bewertungslink — Structured Output: Betreffzeile, Body-Text, CTA-Button-Label; Tonalität richtet sich nach Kundensegment aus dem Wissensordner.
4. Ein HITL-Node legt die segment-spezifischen E-Mail-Templates einmalig zur Freigabe vor und zieht bei jedem Lauf eine Stichprobe (z. B. 10 %) zur Qualitätskontrolle; erst nach Freigabe versendet ein Action-Node die E-Mail und protokolliert die Anfrage im CRM als Aktivität, damit Sales keine doppelten Anfragen stellt.
Prompt:
> "Du bist Review-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow für Kundenbewertungsanfragen. Kontext: CRM-Kauf-Event, 3-5 Tage Verzögerung, B2B-vs-B2C-Segmentverzweigung, personalisierte KI-E-Mail mit Review-Link, HITL-Template-Freigabe vor Versand. Format: Trigger, Delay-Logic, Segment-Verzweigung, AI-E-Mail-Node, HITL-Gate, E-Mail-Action + CRM-Protokollierung."
Artefakt: Ein Review-Anfrage-Workflow-Entwurf mit Timing-Logik, Segment-Verzweigung und personalisierten AI-E-Mail-Templates.
Fallstricke:
- Der Workflow feuert auch bei B2B-Testkunden oder internen Demo-Konten → einen Filter-Node einbauen, der Kunden mit dem Tag „Intern" oder „Demo" herausfiltert.
- Die Review-Plattform-URL im E-Mail-CTA ist hart kodiert und bricht bei Plattformwechsel → die Ziel-URL als konfigurierbaren Workflow-Parameter hinterlegen, nicht als statischen String im Prompt.
- Ohne Freigabe-Gate gehen fehlerhaft personalisierte Anfragen ungeprüft an Kunden → den HITL-Node als Template-Freigabe plus laufende 10-%-Stichprobe verankern; der finale Versand an den Kunden bleibt an die menschliche Freigabe gebunden.
Anschluss: S-WF-051

### S-WF-051 Produktverfügbarkeits-Alert-Workflow (Webhook Trigger)

Trigger: Kunden, die sich auf eine Warteliste für ein ausverkauftes Produkt eingetragen haben, sollen sofort nach Wiederverfügbarkeit automatisch benachrichtigt werden — jede Stunde Verzögerung kostet Conversion. (Quelle: sources/10 S-047 + research/julia-lens A-24)
Ziel: Wartelisten-Kunden in Echtzeit reaktivieren, sobald ein Produkt wieder verfügbar ist, und die Time-to-Notification unter 5 Minuten halten.
Ergebnis: Ein Architektur-Entwurf für einen reaktiven Verfügbarkeits-Alert-Workflow mit vorab freigegebenem Nachrichten-Template und optionalem Checkout-Deep-Link.
Fähigkeit: Workflow (Webhook-Trigger), Logic-Node (Wartelisten-Abfrage + Limit-Check), AI-Node (Template-Befüllung, Structured Output), HITL-Node (einmalige Template-Freigabe), Action-Nodes (E-Mail + optionale Push-Benachrichtigung)
Vorgehen:
1. Den Webhook-Trigger an das Lager-Management-System oder den Shop koppeln, das bei Bestandsübergang von 0 auf >0 feuert; Payload enthält Produkt-ID, Produktname und verfügbare Menge.
2. Einen Logic-Node prüfen lassen: (a) Gibt es Wartelisten-Einträge für dieses Produkt? (b) Ist die verfügbare Menge groß genug, um alle Wartelisten-Kunden zu bedienen? Falls ja, vollständige Liste; falls nein, nach Wartelistenposition priorisieren und ein Per-Execution-Limit setzen.
3. Ein AI-Node befüllt ein zuvor per HITL freigegebenes Nachrichten-Template mit Produktname, direktem Checkout-Link und optionalem Scarcity-Element (z. B. „Nur noch 12 Stück verfügbar") — da der Echtzeit-Alert keinen Versand-HITL erlaubt, wird das Template einmalig vom Marketing freigegeben und runtime nur datenbefüllt.
4. Action-Nodes versenden E-Mails und/oder Push-Benachrichtigungen auf Basis des freigegebenen Templates; nach Versand aktualisiert ein CRM-Action-Node den Wartelisten-Status des Kontakts auf „Benachrichtigt".
Prompt:
> "Du bist E-Commerce-Workflow-Architekt. Entwirf einen Webhook-Workflow für Produktverfügbarkeits-Alerts. Kontext: Lager-Webhook bei Bestandsänderung, Wartelisten-Abfrage, Priorisierung bei Teilmengen, vorab per HITL freigegebenes Alert-Template, das runtime nur datenbefüllt wird. Format: Webhook-Trigger, Logic-Wartelisten-Node, HITL-Template-Gate, AI-Befüllungs-Node, E-Mail-Action, CRM-Status-Update."
Artefakt: Ein Verfügbarkeits-Alert-Workflow-Entwurf mit Priorisierungslogik, HITL-freigegebenem Template und CRM-Status-Protokollierung.
Fallstricke:
- Der Webhook feuert mehrfach in kurzer Zeit (Lager-Korrekturbuchungen), was mehrfache Alerts an dieselben Kunden auslöst → einen Deduplizierungs-Node mit Cooldown-Fenster (z. B. 30 Minuten pro Produkt) einbauen.
- Ein per-Send-HITL würde den Sub-5-Minuten-Alert unmöglich machen, ein völlig ungeprüfter Versand verletzt aber die Kontrolle über Kunden-Kommunikation → die Lösung ist das einmalig freigegebene Template-Gate; nur freie Felder (Name, Bestand, Link) werden runtime befüllt, der Template-Text bleibt menschlich autorisiert.
- Scarcity-Formulierungen im AI-Node werden juristisch problematisch, wenn die Bestandsangabe nicht exakt stimmt → Scarcity-Element nur aktivieren, wenn der Bestand direkt aus dem Lager-Payload kommt, kein AI-generierter Schätzwert.
Anschluss: S-WF-052

### S-WF-052 Cross-Sell-Empfehlungs-Workflow (Integration Trigger)

Trigger: Nach dem Kauf von Produkt A soll automatisch eine thematisch passende Cross-Sell-Empfehlung für Produkt B kommuniziert werden — heute erfolgt das per generischer E-Mail ohne Produktkontext. (Quelle: sources/10 S-064 + research/julia-lens A-32)
Ziel: Den durchschnittlichen Bestellwert steigern, indem Kunden zeitnah nach dem Kauf eine begründete, kontextuelle Produktempfehlung erhalten.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Cross-Sell-Workflow mit KI-basierter Empfehlungsbegründung und kontrolliertem Versandzeitpunkt.
Fähigkeit: Workflow (Integration-Trigger), AI-Node (Cross-Sell-Begründung + E-Mail-Text, Structured Output), Logic-Node (Timing-Verzögerung + Ausschluss bereits gekaufter Produkte), Action-Node (E-Mail-Tool), HITL-Node (optional bei neuen Produktkombinationen)
Vorgehen:
1. Den Integration-Trigger an das CRM-Event „Kauf abgeschlossen" koppeln; Payload enthält gekaufte Produkt-IDs, Kundensegment und bisherigen Kaufverlauf.
2. Einen Logic-Node prüfen: Welche Cross-Sell-Produkte aus der definierten Empfehlungsmatrix (hinterlegt im Wissensordner) passen zum gekauften Produkt, und hat der Kunde diese bereits gekauft? Nur nicht-gekaufte, kompatible Produkte passieren den Node.
3. Ein AI-Node generiert eine E-Mail, die das Cross-Sell-Produkt explizit mit dem Kauf verknüpft (z. B. „Da du X gekauft hast, ergänzt Y perfekt, weil…") — Structured Output: Betreffzeile, Empfehlungsbegründung (2 Sätze), CTA.
4. Einen Timing-Logic-Node eine Verzögerung von 7 Tagen nach Kauf einplanen, bevor der Action-Node die E-Mail versendet; ein HITL-Node hält neue Produktkombinationen für manuelle Prüfung an.
Prompt:
> "Du bist Cross-Sell-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow für personalisierte Produktempfehlungen. Kontext: CRM-Kauf-Trigger, Empfehlungsmatrix im Wissensordner, 7-Tage-Verzögerung, KI-begründete E-Mail ohne bereits gekaufte Produkte. Format: Trigger, Logic-Ausschluss-Node, AI-E-Mail-Node, Timing-Node, E-Mail-Action."
Artefakt: Ein Cross-Sell-Workflow-Entwurf mit Empfehlungsmatrix-Integration, Kaufhistorien-Filter und AI-begründetem E-Mail-Template.
Fallstricke:
- Die Empfehlungsmatrix im Wissensordner wird nicht aktualisiert, wenn neue Produkte hinzukommen → einen monatlichen Review-Reminder-Workflow (→ S-WF-045) für die Empfehlungsmatrix einrichten.
- Kunden erhalten die Cross-Sell-E-Mail direkt nach dem Kauf und fühlen sich sofort wieder angesprochen → die 7-Tage-Verzögerung als Mindeststandard dokumentieren und im Timing-Node als konfigurierbaren Parameter hinterlegen.
Anschluss: S-WF-053

### S-WF-053 Garantie-Ablauf-Erinnerungs-Workflow (Scheduled Trigger)

Trigger: Kunden mit ablaufenden Garantien oder Service-Verträgen sollen rechtzeitig auf Verlängerungsangebote hingewiesen werden — heute gehen diese Touchpoints systematisch verloren, weil keine automatische Datumsprüfung stattfindet. (Quelle: sources/10 S-061 + S-064 + research/julia-lens A-32)
Ziel: Garantie- und Vertragsabläufe als Retention- und Upsell-Moment nutzen, indem Kunden 60, 30 und 7 Tage vor Ablauf automatisch kontaktiert werden.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Garantie-Erinnerungs-Workflow mit mehrstufiger Eskalationslogik, HITL-Template-Freigabe und personalisierten Verlängerungsangeboten.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Action (CRM-Abfrage ablaufender Garantien), Logic-Node (Eskalationsstufen 60/30/7 Tage), AI-Node (personalisierte Erinnerungs-E-Mail je Stufe, Structured Output), HITL-Node (Template- + Preis-Freigabe), Action-Nodes (E-Mail-Tool + CRM-Aktivitäts-Log)
Vorgehen:
1. Den Scheduled-Trigger täglich ausführen; ein Integration-Action-Node fragt das CRM nach allen Kontakten ab, deren Garantie- oder Vertragsenddatum in genau 60, 30 oder 7 Tagen liegt.
2. Einen Logic-Node die drei Eskalationsstufen verwalten lassen: 60-Tage-E-Mail (weicher Hinweis + Verlängerungsangebot), 30-Tage-E-Mail (konkretes Angebot + Preisinfo), 7-Tage-E-Mail (Dringlichkeits-CTA + direkter Checkout-Link).
3. Ein AI-Node generiert je Stufe eine tonalitätsgerechte E-Mail — Structured Output: Betreff, Eskalationsstufen-angepasster Body, CTA-Text; Inputs sind Kundenname, Produktbezeichnung, genaues Ablaufdatum und Verlängerungsoptionen aus dem Wissensordner.
4. Ein HITL-Node legt die drei Stufen-Templates samt kommunizierten Preisen dem Retention-Lead einmalig zur Freigabe vor (bei Preisänderung erneut); erst nach Freigabe versenden Action-Nodes die datenbefüllte E-Mail und schreiben die Aktivität ins CRM, damit der Vertrieb den Kommunikationsverlauf nachverfolgen kann.
Prompt:
> "Du bist Retention-Workflow-Architekt. Entwirf einen Scheduled-Trigger-Workflow für Garantie-Ablauf-Erinnerungen. Kontext: Tägliche CRM-Abfrage nach 60/30/7-Tage-Ablauf, drei Eskalationsstufen mit unterschiedlichem Tonfall und CTA, HITL-Template- und Preis-Freigabe vor Versand. Format: Scheduled-Trigger, CRM-Abfrage-Node, Logic-Eskalation, AI-Node je Stufe, HITL-Gate, E-Mail-Action + CRM-Log."
Artefakt: Ein Garantie-Erinnerungs-Workflow-Entwurf mit dreistufiger Eskalationslogik, stufenspezifischen AI-Prompt-Varianten, HITL-Preis-Freigabe und CRM-Aktivitätsprotokollierung.
Fallstricke:
- Derselbe Kunde erhält an einem Tag mehrere Erinnerungen, weil er mehrere ablaufende Produkte hat → einen Deduplizierungs-Node einbauen, der pro Kunde nur eine E-Mail pro Tag zulässt und mehrere Produkte bündelt.
- Die Verlängerungspreise im AI-Node-Wissensordner sind veraltet, sodass die E-Mail falsche Preise kommuniziert → Preisliste im Wissensordner als „Prüf-alle-30-Tage"-Dokument kennzeichnen, in den monatlichen Wissensordner-Audit (→ S-WF-045) aufnehmen und Preisänderungen über den HITL-Node erneut freigeben lassen, bevor der erste Versand mit neuem Preis erfolgt.
Anschluss: S-WF-054

### S-WF-054 Internes Schulungsmaterial-Verteilungs-Workflow (Integration Trigger)

Trigger: Sobald neue Trainingsunterlagen (Compliance-Updates, Produkt-Schulungen, Onboarding-Materialien) im LMS oder CMS bereitgestellt werden, müssen relevante Mitarbeitergruppen informiert und Abschlussfristen kommuniziert werden. (Quelle: sources/10 S-100 + sources/12 F-MarOps)
Ziel: Schulungsankündigungen segmentiert, zeitgerecht und mit klaren Handlungsaufforderungen an die richtigen Mitarbeitergruppen distribuieren, ohne manuelle E-Mail-Kampagnen.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Schulungsverteilungs-Workflow mit Mitarbeiter-Segmentierung, AI-generierter Ankündigung und Fristentracking.
Fähigkeit: Workflow (Integration-Trigger), Logic-Node (Segmentierung nach Abteilung/Rolle/Pflicht-vs-optional), AI-Node (rollenangepasste Ankündigungs-E-Mail, Structured Output), Action-Nodes (E-Mail/Slack + Kalender-Event + LMS-Enrollment), HITL-Node (bei compliance-kritischen Pflichtschulungen)
Vorgehen:
1. Den Integration-Trigger an das LMS-/CMS-Event „Kurs veröffentlicht" koppeln; Payload enthält Kursname, Kurstyp (Pflicht/Optional), Zielgruppe (Abteilungen/Rollen) und Abschlussfrist.
2. Einen Logic-Node nach Schulungstyp verzweigen lassen: Pflichtschulungen → HITL-Node für HR-Freigabe, dann Einschreibung aller Zielgruppen und Fristkommunikation; optionale Schulungen → direkte Benachrichtigung ohne HITL.
3. Ein AI-Node generiert je Zielgruppe eine rollenspezifische Ankündigungs-E-Mail (z. B. andere Betonung für Führungskräfte vs. Sachbearbeiter) — Structured Output: Betreff, relevante-Nutzen-Paragraph, CTA mit Kurs-Link und Fristangabe.
4. Action-Nodes versenden E-Mails, erstellen einen optionalen Kalender-Block für synchrone Sessions und enrollen Zielgruppen im LMS, falls das System eine API bietet.
Prompt:
> "Du bist L&D-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow für Schulungsmaterial-Distribution. Kontext: LMS-Trigger bei Kursveröffentlichung, Pflicht-vs-Optional-Verzweigung, HITL bei Pflichtschulungen, rollenangepasste KI-Ankündigungs-E-Mail. Format: Trigger, Logic-Typ-Node, HITL für Pflicht, AI-Node mit Rollen-Anpassung, E-Mail+LMS-Actions."
Artefakt: Ein Schulungsverteilungs-Workflow-Entwurf mit Pflicht/Optional-Logik, rollenspezifischem AI-E-Mail-Schema und LMS-Enrollment-Action.
Fallstricke:
- Mitarbeitende erhalten Schulungsankündigungen für Kurse, die für ihre Rolle irrelevant sind → das Zielgruppen-Segmentierungsfeld im LMS-Payload muss präzise gepflegt sein; ein fehlerhaftes Segment-Tag im LMS überträgt sich direkt in den Workflow.
- Die Abschlussfrist in der E-Mail und im LMS-System stimmen nicht überein, weil der AI-Node die Frist aus dem Payload interpretiert statt direkt übernimmt → das Frist-Datum als unveränderlichen Platzhalter {{deadline}} in den Prompt injizieren, ohne KI-Reformulierung.
Anschluss: S-WF-055

### S-WF-055 Daten-Anreicherungs-Validierungs-Workflow (Webhook Trigger)

Trigger: Nach der automatischen Anreicherung von CRM-Kontakten durch einen externen Datenanbieter (z. B. Clearbit, ZoomInfo) müssen die neuen Felder auf Plausibilität und Vollständigkeit geprüft werden, bevor sie für Segmentierungen genutzt werden. (Quelle: sources/10 S-066 + research/julia-lens A-14)
Ziel: Datenqualität nach Anreicherung systematisch sichern, Fehlsegmentierungen durch inkorrekte Anreicherungsdaten vermeiden und eine auditierbare Qualitätskette aufbauen.
Ergebnis: Ein Architektur-Entwurf für einen Webhook-getriggerten Datenanreicherungs-Validierungs-Workflow mit AI-basierter Plausibilitätsprüfung und strukturiertem Qualitäts-Flag.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Plausibilitätsprüfung + Anomalie-Erkennung, Structured Output), Logic-Node (Qualitäts-Routing), Action-Nodes (CRM-Feldaktualisierung + Quarantäne-Tag), HITL-Node bei kritischen Feldern
Vorgehen:
1. Den Webhook-Trigger so konfigurieren, dass er nach jeder Anreicherungs-Batch-Verarbeitung feuert; Payload enthält Kontakt-ID, angereicherte Felder (Branche, Unternehmensgröße, Umsatz, Technologie-Stack) und die Anreicherungsquelle.
2. Ein AI-Node prüft jeden angereicherten Datensatz auf drei Plausibilitätsdimensionen: (a) Feldwerte passen logisch zusammen (z. B. 5-Personen-Unternehmen mit Fortune-500-Umsatz), (b) Felder enthalten keine offensichtlichen Formatfehler, (c) kritische Felder (E-Mail, Unternehmensname) stimmen mit vorhandenen CRM-Daten überein — Structured Output: Qualitäts-Score (0–100), Flag-Typ, betroffene Felder.
3. Einen Logic-Node nach Qualitäts-Score verzweigen: Score >80 → direkte CRM-Aktualisierung; Score 50–80 → HITL-Node für manuelle Prüfung; Score <50 → Quarantäne-Tag im CRM, keine Aktualisierung.
4. Action-Nodes schreiben entweder die validierten Felder ins CRM oder setzen den Quarantäne-Tag; alle Entscheidungen landen im Audit-Log.
Prompt:
> "Du bist Datenqualitäts-Workflow-Architekt. Entwirf einen Webhook-Validierungs-Workflow für CRM-Anreicherungsdaten. Kontext: Post-Anreicherungs-Webhook, AI-Plausibilitätsprüfung auf drei Dimensionen, Scoring-Routing (>80 direkt/50-80 HITL/<50 Quarantäne). Format: Webhook-Trigger, AI-Validierungs-Node mit Score-Schema, Logic-Routing, CRM-Update-Action + Quarantäne-Action."
Artefakt: Ein Datenvalidierungs-Workflow-Entwurf mit dreistufigem Qualitäts-Routing, AI-Plausibilitäts-Score-Schema und CRM-Quarantäne-Logik.
Fallstricke:
- Der AI-Node bewertet Datensätze aus Nischenmärkten systematisch zu niedrig, weil die Plausibilitätskriterien auf Mainstream-Unternehmen kalibriert sind → Branchen-Kontext als Variable in den AI-Node-Prompt injizieren und Qualitätsschwellen nach Branchensegment differenzieren.
- Der Webhook läuft nach jeder Einzelanreicherung und erzeugt tausende AI-Node-Aufrufe täglich → Webhook-Batching konfigurieren, sodass der Node nur nach vollständiger Batch-Verarbeitung feuert und mehrere Datensätze pro Ausführung validiert.
Anschluss: S-WF-056

### S-WF-056 Workspace-Health-Check-Workflow (Scheduled Trigger)

Trigger: Langdock-Workspaces akkumulieren über Monate inaktive Agenten, verwaiste Workflows, ungenutzte Integrationen und nicht erneuerte API-Keys — ein regelmäßiger Gesundheitscheck verhindert schleichende Degradation. (Quelle: sources/12 G-Cost + research/julia-lens A-25 + A-33)
Ziel: Den Workspace-Zustand monatlich automatisch auditieren, Kostentreiber identifizieren und die verantwortlichen Owner zur Bereinigung auffordern, bevor Ineffizienzen das Budget belasten.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Workspace-Health-Check-Workflow mit KI-basierter Anomalie-Priorisierung und strukturiertem Action-Plan.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Nodes (Workspace-API: Agenten-Liste, Workflow-Logs, Nutzungsstatistiken, API-Key-Status), AI-Node (Anomalie-Erkennung + Priorisierung, Structured Output), HITL-Node, Action-Nodes (Slack-Report an Workspace-Admin + Notion-Audit-Seite)
Vorgehen:
1. Den Scheduled-Trigger auf den ersten Werktag jedes Monats setzen; Integration-Nodes rufen via Workspace-API ab: (a) alle Agenten mit letztem Nutzungsdatum, (b) alle Workflows mit Ausführungsfrequenz der letzten 30 Tage, (c) API-Key-Ablaufdaten, (d) Top-10-Nutzer nach Token-Verbrauch.
2. Ein AI-Node aggregiert die Rohdaten und priorisiert nach drei Kriterien: (1) Kostentreiber (hoher Token-Verbrauch + niedriger Output-Wert), (2) Sicherheitsrisiken (abgelaufene oder demnächst ablaufende API-Keys), (3) Workspace-Ballast (Agenten/Workflows seit >60 Tagen inaktiv) — Structured Output: je Kategorie eine priorisierte Handlungsliste.
3. Ein HITL-Node präsentiert dem Workspace-Admin den priorisierten Action-Plan zur Freigabe oder Anpassung, bevor Maßnahmen empfohlen werden.
4. Action-Nodes publizieren den Gesundheitsbericht als Notion-Seite und senden einen Slack-Alert mit den Top-3-Sofortmaßnahmen an den Admin-Channel.
Prompt:
> "Du bist Workspace-Governance-Architekt. Entwirf einen monatlichen Health-Check-Workflow für einen Langdock-Workspace. Kontext: Workspace-API-Abfragen (Agenten, Workflows, API-Keys, Token-Verbrauch), AI-Priorisierung nach Kosten/Sicherheit/Ballast, HITL für Admin-Freigabe. Format: Scheduled-Trigger, API-Integration-Nodes, AI-Anomalie-Node, HITL, Slack+Notion-Actions."
Artefakt: Ein Workspace-Health-Check-Workflow-Entwurf mit API-Integrations-Architektur, dreidimensionalem Priorisierungsschema und Admin-Freigabe-Gate.
Fallstricke:
- Der AI-Node markiert Agenten als „inaktiv", obwohl sie saisonal genutzt werden (z. B. Messe-Vorbereitung alle 6 Monate) → einen Saisonalitäts-Tag für Agenten und Workflows einführen, der verhindert, dass selten genutzte, aber wichtige Ressourcen fälschlicherweise als Ballast markiert werden.
- Der Bericht wird generiert, aber kein Admin reagiert auf die Slack-Nachricht → einen Eskalations-Trigger einrichten: Wird kein HITL innerhalb von 5 Werktagen abgeschlossen, sendet ein zweiter Reminder-Node eine Eskalation an die nächsthöhere Führungsebene.
Anschluss: S-WF-057

### S-WF-057 Saisonaler Content-Swap-Workflow (Scheduled Trigger)

Trigger: Zu definierten saisonalen Anlässen (Weihnachten, Jahresende, Produktlaunch-Saison) müssen Hero-Banners, E-Mail-Vorlagen und Social-Media-Templates ausgetauscht werden — heute ist das ein koordinationsintensiver manueller Prozess. (Quelle: sources/10 S-005 + research/julia-lens A-24)
Ziel: Saisonale Content-Wechsel termingerecht und konsistent über alle Kanäle automatisieren, ohne manuelle Koordination zwischen Design-, Content- und Tech-Teams.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten saisonalen Content-Swap-Workflow mit Staging-Freigabe, Asset-Versionierung und Rollback-Option.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Nodes (CMS-Asset-Swap via API, E-Mail-Tool-Template-Update), AI-Node (saisonale Textvarianten, Structured Output), HITL-Node (Staging-Freigabe), Action-Node (Rollback-Snapshot vor Swap)
Vorgehen:
1. Den Scheduled-Trigger auf das definierte saisonale Aktivierungsdatum setzen (z. B. 1. Dezember für Weihnachts-Content); ein erster Action-Node erstellt einen Snapshot der aktuellen Assets als Rollback-Version.
2. Ein AI-Node generiert saisonale Textvarianten für alle betroffenen Touchpoints (Hero-Headline, E-Mail-Betreffzeilen, Social-Media-Captions) auf Basis der saisonalen Briefing-Parameter im Wissensordner — Structured Output: ein Objekt je Touchpoint mit Kanal, Textvariante und Aktivierungsdatum.
3. Ein HITL-Node präsentiert alle generierten Varianten und geplanten Asset-Swaps in einer Staging-Übersicht; das Content-Team prüft und gibt Kanal für Kanal frei oder blockt einzelne Swaps.
4. Nach Freigabe führen parallele Action-Nodes die Asset-Swaps im CMS, E-Mail-Tool und Social-Scheduling-Tool durch; das Rollback-Snapshot-Datum wird für eine mögliche Rückabwicklung dokumentiert.
Prompt:
> "Du bist Saisonaler-Content-Workflow-Architekt. Entwirf einen Scheduled-Trigger-Workflow für saisonale Content-Swaps. Kontext: Aktivierungsdatum-Trigger, Rollback-Snapshot vor Swap, KI-generierte Text-Varianten je Touchpoint, HITL-Staging-Freigabe, parallele CMS+E-Mail+Social-Actions. Format: Trigger, Snapshot-Action, AI-Varianten-Node, HITL, parallele Swap-Actions."
Artefakt: Ein Saisonaler-Content-Swap-Workflow-Entwurf mit Rollback-Snapshot-Architektur, HITL-Staging-Gate und parallelen Multi-Kanal-Swap-Actions.
Fallstricke:
- Der Workflow läuft zur definierten Zeit, aber noch nicht alle saisonalen Assets wurden hochgeladen → einen Vollständigkeits-Check-Node einbauen, der prüft, ob alle erwarteten Asset-IDs im CMS vorhanden sind, und den Workflow andernfalls abbricht und eine Slack-Warnung sendet.
- Ein fehlerhafter Asset-Swap im CMS ist schwer rückgängig zu machen, wenn kein Snapshot existiert → den Rollback-Snapshot-Action-Node als zwingend ersten Schritt konfigurieren, der den Workflow bei Fehler abbricht, bevor ein einziger Swap durchgeführt wird.
Anschluss: S-WF-058

### S-WF-058 Mehrsprachiger Content-Synchronisierungs-Workflow (Integration Trigger)

Trigger: Jedes Mal, wenn ein masterhafter deutschsprachiger Content-Artikel im CMS veröffentlicht wird, müssen Englisch-, Französisch- und ggf. weitere Sprachversionen angestoßen, geprüft und publiziert werden — der manuelle Lokalisierungsprozess verzögert internationale Veröffentlichungen um Tage bis Wochen. (Quelle: sources/10 S-006 + research/julia-lens A-24)
Ziel: Mehrsprachige Content-Synchronisation automatisiert anstoßen (Trigger + Übersetzungs- und Brand-Voice-Schritte), den manuellen Koordinationsaufwand auf die sprachspezifischen HITL-Freigaben vor jeder CMS-Veröffentlichung reduzieren — keine Veröffentlichung ohne menschliche Freigabe.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Mehrsprachen-Sync-Workflow mit paralleler Übersetzungsverarbeitung, AI-Brand-Voice-Check und sprachspezifischen HITL-Gates.
Fähigkeit: Workflow (Integration-Trigger), DeepL-Integration (Rohübersetzung), AI-Node (Brand-Voice-Check + Terminologie-Kontrolle, Structured Output je Sprache), Loop-Node (parallele Sprachverarbeitung), HITL-Node je Sprache, Action-Node (CMS-Veröffentlichung je Sprachversion)
Vorgehen:
1. Den Integration-Trigger an das CMS-Event „Deutschen Masterartikel veröffentlicht" koppeln; Payload enthält Artikel-ID, Inhalt und Zielsprachen-Liste.
2. Einen Loop-Node die Zielsprachen iterieren lassen; für jede Sprache führt ein DeepL-Node die Rohübersetzung durch, gefolgt von einem AI-Node, der (a) Brand-Voice-Konformität, (b) Fachterminologie gegen das sprachspezifische Glossar im Wissensordner und (c) kulturelle Adäquatheit prüft — Structured Output: Korrektur-Flags + bereinigte Textversion.
3. Für jede Sprache folgt ein HITL-Node, an dem der zuständige Sprachredakteur die bereinigte Version freigibt oder anpasst — parallele HITL-Gates ermöglichen gleichzeitige Bearbeitung durch verschiedene Redakteure.
4. Nach Freigabe veröffentlicht ein CRM-/CMS-Action-Node die jeweilige Sprachversion automatisch.
Prompt:
> "Du bist Multilingual-Content-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow für mehrsprachige Content-Synchronisation. Kontext: CMS-Trigger bei DE-Artikel-Publikation, Loop über Zielsprachen, DeepL-Rohübersetzung, AI-Brand-Voice+Glossar-Check je Sprache, parallele HITL-Gates, CMS-Veröffentlichungs-Actions. Format: Trigger, Loop-Node, DeepL+AI-Nodes, HITL je Sprache, CMS-Action."
Artefakt: Ein Mehrsprachen-Sync-Workflow-Entwurf mit Loop-Architektur, sprachspezifischen AI-Check-Nodes, parallelen HITL-Gates und CMS-Publikations-Actions.
Fallstricke:
- Der Loop-Node läuft bei 8 Zielsprachen und langen Artikeln in die Per-Execution-Kosten-Grenze → die Sprachen in zwei Chargen aufteilen (z. B. Batch 1: EN+FR+ES, Batch 2: NL+PL+IT+PT) und das Per-Execution-Limit vor dem Start gegen die kalkulierten Kosten prüfen.
- Das Glossar im Wissensordner deckt nicht alle sprachlichen Varianten ab, sodass der AI-Node Terminologie als fehlerhaft flaggt, die eigentlich korrekt ist → ein sprachspezifisches Glossar-Dokument je Zielsprache anlegen und klar von der Brand-Voice-Datei trennen.
Anschluss: S-WF-059

### S-WF-059 Feedback-gesteuerter Verbesserungs-Workflow (Webhook Trigger)

Trigger: Sobald Nutzer-Feedback (In-App-Bewertungen, Support-Ticket-Schließungs-Surveys, NPS-Kommentare) eingeht und einen definierten Negativ-Schwellenwert unterschreitet, soll automatisch ein Improvement-Ticket mit Kontext und Lösungsvorschlag generiert werden. (Quelle: sources/10 S-090 + S-092 + research/julia-lens A-32)
Ziel: Kritisches Nutzerfeedback ohne manuelle Triage sofort in priorisierte Verbesserungs-Aufgaben übersetzen und die Time-to-Action auf unter 30 Minuten reduzieren.
Ergebnis: Ein Architektur-Entwurf für einen Webhook-getriggerten Feedback-Verarbeitungs-Workflow mit AI-Priorisierung, automatischer Ticket-Erstellung und HITL-Eskalation bei kritischen Mustern.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Sentiment-Analyse + Kategorisierung + Lösungsvorschlag, Structured Output), Logic-Node (Schwellenwert-Routing), HITL-Node (bei kritischen Mustern), Action-Nodes (Jira-Ticket + Slack-Alert), Integration-Node (Feedback-Aggregation aus mehreren Quellen)
Vorgehen:
1. Den Webhook-Trigger an das Feedback-System koppeln (oder mehrere Systeme via n8n-Integration aggregieren); jedes Feedback-Paket enthält Quellkanal, Bewertung (numerisch), Freitext und Nutzer-ID.
2. Ein AI-Node analysiert jeden Freitext: Sentiment-Score (0–100), Kategorie (Bug/UX/Feature-Request/Preisbeschwerde/Lob), betroffene Produktkomponente und ein konkreter Lösungsvorschlag basierend auf der Wissensbasis — Structured Output mit allen vier Feldern.
3. Einen Logic-Node nach Schwellenwert routen lassen: Sentiment <30 → sofortiges Jira-Ticket + Slack-Alert an Product-Owner; Sentiment 30–60 → Jira-Ticket in Backlog; >60 → Aggregation in Wochen-Digest ohne Sofort-Action; kritische Muster (≥3 ähnliche Beschwerden in 24 Stunden) → HITL-Node für Product-Manager-Freigabe.
4. Action-Nodes erstellen strukturierte Jira-Tickets (mit Kategorie, Schweregrad und AI-Lösungsvorschlag) und senden bei kritischen Tickets eine Slack-Benachrichtigung an den zuständigen Product-Owner.
Prompt:
> "Du bist Product-Feedback-Workflow-Architekt. Entwirf einen Webhook-Workflow für feedback-gesteuerte Produktverbesserungen. Kontext: Multi-Source-Feedback-Webhook, AI-Sentiment+Kategorisierung, Schwellenwert-Routing (<30 Sofort-Ticket/>30 Backlog/>60 Digest), Muster-Erkennung bei ≥3 ähnlichen Beschwerden in 24h → HITL. Format: Webhook-Trigger, AI-Analyse-Node, Logic-Routing, HITL bei Muster, Jira+Slack-Actions."
Artefakt: Ein Feedback-Verarbeitungs-Workflow-Entwurf mit Sentiment-Score-Schema, mehrstufigem Routing, Muster-Erkennungs-Logik und strukturiertem Jira-Ticket-Template.
Fallstricke:
- Kurze Feedback-Texte (z. B. „Schlecht") bieten dem AI-Node zu wenig Kontext für aussagekräftige Kategorisierung → einen Filter-Node einbauen, der Texte unter 10 Wörtern in eine „Unzureichender-Kontext"-Kategorie leitet statt sie falsch zu klassifizieren.
- Der Workflow generiert Jira-Tickets ohne ausreichend Nutzerkontext, sodass das Product-Team nicht nachvollziehen kann, wer das Feedback gegeben hat → Nutzer-ID und Quellkanal immer als Pflichtfelder im Jira-Ticket-Action-Node hinterlegen, unter Beachtung der DSGVO-Anforderungen zur Datensparsamkeit.
Anschluss: S-WF-060

### S-WF-060 Quartalsbericht-Deck-Automatisierungs-Workflow (Scheduled Trigger)

Trigger: Jedes Quartal kostet die Vorbereitung des Marketing-Quartalsberichts für das C-Level mehrere Tage manueller Datensammlung, Aufbereitung und Slide-Komposition — eine Automatisierung, die Rohdaten in einen narrativen Deck-Entwurf überführt, reduziert den Aufwand auf ein HITL-Editierfenster. (Quelle: sources/10 S-098 + S-106 + research/julia-lens A-01 + A-10)
Ziel: Einen reproduzierbaren Quartalsbericht-Prozess etablieren, der Daten aus mehreren Systemen aggregiert, in eine C-Level-taugliche Narrative überführt und als Deck-Entwurf für die letzte Redaktion bereitstellt.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Quartalsbericht-Workflow mit Multi-Source-Datenaggregation, AI-Narrativgenerierung und HITL-Editier-Gate.
Fähigkeit: Workflow (Scheduled-Trigger), Integration-Nodes (GA4, HubSpot, Ad-Plattformen via HTTP-Request), AI-Node (Dateninterpretation + Executive-Narrative + KPI-Kommentar, Structured Output), HITL-Node, Action-Node (Google-Slides oder Notion-Deck-Export)
Vorgehen:
1. Scheduled-Trigger auf den ersten Arbeitstag nach Quartalsende; parallele Integration-Nodes rufen Daten ab — GA4, HubSpot, Ad-Plattformen, Social — alle als strukturiertes JSON.
2. Aggregations-AI-Node konsolidiert die Rohdaten zu einem Quartals-KPI-Objekt (Vergleich zum Vorquartal, Delta je KPI, Top-3-Ausreißer) als Structured Output.
3. Einen zweiten AI-Node eine C-Level-Narrative aus dem KPI-Objekt generieren lassen: Executive-Summary (3 Bulletpoints), Slide-Empfehlungen je Kapitel (What worked/What didn't/What's next), kurze Speaker-Notes je Folie — Structured Output nach Deck-Struktur.
4. Ein HITL-Node öffnet ein Editierfenster für die Marketing-Direktorin: Sie prüft KPI-Werte, ergänzt strategische Einordnungen und gibt die Narrative frei oder fordert Nachbesserung an.
5. Nach Freigabe exportiert ein Action-Node den strukturierten Output als Google-Slides-Entwurf (via API) oder Notion-Seite und sendet einen Slack-Link an den CMO-Channel.
Prompt:
> "Du bist Quartalsbericht-Workflow-Architekt. Entwirf einen Scheduled-Trigger-Workflow für den Marketing-Quartalsbericht. Kontext: Post-Quartals-Trigger, parallele Datenaggregation aus GA4+HubSpot+Ad-Plattformen, zweistufige AI-Nodes (KPI-Aggregation → Executive-Narrative), HITL-Editier-Gate, Google-Slides/Notion-Export. Format: Trigger, parallele Integration-Nodes, Aggregations-AI-Node, Narrativ-AI-Node, HITL, Deck-Export-Action."
Artefakt: Ein Quartalsbericht-Workflow-Entwurf mit paralleler Daten-Integrations-Architektur, zweistufigem AI-Node-Design (KPI-Objekt → Deck-Narrative) und HITL-Editier-Gate vor dem Export.
Fallstricke:
- Einer der Integration-Nodes schlägt fehl (z. B. Ad-Plattform-API-Timeout), und der Workflow produziert einen unvollständigen Bericht ohne Fehlermarkierung → jeden Integration-Node mit einem Error-Handler koppeln, der fehlende Datenquellen explizit als „Nicht verfügbar — manuell ergänzen" im KPI-Objekt markiert statt den Workflow stillschweigend abzubrechen.
- Der AI-Narrativ-Node interpretiert kurzfristige Ausreißer (z. B. Traffic-Spike durch Presse-Erwähnung) als strategischen Trend → den Narrativ-Prompt explizit anweisen, Einzel-Event-Spikes von strukturellen Trends zu unterscheiden und Kausalitätsaussagen als Hypothesen zu formulieren, die die Marketing-Direktorin im HITL-Gate bestätigt oder verwirft.
Anschluss: S-WF-061

### S-WF-061 Lead-Scoring-Anreicherung bei neuem CRM-Kontakt (Integration Trigger)

Trigger: Neue Kontakte landen mit dünnen Formulardaten im CRM; das Team möchte sie automatisch anreichern und scoren, bevor der Vertrieb sie sieht. (Quelle: sources/10 S-066 + 12 Q110)
Ziel: Lead-Qualifizierung auf Basis angereicherter Firmographics standardisieren und nur belastbare Scores an den Vertrieb übergeben.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten Enrichment- und Scoring-Workflow mit deterministischem Score-Schema.
Fähigkeit: Workflow (Integration-Trigger), Action-Node (Enrichment-API via HTTP-Request), AI-Node (Scoring, Structured Output), Logic-Node (Condition)
Vorgehen:
1. Den Integration-Trigger auf „Neuer Kontakt" im CRM koppeln und die verfügbaren Felder als Payload übergeben.
2. Einen HTTP-Request-Node die E-Mail-Domain gegen eine Firmographics-Quelle anreichern lassen (Branche, Größe, Region).
3. Einen AI-Node einen Score mit erzwungenem JSON-Schema (score 0–100, begründung, negativ_signale) berechnen lassen — inklusive disqualifizierender Signale wie Freemail-Domain.
4. Einen Condition-Node bei Score ≥ Schwelle den Kontakt als „Sales-Ready" markieren, sonst ins Nurturing routen — interne Markierung, kein automatischer Kunden-Kontakt.
Prompt:
> "Du bist Lead-Scoring-Workflow-Architekt. Entwirf einen Integration-Trigger-Workflow, der neue CRM-Kontakte anreichert und scort. Kontext: Firmographics-Enrichment via HTTP-Request, JSON-Score mit Negativ-Signalen, Schwellen-Routing. Format: Trigger, Enrichment-Node, AI-Node mit Score-Schema, Condition."
Artefakt: Ein Scoring-Workflow-Entwurf mit Enrichment-Schritt und JSON-Score-Schema inklusive disqualifizierender Signale.
Fallstricke:
- Der AI-Node vergibt nur positive Punkte und übersieht Negativ-Signale → das Schema um ein Feld für disqualifizierende Aktionen (z. B. Freemail, Karriereseite) erweitern.
- Schlägt die Enrichment-API fehl, scort der AI-Node auf Lückendaten → einen Error-Branch einplanen, der unvollständige Datensätze als „manuell prüfen" markiert statt blind zu scoren.
Anschluss: S-WF-062

### S-WF-062 Warenkorb-Abbruch-Nurturing für Self-Serve-Checkout (Webhook Trigger)

Trigger: Nutzer brechen den Self-Serve-Checkout für den Jahresplan ab; eine zeitnahe, einwandbehandelnde Nurturing-Sequenz soll vorbereitet, aber nie ungeprüft versendet werden. (Quelle: sources/10 S-065)
Ziel: Abbrecher mit wertorientierten Argumenten zurückgewinnen, ohne den B2B-Wert durch vorschnelle Rabatte zu beschädigen.
Ergebnis: Ein Architektur-Entwurf für eine webhook-getriggerte Abandoned-Cart-Pipeline mit HITL vor dem Versand.
Fähigkeit: Workflow (Webhook-Trigger), Wissensordner (Einwandbehandlungs-Playbook), AI-Node (Sequenz-Entwurf), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an das Checkout-Abbruch-Event koppeln und Kontakt- sowie Plan-Daten übergeben.
2. Einen AI-Node zwei Recovery-Mails entwerfen lassen, gebunden an das Einwandbehandlungs-Playbook: Mail 1 nimmt Implementierungs-Angst, Mail 2 betont den ROI.
3. Einen HITL-Node vor jedem externen Versand zwingend einplanen, damit die Sequenz geprüft und freigegeben wird.
4. Nach Freigabe einen Action-Node die freigegebene Sequenz an das E-Mail-Tool übergeben lassen.
Prompt:
> "Du bist Retention-Workflow-Architekt. Entwirf eine Abandoned-Cart-Pipeline für den Jahresplan. Kontext: Einwandbehandlung aus Wissensordner, keine vorschnellen Rabatte, kein automatischer Versand. Format: Webhook-Trigger, AI-Node mit Playbook-Bindung, HITL vor Versand, Übergabe-Action."
Artefakt: Ein Abandoned-Cart-Workflow-Entwurf mit zweistufiger Sequenz-Logik und verpflichtendem Freigabe-Schritt.
Fallstricke:
- Ein automatischer Versand ohne Freigabe verletzt die Kontrolle über die Kunden-Kommunikation → HITL vor jeder externen Aktion zwingend setzen.
- Der AI-Node greift reflexhaft zu Rabatten und entwertet den B2B-Preis → den Node strikt auf wertorientierte Argumente aus dem Playbook festlegen.
Anschluss: S-WF-063

### S-WF-063 Event-Follow-up-Sequenz nach Badge-Scan-Segmentierung (Manual Trigger + Loop)

Trigger: Nach einer Messe wurden hunderte Badges gescannt; generische Follow-ups konvertieren nicht, eine notiz-basierte Segmentierung mit individuellen Entwürfen ist manuell nicht leistbar. (Quelle: sources/10 S-116)
Ziel: Event-Leads nach Notiz-Signalen segmentieren und passgenaue Follow-up-Varianten vorbereiten, ohne den Versand zu automatisieren.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit Segment-Logik und HITL vor Versand.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (≤100 Items), AI-Node (Segmentierung + Entwurf, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit der Badge-Scan-Liste (Notizen je Kontakt) als Eingabe definieren; die Liste bei Bedarf in Chargen aufteilen.
2. Einen Loop-Node über die Kontakte iterieren und einen AI-Node je Kontakt das Segment (Preis-Interesse / Wettbewerb / Allgemein) sowie einen passenden Entwurf bestimmen lassen.
3. Die Entwürfe als JSON-Array sammeln und einen HITL-Node die Batch-Freigabe vor dem Versand durchführen lassen.
4. Nach Freigabe einen Action-Node die Entwürfe an das CRM/E-Mail-Tool übergeben lassen.
Prompt:
> "Du bist Event-Follow-up-Architekt. Entwirf einen Loop-Workflow für Badge-Scan-Leads. Kontext: Segmentierung nach Notizen, drei Follow-up-Varianten, kein automatischer Versand. Format: Manual-Trigger, Loop-Node, AI-Node mit Segment-Schema, HITL-Batch-Freigabe."
Artefakt: Ein Event-Follow-up-Workflow-Entwurf mit Segment-Schema und Batch-Freigabe-Punkt.
Fallstricke:
- Unscharfe oder leere Notizen führen zu Fehl-Segmentierung → einen Fallback-Pfad „Allgemeines Interesse" für nicht eindeutige Notizen definieren.
- Mehr als 100 Kontakte sprengen den Loop → die Liste vorab in Chargen aufteilen und das Per-Execution-Limit prüfen.
Anschluss: S-WF-064

### S-WF-064 Content-Kalender-Auto-Befüllung aus Asset-Liste (Scheduled Trigger)

Trigger: Der monatliche Social-Content-Kalender wird manuell befüllt; eine Liste freigegebener Assets soll automatisch rhythmisch über den Monat verteilt und als Entwurf vorgelegt werden. (Quelle: sources/10 S-046 + S-001)
Ziel: Die Kalender-Befüllung automatisieren und einen ausgewogenen Format-Rhythmus sicherstellen, ohne die redaktionelle Endkontrolle abzugeben.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Kalender-Befüllungs-Workflow mit interner Ablage.
Fähigkeit: Workflow (Scheduled-Trigger), AI-Node (Verteilungs-Logik, Structured Output), Action-Node (Google-Sheets-Ablage)
Vorgehen:
1. Den Scheduled-Trigger auf den Monatsanfang setzen und die Liste freigegebener Asset-Links einlesen.
2. Einen AI-Node die Assets über den Monat verteilen lassen — fester Rhythmus (z. B. drei Posts pro Woche), Format-Mix, Strukturierung als JSON-Tabelle.
3. Feiertage und Sperrtage als Parameter übergeben, damit keine Posts auf ungeeignete Tage fallen.
4. Einen Action-Node den befüllten Plan in ein Google-Sheet schreiben lassen — interne Ablage als Entwurf, keine automatische Veröffentlichung.
Prompt:
> "Du bist Content-Kalender-Architekt. Entwirf einen Scheduled-Trigger-Workflow, der eine Asset-Liste über den Monat verteilt. Kontext: drei Posts pro Woche, Format-Mix, Feiertage berücksichtigen, nur interner Entwurf. Format: Trigger, AI-Node mit Verteilungs-Schema, Sheets-Action."
Artefakt: Ein Kalender-Workflow-Entwurf mit Verteilungs-Schema und Feiertags-Parameter.
Fallstricke:
- Der AI-Node kennt keine nationalen Feiertage → die Sperrtage explizit als Parameter übergeben, sonst landen Posts an ungeeigneten Tagen.
- Hochaufwändige Assets häufen sich in einer Woche → eine Obergrenze pro Format und Woche im Node-Briefing setzen.
Anschluss: S-WF-065

### S-WF-065 Social-Listening-Alert bei Erwähnungs-Ausschlag (Webhook Trigger)

Trigger: Ein Social-Listening-Tool liefert laufend Erwähnungen; das Team will nur bei echten Ausschlägen mit Themen-Zusammenfassung intern alarmiert werden, nicht bei jedem Rauschen. (Quelle: sources/10 S-049 + 12 Q108)
Ziel: Reaktives Marketing ermöglichen, indem nur signifikante Erwähnungs-Wellen verdichtet und intern gemeldet werden.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Listening-Alert mit Schwellen-Logik.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Themen-Verdichtung, Structured Output), Logic-Node (Condition), Action-Node (Slack)
Vorgehen:
1. Den Webhook-Trigger an den Daten-Dump des Listening-Tools koppeln.
2. Einen AI-Node die Erwähnungen auf die Top-3-Themen verdichten und Sentiment sowie Volumen als Structured Output ausgeben lassen.
3. Einen Condition-Node nur bei Volumen oder Negativ-Sentiment über Schwelle eine Slack-Meldung auslösen lassen — darunter stille Protokollierung.
4. Die Slack-Nachricht mit Themen, Sentiment und einer Reaktiv-Idee befüllen — nur intern, kein automatischer Post.
Prompt:
> "Du bist Social-Listening-Workflow-Architekt. Entwirf einen Webhook-Alert für Erwähnungs-Ausschläge. Kontext: Top-3-Themen, Sentiment, Schwellen-Eskalation, nur intern. Format: Webhook-Trigger, AI-Node mit Themen-Schema, Condition, Slack-Action."
Artefakt: Ein Listening-Alert-Workflow-Entwurf mit Verdichtungs-Schema und Eskalations-Schwelle.
Fallstricke:
- Bot-getriebene Spam-Wellen lösen Fehlalarme aus → eine Mindest-Anzahl unterschiedlicher Quellen als zusätzliche Bedingung einplanen.
- Jede kleine Erwähnung flutet Slack → den Condition-Node auf einen dokumentierten Schwellenwert halten.
Anschluss: S-WF-066

### S-WF-066 NPS-Versand-Vorbereitung nach Lifecycle-Meilenstein (Integration Trigger)

Trigger: Kunden erreichen einen Lifecycle-Meilenstein (z. B. 90 Tage aktiv); eine NPS-Umfrage soll vorbereitet und segmentgerecht angesprochen werden, ohne dass Mails ungeprüft hinausgehen. (Quelle: sources/10 S-090 + S-050)
Ziel: NPS-Befragungen zeitnah und segmentgerecht auslösen, mit menschlicher Kontrolle über die ausgehende Kommunikation.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten NPS-Dispatch mit HITL vor Versand.
Fähigkeit: Workflow (Integration-Trigger), AI-Node (Anschreiben-Entwurf), Logic-Node (Condition), HITL-Node
Vorgehen:
1. Den Integration-Trigger auf den Lifecycle-Meilenstein im CRM koppeln.
2. Einen Condition-Node prüfen lassen, ob der Kontakt nicht kürzlich bereits befragt wurde (Frequenz-Schutz).
3. Einen AI-Node ein kurzes, segmentgerechtes NPS-Anschreiben mit Survey-Link entwerfen lassen.
4. Einen HITL-Node vor jedem externen Versand zwingend einplanen; nach Freigabe übergibt ein Action-Node an das E-Mail-Tool.
Prompt:
> "Du bist Lifecycle-Workflow-Architekt. Entwirf einen NPS-Dispatch-Workflow nach Lifecycle-Meilenstein. Kontext: Frequenz-Schutz gegen Doppelbefragung, segmentgerechtes Anschreiben, kein automatischer Versand. Format: Integration-Trigger, Condition, AI-Node, HITL vor Versand."
Artefakt: Ein NPS-Dispatch-Workflow-Entwurf mit Frequenz-Schutz-Logik und Freigabe-Punkt.
Fallstricke:
- Ohne Frequenz-Schutz werden Kunden mehrfach befragt → einen Condition-Node mit Cooldown-Fenster vorschalten.
- Ein automatischer Versand ohne Freigabe verletzt die Kommunikations-Kontrolle → HITL vor jeder externen Aktion zwingend setzen.
Anschluss: S-WF-067

### S-WF-067 Webinar-Anmelde-Bestätigung mit Kalender-Asset (Webhook Trigger)

Trigger: Nach einer Webinar-Anmeldung soll automatisch eine Bestätigung mit Kalendereintrag und passenden Vorbereitungs-Ressourcen vorbereitet werden — freigabepflichtig, da sie an den Kontakt geht. (Quelle: sources/10 S-062 + S-004)
Ziel: Anmelder zeitnah bestätigen und mit relevanten Ressourcen versorgen, ohne unkontrollierten automatischen Versand.
Ergebnis: Ein Architektur-Entwurf für eine webhook-getriggerte Bestätigungs-Pipeline mit HITL.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Bestätigungs-Entwurf), Wissensordner (Ressourcen-Mapping), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an die Webinar-Anmeldung koppeln und Name, Thema und Termin als Payload übergeben.
2. Einen AI-Node eine Bestätigung entwerfen lassen, die passende Vorbereitungs-Ressourcen aus dem Wissensordner referenziert.
3. Einen HITL-Node vor dem externen Versand einplanen, damit Inhalt und Ressourcen-Auswahl geprüft werden.
4. Nach Freigabe einen Action-Node die Bestätigung samt Kalender-Asset (ICS-Link) an das E-Mail-Tool übergeben lassen.
Prompt:
> "Du bist Lifecycle-Workflow-Architekt. Entwirf eine Webinar-Bestätigungs-Pipeline. Kontext: Kalendereintrag plus Vorbereitungs-Ressourcen aus Wissensordner, kein automatischer Versand. Format: Webhook-Trigger, AI-Node mit Ressourcen-Bindung, HITL, Versand-Action."
Artefakt: Ein Bestätigungs-Workflow-Entwurf mit Ressourcen-Mapping und Freigabe-Punkt.
Fallstricke:
- Ungeprüfte Bestätigungen mit falschem Termin gehen hinaus → den HITL-Node vor dem Versand zwingend setzen.
- Der AI-Node verlinkt unpassende Ressourcen → das Ressourcen-Mapping im Wissensordner pflegen und im Node referenzieren.
Anschluss: S-WF-068

### S-WF-068 Wettbewerber-Preisänderungs-Alert (Scheduled Trigger)

Trigger: Ändert ein Wettbewerber sein Preismodell, erfährt das Team es oft zu spät; ein täglicher Check der Pricing-Seiten soll signifikante Änderungen intern melden. (Quelle: sources/10 S-087)
Ziel: Preisbewegungen im Markt früh erkennen und intern mit Einordnung melden, ohne Quellenrauschen.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Preis-Monitoring-Workflow mit Änderungs-Erkennung.
Fähigkeit: Workflow (Scheduled-Trigger), Web Search / HTTP-Request, AI-Node (Vergleich, Structured Output), Action-Node (Slack)
Vorgehen:
1. Den Scheduled-Trigger auf einen täglichen Lauf setzen und die definierten Pricing-Seiten abrufen.
2. Einen AI-Node den aktuellen Stand gegen den gespeicherten Vorstand vergleichen und Änderungen als Structured Output (Tier, alt, neu, Delta) ausgeben lassen.
3. Nur bei tatsächlicher Änderung eine Slack-Meldung mit konkreten Werten und kurzer Einordnung auslösen.
4. Den neuen Stand als Referenz für den nächsten Lauf speichern — nur interne Meldung, keine automatische Reaktion.
Prompt:
> "Du bist Competitive-Intelligence-Workflow-Architekt. Entwirf einen täglichen Preis-Monitoring-Workflow. Kontext: feste Pricing-Seiten, nur bei echter Änderung melden, intern. Format: Scheduled-Trigger, Abruf-Node, AI-Vergleichs-Node mit Delta-Schema, Slack-Action."
Artefakt: Ein Preis-Monitoring-Workflow-Entwurf mit Delta-Schema und Referenz-Speicherung.
Fallstricke:
- Versteckte „Auf Anfrage"-Preise lassen sich nicht vergleichen → diese Tiers explizit als „nicht prüfbar" markieren statt sie zu halluzinieren.
- Layout-Änderungen der Seite lösen Fehl-Deltas aus → den Vergleich auf strukturierte Preis-Felder beschränken, nicht auf Roh-HTML.
Anschluss: S-WF-069

### S-WF-069 RFP-Antwort-Zusammenbau aus Wissensbausteinen (Manual Trigger)

Trigger: Eine eingehende Ausschreibung (RFP) enthält wiederkehrende Fragen zu Sicherheit, ROI und Funktionen; der Zusammenbau aus internen Bausteinen kostet das Team Tage. (Quelle: sources/10 S-075 + S-082)
Ziel: RFP-Antworten aus geprüften Wissensbausteinen reproduzierbar zusammenstellen, mit menschlicher Endkontrolle vor Abgabe.
Ergebnis: Ein Architektur-Entwurf für einen manuell getriggerten RFP-Assembly-Workflow mit HITL vor Abgabe.
Fähigkeit: Workflow (Manual-Trigger), Wissensordner (Security/ROI/Feature-Bausteine), AI-Node (Antwort-Zusammenbau, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit der Fragenliste der Ausschreibung als Eingabe definieren.
2. Einen AI-Node je Frage den passenden Baustein aus dem Wissensordner abrufen und eine Antwort mit Quellenverweis zusammenstellen lassen.
3. Lücken (keine Quelle gefunden) explizit als „manuell ergänzen" markieren statt sie zu erfinden.
4. Einen HITL-Node vor der Abgabe einplanen, in dem die Verantwortliche jede Antwort prüft und freigibt.
Prompt:
> "Du bist RFP-Workflow-Architekt. Entwirf einen Assembly-Workflow für Ausschreibungs-Antworten. Kontext: Bausteine aus Wissensordner, Lücken markieren statt erfinden, menschliche Endkontrolle. Format: Manual-Trigger, AI-Node mit Baustein-Bindung, Lücken-Markierung, HITL vor Abgabe."
Artefakt: Ein RFP-Assembly-Workflow-Entwurf mit Baustein-Mapping und Lücken-Markierungs-Logik.
Fallstricke:
- Der AI-Node erfindet Antworten, wo kein Baustein existiert → fehlende Quellen zwingend als „manuell ergänzen" ausgeben.
- Sicherheits- oder Rechtsaussagen werden verkürzt → kritische Bausteine im HITL-Gate gegen den exakten Originaltext prüfen.
Anschluss: S-WF-070

### S-WF-070 Newsletter-Entwurf-Zusammenbau mit Freigabe-Versand (Scheduled Trigger)

Trigger: Der wöchentliche Newsletter soll automatisch aus aktuellen Blogs und einer Branchen-News zusammengebaut werden — der Versand bleibt aber freigabepflichtig. (Quelle: sources/10 S-010)
Ziel: Den Newsletter-Zusammenbau automatisieren und einen kontrollierten, freigabepflichtigen Versand sicherstellen.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Newsletter-Assembly-Workflow mit HITL vor Versand.
Fähigkeit: Workflow (Scheduled-Trigger), Web Search, AI-Node (Entwurf, Brand-Voice-Wissensordner), HITL-Node
Vorgehen:
1. Den Scheduled-Trigger früh genug vor dem Versandtag setzen, damit Pufferzeit für die Redaktion bleibt.
2. Einen AI-Node die aktuellen Blogs zusammenfassen und eine geprüfte Branchen-News aus der Web Search ergänzen lassen — gebunden an die Brand-Voice.
3. Negativ-Keywords für die News-Suche setzen, damit keine Wettbewerber- oder Risiko-Inhalte einfließen.
4. Einen HITL-Node für die redaktionelle Freigabe vor dem Übergang ins E-Mail-Tool zwingend einplanen.
Prompt:
> "Du bist Newsletter-Workflow-Architekt. Entwirf einen Scheduled-Trigger-Workflow für den wöchentlichen Newsletter. Kontext: Blogs plus eine geprüfte Branchen-News, Brand-Voice, Negativ-Keywords, kein automatischer Versand. Format: Trigger, Web-Search-AI-Node, HITL vor Versand."
Artefakt: Ein Newsletter-Assembly-Workflow-Entwurf mit Negativ-Keyword-Filter und Freigabe-Punkt.
Fallstricke:
- Die automatische News-Suche zieht Wettbewerber- oder kontroverse Inhalte → Negativ-Keywords definieren und die Quellen eng fassen.
- Ein unfertiger Newsletter wird automatisch versendet → den HITL-Node vor dem E-Mail-Tool zwingend setzen.
Anschluss: S-WF-071

### S-WF-071 Influencer-Outreach-Entwürfe per Loop (Manual Trigger + Loop)

Trigger: Eine Kampagne erfordert personalisierte Outreach-Nachrichten an viele Micro-Influencer, die sich auf deren letzten Post beziehen — manuell pro Person nicht leistbar, der Versand bleibt aber in Menschenhand. (Quelle: sources/10 S-050)
Ziel: Authentische, personalisierte Outreach-Entwürfe skalieren, ohne automatischen Versand an externe Kontakte.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit Personalisierung und HITL vor Versand.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (≤100 Items), AI-Node (DM-Entwurf, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit der Influencer-Liste (Name, letzter Post-Bezug) als Eingabe definieren; bei Bedarf in Chargen aufteilen.
2. Einen Loop-Node iterieren und einen AI-Node je Kontakt eine lockere, plattformgerechte DM mit echtem Post-Bezug entwerfen lassen.
3. Die Entwürfe als JSON-Array sammeln und einen HITL-Node die Batch-Prüfung vor dem Versand durchführen lassen.
4. Nach Freigabe übergibt ein Action-Node die Entwürfe an das jeweilige Tool — kein automatischer Versand.
Prompt:
> "Du bist Influencer-Outreach-Workflow-Architekt. Entwirf einen Loop-Workflow für personalisierte DMs. Kontext: Bezug auf letzten Post, lockerer DM-Ton, kein automatischer Versand. Format: Manual-Trigger, Loop-Node, AI-Node mit DM-Schema, HITL-Batch-Freigabe."
Artefakt: Ein Outreach-Workflow-Entwurf mit Personalisierungs-Logik und Batch-Freigabe-Punkt.
Fallstricke:
- Formelle E-Mail-Floskeln in DMs wirken deplatziert → den Node strikt auf lockeren, plattformnativen Ton festlegen.
- Ein automatischer Versand ohne Freigabe verletzt die Kontrolle über externe Ansprache → HITL vor jeder Außen-Aktion zwingend setzen.
Anschluss: S-WF-072

### S-WF-072 SLA-Verletzungs-Eskalation bei Lead-Übergabe (Integration Trigger)

Trigger: Das MQL→SQL-SLA schreibt eine maximale Follow-up-Zeit vor; überschreitet ein Lead diese Frist ohne Bearbeitung, soll automatisch intern eskaliert werden. (Quelle: sources/10 S-097 + 12 Q113)
Ziel: SLA-Brüche bei der Lead-Übergabe sichtbar machen und gezielt eskalieren, bevor Leads kalt werden.
Ergebnis: Ein Architektur-Entwurf für einen integrations-getriggerten SLA-Eskalations-Workflow mit Fristprüfung.
Fähigkeit: Workflow (Integration-Trigger / Scheduled-Check), Logic-Node (Condition, Zeitvergleich), Action-Node (Slack-Eskalation)
Vorgehen:
1. Den Trigger an die Lead-Übergabe koppeln bzw. einen periodischen Check über offene SQLs laufen lassen.
2. Einen Condition-Node die seit Übergabe verstrichene Zeit gegen die SLA-Frist prüfen lassen.
3. Bei Überschreitung einen Action-Node eine eindeutige Slack-Eskalation mit Lead-Name, Owner und Verzugsdauer auslösen lassen.
4. Eine zweite Eskalationsstufe an die Teamleitung einplanen, falls die Frist deutlich überschritten wird — interne Meldung, kein Kunden-Kontakt.
Prompt:
> "Du bist RevOps-Workflow-Architekt. Entwirf einen SLA-Eskalations-Workflow für die Lead-Übergabe. Kontext: maximale Follow-up-Zeit, zweistufige interne Eskalation, kein Kunden-Kontakt. Format: Trigger/Check, Condition mit Zeitvergleich, Slack-Eskalations-Actions."
Artefakt: Ein SLA-Eskalations-Workflow-Entwurf mit Frist-Logik und zweistufiger Eskalationskette.
Fallstricke:
- Zeitzonen-Unterschiede verfälschen die Fristberechnung → alle Zeitstempel vorab auf eine Referenzzone normalisieren.
- Jede knappe Überschreitung eskaliert sofort an die Leitung → die zweite Stufe an eine deutliche Verzugsschwelle koppeln.
Anschluss: S-WF-073

### S-WF-073 Content-Lokalisierungs-Pipeline mit Tonalitäts-Umstellung (Manual Trigger + Loop)

Trigger: Große Mengen Website-Texte müssen systematisch lokalisiert und in der Anrede (z. B. „Du" → „Sie") umgestellt werden; manuelle Einzelarbeit kostet das Team Wochen. (Quelle: sources/10 S-120 + A-24)
Ziel: Lokalisierung und Tonalitäts-Umstellung kosteneffizient im Batch verarbeiten und durch native Prüfung absichern.
Ergebnis: Ein Architektur-Entwurf für einen Loop-Workflow mit Flash-Modell, Glossar-Bindung und HITL.
Fähigkeit: Workflow (Manual-Trigger), Loop-Node (≤100 Items), AI-Node (Flash-Modell, Glossar-Wissensordner, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit den Text-Strings als JSON-Array aufsetzen; die Liste bei Bedarf in Chargen aufteilen.
2. Einen Loop-Node iterieren und einen AI-Node mit Flash-Modell je String lokalisieren und die Anrede grammatikalisch korrekt umstellen lassen — gebunden an das Glossar.
3. Vor dem Start eine Kostenschätzung gegen das Per-Execution-Limit prüfen und die Warn-Schwellen setzen.
4. Einen HITL-Node für die native Muttersprachler-Prüfung vor dem Live-Gang einplanen.
Prompt:
> "Du bist Lokalisierungs-Workflow-Architekt. Entwirf eine Batch-Pipeline für Tonalitäts-Umstellung (Du→Sie) vieler Text-Strings. Kontext: Flash-Modell für Kosten, Glossar im Wissensordner, native Prüfung vor Live-Gang. Format: Manual-Trigger, Loop-Node, AI-Node-Konfiguration, HITL, Kostenschätzung."
Artefakt: Ein Lokalisierungs-Workflow-Entwurf mit Loop-Logik, Glossar-Bindung und Kostenschätzung pro Lauf.
Fallstricke:
- Reflexivpronomen werden bei der Anrede-Umstellung falsch konvertiert (z. B. „Dich" → „Sich") → konkrete Beispiel-Konversionen ins Node-Briefing aufnehmen und im HITL prüfen.
- Mehr als 100 Strings sprengen den Loop → die Liste vorab in Chargen aufteilen und das Limit prüfen.
Anschluss: S-WF-074

### S-WF-074 Asset-Freigabe-Routing nach Inhalts-Klassifizierung (Webhook Trigger)

Trigger: Neu erstellte Kreativ-Assets brauchen je nach Typ unterschiedliche Freigeber; das manuelle Weiterleiten geht regelmäßig unter. (Quelle: sources/10 S-095)
Ziel: Asset-Freigaben automatisch an den richtigen Freigeber routen und so Durchlaufzeiten verkürzen.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Freigabe-Routing-Workflow mit Klassifizierung.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Klassifizierung, Structured Output Enum), Logic-Node (Condition), HITL-Node
Vorgehen:
1. Den Webhook-Trigger an die Asset-Ablage koppeln und Metadaten plus Inhalts-Auszug übergeben.
2. Einen AI-Node den Asset-Typ mit festem Enum klassifizieren lassen (Design / Text / Web / Performance).
3. Condition-Nodes je Typ den zuständigen Freigeber bestimmen und einen HITL-Node mit klarer Prüf-Instruktion ansteuern.
4. Nach Freigabe einen Action-Node den Ersteller intern benachrichtigen lassen — kein automatisches Publizieren.
Prompt:
> "Du bist Asset-Routing-Workflow-Architekt. Entwirf einen Freigabe-Routing-Workflow für Kreativ-Assets. Kontext: Klassifizierung in Design/Text/Web/Performance, je Typ ein Freigeber, kein Auto-Publish. Format: Webhook-Trigger, AI-Node mit Enum-Schema, Condition-Routing, HITL, Benachrichtigung."
Artefakt: Ein Freigabe-Routing-Workflow-Entwurf mit Enum-Klassifizierung und Freigeber-Zuordnung.
Fallstricke:
- Cross-funktionale Assets passen in mehrere Kategorien → die Condition-Logik muss mehrere Tags gleichzeitig verarbeiten können.
- Ein HITL-Node ohne klare Prüf-Instruktion wird übersprungen → jede Freigeber-Node mit einer konkreten Entscheidungsfrage ausstatten.
Anschluss: S-WF-075

### S-WF-075 UTM-Parameter-Generierung nach Taxonomie (Form Trigger)

Trigger: Teams bauen UTM-Tags inkonsistent, was die Analytics-Daten verschmutzt; eine taxonomie-konforme Generierung auf Knopfdruck soll das vereinheitlichen. (Quelle: sources/10 S-102)
Ziel: UTM-Tags strikt nach Namenskonvention erzeugen und so saubere Analytics-Daten sicherstellen.
Ergebnis: Ein Architektur-Entwurf für einen formular-getriggerten UTM-Generator mit Taxonomie-Validierung.
Fähigkeit: Workflow (Form-Trigger), AI-Node (Validierung gegen Taxonomie, Structured Output), Action-Node (interne Ablage)
Vorgehen:
1. Den Form-Trigger mit Pflichtfeldern (Quelle, Medium, Kampagne, Content) als strukturierte Eingabe aufsetzen.
2. Einen AI-Node die Eingaben gegen die erlaubten Werte der UTM-Taxonomie prüfen und normalisieren lassen (z. B. Kleinschreibung erzwingen).
3. Bei unzulässigen Werten den Nutzer auf die erlaubten Optionen hinweisen statt einen ungültigen Tag zu erzeugen.
4. Einen Action-Node den finalen, vollständigen Tracking-Link intern ablegen — keine externe Aktion.
Prompt:
> "Du bist UTM-Governance-Workflow-Architekt. Entwirf einen Form-Trigger-Workflow, der taxonomie-konforme UTM-Links erzeugt. Kontext: feste erlaubte Werte, Kleinschreibung erzwingen, ungültige Eingaben abweisen. Format: Form-Trigger, AI-Validierungs-Node mit Taxonomie, Ablage-Action."
Artefakt: Ein UTM-Generator-Workflow-Entwurf mit Taxonomie-Validierung und Normalisierungs-Regeln.
Fallstricke:
- Zu komplexe Regeln werden von Marketern umgangen → die Taxonomie schlank halten und im Form-Trigger als Auswahl vorgeben statt Freitext.
- Freitext-Eingaben erzeugen inkonsistente Tags → erlaubte Werte als feste Auswahl im Form-Trigger erzwingen.
Anschluss: S-WF-076

### S-WF-076 Daten-Qualitäts-Validierung vor BI-Import (Webhook Trigger)

Trigger: Vor dem Import in das BI-Dashboard müssen disparate Text-/CSV-Quellen standardisiert, von PII bereinigt und auf Format-Fehler geprüft werden, sonst bricht der Import. (Quelle: sources/10 S-089)
Ziel: Eine zuverlässige Daten-Pipeline etablieren, die Fehl- und Risikodaten vor dem BI-Import abfängt.
Ergebnis: Ein Architektur-Entwurf für einen webhook-getriggerten Validierungs-Workflow mit Quarantäne-Pfad.
Fähigkeit: Workflow (Webhook-Trigger), AI-Node (Normalisierung + PII-Check, Structured Output), Logic-Node (Condition), Action-Node (Sheets-Quarantäne)
Vorgehen:
1. Den Webhook-Trigger an die eingehende Datenlieferung koppeln.
2. Einen AI-Node Header normalisieren, PII entfernen und je Zeile ein Validitäts-Flag mit Begründung als Structured Output ausgeben lassen.
3. Einen Condition-Node valide Zeilen in die Master-Datei und fehlerhafte Zeilen in eine Quarantäne-Ablage routen lassen.
4. Eine interne Meldung über Anzahl und Art der Quarantäne-Fälle auslösen — keine stille Verwerfung.
Prompt:
> "Du bist Data-Quality-Workflow-Architekt. Entwirf einen Validierungs-Workflow vor dem BI-Import. Kontext: Normalisierung, PII-Entfernung, Validitäts-Flag je Zeile, Quarantäne statt Verwerfen. Format: Webhook-Trigger, AI-Node mit Validitäts-Schema, Condition-Routing, Quarantäne-Action."
Artefakt: Ein Validierungs-Workflow-Entwurf mit Validitäts-Schema und Quarantäne-Pfad.
Fallstricke:
- Radikal unterschiedliche Datumsformate lassen die Normalisierung scheitern → ein erwartetes Zielformat definieren und Abweichungen in Quarantäne schicken.
- Fehlerhafte Zeilen werden still verworfen → einen Quarantäne-Pfad mit interner Meldung statt stiller Verwerfung einplanen.
Anschluss: S-WF-077

### S-WF-077 Churn-Risiko-Alert aus Verhaltens- und Feedback-Signalen (Scheduled Trigger)

Trigger: Abwanderungsgefährdete Kunden zeigen früh Signale (sinkende Nutzung, negatives NPS-Verbatim); diese sollen erkannt und dem Customer-Success-Team gemeldet werden. (Quelle: sources/10 S-092 + S-090)
Ziel: Churn-Risiken früh erkennen und gezielt an das richtige Team melden, ohne Fehlalarme bei einzelnen Schwankungen.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Churn-Risiko-Workflow mit Signal-Aggregation.
Fähigkeit: Workflow (Scheduled-Trigger), Integration (Nutzungs-/NPS-Daten), AI-Node (Risiko-Bewertung, Structured Output), Action-Node (Slack)
Vorgehen:
1. Den Scheduled-Trigger auf einen wöchentlichen Lauf setzen und Nutzungs- sowie NPS-Verbatim-Daten ziehen.
2. Einen AI-Node mehrere Signale zu einem Risiko-Score mit Begründung und Auslöse-Event verdichten lassen — Structured Output.
3. Nur bei Score über Schwelle eine Slack-Meldung an Customer Success mit konkretem Account und Treibern auslösen.
4. Die Meldung um einen Empfehlungs-Satz ergänzen — interne Meldung, keine automatische Kunden-Aktion.
Prompt:
> "Du bist Retention-Workflow-Architekt. Entwirf einen wöchentlichen Churn-Risiko-Workflow. Kontext: Nutzungs- plus NPS-Signale, Risiko-Score mit Treibern, Schwellen-Meldung an Customer Success, keine automatische Kunden-Aktion. Format: Scheduled-Trigger, Integration, AI-Node mit Risiko-Schema, Slack-Action."
Artefakt: Ein Churn-Risiko-Workflow-Entwurf mit Signal-Aggregation und Risiko-Schema.
Fallstricke:
- Eine einzelne Schwankung löst Fehlalarm aus → mehrere Signale aggregieren und einen Glättungszeitraum definieren.
- Sehr kurze NPS-Verbatims liefern keinen Mehrwert → Antworten unter wenigen Wörtern aus der Bewertung herausfiltern.
Anschluss: S-WF-078

### S-WF-078 Partner-Co-Marketing-Brief aus Recherche (Manual Trigger)

Trigger: Für eine Co-Marketing-Kampagne mit einer nicht-konkurrierenden Marke soll ein Brief entstehen, der gemeinsame Werte und konkrete Kampagnen-Ideen bündelt. (Quelle: sources/10 S-045)
Ziel: Partner-Briefs reproduzierbar und faktentreu erstellen, mit menschlicher Prüfung vor jeder Außenkommunikation.
Ergebnis: Ein Architektur-Entwurf für einen manuell getriggerten Co-Marketing-Brief-Workflow mit HITL.
Fähigkeit: Workflow (Manual-Trigger), Web Search, AI-Node (Werte-Abgleich + Ideen, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit dem Partnernamen und der eigenen Mission als Eingabe definieren.
2. Einen AI-Node mit Web Search die öffentlichen Ziele und Werte des Partners recherchieren und mit der eigenen Mission abgleichen lassen.
3. Drei konkrete gemeinsame Kampagnen-Ideen plus einen Pitch-Entwurf als Structured Output erzeugen lassen.
4. Einen HITL-Node vor jeder Außenkommunikation einplanen, der Fakten und Tonalität prüft.
Prompt:
> "Du bist Partnership-Workflow-Architekt. Entwirf einen Co-Marketing-Brief-Workflow. Kontext: öffentliche Werte des Partners via Web Search, drei gemeinsame Kampagnen-Ideen, Prüfung vor Außenkommunikation. Format: Manual-Trigger, Web-Search-AI-Node mit Werte-Abgleich, HITL."
Artefakt: Ein Co-Marketing-Brief-Workflow-Entwurf mit Werte-Abgleich und drei Kampagnen-Ideen.
Fallstricke:
- Der AI-Node schlägt Ideen vor, die regulatorische Grenzen der Partnerbranche verletzen → eine Prüfung der Branchen-Constraints in das HITL-Gate aufnehmen.
- Web Search zieht veraltete Partner-News → den Recherche-Scope auf die letzten Monate beschränken.
Anschluss: S-WF-079

### S-WF-079 Pressemitteilungs-Distribution an kuratierte Medienliste (Manual Trigger)

Trigger: Eine freigegebene Pressemitteilung soll an eine kuratierte, themen-passende Journalistenliste verteilt werden — die Außenkommunikation bleibt jedoch freigabepflichtig. (Quelle: sources/10 S-076 + S-077)
Ziel: PR-Distribution beschleunigen und zielgenau halten, ohne ungeprüften automatischen Massen-Versand.
Ergebnis: Ein Architektur-Entwurf für einen manuell getriggerten Distributions-Workflow mit HITL vor Versand.
Fähigkeit: Workflow (Manual-Trigger), Web Search (Medien-Recherche), AI-Node (Pitch-Personalisierung, Structured Output), HITL-Node
Vorgehen:
1. Den Manual-Trigger mit der freigegebenen Pressemitteilung und dem Themen-Scope als Eingabe definieren.
2. Einen AI-Node mit Web Search themen-passende Journalisten (Name, Medium, letzter Beitrag) recherchieren lassen — ohne E-Mail-Adressen zu erfinden.
3. Je Journalist einen kurzen, personalisierten Pitch entwerfen lassen, der den letzten Beitrag analytisch aufgreift.
4. Einen HITL-Node vor jedem Versand zwingend einplanen, der Liste und Pitches prüft und freigibt.
Prompt:
> "Du bist PR-Distributions-Workflow-Architekt. Entwirf einen Workflow zur Verteilung einer Pressemitteilung an eine kuratierte Medienliste. Kontext: themen-passende Journalisten via Web Search, personalisierte Pitches, keine erfundenen Kontaktdaten, kein automatischer Versand. Format: Manual-Trigger, Web-Search-Node, AI-Pitch-Node, HITL vor Versand."
Artefakt: Ein PR-Distributions-Workflow-Entwurf mit Medien-Recherche-Logik und Freigabe-Punkt.
Fallstricke:
- Web Search halluziniert E-Mail-Adressen → den Node strikt auf Name, Medium und URL beschränken und Kontaktdaten manuell ergänzen.
- Ein automatischer Massen-Versand ohne Freigabe schadet PR-Beziehungen → HITL vor jedem Versand zwingend setzen.
Anschluss: S-WF-080

### S-WF-080 Quartals-Reporting-Kompilation aus Mehrquellen-Daten (Scheduled Trigger)

Trigger: Die Quartals-Reporting-Kompilation aus mehreren Analytics- und CRM-Quellen kostet das Team jedes Quartal Tage manueller Aggregation. (Quelle: sources/10 S-110 + S-098 + A-01 + A-10)
Ziel: Quartalsdaten reproduzierbar aggregieren und faktentreu aufbereiten, mit menschlicher Interpretations-Freigabe.
Ergebnis: Ein Architektur-Entwurf für einen zeitgesteuerten Reporting-Kompilations-Workflow mit HITL-Interpretations-Gate.
Fähigkeit: Workflow (Scheduled-Trigger), parallele Integration-Nodes (GA4/CRM/Ad-Plattformen via HTTP-Request), AI-Node (Aggregation + KPI-Kommentar, Structured Output), HITL-Node
Vorgehen:
1. Den Scheduled-Trigger auf den ersten Arbeitstag nach Quartalsende setzen.
2. Parallele Integration-Nodes die Kennzahlen aus GA4, CRM und Ad-Plattformen als strukturiertes JSON ziehen lassen.
3. Einen AI-Node die Rohdaten zu einem KPI-Objekt mit Vorquartals-Delta und Top-Ausreißern aggregieren lassen — Structured Output, Daten von Deutung getrennt.
4. Einen HITL-Node einplanen, in dem die Leitung Werte prüft und die strategische Interpretation freigibt.
5. Nach Freigabe einen Action-Node die Kompilation intern bereitstellen — keine automatische externe Verteilung.
Prompt:
> "Du bist Reporting-Workflow-Architekt. Entwirf einen Quartals-Reporting-Workflow aus mehreren Quellen. Kontext: parallele Datenaggregation, Vorquartals-Delta, Zahlen faktentreu, Interpretation menschlich freigegeben. Format: Scheduled-Trigger, parallele Integration-Nodes, Aggregations-AI-Node, HITL, interne Bereitstellung."
Artefakt: Ein Quartals-Reporting-Workflow-Entwurf mit Multi-Source-Aggregation, KPI-Schema und Interpretations-Freigabepunkt.
Fallstricke:
- Schlägt eine Integration fehl, entsteht ein unvollständiger Report ohne Hinweis → jeden Integration-Node mit Error-Handler versehen, der fehlende Quellen als „nicht verfügbar" markiert statt still abzubrechen.
- Der AI-Node interpretiert Zahlen eigenmächtig → Daten und Deutung trennen und die Interpretation dem HITL-Gate überlassen.
Anschluss: S-WF-001

## Hinweise & Quellen-Konflikte

Keine direkten Quellen-Konflikte identifiziert. Die Advisory-Grenze wurde aus den System-Spezifikationen als hartes Paradigma übernommen. Little Data liefert Workflow-Architektur-Entwürfe (Canvas), keine deployten Workflows — die Umsetzung erfolgt durch den Workspace-Admin.
