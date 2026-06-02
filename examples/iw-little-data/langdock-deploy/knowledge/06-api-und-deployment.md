# API und Deployment für Marketing-Direktoren (Beratung)

> **Was diese Datei abdeckt:**
> - Langdock API Endpoints für Marketing-Automatisierung
> - Deployment-Modelle und Sicherheits-Architektur (SaaS, On-Prem, BYOC)
> - Best Practices für Integrationen und Rate Limits
>
> **Was diese Datei NICHT abdeckt:**
> - Spezifische native Integrationen und MCP-Setup → siehe `05-integrationen-und-mcp`
> - Workflows und No-Code Pipelines → siehe `04-workflows-und-automatisierung`

## Wann eine Marketing-Direktorin überhaupt mit API in Berührung kommt

Die meisten Marketing-Aktivitäten innerhalb von Langdock erfordern keine Programmierkenntnisse. Eine Marketing-Direktorin nutzt primär die Chat-Oberfläche, vorkonfigurierte Agenten und den Wissensordner. Dennoch gibt es strategische Wendepunkte, an denen das Wissen über die API (Application Programming Interface) und deren Bereitstellung (Deployment) geschäftskritisch wird. Dies geschieht typischerweise an der Grenze zwischen manuellem Output und skalierter Automatisierung.

Der erste Berührungspunkt entsteht oft, wenn Content-Produktion das Stadium einzelner Social-Media-Posts verlässt und in Massen-Workflows übergeht. Wenn Tausende von Produktbeschreibungen automatisiert über das PIM (Product Information Management) System aktualisiert oder Kunden-Feedback-Datenbanken in Echtzeit klassifiziert werden sollen, ist die UI-Grenze erreicht. Hier orchestriert die API die Datenströme unsichtbar im Hintergrund. 

Ein weiterer Auslöser ist die Integration von Langdock-Agenten in bestehende Kunden-Touchpoints. Eine Direktorin möchte vielleicht einen Brand-Voice-geprüften Chatbot direkt auf der Unternehmenswebsite platzieren oder KI-Features nativ in die eigene SaaS-App einbetten. Solche Architekturen erfordern programmatischen Zugriff. 

Ebenso zwingen strenge Data-Governance-Richtlinien oder FinOps-Anforderungen (z. B. verursachergerechte Kostenumlage von KI-Ausgaben auf verschiedene Marketing-Teams) Führungskräfte dazu, Usage-Export-APIs für Dashboards heranzuziehen. Die Marketing-Direktorin muss keinen Code schreiben können, aber sie muss das architektonische Vokabular beherrschen, um mit IT, Data-Engineering und externen Dienstleistern auf Augenhöhe Use-Cases zu definieren und Machbarkeiten abzuwägen.

## REST-Endpoints Überblick (Completion / Embedding / Agent / Knowledge Folder / Usage Export / Audit Logs / Integrations)

Die Langdock-Plattform bietet eine vollumfängliche, modular aufgebaute REST-API, die Entwicklerteams nutzen können, um KI-Fähigkeiten tief in die Marketing-Infrastruktur einzuweben. Eine REST-API (Representational State Transfer) fungiert als digitaler Postbote zwischen Langdock und anderen Unternehmens-Systemen. Sie gliedert sich in verschiedene Endpoints (Zieladressen), die spezifische Aufgaben übernehmen.

Der **Completion-Endpoint** ist der Kern-Motor für Textgenerierung, der die rohe Leistung von Modellen wie OpenAI oder Anthropic anzapft. Der **Embedding-Endpoint** transformiert Text in Vektoren und ist essenziell für Suchfunktionen und RAG-Architekturen. 

Besonders mächtig für das Marketing ist der **Agent-Endpoint**. Er ermöglicht es, programmgesteuert Anfragen an spezifische Agenten zu senden, die über die UI konfiguriert wurden. Der **Knowledge Folder-Endpoint** automatisiert die Pflege der Wissensbasis: Er erlaubt den Upload und das Synchronisieren von Dokumenten, ohne manuelles Eingreifen. 

Für das Reporting ist der **Usage Export-Endpoint** entscheidend. Er liefert CSV-Daten über die Nutzung (Tokens, Kosten), die sich in Power BI integrieren lassen. Der **Audit Logs-Endpoint** dokumentiert sicherheitsrelevante Vorgänge und erfüllt Compliance-Vorgaben. Zuletzt verwaltet der **Integrations-Endpoint** Verbindungen zu externen Tools, um Aktionen aus Langdock heraus zu triggern.

## OpenAI-API-Kompatibilität (Drop-in via Base-URL-Tausch)

Ein entscheidender strategischer Vorteil von Langdock ist die native OpenAI-API-Kompatibilität. Wenn ein IT-Dienstleister oder ein internes Entwicklerteam bereits Skripte, Automatisierungen oder interne Tools geschrieben hat, die auf der weit verbreiteten OpenAI-Schnittstelle basieren, ist der Wechsel zu Langdock nahtlos. Langdock hat seinen Completion-Endpoint absichtlich so gestaltet, dass er den Spezifikationen und dem Datenformat (Schema) von OpenAI eins zu eins entspricht.

Für die Marketing-Direktorin bedeutet das: Keine langwierigen Migrationsprojekte. Der sogenannte "Drop-in-Replacement"-Vorgang ist verblüffend simpel. Die Entwickler müssen in ihrem bestehenden Code buchstäblich nur zwei Zeilen ändern. Erstens: Die Base-URL (die Internetadresse, an die die Anfrage gesendet wird) wird von `api.openai.com` auf die Langdock-URL geändert (z. B. `https://api.langdock.com/openai/eu/v1/chat/completions`). Zweitens: Der OpenAI-Schlüssel wird durch den Langdock-API-Schlüssel (Bearer Token) ersetzt.

Sofort profitiert die bestehende Infrastruktur von Langdocks Enterprise-Sicherheits-Features (wie europäischem Hosting und Zero-Data-Retention), ohne dass der Code der Marketing-Applikation umgeschrieben werden muss. Zudem erlaubt Langdock durch diese Kompatibilität den Einsatz etablierter, quelloffener Entwickler-Bibliotheken (wie dem offiziellen OpenAI Python SDK), was die Lernkurve für Ingenieure auf null reduziert und das Prototyping von KI-Marketing-Lösungen extrem beschleunigt.

## CORS-Posture und das Backend-for-Frontend Pattern

Die Sicherheit von API-Schlüsseln hat oberste Priorität, da kompromittierte Keys nicht nur zu massiven, unkontrollierten Kosten (durch Token-Verbrauch) führen, sondern auch Einfallstore in die sensible Daten-Infrastruktur des Unternehmens öffnen. Langdock erzwingt hier eine kompromisslose Zero-Trust-Architektur, die sich stark in der Handhabung von CORS (Cross-Origin Resource Sharing) manifestiert.

Langdock blockiert rigoros alle direkten Client-Side-Aufrufe an seine API. Das bedeutet, es ist architektonisch unmöglich, eine Anfrage direkt aus dem Webbrowser einer Nutzerin (via JavaScript/Frontend) an Langdock zu senden. Dies ist kein Fehler, sondern ein absichtlicher Schutzmechanismus, um zu verhindern, dass die wertvollen API-Schlüssel im Quelltext der Website sichtbar sind und von Dritten ausgelesen werden können. 

Für Marketing-Initiativen – wie zum Beispiel die Integration eines Langdock-gestützten Chatbots auf der Landingpage – erzwingt diese CORS-Posture ein sogenanntes Backend-for-Frontend (BFF) Pattern. Entwickler müssen zwingend einen eigenen Zwischen-Server (Proxy-Server oder Backend) aufsetzen. 

Der Flow sieht dann so aus: Der Webbrowser des Kunden kommuniziert mit dem unternehmenseigenen Server (dem BFF). Dieser Server authentifiziert den Nutzer, hält den Langdock-API-Key sicher in seinen geschützten Umgebungsvariablen (Environment Variables) verborgen, und leitet die Anfrage erst dann stellvertretend an Langdock weiter. Dies garantiert höchste Sicherheit und erlaubt es dem Marketing-Team, eigene Filter, Rate Limits und Business-Logik vor die Langdock-Plattform zu schalten.

## 4 Deployment-Modelle (Multi-tenant SaaS / Single-tenant / BYOC / On-Prem)

Langdock passt sich den regulatorischen und technologischen Anforderungen an, indem es vier Bereitstellungsmodelle anbietet. Die Marketing-Direktorin muss diese Modelle kennen, da sie Budget, Geschwindigkeit und Compliance-Risiken direkt beeinflussen.

Das Standard-Modell ist **Multi-tenant SaaS**. Hierbei läuft Langdock auf geteilten Cloud-Ressourcen, garantiert aber EU-Hosting und DSGVO-Konformität. Dies ist der schnellste Weg, um Workflows auszurollen, ideal für Agilitäts-fokussierte Teams.

Für Organisationen mit strengeren Isolations-Bedürfnissen gibt es **Single-tenant SaaS**. Hier erhält das Unternehmen eine dedizierte Instanz auf einer eigenen Subdomain. Daten und Rechenleistung sind physisch von anderen Kunden getrennt.

Besonders flexibel ist das **BYOC-Modell** (Bring Your Own Cloud / Key). Das Frontend läuft bei Langdock, aber das Unternehmen nutzt eigene Cloud-Verträge und API-Keys (z. B. auf Microsoft Azure). So behält man die volle Kontrolle über die Datenverarbeitung auf Modell-Ebene.

Für absolute maximale Kontrolle, typisch im Banking-Sektor, existiert das **On-Premises / VPC-Deployment**. Hier wird Langdock vollständig innerhalb der Firewall installiert. Dies erlaubt komplette Air-Gapped-Umgebungen, ist aber mit erheblichem IT-Aufwand verbunden.

## Static IP für Egress-Whitelisting

Ein häufiger Stolperstein in der Zusammenarbeit zwischen Marketing-Innovation und IT-Sicherheit (InfoSec) sind interne Datenbanken. Die Marketing-Direktorin möchte, dass ein Langdock-Agent Kundendaten aus dem internen CRM abfragt oder ein Workflow Kampagnen-Ergebnisse in das interne Data Warehouse schreibt. Die IT-Abteilung wird jedoch niemals erlauben, diese internen, geschäftskritischen Systeme ungeschützt für das offene Internet zugänglich zu machen.

Hier kommt die sogenannte "Static IP" (Statische IP-Adresse) ins Spiel. Langdock bietet Enterprise-Kunden eine dedizierte, garantierte und unveränderliche IP-Adresse an (z. B. `4.185.103.44`), von der aus sämtlicher ausgehender Datenverkehr (Egress) der Plattform – wie API-Calls oder Webhook-Requests – gesendet wird.

Dies ermöglicht das sogenannte "Egress-Whitelisting". Die Firewall-Administratoren des Unternehmens können eine hochpräzise Ausnahmeregel (Access Control List) erstellen: Die internen Systeme weisen alle Anfragen aus dem Internet ab, außer sie stammen exakt von dieser einen statischen Langdock-IP-Adresse. 

So entsteht eine hochsichere, engmaschig überwachte Daten-Brücke. Das Marketing-Team kann modernste Cloud-KI-Workflows nutzen und nahtlos auf tiefe, On-Premises gelagerte Unternehmensdaten zugreifen, ohne dass die IT-Sicherheit eine Verwundbarkeit der Perimeter-Verteidigung befürchten muss. Dieses architektonische Feature ist oft das ausschlaggebende Argument, um Freigaben für komplexe Integrations-Szenarien zu erhalten.

## Rate Limits und wie man höhere anfragt

APIs sind mächtig, aber nicht unbegrenzt belastbar. Um die Plattform-Stabilität für alle Kunden zu garantieren und plötzliche Kostenexplosionen durch fehlgeleitete Skripte zu verhindern, setzt Langdock sogenannte Rate Limits (Nutzungs-Obergrenzen) ein. Die Marketing-Direktorin muss diese Limits in der Ressourcen-Planung für skalierte Kampagnen zwingend berücksichtigen.

Standardmäßig gelten harte Limits auf Workspace-Ebene, insbesondere für den API-Traffic. Typischerweise liegt das Default-Limit bei 500 Anfragen pro Minute (Requests Per Minute, RPM) und 60.000 generierten Tokens pro Minute (Tokens Per Minute, TPM). Für eine Chat-Interaktion ist dies völlig ausreichend. Wenn das Marketing jedoch einen Batch-Prozess startet – beispielsweise die Übersetzung und SEO-Optimierung von 10.000 Blog-Artikeln über das Wochenende –, werden diese Limits schnell erreicht, was zu "HTTP 429 Too Many Requests" Fehlern führt und den Workflow stoppt.

Zudem gibt es finanzielle Limits (Budgets). Workflows sind standardmäßig auf 25 Euro pro Lauf und Workspaces auf 500 Euro pro Monat limitiert. Ebenso existieren funktionale Grenzen, wie eine maximale Dateigröße von 256 MB für API-Uploads oder ein 100-Sekunden-Timeout für Non-Streaming-API-Antworten.

Wenn eine große Kampagne ansteht, muss das Team proaktiv handeln. Rate Limits sind keine unveränderlichen Naturgesetze. Über den Langdock-Enterprise-Support oder den zugewiesenen Customer Success Manager können temporäre oder permanente Erhöhungen (Quota Increases) angefragt werden. Dies erfordert meist einen kurzen Business Case ("Wir verarbeiten in KW 42 unser PIM-Archiv") und die Bestätigung der Kostenübernahme, woraufhin die Limits im Backend entsprechend hochgesetzt werden.

## Advisory-Grenze (Little Data ruft KEINE APIs auf — beratet nur)

Bei der Planung von API-Integrationen und dem Entwurf komplexer Systemarchitekturen ist es essenziell, die operativen Grenzen des Langdock-Beraters "Little Data" zu verstehen. Die Marketing-Direktorin kann von "Little Data" wertvolle strategische Führung, konzeptionelle Schaltpläne und Best-Practice-Empfehlungen erwarten, aber keine aktive Code-Ausführung oder System-Veränderungen.

Dies definiert die Advisory-Grenze (Beratungsgrenze): "Little Data" verfasst keine Produktions-Skripte für die IT, richtet keine Server ein und sendet niemals selbständig API-Anfragen an externe Systeme oder an die Langdock-Infrastruktur. Der Agent fungiert ausschließlich als strategischer Sparringspartner und Übersetzer zwischen den Business-Anforderungen des Marketings und der technischen Umsetzung. 

Wenn beispielsweise ein Backend-for-Frontend (BFF) Pattern implementiert werden muss, wird "Little Data" die Architektur erklären, die CORS-Risiken benennen und ein High-Level-Briefing für das Entwicklerteam formulieren. Die eigentliche Programmierung und das Konfigurieren der Umgebungsvariablen müssen jedoch von den Ingenieuren des Unternehmens übernommen werden.

Ebenso wird "Little Data" keine Langdock-Konfigurationen (wie das Einrichten von Rate Limits, das Hinzufügen von BYOK-API-Schlüsseln oder das Whitelisting von IPs) über die Administrationsebene vornehmen. Der Agent liefert das "Warum" und das "Wie", strukturiert den Prozess für das Change Management und bereitet die Stakeholder-Kommunikation vor. Die exekutive Umsetzung bleibt stets beim menschlichen Operator. Dies garantiert höchste Sicherheit und verhindert, dass beratende KI unbeabsichtigt kritische Systemänderungen durchführt.

## Marketing-Szenarien aus dieser Domäne

### S-API-001 Architektur-Review für die PIM-Massenanbindung
Trigger: Julia Lenz (Marketing-Direktorin) kommt aus dem Q3-Review. Das Content-Team hat manuell 300 Produktbeschreibungen im UI generiert, aber für Q4 müssen 15.000 Artikel im PIM (Product Information Management) via Completion API aktualisiert werden. Die IT warnt vor API-Kosten und Rate Limits beim Batch-Lauf. (Quelle: sources/10 S-066, sources/12 Q119)
Ziel: Das manuelle Copy-Paste-Bottleneck auflösen und eine automatisierte Architektur skizzieren, die weder die zum Planungszeitpunkt geltende Workspace-RPM-Grenze (Stand 2026-06 typischerweise rund 500 Requests/Minute — vor dem Lauf beim Customer Success Manager verifizieren) sprengt, noch das Budget explodieren lässt.
Ergebnis: Ein technisches Architektur-Briefing (Backend-for-Frontend Konzept) für den Lead Developer.
Fähigkeit: Completion API, Advisory, Usage Export API
Vorgehen:
1. Übergebe die exakten Parameter der Q4-Kampagne (15.000 Artikel, bestehendes PIM-System) an 'Little Data'.
2. Beauftrage den Agenten, eine Batch-Processing Architektur zu entwerfen, die zwingend einen Exponential-Backoff für HTTP 429 Fehler integriert.
3. Lass eine Kostenschätzung auf Basis der aktuellen Workspace-Budgets erstellen.
4. Formuliere ein Briefing, das der IT glasklar die Advisory-Grenze aufzeigt (Marketing liefert Konzept, IT schreibt Python-Code).
Vorlage: Architektur-Briefing PIM-Massenanbindung (Markdown):
1. Kontext & Volumen — Q4: 15.000 Artikel via Completion API ins PIM.
2. Batch-Architektur — Backend-for-Frontend; server-seitiger Batch-Worker, kein CMS-Direkt-Trigger (CORS).
3. Rate-Limit-Respekt — Workspace-RPM-Grenze (Stand 2026-06 ~500 RPM, beim CSM verifizieren) per Batching + Exponential-Backoff bei HTTP 429.
4. Timeout — Non-Streaming-Timeout ~100 s bei langen Prompts; Streaming als Gegenmassnahme.
5. Kosten & Advisory-Grenze — Schaetzung auf Workspace-Budget-Basis; Marketing liefert Konzept, IT schreibt Python.
Artefakt: Technisches Briefing-Dokument (Markdown).
Fallstricke:
- Die Kostenschätzung verwechselt Langdock-Plattformkosten mit OpenAI-Inferenzkosten, was den CFO verärgern würde.
- Das Briefing driftet zu sehr ins Technische ab und vergisst, die strategische Kostenkontrolle (Workspace-Budgets) für das Marketing zu betonen.
Empfehlung: Den Batch-Worker server-seitig (BFF) bauen und HTTP 429 zwingend mit Exponential-Backoff abfangen; die RPM-Grenze vor dem Lauf beim Customer Success Manager verifizieren statt sie zu raten. In der Kostenschaetzung Langdock-Plattformkosten klar von Inferenzkosten trennen, sonst kippt das CFO-Gespraech.
Anschluss: S-API-002

### S-API-002 CISO-Abwehr: Static IP und Egress-Whitelisting
Trigger: Der Chief Information Security Officer (CISO) blockiert im IT-Board die geplante Langdock-Anbindung (Egress-Whitelisting / Static IP) an die interne Kundendatenbank. Seine Begründung: "Wir öffnen unsere Datenbanken nicht für Cloud-Dienste aus dem Internet." (Quelle: sources/12 Q115, sources/12 Q126)
Ziel: Die Compliance-Bedenken des CISO durch architektonische Fakten entkräften und den Go-Live der CRM-Integration sichern.
Ergebnis: Ein Security-Dossier (One-Pager) zur Vorlage beim CISO.
Fähigkeit: Integrations API, Deployment Advisory
Vorgehen:
1. Analysiere das Veto des CISO und isoliere das Kernproblem (Angst vor Ingress aus dem offenen Web).
2. Nutze Little Data, um das Konzept des Langdock Egress-Whitelisting und der dedizierten Static IP zu dekonstruieren (die konkrete IP-Adresse wird vom Langdock-Enterprise-Support pro Workspace zugewiesen — niemals eine erfundene Adresse in der ACL hinterlegen).
3. Erarbeite eine Argumentationskette, die beweist, dass die Firewall nur für diese einzige IP geöffnet werden muss.
4. Verfasse ein hochgradig formelles, Compliance-zentriertes Dossier.
Vorlage: Security-Dossier Static-IP/Egress-Whitelisting (One-Pager):
1. Kernbedenken — CISO fuerchtet Ingress aus dem offenen Web in die On-Prem-DB.
2. Loesung — Langdock-Egress-Whitelisting + dedizierte Static IP (IP wird vom Enterprise-Support pro Workspace zugewiesen, nie erfunden).
3. Firewall-Argumentation — ACL oeffnet exakt eine IP; Netzwerk bleibt geschlossen.
4. Compliance-Anker — ISO-Zertifikate + Netzwerkarchitektur statt Marketing-Sprache.
Artefakt: Ein formelles Security-Dossier.
Fallstricke:
- Die KI verwechselt Ingress-Routing (eingehender Traffic) mit Egress-Routing (ausgehender Traffic der Langdock-Plattform), was den CISO sofort misstrauisch machen würde.
- Der Tone-of-Voice ist zu werblich ("Langdock ist total sicher!"), statt sich auf ISO-Zertifikate und Netzwerkarchitektur zu stützen.
Empfehlung: Im Dossier strikt zwischen Ingress (eingehend) und Egress (ausgehender Langdock-Traffic) trennen — diese Verwechslung macht jeden CISO sofort misstrauisch. Die konkrete Static IP erst vom Langdock-Enterprise-Support pro Workspace zuweisen lassen und nie eine erfundene Adresse in die ACL schreiben.
Anschluss: S-API-003

### S-API-003 FinOps-Audit: Chargeback für 5 Marketing-Teams
Trigger: Die Marketing-Direktorin wird vom CFO in die Pflicht genommen, weil die monatlichen KI-Kosten explodieren. Fünf verschiedene Abteilungen (SEO, PR, Social, Event, Content) nutzen Langdock, aber niemand weiß, wer wie viel Budget verbrennt — gefragt ist ein Chargeback über die Usage Export API. (Quelle: sources/12 Q124, research/50 A-01)
Ziel: Ein datengetriebenes Chargeback-Modell (Verursachergerechte Kostenumlage) etablieren, um die Budgets der Teams fair zu belasten.
Ergebnis: Ein FinOps-Dashboard Konzept und eine Prozessanweisung.
Fähigkeit: Usage Export API, Data Analyst
Vorgehen:
1. Lade einen anonymisierten Auszug des aktuellen Langdock CSV-Exports in den Data Analyst.
2. Instruiere Little Data, ein Zuordnungsmodell auf Basis der User-IDs und Teams zu entwickeln.
3. Skizziere einen automatisierten monatlichen Prozess, wie die Usage Export API genutzt werden kann, um diese Daten in Power BI zu speisen.
4. Definiere Warnschwellen (Soft-Limits) im Workspace-Adminbereich.
Vorlage: FinOps-Chargeback-Prozess-Spezifikation (Markdown):
1. Ziel — verursachergerechte Kostenumlage auf SEO/PR/Social/Event/Content.
2. Datenquelle — Usage Export API (asynchron; liefert Download-Link, nicht sofort; reportet primaer auf User- und Modell-Ebene).
3. Monatsprozess — am Ersten CSV ziehen, User-IDs auf Kostenstellen mappen, in Power BI speisen.
4. Steuerung — harte Workspace-Budgets + Warn-Schwellen (Soft-Limits) im Admin-Bereich.
Artefakt: Eine FinOps Prozess-Spezifikation.
Fallstricke:
- Das Modell ignoriert, dass die Usage Export API asynchron funktioniert und große CSV-Dateien (Millionen Zeilen) nicht sofort, sondern als Download-Link zurückliefert.
- Die KI empfiehlt, Kosten pro Agent aufzuschlüsseln, vergisst aber, dass die API primär auf User- und Modell-Ebene reportet.
Empfehlung: Das Modell auf User- und Modell-Ebene aufbauen, nicht auf Agent-Ebene — die Usage Export API reportet primaer so. Den asynchronen Charakter einplanen (grosse CSVs kommen als Download-Link) und harte Workspace-Budgets plus Warn-Schwellen setzen, damit das Team nicht erneut blind ins Limit laeuft.
Anschluss: S-API-004

### S-API-004 Legacy-Migration: OpenAI Drop-In Strategie
Trigger: Eine externe Digitalagentur hat vor zwei Jahren ein teures Python-Skript für automatisiertes Keyword-Clustering gebaut. Es nutzt die OpenAI API. Die Direktion will das Skript nun aus Datenschutzgründen via OpenAI-kompatiblem Drop-in-Replacement in die Langdock-Umgebung (EU-Hosting) überführen, ohne die Agentur für ein Rework bezahlen zu müssen. (Quelle: sources/12 Q117, research/50 A-03)
Ziel: Den Entwicklern beweisen, dass die Migration auf Langdock ein triviales "Drop-In Replacement" ist und kein Budget-intensives Refactoring erfordert.
Ergebnis: Ein Migrations-Guide für die Agentur.
Fähigkeit: Completion API, Advisory
Vorgehen:
1. Kläre die Kompatibilität der Langdock Completion API mit dem OpenAI-Standard.
2. Erstelle einen kurzen Guide, der die zwei notwendigen Code-Änderungen (Base-URL und API-Key) visualisiert.
3. Weise darauf hin, dass einzelne OpenAI-proprietäre Parameter und Endpoints (z. B. die Assistants- oder Fine-Tuning-API) im Kompatibilitäts-Layer kein Äquivalent haben — diese Stellen müssen vor der Migration in einem Feature-Audit identifiziert werden.
4. Sende den Guide als klares Mandat an die Agentur.
Vorlage: OpenAI-Drop-In-Migrations-Guide (Mandat an die Agentur):
1. Kernaussage — Langdock Completion API ist OpenAI-kompatibel; Drop-In, kein Refactoring.
2. Zwei Aenderungen — Base-URL auf 'api.langdock.com/openai/eu/v1/chat/completions' + Bearer-Token tauschen.
3. Feature-Audit — proprietaere Endpoints (Assistants-, Fine-Tuning-API) haben kein Aequivalent; vorab identifizieren.
4. Mandat — Aufwand max. 30 Minuten, hoeflich aber unmissverstaendlich.
Artefakt: Ein technisches Mandat (Migrations-Guide).
Fallstricke:
- Der Agent schlägt vor, den Code umzuschreiben, um das Vercel AI SDK zu nutzen, was das Ziel (Zero-Code-Änderung) komplett verfehlt.
- Die regionale Endung in der Base-URL (eu vs. us) wird vergessen, was zu Compliance-Verstößen führen könnte.
Empfehlung: Die EU-Region in der Base-URL (eu statt us) explizit vorgeben — eine falsche Region ist ein Compliance-Verstoss. Den Drop-In-Charakter verteidigen: kein Umbau auf das Vercel AI SDK, das verfehlt das Zero-Code-Ziel; nur Base-URL und Token tauschen.
Anschluss: S-API-005

### S-API-005 RAG-Hygiene: Automatisierter Lifecycle für den Wissensordner
Trigger: Ein kürzlich gelaunchter Produkt-Agent liefert Kunden falsche technische Spezifikationen. Eine Analyse zeigt: Im Wissensordner liegen 500 veraltete PDFs aus dem Vorjahr, weil das Marketing-Team vergessen hat, sie via Knowledge Folder API zu löschen. (Quelle: sources/12 Q124, research/50 A-20)
Ziel: Den manuellen Upload/Delete-Prozess eliminieren und eine Sync-Pipeline definieren, die den Langdock Wissensordner automatisch mit dem SharePoint der Produktentwicklung spiegelt.
Ergebnis: Ein Architekturentwurf für eine Knowledge-Folder Synchronisation.
Fähigkeit: Knowledge Folder API
Vorgehen:
1. Identifiziere das Problem (Data Decay im Wissensordner).
2. Nutze Little Data, um die Endpoints der Knowledge Folder API (Upload, List, Delete) zu strukturieren.
3. Entwirf einen nächtlichen Cron-Job-Prozess für die IT.
4. Definiere Regeln für Dateigrößen (max 256MB) und Formate, um Fehler beim Upload zu vermeiden.
Vorlage: Knowledge-Folder-Sync-Spezifikation (fuer die IT):
1. Problem — Data Decay: 500 veraltete PDFs verursachen Halluzinationen.
2. Endpoints — Knowledge Folder API: List / Delete / Upload.
3. Naechtlicher Cron — 03:00 Uhr: veraltete Dateien loeschen, neue aus SharePoint hochladen.
4. Limits — max. 256 MB/Datei, max. 1.000 Dateien/Folder; XLSX vorab in Text konvertieren.
Artefakt: Eine Sync-Spezifikation für die IT.
Fallstricke:
- Die Limitierung von maximal 1.000 Dateien pro Folder wird nicht berücksichtigt, was die Pipeline nach wenigen Wochen zum Absturz bringen würde.
- Der Agent schlägt vor, direkte Integrationen (Native Syncs) zu nutzen, obwohl SharePoint (als Beispiel) vielleicht nur on-premise liegt und eine API-Lösung zwingend ist.
Empfehlung: Das 1.000-Dateien-pro-Folder-Limit von Beginn an in die Pipeline einplanen, sonst stuerzt sie nach Wochen ab. Wenn SharePoint nur on-premise liegt, zwingend die API-Sync-Loesung waehlen — eine native Integration ist dann keine Option.
Anschluss: S-API-006

### S-API-006 BYOC vs. SaaS Entscheidungsvorlage
Trigger: Der neue CTO möchte alle KI-Projekte auf Microsoft Azure konsolidieren. Die Marketing-Direktorin befürchtet, dass sie dadurch die komfortable Langdock-UI verliert und wieder auf langsame interne IT-Projekte angewiesen ist — der BYOC-Mittelweg ist die Steelman-Antwort auf das CTO-Anliegen. (Quelle: sources/12 Q117, research/50 A-26)
Ziel: Einen Kompromiss aushandeln: Die Langdock-UI für das Marketing behalten, aber die Inferenz-Kosten und Verträge über Azure laufen lassen (BYOC).
Ergebnis: Eine Pitch-Präsentation (Textform) für den CTO.
Fähigkeit: Deployment Advisory
Vorgehen:
1. Kläre die Bedenken des CTOs (Konsolidierung, Enterprise-Verträge).
2. Konstruiere das Bring-Your-Own-Cloud (BYOC) Modell als perfekte Schnittmenge.
3. Erkläre, wie die Administrator-Ebene in Langdock die Azure-Keys sicher speichert.
4. Verfasse ein Pitch-Script, das die User-Experience des Marketings verteidigt.
Empfehlung: BYOC (Bring Your Own Cloud) als Win-Win pitchen: Langdock bleibt Frontend- und Orchestrierungsebene fuers Marketing, waehrend die Inferenz ueber den Azure-Key des CTO laeuft — seine Enterprise-Rabatte greifen, die UI bleibt erhalten. Drei Argumente: (1) Kostenkonsolidierung ueber bestehende Azure-Vertraege, (2) erhaltene Marketing-Agilitaet, (3) zentrale Key-Verwaltung auf Admin-Ebene. Wichtig: im BYOC-Modell muessen die internen Token-Preise fuers Dashboard manuell vom Admin gepflegt werden — das offen ansprechen. Ton: Win-Win, nicht konfrontativ.
Artefakt: Ein Pitch-Script (3 Absätze).
Fallstricke:
- Die KI vergisst zu erwähnen, dass im BYOC-Modell die internen Token-Preise für das Dashboard manuell vom Admin gepflegt werden müssen.
- Das Pitch-Script klingt zu aggressiv gegenüber dem CTO, anstatt eine Win-Win-Lösung zu betonen.
Anschluss: S-API-007

### S-API-007 Web-Agentur Audit: Frontend-Key-Leak verhindern
Trigger: Eine externe Web-Agentur schickt das Konzept für den neuen Lead-Gen Chatbot auf der Website. Im Architektur-Diagramm steht: `Browser -> fetch('api.langdock.com') -> Return` — ein direkter Frontend-Aufruf, der gegen die CORS-Posture verstößt und den API-Key offenlegt. (Quelle: sources/12 Q115, sources/10 S-072)
Ziel: Das katastrophale Sicherheitsrisiko (API-Key im Klartext im Browser) sofort stoppen und die Agentur auf die CORS-Posture von Langdock hinweisen.
Ergebnis: Eine formelle Mängelrüge und Architekturanweisung.
Fähigkeit: API Security Advisory
Vorgehen:
1. Analysiere das fehlerhafte Konzept der Agentur.
2. Identifiziere den Verstoß gegen die Zero-Trust CORS-Richtlinien von Langdock.
3. Erkläre das Backend-for-Frontend (BFF) Pattern als einzige Lösung.
4. Formuliere eine strikte Anweisung an die Agentur.
Vorlage: Maengelruege + Architekturanweisung (formelle E-Mail):
1. Befund — Konzept platziert den API-Key im Browser-JavaScript (Klartext-Leak).
2. Verstoss — Langdock-Zero-Trust-CORS blockt direkte Frontend-Aufrufe ohnehin.
3. Loesung — Backend-for-Frontend (BFF): Key in Environment Variables, Browser spricht nur mit dem eigenen Backend.
4. Ton — professionell-bestimmt, Arbeitsbeziehung wahren.
Artefakt: Eine formelle E-Mail (Mängelrüge).
Fallstricke:
- Die Mängelrüge ist zu unfreundlich und zerstört die Arbeitsbeziehung zur Agentur.
- Der Agent schlägt vor, den API-Key im Frontend "zu verschlüsseln" – was bei Web-Apps ein wirkungsloses Anti-Pattern ist.
Empfehlung: Auf das BFF-Pattern als einzige Loesung bestehen — der Key gehoert in Environment Variables des eigenen Backends, nie ins Frontend. Den Vorschlag, den Key im Browser zu 'verschluesseln', klar als wirkungsloses Anti-Pattern zurueckweisen und die Ruege professionell statt verletzend formulieren.
Anschluss: S-API-008

