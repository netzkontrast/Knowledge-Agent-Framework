# Modelle und Kosten für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Modell-Empfehlungen für spezifische Marketing-Aufgaben
> - Kostensteuerung, Workspace-Limits und Provider-Vergleich
> - Pricing-Tiers und organisatorische Budget-Sicherung
>
> **Was diese Datei NICHT abdeckt:**
> - Technische Konfiguration von Agenten → siehe `02-agenten-konfiguration`
> - DSGVO-Details und Datenresidenz → siehe `08-sicherheit-und-governance`

## Modell-Katalog für Marketing-Aufgaben

Für Marketing-Aufgaben bietet Langdock eine breite Palette an KI-Modellen. Die Wahl des richtigen Modells balanciert Leistung und Budget. Dieser Katalog dient als Leitfaden für Marketing-Direktoren. In der folgenden Tabelle sind die wichtigsten EU-Modelle aufgeführt, inklusive ihrer wirtschaftlichen Gewichtung und den typischen Kosten pro 1M Tokens. Der Plattform-Standard orientiert sich an GPT-5.2 als Referenzwert.

| Modell-Kategorie | Modell | Multiplikator | Preis (Input/1M Tokens) | Marketing-Anwendungsfall |
| --- | --- | --- | --- | --- |
| **Light** | GPT-5.4 Mini | 0.3x | €0,14 | Daten-Bereinigung, Formatierung |
| **Efficient Default** | Haiku 4.5 | 0.8x | €0,23 | Standard-Konversationen, Agenten |
| **Balanced** | GPT-5.2 | 1.0x | €0,26 | Parsing, Standard-Coding, Kontext |
| **Step up** | GPT-5.4 | 1.5x | €0,45 | Reasoning, nuancierte Instruktionen |
| **Strong Generalist** | Sonnet 4.6 | 3.1x | €2,75 | Problemlösung, Deduktion |
| **Frontier Reasoning** | Opus 4.7 | 8.0x | €14,00 | Strategische Planung, komplexe Cases |
| **Rare Top Runs** | GPT-5.2 Pro | 24.0x | €55,00 | Maximale Tiefe für extreme Edge-Cases |

Die gezielte Zuweisung dieser Modelle ist die Grundlage für ein effektives Cost Engineering im Marketing. Nutzen Sie diese Übersicht bei der Konfiguration von Agenten oder der Planung von Automatisierungen.

## Modell-Empfehlungen für Content-Drafting

Das Erstellen von Entwürfen für Marketing-Content — von LinkedIn-Posts bis hin zu SEO-Artikeln — ist eine der häufigsten Aufgaben für KI-Agenten. Für dieses Content-Drafting empfiehlt sich ein sehr spezifischer Mix aus Modellen, um Qualität und Kosten optimal auszubalancieren. Für routinemäßiges Content-Drafting wie Standard-Social-Media-Posts oder interne Newsletter-Entwürfe ist **Gemini 2.5 Flash** oder **Haiku 4.5** die erste Wahl. Diese Modelle arbeiten im "Efficient Default"-Bereich und bieten eine hervorragende Geschwindigkeit bei minimalen Kosten (circa €0,23 pro 1M Input-Tokens). Sie sind ideal, wenn der Fokus auf Quantität und schneller Ideengenerierung liegt.

Wenn die Anforderungen an Tonalität (Brand Voice) oder den strukturellen Aufbau komplexer werden — beispielsweise bei Whitepapers, detaillierten Fachartikeln oder Landing-Page-Texten —, sollte das Modell hochgestuft werden. Hier ist **Sonnet 4.6** ("Strong Generalist", circa €2,75 pro 1M Input-Tokens) die bevorzugte Option. Sonnet 4.6 hat eine überlegene Fähigkeit, spezifische Stilvorgaben aus dem Wissensordner präzise umzusetzen und subtile Nuancen in der Markenstimme beizubehalten, was den manuellen Korrekturaufwand im Nachgang deutlich reduziert. Der höhere Preis rechtfertigt sich durch die signifikante Zeitersparnis bei der finalen Redaktion. Marketing-Teams sollten daher Standard-Entwürfe konsequent auf Flash/Haiku belassen und Sonnet exklusiv für High-Value-Content reservieren, bei dem stilistische Präzision erfolgskritisch ist.

## Modell-Empfehlungen für Briefing-Erstellung

Die Erstellung präziser Briefings für Agenturen oder interne Teams ist eine essenzielle Marketing-Disziplin, die stark von klaren Strukturen und umfassendem Kontextverständnis profitiert. Bei der Wahl des Modells für die Briefing-Erstellung kommt es darauf an, wie komplex die zugrundeliegenden Informationen sind. Handelt es sich um ein Standard-Briefing für wiederkehrende Kampagnen, bei dem lediglich bestehende Vorlagen mit neuen Parametern befüllt werden, reicht ein "Balanced"-Modell wie **GPT-5.2** (circa €0,26 pro 1M Input-Tokens) vollkommen aus. Es verarbeitet Strukturvorgaben zuverlässig und generiert saubere, verwertbare Dokumente.

Für strategisch anspruchsvollere Briefings, die umfangreiches Research-Material synthetisieren oder mehrere komplexe Zielgruppen-Personas integrieren müssen, ist ein "Step up"-Modell wie **GPT-5.4** (circa €0,45 pro 1M Input-Tokens) oder sogar ein "Strong Generalist" wie **Sonnet 4.6** empfehlenswert. Diese Modelle können widersprüchliche Informationen aus verschiedenen Quellen im Wissensordner besser auflösen und in eine kohärente strategische Anweisung übersetzen. Besonderes Augenmerk sollte hierbei auf die Kontextlänge gelegt werden: Wenn Sie dem Agenten umfangreiche Marktforschungsberichte als Kontext für das Briefing zur Verfügung stellen, steigen die Input-Kosten. Ein gut strukturiertes Prompt-Design (Context-Task-Format) in Kombination mit einem leistungsstarken Modell stellt sicher, dass das resultierende Briefing nicht nur eine Zusammenfassung, sondern eine echte Arbeitsgrundlage für Kreativ-Dienstleister bildet. Investieren Sie hier gezielt in etwas Rechenleistung, um Missverständnisse in der Ausführung zu vermeiden.

## Modell-Empfehlungen für strategische Analyse

Strategische Analysen im Marketing — wie die Auswertung von Wettbewerbsbewegungen, das Zusammenführen von Markttrends aus unstrukturierten Daten oder die Entwicklung langfristiger Go-to-Market-Strategien — erfordern die höchste Stufe an kognitiver Verarbeitungstiefe. Für diese komplexen Deduktionsaufgaben müssen Marketing-Direktoren auf Modelle der Kategorie "Frontier Reasoning" zurückgreifen. Das primäre Modell für diese Anforderungen ist **Opus 4.7**. Mit einem Multiplikator von 8.0x (circa €14,00 pro 1M Input-Tokens) ist es kostenintensiv, bietet aber unübertroffene Fähigkeiten in der logischen Analyse und der Synthese von heterogenen Informationen aus dem Wissensordner.

