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
**Anschluss-Szenario:** S-WF-011

### S-WF-011 Reaktivierung dormanter CRM-Kontakte nach Klick-Ereignis (Webhook Trigger)

**Wann nutzen (Trigger):** Ein inaktiver CRM-Kontakt klickt auf eine Win-back-E-Mail und soll sofort und automatisch in die aktive Segment-Liste wechseln — ohne manuelle CSV-Exporte. (Quelle: sources/10 S-061)
**Strategisches Ziel:** CRM-Datenhygiene in Echtzeit automatisieren und sicherstellen, dass reaktivierte Kontakte keine Dormant-Kommunikation mehr erhalten.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen webhook-getriggerten Listenumschalt-Workflow mit Bot-Klick-Filter.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Webhook-Trigger), Logic-Node (Condition), Action-Node (CRM-Integration HubSpot/Salesforce)
**Vorgehen (4 Schritte):**
1. Den Webhook-Trigger an das Klick-Event des E-Mail-Tools koppeln und die Kontakt-ID sowie Kampagnen-ID als Payload übergeben.
2. Einen Condition-Node prüfen lassen, ob der Kontakt tatsächlich auf der Dormant-Liste steht und kein Bot-Flag gesetzt ist.
3. Einen CRM-Action-Node den Kontakt aus der Dormant-Liste entfernen und zur Active-Liste hinzufügen lassen.
4. Einen zweiten Action-Node eine interne Slack-Notification mit Kontaktname und Kampagne auslösen lassen — kein automatischer Folgeversand.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist CRM-Workflow-Architekt. Entwirf einen Webhook-Workflow, der bei einem E-Mail-Klick einen Kontakt von 'Dormant' auf 'Active' umschaltet. Kontext: HubSpot als CRM, Bot-Klicks müssen herausgefiltert werden. Format: Node-Liste mit Trigger, Condition, CRM-Action und Slack-Benachrichtigung."
**Erwartetes Artefakt:** Ein Workflow-Entwurf mit Bot-Filter-Logik, CRM-Listenumschalt-Action und interner Benachrichtigung — ohne automatischen Kunden-Versand.
**Fallstricke (≥2 spezifisch):**
- Bot-Crawler lösen Klick-Events aus und reaktivieren Kontakte fälschlicherweise → den Condition-Node auf User-Agent-Prüfung oder Double-Klick-Logik auslegen.
- Der Workflow reaktiviert einen Kontakt, der aus Datenschutzgründen explizit deaktiviert wurde → vor dem Listenumschalten eine DSGVO-Opt-out-Prüfung als zusätzlichen Condition-Node einplanen.
**Anschluss-Szenario:** S-WF-012

### S-WF-012 Hyper-personalisierter Webinar-Follow-up per CRM-Trigger (Integration Trigger)

**Wann nutzen (Trigger):** Nach einem Webinar liegen Teilnehmer-Fragen als CRM-Feld vor; jeder Kontakt soll eine Follow-up-E-Mail erhalten, die genau seine gestellte Frage aufgreift — bei 50 Teilnehmern manuell nicht leistbar. (Quelle: sources/10 S-062)
**Strategisches Ziel:** Personalisierung im Post-Event-CRM auf Zeilenskalierung bringen, ohne dass die Qualität auf generische Textbausteine abfällt.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen integrations-getriggerten Personalisierungs-Workflow mit HITL vor dem Versand.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Integration-Trigger HubSpot/Salesforce), AI-Node (Structured Output), Action-Node (CRM-Feld-Update), HITL-Node
**Vorgehen (4 Schritte):**
1. Den Integration-Trigger auf das Ereignis "Neues Formularfeld ausgefüllt" (Teilnehmer-Frage) im CRM koppeln.
2. Einen AI-Node die individuelle Frage analysieren und eine 2-Satz-Antwort als JSON-Feld ausgeben lassen — Structured Output erzwingen.
3. Einen Action-Node den generierten Text als Custom-Property im CRM-Kontakt speichern lassen — kein direkter Versand.
4. Einen HITL-Node aktivieren, der alle generierten Antworten zur Batch-Prüfung vorlegt, bevor das E-Mail-Tool die Injektion vornimmt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lifecycle-Workflow-Architekt. Entwirf einen Personalisierungs-Workflow für Webinar-Follow-ups. Kontext: 50 Teilnehmer, je eine offene Frage als CRM-Feld, kein automatischer Versand. Format: Integration-Trigger, AI-Node mit JSON-Schema (antwort_text), CRM-Action, HITL-Freigabe."
**Erwartetes Artefakt:** Ein Personalisierungs-Workflow-Entwurf mit JSON-Schema-Vorlage für das CRM-Feld und verpflichtendem Batch-Freigabe-Schritt.
**Fallstricke (≥2 spezifisch):**
- Ein leeres oder sinnloses Frage-Feld lässt den AI-Node halluzinieren → einen Condition-Node für leere Inputs vorschalten, der diese Datensätze ausfiltert.
- Der AI-Node gibt Freitext statt maschinenlesbares JSON zurück → das Structured-Output-Schema direkt in der Node-Konfiguration hinterlegen, nicht nur im Prompt bitten.
**Anschluss-Szenario:** S-WF-013

