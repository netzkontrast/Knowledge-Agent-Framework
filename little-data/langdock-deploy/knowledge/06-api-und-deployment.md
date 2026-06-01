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
**Wann nutzen (Trigger):** Julia Lenz (Marketing-Direktorin) kommt aus dem Q3-Review. Das Content-Team hat manuell 300 Produktbeschreibungen im UI generiert, aber für Q4 müssen 15.000 Artikel im PIM (Product Information Management) via Completion API aktualisiert werden. Die IT warnt vor API-Kosten und Rate Limits beim Batch-Lauf. (Quelle: sources/10 S-066, sources/12 Q119)
**Strategisches Ziel:** Das manuelle Copy-Paste-Bottleneck auflösen und eine automatisierte Architektur skizzieren, die weder die zum Planungszeitpunkt geltende Workspace-RPM-Grenze (Stand 2026-06 typischerweise rund 500 Requests/Minute — vor dem Lauf beim Customer Success Manager verifizieren) sprengt, noch das Budget explodieren lässt.
**Hands-on Ergebnis:** Ein technisches Architektur-Briefing (Backend-for-Frontend Konzept) für den Lead Developer.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory, Usage Export API
**Vorgehen (3-5 Schritte):**
1. Übergebe die exakten Parameter der Q4-Kampagne (15.000 Artikel, bestehendes PIM-System) an 'Little Data'.
2. Beauftrage den Agenten, eine Batch-Processing Architektur zu entwerfen, die zwingend einen Exponential-Backoff für HTTP 429 Fehler integriert.
3. Lass eine Kostenschätzung auf Basis der aktuellen Workspace-Budgets erstellen.
4. Formuliere ein Briefing, das der IT glasklar die Advisory-Grenze aufzeigt (Marketing liefert Konzept, IT schreibt Python-Code).
**Beispiel-Prompt (DE, PTCF):**
> "Little Data, wir haben ein massives Skalierungsproblem. Für den Q4-Launch müssen wir 15.000 Produkttexte via API aus Langdock generieren und ins PIM pushen. Die IT hat Angst vor Rate Limits und CORS-Problemen, wenn wir das direkt aus dem CMS triggern. Schreibe mir ein Architektur-Briefing für unseren Lead Developer. Erkläre das Backend-for-Frontend Pattern, wie wir die aktuell geltende Workspace-RPM-Grenze (ca. 500 Requests/Minute, vorab verifizieren) durch Batching respektieren und füge eine Warnung zum Non-Streaming-Timeout (ca. 100 Sekunden) bei langen Prompts hinzu — empfiehl Streaming als Gegenmaßnahme."
**Erwartetes Artefakt:** Technisches Briefing-Dokument (Markdown).
**Fallstricke (≥2 spezifisch):**
- Die Kostenschätzung verwechselt Langdock-Plattformkosten mit OpenAI-Inferenzkosten, was den CFO verärgern würde.
- Das Briefing driftet zu sehr ins Technische ab und vergisst, die strategische Kostenkontrolle (Workspace-Budgets) für das Marketing zu betonen.
**Anschluss-Szenario:** S-API-002

### S-API-002 CISO-Abwehr: Static IP und Egress-Whitelisting
**Wann nutzen (Trigger):** Der Chief Information Security Officer (CISO) blockiert im IT-Board die geplante Langdock-Anbindung (Egress-Whitelisting / Static IP) an die interne Kundendatenbank. Seine Begründung: "Wir öffnen unsere Datenbanken nicht für Cloud-Dienste aus dem Internet." (Quelle: sources/12 Q115, sources/12 Q126)
**Strategisches Ziel:** Die Compliance-Bedenken des CISO durch architektonische Fakten entkräften und den Go-Live der CRM-Integration sichern.
**Hands-on Ergebnis:** Ein Security-Dossier (One-Pager) zur Vorlage beim CISO.
**Eingesetzte Langdock-Fähigkeit(en):** Integrations API, Deployment Advisory
**Vorgehen (3-5 Schritte):**
1. Analysiere das Veto des CISO und isoliere das Kernproblem (Angst vor Ingress aus dem offenen Web).
2. Nutze Little Data, um das Konzept des Langdock Egress-Whitelisting und der dedizierten Static IP zu dekonstruieren (die konkrete IP-Adresse wird vom Langdock-Enterprise-Support pro Workspace zugewiesen — niemals eine erfundene Adresse in der ACL hinterlegen).
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
**Wann nutzen (Trigger):** Die Marketing-Direktorin wird vom CFO in die Pflicht genommen, weil die monatlichen KI-Kosten explodieren. Fünf verschiedene Abteilungen (SEO, PR, Social, Event, Content) nutzen Langdock, aber niemand weiß, wer wie viel Budget verbrennt — gefragt ist ein Chargeback über die Usage Export API. (Quelle: sources/12 Q124, research/50 A-01)
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
**Wann nutzen (Trigger):** Eine externe Digitalagentur hat vor zwei Jahren ein teures Python-Skript für automatisiertes Keyword-Clustering gebaut. Es nutzt die OpenAI API. Die Direktion will das Skript nun aus Datenschutzgründen via OpenAI-kompatiblem Drop-in-Replacement in die Langdock-Umgebung (EU-Hosting) überführen, ohne die Agentur für ein Rework bezahlen zu müssen. (Quelle: sources/12 Q117, research/50 A-03)
**Strategisches Ziel:** Den Entwicklern beweisen, dass die Migration auf Langdock ein triviales "Drop-In Replacement" ist und kein Budget-intensives Refactoring erfordert.
**Hands-on Ergebnis:** Ein Migrations-Guide für die Agentur.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory
**Vorgehen (3-5 Schritte):**
1. Kläre die Kompatibilität der Langdock Completion API mit dem OpenAI-Standard.
2. Erstelle einen kurzen Guide, der die zwei notwendigen Code-Änderungen (Base-URL und API-Key) visualisiert.
3. Weise darauf hin, dass einzelne OpenAI-proprietäre Parameter und Endpoints (z. B. die Assistants- oder Fine-Tuning-API) im Kompatibilitäts-Layer kein Äquivalent haben — diese Stellen müssen vor der Migration in einem Feature-Audit identifiziert werden.
4. Sende den Guide als klares Mandat an die Agentur.
**Beispiel-Prompt (DE, PTCF):**
> "Wir kündigen unseren direkten OpenAI-Vertrag und ziehen unser Python-Clustering-Skript zu Langdock um. Die Agentur behauptet, das dauert zwei Wochen. Erstelle einen prägnanten Migrations-Guide, der beweist, dass es sich um ein Drop-In Replacement handelt. Zeige auf, dass sie nur die Base-URL auf 'api.langdock.com/openai/eu/v1/chat/completions' ändern und den Bearer Token tauschen müssen. Sei höflich, aber lass keinen Zweifel daran, dass dieser Task maximal 30 Minuten dauern darf."
**Erwartetes Artefakt:** Ein technisches Mandat (Migrations-Guide).
**Fallstricke (≥2 spezifisch):**
- Der Agent schlägt vor, den Code umzuschreiben, um das Vercel AI SDK zu nutzen, was das Ziel (Zero-Code-Änderung) komplett verfehlt.
- Die regionale Endung in der Base-URL (eu vs. us) wird vergessen, was zu Compliance-Verstößen führen könnte.
**Anschluss-Szenario:** S-API-005

### S-API-005 RAG-Hygiene: Automatisierter Lifecycle für den Wissensordner
**Wann nutzen (Trigger):** Ein kürzlich gelaunchter Produkt-Agent liefert Kunden falsche technische Spezifikationen. Eine Analyse zeigt: Im Wissensordner liegen 500 veraltete PDFs aus dem Vorjahr, weil das Marketing-Team vergessen hat, sie via Knowledge Folder API zu löschen. (Quelle: sources/12 Q124, research/50 A-20)
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
**Wann nutzen (Trigger):** Der neue CTO möchte alle KI-Projekte auf Microsoft Azure konsolidieren. Die Marketing-Direktorin befürchtet, dass sie dadurch die komfortable Langdock-UI verliert und wieder auf langsame interne IT-Projekte angewiesen ist — der BYOC-Mittelweg ist die Steelman-Antwort auf das CTO-Anliegen. (Quelle: sources/12 Q117, research/50 A-26)
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
**Wann nutzen (Trigger):** Eine externe Web-Agentur schickt das Konzept für den neuen Lead-Gen Chatbot auf der Website. Im Architektur-Diagramm steht: `Browser -> fetch('api.langdock.com') -> Return` — ein direkter Frontend-Aufruf, der gegen die CORS-Posture verstößt und den API-Key offenlegt. (Quelle: sources/12 Q115, sources/10 S-072)
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
**Wann nutzen (Trigger):** Nach einem PR-Desaster auf Twitter verlangt die Geschäftsführung ein System, das Erwähnungen der Marke in Echtzeit per Webhook und Integrations API auf toxisches Sentiment prüft und das Crisis-Team sofort via Slack alarmiert. (Quelle: sources/10 S-049, sources/10 S-051)
**Strategisches Ziel:** Eine event-driven Architektur skizzieren, die über Webhooks und die Integrations API funktioniert.
**Hands-on Ergebnis:** Ein Architektur-Blueprint für eine Event-Driven-Pipeline.
**Eingesetzte Langdock-Fähigkeit(en):** Integrations API
**Vorgehen (3-5 Schritte):**
1. Definiere den Trigger (Social Media Listening Tool).
2. Nutze Little Data, um den Workflow zu skizzieren: Webhook-Eingang in Langdock -> Sentiment-Analyse -> API-Aufruf an Slack.
3. Berücksichtige die Limits des Custom Integration Builders (Custom-Code-Timeout in der Größenordnung von ~60 Sekunden — exakten Wert in der aktuellen Langdock-Doku verifizieren, da er sich ändern kann).
4. Dokumentiere das Setup für das Marketing-Ops Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Crisis-Comms Architekt. Wir brauchen ein Echtzeit-Alerting. Ein externes Social-Listening-Tool soll einen Webhook an Langdock senden, sobald wir erwähnt werden. Langdock analysiert das Sentiment und schickt bei 'Toxisch' einen Payload an die Slack API. Skizziere diese Architektur. Worauf müssen wir beim Custom Integration Builder achten? Erwähne speziell das Custom-Code-Timeout-Limit (rund 60 Sekunden, Wert vorab verifizieren)."
**Erwartetes Artefakt:** Ein Systemarchitektur-Diagramm als Text.
**Fallstricke (≥2 spezifisch):**
- Das Konzept vergisst die Authentifizierung des eingehenden Webhooks (Security Risk).
- Die KI empfiehlt, den Chat-Agenten zu nutzen, obwohl ein automatisierter Workflow (ohne UI) hier die korrekte Lösung ist.
**Anschluss-Szenario:** S-API-009

### S-API-009 Migration zur Agents API (Vercel AI SDK)
**Wann nutzen (Trigger):** Die IT-Abteilung meldet, dass eine ältere Agenten-/Assistants-Schnittstelle laut aktueller Deprecation-Ankündigung (Stand 2026-06 — exaktes Datum im Langdock-Changelog verifizieren) abgeschaltet wird und ein Rewrite der internen Tools notwendig ist. Das Marketing-Team fürchtet monatelange Downtimes. (Quelle: research/50 A-33, research/50 A-03)
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
**Wann nutzen (Trigger):** Ein Kunde macht von seinem "Recht auf Auskunft" (Art. 15 DSGVO) Gebrauch. Der Datenschutzbeauftragte verlangt über die Audit Logs API lückenlose Protokolle, ob Kundendaten über einen bestimmten Langdock-Agenten verarbeitet wurden. (Quelle: research/50 A-15, sources/12 Q135)
**Strategisches Ziel:** Die Audit Logs API nutzen, um rechtssichere, exportierbare Reports zu generieren.
**Hands-on Ergebnis:** Ein Prozess-Blueprint für Legal & Compliance.
**Eingesetzte Langdock-Fähigkeit(en):** Audit Logs API
**Vorgehen (3-5 Schritte):**
1. Verstehe die rechtliche Anforderung (Nachweisbarkeit von System-Aktivitäten).
2. Instruiere Little Data, den Abruf via Audit Logs API zu spezifizieren.
3. Berücksichtige die Pagination der Audit Logs API (Seitengröße in der Größenordnung weniger Dutzend Einträge pro Request — exakten Wert in der Langdock-API-Doku verifizieren; in jedem Fall ist eine Schleife über alle Seiten nötig).
4. Dokumentiere den Prozess für den Datenschutzbeauftragten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Compliance-Berater. Unser Datenschutzbeauftragter braucht einen Export aller System-Aktivitäten des letzten Monats wegen einer DSGVO-Anfrage. Wir müssen das über die Langdock Audit Logs API automatisieren. Schreibe einen Prozess-Guide für die IT. Erkläre zwingend, dass die API paginiert ist und nur eine begrenzte Seitengröße pro Request liefert (exakten Wert vorab verifizieren), sie müssen also eine Schleife über alle Seiten programmieren. Das Dokument muss formal und präzise sein."
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
5. Weise auf die Budget-Grenzen hin: das Per-Workflow-Limit liegt standardmäßig bei ca. 25 Euro pro Lauf, das Workspace-Budget bei ca. 500 Euro pro Monat (Stand 2026-06, im Admin erhöhbar — aktuelle Werte vorab verifizieren) — bei großen Jobs müssen beide vor dem Lauf angepasst und ein optionales Per-Execution-Limit gegen Endlosschleifen gesetzt werden.
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

### S-API-026 Streaming API für Echtzeit-KPI-Dashboards

**Wann nutzen (Trigger):** Das Marketing-Ops-Team hat ein internes Dashboard gebaut, das KI-generierte Textzusammenfassungen anzeigt — etwa tägliche Performance-Kommentare zu Kampagnen-KPIs. Bisher erscheint der gesamte Text erst nach 8–12 Sekunden auf einmal, was sich für Nutzer träge anfühlt. Die Direktorin fragt, ob Streaming die Nutzererfahrung verbessern kann. (Quelle: sources/12 Q108, A-36)
**Strategisches Ziel:** Die wahrgenommene Antwortgeschwindigkeit von KI-Texten im internen Dashboard durch Server-Sent Events (SSE) auf unter 1 Sekunde Time-to-First-Token senken und das Non-Streaming-Timeout-Risiko eliminieren.
**Hands-on Ergebnis:** Ein Architektur-Konzept für die IT: Wie streamt das interne Backend SSE-Chunks vom Langdock Completion-Endpoint durch zum Browser, und welche Fehlerbehandlung ist für unterbrochene Streams nötig.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API (Streaming), Advisory
**Vorgehen (4 Schritte):**
1. Erkläre den Unterschied: Non-Streaming wartet auf den vollständigen Token-Output und riskiert das 100-Sekunden-Timeout; Streaming sendet Token-für-Token via Server-Sent Events (SSE) und hat kein Gesamt-Timeout.
2. Beschreibe den serverseitigen Durchreicheprozess: das interne BFF-Backend öffnet eine SSE-Verbindung zum Langdock-Completion-Endpoint und leitet jeden empfangenen Chunk sofort an den Browser weiter — kein Puffern.
3. Definiere die Fehlerbehandlung: bei Verbindungsabbruch nach Beginn des Streams muss die UI den unvollständigen Text klar als abgebrochen markieren, nicht als fertig; ein "Retry"-Button ist Pflicht.
4. Weise auf die Browser-Limit-Falle hin: ältere HTTP/1.1-Browser erlauben maximal 6 gleichzeitige SSE-Verbindungen pro Domain — bei mehreren Dashboard-Kacheln kann dies zu Queue-Effekten führen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Backend-Architekt. Unser internes Marketing-Dashboard soll KI-Kommentare zu Kampagnen-KPIs per Streaming anzeigen, statt 10 Sekunden auf den vollen Text zu warten. Erkläre, wie wir den Langdock Completion-Endpoint im Streaming-Modus via Server-Sent Events nutzen. Wie reicht unser Node.js-BFF die SSE-Chunks zum Browser durch? Nenne das 100-Sekunden-Timeout-Risiko bei Non-Streaming und erkläre die Fehlerbehandlung bei abgebrochenen Streams. Liefere ein Architektur-Konzept als strukturierte Stichpunktliste."
**Erwartetes Artefakt:** Ein Architektur-Konzept (SSE-Datenfluss, Fehlerbehandlung, Browser-Limits) als IT-Briefing.
**Fallstricke (≥2 spezifisch):**
- Das Konzept empfiehlt, den Stream direkt vom Browser an Langdock zu öffnen — dies scheitert an der CORS-Posture von Langdock und legt den API-Key im Frontend offen.
- Die Fehlerbehandlung wird vergessen: ein abgebrochener Stream hinterlässt einen halb fertigen Text im UI, den Nutzer fälschlicherweise als vollständige KI-Antwort interpretieren.
**Anschluss-Szenario:** S-API-027

### S-API-027 Multi-Region-Deployment für DACH und EU-Zweigstellen

