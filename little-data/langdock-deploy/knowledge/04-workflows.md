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

### S-WF-001 Content-Marketing: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der Content-Marketing-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes E-Book lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Medium rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Medium werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-002

### S-WF-002 Content-Marketing: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Blog-Artikel durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jeden Blog-Artikel durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere Content-Marketing-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-003

### S-WF-003 Content-Marketing: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Whitepapers
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Contentful, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Time-on-Page komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Time-on-Page ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Contentful überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Contentful technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-004

### S-WF-004 Content-Marketing: Classes (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in WordPress, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für E-Books erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen E-Books sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in WordPress vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von WordPress blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-005

### S-WF-005 Content-Marketing: Markt (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer Content-Marketing-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Contentful, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über E-Books, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Time-on-Page messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Contentful weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-006

### S-WF-006 Content-Marketing: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in WordPress, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "WordPress meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Time-on-Page über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-007

### S-WF-007 Content-Marketing: Logs (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Newsletter mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Newsletter zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Medium widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Newsletter gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-008

### S-WF-008 Content-Marketing: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für Content-Marketing streichen. Baue einen Workflow, der diese spezifischen Metriken in Medium überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-009

### S-WF-009 Content-Marketing: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Newsletter vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Newsletter live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus Medium komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-010

### S-WF-010 Content-Marketing: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Medium, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Newsletter in Medium ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Medium nicht abbilden.
**Anschluss-Szenario:** S-WF-011

### S-WF-011 Content-Marketing: Modellen (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Contentful, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Time-on-Page und realen Ergebnissen in Contentful plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Whitepapers von Performance-Daten in Contentful abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-012

### S-WF-012 Content-Marketing: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Contentful, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Time-on-Page gesetzt. Entwirf einen Workflow, der unsere Forecasts in Contentful nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-013

### S-WF-013 Content-Marketing: Expansion (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in WordPress, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Blog-Artikel nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst WordPress damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-014

### S-WF-014 SEO: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der SEO-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Screaming Frog, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Meta-Descriptions lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Screaming Frog rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Screaming Frog werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-015

### S-WF-015 SEO: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Keyword-Cluster durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Search Console, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Keyword-Cluster durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere SEO-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-016

### S-WF-016 SEO: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Landingpages
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Screaming Frog, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Organischer Traffic komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Organischer Traffic ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Screaming Frog überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Screaming Frog technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-017

### S-WF-017 SEO: Classes (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Ahrefs, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Backlink-Profile erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Backlink-Profile sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Ahrefs vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Ahrefs blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-018

### S-WF-018 SEO: Markt (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer SEO-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Ahrefs, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Landingpages, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Organischer Traffic messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Ahrefs weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-019

### S-WF-019 SEO: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Search Console, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Google Search Console meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Organischer Traffic über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-020

### S-WF-020 SEO: Logs (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Search Console, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Keyword-Cluster mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Keyword-Cluster zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Google Search Console widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Keyword-Cluster gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-021

### S-WF-021 SEO: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Search Console, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für SEO streichen. Baue einen Workflow, der diese spezifischen Metriken in Google Search Console überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-022

### S-WF-022 SEO: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Meta-Descriptions vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Ahrefs, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Meta-Descriptions live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus Ahrefs komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-023

### S-WF-023 SEO: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Ahrefs, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Meta-Descriptions in Ahrefs ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Ahrefs nicht abbilden.
**Anschluss-Szenario:** S-WF-024

### S-WF-024 SEO: Modellen (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Search Console, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Organischer Traffic und realen Ergebnissen in Google Search Console plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Landingpages von Performance-Daten in Google Search Console abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-025

### S-WF-025 SEO: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Ahrefs, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Organischer Traffic gesetzt. Entwirf einen Workflow, der unsere Forecasts in Ahrefs nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-026

### S-WF-026 SEO: Expansion (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Screaming Frog, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Keyword-Cluster nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst Screaming Frog damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-027