### S-WF-013 Bulk-Lokalisierungs-Pipeline für mehrere Zielmärkte (Manual Trigger + Loop)

**Wann nutzen (Trigger):** Ein neues Produkt-Feature muss in 6 Sprachen lokalisiert werden; die manuelle Einzelübersetzung pro Markt kostet das Team eine Woche. (Quelle: A-24)
**Strategisches Ziel:** Lokalisierungs-Jobs kostengünstig im Batch verarbeiten und dabei ein schlankes Modell für Standard-Übersetzung einsetzen, um den Faktor 5–10× Kostenvorteil gegenüber Einzelläufen zu erzielen.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Loop-Workflow mit sprach-spezifischen AI-Nodes, Kostenkontrolle und HITL-Freigabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger), Loop-Node (≤100 Items), AI-Node (Flash-Modell für Routine, Structured Output), HITL-Node
**Vorgehen (4 Schritte):**
1. Den Manual-Trigger mit einer JSON-Array-Eingabe aufsetzen, die Quelltext und Zielsprachen-Liste übergibt.
2. Einen Loop-Node über die Sprachliste iterieren lassen und für jede Sprache einen AI-Node mit Flash-Modell und Glossar-Wissensordner triggern.
3. Die Outputs als JSON-Array sammeln und einen HITL-Node für die native Muttersprachler-Prüfung je Sprache einplanen.
4. Vor dem Start eine Kostenschätzung gegen das Per-Execution-Limit prüfen und die Warn-Schwellen auf 75 % setzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lokalisierungs-Workflow-Architekt. Entwirf eine Bulk-Lokalisierungs-Pipeline für 6 Sprachen aus einem Quelltext. Kontext: Flash-Modell für Kosteneffizienz, Glossar im Wissensordner, HITL vor Live-Gang. Format: Manual-Trigger, Loop-Node mit Sprach-Array, AI-Node-Konfiguration, HITL, Kostenschätzung."
**Erwartetes Artefakt:** Ein Bulk-Lokalisierungs-Workflow-Entwurf mit Loop-Logik, Modell-Auswahl-Begründung und Kostenschätzung pro Lauf.
**Fallstricke (≥2 spezifisch):**
- Der Loop überschreitet 100 Items → die Sprachliste in Chargen aufteilen oder Loop-Limit vorab prüfen.
- Das Flash-Modell liefert fehlerhafte Fachterminologie → ein Glossar als Pflicht-Wissensordner in jeden Sprach-Node einbinden.
**Anschluss-Szenario:** S-WF-014

### S-WF-014 HITL-Gate-Architektur für mehrstufige Briefing-Workflows (Manual Trigger)

**Wann nutzen (Trigger):** Ein mehrstufiger Briefing-Workflow läuft durch Recherche, Brand-Voice-Pass und Legal-Check — unklar ist, nach welchem Schritt der Mensch eingreifen muss, damit keine unkontrollierten Outputs das System verlassen. (Quelle: A-32)
**Strategisches Ziel:** Die drei optimalen HITL-Checkpoints in einer mehrstufigen Pipeline definieren, um Kontrolle zu maximieren ohne die Automatisierung zu torpedieren.
**Hands-on Ergebnis:** Ein Architektur-Entwurf mit drei explizit platzierten HITL-Gates und deren jeweiliger Prüfaufgabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger), AI-Node (Recherche + Brand-Voice + Legal), HITL-Node (3×), Wissensordner (Brand-Voice, Legal-Guidelines)
**Vorgehen (4 Schritte):**
1. Gate 1 nach der Recherche-Phase einplanen: Fakten-Check — der Mensch prüft, ob Quellen korrekt und vollständig sind.
2. Gate 2 nach dem Brand-Voice-Pass einplanen: Tonalitäts-Check — der Mensch entscheidet, ob Stimme und Botschaft konsistent sind.
3. Gate 3 vor jedem externen Output einplanen: Rechts-Check — der Mensch bestätigt, dass keine rechtlichen Risiken (UWG, DSGVO) im Text vorliegen.
4. Jeden HITL-Node mit einer klaren Prüf-Instruktion ausstatten, damit der Reviewer weiß, welche Dimension er genehmigt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-Architekt für Content-Pipelines. Entwirf eine Briefing-Pipeline mit drei HITL-Gates. Kontext: Stufen sind Recherche, Brand-Voice-Pass, Legal-Review; kein Output ohne menschliche Freigabe. Format: Node-Liste mit Gate-Positionen und je einer Prüf-Instruktion pro HITL-Node."
**Erwartetes Artefakt:** Ein Briefing-Workflow-Entwurf mit drei beschrifteten HITL-Gates und einer Prüf-Instruktions-Vorlage pro Gate.
**Fallstricke (≥2 spezifisch):**
- Zu viele HITL-Gates lähmem den Workflow → drei Gates sind das Optimum; mehr als fünf defeats den Automatisierungszweck.
- Ein HITL-Node ohne klare Prüf-Instruktion wird vom Reviewer übersprungen → jede Gate-Node muss eine konkrete Entscheidungsfrage enthalten.
**Anschluss-Szenario:** S-WF-015

