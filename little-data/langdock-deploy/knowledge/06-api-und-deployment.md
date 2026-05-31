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

Die meisten Marketing-Aktivitäten innerhalb von Langdock erfordern keine Programmierkenntnisse. Eine Marketing-Direktorin nutzt primär die Chat-Oberfläche, vorkonfigurierte Agenten und den Wissensordner. Dennoch gibt es strategische Wendepunkte, an denen das Wissen über die API (Application Programming Interface) und deren Bereitstellung (Deployment) geschäftskritisch wird. Dieser Berührungspunkt entsteht typischerweise an der Grenze zwischen manuellem Output und skalierter Automatisierung.

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

Langdock blockiert rigoros alle direkten Client-Side-Aufrufe an seine API. Das bedeutet, es ist architektonisch unmöglich, eine Anfrage direkt aus dem Webbrowser einer Nutzerin (via JavaScript/Frontend) an Langdock zu senden. Diese CORS-Blockierung ist kein Fehler, sondern ein absichtlicher Schutzmechanismus, um zu verhindern, dass die wertvollen API-Schlüssel im Quelltext der Website sichtbar sind und von Dritten ausgelesen werden können.

Für Marketing-Initiativen – wie zum Beispiel die Integration eines Langdock-gestützten Chatbots auf der Landingpage – erzwingt diese CORS-Posture ein sogenanntes Backend-for-Frontend (BFF) Pattern. Entwickler müssen zwingend einen eigenen Zwischen-Server (Proxy-Server oder Backend) aufsetzen.

Der Flow sieht dann so aus: Der Webbrowser des Kunden kommuniziert mit dem unternehmenseigenen Server (dem BFF). Dieser Server authentifiziert den Nutzer, hält den Langdock-API-Key sicher in seinen geschützten Umgebungsvariablen (Environment Variables) verborgen, und leitet die Anfrage erst dann stellvertretend an Langdock weiter. Dieses Architekturmuster garantiert höchste Sicherheit und erlaubt es dem Marketing-Team, eigene Filter, Rate Limits und Business-Logik vor die Langdock-Plattform zu schalten.

## 4 Deployment-Modelle (Multi-tenant SaaS / Single-tenant / BYOC / On-Prem)

Langdock passt sich den regulatorischen und technologischen Anforderungen an, indem es vier Bereitstellungsmodelle anbietet. Die Marketing-Direktorin muss diese Modelle kennen, da sie Budget, Geschwindigkeit und Compliance-Risiken direkt beeinflussen.

Das Standard-Modell ist **Multi-tenant SaaS**. Hierbei läuft Langdock auf geteilten Cloud-Ressourcen, garantiert aber EU-Hosting und DSGVO-Konformität. Dieses SaaS-Setup ist der schnellste Weg, um Workflows auszurollen, ideal für Agilitäts-fokussierte Teams.

Für Organisationen mit strengeren Isolations-Bedürfnissen gibt es **Single-tenant SaaS**. Hier erhält das Unternehmen eine dedizierte Instanz auf einer eigenen Subdomain. Daten und Rechenleistung sind physisch von anderen Kunden getrennt.

Besonders flexibel ist das **BYOC-Modell** (Bring Your Own Cloud / Key). Das Frontend läuft bei Langdock, aber das Unternehmen nutzt eigene Cloud-Verträge und API-Keys (z. B. auf Microsoft Azure). So behält man die volle Kontrolle über die Datenverarbeitung auf Modell-Ebene.

Für absolute maximale Kontrolle, typisch im Banking-Sektor, existiert das **On-Premises / VPC-Deployment**. Hier wird Langdock vollständig innerhalb der Firewall installiert. Diese On-Premises Isolation erlaubt komplette Air-Gapped-Umgebungen, ist aber mit erheblichem IT-Aufwand verbunden. Jedes dieser Deployment-Modelle wird durch den Enterprise-Support von Langdock aktiv begleitet, um einen reibungslosen Übergang zwischen den verschiedenen Infrastruktur-Ebenen zu gewährleisten. Die finale Entscheidung zwischen SaaS und On-Premises sollte immer in enger Abstimmung zwischen dem Marketing-Vorstand, dem Chief Information Security Officer (CISO) und dem IT-Operations-Team getroffen werden, um sowohl Agilität als auch maximale Compliance sicherzustellen.