Für extreme Edge-Cases, bei denen tiefgehende quantitative und qualitative Daten für geschäftskritische Entscheidungen aggregiert und neu kombiniert werden müssen, steht die Kategorie "Rare Top Runs" zur Verfügung, repräsentiert durch **GPT-5.2 Pro** (Multiplikator 24.0x, circa €55,00 pro 1M Input-Tokens). Diese Modelle durchlaufen eine interne, iterative Lösungsfindung, bevor sie eine Antwort generieren, was sie für hochkomplexe Problemlösungen prädestiniert. Aufgrund der enormen Kosten sollten diese Modelle jedoch strikt limitiert und niemals für alltägliche Aufgaben oder automatisierte Workflows eingesetzt werden. Der Einsatzbereich beschränkt sich idealerweise auf vierteljährliche Strategie-Reviews, komplexe Jahresplanungen oder die Auswertung groß angelegter Customer-Insights-Studien. Eine klare interne Policy sollte regeln, wann Marketing-Teams diese Frontier-Modelle aktivieren dürfen, um das Budget nicht überzustrapazieren.

## Provider-Vergleich nach Anwendungsfall

Langdock ist modellagnostisch, was bedeutet, dass Nutzer flexibel zwischen verschiedenen Anbietern (Google, Anthropic, OpenAI, Mistral, Llama) wechseln können, ohne sich an einen Provider zu binden (Vendor-Lock-in). Jeder Provider hat spezifische Stärken für unterschiedliche Marketing-Szenarien. **OpenAI (GPT-Familie)** glänzt durch Vielseitigkeit und eine sehr gute "Out-of-the-Box"-Leistung bei strukturierter Datengenerierung und Code-basierten Analysen (z.B. im Data Analyst). **Anthropic (Claude-Familie: Sonnet, Opus, Haiku)** ist der absolute Marktführer bei Schreibaufgaben, Text-Nuancierung und der exakten Einhaltung komplexer Brand-Voice-Richtlinien. Für fast alle kreativen Content-Aufgaben im Marketing ist Anthropic die erste Wahl.

**Google (Gemini-Familie)** bietet enorme Geschwindigkeitsvorteile, besonders bei großen Kontextfenstern (z.B. wenn Sie einen gesamten PDF-Report auswerten). Gemini 2.5 Flash ist hervorragend für schnelle Extraktionen und erste Entwürfe geeignet. Die europäischen Provider **Mistral** und die Open-Source-Modelle der **Llama**-Serie bieten zudem exzellente Alternativen für Teams, die höchste Anforderungen an regionale Datenverarbeitung haben oder sehr spezifische, kostengünstige Massenverarbeitung anstreben. Die Wahl des Providers sollte immer fallbezogen erfolgen: Anthropic für nuancierte Markenkommunikation, OpenAI für logisch-strukturierte Analysen und Systemintegrationen, und Google für die schnelle Verarbeitung enormer Textmengen oder visuelle Analysen von Dashboards.

## Auto Mode

Der "Auto Mode" in Langdock ist eine Funktion, bei der die Plattform automatisch das vermeintlich am besten geeignete Modell für die aktuelle Anfrage auswählt. Für Marketing-Beginner, die sich noch nicht mit den Unterschieden zwischen den Providern und Tiers auseinandergesetzt haben, mag dies verlockend erscheinen. Es birgt jedoch ein erhebliches Risiko für unkontrolliertes Cost-Leakage. Wenn der Auto Mode aktiv ist, kann das System bei einer simplen Frage nach einer Headline versehentlich ein "Frontier Reasoning"-Modell wie Opus 4.7 ansteuern, wodurch die Kosten für eine triviale Aufgabe um den Faktor 30 bis 50 explodieren.

Dies ist besonders kritisch bei der Erstellung von automatisierten Workflows oder langlaufenden Agenten. Innerhalb von programmatischen Konfigurationen oder Workflows ist die Nutzung des Auto Mode daher strikt zu vermeiden. Für jede Automatisierung muss eine manuelle Modellzuweisung (z.B. fest auf "Efficient Default" / Haiku 4.5) erfolgen, um die Kosten vorhersehbar zu halten. Marketing-Direktoren sollten ihr Team schulen, den Auto Mode standardmäßig zu deaktivieren und stattdessen bewusst das günstigste Modell zu wählen, das die Aufgabe zuverlässig lösen kann. Die bewusste Modellwahl ist der effektivste Hebel zur Kostenkontrolle in der täglichen Nutzung. Sensibilisieren Sie Ihr Team dafür, dass Bequemlichkeit hier direkt zu Lasten des Abteilungsbudgets geht.

## BYOK (Bring Your Own Key)

Langdock bietet Enterprise-Kunden die Option "Bring Your Own Key" (BYOK). Dies bedeutet, dass das Unternehmen seine eigenen API-Schlüssel der jeweiligen Modell-Provider (z.B. direkt von OpenAI oder Anthropic) in der Langdock-Plattform hinterlegt. Die Abrechnung der eigentlichen Token-Nutzung erfolgt in diesem Fall nicht über Langdock, sondern direkt über die bestehenden Verträge mit den Providern. Diese Architektur lohnt sich insbesondere für Marketing-Teams in großen Organisationen, die bereits hochvolumige Rahmenverträge (Enterprise Agreements) mit Cloud-Anbietern wie Microsoft Azure (für OpenAI) oder AWS (für Anthropic) abgeschlossen haben.

Durch BYOK können Unternehmen ihre ausgehandelten Rabatte und zugesicherten Kontingente (Provisioned Throughput) nutzen, während sie gleichzeitig von der DSGVO-konformen Orchestrierung, der Zugangskontrolle und dem UI-Layer von Langdock profitieren. Es trennt die Software-Infrastruktur von der reinen Rechenleistung. Ein weiterer Vorteil ist die strikte Trennung von Kostenstellen, was das interne Controlling vereinfacht. Für kleinere Marketing-Teams oder Agenturen ohne dedizierte Cloud-Verträge ist die Standard-Abrechnung über Langdock meist unkomplizierter. BYOK wird typischerweise ab dem Enterprise-Tier relevant und ist ein zentraler Baustein, um KI in großem Maßstab wirtschaftlich rentabel in die bestehende IT-Landschaft zu integrieren.

## Workspace- und Workflow-Limits