### S-WF-015 Eingehende Leads per E-Mail-Trigger qualifizieren und routen (Email Trigger)

**Wann nutzen (Trigger):** Eingehende Anfragen landen im Marketing-Postfach als Freitext-E-Mails; die manuelle Triage kostet täglich Zeit und führt zu Weiterleitungsfehlern. (Quelle: 12 Q-111)
**Strategisches Ziel:** E-Mail-Eingänge automatisch klassifizieren, qualifizieren und an das richtige Team routen — mit HITL vor der finalen CRM-Übergabe.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen email-getriggerten Qualifizierungs- und Routing-Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Email-Trigger), AI-Node (Klassifizierung, Structured Output), Logic-Node (Condition), Action-Node (Slack-Routing), HITL-Node
**Vorgehen (4 Schritte):**
1. Den Email-Trigger auf die Marketing-Inbox koppeln und den E-Mail-Body als Variable übergeben.
2. Einen AI-Node die Anfrage klassifizieren lassen — Structured Output mit Enum-Feldern: Typ (Lead/Support/Spam), Priorität (hoch/mittel/niedrig), zuständiges Team.
3. Condition-Nodes für jede Routing-Option aufsetzen: Lead → Slack-Nachricht an Sales, Support → Ticket-System, Spam → Archivierung ohne Aktion.
4. Einen HITL-Node nur für hoch-priorisierte Leads einplanen, bevor die CRM-Übergabe erfolgt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist E-Mail-Workflow-Architekt. Entwirf einen Email-Trigger-Workflow für die Marketing-Inbox. Kontext: Klassifizierung in Lead/Support/Spam, Routing an Sales oder Ticket-System, HITL nur bei hoher Priorität. Format: Email-Trigger, AI-Node mit Enum-Schema, Condition-Nodes, Routing-Actions, HITL."
**Erwartetes Artefakt:** Ein E-Mail-Routing-Workflow-Entwurf mit Enum-Klassifizierungs-Schema und bedingter HITL-Logik.
**Fallstricke (≥2 spezifisch):**
- Newsletter-Bounces und automatische Out-of-Office-Antworten triggern den Workflow unnötig → einen Vorfilter-Condition-Node für bekannte Absender-Muster einplanen.
- Freitext-Klassifizierung ohne Enum-Schema liefert inkonsistente Routing-Entscheidungen → die erlaubten Kategorien als feste Enum-Werte im Structured Output erzwingen.
**Anschluss-Szenario:** S-WF-016

### S-WF-016 Neuen CMS-Artikel per File-Watch-Trigger zur Freigabe routen (New File in Folder)

**Wann nutzen (Trigger):** Autoren legen fertige Blog-Artikel-Entwürfe in einem geteilten Ordner ab; der Freigabeprozess läuft per E-Mail und geht regelmäßig unter. (Quelle: sources/10 S-006)
**Strategisches Ziel:** Den Content-Freigabeprozess durch einen automatisch ausgelösten Review-Workflow ersetzen, der den Entwurf prüft und strukturiert zur Genehmigung vorlegt.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen dateigetriggerten Freigabe-Workflow mit Brand-Voice-Check und HITL.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (New-File-in-Folder-Trigger), AI-Node (Brand-Voice-Check, Wissensordner), HITL-Node, Action-Node (Slack-Benachrichtigung)
**Vorgehen (4 Schritte):**
1. Den New-File-in-Folder-Trigger auf den geteilten Content-Ordner konfigurieren — der Workflow startet automatisch bei jeder neu abgelegten Datei.
2. Einen AI-Node den Entwurf gegen den Brand-Voice-Wissensordner prüfen lassen und einen strukturierten Review-Report (Tonalität, Fehler, Optimierungsvorschläge) als Structured Output erzeugen lassen.
3. Einen HITL-Node den Report zusammen mit dem Originalentwurf dem designierten Freigeber präsentieren lassen.
4. Nach Freigabe einen Slack-Action-Node den Autor über die Genehmigung benachrichtigen lassen — kein automatischer CMS-Upload.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Content-Freigabe-Workflow-Architekt. Entwirf einen File-Watch-Workflow für Blog-Artikel-Entwürfe. Kontext: Brand-Voice-Check per Wissensordner, strukturierter Review-Report, Freigabe durch Redaktionsleitung. Format: New-File-Trigger, AI-Review-Node, HITL mit Report, Slack-Benachrichtigung."
**Erwartetes Artefakt:** Ein Content-Freigabe-Workflow-Entwurf mit Brand-Voice-Check-Node, HITL-Präsentation und Benachrichtigungs-Action.
**Fallstricke (≥2 spezifisch):**
- Jede Dateiversion (Draft v2, v3 …) triggert den Workflow erneut → eine Namenskonvention für finale Entwürfe (z. B. "FINAL_") als Trigger-Filter definieren.
- Der AI-Node bewertet zu hart und blockiert gute Artikel → den Brand-Voice-Check auf konkrete Prüfpunkte beschränken, nicht auf subjektive Qualitätsurteile.
**Anschluss-Szenario:** S-WF-017

