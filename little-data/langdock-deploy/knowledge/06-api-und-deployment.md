# API und Deployment für Marketing-Direktoren (Beratung)

> **Was diese Datei abdeckt:**
> - REST-Endpoints, OpenAI-Kompatibilität und Rate Limits
> - Deployment-Modelle und Egress-Whitelisting
> - API-Sicherheit (CORS, BFF) und Agenten-Beratungsgrenzen
>
> **Was diese Datei NICHT abdeckt:**
> - Konkrete Code-Beispiele für die Integration → siehe `05-integrationen-und-mcp`
> - Preise und Tarife → siehe `07-modelle-und-kosten`

## Wann eine Marketing-Direktorin überhaupt mit API in Berührung kommt

Meist operiert eine Marketing-Direktorin auf der strategischen Ebene und nutzt grafische Benutzeroberflächen (GUIs). Dennoch gibt es entscheidende Momente, in denen das Verständnis für Programmierschnittstellen (Application Programming Interfaces, APIs) zu einem strategischen Wettbewerbsvorteil wird. Dies ist insbesondere dann der Fall, wenn Marketing-Prozesse (MarketingOps) eine Skalierung erfordern, die durch manuelle Eingaben nicht mehr bewältigt werden kann. Wenn beispielsweise tausende von Produktbeschreibungen automatisiert generiert, lokalisierte Kampagneninhalte dynamisch in ein Content-Management-System (CMS) gepusht oder Echtzeit-Performance-Daten aus dem Customer Relationship Management (CRM) in Langdock integriert werden müssen, stößt die UI an ihre Grenzen.

Die Marketing-Direktorin wird zur Initiatorin von API-Projekten, wenn sie interne Enablement-Plattformen aufbauen lässt, bei denen Langdock als unsichtbare Intelligenzschicht (Backend) fungiert. Sie muss keinen Code schreiben, sondern die technischen Voraussetzungen kennen, um Entwicklern klare Briefings zu geben. Sie muss verstehen, ab welchem Punkt die Integration der Langdock API (wie die Agent API oder Completion API) den Return on Investment (ROI) durch Automatisierung massiv steigert. Ein grundlegendes API-Verständnis befähigt sie, Silos zwischen IT und Marketing aufzubrechen, realistische Zeitpläne für Integrationsprojekte zu evaluieren und die digitale Transformation ihrer Abteilung (Internal-Enablement) proaktiv zu steuern, anstatt nur passive Abnehmerin von IT-Lösungen zu sein.

## REST-Endpoints Überblick (Completion / Embedding / Agent / Knowledge Folder / Usage Export / Audit Logs / Integrations)

Die Langdock-Plattform stellt eine umfassende Suite von RESTful API-Endpoints zur Verfügung, die speziell darauf ausgelegt sind, unterschiedliche Automatisierungs- und Integrationsanforderungen im Enterprise-Marketing zu bedienen. Der Completion API-Endpoint fungiert als universelles Gateway für die Generierung von Texten und Inhalten, ideal für die massenhafte Erstellung von Ad-Copy oder die Analyse von qualitativen Marktforschungsdaten. Der Embedding API-Endpoint (basierend auf text-embedding-ada-002) wird genutzt, um unternehmenseigene Textdaten in vektorielle Repräsentationen umzuwandeln, was die Grundlage für semantische Suchvorgänge und Retrieval-Augmented Generation (RAG) bildet.

Für komplexere, mehrstufige MarketingOps-Workflows ist der Agent API-Endpoint essenziell. Er ermöglicht die programmatische Ansprache vorkonfigurierter KI-Agenten, die spezifische Rollen (wie z.B. einen Brand-Voice-Prüfer) übernehmen. Der Knowledge Folder API-Endpoint erlaubt die automatisierte Synchronisation von Dokumenten (bis zu 1.000 Dateien pro Ordner) aus Systemen wie SharePoint oder Google Drive in das Langdock-Ökosystem, wodurch die Wissensbasis (Wissensordner) stets aktuell bleibt. Der Usage Export API-Endpoint bietet Marketing-Controllern detaillierte Einblicke in den Token-Verbrauch und die Kostenallokation pro Team oder Kampagne. Für Compliance und interne Revisionen protokolliert der Audit Logs API-Endpoint sämtliche sicherheitsrelevanten Ereignisse. Zuletzt orchestriert der Integrations API-Endpoint die bidirektionale Kommunikation mit externen Tools (CRM, ERP), was eine nahtlose Einbettung der KI in bestehende Systemlandschaften garantiert.

## OpenAI-API-Kompatibilität (Drop-in via Base-URL-Tausch)