Um "Denial-of-Wallet"-Szenarien — also explodierende Kosten durch fehlerhafte Automatisierungen oder exzessive Nutzung — zu verhindern, implementiert Langdock eine robuste, mehrstufige Budget-Governance. Das wichtigste Steuerungsinstrument ist das Workspace-Limit. Dieses globale Sicherheitsnetz deckelt die maximalen monatlichen Ausgaben der gesamten Organisation. Der Standardwert ist hierbei auf €500 pro Monat gesetzt. Wird dieses Limit erreicht, pausiert die Plattform automatisch alle kostenpflichtigen Modellanfragen, bis das Budget erhöht oder der nächste Abrechnungszyklus gestartet wird. Dies schützt vor unvorhergesehenen Budgetüberschreitungen am Monatsende.

Zusätzlich zum globalen Workspace-Limit ermöglicht Langdock eine granulare Kostensteuerung auf Workflow-Level. Für jede automatisierte Prozesskette (Workflow) kann ein dediziertes Budget festgelegt werden. Dies ist besonders wichtig für Marketing-Workflows, die Massendaten verarbeiten (z.B. das Übersetzen von tausenden Produktbeschreibungen). Sollte ein Loop-Knoten fehlerhaft konfiguriert sein, stoppt das Workflow-Level-Budget den Prozess, bevor signifikante Kosten entstehen. Ergänzend dazu greifen Per-Execution-Limits, die einzelne Ausführungen vor Endlosschleifen schützen (z.B. maximal 2.000 Schritte pro Workflow-Ausführung). Diese kombinierte Limit-Architektur ist das Fundament, auf dem Marketing-Direktoren KI-Initiativen sicher skalieren können, ohne finanzielle Risiken einzugehen.

## Warn-Schwellen 50%/75%/90%

Ein starres Limit allein reicht für eine proaktive Budgetverwaltung oft nicht aus, da ein plötzlicher Stopp aller KI-Funktionen laufende Marketing-Kampagnen oder zeitkritische Content-Produktionen empfindlich stören kann. Daher verfügt Langdock über ein System von automatisierten Warn-Schwellen (Alerts). Administratoren erhalten Benachrichtigungen, sobald der Workspace-Verbrauch bestimmte prozentuale Marken des festgelegten Budgets erreicht. Die Standardkonfiguration löst Warnungen bei 50%, 75% und 90% des Monatsbudgets aus. Diese Eskalationsstufen bieten genügend Vorlaufzeit, um korrigierend einzugreifen.

Wenn beispielsweise die 50%-Marke bereits in der ersten Woche des Monats erreicht wird, ist dies ein klares Indiz für ineffiziente Nutzung oder einen schlecht konfigurierten Workflow. Die Marketing-Leitung kann dann sofort nachsteuern, beispielsweise durch die Einschränkung teurer "Frontier Reasoning"-Modelle oder die Überprüfung von Automatisierungen, bevor das gesamte Monatsbudget aufgebraucht ist. Bei Erreichen der 90%-Schwelle können unkritische Prozesse temporär pausiert werden, um sicherzustellen, dass genügend Budget für essenzielle Agenten bis zum Monatsende verbleibt. Die kontinuierliche Überwachung dieser Warn-Schwellen sollte Teil der wöchentlichen Routine des Marketing-Operations-Teams sein, um eine reibungslose Verfügbarkeit der KI-Werkzeuge zu garantieren.

## Fair Usage Policy

Neben den direkten monetären Limits unterliegen die Interaktionen in Langdock einer Fair Usage Policy (FUP), die eine gerechte Verteilung der Ressourcen auf der Plattform sicherstellt. Diese Richtlinien sind so gestaltet, dass sie den normalen Arbeitsalltag im Marketing nicht einschränken, exzessives automatisiertes Scraping oder Missbrauch jedoch unterbinden. Eine wesentliche Komponente der FUP ist das Zeitlimit für zusammenhängende Chat-Sitzungen: Eine ununterbrochene Session ist auf 5 Stunden begrenzt. Danach muss der Kontext neu initialisiert werden, um zu verhindern, dass verwaiste Sessions unnötig Speicherressourcen binden.

Darüber hinaus gilt eine wöchentliche Zyklus-Berechnung (Mo-Mo Weekly) für bestimmte Metriken, und es gibt Obergrenzen für die Nachrichten-Frequenz. In Spitzenzeiten kann die Nutzung auf 250 Messages pro 3-Stunden-Fenster pro Nutzer beschränkt sein. Dies betrifft in der Regel nur Extrem-Szenarien, wie etwa den Versuch, hunderte von Anfragen manuell in kürzester Zeit abzusenden, anstatt einen dafür vorgesehenen Batch-Workflow zu nutzen. Für Marketing-Teams bedeutet dies: Großvolumige, repetitive Aufgaben (wie die massenhafte Lokalisierung von Katalogtexten) sollten immer als asynchrone Workflows angelegt werden und nicht über die synchrone Chat-Schnittstelle erzwungen werden. Die Kenntnis dieser Fair Usage Policy hilft, Frustrationen durch temporäre Rate-Limits zu vermeiden.

## Pricing-Tiers

Die Langdock-Plattform wird in verschiedenen Pricing-Tiers angeboten, die sich an der Größe und den Compliance-Anforderungen der Organisation orientieren. Für Evaluierungszwecke steht ein **Trial** zur Verfügung, um die Kernfunktionen risikofrei zu testen. Der Einstieg in den produktiven Einsatz erfolgt über den **Standard-Tarif (€25 pro Nutzer/Monat)**. Dieser Tarif deckt die Bedürfnisse der meisten kleinen bis mittelständischen Marketing-Teams ab und beinhaltet den Zugang zum Wissensordner, die Erstellung von Basis-Agenten und die Nutzung der gängigen Modelle.

Für fortgeschrittene Anwendungsfälle gibt es den **Max-Tarif (€99 pro Nutzer/Monat)**. Dieser schaltet komplexe Workflows, tiefergehende Integrationen und höhere Kapazitäten für große Datenmengen (z.B. umfangreiche RAG-Szenarien) frei. Er ist ideal für Teams, die signifikante Teile ihrer Content-Supply-Chain automatisieren möchten. Für Konzerne und regulierte Industrien steht der **Enterprise-Tarif** (Preis auf Anfrage) zur Verfügung. Dieser Tarif ist zwingend erforderlich, wenn Features wie Single Sign-On (SSO), Bring Your Own Key (BYOK), dediziertes EU-Hosting mit erweiterten DSGVO-Garantien, Audit-Logs oder native CRM-Integrationen (wie Salesforce) benötigt werden. Die Wahl des richtigen Tiers entscheidet darüber, welche Automatisierungs-Tiefe das Marketing-Team erreichen kann.

## Cost-Saving-Patterns für Marketing-Teams