## Static IP für Egress-Whitelisting

Ein häufiger Stolperstein in der Zusammenarbeit zwischen Marketing-Innovation und IT-Sicherheit (InfoSec) sind interne Datenbanken. Die Marketing-Direktorin möchte, dass ein Langdock-Agent Kundendaten aus dem internen CRM abfragt oder ein Workflow Kampagnen-Ergebnisse in das interne Data Warehouse schreibt. Die IT-Abteilung wird jedoch niemals erlauben, diese internen, geschäftskritischen Systeme ungeschützt für das offene Internet zugänglich zu machen.

Hier kommt die sogenannte "Static IP" (Statische IP-Adresse) ins Spiel. Langdock bietet Enterprise-Kunden eine dedizierte, garantierte und unveränderliche IP-Adresse an (z. B. `4.185.103.44`), von der aus sämtlicher ausgehender Datenverkehr (Egress) der Plattform – wie API-Calls oder Webhook-Requests – gesendet wird.

Dieses Setup ermöglicht das sogenannte "Egress-Whitelisting". Die Firewall-Administratoren des Unternehmens können eine hochpräzise Ausnahmeregel (Access Control List) erstellen: Die internen Systeme weisen alle Anfragen aus dem Internet ab, außer sie stammen exakt von dieser einen statischen Langdock-IP-Adresse.

So entsteht eine hochsichere, engmaschig überwachte Daten-Brücke. Das Marketing-Team kann modernste Cloud-KI-Workflows nutzen und nahtlos auf tiefe, On-Premises gelagerte Unternehmensdaten zugreifen, ohne dass die IT-Sicherheit eine Verwundbarkeit der Perimeter-Verteidigung befürchten muss. Dieses architektonische Feature ist oft das ausschlaggebende Argument, um Freigaben für komplexe Integrations-Szenarien zu erhalten.

## Rate Limits und wie man höhere anfragt

APIs sind mächtig, aber nicht unbegrenzt belastbar. Um die Plattform-Stabilität für alle Kunden zu garantieren und plötzliche Kostenexplosionen durch fehlgeleitete Skripte zu verhindern, setzt Langdock sogenannte Rate Limits (Nutzungs-Obergrenzen) ein. Die Marketing-Direktorin muss diese Limits in der Ressourcen-Planung für skalierte Kampagnen zwingend berücksichtigen.

Standardmäßig gelten harte Limits auf Workspace-Ebene, insbesondere für den API-Traffic. Typischerweise liegt das Default-Limit bei 500 Anfragen pro Minute (Requests Per Minute, RPM) und 60.000 generierten Tokens pro Minute (Tokens Per Minute, TPM). Für eine Chat-Interaktion ist dies völlig ausreichend. Wenn das Marketing jedoch einen Batch-Prozess startet – beispielsweise die Übersetzung und SEO-Optimierung von 10.000 Blog-Artikeln über das Wochenende –, werden diese Limits schnell erreicht, was zu "HTTP 429 Too Many Requests" Fehlern führt und den Workflow stoppt.

Zudem gibt es finanzielle Limits (Budgets). Workflows sind standardmäßig auf 25 Euro pro Lauf und Workspaces auf 500 Euro pro Monat limitiert. Ebenso existieren funktionale Grenzen, wie eine maximale Dateigröße von 256 MB für API-Uploads oder ein 100-Sekunden-Timeout für Non-Streaming-API-Antworten.