### S-WF-017 Tägliche Performance-Anomalie-Erkennung mit automatischer Slack-Eskalation (Scheduled Trigger)

**Wann nutzen (Trigger):** Kampagnen-KPIs verändern sich täglich — das Team bemerkt Anomalien oft erst bei der Wochenmeldung, zu spät für reaktives Steuern. (Quelle: sources/10 S-072)
**Strategisches Ziel:** Statistisch signifikante Ausschläge in Performance-Daten täglich automatisch erkennen und sofort intern melden, ohne manuellen Dashboard-Check.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen zeitgesteuerten Anomalie-Erkennungs-Workflow mit schwellenwertbasierter Eskalation.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Integration-Node (Analytics/CRM), AI-Node (Anomalie-Analyse, Structured Output), Condition-Node, Action-Node (Slack)
**Vorgehen (4 Schritte):**
1. Den Scheduled-Trigger auf jeden Werktagmorgen setzen und aktuelle KPI-Daten via Analytics-Integration ziehen.
2. Einen AI-Node die Daten gegen den 7-Tage-Durchschnitt vergleichen lassen und Ausschläge mit festem Structured-Output-Schema (Metrik, Abweichung %, Schwere) identifizieren.
3. Einen Condition-Node nur bei Abweichungen ≥ 20 % eine Slack-Eskalation auslösen lassen — darunter stille Protokollierung.
4. Die Slack-Nachricht mit konkreten Werten, betroffener Kampagne und einem Empfehlungs-Satz befüllen — kein automatisches Steuern der Kampagne.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Performance-Monitoring-Architect. Entwirf einen täglichen Anomalie-Erkennungs-Workflow für Kampagnen-KPIs. Kontext: 7-Tage-Vergleich, Eskalation nur ab 20% Abweichung, keine automatische Kampagnen-Anpassung. Format: Scheduled-Trigger, Analytics-Integration, AI-Node mit Abweichungs-Schema, Condition, Slack-Action."
**Erwartetes Artefakt:** Ein Anomalie-Workflow-Entwurf mit Abweichungs-Schema, Schwellenwert-Definition und Slack-Nachrichten-Template.
**Fallstricke (≥2 spezifisch):**
- Saisonale Schwankungen (z. B. Feiertage) lösen Fehlalarme aus → den Vergleichszeitraum auf gleichartige Wochentage beschränken.
- Jede kleine Abweichung löst Slack-Flut aus → den Condition-Node auf einen klar definierten Schwellenwert halten und ihn dokumentieren.
**Anschluss-Szenario:** S-WF-018

### S-WF-018 Workflow-Fehlerbehandlung und Dead-Letter-Queue-Muster (Manual Trigger)

**Wann nutzen (Trigger):** Ein produktiver Workflow bricht ab, weil ein einzelner API-Call fehlschlägt — ohne Fehlerbehandlung gehen Daten still verloren und das Team merkt es nicht. (Quelle: A-40)
**Strategisches Ziel:** Eine robuste Fehlerbehandlungs-Architektur etablieren, die fehlerhafte Runs sichtbar macht und eine manuelle Nachverarbeitung ermöglicht.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Workflow mit Error-Branch, Dead-Letter-Queue-Muster und Monitoring-Alert.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger), Error-Branch-Logik, Action-Node (Fehler-Protokollierung in Sheets), Action-Node (Slack-Alert), HITL-Node
**Vorgehen (4 Schritte):**
1. Jeden kritischen Action-Node mit einem Error-Branch versehen, der bei Fehler nicht den Workflow abbricht, sondern in einen Fehler-Pfad umleitet.
2. Im Fehler-Pfad einen Action-Node den fehlerhaften Datensatz (Input + Fehlermeldung + Timestamp) in ein Fehler-Protokoll-Sheet schreiben lassen.
3. Einen Slack-Action-Node sofortige Benachrichtigung an den Workflow-Admin auslösen lassen — mit Workflow-Name, Fehlertyp und Link zum Log.
4. Einen HITL-Node am Ende des Fehler-Pfads einplanen, der die manuelle Nachverarbeitung der fehlerhaften Items initiiert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-Reliability-Architect. Entwirf ein Fehlerbehandlungs-Muster für einen produktiven Marketing-Workflow. Kontext: Fehler dürfen nicht still verschwinden, manuelle Nachverarbeitung muss möglich sein. Format: Error-Branch-Architektur, Dead-Letter-Sheet-Action, Slack-Alert-Node, HITL für Nachverarbeitung."
**Erwartetes Artefakt:** Ein Fehlerbehandlungs-Architektur-Entwurf mit Error-Branch-Logik, Log-Schema und Slack-Alert-Template.
**Fallstricke (≥2 spezifisch):**
- Kein Error-Branch an der richtigen Node → Fehler propagieren still und korrumpieren Downstream-Daten; jeden External-Call absichern.
- Das Fehler-Log füllt sich mit Duplikaten, wenn der Workflow zu oft retried → eine Retry-Limit-Regel (max. 2 Versuche) vorab definieren.
**Anschluss-Szenario:** S-WF-019