**Wann nutzen (Trigger):** Das Unternehmen hat Niederlassungen in Deutschland, Österreich und der Schweiz sowie einer Schweizer Tochtergesellschaft, die DSG-konform arbeiten muss. Die IT fragt, ob Langdock-Daten regionenübergreifend fließen dürfen oder ob separate Workspace-Instanzen nötig sind. (Quelle: sources/12 Q126, A-17)
**Strategisches Ziel:** Eine Multi-Region-Deployment-Strategie definieren, die sowohl DSGVO (Deutschland, Österreich) als auch DSG Schweiz (Bundesgesetz über den Datenschutz) erfüllt, ohne unnötig mehrere Workspace-Instanzen zu betreiben.
**Hands-on Ergebnis:** Eine Entscheidungsvorlage für IT und Datenschutzbeauftragte: ein Workspace vs. separater CH-Workspace, mit Vor-/Nachteilen und regulatorischer Begründung.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, Advisory
**Vorgehen (4 Schritte):**
1. Kläre den regulatorischen Rahmen: EU-Hosting in Frankfurt deckt DSGVO für DE und AT ab; die Schweiz ist kein EU-Mitglied, aber der EDÖB (Eidgenössischer Datenschutz- und Öffentlichkeitsbeauftragter) erkennt die EU als adäquates Schutzniveau an — Standardvertragsklauseln sind der übliche Transfermechanismus.
2. Bewerte die Ein-Workspace-Option: solange keine personenbezogenen CH-Kundendaten verarbeitet werden, ist ein gemeinsamer EU-Workspace für alle DACH-Entitäten vertretbar — Kostenvorteil und einfachere Administration.
3. Bewerte die Zwei-Workspace-Option: wenn die CH-Tochter personenbezogene Daten im Workspace verarbeitet, kann ein separater CH-Workspace mit dediziertem EU-Hosting-Nachweis die Nachweislast gegenüber dem EDÖB vereinfachen.
4. Empfehle einen Entscheidungsbaum: Enthält der Workspace personenbezogene Daten von CH-Kunden? Nein → ein Workspace reicht. Ja → DSB und Rechtabteilung einbeziehen, Standardvertragsklauseln prüfen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Datenschutz-Berater für DACH-Unternehmen. Wir haben Marketing-Teams in DE, AT und einer Schweizer Tochtergesellschaft. Alle nutzen denselben Langdock-Workspace. Ist das DSGVO- und DSG-Schweiz-konform? Wann brauchen wir separate Instanzen? Erkläre die Rolle des EDÖB-Adäquanzentscheids und der Standardvertragsklauseln. Liefere eine Entscheidungsvorlage mit Empfehlung und regulatorischer Begründung."
**Erwartetes Artefakt:** Eine Entscheidungsvorlage (Ein-Workspace vs. Multi-Workspace, regulatorische Begründung, Empfehlung).
**Fallstricke (≥2 spezifisch):**
- Das Modell behandelt die Schweiz wie einen EU-Mitgliedstaat und vergisst, dass CH eigene DSG-Anforderungen hat, die nicht automatisch durch DSGVO-Konformität erfüllt sind.
- Die Empfehlung verschweigt, dass der EDÖB-Adäquanzentscheid jederzeit revidiert werden kann — Unternehmen sollten nicht dauerhaft darauf aufbauen, ohne Standardvertragsklauseln als Backup zu haben.
**Anschluss-Szenario:** S-API-028

### S-API-028 API-Versions-Management und Deprecation-Planung

**Wann nutzen (Trigger):** Das Entwicklungsteam hat erfahren, dass Langdock die ältere Assistants-API-Version in sechs Monaten abschaltet. Gleichzeitig laufen drei interne Tools auf dieser alten Version. Die Marketing-Direktorin will wissen, wie sie ein strukturiertes Deprecation-Management aufsetzen kann, das solche Überraschungen künftig verhindert. (Quelle: S-API-009, A-03)
**Strategisches Ziel:** Einen systematischen API-Versions-Management-Prozess etablieren, der Deprecation-Ankündigungen frühzeitig erkennt, Migrations-Aufwände abschätzt und die betroffenen Teams rechtzeitig informiert.
**Hands-on Ergebnis:** Ein Deprecation-Management-Framework (Inventar, Monitoring-Prozess, Migrations-Playbook) für IT und Marketing-Ops.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, Deployment Advisory
**Vorgehen (4 Schritte):**
1. Erstelle ein API-Versions-Inventar: welche Langdock-API-Versionen nutzen welche internen Tools, seit wann, und welche Features sind versions-spezifisch?
2. Definiere ein Deprecation-Monitoring: Langdock-Changelog (Changelog-URL oder Developer-Newsletter) wöchentlich auf Deprecation-Notices prüfen; Verantwortlichen im IT-Team benennen.
3. Entwickle ein Migrations-Scoring: für jedes betroffene Tool — Nutzungsfrequenz × Abhängigkeitstiefe × geschätzter Migrationsaufwand = Prioritäts-Score.
4. Plane den Migrations-Workflow: Staging-Umgebung auf neuer API-Version testen, parallelen Betrieb für 4 Wochen, dann Cutover mit Rollback-Option.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein IT-Change-Manager. Langdock hat angekündigt, eine API-Version in 6 Monaten abzuschalten. Wir haben 3 interne Tools, die sie nutzen. Erstelle ein Deprecation-Management-Framework: (1) API-Inventar-Template, (2) Monitoring-Prozess für zukünftige Deprecations, (3) Migrations-Playbook mit Prioritäts-Scoring. Erkläre, was bei der Migration von der alten auf die neue Agents API technisch zu beachten ist. Tonfall: operativ, nicht alarmistisch."
**Erwartetes Artefakt:** Ein Deprecation-Management-Framework (Inventar-Template, Monitoring-Prozess, Migrations-Playbook).
**Fallstricke (≥2 spezifisch):**
- Das Framework ignoriert, dass Langdock typischerweise eine Übergangsperiode von mehreren Monaten gewährt — das Team reagiert panisch statt geplant.
- Das Migrations-Playbook empfiehlt den direkten Cutover ohne Staging-Phase, was bei produktiven Tools zu ungeplanten Ausfällen führt.
**Anschluss-Szenario:** S-API-029

### S-API-029 Intranet-Chatbot via Langdock Agent API

**Wann nutzen (Trigger):** Das interne Kommunikationsteam möchte auf dem Unternehmens-Intranet einen "Marketing-Assistenten" einbetten, den alle 200 Mitarbeiter nutzen können, um Brand-Guidelines, aktuelle Kampagnendetails und FAQ zu Marketing-Prozessen abzufragen — ohne die Langdock-UI selbst nutzen zu müssen. (Quelle: sources/10 S-099, A-36)
**Strategisches Ziel:** Einen sicheren, unternehmensweiten Intranet-Chatbot auf Basis der Langdock Agent API aufbauen, der Zugriff auf aktuelle Marketing-Wissensbasis bietet und den API-Key niemals dem Browser exponiert.
**Hands-on Ergebnis:** Ein Integrationskonzept für den Intranet-Chatbot: Authentifizierungsarchitektur, BFF-Pattern, Wissensordner-Anbindung und Nutzerverwaltung.
**Eingesetzte Langdock-Fähigkeit(en):** Agent API, Knowledge Folder API, API Security Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Architektur: Intranet-Frontend → unternehmenseigener BFF-Server (mit SSO-Authentifizierung via SAML/OIDC) → Langdock Agent API → Wissensordner mit Brand-Guidelines und Kampagnendokumentation.
2. Kläre die Nutzerauthentifizierung: nur Mitarbeiter mit aktivem SSO-Login dürfen den BFF-Proxy nutzen; der Langdock API-Key bleibt ausschließlich im BFF-Server in Umgebungsvariablen.
3. Spezifiziere den Wissensordner-Setup: Brand-Guidelines (PDF), FAQ-Dokumente (Markdown), Kampagnenbriefings (wöchentlich via Knowledge Folder API aktualisiert) — alle Dokumente werden im gleichen Langdock-Wissensordner gebündelt, den der Chatbot-Agent nutzt.
4. Definiere Nutzungsgrenzen: Rate Limiting auf BFF-Ebene (max. 20 Requests pro Nutzer pro Stunde), um API-Kosten-Ausreißer durch einzelne Heavy-User zu verhindern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Enterprise-Architekt. Wir wollen einen internen Chatbot auf unserem Intranet bauen, der auf unseren Langdock-Marketing-Agenten zugreift. 200 Mitarbeiter sollen ihn nutzen, ohne direkt Langdock zu öffnen. Beschreibe die vollständige Architektur: SSO-Authentifizierung, BFF-Pattern, Wissensordner-Anbindung und Rate Limiting. Erkläre explizit, warum direkte Browser-zu-Langdock-Aufrufe nicht möglich sind. Liefere ein Architekturdiagramm als Textform."
**Erwartetes Artefakt:** Ein Enterprise-Integrationskonzept (Authentifizierungsarchitektur, BFF-Design, Wissensordner-Setup, Rate-Limiting-Strategie).
**Fallstricke (≥2 spezifisch):**
- Das Konzept verzichtet auf SSO-Integration und empfiehlt stattdessen eigene Username/Passwort-Verwaltung — dies widerspricht typischen Enterprise-Sicherheitsrichtlinien und schafft ein zusätzliches Credential-Management-Problem.
- Der BFF-Server implementiert kein Rate Limiting auf Nutzerebene; ein einziger Heavy-User kann den gesamten API-Kostenrahmen des Unternehmens überschreiten.
**Anschluss-Szenario:** S-API-030

### S-API-030 Webhook-Empfänger-Architektur für externe Trigger

**Wann nutzen (Trigger):** Ein E-Commerce-Team möchte, dass Langdock automatisch einen Produkttext generiert, sobald ein neues Produkt im PIM-System angelegt wird. Das PIM kann Webhooks senden, aber das Team weiß nicht, wie man einen sicheren Webhook-Empfänger auf der Langdock-Seite einrichtet und absichert. (Quelle: sources/10 S-094, S-072)
**Strategisches Ziel:** Eine sichere Webhook-Receiver-Architektur skizzieren, die externe Ereignisse (PIM-Neuanlage) in Langdock-Workflow-Aufrufe umwandelt — mit Authentifizierung des eingehenden Webhooks und Fehlertoleranz.
**Hands-on Ergebnis:** Ein Webhook-Receiver-Architektur-Konzept für die IT: Signaturprüfung, idempotente Verarbeitung, Fehlerbehandlung bei Langdock-Ausfällen.
**Eingesetzte Langdock-Fähigkeit(en):** Integrations API, Deployment Advisory
**Vorgehen (4 Schritte):**
1. Beschreibe die Webhook-Empfänger-Architektur: PIM sendet HTTP POST an unternehmenseigenen Webhook-Receiver-Endpunkt, der den eingehenden Request authentifiziert (HMAC-SHA256-Signaturprüfung mit einem im PIM und im Server hinterlegten Shared Secret).
2. Erkläre idempotente Verarbeitung: PIM-Systeme können Webhooks bei Netzwerkproblemen mehrfach senden — der Receiver muss anhand der Ereignis-ID prüfen, ob dieser Event bereits verarbeitet wurde, und Duplikate verwerfen.
3. Definiere den Langdock-Aufruf: nach erfolgreicher Webhook-Validierung sendet der Receiver eine Anfrage an den Langdock Completion- oder Agent-Endpoint, inklusive der relevanten Produktdaten aus dem Webhook-Payload.
4. Plane die Fehlerbehandlung: bei Langdock-Timeout oder 429-Fehler wird der Job in eine Retry-Queue gelegt (max. 3 Versuche mit Exponential-Backoff); nach dreimaligem Fehlschlag Alert an Marketing-Ops.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Backend-Architekt. Unser PIM soll bei jedem neuen Produkt einen Webhook senden, der in Langdock eine Produkttext-Generierung auslöst. Skizziere die vollständige Webhook-Receiver-Architektur: Wie prüfen wir die Echtheit des eingehenden Webhooks (HMAC-Signatur)? Wie verhindern wir doppelte Verarbeitung (Idempotenz)? Was passiert bei einem Langdock-Ausfall — Retry-Queue? Liefere ein technisches Konzept als strukturierten Text."
**Erwartetes Artefakt:** Ein Webhook-Receiver-Architektur-Konzept (Signaturprüfung, Idempotenz, Fehlerbehandlung, Retry-Queue).
**Fallstricke (≥2 spezifisch):**
- Das Konzept vergisst die Webhook-Authentifizierung und akzeptiert jeden eingehenden POST — dies erlaubt es Angreifern, beliebig viele Langdock-Requests auf Unternehmenskosten auszulösen.
- Idempotenz wird nicht implementiert: bei Netzwerkproblemen sendet das PIM den gleichen Webhook dreimal und erzeugt dreifach-duplizierte Produkttexte im System.
**Anschluss-Szenario:** S-API-031

### S-API-031 Async-Batch-Job-Muster für nächtliche Massenverarbeitung

**Wann nutzen (Trigger):** Das SEO-Team will jeden Sonntag 500 Blog-Artikel auf veraltete Keyword-Dichten und Metadescriptions prüfen und aktualisieren. Die Verarbeitung soll vollautomatisch über Nacht laufen, ohne dass jemand auf die Fertigstellung wartet oder einen Browser offen hält. (Quelle: sources/12 Q119, sources/10 S-066)
**Strategisches Ziel:** Ein asynchrones Batch-Job-Muster definieren, das große Mengen an Langdock-API-Requests zuverlässig und kostenoptimiert über Nacht verarbeitet, Fortschritt protokolliert und Fehler ohne manuellen Eingriff selbst behebt.
**Hands-on Ergebnis:** Ein Architektur-Briefing für die IT: Job-Orchestrierung, asynchrone Statusverfolgung, Checkpoint-Mechanismus und morgendliches Ergebnis-Reporting.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory
**Vorgehen (4 Schritte):**
1. Beschreibe die Job-Orchestrierung: ein Cron-Job (Sonntagabend 22:00 Uhr) liest alle 500 Artikel-IDs aus der Datenbank und stellt sie in eine persistente Job-Queue (z. B. Redis- oder Datenbankbasiert).
2. Erkläre den Worker-Prozess: ein Worker-Prozess zieht Jobs aus der Queue, sendet die Langdock-API-Anfrage, schreibt das Ergebnis zurück in die Datenbank und markiert den Job als erledigt — maximal 10 parallele Worker, um die 500-RPM-Grenze zu respektieren.
3. Definiere den Checkpoint-Mechanismus: jeder verarbeitete Job wird sofort in der Datenbank als "done" markiert; bei Systemabsturz kann der Job morgens am letzten Checkpoint fortgesetzt werden, ohne von vorne zu starten.
4. Plane das morgendliche Reporting: um 07:00 Uhr generiert ein automatischer Report via Usage Export API die Token-Kosten des Batch-Jobs und listet alle fehlgeschlagenen Jobs auf — zugestellt per E-Mail an Marketing-Ops.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Job-Orchestrierungs-Architekt. Wir wollen jeden Sonntag 500 Blog-Artikel via Langdock API nachts automatisch prüfen und aktualisieren. Erkläre das Async-Batch-Job-Muster: Cron-Trigger, Job-Queue, Worker-Prozesse mit Rate-Limit-Kontrolle, Checkpoint-Mechanismus bei Absturz, und morgendliches Fehler-Reporting via Usage Export API. Das System muss ohne menschliche Überwachung in der Nacht auskommen. Liefere das Konzept als Architektur-Briefing."
**Erwartetes Artefakt:** Ein Architektur-Briefing (Job-Queue, Worker-Prozesse, Checkpoint, morgendliches Reporting).
**Fallstricke (≥2 spezifisch):**
- Das Konzept verwendet ein synchrones Muster (warte auf jede API-Antwort, bevor du weitermachst) statt asynchroner Worker — bei 500 Artikeln dauert dies Stunden statt Minuten.
- Es gibt keinen Checkpoint-Mechanismus: bei einem Systemabsturz um 02:00 Uhr müssen alle bereits verarbeiteten 300 Artikel nochmals verarbeitet werden, was Kosten verdoppelt.
**Anschluss-Szenario:** S-API-032

### S-API-032 Fehlerbehandlung und Retry-Logik — Beratungskonzept