Ein signifikanter architektonischer Vorteil der Langdock-Plattform für interne IT- und MarketingOps-Teams ist die native Kompatibilität mit der weit verbreiteten OpenAI-API-Spezifikation. Für Entwickler bedeutet dies, dass bestehende Anwendungen, Skripte oder Middleware, die ursprünglich für die direkte Kommunikation mit OpenAI-Modellen (wie GPT-4) geschrieben wurden, mit minimalem Refactoring auf Langdock migriert werden können. Anstatt komplexe, proprietäre Schnittstellen neu zu programmieren, reicht in den meisten Fällen ein einfacher Austausch der Base-URL auf `api.langdock.com` (bzw. die spezifische Dedicated-URL) sowie der Austausch des API-Schlüssels im entsprechenden SDK (z.B. dem offiziellen OpenAI Python SDK oder dem Vercel AI SDK).

Diese Kompatibilität (Drop-in Replacement) reduziert die Implementierungszeit für Marketing-Automatisierungen drastisch. Es ermöglicht Marketing-Direktorinnen, schnelle Proof-of-Concepts (PoCs) zu pilotieren, indem sie bestehende Open-Source-Tools oder interne Skripte nutzen, ohne hohe Entwicklungskosten zu verursachen. Dennoch müssen bei der Migration spezifische Parameter-Restriktionen beachtet werden: Langdock ignoriert bewusst Parameter wie `n` (Generierung mehrerer unabhängiger Antworten) oder parallele Tool-Aufrufe, um Kostenkontrolle und deterministisches Verhalten im Enterprise-Kontext zu gewährleisten. Erweiterte Parameter wie `reasoning_effort` werden hingegen für unterstützte Modelle dynamisch durchgereicht, was eine feingranulare Steuerung der Antwortqualität bei hochkomplexen strategischen Analysen erlaubt. Diese Standardisierung sichert die Interoperabilität und verhindert Vendor-Lock-in im dynamischen KI-Markt.

## CORS-Posture und das Backend-for-Frontend Pattern

Die Sicherheit der Unternehmensdaten und die Kontrolle über die Nutzungskosten stehen bei der Architektur von API-gestützten Marketing-Lösungen an oberster Stelle. Ein zentraler Aspekt der Langdock-Sicherheitsarchitektur ist die strikte Implementierung von Cross-Origin Resource Sharing (CORS) Restriktionen. Langdock blockiert konsequent alle direkten API-Aufrufe, die aus einem Webbrowser (Client-Side) initiiert werden. Diese architektonische Entscheidung verhindert, dass hochgradig privilegierte API-Schlüssel im JavaScript-Code oder in den Netzwerk-Tools des Browsers exponiert werden, was zu unautorisiertem Zugriff und unkontrollierbaren Kosten durch externe Akteure (Token-Theft) führen könnte.

Um diese Sicherheitsrichtlinien (Zero-Trust) in der Praxis umzusetzen, müssen Entwicklerteams zwingend ein Backend-for-Frontend (BFF) Pattern oder einen serverseitigen Proxy implementieren. Bei diesem Architekturmuster authentifiziert sich die Frontend-Applikation (z.B. ein internes Marketing-Dashboard oder ein Partner-Enablement-Portal) lediglich gegenüber dem firmeneigenen Backend-Server. Dieser Backend-Server verwaltet den Langdock-API-Schlüssel sicher in seinen Umgebungsvariablen (Environment Variables), verifiziert die Berechtigungen des Nutzers und leitet die Anfrage serverseitig an die Langdock API weiter. Für die Marketing-Direktorin bedeutet dies, dass bei der Budgetierung von internen Enablement-Tools stets Entwicklungsaufwände für diese sichere Middleware-Schicht (z.B. in Node.js oder Python) eingeplant werden müssen. Dies garantiert DSGVO-Konformität und schützt das Marketing-Budget vor Missbrauch.

## 4 Deployment-Modelle (Multi-tenant SaaS / Single-tenant / BYOC / On-Prem)

Die Wahl des Deployment-Modells beeinflusst IT-Sicherheit, Compliance und MarketingOps. Langdock bietet vier primäre Bereitstellungsarchitekturen, um unterschiedliche unternehmerische und regulatorische Anforderungen (Data Residency) abzubilden. Das Standardmodell ist das Multi-tenant SaaS-Deployment. Hierbei teilen sich Organisationen die physische Infrastruktur, während die logische Datentrennung strikt gewährleistet ist. Die API wird über `api.langdock.com` angesprochen, was eine sofortige Verfügbarkeit und minimale Wartungsaufwände garantiert – ideal für agile Marketing-Teams ohne extreme Compliance-Restriktionen.