Wenn eine große Kampagne ansteht, muss das Team proaktiv handeln. Rate Limits sind keine unveränderlichen Naturgesetze. Über den Langdock-Enterprise-Support oder den zugewiesenen Customer Success Manager können temporäre oder permanente Erhöhungen (Quota Increases) angefragt werden. Dieser Prozess erfordert meist einen kurzen Business Case ("Wir verarbeiten in KW 42 unser PIM-Archiv") und die Bestätigung der Kostenübernahme, woraufhin die Limits im Backend entsprechend hochgesetzt werden.

## Advisory-Grenze (Little Data ruft KEINE APIs auf — beratet nur)

Bei der Planung von API-Integrationen und dem Entwurf komplexer Systemarchitekturen ist es essenziell, die operativen Grenzen des Langdock-Beraters "Little Data" zu verstehen. Die Marketing-Direktorin kann von "Little Data" wertvolle strategische Führung, konzeptionelle Schaltpläne und Best-Practice-Empfehlungen erwarten, aber keine aktive Code-Ausführung oder System-Veränderungen.

Dieses Rollenverständnis definiert die Advisory-Grenze (Beratungsgrenze): "Little Data" verfasst keine Produktions-Skripte für die IT, richtet keine Server ein und sendet niemals selbständig API-Anfragen an externe Systeme oder an die Langdock-Infrastruktur. Der Agent fungiert ausschließlich als strategischer Sparringspartner und Übersetzer zwischen den Business-Anforderungen des Marketings und der technischen Umsetzung.

Wenn beispielsweise ein Backend-for-Frontend (BFF) Pattern implementiert werden muss, wird "Little Data" die Architektur erklären, die CORS-Risiken benennen und ein High-Level-Briefing für das Entwicklerteam formulieren. Die eigentliche Programmierung und das Konfigurieren der Umgebungsvariablen müssen jedoch von den Ingenieuren des Unternehmens übernommen werden.

Ebenso wird "Little Data" keine Langdock-Konfigurationen (wie das Einrichten von Rate Limits, das Hinzufügen von BYOK-API-Schlüsseln oder das Whitelisting von IPs) über die Administrationsebene vornehmen. Der Agent liefert das "Warum" und das "Wie", strukturiert den Prozess für das Change Management und bereitet die Stakeholder-Kommunikation vor. Die exekutive Umsetzung bleibt stets beim menschlichen Operator. Dieses Architekturmuster garantiert höchste Sicherheit und verhindert, dass beratende KI unbeabsichtigt kritische Systemänderungen durchführt.

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
### S-API-011 Rate Limit Timeout im SEO-Batch Prozess
**Wann nutzen (Trigger):** Das SEO-Team übersetzt an jedem Wochenende 2.000 Blog-Artikel. Der Custom Script Workflow bricht regelmäßig mittendrin ab und gibt einen HTTP 524 (Timeout) Fehler zurück. Das Team ist frustriert, da die Hälfte der Artikel fehlt.
**Strategisches Ziel:** Einen stabilen asynchronen Prozess entwerfen, der das 100-Sekunden-Timeout von Langdock bei langen LLM-Prompts elegant umgeht.
**Hands-on Ergebnis:** Ein technisches Lösungs-Memo für das Data-Engineering-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory
**Vorgehen (3-5 Schritte):**
1. Analysiere das Timeout-Szenario gemeinsam mit Little Data.
2. Identifiziere den Engpass: Non-Streaming-Antworten über 100 Sekunden Dauer.
3. Fordere ein architektonisches Konzept an, das auf Server-Sent Events (SSE) Streaming oder asynchrone Webhooks setzt.
4. Formuliere das Memo für das IT-Team, das die exakten Langdock-Limitierungen aufschlüsselt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Backend-Architekt. Unser SEO-Team hat ein Skript geschrieben, das lange Blog-Übersetzungen über die Langdock API anfragt. Das Skript bricht nach 100 Sekunden mit 'HTTP 524' ab. Erkläre in einem Memo an unsere Entwickler, warum dieser Timeout bei Langdock greift. Skizziere eine Lösung, bei der die Entwickler entweder das SSE (Server-Sent Events) Streaming der API nutzen oder den Prompt zerkleinern müssen. Bleib konzeptionell, kein Code."
**Erwartetes Artefakt:** Ein technisches Lösungs-Memo (Architektur-Blueprint).
**Fallstricke (≥2 spezifisch):**
- Die KI rät fälschlicherweise dazu, das Timeout-Limit im Admin-Panel hochzusetzen, was bei Langdock (Hard Limit 100s) nicht möglich ist.
- Der Unterschied zwischen Rate Limit (500 RPM) und Latenz-Timeout (100s) wird in der Erklärung vermischt.
**Anschluss-Szenario:** S-API-012

