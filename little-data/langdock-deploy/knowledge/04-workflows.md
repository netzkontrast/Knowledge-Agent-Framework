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

Jedes Szenario beschreibt eine Workflow-Architektur, die Little Data **berät, aber nicht baut** — der Output ist ein Architektur-Entwurf (Canvas/Markdown), kein deployter Workflow. Die zugrundeliegenden Critical-Thinking-Methoden sind unsichtbares Konstruktions-Gerüst und erscheinen nicht als Feld.

### S-WF-001 Wöchentlicher Newsletter-Zusammenbau (Scheduled Trigger)

**Wann nutzen (Trigger):** Der Newsletter erscheint jeden Donnerstag, und die Kuratierung der Inhalte kostet die Redaktion jede Woche mehrere Stunden manueller Recherche.
**Strategisches Ziel:** Die wiederkehrende Kuratierung automatisieren, ohne die redaktionelle Endkontrolle aufzugeben.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen zeitgesteuerten Workflow mit menschlicher Freigabe vor Versand.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), AI-Node, Web Search, HITL-Node
**Vorgehen (3-5 Schritte):**
1. Den Scheduled-Trigger auf Mittwoch früh setzen, damit vor dem Versand Pufferzeit bleibt.
2. Einen AI-Node mit Web Search die relevanten Themen der Woche sammeln und in ein festes Format bringen lassen.
3. Einen HITL-Node für die redaktionelle Freigabe vor dem Übergang in das E-Mail-Tool einplanen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist Marketing-Workflow-Architekt. Aufgabe: Skizziere einen zeitgesteuerten Workflow, der wöchentlich Newsletter-Themen kuratiert. Kontext: Versand donnerstags, Redaktion will Endfreigabe behalten. Format: Node-Liste mit Trigger, AI-Node, HITL und Übergabepunkt."
**Erwartetes Artefakt:** Ein Workflow-Architektur-Entwurf (Canvas) mit Trigger-Zeitpunkt, AI-Node-Briefing und HITL-Punkt — bereit zur Umsetzung durch den Workspace-Admin.
**Fallstricke (≥2 spezifisch):**
- Ohne HITL-Node würde ein unfertiger Newsletter automatisch versendet → Freigabe-Node vor jeder externen Aktion zwingend einplanen.
- Der Scheduled-Trigger läuft zu knapp vor Versand → genügend Pufferzeit für die Redaktion vorsehen.
**Anschluss-Szenario:** S-WF-005

### S-WF-002 Lead-Scoring bei Formular-Eingang (Form/Webhook Trigger)

**Wann nutzen (Trigger):** Jede Formular-Anfrage auf der Website soll automatisch bewertet und priorisiert an den Vertrieb übergeben werden.
**Strategisches Ziel:** Eingehende Leads ohne manuelle Vorsortierung qualifizieren, bevor sie das CRM erreichen.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen ereignisgesteuerten Scoring-Workflow mit deterministischem Output.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Form-/Webhook-Trigger), AI-Node mit Structured Output, Integration-Action (CRM), HITL-Node bei hohem Score
**Vorgehen (3-5 Schritte):**
1. Den Form- oder Webhook-Trigger an das Website-Formular koppeln.
2. Einen AI-Node mit erzwungenem JSON-Schema (Score + Begründung) konfigurieren, damit der Output maschinenlesbar bleibt.
3. Bei hohem Score einen HITL-Node für die persönliche Vertriebsansprache einplanen, bei niedrigem Score automatisch ins Nurturing routen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Marketing-Workflow-Architekt. Aufgabe: Entwirf einen Scoring-Workflow für Formular-Leads. Kontext: Output muss als JSON ins CRM. Format: Trigger, AI-Node mit JSON-Schema (score, reason), Verzweigung hoch/niedrig."
**Erwartetes Artefakt:** Ein Workflow-Entwurf inklusive JSON-Schema-Vorschlag für die Lead-Bewertung.
**Fallstricke (≥2 spezifisch):**
- Structured Output wird über Prompt-Wording statt über die Node-Konfiguration erzwungen → das JSON-Schema in der Agent-Node hinterlegen, nicht im Prompt erbitten.
- Niedrig bewertete Leads werden verworfen statt genurtured → eine zweite Verzweigung ins Lead-Nurturing vorsehen.
**Anschluss-Szenario:** S-WF-010

### S-WF-003 Massen-Erzeugung von Meta-Descriptions (Manual Trigger + Loop)