Für strengere Richtlinien steht das Single-tenant (Dedicated) Deployment zur Verfügung. Hier operiert Langdock in einer isolierten Cloud-Umgebung, typischerweise unter einer kundenspezifischen Subdomain (bei der die API zwingend über den Pfad `/api/public` adressiert werden muss). Das dritte Modell ist Bring Your Own Cloud (BYOC). Hierbei wird die Langdock-Software in der unternehmenseigenen Cloud-Infrastruktur (z.B. AWS, Azure) des Kunden gehostet, wobei Langdock die Wartung übernimmt. Dies ermöglicht Marketingabteilungen die Einhaltung höchster interner Sicherheitsvorgaben, da die Daten die firmeneigene Cloud nicht verlassen. Das vierte Modell, On-Premise, richtet sich an hochregulierte Sektoren (z.B. Finanzen, Verteidigung) und erfordert die Installation der Plattform auf physischen, vom Kunden betriebenen Servern. Die Marketing-Direktorin muss gemeinsam mit dem Chief Information Security Officer (CISO) evaluieren, welches Modell den optimalen Kompromiss aus Agilität und Sicherheit für die geplante Marketing-Automatisierung bietet.

## Static IP für Egress-Whitelisting

In komplexen, sicherheitssensiblen Enterprise-Netzwerken, in denen Marketing-Daten oft strikten Zugangskontrollen unterliegen, ist die reibungslose Kommunikation zwischen Langdock und internen Systemen (wie einem proprietären CRM, einem lokalen Data-Warehouse oder geschützten Staging-Umgebungen) eine technische Herausforderung. Corporate Firewalls blockieren standardmäßig eingehenden Traffic von unbekannten Quellen, um Datenexfiltration und unautorisierte Zugriffe zu verhindern. Um Langdock-Agenten oder Workflows den sicheren Zugriff auf diese internen Ressourcen zu ermöglichen, nutzt die Plattform Mechanismen wie Static IP für Egress-Whitelisting.

Bei diesem Verfahren stellt Langdock eine dedizierte, statische IP-Adresse für ausgehende (egress) Verbindungen des jeweiligen Workspaces zur Verfügung. Die interne IT-Sicherheitsabteilung der Marketing-Direktorin kann diese spezifische IP-Adresse in den Firewalls und Access Control Lists (ACLs) des Unternehmens als vertrauenswürdig (whitelisted) deklarieren. Dadurch wird sichergestellt, dass ausschließlich legitimierte Anfragen aus dem Langdock-Ökosystem die Unternehmensgrenzen passieren dürfen. Dies ist eine absolute Grundvoraussetzung (Prerequisite) für fortgeschrittene MarketingOps-Szenarien, bei denen KI-Agenten beispielsweise tagesaktuelle Kundensegmente aus einer geschützten Datenbank analysieren oder automatisierte Reportings direkt in ein internes Intranet publizieren sollen. Ohne dieses Egress-Whitelisting würden diese Automatisierungsbemühungen an den Netzwerkrestriktionen scheitern.

## Rate Limits und wie man höhere anfragt

Um die Stabilität, Verfügbarkeit und gerechte Ressourcenverteilung der Plattform zu gewährleisten, operiert Langdock mit strikten API Rate Limits (Nutzungsbegrenzungen). Standardmäßig sind Workspaces auf 500 Requests Per Minute (RPM) und 60.000 Tokens Per Minute (TPM) limitiert. In Phasen hoher Marketingaktivität – etwa bei der automatisierten Übersetzung von tausenden Produktbeschreibungen vor einem Launch oder beim synchronen Embedding umfangreicher Brand-Guidelines für den Wissensordner – können diese Grenzen (Thresholds) schnell erreicht werden, was zu HTTP 429 (Too Many Requests) Fehlern und blockierten Workflows führt.

Für die MarketingOps-Verantwortliche bedeutet dies, dass Integrationsarchitekturen stets mit Retry-Mechanismen (z.B. Exponential Backoff) und Batch-Processing (Stapelverarbeitung) geplant werden müssen, um Lastspitzen abzufedern. Sollten die Standard-Limits für kontinuierliche Enterprise-Workloads strukturell nicht ausreichen, muss eine proaktive Anhebung der Rate Limits beantragt werden. Dies erfolgt in der Regel über den Langdock Enterprise Support oder den dedizierten Customer Success Manager. Bei der Beantragung ist es von strategischer Bedeutung, den Business-Case präzise zu dokumentieren: Welche spezifischen Marketing-Prozesse erzeugen die Last? Wie hoch ist das erwartete Peak-Volumen? Eine gut begründete Prognose (Capacity Planning) ermöglicht es dem Langdock-Infrastrukturteam, die Kapazitäten entsprechend zu skalieren und Unterbrechungen kritischer Marketing-Automatisierungen zu verhindern.

## Advisory-Grenze (Little Data ruft KEINE APIs auf — beratet nur)