### S-API-012 Key-Rotation Panik im Event-Marketing
**Wann nutzen (Trigger):** Ein Praktikant hat versehentlich einen Langdock API-Key auf einem öffentlichen Trello-Board gepostet. Die InfoSec-Abteilung fordert die sofortige Löschung des Keys, was aber die Lead-Scoring Automatisierung auf der laufenden Leitmesse lahmlegen würde.
**Strategisches Ziel:** Eine Downtime-freie Key-Rotation (Schlüsselerneuerung) planen, um die Security-Vorgaben zu erfüllen und gleichzeitig die Live-Automatisierung am Laufen zu halten.
**Hands-on Ergebnis:** Ein Incident Response Runbook für den Notfall.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, API Governance
**Vorgehen (3-5 Schritte):**
1. Beauftrage Little Data mit der Erstellung eines Best-Practice Key-Rotation Plans.
2. Definiere die Schritte zur Generierung eines zweiten (parallelen) Keys.
3. Skizziere den Rollout des neuen Keys auf dem Middleware-Server, bevor der alte gelöscht wird.
4. Verfasse die beruhigende Rückmeldung an InfoSec.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Incident Response Manager. Unser API-Key ist geleakt. InfoSec will den Key sofort löschen, aber dann bricht unser Messe-Lead-System zusammen. Schreibe ein Runbook für einen 'Zero-Downtime Key Rollover'. Erkläre den Entwicklern in 3 Schritten: 1. Neuen Key in Langdock generieren, 2. Environment Variables im Proxy-Server updaten, 3. Erst dann den kompromittierten Key in Langdock widerrufen. Verfasse zudem eine kurze, formelle Statusmeldung an InfoSec."
**Erwartetes Artefakt:** Incident Response Runbook.
**Fallstricke (≥2 spezifisch):**
- Das Runbook fordert das Verschlüsseln von Keys im Frontend, was bei Web-Apps keinen Sinn ergibt und das CORS-Konzept von Langdock ignoriert.
- Die Statusmeldung an InfoSec klingt zu flapsig und untergräbt das Vertrauen der IT.
**Anschluss-Szenario:** S-API-013

### S-API-013 CSV-Export über 30 MB (Data Analyst Absturz)
**Wann nutzen (Trigger):** Der CFO möchte das Q3-Usage-Export-CSV analysieren. Die Datei ist 85 MB groß (über eine Million Zeilen). Der Upload in den Langdock Data Analyst Agent schlägt fehl, da das File-Limit bei 30 MB liegt.
**Strategisches Ziel:** Eine Vorverarbeitungs-Pipeline definieren, um Big Data in Langdock-kompatible Häppchen zu zerlegen, ohne den Kontext zu verlieren.
**Hands-on Ergebnis:** Ein Preprocessing-Protokoll für das Data-Engineering Team.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Data Analyst Advisory
**Vorgehen (3-5 Schritte):**
1. Erkläre Little Data das 30-MB-File-Limit Problem beim Data Analyst.
2. Lass ein Konzept für Python/Pandas Preprocessing außerhalb von Langdock erarbeiten (z. B. Filterung nach Monat oder Team).
3. Entwirf ein Dashboard-Datenfluss-Diagramm.
4. Leite die Anleitung an den Daten-Analysten weiter.
**Beispiel-Prompt (DE, PTCF):**
> "Unser Langdock Usage-Export ist 85 MB groß und crasht den Data Analyst (30 MB Limit). Du bist ein Data Engineer Berater. Schreibe ein Preprocessing-Protokoll für unser Analytics-Team. Skizziere (ohne Code), wie sie die CSV-Datei lokal via Python Pandas nach Monaten stückeln oder unnötige Audit-Spalten entfernen sollten, bevor wir die Daten zur finalen Finanz-Analyse in den Langdock Agenten laden. Erkläre das 30-MB Limit klipp und klar."
**Erwartetes Artefakt:** Data Preprocessing Protokoll.
**Fallstricke (≥2 spezifisch):**
- Die KI empfiehlt, die Daten einfach über den Knowledge Folder (RAG) hochzuladen, obwohl XLSX/CSV-Dateien dort blockiert werden und nicht für tabellarische Analysen taugen.
- Das 60-Sekunden-Timeout des internen Python-Environments im Data Analyst wird bei der Analyse-Empfehlung ignoriert.
**Anschluss-Szenario:** S-API-014