**Wann nutzen (Trigger):** Für 800 Bestandsseiten fehlen SEO-Meta-Descriptions, und die manuelle Pflege ist nicht leistbar.
**Strategisches Ziel:** Einen einmaligen Massen-Lauf aufsetzen, der die Texte erzeugt, ohne das Workspace-Budget zu sprengen.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Loop-Workflow mit Kostenkontrolle.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger, Loop-Node ≤100 Items), AI-Node, Sheets-Integration
**Vorgehen (3-5 Schritte):**
1. Die URL-Liste in Chargen aufteilen, da ein Loop maximal 100 Items pro Durchlauf verarbeitet.
2. Einen AI-Node mit klarer Längen- und Keyword-Vorgabe je Seite konfigurieren.
3. Vor dem Start eine Kostenschätzung gegen das Per-Execution-Limit (Standard 25 €) und die Warn-Schwellen prüfen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: SEO-Workflow-Architekt. Aufgabe: Skizziere einen Batch-Workflow für Meta-Descriptions aus einer URL-Liste. Kontext: 800 Seiten, Budget begrenzt. Format: Trigger, Loop-Logik mit Chargen, AI-Node-Vorgaben, Kosten-Check."
**Erwartetes Artefakt:** Ein Batch-Workflow-Entwurf mit Chargen-Logik und einer Kostenschätzung pro Lauf.
**Fallstricke (≥2 spezifisch):**
- Mehr als 100 Items im Loop führen zum Abbruch → die Liste vorab in Chargen aufteilen.
- Ein unkontrollierter Lauf reißt das Per-Execution-Limit → Warn-Schwellen (50/75/90 %) vor dem Start aktivieren.
**Anschluss-Szenario:** S-WF-007

### S-WF-004 Klassifizierung eingehender Support-Tickets (Integration Trigger)

**Wann nutzen (Trigger):** Eingehende Kunden-Tickets sollen automatisch nach Thema und Dringlichkeit sortiert werden, bevor das Team sie sieht.
**Strategisches Ziel:** Die Triage automatisieren und konsistent halten, ohne falsch-kritische Eskalationen zu riskieren.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen integrations-getriggerten Klassifizierungs-Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Integration-Trigger), AI-Node mit Structured Output (Enum-Kategorien)
**Vorgehen (3-5 Schritte):**
1. Den Integration-Trigger an das Ticket-System (z. B. Zendesk) koppeln.
2. Einen AI-Node mit festen Enum-Kategorien für Thema und Dringlichkeit konfigurieren.
3. Eine Eskalations-Verzweigung definieren, die nur bei eindeutiger Hoch-Dringlichkeit automatisch alarmiert.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Workflow-Architekt für Service-Marketing. Aufgabe: Entwirf einen Ticket-Klassifizierungs-Workflow. Kontext: Kategorien fix, Fehlalarme vermeiden. Format: Trigger, AI-Node mit Enum-Schema, Eskalations-Regel."
**Erwartetes Artefakt:** Ein Workflow-Entwurf mit definierter Enum-Kategorienliste und Eskalationslogik.
**Fallstricke (≥2 spezifisch):**
- Freitext-Kategorien statt Enums führen zu inkonsistenter Sortierung → die erlaubten Werte als Enum im Schema fixieren.
- Jede Kategorie löst Alarme aus → Auto-Eskalation strikt auf eindeutige Hoch-Dringlichkeit begrenzen.
**Anschluss-Szenario:** S-WF-008

### S-WF-005 Multi-Channel-Distribution eines Blog-Artikels (Manual Trigger)

**Wann nutzen (Trigger):** Ein fertiger Blog-Artikel soll als kanal-spezifische Teaser für LinkedIn, X und den Newsletter aufbereitet werden.
**Strategisches Ziel:** Aus einem Quelltext mehrere kanalgerechte Varianten erzeugen, ohne die Markenstimme zu verlieren.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Distributions-Workflow mit Brand-Voice-Bindung.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger), AI-Node, Wissensordner (Brand-Voice), HITL-Node
**Vorgehen (3-5 Schritte):**
1. Den Manual-Trigger mit der Artikel-URL als Eingabe definieren.
2. Einen AI-Node je Kanal konfigurieren, jeweils gebunden an den Brand-Voice-Wissensordner und die Plattform-Limits (z. B. LinkedIn-Hook in den ersten 40 Zeichen).
3. Einen HITL-Node für die Freigabe aller Varianten vor der Veröffentlichung einplanen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Content-Distribution-Architekt. Aufgabe: Skizziere einen Workflow, der einen Blog-Artikel in drei Kanal-Teaser überführt. Kontext: Markenstimme aus Wissensordner, je Kanal eigene Limits. Format: Trigger, drei AI-Nodes, HITL."
**Erwartetes Artefakt:** Ein Distributions-Workflow-Entwurf mit kanal-spezifischen AI-Node-Briefings.
**Fallstricke (≥2 spezifisch):**
- Ein einziger Node für alle Kanäle erzeugt uniforme Texte → je Kanal einen eigenen Node mit eigenen Limits.
- Die Markenstimme driftet ab → jeden Node verbindlich an den Brand-Voice-Wissensordner koppeln.
**Anschluss-Szenario:** S-WF-001