Um den Return on Investment (ROI) von KI im Marketing zu maximieren, müssen Teams proaktiv Cost-Saving-Patterns implementieren. Der effektivste Hebel ist die Etablierung einer Modell-Hierarchie: Die Nutzung von Opus 4.7 oder GPT-5 Pro sollte genehmigungspflichtig sein, während Haiku 4.5 und Gemini 2.5 Flash als Standard für 80% der täglichen Aufgaben (wie E-Mail-Drafting oder SEO-Meta-Tags) vorgegeben werden. Ein weiterer entscheidender Faktor ist die effiziente Nutzung des Wissensordners (RAG). Anstatt riesige Dokumente in jedem Prompt neu hochzuladen (was immense Token-Kosten verursacht), sollten Informationen einmalig im Wissensordner strukturiert abgelegt werden.

Auch das Prompt-Design beeinflusst die Kosten direkt. Präzise, gut strukturierte Prompts (z.B. nach dem Persona-Task-Context-Format) reduzieren die Notwendigkeit für teure, iterative Nachbesserungen. Zudem sollten repetitive Massenaufgaben niemals manuell im Chat, sondern über Workflows abgewickelt werden, bei denen explizit günstige Modelle zugewiesen sind. Schließlich ist die Schulung von "KI-Champions" im Team essenziell. Diese Experten überwachen die Nutzung, identifizieren ineffiziente Agenten und verbreiten Best Practices zur Token-Optimierung. Ein bewusster Umgang mit der Ressource "Compute" unterscheidet erfolgreiche KI-Transformationen von teuren Experimenten.

## Marketing-Szenarien aus dieser Domäne

### S-MK-001 Praxis-Szenario: Content Marketing Use Case 1

**Wann nutzen (Trigger):** Julia Lenz benötigt eine Zusammenfassung der Q3-Nachhaltigkeitsstrategie für den Firmenblog.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 0.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 0.
**Anschluss-Szenario:** S-MK-002
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-002 Praxis-Szenario: SEO Use Case 2

**Wann nutzen (Trigger):** Das SEO-Team meldet einen massiven Ranking-Verlust für das Keyword 'B2B Software'.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 1.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 1.
**Anschluss-Szenario:** S-MK-003
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-003 Praxis-Szenario: Performance Marketing Use Case 3

**Wann nutzen (Trigger):** Die CPLs (Cost-per-Lead) auf LinkedIn haben das Quartalsbudget gesprengt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 2.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 2.
**Anschluss-Szenario:** S-MK-004
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-004 Praxis-Szenario: Brand Use Case 4

**Wann nutzen (Trigger):** Eine Agentur hat Brand-Assets geliefert, die nicht der Corporate Identity entsprechen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 3.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 3.
**Anschluss-Szenario:** S-MK-005
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-005 Praxis-Szenario: Social Media Use Case 5

**Wann nutzen (Trigger):** Der Social-Media-Kalender für den Dezember weist eine Lücke von zwei Wochen auf.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 4.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 4.
**Anschluss-Szenario:** S-MK-006
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-006 Praxis-Szenario: CRM Use Case 6

**Wann nutzen (Trigger):** Kunden beschweren sich über unpersönliche E-Mails im Onboarding-Prozess.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 5.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 5.
**Anschluss-Szenario:** S-MK-007
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-007 Praxis-Szenario: ABM Use Case 7

**Wann nutzen (Trigger):** Ein Enterprise-Pitch für einen wichtigen Pharmakonzern steht am Freitag an.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 6.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 6.
**Anschluss-Szenario:** S-MK-008
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-008 Praxis-Szenario: PR Use Case 8

**Wann nutzen (Trigger):** Das Handelsblatt fordert ein Statement zur neuen EU-KI-Verordnung.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 7.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 7.
**Anschluss-Szenario:** S-MK-009
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-009 Praxis-Szenario: Research Use Case 9

**Wann nutzen (Trigger):** Das Management verlangt eine Konkurrenzanalyse zum neuen SaaS-Startup aus Berlin.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 8.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 8.
**Anschluss-Szenario:** S-MK-010
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-010 Praxis-Szenario: MarketingOps Use Case 10

**Wann nutzen (Trigger):** Der Freigabeprozess für LinkedIn-Beiträge dauert aktuell drei Wochen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 9.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 9.
**Anschluss-Szenario:** S-MK-011
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-011 Praxis-Szenario: Analytics Use Case 11

**Wann nutzen (Trigger):** Die Marketing-Direktorin muss die Diskrepanz zwischen GA4 und Salesforce erklären.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 10.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 10.
**Anschluss-Szenario:** S-MK-012
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-012 Praxis-Szenario: Events Use Case 12

**Wann nutzen (Trigger):** Nach der Messe in München müssen 500 Leads individuell kontaktiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 11.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 11.
**Anschluss-Szenario:** S-MK-013
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-013 Praxis-Szenario: Localization Use Case 13

**Wann nutzen (Trigger):** Eine erfolgreiche US-Kampagne soll für den konservativen Schweizer Markt adaptiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 12.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 12.
**Anschluss-Szenario:** S-MK-014
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-014 Praxis-Szenario: Internal Enablement Use Case 14

**Wann nutzen (Trigger):** Das Team hat Schwierigkeiten mit den neuen Prompting-Guidelines.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 13.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 13.
**Anschluss-Szenario:** S-MK-015
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-015 Praxis-Szenario: Content Marketing Use Case 15

**Wann nutzen (Trigger):** Die Click-Through-Rate (CTR) des monatlichen Newsletters ist unter 2% gefallen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 14.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 14.
**Anschluss-Szenario:** S-MK-016
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-016 Praxis-Szenario: SEO Use Case 16

**Wann nutzen (Trigger):** Ein neues Produkt-Feature muss auf der Landingpage SEO-optimiert beschrieben werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 15.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 15.
**Anschluss-Szenario:** S-MK-017
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-017 Praxis-Szenario: Performance Marketing Use Case 17

**Wann nutzen (Trigger):** Google Ads A/B-Tests zeigen keine signifikanten Unterschiede bei den Headlines.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 16.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 16.
**Anschluss-Szenario:** S-MK-018
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-018 Praxis-Szenario: Brand Use Case 18

**Wann nutzen (Trigger):** Das Logo-Redesign erfordert eine Aktualisierung aller bestehenden Sales-Decks.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 17.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 17.
**Anschluss-Szenario:** S-MK-019
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-019 Praxis-Szenario: Social Media Use Case 19

**Wann nutzen (Trigger):** Ein viraler Trend auf TikTok soll kurzfristig für B2B-Zwecke adaptiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 18.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 18.
**Anschluss-Szenario:** S-MK-020
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-020 Praxis-Szenario: CRM Use Case 20

**Wann nutzen (Trigger):** Die Abmelderaten (Unsubscribes) steigen nach dem letzten Rabatt-Mailing.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 19.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 19.
**Anschluss-Szenario:** S-MK-021
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-021 Praxis-Szenario: ABM Use Case 21

**Wann nutzen (Trigger):** Ein Key-Account-Manager benötigt Argumente gegen die Konkurrenzsoftware.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 20.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 20.
**Anschluss-Szenario:** S-MK-022
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-022 Praxis-Szenario: PR Use Case 22