### S-WF-019 Workflow-Teststrategien vor Produktiv-Rollout (Manual Trigger)

**Wann nutzen (Trigger):** Ein neuer Workflow soll produktiv gesetzt werden — unklar ist, wie man ihn ohne Live-Daten und Kunden-Kontakt sicher testen kann. (Quelle: A-40)
**Strategisches Ziel:** Eine dreistufige Test-Strategie definieren, die Fehler vor dem Produktiv-Betrieb entdeckt und die Akzeptanz im Team stärkt.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für eine strukturierte Workflow-Test-Pipeline mit synthetischen Daten, Dry-Run und Canary-Release.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger für Test-Runs), Structured Output (Output-Validierung), HITL-Node (Canary-Freigabe)
**Vorgehen (4 Schritte):**
1. Phase 1 — Unit-Test: Den Workflow mit synthetischen Eingaben (edge cases: leer, zu lang, Sonderzeichen) manuell ausführen und prüfen, ob jede Node korrekt reagiert.
2. Phase 2 — Dry-Run: Den Workflow mit echten Daten ausführen, aber alle externen Actions (CRM-Update, E-Mail-Versand) auf Mock-Endpunkte umleiten.
3. Phase 3 — Canary-Release: Den Workflow für 5–10 % realer Inputs live schalten und einen HITL-Node die ersten Outputs validieren lassen.
4. Erst nach drei fehlerfreien Canary-Zyklen den Workflow vollständig in Produktion bringen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-QA-Architect. Entwirf eine dreistufige Test-Strategie für einen neuen Marketing-Workflow vor dem Produktiv-Rollout. Kontext: Keine Live-Kunden-Interaktion während der Tests, HITL für Canary-Validierung. Format: Teststufen mit Beschreibung, synthetische Test-Cases, Canary-Kriterien."
**Erwartetes Artefakt:** Eine Workflow-Test-Strategie mit drei Phasen, Beispiel-Test-Cases pro Phase und Canary-Freigabe-Kriterien.
**Fallstricke (≥2 spezifisch):**
- Direkt auf Produktiv-Daten testen → real Kunden-E-Mails oder CRM-Einträge werden ungewollt modifiziert; Mock-Endpunkte sind nicht optional.
- Kein Canary-Release → Fehler treten erst unter voller Last auf; 5 % Canary-Traffic entdeckt Skalierungs-Probleme rechtzeitig.
**Anschluss-Szenario:** S-WF-020

### S-WF-020 Workflow-ROI-Messung und Reporting für den CFO (Scheduled Trigger)

**Wann nutzen (Trigger):** Der CFO fordert einen Quartalsbericht über den Wert der Workflow-Automatisierungen — bislang gibt es keine strukturierte Messmethodik. (Quelle: A-01)
**Strategisches Ziel:** Workflow-Effizienz in CFO-lesbare Kennzahlen übersetzen: eingesparte Zeit, Kostenvermeidung und Output-Qualitäts-Proxy.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen monatlichen ROI-Reporting-Workflow mit automatischer Daten-Aggregation und menschlicher Interpretations-Freigabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Integration-Node (Langdock Usage-Export-API), AI-Node, HITL-Node
**Vorgehen (4 Schritte):**
1. Den Scheduled-Trigger auf Monatsende setzen und via Usage-Export-API die Workflow-Lauf-Anzahl, Token-Verbrauch und Ausführungszeiten ziehen.
2. Einen AI-Node die Rohdaten in drei CFO-KPIs übersetzen lassen: Lohnkosten-Äquivalent (Token-Verbrauch × Stunden-Basis), Time-to-Brief-Reduktion, Output-Volumen-Steigerung.
3. Den Output als Structured-Output-Tabelle erzeugen, die direkt in das Quartalsbericht-Template einpastet werden kann.
4. Einen HITL-Node die Interpretation durch die Marketing-Leitung freigeben lassen, bevor der Report ans CFO-Büro geht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-ROI-Architect. Entwirf einen monatlichen Workflow-ROI-Reporting-Workflow für den CFO. Kontext: Drei KPIs (Lohnkosten-Äquivalent, Time-to-Brief, Output-Volumen), Zahlen aus der Usage-API, Interpretation durch Marketing-Leitung freigegeben. Format: Scheduled-Trigger, Usage-API-Integration, AI-Node mit KPI-Schema, HITL."
**Erwartetes Artefakt:** Ein ROI-Reporting-Workflow-Entwurf mit KPI-Definitions-Schema und einem Quartalsbericht-Template.
**Fallstricke (≥2 spezifisch):**
- Der AI-Node überschätzt Einsparungen durch unrealistische Stunden-Baseline → die Basis-Stundenrate für das Lohnkosten-Äquivalent mit dem CFO vorab abstimmen.
- Usage-API-Daten fehlen für ältere Workflows → historische Daten frühzeitig exportieren und im Reporting-Sheet kumulieren, bevor der erste Bericht fällig ist.
**Anschluss-Szenario:** S-WF-021