### S-API-014 Salesforce-Schatten-IT stoppen
**Wann nutzen (Trigger):** Ein übereifriges Sales-Team hat Zapier genutzt, um Kundendaten direkt an die OpenAI-API zu senden. Der Betriebsrat (Compliance) schlägt Alarm wegen Daten-Exfiltration in die USA.
**Strategisches Ziel:** Den API-Traffic sofort in die EU-gehostete Langdock-Infrastruktur umleiten und die Vorteile der Langdock Integrations API als sichere "Zero-Retention" Alternative pitchen.
**Hands-on Ergebnis:** Eine Compliance-Entscheidungsvorlage für den Sales-Director.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, Integrations API
**Vorgehen (3-5 Schritte):**
1. Lege Little Data die Schatten-IT-Architektur (Salesforce -> Zapier -> OpenAI) dar.
2. Identifiziere die DSGVO- und Daten-Retention-Verstöße.
3. Skizziere die saubere Langdock-Architektur (Salesforce -> Langdock Integration Endpoint -> EU-Modell).
4. Erstelle ein Pitch-Deck Script, das Sicherheit mit besseren AI-Fähigkeiten kombiniert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Enterprise-Compliance-Berater. Unser Sales-Team schickt Kundendaten via Zapier an OpenAI (USA) – ein massiver DSGVO-Verstoß. Schreibe eine Entscheidungsvorlage für den Sales Director. Mache deutlich, dass wir diesen Flow stoppen müssen. Erkläre als Alternative die Langdock Integrations API: Wir hosten in der EU, haben Zero-Data-Retention und können trotzdem das neueste GPT-4o Modell nutzen. Der Ton muss bestimmend, aber lösungsorientiert sein."
**Erwartetes Artefakt:** Compliance-Entscheidungsvorlage.
**Fallstricke (≥2 spezifisch):**
- Das Memo vergisst das "Zero-Data-Retention" Argument, welches für den Betriebsrat essenziell ist (Langdock-Modelle trainieren nicht auf Kundendaten).
- Die KI rät fälschlicherweise dazu, Langdock als CRM-Ersatz zu nutzen, statt als Integrations-Layer.
**Anschluss-Szenario:** S-API-015