**Wann nutzen (Trigger):** Eine technische Panne im Webshop erfordert sofortige Krisenkommunikation.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 21.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 21.
**Anschluss-Szenario:** S-MK-023
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-023 Praxis-Szenario: Research Use Case 23

**Wann nutzen (Trigger):** Die Zielgruppe der Gen-Z-Einkäufer muss für das nächste Jahr besser verstanden werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 22.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 22.
**Anschluss-Szenario:** S-MK-024
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-024 Praxis-Szenario: MarketingOps Use Case 24

**Wann nutzen (Trigger):** Marketing-Budgets werden in Excel getrackt, was zu ständigen Berechnungsfehlern führt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 23.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 23.
**Anschluss-Szenario:** S-MK-025
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-025 Praxis-Szenario: Analytics Use Case 25

**Wann nutzen (Trigger):** Die Bounce-Rate auf der Pricing-Seite liegt bei über 80 Prozent.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 24.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 24.
**Anschluss-Szenario:** S-MK-026
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-026 Praxis-Szenario: Events Use Case 26

**Wann nutzen (Trigger):** Das Event-Budget wurde gekürzt, aber das Webinar-Programm muss ausgebaut werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 25.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 25.
**Anschluss-Szenario:** S-MK-027
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-027 Praxis-Szenario: Localization Use Case 27

**Wann nutzen (Trigger):** Texte auf der österreichischen Website verwenden deutsches Vokabular (z.B. 'Januar').
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 26.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 26.
**Anschluss-Szenario:** S-MK-028
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-028 Praxis-Szenario: Internal Enablement Use Case 28

**Wann nutzen (Trigger):** Neue Mitarbeiter benötigen einen Leitfaden für die Nutzung des internen Wikis.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 27.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 27.
**Anschluss-Szenario:** S-MK-029
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-029 Praxis-Szenario: Content Marketing Use Case 29

**Wann nutzen (Trigger):** Ein externes Whitepaper muss in leicht konsumierbare Blog-Posts gesplittet werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 28.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 28.
**Anschluss-Szenario:** S-MK-030
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-030 Praxis-Szenario: SEO Use Case 30

**Wann nutzen (Trigger):** Lokale Suchanfragen für die Filiale in Hamburg konvertieren nicht in Termine.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 29.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 29.
**Anschluss-Szenario:** S-MK-031
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-031 Praxis-Szenario: Performance Marketing Use Case 31

**Wann nutzen (Trigger):** Das Retargeting-Publikum reagiert nicht mehr auf die aktuellen Video-Ads.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 30.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 30.
**Anschluss-Szenario:** S-MK-032
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-032 Praxis-Szenario: Brand Use Case 32

**Wann nutzen (Trigger):** Die Markenstimme wirkt in Fachartikeln oft zu werblich und nicht beratend.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 31.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 31.
**Anschluss-Szenario:** S-MK-033
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-033 Praxis-Szenario: Social Media Use Case 33

**Wann nutzen (Trigger):** Community-Fragen auf LinkedIn bleiben an den Wochenenden oft unbeantwortet.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 32.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 32.
**Anschluss-Szenario:** S-MK-034
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-034 Praxis-Szenario: CRM Use Case 34

**Wann nutzen (Trigger):** Die Willkommens-Serie für Newsletter-Abonnenten generiert keine Verkäufe.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 33.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 33.
**Anschluss-Szenario:** S-MK-035
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-035 Praxis-Szenario: ABM Use Case 35

**Wann nutzen (Trigger):** Die Account-Based-Marketing-Liste für das Q4 ist nicht ausreichend segmentiert.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 34.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 34.
**Anschluss-Szenario:** S-MK-036
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-036 Praxis-Szenario: PR Use Case 36

**Wann nutzen (Trigger):** Ein Fachartikel des CEOs soll als Gastbeitrag im Manager Magazin platziert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 35.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 35.
**Anschluss-Szenario:** S-MK-037
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-037 Praxis-Szenario: Research Use Case 37

**Wann nutzen (Trigger):** Eine Sentiment-Analyse der Twitter-Mentions des letzten Monats wird benötigt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 36.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 36.
**Anschluss-Szenario:** S-MK-038
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-038 Praxis-Szenario: MarketingOps Use Case 38

**Wann nutzen (Trigger):** Die UTM-Parameter-Struktur im Team ist inkonsistent und ruiniert das Tracking.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 37.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 37.
**Anschluss-Szenario:** S-MK-039
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-039 Praxis-Szenario: Analytics Use Case 39

**Wann nutzen (Trigger):** Der ROI (Return on Investment) von Content-Marketing-Maßnahmen ist unklar.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 38.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 38.
**Anschluss-Szenario:** S-MK-040
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-040 Praxis-Szenario: Events Use Case 40

**Wann nutzen (Trigger):** Die Redner-Profile für die Jahreskonferenz müssen für die Website aufbereitet werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 39.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 39.
**Anschluss-Szenario:** S-MK-041
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-041 Praxis-Szenario: Localization Use Case 41

**Wann nutzen (Trigger):** Die Website muss vollständig von der 'Sie'-Form auf ein modernes 'Du' umgestellt werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 40.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 40.
**Anschluss-Szenario:** S-MK-042
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-042 Praxis-Szenario: Internal Enablement Use Case 42

**Wann nutzen (Trigger):** Das Vertriebsteam nutzt veraltete One-Pager aus dem letzten Jahr.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 41.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 41.
**Anschluss-Szenario:** S-MK-043
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-043 Praxis-Szenario: Content Marketing Use Case 43

**Wann nutzen (Trigger):** Eine umfangreiche Marktforschungsstudie soll in Infografiken übersetzt werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 42.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 42.
**Anschluss-Szenario:** S-MK-044
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-044 Praxis-Szenario: SEO Use Case 44

**Wann nutzen (Trigger):** Bilder auf der Website haben keine Alt-Texte, was das SEO-Ranking bremst.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 43.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 43.
**Anschluss-Szenario:** S-MK-045
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-045 Praxis-Szenario: Performance Marketing Use Case 45

**Wann nutzen (Trigger):** Performance Max-Kampagnen liefern schlechte Asset-Kombinationen aus.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 44.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 44.
**Anschluss-Szenario:** S-MK-046
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-046 Praxis-Szenario: Brand Use Case 46

**Wann nutzen (Trigger):** Das Employer Branding auf Kununu leidet unter fehlenden Stellungnahmen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 45.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 45.
**Anschluss-Szenario:** S-MK-047
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-047 Praxis-Szenario: Social Media Use Case 47

**Wann nutzen (Trigger):** Influencer-Anfragen werden manuell beantwortet, was extrem ineffizient ist.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 46.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 46.
**Anschluss-Szenario:** S-MK-048
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-048 Praxis-Szenario: CRM Use Case 48