**Wann nutzen (Trigger):** Nach dem ersten Produktionseinsatz der Langdock-API meldet das Entwicklungsteam sporadische Fehler: HTTP 429 (Rate Limit), gelegentliche HTTP 500 (Server Error) und Verbindungs-Timeouts. Das Team bittet um ein strukturiertes Fehlerbehandlungs-Konzept, das die Direktorin als Fachbriefing beauftragen soll. (Quelle: sources/12 Q119, S-API-001)
**Strategisches Ziel:** Ein vollständiges Fehlerbehandlungs-Konzept für Langdock-API-Integrationen erarbeiten, das alle relevanten Fehlerklassen abdeckt, Exponential-Backoff korrekt einsetzt und vermeidet, dass ein einzelner Fehler den gesamten Workflow zum Absturz bringt.
**Hands-on Ergebnis:** Ein Fehlerbehandlungs-Leitfaden für das Entwicklungsteam, der alle Fehlerklassen, Retry-Strategien und Monitoring-Hooks beschreibt.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, Completion API
**Vorgehen (4 Schritte):**
1. Klassifiziere die Fehlertypen: HTTP 429 (transient, sofort retrybar nach Backoff), HTTP 500/503 (transient, nach kurzer Wartezeit retrybar), HTTP 400/401/403 (permanent, kein Retry — Problem im Request selbst), Verbindungs-Timeout (ambiguous — Request möglicherweise angekommen, daher idempotente Requests empfohlen).
2. Beschreibe Exponential-Backoff: bei HTTP 429 zunächst 1 Sekunde warten, dann 2, dann 4, dann 8 — maximal 3 Versuche; bei HTTP 429 den `Retry-After`-Header auslesen, falls vorhanden.
3. Erkläre Circuit-Breaker-Muster: nach fünf aufeinanderfolgenden Fehlern innerhalb einer Minute den Circuit "öffnen" (alle Requests pausieren für 60 Sekunden) und danach mit einem Test-Request prüfen, ob der Service wieder erreichbar ist.
4. Definiere Monitoring-Hooks: jeder Retry und jede Circuit-Breaker-Aktivierung wird geloggt; bei mehr als 10 Retries pro Stunde automatisch eine Alert-E-Mail an Marketing-Ops senden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Resilience-Engineer. Unsere Langdock-API-Integration hat sporadische 429- und 500-Fehler sowie Timeouts. Erstelle einen Fehlerbehandlungs-Leitfaden für unser Entwicklungsteam. Erkläre: (1) Fehlerklassifikation — welche Fehler sind retrybar? (2) Exponential-Backoff-Strategie mit konkreten Wartezeiten, (3) Circuit-Breaker-Muster, (4) Monitoring-Hooks für automatische Alerts. Liefere das Konzept als strukturierten Leitfaden."
**Erwartetes Artefakt:** Ein Fehlerbehandlungs-Leitfaden (Fehlerklassen, Retry-Strategie, Circuit-Breaker, Monitoring-Hooks).
**Fallstricke (≥2 spezifisch):**
- Das Konzept empfiehlt, auch HTTP-400-Fehler zu retrien — dies ist sinnlos und verschwendet Rate-Limit-Quota, da HTTP 400 auf einen fehlerhaften Request hindeutet, der sich durch Wiederholung nicht verbessert.
- Der Retry-Mechanismus ignoriert Idempotenz: bei einem Verbindungs-Timeout könnte der erste Request bereits verarbeitet worden sein — blindes Retry erzeugt doppelte Ausgaben.
**Anschluss-Szenario:** S-API-033

### S-API-033 API-Monitoring mit Langfuse und Datadog

**Wann nutzen (Trigger):** Das Marketing-Ops-Team betreibt mehrere produktive API-Integrationen und hat nach einem unbeobachteten Qualitätsproblem (der Brand-Voice-Agent lieferte eine Woche lang schlechte Outputs, ohne dass jemand es bemerkte) beschlossen, ein vollständiges API-Monitoring einzurichten. (Quelle: A-36, A-34)
**Strategisches Ziel:** Eine Monitoring-Strategie für Langdock-API-Integrationen definieren, die sowohl technische API-Gesundheit (Latenz, Fehlerrate) als auch inhaltliche Qualität (Output-Drift) kontinuierlich überwacht und bei Auffälligkeiten automatisch eskaliert.
**Hands-on Ergebnis:** Ein Monitoring-Konzept mit Toolauswahl (Langfuse für LLM-spezifisches Tracing, Datadog/Grafana für Infrastruktur-Metriken) und definierten Alerting-Schwellenwerten.
**Eingesetzte Langdock-Fähigkeit(en):** Audit Logs API, Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Unterscheide die zwei Monitoring-Schichten: Infrastruktur-Monitoring (Latenz, Fehlerrate, Verfügbarkeit) über Datadog oder Grafana; LLM-spezifisches Qualitäts-Monitoring (Output-Konsistenz, Prompt-Injection-Erkennung, Token-Kosten pro Request) über Langfuse oder ein ähnliches LLM-Observability-Tool.
2. Definiere die Key-Metriken: P95-Latenz unter 6 Sekunden, Fehlerrate unter 1 %, Token-Kosten pro Request-Typ im definierten Band, monatlicher Gesamtverbrauch unter Budget-Schwelle.
3. Skizziere den Datenfluss: Langdock Audit Logs API täglich → Datadog-Ingest-API; Usage Export API monatlich → Power BI; LLM-Tracing via Langfuse-SDK direkt im BFF-Server instrumentiert.
4. Definiere Alerting-Regeln: Fehlerrate über 2 % für 5 Minuten → PagerDuty-Alert; Token-Kosten an einem Tag über 150 % des Tagesdurchschnitts → E-Mail an Marketing-Ops; P95-Latenz über 10 Sekunden für 15 Minuten → Slack-Alert #ki-monitoring.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Platform-Engineering-Berater. Unsere Langdock-API-Integrationen laufen ohne Monitoring — wir bemerken Qualitätsprobleme erst Tage später. Empfehle eine Monitoring-Strategie: Welche Metriken sind für LLM-APIs kritisch? Wie nutzen wir Langfuse für LLM-Tracing und Datadog für Infrastruktur-Metriken? Definiere konkrete Alerting-Schwellenwerte. Erkläre, wie Audit Logs API und Usage Export API als Datenquellen eingebunden werden. Liefere das Konzept als strukturiertes Monitoring-Design."
**Erwartetes Artefakt:** Ein Monitoring-Design-Dokument (Schichten, Metriken, Datenfluss, Alerting-Regeln).
**Fallstricke (≥2 spezifisch):**
- Das Monitoring erfasst nur technische Metriken (Latenz, Fehler) und ignoriert Qualitäts-Drift — ein Agent kann technisch einwandfrei laufen und trotzdem inhaltlich degradieren.
- Langfuse wird als vollständiger Ersatz für Datadog positioniert — tatsächlich sind beide Tools komplementär: Langfuse für LLM-Traces, Datadog für Infrastruktur.
**Anschluss-Szenario:** S-API-034

### S-API-034 Langdock Search API für unternehmensweites Q&A-System

**Wann nutzen (Trigger):** Das Wissensmanagemant-Team will ein unternehmensweites Q&A-System aufbauen: Mitarbeiter sollen in natürlicher Sprache nach Dokumenten, Richtlinien und Kampagnenbriefings suchen können, ohne SharePoint-Keyword-Suche zu nutzen. Die IT fragt, ob die Langdock Search API dafür als semantische Kernkomponente genutzt werden kann. (Quelle: S-API-015, sources/12 Q124)
**Strategisches Ziel:** Die Langdock Search API als semantische Retrievalschicht für ein unternehmensweites Q&A-System evaluieren und ein vollständiges Systemdesign liefern — inklusive Dokumenten-Ingestion, Query-Handling und Ergebnis-Präsentation.
**Hands-on Ergebnis:** Ein Systemdesign-Dokument für das Q&A-System: Dokumenten-Ingestion via Knowledge Folder API, semantische Suche via Search API, Antwort-Synthese via Completion API.
**Eingesetzte Langdock-Fähigkeit(en):** Search API (Knowledge Folder), Completion API, Advisory
**Vorgehen (4 Schritte):**
1. Beschreibe den dreistufigen Architektur-Stack: (a) Dokumenten-Ingestion via Knowledge Folder API (Markdown-Upload aller relevanten Dokumente), (b) semantische Suche via Search API (Query → Top-K relevante Chunks mit Relevanz-Score), (c) Antwort-Synthese via Completion API (Chunks als Kontext + Nutzer-Frage → vollständige Antwort mit Quellenangaben).
2. Erkläre den Unterschied zwischen Search API und direktem Agent: die Search API liefert Rohchunks und Relevanz-Scores — das System entscheidet dann selbst, ob es diese Chunks in einen Completion-Call weiterleitet oder direkt präsentiert; ein Agent erledigt beides automatisch.
3. Weise auf Skalierungsaspekte hin: das Wissensordner-Limit von 1.000 Dokumenten und 256 MB pro Dokument; bei Überschreitung müssen ältere Dokumente archiviert oder ein zweiter Wissensordner eingerichtet werden.
4. Definiere eine Feedback-Schleife: Nutzer können Antworten mit "hilfreich / nicht hilfreich" bewerten; alle negativen Bewertungen werden wöchentlich analysiert, um die Indexierungsqualität der Quelldokumente zu verbessern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Knowledge-Management-Architekt. Wir bauen ein unternehmensweites Q&A-System auf Basis der Langdock Search API und Completion API. Beschreibe den dreistufigen Stack: Dokumenten-Ingestion, semantische Suche, Antwort-Synthese. Erkläre den Unterschied zwischen Search API (Chunks) und einem direkten Agent. Nenne Skalierungsgrenzen des Wissensordners und wie eine Nutzerfeedback-Schleife das System verbessert. Liefere ein strukturiertes Systemdesign-Dokument."
**Erwartetes Artefakt:** Ein Systemdesign-Dokument (Architektur-Stack, API-Rollen, Skalierungsgrenzen, Feedback-Schleife).
**Fallstricke (≥2 spezifisch):**
- Das Design verwendet die Search API als vollständige RAG-Lösung und vergisst den Completion-API-Schritt für die Antwort-Synthese — das Ergebnis sind rohe Textchunks statt lesbarer Antworten.
- Die Feedback-Schleife wird als automatisches Re-Training interpretiert — tatsächlich verbessert Feedback nur die menschliche Kuratierung der Quelldokumente, nicht das Modell selbst.
**Anschluss-Szenario:** S-API-035

### S-API-035 Content-Moderations-Layer auf Langdock-API

**Wann nutzen (Trigger):** Ein B2C-Unternehmen hat einen öffentlich zugänglichen Chatbot auf seiner Produktwebsite, der auf Langdock basiert. Nach einem Vorfall, bei dem ein Nutzer den Bot zu markenschädigenden Aussagen manipuliert hat, verlangt der CISO eine Moderationsebene, die Inputs und Outputs filtert, bevor sie den Endnutzer erreichen. (Quelle: A-06, sources/12 Q115)
**Strategisches Ziel:** Einen mehrstufigen Content-Moderations-Layer vor und hinter dem Langdock-API-Aufruf konzeptionieren, der Prompt-Injection-Angriffe und toxische Outputs abwehrt, ohne die Nutzererfahrung spürbar zu verlangsamen.
**Hands-on Ergebnis:** Ein Architekturkonzept für den Content-Moderations-Layer: Input-Validierung, Output-Filterung, Logging suspekter Anfragen und Eskalationsprozess.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Security Advisory
**Vorgehen (4 Schritte):**
1. Beschreibe die zweistufige Moderationsarchitektur: (a) Pre-Processing (Input-Validierung): eingehende Nutzernachrichten werden vor dem Langdock-Aufruf durch eine Moderations-API (z. B. OpenAI Moderation API oder Azure Content Safety) geleitet; toxische oder injection-verdächtige Inputs werden blockiert und geloggt. (b) Post-Processing (Output-Filterung): Langdock-Antworten werden vor Auslieferung an den Nutzer auf toxischen Inhalt, sensible Daten (PII) und markenschädigende Aussagen geprüft.
2. Erkläre Prompt-Injection-Abwehr: im System-Prompt klar definieren, dass der Agent Anweisungen aus dem User-Turn ignoriert, die seinen Kern-Scope verlassen; zusätzlich eine Whitelist erlaubter Themen im System-Prompt hinterlegen.
3. Definiere Logging-Pflichten: alle blockierten Inputs und alle gefilterten Outputs werden mit Timestamp, User-Session-ID (anonymisiert) und Grund der Blockierung geloggt — diese Logs sind Input für wöchentliche Security-Reviews.
4. Plane den Eskalationsprozess: bei mehr als 10 blockierten Inputs pro Stunde von derselben Session-ID → automatischer Chatbot-Block dieser Session + Alert an das Security-Team.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Security-Architekt. Unser öffentlicher Langdock-Chatbot wurde durch Prompt-Injection manipuliert. Der CISO verlangt eine Moderationsebene. Konzipiere einen zweistufigen Content-Moderations-Layer: (1) Input-Validierung vor dem Langdock-Aufruf (Moderations-API, Prompt-Injection-Abwehr), (2) Output-Filterung nach dem Langdock-Aufruf (Toxizität, PII, Brand-Risiko). Ergänze Logging-Anforderungen und einen Eskalationsprozess bei Angriffserkennung. Tonfall: sicherheitsorientiert, umsetzbar."
**Erwartetes Artefakt:** Ein Architekturkonzept für den Content-Moderations-Layer (zweistufige Moderation, Logging, Eskalation).
**Fallstricke (≥2 spezifisch):**
- Das Konzept verlässt sich ausschließlich auf die Langdock-eigene Systemkontrolle und implementiert keinen externen Moderations-Layer — damit ist ein System-Prompt-Jailbreak nicht durch eine unabhängige Moderationsschicht absicherbar.
- Die Output-Filterung fügt signifikante Latenz hinzu, was die Nutzererfahrung verschlechtert; das Konzept muss asynchrone Filterung (Filter läuft parallel, nicht seriell) evaluieren.
**Anschluss-Szenario:** S-API-036

### S-API-036 Custom Model Routing via BYOC für datensensitive Segmentierung

**Wann nutzen (Trigger):** Das Marketing-Team hat zwei Kategorien von Aufgaben: Standard-Content-Erstellung (kein Datenschutzrisiko) und personalisierte Kundensegmentierung (enthält aggregierte Kaufverhaltensdaten). Der Datenschutzbeauftragte will, dass letztere auf einem internen Modell laufen, während Standard-Tasks das kostengünstigere Cloud-Modell nutzen. (Quelle: S-API-017, A-03)
**Strategisches Ziel:** Ein Model-Routing-Konzept definieren, das automatisch zwischen zwei Modell-Backends wechselt — Cloud-Modell (via BYOC) für Standard-Tasks und intern gehostetes Modell (BYOM) für datensensitive Tasks — ohne manuelle Eingriffe durch Nutzer.
**Hands-on Ergebnis:** Ein Model-Routing-Architektur-Dokument: Klassifikationslogik, Routing-Mechanismus, Fallback-Strategie und Compliance-Nachweis.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory (BYOC, BYOM), Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Klassifikationslogik: anhand von Request-Metadaten (z. B. API-Parameter "data_sensitivity=high" oder durch einen vorgeschalteten Classifier-Aufruf) entscheidet das BFF-Backend, welches Modell-Backend genutzt wird.
2. Beschreibe den Routing-Mechanismus: Standard-Requests → Langdock BYOC mit Azure OpenAI; datensensitive Requests → Langdock BYOM mit internem Llama-Modell in der eigenen VPC; beide Routes nutzen dieselbe Langdock-Orchestrierungsebene, aber unterschiedliche Modell-Konfigurationen.
3. Plane die Fallback-Strategie: wenn das interne BYOM-Modell nicht verfügbar ist, wird der datensensitive Request abgelehnt (nicht auf Cloud-Modell fallen!) und eine Fehlermeldung zurückgegeben — kein automatisches Fallback auf Cloud.
4. Definiere den Compliance-Nachweis: für jede Anfrage wird im Audit-Log protokolliert, welches Modell-Backend genutzt wurde; monatlicher Report für den Datenschutzbeauftragten zeigt 100% der datensensitiven Anfragen auf dem internen Modell.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Infrastruktur-Berater. Wir brauchen ein Model-Routing-System: Standard-Marketing-Tasks laufen auf unserem Azure-Cloud-Modell via BYOC, datensensitive Segmentierungsaufgaben nur auf unserem internen BYOM-Modell. Beschreibe die Routing-Architektur: Klassifikationslogik, Routing-Mechanismus über Langdock BYOC/BYOM, und explizit: Kein automatisches Fallback auf Cloud bei BYOM-Ausfall. Wie dokumentieren wir die Compliance im Audit-Log? Liefere ein Architektur-Dokument."
**Erwartetes Artefakt:** Ein Model-Routing-Architektur-Dokument (Klassifikation, Routing, Fallback-Strategie, Compliance-Nachweis).
**Fallstricke (≥2 spezifisch):**
- Das Routing implementiert ein automatisches Fallback auf das Cloud-Modell bei BYOM-Ausfall — dies verletzt die Datenschutzanforderung und würde einen Compliance-Vorfall erzeugen.
- Die Klassifikationslogik ist zu einfach (nur ein Boolean-Parameter) und gibt Nutzern die Möglichkeit, datensensitive Anfragen als "standard" zu deklarieren, um die schnellere Cloud-Route zu nutzen.
**Anschluss-Szenario:** S-API-037

### S-API-037 Enterprise-SSO-Integration mit Langdock