### S-API-008 Echtzeit-Alerting bei Reputations-Krisen
Trigger: Nach einem PR-Desaster auf Twitter verlangt die Geschäftsführung ein System, das Erwähnungen der Marke in Echtzeit per Webhook und Integrations API auf toxisches Sentiment prüft und das Crisis-Team sofort via Slack alarmiert. (Quelle: sources/10 S-049, sources/10 S-051)
Ziel: Eine event-driven Architektur skizzieren, die über Webhooks und die Integrations API funktioniert.
Ergebnis: Ein Architektur-Blueprint für eine Event-Driven-Pipeline.
Fähigkeit: Integrations API
Vorgehen:
1. Definiere den Trigger (Social Media Listening Tool).
2. Nutze Little Data, um den Workflow zu skizzieren: Webhook-Eingang in Langdock -> Sentiment-Analyse -> API-Aufruf an Slack.
3. Berücksichtige die Limits des Custom Integration Builders (Custom-Code-Timeout in der Größenordnung von ~60 Sekunden — exakten Wert in der aktuellen Langdock-Doku verifizieren, da er sich ändern kann).
4. Dokumentiere das Setup für das Marketing-Ops Team.
Vorlage: Event-Driven-Alerting-Blueprint (Systemarchitektur als Text):
1. Trigger — Social-Listening-Tool sendet Webhook an Langdock bei Marken-Erwaehnung.
2. Verarbeitung — Sentiment-Analyse; bei 'toxisch' Payload an die Slack API.
3. Limit — Custom-Code-Timeout im Custom Integration Builder (~60 s, exakten Wert in der Doku verifizieren).
4. Security — eingehenden Webhook authentifizieren (Signatur/Token).
Artefakt: Ein Systemarchitektur-Diagramm als Text.
Fallstricke:
- Das Konzept vergisst die Authentifizierung des eingehenden Webhooks (Security Risk).
- Die KI empfiehlt, den Chat-Agenten zu nutzen, obwohl ein automatisierter Workflow (ohne UI) hier die korrekte Lösung ist.
Empfehlung: Den eingehenden Webhook zwingend authentifizieren (Signatur oder Token) — ein offener Empfaenger ist das groesste Risiko dieser Architektur. Die Pipeline als automatisierten Workflow ohne UI auslegen, nicht als Chat-Agenten, und das Custom-Code-Timeout vorab gegen die aktuelle Doku pruefen.
Anschluss: S-API-009

### S-API-009 Migration zur Agents API (Vercel AI SDK)
Trigger: Die IT-Abteilung meldet, dass eine ältere Agenten-/Assistants-Schnittstelle laut aktueller Deprecation-Ankündigung (Stand 2026-06 — exaktes Datum im Langdock-Changelog verifizieren) abgeschaltet wird und ein Rewrite der internen Tools notwendig ist. Das Marketing-Team fürchtet monatelange Downtimes. (Quelle: research/50 A-33, research/50 A-03)
Ziel: Den Mehrwert der neuen API (Vercel AI SDK Kompatibilität) verstehen, um die IT-Kosten vor dem Management zu rechtfertigen.
Ergebnis: Ein Change-Management Memo für das interne Marketing-Team.
Fähigkeit: Agent API, Advisory
Vorgehen:
1. Erfasse das Deprecation-Datum und die technischen Änderungen.
2. Identifiziere den größten Business-Value der neuen Agents API (schnelleres Streaming, moderne UIs).
3. Übersetze die technischen Vorteile (UIMessage Format) in Marketing-Vorteile.
4. Schreibe ein beruhigendes Memo an die Stakeholder.
Vorlage: Change-Management-Memo Agents-API-Migration (intern):
1. Anlass — Assistants-/Agents-Schnittstelle wird abgeschaltet (Deprecation-Datum im Langdock-Changelog verifizieren).
2. Business-Value — Agents API ist Vercel-AI-SDK-kompatibel: fluessigeres Echtzeit-Streaming, moderne Chat-UIs.
3. Beruhigung — parallele Migrations-Strategie statt Big-Bang; keine monatelange Downtime.
4. Ton — zukunftsorientiert, ohne UIMessage-JSON-Tiefe.
Artefakt: Ein internes Change-Management Memo.
Fallstricke:
- Das Memo enthält zu tiefe Details über das "UIMessage" JSON-Format, was die Marketing-Direktorin nicht interessiert.
- Das Risiko von Downtimes wird ignoriert, anstatt eine parallele Migrations-Strategie zu empfehlen.
Empfehlung: Eine parallele Migrations-Strategie empfehlen (altes und neues Tool laufen uebergangsweise nebeneinander), damit keine Downtime entsteht — das Downtime-Risiko nie verschweigen. Technische Details wie das UIMessage-JSON-Format aus dem Memo heraushalten und den Nutzen in Marketing-Sprache uebersetzen.
Anschluss: S-API-010

### S-API-010 Audit-Logs für DSGVO-Auskunftsanfragen
Trigger: Ein Kunde macht von seinem "Recht auf Auskunft" (Art. 15 DSGVO) Gebrauch. Der Datenschutzbeauftragte verlangt über die Audit Logs API lückenlose Protokolle, ob Kundendaten über einen bestimmten Langdock-Agenten verarbeitet wurden. (Quelle: research/50 A-15, sources/12 Q135)
Ziel: Die Audit Logs API nutzen, um rechtssichere, exportierbare Reports zu generieren.
Ergebnis: Ein Prozess-Blueprint für Legal & Compliance.
Fähigkeit: Audit Logs API
Vorgehen:
1. Verstehe die rechtliche Anforderung (Nachweisbarkeit von System-Aktivitäten).
2. Instruiere Little Data, den Abruf via Audit Logs API zu spezifizieren.
3. Berücksichtige die Pagination der Audit Logs API (Seitengröße in der Größenordnung weniger Dutzend Einträge pro Request — exakten Wert in der Langdock-API-Doku verifizieren; in jedem Fall ist eine Schleife über alle Seiten nötig).
4. Dokumentiere den Prozess für den Datenschutzbeauftragten.
Vorlage: DSGVO-Auskunftsprozess Audit-Logs (Legal & Compliance):
1. Anforderung — Art. 15 DSGVO: lueckenloser Nachweis der System-Aktivitaeten zu einem Agenten.
2. Abruf — Audit Logs API (NICHT Usage-Logs: Audit = Konfigurations-/System-Aktivitaet, Usage = Token-Verbrauch).
3. Pagination — Seitengroesse begrenzt (Wert in der API-Doku verifizieren); Schleife ueber alle Seiten zwingend.
4. Datenschutz — PII in den Logs selbst als Risiko bewerten und im Prozess adressieren.
Artefakt: Ein DSGVO-Auskunftsprozess Dokument.
Fallstricke:
- Die KI verwechselt Audit-Logs (Wer hat das System konfiguriert?) mit Usage-Logs (Wer hat welche Tokens verbraucht?).
- Der Datenschutzaspekt (PII-Daten in Logs) wird in der Risikoanalyse vergessen.
Empfehlung: Strikt Audit-Logs (wer hat konfiguriert?) von Usage-Logs (wer hat Tokens verbraucht?) trennen — die Auskunftsanfrage zielt auf Audit-Logs. Die Pagination zwingend als Schleife ueber alle Seiten implementieren und PII in den Logs selbst in der Risikoanalyse mitfuehren.
Anschluss: S-API-011

### S-API-011 Vendor-Lock-in-Prävention durch BYOK-Strategie

Trigger: Die Marketing-Direktorin erfährt, dass Langdock die Preise für das nächste Jahr um 15 % anhebt. Das Leadership-Team diskutiert, ob man zu schnell zu abhängig von einem einzelnen KI-Anbieter geworden ist. Der CTO fragt: "Was kostet es uns, von Langdock wegzugehen?" (Quelle: A-03)
Ziel: Vendor-Lock-in-Risiko quantifizieren und eine portable Infrastrukturstrategie definieren, die den Exit-Aufwand auf unter vier Wochen reduziert.
Ergebnis: Ein Lock-in-Risikoprofil mit konkreten Gegenmaßnahmen (BYOK-Setup, Export-Pflicht, Wechsel-Drill).
Fähigkeit: Deployment Advisory, BYOC/BYOK Konfigurationsberatung
Vorgehen:
1. Inventarisiere alle Abhängigkeiten: welche Agenten, Wissensordner, Workflows und API-Integrationen existieren und wie portabel sie sind.
2. Beauftrage Little Data, eine BYOK-Strategie zu erläutern — eigene Anthropic- oder OpenAI-Keys im Langdock-Admin hinterlegen, sodass Inferenz-Kosten und Modell-Verträge jederzeit portierbar bleiben.
3. Definiere eine jährliche Export-Pflicht: alle Wissensordner-Dokumente als Markdown sichern, alle Agenten-System-Prompts in einem Git-Repository versionieren.
4. Skizziere einen "Wechsel-Drill" (1 Tag/Jahr), bei dem ein Testsetup auf direktem Anthropic-API-Zugriff läuft.
Vorlage: Vendor-Lock-in-Executive-Risikobericht (Ampel + BYOK-Plan):
1. Inventar — Agenten, Wissensordner, Workflows, API-Integrationen je mit Portabilitaets-Ampel (rot/gelb/gruen).
2. BYOK-Setup — eigene Anthropic-/OpenAI-Keys im Langdock-Admin; Inferenz-Kosten und Modell-Vertraege portierbar.
3. Export-Pflicht — Wissensordner jaehrlich als Markdown sichern, System-Prompts in Git versionieren.
4. Wechsel-Drill — 1 Tag/Jahr Testsetup auf direktem Anthropic-API-Zugriff.
Artefakt: Ein Executive-Risikobericht (Ampel-Tabelle + BYOK-Aktionsplan).
Fallstricke:
- Das Modell bewertet alle Komponenten als "niedrig riskant", weil Langdock OpenAI-kompatibel ist — ignoriert dabei aber, dass proprietäre Workflow-Konfigurationen nicht exportierbar sind.
- Die BYOK-Empfehlung vergisst, dass im BYOK-Modus die internen Token-Preise für das Dashboard manuell vom Admin gepflegt werden müssen.
Empfehlung: Proprietaere Workflow-Konfigurationen explizit als 'nicht exportierbar' (rot) bewerten — die OpenAI-Kompatibilitaet macht nur die API-Schicht portabel, nicht die No-Code-Workflows. Im BYOK-Modus daran denken, dass die internen Token-Preise fuers Dashboard manuell vom Admin gepflegt werden muessen.
Anschluss: S-API-012

### S-API-012 Prompt-Caching-ROI-Kalkulation für Briefing-Templates

Trigger: Das Content-Team nutzt täglich denselben 3.000-Token-System-Prompt für den Brand-Voice-Agenten. Ein Entwickler erwähnt, dass Anthropic und OpenAI Prompt-Caching für wiederkehrende Kontextanteile anbieten — das könnte die Token-Kosten erheblich senken. Die Marketing-Direktorin will wissen, ob sich die technische Implementierung lohnt. (Quelle: A-22)
Ziel: Den finanziellen Break-even für Prompt-Caching berechnen und eine Implementierungsempfehlung für die IT formulieren.
Ergebnis: Eine ROI-Kalkulation und ein technisches Briefing für die Einrichtung von Prompt-Caching via Langdock API.
Fähigkeit: Completion API, Advisory, Cost-Engineering-Beratung
Vorgehen:
1. Erfasse die relevanten Parameter: Prompt-Template-Länge in Tokens, durchschnittliche Anzahl API-Requests pro Tag und aktuellen Token-Preis des eingesetzten Modells.
2. Lass Little Data den Break-even berechnen: Prompt-Caching lohnt sich, wenn der Template-Anteil über 2.048 Tokens liegt UND mindestens 5 Requests pro Minute gesendet werden.
3. Formuliere das technische Briefing für die IT: Cache-Prefix im System-Prompt markieren, TTL (Time-to-Live) verstehen, Monitoring der Cache-Hit-Rate einrichten.
4. Definiere eine Erfolgsmessung: monatliche Token-Kostenvergleich vor und nach Caching-Aktivierung.
Vorlage: Prompt-Caching-ROI-Briefing (max. 1 DIN-A4):
1. Parameter — Template-Laenge in Tokens, Requests/Tag, Token-Preis des Modells.
2. Break-even — Caching lohnt ab Template-Anteil >2.048 Tokens UND mindestens 5 Requests/Minute.
3. Mechanik — nur statischen System-Prompt-Anteil als Cache-Prefix markieren (variabler User-Input ist nicht cacheaehig), TTL verstehen, Cache-Hit-Rate monitoren.
4. Erfolgsmessung — monatlicher Token-Kostenvergleich vorher/nachher.
Artefakt: Eine ROI-Tabelle + technisches IT-Briefing (max. 1 DIN-A4-Seite).
Fallstricke:
- Die Kalkulation vernachlässigt den 10%-Aufschlag auf Token-Preise bei Langdock API-Nutzung (gegenüber direktem Provider-Zugriff), was die ROI-Schwelle nach oben verschiebt.
- Das Modell empfiehlt, den gesamten Prompt zu cachen, obwohl nur der statische System-Prompt-Anteil cacheähig ist — der variable User-Input ist es nicht.
Empfehlung: Nur den statischen System-Prompt-Anteil cachen, nie den variablen User-Input — und in die ROI-Schwelle den 10-%-Langdock-API-Aufschlag auf Token-Preise einrechnen, der den Break-even nach oben verschiebt. Die Cache-Hit-Rate monitoren, um den realen Effekt zu belegen.
Anschluss: S-API-013

### S-API-013 Langdock als Backend für das interne Marketing-Dashboard

Trigger: Das Marketing-Ops-Team hat ein internes React-Dashboard gebaut, das KPIs anzeigt. Die Direktorin möchte, dass Nutzer im Dashboard eine KI-Funktion aufrufen können ("Erkläre mir diese Anomalie in unserem Traffic-Graph"), ohne dafür in ein separates Langdock-Tab wechseln zu müssen. (Quelle: sources/10 S-072)
Ziel: Langdock als unsichtbares KI-Backend in das bestehende interne Tool einbetten, ohne den API-Key im Frontend zu exponieren.
Ergebnis: Ein Architektur-Blueprint für die IT, der das Backend-for-Frontend (BFF)-Pattern mit Langdock Agent API beschreibt.
Fähigkeit: Agent API, API Security Advisory
Vorgehen:
1. Definiere den gewünschten User-Flow: Nutzer klickt im Dashboard auf "KI-Analyse", der Klick sendet Kontext-Daten (Graph-Werte) an das interne Backend.
2. Beauftrage Little Data, das BFF-Pattern zu beschreiben: internes Backend hält den Langdock API-Key in Environment Variables, leitet Anfragen an den Agent-Endpoint weiter und streamt die Antwort zurück an den Browser.
3. Kläre die CORS-Posture: direkte Browser-to-Langdock-Aufrufe sind architektonisch blockiert — das BFF ist zwingend, nicht optional.
4. Definiere Sicherheitsanforderungen: Authentifizierung der Dashboard-Nutzer vor dem BFF, Rate Limiting auf dem eigenen Server, kein Logging sensibler Kontextdaten.
Vorlage: BFF-Architektur-Blueprint Marketing-Dashboard (Agent API):
1. User-Flow — Klick 'KI-Analyse' sendet Graph-Kontext ans interne Backend.
2. BFF — Node-Backend haelt den Langdock-Key in Environment Variables, ruft den Agent-Endpoint (eigener Pfad, nicht Chat-Completions), streamt zurueck.
3. CORS — direkte Browser-to-Langdock-Aufrufe sind blockiert; BFF ist zwingend.
4. Security — Dashboard-Nutzer vor dem BFF authentifizieren, Server-seitiges Rate Limiting, kein Logging sensibler Kontextdaten.
Artefakt: Ein Architektur-Blueprint-Dokument (Komponenten, Datenfluss, Sicherheitsanforderungen).
Fallstricke:
- Der Blueprint vergisst, dass der Agent-Endpoint einen anderen URL-Pfad nutzt als der Chat-Completions-Endpoint — Verwechslung führt zu Laufzeitfehlern.
- Die Empfehlung setzt voraus, dass das Streaming der Antwort (Server-Sent Events) im BFF korrekt durchgereicht wird — ohne expliziten Hinweis implementiert die IT dies oft als blockierenden Single-Response-Call.
Empfehlung: Den Agent-Endpoint-Pfad explizit vom Chat-Completions-Pfad unterscheiden — die Verwechslung erzeugt Laufzeitfehler. Server-Sent-Events im BFF korrekt durchreichen, sonst implementiert die IT versehentlich einen blockierenden Single-Response-Call statt echtem Streaming.
Anschluss: S-API-014

### S-API-014 API-Key-Lifecycle-Management und Rotation

Trigger: Ein ausgeschiedener Entwickler der Web-Agentur hatte Zugriff auf den Langdock Workspace-API-Key. Die Personalabteilung meldet den Abgang erst zwei Wochen später. Die Marketing-Direktorin fragt sich, ob während dieser Zeit unautorisierte API-Nutzung möglich war und wie man solche Lücken zukünftig vermeidet. (Quelle: sources/12 Q120)
Ziel: Einen sicheren API-Key-Lifecycle-Prozess etablieren, der die Exposition bei Personalwechseln auf unter 24 Stunden begrenzt.
Ergebnis: Ein Key-Management-Prozess-Dokument und eine Checkliste für Offboarding-Szenarien.
Fähigkeit: API Security Advisory, Audit Logs API
Vorgehen:
1. Kläre die aktuelle Lage: Audit Logs API abfragen, um zu prüfen, ob in den letzten zwei Wochen ungewöhnliche API-Aktivitäten auf dem kompromittierten Key stattgefunden haben.
2. Definiere den Sofortmaßnahmen-Plan: Key sofort im Workspace-Adminbereich invalidieren und einen neuen Key generieren.
3. Erarbeite mit Little Data einen proaktiven Lifecycle-Prozess: separate Keys pro Projekt/Agentur, automatische 90-Tage-Rotation, Key-Inventar in einer geschützten Passwort-Datenbank.
4. Dokumentiere den Prozess als Offboarding-Checkliste für HR und IT.
Vorlage: API-Key-Lifecycle-Sicherheitsdokument (dreiteilig):
1. Sofortmassnahmen (2 h) — Key im Admin invalidieren, neuen generieren, Audit Logs API auf Anomalien pruefen.
2. Lifecycle-Prozess — separate Keys pro Projekt/Agentur, automatische 90-Tage-Rotation, Key-Inventar in geschuetzter Passwort-DB.
3. Offboarding-Checkliste — HR meldet Abgang sofort, IT rotiert betroffene Keys binnen 24 h.
Artefakt: Ein dreiteiliges Sicherheitsdokument (Sofortmaßnahmen, Lifecycle-Prozess, Offboarding-Checkliste).
Fallstricke:
- Das Modell schlägt vor, API-Keys in Slack zu teilen "für schnellen Zugriff" — dies ist ein klassisches Anti-Pattern, das die Exposition massiv erhöht.
- Die Audit-Log-Abfrage wird als Entwarnung missverstanden, wenn keine Anomalien gefunden werden — tatsächlich könnte der Angreifer unterhalb des Logging-Thresholds geblieben sein.
Empfehlung: Keys niemals in Slack o. Ae. teilen — das Anti-Pattern erhoeht die Exposition massiv; pro Projekt/Agentur einen separaten Key mit 90-Tage-Rotation fuehren. Ein leeres Audit-Log nicht als Entwarnung lesen: ein Angreifer kann unter der Logging-Schwelle geblieben sein, daher den Key trotzdem rotieren.
Anschluss: S-API-015

### S-API-015 Search API für Custom Retrieval in der internen Wissensdatenbank

Trigger: Das Marketing-Team hat 800 Dokumente im Langdock-Wissensordner (Briefings, Case Studies, Brand-Guidelines). Ein internes SharePoint-Wiki soll nun eine "Smart Search"-Funktion erhalten, die Dokumente semantisch findet — nicht nur per Keyword. Die IT fragt, ob die Langdock Search API dafür genutzt werden kann. (Quelle: sources/12 Q124)
Ziel: Die Langdock Search API als semantische Retrievalschicht für ein internes Tool evaluieren und ein Integrationskonzept liefern.
Ergebnis: Ein Evaluierungs-Memo und ein Integrationsarchitektur-Entwurf für die IT.
Fähigkeit: Search API (Knowledge Folder), Advisory
Vorgehen:
1. Erkläre der IT den Mechanismus der Langdock Search API: Sie nimmt eine natürlichsprachliche Suchanfrage entgegen und gibt die relevantesten Textfragmente (Chunks) aus dem Wissensordner zurück — inklusive Relevanz-Score.
2. Bewerte den Use-Case: semantische Suche über 800 Dokumente ist ein starker Fit für die Search API, solange die Dokumente korrekt in den Langdock-Wissensordner hochgeladen und indexiert sind.
3. Skizziere die Integrationsarchitektur: SharePoint-Suchfeld sendet Query via BFF an Langdock Search API, Ergebnisse (Chunks + Scores) werden im SharePoint-UI gerendert.
4. Weise auf Grenzen hin: die Search API liefert Chunks, nicht vollständige Dokumente — für Volltext-Download ist ein separater Step nötig.
Vorlage: Search-API-Integrationskonzept (semantische SharePoint-Suche):
1. Mechanik — Search API nimmt natuerlichsprachliche Query, gibt relevanteste Chunks + Relevanz-Score zurueck (retrievet, generiert NICHT).
2. Fit — 800 indexierte Wissensordner-Dokumente sind ein starker Fit.
3. Architektur — SharePoint-Suchfeld → BFF → Search API → Chunks/Scores im SharePoint-UI rendern.
4. Grenzen — liefert Chunks, keine Volltext-Dokumente; Volltext-Download als separater Step.
Artefakt: Ein Integrations-Architektur-Dokument mit Datenfluss-Diagramm (Textform) und Grenzen-Übersicht.
Fallstricke:
- Die Search API wird mit dem Agent-Endpoint verwechselt: die Search API retrievet nur Chunks aus dem Wissensordner, generiert aber keinen neuen Text — das ist ein fundamentaler Unterschied.
- Das Konzept vergisst, dass die Relevanz-Scores kontextuell sind und nicht als absolute Qualitätsbewertung interpretiert werden dürfen (ein Score von 0.6 ist nicht zwingend "gut").
Empfehlung: Die Search API klar vom Agent-Endpoint abgrenzen — sie retrievet nur Chunks aus dem Wissensordner, generiert keinen neuen Text. Relevanz-Scores als kontextuell behandeln, nicht als absolute Qualitaet (0.6 ist nicht automatisch 'gut'), und fuer Volltext einen separaten Download-Step einplanen.
Anschluss: S-API-016

### S-API-016 Batch-Content-Generierung für saisonale Kampagnen

Trigger: Das E-Commerce-Marketing-Team muss vor dem Weihnachtsgeschäft 2.000 ProduktkurzBeschreibungen (je 80 Wörter) aktualisieren. Der Produktkatalog liegt als CSV vor. Die Direktorin will wissen, wie dieser Job über das Wochenende automatisch via API abgearbeitet werden kann, ohne die Rate Limits zu sprengen. (Quelle: sources/10 S-066)
Ziel: Eine Batch-Verarbeitungs-Architektur skizzieren, die 2.000 Completion-Requests kontrolliert und kostenoptimiert durch die Langdock API sendet.
Ergebnis: Ein Architektur-Briefing mit Queue-Strategie, Kostenabschätzung und Fehlerbehandlung für die IT.
Fähigkeit: Completion API, Advisory, Rate-Limit-Planung
Vorgehen:
1. Kalkuliere die Anforderungen: 2.000 Requests bei 500 RPM Limit = mindestens 4 Minuten reine Verarbeitungszeit, in der Praxis mit Sicherheitspuffer 15–30 Minuten.
2. Beauftrage Little Data, eine Queue-Strategie zu entwerfen: Requests in Batches von 50 gruppieren, Exponential-Backoff bei HTTP 429 Fehlern, maximale 3 Retry-Versuche.
3. Erstelle eine Kostenschätzung auf Basis der Prompt-Länge (Produktdaten-Input + 80-Wörter-Output) und des gewählten Modells.
4. Plane den Monitoring-Punkt: Usage Export API am nächsten Morgen abfragen, um tatsächliche Token-Kosten mit der Schätzung zu vergleichen.
5. Weise auf die Budget-Grenzen hin: das Per-Workflow-Limit liegt standardmäßig bei ca. 25 Euro pro Lauf, das Workspace-Budget bei ca. 500 Euro pro Monat (Stand 2026-06, im Admin erhöhbar — aktuelle Werte vorab verifizieren) — bei großen Jobs müssen beide vor dem Lauf angepasst und ein optionales Per-Execution-Limit gegen Endlosschleifen gesetzt werden.
Vorlage: Batch-Content-Architektur-Briefing (2.000 Beschreibungen):
1. Volumen — 2.000 Requests bei ~500 RPM = min. 4 Min., mit Puffer 15–30 Min.
2. Queue — Batches à 50, Exponential-Backoff bei HTTP 429, max. 3 Retries.
3. Kosten — Schaetzung auf Input (Produktdaten) + 80-Woerter-Output mit Haiku; Streaming gegen 100-s-Non-Streaming-Timeout.
4. Budget — Per-Lauf-Limit ~25 €, Workspace-Budget ~500 €/Monat (Stand 2026-06, im Admin erhoehbar, vorab verifizieren); beide vor grossen Jobs anpassen.
5. Monitoring — Usage Export API am Folgetag gegen die Schaetzung abgleichen.
Artefakt: Ein Architektur-Briefing (Queue-Strategie, Fehlerbehandlung) + Kosten-Schätzungssheet.
Fallstricke:
- Das Modell vergisst das 100-Sekunden Timeout für Non-Streaming-Requests — bei langen Produktbeschreibungen kann dies Timeouts verursachen, wenn kein Streaming aktiviert ist.
- Die Kostenschätzung basiert auf Netto-Token-Preisen und ignoriert den Langdock-API-Aufschlag von 10 % auf Modell-Provider-Preise.
Empfehlung: Streaming aktivieren, um das 100-s-Non-Streaming-Timeout bei langen Beschreibungen zu vermeiden, und in die Kostenschaetzung den 10-%-Langdock-API-Aufschlag auf die Netto-Token-Preise einrechnen. Per-Lauf- und Workspace-Budget vor dem Wochenend-Job anheben und ein Per-Execution-Limit gegen Endlosschleifen setzen.
Anschluss: S-API-017

### S-API-017 BYOM-Architektur-Entscheidung für sensible Marketingdaten

Trigger: Der Datenschutzbeauftragte signalisiert, dass bestimmte Kundensegmentierungsdaten (personenbezogene Kaufhistorien) nicht an externe Modell-Provider gesendet werden dürfen. Das Marketing-Team möchte trotzdem KI-gestützte Segmentierungsvorschläge generieren. Der CTO fragt, ob Langdock mit einem internen, self-hosted Modell (BYOM) kombiniert werden kann. (Quelle: sources/12 Q128)
Ziel: Die BYOM-Option (Bring Your Own Model) als datenschutzkonforme Lösung evaluieren und die Entscheidungsmatrix für CTO und DSB aufbereiten.
Ergebnis: Eine Entscheidungsvorlage (Pros/Cons-Matrix + Empfehlung) für CTO und Datenschutzbeauftragten.
Fähigkeit: Deployment Advisory (BYOM), Advisory
Vorgehen:
1. Kläre das Datenschutzproblem: Welche Daten sind betroffen, warum dürfen sie nicht an externe Provider? (DSGVO, interne Datenhaltungsrichtlinie?)
2. Beauftrage Little Data, das BYOM-Konzept zu erläutern: self-hosted Open-Source-Modell (z.B. Llama-Derivat) in der eigenen Cloud/VPC, Langdock als Orchestrierungsebene verbindet sich per BYOM-Konfiguration mit dem internen Modell-Endpoint.
3. Bewerte die Einschränkungen: self-hosted Modelle sind typischerweise schwächer als Frontier-Modelle; Performance-Tests für den spezifischen Use-Case sind zwingend vor dem Commitment.
4. Formuliere eine klare Empfehlung: BYOM für Hochrisiko-Daten, BYOC/SaaS für Standard-Marketing-Tasks.
Prompt:
> "Du bist ein KI-Infrastrukturberater. Unser DSB hat Bedenken, Kundendaten an externe Modell-Provider zu senden. Unser CTO fragt, ob wir ein internes Modell via BYOM in Langdock integrieren können. Erkläre das BYOM-Konzept, seine technischen Voraussetzungen und seine Grenzen (Modell-Performance, Wartungsaufwand). Liefere eine Entscheidungsmatrix: Wann BYOM, wann BYOC, wann Standard-SaaS? Formatiere als strukturierte Tabelle mit Empfehlung."
Artefakt: Eine Entscheidungsmatrix (Tabelle) + Empfehlung mit Begründung für DSB und CTO.
Fallstricke:
- Das Modell empfiehlt BYOM pauschal als "sicherste Option", ohne auf den erheblichen Betriebsaufwand (GPU-Infrastruktur, Modell-Updates, Security-Patching) hinzuweisen.
- Die Entscheidungsmatrix unterschätzt, dass BYOM-Modelle für komplexe Marketing-Tasks (Tonalitätsprüfung, multilinguale Texte) deutlich schlechtere Ergebnisse liefern können als Frontier-Modelle.
Anschluss: S-API-018

### S-API-018 Token-Budget-Management via API für Quartals-Kampagnen

Trigger: Das Q1-Budget für KI-Kosten ist bereits in der dritten Woche des Quartals zu 70 % verbraucht, weil ein neu eingestellter Performance-Manager versehentlich einen schleifenden Workflow mit Premium-Modellen (Claude Opus) laufen ließ. Die Marketing-Direktorin will proaktive Budgetgrenzen via API einrichten. (Quelle: sources/12 Q122 und Q125)
Ziel: Ein Token-Budget-Management-System etablieren, das Kostenüberschreitungen durch automatische Warnschwellen und harte Limits verhindert.
Ergebnis: Eine Prozessdokumentation für den Workspace-Admin: Wo werden Budget-Limits gesetzt, wie werden Warnungen ausgelöst, und wie wird per Usage Export API ein wöchentliches Kosten-Dashboard befüllt.
Fähigkeit: Usage Export API, Advisory, Workspace-Admin-Konfiguration
Vorgehen:
1. Analysiere den aktuellen Schaden: Usage Export API-Daten für die vergangenen drei Wochen abrufen und den kostentreibenden Workflow identifizieren (User-ID + Agent-ID + Modell).
2. Implementiere harte Limits: im Workspace-Admin monatliche Budgets pro User-Gruppe und per-Workflow-Kostenobergrenze (Standard: 25 Euro/Lauf) konfigurieren.
3. Definiere Soft-Limit-Warnschwellen: ab 80 % des Monatsbudgets automatisch eine E-Mail-Warnung an den Admin auslösen.
4. Richte ein wöchentliches Kosten-Reporting ein: Usage Export API-Daten automatisch jeden Montag in ein Power-BI-Dashboard laden.
Prompt:
> "Du bist ein FinOps-Berater. Ein Mitarbeiter hat versehentlich einen Workflow mit Claude Opus in einer Endlosschleife laufen lassen und 70 % unseres Q1-KI-Budgets verbrannt. Erkläre: (1) Wie identifiziere ich via Usage Export API den Verursacher? (2) Welche Budgetgrenzen kann ich im Langdock-Admin einrichten? (3) Wie setze ich eine Soft-Limit-Warnung auf 80 % des Monatsbudgets? Liefere eine Schritt-für-Schritt-Prozessdokumentation für unseren Workspace-Admin."
Artefakt: Eine Prozessdokumentation für den Workspace-Admin (Sofortmaßnahmen + dauerhafte Budget-Governance).
Fallstricke:
- Das Modell verwechselt das Workflow-Run-Limit (25 Euro/Lauf) mit dem Workspace-Monatslimit (500 Euro) — beide Grenzen sind unabhängig und müssen separat konfiguriert werden.
- Die Empfehlung setzt auf rein reaktive Maßnahmen (Limits setzen nach dem Schaden) ohne präventives Modell-Gating — teure Modelle wie Opus sollten nur mit expliziter Admin-Freigabe nutzbar sein.
Anschluss: S-API-019

### S-API-019 Programmatische Wissensordner-Aktualisierung aus dem CMS