### S-API-015 Multi-Agent Delegation Architektur
**Wann nutzen (Trigger):** Das E-Commerce Team möchte eine Pipeline bauen: Ein Agent soll Produkt-Reviews aus dem Shop lesen, ein zweiter Agent analysiert das Sentiment, ein dritter schreibt automatisiert Reply-Entwürfe ins Zendesk.
**Strategisches Ziel:** Das Konzept der Multi-Agent-Orchestrierung via API zu strukturieren, ohne Endlosschleifen (Infinite Loops) zu provozieren.
**Hands-on Ergebnis:** Ein Multi-Agent Architektur-Diagramm als Text.
**Eingesetzte Langdock-Fähigkeit(en):** Agent API, Integrations API
**Vorgehen (3-5 Schritte):**
1. Beschreibe das 3-stufige Agenten-Set-up an Little Data.
2. Beauftrage eine Risikoanalyse hinsichtlich "Agent-Calling-Agent" Endlosschleifen.
3. Skizziere die Übergabe-Punkte (JSON Payloads) zwischen den Agenten.
4. Formuliere das Blueprint-Dokument für das Marketing-Ops Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lead Architect für AI. Wir wollen drei Langdock-Agenten hintereinanderschalten: Review-Reader -> Sentiment-Analyst -> Reply-Writer. Skizziere ein Architektur-Diagramm als Text. Wie geben die Agenten via API die Daten über strukturierten JSON-Output weiter? Erkläre unbedingt das Risiko von Endlosschleifen bei autonomen Agenten und wie wir ein 2.000-Step Limit in den Workflows konfigurieren, um Kosten-Explosionen zu verhindern."
**Erwartetes Artefakt:** Systemarchitektur-Diagramm als Markdown.
**Fallstricke (≥2 spezifisch):**
- Die KI schlägt vor, die Memory-Funktion von Langdock zu nutzen, ignoriert aber, dass Memory in der Agent API standardmäßig deaktiviert ist (Context muss im Payload übergeben werden).
- Das Risiko von API-Rate-Limits (500 RPM) bei parallel eintreffenden hunderten Reviews wird nicht im Design berücksichtigt.
**Anschluss-Szenario:** S-API-016

### S-API-016 Knowledge Folder File-Limit Error
**Wann nutzen (Trigger):** Die PR-Abteilung lädt jeden Tag 50 Presseclippings per API in den Wissensordner hoch. Nach 20 Tagen stoppt die API mit einem "Limit Exceeded" Fehler, weil der Ordner sein 1.000-Dateien-Limit erreicht hat.
**Strategisches Ziel:** Eine automatisierte Datei-Rotation (Lifecycle Management) etablieren, die alte Dateien per Delete-Endpoint entfernt.
**Hands-on Ergebnis:** Eine Knowledge Lifecycle Spezifikation.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge Folder API
**Vorgehen (3-5 Schritte):**
1. Analysiere das 1.000-Dateien Limit pro RAG-Ordner mit Little Data.
2. Fordere eine konzeptionelle Architektur für einen täglichen Bereinigungs-Job (CRON) an.
3. Spezifiziere, dass die List-API genutzt werden muss, um Dateien älter als X Tage zu finden und via Delete-API zu löschen.
4. Verfasse die Spezifikation für das Entwicklerteam.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein RAG-Operations Spezialist. Unsere PR-Abteilung hat das Limit von 1.000 Dateien im Wissensordner erreicht, unsere API-Uploads schlagen nun fehl. Schreibe eine Knowledge Lifecycle Spezifikation für die IT. Skizziere einen nächtlichen CRON-Job, der über die Knowledge Folder API alle Dokumente auflistet, die älter als 30 Tage sind, und sie über den Delete-Endpoint löscht. Liefere keinen Code, sondern erkläre die API-Logik."
**Erwartetes Artefakt:** Knowledge Lifecycle Spezifikation.
**Fallstricke (≥2 spezifisch):**
- Die KI empfiehlt, einfach einen zweiten Ordner anzulegen, was langfristig die Suche (Retrieval) verschlechtert und das Problem nur verschiebt.
- Die Asynchronität der Knowledge Folder API wird vergessen (Löschen/Uploaden triggert ein Re-Indexing, was Minuten dauern kann).
**Anschluss-Szenario:** S-API-017