### S-WF-006 Lokalisierungs-Pipeline für neue CMS-Artikel (Integration Trigger)

**Wann nutzen (Trigger):** Jeder neue deutschsprachige CMS-Artikel soll automatisch eine englische Transkreation für den internationalen Markt erhalten.
**Strategisches Ziel:** Lokalisierung beschleunigen, ohne dass roh-übersetzte Texte ungeprüft live gehen.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für eine getriggerte Übersetzungs- und Prüf-Pipeline.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Integration-Trigger), DeepL-Integration, AI-Node (Brand-Voice-Check), HITL-Node
**Vorgehen (3-5 Schritte):**
1. Den Integration-Trigger an die CMS-Veröffentlichung koppeln.
2. Eine DeepL-Integration die Rohübersetzung erzeugen lassen, gefolgt von einem AI-Node, der Tonalität und Fachbegriffe gegen den Brand-Voice-Wissensordner prüft.
3. Einen HITL-Node vor der Veröffentlichung der lokalisierten Fassung einplanen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Lokalisierungs-Workflow-Architekt. Aufgabe: Entwirf eine DE→EN-Transkreations-Pipeline für neue CMS-Artikel. Kontext: Brand-Voice muss erhalten bleiben, keine ungeprüfte Veröffentlichung. Format: Trigger, DeepL-Node, AI-Check-Node, HITL."
**Erwartetes Artefakt:** Ein Lokalisierungs-Workflow-Entwurf mit Übersetzungs- und Prüfschritt.
**Fallstricke (≥2 spezifisch):**
- Roh-Übersetzungen gehen ungeprüft live → den HITL-Node vor der Veröffentlichung zwingend setzen.
- Fachbegriffe werden falsch übersetzt → ein Glossar im Brand-Voice-Wissensordner hinterlegen und im Check-Node referenzieren.
**Anschluss-Szenario:** S-WF-005

### S-WF-007 Täglicher Wettbewerbs-Nachrichten-Digest (Scheduled Trigger)

**Wann nutzen (Trigger):** Das Team möchte jeden Morgen eine kompakte Übersicht relevanter Wettbewerber- und Marktnachrichten erhalten.
**Strategisches Ziel:** Marktbeobachtung automatisieren und auf das Wesentliche verdichten, ohne Quellenrauschen.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen zeitgesteuerten Recherche- und Zusammenfassungs-Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Web Search, AI-Node, Action-Node (interner Versand)
**Vorgehen (3-5 Schritte):**
1. Den Scheduled-Trigger auf jeden Werktagmorgen setzen.
2. Einen AI-Node mit Web Search die definierten Wettbewerber und Themen abfragen und auf maximal fünf Kernpunkte verdichten lassen.
3. Eine Action den Digest in den internen Team-Kanal stellen — ohne externe Veröffentlichung, daher ohne HITL.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Market-Intelligence-Architekt. Aufgabe: Skizziere einen täglichen Wettbewerbs-Digest-Workflow. Kontext: feste Wettbewerberliste, max. fünf Kernpunkte, nur intern. Format: Scheduled-Trigger, Web-Search-AI-Node, interner Action-Node."
**Erwartetes Artefakt:** Ein Digest-Workflow-Entwurf mit Quellen-Scope und Verdichtungsregel.
**Fallstricke (≥2 spezifisch):**
- Web Search liefert irrelevantes Rauschen → den Quellen-Scope und die Wettbewerberliste eng definieren.
- Der Digest wird zu lang → eine harte Obergrenze von fünf Kernpunkten im Node-Briefing setzen.
**Anschluss-Szenario:** S-WF-003

### S-WF-008 Sentiment-Monitoring für Produkt-Reviews (Scheduled Trigger)

**Wann nutzen (Trigger):** Negative Bewegungen in Produkt-Reviews sollen früh erkannt werden, bevor sie eskalieren.
**Strategisches Ziel:** Stimmungsverschiebungen automatisch erkennen und nur bei echten Ausschlägen alarmieren.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Monitoring-Workflow mit Schwellen-Alarm.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Integration (Review-Quelle), AI-Node (Sentiment, Structured Output)
**Vorgehen (3-5 Schritte):**
1. Den Scheduled-Trigger auf einen täglichen Lauf setzen.
2. Einen AI-Node die neuen Reviews klassifizieren und einen aggregierten Sentiment-Wert mit fester Skala ausgeben lassen.
3. Einen Alarm nur auslösen, wenn der Wert eine vorab definierte Schwelle unterschreitet.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Brand-Monitoring-Architekt. Aufgabe: Entwirf einen Sentiment-Monitoring-Workflow für Reviews. Kontext: nur bei echtem Negativ-Ausschlag alarmieren. Format: Scheduled-Trigger, AI-Node mit Sentiment-Skala, Schwellen-Alarm."
**Erwartetes Artefakt:** Ein Monitoring-Workflow-Entwurf mit definierter Sentiment-Skala und Alarmschwelle.
**Fallstricke (≥2 spezifisch):**
- Jede leichte Schwankung löst Alarm aus → eine sinnvolle Schwelle und einen Glättungszeitraum definieren.
- Die Sentiment-Skala ist unscharf → eine feste numerische Skala im Structured Output erzwingen.
**Anschluss-Szenario:** S-WF-004