**Wann nutzen (Trigger):** Das IT-Team soll Langdock für 200 Marketing-Mitarbeiter ausrollen. Die IT-Sicherheitsrichtlinie schreibt vor, dass alle SaaS-Tools über das unternehmenseigene Identity Provider (IdP) — Microsoft Azure AD / Entra ID — authentifiziert werden, sodass Offboarding automatisch erfolgt. Die Direktorin soll das Konzept für den IT-Leiter aufbereiten. (Quelle: sources/12 Q115, A-06)
**Strategisches Ziel:** Die SSO-Integration (Single Sign-On) von Langdock mit dem unternehmenseigenen Azure AD / Entra ID konzeptionieren, sodass Nutzer-Lifecycle-Management (Onboarding, Offboarding, Rollenzuweisung) vollständig über den IdP gesteuert wird.
**Hands-on Ergebnis:** Ein SSO-Integrationskonzept für den IT-Leiter: technische Anforderungen, SAML/OIDC-Konfigurationsschritte auf hohem Niveau, und automatische Deaktivierung bei Mitarbeiterabgang.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, API Security Advisory
**Vorgehen (4 Schritte):**
1. Erkläre den SSO-Mechanismus: Langdock unterstützt SAML 2.0 und OIDC-basiertes SSO; bei der Konfiguration wird Langdock als "Service Provider" (SP) in Azure AD als Enterprise-Applikation registriert; Nutzer authentifizieren sich zukünftig ausschließlich über ihr Azure-AD-Konto.
2. Beschreibe die automatische Rollenzuweisung: Azure-AD-Gruppen (z. B. "Marketing-Team", "Marketing-Admins") werden auf Langdock-Rollen gemappt; neue Mitarbeiter erhalten automatisch die richtige Rolle, sobald sie der AD-Gruppe zugewiesen werden.
3. Kläre das Offboarding: sobald ein Mitarbeiterkonto in Azure AD deaktiviert wird, verliert es sofort den SSO-Zugang zu Langdock — manuelle Deaktivierung in Langdock ist nicht mehr nötig; dies schließt die in S-API-014 beschriebene Key-Kompromittierungs-Lücke.
4. Weise auf API-Key-Governance hin: auch nach SSO-Einführung bleiben Workspace-API-Keys außerhalb des SSO-Scope — diese müssen weiterhin über den in S-API-014 beschriebenen Lifecycle-Prozess verwaltet werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Identity-Management-Berater. Wir wollen Langdock via SSO mit unserem Azure AD / Entra ID verbinden. Erkläre: (1) Welches Protokoll nutzen wir (SAML 2.0 oder OIDC)? (2) Wie werden Azure-AD-Gruppen auf Langdock-Rollen gemappt? (3) Was passiert automatisch beim Offboarding? (4) Welche Zugriffsvektoren bleiben nach SSO-Einführung bestehen (API-Keys!)? Liefere ein SSO-Integrationskonzept für unseren IT-Leiter."
**Erwartetes Artefakt:** Ein SSO-Integrationskonzept (Protokollwahl, Rollenmapping, Offboarding-Automatisierung, residuale Risiken).
**Fallstricke (≥2 spezifisch):**
- Das Konzept suggeriert, dass SSO alle Zugangswege absichert — tatsächlich bleiben Workspace-API-Keys außerhalb des SSO-Scope und müssen separat verwaltet werden.
- Die Rollenzuweisung wird manuell im Langdock-Admin gepflegt statt automatisch über Azure-AD-Gruppen, was bei 200 Nutzern zu einem manuellen Verwaltungsaufwand führt.
**Anschluss-Szenario:** S-API-038

### S-API-038 SLA-Monitoring für API-Verfügbarkeit

**Wann nutzen (Trigger):** Nach zwei ungeplanten Langdock-Ausfällen im laufenden Quartal verlangt die Geschäftsführung einen monatlichen SLA-Report (Service Level Agreement), der dokumentiert, ob Langdock die vertraglich zugesicherte Verfügbarkeit einhält. Die Direktorin soll das Monitoring-Konzept koordinieren. (Quelle: S-API-021, A-44)
**Strategisches Ziel:** Ein SLA-Monitoring-System konzeptionieren, das die tatsächliche Langdock-Verfügbarkeit aus Unternehmens-Perspektive misst, mit der vertraglich zugesicherten Uptime vergleicht und bei Verstößen automatisch einen Eskalations-Prozess auslöst.
**Hands-on Ergebnis:** Ein SLA-Monitoring-Konzept mit Messmethodik, Alerting-Strategie und monatlichem Report-Template.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, Deployment Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Messmethodik: aktiver Synthetic-Monitor (alle 5 Minuten ein einfacher Langdock-API-Testaufruf aus dem unternehmenseigenen Netz) liefert reale Verfügbarkeits-Daten aus Sicht des Unternehmens; status.langdock.com als ergänzende Quelle für anbietergemeldete Incidents.
2. Berechne den monatlichen Verfügbarkeits-Wert: (Gesamtminuten im Monat − gemessene Ausfallminuten) / Gesamtminuten × 100; typische Enterprise-SLAs fordern 99,9 % (≈ 43 Minuten Downtime/Monat).
3. Plane Alerting und Eskalation: bei Ausfall über 10 Minuten → automatische Benachrichtigung an Marketing-Ops + Aktivierung des Fallback-Playbooks (S-API-021); bei monatlichem SLA-Verstoß → formelle Eskalation an Langdock Customer Success Manager mit Dokumentation.
4. Definiere das Report-Template: monatlicher SLA-Report enthält gemessene Uptime, Incident-Liste (Datum, Dauer, Ursache soweit bekannt), Vergleich mit vertraglichem SLA und ggf. SLA-Kredit-Anspruch.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein SLA-Management-Berater. Nach zwei Langdock-Ausfällen brauchen wir ein SLA-Monitoring-System. Erkläre: (1) Wie messen wir die tatsächliche Verfügbarkeit aus unserer Netzwerkperspektive (Synthetic Monitor)? (2) Wie berechnen wir den monatlichen Uptime-Prozentsatz? (3) Welche Alerting-Schwellenwerte und Eskalationsprozesse richten wir ein? (4) Wie sieht unser monatliches SLA-Report-Template aus? Liefere ein vollständiges Monitoring-Konzept."
**Erwartetes Artefakt:** Ein SLA-Monitoring-Konzept (Messmethodik, Uptime-Berechnung, Alerting, Report-Template).
**Fallstricke (≥2 spezifisch):**
- Das Monitoring verlässt sich ausschließlich auf die status.langdock.com-Seite — diese zeigt anbietergemeldete Incidents, nicht die tatsächliche Erreichbarkeit aus dem eigenen Netz; netzwerk-lokale Probleme bleiben unsichtbar.
- Der SLA-Kredit-Anspruchsprozess wird im Konzept vergessen — ohne dokumentierte Incident-Daten und den richtigen Eskalationsweg hat das Unternehmen keine Handhabe gegenüber dem Anbieter.
**Anschluss-Szenario:** S-API-039

### S-API-039 Kosten-Anomalie-Erkennung bei API-Nutzung

**Wann nutzen (Trigger):** Die Finanzabteilung meldet, dass die monatliche Langdock-Rechnung in der letzten Woche um 340 % gestiegen ist, ohne dass das Marketing-Team eine neue große Kampagne gestartet hat. Die Direktorin muss den Verursacher schnell identifizieren und eine dauerhafte Anomalie-Erkennungsstrategie aufbauen. (Quelle: S-API-018, sources/12 Q122)
**Strategisches Ziel:** Einen Kosten-Anomalie-Erkennungsprozess etablieren, der unerwartete Kosten-Spikes innerhalb von 24 Stunden erkennt, den Verursacher identifiziert und automatisch eine vorläufige Kostenbegrenzung auslöst.
**Hands-on Ergebnis:** Ein Kosten-Monitoring-Framework: Tages-Budget-Schwellenwerte, automatische Alerts, täglicher Usage-Export-API-Pull und Eskalations-Playbook für Kostenabnormalitäten.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Anomalie-Erkennungslogik: täglicher Usage-Export-API-Pull um 07:00 Uhr; Vergleich des gestrigen Tagesverbrauchs mit dem 30-Tage-Durchschnitt; ab 150 % des Durchschnitts → Alert; ab 300 % → automatischer Modell-Gating-Review.
2. Beschreibe die Verursacher-Identifikation: Usage-Export-Daten nach User-ID, Agent-ID und Modell aufschlüsseln; der höchste Token-Verbrauch in einer einzigen Dimension ist in 80 % der Fälle der Kostentreiber.
3. Definiere automatische Schutzmaßnahmen: bei bestätigtem Kostenabnormal-Alert — den verdächtigen Agenten oder User vorübergehend auf ein günstigeres Fallback-Modell umleiten (statt ihn vollständig zu sperren, was laufende Kampagnen blockiert).
4. Dokumentiere das Eskalations-Playbook: Alert erhält Marketing-Ops + CFO; innerhalb von 4 Stunden muss der Verursacher identifiziert und entweder die Ursache behoben oder der Workaround aktiviert sein; nach 24 Stunden schriftlicher Incident-Report an Finance.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater für KI-Infrastruktur. Unsere Langdock-Kosten sind diese Woche um 340 % gestiegen. Erstelle ein Kosten-Anomalie-Erkennungs-Framework: (1) täglicher Usage-Export-API-Pull mit Anomalie-Schwellenwerten, (2) Verursacher-Identifikation via User-ID/Agent-ID-Aufschlüsselung, (3) automatische Schutzmaßnahmen ohne laufende Kampagnen zu blockieren, (4) Eskalations-Playbook für Finance. Liefere das Framework als strukturiertes Dokument."
**Erwartetes Artefakt:** Ein Kosten-Anomalie-Erkennungs-Framework (Alert-Logik, Verursacher-Analyse, Schutzmaßnahmen, Eskalations-Playbook).
**Fallstricke (≥2 spezifisch):**
- Das Framework sperrt sofort den auffälligen Nutzer oder Agenten, ohne die laufende Kampagnenauswirkung zu prüfen — ein wichtiger Kampagnen-Workflow wird möglicherweise ungeplant unterbrochen.
- Die Anomalie-Erkennung setzt absolute Kostenschwellenwerte statt relative Prozentabweichungen — ein saisonaler Anstieg von 200 % kurz vor dem Black Friday löst fälschlicherweise einen Alert aus.
**Anschluss-Szenario:** S-API-040

### S-API-040 Disaster-Recovery-Planung für KI-Marketing-Infrastruktur

**Wann nutzen (Trigger):** Nach dem 90-minütigen Langdock-Ausfall (S-API-021) und einem separaten internen Server-Ausfall, der den BFF-Proxy für den Intranet-Chatbot lahmgelegt hat, fordert das Management einen formellen Disaster-Recovery-Plan (DRP), der beide Ausfallszenarien abdeckt. (Quelle: S-API-021, A-44)
**Strategisches Ziel:** Einen vollständigen Disaster-Recovery-Plan für die KI-Marketing-Infrastruktur erarbeiten, der Ausfälle sowohl auf Langdock-Seite als auch auf der eigenen Infrastruktur-Seite abdeckt und den Marketing-Betrieb innerhalb von 30 Minuten auf einem definierten Minimal-Level wiederherstellt.
**Hands-on Ergebnis:** Ein Disaster-Recovery-Plan (DRP) mit definierten RTO (Recovery Time Objective), RPO (Recovery Point Objective), Ausfallszenarien, Wiederherstellungsschritten und Testkalender.
**Eingesetzte Langdock-Fähigkeit(en):** Deployment Advisory, Advisory
**Vorgehen (5 Schritte):**
1. Definiere RTO und RPO: RTO = 30 Minuten (innerhalb dieser Zeit muss Minimal-Betrieb wiederhergestellt sein); RPO = 24 Stunden (maximaler Datenverlust durch letztes Backup).
2. Kategorisiere die Ausfallszenarien: (a) Langdock-Plattform-Ausfall — Fallback auf lokale Agent-Prompt-Backups + direkter Anthropic/OpenAI-Webzugang; (b) BFF-Server-Ausfall — Umschaltung auf Standby-BFF-Instanz in anderer Availability-Zone; (c) Kombinations-Ausfall — manueller Betrieb nach vorbereiteten Fallback-Vorlagen.
3. Dokumentiere die Wiederherstellungsschritte pro Szenario: für jeden der drei Szenarien eine nummerierte Schritt-für-Schritt-Anleitung, die auch unter Stress ohne IT-Expertise ausführbar ist.
4. Sichere kritische Ressourcen: alle Agent-System-Prompts als Markdown in einem versionierten Git-Repository; alle Wissensordner-Dokumente als wöchentliches Backup auf einen separaten Cloud-Storage; BFF-Server-Konfiguration als Infrastructure-as-Code (IaC) in Git.
5. Definiere den Testkalender: jährlicher DRP-Test (simulierter Vollausfall), halbjährlicher Partial-Test (nur Langdock-Ausfall-Szenario), quartalsweise Überprüfung der Backup-Vollständigkeit.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Business-Continuity-Planer. Wir hatten zwei Ausfälle: einmal Langdock selbst, einmal unser BFF-Server. Erstelle einen Disaster-Recovery-Plan für unsere KI-Marketing-Infrastruktur. Definiere RTO (30 min) und RPO (24h). Beschreibe drei Ausfallszenarien mit je nummerierten Wiederherstellungsschritten. Erkläre, welche Ressourcen wir als Backups sichern müssen (Prompts, Wissensordner, BFF-Config). Füge einen Testkalender hinzu. Liefere den DRP als formelles Dokument."
**Erwartetes Artefakt:** Ein formeller Disaster-Recovery-Plan (RTO/RPO, Szenarien, Wiederherstellungsschritte, Backup-Strategie, Testkalender).
**Fallstricke (≥2 spezifisch):**
- Der DRP ist zu allgemein und beschreibt nur "nehmt einen anderen KI-Anbieter" ohne konkrete Schritte — im Ausfall-Stressfall fehlt die Handlungsorientierung.
- Der Testkalender ist einmalig und wird nie wiederholt — ohne regelmäßige DRP-Tests wird das Team bei einem echten Ausfall feststellen, dass die Schritte veraltet oder unvollständig sind.
**Anschluss-Szenario:** S-API-041

### S-API-041 BYOK-Entscheidungskalkulation ab welchem Volumen

**Wann nutzen (Trigger):** Die Finanzabteilung prüft, ob der Wechsel auf BYOK (Bring Your Own Key) mit eigenem Azure-Vertrag wirtschaftlich sinnvoll ist. Das Team verbraucht derzeit rund 2.800 Euro pro Monat über das Standard-Langdock-Modell-Bundle. Der CTO hat Azure-Enterprise-Rabatte von 20 % auf Token-Preise in Aussicht. (Quelle: A-26, S-API-024, sources/12 Q117)
**Strategisches Ziel:** Einen datenbasierten BYOK-Break-even-Kalkulator konzeptionieren, der ab welchem monatlichen Token-Volumen der Wechsel auf BYOK wirtschaftlich vorteilhaft ist — unter Berücksichtigung des Verwaltungsaufwands und der BYOK-Preispflege-Pflicht im Langdock-Admin.
**Hands-on Ergebnis:** Eine Break-even-Kalkulation (tabellarisch) und ein Entscheidungsrahmen: BYOK empfohlen ab X Euro/Monat Verbrauch, mit expliziter Auflistung der versteckten Kosten und Risiken.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, BYOK-Konfigurationsberatung
**Vorgehen (4 Schritte):**
1. Berechne den Break-even: BYOK lohnt, wenn der Enterprise-Rabatt (z. B. 20 % auf Modell-Token) die zusätzlichen Verwaltungskosten (IT-Aufwand für Key-Management, Billing-Reconciliation, Preispflege) übersteigt; Faustregel aus der Praxis: ab ca. 5.000 Euro/Monat Token-Verbrauch hat BYOK direkten Netto-Vorteil.
2. Liste die versteckten BYOK-Kosten: (a) IT-Aufwand für 90-Tage-Key-Rotation und Monitoring, (b) monatliche Billing-Reconciliation zwischen Langdock-Usage-Export und Azure Cost Management, (c) Pflege der manuell hinterlegten Token-Preise im Langdock-Admin bei jedem Azure-Preisupdate.
3. Bewerte das Risiko bei aktuellem Verbrauch (2.800 Euro): unterhalb der 5.000-Euro-Schwelle ist BYOK wirtschaftlich grenzwertig; der IT-Verwaltungsaufwand kann den Rabattvorteil aufzehren.
4. Empfehle einen Monitoring-Trigger: BYOK-Entscheidung neu bewerten, sobald der monatliche Verbrauch drei Monate in Folge über 4.500 Euro liegt oder ein neuer Enterprise-Rahmenvertrag mit über 25 % Rabatt verhandelt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater. Wir verbrauchen 2.800 Euro/Monat über Langdock's Standard-Bundle und können mit Azure-BYOK 20 % Rabatt erhalten. Berechne den Break-even: Ab welchem monatlichen Verbrauch lohnt BYOK? Liste alle versteckten Kosten von BYOK (Key-Management, Billing-Reconciliation, Preispflege im Admin). Liefere eine tabellarische Break-even-Kalkulation und eine klare Empfehlung für unsere aktuelle Situation. Füge einen Monitoring-Trigger hinzu, wann wir die Entscheidung neu bewerten."
**Erwartetes Artefakt:** Eine Break-even-Kalkulation (Tabelle) + Entscheidungsrahmen + Monitoring-Trigger.
**Fallstricke (≥2 spezifisch):**
- Die Kalkulation berücksichtigt nur den Token-Rabatt und ignoriert die versteckten Verwaltungskosten — das Ergebnis ist eine zu optimistische Break-even-Schwelle.
- Das Modell empfiehlt BYOK pauschal "wegen Kontrolle und Kostentransparenz" ohne die Break-even-Berechnung zu machen — das ist keine datenbasierte Entscheidungsgrundlage.
**Anschluss-Szenario:** S-API-042