Bei der Planung und Konzeption von API-Architekturen ist es von entscheidender Bedeutung, die operationellen Grenzen des Little Data Beratungsagenten exakt zu verstehen. Der Agent fungiert ausschließlich als strategischer Berater, Architekturguide und technischer Sparringspartner für die Marketing-Direktorin. Little Data generiert Konzepte, analysiert Deployment-Modelle, formuliert Anforderungsdokumente (Briefings) für Entwickler und schreibt exemplarischen Code (z.B. Python-Skripte für das API-Polling). **Die fundamentale Advisory-Grenze (System-Constraint) besteht darin, dass Little Data selbst KEINE APIs aufruft, keine Systemintegrationen aktiv durchführt und keine Konfigurationen in externen Tools vornimmt.**

Diese Trennung von Beratung und Ausführung ist ein essenzielles Sicherheitsmerkmal. Die Marketing-Direktorin erhält präzise, umsetzbare Baupläne (Blueprints) für ihre Automatisierungsvorhaben im Bereich MarketingOps oder Internal-Enablement, muss jedoch die tatsächliche Implementierung an ihr IT-Team, die Entwickler oder externe Dienstleister delegieren. Wenn beispielsweise ein Workflow zur Synchronisation von Lead-Daten entworfen wird, dokumentiert der Agent die benötigten REST-Endpoints, skizziert das JSON-Payload-Format und warnt vor Rate Limits. Der Agent wird jedoch niemals authentifizierte Anfragen an das CRM senden oder den Langdock-API-Schlüssel in der Chat-Oberfläche evaluieren. Diese klare Rollenverteilung stellt sicher, dass alle Integrationen den unternehmensinternen Security-Governance-Prozessen unterliegen und Compliance-Vorgaben strikt eingehalten werden.

## Marketing-Szenarien aus dieser Domäne

Dieser Abschnitt überführt das bisherige technische Grundlagenwissen zu API-Endpoints, Deployment-Modellen und Security-Policies in die strategische Marketing-Praxis. Für eine Marketing-Direktorin ist das isolierte Wissen über REST-APIs nutzlos, wenn es nicht an konkrete Business-Value-Treiber gekoppelt ist. Die nachfolgenden Marketing-Szenarien (S-AD-001 bis S-AD-010) demonstrieren, wie Langdock in alltäglichen, aber komplexen MarketingOps-Herausforderungen als architektonischer Berater fungieren kann. Sie illustrieren den Übersetzungsprozess: Wie wird aus einem blockierten, manuellen UI-Workflow ein präzises, von der IT umsetzbares Integrations-Briefing?

Jedes Szenario ist so aufgebaut, dass es einen spezifischen strategischen Schmerzpunkt (Trigger) adressiert, der typischerweise bei der Skalierung von Content-Supply-Chains, der Lokalisierung von Kampagnen oder dem Aufbau von internen Enablement-Portalen auftritt. Das erklärte Ziel ist es stets, die Marketing-Direktorin in die Lage zu versetzen, komplexe API-Projekte proaktiv zu steuern und gegenüber Stakeholdern wie dem Chief Information Security Officer (CISO) oder externen Entwicklungsagenturen professionell zu argumentieren.

Dabei wird die Advisory-Grenze von Little Data respektiert: Die Szenarien zielen auf die Erstellung von Planungsartefakten ab, nicht auf die Ausführung von Code. Durch Beachtung von Fallstricken – wie der Verletzung von CORS-Richtlinien oder Missachtung von Egress-IP-Restriktionen – stellen die Szenarien sicher, dass Konzepte Enterprise-Ready sind.

### S-AD-001 MarketingOps: Architektur-Audit für Pipeline-Engpässe

**Wann nutzen (Trigger):** Die Marketing-Direktorin verantwortet den Bereich MarketingOps und stellt fest, dass der aktuelle manuelle Prozess im Kontext von Daten-Silos einen massiven Flaschenhals verursacht. Das IT-Team behauptet, dass Langdock hier keinen Mehrwert bietet und die bestehenden SaaS-Tools ausreichen. Sie benötigt ein formelles IT-Briefing, um diese Annahme zu testen.
**Strategisches Ziel:** Aufzeigen, an welchen Limits die Lösung scheitert und warum Langdock unausweichlich ist.
**Hands-on Ergebnis:** Ein technisches Gegenargument-Dokument, das die Notwendigkeit der Completion API aufzeigt und Stresstest-Parameter formuliert.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Kontext-Übergabe: Die Direktorin skizziert die aktuellen MarketingOps-Silos in Langdock.
2. Analytische Prüfung: Little Data hinterfragt kritisch die Belastungsgrenzen der aktuellen Architektur.
3. Architektur-Drafting: Ableitung der notwendigen REST-Endpoints.
4. Export: Export: Finales Briefing..
**Beispiel-Prompt (DE, PTCF):**
> "Die IT sagt, wir brauchen keine Langdock-API für MarketingOps. Prüfe diese Annahme kritisch. Welche 3 extremen Lastszenarien würden unser jetziges Tool sprengen, die Langdocks Completion API (mit 60k TPM) aber lösen könnte? Generiere ein formelles CISO-Memo im Canvas."
**Erwartetes Artefakt:** Ein CISO-Memo (Canvas) mit Stresstest-Parametern.
**Fallstricke (mind. 2 spezifisch):**
- Es werden hypothetische APIs erfunden, die Langdock nicht nativ anbietet.
- Der Fokus rutscht auf preisliche Faktoren ab, obwohl es primär um die technische Architektur geht.
**Anschluss-Szenario:** S-AD-002