### S-API-017 Custom Integration: Sandbox Timeout
**Wann nutzen (Trigger):** Das Ops-Team hat im "Custom Integration Builder" ein JavaScript-Snippet geschrieben, um ein gigantisches Excel-File von einer externen URL zu laden und zu verarbeiten. Das Skript bricht immer nach exakt 60 Sekunden ab.
**Strategisches Ziel:** Den Entwicklern das harte Runtime-Limit der Langdock JavaScript Sandbox erklären und eine Middleware-Lösung erzwingen.
**Hands-on Ergebnis:** Ein Integrations-Review-Memo.
**Eingesetzte Langdock-Fähigkeit(en):** Custom Integration Builder Advisory
**Vorgehen (3-5 Schritte):**
1. Erkläre das Timeout-Problem (60s) in der Custom Integration Sandbox.
2. Lass Little Data das Sandbox-Konzept (isolierte V8-Engine ohne langes Polling) dekonstruieren.
3. Erarbeite eine Architektur, bei der das Ops-Team die schweren Berechnungen auf einen eigenen Server (z. B. AWS Lambda) auslagert und Langdock nur noch das Resultat fetcht.
4. Schreibe das Review-Memo.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist System-Auditor. Unser Ops-Team versucht, riesige Excel-Dateien im Custom Integration Builder zu parsen. Das Skript stirbt regelmäßig nach exakt 60 Sekunden. Schreibe ein Review-Memo an das Team. Erkläre das harte 60-Sekunden Sandbox-Timeout von Langdock. Zeige auf, dass schwere Datenverarbeitung (Heavy Lifting) auf eine eigene Middleware ausgelagert werden muss und die Langdock Integration nur den fertigen JSON-Payload abrufen sollte."
**Erwartetes Artefakt:** Integrations-Review-Memo.
**Fallstricke (≥2 spezifisch):**
- Die KI rät dazu, `setTimeout` Schleifen in JavaScript zu nutzen, was in serverlosen Sandbox-Umgebungen nicht funktioniert.
- Die Größenbeschränkungen für externe Payload-Downloads (max MB) werden in der Empfehlung vergessen.
**Anschluss-Szenario:** S-API-018

### S-API-018 Egress-Routing: Interne API hinter VPN
**Wann nutzen (Trigger):** Eine neue Markenstimmen-API der Holding liegt hinter einem strengen Corporate VPN. Langdock kann die API nicht über das offene Internet erreichen (Connection Refused).
**Strategisches Ziel:** Die Netzwerkkonfiguration (Egress-Whitelisting) als Projekt definieren und das IT-Netzwerkteam beauftragen.
**Hands-on Ergebnis:** Ein Netzwerk-Konfigurations Ticket (Jira).
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory
**Vorgehen (3-5 Schritte):**
1. Schildere das VPN-Verbindungsproblem mit der internen API.
2. Nutze Little Data, um das Egress-Whitelisting der Langdock Static IP zu erklären.
3. Formuliere eine präzise Firewall-Anweisung für die Netzwerker.
4. Generiere den Ticket-Inhalt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Netzwerk-Architekt. Langdock muss mit unserer internen Brand-Voice-API sprechen, die hinter der Unternehmens-Firewall liegt und das VPN blockiert alle Anfragen. Erstelle ein präzises Jira-Ticket für unser Netzwerk-Team. Fordere das Egress-Whitelisting an. Erkläre, dass sie den Inbound HTTPS-Traffic auf Port 443 exakt für die garantierte Langdock Static IP öffnen müssen, um eine sichere Brücke zu schlagen."
**Erwartetes Artefakt:** Ein netzwerktechnisches Jira-Ticket.
**Fallstricke (≥2 spezifisch):**
- Verwechslung von Langdock API (wir rufen Langdock an) mit Langdock Egress (Langdock ruft uns an).
- Die KI schlägt ein unsicheres IPsec VPN vor, obwohl Langdock dieses Feature (außer bei vollständigem VPC/On-Prem) nicht nativ anbietet.
**Anschluss-Szenario:** S-API-019