**Wann nutzen (Trigger):** Bestandskunden erhalten fälschlicherweise Akquise-Mails für Neukunden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 47.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 47.
**Anschluss-Szenario:** S-MK-049
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-049 Praxis-Szenario: ABM Use Case 49

**Wann nutzen (Trigger):** Ein Pitch für die Automotive-Branche erfordert hochspezifische Case Studies.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 48.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 48.
**Anschluss-Szenario:** S-MK-050
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-050 Praxis-Szenario: PR Use Case 50

**Wann nutzen (Trigger):** Der Jahresbericht muss für die Presse in fünf kompakte Kernbotschaften verdichtet werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 49.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 49.
**Anschluss-Szenario:** S-MK-051
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-051 Praxis-Szenario: Research Use Case 51

**Wann nutzen (Trigger):** Die Pricing-Modelle der Top-3-Konkurrenten ändern sich monatlich und müssen überwacht werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 50.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 50.
**Anschluss-Szenario:** S-MK-052
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-052 Praxis-Szenario: MarketingOps Use Case 52

**Wann nutzen (Trigger):** Das CRM-System synchronisiert Leads aus LinkedIn-Forms oft fehlerhaft.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 51.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 51.
**Anschluss-Szenario:** S-MK-053
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-053 Praxis-Szenario: Analytics Use Case 53

**Wann nutzen (Trigger):** Die Conversion-Rate-Optimierung (CRO) erfordert neue Hypothesen für Landingpages.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 52.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 52.
**Anschluss-Szenario:** S-MK-054
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-054 Praxis-Szenario: Events Use Case 54

**Wann nutzen (Trigger):** Ein geplantes Roadshow-Event braucht eine detaillierte logistische Checkliste.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 53.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 53.
**Anschluss-Szenario:** S-MK-055
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-055 Praxis-Szenario: Localization Use Case 55

**Wann nutzen (Trigger):** US-Rechtsbeispiele in Blogposts müssen durch DSGVO-Äquivalente ersetzt werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 54.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 54.
**Anschluss-Szenario:** S-MK-056
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-056 Praxis-Szenario: Internal Enablement Use Case 56

**Wann nutzen (Trigger):** Die interne Kommunikation zu KI-Tools ist fragmentiert und sorgt für Verwirrung.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 55.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 55.
**Anschluss-Szenario:** S-MK-057
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-057 Praxis-Szenario: Content Marketing Use Case 57

**Wann nutzen (Trigger):** Ein 45-minütiges Webinar-Video soll in kurze YouTube-Shorts geschnitten werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 56.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 56.
**Anschluss-Szenario:** S-MK-058
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-058 Praxis-Szenario: SEO Use Case 58

**Wann nutzen (Trigger):** Die Ladezeiten der Website verschlechtern sich durch nicht optimierte Skripte.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 57.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 57.
**Anschluss-Szenario:** S-MK-059
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-059 Praxis-Szenario: Performance Marketing Use Case 59

**Wann nutzen (Trigger):** YouTube-Pre-Roll-Ads werden von der Zielgruppe nach drei Sekunden übersprungen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 58.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 58.
**Anschluss-Szenario:** S-MK-060
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-060 Praxis-Szenario: Brand Use Case 60

**Wann nutzen (Trigger):** Die Corporate Identity muss um visuelle Vorgaben für KI-generierte Bilder erweitert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 59.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 59.
**Anschluss-Szenario:** S-MK-061
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-061 Praxis-Szenario: Social Media Use Case 61

**Wann nutzen (Trigger):** LinkedIn-Umfragen generieren Reichweite, aber keine qualifizierten Kontakte.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 60.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 60.
**Anschluss-Szenario:** S-MK-062
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-062 Praxis-Szenario: CRM Use Case 62

**Wann nutzen (Trigger):** Win-Back-Mails für inaktive Nutzer zeigen kaum Reaktivierungserfolge.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 61.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 61.
**Anschluss-Szenario:** S-MK-063
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-063 Praxis-Szenario: ABM Use Case 63

**Wann nutzen (Trigger):** Ein Account-Tiering-Modell für B2B-Kunden fehlt in der aktuellen Strategie.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 62.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 62.
**Anschluss-Szenario:** S-MK-064
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-064 Praxis-Szenario: PR Use Case 64

**Wann nutzen (Trigger):** Ein negativer Testbericht in einem Branchenmedium erfordert ein Fact-Sheet zur Gegendarstellung.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 63.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 63.
**Anschluss-Szenario:** S-MK-065
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-065 Praxis-Szenario: Research Use Case 65

**Wann nutzen (Trigger):** Die Churn-Rate von Neukunden muss qualitativ durch Interviews analysiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 64.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 64.
**Anschluss-Szenario:** S-MK-066
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-066 Praxis-Szenario: MarketingOps Use Case 66

**Wann nutzen (Trigger):** Die Zuweisung von Leads an Sales-Mitarbeiter erfolgt ohne klares Lead-Scoring.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 65.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 65.
**Anschluss-Szenario:** S-MK-067
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-067 Praxis-Szenario: Analytics Use Case 67

**Wann nutzen (Trigger):** Das Management fordert eine Kohorten-Analyse der Nutzer aus der Q1-Kampagne.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 66.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 66.
**Anschluss-Szenario:** S-MK-068
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-068 Praxis-Szenario: Events Use Case 68

**Wann nutzen (Trigger):** Das Feedback der letzten Kundenkonferenz liegt unstrukturiert als Text vor.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 67.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 67.
**Anschluss-Szenario:** S-MK-069
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-069 Praxis-Szenario: Localization Use Case 69

**Wann nutzen (Trigger):** Englische Slogans funktionieren im DACH-Raum nicht und benötigen Transkreation.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 68.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 68.
**Anschluss-Szenario:** S-MK-070
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-070 Praxis-Szenario: Internal Enablement Use Case 70

**Wann nutzen (Trigger):** Best Practices für Prompt-Engineering fehlen im Marketing-Team völlig.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 69.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 69.
**Anschluss-Szenario:** S-MK-071
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-071 Praxis-Szenario: Content Marketing Use Case 71

**Wann nutzen (Trigger):** Ein neues E-Book soll primär über organisches Pinterest-Marketing vertrieben werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 70.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 70.
**Anschluss-Szenario:** S-MK-072
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-072 Praxis-Szenario: SEO Use Case 72

**Wann nutzen (Trigger):** Die Content-Silos der Website haben keine strategischen internen Verlinkungen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 71.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 71.
**Anschluss-Szenario:** S-MK-073
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-073 Praxis-Szenario: Performance Marketing Use Case 73

**Wann nutzen (Trigger):** Die Conversion-Rate von mobilen Nutzern bei Meta Ads ist signifikant schlechter.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 72.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 72.
**Anschluss-Szenario:** S-MK-074
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-074 Praxis-Szenario: Brand Use Case 74