Trigger: Das Content-Team veröffentlicht wöchentlich 15–20 neue Blog-Artikel im CMS. Der Brand-Voice-Agent soll automatisch die neuesten Artikel kennen, ohne dass das Team jeden Upload manuell in den Langdock-Wissensordner hochlädt. Die Content-Managerin fragt: "Kann das automatisiert werden?" (Quelle: sources/10 S-094, A-36)
Ziel: Einen vollautomatischen Sync-Prozess definieren, der neue CMS-Inhalte programmatisch via Langdock Knowledge Folder API in den Wissensordner überträgt.
Ergebnis: Ein Technisches Integrationskonzept für den CMS-zu-Langdock-Sync, inklusive Fehlerbehandlung und Dateiformatvorgaben.
Fähigkeit: Knowledge Folder API, Advisory
Vorgehen:
1. Definiere den Trigger: CMS-Webhook feuert bei jeder Veröffentlichung eines neuen Artikels.
2. Spezifiziere den Prozess: CMS-Artikel als Markdown oder Plain-Text exportieren (XLSX und komplexe HTML-Layouts müssen konvertiert werden), dann via Knowledge Folder API hochladen.
3. Implementiere Deduplizierung: vor jedem Upload prüfen, ob ein Dokument mit gleichem Titel bereits existiert (List-Endpoint), um doppelte Einträge zu vermeiden.
4. Weise auf Grenzen hin: maximale Dateigröße 256 MB, maximale Anzahl Dateien pro Ordner 1.000 — bei Überschreitung müssen ältere Artikel archiviert und gelöscht werden.
Prompt:
> "Du bist ein Integrations-Architekt. Unser CMS soll neue Blog-Artikel automatisch in unseren Langdock-Wissensordner pushen. Skizziere den Sync-Prozess: CMS-Webhook → Dateikonvertierung → Knowledge Folder API Upload. Welche Formate akzeptiert die API? Wie vermeide ich Duplikate? Was sind die harten Grenzen (Dateigröße, Dateianzahl pro Ordner)? Liefere ein technisches Integrationskonzept als strukturierte Stichpunktliste."
Artefakt: Ein technisches Integrationskonzept (Prozessablauf, Formatvorgaben, Grenzwerte, Fehlerbehandlung).
Fallstricke:
- Das Konzept vergisst, dass die Knowledge Folder API keine Real-time-Indexierung garantiert — nach dem Upload kann die Vektorisierung einige Minuten dauern, was bei zeitkritischen Inhalten relevant ist.
- Der Webhook sendet CMS-Artikel als HTML; das Modell empfiehlt, HTML direkt hochzuladen, obwohl komplexes HTML die Chunking-Qualität der Vektorindexierung stark verschlechtert.
Anschluss: S-API-020

### S-API-020 Agent-Observability mit Audit-Log-Export in BI-Tools

Trigger: Das Marketing-Ops-Team hat acht produktive Langdock-Agenten im Einsatz. Die Marketing-Direktorin möchte monatlich sehen: Welche Agenten werden wie oft genutzt? Wann gibt es Ausreißer in der Response-Time? Gibt es Muster bei Ablehnungen (Refusals)? Bisher fehlt jede Observability. (Quelle: A-36)
Ziel: Ein Observability-Framework definieren, das Audit-Log-Daten aus der Langdock API in ein bestehendes BI-Tool (Datadog, Grafana oder Power BI) überführt und SLOs für Agenten messbar macht.
Ergebnis: Ein Observability-Konzept mit definierten SLOs, API-Export-Prozess und Dashboard-Anforderungen.
Fähigkeit: Audit Logs API, Usage Export API, Advisory
Vorgehen:
1. Definiere die relevanten SLOs (Service Level Objectives) für Agenten: Response-Time (P95 unter 8 Sekunden), Retrieval-Hit-Rate (mind. 70 % relevante Chunks), Refusal-Rate (unter 5 % der Anfragen).
2. Spezifiziere den Datenexport: Audit Logs API täglich abfragen (Pagination beachten: max. 50 Einträge pro Request), Usage Export API für Token-Kosten.
3. Skizziere das Dashboard-Design: eine Ansicht pro Agent mit Trend-Linien für alle drei SLOs plus Kosten-Overlay.
4. Definiere Eskalations-Regeln: bei mehr als zwei aufeinanderfolgenden Wochen mit SLO-Verletzung → Agent-Review und System-Prompt-Überarbeitung.
Prompt:
> "Du bist ein Platform-Engineer für Marketing-KI-Infrastruktur. Wir betreiben 8 Langdock-Agenten und haben keinerlei Observability. Ich will SLOs definieren und die Daten via Audit Logs API in Power BI visualisieren. Welche SLOs sind für Marketing-Agenten sinnvoll? Wie exportiere ich die Daten täglich (Pagination!)? Liefere ein Observability-Konzept mit Dashboard-Anforderungen und Eskalationsregeln."
Artefakt: Ein Observability-Konzept-Dokument (SLOs, Export-Prozess, Dashboard-Anforderungen, Eskalationsregeln).
Fallstricke:
- Audit Logs und Usage Logs werden gleichgesetzt: Audit Logs erfassen Konfigurations- und Sicherheitsereignisse, Usage Logs erfassen Token-Verbrauch — beide sind für Observability nötig, aber über unterschiedliche Endpoints abrufbar.
- Die definierten SLOs sind für alle Agenten gleich — ein einfacher FAQ-Agent und ein tiefer Recherche-Agent haben fundamental unterschiedliche Response-Time-Profile.
Anschluss: S-API-021

### S-API-021 Fallback-Playbook für Langdock-Ausfälle