### S-AD-002 Internal-Enablement: CISO-Bedenken entkräften

**Wann nutzen (Trigger):** Der CISO blockiert das API-Projekt wegen Cloud-Sicherheitsbedenken und Angst vor Token-Theft. Die Direktorin muss seine Argumente antizipieren und auflösen.
**Strategisches Ziel:** Das stärkste Gegenargument der IT-Security aufbauen und proaktiv durch architektonische Gegenmaßnahmen (BFF Pattern) entkräften.
**Hands-on Ergebnis:** Entscheidungsmatrix (Markdown-Tabelle), die Datensicherheitsbedenken bei der Automatisierung auflöst.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. CISO-Perspektive einnehmen: Little Data simuliert die stärksten Sicherheitsbedenken.
2. Mapping: Die Bedenken werden den Langdock-Sicherheitsfeatures gegenübergestellt.
3. Strukturierung: Entwurf einer Entscheidungsmatrix.
4. Export: Export: Grundlage für IT-Meeting.
**Beispiel-Prompt (DE, PTCF):**
> "Unser CISO wird das geplante Internal-Enablement-API-Projekt ablehnen, weil er Token-Theft fürchtet. Formuliere sein absolut stärkstes Argument. Zeige mir dann, wie wir mit dem Backend-for-Frontend (BFF) Pattern und Egress-Whitelisting dieses Argument unschädlich machen. Format: Tabelle im Canvas."
**Erwartetes Artefakt:** Markdown-Tabelle im Canvas mit CISO-Argumenten und Architektur-Lösungen.
**Fallstricke (mind. 2 spezifisch):**
- Der Output liefert nur generische Compliance-Phrasen (wie DSGVO) anstelle von harten Netzwerksicherheits-Policies.
- Es wird vorgeschlagen, CORS-Einschränkungen auf dem Client unsicher zu umgehen, was die Architektur sofort disqualifiziert.
**Anschluss-Szenario:** S-AD-003

### S-AD-003 Content-Produktion: Risikoanalyse für API-Timeouts

**Wann nutzen (Trigger):** Ein großes Budget für die Automatisierung der SEO-Briefing-Erstellung (Content) wurde bewilligt. Bevor die Entwickler mit der Integration der Langdock API in das hauseigene CMS beginnen, will die Direktorin Projektrisiken und Latenzprobleme zwingend ausschließen.
**Strategisches Ziel:** Antizipieren, warum das Integrationsprojekt scheitert, um HTTP-Fehler präventiv zu umgehen.
**Hands-on Ergebnis:** Ein technisches Risikoregister (Risk Log), das den Entwicklern exakte Vorgaben liefert, wie mit Lastspitzen und Verbindungsabbrüchen umzugehen ist.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Fehler-Szenario definieren: Die Direktorin formuliert das "Scheitern".
2. API-Schwachstellen isolieren: Little Data identifiziert Limit-Grenzen.
3. Prävention: Ableitung von Architekturmustern (wie Exponential Backoff).
4. Dokument-Generierung: Ausarbeitung des finalen Risikoregisters im Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Stell dir vor, unser Content-API-Projekt ist in 6 Monaten krachend gescheitert, weil wir ständig HTTP 429 Errors (Rate Limits) bekamen. Schreibe ein Risikoregister für die IT, das erklärt, wie wir Exponential Backoff und Batch-Processing sofort in die Architektur einplanen müssen. Output im Canvas."
**Erwartetes Artefakt:** Strukturiertes Risikoregister (Risk Log) im Document Editor.
**Fallstricke (mind. 2 spezifisch):**
- Die Analyse rutscht auf allgemeine Marketing-Risiken ab, anstatt sich auf die harte API-Architektur zu fokussieren.
- Konkrete HTTP-Fehlercodes fehlen im Konzept, was den Entwicklern keine direkte Hilfestellung bietet.
**Anschluss-Szenario:** S-AD-004

### S-AD-004 Performance: Deployment-Modell Vergleich