### S-WF-027 Performance-Marketing: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der Performance-Marketing-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Campaign Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Bidding-Strategien lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus LinkedIn Campaign Manager rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus LinkedIn Campaign Manager werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-028

### S-WF-028 Performance-Marketing: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Creatives durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Campaign Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Creatives durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere Performance-Marketing-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-029

### S-WF-029 Performance-Marketing: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Ad-Copies
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Meta Business Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die ROAS komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die ROAS ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Meta Business Manager überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Meta Business Manager technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-030

### S-WF-030 Performance-Marketing: Classes (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Retargeting-Listen erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Retargeting-Listen sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Google Ads vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Google Ads blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-031

### S-WF-031 Performance-Marketing: Markt (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer Performance-Marketing-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Ad-Copies, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der ROAS messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Google Ads weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-032

### S-WF-032 Performance-Marketing: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Meta Business Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Meta Business Manager meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die ROAS über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-033

### S-WF-033 Performance-Marketing: Logs (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Meta Business Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Retargeting-Listen mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Retargeting-Listen zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Meta Business Manager widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Retargeting-Listen gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-034

### S-WF-034 Performance-Marketing: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für Performance-Marketing streichen. Baue einen Workflow, der diese spezifischen Metriken in Google Ads überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-035

### S-WF-035 Performance-Marketing: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Bidding-Strategien vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Campaign Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Bidding-Strategien live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus LinkedIn Campaign Manager komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-036

### S-WF-036 Performance-Marketing: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Meta Business Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Retargeting-Listen in Meta Business Manager ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Meta Business Manager nicht abbilden.
**Anschluss-Szenario:** S-WF-037

### S-WF-037 Performance-Marketing: Modellen (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Google Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter ROAS und realen Ergebnissen in Google Ads plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Retargeting-Listen von Performance-Daten in Google Ads abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-038

### S-WF-038 Performance-Marketing: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Campaign Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die ROAS gesetzt. Entwirf einen Workflow, der unsere Forecasts in LinkedIn Campaign Manager nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-039

### S-WF-039 Performance-Marketing: Expansion (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Campaign Manager, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Creatives nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst LinkedIn Campaign Manager damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-040

### S-WF-040 Brand-Management: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der Brand-Management-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Brandwatch, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Tone-of-Voice-Dokumente lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Brandwatch rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Brandwatch werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-041

### S-WF-041 Brand-Management: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Tone-of-Voice-Dokumente durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Brandwatch, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Tone-of-Voice-Dokumente durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere Brand-Management-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-042

### S-WF-042 Brand-Management: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Brand-Guidelines
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Brandwatch, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Brand Awareness komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Brand Awareness ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Brandwatch überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Brandwatch technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-043

### S-WF-043 Brand-Management: Classes (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Tone-of-Voice-Dokumente erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Tone-of-Voice-Dokumente sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Figma vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Figma blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-044

### S-WF-044 Brand-Management: Markt (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer Brand-Management-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Frontify, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Tone-of-Voice-Dokumente, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Brand Awareness messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Frontify weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-045

### S-WF-045 Brand-Management: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Figma meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Brand Awareness über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-046

### S-WF-046 Brand-Management: Logs (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Brandwatch, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Brand-Guidelines mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Brand-Guidelines zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Brandwatch widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Brand-Guidelines gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-047

### S-WF-047 Brand-Management: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Frontify, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für Brand-Management streichen. Baue einen Workflow, der diese spezifischen Metriken in Frontify überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-048

### S-WF-048 Brand-Management: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Brand-Guidelines vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Brand-Guidelines live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus Figma komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-049

### S-WF-049 Brand-Management: Prozesses (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Frontify, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Marken-Audits in Frontify ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Frontify nicht abbilden.
**Anschluss-Szenario:** S-WF-050

### S-WF-050 Brand-Management: Modellen (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Brand Awareness und realen Ergebnissen in Figma plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Tone-of-Voice-Dokumente von Performance-Daten in Figma abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-051

### S-WF-051 Brand-Management: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Brand Awareness gesetzt. Entwirf einen Workflow, der unsere Forecasts in Figma nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-052