Trigger: Langdock hat an einem kritischen Kampagnentag einen ungeplanten Ausfall von 90 Minuten. Das Content-Team steht still. Anschließend fordert das Management ein schriftliches Fallback-Playbook, das zukünftig sicherstellt, dass das Team innerhalb von 15 Minuten auf eine Alternativlösung wechseln kann. (Quelle: A-44)
Ziel: Ein Business-Continuity-Playbook erarbeiten, das bei Langdock-Ausfällen den Marketing-Betrieb auf Minimal-Niveau aufrecht erhält.
Ergebnis: Ein einseitiges Fallback-Playbook mit konkreten Sofortmaßnahmen, Backup-Ressourcen und SLA-Monitoring-Anweisungen.
Fähigkeit: Deployment Advisory, Advisory
Vorgehen:
1. Inventarisiere die kritischen Abhängigkeiten: Welche Marketing-Prozesse sind zeitkritisch (Content-Publishing-Deadlines, laufende Kampagnen) und welche könnten eine Stunde warten?
2. Definiere die Fallback-Ressourcen: Die drei wichtigsten Agent-System-Prompts als Markdown lokal sichern, direkter Anthropic Claude-Webzugriff (claude.ai) oder OpenAI ChatGPT als Ad-hoc-Ersatz.
3. Dokumentiere das SLA-Monitoring: status.langdock.com als erster Check-Punkt; Kommunikationskanal für das Team im Ausfall-Fall (z.B. Slack-Channel #ki-fallback).
4. Definiere einen Wiederherstellungs-Test: einmal pro Quartal einen simulierten 30-minütigen Ausfall üben, um die Reaktionszeit des Teams zu messen.
Prompt:
> "Du bist ein Business-Continuity-Berater. Langdock war heute 90 Minuten ausgefallen und hat unsere Kampagnen-Arbeit blockiert. Erstelle ein einseitiges Fallback-Playbook. Es muss beinhalten: (1) Sofortmaßnahmen in den ersten 15 Minuten, (2) welche Prozesse wir manuell weiterführen vs. pausieren, (3) lokale Backup-Ressourcen (Agent-Prompts als Markdown, alternative KI-Tools), (4) SLA-Monitoring via status.langdock.com. Tonfall: operativ, klar, ohne Marketing-Jargon."
Artefakt: Ein einseitiges Fallback-Playbook (Sofortmaßnahmen, Backup-Ressourcen, Monitoring, Test-Drill).
Fallstricke:
- Das Playbook empfiehlt, proprietäre Kunden- oder Unternehmensdaten in externe KI-Tools (claude.ai, ChatGPT) im Ausfall-Fall einzugeben — dies kann gegen die eigene Datenschutzrichtlinie verstoßen.
- Der Wiederherstellungs-Test wird als einmaliges Event geplant, statt als quartalsweise Pflichtübung — ohne Wiederholung verkommt das Playbook zur Makulatur.
Anschluss: S-API-022

### S-API-022 Integrations-Test-Strategie vor dem Go-Live

Trigger: Ein neuer Langdock-Agent soll nächste Woche produktiv gehen und ist über die API in das CRM, das CMS und ein E-Mail-Marketing-Tool integriert. Der zuständige Entwickler fragt die Marketing-Direktorin: "Wie sollen wir das testen?" Das Team hat keine definierte Test-Strategie für API-Integrationen. (Quelle: sources/12 Q108)
Ziel: Eine strukturierte Integrations-Test-Strategie definieren, die technische Fehler und inhaltliche Qualitätsprobleme vor dem Go-Live identifiziert.
Ergebnis: Eine Test-Checkliste mit Testszenarien für alle drei Integrationspunkte (CRM, CMS, E-Mail) und ein Abnahmekriterien-Dokument.
Fähigkeit: Agent API, Integrations API, Advisory
Vorgehen:
1. Trenne technische Tests (läuft die API-Verbindung?) von inhaltlichen Tests (ist der Agent-Output qualitativ korrekt?).
2. Definiere für jeden Integrationspunkt drei Testszenarien: Happy Path (alles funktioniert), Edge Case (ungewöhnliche Inputs), Failure Case (API-Timeout oder ungültige Daten).
3. Lege Abnahmekriterien fest: welche Fehlerrate ist akzeptabel, welche Response-Time ist maximal tolerierbar, wer ist die finale Abnahme-Person?
4. Plane einen UAT (User Acceptance Test) mit zwei tatsächlichen Marketing-Team-Mitgliedern, die typische Arbeitsaufgaben durchführen.
Prompt:
> "Du bist ein QA-Stratege für KI-Integrationen. Wir launchen nächste Woche einen Langdock-Agenten, der via API mit HubSpot, unserem CMS und Mailchimp verbunden ist. Erstelle eine Integrations-Test-Checkliste. Trenne technische Tests (API-Konnektivität) von inhaltlichen Tests (Output-Qualität). Definiere für jeden Integrationspunkt: Happy Path, Edge Case, Failure Case. Füge Abnahmekriterien hinzu."
Artefakt: Eine Integrations-Test-Checkliste mit Abnahmekriterien-Dokument.
Fallstricke:
- Die Test-Checkliste fokussiert rein auf technische Konnektivität und ignoriert inhaltliche Qualitätstests — ein Agent, der korrekte API-Antworten liefert, aber Brand-Voice-Fehler macht, besteht den Test zu Unrecht.
- Der UAT wird erst nach dem Go-Live-Datum eingeplant ("wir testen im Live-Betrieb") — damit fehlt ein expliziter Rollback-Plan für den Fall von Fehlfunktionen.
Anschluss: S-API-023

### S-API-023 Rate-Limit-Planung für internationale Kampagnenwellen

Trigger: Eine globale Marketingkampagne soll gleichzeitig in 12 Ländern launchen. Dafür werden an einem einzigen Tag 8.000 personalisierte E-Mail-Texte über die Langdock API generiert. Die Marketing-Direktorin fragt proaktiv beim Langdock Customer Success Manager nach, was sie beachten muss. (Quelle: sources/12 Q119, Q120)
Ziel: Rechtzeitig vor dem Kampagnentag das benötigte Rate-Limit-Quota beantragen und eine technische Ausführungsstrategie definieren, die 8.000 Requests ohne Unterbrechungen verarbeitet.
Ergebnis: Ein Quota-Increase-Antrag (Business Case) und ein technischer Ausführungsplan für den Kampagnentag.
Fähigkeit: Completion API, Rate-Limit-Advisory
Vorgehen:
1. Kalkuliere den tatsächlichen Bedarf: 8.000 Requests / 500 RPM Default-Limit = 16 Minuten reine Processing-Zeit; mit Personalisierungs-Overhead und Fehler-Retries realistische Schätzung auf 45–60 Minuten.
2. Entscheide, ob ein Quota Increase nötig ist: für einen kontrollierten Ein-Tages-Job ist das Default-Limit ausreichend, sofern die Requests gequeued und nicht gleichzeitig gesendet werden.
3. Formuliere bei Bedarf den Business Case für den Customer Success Manager: Datum, Umfang, Modell, erwartete Token-Menge, Bereitschaft zur Kostenübernahme.
4. Definiere einen technischen Ausführungsplan: Request-Queue mit Pacing (400 RPM als Safety-Margin), Monitoring-Alert bei 429-Fehlern, Checkpoint alle 1.000 Requests.
Prompt:
> "Du bist ein technischer Kampagnenplaner. Wir launchen in zwei Wochen eine globale Kampagne und müssen 8.000 personalisierte E-Mail-Texte via Langdock API generieren — alles an einem Tag. Erkläre: Brauchen wir ein Quota Increase? Wenn nein, wie strukturieren wir die Request-Queue, um die 500 RPM Grenze sicher zu unterschreiten? Wenn ja, wie formuliere ich einen Business Case für den CSM? Liefere einen Ausführungsplan als Timeline."
Artefakt: Ein technischer Ausführungsplan (Timeline + Queue-Strategie) und ein Business-Case-Template für Quota Increases.
Fallstricke:
- Das Modell empfiehlt, alle 8.000 Requests simultan zu senden ("parallel processing"), was sofort HTTP 429 Fehler auslöst und das System instabilisiert.
- Der Business Case für den CSM enthält keine Angabe zur erwarteten Token-Menge — ohne diese Information kann Langdock das Limit nicht sinnvoll hochsetzen.
Anschluss: S-API-024

### S-API-024 BYOK-Kostentransparenz und Billing-Reconciliation

Trigger: Das Marketing-Team hat vor sechs Monaten auf BYOK (Bring Your Own Key) mit eigenem Azure-OpenAI-Vertrag umgestellt, um von Enterprise-Rabatten zu profitieren. Jetzt stellt die Finanzabteilung fest, dass zwei Rechnungen (Langdock-Plattformlizenz + Azure-Modellkosten) separat ankommen und niemand weiß, wie man sie für das Controlling zusammenführt. (Quelle: sources/12 Q117, A-26)
Ziel: Ein Billing-Reconciliation-Prozess aufsetzen, der Langdock-Plattformkosten und BYOK-Modellkosten monatlich in einem einzigen Kosten-Dashboard zusammenführt.
Ergebnis: Eine Prozessdokumentation für Finance und Marketing-Ops: Welche Daten kommen woher, wie werden sie gematcht, und welches Format liefert das monatliche Controlling-Report.
Fähigkeit: Usage Export API, Advisory, BYOK-Konfigurationsberatung
Vorgehen:
1. Identifiziere die zwei Kostendatenquellen: (a) Langdock Usage Export API (enthält Token-Zählung pro User/Agent/Modell), (b) Azure Cost Management Portal (enthält tatsächliche USD-Kosten für Modell-Inferenz).
2. Definiere den Match-Key: Request-Timestamp + Modell-Name + approximative Token-Menge als Verknüpfungsschlüssel zwischen beiden Datenquellen.
3. Weise auf die Preispflege-Pflicht hin: im BYOK-Modus zeigt das Langdock-Dashboard geschätzte Kosten basierend auf manuell hinterlegten Token-Preisen — diese müssen bei jedem Azure-Preisupdate aktualisiert werden.
4. Skizziere das monatliche Reconciliation-Meeting: Finance + Marketing-Ops + IT, 30 Minuten, erster Werktag des Monats.
Prompt:
> "Du bist ein FinOps-Berater. Wir nutzen Langdock mit BYOK (eigenem Azure-OpenAI-Key). Wir erhalten zwei separate Rechnungen: Langdock-Plattformlizenz und Azure-Modellkosten. Unser Controlling verliert den Überblick. Erkläre: Welche Daten liefert die Langdock Usage Export API? Wie matche ich diese mit den Azure-Kosten? Welche Fallstricke gibt es bei der BYOK-Preispflege im Langdock-Dashboard? Liefere einen Reconciliation-Prozessplan."
Artefakt: Eine Billing-Reconciliation-Prozessdokumentation (Datenquellen, Match-Key, Preispflege-Checkliste, Meeting-Template).
Fallstricke:
- Das Modell schlägt vor, Azure-Kosten direkt aus dem Langdock-Dashboard zu lesen — im BYOK-Modus zeigt das Dashboard nur geschätzte Kosten basierend auf manuell hinterlegten Preisen, nicht die tatsächliche Azure-Abrechnung.
- Der Reconciliation-Prozess wird als einmaliges Setup betrachtet und vergisst, dass Azure regelmäßig Preise ändert, was die manuell hinterlegten Token-Preise im Langdock-Admin veralten lässt.
Anschluss: S-API-025

### S-API-025 API-Sicherheits-Audit vor Enterprise-Rollout

Trigger: Das Unternehmen plant, Langdock von einem 15-Personen-Piloten auf 200 Marketing-Mitarbeiter auszurollen. Der CISO verlangt vor dem Rollout ein formelles API-Sicherheits-Audit, das alle genutzten Endpoints, Authentifizierungsmethoden, Datenpfade und potenziellen Angriffsvektoren dokumentiert. (Quelle: sources/12 Q115, A-06)
Ziel: Ein umfassendes API-Sicherheitsprofil für den Enterprise-Rollout erstellen, das die Anforderungen des CISO erfüllt und gleichzeitig keine Marketing-Projektverzögerung verursacht.
Ergebnis: Ein API-Sicherheits-Audit-Dokument für den CISO, das alle genutzten Endpoints, Authentifizierungsmethoden, Datenpfade und Risikobewertungen enthält.
Fähigkeit: API Security Advisory, Deployment Advisory
Vorgehen:
1. Inventarisiere alle genutzten API-Endpoints: Completion API, Knowledge Folder API, Usage Export API, Audit Logs API, Agent API — für jeden Endpoint: Zweck, Authentifizierungsmethode (Bearer Token), Datensensitivität.
2. Dokumentiere die Authentifizierungs-Architektur: Workspace-Level API-Keys, keine Client-Side-Exposition (CORS-Block), BFF-Pattern für alle Web-Integrationen.
3. Bewerte die Datenpfade: Welche Daten verlassen das Unternehmensnetz? (Prompts an Modell-Provider) Wo liegen sie? (EU-Hosting, Zero-Data-Retention Policy) Welche bleiben intern? (BYOC/BYOM-Szenarien).
4. Identifiziere residuale Risiken: API-Key-Rotation-Frequenz, Abwesenheit von IP-Whitelisting ohne Static-IP-Feature, Risiko bei kompromittierten Keys.
5. Formuliere eine Security-Empfehlung: Static IP aktivieren, 90-Tage-Key-Rotation mandatory, Audit Logs in SIEM integrieren.
Prompt:
> "Du bist ein IT-Security-Auditor. Unser CISO braucht vor dem Enterprise-Rollout von Langdock auf 200 Nutzer ein API-Sicherheits-Audit-Dokument. Erstelle es. Dokumentiere: alle genutzten API-Endpoints und deren Zweck, die Authentifizierungsarchitektur (Bearer Token, BFF-Pattern, CORS-Block), die Datenpfade (EU-Hosting, Zero-Data-Retention), und residuale Risiken. Liefere abschließend 5 konkrete Sicherheitsempfehlungen. Formatiere formal wie ein IT-Sicherheitsbericht."
Artefakt: Ein formelles API-Sicherheits-Audit-Dokument (Endpoint-Inventar, Authentifizierungsarchitektur, Datenpfad-Analyse, Risikoübersicht, Empfehlungen).
Fallstricke:
- Der Audit-Bericht listet Risiken auf, ohne zwischen "akzeptablem Restrisiko bei Standardkonfiguration" und "kritischem Risiko ohne Sofortmaßnahme" zu unterscheiden — damit ist er für den CISO nicht entscheidungsfähig.
- Das Dokument behandelt die Zero-Data-Retention Policy als absolute Garantie, ohne darauf hinzuweisen, dass diese Policy modellabhängig ist und bei BYOC/BYOM separat mit dem jeweiligen Provider verifiziert werden muss.
Anschluss: S-API-026

### S-API-026 Streaming API für Echtzeit-KPI-Dashboards

Trigger: Das Marketing-Ops-Team hat ein internes Dashboard gebaut, das KI-generierte Textzusammenfassungen anzeigt — etwa tägliche Performance-Kommentare zu Kampagnen-KPIs. Bisher erscheint der gesamte Text erst nach 8–12 Sekunden auf einmal, was sich für Nutzer träge anfühlt. Die Direktorin fragt, ob Streaming die Nutzererfahrung verbessern kann. (Quelle: sources/12 Q108, A-36)
Ziel: Die wahrgenommene Antwortgeschwindigkeit von KI-Texten im internen Dashboard durch Server-Sent Events (SSE) auf unter 1 Sekunde Time-to-First-Token senken und das Non-Streaming-Timeout-Risiko eliminieren.
Ergebnis: Ein Architektur-Konzept für die IT: Wie streamt das interne Backend SSE-Chunks vom Langdock Completion-Endpoint durch zum Browser, und welche Fehlerbehandlung ist für unterbrochene Streams nötig.
Fähigkeit: Completion API (Streaming), Advisory
Vorgehen:
1. Erkläre den Unterschied: Non-Streaming wartet auf den vollständigen Token-Output und riskiert das 100-Sekunden-Timeout; Streaming sendet Token-für-Token via Server-Sent Events (SSE) und hat kein Gesamt-Timeout.
2. Beschreibe den serverseitigen Durchreicheprozess: das interne BFF-Backend öffnet eine SSE-Verbindung zum Langdock-Completion-Endpoint und leitet jeden empfangenen Chunk sofort an den Browser weiter — kein Puffern.
3. Definiere die Fehlerbehandlung: bei Verbindungsabbruch nach Beginn des Streams muss die UI den unvollständigen Text klar als abgebrochen markieren, nicht als fertig; ein "Retry"-Button ist Pflicht.
4. Weise auf die Browser-Limit-Falle hin: ältere HTTP/1.1-Browser erlauben maximal 6 gleichzeitige SSE-Verbindungen pro Domain — bei mehreren Dashboard-Kacheln kann dies zu Queue-Effekten führen.
Prompt:
> "Du bist ein Backend-Architekt. Unser internes Marketing-Dashboard soll KI-Kommentare zu Kampagnen-KPIs per Streaming anzeigen, statt 10 Sekunden auf den vollen Text zu warten. Erkläre, wie wir den Langdock Completion-Endpoint im Streaming-Modus via Server-Sent Events nutzen. Wie reicht unser Node.js-BFF die SSE-Chunks zum Browser durch? Nenne das 100-Sekunden-Timeout-Risiko bei Non-Streaming und erkläre die Fehlerbehandlung bei abgebrochenen Streams. Liefere ein Architektur-Konzept als strukturierte Stichpunktliste."
Artefakt: Ein Architektur-Konzept (SSE-Datenfluss, Fehlerbehandlung, Browser-Limits) als IT-Briefing.
Fallstricke:
- Das Konzept empfiehlt, den Stream direkt vom Browser an Langdock zu öffnen — dies scheitert an der CORS-Posture von Langdock und legt den API-Key im Frontend offen.
- Die Fehlerbehandlung wird vergessen: ein abgebrochener Stream hinterlässt einen halb fertigen Text im UI, den Nutzer fälschlicherweise als vollständige KI-Antwort interpretieren.
Anschluss: S-API-027

### S-API-027 Multi-Region-Deployment für DACH und EU-Zweigstellen

Trigger: Das Unternehmen hat Niederlassungen in Deutschland, Österreich und der Schweiz sowie einer Schweizer Tochtergesellschaft, die DSG-konform arbeiten muss. Die IT fragt, ob Langdock-Daten regionenübergreifend fließen dürfen oder ob separate Workspace-Instanzen nötig sind. (Quelle: sources/12 Q126, A-17)
Ziel: Eine Multi-Region-Deployment-Strategie definieren, die sowohl DSGVO (Deutschland, Österreich) als auch DSG Schweiz (Bundesgesetz über den Datenschutz) erfüllt, ohne unnötig mehrere Workspace-Instanzen zu betreiben.
Ergebnis: Eine Entscheidungsvorlage für IT und Datenschutzbeauftragte: ein Workspace vs. separater CH-Workspace, mit Vor-/Nachteilen und regulatorischer Begründung.
Fähigkeit: Deployment Advisory, Advisory
Vorgehen:
1. Kläre den regulatorischen Rahmen: EU-Hosting in Frankfurt deckt DSGVO für DE und AT ab; die Schweiz ist kein EU-Mitglied, aber der EDÖB (Eidgenössischer Datenschutz- und Öffentlichkeitsbeauftragter) erkennt die EU als adäquates Schutzniveau an — Standardvertragsklauseln sind der übliche Transfermechanismus.
2. Bewerte die Ein-Workspace-Option: solange keine personenbezogenen CH-Kundendaten verarbeitet werden, ist ein gemeinsamer EU-Workspace für alle DACH-Entitäten vertretbar — Kostenvorteil und einfachere Administration.
3. Bewerte die Zwei-Workspace-Option: wenn die CH-Tochter personenbezogene Daten im Workspace verarbeitet, kann ein separater CH-Workspace mit dediziertem EU-Hosting-Nachweis die Nachweislast gegenüber dem EDÖB vereinfachen.
4. Empfehle einen Entscheidungsbaum: Enthält der Workspace personenbezogene Daten von CH-Kunden? Nein → ein Workspace reicht. Ja → DSB und Rechtabteilung einbeziehen, Standardvertragsklauseln prüfen.
Prompt:
> "Du bist ein Datenschutz-Berater für DACH-Unternehmen. Wir haben Marketing-Teams in DE, AT und einer Schweizer Tochtergesellschaft. Alle nutzen denselben Langdock-Workspace. Ist das DSGVO- und DSG-Schweiz-konform? Wann brauchen wir separate Instanzen? Erkläre die Rolle des EDÖB-Adäquanzentscheids und der Standardvertragsklauseln. Liefere eine Entscheidungsvorlage mit Empfehlung und regulatorischer Begründung."
Artefakt: Eine Entscheidungsvorlage (Ein-Workspace vs. Multi-Workspace, regulatorische Begründung, Empfehlung).
Fallstricke:
- Das Modell behandelt die Schweiz wie einen EU-Mitgliedstaat und vergisst, dass CH eigene DSG-Anforderungen hat, die nicht automatisch durch DSGVO-Konformität erfüllt sind.
- Die Empfehlung verschweigt, dass der EDÖB-Adäquanzentscheid jederzeit revidiert werden kann — Unternehmen sollten nicht dauerhaft darauf aufbauen, ohne Standardvertragsklauseln als Backup zu haben.
Anschluss: S-API-028

### S-API-028 API-Versions-Management und Deprecation-Planung

Trigger: Das Entwicklungsteam hat erfahren, dass Langdock die ältere Assistants-API-Version in sechs Monaten abschaltet. Gleichzeitig laufen drei interne Tools auf dieser alten Version. Die Marketing-Direktorin will wissen, wie sie ein strukturiertes Deprecation-Management aufsetzen kann, das solche Überraschungen künftig verhindert. (Quelle: S-API-009, A-03)
Ziel: Einen systematischen API-Versions-Management-Prozess etablieren, der Deprecation-Ankündigungen frühzeitig erkennt, Migrations-Aufwände abschätzt und die betroffenen Teams rechtzeitig informiert.
Ergebnis: Ein Deprecation-Management-Framework (Inventar, Monitoring-Prozess, Migrations-Playbook) für IT und Marketing-Ops.
Fähigkeit: Advisory, Deployment Advisory
Vorgehen:
1. Erstelle ein API-Versions-Inventar: welche Langdock-API-Versionen nutzen welche internen Tools, seit wann, und welche Features sind versions-spezifisch?
2. Definiere ein Deprecation-Monitoring: Langdock-Changelog (Changelog-URL oder Developer-Newsletter) wöchentlich auf Deprecation-Notices prüfen; Verantwortlichen im IT-Team benennen.
3. Entwickle ein Migrations-Scoring: für jedes betroffene Tool — Nutzungsfrequenz × Abhängigkeitstiefe × geschätzter Migrationsaufwand = Prioritäts-Score.
4. Plane den Migrations-Workflow: Staging-Umgebung auf neuer API-Version testen, parallelen Betrieb für 4 Wochen, dann Cutover mit Rollback-Option.
Prompt:
> "Du bist ein IT-Change-Manager. Langdock hat angekündigt, eine API-Version in 6 Monaten abzuschalten. Wir haben 3 interne Tools, die sie nutzen. Erstelle ein Deprecation-Management-Framework: (1) API-Inventar-Template, (2) Monitoring-Prozess für zukünftige Deprecations, (3) Migrations-Playbook mit Prioritäts-Scoring. Erkläre, was bei der Migration von der alten auf die neue Agents API technisch zu beachten ist. Tonfall: operativ, nicht alarmistisch."
Artefakt: Ein Deprecation-Management-Framework (Inventar-Template, Monitoring-Prozess, Migrations-Playbook).
Fallstricke:
- Das Framework ignoriert, dass Langdock typischerweise eine Übergangsperiode von mehreren Monaten gewährt — das Team reagiert panisch statt geplant.
- Das Migrations-Playbook empfiehlt den direkten Cutover ohne Staging-Phase, was bei produktiven Tools zu ungeplanten Ausfällen führt.
Anschluss: S-API-029

### S-API-029 Intranet-Chatbot via Langdock Agent API

Trigger: Das interne Kommunikationsteam möchte auf dem Unternehmens-Intranet einen "Marketing-Assistenten" einbetten, den alle 200 Mitarbeiter nutzen können, um Brand-Guidelines, aktuelle Kampagnendetails und FAQ zu Marketing-Prozessen abzufragen — ohne die Langdock-UI selbst nutzen zu müssen. (Quelle: sources/10 S-099, A-36)
Ziel: Einen sicheren, unternehmensweiten Intranet-Chatbot auf Basis der Langdock Agent API aufbauen, der Zugriff auf aktuelle Marketing-Wissensbasis bietet und den API-Key niemals dem Browser exponiert.
Ergebnis: Ein Integrationskonzept für den Intranet-Chatbot: Authentifizierungsarchitektur, BFF-Pattern, Wissensordner-Anbindung und Nutzerverwaltung.
Fähigkeit: Agent API, Knowledge Folder API, API Security Advisory
Vorgehen:
1. Definiere die Architektur: Intranet-Frontend → unternehmenseigener BFF-Server (mit SSO-Authentifizierung via SAML/OIDC) → Langdock Agent API → Wissensordner mit Brand-Guidelines und Kampagnendokumentation.
2. Kläre die Nutzerauthentifizierung: nur Mitarbeiter mit aktivem SSO-Login dürfen den BFF-Proxy nutzen; der Langdock API-Key bleibt ausschließlich im BFF-Server in Umgebungsvariablen.
3. Spezifiziere den Wissensordner-Setup: Brand-Guidelines (PDF), FAQ-Dokumente (Markdown), Kampagnenbriefings (wöchentlich via Knowledge Folder API aktualisiert) — alle Dokumente werden im gleichen Langdock-Wissensordner gebündelt, den der Chatbot-Agent nutzt.
4. Definiere Nutzungsgrenzen: Rate Limiting auf BFF-Ebene (max. 20 Requests pro Nutzer pro Stunde), um API-Kosten-Ausreißer durch einzelne Heavy-User zu verhindern.
Prompt:
> "Du bist ein Enterprise-Architekt. Wir wollen einen internen Chatbot auf unserem Intranet bauen, der auf unseren Langdock-Marketing-Agenten zugreift. 200 Mitarbeiter sollen ihn nutzen, ohne direkt Langdock zu öffnen. Beschreibe die vollständige Architektur: SSO-Authentifizierung, BFF-Pattern, Wissensordner-Anbindung und Rate Limiting. Erkläre explizit, warum direkte Browser-zu-Langdock-Aufrufe nicht möglich sind. Liefere ein Architekturdiagramm als Textform."
Artefakt: Ein Enterprise-Integrationskonzept (Authentifizierungsarchitektur, BFF-Design, Wissensordner-Setup, Rate-Limiting-Strategie).
Fallstricke:
- Das Konzept verzichtet auf SSO-Integration und empfiehlt stattdessen eigene Username/Passwort-Verwaltung — dies widerspricht typischen Enterprise-Sicherheitsrichtlinien und schafft ein zusätzliches Credential-Management-Problem.
- Der BFF-Server implementiert kein Rate Limiting auf Nutzerebene; ein einziger Heavy-User kann den gesamten API-Kostenrahmen des Unternehmens überschreiten.
Anschluss: S-API-030

### S-API-030 Webhook-Empfänger-Architektur für externe Trigger

Trigger: Ein E-Commerce-Team möchte, dass Langdock automatisch einen Produkttext generiert, sobald ein neues Produkt im PIM-System angelegt wird. Das PIM kann Webhooks senden, aber das Team weiß nicht, wie man einen sicheren Webhook-Empfänger auf der Langdock-Seite einrichtet und absichert. (Quelle: sources/10 S-094, S-072)
Ziel: Eine sichere Webhook-Receiver-Architektur skizzieren, die externe Ereignisse (PIM-Neuanlage) in Langdock-Workflow-Aufrufe umwandelt — mit Authentifizierung des eingehenden Webhooks und Fehlertoleranz.
Ergebnis: Ein Webhook-Receiver-Architektur-Konzept für die IT: Signaturprüfung, idempotente Verarbeitung, Fehlerbehandlung bei Langdock-Ausfällen.
Fähigkeit: Integrations API, Deployment Advisory
Vorgehen:
1. Beschreibe die Webhook-Empfänger-Architektur: PIM sendet HTTP POST an unternehmenseigenen Webhook-Receiver-Endpunkt, der den eingehenden Request authentifiziert (HMAC-SHA256-Signaturprüfung mit einem im PIM und im Server hinterlegten Shared Secret).
2. Erkläre idempotente Verarbeitung: PIM-Systeme können Webhooks bei Netzwerkproblemen mehrfach senden — der Receiver muss anhand der Ereignis-ID prüfen, ob dieser Event bereits verarbeitet wurde, und Duplikate verwerfen.
3. Definiere den Langdock-Aufruf: nach erfolgreicher Webhook-Validierung sendet der Receiver eine Anfrage an den Langdock Completion- oder Agent-Endpoint, inklusive der relevanten Produktdaten aus dem Webhook-Payload.
4. Plane die Fehlerbehandlung: bei Langdock-Timeout oder 429-Fehler wird der Job in eine Retry-Queue gelegt (max. 3 Versuche mit Exponential-Backoff); nach dreimaligem Fehlschlag Alert an Marketing-Ops.
Prompt:
> "Du bist ein Backend-Architekt. Unser PIM soll bei jedem neuen Produkt einen Webhook senden, der in Langdock eine Produkttext-Generierung auslöst. Skizziere die vollständige Webhook-Receiver-Architektur: Wie prüfen wir die Echtheit des eingehenden Webhooks (HMAC-Signatur)? Wie verhindern wir doppelte Verarbeitung (Idempotenz)? Was passiert bei einem Langdock-Ausfall — Retry-Queue? Liefere ein technisches Konzept als strukturierten Text."
Artefakt: Ein Webhook-Receiver-Architektur-Konzept (Signaturprüfung, Idempotenz, Fehlerbehandlung, Retry-Queue).
Fallstricke:
- Das Konzept vergisst die Webhook-Authentifizierung und akzeptiert jeden eingehenden POST — dies erlaubt es Angreifern, beliebig viele Langdock-Requests auf Unternehmenskosten auszulösen.
- Idempotenz wird nicht implementiert: bei Netzwerkproblemen sendet das PIM den gleichen Webhook dreimal und erzeugt dreifach-duplizierte Produkttexte im System.
Anschluss: S-API-031

### S-API-031 Async-Batch-Job-Muster für nächtliche Massenverarbeitung

Trigger: Das SEO-Team will jeden Sonntag 500 Blog-Artikel auf veraltete Keyword-Dichten und Metadescriptions prüfen und aktualisieren. Die Analyse- und Entwurfsphase soll über Nacht laufen, die Übernahme in das Live-CMS bleibt aber an eine HITL-Freigabe am Morgen gebunden. (Quelle: sources/12 Q119, sources/10 S-066)
Ziel: Ein asynchrones Batch-Job-Muster definieren, das große Mengen an Langdock-API-Requests zuverlässig und kostenoptimiert über Nacht als Entwurfs-Pipeline verarbeitet, Fortschritt protokolliert, Fehler selbst behebt — und für jede Live-Änderung am CMS eine menschliche Freigabe verlangt.
Ergebnis: Ein Architektur-Briefing für die IT: Job-Orchestrierung, asynchrone Statusverfolgung, Checkpoint-Mechanismus, morgendliches Ergebnis-Reporting und eine Freigabe-Queue mit Diff-Vorschau pro Artikel.
Fähigkeit: Completion API, Advisory
Vorgehen:
1. Beschreibe die Job-Orchestrierung: ein Cron-Job (Sonntagabend 22:00 Uhr) liest alle 500 Artikel-IDs aus der Datenbank und stellt sie in eine persistente Job-Queue (z. B. Redis- oder Datenbankbasiert).
2. Erkläre den Worker-Prozess: ein Worker-Prozess zieht Jobs aus der Queue, sendet die Langdock-API-Anfrage, schreibt das Ergebnis zurück in die Datenbank und markiert den Job als erledigt — maximal 10 parallele Worker, um die 500-RPM-Grenze zu respektieren.
3. Definiere den Checkpoint-Mechanismus: jeder verarbeitete Job wird sofort in der Datenbank als "done" markiert; bei Systemabsturz kann der Job morgens am letzten Checkpoint fortgesetzt werden, ohne von vorne zu starten.
4. Plane das morgendliche Reporting plus die HITL-Freigabe-Queue: um 07:00 Uhr generiert ein automatischer Report via Usage Export API die Token-Kosten und listet alle fehlgeschlagenen Jobs auf; die generierten Vorschläge landen mit Diff-Vorschau in einer Freigabe-Queue, und nur explizit freigegebene Artikel werden ins Live-CMS gespielt — keine automatische Live-Aktualisierung.
Prompt:
> "Du bist ein Job-Orchestrierungs-Architekt. Wir wollen jeden Sonntag 500 Blog-Artikel via Langdock API nachts prüfen und Verbesserungsvorschläge generieren — die Übernahme ins Live-CMS bleibt an eine HITL-Freigabe am Morgen gebunden. Erkläre das Async-Batch-Job-Muster: Cron-Trigger, Job-Queue, Worker-Prozesse mit Rate-Limit-Kontrolle, Checkpoint-Mechanismus bei Absturz, morgendliches Fehler-Reporting via Usage Export API und eine Freigabe-Queue mit Diff-Vorschau. Die Verarbeitungsphase läuft ohne menschliche Überwachung, jede Live-Änderung erfordert Freigabe. Liefere das Konzept als Architektur-Briefing."
Artefakt: Ein Architektur-Briefing (Job-Queue, Worker-Prozesse, Checkpoint, morgendliches Reporting).
Fallstricke:
- Das Konzept verwendet ein synchrones Muster (warte auf jede API-Antwort, bevor du weitermachst) statt asynchroner Worker — bei 500 Artikeln dauert dies Stunden statt Minuten.
- Es gibt keinen Checkpoint-Mechanismus: bei einem Systemabsturz um 02:00 Uhr müssen alle bereits verarbeiteten 300 Artikel nochmals verarbeitet werden, was Kosten verdoppelt.
Anschluss: S-API-032

### S-API-032 Fehlerbehandlung und Retry-Logik — Beratungskonzept

Trigger: Nach dem ersten Produktionseinsatz der Langdock-API meldet das Entwicklungsteam sporadische Fehler: HTTP 429 (Rate Limit), gelegentliche HTTP 500 (Server Error) und Verbindungs-Timeouts. Das Team bittet um ein strukturiertes Fehlerbehandlungs-Konzept, das die Direktorin als Fachbriefing beauftragen soll. (Quelle: sources/12 Q119, S-API-001)
Ziel: Ein vollständiges Fehlerbehandlungs-Konzept für Langdock-API-Integrationen erarbeiten, das alle relevanten Fehlerklassen abdeckt, Exponential-Backoff korrekt einsetzt und vermeidet, dass ein einzelner Fehler den gesamten Workflow zum Absturz bringt.
Ergebnis: Ein Fehlerbehandlungs-Leitfaden für das Entwicklungsteam, der alle Fehlerklassen, Retry-Strategien und Monitoring-Hooks beschreibt.
Fähigkeit: Advisory, Completion API
Vorgehen:
1. Klassifiziere die Fehlertypen: HTTP 429 (transient, sofort retrybar nach Backoff), HTTP 500/503 (transient, nach kurzer Wartezeit retrybar), HTTP 400/401/403 (permanent, kein Retry — Problem im Request selbst), Verbindungs-Timeout (ambiguous — Request möglicherweise angekommen, daher idempotente Requests empfohlen).
2. Beschreibe Exponential-Backoff: bei HTTP 429 zunächst 1 Sekunde warten, dann 2, dann 4, dann 8 — maximal 3 Versuche; bei HTTP 429 den `Retry-After`-Header auslesen, falls vorhanden.
3. Erkläre Circuit-Breaker-Muster: nach fünf aufeinanderfolgenden Fehlern innerhalb einer Minute den Circuit "öffnen" (alle Requests pausieren für 60 Sekunden) und danach mit einem Test-Request prüfen, ob der Service wieder erreichbar ist.
4. Definiere Monitoring-Hooks: jeder Retry und jede Circuit-Breaker-Aktivierung wird geloggt; bei mehr als 10 Retries pro Stunde automatisch eine Alert-E-Mail an Marketing-Ops senden.
Prompt:
> "Du bist ein Resilience-Engineer. Unsere Langdock-API-Integration hat sporadische 429- und 500-Fehler sowie Timeouts. Erstelle einen Fehlerbehandlungs-Leitfaden für unser Entwicklungsteam. Erkläre: (1) Fehlerklassifikation — welche Fehler sind retrybar? (2) Exponential-Backoff-Strategie mit konkreten Wartezeiten, (3) Circuit-Breaker-Muster, (4) Monitoring-Hooks für automatische Alerts. Liefere das Konzept als strukturierten Leitfaden."
Artefakt: Ein Fehlerbehandlungs-Leitfaden (Fehlerklassen, Retry-Strategie, Circuit-Breaker, Monitoring-Hooks).
Fallstricke:
- Das Konzept empfiehlt, auch HTTP-400-Fehler zu retrien — dies ist sinnlos und verschwendet Rate-Limit-Quota, da HTTP 400 auf einen fehlerhaften Request hindeutet, der sich durch Wiederholung nicht verbessert.
- Der Retry-Mechanismus ignoriert Idempotenz: bei einem Verbindungs-Timeout könnte der erste Request bereits verarbeitet worden sein — blindes Retry erzeugt doppelte Ausgaben.
Anschluss: S-API-033

### S-API-033 API-Monitoring mit Langfuse und Datadog

Trigger: Das Marketing-Ops-Team betreibt mehrere produktive API-Integrationen und hat nach einem unbeobachteten Qualitätsproblem (der Brand-Voice-Agent lieferte eine Woche lang schlechte Outputs, ohne dass jemand es bemerkte) beschlossen, ein vollständiges API-Monitoring einzurichten. (Quelle: A-36, A-34)
Ziel: Eine Monitoring-Strategie für Langdock-API-Integrationen definieren, die sowohl technische API-Gesundheit (Latenz, Fehlerrate) als auch inhaltliche Qualität (Output-Drift) kontinuierlich überwacht und bei Auffälligkeiten automatisch eskaliert.
Ergebnis: Ein Monitoring-Konzept mit Toolauswahl (Langfuse für LLM-spezifisches Tracing, Datadog/Grafana für Infrastruktur-Metriken) und definierten Alerting-Schwellenwerten.
Fähigkeit: Audit Logs API, Usage Export API, Advisory
Vorgehen:
1. Unterscheide die zwei Monitoring-Schichten: Infrastruktur-Monitoring (Latenz, Fehlerrate, Verfügbarkeit) über Datadog oder Grafana; LLM-spezifisches Qualitäts-Monitoring (Output-Konsistenz, Prompt-Injection-Erkennung, Token-Kosten pro Request) über Langfuse oder ein ähnliches LLM-Observability-Tool.
2. Definiere die Key-Metriken: P95-Latenz unter 6 Sekunden, Fehlerrate unter 1 %, Token-Kosten pro Request-Typ im definierten Band, monatlicher Gesamtverbrauch unter Budget-Schwelle.
3. Skizziere den Datenfluss: Langdock Audit Logs API täglich → Datadog-Ingest-API; Usage Export API monatlich → Power BI; LLM-Tracing via Langfuse-SDK direkt im BFF-Server instrumentiert.
4. Definiere Alerting-Regeln: Fehlerrate über 2 % für 5 Minuten → PagerDuty-Alert; Token-Kosten an einem Tag über 150 % des Tagesdurchschnitts → E-Mail an Marketing-Ops; P95-Latenz über 10 Sekunden für 15 Minuten → Slack-Alert #ki-monitoring.
Prompt:
> "Du bist ein Platform-Engineering-Berater. Unsere Langdock-API-Integrationen laufen ohne Monitoring — wir bemerken Qualitätsprobleme erst Tage später. Empfehle eine Monitoring-Strategie: Welche Metriken sind für LLM-APIs kritisch? Wie nutzen wir Langfuse für LLM-Tracing und Datadog für Infrastruktur-Metriken? Definiere konkrete Alerting-Schwellenwerte. Erkläre, wie Audit Logs API und Usage Export API als Datenquellen eingebunden werden. Liefere das Konzept als strukturiertes Monitoring-Design."
Artefakt: Ein Monitoring-Design-Dokument (Schichten, Metriken, Datenfluss, Alerting-Regeln).
Fallstricke:
- Das Monitoring erfasst nur technische Metriken (Latenz, Fehler) und ignoriert Qualitäts-Drift — ein Agent kann technisch einwandfrei laufen und trotzdem inhaltlich degradieren.
- Langfuse wird als vollständiger Ersatz für Datadog positioniert — tatsächlich sind beide Tools komplementär: Langfuse für LLM-Traces, Datadog für Infrastruktur.
Anschluss: S-API-034

### S-API-034 Langdock Search API für unternehmensweites Q&A-System

Trigger: Das Wissensmanagemant-Team will ein unternehmensweites Q&A-System aufbauen: Mitarbeiter sollen in natürlicher Sprache nach Dokumenten, Richtlinien und Kampagnenbriefings suchen können, ohne SharePoint-Keyword-Suche zu nutzen. Die IT fragt, ob die Langdock Search API dafür als semantische Kernkomponente genutzt werden kann. (Quelle: S-API-015, sources/12 Q124)
Ziel: Die Langdock Search API als semantische Retrievalschicht für ein unternehmensweites Q&A-System evaluieren und ein vollständiges Systemdesign liefern — inklusive Dokumenten-Ingestion, Query-Handling und Ergebnis-Präsentation.
Ergebnis: Ein Systemdesign-Dokument für das Q&A-System: Dokumenten-Ingestion via Knowledge Folder API, semantische Suche via Search API, Antwort-Synthese via Completion API.
Fähigkeit: Search API (Knowledge Folder), Completion API, Advisory
Vorgehen:
1. Beschreibe den dreistufigen Architektur-Stack: (a) Dokumenten-Ingestion via Knowledge Folder API (Markdown-Upload aller relevanten Dokumente), (b) semantische Suche via Search API (Query → Top-K relevante Chunks mit Relevanz-Score), (c) Antwort-Synthese via Completion API (Chunks als Kontext + Nutzer-Frage → vollständige Antwort mit Quellenangaben).
2. Erkläre den Unterschied zwischen Search API und direktem Agent: die Search API liefert Rohchunks und Relevanz-Scores — das System entscheidet dann selbst, ob es diese Chunks in einen Completion-Call weiterleitet oder direkt präsentiert; ein Agent erledigt beides automatisch.
3. Weise auf Skalierungsaspekte hin: das Wissensordner-Limit von 1.000 Dokumenten und 256 MB pro Dokument; bei Überschreitung müssen ältere Dokumente archiviert oder ein zweiter Wissensordner eingerichtet werden.
4. Definiere eine Feedback-Schleife: Nutzer können Antworten mit "hilfreich / nicht hilfreich" bewerten; alle negativen Bewertungen werden wöchentlich analysiert, um die Indexierungsqualität der Quelldokumente zu verbessern.
Prompt:
> "Du bist ein Knowledge-Management-Architekt. Wir bauen ein unternehmensweites Q&A-System auf Basis der Langdock Search API und Completion API. Beschreibe den dreistufigen Stack: Dokumenten-Ingestion, semantische Suche, Antwort-Synthese. Erkläre den Unterschied zwischen Search API (Chunks) und einem direkten Agent. Nenne Skalierungsgrenzen des Wissensordners und wie eine Nutzerfeedback-Schleife das System verbessert. Liefere ein strukturiertes Systemdesign-Dokument."
Artefakt: Ein Systemdesign-Dokument (Architektur-Stack, API-Rollen, Skalierungsgrenzen, Feedback-Schleife).
Fallstricke:
- Das Design verwendet die Search API als vollständige RAG-Lösung und vergisst den Completion-API-Schritt für die Antwort-Synthese — das Ergebnis sind rohe Textchunks statt lesbarer Antworten.
- Die Feedback-Schleife wird als automatisches Re-Training interpretiert — tatsächlich verbessert Feedback nur die menschliche Kuratierung der Quelldokumente, nicht das Modell selbst.
Anschluss: S-API-035

### S-API-035 Content-Moderations-Layer auf Langdock-API

Trigger: Ein B2C-Unternehmen hat einen öffentlich zugänglichen Chatbot auf seiner Produktwebsite, der auf Langdock basiert. Nach einem Vorfall, bei dem ein Nutzer den Bot zu markenschädigenden Aussagen manipuliert hat, verlangt der CISO eine Moderationsebene, die Inputs und Outputs filtert, bevor sie den Endnutzer erreichen. (Quelle: A-06, sources/12 Q115)
Ziel: Einen mehrstufigen Content-Moderations-Layer vor und hinter dem Langdock-API-Aufruf konzeptionieren, der Prompt-Injection-Angriffe und toxische Outputs abwehrt, ohne die Nutzererfahrung spürbar zu verlangsamen.
Ergebnis: Ein Architekturkonzept für den Content-Moderations-Layer: Input-Validierung, Output-Filterung, Logging suspekter Anfragen und Eskalationsprozess.
Fähigkeit: Advisory, API Security Advisory
Vorgehen:
1. Beschreibe die zweistufige Moderationsarchitektur: (a) Pre-Processing (Input-Validierung): eingehende Nutzernachrichten werden vor dem Langdock-Aufruf durch eine Moderations-API (z. B. OpenAI Moderation API oder Azure Content Safety) geleitet; toxische oder injection-verdächtige Inputs werden blockiert und geloggt. (b) Post-Processing (Output-Filterung): Langdock-Antworten werden vor Auslieferung an den Nutzer auf toxischen Inhalt, sensible Daten (PII) und markenschädigende Aussagen geprüft.
2. Erkläre Prompt-Injection-Abwehr: im System-Prompt klar definieren, dass der Agent Anweisungen aus dem User-Turn ignoriert, die seinen Kern-Scope verlassen; zusätzlich eine Whitelist erlaubter Themen im System-Prompt hinterlegen.
3. Definiere Logging-Pflichten: alle blockierten Inputs und alle gefilterten Outputs werden mit Timestamp, User-Session-ID (anonymisiert) und Grund der Blockierung geloggt — diese Logs sind Input für wöchentliche Security-Reviews.
4. Plane den Eskalationsprozess: bei mehr als 10 blockierten Inputs pro Stunde von derselben Session-ID → automatischer Chatbot-Block dieser Session + Alert an das Security-Team.
Prompt:
> "Du bist ein KI-Security-Architekt. Unser öffentlicher Langdock-Chatbot wurde durch Prompt-Injection manipuliert. Der CISO verlangt eine Moderationsebene. Konzipiere einen zweistufigen Content-Moderations-Layer: (1) Input-Validierung vor dem Langdock-Aufruf (Moderations-API, Prompt-Injection-Abwehr), (2) Output-Filterung nach dem Langdock-Aufruf (Toxizität, PII, Brand-Risiko). Ergänze Logging-Anforderungen und einen Eskalationsprozess bei Angriffserkennung. Tonfall: sicherheitsorientiert, umsetzbar."
Artefakt: Ein Architekturkonzept für den Content-Moderations-Layer (zweistufige Moderation, Logging, Eskalation).
Fallstricke:
- Das Konzept verlässt sich ausschließlich auf die Langdock-eigene Systemkontrolle und implementiert keinen externen Moderations-Layer — damit ist ein System-Prompt-Jailbreak nicht durch eine unabhängige Moderationsschicht absicherbar.
- Die Output-Filterung fügt signifikante Latenz hinzu, was die Nutzererfahrung verschlechtert; das Konzept muss asynchrone Filterung (Filter läuft parallel, nicht seriell) evaluieren.
Anschluss: S-API-036

### S-API-036 Custom Model Routing via BYOC für datensensitive Segmentierung

Trigger: Das Marketing-Team hat zwei Kategorien von Aufgaben: Standard-Content-Erstellung (kein Datenschutzrisiko) und personalisierte Kundensegmentierung (enthält aggregierte Kaufverhaltensdaten). Der Datenschutzbeauftragte will, dass letztere auf einem internen Modell laufen, während Standard-Tasks das kostengünstigere Cloud-Modell nutzen. (Quelle: S-API-017, A-03)
Ziel: Ein Model-Routing-Konzept definieren, das automatisch zwischen zwei Modell-Backends wechselt — Cloud-Modell (via BYOC) für Standard-Tasks und intern gehostetes Modell (BYOM) für datensensitive Tasks — ohne manuelle Eingriffe durch Nutzer.
Ergebnis: Ein Model-Routing-Architektur-Dokument: Klassifikationslogik, Routing-Mechanismus, Fallback-Strategie und Compliance-Nachweis.
Fähigkeit: Deployment Advisory (BYOC, BYOM), Advisory
Vorgehen:
1. Definiere die Klassifikationslogik: anhand von Request-Metadaten (z. B. API-Parameter "data_sensitivity=high" oder durch einen vorgeschalteten Classifier-Aufruf) entscheidet das BFF-Backend, welches Modell-Backend genutzt wird.
2. Beschreibe den Routing-Mechanismus: Standard-Requests → Langdock BYOC mit Azure OpenAI; datensensitive Requests → Langdock BYOM mit internem Llama-Modell in der eigenen VPC; beide Routes nutzen dieselbe Langdock-Orchestrierungsebene, aber unterschiedliche Modell-Konfigurationen.
3. Plane die Fallback-Strategie: wenn das interne BYOM-Modell nicht verfügbar ist, wird der datensensitive Request abgelehnt (nicht auf Cloud-Modell fallen!) und eine Fehlermeldung zurückgegeben — kein automatisches Fallback auf Cloud.
4. Definiere den Compliance-Nachweis: für jede Anfrage wird im Audit-Log protokolliert, welches Modell-Backend genutzt wurde; monatlicher Report für den Datenschutzbeauftragten zeigt 100% der datensensitiven Anfragen auf dem internen Modell.
Prompt:
> "Du bist ein KI-Infrastruktur-Berater. Wir brauchen ein Model-Routing-System: Standard-Marketing-Tasks laufen auf unserem Azure-Cloud-Modell via BYOC, datensensitive Segmentierungsaufgaben nur auf unserem internen BYOM-Modell. Beschreibe die Routing-Architektur: Klassifikationslogik, Routing-Mechanismus über Langdock BYOC/BYOM, und explizit: Kein automatisches Fallback auf Cloud bei BYOM-Ausfall. Wie dokumentieren wir die Compliance im Audit-Log? Liefere ein Architektur-Dokument."
Artefakt: Ein Model-Routing-Architektur-Dokument (Klassifikation, Routing, Fallback-Strategie, Compliance-Nachweis).
Fallstricke:
- Das Routing implementiert ein automatisches Fallback auf das Cloud-Modell bei BYOM-Ausfall — dies verletzt die Datenschutzanforderung und würde einen Compliance-Vorfall erzeugen.
- Die Klassifikationslogik ist zu einfach (nur ein Boolean-Parameter) und gibt Nutzern die Möglichkeit, datensensitive Anfragen als "standard" zu deklarieren, um die schnellere Cloud-Route zu nutzen.
Anschluss: S-API-037

### S-API-037 Enterprise-SSO-Integration mit Langdock

Trigger: Das IT-Team soll Langdock für 200 Marketing-Mitarbeiter ausrollen. Die IT-Sicherheitsrichtlinie schreibt vor, dass alle SaaS-Tools über das unternehmenseigene Identity Provider (IdP) — Microsoft Azure AD / Entra ID — authentifiziert werden, sodass Offboarding automatisch erfolgt. Die Direktorin soll das Konzept für den IT-Leiter aufbereiten. (Quelle: sources/12 Q115, A-06)
Ziel: Die SSO-Integration (Single Sign-On) von Langdock mit dem unternehmenseigenen Azure AD / Entra ID konzeptionieren, sodass Nutzer-Lifecycle-Management (Onboarding, Offboarding, Rollenzuweisung) vollständig über den IdP gesteuert wird.
Ergebnis: Ein SSO-Integrationskonzept für den IT-Leiter: technische Anforderungen, SAML/OIDC-Konfigurationsschritte auf hohem Niveau, und automatische Deaktivierung bei Mitarbeiterabgang.
Fähigkeit: Deployment Advisory, API Security Advisory
Vorgehen:
1. Erkläre den SSO-Mechanismus: Langdock unterstützt SAML 2.0 und OIDC-basiertes SSO; bei der Konfiguration wird Langdock als "Service Provider" (SP) in Azure AD als Enterprise-Applikation registriert; Nutzer authentifizieren sich zukünftig ausschließlich über ihr Azure-AD-Konto.
2. Beschreibe die automatische Rollenzuweisung: Azure-AD-Gruppen (z. B. "Marketing-Team", "Marketing-Admins") werden auf Langdock-Rollen gemappt; neue Mitarbeiter erhalten automatisch die richtige Rolle, sobald sie der AD-Gruppe zugewiesen werden.
3. Kläre das Offboarding: sobald ein Mitarbeiterkonto in Azure AD deaktiviert wird, verliert es sofort den SSO-Zugang zu Langdock — manuelle Deaktivierung in Langdock ist nicht mehr nötig; dies schließt die in S-API-014 beschriebene Key-Kompromittierungs-Lücke.
4. Weise auf API-Key-Governance hin: auch nach SSO-Einführung bleiben Workspace-API-Keys außerhalb des SSO-Scope — diese müssen weiterhin über den in S-API-014 beschriebenen Lifecycle-Prozess verwaltet werden.
Prompt:
> "Du bist ein Identity-Management-Berater. Wir wollen Langdock via SSO mit unserem Azure AD / Entra ID verbinden. Erkläre: (1) Welches Protokoll nutzen wir (SAML 2.0 oder OIDC)? (2) Wie werden Azure-AD-Gruppen auf Langdock-Rollen gemappt? (3) Was passiert automatisch beim Offboarding? (4) Welche Zugriffsvektoren bleiben nach SSO-Einführung bestehen (API-Keys!)? Liefere ein SSO-Integrationskonzept für unseren IT-Leiter."
Artefakt: Ein SSO-Integrationskonzept (Protokollwahl, Rollenmapping, Offboarding-Automatisierung, residuale Risiken).
Fallstricke:
- Das Konzept suggeriert, dass SSO alle Zugangswege absichert — tatsächlich bleiben Workspace-API-Keys außerhalb des SSO-Scope und müssen separat verwaltet werden.
- Die Rollenzuweisung wird manuell im Langdock-Admin gepflegt statt automatisch über Azure-AD-Gruppen, was bei 200 Nutzern zu einem manuellen Verwaltungsaufwand führt.
Anschluss: S-API-038

### S-API-038 SLA-Monitoring für API-Verfügbarkeit

Trigger: Nach zwei ungeplanten Langdock-Ausfällen im laufenden Quartal verlangt die Geschäftsführung einen monatlichen SLA-Report (Service Level Agreement), der dokumentiert, ob Langdock die vertraglich zugesicherte Verfügbarkeit einhält. Die Direktorin soll das Monitoring-Konzept koordinieren. (Quelle: S-API-021, A-44)
Ziel: Ein SLA-Monitoring-System konzeptionieren, das die tatsächliche Langdock-Verfügbarkeit aus Unternehmens-Perspektive misst, mit der vertraglich zugesicherten Uptime vergleicht und bei Verstößen automatisch einen Eskalations-Prozess auslöst.
Ergebnis: Ein SLA-Monitoring-Konzept mit Messmethodik, Alerting-Strategie und monatlichem Report-Template.
Fähigkeit: Advisory, Deployment Advisory
Vorgehen:
1. Definiere die Messmethodik: aktiver Synthetic-Monitor (alle 5 Minuten ein einfacher Langdock-API-Testaufruf aus dem unternehmenseigenen Netz) liefert reale Verfügbarkeits-Daten aus Sicht des Unternehmens; status.langdock.com als ergänzende Quelle für anbietergemeldete Incidents.
2. Berechne den monatlichen Verfügbarkeits-Wert: (Gesamtminuten im Monat − gemessene Ausfallminuten) / Gesamtminuten × 100; typische Enterprise-SLAs fordern 99,9 % (≈ 43 Minuten Downtime/Monat).
3. Plane Alerting und Eskalation: bei Ausfall über 10 Minuten → automatische Benachrichtigung an Marketing-Ops + Aktivierung des Fallback-Playbooks (S-API-021); bei monatlichem SLA-Verstoß → formelle Eskalation an Langdock Customer Success Manager mit Dokumentation.
4. Definiere das Report-Template: monatlicher SLA-Report enthält gemessene Uptime, Incident-Liste (Datum, Dauer, Ursache soweit bekannt), Vergleich mit vertraglichem SLA und ggf. SLA-Kredit-Anspruch.
Prompt:
> "Du bist ein SLA-Management-Berater. Nach zwei Langdock-Ausfällen brauchen wir ein SLA-Monitoring-System. Erkläre: (1) Wie messen wir die tatsächliche Verfügbarkeit aus unserer Netzwerkperspektive (Synthetic Monitor)? (2) Wie berechnen wir den monatlichen Uptime-Prozentsatz? (3) Welche Alerting-Schwellenwerte und Eskalationsprozesse richten wir ein? (4) Wie sieht unser monatliches SLA-Report-Template aus? Liefere ein vollständiges Monitoring-Konzept."
Artefakt: Ein SLA-Monitoring-Konzept (Messmethodik, Uptime-Berechnung, Alerting, Report-Template).
Fallstricke:
- Das Monitoring verlässt sich ausschließlich auf die status.langdock.com-Seite — diese zeigt anbietergemeldete Incidents, nicht die tatsächliche Erreichbarkeit aus dem eigenen Netz; netzwerk-lokale Probleme bleiben unsichtbar.
- Der SLA-Kredit-Anspruchsprozess wird im Konzept vergessen — ohne dokumentierte Incident-Daten und den richtigen Eskalationsweg hat das Unternehmen keine Handhabe gegenüber dem Anbieter.
Anschluss: S-API-039

### S-API-039 Kosten-Anomalie-Erkennung bei API-Nutzung

Trigger: Die Finanzabteilung meldet, dass die monatliche Langdock-Rechnung in der letzten Woche um 340 % gestiegen ist, ohne dass das Marketing-Team eine neue große Kampagne gestartet hat. Die Direktorin muss den Verursacher schnell identifizieren und eine dauerhafte Anomalie-Erkennungsstrategie aufbauen. (Quelle: S-API-018, sources/12 Q122)
Ziel: Einen Kosten-Anomalie-Erkennungsprozess etablieren, der unerwartete Kosten-Spikes innerhalb von 24 Stunden erkennt, den Verursacher identifiziert und automatisch eine vorläufige Kostenbegrenzung auslöst.
Ergebnis: Ein Kosten-Monitoring-Framework: Tages-Budget-Schwellenwerte, automatische Alerts, täglicher Usage-Export-API-Pull und Eskalations-Playbook für Kostenabnormalitäten.
Fähigkeit: Usage Export API, Advisory
Vorgehen:
1. Definiere die Anomalie-Erkennungslogik: täglicher Usage-Export-API-Pull um 07:00 Uhr; Vergleich des gestrigen Tagesverbrauchs mit dem 30-Tage-Durchschnitt; ab 150 % des Durchschnitts → Alert; ab 300 % → automatischer Modell-Gating-Review.
2. Beschreibe die Verursacher-Identifikation: Usage-Export-Daten nach User-ID, Agent-ID und Modell aufschlüsseln; der höchste Token-Verbrauch in einer einzigen Dimension ist in 80 % der Fälle der Kostentreiber.
3. Definiere automatische Schutzmaßnahmen: bei bestätigtem Kostenabnormal-Alert — den verdächtigen Agenten oder User vorübergehend auf ein günstigeres Fallback-Modell umleiten (statt ihn vollständig zu sperren, was laufende Kampagnen blockiert).
4. Dokumentiere das Eskalations-Playbook: Alert erhält Marketing-Ops + CFO; innerhalb von 4 Stunden muss der Verursacher identifiziert und entweder die Ursache behoben oder der Workaround aktiviert sein; nach 24 Stunden schriftlicher Incident-Report an Finance.
Prompt:
> "Du bist ein FinOps-Berater für KI-Infrastruktur. Unsere Langdock-Kosten sind diese Woche um 340 % gestiegen. Erstelle ein Kosten-Anomalie-Erkennungs-Framework: (1) täglicher Usage-Export-API-Pull mit Anomalie-Schwellenwerten, (2) Verursacher-Identifikation via User-ID/Agent-ID-Aufschlüsselung, (3) automatische Schutzmaßnahmen ohne laufende Kampagnen zu blockieren, (4) Eskalations-Playbook für Finance. Liefere das Framework als strukturiertes Dokument."
Artefakt: Ein Kosten-Anomalie-Erkennungs-Framework (Alert-Logik, Verursacher-Analyse, Schutzmaßnahmen, Eskalations-Playbook).
Fallstricke:
- Das Framework sperrt sofort den auffälligen Nutzer oder Agenten, ohne die laufende Kampagnenauswirkung zu prüfen — ein wichtiger Kampagnen-Workflow wird möglicherweise ungeplant unterbrochen.
- Die Anomalie-Erkennung setzt absolute Kostenschwellenwerte statt relative Prozentabweichungen — ein saisonaler Anstieg von 200 % kurz vor dem Black Friday löst fälschlicherweise einen Alert aus.
Anschluss: S-API-040

### S-API-040 Disaster-Recovery-Planung für KI-Marketing-Infrastruktur

Trigger: Nach dem 90-minütigen Langdock-Ausfall (S-API-021) und einem separaten internen Server-Ausfall, der den BFF-Proxy für den Intranet-Chatbot lahmgelegt hat, fordert das Management einen formellen Disaster-Recovery-Plan (DRP), der beide Ausfallszenarien abdeckt. (Quelle: S-API-021, A-44)
Ziel: Einen vollständigen Disaster-Recovery-Plan für die KI-Marketing-Infrastruktur erarbeiten, der Ausfälle sowohl auf Langdock-Seite als auch auf der eigenen Infrastruktur-Seite abdeckt und den Marketing-Betrieb innerhalb von 30 Minuten auf einem definierten Minimal-Level wiederherstellt.
Ergebnis: Ein Disaster-Recovery-Plan (DRP) mit definierten RTO (Recovery Time Objective), RPO (Recovery Point Objective), Ausfallszenarien, Wiederherstellungsschritten und Testkalender.
Fähigkeit: Deployment Advisory, Advisory
Vorgehen:
1. Definiere RTO und RPO: RTO = 30 Minuten (innerhalb dieser Zeit muss Minimal-Betrieb wiederhergestellt sein); RPO = 24 Stunden (maximaler Datenverlust durch letztes Backup).
2. Kategorisiere die Ausfallszenarien: (a) Langdock-Plattform-Ausfall — Fallback auf lokale Agent-Prompt-Backups + direkter Anthropic/OpenAI-Webzugang; (b) BFF-Server-Ausfall — Umschaltung auf Standby-BFF-Instanz in anderer Availability-Zone; (c) Kombinations-Ausfall — manueller Betrieb nach vorbereiteten Fallback-Vorlagen.
3. Dokumentiere die Wiederherstellungsschritte pro Szenario: für jeden der drei Szenarien eine nummerierte Schritt-für-Schritt-Anleitung, die auch unter Stress ohne IT-Expertise ausführbar ist.
4. Sichere kritische Ressourcen: alle Agent-System-Prompts als Markdown in einem versionierten Git-Repository; alle Wissensordner-Dokumente als wöchentliches Backup auf einen separaten Cloud-Storage; BFF-Server-Konfiguration als Infrastructure-as-Code (IaC) in Git.
5. Definiere den Testkalender: jährlicher DRP-Test (simulierter Vollausfall), halbjährlicher Partial-Test (nur Langdock-Ausfall-Szenario), quartalsweise Überprüfung der Backup-Vollständigkeit.
Prompt:
> "Du bist ein Business-Continuity-Planer. Wir hatten zwei Ausfälle: einmal Langdock selbst, einmal unser BFF-Server. Erstelle einen Disaster-Recovery-Plan für unsere KI-Marketing-Infrastruktur. Definiere RTO (30 min) und RPO (24h). Beschreibe drei Ausfallszenarien mit je nummerierten Wiederherstellungsschritten. Erkläre, welche Ressourcen wir als Backups sichern müssen (Prompts, Wissensordner, BFF-Config). Füge einen Testkalender hinzu. Liefere den DRP als formelles Dokument."
Artefakt: Ein formeller Disaster-Recovery-Plan (RTO/RPO, Szenarien, Wiederherstellungsschritte, Backup-Strategie, Testkalender).
Fallstricke:
- Der DRP ist zu allgemein und beschreibt nur "nehmt einen anderen KI-Anbieter" ohne konkrete Schritte — im Ausfall-Stressfall fehlt die Handlungsorientierung.
- Der Testkalender ist einmalig und wird nie wiederholt — ohne regelmäßige DRP-Tests wird das Team bei einem echten Ausfall feststellen, dass die Schritte veraltet oder unvollständig sind.
Anschluss: S-API-041

### S-API-041 BYOK-Entscheidungskalkulation ab welchem Volumen

Trigger: Die Finanzabteilung prüft, ob der Wechsel auf BYOK (Bring Your Own Key) mit eigenem Azure-Vertrag wirtschaftlich sinnvoll ist. Das Team verbraucht derzeit rund 2.800 Euro pro Monat über das Standard-Langdock-Modell-Bundle. Der CTO hat Azure-Enterprise-Rabatte von 20 % auf Token-Preise in Aussicht. (Quelle: A-26, S-API-024, sources/12 Q117)
Ziel: Einen datenbasierten BYOK-Break-even-Kalkulator konzeptionieren, der ab welchem monatlichen Token-Volumen der Wechsel auf BYOK wirtschaftlich vorteilhaft ist — unter Berücksichtigung des Verwaltungsaufwands und der BYOK-Preispflege-Pflicht im Langdock-Admin.
Ergebnis: Eine Break-even-Kalkulation (tabellarisch) und ein Entscheidungsrahmen: BYOK empfohlen ab X Euro/Monat Verbrauch, mit expliziter Auflistung der versteckten Kosten und Risiken.
Fähigkeit: Advisory, BYOK-Konfigurationsberatung
Vorgehen:
1. Berechne den Break-even: BYOK lohnt, wenn der Enterprise-Rabatt (z. B. 20 % auf Modell-Token) die zusätzlichen Verwaltungskosten (IT-Aufwand für Key-Management, Billing-Reconciliation, Preispflege) übersteigt; Faustregel aus der Praxis: ab ca. 5.000 Euro/Monat Token-Verbrauch hat BYOK direkten Netto-Vorteil.
2. Liste die versteckten BYOK-Kosten: (a) IT-Aufwand für 90-Tage-Key-Rotation und Monitoring, (b) monatliche Billing-Reconciliation zwischen Langdock-Usage-Export und Azure Cost Management, (c) Pflege der manuell hinterlegten Token-Preise im Langdock-Admin bei jedem Azure-Preisupdate.
3. Bewerte das Risiko bei aktuellem Verbrauch (2.800 Euro): unterhalb der 5.000-Euro-Schwelle ist BYOK wirtschaftlich grenzwertig; der IT-Verwaltungsaufwand kann den Rabattvorteil aufzehren.
4. Empfehle einen Monitoring-Trigger: BYOK-Entscheidung neu bewerten, sobald der monatliche Verbrauch drei Monate in Folge über 4.500 Euro liegt oder ein neuer Enterprise-Rahmenvertrag mit über 25 % Rabatt verhandelt wird.
Prompt:
> "Du bist ein FinOps-Berater. Wir verbrauchen 2.800 Euro/Monat über Langdock's Standard-Bundle und können mit Azure-BYOK 20 % Rabatt erhalten. Berechne den Break-even: Ab welchem monatlichen Verbrauch lohnt BYOK? Liste alle versteckten Kosten von BYOK (Key-Management, Billing-Reconciliation, Preispflege im Admin). Liefere eine tabellarische Break-even-Kalkulation und eine klare Empfehlung für unsere aktuelle Situation. Füge einen Monitoring-Trigger hinzu, wann wir die Entscheidung neu bewerten."
Artefakt: Eine Break-even-Kalkulation (Tabelle) + Entscheidungsrahmen + Monitoring-Trigger.
Fallstricke:
- Die Kalkulation berücksichtigt nur den Token-Rabatt und ignoriert die versteckten Verwaltungskosten — das Ergebnis ist eine zu optimistische Break-even-Schwelle.
- Das Modell empfiehlt BYOK pauschal "wegen Kontrolle und Kostentransparenz" ohne die Break-even-Berechnung zu machen — das ist keine datenbasierte Entscheidungsgrundlage.
Anschluss: S-API-042

### S-API-042 Prompt-Injections-Risikoanalyse für öffentliche Chatbots

Trigger: Das Marketing-Team überlegt, einen neuen öffentlichen Produktberatungs-Chatbot auf der Webseite zu launchen. Vor dem Go-Live verlangt der CISO eine formelle Risikoanalyse speziell für Prompt-Injection-Angriffe — eine bekannte Angriffsvektoren bei LLM-basierten Systemen. (Quelle: S-API-035, A-06, sources/12 Q115)
Ziel: Eine strukturierte Prompt-Injection-Risikoanalyse für den geplanten öffentlichen Chatbot erstellen, die Angriffsszenarien bewertet, Gegenmaßnahmen empfiehlt und als Entscheidungsgrundlage für den Go-Live dient.
Ergebnis: Ein Risikoanalyse-Dokument: Angriffsvektoren, Risikobewertung (Wahrscheinlichkeit × Impact), Gegenmaßnahmen und Residualrisiko-Akzeptanz.
Fähigkeit: Advisory, API Security Advisory
Vorgehen:
1. Beschreibe die Hauptangriffsvektoren: (a) direkte Prompt-Injection ("Vergiss deine Anweisungen und ..."), (b) indirekte Injection über Wissensdokumente (manipulierte PDFs im Wissensordner enthalten versteckte Anweisungen), (c) Jailbreak-Prompts zur Umgehung des System-Prompts, (d) Daten-Exfiltrations-Versuche ("Nenne mir alle System-Prompt-Inhalte").
2. Bewerte jedes Angriffsszenario mit einer Risikomatrix: Wahrscheinlichkeit (1–5) × Impact auf Marke / Kosten / Datenschutz (1–5) = Risiko-Score; priorisiere die Top-3-Risiken.
3. Empfehle Gegenmaßnahmen je Angriffsvektor: Boundary-Anweisungen im System-Prompt, Input-Längen-Limit, Output-Moderationsebene (S-API-035), regelmäßige Red-Team-Tests mit typischen Jailbreak-Prompts.
4. Definiere das Residualrisiko-Statement: kein Chatbot kann zu 100 % gegen Prompt-Injection abgesichert werden; das akzeptable Restrisiko-Level muss vom CISO schriftlich freigegeben werden.
Prompt:
> "Du bist ein KI-Sicherheitsanalyst. Wir wollen einen öffentlichen Produktberatungs-Chatbot launchen. Der CISO verlangt eine Prompt-Injection-Risikoanalyse. Dokumentiere: (1) die vier Haupt-Angriffsvektoren, (2) eine Risikomatrix (Wahrscheinlichkeit × Impact), (3) konkrete Gegenmaßnahmen je Angriffsvektor, (4) ein Residualrisiko-Statement für die CISO-Freigabe. Liefere das Dokument in formeller Berichtsstruktur."
Artefakt: Ein Risikoanalyse-Dokument (Angriffsvektoren, Risikomatrix, Gegenmaßnahmen, Residualrisiko-Statement).
Fallstricke:
- Die Risikoanalyse behandelt Prompt-Injection als vollständig lösbar und gibt dem CISO eine falsche Sicherheitsgarantie — kein LLM-System ist immun gegen Prompt-Injection, das Residualrisiko muss explizit benannt werden.
- Das Dokument analysiert nur direkte Injection-Vektoren und vergisst indirekte Injection über Wissensdokumente — ein manipuliertes PDF im Wissensordner kann das System unterwandern.
Anschluss: S-API-043

### S-API-043 FX-Kosten-Management bei globaler API-Nutzung

Trigger: Das internationale Marketing-Team nutzt Langdock global. Die Finanzabteilung stellt fest, dass die Langdock-Plattformlizenz in Euro abgerechnet wird, während BYOK-Modellkosten in US-Dollar über Azure anfallen. Bei einer 8-prozentigen EUR/USD-Wechselkursschwankung im letzten Quartal sind die tatsächlichen Kosten unvorhersehbar geworden. (Quelle: A-29, S-API-024)
Ziel: Ein FX-Kosten-Management-Konzept entwickeln, das die Wechselkursexposition bei gemischter EUR/USD-Abrechnung minimiert und dem Controlling monatlich eine verlässliche Kostenkalkulation ermöglicht.
Ergebnis: Ein FX-Risiko-Management-Konzept für Finance und Marketing-Ops: Kostenstruktur-Übersicht, monatlicher Reconciliation-Prozess, FX-Hedging-Optionen und Budget-Pufferempfehlung.
Fähigkeit: Advisory, Usage Export API
Vorgehen:
1. Kartiere die Kostenstruktur: Langdock-Plattformlizenz → EUR, BYOK-Modellkosten (Azure OpenAI) → USD, ggf. weitere Provider-Kosten → jeweils Originalwährung; identifiziere, welcher Anteil EUR-fix und welcher USD-variabel ist.
2. Beschreibe den monatlichen Reconciliation-Prozess: Langdock Usage Export API liefert Token-Zählung; Azure Cost Management liefert USD-Kosten; monatliche Umrechnung zum Monatsendkurs mit expliziter FX-Rate-Dokumentation.
3. Bewerte FX-Hedging-Optionen: (a) natürliches Hedging durch Erhöhung des EUR-fixen Langdock-Bundle-Anteils (weniger BYOK), (b) Konzern-Treasury-Hedging für den USD-Anteil bei Volumen über 50.000 USD/Jahr, (c) monatlicher Budget-Puffer von 8–10 % für Wechselkursschwankungen.
4. Empfehle eine Budgetierungspraxis: KI-Budget-Planung immer in EUR mit USD-Anteil als separater Linie inkl. FX-Puffer; quartalsweise Anpassung basierend auf tatsächlichen Wechselkursen.
Prompt:
> "Du bist ein FinOps-Berater mit FX-Expertise. Langdock fakturiert in EUR, aber unsere BYOK-Azure-Modellkosten kommen in USD. Wechselkursschwankungen machen unsere KI-Budgetplanung unzuverlässig. Erkläre: (1) Unsere gemischte Kostenstruktur (EUR/USD), (2) monatlicher Reconciliation-Prozess mit expliziter FX-Rate-Dokumentation, (3) FX-Hedging-Optionen, (4) Budget-Puffer-Empfehlung für unser Controlling. Liefere ein FX-Risiko-Management-Konzept."
Artefakt: Ein FX-Risiko-Management-Konzept (Kostenstruktur, Reconciliation-Prozess, Hedging-Optionen, Budget-Puffer-Empfehlung).
Fallstricke:
- Das Konzept empfiehlt Konzern-Treasury-Hedging auch bei kleinem Volumen (unter 10.000 USD/Jahr) — die Transaktionskosten von Hedging-Instrumenten übersteigen bei kleinen Beträgen den FX-Risikobetrag.
- Die monatliche Reconciliation verwendet den Tageskurs des Abrufzeitpunkts statt den vertraglich vereinbarten oder Monatsendkurs — das erzeugt Inkonsistenzen im Controlling-Report.
Anschluss: S-API-044

### S-API-044 Embedding-API für semantische Kampagnen-Ähnlichkeitssuche

Trigger: Das Kreativ-Team hat in fünf Jahren 800 Kampagnenkonzepte entwickelt. Bevor eine neue Kampagne gestartet wird, soll geprüft werden, ob ein ähnliches Konzept bereits existiert — um Doppelarbeit zu vermeiden und erfolgreiche Muster wiederzuverwenden. Keyword-Suche ist zu ungenau; das Team braucht eine semantische Ähnlichkeitssuche. (Quelle: S-API-015, S-API-034)
Ziel: Den Einsatz der Langdock Embedding-API für eine interne Kampagnen-Ähnlichkeitsdatenbank konzeptionieren, die neue Kampagnenideen semantisch mit dem historischen Archiv vergleicht.
Ergebnis: Ein Integrationskonzept für die semantische Kampagnen-Ähnlichkeitssuche: Embedding-Erstellung, Vektordatenbank-Wahl, Ähnlichkeitsabfrage und Ergebnis-Interface.
Fähigkeit: Embedding API, Advisory
Vorgehen:
1. Erkläre das Embedding-Konzept: die Langdock Embedding-API wandelt jeden Kampagnentext in einen hochdimensionalen Vektor um, der die semantische Bedeutung kodiert; ähnliche Texte haben ähnliche Vektoren (hohe Cosine-Similarity).
2. Beschreibe den Aufbau-Prozess: alle 800 historischen Kampagnenkonzepte werden einmalig durch die Embedding-API geleitet und die resultierenden Vektoren in einer Vektordatenbank (z. B. Pinecone, pgvector in PostgreSQL oder Qdrant) gespeichert.
3. Skizziere den Abfrage-Prozess: neue Kampagnenidee → Embedding-API → Abfragevektor → Vektordatenbank-Nearest-Neighbor-Suche → Top-5 ähnlichste historische Kampagnen mit Ähnlichkeits-Score.
4. Weise auf Pflege-Aufwand hin: jede neue Kampagne muss nach Abschluss in die Vektordatenbank eingespeist werden; bei Kampagnen-Updates muss der Eintrag neu vektorisiert werden (Embeddings sind nicht inkrementell aktualisierbar).
Prompt:
> "Du bist ein Vector-Search-Architekt. Wir wollen eine interne Ähnlichkeitssuche für unsere 800 historischen Kampagnenkonzepte bauen. Erkläre: (1) Wie funktioniert die Langdock Embedding-API (Input/Output)? (2) Wie bauen wir die initiale Vektordatenbank auf? (3) Wie läuft eine neue Ähnlichkeitsabfrage ab (Cosine-Similarity, Top-K-Ergebnisse)? (4) Welche Pflege-Aufgaben entstehen laufend? Empfehle eine geeignete Vektordatenbank. Liefere ein strukturiertes Integrationskonzept."
Artefakt: Ein Integrationskonzept (Embedding-Prozess, Vektordatenbank-Aufbau, Abfragearchitektur, Pflege-Aufwand).
Fallstricke:
- Das Konzept verwendet die Embedding-API zur Textgenerierung — Embeddings generieren keinen Text, sie kodieren Bedeutung als Zahlenvektor; der Unterschied zum Completion-Endpoint ist fundamental.
- Die Vektordatenbank wird nicht als persistente Infrastruktur geplant, sondern bei jedem Abfragevorgang neu aufgebaut — bei 800 Kampagnen dauert das re-Embedding jedes Mal mehrere Minuten und ist prohibitiv teuer.
Anschluss: S-API-045

### S-API-045 KI-Carbon-Footprint-Schätzung für den Nachhaltigkeitsbericht

Trigger: Die Nachhaltigkeitsbeauftragte des Unternehmens bittet die Marketing-Direktorin, den KI-bedingten CO₂-Abdruck der Langdock-Nutzung für den Jahres-Nachhaltigkeitsbericht abzuschätzen. Es gibt keine offizielle Langdock-Kennzahl — das Team muss eine methodisch vertretbare Schätzung erarbeiten. (Quelle: A-45, sources/12 Q124)
Ziel: Eine methodisch transparente, dokumentierte CO₂-Schätzung für die jährliche Langdock-API-Nutzung erarbeiten, die im Nachhaltigkeitsbericht als "Best-Estimate mit dokumentierten Annahmen" ausgewiesen werden kann.
Ergebnis: Eine CO₂-Schätzungsmethodik und ein ausgefülltes Schätzungs-Template für den Nachhaltigkeitsbericht — inklusive Datenannahmen, Unsicherheitsbereich und Aktualisierungsprozess.
Fähigkeit: Usage Export API, Advisory
Vorgehen:
1. Ermittle den Token-Verbrauch: Langdock Usage Export API liefert monatliche Token-Zählung pro Modell; Jahressumme bildet die Grundlage der Schätzung.
2. Wende CO₂-Konversionsfaktoren an: öffentlich zugängliche Schätzungen wie das ML.energy-Projekt und Hugging Face's LLM-Energie-Forschung liefern Wh-pro-Token-Schätzwerte für gängige Modellarchitekturen; EU-Strommix-Emissionsfaktor (ca. 230 gCO₂/kWh für EU-27 Durchschnitt, Quelle: European Environment Agency) für die Umrechnung in CO₂.
3. Dokumentiere Annahmen und Unsicherheit: Token-zu-Wh-Faktoren variieren je nach Modellgröße, Datacenter-Effizienz und Auslastung um den Faktor 3–10; die Schätzung sollte als "Bereich" (Min–Max) statt als Punktwert ausgewiesen werden.
4. Definiere den jährlichen Aktualisierungsprozess: CO₂-Faktoren und EU-Strommix-Werte jährlich aus den Quellen aktualisieren; Vergleich mit dem Vorjahr nur bei identischer Methodik aussagekräftig.
Prompt:
> "Du bist ein Nachhaltigkeits-Analyst. Unsere Nachhaltigkeitsbeauftragte braucht eine CO₂-Schätzung für unsere Langdock-KI-Nutzung für den Jahresbericht. Erkläre die Schätzungsmethodik: (1) Token-Verbrauch aus der Usage Export API, (2) Konversionsfaktoren aus ML.energy und Hugging Face, (3) EU-Strommix-Emissionsfaktor, (4) Darstellung als Bereich statt Punktwert. Liefere ein ausgefülltes Schätzungs-Template mit dokumentierten Annahmen und Unsicherheitsbereich."
Artefakt: Eine CO₂-Schätzungsmethodik und ein ausgefülltes Schätzungs-Template (Token-Basis, Konversionsfaktoren, Ergebnisbereich, Annahmen-Dokumentation).
Fallstricke:
- Das Modell liefert einen einzelnen CO₂-Punktwert ohne Unsicherheitsbereich — dies vermittelt eine Scheingenauigkeit, die methodisch nicht vertretbar ist und im Nachhaltigkeitsbericht angreifbar wäre.
- Die Quelle der CO₂-Faktoren wird nicht dokumentiert — ohne Quellenangabe ist die Schätzung im nächsten Jahr nicht reproduzierbar und der Vergleich mit dem Vorjahr nicht möglich.
Anschluss: S-API-046

### S-API-046 API-Gateway-Muster für Multi-Tenant Marketing-SaaS

Trigger: Ein Marketing-SaaS-Anbieter im DACH-Raum betreibt Langdock im Hintergrund seiner Plattform und muss sicherstellen, dass jeder Mandant (Tenant) nur auf seine eigenen Daten und Budgets zugreift — ohne gegenseitige Isolation durch teure Einzel-Deployments zu erkaufen. (Quelle: S-API-004, S-API-013, sources/06 Deployment-Modelle)
Ziel: Ein API-Gateway-Architekturmuster konzeptionieren, das auf einem einzigen Langdock-Workspace mehrere Mandanten sicher isoliert — mit getrennten Token-Budgets, Wissensordnern und Audit-Logs pro Tenant.
Ergebnis: Ein Architekturkonzept: Gateway-Layer-Design, Tenant-Routing-Logik, Token-Budget-Enforcement und Isolationsnachweis für Sales-Pitches an Enterprise-Kunden.
Fähigkeit: API Gateway Advisory, Multi-Tenant Architecture Advisory
Vorgehen:
1. Definiere den Gateway-Layer: ein unternehmenseigener Reverse-Proxy (z. B. AWS API Gateway, Kong oder Traefik) sitzt vor der Langdock-API; er authentifiziert eingehende Mandanten-Requests via Tenant-spezifische JWT-Tokens und leitet sie mit dem gemeinsamen Langdock-API-Key weiter.
2. Implementiere Tenant-Routing: der Gateway fügt jedem Request einen eindeutigen `X-Tenant-ID`-Header hinzu; Langdock-Wissensordner werden pro Tenant mit restriktiven Zugriffskontrollen konfiguriert, sodass jeder Agent nur seinen Tenant-Ordner lesen darf.
3. Setze Token-Budget-Enforcement im Gateway um: der Gateway trackt Token-Verbrauch pro Tenant in einer eigenen Datenbank (z. B. Redis); überschreitet ein Tenant sein Monatsbudget, blockiert der Gateway weitere Requests mit HTTP 429 — bevor sie Langdock erreichen.
4. Trenne Audit-Logs: jeder Gateway-Request wird mit Tenant-ID, Timestamp und Token-Zahl in ein zentrales Log-System (z. B. Elasticsearch) geschrieben; Mandanten-Administratoren erhalten nur Zugriff auf ihre eigenen Log-Einträge via rollenbasierter Log-Filterung.
5. Teste die Isolation: Penetrationstest-Szenario — versuche von Tenant A aus, auf Wissensordner von Tenant B zuzugreifen; Erwartung: HTTP 403; dokumentiere das Ergebnis als Isolationsnachweis für den SaaS-Sicherheits-Fragebogen.
Prompt:
> "Du bist ein Cloud-Architekt. Wir betreiben ein Marketing-SaaS mit 50 Mandanten, alle auf demselben Langdock-Workspace. Erkläre das API-Gateway-Muster: (1) Gateway-Layer-Design mit Tenant-Routing, (2) Token-Budget-Enforcement pro Tenant, (3) Wissensordner-Isolation, (4) getrennte Audit-Logs. Liefere ein Architekturkonzept mit Komponentendiagramm-Beschreibung und Isolationsnachweis-Prozedur."
Artefakt: Ein Architekturkonzept (Gateway-Layer, Tenant-Routing, Budget-Enforcement, Log-Trennung, Isolationsnachweis).
Fallstricke:
- Der API-Key wird im Gateway-Code als Plaintext hinterlegt statt als verschlüsseltes Secret in einem Secret-Manager — bei einem Code-Leak sind alle Mandanten exponiert.
- Token-Budget-Enforcement wird in Langdock selbst statt im Gateway erwartet — Langdock bietet kein natives Mandanten-Budget-Splitting; die Enforcement-Logik muss zwingend im eigenen Gateway liegen.
Anschluss: S-API-047

### S-API-047 GraphQL vs. REST — Abwägung für Langdock-Integrationen

Trigger: Das Entwicklungsteam diskutiert, ob eine neue Marketing-Daten-Plattform die Langdock-API über REST oder GraphQL ansprechen soll. Die Marketing-Direktorin wird in ein Architektur-Review einbezogen und muss die strategische Abwägung verstehen. (Quelle: S-API-001, S-API-046, sources/06 REST-Endpoints)
Ziel: Die strategische Abwägung zwischen REST und GraphQL für Langdock-Integrationen nachvollziehbar machen — mit Marketing-relevanten Entscheidungskriterien wie Abrufeffizienz, Entwicklungsaufwand und Toolchain-Kompatibilität.
Ergebnis: Eine Entscheidungsmatrix (REST vs. GraphQL) mit konkreten Empfehlungen für typische Marketing-Automatisierungs-Use-Cases.
Fähigkeit: Advisory, API Architecture Advisory
Vorgehen:
1. Erkläre den fundamentalen Unterschied: REST liefert feste Ressourcen-Endpunkte (z. B. `POST /completions`); GraphQL erlaubt flexible Abfragen, bei denen der Client exakt bestimmt, welche Felder er braucht — vorteilhaft, wenn unterschiedliche Marketing-Clients unterschiedliche Datentiefen benötigen.
2. Bewerte REST-Vorteile für Langdock-Integrationen: Langdock bietet nativ eine REST-API mit OpenAI-Kompatibilität; REST-Bibliotheken (Python OpenAI SDK, Axios) sind in jedem Tech-Stack vorhanden; Debugging über Browser-DevTools und Postman ist einfach.
3. Erkläre, wann GraphQL einen Mehrwert hätte: wenn eine eigene Abstraktionsschicht über der Langdock-API gebaut wird, die mehreren internen Consumers (Dashboard, Mobile App, Chatbot) unterschiedliche Antwortformate liefern soll — dann reduziert GraphQL Over-Fetching.
4. Gib eine klare Empfehlung: Für direkte Langdock-Integrationen ist REST die richtige Wahl — Langdock exponiert keine GraphQL-API; GraphQL ist erst relevant, wenn ein eigener API-Layer über Langdock gebaut wird und mehr als drei verschiedene Consumer-Typen bedient werden müssen.
Prompt:
> "Du bist ein API-Architekt. Wir integrieren Langdock in unsere Marketing-Daten-Plattform. Unser Team diskutiert REST vs. GraphQL. Erkläre: (1) den grundlegenden Unterschied, (2) warum REST für direkte Langdock-Integrationen vorzuziehen ist, (3) in welchem Szenario GraphQL einen eigenen Abstraktions-Layer rechtfertigt. Liefere eine Entscheidungsmatrix mit Empfehlung für unsere Marketing-Use-Cases."
Artefakt: Eine Entscheidungsmatrix (REST vs. GraphQL) mit konkreter Empfehlung für Marketing-Automatisierungs-Szenarien.
Fallstricke:
- Das Modell empfiehlt GraphQL als generell moderner und besser — ohne zu berücksichtigen, dass Langdock keine native GraphQL-API hat; GraphQL muss als eigener Layer entwickelt und gewartet werden.
- Die Entscheidung basiert auf Technologie-Präferenzen des Entwicklerteams statt auf Marketing-Anforderungen — Over-Fetching-Probleme existieren bei den meisten Marketing-Automatisierungs-Calls schlicht nicht.
Anschluss: S-API-048

### S-API-048 API-Dokumentation automatisch generieren

Trigger: Das Marketing-Ops-Team hat über mehrere Monate eine interne Langdock-Integrations-Schicht gebaut (Completion-Endpoint, Agent-Endpoint, Knowledge-Folder-Sync). Die Dokumentation wurde nie geschrieben. Neue Entwickler stoßen auf einen undurchdringlichen Code-Dschungel. (Quelle: S-API-001, S-API-047, research/50 A-36)
Ziel: Eine vollständige, wartbare API-Dokumentation für die interne Langdock-Integrationsschicht generieren lassen — OpenAPI-Spec-kompatibel, mit Beispiel-Requests und Fehler-Codes.
Ergebnis: Eine OpenAPI 3.0-Spezifikation (YAML) plus ein lesbares Markdown-Referenz-Dokument für das interne Entwicklerteam.
Fähigkeit: Chat, Code-Analyse Advisory
Vorgehen:
1. Sammle Eingabematerial: Code-Snippets der internen API-Endpoints, bestehende Postman-Collections, Beispiel-Requests und -Responses sowie bekannte Fehler-Codes.
2. Lass die KI eine OpenAPI 3.0-Spezifikation in YAML ableiten: für jeden Endpoint definiert die Spec `paths`, `operationId`, `parameters`, `requestBody`, `responses` inklusive HTTP-Status-Codes (200, 400, 401, 429, 500) und Fehler-Schemas.
3. Generiere das menschenlesbare Markdown-Dokument: für jeden Endpoint ein Abschnitt mit Beschreibung, cURL-Beispiel-Request, Beispiel-Response und typischen Fehler-Szenarien.
4. Integriere Dokumentations-Maintenance in den Entwicklungsprozess: neue Endpoints werden vor dem Merge via Pull-Request-Template mit einer Mindest-Dokumentation (1 Beispiel-Request + 1 Fehler-Code) verknüpft.
Prompt:
> "Du bist ein technischer Dokumentationsexperte. Ich gebe dir Code-Snippets unserer internen Langdock-Integrationsschicht. Erstelle: (1) eine OpenAPI 3.0-Spezifikation in YAML mit Paths, Parameters, Request/Response-Schemas und HTTP-Status-Codes, (2) ein Markdown-Referenzdokument mit cURL-Beispielen pro Endpoint. Liefere beide Artefakte vollständig — auch wenn du Annahmen treffen musst, kennzeichne diese."
Artefakt: Eine OpenAPI 3.0-Spezifikation (YAML) und ein Markdown-Referenz-Dokument mit Beispiel-Requests und Fehler-Codes.
Fallstricke:
- Die generierte OpenAPI-Spec wird nicht gegen einen Validator (z. B. Swagger Editor) geprüft — ungültige YAML-Syntax oder fehlende Pflichtfelder (`info`, `openapi`-Version) machen die Spec für Code-Generatoren unbrauchbar.
- Das Modell dokumentiert Happy-Path-Responses, vergisst aber Fehler-Schemas für 4xx-Codes — ein Entwickler, der auf Rate-Limit-Fehler (429) trifft, findet keinen Hinweis auf den Retry-After-Header.
Anschluss: S-API-049

### S-API-049 API Consumer Onboarding Guide erstellen

Trigger: Die Marketing-Direktorin hat drei externe Agenturen und zwei interne Entwicklungsteams, die alle auf die interne Langdock-Integrationsschicht zugreifen sollen. Es gibt keinen strukturierten Onboarding-Prozess; jedes Team stellt dieselben Fragen. (Quelle: S-API-048, research/50 A-37, sources/12 Q148)
Ziel: Einen strukturierten API Consumer Onboarding Guide entwickeln, der neue Entwickler und Agenturteams in weniger als einem Arbeitstag produktionsfähig macht — ohne wiederholte 1:1-Betreuung durch das interne Team.
Ergebnis: Ein Onboarding-Guide-Dokument: Getting-Started-Checkliste, Authentication-Setup, erste API-Calls mit Beispielen, Fehler-Debugging-Abschnitt und Eskalationspfad.
Fähigkeit: Chat, Wissensordner
Vorgehen:
1. Strukturiere den Guide in vier Kapitel: (1) Voraussetzungen und Zugangsdaten-Beantragung, (2) Authentication (Bearer Token Setup), (3) erster Test-Call mit cURL/Postman, (4) häufige Fehler und deren Behebung.
2. Baue eine "Zeit-bis-erster-Call"-Garantie ein: ziel auf unter 30 Minuten vom Erhalt der Zugangsdaten bis zum ersten erfolgreichen API-Response; dokumentiere jeden Schritt mit Screenshots oder kopierbaren Code-Snippets.
3. Füge einen Fehler-Debugging-Entscheidungsbaum hinzu: HTTP 401 → API-Key prüfen; HTTP 403 → Wissensordner-Berechtigungen prüfen; HTTP 429 → Rate-Limit-Dokumentation lesen; HTTP 500 → Langdock-Status-Page checken.
4. Definiere den Eskalationspfad: wenn der Guide nicht reicht, wen kontaktieren (Slack-Channel, E-Mail, SLA für Antwortzeit) — verhindert, dass der Guide zur veralteten Einweg-Ressource wird.
Prompt:
> "Du bist ein technischer Writer. Erstelle einen API Consumer Onboarding Guide für externe Entwicklungsteams, die auf unsere interne Langdock-Integrationsschicht zugreifen. Der Guide muss in unter 30 Minuten zum ersten erfolgreichen API-Call führen. Strukturiere ihn mit: Voraussetzungen, Authentication, erstem Test-Call (cURL-Snippet), Fehler-Debugging-Entscheidungsbaum und Eskalationspfad. Liefere ein Dokument im Markdown-Format."
Artefakt: Ein Markdown-Onboarding-Guide (Getting-Started-Checkliste, Auth-Setup, Test-Call, Debugging-Entscheidungsbaum, Eskalationspfad).
Fallstricke:
- Der Guide dokumentiert nur die Happy Path und ignoriert häufige Onboarding-Fehler (falsches Token-Format, fehlende CORS-Konfiguration) — neue Consumer verlieren Stunden beim Debugging vermeidbarer Fehler.
- Der Guide wird einmalig geschrieben und nie aktualisiert — nach dem nächsten API-Update sind Beispiel-Responses veraltet und der Guide erzeugt mehr Verwirrung als er löst.
Anschluss: S-API-050

### S-API-050 Load-Testing der Langdock-API für Kampagnen-Spitzenlast

Trigger: Das Marketing-Team plant eine Black-Friday-Kampagne mit erwartetem 10x-Traffic-Peak auf dem KI-gestützten Produktberatungs-Chatbot. Bevor die Kampagne live geht, will die Technikleitung wissen, ob die Langdock-API und der eigene Backend-Layer diese Last tragen. (Quelle: S-API-004, S-API-046, sources/06 Rate Limits)
Ziel: Eine Load-Testing-Strategie für die Langdock-API-Integration konzeptionieren, die Engpässe unter Spitzenlast identifiziert und Skalierungsmaßnahmen vor dem Kampagnenstart ermöglicht.
Ergebnis: Ein Load-Testing-Konzept: Test-Szenarien, Toolauswahl, Metriken, Langdock Rate-Limit-Berücksichtigung und Skalierungsempfehlungen.
Fähigkeit: Advisory, API Rate-Limit Advisory
Vorgehen:
1. Definiere die Test-Szenarien: (a) Baseline — 10 gleichzeitige User, erwartete Latenz unter 3 Sekunden; (b) Normallast — 100 gleichzeitige User; (c) Spitzenlast — 1.000 gleichzeitige User (10x Black-Friday-Schätzung); (d) Soak-Test — 50 User konstant über 4 Stunden.
2. Wähle das passende Load-Testing-Tool: k6 (JavaScript, Cloud-fähig) oder Locust (Python) für API-Last; wichtig ist, dass das Tool HTTP-Streaming (Server-Sent Events) für den Completion-Endpoint simulieren kann.
3. Berücksichtige Langdock Rate Limits: Langdock begrenzt API-Calls pro Minute pro Workspace; ein Burst von 1.000 gleichzeitigen Requests ohne Backoff-Logik erzeugt sofort HTTP 429-Fehler; das Load-Testing-Skript muss exponentielles Retry-Backoff simulieren.
4. Definiere Skalierungsmaßnahmen basierend auf Testergebnissen: horizontales Skalieren des eigenen BFF-Layers (mehr Instanzen); Request-Queuing vor dem Langdock-Call; Caching häufig gefragter Antworten (Cache-Control für identische Produktfragen).
Prompt:
> "Du bist ein Performance-Engineer. Wir erwarten am Black Friday einen 10x-Traffic-Peak auf unserem Langdock-gestützten Chatbot. Erstelle ein Load-Testing-Konzept: (1) vier Test-Szenarien (Baseline bis Spitzenlast), (2) Tool-Empfehlung (k6 vs. Locust) mit Begründung, (3) Umgang mit Langdock Rate Limits im Test, (4) Skalierungsmaßnahmen bei identifizierten Engpässen. Liefere ein praxistaugliches Konzept mit konkreten Schwellenwerten."
Artefakt: Ein Load-Testing-Konzept (Szenarien, Tool, Rate-Limit-Handling, Skalierungsmaßnahmen).
Fallstricke:
- Das Load-Testing-Skript sendet echte Produktanfragen mit realen Nutzerdaten — Load-Tests gegen Produktionssysteme mit Echtdaten verstoßen gegen DSGVO und verursachen reale Kosten; Testdaten müssen synthetisch sein.
- Der Test ignoriert die Langdock Rate Limits und wertet 429-Fehler als Backend-Fehler des eigenen Systems — das Ergebnis ist eine falsch-negative Performance-Bewertung, die echte Engpässe verdeckt.
Anschluss: S-API-051

### S-API-051 API-Mocking für parallele Entwicklung

Trigger: Das Frontend-Team entwickelt den neuen Kampagnen-Chatbot parallel zum Backend-Team, das die Langdock-Integration noch nicht fertig hat. Ohne produktionsfähige API blockiert das Frontend-Team seine eigene Arbeit — und echte Langdock-Calls in der Entwicklung kosten Token-Budgets. (Quelle: S-API-048, S-API-049)
Ziel: Eine API-Mocking-Strategie konzeptionieren, die parallele Frontend- und Backend-Entwicklung ermöglicht, ohne Langdock-Token zu verbrauchen und ohne Produktionsdaten in Entwicklungsumgebungen zu exponieren.
Ergebnis: Ein Mocking-Konzept: Mock-Server-Aufbau, Response-Fixtures für typische Marketing-Szenarien und Integration in die CI/CD-Pipeline.
Fähigkeit: Advisory, API Development Advisory
Vorgehen:
1. Wähle den Mock-Server-Ansatz: für statische Mocks eignet sich Mockoon (Desktop-Tool, kein Code) oder MSW (Mock Service Worker, für Browser-/Node-Tests); für dynamische Mocks, die Streaming-Responses (Server-Sent Events) simulieren, ist ein einfacher Express.js-Mock-Server der pragmatischste Weg.
2. Erstelle Response-Fixtures für typische Marketing-Szenarien: (a) kurze Produktbeschreibung (< 100 Tokens, schnelle Antwort), (b) langer Blogartikel-Draft (> 800 Tokens, simuliertes Streaming), (c) Fehlerfall HTTP 429 (Rate Limit), (d) Fehlerfall HTTP 500 (Server-Fehler) — alle vier Fixtures müssen das echte Langdock-Response-Schema replizieren.
3. Integriere den Mock in die CI/CD-Pipeline: in der Test-Umgebung (`NODE_ENV=test`) zeigt die `BASE_URL`-Konfiguration auf den Mock-Server statt auf `api.langdock.com`; so laufen alle Integrationstests ohne echte API-Calls.
4. Definiere die Synchronisations-Pflicht: sobald die echte Langdock-API eine Response-Schema-Änderung erfährt, muss der Mock innerhalb von 24 Stunden aktualisiert werden — andernfalls testen Entwickler gegen ein veraltetes Interface.
Prompt:
> "Du bist ein Backend-Entwickler. Unser Frontend-Team entwickelt parallel zu uns und braucht einen Langdock-API-Mock. Erkläre: (1) passende Mock-Server-Optionen (Mockoon, MSW, Express.js) mit Vor-/Nachteilen, (2) welche vier Response-Fixtures wir für Marketing-Szenarien brauchen (inkl. Fehlerszenarien), (3) wie wir den Mock in unsere CI/CD-Pipeline integrieren. Liefere ein Mocking-Konzept mit Empfehlung."
Artefakt: Ein Mocking-Konzept (Tool-Empfehlung, vier Response-Fixtures, CI/CD-Integration, Synchronisationsprozess).
Fallstricke:
- Der Mock repliziert nur den Happy Path und hat keinen Fehlerfall — beim ersten echten 429-Fehler in Produktion ist das Frontend unvorbereitet, weil es diesen Fall nie getestet hat.
- Der Mock-Server bleibt nach API-Schema-Änderungen unaktualisiert — Entwickler testen monatelang gegen ein veraltetes Interface und merken den Fehler erst beim Produktions-Deployment.
Anschluss: S-API-052

### S-API-052 Canary-Deployment für API-Updates

Trigger: Das Team will die Langdock-Integration auf ein neues Sprachmodell migrieren (z. B. von GPT-4o auf Claude Sonnet 4.6). Statt alle 10.000 täglichen Chatbot-Interaktionen auf einmal umzustellen, soll das neue Modell schrittweise getestet werden — Fehler sollen frühzeitig erkannt werden, bevor sie alle Nutzer betreffen. (Quelle: S-API-004, S-API-050, sources/06 Deployment-Modelle)
Ziel: Ein Canary-Deployment-Muster für Langdock-Modell- oder API-Endpoint-Updates konzeptionieren, das Risiken bei Produktionsupdates minimiert und datenbasierte Rollback-Entscheidungen ermöglicht.
Ergebnis: Ein Canary-Deployment-Konzept: Traffic-Split-Strategie, Monitoring-Metriken, Rollout-Schwellenwerte und Rollback-Playbook.
Fähigkeit: Advisory, API Deployment Advisory
Vorgehen:
1. Definiere die Traffic-Split-Strategie: Phase 1 — 5 % des Traffics auf das neue Modell (Canary), 95 % auf das bestehende (Stable); Phase 2 — nach 48 Stunden fehlerfreiem Betrieb auf 25 %; Phase 3 — nach weiteren 48 Stunden auf 100 % (Full Rollout); Routing-Entscheidung im eigenen BFF-Layer über Feature-Flag.
2. Definiere die Monitoring-Metriken für die Canary-Gruppe: (a) Response-Latenz (p95), (b) Fehlerrate (HTTP 4xx/5xx), (c) Output-Qualitäts-Proxy (Nutzer-Abbruchrate oder Daumen-hoch/runter-Feedback), (d) Token-Verbrauch pro Antwort (Kostenvergleich).
3. Lege Rollout-Schwellenwerte fest: Fortschreiten zu Phase 2 nur, wenn: Fehlerrate Canary ≤ Fehlerrate Stable + 0,5 %; Latenz Canary ≤ Latenz Stable × 1,2; kein kritischer Output-Qualitäts-Einbruch.
4. Schreibe ein Rollback-Playbook: Rollback-Entscheidung durch welche Rolle (DevOps-Lead + Marketing-Direktorin), Rollback-Mechanismus (Feature-Flag auf 0 % Canary), Kommunikationstemplate für betroffene Teams, Post-Mortem-Vorlage.
Prompt:
> "Du bist ein DevOps-Architekt. Wir wollen unsere Langdock-Integration schrittweise auf ein neues Sprachmodell migrieren. Erkläre das Canary-Deployment-Muster: (1) Traffic-Split-Phasen (5 % → 25 % → 100 %), (2) Monitoring-Metriken für die Canary-Gruppe, (3) quantitative Rollout-Schwellenwerte, (4) Rollback-Playbook mit Entscheidungspfad. Liefere ein vollständiges Deployment-Konzept."
Artefakt: Ein Canary-Deployment-Konzept (Traffic-Split-Phasen, Monitoring-Metriken, Rollout-Schwellenwerte, Rollback-Playbook).
Fallstricke:
- Das Canary-Deployment wird ohne Feature-Flag im BFF-Layer implementiert und stattdessen direkt in der Langdock-Konfiguration gesteuert — ein Rollback erfordert dann ein Code-Deployment statt eines Konfigurations-Toggles.
- Die Canary-Gruppe ist zu klein (< 1 % Traffic) und liefert keine statistisch belastbaren Daten — nach 48 Stunden gibt es noch keine aussagekräftigen Qualitätsmetriken für die Rollout-Entscheidung.
Anschluss: S-API-053

### S-API-053 API-Nutzungs-Dashboard für Marketing-Ops

Trigger: Die Marketing-Direktorin hat fünf Teams, die Langdock über die API nutzen: Content, Performance, CRM, PR und Research. Das monatliche Token-Budget wird überschritten, aber niemand weiß, welches Team der Hauptverursacher ist. Der Finance-Controller fordert eine verursachergerechte Kostenzuordnung. (Quelle: S-API-020, S-API-043, sources/12 Q120, Q124)
Ziel: Ein API-Nutzungs-Dashboard konzeptionieren, das Token-Verbrauch und Kosten in Echtzeit pro Team, Agent und Kampagne visualisiert — als Grundlage für verursachergerechte Kostenzuordnung und Budget-Steuerung.
Ergebnis: Ein Dashboard-Konzept: Datenquellen, Metriken, Visualisierungsebenen, Alert-Logik und Integration in das bestehende BI-System.
Fähigkeit: Usage Export API, Advisory
Vorgehen:
1. Definiere die Datengrundlage: Langdock Usage Export API liefert CSV mit Feldern wie `user_id`, `agent_id`, `model`, `input_tokens`, `output_tokens`, `timestamp`; täglicher Export-Job lädt die Daten in ein Data Warehouse (z. B. BigQuery oder Snowflake).
2. Entwerfe die Metriken-Hierarchie: (a) Workspace-Ebene — Gesamtkosten vs. Budget; (b) Team-Ebene — Token-Kosten pro Team (via User-Gruppen-Mapping); (c) Agent-Ebene — teuerste Agenten nach Output-Tokens; (d) Kampagnen-Ebene — Kosten pro Kampagne via `conversation_tag`-Konvention.
3. Baue die Alert-Logik: Budget-Alert bei 70 % Verbrauch (Frühwarnung), bei 90 % (Eskalation an Marketing-Direktorin), bei 100 % (automatischer Stopp neuer API-Calls für den teuersten Team-Account).
4. Integriere in das bestehende BI-System: Power BI oder Looker Dashboard mit Refresh alle 4 Stunden; monatlicher PDF-Export für Finance-Controller automatisiert via geplanter Report-Versand.
Prompt:
> "Du bist ein Marketing-Ops-Analyst. Wir brauchen ein API-Nutzungs-Dashboard für unsere fünf Marketing-Teams. Erkläre: (1) welche Daten die Langdock Usage Export API liefert, (2) wie wir Kosten pro Team und Agent aufschlüsseln, (3) Alert-Logik bei Budget-Schwellenwerten, (4) Integration in Power BI oder Looker. Liefere ein Dashboard-Konzept mit Metrikenhierarchie und Alert-Konfiguration."
Artefakt: Ein Dashboard-Konzept (Datenquellen, Metrikhierarchie, Alert-Logik, BI-Integration).
Fallstricke:
- Das Dashboard zeigt nur Gesamt-Token-Kosten ohne Team-Attribution — es ist weiterhin unmöglich, den Budget-Überschreiter zu identifizieren; das ist das ursprüngliche Problem, ungelöst.
- Die Alert-Schwellenwerte sind nicht mit dem monatlichen Budget-Zyklus synchronisiert — ein Alert bei 70 % des Tagesverbrauchs ist nicht dasselbe wie 70 % des Monatsbudgets; die Berechnungslogik muss explizit definiert werden.
Anschluss: S-API-054

### S-API-054 Dynamische System-Prompt-Injektion zur Laufzeit

Trigger: Das Marketing-Team betreibt einen einzigen Produktberatungs-Chatbot für 12 Länder. Jedes Land braucht einen leicht anderen Ton, andere Produktverfügbarkeiten und andere rechtliche Disclaimers. Statt 12 separate Agenten zu pflegen, soll ein einziger Chatbot seinen System-Prompt dynamisch basierend auf dem Nutzer-Locale anpassen. (Quelle: S-API-002, S-API-046, sources/06 OpenAI-Kompatibilität)
Ziel: Das Muster der dynamischen System-Prompt-Injektion zur Laufzeit konzeptionieren — ein einziger Agent passt sein Verhalten kontextsensitiv an, ohne für jede Variante einen separaten Agent zu benötigen.
Ergebnis: Ein Architekturkonzept für dynamische System-Prompt-Injektion: Prompt-Template-Struktur, Variablen-Injection-Mechanismus, Locale-Mapping und Sicherheits-Guardrails.
Fähigkeit: Completion API, Advisory
Vorgehen:
1. Definiere die Prompt-Template-Struktur: ein Master-System-Prompt mit Platzhaltern (`{{locale}}`, `{{disclaimer}}`, `{{available_products}}`) wird im BFF-Layer gespeichert; das Template enthält den stabilen Kern (Persona, Aufgabe, Format) und variable Slots für locale-spezifische Inhalte.
2. Baue den Injection-Mechanismus: beim API-Call liest der BFF-Layer das Nutzer-Locale aus dem JWT-Token; mappt es auf die passende Konfigurationsdatei (z. B. `de-DE.json`, `fr-FR.json`); füllt die Template-Variablen aus; sendet den fertigen System-Prompt als `system`-Feld im API-Request.
3. Definiere das Locale-Mapping: ein zentrales `locale-config`-Repository mit Feldern: `tone` (formal/informal), `legal_disclaimer` (Länder-spezifischer Text), `available_products` (Array von Produkt-IDs), `currency` — gepflegt von Marketing, nicht von Entwicklung.
4. Implementiere Sicherheits-Guardrails: Injection-Variablen werden serverseitig escapet, bevor sie in den Prompt eingesetzt werden; Nutzer-Input darf niemals direkt in den System-Prompt einfließen — nur in den User-Turn; maximale Länge der Injection-Variablen begrenzen.
Prompt:
> "Du bist ein Backend-Architekt. Wir betreiben einen Chatbot für 12 Länder und wollen dynamische System-Prompt-Injektion statt 12 separater Agenten. Erkläre: (1) Prompt-Template-Struktur mit Platzhaltern, (2) Injection-Mechanismus im BFF-Layer, (3) Locale-Mapping-Struktur für Marketing-Pflege, (4) Sicherheits-Guardrails gegen Prompt-Injection via Variablen. Liefere ein Architekturkonzept."
Artefakt: Ein Architekturkonzept für dynamische System-Prompt-Injektion (Template-Struktur, Injection-Mechanismus, Locale-Mapping, Sicherheits-Guardrails).
Fallstricke:
- Nutzer-Input wird direkt als Injection-Variable in den System-Prompt eingesetzt — das öffnet ein direktes Prompt-Injection-Angriffsvector; Variablen dürfen ausschließlich aus serverseitigen, validierten Konfigurationsdateien kommen.
- Das Locale-Mapping wird direkt in den Anwendungscode eingepflegt statt in separate Konfigurationsdateien — Marketing kann legale Disclaimers nur noch durch ein Code-Deployment aktualisieren, was wochenlange Verzögerungen verursacht.
Anschluss: S-API-055

### S-API-055 Multimodale API-Anfragen (Text + Bild) für Campaign Asset Review

Trigger: Das Marketing-Team bekommt täglich 20–30 Werbebanner von der Designagentur. Jeder Banner muss gegen den Brand Guide geprüft werden: korrekte Schriftarten, Farbpalette, Textanteil unter 20 %. Dieser Review-Prozess kostet drei Stunden täglich. (Quelle: sources/12 Q99, S-API-002, research/50 A-47)
Ziel: Eine automatisierte Campaign-Asset-Review-Pipeline konzeptionieren, die multimodale API-Anfragen (Text + Bild) nutzt, um eingehende Werbebanner gegen Brand-Guide-Kriterien zu prüfen und strukturierte Review-Reports zu generieren.
Ergebnis: Ein Integrationskonzept für automatisierten Bild-Review: API-Request-Struktur für Vision-Modelle, Review-Prompt-Template, Ausgabeformat und Human-Review-Eskalationsschwelle.
Fähigkeit: Multimodal (Vision) API, Advisory
Vorgehen:
1. Erkläre die multimodale API-Request-Struktur: im Langdock-Completion-Endpoint wird das Bild als Base64-kodierter String oder URL im `content`-Array des User-Turns mitgesendet (OpenAI Vision-kompatibel); jeder Request enthält Bild + strukturierter Review-Prompt.
2. Definiere den Review-Prompt-Template: "Prüfe diesen Werbebanner gegen folgende Kriterien: (1) Schriftart: nur Inter oder Helvetica Neue, (2) Primärfarbe: #E63946 ± 10 %, (3) Textanteil: unter 20 % der Bildfläche, (4) Logo: sichtbar und unverzerrt. Liefere für jedes Kriterium: PASS/FAIL + Begründung in maximal einem Satz."
3. Strukturiere den Output: die API antwortet mit einem JSON-Objekt (vier Kriterien, je PASS/FAIL + Begründung + Gesamt-Score); bei zwei oder mehr FAILs wird der Banner automatisch in eine "Human-Review"-Queue verschoben.
4. Integriere in den Asset-Workflow: die Agentur lädt Banner in einen freigegebenen Google Drive-Ordner; ein n8n-Workflow triggert bei neuen Dateien, ruft die multimodale API auf und schreibt das Review-Ergebnis als Kommentar in das Slack-Thread des Design-Koordinators.
Prompt:
> "Du bist ein Brand-Compliance-Automatisierer. Wir wollen täglich eingehende Werbebanner automatisch gegen unseren Brand Guide prüfen. Erkläre: (1) wie multimodale API-Anfragen (Text + Bild) technisch aufgebaut sind, (2) ein Review-Prompt-Template für vier Brand-Kriterien, (3) strukturiertes JSON-Ausgabeformat mit PASS/FAIL, (4) Integration in unseren Asset-Workflow via n8n. Liefere ein vollständiges Integrationskonzept."
Artefakt: Ein Integrationskonzept (API-Request-Struktur, Review-Prompt-Template, JSON-Ausgabeformat, Workflow-Integration).
Fallstricke:
- Das Vision-Modell wird für pixelgenaue Farbmessung eingesetzt — LLM-Vision-Modelle können keine präzisen Hex-Farbwerte messen; Farbprüfungen müssen durch ein dedizierten Bildverarbeitungs-Tool (z. B. PIL/Pillow) ergänzt werden.
- Bilder werden als URL statt als Base64 gesendet, aber die URL liegt hinter einem Unternehmens-Proxy — das Vision-Modell kann die URL nicht abrufen; entweder Base64-Encoding oder öffentlich erreichbare URLs verwenden.
Anschluss: S-API-056

### S-API-056 API-Kostenzuordnung pro Kampagne (FinOps)

Trigger: Die Marketingleitung plant, den ROI einzelner Kampagnen ganzheitlich zu messen — inklusive der KI-Produktionskosten. Aktuell landen alle API-Kosten in einem einzigen Budget-Topf; eine Zuordnung zu Kampagne A vs. Kampagne B ist unmöglich. Der CFO will eine Kostenrechnung pro Kampagne. (Quelle: S-API-053, S-API-043, sources/12 Q124, research/50 A-22)
Ziel: Ein Kostenzuordnungs-Konzept (FinOps) entwickeln, das API-Token-Kosten auf einzelne Kampagnen aufschlüsselt — als Eingabe für den Kampagnen-ROI-Kalkulator und die interne Leistungsverrechnung.
Ergebnis: Ein Kostenzuordnungs-Konzept: Tagging-Strategie, Usage-Export-Auswertung, Kampagnen-ROI-Formel und Reporting-Template für Finance.
Fähigkeit: Usage Export API, Advisory
Vorgehen:
1. Implementiere eine Kampagnen-Tagging-Strategie: jeder API-Call trägt im `user`-Feld oder im Conversation-Metadaten-Tag eine Kampagnen-ID (z. B. `campaign:blackfriday-2026`); Langdock-Usage-Export enthält dieses Feld, das dann als Grouping-Key dient.
2. Baue die Kostenauswertung: Langdock Usage Export CSV → Aggregation nach `campaign_tag` → Multiplikation mit aktuellen Token-Preisen (Input-Token-Preis × Input-Tokens + Output-Token-Preis × Output-Tokens) → Kampagnen-KI-Kosten in Euro.
3. Integriere KI-Kosten in den Kampagnen-ROI-Kalkulator: KI-Produktionskosten werden als Linie im Campaign-Cost-Breakdown neben Media-Spend, Agentur-Fees und Toolkosten aufgeführt; ROI = (Umsatzattribution − Gesamtkosten inkl. KI) / Gesamtkosten.
4. Erstelle das monatliche Finance-Reporting-Template: Tabelle mit Kampagnenname, KI-Kosten (EUR), Anteil am Gesamt-Token-Budget (%), Vergleich Budget vs. Ist.
Prompt:
> "Du bist ein Marketing-FinOps-Berater. Unser CFO will KI-API-Kosten pro Kampagne zugeordnet sehen. Erkläre: (1) Kampagnen-Tagging-Strategie im API-Call, (2) Auswertung des Langdock Usage Exports nach Kampagnen-Tag, (3) Integration der KI-Kosten in den Kampagnen-ROI-Kalkulator, (4) monatliches Finance-Reporting-Template. Liefere ein vollständiges FinOps-Konzept."
Artefakt: Ein FinOps-Konzept (Tagging-Strategie, Kostenauswertung, ROI-Integration, Finance-Reporting-Template).
Fallstricke:
- Das Tagging wird nachträglich als optionales Feld eingeführt — Teams taggen inkonsistent, und 40 % der Kosten verbleiben in einer unzuordenbaren "Sonstiges"-Kategorie; Tagging muss Pflichtfeld im API-Wrapper sein, nicht optional.
- Token-Preise werden einmalig konfiguriert und nie aktualisiert — bei Modell-Preisupdates (die zwei- bis dreimal jährlich vorkommen) werden Kosten systematisch falsch berechnet; Preis-Lookup muss automatisiert aus der Langdock-Billing-API oder einer gepflegten Preistabelle erfolgen.
Anschluss: S-API-057

### S-API-057 Long-Polling für asynchrone Workflow-Status-Abfragen

Trigger: Das Marketing-Team hat lange laufende KI-Workflows (z. B. Deep-Research-Läufe, die 5–30 Minuten dauern). Die Frontend-Applikation fragt alle fünf Sekunden per HTTP-Polling, ob der Workflow fertig ist — das erzeugt unnötige Last und führt zu Timeout-Fehlern bei langen Laufzeiten. (Quelle: S-API-004, S-API-050, sources/06 Workflow-Endpoints)
Ziel: Das Long-Polling-Muster für asynchrone Langdock-Workflow-Status-Abfragen konzeptionieren, das unnötige Polling-Last eliminiert und Timeout-Probleme bei langen KI-Jobs löst.
Ergebnis: Ein Architekturkonzept für asynchrone Workflow-Status-Abfragen: Job-Submission-Pattern, Polling-Strategie, Timeout-Handling und Frontend-UX-Empfehlungen.
Fähigkeit: Workflows API, Advisory
Vorgehen:
1. Erkläre das asynchrone Job-Pattern: anstatt auf das Ergebnis zu warten (synchrones HTTP), gibt der Langdock-Workflow-Endpoint sofort eine `job_id` zurück; der Client fragt periodisch den Status-Endpoint mit dieser `job_id` ab bis der Job `COMPLETED` oder `FAILED` ist.
2. Implementiere exponentielles Backoff-Polling: erster Poll nach 2 Sekunden, dann 4 Sekunden, 8 Sekunden, maximal alle 30 Sekunden; nach 20 Minuten ohne `COMPLETED` wird ein Timeout-Fehler an den Nutzer gemeldet.
3. Designe die Frontend-UX für lange laufende Jobs: (a) sofortiges Progress-Feedback ("KI recherchiert — ca. 10 Minuten"); (b) nicht-blockierender UI-Zustand (Nutzer kann andere Aufgaben erledigen); (c) Push-Benachrichtigung oder E-Mail wenn der Job fertig ist (für Jobs über 5 Minuten).
4. Behandle Fehler-Zustände: `FAILED`-Job → klare Fehlermeldung mit Job-ID für den Support; Network-Fehler während Polling → automatischer Retry ohne User-Eingriff; Browser-Tab-Wechsel → Polling läuft im Background-Worker weiter.
Prompt:
> "Du bist ein Frontend-Architekt. Unsere KI-Workflows dauern 5–30 Minuten. Einfaches HTTP-Polling alle 5 Sekunden erzeugt Last und Timeouts. Erkläre: (1) das asynchrone Job-Submission-Pattern mit `job_id`, (2) exponentielles Backoff-Polling mit Timeout-Logik, (3) Frontend-UX für lange laufende Jobs, (4) Fehlerbehandlung für FAILED-Jobs und Network-Fehler. Liefere ein Architekturkonzept."
Artefakt: Ein Architekturkonzept (Job-Submission-Pattern, Polling-Strategie, Frontend-UX, Fehlerbehandlung).
Fallstricke:
- Das Polling-Intervall bleibt konstant bei 5 Sekunden statt exponentiell zu wachsen — bei 100 gleichzeitigen aktiven Jobs macht das 1.200 überflüssige API-Calls pro Minute, die das Rate Limit belasten.
- Der Polling-Loop wird im Haupt-Thread implementiert und blockiert die UI — der Nutzer kann während eines laufenden Deep-Research-Jobs keine anderen Aktionen in der Anwendung ausführen.
Anschluss: S-API-058

### S-API-058 API-Changelog-Benachrichtigungs-Workflow

Trigger: Langdock hat in den letzten sechs Monaten drei API-Updates veröffentlicht. Jedes Mal erfuhr das Team davon durch Produktionsfehler, nicht durch proaktive Benachrichtigung. Das letzte Update hat einen Breaking Change im Response-Schema mitgebracht, der einen einstündigen Ausfall verursachte. (Quelle: S-API-048, S-API-052, research/50 A-33)
Ziel: Einen automatisierten API-Changelog-Benachrichtigungs-Workflow aufbauen, der das Entwicklungsteam proaktiv über Langdock-API-Updates informiert und Zeit für geordnete Migration gibt — bevor Breaking Changes im Produktionsbetrieb ankommen.
Ergebnis: Ein automatisierter Benachrichtigungs-Workflow: Changelog-Monitoring, Alert-Klassifikation (Breaking Change vs. Minor Update), Team-Benachrichtigung und Migrations-Checkliste.
Fähigkeit: Workflows, Advisory
Vorgehen:
1. Setze das Changelog-Monitoring auf: ein täglicher Cron-Workflow ruft die Langdock-Changelog-Seite (oder RSS-Feed) ab; ein Diff-Vergleich mit dem letzten bekannten Stand identifiziert neue Einträge.
2. Klassifiziere Updates automatisch: ein KI-Schritt analysiert den neuen Changelog-Text und klassifiziert: `BREAKING_CHANGE` (Response-Schema-Änderung, Deprecation, Endpoint-Entfernung), `FEATURE_ADD` (neuer Endpoint, neues Feld), `BUGFIX` (keine Migrations-Aktion nötig).
3. Leite Team-Benachrichtigungen ab: `BREAKING_CHANGE` → sofortige Slack-Benachrichtigung an DevOps-Channel + Jira-Ticket-Erstellung mit 30-Tage-Migrations-Deadline; `FEATURE_ADD` → wöchentliche Zusammenfassung im Tech-Newsletter; `BUGFIX` → Log ohne Benachrichtigung.
4. Generiere eine Migrations-Checkliste: für `BREAKING_CHANGE`-Einträge erstellt der Workflow automatisch eine Checkliste: (a) API-Mock aktualisieren (S-API-051), (b) Integrationstests ausführen, (c) Canary-Deployment vorbereiten (S-API-052), (d) Rollback-Plan dokumentieren.
Prompt:
> "Du bist ein DevOps-Automatisierer. Wir wollen proaktiv über Langdock-API-Updates informiert werden, bevor Breaking Changes unsere Produktion treffen. Beschreibe einen automatisierten Workflow: (1) tägliches Changelog-Monitoring, (2) KI-basierte Update-Klassifikation (Breaking/Feature/Bugfix), (3) differenzierte Team-Benachrichtigung pro Klasse, (4) automatisch generierte Migrations-Checkliste für Breaking Changes. Liefere ein vollständiges Workflow-Konzept."
Artefakt: Ein automatisierter Benachrichtigungs-Workflow (Changelog-Monitoring, Update-Klassifikation, Team-Benachrichtigung, Migrations-Checkliste).
Fallstricke:
- Jedes API-Update — egal wie klein — löst eine Slack-Benachrichtigung aus; das Team entwickelt Alert-Fatigue und ignoriert auch kritische Breaking-Change-Alerts; die Klassifikation ist zwingend, um Signalrauschen zu reduzieren.
- Der Workflow monitort nur die Changelog-Seite, nicht die tatsächliche API-Response-Schema; ein stilles Breaking Change (Schema-Änderung ohne Changelog-Eintrag) wird nicht entdeckt; ein wöchentlicher Smoke-Test gegen ein Response-Fixture (S-API-051) ist als Ergänzung empfohlen.
Anschluss: S-API-059

### S-API-059 API-Sandbox-Umgebung für sicheres Experimentieren

Trigger: Das Marketing-Team will neue KI-Prompt-Strategien und Agenten-Konfigurationen ausprobieren, ohne das Produktions-Setup zu beeinflussen oder echte Token-Budgets zu verbrauchen. Jede Experimentier-Session in der Produktion verursacht ungewollte Kosten und Risiken für laufende Kampagnen. (Quelle: S-API-051, S-API-052, sources/06 Deployment-Modelle)
Ziel: Ein Sandbox-Umgebungs-Konzept für die Langdock-API-Integration aufbauen, das Marketing-Teams und Entwickler frei experimentieren lässt — mit kostengünstigen Flash-Modellen, synthetischen Testdaten und vollständiger Isolation von der Produktionsumgebung.
Ergebnis: Ein Sandbox-Setup-Konzept: Umgebungstrennung, Modell-Konfiguration für die Sandbox, Testdaten-Strategie und Promotions-Prozess von Sandbox nach Produktion.
Fähigkeit: Advisory, API Deployment Advisory
Vorgehen:
1. Trenne Umgebungen konsequent: separater Langdock-Workspace für Sandbox (kein Zugriff auf Produktions-Wissensordner, kein Zugriff auf echte CRM-Daten); separate API-Keys; `BASE_URL`-Konfiguration in `.env.sandbox` vs. `.env.production`.
2. Konfiguriere die Sandbox für günstige Experimente: Standard-Modell in der Sandbox ist ein Flash-/Haiku-Modell (10× günstiger als Sonnet); Token-Budget-Limit pro Entwickler bei 5 USD/Tag, um unkontrollierte Kosten zu verhindern; kein Streaming (einfacheres Debugging).
3. Definiere die Testdaten-Strategie: keine echten Kundendaten in der Sandbox; synthetische Testprodukte, fiktive Kampagnennamen und generierte Nutzerprofile; ein `test-data-generator`-Skript erstellt konsistente Testdatensätze, die alle Entwickler verwenden.
4. Standardisiere den Promotions-Prozess: bevor ein experimentell entwickelter Agent oder Prompt in die Produktion übernommen wird — (a) drei Spot-Tests mit Canary-Prompts (S-API-034-Methodik), (b) Review durch Brand-Verantwortlichen, (c) Dokumentation im Wissensordner.
Prompt:
> "Du bist ein DevOps-Architekt. Wir wollen eine sichere Sandbox-Umgebung für KI-Experimente aufbauen, die von unserer Produktion vollständig isoliert ist. Erkläre: (1) wie wir Langdock-Workspaces für Sandbox vs. Produktion trennen, (2) Modell- und Budget-Konfiguration für die Sandbox, (3) Testdaten-Strategie ohne echte Kundendaten, (4) Promotions-Prozess von Sandbox nach Produktion. Liefere ein vollständiges Setup-Konzept."
Artefakt: Ein Sandbox-Setup-Konzept (Umgebungstrennung, Modell-Konfiguration, Testdaten-Strategie, Promotions-Prozess).
Fallstricke:
- Die Sandbox teilt denselben Langdock-Workspace wie die Produktion — ein fehlerhafter Experiment-Prompt kann versehentlich Produktions-Wissensordner modifizieren oder durch exzessive Token-Nutzung das Produktions-Budget aufbrauchen.
- Sandbox-Experimente werden mit echten Kundendaten durchgeführt (aus Bequemlichkeit) — das verstößt gegen DSGVO-Grundsätze der Datenvermeidung und riskiert, dass sensible Daten in Sandbox-Logs ungeschützt verbleiben.
Anschluss: S-API-060

### S-API-060 OpenAI-Kompatibilitäts-Layer — Migrationsmuster und Fallstricke

Trigger: Ein Dienstleister hat für das Marketing-Team eine Automatisierungs-Lösung auf Basis der OpenAI-API gebaut. Das Unternehmen möchte aus Datenschutzgründen auf Langdock wechseln (EU-Hosting, Zero-Data-Retention), aber ohne das gesamte System neu zu entwickeln. Die IT-Leitung fragt, ob der "Drop-in-Replacement"-Ansatz wirklich so einfach ist wie versprochen. (Quelle: sources/06 OpenAI-Kompatibilität, S-API-001, research/50 A-03)
Ziel: Die OpenAI-Kompatibilitäts-Layer von Langdock vollständig durchleuchten — Migrationsmuster, tatsächliche Kompatibilitätsgrenzen, bekannte Fallstricke und ein praxistaugliches Migrations-Playbook für IT und Dienstleister.
Ergebnis: Ein Migrations-Playbook: Drop-in-Replacement-Schritt-für-Schritt-Anleitung, Kompatibilitätsgrenzen-Checkliste, bekannte Fallstricke und Validierungs-Testplan.
Fähigkeit: OpenAI-kompatibler Completion-Endpoint, Advisory
Vorgehen:
1. Erkläre den Drop-in-Replacement-Kern: zwei Änderungen im Dienstleister-Code — `base_url` von `https://api.openai.com/v1` auf `https://api.langdock.com/openai/eu/v1` und `api_key` auf den Langdock-Bearer-Token; der Rest des Codes bleibt unverändert (OpenAI Python SDK, Axios, etc.).
2. Kartiere die Kompatibilitätsgrenzen: was funktioniert nahtlos (Chat Completions, Embeddings, grundlegende Parameter wie `temperature`, `max_tokens`, `stream`); was erfordert Anpassung (OpenAI-proprietäre Features wie `assistants`-API, `fine-tuning`-Endpoint, `realtime`-API haben kein Langdock-Äquivalent).
3. Dokumentiere bekannte Fallstricke: Modell-Namen unterscheiden sich (Mapping-Tabelle Pflicht); OpenAI-`tools`-Parameter kompatibel, aber Langdock-Agenten-Features nur über native Endpoints; Rate-Limit-Headers können abweichen — Retry-Logik gegen Langdocks 429-Response testen.
4. Baue den Validierungs-Testplan: nach der Migration führt das Team 10 Referenz-Prompts aus (zuvor mit OpenAI getestet), vergleicht Response-Qualität, Latenz und Token-Zählung; bei mehr als 20 % Qualitätsabweichung ist eine Prompt-Anpassung nötig.
5. Kommuniziere den Compliance-Gewinn: nach erfolgter Migration profitiert die bestehende Infrastruktur sofort von EU-Hosting, Zero-Data-Retention und Audit-Logs — der Dienstleister kann dieselbe ISO-27001-konforme Umgebung für alle seine DACH-Kunden nutzen.
Prompt:
> "Du bist ein Migrations-Berater. Wir wollen unsere OpenAI-basierte Marketing-Automatisierung auf Langdock migrieren und den Kompatibilitäts-Layer nutzen. Erkläre: (1) die zwei Kernschritte des Drop-in-Replacements, (2) welche OpenAI-Features nicht kompatibel sind, (3) die drei häufigsten Fallstricke bei der Migration (Modell-Namen, Rate-Limits, Agenten-Features), (4) einen Validierungs-Testplan nach der Migration. Liefere ein praxistaugliches Migrations-Playbook."
Artefakt: Ein Migrations-Playbook (Drop-in-Replacement-Schritte, Kompatibilitätsgrenzen-Checkliste, Fallstricke, Validierungs-Testplan).
Fallstricke:
- Das Team migriert blind, ohne Kompatibilitätsgrenzen zu prüfen — die Migration schlägt fehl, weil der Dienstleister die OpenAI Assistants-API nutzt, die Langdock nicht repliziert; vor der Migration muss ein Feature-Audit des bestehenden Systems stehen.
- Nach der Migration wird die Response-Qualität als "automatisch gleich" angenommen — verschiedene Modelle hinter demselben Endpoint können unterschiedliche Output-Qualitäten für spezifische Marketing-Tasks liefern; ein Validierungs-Testplan mit Referenz-Prompts ist unverzichtbar.
Anschluss: S-API-061

### S-API-061 API-Key-Rotation als Pflichtprozess automatisieren

Trigger: Das Marketing-Team nutzt seit acht Monaten denselben Langdock-Workspace-API-Key in vier Integrationen. Ein Security-Audit bemängelt, dass der Key nie rotiert wurde. Die Direktorin soll mit der IT einen automatisierten Rotations-Prozess aufsetzen, der ohne Ausfall der laufenden Integrationen funktioniert. (Quelle: S-API-014, sources/12 Q120)
Ziel: Eine unterbrechungsfreie API-Key-Rotation etablieren, die Keys planmäßig (z. B. alle 90 Tage) und ad hoc bei Kompromittierung erneuert, ohne dass produktive Marketing-Workflows ausfallen.
Ergebnis: Ein Rotations-Runbook für die IT mit Dual-Key-Overlap-Verfahren, Rotations-Kalender und Verifikations-Schritten.
Fähigkeit: API Security Advisory, Audit Logs API
Vorgehen:
1. Erkläre das Dual-Key-Overlap-Prinzip: alten und neuen Key kurzzeitig parallel gültig halten, sodass Integrationen umgestellt werden können, bevor der alte Key invalidiert wird (kein Big-Bang-Cutover).
2. Definiere den Rotations-Kalender: planmäßige Rotation alle 90 Tage (Stand 2026-06 als Best-Practice-Richtwert — interne Security-Policy ist maßgeblich), zusätzlich Sofort-Rotation bei jedem Offboarding oder Kompromittierungsverdacht.
3. Lege die Schlüssel-Hinterlegung fest: jeder Key ausschließlich in einem Secrets-Manager, niemals in Code, Slack oder Tickets; pro Integration ein separater Key, damit Rotation eine Integration isoliert betreffen kann.
4. Verifiziere nach der Rotation über die Audit Logs API, dass keine Requests mehr mit dem alten Key eintreffen, bevor er endgültig gelöscht wird.
5. Dokumentiere ein Rollback: schlägt eine Integration nach Umstellung fehl, sofort zurück auf den noch gültigen alten Key, Fehler analysieren, erneut umstellen.
Prompt:
> "Du bist ein IT-Security-Berater. Wir nutzen denselben Langdock-API-Key seit acht Monaten in vier Integrationen und müssen Rotation automatisieren — ohne Ausfall. Erkläre: (1) das Dual-Key-Overlap-Verfahren, (2) einen 90-Tage-Rotations-Kalender plus Ad-hoc-Trigger, (3) Secrets-Manager-Hinterlegung mit separaten Keys pro Integration, (4) wie wir via Audit Logs API verifizieren, dass der alte Key inaktiv ist. Liefere ein Rotations-Runbook."
Artefakt: Ein Rotations-Runbook (Dual-Key-Verfahren, Kalender, Secrets-Hinterlegung, Verifikation, Rollback).
Fallstricke:
- Der alte Key wird sofort invalidiert, bevor alle Integrationen auf den neuen umgestellt sind — produktive Marketing-Workflows fallen mitten in einer Kampagne aus.
- Alle vier Integrationen teilen sich einen einzigen Key, sodass jede Rotation alle vier gleichzeitig betrifft und das Ausfallrisiko maximiert statt isoliert wird.
Anschluss: S-API-062

### S-API-062 Rate-Limit-Backoff-Strategie sauber dimensionieren

Trigger: Ein Localization-Workflow erzeugt in Spitzen kurzzeitig hunderte Completion-Requests und läuft regelmäßig in HTTP-429-Fehler. Das Entwicklungsteam hat einen festen 1-Sekunden-Retry eingebaut, der das Problem verschärft, weil alle Worker gleichzeitig erneut anklopfen. Die Direktorin beauftragt ein sauberes Backoff-Konzept. (Quelle: sources/10 S-066, sources/12 Q119)
Ziel: Eine korrekt dimensionierte Rate-Limit-Backoff-Strategie definieren, die HTTP-429-Stürme abfedert, den `Retry-After`-Header respektiert und den Thundering-Herd-Effekt vermeidet.
Ergebnis: Ein Backoff-Leitfaden für die IT mit konkreten Wartezeit-Kurven, Jitter-Empfehlung und Worker-Pacing.
Fähigkeit: Completion API, Rate-Limit-Advisory
Vorgehen:
1. Erkläre exponentielles Backoff mit Jitter: Wartezeit verdoppelt sich pro Versuch (1s, 2s, 4s, 8s), aber mit zufälligem Jitter (±50 %), damit nicht alle Worker synchron erneut anfragen (Thundering Herd).
2. Priorisiere den `Retry-After`-Header: liefert die 429-Antwort diesen Header, ist dessen Wert maßgeblich und überschreibt die eigene Backoff-Kurve.
3. Definiere Worker-Pacing als Prävention: statt Backoff erst nach dem Fehler zu nutzen, die Sende-Rate proaktiv unter der Workspace-Grenze halten (z. B. 400 statt 500 RPM als Safety-Margin — aktuelle Grenze vorab verifizieren).
4. Lege ein Abbruchkriterium fest: nach maximal 5 Versuchen den Request in eine Dead-Letter-Queue verschieben und Marketing-Ops alarmieren, statt unendlich zu retrien.
Prompt:
> "Du bist ein Resilience-Engineer. Unser Localization-Workflow läuft ständig in HTTP-429-Fehler; ein fester 1-Sekunden-Retry verschärft das Problem. Erkläre: (1) exponentielles Backoff mit Jitter und warum Jitter den Thundering-Herd-Effekt verhindert, (2) wie wir den Retry-After-Header priorisieren, (3) proaktives Worker-Pacing als Prävention, (4) ein Abbruchkriterium mit Dead-Letter-Queue. Liefere einen Backoff-Leitfaden mit konkreten Wartezeiten."
Artefakt: Ein Backoff-Leitfaden (Wartezeit-Kurve, Jitter, Retry-After-Priorität, Worker-Pacing, Abbruchkriterium).
Fallstricke:
- Das Backoff verwendet feste Intervalle ohne Jitter — alle Worker fragen synchron erneut an und erzeugen direkt die nächste 429-Welle.
- Der `Retry-After`-Header wird ignoriert und durch die eigene Kurve überschrieben — das System wartet entweder zu kurz (erneuter Fehler) oder unnötig lange.
Anschluss: S-API-063

### S-API-063 Idempotenz-Keys gegen doppelte Generierungen

Trigger: Nach einem Netzwerk-Timeout hat ein PIM-Sync denselben Produkttext doppelt generieren lassen, weil der Client den Request blind wiederholte. Im Shop erschienen zwei leicht abweichende Beschreibungen für dasselbe Produkt. Die Direktorin verlangt einen Mechanismus, der Doppelverarbeitungen verlässlich verhindert. (Quelle: S-API-030, sources/10 S-066)
Ziel: Idempotente Verarbeitung für Langdock-Generierungs-Requests etablieren, sodass ein durch Timeout oder Retry wiederholter Request garantiert nur eine einzige fachliche Wirkung erzeugt.
Ergebnis: Ein Idempotenz-Konzept für die IT mit Key-Generierung, serverseitiger Deduplizierung und Aufbewahrungsdauer.
Fähigkeit: Completion API, Advisory
Vorgehen:
1. Definiere den Idempotenz-Key: pro fachlichem Vorgang ein deterministischer Schlüssel (z. B. `produkt-id + content-version`), der bei einem Retry identisch bleibt — nicht zufällig pro HTTP-Versuch.
2. Implementiere serverseitige Deduplizierung im eigenen BFF/Wrapper: bevor der Langdock-Call abgesetzt wird, prüfen, ob für diesen Key bereits ein Ergebnis gespeichert ist; falls ja, das gespeicherte Ergebnis zurückgeben statt erneut zu generieren.
3. Behandle den ambiguen Timeout-Fall: bei Verbindungsabbruch nach Versand ist unklar, ob Langdock den Request verarbeitet hat — der Idempotenz-Key sorgt dafür, dass ein blinder Retry nicht doppelt schreibt.
4. Lege die Aufbewahrungsdauer fest: Idempotenz-Records mindestens so lange halten wie das maximale Retry-Fenster (z. B. 24 Stunden), danach automatisch aufräumen.
Prompt:
> "Du bist ein Backend-Architekt. Nach einem Timeout hat unser PIM-Sync denselben Produkttext doppelt generiert. Erkläre, wie wir Idempotenz-Keys einsetzen: (1) deterministische Key-Generierung pro fachlichem Vorgang, (2) serverseitige Deduplizierung im BFF vor dem Langdock-Call, (3) Umgang mit dem ambiguen Timeout-Fall, (4) Aufbewahrungsdauer der Idempotenz-Records. Liefere ein Idempotenz-Konzept als strukturierten Text."
Artefakt: Ein Idempotenz-Konzept (Key-Generierung, Deduplizierung, Timeout-Handling, Aufbewahrung).
Fallstricke:
- Der Idempotenz-Key wird pro HTTP-Versuch neu zufällig erzeugt — dann erkennt das System den Retry nicht als Wiederholung und generiert doch doppelt.
- Die Deduplizierung wird nur clientseitig implementiert — fällt der Client zwischen zwei Versuchen aus, fehlt der Dedup-Zustand und die Doppelverarbeitung tritt trotzdem ein.
Anschluss: S-API-064

### S-API-064 Webhook-Signaturprüfung als verbindlicher Standard

Trigger: Das Marketing-Ops-Team empfängt Webhooks von einem Social-Listening-Tool, das Krisen-Alerts an einen eigenen Receiver schickt, der wiederum Langdock anstößt. Bisher akzeptiert der Receiver jeden eingehenden POST ungeprüft. Der CISO verlangt eine verbindliche Signaturprüfung. (Quelle: S-API-030, sources/10 S-049)
Ziel: Eine kryptografische Webhook-Signaturprüfung als Pflicht-Gate etablieren, sodass nur authentische Ereignisse des erwarteten Senders eine Langdock-Verarbeitung auslösen können.
Ergebnis: Ein Verifikations-Leitfaden für die IT mit HMAC-Prüfverfahren, Replay-Schutz und Secret-Handhabung.
Fähigkeit: Integrations API, API Security Advisory
Vorgehen:
1. Erkläre die HMAC-SHA256-Signaturprüfung: der Sender signiert den rohen Payload mit einem Shared Secret; der Receiver berechnet dieselbe Signatur und vergleicht sie zeitkonstant (constant-time compare gegen Timing-Angriffe).
2. Füge Replay-Schutz hinzu: ein Timestamp im signierten Payload, der nur ein kurzes Fenster (z. B. 5 Minuten) gültig ist, plus eine kurzlebige Speicherung verarbeiteter Event-IDs, damit ein abgefangener Webhook nicht erneut eingespielt werden kann.
3. Handhabe das Shared Secret korrekt: ausschließlich im Secrets-Manager, getrennt vom Code; bei Verdacht auf Leak gemeinsam mit dem Sender rotieren.
4. Definiere das Fehlerverhalten: ungültige Signatur → HTTP 401 ohne Langdock-Aufruf und mit Sicherheits-Log-Eintrag; auf keinen Fall bei Zweifel "durchwinken".
Prompt:
> "Du bist ein API-Security-Architekt. Unser Webhook-Receiver akzeptiert bisher jeden POST und stößt damit Langdock an. Erkläre eine verbindliche Signaturprüfung: (1) HMAC-SHA256-Verifikation mit constant-time compare, (2) Replay-Schutz über Timestamp und Event-ID-Speicher, (3) sichere Shared-Secret-Handhabung, (4) Fehlerverhalten bei ungültiger Signatur. Liefere einen Verifikations-Leitfaden für unsere IT."
Artefakt: Ein Verifikations-Leitfaden (HMAC-Prüfung, Replay-Schutz, Secret-Handhabung, Fehlerverhalten).
Fallstricke:
- Die Signatur wird mit einem normalen String-Vergleich statt zeitkonstant geprüft — das öffnet einen Timing-Seitenkanal, über den ein Angreifer die Signatur erraten kann.
- Es gibt keinen Replay-Schutz — ein einmal abgefangener gültiger Webhook kann beliebig oft erneut eingespielt werden und löst jedes Mal kostenpflichtige Langdock-Aufrufe aus.
Anschluss: S-API-065

### S-API-065 Einheitliche Fehler-Taxonomie für alle Integrationen

Trigger: Drei Marketing-Integrationen behandeln Langdock-Fehler je nach Entwickler unterschiedlich — mal wird ein 429 wie ein 500 behandelt, mal eine inhaltliche Ablehnung als technischer Fehler geloggt. Das Monitoring ist dadurch unbrauchbar. Die Direktorin will eine gemeinsame Fehler-Taxonomie. (Quelle: S-API-032, sources/12 Q46)
Ziel: Eine einheitliche, integrationsübergreifende Fehler-Taxonomie definieren, die jeden Langdock-Fehler eindeutig klassifiziert und damit konsistentes Retry-, Logging- und Alerting-Verhalten ermöglicht.
Ergebnis: Eine Fehler-Taxonomie-Tabelle für alle Teams mit Kategorien, Retry-Eignung und Standard-Reaktion.
Fähigkeit: Advisory, Completion API
Vorgehen:
1. Definiere die Hauptkategorien: (a) transient-retrybar (429, 500, 503, Timeout), (b) permanent-nicht-retrybar (400, 401, 403, 422), (c) fachlich-erwartbar (Modell-Ablehnung/Refusal, leerer Output), (d) infrastrukturell (DNS, TLS, Netzwerk).
2. Ordne jeder Kategorie ein Standardverhalten zu: transient → Backoff-Retry; permanent → kein Retry, sofort Fehler melden; fachlich → kein technischer Alarm, sondern Qualitäts-Logging; infrastrukturell → Circuit-Breaker (siehe S-API-032).
3. Standardisiere das Fehler-Schema: jedes Logevent trägt `category`, `http_status`, `retryable` (bool), `request_id` — damit alle Integrationen vergleichbar reporten.
4. Verankere die Taxonomie als geteilte Bibliothek: ein gemeinsames Error-Mapping-Modul, das alle drei Integrationen importieren, statt jeweils eigene Ad-hoc-Logik.
Prompt:
> "Du bist ein Platform-Engineering-Berater. Unsere drei Marketing-Integrationen behandeln Langdock-Fehler uneinheitlich, das Monitoring ist unbrauchbar. Definiere eine gemeinsame Fehler-Taxonomie: (1) Hauptkategorien (transient, permanent, fachlich, infrastrukturell), (2) Standardverhalten je Kategorie, (3) ein einheitliches Fehler-Log-Schema, (4) Verankerung als geteilte Bibliothek. Liefere eine Taxonomie-Tabelle."
Artefakt: Eine Fehler-Taxonomie-Tabelle (Kategorien, Retry-Eignung, Standard-Reaktion, Log-Schema).
Fallstricke:
- Eine inhaltliche Modell-Ablehnung (Refusal) wird als technischer 500-Fehler klassifiziert — das erzeugt falsche Infrastruktur-Alarme und verdeckt das eigentliche Qualitätsproblem.
- Die Taxonomie existiert nur als Dokument, nicht als geteilte Code-Bibliothek — jede Integration interpretiert sie leicht anders, und die Inkonsistenz kehrt zurück.
Anschluss: S-API-066

### S-API-066 Retry mit Circuit-Breaker für stabile Spitzenlast

Trigger: Bei einem Langdock-Teilausfall hat eine Marketing-Integration minutenlang stur weiter-retried und damit beim Wiederanlauf eine Anfrage-Flut erzeugt, die den eigenen BFF-Server überlastete. Die Direktorin will ein Resilience-Muster, das bei anhaltenden Fehlern automatisch entlastet. (Quelle: S-API-032, sources/12 Q46)
Ziel: Retry-Logik und Circuit-Breaker so kombinieren, dass transiente Fehler abgefangen, aber anhaltende Ausfälle nicht durch endloses Retrien verschlimmert werden — inklusive kontrolliertem Wiederanlauf.
Ergebnis: Ein Resilience-Pattern-Leitfaden mit Circuit-Breaker-Zuständen, Schwellenwerten und Half-Open-Probing.
Fähigkeit: Advisory, Completion API
Vorgehen:
1. Erkläre die drei Circuit-Breaker-Zustände: CLOSED (normaler Betrieb, Retries erlaubt), OPEN (nach Fehlerschwelle alle Requests sofort abgewiesen, keine Last auf Langdock), HALF-OPEN (nach Cooldown einzelne Test-Requests).
2. Definiere die Auslöse-Schwelle: z. B. 5 Fehler in 60 Sekunden öffnen den Breaker; Cooldown 60 Sekunden, bevor in HALF-OPEN ein einzelner Probe-Request gesendet wird.
3. Kombiniere mit begrenztem Retry: innerhalb von CLOSED maximal 3 Backoff-Retries pro Request; der Circuit-Breaker ist die übergeordnete Schutzschicht, die einsetzt, wenn Retries systematisch scheitern.
4. Plane den kontrollierten Wiederanlauf: bei Übergang HALF-OPEN → CLOSED die Last schrittweise hochfahren (Ramp-up), nicht sofort die volle Anfrage-Flut, um einen erneuten Zusammenbruch zu vermeiden.
Prompt:
> "Du bist ein Resilience-Engineer. Bei einem Langdock-Teilausfall hat unsere Integration stur weiter-retried und beim Wiederanlauf den eigenen Server überlastet. Erkläre das Zusammenspiel von Retry und Circuit-Breaker: (1) die drei Breaker-Zustände, (2) Auslöse-Schwellen und Cooldown, (3) Kombination mit begrenztem Backoff-Retry, (4) kontrollierter Ramp-up-Wiederanlauf. Liefere einen Resilience-Pattern-Leitfaden."
Artefakt: Ein Resilience-Pattern-Leitfaden (Breaker-Zustände, Schwellenwerte, Retry-Kombination, Ramp-up).
Fallstricke:
- Retry läuft ohne übergeordneten Circuit-Breaker — bei anhaltendem Ausfall hämmert das System unbegrenzt weiter und verzögert die Erholung des Dienstes.
- Beim Wiederanlauf wird sofort die volle Last gesendet statt schrittweise hochgefahren — der gerade erholte Dienst bricht durch den Anfrage-Schwall erneut zusammen.
Anschluss: S-API-067

### S-API-067 API-Versionierungs-Disziplin für eigene Integrationen

Trigger: Das Marketing-Ops-Team hat eine interne Integrationsschicht über Langdock gebaut, die mehrere Agenturen ansprechen. Eine kleine Änderung am Response-Format hat letzte Woche zwei Agentur-Integrationen gebrochen, weil es keine Versionierung gab. Die Direktorin verlangt eine saubere Versionsstrategie. (Quelle: S-API-028, S-API-047)
Ziel: Eine Versionierungsstrategie für die eigene, über Langdock gelegte Integrationsschicht etablieren, die Breaking Changes kontrolliert ausrollt und bestehende Consumer schützt.
Ergebnis: Ein Versionierungs-Leitfaden mit Schema-Versionsstrategie, Deprecation-Policy und Kommunikationsprozess.
Fähigkeit: Advisory, API Architecture Advisory
Vorgehen:
1. Wähle die Versionierungs-Methode: URL-Pfad-Versionierung (`/v1/`, `/v2/`) als einfachste und für Consumer transparenteste Variante; Header-basierte Versionierung nur, wenn das eigene Gateway sie sauber unterstützt.
2. Unterscheide Breaking von Non-Breaking Changes: ein neues optionales Feld ist non-breaking (gleiche Version); das Umbenennen oder Entfernen eines Feldes ist breaking und erfordert eine neue Major-Version.
3. Definiere eine Deprecation-Policy: alte Version mindestens eine definierte Frist (z. B. 90 Tage) parallel betreiben, mit `Deprecation`- und `Sunset`-Headern in den Responses, damit Consumer den Umstieg planen können.
4. Lege den Kommunikationsprozess fest: bei jeder neuen Major-Version proaktive Ankündigung an alle Consumer (siehe S-API-049) plus aktualisierte API-Dokumentation (S-API-048).
Prompt:
> "Du bist ein API-Architekt. Unsere interne Integrationsschicht über Langdock hat ohne Versionierung zwei Agentur-Integrationen gebrochen. Erkläre eine Versionierungsstrategie: (1) Methode (URL-Pfad vs. Header), (2) Abgrenzung Breaking vs. Non-Breaking, (3) Deprecation-Policy mit Sunset-Headern und Parallelbetrieb, (4) Kommunikationsprozess für Consumer. Liefere einen Versionierungs-Leitfaden."
Artefakt: Ein Versionierungs-Leitfaden (Methode, Change-Klassifikation, Deprecation-Policy, Kommunikation).
Fallstricke:
- Ein Feld wird in der bestehenden Version umbenannt statt eine neue Major-Version einzuführen — alle Consumer brechen über Nacht ohne Vorwarnung.
- Die alte Version wird sofort abgeschaltet, sobald die neue live ist — Consumer ohne abgeschlossene Migration verlieren abrupt den Zugang.
Anschluss: S-API-068

### S-API-068 Blue-Green-Deployment des BFF-Layers

Trigger: Updates am eigenen BFF-Proxy vor der Langdock-API verursachen jedes Mal eine kurze Downtime des Kampagnen-Chatbots, weil der laufende Prozess für das Deployment neu gestartet wird. Die Direktorin will ein Deployment-Verfahren ohne wahrnehmbaren Ausfall. (Quelle: S-API-052, sources/06 Deployment-Modelle)
Ziel: Ein Blue-Green-Deployment für den BFF-Layer einführen, das neue Versionen ohne Downtime ausrollt und einen sofortigen Rollback ermöglicht.
Ergebnis: Ein Deployment-Konzept mit Umgebungs-Switch, Health-Check-Gate und Rollback-Mechanismus.
Fähigkeit: API Deployment Advisory, Advisory
Vorgehen:
1. Erkläre das Blue-Green-Prinzip: zwei identische Umgebungen (Blue = aktuell live, Green = neue Version); der Load-Balancer schaltet erst auf Green um, wenn dieses vollständig bereit ist — Blue bleibt als Rückfallebene bestehen.
2. Definiere das Health-Check-Gate: Green wird erst freigegeben, wenn ein Smoke-Test (Test-Completion-Call gegen Langdock, Auth-Prüfung, Wissensordner-Zugriff) erfolgreich durchläuft.
3. Plane den Switch und das Connection-Draining: bestehende Verbindungen auf Blue sauber auslaufen lassen (Draining), neue Verbindungen auf Green leiten — kein hartes Kappen laufender Streams.
4. Lege den Rollback fest: tritt nach dem Switch ein Problem auf, sofort zurück auf das noch laufende Blue (reiner Load-Balancer-Toggle, kein Re-Deploy).
Prompt:
> "Du bist ein DevOps-Architekt. Updates an unserem BFF-Proxy vor der Langdock-API verursachen jedes Mal kurze Chatbot-Downtime. Erkläre Blue-Green-Deployment: (1) das Zwei-Umgebungs-Prinzip mit Load-Balancer-Switch, (2) ein Health-Check-Gate mit Langdock-Smoke-Test, (3) Connection-Draining beim Umschalten, (4) sofortiger Rollback auf Blue. Liefere ein Deployment-Konzept ohne Downtime."
Artefakt: Ein Blue-Green-Deployment-Konzept (Umgebungs-Switch, Health-Check-Gate, Draining, Rollback).
Fallstricke:
- Green wird ohne Health-Check-Gate live geschaltet — eine fehlerhafte neue Version geht direkt in Produktion und der vermeintliche Downtime-Vorteil verkehrt sich in einen Totalausfall.
- Beim Switch werden laufende Streams hart gekappt statt per Draining auslaufen gelassen — Nutzer mit aktiver Chatbot-Antwort sehen abgebrochene Texte.
Anschluss: S-API-069

### S-API-069 Strukturiertes Logging für Langdock-Integrationen

Trigger: Bei einem Vorfall im Kampagnen-Chatbot brauchte das Team vier Stunden, um die betroffenen Requests in unformatierten Textlogs zu finden. Die Direktorin verlangt strukturiertes Logging, das Vorfälle in Minuten statt Stunden nachvollziehbar macht — und dabei keine personenbezogenen Daten leakt. (Quelle: S-API-033, sources/12 Q135)
Ziel: Ein strukturiertes Logging-Schema für alle Langdock-Integrationen einführen, das schnelle Vorfall-Analyse ermöglicht, ohne sensible Inhalte oder PII zu protokollieren.
Ergebnis: Ein Logging-Standard mit JSON-Feldschema, Correlation-IDs und Datenschutz-Redaction-Regeln.
Fähigkeit: Advisory, Audit Logs API
Vorgehen:
1. Definiere das JSON-Log-Schema: jedes Event enthält `timestamp`, `request_id`, `correlation_id`, `endpoint`, `model`, `http_status`, `latency_ms`, `token_count` — durchsuchbar und aggregierbar im Log-System.
2. Führe Correlation-IDs ein: eine ID wird pro Nutzervorgang erzeugt und durch alle Schichten (Frontend → BFF → Langdock-Call) durchgereicht, sodass ein Vorfall über alle Komponenten hinweg rekonstruierbar ist.
3. Lege Redaction-Regeln fest: Prompt- und Antwort-Inhalte werden standardmäßig nicht im Klartext geloggt; PII (E-Mail, Namen, Kundennummern) wird vor dem Logging maskiert — nur Metadaten, keine Inhalte.
4. Definiere Log-Level und Aufbewahrung: ERROR/WARN dauerhaft, INFO kurzfristig; Aufbewahrungsfristen im Einklang mit der Datenschutzrichtlinie und dem in S-API-010 beschriebenen DSGVO-Rahmen.
Prompt:
> "Du bist ein Observability-Berater. Bei einem Chatbot-Vorfall brauchten wir vier Stunden, um betroffene Requests in Textlogs zu finden. Erkläre strukturiertes Logging: (1) ein JSON-Log-Feldschema, (2) Correlation-IDs über alle Schichten, (3) Redaction-Regeln gegen PII- und Inhalts-Leaks, (4) Log-Level und Aufbewahrungsfristen im Datenschutz-Rahmen. Liefere einen Logging-Standard."
Artefakt: Ein Logging-Standard (JSON-Schema, Correlation-IDs, Redaction-Regeln, Aufbewahrung).
Fallstricke:
- Vollständige Prompts und Antworten werden im Klartext geloggt — das speichert potenziell PII und Geschäftsgeheimnisse ungeschützt und verstößt gegen die Datenminimierung.
- Es fehlen Correlation-IDs — ein Vorfall lässt sich nicht über Frontend, BFF und Langdock-Call hinweg zusammenführen, und die Analyse bleibt mühsame Textsuche.
Anschluss: S-API-070

### S-API-070 Kosten-pro-Endpoint-Tracking für Refactor-Priorisierung

Trigger: Die monatlichen Langdock-Kosten steigen, aber die Direktorin sieht nur eine Gesamtsumme. Sie kann nicht erkennen, welcher API-Endpoint (Completion, Agent, Embedding, Search) der Haupt-Kostentreiber ist und wo sich ein Refactoring lohnt. (Quelle: S-API-053, research/50 A-21)
Ziel: Ein Kosten-pro-Endpoint-Tracking etablieren, das den Token-Verbrauch je API-Endpoint sichtbar macht und so eine datenbasierte Refactor-Priorisierung erlaubt.
Ergebnis: Ein Tracking-Konzept mit Endpoint-Attribution, Kosten-Aufschlüsselung und Priorisierungs-Logik.
Fähigkeit: Usage Export API, Advisory
Vorgehen:
1. Instrumentiere jeden Aufruf: der eigene Wrapper taggt jeden Request mit dem genutzten Endpoint-Typ (`completion`, `agent`, `embedding`, `search`) und schreibt diesen Tag mit der Token-Zahl in ein Data Warehouse.
2. Verknüpfe mit den Usage-Export-Daten: die Langdock Usage Export API liefert Token pro User/Modell; die eigene Endpoint-Attribution ergänzt die Endpoint-Dimension, die der reine Usage-Export nicht enthält.
3. Berechne Kosten pro Endpoint: Token × aktueller Modell-Preis, gruppiert nach Endpoint-Typ; identifiziere die teuersten 5 % der Aufrufe (Heavy-Hitter) als Refactor-Kandidaten.
4. Leite Maßnahmen ab: teure Completion-Heavy-Hitter prüfen auf Prompt-Caching (S-API-012) oder kleineres Modell (Flash); teure Embedding-Läufe auf Batch-Konsolidierung; pro Quartal neu bewerten.
Prompt:
> "Du bist ein FinOps-Berater. Unsere Langdock-Kosten steigen, aber wir sehen nur eine Gesamtsumme und nicht, welcher Endpoint der Treiber ist. Erkläre Kosten-pro-Endpoint-Tracking: (1) Endpoint-Tagging im eigenen Wrapper, (2) Verknüpfung mit den Usage-Export-Daten, (3) Kosten-Aufschlüsselung und Heavy-Hitter-Identifikation, (4) abgeleitete Refactor-Maßnahmen je Endpoint. Liefere ein Tracking-Konzept."
Artefakt: Ein Tracking-Konzept (Endpoint-Attribution, Kosten-Aufschlüsselung, Heavy-Hitter-Analyse, Maßnahmen).
Fallstricke:
- Der Usage-Export wird allein genutzt, ohne eigene Endpoint-Tags — er kennt die Endpoint-Dimension nicht, sodass die Frage "welcher Endpoint kostet am meisten" unbeantwortbar bleibt.
- Das Tracking listet nur Kosten auf, ohne die teuersten Aufrufe in konkrete Refactor-Maßnahmen zu übersetzen — die Transparenz bleibt folgenlos.
Anschluss: S-API-071

### S-API-071 SDK-Auswahl für die Marketing-Integrationsschicht

Trigger: Das Entwicklungsteam soll eine neue Integration gegen die OpenAI-kompatible Langdock-API bauen und diskutiert, ob es das offizielle OpenAI-SDK, das Vercel AI SDK oder einen rohen HTTP-Client nutzen soll. Die Direktorin wird in die Architekturentscheidung einbezogen. (Quelle: sources/06 OpenAI-Kompatibilität, S-API-009)
Ziel: Eine begründete SDK-Auswahl für die Langdock-Integration treffen, die zum Tech-Stack, zu den Streaming-Anforderungen und zur langfristigen Wartbarkeit passt.
Ergebnis: Eine Entscheidungsmatrix (SDK-Optionen) mit Empfehlung für typische Marketing-Use-Cases.
Fähigkeit: OpenAI-kompatibler Completion-Endpoint, Advisory
Vorgehen:
1. Liste die Optionen mit Stärken: offizielles OpenAI-SDK (nahtlos durch OpenAI-Kompatibilität, breite Sprachunterstützung), Vercel AI SDK (exzellentes Streaming für moderne Web-UIs), roher HTTP-Client (maximale Kontrolle, minimale Abhängigkeiten).
2. Definiere die Auswahlkriterien: Streaming-Bedarf, Sprache des Stacks (Python vs. TypeScript), Team-Erfahrung, Update-/Wartungsaufwand der Abhängigkeit.
3. Mappe Use-Cases auf SDKs: Batch-Backend in Python → OpenAI Python SDK; streamende Chat-UI im Web → Vercel AI SDK; schlanker Webhook-Receiver → roher HTTP-Client.
4. Berücksichtige Langdock-Spezifika: Base-URL- und Modell-Namen-Mapping müssen unabhängig vom SDK gesetzt werden; Langdock-eigene Agenten-Features liegen außerhalb des OpenAI-SDK-Scopes.
Prompt:
> "Du bist ein API-Architekt. Wir bauen eine neue Integration gegen die OpenAI-kompatible Langdock-API und diskutieren OpenAI-SDK vs. Vercel AI SDK vs. rohen HTTP-Client. Erkläre: (1) Stärken jeder Option, (2) Auswahlkriterien (Streaming, Sprache, Wartung), (3) Use-Case-zu-SDK-Mapping für Marketing-Szenarien, (4) Langdock-Spezifika (Base-URL, Modell-Mapping, Agenten-Features). Liefere eine Entscheidungsmatrix mit Empfehlung."
Artefakt: Eine SDK-Entscheidungsmatrix (Optionen, Kriterien, Use-Case-Mapping, Empfehlung).
Fallstricke:
- Das Vercel AI SDK wird pauschal als "moderner" für ein reines Python-Batch-Backend gewählt — für nicht-streamende Server-Jobs bringt es keinen Vorteil und fügt eine unnötige TypeScript-Abhängigkeit hinzu.
- Es wird angenommen, ein SDK kapsele auch die Langdock-Agenten-Features — der OpenAI-kompatible Endpoint deckt diese nicht ab; sie erfordern separate Langdock-Aufrufe.
Anschluss: S-API-072

### S-API-072 Batch- vs. Streaming-Entscheidung pro Use-Case

Trigger: Das Team setzt aus Gewohnheit für jeden Use-Case Streaming ein — auch für einen nächtlichen Massen-Job, bei dem niemand zuschaut. Gleichzeitig wartet die Chatbot-UI ohne Streaming sekundenlang auf die volle Antwort. Die Direktorin will eine klare Entscheidungsregel. (Quelle: S-API-026, S-API-031)
Ziel: Eine klare Entscheidungsregel etablieren, wann Batch-/Non-Streaming-Verarbeitung und wann Streaming einzusetzen ist — abgestimmt auf Nutzererlebnis, Timeout-Risiko und Verarbeitungseffizienz.
Ergebnis: Ein Entscheidungsleitfaden mit Kriterien und Use-Case-Zuordnung.
Fähigkeit: Completion API (Streaming und Non-Streaming), Advisory
Vorgehen:
1. Definiere das Streaming-Kriterium: Streaming nur dort, wo ein Mensch in Echtzeit auf den Text wartet (Chatbot, interaktives Dashboard) — Time-to-First-Token unter 1 Sekunde verbessert die wahrgenommene Geschwindigkeit (siehe S-API-026).
2. Definiere das Batch-Kriterium: für nicht-interaktive Massenverarbeitung (nächtliche Jobs, PIM-Sync) ist Non-Streaming/Batch effizienter und einfacher zu orchestrieren — niemand wartet auf einzelne Tokens.
3. Beachte das Timeout-Risiko: lange Non-Streaming-Antworten riskieren das ~100-Sekunden-Timeout (aktuellen Wert verifizieren); bei langen Outputs entweder Streaming nutzen oder den Output in kleinere Teil-Requests zerlegen.
4. Mappe die konkreten Use-Cases: Kampagnen-Chatbot → Streaming; nächtlicher 500-Artikel-Job → Batch; Echtzeit-KPI-Kommentar im Dashboard → Streaming; Embedding-Massenlauf → Batch.
Prompt:
> "Du bist ein API-Architekt. Wir nutzen aus Gewohnheit überall Streaming, auch für nächtliche Massen-Jobs, während die Chatbot-UI ohne Streaming zu lange wartet. Erkläre eine Entscheidungsregel: (1) wann Streaming sinnvoll ist, (2) wann Batch/Non-Streaming besser passt, (3) Timeout-Risiko bei langen Non-Streaming-Antworten, (4) konkrete Use-Case-Zuordnung. Liefere einen Entscheidungsleitfaden."
Artefakt: Ein Entscheidungsleitfaden (Streaming- vs. Batch-Kriterien, Timeout-Hinweis, Use-Case-Mapping).
Fallstricke:
- Streaming wird für nächtliche Massen-Jobs verwendet, obwohl niemand zuschaut — das verkompliziert die Orchestrierung ohne jeden Nutzen.
- Ein langer Non-Streaming-Output läuft ins Timeout, weil weder Streaming gewählt noch der Output in Teil-Requests zerlegt wurde.
Anschluss: S-API-073

### S-API-073 Async-Job-Polling robust gestalten

Trigger: Ein neuer Deep-Research-getriebener Wettbewerbsreport läuft als asynchroner Job und dauert je nach Umfang 5 bis 20 Minuten. Das erste Polling-Skript fragte stur jede Sekunde nach dem Status und verlor bei einem kurzen Netzwerkabbruch den Job komplett. Die Direktorin will ein robustes Polling-Muster. (Quelle: S-API-057, sources/12 Q93)
Ziel: Ein robustes Async-Job-Polling für lange Langdock-Jobs definieren, das Status zuverlässig verfolgt, Netzwerkfehler übersteht und das Rate Limit nicht unnötig belastet.
Ergebnis: Ein Polling-Leitfaden mit Job-ID-Persistenz, adaptivem Polling-Intervall und Wiederaufnahme nach Unterbrechung.
Fähigkeit: Workflows API, Advisory
Vorgehen:
1. Persistiere die Job-ID sofort: die bei Job-Start zurückgegebene `job_id` wird vor dem ersten Poll dauerhaft gespeichert — geht die Verbindung verloren, kann der Status später anhand der ID wieder abgefragt werden, statt den Job zu verlieren.
2. Nutze adaptives Polling: erst nach 2 Sekunden, dann mit wachsendem Intervall (4, 8, max. 30 Sekunden), an die typische Laufzeit von 5–30 Minuten angepasst — kein Sekundentakt, der das Rate Limit belastet.
3. Behandle Netzwerkfehler beim Polling separat: ein fehlgeschlagener Status-Poll bedeutet nicht, dass der Job fehlgeschlagen ist — Poll mit Backoff wiederholen, Job-Zustand bleibt serverseitig erhalten.
4. Definiere Terminierung und UX: bei `COMPLETED`/`FAILED` stoppen; bei Überschreiten der Maximaldauer Timeout an den Nutzer melden; für Jobs über 5 Minuten Push-/E-Mail-Benachrichtigung statt offen gehaltenem Browser-Tab.
Prompt:
> "Du bist ein Frontend-Architekt. Unser asynchroner Wettbewerbsreport läuft 5–30 Minuten; unser Polling-Skript fragt im Sekundentakt und verliert bei Netzwerkabbruch den Job. Erkläre robustes Async-Polling: (1) sofortige Job-ID-Persistenz, (2) adaptives Polling-Intervall, (3) Umgang mit Netzwerkfehlern ohne den Job zu verlieren, (4) Terminierung und Benachrichtigungs-UX. Liefere einen Polling-Leitfaden."
Artefakt: Ein Polling-Leitfaden (Job-ID-Persistenz, adaptives Intervall, Netzwerk-Fehlerbehandlung, Terminierung).
Fallstricke:
- Die Job-ID wird nur im Browser-Speicher gehalten — bei Tab-Schließung oder Netzwerkabbruch ist der laufende Job nicht mehr abfragbar und gilt fälschlich als verloren.
- Ein fehlgeschlagener Status-Poll wird als Job-Fehlschlag interpretiert — der Nutzer erhält eine Fehlermeldung, obwohl der Job serverseitig erfolgreich weiterläuft.
Anschluss: S-API-074

### S-API-074 Contract-Testing zwischen BFF und Langdock-API

Trigger: Eine stille Schema-Änderung an einer Langdock-Antwort hat eine Marketing-Integration gebrochen, ohne dass ein Test anschlug — die Unit-Tests liefen gegen einen veralteten Mock, der nicht mehr der echten API entsprach. Die Direktorin will ein Verfahren, das solche Abweichungen früh erkennt. (Quelle: S-API-051, S-API-058)
Ziel: Contract-Testing einführen, das sicherstellt, dass die Annahmen der eigenen Integration über das Langdock-Response-Schema kontinuierlich gegen die reale API verifiziert werden.
Ergebnis: Ein Contract-Testing-Konzept mit Schema-Definition, Verifikationslauf gegen die echte API und CI-Integration.
Fähigkeit: Completion API, Advisory
Vorgehen:
1. Definiere den Contract: ein versioniertes Schema (z. B. JSON-Schema), das die von der Integration erwarteten Felder und Typen der Langdock-Response festhält — als verbindlicher Vertrag zwischen Consumer und API.
2. Verifiziere gegen die reale API: ein periodischer Smoke-Test sendet einen minimalen echten Request an Langdock und validiert die Antwort gegen das Contract-Schema — so wird eine Drift zwischen Mock und Realität entdeckt.
3. Halte Mock und Contract synchron: der in S-API-051 genutzte Mock wird aus demselben Contract-Schema generiert, sodass Unit-Tests und Realität nicht auseinanderlaufen.
4. Integriere in CI: der Contract-Test läuft täglich und vor jedem Deployment; ein Schema-Mismatch blockiert das Deployment und löst eine Benachrichtigung aus (Verknüpfung mit S-API-058).
Prompt:
> "Du bist ein QA-Architekt. Eine stille Langdock-Schema-Änderung hat unsere Integration gebrochen, ohne dass ein Test anschlug — unsere Unit-Tests liefen gegen einen veralteten Mock. Erkläre Contract-Testing: (1) ein versioniertes Response-Contract-Schema, (2) periodische Verifikation gegen die echte API, (3) Mock-und-Contract-Synchronisation, (4) CI-Integration mit Deployment-Gate. Liefere ein Contract-Testing-Konzept."
Artefakt: Ein Contract-Testing-Konzept (Schema-Definition, Realverifikation, Mock-Sync, CI-Gate).
Fallstricke:
- Es wird ausschließlich gegen den Mock getestet, nie gegen die echte API — eine reale Schema-Drift bleibt bis zum Produktionsfehler unentdeckt.
- Mock und Contract werden getrennt gepflegt und laufen auseinander — der Contract-Test wird grün, während der Mock veraltet ist und die Integration trotzdem bricht.
Anschluss: S-API-075

### S-API-075 Staging-vs-Prod-Konfiguration sauber trennen

Trigger: Ein Entwickler hat aus Versehen den Produktions-API-Key und den Produktions-Wissensordner in einem Test-Lauf verwendet, weil Staging und Produktion dieselbe Konfigurationsdatei teilten. Es entstanden ungewollte Kosten und ein Eintrag in echten Audit-Logs. Die Direktorin verlangt eine saubere Umgebungstrennung. (Quelle: S-API-059, sources/12 Q47)
Ziel: Eine klare Trennung von Staging- und Produktions-Konfiguration etablieren, sodass Tests niemals versehentlich Produktions-Keys, -Budgets oder -Daten berühren.
Ergebnis: Ein Konfigurations-Trennungs-Leitfaden mit Umgebungsvariablen-Schema, Secrets-Trennung und Schutzmechanismen gegen Verwechslung.
Fähigkeit: API Deployment Advisory, Advisory
Vorgehen:
1. Trenne die Konfiguration physisch: separate `.env.staging` und `.env.production` mit unterschiedlichen `BASE_URL`, API-Keys und Workspace-IDs; niemals eine geteilte Datei mit umgeschalteten Werten.
2. Trenne die Secrets: Staging- und Produktions-Keys liegen in getrennten Secrets-Manager-Pfaden mit getrennten Zugriffsrechten — ein Entwickler braucht für Tests keinen Zugriff auf Produktions-Keys.
3. Baue einen Verwechslungsschutz: ein expliziter `ENVIRONMENT`-Marker, der bei jedem Start geloggt wird; produktive Aktionen erfordern eine zusätzliche Bestätigung; Staging nutzt sichtbar gekennzeichnete Test-Workspaces.
4. Verankere das Prinzip in CI/CD: die Pipeline injiziert die korrekte Umgebungskonfiguration je Stage automatisch; ein Produktions-Deployment kann nicht mit Staging-Werten und umgekehrt erfolgen.
Prompt:
> "Du bist ein DevOps-Berater. Ein Entwickler hat versehentlich Produktions-Key und -Wissensordner in einem Test verwendet, weil Staging und Produktion dieselbe Config-Datei teilten. Erkläre saubere Umgebungstrennung: (1) physisch getrennte Konfigurationsdateien, (2) getrennte Secrets mit getrennten Rechten, (3) Verwechslungsschutz mit Environment-Marker, (4) Verankerung in CI/CD. Liefere einen Trennungs-Leitfaden."
Artefakt: Ein Konfigurations-Trennungs-Leitfaden (Env-Schema, Secrets-Trennung, Verwechslungsschutz, CI/CD-Verankerung).
Fallstricke:
- Staging und Produktion teilen eine Konfigurationsdatei mit umschaltbarem Flag — ein falsch gesetztes Flag richtet sofort echten Schaden in der Produktion an.
- Entwickler haben aus Bequemlichkeit Zugriff auf Produktions-Secrets — das einzige Sicherheitsnetz ist Disziplin, und genau diese versagt unter Zeitdruck.
Anschluss: S-API-076

### S-API-076 Secrets-Vault statt verstreuter API-Keys

Trigger: Eine Inventur ergibt, dass Langdock-API-Keys an fünf Stellen liegen: in einer `.env`-Datei im Repo, in einer Slack-Nachricht, in einer Build-Pipeline-Variable, in einem Wiki-Artikel und auf einem Entwickler-Laptop. Die Direktorin beauftragt die Konsolidierung in einen zentralen Secrets-Vault. (Quelle: S-API-014, S-API-061)
Ziel: Alle Langdock-Secrets in einem zentralen Secrets-Vault konsolidieren, mit kontrolliertem Zugriff, Auditierbarkeit und sauberer Bereitstellung an die Anwendungen.
Ergebnis: Ein Secrets-Management-Konzept mit Vault-Auswahl, Zugriffskontrolle, Bereitstellungsmechanismus und Migrations-Plan.
Fähigkeit: API Security Advisory, Advisory
Vorgehen:
1. Wähle den Vault: ein etablierter Secrets-Manager (z. B. HashiCorp Vault, AWS Secrets Manager, Azure Key Vault) als alleinige Quelle der Wahrheit für alle Langdock-Keys.
2. Definiere die Zugriffskontrolle: rollenbasierter Zugriff (nur die jeweilige Anwendung/der jeweilige Service liest ihren Key), vollständige Audit-Spur, wer wann welchen Key abgerufen hat.
3. Lege den Bereitstellungsmechanismus fest: Anwendungen lesen Keys zur Laufzeit aus dem Vault (oder via injizierte Umgebungsvariable aus dem Vault), niemals aus Dateien im Repository oder fest im Code.
4. Plane die Migration und Bereinigung: alle fünf verstreuten Kopien identifizieren, in den Vault überführen, dann die Altkopien löschen UND die betroffenen Keys rotieren (S-API-061), da sie als kompromittiert gelten müssen.
Prompt:
> "Du bist ein IT-Security-Berater. Eine Inventur zeigt unsere Langdock-Keys an fünf Stellen: Repo-.env, Slack, Pipeline-Variable, Wiki, Laptop. Erkläre die Konsolidierung in einen Secrets-Vault: (1) Vault-Auswahl, (2) rollenbasierte Zugriffskontrolle mit Audit-Spur, (3) Laufzeit-Bereitstellung statt Dateien im Repo, (4) Migrations- und Bereinigungsplan inklusive Rotation. Liefere ein Secrets-Management-Konzept."
Artefakt: Ein Secrets-Management-Konzept (Vault-Auswahl, Zugriffskontrolle, Bereitstellung, Migrations-/Bereinigungsplan).
Fallstricke:
- Die Keys werden in den Vault überführt, aber die verstreuten Altkopien bleiben bestehen und werden nicht rotiert — die exponierten Keys sind weiterhin gültig und nutzbar.
- Anwendungen lesen den Key beim Build in eine Datei und legen ihn dort ab — der Vault wird umgangen, und der Key liegt wieder ungeschützt auf dem System.
Anschluss: S-API-077

### S-API-077 API-SLO-Definition und Alerting-Schwellen

Trigger: Das Marketing-Ops-Team betreibt mehrere produktive Langdock-Integrationen, hat aber keine objektive Definition, was "gesund" bedeutet. Alarme feuern willkürlich oder gar nicht. Die Direktorin will klare Service Level Objectives mit sinnvollen Alerting-Schwellen. (Quelle: S-API-033, research/50 A-36)
Ziel: Aussagekräftige API-SLOs (Service Level Objectives) für die Langdock-Integrationen definieren und daraus Alerting-Schwellen ableiten, die echte Probleme melden und Fehlalarme minimieren.
Ergebnis: Ein SLO- und Alerting-Konzept mit Kennzahlen, Zielwerten, Error-Budget und Schwellenwert-Logik.
Fähigkeit: Audit Logs API, Usage Export API, Advisory
Vorgehen:
1. Definiere die SLO-Kennzahlen: Verfügbarkeit (z. B. 99,5 % erfolgreiche Requests), Latenz (P95 unter einem Zielwert), Fehlerrate (unter 1 %) — pro Integration differenziert, da ein FAQ-Bot und ein Recherche-Agent unterschiedliche Profile haben.
2. Führe ein Error-Budget ein: das SLO erlaubt eine definierte Menge an Fehlern; solange das Budget nicht aufgebraucht ist, kein Alarm — das verhindert Alarme bei einzelnen, unkritischen Ausreißern.
3. Definiere Multi-Window-Alerting: ein Alarm feuert nur, wenn die SLO-Verletzung über ein kurzes UND ein längeres Zeitfenster anhält (z. B. 5 Minuten und 1 Stunde) — das filtert kurzlebige Spitzen heraus.
4. Verknüpfe Datenquellen und Eskalation: Latenz/Fehler aus dem Infrastruktur-Monitoring, Kosten aus der Usage Export API, sicherheitsrelevante Ereignisse aus den Audit Logs; klare Eskalationsstufen (Slack → On-Call) je Schweregrad.
Prompt:
> "Du bist ein SRE-Berater. Unsere Langdock-Integrationen haben keine objektive Gesundheitsdefinition; Alarme feuern willkürlich. Erkläre: (1) sinnvolle SLO-Kennzahlen (Verfügbarkeit, Latenz, Fehlerrate) pro Integration, (2) das Error-Budget-Konzept, (3) Multi-Window-Alerting gegen Fehlalarme, (4) Datenquellen und Eskalationsstufen. Liefere ein SLO- und Alerting-Konzept."
Artefakt: Ein SLO- und Alerting-Konzept (Kennzahlen, Zielwerte, Error-Budget, Multi-Window-Schwellen, Eskalation).
Fallstricke:
- Für alle Integrationen gelten identische SLO-Werte — ein langsamer Recherche-Agent verletzt ständig das auf einen FAQ-Bot zugeschnittene Latenz-SLO und erzeugt Dauer-Fehlalarme.
- Alarme feuern bei jedem einzelnen Schwellenwert-Ausreißer ohne Error-Budget oder Multi-Window-Logik — das Team gewöhnt sich an Alarmrauschen und übersieht den echten Vorfall.
Anschluss: S-API-078

### S-API-078 Prompt-Injection-Abwehr auf API-Ebene härten

Trigger: Der öffentliche Produktberatungs-Chatbot wurde erneut Ziel von Injection-Versuchen, bei denen Nutzer den Bot zur Preisgabe interner Anweisungen verleiten wollten. Eine Moderationsebene besteht bereits (S-API-035); die Direktorin will nun die API-Schicht selbst härten. (Quelle: S-API-035, S-API-054, sources/12 Q115)
Ziel: Die Prompt-Injection-Abwehr direkt an der API-Schicht verstärken, sodass selbst bei umgangener Moderation der System-Prompt und interne Daten geschützt bleiben.
Ergebnis: Ein Härtungs-Konzept mit Trennung von System- und User-Kontext, Output-Constraints und Defense-in-Depth-Empfehlung.
Fähigkeit: Completion API, API Security Advisory
Vorgehen:
1. Trenne System- und User-Kontext strikt: Nutzer-Input fließt ausschließlich in den User-Turn, niemals in den System-Prompt; serverseitig injizierte Variablen werden escapet (Verknüpfung mit S-API-054).
2. Setze Boundary- und Scope-Anweisungen: der System-Prompt definiert explizit, dass Anweisungen aus dem User-Turn, die seinen Kern-Scope verlassen oder System-Inhalte erfragen, zu ignorieren sind; eine Themen-Whitelist begrenzt die Domäne.
3. Constraine den Output: Maximal-Länge, kein Echo des System-Prompts, keine Ausgabe interner Bezeichner; eine nachgelagerte Output-Prüfung blockiert Antworten, die System-Prompt-Fragmente enthalten.
4. Setze auf Defense-in-Depth: die API-Härtung ergänzt die Moderationsebene (S-API-035), ersetzt sie nicht; betone gegenüber dem CISO, dass kein Einzelmechanismus 100 % Schutz bietet (Residualrisiko, siehe S-API-042).
Prompt:
> "Du bist ein KI-Security-Architekt. Unser öffentlicher Chatbot wird erneut mit Prompt-Injection angegriffen; eine Moderationsebene besteht bereits. Erkläre, wie wir die API-Schicht selbst härten: (1) strikte Trennung von System- und User-Kontext mit Escaping, (2) Boundary- und Scope-Anweisungen plus Themen-Whitelist, (3) Output-Constraints gegen System-Prompt-Leaks, (4) Defense-in-Depth mit ehrlichem Residualrisiko-Hinweis. Liefere ein Härtungs-Konzept."
Artefakt: Ein Härtungs-Konzept (Kontext-Trennung, Boundary-Anweisungen, Output-Constraints, Defense-in-Depth).
Fallstricke:
- Die API-Härtung wird als alleiniger Schutz verstanden und die Moderationsebene abgeschaltet — fällt die eine Schicht, ist das System ungeschützt; Defense-in-Depth bedeutet mehrere unabhängige Schichten.
- Es wird ein 100-prozentiger Schutz versprochen — kein LLM-System ist gegen Prompt-Injection immun; das verschwiegene Residualrisiko führt zu falscher Sicherheit beim CISO.
Anschluss: S-API-079

### S-API-079 Multi-Region-Failover für hochverfügbare Chatbots

Trigger: Der öffentliche Kampagnen-Chatbot ist geschäftskritisch geworden; ein regionaler Ausfall des eigenen BFF-Hostings würde während einer laufenden Kampagne direkten Umsatzverlust bedeuten. Die Direktorin will ein Multi-Region-Failover, das den Betrieb auch bei Ausfall einer Region aufrechterhält. (Quelle: S-API-040, S-API-068)
Ziel: Ein Multi-Region-Failover für die BFF-/Integrationsschicht vor der Langdock-API konzeptionieren, das bei Ausfall einer Region automatisch auf eine zweite umschaltet — unter Wahrung der EU-Datenresidenz.
Ergebnis: Ein Failover-Konzept mit Regionen-Topologie, Health-Routing, Datenresidenz-Beachtung und Failback-Plan.
Fähigkeit: Deployment Advisory, API Deployment Advisory
Vorgehen:
1. Definiere die Topologie: zwei BFF-Deployments in zwei EU-Regionen (Datenresidenz wahren — beide Regionen innerhalb der EU, damit das EU-Hosting-Versprechen nicht gebrochen wird); ein globaler Load-Balancer mit Health-basiertem Routing davor.
2. Beschreibe das Health-Routing: der Load-Balancer prüft kontinuierlich die Gesundheit beider Regionen und leitet Traffic automatisch auf die gesunde Region, sobald eine ausfällt.
3. Berücksichtige die Langdock-Abhängigkeit: ist nicht die eigene Region, sondern Langdock selbst betroffen, hilft kein BFF-Failover — dann greift das Fallback-Playbook (S-API-021); die zwei Mechanismen adressieren unterschiedliche Ausfallursachen.
4. Plane den Zustands-Aspekt: der BFF sollte zustandslos (stateless) sein, damit ein Failover keinen Sitzungsverlust erzeugt; gemeinsame Zustände (z. B. Idempotenz-Records) in einem regionsübergreifenden Speicher halten.
5. Definiere den Failback: nach Erholung der primären Region kontrolliert zurückschalten (nicht automatisch sofort), um ein Flapping zwischen beiden Regionen zu vermeiden.
Prompt:
> "Du bist ein Cloud-Resilience-Architekt. Unser öffentlicher Kampagnen-Chatbot ist geschäftskritisch; ein regionaler Ausfall unseres BFF-Hostings würde Umsatz kosten. Erkläre ein Multi-Region-Failover: (1) Zwei-Regionen-Topologie unter Wahrung der EU-Datenresidenz, (2) Health-basiertes Load-Balancer-Routing, (3) Abgrenzung zum Langdock-Ausfall-Fall, (4) Stateless-BFF und geteilter Zustand, (5) kontrollierter Failback gegen Flapping. Liefere ein Failover-Konzept."
Artefakt: Ein Multi-Region-Failover-Konzept (Topologie, Health-Routing, Datenresidenz, Stateless-Design, Failback).
Fallstricke:
- Die zweite Region liegt außerhalb der EU — das Failover bricht im Ernstfall das EU-Datenresidenz-Versprechen und erzeugt einen Compliance-Vorfall.
- Multi-Region-Failover wird als Schutz gegen einen Langdock-Ausfall verkauft — fällt Langdock selbst aus, hilft die regionale Redundanz des eigenen BFF nicht; dafür ist das Fallback-Playbook zuständig.
Anschluss: S-API-080

### S-API-080 Partner-Onboarding-Dokumentation für API-Consumer

Trigger: Die Marketing-Direktorin öffnet die interne Langdock-Integrationsschicht für drei externe Vertriebspartner, die KI-gestützte Produktbeschreibungen für ihre eigenen Shops abrufen sollen. Jeder Partner stellt dieselben Fragen zu Zugang, Limits und Support — es fehlt eine partnerfähige Onboarding-Dokumentation. (Quelle: S-API-049, research/50 A-37, sources/12 Q148)
Ziel: Eine vollständige Partner-Onboarding-Dokumentation erstellen, die externe API-Consumer eigenständig produktionsfähig macht und zugleich Zugang, Limits, Haftung und Support klar regelt.
Ergebnis: Ein Partner-Onboarding-Paket mit Zugangsprozess, technischer Schnellstart-Anleitung, Nutzungsbedingungen und Support-/Eskalationsweg.
Fähigkeit: Chat, Wissensordner
Vorgehen:
1. Definiere den Zugangsprozess: wie ein Partner einen eigenen, isolierten API-Key erhält (pro Partner separat — niemals geteilt, siehe S-API-061), inklusive Identitäts- und Vertragsprüfung vor der Freigabe.
2. Erstelle die technische Schnellstart-Anleitung: Authentifizierung, erster Test-Call, Beispiel-Requests und ein Fehler-Debugging-Entscheidungsbaum (aufbauend auf S-API-049) — Ziel: erster erfolgreicher Call in unter 30 Minuten.
3. Dokumentiere Limits und faire Nutzung: partnerspezifische Rate Limits und Token-Budgets (durchgesetzt im eigenen Gateway, siehe S-API-046), damit ein Partner die Ressourcen anderer nicht beeinträchtigt.
4. Regle Nutzungsbedingungen und Datenschutz: erlaubte Use-Cases, Verbot der Weitergabe des Keys, Datenschutzpflichten (kein Einspeisen unzulässiger personenbezogener Daten), Haftungsabgrenzung.
5. Definiere Support und Eskalation: Kontaktkanal, Reaktionszeiten, Changelog-Benachrichtigung bei Breaking Changes (S-API-058) und ein Verfahren für Key-Kompromittierung beim Partner.
Prompt:
> "Du bist ein Technical-Partnerships-Manager. Wir öffnen unsere Langdock-Integrationsschicht für drei externe Vertriebspartner. Erstelle ein Partner-Onboarding-Paket: (1) Zugangsprozess mit isoliertem Key pro Partner, (2) technische Schnellstart-Anleitung (erster Call in unter 30 Minuten), (3) partnerspezifische Limits und faire Nutzung, (4) Nutzungsbedingungen und Datenschutzpflichten, (5) Support- und Eskalationsweg. Liefere ein vollständiges Onboarding-Dokument."
Artefakt: Ein Partner-Onboarding-Paket (Zugangsprozess, Schnellstart, Limits, Nutzungsbedingungen, Support-/Eskalationsweg).
Fallstricke:
- Alle Partner teilen sich einen gemeinsamen API-Key — bei Kompromittierung bei einem Partner müssen alle anderen mitrotiert werden, und eine partnergenaue Kostenzuordnung ist unmöglich.
- Die Dokumentation regelt nur den technischen Zugang, aber weder faire Nutzungslimits noch Datenschutzpflichten — ein einzelner Partner kann das gemeinsame Budget aufbrauchen oder unzulässige Daten einspeisen.
Anschluss: S-API-001