**Wann nutzen (Trigger):** Das Management verlangt eine Empfehlung, ob die neue Performance-Metrik-Pipeline als SaaS oder in einer Single-Tenant-Umgebung laufen soll. Die Direktorin muss die Entscheidung für das anstehende IT-Steering-Committee vorbereiten, hat aber selbst keinen technischen Deep-Dive gemacht.
**Strategisches Ziel:** Die strategischen Trade-offs (Kosten vs. Isolierung) zwischen SaaS und Dedicated Deployment kontrastieren und eine Empfehlung ableiten.
**Hands-on Ergebnis:** Ein entscheidungsreifes Management-Papier (Executive Summary) für den IT-Steuerungskreis.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Optionen abgrenzen: Little Data vergleicht die Langdock Deployment-Architekturen.
2. Performance-Spezifika anwenden: Der Vergleich wird auf Echtzeit-Metriken bezogen.
3. Empfehlung aussprechen: Klare Empfehlung basierend auf den Security-Anforderungen der Firma.
4. Export: Formatierung als formelles Executive-Papier.
**Beispiel-Prompt (DE, PTCF):**
> "Kontrastiere das Multi-tenant SaaS Deployment (`api.langdock.com`) mit dem Single-tenant Deployment (`/api/public`) speziell für unsere Performance-Marketing-Daten. Wo liegen die architektonischen Trade-offs bezüglich Wartung und Isolation? Erstelle ein Management-Entscheidungspapier im Canvas."
**Erwartetes Artefakt:** Ein Management-Entscheidungspapier mit klarem Votum (Canvas-Dokument).
**Fallstricke (mind. 2 spezifisch):**
- Das Output verwechselt BYOC (Bring Your Own Cloud) mit klassischen On-Premise-Lösungen.
- Es ignoriert die architektonische Zwangsvorgabe des `/api/public` Pfads bei Dedicated-Instanzen.
**Anschluss-Szenario:** S-AD-005

### S-AD-005 Lokalisierung: Latenz-Architektur für Übersetzungen

**Wann nutzen (Trigger):** Die IT plant komplexe synchrone API-Aufrufe für die automatisierte Lokalisierung von Kampagnen-Assets, ohne KI-spezifische Latenzzeiten (Base-Rate) zu kennen. Die Direktorin befürchtet massive Systemhänger im Asset-Management.
**Strategisches Ziel:** Base-Rate für LLM-Antwortzeiten einbringen, um zu verhindern, dass asynchrone Prozesse synchron gebaut werden.
**Hands-on Ergebnis:** Ein asynchrones Design-Pattern-Briefing, das die Entwickler anweist, Webhooks oder Polling-Mechanismen für die Langdock API zu implementieren.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Erwartungsmanagement: Little Data korrigiert die Erwartung an synchrone Echtzeit-Antworten.
2. Risikobewertung: Aufzeigen der Timeout-Risiken bei komplexen Übersetzungs-Prompts.
3. Pattern-Vorschlag: Ein asynchrones Architekturmuster wird gefordert.
4. Dokumentation: Erstellung des IT-Briefings im Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Die Base-Rate für komplexe LLM-Aufrufe liegt oft bei mehreren Sekunden. Unsere IT plant für die Kampagnen-Lokalisierung aber synchrone Echtzeit-Aufrufe. Erstelle ein Architekturdokument, das erklärt, warum wir hier zwingend asynchrone Polling-Muster für die Agent API brauchen, um Timeouts im CMS zu vermeiden. Output im Canvas."
**Erwartetes Artefakt:** Ein technisches Design-Pattern-Briefing im Document Editor.
**Fallstricke (mind. 2 spezifisch):**
- Der Agent generiert Node.js Code anstatt eines strategischen Architekturkonzepts.
- Es werden fiktive WebSocket-APIs versprochen, die Langdock für diesen Fall nativ nicht anbietet.
**Anschluss-Szenario:** S-AD-006

### S-AD-006 CRM-Synchronisation: Integration-Mapping für Daten-Silos