### S-WF-052 Brand-Management: Expansion (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Figma, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Marken-Audits nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst Figma damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-053

### S-WF-053 Social-Media: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der Social-Media-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Sprout Social, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Community-Guidelines lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Sprout Social rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Sprout Social werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-054

### S-WF-054 Social-Media: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Content-Kalender durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Sprout Social, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Content-Kalender durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere Social-Media-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-055

### S-WF-055 Social-Media: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Content-Kalender
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Engagement-Rate komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Engagement-Rate ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Hootsuite überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Hootsuite technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-056

### S-WF-056 Social-Media: Classes (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Sprout Social, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Content-Kalender erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Content-Kalender sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Sprout Social vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Sprout Social blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-057

### S-WF-057 Social-Media: Markt (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer Social-Media-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Content-Kalender, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Engagement-Rate messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Hootsuite weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-058

### S-WF-058 Social-Media: Triangulation (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Hootsuite meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Engagement-Rate über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-059

### S-WF-059 Social-Media: Logs (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in TikTok Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Content-Kalender mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Content-Kalender zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in TikTok Ads widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Content-Kalender gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-060

### S-WF-060 Social-Media: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Sprout Social, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für Social-Media streichen. Baue einen Workflow, der diese spezifischen Metriken in Sprout Social überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-061

### S-WF-061 Social-Media: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Reel-Skripte vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in TikTok Ads, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Reel-Skripte live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus TikTok Ads komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-062

### S-WF-062 Social-Media: Prozesses (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Reel-Skripte in Hootsuite ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Hootsuite nicht abbilden.
**Anschluss-Szenario:** S-WF-063

### S-WF-063 Social-Media: Modellen (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Engagement-Rate und realen Ergebnissen in Hootsuite plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Reel-Skripte von Performance-Daten in Hootsuite abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-064

### S-WF-064 Social-Media: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Sprout Social, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Engagement-Rate gesetzt. Entwirf einen Workflow, der unsere Forecasts in Sprout Social nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-065

### S-WF-065 Social-Media: Expansion (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Hootsuite, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Reel-Skripte nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst Hootsuite damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-066

### S-WF-066 CRM: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der CRM-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Churn-Präventions-Kampagnen lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus HubSpot rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus HubSpot werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-067

### S-WF-067 CRM: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Churn-Präventions-Kampagnen durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Salesforce, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Churn-Präventions-Kampagnen durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere CRM-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-068

### S-WF-068 CRM: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Churn-Präventions-Kampagnen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Customer Lifetime Value komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Customer Lifetime Value ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in HubSpot überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in HubSpot technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-069

### S-WF-069 CRM: Classes (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Churn-Präventions-Kampagnen erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Churn-Präventions-Kampagnen sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in HubSpot vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von HubSpot blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-070

### S-WF-070 CRM: Markt (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer CRM-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Lead-Scoring-Modelle, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Customer Lifetime Value messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus HubSpot weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-071

### S-WF-071 CRM: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "HubSpot meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Customer Lifetime Value über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-072

### S-WF-072 CRM: Logs (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Marketo, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Lead-Scoring-Modelle mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Lead-Scoring-Modelle zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Marketo widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Lead-Scoring-Modelle gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-073

### S-WF-073 CRM: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Salesforce, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für CRM streichen. Baue einen Workflow, der diese spezifischen Metriken in Salesforce überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-074

### S-WF-074 CRM: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Nurturing-Sequenzen vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Salesforce, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Nurturing-Sequenzen live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus Salesforce komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-075

### S-WF-075 CRM: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Salesforce, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Churn-Präventions-Kampagnen in Salesforce ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Salesforce nicht abbilden.
**Anschluss-Szenario:** S-WF-076

### S-WF-076 CRM: Modellen (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Customer Lifetime Value und realen Ergebnissen in HubSpot plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Nurturing-Sequenzen von Performance-Daten in HubSpot abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-077

### S-WF-077 CRM: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Thomas kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Thomas die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Customer Lifetime Value gesetzt. Entwirf einen Workflow, der unsere Forecasts in HubSpot nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-078