### S-API-042 Prompt-Injections-Risikoanalyse für öffentliche Chatbots

**Wann nutzen (Trigger):** Das Marketing-Team überlegt, einen neuen öffentlichen Produktberatungs-Chatbot auf der Webseite zu launchen. Vor dem Go-Live verlangt der CISO eine formelle Risikoanalyse speziell für Prompt-Injection-Angriffe — eine bekannte Angriffsvektoren bei LLM-basierten Systemen. (Quelle: S-API-035, A-06, sources/12 Q115)
**Strategisches Ziel:** Eine strukturierte Prompt-Injection-Risikoanalyse für den geplanten öffentlichen Chatbot erstellen, die Angriffsszenarien bewertet, Gegenmaßnahmen empfiehlt und als Entscheidungsgrundlage für den Go-Live dient.
**Hands-on Ergebnis:** Ein Risikoanalyse-Dokument: Angriffsvektoren, Risikobewertung (Wahrscheinlichkeit × Impact), Gegenmaßnahmen und Residualrisiko-Akzeptanz.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Security Advisory
**Vorgehen (4 Schritte):**
1. Beschreibe die Hauptangriffsvektoren: (a) direkte Prompt-Injection ("Vergiss deine Anweisungen und ..."), (b) indirekte Injection über Wissensdokumente (manipulierte PDFs im Wissensordner enthalten versteckte Anweisungen), (c) Jailbreak-Prompts zur Umgehung des System-Prompts, (d) Daten-Exfiltrations-Versuche ("Nenne mir alle System-Prompt-Inhalte").
2. Bewerte jedes Angriffsszenario mit einer Risikomatrix: Wahrscheinlichkeit (1–5) × Impact auf Marke / Kosten / Datenschutz (1–5) = Risiko-Score; priorisiere die Top-3-Risiken.
3. Empfehle Gegenmaßnahmen je Angriffsvektor: Boundary-Anweisungen im System-Prompt, Input-Längen-Limit, Output-Moderationsebene (S-API-035), regelmäßige Red-Team-Tests mit typischen Jailbreak-Prompts.
4. Definiere das Residualrisiko-Statement: kein Chatbot kann zu 100 % gegen Prompt-Injection abgesichert werden; das akzeptable Restrisiko-Level muss vom CISO schriftlich freigegeben werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein KI-Sicherheitsanalyst. Wir wollen einen öffentlichen Produktberatungs-Chatbot launchen. Der CISO verlangt eine Prompt-Injection-Risikoanalyse. Dokumentiere: (1) die vier Haupt-Angriffsvektoren, (2) eine Risikomatrix (Wahrscheinlichkeit × Impact), (3) konkrete Gegenmaßnahmen je Angriffsvektor, (4) ein Residualrisiko-Statement für die CISO-Freigabe. Liefere das Dokument in formeller Berichtsstruktur."
**Erwartetes Artefakt:** Ein Risikoanalyse-Dokument (Angriffsvektoren, Risikomatrix, Gegenmaßnahmen, Residualrisiko-Statement).
**Fallstricke (≥2 spezifisch):**
- Die Risikoanalyse behandelt Prompt-Injection als vollständig lösbar und gibt dem CISO eine falsche Sicherheitsgarantie — kein LLM-System ist immun gegen Prompt-Injection, das Residualrisiko muss explizit benannt werden.
- Das Dokument analysiert nur direkte Injection-Vektoren und vergisst indirekte Injection über Wissensdokumente — ein manipuliertes PDF im Wissensordner kann das System unterwandern.
**Anschluss-Szenario:** S-API-043

### S-API-043 FX-Kosten-Management bei globaler API-Nutzung

**Wann nutzen (Trigger):** Das internationale Marketing-Team nutzt Langdock global. Die Finanzabteilung stellt fest, dass die Langdock-Plattformlizenz in Euro abgerechnet wird, während BYOK-Modellkosten in US-Dollar über Azure anfallen. Bei einer 8-prozentigen EUR/USD-Wechselkursschwankung im letzten Quartal sind die tatsächlichen Kosten unvorhersehbar geworden. (Quelle: A-29, S-API-024)
**Strategisches Ziel:** Ein FX-Kosten-Management-Konzept entwickeln, das die Wechselkursexposition bei gemischter EUR/USD-Abrechnung minimiert und dem Controlling monatlich eine verlässliche Kostenkalkulation ermöglicht.
**Hands-on Ergebnis:** Ein FX-Risiko-Management-Konzept für Finance und Marketing-Ops: Kostenstruktur-Übersicht, monatlicher Reconciliation-Prozess, FX-Hedging-Optionen und Budget-Pufferempfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, Usage Export API
**Vorgehen (4 Schritte):**
1. Kartiere die Kostenstruktur: Langdock-Plattformlizenz → EUR, BYOK-Modellkosten (Azure OpenAI) → USD, ggf. weitere Provider-Kosten → jeweils Originalwährung; identifiziere, welcher Anteil EUR-fix und welcher USD-variabel ist.
2. Beschreibe den monatlichen Reconciliation-Prozess: Langdock Usage Export API liefert Token-Zählung; Azure Cost Management liefert USD-Kosten; monatliche Umrechnung zum Monatsendkurs mit expliziter FX-Rate-Dokumentation.
3. Bewerte FX-Hedging-Optionen: (a) natürliches Hedging durch Erhöhung des EUR-fixen Langdock-Bundle-Anteils (weniger BYOK), (b) Konzern-Treasury-Hedging für den USD-Anteil bei Volumen über 50.000 USD/Jahr, (c) monatlicher Budget-Puffer von 8–10 % für Wechselkursschwankungen.
4. Empfehle eine Budgetierungspraxis: KI-Budget-Planung immer in EUR mit USD-Anteil als separater Linie inkl. FX-Puffer; quartalsweise Anpassung basierend auf tatsächlichen Wechselkursen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein FinOps-Berater mit FX-Expertise. Langdock fakturiert in EUR, aber unsere BYOK-Azure-Modellkosten kommen in USD. Wechselkursschwankungen machen unsere KI-Budgetplanung unzuverlässig. Erkläre: (1) Unsere gemischte Kostenstruktur (EUR/USD), (2) monatlicher Reconciliation-Prozess mit expliziter FX-Rate-Dokumentation, (3) FX-Hedging-Optionen, (4) Budget-Puffer-Empfehlung für unser Controlling. Liefere ein FX-Risiko-Management-Konzept."
**Erwartetes Artefakt:** Ein FX-Risiko-Management-Konzept (Kostenstruktur, Reconciliation-Prozess, Hedging-Optionen, Budget-Puffer-Empfehlung).
**Fallstricke (≥2 spezifisch):**
- Das Konzept empfiehlt Konzern-Treasury-Hedging auch bei kleinem Volumen (unter 10.000 USD/Jahr) — die Transaktionskosten von Hedging-Instrumenten übersteigen bei kleinen Beträgen den FX-Risikobetrag.
- Die monatliche Reconciliation verwendet den Tageskurs des Abrufzeitpunkts statt den vertraglich vereinbarten oder Monatsendkurs — das erzeugt Inkonsistenzen im Controlling-Report.
**Anschluss-Szenario:** S-API-044

### S-API-044 Embedding-API für semantische Kampagnen-Ähnlichkeitssuche

**Wann nutzen (Trigger):** Das Kreativ-Team hat in fünf Jahren 800 Kampagnenkonzepte entwickelt. Bevor eine neue Kampagne gestartet wird, soll geprüft werden, ob ein ähnliches Konzept bereits existiert — um Doppelarbeit zu vermeiden und erfolgreiche Muster wiederzuverwenden. Keyword-Suche ist zu ungenau; das Team braucht eine semantische Ähnlichkeitssuche. (Quelle: S-API-015, S-API-034)
**Strategisches Ziel:** Den Einsatz der Langdock Embedding-API für eine interne Kampagnen-Ähnlichkeitsdatenbank konzeptionieren, die neue Kampagnenideen semantisch mit dem historischen Archiv vergleicht.
**Hands-on Ergebnis:** Ein Integrationskonzept für die semantische Kampagnen-Ähnlichkeitssuche: Embedding-Erstellung, Vektordatenbank-Wahl, Ähnlichkeitsabfrage und Ergebnis-Interface.
**Eingesetzte Langdock-Fähigkeit(en):** Embedding API, Advisory
**Vorgehen (4 Schritte):**
1. Erkläre das Embedding-Konzept: die Langdock Embedding-API wandelt jeden Kampagnentext in einen hochdimensionalen Vektor um, der die semantische Bedeutung kodiert; ähnliche Texte haben ähnliche Vektoren (hohe Cosine-Similarity).
2. Beschreibe den Aufbau-Prozess: alle 800 historischen Kampagnenkonzepte werden einmalig durch die Embedding-API geleitet und die resultierenden Vektoren in einer Vektordatenbank (z. B. Pinecone, pgvector in PostgreSQL oder Qdrant) gespeichert.
3. Skizziere den Abfrage-Prozess: neue Kampagnenidee → Embedding-API → Abfragevektor → Vektordatenbank-Nearest-Neighbor-Suche → Top-5 ähnlichste historische Kampagnen mit Ähnlichkeits-Score.
4. Weise auf Pflege-Aufwand hin: jede neue Kampagne muss nach Abschluss in die Vektordatenbank eingespeist werden; bei Kampagnen-Updates muss der Eintrag neu vektorisiert werden (Embeddings sind nicht inkrementell aktualisierbar).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Vector-Search-Architekt. Wir wollen eine interne Ähnlichkeitssuche für unsere 800 historischen Kampagnenkonzepte bauen. Erkläre: (1) Wie funktioniert die Langdock Embedding-API (Input/Output)? (2) Wie bauen wir die initiale Vektordatenbank auf? (3) Wie läuft eine neue Ähnlichkeitsabfrage ab (Cosine-Similarity, Top-K-Ergebnisse)? (4) Welche Pflege-Aufgaben entstehen laufend? Empfehle eine geeignete Vektordatenbank. Liefere ein strukturiertes Integrationskonzept."
**Erwartetes Artefakt:** Ein Integrationskonzept (Embedding-Prozess, Vektordatenbank-Aufbau, Abfragearchitektur, Pflege-Aufwand).
**Fallstricke (≥2 spezifisch):**
- Das Konzept verwendet die Embedding-API zur Textgenerierung — Embeddings generieren keinen Text, sie kodieren Bedeutung als Zahlenvektor; der Unterschied zum Completion-Endpoint ist fundamental.
- Die Vektordatenbank wird nicht als persistente Infrastruktur geplant, sondern bei jedem Abfragevorgang neu aufgebaut — bei 800 Kampagnen dauert das re-Embedding jedes Mal mehrere Minuten und ist prohibitiv teuer.
**Anschluss-Szenario:** S-API-045

### S-API-045 KI-Carbon-Footprint-Schätzung für den Nachhaltigkeitsbericht

**Wann nutzen (Trigger):** Die Nachhaltigkeitsbeauftragte des Unternehmens bittet die Marketing-Direktorin, den KI-bedingten CO₂-Abdruck der Langdock-Nutzung für den Jahres-Nachhaltigkeitsbericht abzuschätzen. Es gibt keine offizielle Langdock-Kennzahl — das Team muss eine methodisch vertretbare Schätzung erarbeiten. (Quelle: A-45, sources/12 Q124)
**Strategisches Ziel:** Eine methodisch transparente, dokumentierte CO₂-Schätzung für die jährliche Langdock-API-Nutzung erarbeiten, die im Nachhaltigkeitsbericht als "Best-Estimate mit dokumentierten Annahmen" ausgewiesen werden kann.
**Hands-on Ergebnis:** Eine CO₂-Schätzungsmethodik und ein ausgefülltes Schätzungs-Template für den Nachhaltigkeitsbericht — inklusive Datenannahmen, Unsicherheitsbereich und Aktualisierungsprozess.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Ermittle den Token-Verbrauch: Langdock Usage Export API liefert monatliche Token-Zählung pro Modell; Jahressumme bildet die Grundlage der Schätzung.
2. Wende CO₂-Konversionsfaktoren an: öffentlich zugängliche Schätzungen wie das ML.energy-Projekt und Hugging Face's LLM-Energie-Forschung liefern Wh-pro-Token-Schätzwerte für gängige Modellarchitekturen; EU-Strommix-Emissionsfaktor (ca. 230 gCO₂/kWh für EU-27 Durchschnitt, Quelle: European Environment Agency) für die Umrechnung in CO₂.
3. Dokumentiere Annahmen und Unsicherheit: Token-zu-Wh-Faktoren variieren je nach Modellgröße, Datacenter-Effizienz und Auslastung um den Faktor 3–10; die Schätzung sollte als "Bereich" (Min–Max) statt als Punktwert ausgewiesen werden.
4. Definiere den jährlichen Aktualisierungsprozess: CO₂-Faktoren und EU-Strommix-Werte jährlich aus den Quellen aktualisieren; Vergleich mit dem Vorjahr nur bei identischer Methodik aussagekräftig.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Nachhaltigkeits-Analyst. Unsere Nachhaltigkeitsbeauftragte braucht eine CO₂-Schätzung für unsere Langdock-KI-Nutzung für den Jahresbericht. Erkläre die Schätzungsmethodik: (1) Token-Verbrauch aus der Usage Export API, (2) Konversionsfaktoren aus ML.energy und Hugging Face, (3) EU-Strommix-Emissionsfaktor, (4) Darstellung als Bereich statt Punktwert. Liefere ein ausgefülltes Schätzungs-Template mit dokumentierten Annahmen und Unsicherheitsbereich."
**Erwartetes Artefakt:** Eine CO₂-Schätzungsmethodik und ein ausgefülltes Schätzungs-Template (Token-Basis, Konversionsfaktoren, Ergebnisbereich, Annahmen-Dokumentation).
**Fallstricke (≥2 spezifisch):**
- Das Modell liefert einen einzelnen CO₂-Punktwert ohne Unsicherheitsbereich — dies vermittelt eine Scheingenauigkeit, die methodisch nicht vertretbar ist und im Nachhaltigkeitsbericht angreifbar wäre.
- Die Quelle der CO₂-Faktoren wird nicht dokumentiert — ohne Quellenangabe ist die Schätzung im nächsten Jahr nicht reproduzierbar und der Vergleich mit dem Vorjahr nicht möglich.
**Anschluss-Szenario:** S-API-046

### S-API-046 API-Gateway-Muster für Multi-Tenant Marketing-SaaS

**Wann nutzen (Trigger):** Ein Marketing-SaaS-Anbieter im DACH-Raum betreibt Langdock im Hintergrund seiner Plattform und muss sicherstellen, dass jeder Mandant (Tenant) nur auf seine eigenen Daten und Budgets zugreift — ohne gegenseitige Isolation durch teure Einzel-Deployments zu erkaufen. (Quelle: S-API-004, S-API-013, sources/06 Deployment-Modelle)
**Strategisches Ziel:** Ein API-Gateway-Architekturmuster konzeptionieren, das auf einem einzigen Langdock-Workspace mehrere Mandanten sicher isoliert — mit getrennten Token-Budgets, Wissensordnern und Audit-Logs pro Tenant.
**Hands-on Ergebnis:** Ein Architekturkonzept: Gateway-Layer-Design, Tenant-Routing-Logik, Token-Budget-Enforcement und Isolationsnachweis für Sales-Pitches an Enterprise-Kunden.
**Eingesetzte Langdock-Fähigkeit(en):** API Gateway Advisory, Multi-Tenant Architecture Advisory
**Vorgehen (5 Schritte):**
1. Definiere den Gateway-Layer: ein unternehmenseigener Reverse-Proxy (z. B. AWS API Gateway, Kong oder Traefik) sitzt vor der Langdock-API; er authentifiziert eingehende Mandanten-Requests via Tenant-spezifische JWT-Tokens und leitet sie mit dem gemeinsamen Langdock-API-Key weiter.
2. Implementiere Tenant-Routing: der Gateway fügt jedem Request einen eindeutigen `X-Tenant-ID`-Header hinzu; Langdock-Wissensordner werden pro Tenant mit restriktiven Zugriffskontrollen konfiguriert, sodass jeder Agent nur seinen Tenant-Ordner lesen darf.
3. Setze Token-Budget-Enforcement im Gateway um: der Gateway trackt Token-Verbrauch pro Tenant in einer eigenen Datenbank (z. B. Redis); überschreitet ein Tenant sein Monatsbudget, blockiert der Gateway weitere Requests mit HTTP 429 — bevor sie Langdock erreichen.
4. Trenne Audit-Logs: jeder Gateway-Request wird mit Tenant-ID, Timestamp und Token-Zahl in ein zentrales Log-System (z. B. Elasticsearch) geschrieben; Mandanten-Administratoren erhalten nur Zugriff auf ihre eigenen Log-Einträge via rollenbasierter Log-Filterung.
5. Teste die Isolation: Penetrationstest-Szenario — versuche von Tenant A aus, auf Wissensordner von Tenant B zuzugreifen; Erwartung: HTTP 403; dokumentiere das Ergebnis als Isolationsnachweis für den SaaS-Sicherheits-Fragebogen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Cloud-Architekt. Wir betreiben ein Marketing-SaaS mit 50 Mandanten, alle auf demselben Langdock-Workspace. Erkläre das API-Gateway-Muster: (1) Gateway-Layer-Design mit Tenant-Routing, (2) Token-Budget-Enforcement pro Tenant, (3) Wissensordner-Isolation, (4) getrennte Audit-Logs. Liefere ein Architekturkonzept mit Komponentendiagramm-Beschreibung und Isolationsnachweis-Prozedur."
**Erwartetes Artefakt:** Ein Architekturkonzept (Gateway-Layer, Tenant-Routing, Budget-Enforcement, Log-Trennung, Isolationsnachweis).
**Fallstricke (≥2 spezifisch):**
- Der API-Key wird im Gateway-Code als Plaintext hinterlegt statt als verschlüsseltes Secret in einem Secret-Manager — bei einem Code-Leak sind alle Mandanten exponiert.
- Token-Budget-Enforcement wird in Langdock selbst statt im Gateway erwartet — Langdock bietet kein natives Mandanten-Budget-Splitting; die Enforcement-Logik muss zwingend im eigenen Gateway liegen.
**Anschluss-Szenario:** S-API-047