### S-WF-021 Batch-Verarbeitung vs. Agenten-Chat-Sandwich — Entscheidungsworkflow (Manual Trigger)

**Wann nutzen (Trigger):** Das Team diskutiert, ob ein neuer Prozess als deterministischer Workflow oder als zwei Agenten im Chat-Dialog aufgebaut werden soll — die Entscheidung ist unklar. (Quelle: A-28 + A-40)
**Strategisches Ziel:** Klare Entscheidungskriterien bereitstellen, die die Wahl zwischen Batch-Workflow und Agent-Chat-Modus auf Basis von Volumen, Determiniertheit und Kostenprofil objektivieren.
**Hands-on Ergebnis:** Eine Entscheidungsmatrix mit Break-even-Analyse und ein Architektur-Entwurf für den empfohlenen Pfad.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Manual-Trigger als Beratungs-Input), AI-Node (Entscheidungsanalyse), Wissensordner (Cost-Engineering-Regeln)
**Vorgehen (3 Schritte):**
1. Die vier Entscheidungsdimensionen prüfen: (a) Volumen >100 Items, (b) identisches Template pro Item, (c) JSON-Output erforderlich, (d) cron-getriggerter Lauf → wenn alle vier JA: Workflow.
2. Wenn mindestens zwei Dimensionen NEIN: Agent-Chat-Sandwich als Prototyp-Phase empfehlen — mit explizitem Hinweis, dass Chat-Sandwich kein Produktionssystem ist.
3. Eine Break-even-Tabelle ausgeben: Workflow amortisiert Setup-Kosten ab ca. 50 Runs/Monat; darunter lohnt sich Agent-Chat.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-vs-Agent-Entscheidungsarchitekt. Analysiere den beschriebenen Prozess und empfehle Workflow oder Agent-Chat-Modus. Kontext: Vier Kriterien (Volumen, Determiniertheit, JSON-Output, Cron), Break-even bei 50 Runs/Monat. Format: Entscheidungsmatrix-Tabelle, Empfehlung mit Begründung, Break-even-Kalkulation."
**Erwartetes Artefakt:** Eine Entscheidungsmatrix mit vier Kriterien, Break-even-Kalkulation und einer begründeten Architektur-Empfehlung.
**Fallstricke (≥2 spezifisch):**
- Das Team baut sofort einen komplexen Workflow für einen Prozess, der nur 5× pro Monat läuft → Setup-Kosten nie amortisiert; Agent-Chat ist hier die richtige Wahl.
- Chat-Sandwich wird als Produktionssystem betrieben → kein Monitoring, keine Fehlerbehandlung, keine Kostenkontrolle; nach Prototyp-Phase in echten Workflow überführen.
**Anschluss-Szenario:** S-WF-022

### S-WF-022 Intent-Signal-Eskalation aus Drittanbieter-Tool per Webhook (Webhook Trigger)

**Wann nutzen (Trigger):** Ein Intent-Daten-Tool meldet einen Aktivitäts-Spike eines Target-Accounts — das Sales-Team soll sofort und kontextuell informiert werden, ohne manuellen Dashboard-Check. (Quelle: sources/10 S-072)
**Strategisches Ziel:** Intent-Signale in Echtzeit in kontextreiche Sales-Empfehlungen übersetzen und über Slack an den zuständigen Account-Executive liefern.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen webhook-getriggerten Intent-Eskalations-Workflow mit Content-Matching und HITL vor der Outreach-Empfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Webhook-Trigger), AI-Node (Intent-Analyse, Wissensordner Content-Bibliothek), Action-Node (Slack), HITL-Node
**Vorgehen (4 Schritte):**
1. Den Webhook-Trigger an den Intent-Daten-Provider koppeln und Account-Name sowie Intent-Themen als Payload übergeben.
2. Einen AI-Node die Intent-Themen gegen den Content-Bibliotheks-Wissensordner matchen lassen und das relevanteste Asset als Empfehlung ausgeben.
3. Einen Condition-Node prüfen lassen, ob der Intent-Spike einen vordefinierten Score-Schwellenwert übersteigt — nur dann Eskalation.
4. Einen HITL-Node dem Account-Executive die Empfehlung vorlegen lassen (Asset + Kontext + vorgeschlagener Outreach-Text) — kein automatischer Versand.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ABM-Workflow-Architekt. Entwirf einen Intent-Signal-Eskalations-Workflow. Kontext: Webhook vom Intent-Tool, Content-Matching gegen Wissensordner, HITL vor Outreach, kein automatischer Kundenkontakt. Format: Webhook-Trigger, AI-Matching-Node, Score-Condition, HITL-Empfehlung, Slack-Action."
**Erwartetes Artefakt:** Ein Intent-Eskalations-Workflow-Entwurf mit Score-Schwellenwert-Regel, Content-Matching-Logik und HITL-Präsentations-Template.
**Fallstricke (≥2 spezifisch):**
- Zu breite Intent-Themen führen zur Empfehlung generischer Assets → den AI-Node anweisen, nur Assets mit thematischer Überlappung ≥ 2 Keywords zu empfehlen.
- Der Workflow feuert für jeden minimalen Intent-Anstieg → den Score-Schwellenwert klar definieren und im Condition-Node dokumentieren.
**Anschluss-Szenario:** S-WF-023