### S-WF-078 CRM: Expansion (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in HubSpot, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Churn-Präventions-Kampagnen nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst HubSpot damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-079

### S-WF-079 ABM: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der ABM-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Demandbase, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Direct-Mail-Kampagnen lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Demandbase rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Demandbase werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-080

### S-WF-080 ABM: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Personalisierte Pitch-Decks durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Personalisierte Pitch-Decks durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere ABM-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-081

### S-WF-081 ABM: Kampagne (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Direct-Mail-Kampagnen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Sales Navigator, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Pipeline-Velocity komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Pipeline-Velocity ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in LinkedIn Sales Navigator überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in LinkedIn Sales Navigator technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-082

### S-WF-082 ABM: Classes (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Demandbase, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Direct-Mail-Kampagnen erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Direct-Mail-Kampagnen sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Demandbase vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Demandbase blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-083

### S-WF-083 ABM: Markt (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer ABM-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Account-Pläne, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Pipeline-Velocity messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus 6sense weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-084

### S-WF-084 ABM: Triangulation (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Sales Navigator, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "LinkedIn Sales Navigator meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Pipeline-Velocity über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-085

### S-WF-085 ABM: Logs (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Account-Pläne mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Account-Pläne zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in 6sense widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Account-Pläne gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-086

### S-WF-086 ABM: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Demandbase, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für ABM streichen. Baue einen Workflow, der diese spezifischen Metriken in Demandbase überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-087

### S-WF-087 ABM: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem Launch-Debrief mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Personalisierte Pitch-Decks vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Personalisierte Pitch-Decks live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus 6sense komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-088

### S-WF-088 ABM: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in LinkedIn Sales Navigator, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Personalisierte Pitch-Decks in LinkedIn Sales Navigator ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in LinkedIn Sales Navigator nicht abbilden.
**Anschluss-Szenario:** S-WF-089

### S-WF-089 ABM: Modellen (via Workflow)

**Wann nutzen (Trigger):** Sarah kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Demandbase, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Pipeline-Velocity und realen Ergebnissen in Demandbase plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Sarah die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Account-Pläne von Performance-Daten in Demandbase abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-090

### S-WF-090 ABM: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Pipeline-Velocity gesetzt. Entwirf einen Workflow, der unsere Forecasts in 6sense nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-091

### S-WF-091 ABM: Expansion (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in 6sense, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Account-Pläne nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst 6sense damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-092

### S-WF-092 PR: Annahmen (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Board-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine gezielte Falsifikation der Annahmen umzusetzen.
**Strategisches Ziel:** die Aufdeckung von Blindflecken in der PR-Strategie durch harte Daten-Widerlegung
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Meltwater, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der dediziert darauf gepromptet ist, Gegenbeweise für die Taktik zu finden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser letztes Pressemitteilungen lief katastrophal. Ich brauche einen Workflow, der die zugrundeliegenden Annahmen nimmt und sie anhand der Daten aus Meltwater rigoros falsifiziert. Wo belügen wir uns selbst?"
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das eingesetzte Modell (z.B. Claude 3.5 Sonnet) ist zu 'höflich' und traut sich nicht, Annahmen hart zu widerlegen.
- Die Daten aus Meltwater werden ohne Normalisierung in den Node gepumpt, was zu Halluzinationen führt.
**Anschluss-Szenario:** S-WF-093

### S-WF-093 PR: Gegenargumente (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Konstruktion der bestmöglichen Gegenargumente umzusetzen.
**Strategisches Ziel:** die proaktive Stärkung von Media-Pitches durch die Antizipation der härtesten Kritikpunkte von Stakeholdern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Loop, der jedes Media-Pitches durch einen 'Kritiker-AI-Node' schleust, bevor es an den HITL-Node geht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Sales-Team zerreißt unsere PR-Kampagnen in der Luft. Entwirf einen Workflow, der unsere Entwürfe nimmt und das fundierteste Gegenargument dagegen formuliert."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der Kritiker-Node verrennt sich in theoretischen Edge-Cases, die für die Zielgruppe irrelevant sind.
- Der Workflow blockiert die Produktion vollständig, weil der HITL-Node durch die ständige Kritik überlastet wird.
**Anschluss-Szenario:** S-WF-094