**Wann nutzen (Trigger):** Die relevanten Kundendaten liegen in drei verschiedenen Systemen (Salesforce CRM, einem lokalen ERP und einem Webshop). Die Direktorin muss der IT erklären, wie diese Quellen sicher in Langdock konsolidiert werden sollen, ohne Security-Richtlinien zu verletzen.
**Strategisches Ziel:** Architektur skizzieren, die isolierte Datenquellen über die Integrations API sicher bündelt.
**Hands-on Ergebnis:** Ein Text-basierter Architektur-Diagramm-Entwurf, der die Datenflüsse (Data Flows) und die exakten API-Übergabepunkte definiert.
**Eingesetzte Langdock-Fähigkeit(en):** Web Search, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. System-Mapping: Auflistung der beteiligten Datenquellen.
2. API-Zuordnung: Definition, wie die Integrations API diese Quellen anbindet.
3. Security-Enforcement: Anwendung von Egress-IP-Regeln für das lokale ERP-System.
4. Export: Generierung eines strukturierten Flow-Dokuments für die Backend-Architekten.
**Beispiel-Prompt (DE, PTCF):**
> "Wir müssen für unsere CRM-Synchronisation Daten aus Salesforce, unserem CMS und einem lokalen ERP triangulieren. Entwirf einen Architektur-Flow für die Entwickler. Erkläre, wie die Langdock Integrations API diese Quellen bündelt und warum wir für das lokale ERP zwingend eine Static IP für Egress-Whitelisting brauchen. Output im Canvas."
**Erwartetes Artefakt:** Ein Text-basiertes Architektur-Flow-Dokument im Canvas.
**Fallstricke (mind. 2 spezifisch):**
- Little Data ignoriert die Advisory-Grenze und schlägt vor, selbst direkte SQL-Queries an das ERP zu senden.
- Netzwerksicherheits-Aspekte für das lokale ERP-System werden ausgelassen.
**Anschluss-Szenario:** S-AD-007

### S-AD-007 Brand-Compliance: Stresstest der Knowledge Folder Limits

**Wann nutzen (Trigger):** Die globalen Brand-Design-Guidelines (tausende PDFs) sollen per Knowledge Folder API synchronisiert werden. Es gibt operative Bedenken bezüglich der maximalen Synchronisations-Limits, was die Launch-Timeline bedroht.
**Strategisches Ziel:** Das geplante System gezielt auf das 1.000-Dateien-Limit (pro Wissensordner) und Payload-Grenzen abhorchen, bevor die Architektur finalisiert und freigegeben wird.
**Hands-on Ergebnis:** Ein präventiver Skalierungs-Warnbericht für das Operations-Team, der aufzeigt, wie die Ordnerstruktur vorab konsolidiert werden muss.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Simulation: Extrem-Volumen an Brand-Assets wird als Prämisse gesetzt.
2. Limit-Anwendung: Die harten API-Grenzen (1000 Files) werden als Maßstab angelegt.
3. Problemlösung: Eine Chunking- und Konsolidierungs-Strategie wird skizziert.
4. Warnung: Ein formelles Warn-Memo für die IT-Admins verfassen.
**Beispiel-Prompt (DE, PTCF):**
> "Wir wollen die Knowledge Folder API für unsere Brand-Guidelines nutzen. Mach einen Red-Team-Angriff auf unsere Planung: Was passiert, wenn wir mehr als 1.000 Dateien im SharePoint haben? Generiere ein Memo im Canvas, das aufzeigt, wie die IT unsere Ordnerstruktur vorher konsolidieren muss, um harte API-Fehler zu vermeiden."
**Erwartetes Artefakt:** Ein formeller Skalierungs-Warnbericht (Canvas) an das IT-Operations-Team.
**Fallstricke (mind. 2 spezifisch):**
- Der Prompt führt zu einer generischen Erklärung von RAG-Mechanismen anstatt eines harten Limit-Fokus.
- Die KI halluziniert nicht-existente API-Paginierungs-Funktionen für Ordner-Limits.
**Anschluss-Szenario:** S-AD-008

### S-AD-008 Social-Listening: Agent vs. Completion API Entscheidung

**Wann nutzen (Trigger):** Die IT-Entwickler wollen für das neue Social-Listening-Dashboard nur die simple Completion API nutzen. Die Direktorin ist jedoch der Überzeugung, dass komplexe Analysen die Agent API (mit hinterlegten Workflows und Tools) erfordern.
**Strategisches Ziel:** Bedingungen festlegen, um den Zuschlag der Agent API gegenüber der Completion API zu rechtfertigen.
**Hands-on Ergebnis:** Ein technischer Kriterienkatalog (Entscheidungsbaum), der den Entwicklern klare Abgrenzungen liefert, wann der Wechsel architektonisch zwingend wird.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. APIs kontrastieren: Little Data vergleicht die Endpoints für diesen Anwendungsfall.
2. Schwellenwerte: Kriterien für Multistep-Reasoning werden definiert.
3. Kriterienkatalog: Erstellung einer Checkliste für die IT-Abteilung.
4. Dokumentation: Export als Markdown im Canvas.
**Beispiel-Prompt (DE, PTCF):**
> "Die IT will für das Social-Listening-Dashboard die Completion API nutzen, ich halte die Agent API für besser. Was müsste eintreten, damit wir zwingend die Agent API benötigen? Erstelle einen Kriterienkatalog für die Entwickler, ab wann der Wechsel architektonisch zwingend wird (z.B. Multistep-Reasoning, Nutzung von Web Search Tools). Output im Canvas."
**Erwartetes Artefakt:** Ein fundierter Markdown-Kriterienkatalog mit klaren Abgrenzungen (Canvas).
**Fallstricke (mind. 2 spezifisch):**
- Der Output verliert sich in der Erklärung von grafischen Benutzeroberflächen-Features statt reinen API-Unterschieden.
- Die Kostenimplikationen im Token-Verbrauch werden im Kriterienkatalog ignoriert.
**Anschluss-Szenario:** S-AD-009