### S-API-019 A/B Testing von LLMs über die Completion API
**Wann nutzen (Trigger):** Die Marketing-Direktorin ist unsicher, ob für die neue SEO-Kampagne das teure GPT-4o oder das günstigere Gemini Flash Modell genutzt werden soll.
**Strategisches Ziel:** Eine A/B-Testing Architektur entwerfen, bei der die Completion API dynamisch 50% der Anfragen an Modell A und 50% an Modell B routet.
**Hands-on Ergebnis:** Ein A/B Testing Architektur-Blueprint.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API
**Vorgehen (3-5 Schritte):**
1. Definiere das Ziel: Kosten vs. Qualitäts-Analyse durch A/B Testing.
2. Fordere von Little Data ein Konzept für ein Routing-Skript (BFF), das Langdocks Completion API nutzt.
3. Spezifiziere die Datenauswertung über die Usage Export API.
4. Dokumentiere das Setup.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Data Science Berater. Wir wollen für eine SEO-Massengenerierung testen, ob Gemini Flash ausreicht oder wir GPT-4o benötigen. Skizziere einen A/B-Testing Blueprint. Erkläre unseren Entwicklern, wie sie ihren Proxy (BFF) bauen müssen, um 50% der Calls via Langdock Completion API mit dem Parameter 'model=gemini-flash' und 50% mit 'model=gpt-4o' zu routen. Zeige, wie wir den ROI danach via Usage Export API analysieren."
**Erwartetes Artefakt:** A/B Testing Blueprint.
**Fallstricke (≥2 spezifisch):**
- Die KI schlägt vor, den Parameter "service_tier" zu verwenden, welcher bei Langdock durch das interne Routing ignoriert wird.
- Kosten für Embeddings (falls RAG involviert ist) werden im A/B-Test-Budget nicht berücksichtigt.
**Anschluss-Szenario:** S-API-020

### S-API-020 Token-Effizienz Audit für Agent Prompts
**Wann nutzen (Trigger):** Das Controlling meldet, dass Agent 'A' extrem hohe Input-Kosten erzeugt. Eine kurze Prüfung zeigt, dass der System-Prompt von Agent 'A' 12.000 Wörter lang ist, die bei jedem API-Aufruf als Input-Token berechnet werden.
**Strategisches Ziel:** Die Kosten durch eine konzeptionelle Prompt-Architektur-Änderung (Wissensordner vs. Inline-Prompting) drastisch senken.
**Hands-on Ergebnis:** Ein Prompt-Refactoring Guide.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, Usage Export API
**Vorgehen (3-5 Schritte):**
1. Identifiziere den Kostentreiber (überlanger System-Prompt in der API).
2. Nutze Little Data, um das Konzept des "Context Window Managements" zu erläutern.
3. Erarbeite eine Empfehlung: Statische Brand-Guidelines aus dem Prompt löschen und stattdessen via Knowledge Folder (RAG) anbinden, wo nur die relevanten Chunks Kosten verursachen.
4. Erstelle den Refactoring Guide für die Prompt-Ingenieure.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Kostenoptimierer. Ein Marketing-Team hat 12.000 Wörter an Markenrichtlinien fest in den System-Prompt eines Agenten geschrieben. Jeder API-Call ist extrem teuer. Schreibe einen Prompt-Refactoring Guide. Erkläre das Konzept von Input-Tokens. Begründe strategisch, warum sie diese Richtlinien aus dem Prompt löschen und stattdessen in den Langdock Wissensordner laden müssen, damit das RAG-System nur die benötigten 2.000-Zeichen-Chunks abruft."
**Erwartetes Artefakt:** Prompt-Refactoring Guide.
**Fallstricke (≥2 spezifisch):**
- Die KI empfiehlt fälschlicherweise das Caching-Feature der OpenAI-API, welches bei ständig wechselnden Chats kaum greift.
- Das Risiko, dass das RAG-System die Brand-Guidelines im Gegensatz zum harten Prompt manchmal nicht sauber abruft (Retrieval Miss), wird im Dokument verschwiegen.
**Anschluss-Szenario:** S-API-001