### S-WF-094 PR: Kampagne (via Workflow)

**Wann nutzen (Trigger):** David kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen eine Pre-Mortem-Analyse der anstehenden Kampagne umzusetzen.
**Strategisches Ziel:** die absolute Fehlerprävention und Risiko-Minimierung bei der Publikation von Pressemitteilungen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Pressetext, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere ein simuliertes 'Worst-Case-Szenario', bei dem AI-Nodes rückwärts analysieren, warum die Share of Voice komplett eingebrochen ist.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um David die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, wir stehen in sechs Monaten da und die Share of Voice ist um 80% eingebrochen. Baue einen Workflow, der unsere aktuellen Parameter in Pressetext überwacht und uns vor diesem Crash warnt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die im Pre-Mortem definierten Warn-Schwellen sind in Pressetext technisch nicht in Echtzeit messbar.
- Der Workflow schlägt zu oft falschen Alarm (False Positives), wodurch das Team ihn irgendwann ignoriert.
**Anschluss-Szenario:** S-WF-095

### S-WF-095 PR: Classes (via Workflow)

**Wann nutzen (Trigger):** Anna kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Generierung radikal unterschiedlicher Contrast Classes umzusetzen.
**Strategisches Ziel:** die Vermeidung von Optimierungs-Stillstand durch den parallelen Test drastisch abweichender Ansätze
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere eine Verzweigung in drei AI-Nodes, die bewusst gegensätzliche Tone-of-Voice Vorgaben für Pressemitteilungen erhalten.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Anna die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere aktuellen Pressemitteilungen sind langweilig. Ich brauche einen Workflow, der nicht nur leichte Variationen erstellt, sondern drei völlig unterschiedliche, radikale Classes generiert und diese in Cision vorbereitet."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Contrast Classes verletzen aus Versehen die harten Brand-Safety-Richtlinien des Unternehmens.
- Die API von Cision blockiert den parallelen Upload aufgrund von Rate-Limits in der Schleife.
**Anschluss-Szenario:** S-WF-096

### S-WF-096 PR: Markt (via Workflow)

**Wann nutzen (Trigger):** Felix kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Anpassung unserer Basis-Annahmen an den Markt umzusetzen.
**Strategisches Ziel:** die intelligente Kalibrierung unserer PR-Taktiken beim Eintritt in ein völlig neues Marktsegment
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node, der die Gewichtung zwischen dem Vorwissen und den Live-Daten dynamisch anpasst.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Felix die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben starke Annahmen über Media-Pitches, aber kaum Live-Daten. Baue einen Workflow, der unsere Annahmen automatisch anpasst, sobald eine signifikante Änderung der Share of Voice messbar ist."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das System reagiert zu nervös auf initiale Daten-Ausreißer und vergisst den soliden Prior zu schnell.
- Das Format der Live-Daten aus Cision weicht ab, wodurch der AI-Node in einen Endlos-Fehler läuft.
**Anschluss-Szenario:** S-WF-097

### S-WF-097 PR: Triangulation (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Validierung der Performance durch Source Triangulation umzusetzen.
**Strategisches Ziel:** die Eliminierung von Plattform-Bias durch den Abgleich von mindestens drei unabhängigen Datenpunkten
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Pressetext, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere drei parallele Triggers, deren Outputs in einem zentralen AI-Node auf Diskrepanzen geprüft werden.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Pressetext meldet fantastische Zahlen, aber ich traue dem nicht. Setze einen Workflow auf, der die Share of Voice über Source Triangulation aus drei Tools zieht und mir einen Report ausgibt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die Zeitstempel der Plattformen sind asynchron, was der Node als inhaltliche Diskrepanz interpretiert.
- Eines der Systeme liefert die Daten nicht als JSON, wodurch der strukturierte Parsing-Node fehlschlägt.
**Anschluss-Szenario:** S-WF-098