### S-WF-009 Wöchentlicher Kampagnen-Reporting-Digest (Scheduled Trigger)

**Wann nutzen (Trigger):** Das wöchentliche Performance-Reporting aus mehreren Analytics-Quellen kostet das Team jeden Montag viel Zusammenbau-Zeit.
**Strategisches Ziel:** Das Reporting automatisch aggregieren und narrativ aufbereiten, mit klarer Trennung von Daten und Interpretation.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Reporting-Workflow mit menschlicher Interpretations-Freigabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Integration (Analytics/BI), AI-Node, HITL-Node
**Vorgehen (3-5 Schritte):**
1. Den Scheduled-Trigger auf Montagmorgen setzen.
2. Über Integrationen die Kennzahlen ziehen und einen AI-Node eine faktentreue Zusammenfassung mit benannten Veränderungen erstellen lassen.
3. Einen HITL-Node einplanen, in dem die Leitung die Interpretation prüft, bevor der Report verteilt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Marketing-Reporting-Architekt. Aufgabe: Skizziere einen wöchentlichen Reporting-Workflow aus mehreren Analytics-Quellen. Kontext: Zahlen faktentreu, Interpretation menschlich freigegeben. Format: Scheduled-Trigger, Integrations, AI-Summary-Node, HITL."
**Erwartetes Artefakt:** Ein Reporting-Workflow-Entwurf mit Datenquellen-Liste und Interpretations-Freigabepunkt.
**Fallstricke (≥2 spezifisch):**
- Der AI-Node interpretiert Zahlen eigenmächtig → Daten und Deutung trennen, Deutung dem HITL-Schritt überlassen.
- Unterschiedliche Zeiträume der Quellen verfälschen die Aggregation → vorab auf denselben Zeitraum normalisieren.
**Anschluss-Szenario:** S-WF-007

### S-WF-010 Personalisierte Follow-up-Sequenz nach Event-Anmeldung (Webhook Trigger)

**Wann nutzen (Trigger):** Nach einer Webinar-Anmeldung soll automatisch eine personalisierte, aber freigabepflichtige Follow-up-Nachricht vorbereitet werden.
**Strategisches Ziel:** Zeitnahe Personalisierung ermöglichen, ohne unkontrollierten automatischen Versand an Kontakte.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für eine webhook-getriggerte Follow-up-Pipeline mit Freigabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Webhook-Trigger), AI-Node, Wissensordner (Segment-Kontext), HITL-Node
**Vorgehen (3-5 Schritte):**
1. Den Webhook-Trigger an die Anmelde-Bestätigung koppeln.
2. Einen AI-Node einen personalisierten Entwurf auf Basis des Segment-Kontexts aus dem Wissensordner erstellen lassen.
3. Einen HITL-Node vor jedem externen Versand zwingend einplanen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Lifecycle-Workflow-Architekt. Aufgabe: Entwirf eine Follow-up-Pipeline nach Event-Anmeldung. Kontext: Personalisierung pro Segment, kein automatischer Versand. Format: Webhook-Trigger, AI-Node mit Wissensordner, HITL vor Versand."
**Erwartetes Artefakt:** Ein Follow-up-Workflow-Entwurf mit Personalisierungs-Logik und verpflichtendem Freigabe-Schritt.
**Fallstricke (≥2 spezifisch):**
- Ein automatischer Versand ohne Freigabe verletzt die Kontrolle über Kunden-Kommunikation → HITL vor jeder externen Aktion.
- Fehlender Segment-Kontext erzeugt generische Nachrichten → den Wissensordner mit Segment-Profilen verbinden.
**Anschluss-Szenario:** S-WF-002

## Hinweise & Quellen-Konflikte

Keine direkten Quellen-Konflikte identifiziert. Die Advisory-Grenze wurde aus den System-Spezifikationen als hartes Paradigma übernommen. Little Data liefert Workflow-Architektur-Entwürfe (Canvas), keine deployten Workflows — die Umsetzung erfolgt durch den Workspace-Admin.