### S-WF-023 Workflow-Chaining — Ausgabe eines Workflows als Trigger des nächsten (Webhook Trigger)

**Wann nutzen (Trigger):** Zwei getrennte Workflows existieren — ein Content-Generierungs-Workflow und ein Distributions-Workflow — und die manuelle Übergabe zwischen beiden kostet Zeit und führt zu Formatierungsfehlern. (Quelle: A-40)
**Strategisches Ziel:** Zwei bestehende Workflows nahtlos verketten, sodass der Output des ersten automatisch den zweiten startet — mit einem HITL-Gate zwischen den Chains.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für eine Workflow-Chain mit Webhook-Übergabe, Structured-Output-Handshake und HITL-Übergangs-Gate.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Webhook-Trigger für Chain-Empfänger), Structured Output (Handshake-Schema), HITL-Node (Übergangs-Gate), Action-Node (HTTP-POST zum nächsten Workflow)
**Vorgehen (4 Schritte):**
1. Den ersten Workflow mit einem finalen Action-Node abschließen, der seinen Output als JSON-Payload per HTTP-POST an die Webhook-URL des zweiten Workflows sendet.
2. Ein Structured-Output-Handshake-Schema definieren, das beide Workflows verbindet: exakte Feldnamen, Typen und Pflichtfelder dokumentieren.
3. Einen HITL-Node zwischen den Chains als optionales Gate einplanen — aktiviert für kritische Übergaben, deaktivierbar für vollständig validierte Pipelines.
4. Im zweiten Workflow einen Validation-Condition-Node vorschalten, der das empfangene Payload gegen das Handshake-Schema prüft — bei Schema-Fehler in den Error-Branch.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-Chaining-Architect. Entwirf eine Verkettung zwischen einem Content-Generierungs- und einem Distributions-Workflow. Kontext: HTTP-POST-Übergabe, JSON-Handshake-Schema, HITL-Gate zwischen den Chains, Schema-Validierung im Empfänger. Format: Chain-Architektur-Entwurf mit Handshake-Schema-Definition."
**Erwartetes Artefakt:** Ein Workflow-Chain-Entwurf mit HTTP-POST-Übergabe-Logik, Handshake-Schema-Vorlage und optionalem HITL-Gate.
**Fallstricke (≥2 spezifisch):**
- Das Handshake-Schema ist undokumentiert → bei Änderung an Workflow 1 bricht Workflow 2 still ab; Schema-Versionierung und Änderungs-Protokoll sind Pflicht.
- Endlosschleifen entstehen, wenn Workflow 2 fälschlicherweise zurück an Workflow 1 postet → jede Chain-Verbindung nur als Einwegrichtung auslegen.
**Anschluss-Szenario:** S-WF-024

### S-WF-024 Workflow-Monitoring und Laufzeit-Observability (Scheduled Trigger)