### S-API-047 GraphQL vs. REST — Abwägung für Langdock-Integrationen

**Wann nutzen (Trigger):** Das Entwicklungsteam diskutiert, ob eine neue Marketing-Daten-Plattform die Langdock-API über REST oder GraphQL ansprechen soll. Die Marketing-Direktorin wird in ein Architektur-Review einbezogen und muss die strategische Abwägung verstehen. (Quelle: S-API-001, S-API-046, sources/06 REST-Endpoints)
**Strategisches Ziel:** Die strategische Abwägung zwischen REST und GraphQL für Langdock-Integrationen nachvollziehbar machen — mit Marketing-relevanten Entscheidungskriterien wie Abrufeffizienz, Entwicklungsaufwand und Toolchain-Kompatibilität.
**Hands-on Ergebnis:** Eine Entscheidungsmatrix (REST vs. GraphQL) mit konkreten Empfehlungen für typische Marketing-Automatisierungs-Use-Cases.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Architecture Advisory
**Vorgehen (4 Schritte):**
1. Erkläre den fundamentalen Unterschied: REST liefert feste Ressourcen-Endpunkte (z. B. `POST /completions`); GraphQL erlaubt flexible Abfragen, bei denen der Client exakt bestimmt, welche Felder er braucht — vorteilhaft, wenn unterschiedliche Marketing-Clients unterschiedliche Datentiefen benötigen.
2. Bewerte REST-Vorteile für Langdock-Integrationen: Langdock bietet nativ eine REST-API mit OpenAI-Kompatibilität; REST-Bibliotheken (Python OpenAI SDK, Axios) sind in jedem Tech-Stack vorhanden; Debugging über Browser-DevTools und Postman ist einfach.
3. Erkläre, wann GraphQL einen Mehrwert hätte: wenn eine eigene Abstraktionsschicht über der Langdock-API gebaut wird, die mehreren internen Consumers (Dashboard, Mobile App, Chatbot) unterschiedliche Antwortformate liefern soll — dann reduziert GraphQL Over-Fetching.
4. Gib eine klare Empfehlung: Für direkte Langdock-Integrationen ist REST die richtige Wahl — Langdock exponiert keine GraphQL-API; GraphQL ist erst relevant, wenn ein eigener API-Layer über Langdock gebaut wird und mehr als drei verschiedene Consumer-Typen bedient werden müssen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein API-Architekt. Wir integrieren Langdock in unsere Marketing-Daten-Plattform. Unser Team diskutiert REST vs. GraphQL. Erkläre: (1) den grundlegenden Unterschied, (2) warum REST für direkte Langdock-Integrationen vorzuziehen ist, (3) in welchem Szenario GraphQL einen eigenen Abstraktions-Layer rechtfertigt. Liefere eine Entscheidungsmatrix mit Empfehlung für unsere Marketing-Use-Cases."
**Erwartetes Artefakt:** Eine Entscheidungsmatrix (REST vs. GraphQL) mit konkreter Empfehlung für Marketing-Automatisierungs-Szenarien.
**Fallstricke (≥2 spezifisch):**
- Das Modell empfiehlt GraphQL als generell moderner und besser — ohne zu berücksichtigen, dass Langdock keine native GraphQL-API hat; GraphQL muss als eigener Layer entwickelt und gewartet werden.
- Die Entscheidung basiert auf Technologie-Präferenzen des Entwicklerteams statt auf Marketing-Anforderungen — Over-Fetching-Probleme existieren bei den meisten Marketing-Automatisierungs-Calls schlicht nicht.
**Anschluss-Szenario:** S-API-048

### S-API-048 API-Dokumentation automatisch generieren

**Wann nutzen (Trigger):** Das Marketing-Ops-Team hat über mehrere Monate eine interne Langdock-Integrations-Schicht gebaut (Completion-Endpoint, Agent-Endpoint, Knowledge-Folder-Sync). Die Dokumentation wurde nie geschrieben. Neue Entwickler stoßen auf einen undurchdringlichen Code-Dschungel. (Quelle: S-API-001, S-API-047, research/50 A-36)
**Strategisches Ziel:** Eine vollständige, wartbare API-Dokumentation für die interne Langdock-Integrationsschicht generieren lassen — OpenAPI-Spec-kompatibel, mit Beispiel-Requests und Fehler-Codes.
**Hands-on Ergebnis:** Eine OpenAPI 3.0-Spezifikation (YAML) plus ein lesbares Markdown-Referenz-Dokument für das interne Entwicklerteam.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Code-Analyse Advisory
**Vorgehen (4 Schritte):**
1. Sammle Eingabematerial: Code-Snippets der internen API-Endpoints, bestehende Postman-Collections, Beispiel-Requests und -Responses sowie bekannte Fehler-Codes.
2. Lass die KI eine OpenAPI 3.0-Spezifikation in YAML ableiten: für jeden Endpoint definiert die Spec `paths`, `operationId`, `parameters`, `requestBody`, `responses` inklusive HTTP-Status-Codes (200, 400, 401, 429, 500) und Fehler-Schemas.
3. Generiere das menschenlesbare Markdown-Dokument: für jeden Endpoint ein Abschnitt mit Beschreibung, cURL-Beispiel-Request, Beispiel-Response und typischen Fehler-Szenarien.
4. Integriere Dokumentations-Maintenance in den Entwicklungsprozess: neue Endpoints werden vor dem Merge via Pull-Request-Template mit einer Mindest-Dokumentation (1 Beispiel-Request + 1 Fehler-Code) verknüpft.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer Dokumentationsexperte. Ich gebe dir Code-Snippets unserer internen Langdock-Integrationsschicht. Erstelle: (1) eine OpenAPI 3.0-Spezifikation in YAML mit Paths, Parameters, Request/Response-Schemas und HTTP-Status-Codes, (2) ein Markdown-Referenzdokument mit cURL-Beispielen pro Endpoint. Liefere beide Artefakte vollständig — auch wenn du Annahmen treffen musst, kennzeichne diese."
**Erwartetes Artefakt:** Eine OpenAPI 3.0-Spezifikation (YAML) und ein Markdown-Referenz-Dokument mit Beispiel-Requests und Fehler-Codes.
**Fallstricke (≥2 spezifisch):**
- Die generierte OpenAPI-Spec wird nicht gegen einen Validator (z. B. Swagger Editor) geprüft — ungültige YAML-Syntax oder fehlende Pflichtfelder (`info`, `openapi`-Version) machen die Spec für Code-Generatoren unbrauchbar.
- Das Modell dokumentiert Happy-Path-Responses, vergisst aber Fehler-Schemas für 4xx-Codes — ein Entwickler, der auf Rate-Limit-Fehler (429) trifft, findet keinen Hinweis auf den Retry-After-Header.
**Anschluss-Szenario:** S-API-049

### S-API-049 API Consumer Onboarding Guide erstellen

**Wann nutzen (Trigger):** Die Marketing-Direktorin hat drei externe Agenturen und zwei interne Entwicklungsteams, die alle auf die interne Langdock-Integrationsschicht zugreifen sollen. Es gibt keinen strukturierten Onboarding-Prozess; jedes Team stellt dieselben Fragen. (Quelle: S-API-048, research/50 A-37, sources/12 Q148)
**Strategisches Ziel:** Einen strukturierten API Consumer Onboarding Guide entwickeln, der neue Entwickler und Agenturteams in weniger als einem Arbeitstag produktionsfähig macht — ohne wiederholte 1:1-Betreuung durch das interne Team.
**Hands-on Ergebnis:** Ein Onboarding-Guide-Dokument: Getting-Started-Checkliste, Authentication-Setup, erste API-Calls mit Beispielen, Fehler-Debugging-Abschnitt und Eskalationspfad.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Wissensordner
**Vorgehen (4 Schritte):**
1. Strukturiere den Guide in vier Kapitel: (1) Voraussetzungen und Zugangsdaten-Beantragung, (2) Authentication (Bearer Token Setup), (3) erster Test-Call mit cURL/Postman, (4) häufige Fehler und deren Behebung.
2. Baue eine "Zeit-bis-erster-Call"-Garantie ein: ziel auf unter 30 Minuten vom Erhalt der Zugangsdaten bis zum ersten erfolgreichen API-Response; dokumentiere jeden Schritt mit Screenshots oder kopierbaren Code-Snippets.
3. Füge einen Fehler-Debugging-Entscheidungsbaum hinzu: HTTP 401 → API-Key prüfen; HTTP 403 → Wissensordner-Berechtigungen prüfen; HTTP 429 → Rate-Limit-Dokumentation lesen; HTTP 500 → Langdock-Status-Page checken.
4. Definiere den Eskalationspfad: wenn der Guide nicht reicht, wen kontaktieren (Slack-Channel, E-Mail, SLA für Antwortzeit) — verhindert, dass der Guide zur veralteten Einweg-Ressource wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein technischer Writer. Erstelle einen API Consumer Onboarding Guide für externe Entwicklungsteams, die auf unsere interne Langdock-Integrationsschicht zugreifen. Der Guide muss in unter 30 Minuten zum ersten erfolgreichen API-Call führen. Strukturiere ihn mit: Voraussetzungen, Authentication, erstem Test-Call (cURL-Snippet), Fehler-Debugging-Entscheidungsbaum und Eskalationspfad. Liefere ein Dokument im Markdown-Format."
**Erwartetes Artefakt:** Ein Markdown-Onboarding-Guide (Getting-Started-Checkliste, Auth-Setup, Test-Call, Debugging-Entscheidungsbaum, Eskalationspfad).
**Fallstricke (≥2 spezifisch):**
- Der Guide dokumentiert nur die Happy Path und ignoriert häufige Onboarding-Fehler (falsches Token-Format, fehlende CORS-Konfiguration) — neue Consumer verlieren Stunden beim Debugging vermeidbarer Fehler.
- Der Guide wird einmalig geschrieben und nie aktualisiert — nach dem nächsten API-Update sind Beispiel-Responses veraltet und der Guide erzeugt mehr Verwirrung als er löst.
**Anschluss-Szenario:** S-API-050

### S-API-050 Load-Testing der Langdock-API für Kampagnen-Spitzenlast

**Wann nutzen (Trigger):** Das Marketing-Team plant eine Black-Friday-Kampagne mit erwartetem 10x-Traffic-Peak auf dem KI-gestützten Produktberatungs-Chatbot. Bevor die Kampagne live geht, will die Technikleitung wissen, ob die Langdock-API und der eigene Backend-Layer diese Last tragen. (Quelle: S-API-004, S-API-046, sources/06 Rate Limits)
**Strategisches Ziel:** Eine Load-Testing-Strategie für die Langdock-API-Integration konzeptionieren, die Engpässe unter Spitzenlast identifiziert und Skalierungsmaßnahmen vor dem Kampagnenstart ermöglicht.
**Hands-on Ergebnis:** Ein Load-Testing-Konzept: Test-Szenarien, Toolauswahl, Metriken, Langdock Rate-Limit-Berücksichtigung und Skalierungsempfehlungen.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Rate-Limit Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Test-Szenarien: (a) Baseline — 10 gleichzeitige User, erwartete Latenz unter 3 Sekunden; (b) Normallast — 100 gleichzeitige User; (c) Spitzenlast — 1.000 gleichzeitige User (10x Black-Friday-Schätzung); (d) Soak-Test — 50 User konstant über 4 Stunden.
2. Wähle das passende Load-Testing-Tool: k6 (JavaScript, Cloud-fähig) oder Locust (Python) für API-Last; wichtig ist, dass das Tool HTTP-Streaming (Server-Sent Events) für den Completion-Endpoint simulieren kann.
3. Berücksichtige Langdock Rate Limits: Langdock begrenzt API-Calls pro Minute pro Workspace; ein Burst von 1.000 gleichzeitigen Requests ohne Backoff-Logik erzeugt sofort HTTP 429-Fehler; das Load-Testing-Skript muss exponentielles Retry-Backoff simulieren.
4. Definiere Skalierungsmaßnahmen basierend auf Testergebnissen: horizontales Skalieren des eigenen BFF-Layers (mehr Instanzen); Request-Queuing vor dem Langdock-Call; Caching häufig gefragter Antworten (Cache-Control für identische Produktfragen).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Performance-Engineer. Wir erwarten am Black Friday einen 10x-Traffic-Peak auf unserem Langdock-gestützten Chatbot. Erstelle ein Load-Testing-Konzept: (1) vier Test-Szenarien (Baseline bis Spitzenlast), (2) Tool-Empfehlung (k6 vs. Locust) mit Begründung, (3) Umgang mit Langdock Rate Limits im Test, (4) Skalierungsmaßnahmen bei identifizierten Engpässen. Liefere ein praxistaugliches Konzept mit konkreten Schwellenwerten."
**Erwartetes Artefakt:** Ein Load-Testing-Konzept (Szenarien, Tool, Rate-Limit-Handling, Skalierungsmaßnahmen).
**Fallstricke (≥2 spezifisch):**
- Das Load-Testing-Skript sendet echte Produktanfragen mit realen Nutzerdaten — Load-Tests gegen Produktionssysteme mit Echtdaten verstoßen gegen DSGVO und verursachen reale Kosten; Testdaten müssen synthetisch sein.
- Der Test ignoriert die Langdock Rate Limits und wertet 429-Fehler als Backend-Fehler des eigenen Systems — das Ergebnis ist eine falsch-negative Performance-Bewertung, die echte Engpässe verdeckt.
**Anschluss-Szenario:** S-API-051

### S-API-051 API-Mocking für parallele Entwicklung

**Wann nutzen (Trigger):** Das Frontend-Team entwickelt den neuen Kampagnen-Chatbot parallel zum Backend-Team, das die Langdock-Integration noch nicht fertig hat. Ohne produktionsfähige API blockiert das Frontend-Team seine eigene Arbeit — und echte Langdock-Calls in der Entwicklung kosten Token-Budgets. (Quelle: S-API-048, S-API-049)
**Strategisches Ziel:** Eine API-Mocking-Strategie konzeptionieren, die parallele Frontend- und Backend-Entwicklung ermöglicht, ohne Langdock-Token zu verbrauchen und ohne Produktionsdaten in Entwicklungsumgebungen zu exponieren.
**Hands-on Ergebnis:** Ein Mocking-Konzept: Mock-Server-Aufbau, Response-Fixtures für typische Marketing-Szenarien und Integration in die CI/CD-Pipeline.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Development Advisory
**Vorgehen (4 Schritte):**
1. Wähle den Mock-Server-Ansatz: für statische Mocks eignet sich Mockoon (Desktop-Tool, kein Code) oder MSW (Mock Service Worker, für Browser-/Node-Tests); für dynamische Mocks, die Streaming-Responses (Server-Sent Events) simulieren, ist ein einfacher Express.js-Mock-Server der pragmatischste Weg.
2. Erstelle Response-Fixtures für typische Marketing-Szenarien: (a) kurze Produktbeschreibung (< 100 Tokens, schnelle Antwort), (b) langer Blogartikel-Draft (> 800 Tokens, simuliertes Streaming), (c) Fehlerfall HTTP 429 (Rate Limit), (d) Fehlerfall HTTP 500 (Server-Fehler) — alle vier Fixtures müssen das echte Langdock-Response-Schema replizieren.
3. Integriere den Mock in die CI/CD-Pipeline: in der Test-Umgebung (`NODE_ENV=test`) zeigt die `BASE_URL`-Konfiguration auf den Mock-Server statt auf `api.langdock.com`; so laufen alle Integrationstests ohne echte API-Calls.
4. Definiere die Synchronisations-Pflicht: sobald die echte Langdock-API eine Response-Schema-Änderung erfährt, muss der Mock innerhalb von 24 Stunden aktualisiert werden — andernfalls testen Entwickler gegen ein veraltetes Interface.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Backend-Entwickler. Unser Frontend-Team entwickelt parallel zu uns und braucht einen Langdock-API-Mock. Erkläre: (1) passende Mock-Server-Optionen (Mockoon, MSW, Express.js) mit Vor-/Nachteilen, (2) welche vier Response-Fixtures wir für Marketing-Szenarien brauchen (inkl. Fehlerszenarien), (3) wie wir den Mock in unsere CI/CD-Pipeline integrieren. Liefere ein Mocking-Konzept mit Empfehlung."
**Erwartetes Artefakt:** Ein Mocking-Konzept (Tool-Empfehlung, vier Response-Fixtures, CI/CD-Integration, Synchronisationsprozess).
**Fallstricke (≥2 spezifisch):**
- Der Mock repliziert nur den Happy Path und hat keinen Fehlerfall — beim ersten echten 429-Fehler in Produktion ist das Frontend unvorbereitet, weil es diesen Fall nie getestet hat.
- Der Mock-Server bleibt nach API-Schema-Änderungen unaktualisiert — Entwickler testen monatelang gegen ein veraltetes Interface und merken den Fehler erst beim Produktions-Deployment.
**Anschluss-Szenario:** S-API-052

