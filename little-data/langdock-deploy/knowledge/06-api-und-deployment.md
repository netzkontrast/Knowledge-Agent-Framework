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
**Wann nutzen (Trigger):** Julia Lenz (Marketing-Direktorin) kommt aus dem Q3-Review. Das Content-Team hat manuell 300 Produktbeschreibungen im UI generiert, aber für Q4 müssen 15.000 Artikel im PIM (Product Information Management) aktualisiert werden. Die IT warnt vor API-Kosten und Rate Limits.
**Strategisches Ziel:** Das manuelle Copy-Paste-Bottleneck auflösen und eine automatisierte Architektur skizzieren, die weder die 500 RPM (Requests Per Minute) Langdock-Grenze sprengt, noch das Budget explodieren lässt.
**Hands-on Ergebnis:** Ein technisches Architektur-Briefing (Backend-for-Frontend Konzept) für den Lead Developer.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory, Usage Export API
**Vorgehen (3-5 Schritte):**
1. Übergebe die exakten Parameter der Q4-Kampagne (15.000 Artikel, bestehendes PIM-System) an 'Little Data'.
2. Beauftrage den Agenten, eine Batch-Processing Architektur zu entwerfen, die zwingend einen Exponential-Backoff für HTTP 429 Fehler integriert.
3. Lass eine Kostenschätzung auf Basis der aktuellen Workspace-Budgets erstellen.
4. Formuliere ein Briefing, das der IT glasklar die Advisory-Grenze aufzeigt (Marketing liefert Konzept, IT schreibt Python-Code).
**Beispiel-Prompt (DE, PTCF):**
> "Little Data, wir haben ein massives Skalierungsproblem. Für den Q4-Launch müssen wir 15.000 Produkttexte via API aus Langdock generieren und ins PIM pushen. Die IT hat Angst vor Rate Limits und CORS-Problemen, wenn wir das direkt aus dem CMS triggern. Schreibe mir ein Architektur-Briefing für unseren Lead Developer. Erkläre das Backend-for-Frontend Pattern, wie wir die 500 RPM Grenze durch Batching umgehen und füge eine Warnung zum 100-Sekunden Timeout bei langen Prompts hinzu."
**Erwartetes Artefakt:** Technisches Briefing-Dokument (Markdown).
**Fallstricke (≥2 spezifisch):**
- Die Kostenschätzung verwechselt Langdock-Plattformkosten mit OpenAI-Inferenzkosten, was den CFO verärgern würde.
- Das Briefing driftet zu sehr ins Technische ab und vergisst, die strategische Kostenkontrolle (Workspace-Budgets) für das Marketing zu betonen.
**Anschluss-Szenario:** S-API-002

### S-API-002 CISO-Abwehr: Static IP und Egress-Whitelisting
**Wann nutzen (Trigger):** Der Chief Information Security Officer (CISO) blockiert im IT-Board die geplante Langdock-Anbindung an die interne Kundendatenbank. Seine Begründung: "Wir öffnen unsere Datenbanken nicht für Cloud-Dienste aus dem Internet."
**Strategisches Ziel:** Die Compliance-Bedenken des CISO durch architektonische Fakten entkräften und den Go-Live der CRM-Integration sichern.
**Hands-on Ergebnis:** Ein Security-Dossier (One-Pager) zur Vorlage beim CISO.
**Eingesetzte Langdock-Fähigkeit(en):** Integrations API, Deployment Advisory
**Vorgehen (3-5 Schritte):**
1. Analysiere das Veto des CISO und isoliere das Kernproblem (Angst vor Ingress aus dem offenen Web).
2. Nutze Little Data, um das Konzept des Langdock Egress-Whitelisting und der dedizierten Static IP (z.B. 4.185.103.44) zu dekonstruieren.
3. Erarbeite eine Argumentationskette, die beweist, dass die Firewall nur für diese einzige IP geöffnet werden muss.
4. Verfasse ein hochgradig formelles, Compliance-zentriertes Dossier.
**Beispiel-Prompt (DE, PTCF):**
> "Unser CISO hat gerade die CRM-Integration gestoppt. Er weigert sich strikt, unsere On-Premise-Datenbank für eine SaaS-Plattform zu öffnen. Erstelle ein Security-Dossier, das ich ihm schicken kann. Fokussiere dich auf die 'Static IP'-Lösung von Langdock. Erkläre ihm in seiner Sprache (Firewall ACLs, Egress-Whitelisting), dass unser Netzwerk sicher bleibt, weil wir den Traffic exakt auf die Langdock-IP beschränken können. Lass jegliches Marketing-Bla-Bla weg."
**Erwartetes Artefakt:** Ein formelles Security-Dossier.
**Fallstricke (≥2 spezifisch):**
- Die KI verwechselt Ingress-Routing (eingehender Traffic) mit Egress-Routing (ausgehender Traffic der Langdock-Plattform), was den CISO sofort misstrauisch machen würde.
- Der Tone-of-Voice ist zu werblich ("Langdock ist total sicher!"), statt sich auf ISO-Zertifikate und Netzwerkarchitektur zu stützen.
**Anschluss-Szenario:** S-API-003

### S-API-003 FinOps-Audit: Chargeback für 5 Marketing-Teams
**Wann nutzen (Trigger):** Die Marketing-Direktorin wird vom CFO in die Pflicht genommen, weil die monatlichen KI-Kosten explodieren. Fünf verschiedene Abteilungen (SEO, PR, Social, Event, Content) nutzen Langdock, aber niemand weiß, wer wie viel Budget verbrennt.
**Strategisches Ziel:** Ein datengetriebenes Chargeback-Modell (Verursachergerechte Kostenumlage) etablieren, um die Budgets der Teams fair zu belasten.
**Hands-on Ergebnis:** Ein FinOps-Dashboard Konzept und eine Prozessanweisung.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Data Analyst
**Vorgehen (3-5 Schritte):**
1. Lade einen anonymisierten Auszug des aktuellen Langdock CSV-Exports in den Data Analyst.
2. Instruiere Little Data, ein Zuordnungsmodell auf Basis der User-IDs und Teams zu entwickeln.
3. Skizziere einen automatisierten monatlichen Prozess, wie die Usage Export API genutzt werden kann, um diese Daten in Power BI zu speisen.
4. Definiere Warnschwellen (Soft-Limits) im Workspace-Adminbereich.
**Beispiel-Prompt (DE, PTCF):**
> "Little Data, der CFO macht Druck wegen unserer Langdock-Rechnung. Wir müssen die Token-Kosten auf unsere fünf Fachabteilungen aufteilen. Schreibe mir einen Prozessplan: Wie ziehen wir am Ersten jeden Monats die Daten über die Usage Export API? Wie mappen wir die User-IDs auf die Kostenstellen? Und ganz wichtig: Skizziere eine Empfehlung für harte Workspace-Budgets, damit wir im nächsten Monat nicht wieder blind ins Limit laufen."
**Erwartetes Artefakt:** Eine FinOps Prozess-Spezifikation.
**Fallstricke (≥2 spezifisch):**
- Das Modell ignoriert, dass die Usage Export API asynchron funktioniert und große CSV-Dateien (Millionen Zeilen) nicht sofort, sondern als Download-Link zurückliefert.
- Die KI empfiehlt, Kosten pro Agent aufzuschlüsseln, vergisst aber, dass die API primär auf User- und Modell-Ebene reportet.
**Anschluss-Szenario:** S-API-004