**Wann nutzen (Trigger):** Das Brand-Manifesto klingt veraltet und muss modernisiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 73.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 73.
**Anschluss-Szenario:** S-MK-075
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-075 Praxis-Szenario: Social Media Use Case 75

**Wann nutzen (Trigger):** Die Reichweite von Corporate-Influencern stagniert bei internen Themen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 74.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 74.
**Anschluss-Szenario:** S-MK-076
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-076 Praxis-Szenario: CRM Use Case 76

**Wann nutzen (Trigger):** Transaktionale Mails (z.B. Passwort-Reset) haben keine Cross-Selling-Elemente.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 75.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 75.
**Anschluss-Szenario:** S-MK-077
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-077 Praxis-Szenario: ABM Use Case 77

**Wann nutzen (Trigger):** Die Identifikation von Decision-Makern bei Target-Accounts ist zu zeitaufwändig.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 76.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 76.
**Anschluss-Szenario:** S-MK-078
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-078 Praxis-Szenario: PR Use Case 78

**Wann nutzen (Trigger):** Ein Award-Gewinn soll auf verschiedenen Kanälen unterschiedlich gefeiert werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 77.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 77.
**Anschluss-Szenario:** S-MK-079
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-079 Praxis-Szenario: Research Use Case 79

**Wann nutzen (Trigger):** Die Analyse von Open-Text-Feedback aus Kundenumfragen bindet zu viele Ressourcen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 78.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 78.
**Anschluss-Szenario:** S-MK-080
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-080 Praxis-Szenario: MarketingOps Use Case 80

**Wann nutzen (Trigger):** Das Onboarding neuer Agentur-Partner läuft oft chaotisch und unstrukturiert ab.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 79.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 79.
**Anschluss-Szenario:** S-MK-081
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-081 Praxis-Szenario: Analytics Use Case 81

**Wann nutzen (Trigger):** Die Attribution von Offline-Event-Leads zu Online-Sales ist nicht nachvollziehbar.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 80.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 80.
**Anschluss-Szenario:** S-MK-082
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-082 Praxis-Szenario: Events Use Case 82

**Wann nutzen (Trigger):** Ein Hybrid-Event erfordert spezifische Kommunikationspläne für On-site und Online.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 81.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 81.
**Anschluss-Szenario:** S-MK-083
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-083 Praxis-Szenario: Localization Use Case 83

**Wann nutzen (Trigger):** Lokale Suchergebnisse in der Schweiz werden durch deutsche Konkurrenten verdrängt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 82.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 82.
**Anschluss-Szenario:** S-MK-084
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-084 Praxis-Szenario: Internal Enablement Use Case 84

**Wann nutzen (Trigger):** Das Wissen über erfolgreiche Kampagnen-Setups bleibt in den Köpfen einzelner Mitarbeiter.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 83.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 83.
**Anschluss-Szenario:** S-MK-085
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-085 Praxis-Szenario: Content Marketing Use Case 85

**Wann nutzen (Trigger):** Ein interaktives Tool auf der Website braucht frische, Conversion-starke Texte.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 84.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 84.
**Anschluss-Szenario:** S-MK-086
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-086 Praxis-Szenario: SEO Use Case 86

**Wann nutzen (Trigger):** Das Google Business Profile generiert keine neuen Anfragen mehr.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 85.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 85.
**Anschluss-Szenario:** S-MK-087
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-087 Praxis-Szenario: Performance Marketing Use Case 87

**Wann nutzen (Trigger):** Die Cost-per-Acquisition (CPA) für B2B-Leads im SaaS-Bereich steigen stetig.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 86.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 86.
**Anschluss-Szenario:** S-MK-088
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-088 Praxis-Szenario: Brand Use Case 88

**Wann nutzen (Trigger):** Ein neues Logo soll eingeführt werden, aber der Kommunikationsplan fehlt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 87.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 87.
**Anschluss-Szenario:** S-MK-089
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-089 Praxis-Szenario: Social Media Use Case 89

**Wann nutzen (Trigger):** Ein TikTok-Account soll gestartet werden, ohne dass die Brand Voice leidet.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 88.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 88.
**Anschluss-Szenario:** S-MK-090
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-090 Praxis-Szenario: CRM Use Case 90

**Wann nutzen (Trigger):** Die Erneuerungsraten bei Software-Abonnements sinken im dritten Jahr.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 89.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 89.
**Anschluss-Szenario:** S-MK-091
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-091 Praxis-Szenario: ABM Use Case 91

**Wann nutzen (Trigger):** Ein Vertriebler benötigt dringend einen One-Pager für einen Kaltakquise-Call.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 90.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 90.
**Anschluss-Szenario:** S-MK-092
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-092 Praxis-Szenario: PR Use Case 92

**Wann nutzen (Trigger):** Das Unternehmen muss sich zu einem ESG-Thema (Environmental, Social, Governance) positionieren.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des PR-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich PR
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für PR. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich PR
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich PR die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 91.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 91.
**Anschluss-Szenario:** S-MK-093
Die Bewältigung dieser Herausforderung im Segment PR zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-093 Praxis-Szenario: Research Use Case 93

**Wann nutzen (Trigger):** Die Analyse von Markttrends aus PDF-Reporten von McKinsey dauert zu lange.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Research-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Research
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Research. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Research
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Research die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 92.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 92.
**Anschluss-Szenario:** S-MK-094
Die Bewältigung dieser Herausforderung im Segment Research zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-094 Praxis-Szenario: MarketingOps Use Case 94

**Wann nutzen (Trigger):** Die Übergabe von MQLs (Marketing Qualified Leads) an SQLs ist nicht definiert.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des MarketingOps-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich MarketingOps
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für MarketingOps. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich MarketingOps
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich MarketingOps die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 93.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 93.
**Anschluss-Szenario:** S-MK-095
Die Bewältigung dieser Herausforderung im Segment MarketingOps zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-095 Praxis-Szenario: Analytics Use Case 95

**Wann nutzen (Trigger):** Die Performance des letzten Black-Friday-Sales muss detailliert nachbereitet werden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Analytics-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Analytics
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Analytics. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Analytics
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Analytics die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 94.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 94.
**Anschluss-Szenario:** S-MK-096
Die Bewältigung dieser Herausforderung im Segment Analytics zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-096 Praxis-Szenario: Events Use Case 96

**Wann nutzen (Trigger):** Die Speaker für ein virtuelles Event reichen ihre Abstracts nicht rechtzeitig ein.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Events-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Events
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Events. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Events
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Events die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 95.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 95.
**Anschluss-Szenario:** S-MK-097
Die Bewältigung dieser Herausforderung im Segment Events zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-097 Praxis-Szenario: Localization Use Case 97