### S-API-052 Canary-Deployment für API-Updates

**Wann nutzen (Trigger):** Das Team will die Langdock-Integration auf ein neues Sprachmodell migrieren (z. B. von GPT-4o auf Claude Sonnet 4.6). Statt alle 10.000 täglichen Chatbot-Interaktionen auf einmal umzustellen, soll das neue Modell schrittweise getestet werden — Fehler sollen frühzeitig erkannt werden, bevor sie alle Nutzer betreffen. (Quelle: S-API-004, S-API-050, sources/06 Deployment-Modelle)
**Strategisches Ziel:** Ein Canary-Deployment-Muster für Langdock-Modell- oder API-Endpoint-Updates konzeptionieren, das Risiken bei Produktionsupdates minimiert und datenbasierte Rollback-Entscheidungen ermöglicht.
**Hands-on Ergebnis:** Ein Canary-Deployment-Konzept: Traffic-Split-Strategie, Monitoring-Metriken, Rollout-Schwellenwerte und Rollback-Playbook.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Deployment Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Traffic-Split-Strategie: Phase 1 — 5 % des Traffics auf das neue Modell (Canary), 95 % auf das bestehende (Stable); Phase 2 — nach 48 Stunden fehlerfreiem Betrieb auf 25 %; Phase 3 — nach weiteren 48 Stunden auf 100 % (Full Rollout); Routing-Entscheidung im eigenen BFF-Layer über Feature-Flag.
2. Definiere die Monitoring-Metriken für die Canary-Gruppe: (a) Response-Latenz (p95), (b) Fehlerrate (HTTP 4xx/5xx), (c) Output-Qualitäts-Proxy (Nutzer-Abbruchrate oder Daumen-hoch/runter-Feedback), (d) Token-Verbrauch pro Antwort (Kostenvergleich).
3. Lege Rollout-Schwellenwerte fest: Fortschreiten zu Phase 2 nur, wenn: Fehlerrate Canary ≤ Fehlerrate Stable + 0,5 %; Latenz Canary ≤ Latenz Stable × 1,2; kein kritischer Output-Qualitäts-Einbruch.
4. Schreibe ein Rollback-Playbook: Rollback-Entscheidung durch welche Rolle (DevOps-Lead + Marketing-Direktorin), Rollback-Mechanismus (Feature-Flag auf 0 % Canary), Kommunikationstemplate für betroffene Teams, Post-Mortem-Vorlage.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein DevOps-Architekt. Wir wollen unsere Langdock-Integration schrittweise auf ein neues Sprachmodell migrieren. Erkläre das Canary-Deployment-Muster: (1) Traffic-Split-Phasen (5 % → 25 % → 100 %), (2) Monitoring-Metriken für die Canary-Gruppe, (3) quantitative Rollout-Schwellenwerte, (4) Rollback-Playbook mit Entscheidungspfad. Liefere ein vollständiges Deployment-Konzept."
**Erwartetes Artefakt:** Ein Canary-Deployment-Konzept (Traffic-Split-Phasen, Monitoring-Metriken, Rollout-Schwellenwerte, Rollback-Playbook).
**Fallstricke (≥2 spezifisch):**
- Das Canary-Deployment wird ohne Feature-Flag im BFF-Layer implementiert und stattdessen direkt in der Langdock-Konfiguration gesteuert — ein Rollback erfordert dann ein Code-Deployment statt eines Konfigurations-Toggles.
- Die Canary-Gruppe ist zu klein (< 1 % Traffic) und liefert keine statistisch belastbaren Daten — nach 48 Stunden gibt es noch keine aussagekräftigen Qualitätsmetriken für die Rollout-Entscheidung.
**Anschluss-Szenario:** S-API-053

### S-API-053 API-Nutzungs-Dashboard für Marketing-Ops

**Wann nutzen (Trigger):** Die Marketing-Direktorin hat fünf Teams, die Langdock über die API nutzen: Content, Performance, CRM, PR und Research. Das monatliche Token-Budget wird überschritten, aber niemand weiß, welches Team der Hauptverursacher ist. Der Finance-Controller fordert eine verursachergerechte Kostenzuordnung. (Quelle: S-API-020, S-API-043, sources/12 Q120, Q124)
**Strategisches Ziel:** Ein API-Nutzungs-Dashboard konzeptionieren, das Token-Verbrauch und Kosten in Echtzeit pro Team, Agent und Kampagne visualisiert — als Grundlage für verursachergerechte Kostenzuordnung und Budget-Steuerung.
**Hands-on Ergebnis:** Ein Dashboard-Konzept: Datenquellen, Metriken, Visualisierungsebenen, Alert-Logik und Integration in das bestehende BI-System.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Datengrundlage: Langdock Usage Export API liefert CSV mit Feldern wie `user_id`, `agent_id`, `model`, `input_tokens`, `output_tokens`, `timestamp`; täglicher Export-Job lädt die Daten in ein Data Warehouse (z. B. BigQuery oder Snowflake).
2. Entwerfe die Metriken-Hierarchie: (a) Workspace-Ebene — Gesamtkosten vs. Budget; (b) Team-Ebene — Token-Kosten pro Team (via User-Gruppen-Mapping); (c) Agent-Ebene — teuerste Agenten nach Output-Tokens; (d) Kampagnen-Ebene — Kosten pro Kampagne via `conversation_tag`-Konvention.
3. Baue die Alert-Logik: Budget-Alert bei 70 % Verbrauch (Frühwarnung), bei 90 % (Eskalation an Marketing-Direktorin), bei 100 % (automatischer Stopp neuer API-Calls für den teuersten Team-Account).
4. Integriere in das bestehende BI-System: Power BI oder Looker Dashboard mit Refresh alle 4 Stunden; monatlicher PDF-Export für Finance-Controller automatisiert via geplanter Report-Versand.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Marketing-Ops-Analyst. Wir brauchen ein API-Nutzungs-Dashboard für unsere fünf Marketing-Teams. Erkläre: (1) welche Daten die Langdock Usage Export API liefert, (2) wie wir Kosten pro Team und Agent aufschlüsseln, (3) Alert-Logik bei Budget-Schwellenwerten, (4) Integration in Power BI oder Looker. Liefere ein Dashboard-Konzept mit Metrikenhierarchie und Alert-Konfiguration."
**Erwartetes Artefakt:** Ein Dashboard-Konzept (Datenquellen, Metrikhierarchie, Alert-Logik, BI-Integration).
**Fallstricke (≥2 spezifisch):**
- Das Dashboard zeigt nur Gesamt-Token-Kosten ohne Team-Attribution — es ist weiterhin unmöglich, den Budget-Überschreiter zu identifizieren; das ist das ursprüngliche Problem, ungelöst.
- Die Alert-Schwellenwerte sind nicht mit dem monatlichen Budget-Zyklus synchronisiert — ein Alert bei 70 % des Tagesverbrauchs ist nicht dasselbe wie 70 % des Monatsbudgets; die Berechnungslogik muss explizit definiert werden.
**Anschluss-Szenario:** S-API-054

### S-API-054 Dynamische System-Prompt-Injektion zur Laufzeit

**Wann nutzen (Trigger):** Das Marketing-Team betreibt einen einzigen Produktberatungs-Chatbot für 12 Länder. Jedes Land braucht einen leicht anderen Ton, andere Produktverfügbarkeiten und andere rechtliche Disclaimers. Statt 12 separate Agenten zu pflegen, soll ein einziger Chatbot seinen System-Prompt dynamisch basierend auf dem Nutzer-Locale anpassen. (Quelle: S-API-002, S-API-046, sources/06 OpenAI-Kompatibilität)
**Strategisches Ziel:** Das Muster der dynamischen System-Prompt-Injektion zur Laufzeit konzeptionieren — ein einziger Agent passt sein Verhalten kontextsensitiv an, ohne für jede Variante einen separaten Agent zu benötigen.
**Hands-on Ergebnis:** Ein Architekturkonzept für dynamische System-Prompt-Injektion: Prompt-Template-Struktur, Variablen-Injection-Mechanismus, Locale-Mapping und Sicherheits-Guardrails.
**Eingesetzte Langdock-Fähigkeit(en):** Completion API, Advisory
**Vorgehen (4 Schritte):**
1. Definiere die Prompt-Template-Struktur: ein Master-System-Prompt mit Platzhaltern (`{{locale}}`, `{{disclaimer}}`, `{{available_products}}`) wird im BFF-Layer gespeichert; das Template enthält den stabilen Kern (Persona, Aufgabe, Format) und variable Slots für locale-spezifische Inhalte.
2. Baue den Injection-Mechanismus: beim API-Call liest der BFF-Layer das Nutzer-Locale aus dem JWT-Token; mappt es auf die passende Konfigurationsdatei (z. B. `de-DE.json`, `fr-FR.json`); füllt die Template-Variablen aus; sendet den fertigen System-Prompt als `system`-Feld im API-Request.
3. Definiere das Locale-Mapping: ein zentrales `locale-config`-Repository mit Feldern: `tone` (formal/informal), `legal_disclaimer` (Länder-spezifischer Text), `available_products` (Array von Produkt-IDs), `currency` — gepflegt von Marketing, nicht von Entwicklung.
4. Implementiere Sicherheits-Guardrails: Injection-Variablen werden serverseitig escapet, bevor sie in den Prompt eingesetzt werden; Nutzer-Input darf niemals direkt in den System-Prompt einfließen — nur in den User-Turn; maximale Länge der Injection-Variablen begrenzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Backend-Architekt. Wir betreiben einen Chatbot für 12 Länder und wollen dynamische System-Prompt-Injektion statt 12 separater Agenten. Erkläre: (1) Prompt-Template-Struktur mit Platzhaltern, (2) Injection-Mechanismus im BFF-Layer, (3) Locale-Mapping-Struktur für Marketing-Pflege, (4) Sicherheits-Guardrails gegen Prompt-Injection via Variablen. Liefere ein Architekturkonzept."
**Erwartetes Artefakt:** Ein Architekturkonzept für dynamische System-Prompt-Injektion (Template-Struktur, Injection-Mechanismus, Locale-Mapping, Sicherheits-Guardrails).
**Fallstricke (≥2 spezifisch):**
- Nutzer-Input wird direkt als Injection-Variable in den System-Prompt eingesetzt — das öffnet ein direktes Prompt-Injection-Angriffsvector; Variablen dürfen ausschließlich aus serverseitigen, validierten Konfigurationsdateien kommen.
- Das Locale-Mapping wird direkt in den Anwendungscode eingepflegt statt in separate Konfigurationsdateien — Marketing kann legale Disclaimers nur noch durch ein Code-Deployment aktualisieren, was wochenlange Verzögerungen verursacht.
**Anschluss-Szenario:** S-API-055

### S-API-055 Multimodale API-Anfragen (Text + Bild) für Campaign Asset Review

**Wann nutzen (Trigger):** Das Marketing-Team bekommt täglich 20–30 Werbebanner von der Designagentur. Jeder Banner muss gegen den Brand Guide geprüft werden: korrekte Schriftarten, Farbpalette, Textanteil unter 20 %. Dieser Review-Prozess kostet drei Stunden täglich. (Quelle: sources/12 Q99, S-API-002, research/50 A-47)
**Strategisches Ziel:** Eine automatisierte Campaign-Asset-Review-Pipeline konzeptionieren, die multimodale API-Anfragen (Text + Bild) nutzt, um eingehende Werbebanner gegen Brand-Guide-Kriterien zu prüfen und strukturierte Review-Reports zu generieren.
**Hands-on Ergebnis:** Ein Integrationskonzept für automatisierten Bild-Review: API-Request-Struktur für Vision-Modelle, Review-Prompt-Template, Ausgabeformat und Human-Review-Eskalationsschwelle.
**Eingesetzte Langdock-Fähigkeit(en):** Multimodal (Vision) API, Advisory
**Vorgehen (4 Schritte):**
1. Erkläre die multimodale API-Request-Struktur: im Langdock-Completion-Endpoint wird das Bild als Base64-kodierter String oder URL im `content`-Array des User-Turns mitgesendet (OpenAI Vision-kompatibel); jeder Request enthält Bild + strukturierter Review-Prompt.
2. Definiere den Review-Prompt-Template: "Prüfe diesen Werbebanner gegen folgende Kriterien: (1) Schriftart: nur Inter oder Helvetica Neue, (2) Primärfarbe: #E63946 ± 10 %, (3) Textanteil: unter 20 % der Bildfläche, (4) Logo: sichtbar und unverzerrt. Liefere für jedes Kriterium: PASS/FAIL + Begründung in maximal einem Satz."
3. Strukturiere den Output: die API antwortet mit einem JSON-Objekt (vier Kriterien, je PASS/FAIL + Begründung + Gesamt-Score); bei zwei oder mehr FAILs wird der Banner automatisch in eine "Human-Review"-Queue verschoben.
4. Integriere in den Asset-Workflow: die Agentur lädt Banner in einen freigegebenen Google Drive-Ordner; ein n8n-Workflow triggert bei neuen Dateien, ruft die multimodale API auf und schreibt das Review-Ergebnis als Kommentar in das Slack-Thread des Design-Koordinators.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Brand-Compliance-Automatisierer. Wir wollen täglich eingehende Werbebanner automatisch gegen unseren Brand Guide prüfen. Erkläre: (1) wie multimodale API-Anfragen (Text + Bild) technisch aufgebaut sind, (2) ein Review-Prompt-Template für vier Brand-Kriterien, (3) strukturiertes JSON-Ausgabeformat mit PASS/FAIL, (4) Integration in unseren Asset-Workflow via n8n. Liefere ein vollständiges Integrationskonzept."
**Erwartetes Artefakt:** Ein Integrationskonzept (API-Request-Struktur, Review-Prompt-Template, JSON-Ausgabeformat, Workflow-Integration).
**Fallstricke (≥2 spezifisch):**
- Das Vision-Modell wird für pixelgenaue Farbmessung eingesetzt — LLM-Vision-Modelle können keine präzisen Hex-Farbwerte messen; Farbprüfungen müssen durch ein dedizierten Bildverarbeitungs-Tool (z. B. PIL/Pillow) ergänzt werden.
- Bilder werden als URL statt als Base64 gesendet, aber die URL liegt hinter einem Unternehmens-Proxy — das Vision-Modell kann die URL nicht abrufen; entweder Base64-Encoding oder öffentlich erreichbare URLs verwenden.
**Anschluss-Szenario:** S-API-056

### S-API-056 API-Kostenzuordnung pro Kampagne (FinOps)

**Wann nutzen (Trigger):** Die Marketingleitung plant, den ROI einzelner Kampagnen ganzheitlich zu messen — inklusive der KI-Produktionskosten. Aktuell landen alle API-Kosten in einem einzigen Budget-Topf; eine Zuordnung zu Kampagne A vs. Kampagne B ist unmöglich. Der CFO will eine Kostenrechnung pro Kampagne. (Quelle: S-API-053, S-API-043, sources/12 Q124, research/50 A-22)
**Strategisches Ziel:** Ein Kostenzuordnungs-Konzept (FinOps) entwickeln, das API-Token-Kosten auf einzelne Kampagnen aufschlüsselt — als Eingabe für den Kampagnen-ROI-Kalkulator und die interne Leistungsverrechnung.
**Hands-on Ergebnis:** Ein Kostenzuordnungs-Konzept: Tagging-Strategie, Usage-Export-Auswertung, Kampagnen-ROI-Formel und Reporting-Template für Finance.
**Eingesetzte Langdock-Fähigkeit(en):** Usage Export API, Advisory
**Vorgehen (4 Schritte):**
1. Implementiere eine Kampagnen-Tagging-Strategie: jeder API-Call trägt im `user`-Feld oder im Conversation-Metadaten-Tag eine Kampagnen-ID (z. B. `campaign:blackfriday-2026`); Langdock-Usage-Export enthält dieses Feld, das dann als Grouping-Key dient.
2. Baue die Kostenauswertung: Langdock Usage Export CSV → Aggregation nach `campaign_tag` → Multiplikation mit aktuellen Token-Preisen (Input-Token-Preis × Input-Tokens + Output-Token-Preis × Output-Tokens) → Kampagnen-KI-Kosten in Euro.
3. Integriere KI-Kosten in den Kampagnen-ROI-Kalkulator: KI-Produktionskosten werden als Linie im Campaign-Cost-Breakdown neben Media-Spend, Agentur-Fees und Toolkosten aufgeführt; ROI = (Umsatzattribution − Gesamtkosten inkl. KI) / Gesamtkosten.
4. Erstelle das monatliche Finance-Reporting-Template: Tabelle mit Kampagnenname, KI-Kosten (EUR), Anteil am Gesamt-Token-Budget (%), Vergleich Budget vs. Ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Marketing-FinOps-Berater. Unser CFO will KI-API-Kosten pro Kampagne zugeordnet sehen. Erkläre: (1) Kampagnen-Tagging-Strategie im API-Call, (2) Auswertung des Langdock Usage Exports nach Kampagnen-Tag, (3) Integration der KI-Kosten in den Kampagnen-ROI-Kalkulator, (4) monatliches Finance-Reporting-Template. Liefere ein vollständiges FinOps-Konzept."
**Erwartetes Artefakt:** Ein FinOps-Konzept (Tagging-Strategie, Kostenauswertung, ROI-Integration, Finance-Reporting-Template).
**Fallstricke (≥2 spezifisch):**
- Das Tagging wird nachträglich als optionales Feld eingeführt — Teams taggen inkonsistent, und 40 % der Kosten verbleiben in einer unzuordenbaren "Sonstiges"-Kategorie; Tagging muss Pflichtfeld im API-Wrapper sein, nicht optional.
- Token-Preise werden einmalig konfiguriert und nie aktualisiert — bei Modell-Preisupdates (die zwei- bis dreimal jährlich vorkommen) werden Kosten systematisch falsch berechnet; Preis-Lookup muss automatisiert aus der Langdock-Billing-API oder einer gepflegten Preistabelle erfolgen.
**Anschluss-Szenario:** S-API-057