### S-WF-098 PR: Logs (via Workflow)

**Wann nutzen (Trigger):** Elena kommt direkt aus dem Q3-Review mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Etablierung eines automatisierten Contradiction Logs umzusetzen.
**Strategisches Ziel:** das systematische Aufspüren von inhaltlichen Widersprüchen über hunderte von Dokumenten hinweg
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Scheduled-Trigger, der wöchentlich die neuen Krisen-Kommunikations-Pläne mit historischen Daten vergleicht und flaggt.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Elena die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Entwirf einen Workflow, der jede Woche alle neuen Krisen-Kommunikations-Pläne zieht und ein Contradiction Log erstellt, in dem jede Aussage gelistet wird, die unseren alten Guidelines in Cision widerspricht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Das Kontextfenster des Modells läuft über, wenn zu viele historische Krisen-Kommunikations-Pläne gleichzeitig geladen werden.
- Der AI-Node versteht branchenübliche rhetorische Übertreibungen nicht und flaggt sie als Widerspruch.
**Anschluss-Szenario:** S-WF-099

### S-WF-099 PR: Kriterien (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Überwachung der 'Change My Mind' Kriterien umzusetzen.
**Strategisches Ziel:** die emotionale Entkopplung von einer scheiternden Strategie durch definierte Abbruchkriterien
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Logic-Node mit extrem klaren If/Then-Bedingungen, der den Workflow stoppt, sobald Kriterien erfüllt sind.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir haben uns auf harte Kriterien geeinigt, unter welchen Umständen wir das Budget für PR streichen. Baue einen Workflow, der diese spezifischen Metriken in Cision überwacht und den Not-Stopp auslöst."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die definierten Abbruchkriterien wurden im Prompt zu vage formuliert, sodass der Workflow nicht entscheidet.
- Der Not-Stopp löst aus, aber es wurde kein nachgelagerter Action-Node definiert, wodurch Kampagnen ruhen.
**Anschluss-Szenario:** S-WF-100

### S-WF-100 PR: Kampagnen (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen ein vollautomatisierter Red-Team-Angriff auf Kampagnen umzusetzen.
**Strategisches Ziel:** die gnadenlose Aufdeckung von konzeptionellen Schwächen in unseren Pressemitteilungen vor der Freigabe
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node mit einer explizit antagonistischen Persona, der versucht, das Konzept zu zerstören.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Bevor wir die Pressemitteilungen live schalten, entwirf einen Workflow, bei dem ein LLM als aggressivster Konkurrent agiert und den Entwurf aus Cision komplett als JSON-Audit zerpflückt."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der 'bösartige' Prompt verstößt gegen die Safety-Filter des Providers, wodurch die Node blockiert wird.
- Die generierte Kritik ist zwar aggressiv, aber inhaltlich leider zu generisch, um daraus Verbesserungen abzuleiten.
**Anschluss-Szenario:** S-WF-101

### S-WF-101 PR: Prozesses (via Workflow)

**Wann nutzen (Trigger):** Marcus kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Reduktion des aufgeblähten Prozesses umzusetzen.
**Strategisches Ziel:** die radikale Vereinfachung des Tech-Stacks durch Eliminierung historisch gewachsener Konventionen
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Analyse-Node, der den aktuellen Prozess auf seine logischen Grundannahmen herunterbricht.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Marcus die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Setup für Pressemitteilungen in Cision ist ein Monster geworden. Ich brauche einen Workflow, der den Prozess analysiert, auf First-Principles reduziert und einen neuen Node-Plan entwirft."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Durch extreme Reduktion auf First-Principles werden rechtliche Compliance-Schritte versehentlich entfernt.
- Das Architektur-Dokument ist zu theoretisch und lässt sich mit den Triggern in Cision nicht abbilden.
**Anschluss-Szenario:** S-WF-102