### S-API-004 Legacy-Migration: OpenAI Drop-In Strategie
**Wann nutzen (Trigger):** Eine externe Digitalagentur hat vor zwei Jahren ein teures Python-Skript für automatisiertes Keyword-Clustering gebaut. Es nutzt die OpenAI API. Die Direktion will das Skript nun aus Datenschutzgründen in die Langdock-Umgebung (EU-Hosting) überführen, ohne die Agentur für ein Rework bezahlen zu müssen.
**Strategisches Ziel:** Den Entwicklern beweisen, dass die Migration auf Langdock ein triviales "Drop-In Replacement" ist und kein Budget-intensives Refactoring erfordert.
**Hands-on Ergebnis:** Ein Migrations-Guide für die Agentur.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory
**Vorgehen (3-5 Schritte):**
1. Kläre die Kompatibilität der Langdock Completion API mit dem OpenAI-Standard.
2. Erstelle einen kurzen Guide, der die zwei notwendigen Code-Änderungen (Base-URL und API-Key) visualisiert.
3. Weise auf Parameter hin, die von Langdock absichtlich ignoriert werden (z.B. parallel_tool_calls in alten Setups).
4. Sende den Guide als klares Mandat an die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "Wir kündigen unseren direkten OpenAI-Vertrag und ziehen unser Python-Clustering-Skript zu Langdock um. Die Agentur behauptet, das dauert zwei Wochen. Erstelle einen prägnanten Migrations-Guide, der beweist, dass es sich um ein Drop-In Replacement handelt. Zeige auf, dass sie nur die Base-URL auf 'api.langdock.com/openai/eu/v1/chat/completions' ändern und den Bearer Token tauschen müssen. Sei höflich, aber lass keinen Zweifel daran, dass dieser Task maximal 30 Minuten dauern darf."
**Erwartetes Artefakt:** Ein technisches Mandat (Migrations-Guide).
**Fallstricke (≥2 spezifisch):**
- Der Agent schlägt vor, den Code umzuschreiben, um das Vercel AI SDK zu nutzen, was das Ziel (Zero-Code-Änderung) komplett verfehlt.
- Die regionale Endung in der Base-URL (eu vs. us) wird vergessen, was zu Compliance-Verstößen führen könnte.
**Anschluss-Szenario:** S-API-005

### S-API-005 RAG-Hygiene: Automatisierter Lifecycle für den Wissensordner
**Wann nutzen (Trigger):** Ein kürzlich gelaunchter Produkt-Agent liefert Kunden falsche technische Spezifikationen. Eine Analyse zeigt: Im Wissensordner liegen 500 veraltete PDFs aus dem Vorjahr, weil das Marketing-Team vergessen hat, sie manuell zu löschen.
**Strategisches Ziel:** Den manuellen Upload/Delete-Prozess eliminieren und eine Sync-Pipeline definieren, die den Langdock Wissensordner automatisch mit dem SharePoint der Produktentwicklung spiegelt.
**Hands-on Ergebnis:** Ein Architekturentwurf für eine Knowledge-Folder Synchronisation.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge Folder API
**Vorgehen (3-5 Schritte):**
1. Identifiziere das Problem (Data Decay im Wissensordner).
2. Nutze Little Data, um die Endpoints der Knowledge Folder API (Upload, List, Delete) zu strukturieren.
3. Entwirf einen nächtlichen Cron-Job-Prozess für die IT.
4. Definiere Regeln für Dateigrößen (max 256MB) und Formate, um Fehler beim Upload zu vermeiden.
**Beispiel-Prompt (DE, PTCF):**
> "Little Data, wir haben ein massives Qualitätsproblem: Unser Produkt-Agent halluziniert alte Preise, weil der Wissensordner voller Datenmüll ist. Wir müssen das automatisieren. Skizziere einen Architektur-Workflow für unsere IT: Wie können sie via Knowledge Folder API jede Nacht um 03:00 Uhr alle veralteten PDFs löschen und die neuen Versionen aus SharePoint hochladen? Nenne unbedingt die Dateigrößen-Limits und erkläre, dass XLSX-Dateien vorher in Text konvertiert werden müssen."
**Erwartetes Artefakt:** Eine Sync-Spezifikation für die IT.
**Fallstricke (≥2 spezifisch):**
- Die Limitierung von maximal 1.000 Dateien pro Folder wird nicht berücksichtigt, was die Pipeline nach wenigen Wochen zum Absturz bringen würde.
- Der Agent schlägt vor, direkte Integrationen (Native Syncs) zu nutzen, obwohl SharePoint (als Beispiel) vielleicht nur on-premise liegt und eine API-Lösung zwingend ist.
**Anschluss-Szenario:** S-API-006

### S-API-006 BYOC vs. SaaS Entscheidungsvorlage
**Wann nutzen (Trigger):** Der neue CTO möchte alle KI-Projekte auf Microsoft Azure konsolidieren. Die Marketing-Direktorin befürchtet, dass sie dadurch die komfortable Langdock-UI verliert und wieder auf langsame interne IT-Projekte angewiesen ist.
**Strategisches Ziel:** Einen Kompromiss aushandeln: Die Langdock-UI für das Marketing behalten, aber die Inferenz-Kosten und Verträge über Azure laufen lassen (BYOC).
**Hands-on Ergebnis:** Eine Pitch-Präsentation (Textform) für den CTO.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory
**Vorgehen (3-5 Schritte):**
1. Kläre die Bedenken des CTOs (Konsolidierung, Enterprise-Verträge).
2. Konstruiere das Bring-Your-Own-Cloud (BYOC) Modell als perfekte Schnittmenge.
3. Erkläre, wie die Administrator-Ebene in Langdock die Azure-Keys sicher speichert.
4. Verfasse ein Pitch-Script, das die User-Experience des Marketings verteidigt.
**Beispiel-Prompt (DE, PTCF):**
> "Julia hier. Unser CTO will uns Langdock wegnehmen und alles selbst auf Azure bauen, um Kosten zu sparen. Wir brauchen die Plattform aber! Hilf mir, das BYOC (Bring Your Own Cloud) Modell zu pitchen. Erkläre, dass wir Langdock als Frontend und Orchestrierungsebene behalten können, während wir im Backend seinen Azure-API-Key eintragen. Verfasse drei starke Argumente, warum das für ihn günstiger ist (seine Enterprise-Rabatte gelten) und wir trotzdem agil bleiben."
**Erwartetes Artefakt:** Ein Pitch-Script (3 Absätze).
**Fallstricke (≥2 spezifisch):**
- Die KI vergisst zu erwähnen, dass im BYOC-Modell die internen Token-Preise für das Dashboard manuell vom Admin gepflegt werden müssen.
- Das Pitch-Script klingt zu aggressiv gegenüber dem CTO, anstatt eine Win-Win-Lösung zu betonen.
**Anschluss-Szenario:** S-API-007

### S-API-007 Web-Agentur Audit: Frontend-Key-Leak verhindern
**Wann nutzen (Trigger):** Eine externe Web-Agentur schickt das Konzept für den neuen Lead-Gen Chatbot auf der Website. Im Architektur-Diagramm steht: `Browser -> fetch('api.langdock.com') -> Return`.
**Strategisches Ziel:** Das katastrophale Sicherheitsrisiko (API-Key im Klartext im Browser) sofort stoppen und die Agentur auf die CORS-Posture von Langdock hinweisen.
**Hands-on Ergebnis:** Eine formelle Mängelrüge und Architekturanweisung.
**Eingesetzte Langdock-Fähigkeit(en):** API Security Advisory
**Vorgehen (3-5 Schritte):**
1. Analysiere das fehlerhafte Konzept der Agentur.
2. Identifiziere den Verstoß gegen die Zero-Trust CORS-Richtlinien von Langdock.
3. Erkläre das Backend-for-Frontend (BFF) Pattern als einzige Lösung.
4. Formuliere eine strikte Anweisung an die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "Ich fass es nicht – unsere Web-Agentur will den Langdock API-Key direkt in den JavaScript-Code unserer Landingpage packen, damit der Browser direkt mit Langdock spricht. Verfasse eine scharfe, aber professionelle Mängelrüge an den Lead Developer. Erkläre, dass Langdock strikte CORS-Blocks hat und direkte Frontend-Aufrufe ohnehin scheitern würden. Fordere sie auf, ein Backend-for-Frontend (BFF) zu bauen, das den Key in den Environment Variables sichert."
**Erwartetes Artefakt:** Eine formelle E-Mail (Mängelrüge).
**Fallstricke (≥2 spezifisch):**
- Die Mängelrüge ist zu unfreundlich und zerstört die Arbeitsbeziehung zur Agentur.
- Der Agent schlägt vor, den API-Key im Frontend "zu verschlüsseln" – was bei Web-Apps ein wirkungsloses Anti-Pattern ist.
**Anschluss-Szenario:** S-API-008