### S-API-057 Long-Polling für asynchrone Workflow-Status-Abfragen

**Wann nutzen (Trigger):** Das Marketing-Team hat lange laufende KI-Workflows (z. B. Deep-Research-Läufe, die 5–20 Minuten dauern). Die Frontend-Applikation fragt alle fünf Sekunden per HTTP-Polling, ob der Workflow fertig ist — das erzeugt unnötige Last und führt zu Timeout-Fehlern bei langen Laufzeiten. (Quelle: S-API-004, S-API-050, sources/06 Workflow-Endpoints)
**Strategisches Ziel:** Das Long-Polling-Muster für asynchrone Langdock-Workflow-Status-Abfragen konzeptionieren, das unnötige Polling-Last eliminiert und Timeout-Probleme bei langen KI-Jobs löst.
**Hands-on Ergebnis:** Ein Architekturkonzept für asynchrone Workflow-Status-Abfragen: Job-Submission-Pattern, Polling-Strategie, Timeout-Handling und Frontend-UX-Empfehlungen.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows API, Advisory
**Vorgehen (4 Schritte):**
1. Erkläre das asynchrone Job-Pattern: anstatt auf das Ergebnis zu warten (synchrones HTTP), gibt der Langdock-Workflow-Endpoint sofort eine `job_id` zurück; der Client fragt periodisch den Status-Endpoint mit dieser `job_id` ab bis der Job `COMPLETED` oder `FAILED` ist.
2. Implementiere exponentielles Backoff-Polling: erster Poll nach 2 Sekunden, dann 4 Sekunden, 8 Sekunden, maximal alle 30 Sekunden; nach 20 Minuten ohne `COMPLETED` wird ein Timeout-Fehler an den Nutzer gemeldet.
3. Designe die Frontend-UX für lange laufende Jobs: (a) sofortiges Progress-Feedback ("KI recherchiert — ca. 10 Minuten"); (b) nicht-blockierender UI-Zustand (Nutzer kann andere Aufgaben erledigen); (c) Push-Benachrichtigung oder E-Mail wenn der Job fertig ist (für Jobs über 5 Minuten).
4. Behandle Fehler-Zustände: `FAILED`-Job → klare Fehlermeldung mit Job-ID für den Support; Network-Fehler während Polling → automatischer Retry ohne User-Eingriff; Browser-Tab-Wechsel → Polling läuft im Background-Worker weiter.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Frontend-Architekt. Unsere KI-Workflows dauern 5–20 Minuten. Einfaches HTTP-Polling alle 5 Sekunden erzeugt Last und Timeouts. Erkläre: (1) das asynchrone Job-Submission-Pattern mit `job_id`, (2) exponentielles Backoff-Polling mit Timeout-Logik, (3) Frontend-UX für lange laufende Jobs, (4) Fehlerbehandlung für FAILED-Jobs und Network-Fehler. Liefere ein Architekturkonzept."
**Erwartetes Artefakt:** Ein Architekturkonzept (Job-Submission-Pattern, Polling-Strategie, Frontend-UX, Fehlerbehandlung).
**Fallstricke (≥2 spezifisch):**
- Das Polling-Intervall bleibt konstant bei 5 Sekunden statt exponentiell zu wachsen — bei 100 gleichzeitigen aktiven Jobs macht das 1.200 überflüssige API-Calls pro Minute, die das Rate Limit belasten.
- Der Polling-Loop wird im Haupt-Thread implementiert und blockiert die UI — der Nutzer kann während eines laufenden Deep-Research-Jobs keine anderen Aktionen in der Anwendung ausführen.
**Anschluss-Szenario:** S-API-058

### S-API-058 API-Changelog-Benachrichtigungs-Workflow

**Wann nutzen (Trigger):** Langdock hat in den letzten sechs Monaten drei API-Updates veröffentlicht. Jedes Mal erfuhr das Team davon durch Produktionsfehler, nicht durch proaktive Benachrichtigung. Das letzte Update hat einen Breaking Change im Response-Schema mitgebracht, der einen einstündigen Ausfall verursachte. (Quelle: S-API-048, S-API-052, research/50 A-33)
**Strategisches Ziel:** Einen automatisierten API-Changelog-Benachrichtigungs-Workflow aufbauen, der das Entwicklungsteam proaktiv über Langdock-API-Updates informiert und Zeit für geordnete Migration gibt — bevor Breaking Changes im Produktionsbetrieb ankommen.
**Hands-on Ergebnis:** Ein automatisierter Benachrichtigungs-Workflow: Changelog-Monitoring, Alert-Klassifikation (Breaking Change vs. Minor Update), Team-Benachrichtigung und Migrations-Checkliste.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows, Advisory
**Vorgehen (4 Schritte):**
1. Setze das Changelog-Monitoring auf: ein täglicher Cron-Workflow ruft die Langdock-Changelog-Seite (oder RSS-Feed) ab; ein Diff-Vergleich mit dem letzten bekannten Stand identifiziert neue Einträge.
2. Klassifiziere Updates automatisch: ein KI-Schritt analysiert den neuen Changelog-Text und klassifiziert: `BREAKING_CHANGE` (Response-Schema-Änderung, Deprecation, Endpoint-Entfernung), `FEATURE_ADD` (neuer Endpoint, neues Feld), `BUGFIX` (keine Migrations-Aktion nötig).
3. Leite Team-Benachrichtigungen ab: `BREAKING_CHANGE` → sofortige Slack-Benachrichtigung an DevOps-Channel + Jira-Ticket-Erstellung mit 30-Tage-Migrations-Deadline; `FEATURE_ADD` → wöchentliche Zusammenfassung im Tech-Newsletter; `BUGFIX` → Log ohne Benachrichtigung.
4. Generiere eine Migrations-Checkliste: für `BREAKING_CHANGE`-Einträge erstellt der Workflow automatisch eine Checkliste: (a) API-Mock aktualisieren (S-API-051), (b) Integrationstests ausführen, (c) Canary-Deployment vorbereiten (S-API-052), (d) Rollback-Plan dokumentieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein DevOps-Automatisierer. Wir wollen proaktiv über Langdock-API-Updates informiert werden, bevor Breaking Changes unsere Produktion treffen. Beschreibe einen automatisierten Workflow: (1) tägliches Changelog-Monitoring, (2) KI-basierte Update-Klassifikation (Breaking/Feature/Bugfix), (3) differenzierte Team-Benachrichtigung pro Klasse, (4) automatisch generierte Migrations-Checkliste für Breaking Changes. Liefere ein vollständiges Workflow-Konzept."
**Erwartetes Artefakt:** Ein automatisierter Benachrichtigungs-Workflow (Changelog-Monitoring, Update-Klassifikation, Team-Benachrichtigung, Migrations-Checkliste).
**Fallstricke (≥2 spezifisch):**
- Jedes API-Update — egal wie klein — löst eine Slack-Benachrichtigung aus; das Team entwickelt Alert-Fatigue und ignoriert auch kritische Breaking-Change-Alerts; die Klassifikation ist zwingend, um Signalrauschen zu reduzieren.
- Der Workflow monitort nur die Changelog-Seite, nicht die tatsächliche API-Response-Schema; ein stilles Breaking Change (Schema-Änderung ohne Changelog-Eintrag) wird nicht entdeckt; ein wöchentlicher Smoke-Test gegen ein Response-Fixture (S-API-051) ist als Ergänzung empfohlen.
**Anschluss-Szenario:** S-API-059

### S-API-059 API-Sandbox-Umgebung für sicheres Experimentieren

**Wann nutzen (Trigger):** Das Marketing-Team will neue KI-Prompt-Strategien und Agenten-Konfigurationen ausprobieren, ohne das Produktions-Setup zu beeinflussen oder echte Token-Budgets zu verbrauchen. Jede Experimentier-Session in der Produktion verursacht ungewollte Kosten und Risiken für laufende Kampagnen. (Quelle: S-API-051, S-API-052, sources/06 Deployment-Modelle)
**Strategisches Ziel:** Ein Sandbox-Umgebungs-Konzept für die Langdock-API-Integration aufbauen, das Marketing-Teams und Entwickler frei experimentieren lässt — mit kostengünstigen Flash-Modellen, synthetischen Testdaten und vollständiger Isolation von der Produktionsumgebung.
**Hands-on Ergebnis:** Ein Sandbox-Setup-Konzept: Umgebungstrennung, Modell-Konfiguration für die Sandbox, Testdaten-Strategie und Promotions-Prozess von Sandbox nach Produktion.
**Eingesetzte Langdock-Fähigkeit(en):** Advisory, API Deployment Advisory
**Vorgehen (4 Schritte):**
1. Trenne Umgebungen konsequent: separater Langdock-Workspace für Sandbox (kein Zugriff auf Produktions-Wissensordner, kein Zugriff auf echte CRM-Daten); separate API-Keys; `BASE_URL`-Konfiguration in `.env.sandbox` vs. `.env.production`.
2. Konfiguriere die Sandbox für günstige Experimente: Standard-Modell in der Sandbox ist ein Flash-/Haiku-Modell (10× günstiger als Sonnet); Token-Budget-Limit pro Entwickler bei 5 USD/Tag, um unkontrollierte Kosten zu verhindern; kein Streaming (einfacheres Debugging).
3. Definiere die Testdaten-Strategie: keine echten Kundendaten in der Sandbox; synthetische Testprodukte, fiktive Kampagnennamen und generierte Nutzerprofile; ein `test-data-generator`-Skript erstellt konsistente Testdatensätze, die alle Entwickler verwenden.
4. Standardisiere den Promotions-Prozess: bevor ein experimentell entwickelter Agent oder Prompt in die Produktion übernommen wird — (a) drei Spot-Tests mit Canary-Prompts (S-API-034-Methodik), (b) Review durch Brand-Verantwortlichen, (c) Dokumentation im Wissensordner.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein DevOps-Architekt. Wir wollen eine sichere Sandbox-Umgebung für KI-Experimente aufbauen, die von unserer Produktion vollständig isoliert ist. Erkläre: (1) wie wir Langdock-Workspaces für Sandbox vs. Produktion trennen, (2) Modell- und Budget-Konfiguration für die Sandbox, (3) Testdaten-Strategie ohne echte Kundendaten, (4) Promotions-Prozess von Sandbox nach Produktion. Liefere ein vollständiges Setup-Konzept."
**Erwartetes Artefakt:** Ein Sandbox-Setup-Konzept (Umgebungstrennung, Modell-Konfiguration, Testdaten-Strategie, Promotions-Prozess).
**Fallstricke (≥2 spezifisch):**
- Die Sandbox teilt denselben Langdock-Workspace wie die Produktion — ein fehlerhafter Experiment-Prompt kann versehentlich Produktions-Wissensordner modifizieren oder durch exzessive Token-Nutzung das Produktions-Budget aufbrauchen.
- Sandbox-Experimente werden mit echten Kundendaten durchgeführt (aus Bequemlichkeit) — das verstößt gegen DSGVO-Grundsätze der Datenvermeidung und riskiert, dass sensible Daten in Sandbox-Logs ungeschützt verbleiben.
**Anschluss-Szenario:** S-API-060

### S-API-060 OpenAI-Kompatibilitäts-Layer — Migrationsmuster und Fallstricke

**Wann nutzen (Trigger):** Ein Dienstleister hat für das Marketing-Team eine Automatisierungs-Lösung auf Basis der OpenAI-API gebaut. Das Unternehmen möchte aus Datenschutzgründen auf Langdock wechseln (EU-Hosting, Zero-Data-Retention), aber ohne das gesamte System neu zu entwickeln. Die IT-Leitung fragt, ob der "Drop-in-Replacement"-Ansatz wirklich so einfach ist wie versprochen. (Quelle: sources/06 OpenAI-Kompatibilität, S-API-001, research/50 A-03)
**Strategisches Ziel:** Die OpenAI-Kompatibilitäts-Layer von Langdock vollständig durchleuchten — Migrationsmuster, tatsächliche Kompatibilitätsgrenzen, bekannte Fallstricke und ein praxistaugliches Migrations-Playbook für IT und Dienstleister.
**Hands-on Ergebnis:** Ein Migrations-Playbook: Drop-in-Replacement-Schritt-für-Schritt-Anleitung, Kompatibilitätsgrenzen-Checkliste, bekannte Fallstricke und Validierungs-Testplan.
**Eingesetzte Langdock-Fähigkeit(en):** OpenAI-kompatibler Completion-Endpoint, Advisory
**Vorgehen (5 Schritte):**
1. Erkläre den Drop-in-Replacement-Kern: zwei Änderungen im Dienstleister-Code — `base_url` von `https://api.openai.com/v1` auf `https://api.langdock.com/openai/eu/v1` und `api_key` auf den Langdock-Bearer-Token; der Rest des Codes bleibt unverändert (OpenAI Python SDK, Axios, etc.).
2. Kartiere die Kompatibilitätsgrenzen: was funktioniert nahtlos (Chat Completions, Embeddings, grundlegende Parameter wie `temperature`, `max_tokens`, `stream`); was erfordert Anpassung (OpenAI-proprietäre Features wie `assistants`-API, `fine-tuning`-Endpoint, `realtime`-API haben kein Langdock-Äquivalent).
3. Dokumentiere bekannte Fallstricke: (a) Modell-Namen unterscheiden sich — `gpt-4o` heißt in Langdock anders; eine Modell-Name-Mapping-Tabelle ist Pflicht; (b) OpenAI-Funktionsaufruf-Syntax (`tools`-Parameter) ist kompatibel, aber Langdock-spezifische Agenten-Features sind über den Standard-Endpoint nicht zugänglich; (c) Rate-Limit-Headers können sich unterscheiden — Retry-Logik muss gegen Langdocks 429-Response getestet werden.
4. Baue den Validierungs-Testplan: nach der Migration führt das Team 10 Referenz-Prompts aus (zuvor mit OpenAI getestet), vergleicht Response-Qualität, Latenz und Token-Zählung; bei mehr als 20 % Qualitätsabweichung ist eine Prompt-Anpassung nötig.
5. Kommuniziere den Compliance-Gewinn: nach erfolgter Migration profitiert die bestehende Infrastruktur sofort von EU-Hosting, Zero-Data-Retention und Audit-Logs — der Dienstleister kann dieselbe ISO-27001-konforme Umgebung für alle seine DACH-Kunden nutzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Migrations-Berater. Wir wollen unsere OpenAI-basierte Marketing-Automatisierung auf Langdock migrieren und den Kompatibilitäts-Layer nutzen. Erkläre: (1) die zwei Kernschritte des Drop-in-Replacements, (2) welche OpenAI-Features nicht kompatibel sind, (3) die drei häufigsten Fallstricke bei der Migration (Modell-Namen, Rate-Limits, Agenten-Features), (4) einen Validierungs-Testplan nach der Migration. Liefere ein praxistaugliches Migrations-Playbook."
**Erwartetes Artefakt:** Ein Migrations-Playbook (Drop-in-Replacement-Schritte, Kompatibilitätsgrenzen-Checkliste, Fallstricke, Validierungs-Testplan).
**Fallstricke (≥2 spezifisch):**
- Das Team migriert blind, ohne Kompatibilitätsgrenzen zu prüfen — die Migration schlägt fehl, weil der Dienstleister die OpenAI Assistants-API nutzt, die Langdock nicht repliziert; vor der Migration muss ein Feature-Audit des bestehenden Systems stehen.
- Nach der Migration wird die Response-Qualität als "automatisch gleich" angenommen — verschiedene Modelle hinter demselben Endpoint können unterschiedliche Output-Qualitäten für spezifische Marketing-Tasks liefern; ein Validierungs-Testplan mit Referenz-Prompts ist unverzichtbar.
**Anschluss-Szenario:** S-API-001
