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