### S-API-008 Echtzeit-Alerting bei Reputations-Krisen
**Wann nutzen (Trigger):** Nach einem PR-Desaster auf Twitter verlangt die Geschäftsführung ein System, das Erwähnungen der Marke in Echtzeit durch eine KI auf toxisches Sentiment prüft und das Crisis-Team sofort via Slack alarmiert.
**Strategisches Ziel:** Eine event-driven Architektur skizzieren, die über Webhooks und die Integrations API funktioniert.
**Hands-on Ergebnis:** Ein Architektur-Blueprint für eine Event-Driven-Pipeline.
**Eingesetzte Langdock-Fähigkeit(en):** Integrations API
**Vorgehen (3-5 Schritte):**
1. Definiere den Trigger (Social Media Listening Tool).
2. Nutze Little Data, um den Workflow zu skizzieren: Webhook-Eingang in Langdock -> Sentiment-Analyse -> API-Aufruf an Slack.
3. Berücksichtige die Limits des Custom Integration Builders (z.B. Timeout von 60 Sekunden).
4. Dokumentiere das Setup für das Marketing-Ops Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Crisis-Comms Architekt. Wir brauchen ein Echtzeit-Alerting. Ein externes Social-Listening-Tool soll einen Webhook an Langdock senden, sobald wir erwähnt werden. Langdock analysiert das Sentiment und schickt bei 'Toxisch' einen Payload an die Slack API. Skizziere diese Architektur. Worauf müssen wir beim Custom Integration Builder achten? Erwähne speziell das 60-Sekunden Timeout Limit für Custom Code."
**Erwartetes Artefakt:** Ein Systemarchitektur-Diagramm als Text.
**Fallstricke (≥2 spezifisch):**
- Das Konzept vergisst die Authentifizierung des eingehenden Webhooks (Security Risk).
- Die KI empfiehlt, den Chat-Agenten zu nutzen, obwohl ein automatisierter Workflow (ohne UI) hier die korrekte Lösung ist.
**Anschluss-Szenario:** S-API-009

### S-API-009 Migration zur Agents API (Vercel AI SDK)
**Wann nutzen (Trigger):** Die IT-Abteilung meldet, dass die alte "Assistants API" bald abgeschaltet wird (Deprecation) und ein Rewrite der internen Tools notwendig ist. Das Marketing-Team fürchtet monatelange Downtimes.
**Strategisches Ziel:** Den Mehrwert der neuen API (Vercel AI SDK Kompatibilität) verstehen, um die IT-Kosten vor dem Management zu rechtfertigen.
**Hands-on Ergebnis:** Ein Change-Management Memo für das interne Marketing-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Agent API, Advisory
**Vorgehen (3-5 Schritte):**
1. Erfasse das Deprecation-Datum und die technischen Änderungen.
2. Identifiziere den größten Business-Value der neuen Agents API (schnelleres Streaming, moderne UIs).
3. Übersetze die technischen Vorteile (UIMessage Format) in Marketing-Vorteile.
4. Schreibe ein beruhigendes Memo an die Stakeholder.
**Beispiel-Prompt (DE, PTCF):**
> "Little Data, die IT will Budget für ein Refactoring, weil Langdock die 'Assistants API' abschaltet und auf die 'Agents API' wechselt. Ich muss das intern rechtfertigen. Verfasse ein kurzes Memo. Erkläre, dass die neue API kompatibel zum Vercel AI SDK ist und wir dadurch in Zukunft viel flüssigere, echtzeit-streamende Chat-Interfaces in unseren Tools haben werden. Der Tonfall muss beruhigend und zukunftsorientiert sein."
**Erwartetes Artefakt:** Ein internes Change-Management Memo.
**Fallstricke (≥2 spezifisch):**
- Das Memo enthält zu tiefe Details über das "UIMessage" JSON-Format, was die Marketing-Direktorin nicht interessiert.
- Das Risiko von Downtimes wird ignoriert, anstatt eine parallele Migrations-Strategie zu empfehlen.
**Anschluss-Szenario:** S-API-010

### S-API-010 Audit-Logs für DSGVO-Auskunftsanfragen
**Wann nutzen (Trigger):** Ein Kunde macht von seinem "Recht auf Auskunft" (Art. 15 DSGVO) Gebrauch. Der Datenschutzbeauftragte verlangt lückenlose Protokolle, ob Kundendaten über einen bestimmten Langdock-Agenten verarbeitet wurden.
**Strategisches Ziel:** Die Audit Logs API nutzen, um rechtssichere, exportierbare Reports zu generieren.
**Hands-on Ergebnis:** Ein Prozess-Blueprint für Legal & Compliance.
**Eingesetzte Langdock-Fähigkeit(en):** Audit Logs API
**Vorgehen (3-5 Schritte):**
1. Verstehe die rechtliche Anforderung (Nachweisbarkeit von System-Aktivitäten).
2. Instruiere Little Data, den Abruf via Audit Logs API zu spezifizieren.
3. Berücksichtige die Pagination (max. 50 Einträge pro Request).
4. Dokumentiere den Prozess für den Datenschutzbeauftragten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Compliance-Berater. Unser Datenschutzbeauftragter braucht einen Export aller System-Aktivitäten des letzten Monats wegen einer DSGVO-Anfrage. Wir müssen das über die Langdock Audit Logs API automatisieren. Schreibe einen Prozess-Guide für die IT. Erkläre zwingend, dass die API paginiert ist und maximal 50 Einträge pro Request liefert, sie müssen also eine Schleife programmieren. Das Dokument muss formal und präzise sein."
**Erwartetes Artefakt:** Ein DSGVO-Auskunftsprozess Dokument.
**Fallstricke (≥2 spezifisch):**
- Die KI verwechselt Audit-Logs (Wer hat das System konfiguriert?) mit Usage-Logs (Wer hat welche Tokens verbraucht?).
- Der Datenschutzaspekt (PII-Daten in Logs) wird in der Risikoanalyse vergessen.
**Anschluss-Szenario:** S-API-011

### S-API-011 Vendor-Lock-in-Prävention durch BYOK-Strategie

**Wann nutzen (Trigger):** Die Marketing-Direktorin erfährt, dass Langdock die Preise für das nächste Jahr um 15 % anhebt. Das Leadership-Team diskutiert, ob man zu schnell zu abhängig von einem einzelnen KI-Anbieter geworden ist. Der CTO fragt: "Was kostet es uns, von Langdock wegzugehen?" (Quelle: A-03)
**Strategisches Ziel:** Vendor-Lock-in-Risiko quantifizieren und eine portable Infrastrukturstrategie definieren, die den Exit-Aufwand auf unter vier Wochen reduziert.
**Hands-on Ergebnis:** Ein Lock-in-Risikoprofil mit konkreten Gegenmaßnahmen (BYOK-Setup, Export-Pflicht, Wechsel-Drill).
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, BYOC/BYOK Konfigurationsberatung
**Vorgehen (4 Schritte):**
1. Inventarisiere alle Abhängigkeiten: welche Agenten, Wissensordner, Workflows und API-Integrationen existieren und wie portabel sie sind.
2. Beauftrage Little Data, eine BYOK-Strategie zu erläutern — eigene Anthropic- oder OpenAI-Keys im Langdock-Admin hinterlegen, sodass Inferenz-Kosten und Modell-Verträge jederzeit portierbar bleiben.
3. Definiere eine jährliche Export-Pflicht: alle Wissensordner-Dokumente als Markdown sichern, alle Agenten-System-Prompts in einem Git-Repository versionieren.
4. Skizziere einen "Wechsel-Drill" (1 Tag/Jahr), bei dem ein Testsetup auf direktem Anthropic-API-Zugriff läuft.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein IT-Beschaffungsberater. Unser CTO will das Vendor-Lock-in-Risiko bei Langdock bewerten. Analysiere: Welche Komponenten unseres Setups (Agenten, Wissensordner, Workflows) sind portierbar, welche nicht? Empfehle konkrete Maßnahmen — insbesondere eine BYOK-Strategie und einen jährlichen Wechsel-Drill. Formatiere die Ausgabe als Executive-Risikobericht mit einer Ampel-Bewertung pro Komponente."
**Erwartetes Artefakt:** Ein Executive-Risikobericht (Ampel-Tabelle + BYOK-Aktionsplan).
**Fallstricke (≥2 spezifisch):**
- Das Modell bewertet alle Komponenten als "niedrig riskant", weil Langdock OpenAI-kompatibel ist — ignoriert dabei aber, dass proprietäre Workflow-Konfigurationen nicht exportierbar sind.
- Die BYOK-Empfehlung vergisst, dass im BYOK-Modus die internen Token-Preise für das Dashboard manuell vom Admin gepflegt werden müssen.
**Anschluss-Szenario:** S-API-012

### S-API-012 Prompt-Caching-ROI-Kalkulation für Briefing-Templates