**Wann nutzen (Trigger):** Die Transkreation einer emotionalen Videokampagne scheitert an kulturellen Hürden.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Localization-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Localization
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Localization. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Localization
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Localization die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 96.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 96.
**Anschluss-Szenario:** S-MK-098
Die Bewältigung dieser Herausforderung im Segment Localization zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-098 Praxis-Szenario: Internal Enablement Use Case 98

**Wann nutzen (Trigger):** Ein Leitfaden für die Nutzung des Corporate Designs in Canva fehlt.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Internal Enablement-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Internal Enablement
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Internal Enablement. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Internal Enablement
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Internal Enablement die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 97.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 97.
**Anschluss-Szenario:** S-MK-099
Die Bewältigung dieser Herausforderung im Segment Internal Enablement zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-099 Praxis-Szenario: Content Marketing Use Case 99

**Wann nutzen (Trigger):** Die Produktion von Fallstudien dauert im Durchschnitt vier Wochen pro Stück.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Content Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Content Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Content Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Content Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Content Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 98.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 98.
**Anschluss-Szenario:** S-MK-100
Die Bewältigung dieser Herausforderung im Segment Content Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-100 Praxis-Szenario: SEO Use Case 100

**Wann nutzen (Trigger):** Das Ranking für informationelle Keywords bricht durch Google AI Overviews ein.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des SEO-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich SEO
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für SEO. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich SEO
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich SEO die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 99.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 99.
**Anschluss-Szenario:** S-MK-101
Die Bewältigung dieser Herausforderung im Segment SEO zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-101 Praxis-Szenario: Performance Marketing Use Case 101

**Wann nutzen (Trigger):** Die ROAS (Return on Ad Spend) Analyse für TikTok Ads ist fehlerhaft.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Performance Marketing-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Performance Marketing
**Eingesetzte Langdock-Fähigkeit(en):** Agenten
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Agenten' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Performance Marketing. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Performance Marketing
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Performance Marketing die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 100.
- Der Einsatz von Agenten ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 100.
**Anschluss-Szenario:** S-MK-102
Die Bewältigung dieser Herausforderung im Segment Performance Marketing zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-102 Praxis-Szenario: Brand Use Case 102

**Wann nutzen (Trigger):** Die Erstellung von Styleguides für externe Partner kostet zu viel interne Zeit.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Brand-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Brand
**Eingesetzte Langdock-Fähigkeit(en):** Ordner
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Ordner' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Brand. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Brand
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Brand die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 101.
- Der Einsatz von Ordner ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 101.
**Anschluss-Szenario:** S-MK-103
Die Bewältigung dieser Herausforderung im Segment Brand zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-103 Praxis-Szenario: Social Media Use Case 103

**Wann nutzen (Trigger):** Die Planung von Social-Media-Gewinnspielen erfordert wasserdichte Teilnahmebedingungen.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des Social Media-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich Social Media
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Data Analyst' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für Social Media. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich Social Media
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich Social Media die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 102.
- Der Einsatz von Data Analyst ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 102.
**Anschluss-Szenario:** S-MK-104
Die Bewältigung dieser Herausforderung im Segment Social Media zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-104 Praxis-Szenario: CRM Use Case 104

**Wann nutzen (Trigger):** Die Definition des ICP (Ideal Customer Profile) weicht zwischen Sales und Marketing ab.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des CRM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich CRM
**Eingesetzte Langdock-Fähigkeit(en):** Workflows
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Workflows' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für CRM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich CRM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich CRM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 103.
- Der Einsatz von Workflows ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 103.
**Anschluss-Szenario:** S-MK-105
Die Bewältigung dieser Herausforderung im Segment CRM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

### S-MK-105 Praxis-Szenario: ABM Use Case 105

**Wann nutzen (Trigger):** Julia Lenz benötigt eine Zusammenfassung der Q3-Nachhaltigkeitsstrategie für den Firmenblog.
**Strategisches Ziel:** Lösung der spezifischen Situation durch den Einsatz der Langdock-Plattform. Die Marketing-Direktorin erwartet hierbei nicht nur eine oberflächliche Analyse, sondern ein tiefes strategisches Verständnis. Das Ergebnis muss sofort anwendbar sein, um den Engpass in der Abteilung zu beheben und die Effizienz des ABM-Teams nachhaltig zu steigern.
**Hands-on Ergebnis:** Erstellung von: Ein strukturiertes Dokument im Bereich ABM
**Eingesetzte Langdock-Fähigkeit(en):** Canvas
**Vorgehen (3-5 Schritte):**
1. Öffne die Plattform und wähle die Funktion 'Canvas' aus, um die initiale Einrichtung vorzunehmen. Der Fokus liegt dabei auf der Vermeidung von unnötigen Token-Kosten.
2. Formuliere den Prompt so, dass die spezifischen Anforderungen der DACH-Zielgruppe direkt berücksichtigt werden. Jede Ungenauigkeit an dieser Stelle mindert die Qualität des Outputs.
3. Überprüfe das generierte Material akribisch. Die Verifikation von Fakten und Zahlen durch einen menschlichen Experten ist zwingend erforderlich.
4. Führe iterative Verbesserungen durch. Nutze detailliertes Feedback, um die KI zur Anpassung von Struktur, Tonalität und Fachvokabular zu zwingen.
5. Sende das finale Artefakt zur Abstimmung an das Management-Team. Die Dokumentation des Prompts dient der Skalierung für zukünftige Aufgaben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist ein Senior Consultant für ABM. Analysiere die vorliegenden Daten und generiere eine passende Lösung. Berücksichtige die aktuellen Marktbedingungen und vermeide generisches Berater-Vokabular. Formatiere den Output professionell."
**Erwartetes Artefakt:** Ein strukturiertes Dokument im Bereich ABM
**Fallstricke (mind. 2 spezifisch):**
- Wenn im Bereich ABM die Persona nicht präzise im System hinterlegt ist, produziert das Modell Texte, die an der Zielgruppe vorbeigehen. Dies führt zu starken Streuverlusten bei der Ausspielung 104.
- Der Einsatz von Canvas ohne klare Limitierung des Kontextfensters führt zu irrelevanter Informationsflut. Nutzer übersehen dann die Kernbotschaft, was den strategischen Mehrwert des Artefakts zunichte macht 104.
**Anschluss-Szenario:** S-MK-001
Die Bewältigung dieser Herausforderung im Segment ABM zeigt den klaren Return on Investment der Plattform. Die Automatisierung dieser komplexen Teilaufgabe reduziert den Stresspegel im Team und minimiert gleichzeitig das Risiko menschlicher Flüchtigkeitsfehler. Ein strategisch durchdachtes Vorgehen ist hier der Schlüssel zum langfristigen Markterfolg. Die Marketing-Direktorin gewinnt dadurch wertvolle Zeit für die eigentliche Markenführung.