### S-AD-009 MarketingOps: Manipulationssichere Security-Richtlinie

**Wann nutzen (Trigger):** Das erstellte IT-Briefing für ein MarketingOps-Integrationsprojekt ist fast fertig, aber die Direktorin fürchtet, dass Entwickler Schlupflöcher für unsichere Implementierungen (wie das Hardcoding von API-Schlüsseln) finden.
**Strategisches Ziel:** Das Briefing durch extremes Hinterfragen wasserdicht machen und eine restriktive Security-Klausel formulieren, die Token-Theft absolut ausschließt.
**Hands-on Ergebnis:** Eine überarbeitete, manipulationssichere Entwickler-Richtlinie, die dem eigentlichen Briefing zwingend vorangestellt wird.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Scan: Das bestehende (hypothetische) Briefing wird auf Schwachstellen gescannt.
2. Identifikation: Erkennung von potenziellen Hardcoding-Risiken im Client-Code.
3. Durchsetzung: Eine Klausel zu Environment Variables (.env) wird formuliert.
4. Publikation: Generierung des Warn-Blocks im Document Editor.
**Beispiel-Prompt (DE, PTCF):**
> "Lies unser geplantes IT-Briefing für MarketingOps adversariell: Wo könnte ein fauler Entwickler den API-Schlüssel direkt im Frontend-Code oder in Version Control hardcoden? Generiere eine extrem strikte Sicherheitsklausel bezüglich Umgebungsvariablen (.env) und `.gitignore`, die wir dem Briefing als erstes Kapitel voranstellen. Output im Canvas."
**Erwartetes Artefakt:** Eine strikte Sicherheitsklausel (Markdown-Block) im Canvas.
**Fallstricke (mind. 2 spezifisch):**
- Die generierte Klausel ist zu weich formuliert und fordert lediglich "Best Practices".
- Die KI weigert sich aufgrund interner Filter, "adversariell" gegen fiktive Entwickler zu agieren.
**Anschluss-Szenario:** S-AD-010

### S-AD-010 Content-Produktion: Business Case für Limit-Erhöhungen

**Wann nutzen (Trigger):** Die vor 6 Monaten erstellte Content-Infrastruktur-Architektur ging von 100 API-Aufrufen pro Tag aus. Jetzt skaliert die Abteilung massiv, und die alte Rate-Limit-Annahme von 500 RPM reicht nicht mehr aus.
**Strategisches Ziel:** Die Halbwertszeit der alten Kapazitätsplanung prüfen und eine proaktive Anhebung der Rate Limits beim Langdock Enterprise Support professionell vorbereiten.
**Hands-on Ergebnis:** Ein formelles Business Case Dokument zur Beantragung höherer RPM/TPM Limits, das den Wachstumsbedarf nachweisbar untermauert.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Canvas / Document Editor
**Vorgehen (4 Schritte):**
1. Alte Annahmen verwerfen: Die veraltete Kapazitätsplanung wird invalidiert.
2. Neukalkulation: Argumentative Herleitung der neuen Peak-Lasten im Content-Bereich.
3. Beantragung: Ein formeller Support-Antrag wird entworfen.
4. Export: Das Dokument wird im Canvas für das Customer Success Management finalisiert.
**Beispiel-Prompt (DE, PTCF):**
> "Unsere alte Annahme, dass 500 RPM für die skalierte Content-Produktion ausreichen, ist verfallen. Schreibe einen formellen Business Case für den Langdock Customer Success Manager, in dem wir eine Erhöhung der Rate Limits auf Basis von exponentiell wachsenden Batch-Processing-Lasten begründen. Der Ton muss formell, aber bestimmend sein. Output im Canvas."
**Erwartetes Artefakt:** Ein formeller Antrag auf Limit-Erhöhung (Document Editor).
**Fallstricke (mind. 2 spezifisch):**
- Der generierte Antrag nennt keine konkreten technischen Metriken (RPM/TPM).
- Der Tonfall ist zu passiv und liefert keine nachvollziehbare Business-Metrik für den Enterprise-Support.
**Anschluss-Szenario:** S-AD-011


## Hinweise & Quellen-Konflikte

Keine signifikanten Konflikte zwischen Extracts und Source-Files gefunden. Die Limit-Informationen (500 RPM, 60k TPM) und Architekturvorgaben (BFF Pattern, Egress-IP) basieren konsistent auf den Developer-Guides.