**Wann nutzen (Trigger):** Das Content-Team nutzt täglich denselben 3.000-Token-System-Prompt für den Brand-Voice-Agenten. Ein Entwickler erwähnt, dass Anthropic und OpenAI Prompt-Caching für wiederkehrende Kontextanteile anbieten — das könnte die Token-Kosten erheblich senken. Die Marketing-Direktorin will wissen, ob sich die technische Implementierung lohnt. (Quelle: A-22)
**Strategisches Ziel:** Den finanziellen Break-even für Prompt-Caching berechnen und eine Implementierungsempfehlung für die IT formulieren.
**Hands-on Ergebnis:** Eine ROI-Kalkulation und ein technisches Briefing für die Einrichtung von Prompt-Caching via Langdock API.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory, Cost-Engineering-Beratung
**Vorgehen (4 Schritte):**
1. Erfasse die relevanten Parameter: Prompt-Template-Länge in Tokens, durchschnittliche Anzahl API-Requests pro Tag und aktuellen Token-Preis des eingesetzten Modells.
2. Lass Little Data den Break-even berechnen: Prompt-Caching lohnt sich, wenn der Template-Anteil über 2.048 Tokens liegt UND mindestens 5 Requests pro Minute gesendet werden.
3. Formuliere das technische Briefing für die IT: Cache-Prefix im System-Prompt markieren, TTL (Time-to-Live) verstehen, Monitoring der Cache-Hit-Rate einrichten.
4. Definiere eine Erfolgsmessung: monatliche Token-Kostenvergleich vor und nach Caching-Aktivierung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater für KI-Infrastruktur. Wir senden täglich ca. 500 Requests an unseren Brand-Voice-Agenten mit einem System-Prompt von 3.200 Tokens. Berechne den monatlichen Einspar-Effekt, wenn wir Prompt-Caching aktivieren. Erkläre dabei den technischen Mechanismus (Cache-Prefix, TTL) so, dass ich es unserer IT in einem 5-minütigen Meeting erklären kann. Liefere die Kalkulation als Tabelle mit Vorher-Nachher-Vergleich."
**Erwartetes Artefakt:** Eine ROI-Tabelle + technisches IT-Briefing (max. 1 DIN-A4-Seite).
**Fallstricke (≥2 spezifisch):**
- Die Kalkulation vernachlässigt den 10%-Aufschlag auf Token-Preise bei Langdock API-Nutzung (gegenüber direktem Provider-Zugriff), was die ROI-Schwelle nach oben verschiebt.
- Das Modell empfiehlt, den gesamten Prompt zu cachen, obwohl nur der statische System-Prompt-Anteil cacheähig ist — der variable User-Input ist es nicht.
**Anschluss-Szenario:** S-API-013

### S-API-013 Langdock als Backend für das interne Marketing-Dashboard

**Wann nutzen (Trigger):** Das Marketing-Ops-Team hat ein internes React-Dashboard gebaut, das KPIs anzeigt. Die Direktorin möchte, dass Nutzer im Dashboard eine KI-Funktion aufrufen können ("Erkläre mir diese Anomalie in unserem Traffic-Graph"), ohne dafür in ein separates Langdock-Tab wechseln zu müssen. (Quelle: sources/10 S-072)
**Strategisches Ziel:** Langdock als unsichtbares KI-Backend in das bestehende interne Tool einbetten, ohne den API-Key im Frontend zu exponieren.
**Hands-on Ergebnis:** Ein Architektur-Blueprint für die IT, der das Backend-for-Frontend (BFF)-Pattern mit Langdock Agent API beschreibt.
**Eingesetzte Langdock-Fähigkeit(en):** Agent API, API Security Advisory
**Vorgehen (4 Schritte):**
1. Definiere den gewünschten User-Flow: Nutzer klickt im Dashboard auf "KI-Analyse", der Klick sendet Kontext-Daten (Graph-Werte) an das interne Backend.
2. Beauftrage Little Data, das BFF-Pattern zu beschreiben: internes Backend hält den Langdock API-Key in Environment Variables, leitet Anfragen an den Agent-Endpoint weiter und streamt die Antwort zurück an den Browser.
3. Kläre die CORS-Posture: direkte Browser-to-Langdock-Aufrufe sind architektonisch blockiert — das BFF ist zwingend, nicht optional.
4. Definiere Sicherheitsanforderungen: Authentifizierung der Dashboard-Nutzer vor dem BFF, Rate Limiting auf dem eigenen Server, kein Logging sensibler Kontextdaten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Backend-Architekt. Wir wollen unseren spezifischen Langdock-Marketing-Agenten in unser internes React-Dashboard einbetten. Nutzer sollen KI-Analysen anfordern können, ohne Langdock direkt zu nutzen. Erkläre das Backend-for-Frontend Pattern: Wie leitet unser Node.js-Server Anfragen sicher an die Langdock Agent API weiter? Erwähne explizit, warum direkte Frontend-Aufrufe wegen CORS scheitern würden. Liefere einen Architektur-Blueprint als strukturierten Text."
**Erwartetes Artefakt:** Ein Architektur-Blueprint-Dokument (Komponenten, Datenfluss, Sicherheitsanforderungen).
**Fallstricke (≥2 spezifisch):**
- Der Blueprint vergisst, dass der Agent-Endpoint einen anderen URL-Pfad nutzt als der Chat-Completions-Endpoint — Verwechslung führt zu Laufzeitfehlern.
- Die Empfehlung setzt voraus, dass das Streaming der Antwort (Server-Sent Events) im BFF korrekt durchgereicht wird — ohne expliziten Hinweis implementiert die IT dies oft als blockierenden Single-Response-Call.
**Anschluss-Szenario:** S-API-014

### S-API-014 API-Key-Lifecycle-Management und Rotation

**Wann nutzen (Trigger):** Ein ausgeschiedener Entwickler der Web-Agentur hatte Zugriff auf den Langdock Workspace-API-Key. Die Personalabteilung meldet den Abgang erst zwei Wochen später. Die Marketing-Direktorin fragt sich, ob während dieser Zeit unautorisierte API-Nutzung möglich war und wie man solche Lücken zukünftig vermeidet. (Quelle: sources/12 Q120)
**Strategisches Ziel:** Einen sicheren API-Key-Lifecycle-Prozess etablieren, der die Exposition bei Personalwechseln auf unter 24 Stunden begrenzt.
**Hands-on Ergebnis:** Ein Key-Management-Prozess-Dokument und eine Checkliste für Offboarding-Szenarien.
**Eingesetzte Langdock-Fähigkeit(en):** API Security Advisory, Audit Logs API
**Vorgehen (4 Schritte):**
1. Kläre die aktuelle Lage: Audit Logs API abfragen, um zu prüfen, ob in den letzten zwei Wochen ungewöhnliche API-Aktivitäten auf dem kompromittierten Key stattgefunden haben.
2. Definiere den Sofortmaßnahmen-Plan: Key sofort im Workspace-Adminbereich invalidieren und einen neuen Key generieren.
3. Erarbeite mit Little Data einen proaktiven Lifecycle-Prozess: separate Keys pro Projekt/Agentur, automatische 90-Tage-Rotation, Key-Inventar in einer geschützten Passwort-Datenbank.
4. Dokumentiere den Prozess als Offboarding-Checkliste für HR und IT.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein IT-Security-Berater. Ein externer Entwickler, der unseren Langdock API-Key kannte, ist ausgeschieden. Ich muss sofort handeln und langfristige Prozesse etablieren. Erstelle: (1) eine Sofortmaßnahmen-Liste (was tue ich in den nächsten 2 Stunden?), (2) einen Prozessplan für API-Key-Lifecycle-Management mit 90-Tage-Rotation, und (3) eine Offboarding-Checkliste. Erkläre auch, wie ich via Audit Logs API prüfe, ob der Key missbraucht wurde."
**Erwartetes Artefakt:** Ein dreiteiliges Sicherheitsdokument (Sofortmaßnahmen, Lifecycle-Prozess, Offboarding-Checkliste).
**Fallstricke (≥2 spezifisch):**
- Das Modell schlägt vor, API-Keys in Slack zu teilen "für schnellen Zugriff" — dies ist ein klassisches Anti-Pattern, das die Exposition massiv erhöht.
- Die Audit-Log-Abfrage wird als Entwarnung missverstanden, wenn keine Anomalien gefunden werden — tatsächlich könnte der Angreifer unterhalb des Logging-Thresholds geblieben sein.
**Anschluss-Szenario:** S-API-015