### S-WF-102 PR: Modellen (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus der Krisen-Sitzung mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Messung der Assumption Decay Rate in Modellen umzusetzen.
**Strategisches Ziel:** die automatisierte Erkennung, wann historische Personas und Daten an Vorhersagekraft verlieren
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Pressetext, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen Tracking-Loop, der die Diskrepanz zwischen prognostizierter Share of Voice und realen Ergebnissen in Pressetext plottet.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Setze einen Workflow auf, der die 'Assumption Decay Rate' misst – also wie stark alte Annahmen zu Pressemitteilungen von Performance-Daten in Pressetext abweichen."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Der AI-Node kann saisonale Schwankungen nicht von einem tatsächlichen Zerfall (Decay) unterscheiden.
- Die Basis-Daten sind in einem unstrukturierten Format abgelegt, das der Workflow nicht sauber parsen kann.
**Anschluss-Szenario:** S-WF-103

### S-WF-103 PR: Base-rate (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus einem Strategie-Offsite mit dem klaren Auftrag, nach den jüngsten Ergebnissen der harte Abgleich unserer Prognosen mit der Base-Rate umzusetzen.
**Strategisches Ziel:** die Kalibrierung von überzogenen Erwartungshaltungen durch harte Industrie-Benchmarks
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Pressetext, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen API-Action-Node, der Benchmark-Datenbanken abfragt, gekoppelt mit einem AI-Node.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Das Management hat völlig unrealistische Ziele für die Share of Voice gesetzt. Entwirf einen Workflow, der unsere Forecasts in Pressetext nimmt und sie schonungslos mit der historischen Base-Rate abgleicht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die extern bezogenen Base-Rate-Daten sind für unsere spezifische Nische nicht relevant genug.
- Das Management ignoriert die kalibrierten Daten, weil die Quelle im Output nicht transparent genug ist.
**Anschluss-Szenario:** S-WF-104

### S-WF-104 PR: Expansion (via Workflow)

**Wann nutzen (Trigger):** Julia kommt direkt aus dem wöchentlichen All-Hands mit dem klaren Auftrag, nach den jüngsten Ergebnissen die Erweiterung der Beobachtung durch Query Expansion umzusetzen.
**Strategisches Ziel:** die Entdeckung von Hidden-Insights durch das gezielte Umgehen von Standard-Suchmustern
**Hands-on Ergebnis:** Ein deterministischer, produktionsbereiter Langdock-Workflow, inklusive dokumentiertem JSON-Schema für die Datenübergabe.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Architektur-Beratung
**Vorgehen (3-5 Schritte):**
1. Identifiziere den präzisen Trigger-Moment in Cision, um den Workflow ohne manuelle Verzögerung zu starten.
2. Implementiere einen AI-Node, der den Suchbegriff systematisch mit kontraintuitiven Parametern anreichert.
3. Definiere ein striktes JSON-Schema für den Output, sodass die Erkenntnisse direkt in ein Dashboard oder CRM zurückgespielt werden können.
4. Integriere zwingend einen HITL-Node (Human-in-the-Loop), um Julia die finale strategische Freigabe zu ermöglichen.
5. Setze Warn-Schwellen (Cost-Engineering), damit der automatisierte Prozess bei hohem Datenvolumen nicht das Workspace-Budget sprengt.
**Beispiel-Prompt (DE, PTCF):**
> "Baue einen Workflow, der unseren initialen Prompt für Krisen-Kommunikations-Pläne nimmt, ihn durch Adversarial Query Expansion verfremdet und dann erst Cision damit durchsucht."
**Erwartetes Artefakt:** Ein detailliertes Workflow-Architektur-Dokument (Markdown), das alle Nodes, Triggers und Logic-Verzweigungen spezifiziert.
**Fallstricke (mind. 2 spezifisch):**
- Die verfremdeten Suchanfragen sind so paradox, dass die angebundene API nur Error-Codes zurückgibt.
- Die gefundenen 'Hidden-Insights' sind oft nur Artefakte von schlecht gepflegten Datenbanken der Konkurrenz.
**Anschluss-Szenario:** S-WF-001

## Hinweise & Quellen-Konflikte

Keine direkten Quellen-Konflikte identifiziert. Die Advisory-Grenze wurde aus den System-Spezifikationen als hartes Paradigma übernommen.