**Wann nutzen (Trigger):** Produktive Workflows laufen täglich — ohne Monitoring-Routine bemerkt das Team Ausfälle, Latenz-Degradation oder Kostensteigerungen erst im Nachhinein. (Quelle: A-36)
**Strategisches Ziel:** Eine strukturierte Monitoring-Routine für produktive Workflows etablieren, die Laufzeit, Fehlerrate und Kosten-pro-Run regelmäßig sichtbar macht.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen täglichen Monitoring-Workflow, der Laufzeit-Metriken aggregiert und bei SLO-Verletzungen eskaliert.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Scheduled-Trigger), Integration-Node (Langdock Audit-Log-Export), AI-Node (Anomalie-Analyse), Action-Node (Slack-Alert)
**Vorgehen (4 Schritte):**
1. Den Scheduled-Trigger täglich auf einen fixen Zeitpunkt setzen und die Audit-Log-Daten der vergangenen 24 Stunden über die Langdock-API ziehen.
2. Die Logs nach vier Monitoring-Dimensionen auswerten lassen: Laufzeit pro Workflow, Fehlerrate, Token-Kosten-pro-Run, HITL-Genehmigungsrate.
3. Einen Condition-Node SLO-Verletzungen erkennen lassen (z. B. Fehlerrate > 5 % oder Kosten-pro-Run +30 % gegenüber Vorwoche) und bei Verletzung Slack-Alert auslösen.
4. Eine Monitoring-Tabelle im Fehler-Log-Sheet kumulieren, damit Trends über Zeit sichtbar werden — Grundlage für den monatlichen ROI-Report (S-WF-020).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Workflow-Monitoring-Architect. Entwirf einen täglichen Observability-Workflow für produktive Marketing-Workflows. Kontext: Vier SLO-Dimensionen (Laufzeit, Fehlerrate, Kosten, HITL-Rate), Eskalation nur bei Grenzwert-Verletzung. Format: Scheduled-Trigger, Audit-Log-Integration, SLO-Condition, Slack-Alert, kumulatives Log-Sheet."
**Erwartetes Artefakt:** Ein Monitoring-Workflow-Entwurf mit vier SLO-Definitionen, Condition-Schwellenwerten und einem kumulativen Log-Schema.
**Fallstricke (≥2 spezifisch):**
- Der Monitoring-Workflow selbst hat kein Fehler-Monitoring → ein separater manueller Check-in oder externer Uptime-Monitor ist als Backup nötig.
- Zu viele SLO-Dimensionen führen zu Alert-Fatigue → mit vier Kernmetriken starten und erst bei gesicherter Datenbasis erweitern.
**Anschluss-Szenario:** S-WF-025

### S-WF-025 Kampagnen-Brief-Intake per Form-Trigger mit automatischer Routing-Logik (Form Trigger)

**Wann nutzen (Trigger):** Kampagnen-Anfragen aus dem ganzen Unternehmen kommen per E-Mail und Slack ohne Struktur an — das Marketing-Ops-Team verbringt zu viel Zeit mit Rückfragen und manueller Weiterleitung. (Quelle: sources/10 S-094 + 12 Q-111)
**Strategisches Ziel:** Einen strukturierten Intake-Prozess einführen, der jede Anfrage in ein standardisiertes Briefing überführt und automatisch an das richtige Team routet.
**Hands-on Ergebnis:** Ein Architektur-Entwurf für einen Form-getriggerten Intake-Workflow mit KI-Briefing-Ergänzung, Routing-Logik und HITL-Freigabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow (Form-Trigger), AI-Node (Briefing-Ergänzung, Structured Output), Condition-Node (Routing), Action-Node (Notion/Confluence + Slack), HITL-Node
**Vorgehen (4 Schritte):**
1. Den Form-Trigger mit Pflichtfeldern ausstatten: Kampagnentyp, Zielgruppe, Budget-Rahmen, Deadline, Anfragender — strukturierte Eingabe erzwingt Datenqualität.
2. Einen AI-Node fehlende strategische Felder ergänzen lassen (z. B. fehlende KPI-Vorschläge auf Basis des Kampagnentyps) und das komplette Briefing als Structured Output ausgeben.
3. Einen Condition-Node das Briefing nach Ressourcenbedarf klassifizieren lassen: Design → Design-Slack-Kanal, Text → Copy-Kanal, Performance → Media-Kanal.
4. Einen HITL-Node das ergänzte Briefing dem Anfragenden zur Bestätigung vorlegen lassen, bevor es als Notion-Seite angelegt und das Team benachrichtigt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-Ops-Workflow-Architect. Entwirf einen Form-Trigger-Intake-Workflow für Kampagnen-Briefings. Kontext: Pflichtfelder im Form, KI ergänzt fehlende KPIs, Routing nach Ressourcentyp, HITL-Bestätigung vor Notion-Anlage. Format: Form-Trigger mit Feldliste, AI-Briefing-Node, Condition-Routing, HITL, Notion-Action, Slack-Benachrichtigungen."
**Erwartetes Artefakt:** Ein Kampagnen-Intake-Workflow-Entwurf mit Form-Feldliste, KI-Ergänzungs-Logik, Routing-Matrix und HITL-Bestätigungs-Schritt.
**Fallstricke (≥2 spezifisch):**
- Der AI-Node halluziniert unrealistische KPIs, wenn der Kampagnentyp zu generisch ist → den Form-Trigger mit einer kontrollierten Auswahlliste für Kampagnentypen ausstatten.
- Das Briefing wird ohne HITL-Bestätigung direkt an das Team gesendet → den Condition-Node erst nach HITL-Freigabe in die Routing-Actions übergehen lassen.
**Anschluss-Szenario:** S-WF-001

## Hinweise & Quellen-Konflikte

Keine direkten Quellen-Konflikte identifiziert. Die Advisory-Grenze wurde aus den System-Spezifikationen als hartes Paradigma übernommen. Little Data liefert Workflow-Architektur-Entwürfe (Canvas), keine deployten Workflows — die Umsetzung erfolgt durch den Workspace-Admin.