### S-API-015 Search API für Custom Retrieval in der internen Wissensdatenbank

**Wann nutzen (Trigger):** Das Marketing-Team hat 800 Dokumente im Langdock-Wissensordner (Briefings, Case Studies, Brand-Guidelines). Ein internes SharePoint-Wiki soll nun eine "Smart Search"-Funktion erhalten, die Dokumente semantisch findet — nicht nur per Keyword. Die IT fragt, ob die Langdock Search API dafür genutzt werden kann. (Quelle: sources/12 Q124)
**Strategisches Ziel:** Die Langdock Search API als semantische Retrievalschicht für ein internes Tool evaluieren und ein Integrationskonzept liefern.
**Hands-on Ergebnis:** Ein Evaluierungs-Memo und ein Integrationsarchitektur-Entwurf für die IT.
**Eingesetzte Langdock-Fähigkeit(en):** Search API (Knowledge Folder), Advisory
**Vorgehen (4 Schritte):**
1. Erkläre der IT den Mechanismus der Langdock Search API: Sie nimmt eine natürlichsprachliche Suchanfrage entgegen und gibt die relevantesten Textfragmente (Chunks) aus dem Wissensordner zurück — inklusive Relevanz-Score.
2. Bewerte den Use-Case: semantische Suche über 800 Dokumente ist ein starker Fit für die Search API, solange die Dokumente korrekt in den Langdock-Wissensordner hochgeladen und indexiert sind.
3. Skizziere die Integrationsarchitektur: SharePoint-Suchfeld sendet Query via BFF an Langdock Search API, Ergebnisse (Chunks + Scores) werden im SharePoint-UI gerendert.
4. Weise auf Grenzen hin: die Search API liefert Chunks, nicht vollständige Dokumente — für Volltext-Download ist ein separater Step nötig.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Lösungsarchitekt. Wir wollen die Langdock Search API nutzen, um unserem internen SharePoint-Wiki eine semantische Suchfunktion hinzuzufügen. Erkläre: Wie funktioniert der Search-API-Endpoint technisch (Input, Output, Chunk-Format, Relevanz-Score)? Welche Grenzen muss die IT kennen? Liefere einen Architektur-Entwurf als Stichpunktliste mit einem Datenfluss-Diagramm in Textform."
**Erwartetes Artefakt:** Ein Integrations-Architektur-Dokument mit Datenfluss-Diagramm (Textform) und Grenzen-Übersicht.
**Fallstricke (≥2 spezifisch):**
- Die Search API wird mit dem Agent-Endpoint verwechselt: die Search API retrievet nur Chunks aus dem Wissensordner, generiert aber keinen neuen Text — das ist ein fundamentaler Unterschied.
- Das Konzept vergisst, dass die Relevanz-Scores kontextuell sind und nicht als absolute Qualitätsbewertung interpretiert werden dürfen (ein Score von 0.6 ist nicht zwingend "gut").
**Anschluss-Szenario:** S-API-016

### S-API-016 Batch-Content-Generierung für saisonale Kampagnen

**Wann nutzen (Trigger):** Das E-Commerce-Marketing-Team muss vor dem Weihnachtsgeschäft 2.000 ProduktkurzBeschreibungen (je 80 Wörter) aktualisieren. Der Produktkatalog liegt als CSV vor. Die Direktorin will wissen, wie dieser Job über das Wochenende automatisch via API abgearbeitet werden kann, ohne die Rate Limits zu sprengen. (Quelle: sources/10 S-066)
**Strategisches Ziel:** Eine Batch-Verarbeitungs-Architektur skizzieren, die 2.000 Completion-Requests kontrolliert und kostenoptimiert durch die Langdock API sendet.
**Hands-on Ergebnis:** Ein Architektur-Briefing mit Queue-Strategie, Kostenabschätzung und Fehlerbehandlung für die IT.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory, Rate-Limit-Planung
**Vorgehen (5 Schritte):**
1. Kalkuliere die Anforderungen: 2.000 Requests bei 500 RPM Limit = mindestens 4 Minuten reine Verarbeitungszeit, in der Praxis mit Sicherheitspuffer 15–20 Minuten.
2. Beauftrage Little Data, eine Queue-Strategie zu entwerfen: Requests in Batches von 50 gruppieren, Exponential-Backoff bei HTTP 429 Fehlern, maximale 3 Retry-Versuche.
3. Erstelle eine Kostenschätzung auf Basis der Prompt-Länge (Produktdaten-Input + 80-Wörter-Output) und des gewählten Modells.
4. Plane den Monitoring-Punkt: Usage Export API am nächsten Morgen abfragen, um tatsächliche Token-Kosten mit der Schätzung zu vergleichen.
5. Weise auf das 25-Euro-Limit pro Workflow-Lauf hin — bei großen Jobs muss dieses Limit im Admin erhöht werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer Projektleiter. Wir müssen 2.000 Produktbeschreibungen via Langdock Completion API über ein Wochenende generieren. Der Katalog liegt als CSV vor. Skizziere eine Batch-Architektur: Wie teilen wir die CSV auf? Wie implementieren wir Exponential-Backoff bei Rate Limit Fehlern? Welche Kosten erwarten uns bei durchschnittlich 500 Input-Tokens und 120 Output-Tokens pro Request mit Haiku? Liefere Architektur-Briefing und Kostenübersicht."
**Erwartetes Artefakt:** Ein Architektur-Briefing (Queue-Strategie, Fehlerbehandlung) + Kosten-Schätzungssheet.
**Fallstricke (≥2 spezifisch):**
- Das Modell vergisst das 100-Sekunden Timeout für Non-Streaming-Requests — bei langen Produktbeschreibungen kann dies Timeouts verursachen, wenn kein Streaming aktiviert ist.
- Die Kostenschätzung basiert auf Netto-Token-Preisen und ignoriert den Langdock-API-Aufschlag von 10 % auf Modell-Provider-Preise.
**Anschluss-Szenario:** S-API-017

### S-API-017 BYOM-Architektur-Entscheidung für sensible Marketingdaten

**Wann nutzen (Trigger):** Der Datenschutzbeauftragte signalisiert, dass bestimmte Kundensegmentierungsdaten (personenbezogene Kaufhistorien) nicht an externe Modell-Provider gesendet werden dürfen. Das Marketing-Team möchte trotzdem KI-gestützte Segmentierungsvorschläge generieren. Der CTO fragt, ob Langdock mit einem internen, self-hosted Modell (BYOM) kombiniert werden kann. (Quelle: sources/12 Q128)
**Strategisches Ziel:** Die BYOM-Option (Bring Your Own Model) als datenschutzkonforme Lösung evaluieren und die Entscheidungsmatrix für CTO und DSB aufbereiten.
**Hands-on Ergebnis:** Eine Entscheidungsvorlage (Pros/Cons-Matrix + Empfehlung) für CTO und Datenschutzbeauftragten.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory (BYOM), Advisory
**Vorgehen (4 Schritte):**
1. Kläre das Datenschutzproblem: Welche Daten sind betroffen, warum dürfen sie nicht an externe Provider? (DSGVO, interne Datenhaltungsrichtlinie?)
2. Beauftrage Little Data, das BYOM-Konzept zu erläutern: self-hosted Open-Source-Modell (z.B. Llama-Derivat) in der eigenen Cloud/VPC, Langdock als Orchestrierungsebene verbindet sich per BYOM-Konfiguration mit dem internen Modell-Endpoint.
3. Bewerte die Einschränkungen: self-hosted Modelle sind typischerweise schwächer als Frontier-Modelle; Performance-Tests für den spezifischen Use-Case sind zwingend vor dem Commitment.
4. Formuliere eine klare Empfehlung: BYOM für Hochrisiko-Daten, BYOC/SaaS für Standard-Marketing-Tasks.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Infrastrukturberater. Unser DSB hat Bedenken, Kundendaten an externe Modell-Provider zu senden. Unser CTO fragt, ob wir ein internes Modell via BYOM in Langdock integrieren können. Erkläre das BYOM-Konzept, seine technischen Voraussetzungen und seine Grenzen (Modell-Performance, Wartungsaufwand). Liefere eine Entscheidungsmatrix: Wann BYOM, wann BYOC, wann Standard-SaaS? Formatiere als strukturierte Tabelle mit Empfehlung."
**Erwartetes Artefakt:** Eine Entscheidungsmatrix (Tabelle) + Empfehlung mit Begründung für DSB und CTO.
**Fallstricke (≥2 spezifisch):**
- Das Modell empfiehlt BYOM pauschal als "sicherste Option", ohne auf den erheblichen Betriebsaufwand (GPU-Infrastruktur, Modell-Updates, Security-Patching) hinzuweisen.
- Die Entscheidungsmatrix unterschätzt, dass BYOM-Modelle für komplexe Marketing-Tasks (Tonalitätsprüfung, multilinguale Texte) deutlich schlechtere Ergebnisse liefern können als Frontier-Modelle.
**Anschluss-Szenario:** S-API-018

### S-API-018 Token-Budget-Management via API für Quartals-Kampagnen

**Wann nutzen (Trigger):** Das Q1-Budget für KI-Kosten ist bereits in der dritten Woche des Quartals zu 70 % verbraucht, weil ein neu eingestellter Performance-Manager versehentlich einen schleifenden Workflow mit Premium-Modellen (Claude Opus) laufen ließ. Die Marketing-Direktorin will proaktive Budgetgrenzen via API einrichten. (Quelle: sources/12 Q122 und Q125)
**Strategisches Ziel:** Ein Token-Budget-Management-System etablieren, das Kostenüberschreitungen durch automatische Warnschwellen und harte Limits verhindert.
**Hands-on Ergebnis:** Eine Prozessdokumentation für den Workspace-Admin: Wo werden Budget-Limits gesetzt, wie werden Warnungen ausgelöst, und wie wird per Usage Export API ein wöchentliches Kosten-Dashboard befüllt.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory, Workspace-Admin-Konfiguration
**Vorgehen (4 Schritte):**
1. Analysiere den aktuellen Schaden: Usage Export API-Daten für die vergangenen drei Wochen abrufen und den kostentreibenden Workflow identifizieren (User-ID + Agent-ID + Modell).
2. Implementiere harte Limits: im Workspace-Admin monatliche Budgets pro User-Gruppe und per-Workflow-Kostenobergrenze (Standard: 25 Euro/Lauf) konfigurieren.
3. Definiere Soft-Limit-Warnschwellen: ab 80 % des Monatsbudgets automatisch eine E-Mail-Warnung an den Admin auslösen.
4. Richte ein wöchentliches Kosten-Reporting ein: Usage Export API-Daten automatisch jeden Montag in ein Power-BI-Dashboard laden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater. Ein Mitarbeiter hat versehentlich einen Workflow mit Claude Opus in einer Endlosschleife laufen lassen und 70 % unseres Q1-KI-Budgets verbrannt. Erkläre: (1) Wie identifiziere ich via Usage Export API den Verursacher? (2) Welche Budgetgrenzen kann ich im Langdock-Admin einrichten? (3) Wie setze ich eine Soft-Limit-Warnung auf 80 % des Monatsbudgets? Liefere eine Schritt-für-Schritt-Prozessdokumentation für unseren Workspace-Admin."
**Erwartetes Artefakt:** Eine Prozessdokumentation für den Workspace-Admin (Sofortmaßnahmen + dauerhafte Budget-Governance).
**Fallstricke (≥2 spezifisch):**
- Das Modell verwechselt das Workflow-Run-Limit (25 Euro/Lauf) mit dem Workspace-Monatslimit (500 Euro) — beide Grenzen sind unabhängig und müssen separat konfiguriert werden.
- Die Empfehlung setzt auf rein reaktive Maßnahmen (Limits setzen nach dem Schaden) ohne präventives Modell-Gating — teure Modelle wie Opus sollten nur mit expliziter Admin-Freigabe nutzbar sein.
**Anschluss-Szenario:** S-API-019

### S-API-019 Programmatische Wissensordner-Aktualisierung aus dem CMS

**Wann nutzen (Trigger):** Das Content-Team veröffentlicht wöchentlich 15–20 neue Blog-Artikel im CMS. Der Brand-Voice-Agent soll automatisch die neuesten Artikel kennen, ohne dass das Team jeden Upload manuell in den Langdock-Wissensordner hochlädt. Die Content-Managerin fragt: "Kann das automatisiert werden?" (Quelle: sources/10 S-094, A-36)
**Strategisches Ziel:** Einen vollautomatischen Sync-Prozess definieren, der neue CMS-Inhalte programmatisch via Langdock Knowledge Folder API in den Wissensordner überträgt.
**Hands-on Ergebnis:** Ein Technisches Integrationskonzept für den CMS-zu-Langdock-Sync, inklusive Fehlerbehandlung und Dateiformatvorgaben.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge Folder API, Advisory
**Vorgehen (4 Schritte):**
1. Definiere den Trigger: CMS-Webhook feuert bei jeder Veröffentlichung eines neuen Artikels.
2. Spezifiziere den Prozess: CMS-Artikel als Markdown oder Plain-Text exportieren (XLSX und komplexe HTML-Layouts müssen konvertiert werden), dann via Knowledge Folder API hochladen.
3. Implementiere Deduplizierung: vor jedem Upload prüfen, ob ein Dokument mit gleichem Titel bereits existiert (List-Endpoint), um doppelte Einträge zu vermeiden.
4. Weise auf Grenzen hin: maximale Dateigröße 256 MB, maximale Anzahl Dateien pro Ordner 1.000 — bei Überschreitung müssen ältere Artikel archiviert und gelöscht werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Integrations-Architekt. Unser CMS soll neue Blog-Artikel automatisch in unseren Langdock-Wissensordner pushen. Skizziere den Sync-Prozess: CMS-Webhook → Dateikonvertierung → Knowledge Folder API Upload. Welche Formate akzeptiert die API? Wie vermeide ich Duplikate? Was sind die harten Grenzen (Dateigröße, Dateianzahl pro Ordner)? Liefere ein technisches Integrationskonzept als strukturierte Stichpunktliste."
**Erwartetes Artefakt:** Ein technisches Integrationskonzept (Prozessablauf, Formatvorgaben, Grenzwerte, Fehlerbehandlung).
**Fallstricke (≥2 spezifisch):**
- Das Konzept vergisst, dass die Knowledge Folder API keine Real-time-Indexierung garantiert — nach dem Upload kann die Vektorisierung einige Minuten dauern, was bei zeitkritischen Inhalten relevant ist.
- Der Webhook sendet CMS-Artikel als HTML; das Modell empfiehlt, HTML direkt hochzuladen, obwohl komplexes HTML die Chunking-Qualität der Vektorindexierung stark verschlechtert.
**Anschluss-Szenario:** S-API-020

### S-API-020 Agent-Observability mit Audit-Log-Export in BI-Tools

**Wann nutzen (Trigger):** Das Marketing-Ops-Team hat acht produktive Langdock-Agenten im Einsatz. Die Marketing-Direktorin möchte monatlich sehen: Welche Agenten werden wie oft genutzt? Wann gibt es Ausreißer in der Response-Time? Gibt es Muster bei Ablehnungen (Refusals)? Bisher fehlt jede Observability. (Quelle: A-36)
**Strategisches Ziel:** Ein Observability-Framework definieren, das Audit-Log-Daten aus der Langdock API in ein bestehendes BI-Tool (Datadog, Grafana oder Power BI) überführt und SLOs für Agenten messbar macht.
**Hands-on Ergebnis:** Ein Observability-Konzept mit definierten SLOs, API-Export-Prozess und Dashboard-Anforderungen.
**Eingesetzte Langdock-Fähigkeit(en):** Audit Logs API, Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Definiere die relevanten SLOs (Service Level Objectives) für Agenten: Response-Time (P95 unter 8 Sekunden), Retrieval-Hit-Rate (mind. 70 % relevante Chunks), Refusal-Rate (unter 5 % der Anfragen).
2. Spezifiziere den Datenexport: Audit Logs API täglich abfragen (Pagination beachten: max. 50 Einträge pro Request), Usage Export API für Token-Kosten.
3. Skizziere das Dashboard-Design: eine Ansicht pro Agent mit Trend-Linien für alle drei SLOs plus Kosten-Overlay.
4. Definiere Eskalations-Regeln: bei mehr als zwei aufeinanderfolgenden Wochen mit SLO-Verletzung → Agent-Review und System-Prompt-Überarbeitung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Platform-Engineer für Marketing-KI-Infrastruktur. Wir betreiben 8 Langdock-Agenten und haben keinerlei Observability. Ich will SLOs definieren und die Daten via Audit Logs API in Power BI visualisieren. Welche SLOs sind für Marketing-Agenten sinnvoll? Wie exportiere ich die Daten täglich (Pagination!)? Liefere ein Observability-Konzept mit Dashboard-Anforderungen und Eskalationsregeln."
**Erwartetes Artefakt:** Ein Observability-Konzept-Dokument (SLOs, Export-Prozess, Dashboard-Anforderungen, Eskalationsregeln).
**Fallstricke (≥2 spezifisch):**
- Audit Logs und Usage Logs werden gleichgesetzt: Audit Logs erfassen Konfigurations- und Sicherheitsereignisse, Usage Logs erfassen Token-Verbrauch — beide sind für Observability nötig, aber über unterschiedliche Endpoints abrufbar.
- Die definierten SLOs sind für alle Agenten gleich — ein einfacher FAQ-Agent und ein tiefer Recherche-Agent haben fundamental unterschiedliche Response-Time-Profile.
**Anschluss-Szenario:** S-API-021

### S-API-021 Fallback-Playbook für Langdock-Ausfälle

**Wann nutzen (Trigger):** Langdock hat an einem kritischen Kampagnentag einen ungeplanten Ausfall von 90 Minuten. Das Content-Team steht still. Anschließend fordert das Management ein schriftliches Fallback-Playbook, das zukünftig sicherstellt, dass das Team innerhalb von 15 Minuten auf eine Alternativlösung wechseln kann. (Quelle: A-44)
**Strategisches Ziel:** Ein Business-Continuity-Playbook erarbeiten, das bei Langdock-Ausfällen den Marketing-Betrieb auf Minimal-Niveau aufrecht erhält.
**Hands-on Ergebnis:** Ein einseitiges Fallback-Playbook mit konkreten Sofortmaßnahmen, Backup-Ressourcen und SLA-Monitoring-Anweisungen.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, Advisory
**Vorgehen (4 Schritte):**
1. Inventarisiere die kritischen Abhängigkeiten: Welche Marketing-Prozesse sind zeitkritisch (Content-Publishing-Deadlines, laufende Kampagnen) und welche könnten eine Stunde warten?
2. Definiere die Fallback-Ressourcen: Die drei wichtigsten Agent-System-Prompts als Markdown lokal sichern, direkter Anthropic Claude-Webzugriff (claude.ai) oder OpenAI ChatGPT als Ad-hoc-Ersatz.
3. Dokumentiere das SLA-Monitoring: status.langdock.com als erster Check-Punkt; Kommunikationskanal für das Team im Ausfall-Fall (z.B. Slack-Channel #ki-fallback).
4. Definiere einen Wiederherstellungs-Test: einmal pro Quartal einen simulierten 30-minütigen Ausfall üben, um die Reaktionszeit des Teams zu messen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Business-Continuity-Berater. Langdock war heute 90 Minuten ausgefallen und hat unsere Kampagnen-Arbeit blockiert. Erstelle ein einseitiges Fallback-Playbook. Es muss beinhalten: (1) Sofortmaßnahmen in den ersten 15 Minuten, (2) welche Prozesse wir manuell weiterführen vs. pausieren, (3) lokale Backup-Ressourcen (Agent-Prompts als Markdown, alternative KI-Tools), (4) SLA-Monitoring via status.langdock.com. Tonfall: operativ, klar, ohne Marketing-Jargon."
**Erwartetes Artefakt:** Ein einseitiges Fallback-Playbook (Sofortmaßnahmen, Backup-Ressourcen, Monitoring, Test-Drill).
**Fallstricke (≥2 spezifisch):**
- Das Playbook empfiehlt, proprietäre Kunden- oder Unternehmensdaten in externe KI-Tools (claude.ai, ChatGPT) im Ausfall-Fall einzugeben — dies kann gegen die eigene Datenschutzrichtlinie verstoßen.
- Der Wiederherstellungs-Test wird als einmaliges Event geplant, statt als quartalsweise Pflichtübung — ohne Wiederholung verkommt das Playbook zur Makulatur.
**Anschluss-Szenario:** S-API-022

### S-API-022 Integrations-Test-Strategie vor dem Go-Live

**Wann nutzen (Trigger):** Ein neuer Langdock-Agent soll nächste Woche produktiv gehen und ist über die API in das CRM, das CMS und ein E-Mail-Marketing-Tool integriert. Der zuständige Entwickler fragt die Marketing-Direktorin: "Wie sollen wir das testen?" Das Team hat keine definierte Test-Strategie für API-Integrationen. (Quelle: sources/12 Q108)
**Strategisches Ziel:** Eine strukturierte Integrations-Test-Strategie definieren, die technische Fehler und inhaltliche Qualitätsprobleme vor dem Go-Live identifiziert.
**Hands-on Ergebnis:** Eine Test-Checkliste mit Testszenarien für alle drei Integrationspunkte (CRM, CMS, E-Mail) und ein Abnahmekriterien-Dokument.
**Eingesetzte Langdock-Fähigkeit(en):** Agent API, Integrations API, Advisory
**Vorgehen (4 Schritte):**
1. Trenne technische Tests (läuft die API-Verbindung?) von inhaltlichen Tests (ist der Agent-Output qualitativ korrekt?).
2. Definiere für jeden Integrationspunkt drei Testszenarien: Happy Path (alles funktioniert), Edge Case (ungewöhnliche Inputs), Failure Case (API-Timeout oder ungültige Daten).
3. Lege Abnahmekriterien fest: welche Fehlerrate ist akzeptabel, welche Response-Time ist maximal tolerierbar, wer ist die finale Abnahme-Person?
4. Plane einen UAT (User Acceptance Test) mit zwei tatsächlichen Marketing-Team-Mitgliedern, die typische Arbeitsaufgaben durchführen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein QA-Stratege für KI-Integrationen. Wir launchen nächste Woche einen Langdock-Agenten, der via API mit HubSpot, unserem CMS und Mailchimp verbunden ist. Erstelle eine Integrations-Test-Checkliste. Trenne technische Tests (API-Konnektivität) von inhaltlichen Tests (Output-Qualität). Definiere für jeden Integrationspunkt: Happy Path, Edge Case, Failure Case. Füge Abnahmekriterien hinzu."
**Erwartetes Artefakt:** Eine Integrations-Test-Checkliste mit Abnahmekriterien-Dokument.
**Fallstricke (≥2 spezifisch):**
- Die Test-Checkliste fokussiert rein auf technische Konnektivität und ignoriert inhaltliche Qualitätstests — ein Agent, der korrekte API-Antworten liefert, aber Brand-Voice-Fehler macht, besteht den Test zu Unrecht.
- Der UAT wird erst nach dem Go-Live-Datum eingeplant ("wir testen im Live-Betrieb") — damit fehlt ein expliziter Rollback-Plan für den Fall von Fehlfunktionen.
**Anschluss-Szenario:** S-API-023

### S-API-023 Rate-Limit-Planung für internationale Kampagnenwellen

**Wann nutzen (Trigger):** Eine globale Marketingkampagne soll gleichzeitig in 12 Ländern launchen. Dafür werden an einem einzigen Tag 8.000 personalisierte E-Mail-Texte über die Langdock API generiert. Die Marketing-Direktorin fragt proaktiv beim Langdock Customer Success Manager nach, was sie beachten muss. (Quelle: sources/12 Q119, Q120)
**Strategisches Ziel:** Rechtzeitig vor dem Kampagnentag das benötigte Rate-Limit-Quota beantragen und eine technische Ausführungsstrategie definieren, die 8.000 Requests ohne Unterbrechungen verarbeitet.
**Hands-on Ergebnis:** Ein Quota-Increase-Antrag (Business Case) und ein technischer Ausführungsplan für den Kampagnentag.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Rate-Limit-Advisory
**Vorgehen (4 Schritte):**
1. Kalkuliere den tatsächlichen Bedarf: 8.000 Requests / 500 RPM Default-Limit = 16 Minuten reine Processing-Zeit; mit Personalisierungs-Overhead und Fehler-Retries realistische Schätzung auf 45–60 Minuten.
2. Entscheide, ob ein Quota Increase nötig ist: für einen kontrollierten Ein-Tages-Job ist das Default-Limit ausreichend, sofern die Requests gequeued und nicht gleichzeitig gesendet werden.
3. Formuliere bei Bedarf den Business Case für den Customer Success Manager: Datum, Umfang, Modell, erwartete Token-Menge, Bereitschaft zur Kostenübernahme.
4. Definiere einen technischen Ausführungsplan: Request-Queue mit Pacing (400 RPM als Safety-Margin), Monitoring-Alert bei 429-Fehlern, Checkpoint alle 1.000 Requests.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer Kampagnenplaner. Wir launchen in zwei Wochen eine globale Kampagne und müssen 8.000 personalisierte E-Mail-Texte via Langdock API generieren — alles an einem Tag. Erkläre: Brauchen wir ein Quota Increase? Wenn nein, wie strukturieren wir die Request-Queue, um die 500 RPM Grenze sicher zu unterschreiten? Wenn ja, wie formuliere ich einen Business Case für den CSM? Liefere einen Ausführungsplan als Timeline."
**Erwartetes Artefakt:** Ein technischer Ausführungsplan (Timeline + Queue-Strategie) und ein Business-Case-Template für Quota Increases.
**Fallstricke (≥2 spezifisch):**
- Das Modell empfiehlt, alle 8.000 Requests simultan zu senden ("parallel processing"), was sofort HTTP 429 Fehler auslöst und das System instabilisiert.
- Der Business Case für den CSM enthält keine Angabe zur erwarteten Token-Menge — ohne diese Information kann Langdock das Limit nicht sinnvoll hochsetzen.
**Anschluss-Szenario:** S-API-024

### S-API-024 BYOK-Kostentransparenz und Billing-Reconciliation

**Wann nutzen (Trigger):** Das Marketing-Team hat vor sechs Monaten auf BYOK (Bring Your Own Key) mit eigenem Azure-OpenAI-Vertrag umgestellt, um von Enterprise-Rabatten zu profitieren. Jetzt stellt die Finanzabteilung fest, dass zwei Rechnungen (Langdock-Plattformlizenz + Azure-Modellkosten) separat ankommen und niemand weiß, wie man sie für das Controlling zusammenführt. (Quelle: sources/12 Q117, A-26)
**Strategisches Ziel:** Ein Billing-Reconciliation-Prozess aufsetzen, der Langdock-Plattformkosten und BYOK-Modellkosten monatlich in einem einzigen Kosten-Dashboard zusammenführt.
**Hands-on Ergebnis:** Eine Prozessdokumentation für Finance und Marketing-Ops: Welche Daten kommen woher, wie werden sie gematcht, und welches Format liefert das monatliche Controlling-Report.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory, BYOK-Konfigurationsberatung
**Vorgehen (4 Schritte):**
1. Identifiziere die zwei Kostendatenquellen: (a) Langdock Usage Export API (enthält Token-Zählung pro User/Agent/Modell), (b) Azure Cost Management Portal (enthält tatsächliche USD-Kosten für Modell-Inferenz).
2. Definiere den Match-Key: Request-Timestamp + Modell-Name + approximative Token-Menge als Verknüpfungsschlüssel zwischen beiden Datenquellen.
3. Weise auf die Preispflege-Pflicht hin: im BYOK-Modus zeigt das Langdock-Dashboard geschätzte Kosten basierend auf manuell hinterlegten Token-Preisen — diese müssen bei jedem Azure-Preisupdate aktualisiert werden.
4. Skizziere das monatliche Reconciliation-Meeting: Finance + Marketing-Ops + IT, 30 Minuten, erster Werktag des Monats.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater. Wir nutzen Langdock mit BYOK (eigenem Azure-OpenAI-Key). Wir erhalten zwei separate Rechnungen: Langdock-Plattformlizenz und Azure-Modellkosten. Unser Controlling verliert den Überblick. Erkläre: Welche Daten liefert die Langdock Usage Export API? Wie matche ich diese mit den Azure-Kosten? Welche Fallstricke gibt es bei der BYOK-Preispflege im Langdock-Dashboard? Liefere einen Reconciliation-Prozessplan."
**Erwartetes Artefakt:** Eine Billing-Reconciliation-Prozessdokumentation (Datenquellen, Match-Key, Preispflege-Checkliste, Meeting-Template).
**Fallstricke (≥2 spezifisch):**
- Das Modell schlägt vor, Azure-Kosten direkt aus dem Langdock-Dashboard zu lesen — im BYOK-Modus zeigt das Dashboard nur geschätzte Kosten basierend auf manuell hinterlegten Preisen, nicht die tatsächliche Azure-Abrechnung.
- Der Reconciliation-Prozess wird als einmaliges Setup betrachtet und vergisst, dass Azure regelmäßig Preise ändert, was die manuell hinterlegten Token-Preise im Langdock-Admin veralten lässt.
**Anschluss-Szenario:** S-API-025

### S-API-025 API-Sicherheits-Audit vor Enterprise-Rollout

**Wann nutzen (Trigger):** Das Unternehmen plant, Langdock von einem 15-Personen-Piloten auf 200 Marketing-Mitarbeiter auszurollen. Der CISO verlangt vor dem Rollout ein formelles API-Sicherheits-Audit, das alle genutzten Endpoints, Authentifizierungsmethoden, Datenpfade und potenziellen Angriffsvektoren dokumentiert. (Quelle: sources/12 Q115, A-06)
**Strategisches Ziel:** Ein umfassendes API-Sicherheitsprofil für den Enterprise-Rollout erstellen, das die Anforderungen des CISO erfüllt und gleichzeitig keine Marketing-Projektverzögerung verursacht.
**Hands-on Ergebnis:** Ein API-Sicherheits-Audit-Dokument für den CISO, das alle genutzten Endpoints, Authentifizierungsmethoden, Datenpfade und Risikobewertungen enthält.
**Eingesetzte Langdock-Fähigkeit(en):** API Security Advisory, Deployment Advisory
**Vorgehen (5 Schritte):**
1. Inventarisiere alle genutzten API-Endpoints: Completion API, Knowledge Folder API, Usage Export API, Audit Logs API, Agent API — für jeden Endpoint: Zweck, Authentifizierungsmethode (Bearer Token), Datensensitivität.
2. Dokumentiere die Authentifizierungs-Architektur: Workspace-Level API-Keys, keine Client-Side-Exposition (CORS-Block), BFF-Pattern für alle Web-Integrationen.
3. Bewerte die Datenpfade: Welche Daten verlassen das Unternehmensnetz? (Prompts an Modell-Provider) Wo liegen sie? (EU-Hosting, Zero-Data-Retention Policy) Welche bleiben intern? (BYOC/BYOM-Szenarien).
4. Identifiziere residuale Risiken: API-Key-Rotation-Frequenz, Abwesenheit von IP-Whitelisting ohne Static-IP-Feature, Risiko bei kompromittierten Keys.
5. Formuliere eine Security-Empfehlung: Static IP aktivieren, 90-Tage-Key-Rotation mandatory, Audit Logs in SIEM integrieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein IT-Security-Auditor. Unser CISO braucht vor dem Enterprise-Rollout von Langdock auf 200 Nutzer ein API-Sicherheits-Audit-Dokument. Erstelle es. Dokumentiere: alle genutzten API-Endpoints und deren Zweck, die Authentifizierungsarchitektur (Bearer Token, BFF-Pattern, CORS-Block), die Datenpfade (EU-Hosting, Zero-Data-Retention), und residuale Risiken. Liefere abschließend 5 konkrete Sicherheitsempfehlungen. Formatiere formal wie ein IT-Sicherheitsbericht."
**Erwartetes Artefakt:** Ein formelles API-Sicherheits-Audit-Dokument (Endpoint-Inventar, Authentifizierungsarchitektur, Datenpfad-Analyse, Risikoübersicht, Empfehlungen).
**Fallstricke (≥2 spezifisch):**
- Der Audit-Bericht listet Risiken auf, ohne zwischen "akzeptablem Restrisiko bei Standardkonfiguration" und "kritischem Risiko ohne Sofortmaßnahme" zu unterscheiden — damit ist er für den CISO nicht entscheidungsfähig.
- Das Dokument behandelt die Zero-Data-Retention Policy als absolute Garantie, ohne darauf hinzuweisen, dass diese Policy modellabhängig ist und bei BYOC/BYOM separat mit dem jeweiligen Provider verifiziert werden muss.
**Anschluss-Szenario:** S-API-026
