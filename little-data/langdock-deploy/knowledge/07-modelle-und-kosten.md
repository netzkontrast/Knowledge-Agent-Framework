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
| **Frontier Reasoning** | Opus 4.8 | 8.0x | €14,00 | Strategische Planung, komplexe Cases |
| **Rare Top Runs** | GPT-5.2 Pro | 24.0x | €55,00 | Maximale Tiefe für extreme Edge-Cases |

Die gezielte Zuweisung dieser Modelle ist die Grundlage für ein effektives Cost Engineering im Marketing. Nutzen Sie diese Übersicht bei der Konfiguration von Agenten oder der Planung von Automatisierungen.

## Modell-Empfehlungen für Content-Drafting

Das Erstellen von Entwürfen für Marketing-Content — von LinkedIn-Posts bis hin zu SEO-Artikeln — ist eine der häufigsten Aufgaben für KI-Agenten. Für dieses Content-Drafting empfiehlt sich ein sehr spezifischer Mix aus Modellen, um Qualität und Kosten optimal auszubalancieren. Für routinemäßiges Content-Drafting wie Standard-Social-Media-Posts oder interne Newsletter-Entwürfe ist **Gemini 2.5 Flash** oder **Haiku 4.5** die erste Wahl. Diese Modelle arbeiten im "Efficient Default"-Bereich und bieten eine hervorragende Geschwindigkeit bei minimalen Kosten (circa €0,23 pro 1M Input-Tokens). Sie sind ideal, wenn der Fokus auf Quantität und schneller Ideengenerierung liegt.

Wenn die Anforderungen an Tonalität (Brand Voice) oder den strukturellen Aufbau komplexer werden — beispielsweise bei Whitepapers, detaillierten Fachartikeln oder Landing-Page-Texten —, sollte das Modell hochgestuft werden. Hier ist **Sonnet 4.6** ("Strong Generalist", circa €2,75 pro 1M Input-Tokens) die bevorzugte Option. Sonnet 4.6 hat eine überlegene Fähigkeit, spezifische Stilvorgaben aus dem Wissensordner präzise umzusetzen und subtile Nuancen in der Markenstimme beizubehalten, was den manuellen Korrekturaufwand im Nachgang deutlich reduziert. Der höhere Preis rechtfertigt sich durch die signifikante Zeitersparnis bei der finalen Redaktion. Marketing-Teams sollten daher Standard-Entwürfe konsequent auf Flash/Haiku belassen und Sonnet exklusiv für High-Value-Content reservieren, bei dem stilistische Präzision erfolgskritisch ist.

## Modell-Empfehlungen für Briefing-Erstellung

Die Erstellung präziser Briefings für Agenturen oder interne Teams ist eine essenzielle Marketing-Disziplin, die stark von klaren Strukturen und umfassendem Kontextverständnis profitiert. Bei der Wahl des Modells für die Briefing-Erstellung kommt es darauf an, wie komplex die zugrundeliegenden Informationen sind. Handelt es sich um ein Standard-Briefing für wiederkehrende Kampagnen, bei dem lediglich bestehende Vorlagen mit neuen Parametern befüllt werden, reicht ein "Balanced"-Modell wie **GPT-5.2** (circa €0,26 pro 1M Input-Tokens) vollkommen aus. Es verarbeitet Strukturvorgaben zuverlässig und generiert saubere, verwertbare Dokumente.

Für strategisch anspruchsvollere Briefings, die umfangreiches Research-Material synthetisieren oder mehrere komplexe Zielgruppen-Personas integrieren müssen, ist ein "Step up"-Modell wie **GPT-5.4** (circa €0,45 pro 1M Input-Tokens) oder sogar ein "Strong Generalist" wie **Sonnet 4.6** empfehlenswert. Diese Modelle können widersprüchliche Informationen aus verschiedenen Quellen im Wissensordner besser auflösen und in eine kohärente strategische Anweisung übersetzen. Besonderes Augenmerk sollte hierbei auf die Kontextlänge gelegt werden: Wenn Sie dem Agenten umfangreiche Marktforschungsberichte als Kontext für das Briefing zur Verfügung stellen, steigen die Input-Kosten. Ein gut strukturiertes Prompt-Design (Context-Task-Format) in Kombination mit einem leistungsstarken Modell stellt sicher, dass das resultierende Briefing nicht nur eine Zusammenfassung, sondern eine echte Arbeitsgrundlage für Kreativ-Dienstleister bildet. Investieren Sie hier gezielt in etwas Rechenleistung, um Missverständnisse in der Ausführung zu vermeiden.

## Modell-Empfehlungen für strategische Analyse

Strategische Analysen im Marketing — wie die Auswertung von Wettbewerbsbewegungen, das Zusammenführen von Markttrends aus unstrukturierten Daten oder die Entwicklung langfristiger Go-to-Market-Strategien — erfordern die höchste Stufe an kognitiver Verarbeitungstiefe. Für diese komplexen Deduktionsaufgaben müssen Marketing-Direktoren auf Modelle der Kategorie "Frontier Reasoning" zurückgreifen. Das primäre Modell für diese Anforderungen ist **Opus 4.8**. Mit einem Multiplikator von 8.0x (circa €14,00 pro 1M Input-Tokens) ist es kostenintensiv, bietet aber unübertroffene Fähigkeiten in der logischen Analyse und der Synthese von heterogenen Informationen aus dem Wissensordner.

Für extreme Edge-Cases, bei denen tiefgehende quantitative und qualitative Daten für geschäftskritische Entscheidungen aggregiert und neu kombiniert werden müssen, steht die Kategorie "Rare Top Runs" zur Verfügung, repräsentiert durch **GPT-5.2 Pro** (Multiplikator 24.0x, circa €55,00 pro 1M Input-Tokens). Diese Modelle durchlaufen eine interne, iterative Lösungsfindung, bevor sie eine Antwort generieren, was sie für hochkomplexe Problemlösungen prädestiniert. Aufgrund der enormen Kosten sollten diese Modelle jedoch strikt limitiert und niemals für alltägliche Aufgaben oder automatisierte Workflows eingesetzt werden. Der Einsatzbereich beschränkt sich idealerweise auf vierteljährliche Strategie-Reviews, komplexe Jahresplanungen oder die Auswertung groß angelegter Customer-Insights-Studien. Eine klare interne Policy sollte regeln, wann Marketing-Teams diese Frontier-Modelle aktivieren dürfen, um das Budget nicht überzustrapazieren.

## Provider-Vergleich nach Anwendungsfall

Langdock ist modellagnostisch, was bedeutet, dass Nutzer flexibel zwischen verschiedenen Anbietern (Google, Anthropic, OpenAI, Mistral, Llama) wechseln können, ohne sich an einen Provider zu binden (Vendor-Lock-in). Jeder Provider hat spezifische Stärken für unterschiedliche Marketing-Szenarien. **OpenAI (GPT-Familie)** glänzt durch Vielseitigkeit und eine sehr gute "Out-of-the-Box"-Leistung bei strukturierter Datengenerierung und Code-basierten Analysen (z.B. im Data Analyst). **Anthropic (Claude-Familie: Sonnet, Opus, Haiku)** ist der absolute Marktführer bei Schreibaufgaben, Text-Nuancierung und der exakten Einhaltung komplexer Brand-Voice-Richtlinien. Für fast alle kreativen Content-Aufgaben im Marketing ist Anthropic die erste Wahl.

**Google (Gemini-Familie)** bietet enorme Geschwindigkeitsvorteile, besonders bei großen Kontextfenstern (z.B. wenn Sie einen gesamten PDF-Report auswerten). Gemini 2.5 Flash ist hervorragend für schnelle Extraktionen und erste Entwürfe geeignet. Die europäischen Provider **Mistral** und die Open-Source-Modelle der **Llama**-Serie bieten zudem exzellente Alternativen für Teams, die höchste Anforderungen an regionale Datenverarbeitung haben oder sehr spezifische, kostengünstige Massenverarbeitung anstreben. Die Wahl des Providers sollte immer fallbezogen erfolgen: Anthropic für nuancierte Markenkommunikation, OpenAI für logisch-strukturierte Analysen und Systemintegrationen, und Google für die schnelle Verarbeitung enormer Textmengen oder visuelle Analysen von Dashboards.

## Auto Mode

Der "Auto Mode" in Langdock ist eine Funktion, bei der die Plattform automatisch das vermeintlich am besten geeignete Modell für die aktuelle Anfrage auswählt. Für Marketing-Beginner, die sich noch nicht mit den Unterschieden zwischen den Providern und Tiers auseinandergesetzt haben, mag dies verlockend erscheinen. Es birgt jedoch ein erhebliches Risiko für unkontrolliertes Cost-Leakage. Wenn der Auto Mode aktiv ist, kann das System bei einer simplen Frage nach einer Headline versehentlich ein "Frontier Reasoning"-Modell wie Opus 4.8 ansteuern, wodurch die Kosten für eine triviale Aufgabe gegenüber einem Light-Modell um eine ganze Größenordnung (Faktor ~25–30) explodieren.

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

Um den Return on Investment (ROI) von KI im Marketing zu maximieren, müssen Teams proaktiv Cost-Saving-Patterns implementieren. Der effektivste Hebel ist die Etablierung einer Modell-Hierarchie: Die Nutzung von Opus 4.8 oder GPT-5.2 Pro sollte genehmigungspflichtig sein, während Haiku 4.5 und Gemini 2.5 Flash als Standard für 80% der täglichen Aufgaben (wie E-Mail-Drafting oder SEO-Meta-Tags) vorgegeben werden. Ein weiterer entscheidender Faktor ist die effiziente Nutzung des Wissensordners (RAG). Anstatt riesige Dokumente in jedem Prompt neu hochzuladen (was immense Token-Kosten verursacht), sollten Informationen einmalig im Wissensordner strukturiert abgelegt werden.

Auch das Prompt-Design beeinflusst die Kosten direkt. Präzise, gut strukturierte Prompts (z.B. nach dem Persona-Task-Context-Format) reduzieren die Notwendigkeit für teure, iterative Nachbesserungen. Zudem sollten repetitive Massenaufgaben niemals manuell im Chat, sondern über Workflows abgewickelt werden, bei denen explizit günstige Modelle zugewiesen sind. Schließlich ist die Schulung von "KI-Champions" im Team essenziell. Diese Experten überwachen die Nutzung, identifizieren ineffiziente Agenten und verbreiten Best Practices zur Token-Optimierung. Ein bewusster Umgang mit der Ressource "Compute" unterscheidet erfolgreiche KI-Transformationen von teuren Experimenten.

## Marketing-Szenarien aus dieser Domäne

Die folgenden Szenarien zeigen typische Modell- und Kostenentscheidungen (Model & Cost Decisions), vor denen Marketing-Direktoren in der täglichen Steuerung stehen. Der Fokus liegt auf der Beratung — also der bewussten Wahl von Modell, Auto Mode oder Budget-Deckel —, nicht auf der technischen Agenten-Konfiguration. Alle Preise und Modellnamen beziehen sich auf den Stand Mai 2026 und sollten bei jeder Quartalsplanung gegen langdock.com/models gegengeprüft werden; die belastbare Größe ist der Kostenmultiplikator (Cost Multiplier), nicht der absolute Credit-Preis.

### S-MK-001 Massen-Lokalisierung von 4.000 Produkttexten: Light-Modell statt Flaggschiff

**Wann nutzen (Trigger):** Der E-Commerce-Katalog soll für die DACH-Expansion in Schweizerhochdeutsch und österreichisches Deutsch lokalisiert werden — 4.000 kurze Produkttexte, und das erste Test-Batch mit Sonnet 4.6 hat das Workflow-Budget in zwei Stunden gesprengt.
**Strategisches Ziel:** Eine Massenaufgabe mit dem günstigsten Modell lösen, das die Qualität noch trägt, statt reflexhaft ein Flaggschiff-Modell (Flagship Model) zu wählen.
**Hands-on Ergebnis:** Eine Modell-Empfehlung mit gerechneter Kostenprognose: GPT-5.4 Mini (Multiplikator 0,3x) für den Lauf, Stichproben-Review durch Sonnet 4.6.
**Eingesetzte Langdock-Fähigkeit(en):** Workflows mit manueller Modellzuweisung, Workflow-Level-Budget, Modell-Katalog.
**Vorgehen (3-5 Schritte):**
1. Halte fest, dass die Lokalisierung eine Light-Aufgabe ist (kurze Texte, klare Vorlage) — der Kostenmultiplikator von Sonnet 4.6 (3,1x) ist hier nicht durch Qualitätsgewinn gerechtfertigt.
2. Weise dem Workflow fest GPT-5.4 Mini (0,3x) zu; nutze niemals Auto Mode in einem automatisierten Workflow, da dieser unvorhersehbar teure Modelle anstößt.
3. Setze ein Workflow-Budget (Standard €25/Monat) plus einen 50%-Warn-Alert, damit der Lauf bei Fehlkonfiguration stoppt, bevor er entgleist.
4. Lass die ersten 50 Texte als Stichprobe durch Sonnet 4.6 prüfen — gezielter Qualitäts-Check statt teurem Volllauf.
**Beispiel-Prompt (DE, PTCF):** "Übersetze die angehängten Produkttexte ins Schweizerhochdeutsch. Ersetze jedes 'ß' durch 'ss', nutze 'Velo' statt 'Fahrrad'. Behalte Länge und Tonalität bei, max. 2 Sätze pro Text. Gib eine Tabelle mit Original und Übersetzung zurück."
**Erwartetes Artefakt:** Lokalisierter Katalog als Tabelle plus eine kurze Kostennotiz (Multiplikator-Wahl + Budget-Deckel) für das Controlling.
**Fallstricke (≥2 spezifisch):**
- Light-Modelle übersehen regionale Vokabel-Feinheiten (Velo, parkieren) — Mitigation: die Region-Regeln explizit in den Prompt schreiben, nicht dem Modell überlassen.
- Ohne Workflow-Budget kann ein fehlerhafter Loop-Knoten das Workspace-Limit (€500) ausreizen — Mitigation: Per-Execution-Limit und 2.000-Schritte-Stopp aktiv lassen.
**Anschluss-Szenario:** S-MK-007

### S-MK-002 Board-Deck zur Jahresstrategie: Wann ein Frontier-Modell den 8x-Multiplikator wert ist

**Wann nutzen (Trigger):** In drei Tagen steht die Vorstandspräsentation zur Marketing-Jahresstrategie an; widersprüchliche Marktdaten aus fünf Quartalsreports müssen zu einer kohärenten These synthetisiert werden, und die Standard-Entwürfe wirken oberflächlich.
**Strategisches Ziel:** Für eine seltene, geschäftskritische Synthese bewusst ein Frontier-Reasoning-Modell (Frontier Reasoning Model) einsetzen — und diese Ausnahme gegenüber dem Budget rechtfertigen.
**Hands-on Ergebnis:** Eine strategische Synthese-Note mit Opus 4.8 (Multiplikator ~8x), erstellt im Chat, nicht in einem Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl im Chat, Wissensordner für die fünf Reports, Modell-Katalog.
**Vorgehen (3-5 Schritte):**
1. Lege die fünf Reports einmalig im Wissensordner ab, statt sie in jeden Prompt zu kopieren — das spart Input-Tokens trotz des hohen Multiplikators.
2. Pinne bewusst Opus 4.8 (Frontier-Tier, ~8x) — die Aufgabe ist Deduktion aus heterogenen Quellen, genau das Profil, für das der Aufpreis gerechtfertigt ist.
3. Begrenze den Einsatz auf diese eine Session; dokumentiere die Modellwahl als genehmigungspflichtige Ausnahme für das Quartals-Review.
4. Prüfe alle Zahlen aus der Synthese gegen die Originalreports — auch Frontier-Modelle halluzinieren Quartalszahlen.
**Beispiel-Prompt (DE, PTCF):** "Du bist mein strategischer Sparringspartner. Synthetisiere aus den fünf Quartalsreports im Wissensordner die drei wichtigsten Marktbewegungen. Wo sich Quellen widersprechen, benenne den Widerspruch statt ihn zu glätten. Ergebnis: 1 Seite, Sie-Form, für den Vorstand."
**Erwartetes Artefakt:** Eine einseitige Synthese-Note mit benannten Datenwidersprüchen, vorstandsreif.
**Fallstricke (≥2 spezifisch):**
- Opus 4.8 für eine simple Headline zu nutzen verbrennt das ~8-fache des Nötigen — Mitigation: das Frontier-Modell strikt auf Synthese begrenzen, Folgefragen auf GPT-5.2 herabstufen.
- Reports im Prompt statt im Wissensordner vervielfachen die Input-Kosten bei jedem Folgeprompt — Mitigation: einmalig im Wissensordner ablegen.
**Anschluss-Szenario:** S-MK-005

### S-MK-003 Auto Mode oder gepinntes Modell: Entscheidungsregel für ein neues Content-Team

**Wann nutzen (Trigger):** Ein neues, KI-unerfahrenes Content-Team startet auf Langdock, und die ersten Workspace-Verbrauchszahlen zeigen unerklärliche Ausschläge — vermutlich feuert der Auto Mode bei trivialen Anfragen Premium-Modelle.
**Strategisches Ziel:** Eine klare Regel etablieren, wann Auto Mode (Auto Mode) erlaubt ist und wann ein Modell fest gepinnt wird, um Cost-Leakage durch Bequemlichkeit zu stoppen.
**Hands-on Ergebnis:** Eine einseitige Team-Policy plus ein Workspace-Cap für Einsteiger.
**Eingesetzte Langdock-Fähigkeit(en):** Auto Mode (Routing GPT-5.2 ↔ Sonnet 4.6), Workspace-Limit, Usage-Transparenz-Leiste.
**Vorgehen (3-5 Schritte):**
1. Erkläre dem Team, dass Auto Mode nach der ersten Nachricht zwischen GPT-5.2 und Sonnet 4.6 wählt und dann fixiert — bei komplex formulierten Trivialfragen also unnötig teuer landen kann.
2. Lege die Regel fest: Auto Mode nur für exploratives Chatten; für wiederkehrende Aufgaben das günstigste passende Modell pinnen (z.B. Haiku 4.5, 0,8x).
3. Setze für Einsteiger einen reduzierten Workspace-Cap unter dem €500-Standard, damit ein Auto-Mode-Ausreißer früh stoppt.
4. Lass das Team einmal pro Woche die Usage-Transparenz-Leiste prüfen und Ausreißer melden.
**Beispiel-Prompt (DE, PTCF):** "Erstelle mir eine einseitige Team-Regel auf Deutsch: Wann nutzen wir Auto Mode, wann pinnen wir ein Modell? Nenne pro Aufgabentyp (Social-Post, Whitepaper, Analyse) das empfohlene Modell. Kurze Hauptsätze, max. 3 Sätze pro Punkt."
**Erwartetes Artefakt:** Eine Modell-Wahl-Policy (1 Seite) plus ein konfigurierter Einsteiger-Cap.
**Fallstricke (≥2 spezifisch):**
- Auto Mode in Workflows einzusetzen erzeugt unvorhersehbare Kosten — Mitigation: in jeder Automatisierung ein Modell fest zuweisen, nie Auto Mode.
- Ein zu niedriger Cap blockiert legitime Arbeit mitten in einer Kampagne — Mitigation: Warn-Schwellen bei 50/75/90% statt nur harter Stopp, damit man vorher nachsteuert.
**Anschluss-Szenario:** S-MK-001

### S-MK-004 BYOK-Entscheidung: Lohnt der Azure-Rahmenvertrag für das Marketing-Volumen?

**Wann nutzen (Trigger):** Das Unternehmen hat einen großen Azure-Rahmenvertrag mit ausgehandelten OpenAI-Rabatten, und die Marketing-Token-Kosten über die Langdock-Standardabrechnung steigen monatlich — die Frage ist, ob BYOK günstiger wäre.
**Strategisches Ziel:** Beurteilen, ob Bring Your Own Key (BYOK) für das Marketing-Volumen wirtschaftlich ist, statt es als reine IT-Entscheidung zu behandeln.
**Hands-on Ergebnis:** Eine Kosten-Gegenüberstellung Standard-Abrechnung vs. BYOK plus eine Empfehlung an die IT.
**Eingesetzte Langdock-Fähigkeit(en):** BYOK, Usage-Export-CSV für Chargeback, Enterprise-Tier.
**Vorgehen (3-5 Schritte):**
1. Zieh den Usage-Export (CSV) der letzten drei Monate und ermittle das tatsächliche Token-Volumen pro Modell — Schätzungen führen hier zu Fehlentscheidungen.
2. Halte fest, dass BYOK nur die reinen Token-Kosten verlagert (direkt beim Provider abgerechnet), Langdock berechnet dann nur Plattformgebühren — der Hebel liegt also in deinen ausgehandelten Azure-Rabatten.
3. Beachte, dass BYOK ab Enterprise-Tier relevant ist und der Admin mindestens drei Modelltypen (Completion, Embedding, Image-Gen) hinterlegen muss, sonst fallen UI-Funktionen aus.
4. Übergib die Gegenüberstellung an die IT mit klarer Empfehlung und der Volumenschwelle, ab der sich BYOK rechnet.
**Beispiel-Prompt (DE, PTCF):** "Vergleiche zwei Abrechnungsmodelle für unser Marketing-Team auf Basis der angehängten Usage-CSV: Langdock-Standard vs. BYOK über unseren Azure-Rabatt. Rechne mit Token-Volumen pro Modell. Gib eine Tabelle und eine klare Schwelle, ab welchem Volumen BYOK günstiger ist."
**Erwartetes Artefakt:** Eine Entscheidungsvorlage (Tabelle + Empfehlung) für das Controlling und die IT.
**Fallstricke (≥2 spezifisch):**
- BYOK ohne alle drei Modelltypen führt zu ausfallenden UI-Features (z.B. Bildgenerierung) — Mitigation: vor dem Umstieg Completion, Embedding und Image-Gen mappen.
- BYOK rechnet sich erst ab hohem Volumen; bei kleinen Teams überwiegt der Verwaltungsaufwand — Mitigation: erst die reale CSV-Schwelle berechnen, nicht spekulativ umstellen.
**Anschluss-Szenario:** S-MK-009

### S-MK-005 Workspace-Limit erreicht am 20. des Monats: Notfall-Triage statt Panik-Erhöhung

**Wann nutzen (Trigger):** Eine Warnung meldet, dass der Workspace-Verbrauch am 20. des Monats bereits bei 90% liegt — laufende Kampagnen drohen zu stoppen, und der Reflex ist, das Budget einfach zu verdoppeln.
**Strategisches Ziel:** Die Ursache des Budget-Verbrauchs (Budget Burn) diagnostizieren und gezielt nachsteuern, bevor man pauschal das Limit erhöht.
**Hands-on Ergebnis:** Eine Verbrauchs-Triage: welche Agenten/Workflows treiben die Kosten, plus eine priorisierte Sofortmaßnahme.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Limit, Warn-Schwellen 50/75/90%, Usage-Transparenz-Leiste, Modell-Multiplikatoren.
**Vorgehen (3-5 Schritte):**
1. Identifiziere über die Usage-Transparenz-Leiste die Top-Verbraucher nach Modell — meist treibt ein einzelner Agent auf einem Hoch-Multiplikator-Modell (z.B. versehentlich Opus statt Haiku) die Kosten.
2. Stufe unkritische Prozesse sofort herab oder pausiere sie, damit Budget für geschäftskritische Agenten bis Monatsende bleibt.
3. Prüfe, ob ein Workflow Auto Mode nutzt oder ein Modell falsch zugewiesen ist — die häufigste Einzelursache für Ausreißer.
4. Erst wenn der Verbrauch legitim und produktiv ist, beantrage eine begründete Limit-Erhöhung statt einer pauschalen Verdopplung.
**Beispiel-Prompt (DE, PTCF):** "Analysiere den angehängten Usage-Export der letzten 20 Tage. Welche drei Agenten oder Workflows verursachen die höchsten Kosten und welches Modell nutzen sie? Schlage je eine konkrete Sparmaßnahme vor (z.B. Modell-Downgrade). Antworte in Stichpunkten, Sie-Form."
**Erwartetes Artefakt:** Eine Triage-Liste der Top-3-Kostentreiber mit je einer Sofortmaßnahme.
**Fallstricke (≥2 spezifisch):**
- Pauschale Limit-Erhöhung verschiebt nur das Problem in den nächsten Monat — Mitigation: erst die Ursache (Modellwahl/Workflow) beheben.
- Ein harter Stopp mitten in einer zeitkritischen Kampagne — Mitigation: 90%-Schwelle nutzen, um unkritische Prozesse gezielt zu pausieren, statt alles laufen zu lassen.
**Anschluss-Szenario:** S-MK-003

### S-MK-006 Günstiges Modell, teure Halluzination: Wo Sparen am Faktencheck scheitert

**Wann nutzen (Trigger):** Ein auf Haiku 4.5 laufender Agent erstellt PR-Texte mit konkreten Marktzahlen, und in einem Entwurf tauchte eine frei erfundene Studienzahl auf — kurz vor Versand an die Presse.
**Strategisches Ziel:** Entscheiden, bei welchen Aufgabentypen ein günstiges Modell trotz Spar-Logik das falsche Werkzeug ist, weil das Halluzinationsrisiko (Hallucination Risk) den Schaden über die Ersparnis hebt.
**Hands-on Ergebnis:** Eine Risiko-Klassifikation der PR-Aufgaben plus eine angepasste Modell-Zuordnung mit Faktencheck-Schritt.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, Wissensordner als Faktenquelle, manuelle Modellwahl.
**Vorgehen (3-5 Schritte):**
1. Trenne PR-Aufgaben in faktenarme (Tonalität, Formulierung) und faktenkritische (Zahlen, Zitate, Studien) — nur Letztere brauchen ein stärkeres Modell oder strikten Quellenbezug.
2. Belasse faktenarme Aufgaben auf Haiku 4.5 (0,8x), aber zwinge faktenkritische Texte dazu, nur Zahlen aus dem Wissensordner zu nutzen, keine aus dem Modellwissen.
3. Füge einen verpflichtenden menschlichen Faktencheck vor jedem Presseversand ein — kein Modellpreis ersetzt diese Kontrolle.
4. Erwäge für faktenkritische Synthesen ein Step-up auf GPT-5.4 (1,5x), wenn Quellenbindung allein nicht reicht.
**Beispiel-Prompt (DE, PTCF):** "Schreibe die Pressemeldung nur auf Basis der Zahlen im Wissensordner. Erfinde keine Statistiken. Markiere jede Zahl mit der Quelle in Klammern. Wenn eine Angabe fehlt, schreibe '[Quelle fehlt]' statt zu schätzen. Sie-Form, faktischer Ton."
**Erwartetes Artefakt:** Eine PR-Risiko-Matrix (faktenarm/faktenkritisch) plus ein quellengebundener Meldungsentwurf mit markierten Zahlen.
**Fallstricke (≥2 spezifisch):**
- Sparen am Modell ohne Quellenbindung verlagert das Risiko auf erfundene Zahlen mit Reputationsschaden — Mitigation: Quellenbindung an den Wissensordner plus '[Quelle fehlt]'-Pflicht.
- Ein Modell-Upgrade allein verhindert Halluzinationen nicht zuverlässig — Mitigation: der menschliche Faktencheck bleibt unabhängig vom Modell verpflichtend.
**Anschluss-Szenario:** S-MK-002

### S-MK-007 Drei-Stufen-Pipeline: Flash zum Entwerfen, Sonnet zum Polieren, Opus nur zur Synthese

**Wann nutzen (Trigger):** Die Content-Supply-Chain für einen monatlichen Thought-Leadership-Artikel kostet zu viel, weil das ganze Team alles auf Sonnet 4.6 macht — vom ersten Brainstorm bis zur Endredaktion.
**Strategisches Ziel:** Eine Aufgabe in Phasen zerlegen und jeder Phase das kosteneffizienteste Modell zuordnen, statt durchgängig ein mittleres Modell zu fahren.
**Hands-on Ergebnis:** Eine dreistufige Modell-Pipeline mit zugeordneten Multiplikatoren und geschätzter Ersparnis.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, manuelle Modellwahl pro Phase, Wissensordner.
**Vorgehen (3-5 Schritte):**
1. Zerlege den Prozess: Ideenfindung/Rohentwurf, stilistische Politur (Brand Voice), strategische Synthese der Kernthese.
2. Ordne zu: Gemini 2.5 Flash für Rohentwürfe (sehr günstig), Sonnet 4.6 (3,1x) für die Brand-Voice-Politur, Opus 4.8 (~8x) nur falls die Kernthese echte Synthese braucht — sonst auch hier Sonnet.
3. Stelle dem Sonnet-Schritt die Brand-Voice-Richtlinie aus dem Wissensordner bereit, damit weniger manuelle Nachkorrektur nötig ist.
4. Rechne die Phasen-Multiplikatoren gegen den alten Durchgängig-Sonnet-Lauf und dokumentiere die Ersparnis fürs Team.
**Beispiel-Prompt (DE, PTCF):** "Phase 1 (Flash): Erstelle drei Rohgliederungen zum Thema X. Phase 2 (Sonnet): Wähle die beste und schreibe sie in unserer Brand Voice aus dem Wissensordner aus. Halte die Du-Form durchgängig ein, max. 4 Sätze pro Absatz."
**Erwartetes Artefakt:** Eine dokumentierte Modell-Pipeline mit Multiplikatoren pro Phase und einer Ersparnis-Rechnung.
**Fallstricke (≥2 spezifisch):**
- Phasenwechsel innerhalb einer Chat-Session löst kein Modell-Re-Routing aus (Auto Mode fixiert) — Mitigation: pro Phase bewusst eine neue Session mit gepinntem Modell starten.
- Flash-Rohentwürfe verleiten dazu, die Politur-Phase zu überspringen — Mitigation: die Sonnet-Phase als verbindlichen Schritt im Team-Prozess verankern.
**Anschluss-Szenario:** S-MK-008

### S-MK-008 Max-Tarif oder Standard: Lizenz-Tier an der tatsächlichen Automatisierungstiefe ausrichten

**Wann nutzen (Trigger):** Vor der Jahresbudgetierung steht die Frage, ob das 12-köpfige Marketing-Team vom Standard-Tarif (€25/Nutzer/Monat) auf Max (€99/Nutzer/Monat) wechseln soll — der Vertrieb drängt, aber der reale Bedarf ist unklar.
**Strategisches Ziel:** Den Pricing-Tier (Pricing Tier) an der tatsächlichen Nutzung ausrichten, statt pauschal hochzustufen oder aus Sparsamkeit Engpässe zu riskieren.
**Hands-on Ergebnis:** Eine Tier-Empfehlung pro Nutzergruppe mit Jahreskostenrechnung.
**Eingesetzte Langdock-Fähigkeit(en):** Pricing-Tiers, Usage-Export, Workflows (Max-Feature).
**Vorgehen (3-5 Schritte):**
1. Segmentiere das Team: wer braucht nur Chat und Basis-Agenten (Standard reicht) und wer baut Workflows oder fährt hochvolumige RAG-Szenarien (Max-Kandidaten)?
2. Halte fest, dass Max die fünffache Nutzungskapazität und komplexe Workflows freischaltet — relevant nur für die Automatisierer.
3. Prüfe, ob Features wie SSO oder BYOK gebraucht werden — die liegen erst im Enterprise-Tier, nicht in Max.
4. Rechne ein gemischtes Modell (z.B. 3x Max, 9x Standard) gegen pauschal-Max und gegen pauschal-Standard, jeweils auf Jahresbasis (ex VAT).
**Beispiel-Prompt (DE, PTCF):** "Erstelle eine Tier-Empfehlung für unser 12-köpfiges Team auf Basis der angehängten Nutzungsdaten. Wer braucht Max (Workflows, hohes Volumen), wer Standard? Gib eine Jahreskostenrechnung für ein gemischtes Modell vs. pauschal Max. Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Tier-Zuordnung pro Nutzergruppe mit Jahreskosten-Gegenüberstellung.
**Fallstricke (≥2 spezifisch):**
- Pauschal-Max für alle vervierfacht die Lizenzkosten, obwohl die meisten nur Chat nutzen — Mitigation: gemischte Tier-Zuordnung nach realem Bedarf.
- Annahme, Max enthalte SSO/BYOK — die sind Enterprise-only — Mitigation: Feature-Bedarf vorab gegen die Tier-Matrix prüfen, nicht raten.
**Anschluss-Szenario:** S-MK-010

### S-MK-009 Modell-Roster im Quartal aktualisieren: neue Releases bewerten statt blind übernehmen

**Wann nutzen (Trigger):** Langdock hat im Mai 2026 Opus 4.8 und Gemini 3.5 Flash global automatisch aktiviert, und das Team fragt, ob es seine etablierten Modell-Zuordnungen umstellen soll.
**Strategisches Ziel:** Neue Modell-Releases (Model Releases) strukturiert gegen die bestehende Zuordnung bewerten, statt aus Neugier auf das jeweils neueste Modell zu wechseln.
**Hands-on Ergebnis:** Eine aktualisierte Modell-Roster-Empfehlung mit begründeten Wechseln oder bewusstem Beibehalten.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, manuelle Modellwahl, Usage-Transparenz-Leiste.
**Vorgehen (3-5 Schritte):**
1. Liste die aktuellen Aufgabentyp-zu-Modell-Zuordnungen und markiere, wo ein neues Release theoretisch besser oder günstiger passt.
2. Beachte, dass Gemini 3.5 Flash (Stand Mai 2026 teurer als Gemini 2.5 Flash) nicht automatisch der günstigere Draft-Default ist — der niedrigere Multiplikator bleibt das Kriterium, nicht die höhere Versionsnummer.
3. Teste ein neues Modell nur an einem repräsentativen Aufgaben-Batch, bevor du es teamweit zuweist.
4. Dokumentiere die Entscheidung mit Datum ("Stand Mai 2026"), damit die nächste Quartalsplanung den Stand kennt.
**Beispiel-Prompt (DE, PTCF):** "Vergleiche für unsere Draft-Aufgaben Gemini 2.5 Flash und Gemini 3.5 Flash anhand der Kostenmultiplikatoren und der Output-Qualität auf den angehängten Beispieltexten. Empfiehl, ob wir wechseln. Begründe mit Kosten, nicht mit der Versionsnummer. Sie-Form."
**Erwartetes Artefakt:** Eine datierte Modell-Roster-Empfehlung mit Begründung pro Wechsel/Beibehalten.
**Fallstricke (≥2 spezifisch):**
- Annahme, ein höheres Versions-Release sei automatisch günstiger oder besser — Gemini 3.5 Flash ist teurer als 2.5 Flash — Mitigation: immer am Multiplikator und am Batch-Test entscheiden.
- Auto-aktivierte neue Modelle können über Auto Mode unbemerkt teurer routen — Mitigation: Usage-Leiste nach jedem Release prüfen und ggf. Modelle pinnen.
**Anschluss-Szenario:** S-MK-004

### S-MK-010 Frontier-Edge-Case rechtfertigen: Wann der 24x-Multiplikator vertretbar ist

**Wann nutzen (Trigger):** Für eine groß angelegte Customer-Insights-Studie mit zehntausenden offenen Antworten soll ein Modell tiefe, mehrstufige Muster ableiten — ein Analyst schlägt das teuerste verfügbare Modell vor, und die Marketing-Leitung muss den Aufpreis verantworten.
**Strategisches Ziel:** Entscheiden, ob ein Rare-Top-Run-Modell (Rare Top Run Model) mit ~24x-Multiplikator vertretbar ist, oder ob ein günstigeres Tier mit klugem Vorgehen genügt.
**Hands-on Ergebnis:** Eine begründete Modell-Entscheidung mit Kostendeckel und klarer Einsatzgrenze.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, Wissensordner, Workspace-Limit, Code Node für deterministische Vorverarbeitung.
**Vorgehen (3-5 Schritte):**
1. Trenne, was deterministisch vorverarbeitet werden kann (Code Node, kostet keine AI-Tokens) von dem, was echte Reasoning-Tiefe braucht — oft schrumpft die Frontier-Aufgabe dadurch stark.
2. Beziffere: GPT-5.2 Pro liegt bei ~24x des GPT-5.2-Baselines — der Einsatz ist nur für die finale, mehrstufige Synthese der vorverarbeiteten Cluster vertretbar, nicht für die Rohdaten.
3. Setze einen dedizierten Workspace-Cap für diesen einmaligen Lauf, damit der ~24x-Multiplikator nicht das Monatsbudget aufzehrt.
4. Halte die Entscheidung als genehmigte Ausnahme fest und prüfe das Ergebnis stichprobenartig gegen die Rohdaten.
**Beispiel-Prompt (DE, PTCF):** "Auf Basis der bereits geclusterten Antworten im Wissensordner: Leite die drei tiefsten, nicht offensichtlichen Verhaltensmuster ab und belege jedes mit zwei Beispielzitaten. Keine Spekulation über Daten hinaus. Ergebnis: strukturierte Liste, Sie-Form."
**Erwartetes Artefakt:** Eine Insights-Synthese der Top-Muster plus eine dokumentierte Frontier-Modell-Ausnahme mit Kostendeckel.
**Fallstricke (≥2 spezifisch):**
- Rohdaten direkt durch ein 24x-Modell zu jagen ist Geldverschwendung — Mitigation: deterministische Vorverarbeitung per Code Node, Frontier-Modell nur für die finale Synthese.
- Ein 24x-Lauf ohne dedizierten Cap kann das Workspace-Limit allein sprengen — Mitigation: einmaligen Lauf-Cap setzen und nach Abschluss zurücknehmen.
**Anschluss-Szenario:** S-MK-011

### S-MK-011 Teuerste 5 % der Prompts identifizieren und umbauen

**Wann nutzen (Trigger):** Das Workspace-Dashboard zeigt auffällig hohen Token-Verbrauch, aber unklar ist, welche konkreten Prompts oder Agenten die Budgetspitzen treiben — das Team ahnt, dass wenige "Heavy-Hitter" den Großteil verursachen. (Quelle: A-21)
**Strategisches Ziel:** Die kostenintensivsten Prompt-Muster isolieren und gezielt umbauen, statt pauschal alle Modelle herunterzustufen.
**Hands-on Ergebnis:** Eine priorisierte Liste der Top-5-Kostentreiber (Prompt/Agent + Modell + Multiplikator) plus eine konkrete Refactor-Empfehlung je Eintrag.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Dashboard (Token-Verbrauch-Sortierung), per-User- und per-Agent-Filter, Usage-Export-CSV.
**Vorgehen (4 Schritte):**
1. Öffne das Workspace-Dashboard und sortiere nach Token-Verbrauch absteigend; filtere getrennt nach Nutzer und nach Agent, um zu sehen, wo die Ausreißer liegen.
2. Exportiere die Top-10-Einträge als CSV und prüfe, welches Modell jeweils aktiv war — ein einzelner Frontier-Agent auf Opus 4.8 (~8x) treibt die Kosten oft mehr als zwanzig Standard-Prompts zusammen.
3. Klassifiziere jeden Heavy-Hitter: Ist die Komplexität des Prompts durch den Multiplikator gerechtfertigt, oder wurde ein zu teures Modell für eine Routine-Aufgabe eingesetzt?
4. Baue die Top-3-Problemprompts um: entweder Modell-Downgrade (z.B. von Sonnet auf Haiku), Kontext-Komprimierung (Wissensordner statt Inline-Upload) oder Splitting in eine günstige Vorverarbeitungs- und eine gezielte Synthese-Phase.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Kostenberater. Analysiere die angehängte Usage-CSV der letzten 30 Tage. Identifiziere die 5 teuersten Prompts oder Agenten nach Token-Kosten und benenne das jeweils genutzte Modell. Schlage für jeden Eintrag einen konkreten Umbau vor (Modell-Downgrade, Kontext-Komprimierung oder Task-Split). Antworte in einer Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Refactor-Tabelle mit den Top-5-Kostentreibern, zugehörigem Multiplikator und je einer priorisierten Sparmaßnahme.
**Fallstricke (≥2 spezifisch):**
- Dashboard-Zahlen zeigen absoluten Token-Verbrauch, nicht die tatsächlichen Kosten — ein langer Haiku-Prompt kann volumenmäßig oben erscheinen, aber kostenmäßig unbedeutend sein; Mitigation: immer Modell-Multiplikator zur absoluten Token-Zahl multiplizieren, bevor priorisiert wird.
- Refactoring ohne Qualitäts-Stichprobe kann die Output-Güte unbemerkt senken — Mitigation: nach jedem Modell-Downgrade fünf Canary-Prompts mit dem alten Ergebnis vergleichen.
**Anschluss-Szenario:** S-MK-012

### S-MK-012 Prompt-Caching-Potenzial für Briefing-Templates bewerten

**Wann nutzen (Trigger):** Das Team hat drei Briefing-Vorlagen, die täglich mehrfach als Kontext an Agenten übergeben werden — jedes Mal werden dieselben 3.000 Token neu verarbeitet, und der Monatsbericht zeigt, dass Input-Kosten schneller wachsen als der tatsächliche Output-Wert. (Quelle: A-22)
**Strategisches Ziel:** Beurteilen, ob Prompt-Caching (Prompt Caching) für repetitive Template-Anteile wirtschaftlich sinnvoll ist, und wenn ja, die Voraussetzungen schaffen.
**Hands-on Ergebnis:** Eine Caching-Entscheidung mit ROI-Schwelle sowie eine angepasste Prompt-Struktur, die den Cache-fähigen Teil klar vom variablen Teil trennt.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner als Cache-Ersatz, manuelle Prompt-Strukturierung, Usage-Export für ROI-Berechnung.
**Vorgehen (4 Schritte):**
1. Prüfe, ob der Template-Anteil pro Prompt über 2.048 Token liegt UND mindestens 5 Requests pro Minute anfallen — unterhalb dieser Schwelle überwiegt der Verwaltungsaufwand den Caching-Nutzen.
2. Trenne den statischen Template-Teil (Persona, Ton, Struktur) klar vom variablen Teil (Kampagnenname, Datum, Zielgruppe) — nur der statische Teil profitiert vom Cache.
3. Hinterlege den statischen Teil einmalig im Wissensordner; der Agent ruft ihn per RAG ab, statt ihn bei jeder Anfrage neu zu übergeben — das ist Langdocks praktische Caching-Entsprechung.
4. Messe die Input-Token-Reduktion nach 30 Tagen über den Usage-Export und dokumentiere die Ersparnis für das Quartals-Reporting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Prompt-Effizienz-Berater. Analysiere die drei Briefing-Templates im Wissensordner. Identifiziere, welche Anteile bei jedem Abruf identisch sind und daher gecacht werden könnten. Gib eine Empfehlung, welche Teile statisch (Cache-geeignet) und welche variabel bleiben müssen. Antworte mit einer strukturierten Aufschlüsselung, Sie-Form."
**Erwartetes Artefakt:** Eine annotierte Template-Struktur (statisch / variabel) plus eine ROI-Schätzung der monatlichen Token-Ersparnis.
**Fallstricke (≥2 spezifisch):**
- Caching lohnt sich nicht bei niedrigem Request-Volumen: unter 5 Requests/Minute und unter 2.048 Token Template-Anteil ist der Cache-Overhead größer als die Ersparnis — Mitigation: erst das Volumen messen, bevor die Architektur umgebaut wird.
- Statischen Cache-Inhalt zu selten aktualisieren führt zu veralteten Briefing-Vorgaben — Mitigation: eine Quartals-Review-Pflicht für alle gecachten Templates im Wissensordner einplanen.
**Anschluss-Szenario:** S-MK-013

### S-MK-013 Flash vs. Sonnet: Aufgaben-Routing-Entscheidung für das tägliche Content-Team

**Wann nutzen (Trigger):** Das Content-Team nutzt Sonnet 4.6 für alles — von der schnellen Headline bis zum Strategiepapier — und die Monatskostenabrechnung zeigt, dass 70 % der Token auf Routine-Drafts entfallen, die kein starkes Modell erfordern. (Quelle: A-27)
**Strategisches Ziel:** Eine verbindliche, aufgabenbezogene Routing-Regel etablieren, die Flash für Routine-Content und Sonnet für qualitätskritische Aufgaben reserviert.
**Hands-on Ergebnis:** Eine einseitige Routing-Matrix (Aufgabentyp → empfohlenes Modell + Multiplikator) plus eine geschätzte monatliche Einsparung.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, manuelle Modellwahl, Workspace-Warn-Schwellen.
**Vorgehen (4 Schritte):**
1. Kategorisiere die häufigsten Content-Aufgaben: Routine-Drafts und Übersetzungen (Flash/Haiku, ≤0,8x), Headlines und Social-Copy (Haiku 4.5), Brand-Voice-kritische Langform-Texte und Strategie-Reviews (Sonnet 4.6, 3,1x).
2. Lege fest, dass Flash-Klasse-Modelle der Default für jede Aufgabe sind, bei der kein explizites Qualitätsargument für Sonnet vorliegt — Bequemlichkeit ist kein Qualitätsargument.
3. Halte die Routing-Matrix im Wissensordner ab und verknüpfe sie mit dem Content-Agenten als Referenz, damit das Team die Regel im Chat abrufen kann.
4. Prüfe nach vier Wochen die Usage-Leiste: hat der Sonnet-Anteil im Verhältnis abgenommen? Wenn nicht, war die Kommunikation der Regel unklar.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Content-Routing-Berater. Erstelle eine Modell-Routing-Matrix für unser Content-Team auf Basis der Aufgabenliste im Wissensordner. Ordne jedem Aufgabentyp das günstigste ausreichende Modell (Flash, Haiku, Sonnet) mit Multiplikator zu. Gib eine Tabelle und eine geschätzte monatliche Einsparung bei konsequenter Anwendung. Sie-Form."
**Erwartetes Artefakt:** Eine Routing-Matrix (Aufgabentyp / Modell / Multiplikator / Begründung) plus Einsparungs-Schätzung als Team-Leitfaden.
**Fallstricke (≥2 spezifisch):**
- Flash-Modelle produzieren bei Brand-Voice-kritischen Texten inkonsistente Tonalität — Mitigation: jede Ausnahme für Sonnet muss schriftlich begründet werden, nicht aus Gewohnheit.
- Eine Routing-Matrix nützt nichts, wenn das Team sie nicht findet — Mitigation: die Matrix als Konversations-Starter im Content-Agenten verankern, nicht nur als Dokument im Ordner ablegen.
**Anschluss-Szenario:** S-MK-014

### S-MK-014 Monatliches KI-Budget für eine Kampagne im Voraus kalkulieren

**Wann nutzen (Trigger):** Vor dem Start einer größeren Omnichannel-Kampagne (6 Wochen, 4 Kanäle, 3 Sprachen) fragt die Finanzabteilung nach einer begründeten KI-Kosten-Prognose — das Team hat bisher immer erst im Nachhinein auf den Usage-Export geschaut. (Quelle: sources/12 Q119)
**Strategisches Ziel:** Vor Kampagnenstart eine belastbare Kostenprognose erstellen, die Modell-Multiplikatoren, Aufgabenvolumen und Workflow-Runs berücksichtigt, statt rückwirkend zu budgetieren.
**Hands-on Ergebnis:** Eine Excel-kompatible Kostenkalkulation mit Token-Schätzung pro Aufgabentyp, Modell-Multiplikator und einem Puffer-Faktor für Iterationen.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog (Multiplikatoren), Workflow-Budget-Funktion, Usage-Export vergangener Kampagnen als Referenz.
**Vorgehen (4 Schritte):**
1. Zerlege die Kampagne in Aufgabentypen (Briefing, Texterstellung, Übersetzung, Review, Analyse) und schätze für jede Aufgabe Anzahl der Durchläufe und typische Prompt-Länge in Token.
2. Multipliziere Token-Volumen je Aufgabentyp mit dem Kostenmultiplikator des geplanten Modells — nutze Referenzwerte aus dem Usage-Export vergangener Kampagnen als Ankerpunkt.
3. Addiere einen Iterations-Puffer von 30 % für Nachbesserungen und setze das Ergebnis als Workflow-Budget-Cap vor dem Kampagnenstart.
4. Übergib die Kalkulation an das Controlling mit einer klaren Zeile: "Basis: Kostenmultiplikatoren Stand Mai 2026 — bei Quartalsplanung gegen langdock.com/models gegenchecken."
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Budget-Planer. Erstelle auf Basis der angehängten Kampagnenplanung eine Kostenkalkulation. Nutze die Modell-Multiplikatoren aus dem Wissensordner. Schätze Token pro Aufgabentyp, addiere 30 % Iterations-Puffer und gib das Ergebnis als Tabelle mit Gesamt-Budget-Empfehlung aus. Sie-Form, EUR."
**Erwartetes Artefakt:** Eine tabellarische Vorkampagnen-Kalkulation (Aufgabentyp / Token-Schätzung / Modell / Multiplikator / Kosten-EUR / Puffer) als Controlling-Vorlage.
**Fallstricke (≥2 spezifisch):**
- Token-Schätzungen ohne Referenz aus vergangenen Kampagnen weichen stark von der Realität ab — Mitigation: immer den Usage-Export der letzten vergleichbaren Kampagne als Ankerpunkt verwenden, nie rein spekulativ schätzen.
- Der Puffer-Faktor deckt keine unkontrollierten Frontier-Model-Läufe ab — Mitigation: den Puffer zusammen mit einem Workflow-Cap setzen, damit Ausreißer gestoppt werden, bevor sie den Puffer aufzehren.
**Anschluss-Szenario:** S-MK-015

### S-MK-015 Modell mitten im Projekt wechseln: Regeln für den sauberen Übergang

**Wann nutzen (Trigger):** Ein Whitepaper-Projekt startete auf Sonnet 4.6, aber nach drei Entwurfsrunden zeigt sich, dass die strategische Kernthese flach bleibt — ein Teammitglied schlägt vor, auf Opus 4.7 zu wechseln, ohne zu wissen, ob das den laufenden Kontext zerstört. (Quelle: sources/12 Q21)
**Strategisches Ziel:** Klare Entscheidungsregeln für einen Modellwechsel innerhalb eines laufenden Projekts etablieren, um Kontextverlust und unnötige Kostensprünge zu vermeiden.
**Hands-on Ergebnis:** Ein Wechsel-Protokoll (wann wechseln, wie Kontext sichern, wie zurückwechseln) plus eine dokumentierte Modell-Entscheidung für das aktuelle Projekt.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl im Chat, Wissensordner als Kontext-Anker, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Definiere den Wechsel-Trigger: ein Modellwechsel ist gerechtfertigt, wenn drei Iterationen mit dem aktuellen Modell keinen messbaren Qualitätsfortschritt zeigen — nicht als Reflex nach einem schlechten Einzelergebnis.
2. Sichere den bisherigen Kontext: speichere die beste Zwischenversion im Wissensordner, bevor das Modell gewechselt wird — ein Modellwechsel löscht den Chat-Kontext nicht, aber das neue Modell hat keinen automatischen Zugriff auf frühere Schlussfolgerungen.
3. Starte eine neue Session mit dem höheren Modell, übergib die gesicherte Zwischenversion als Kontext-Dokument und formuliere explizit, was die vorherigen Entwürfe nicht geleistet haben.
4. Plane den Rückwechsel auf das günstigere Modell für die Überarbeitungs- und Formatierungsphase — Opus nur für die strategische Synthese, nicht für die redaktionelle Politur.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein strategischer Synthesizer. Ich übergebe dir den bisherigen Whitepaper-Entwurf aus dem Wissensordner. Die drei Hauptprobleme: [X, Y, Z]. Entwickle eine schärfere Kernthese, die alle drei überwindet. Gib mir eine überarbeitete Einleitung und einen neuen Gliederungs-Vorschlag. Sie-Form, max. 2 Seiten."
**Erwartetes Artefakt:** Ein dokumentiertes Wechsel-Protokoll plus eine überarbeitete Whitepaper-Kernthese aus dem Frontier-Modell-Lauf.
**Fallstricke (≥2 spezifisch):**
- Modellwechsel ohne Kontext-Sicherung bedeutet, dass das neue Modell den Entwurfsverlauf nicht kennt und schlechter startet als das alte Modell nach Iteration 3 — Mitigation: Zwischenversion immer im Wissensordner ablegen, bevor gewechselt wird.
- Auf dem höheren Modell auch die Formatierungs- und Korrekturphase laufen lassen ist vermeidbare Kostenverschwendung — Mitigation: Rückwechsel auf Sonnet oder Haiku für alle Phasen nach der strategischen Synthese fest einplanen.
**Anschluss-Szenario:** S-MK-016

### S-MK-016 ROI des KI-Setups für den CFO übersetzen

**Wann nutzen (Trigger):** Das Quartalsgespräch mit dem CFO steht an, und er will wissen, was das Marketing-Team für das Langdock-Budget bekommt — der Marketing-Direktor hat Token-Verbrauchszahlen, aber keine Sprache, die der CFO versteht. (Quelle: A-01)
**Strategisches Ziel:** KI-Effekte in kaufmännische Kennzahlen übersetzen: Token-Verbrauch → Lohnkosten-Äquivalent, Time-to-Brief → Opportunitätskostenersparnis, Iterations-Anzahl → Qualitätsproxy.
**Hands-on Ergebnis:** Eine einseitige CFO-Folie mit drei KPIs (AI-Assisted-Output-Ratio, Cost-per-Brief, Time-from-Brief-to-Draft) und einer Gesamt-ROI-Aussage.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export-CSV, Wissensordner für Stundensätze und Benchmark-Daten, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Ermittle aus dem Usage-Export, welcher Anteil des Marketing-Outputs KI-assistiert entstanden ist (AI-Assisted-Output-Ratio) — das ist die Ankerzahl für das CFO-Gespräch.
2. Berechne das Lohnkosten-Äquivalent: wie viele Arbeitsstunden hätten die erledigten Aufgaben ohne KI gekostet, multipliziert mit dem internen Stundensatz?
3. Stelle die Langdock-Lizenzkosten plus Token-Kosten der Stunden-Ersparnis gegenüber — das ergibt den ROI in Prozent.
4. Beschränke die CFO-Folie auf drei Kennzahlen maximum; mehr Details in den Appendix, nicht in den Hauptteil.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein CFO-Kommunikations-Berater. Übersetze die angehängten KI-Nutzungsdaten in eine einseitige ROI-Darstellung für den Vorstand. Nutze drei KPIs: AI-Assisted-Output-Ratio, Cost-per-Brief und Time-from-Brief-to-Draft. Vergleiche Lohnkosten-Äquivalent mit Langdock-Gesamtkosten. Gib das Ergebnis als Folie-Gliederung in Sie-Form aus."
**Erwartetes Artefakt:** Eine CFO-Folie (Gliederung + Kennzahlen) plus ein kurzes Methodenblatt zur Berechnung des Lohnkosten-Äquivalents.
**Fallstricke (≥2 spezifisch):**
- Stundensätze ohne Abstimmung mit HR zu schätzen erzeugt angreifbare Zahlen — Mitigation: offizielle interne Stundensätze oder Markt-Benchmarks als Quelle dokumentieren.
- KPIs ohne Vorjahresdaten sind Einmalwerte ohne Trend — Mitigation: bereits im ersten Quartal eine Baseline erheben, damit der nächste CFO-Report Vorjahresvergleiche zeigen kann.
**Anschluss-Szenario:** S-MK-017

### S-MK-017 Bulk-Lokalisierungs-Workflow: Batch statt synchronem Chat

**Wann nutzen (Trigger):** Das Team muss 800 Produktbeschreibungen in drei Sprachen lokalisieren und versucht es über den Chat — nach zwei Stunden sind 40 Texte fertig und das Rate-Limit ist erreicht. (Quelle: A-24)
**Strategisches Ziel:** Großvolumige Lokalisierungs-Aufgaben in einen asynchronen Batch-Workflow überführen, der günstiger, schneller und rate-limit-sicher ist als der synchrone Chat-Modus.
**Hands-on Ergebnis:** Ein konfigurierter Lokalisierungs-Workflow (JSON-Array-Input → Flash-Modell → CSV-Output) mit dokumentiertem Kostenvorteil gegenüber dem Chat-Modus.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (Loop-Knoten, JSON-Array-Input), Haiku 4.5 oder Gemini 2.5 Flash als zugewiesenes Modell, Workflow-Level-Budget.
**Vorgehen (4 Schritte):**
1. Verpacke alle Quelltexte als JSON-Array (ein Objekt pro Text) und lade sie als Workflow-Input hoch — das ermöglicht parallele Verarbeitung statt sequenziellem Chat.
2. Weise dem Workflow-Schritt fest Haiku 4.5 (0,8x) oder Gemini 2.5 Flash zu; nutze niemals Auto Mode in einem Massen-Workflow, da dieser unvorhersehbar teurere Modelle ansteuert.
3. Setze ein Workflow-Level-Budget als Sicherheitsnetz und aktiviere einen 50%-Warn-Alert, damit ein fehlerhafter Loop-Knoten früh gestoppt wird.
4. Vergleiche nach dem ersten Lauf die tatsächlichen Kosten mit einer Schätzung für den Chat-Modus — dokumentiere den Faktor (typisch 5–10x Kostendifferenz) für das interne Reporting.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Lokalisierungs-Spezialist. Übersetze den übergebenen Produkttext ins {{Zielsprache}}. Erhalte Tonalität, Markennamen und Formatierung. Passe regionale Begriffe an (z.B. 'Velo' für CH-DE). Gib exakt den übersetzten Text zurück, keine Erläuterungen."
**Erwartetes Artefakt:** Ein Lokalisierungs-Workflow mit Loop-Knoten, zugewiesenem Flash-Modell, Workflow-Budget-Cap und einer Kostendifferenz-Notiz (Batch vs. Chat) für das Controlling.
**Fallstricke (≥2 spezifisch):**
- Ein fehlerhafter Loop-Knoten ohne Workflow-Budget-Cap kann Tausende von API-Calls generieren und das Workspace-Limit sprengen — Mitigation: immer Workflow-Budget und Per-Execution-Limit (max. 2.000 Schritte) aktivieren.
- Batch-Output ohne Stichproben-Review lässt systematische Fehler (z.B. falsch übersetzte Markennamen) unbemerkt skalieren — Mitigation: 2 % der Outputs manuell oder per Sonnet-Stichprobe prüfen, bevor der vollständige Datensatz produktiv geht.
**Anschluss-Szenario:** S-MK-018

### S-MK-018 Persönliches Standard-Modell konfigurieren und Kostendisziplin im Team verankern

**Wann nutzen (Trigger):** Nach dem Onboarding neuer Kolleginnen zeigt die Usage-Leiste, dass alle auf dem teuersten verfügbaren Modell starten — nicht aus Absicht, sondern weil das persönliche Standard-Modell in den Account-Einstellungen nicht konfiguriert wurde. (Quelle: sources/12 Q22)
**Strategisches Ziel:** Kostendisziplin durch technische Voreinstellung verankern: jedes neue Teammitglied startet mit dem günstigsten passfähigen Modell als Default, nicht mit dem Flaggschiff.
**Hands-on Ergebnis:** Eine Team-Onboarding-Checkliste mit dem Schritt "Standard-Modell setzen" plus eine empfohlene Default-Konfiguration nach Rolle.
**Eingesetzte Langdock-Fähigkeit(en):** Account-Einstellungen (persönliches Standard-Modell), Modell-Katalog, Workspace-Admin-Rechte.
**Vorgehen (4 Schritte):**
1. Erkläre dem Team, dass das persönliche Standard-Modell in den Account-Einstellungen manuell gesetzt werden muss — ohne Konfiguration greift die Plattform auf den Workspace-Default zurück, der möglicherweise auf einem höheren Tier liegt.
2. Empfehle rollenspezifische Defaults: Content-Autor → Haiku 4.5 (0,8x); Strategen und Analysten → GPT-5.2 (1,0x); Workspace-Admins bei komplexen Synthesen → Sonnet 4.6 (3,1x); Opus-Klasse nur auf explizite Anforderung.
3. Füge "Standard-Modell konfigurieren" als Pflichtschritt in das Day-1-Onboarding ein — prüfbar im Admin-Panel anhand der Default-Modell-Einstellung pro User.
4. Kommuniziere die Regel als "günstigstes passendes Modell wählen, bewusst hochstufen statt bequem oben bleiben".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Onboarding-Berater für KI-Tools. Erstelle eine Day-1-Checkliste für neue Marketing-Mitarbeitende auf Langdock. Enthalte den Schritt 'Standard-Modell setzen' mit konkreter Empfehlung nach Rolle (Content, Strategie, Analyse). Kurze Stichpunkte, max. 8 Punkte gesamt. Sie-Form."
**Erwartetes Artefakt:** Eine Day-1-Onboarding-Checkliste mit Default-Modell-Empfehlung pro Rolle als wiederverwendbarer Wissensordner-Eintrag.
**Fallstricke (≥2 spezifisch):**
- Standard-Modell-Konfiguration gilt nur für neue Sessions — laufende Chats behalten das Modell aus dem Sitzungsstart; Mitigation: Teammitglieder schulen, bei jedem neuen Thema eine neue Session zu starten.
- Zu restriktive Admin-Einschränkungen (alle auf Haiku gesperrt) blockieren legitime Hochanforderungen — Mitigation: Default niedrig setzen, aber Hochwahl erlauben und begründungspflichtig machen.
**Anschluss-Szenario:** S-MK-019

### S-MK-019 Token-Budget-Alarm konfigurieren und Eskalations-Playbook erstellen

**Wann nutzen (Trigger):** Das Monatsbudget wurde schon zweimal überraschend am 25. des Monats aufgebraucht — das Team wusste nicht, dass es Warn-Schwellen gibt, und hat erst beim harten Stopp reagiert. (Quelle: A-25)
**Strategisches Ziel:** Ein proaktives Eskalations-Playbook aufbauen, das bei 50 %, 75 % und 90 % Budgetverbrauch konkrete Handlungsschritte auslöst, bevor der harte Stopp den Kampagnenbetrieb unterbricht.
**Hands-on Ergebnis:** Ein einseitiges Eskalations-Playbook (Schwelle → Verantwortlicher → Maßnahme) plus eine konfigurierte Warn-Schwellen-Einstellung im Workspace.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Warn-Schwellen (50/75/90%), Workspace-Limit, Usage-Transparenz-Leiste, Admin-Benachrichtigungs-E-Mail.
**Vorgehen (4 Schritte):**
1. Konfiguriere im Workspace-Admin die drei Standard-Warn-Schwellen (50 %, 75 %, 90 %) und stelle sicher, dass Benachrichtigungen an die Marketing-Operations-Adresse gehen, nicht nur an den technischen Admin.
2. Definiere im Playbook für 50 %: Usage-Leiste auf Ausreißer prüfen, unkritische Frontier-Modell-Nutzung einfrieren.
3. Definiere für 75 %: Workflow-Budgets unkritischer Prozesse halbieren, Team über verbleibende Kapazität informieren.
4. Definiere für 90 %: alle nicht kampagnenkritischen Agenten pausieren, Limit-Erhöhung beim Admin beantragen mit begründetem Bedarf — nicht pauschal verdoppeln.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Operations-Berater. Erstelle ein Eskalations-Playbook für unser Marketing-Team, wenn das Langdock-Workspace-Budget die Schwellen 50 %, 75 % und 90 % erreicht. Nenne pro Schwelle: Verantwortlichen, konkrete Maßnahme und maximale Reaktionszeit. Tabellenformat, Sie-Form."
**Erwartetes Artefakt:** Ein Eskalations-Playbook (Tabelle: Schwelle / Verantwortlicher / Maßnahme / Reaktionszeit) zur Ablage im Wissensordner.
**Fallstricke (≥2 spezifisch):**
- Warn-Schwellen ohne definierten Empfänger-Kreis bleiben wirkungslos — Mitigation: explizit eine namentlich benannte Person (z.B. Marketing-Operations-Lead) als primären Alert-Empfänger konfigurieren.
- Ein Playbook das nur Maßnahmen für den Admin enthält, ignoriert, dass das Team selbst Verbrauch treibt — Mitigation: jede Stufe muss eine Maßnahme für Teamebene (welche Modelle/Workflows pausieren?) enthalten, nicht nur Admin-Eskalation.
**Anschluss-Szenario:** S-MK-020

### S-MK-020 Workflow-Runs vs. Chat-Session: Abrechnung und Paketwahl verstehen

**Wann nutzen (Trigger):** Das Team hat den Workflow-Builder intensiv genutzt und erhält am Monatsende eine unerwartete Zusatzrechnung — es wusste nicht, dass Workflow-Runs separat abgerechnet werden und das Monats-Paket aufgebraucht wurde. (Quelle: sources/12 Q119)
**Strategisches Ziel:** Den Unterschied zwischen Chat-basiertem Token-Verbrauch und Workflow-Run-Paketen verstehen und die Paket-Wahl an das tatsächliche Automatisierungs-Volumen anpassen.
**Hands-on Ergebnis:** Eine Verbrauchs-Analyse (Chat-Token vs. Workflow-Runs) plus eine Paket-Empfehlung mit Jahreskostenrechnung.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder, Usage-Export, Pricing-Tiers (Standard/Max/Enterprise), Workflow-Run-Pakete.
**Vorgehen (4 Schritte):**
1. Ziehe den Usage-Export und trenne Chat-Token-Kosten von Workflow-Run-Kosten — beide werden unterschiedlich abgerechnet und müssen separat betrachtet werden.
2. Halte fest: Workflow-Runs verfallen am Monatsende (kein Rollover) — ungenutzte Runs im Paket sind verlorene Investitionen; Mitigation ist entweder ein kleineres Paket oder eine bessere Auslastungsplanung.
3. Prüfe, ob der Max-Tarif mit höherem Workflow-Run-Inklusivvolumen günstiger ist als Standard plus Zusatz-Pakete — rechne auf Jahresbasis.
4. Setze für jeden aktiven Workflow ein dediziertes Run-Budget, damit kein einzelner Prozess das monatliche Kontingent allein aufzehrt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Langdock-Kostenberater. Analysiere die angehängte Usage-CSV der letzten drei Monate. Trenne Chat-Token-Kosten und Workflow-Run-Kosten. Empfiehl das optimale Workflow-Run-Paket basierend auf dem tatsächlichen Verbrauch. Rechne zwei Szenarien: Standard + Zusatzpaket vs. Max-Tarif. Tabellenformat, Jahresbasis, Sie-Form."
**Erwartetes Artefakt:** Eine Verbrauchs-Aufschlüsselung (Chat vs. Runs) plus eine Jahreskosten-Gegenüberstellung zweier Paket-Szenarien als Entscheidungsvorlage.
**Fallstricke (≥2 spezifisch):**
- Workflow-Runs ohne Run-Budget können bei einem Fehler oder Loop-Fehler das komplette Monatskontingent in Minuten verbrauchen — Mitigation: für jeden produktiven Workflow ein explizites Run-Limit setzen.
- Annahme, dass ungenutzte Runs übertragen werden — sie verfallen — Mitigation: bei der Paket-Wahl das historische Verbrauchsmuster zugrunde legen, nicht das theoretische Maximum.
**Anschluss-Szenario:** S-MK-021

### S-MK-021 Sonnet auf Opus upgraden: ROI-Schwelle messen statt intuitiv wechseln

**Wann nutzen (Trigger):** Ein Strategieprojekt läuft seit vier Wochen auf Sonnet 4.6, die Outputs sind solide aber nicht überzeugend — jemand schlägt Opus 4.8 vor, aber der 8x-Multiplikator ist schwer zu rechtfertigen ohne harte Evidenz. (Quelle: A-30)
**Strategisches Ziel:** Den Upgrade-Entscheid von Sonnet auf Opus auf messbare Qualitäts-Evidenz stützen statt auf Bauchgefühl, und eine ROI-Schwelle definieren, ab der der Aufpreis vertretbar ist.
**Hands-on Ergebnis:** Ein A/B-Vergleich derselben fünf Aufgaben auf Sonnet vs. Opus plus eine dokumentierte ROI-Entscheidung mit Rückwechsel-Bedingung.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl, Wissensordner für Bewertungskriterien, Modell-Katalog (Multiplikatoren).
**Vorgehen (4 Schritte):**
1. Wähle fünf repräsentative Aufgaben aus dem laufenden Projekt (unterschiedliche Komplexität) und führe sie parallel mit Sonnet 4.6 und Opus 4.8 durch.
2. Bewerte die Outputs strukturiert: Argumentation, Quellenbindung, strategische Tiefe — dokumentiere, wo Opus einen messbaren Mehrwert zeigt und wo die Outputs gleichwertig sind.
3. Berechne den Upgrade-Kosteneffekt: wenn 60 % der Aufgaben Opus-Qualität benötigen und Opus 8x kostet, steigen die Gesamtkosten für das Projekt auf 5,2x des Sonnet-Niveaus — ist der Mehrwert das wert?
4. Lege eine Rückwechsel-Bedingung fest: wenn das Projekt in die Überarbeitungs- und Formatierungsphase wechselt, zurück auf Sonnet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Evaluierungs-Berater. Ich habe fünf Aufgaben je auf Sonnet 4.6 und Opus 4.8 durchgeführt. Die Ergebnisse sind im Wissensordner. Bewerte den Qualitätsunterschied strukturiert nach: Argumentation, Quellenbindung, strategische Tiefe. Empfiehl, ob der Upgrade auf Opus für dieses Projekt gerechtfertigt ist. Begründung in Zahlen, Sie-Form."
**Erwartetes Artefakt:** Eine Vergleichstabelle (Aufgabe / Sonnet-Output-Qualität / Opus-Output-Qualität / Mehrwert ja/nein) plus eine ROI-Entscheidung mit Rückwechsel-Bedingung.
**Fallstricke (≥2 spezifisch):**
- Einen Upgrade nach einem schlechten Einzelergebnis auf Sonnet zu entscheiden ist kein valider Test — Mitigation: mindestens fünf verschiedene Aufgaben vergleichen, um ein repräsentatives Bild zu erhalten.
- Opus für die gesamte Projektlaufzeit aktiv lassen, auch wenn nur die Synthesephasen von ihm profitieren — Mitigation: den Rückwechsel auf Sonnet für Überarbeitungs- und Routinephasen als festen Prozessschritt einplanen.
**Anschluss-Szenario:** S-MK-022

### S-MK-022 AI-Carbon-Footprint für den Nachhaltigkeitsbericht schätzen

**Wann nutzen (Trigger):** Die Nachhaltigkeitsbeauftragte fragt, ob der Langdock-Einsatz im Marketing in den CO₂-Bericht aufgenommen werden soll — das Team hat Token-Verbrauchsdaten, aber keine Ahnung, wie man Token in Emissionen umrechnet. (Quelle: A-45)
**Strategisches Ziel:** Eine belastbare, transparent dokumentierte CO₂-Schätzung für den KI-Einsatz erstellen, die im Nachhaltigkeitsbericht verwendbar ist und Annahmen klar offenlegt.
**Hands-on Ergebnis:** Eine Emissions-Tabelle (Token-Volumen pro Modell × CO₂-Faktor) mit Quellenangabe und einer jährlichen Aktualisierungs-Pflicht.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export-CSV, Wissensordner für Emissionsfaktoren-Referenzen, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Ziehe den Usage-Export und segmentiere das Token-Volumen nach Modell-Kategorie — verschiedene Modellklassen haben unterschiedliche Energieverbrauchsprofile.
2. Nutze öffentliche CO₂-Faktoren von ML.energy und Hugging Face Public Estimates als Basis; dokumentiere explizit, dass diese Schätzungen sind, keine zertifizierten Messungen.
3. Multipliziere Token-Volumen je Modellklasse mit dem jeweiligen Faktor und addiere die Ergebnisse zu einer Jahres-Gesamtschätzung in kg CO₂-Äquivalent.
4. Füge eine Annahmen-Sektion hinzu und plane eine jährliche Aktualisierung der Faktoren ein — CO₂-Schätzungen für KI-Modelle ändern sich mit der Hardware-Effizienz der Rechenzentren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Nachhaltigkeits-Berater. Ich habe unsere Langdock-Usage-CSV der letzten 12 Monate und CO₂-Faktoren aus ML.energy im Wissensordner. Berechne unsere geschätzte KI-Emissionslast nach Modell-Kategorie. Dokumentiere alle Annahmen explizit. Gib das Ergebnis als Tabelle in kg CO₂-Äquivalent/Jahr aus. Sie-Form."
**Erwartetes Artefakt:** Eine Emissions-Tabelle (Modellklasse / Token-Volumen / CO₂-Faktor / kg CO₂/Jahr) mit Annahmen-Dokumentation als Anhang für den Nachhaltigkeitsbericht.
**Fallstricke (≥2 spezifisch):**
- CO₂-Faktoren für KI-Modelle sind keine zertifizierten Messungen, sondern Schätzungen mit hoher Unsicherheitsspanne — Mitigation: im Bericht explizit als "Schätzwert auf Basis öffentlicher Daten" deklarieren, nicht als Messung ausgeben.
- Eine einmalige Berechnung ohne Aktualisierungs-Pflicht wird mit jeder Hardware-Effizienz-Generation ungenauer — Mitigation: jährliche Überprüfung der verwendeten Faktoren als festen Termin im Nachhaltigkeits-Kalender verankern.
**Anschluss-Szenario:** S-MK-023

### S-MK-023 Kosten-Reporting für das Management automatisieren

**Wann nutzen (Trigger):** Der Marketing-Direktor erstellt den monatlichen KI-Kostenreport manuell aus dem Usage-Export — das dauert zwei Stunden, und die Zahlen kommen oft zu spät für das Management-Meeting am ersten Montag des Monats. (Quelle: sources/12 Q124)
**Strategisches Ziel:** Den KI-Kostenreport als automatisierten Workflow aufsetzen, der am letzten Tag des Monats eine fertige Management-Summary in den definierten Kanal liefert.
**Hands-on Ergebnis:** Ein Reporting-Workflow (Usage-Export-Abruf → KPI-Berechnung → Summary-Generierung → Slack/E-Mail-Versand) mit dokumentiertem Modell-Einsatz und Budget-Cap.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (HTTP-Request-Knoten für Usage-Export-API, Zeitplan-Trigger), Haiku 4.5 für Summarisierung, Slack- oder E-Mail-Integration.
**Vorgehen (4 Schritte):**
1. Konfiguriere einen monatlichen Cron-Trigger (letzter Werktag des Monats, 16:00 Uhr) der den Workflow startet.
2. Nutze einen HTTP-Request-Knoten, der die Usage-Export-API abruft und die Daten als JSON an den nächsten Schritt übergibt.
3. Weise dem Summarisierungs-Schritt Haiku 4.5 zu — die Aufgabe ist strukturierte Zusammenfassung mit bekannten Feldern, kein Frontier-Modell nötig; Prompt: "Erstelle aus den KPI-Daten eine Management-Summary mit drei Kennzahlen und einer Handlungsempfehlung."
4. Sende die Summary per Slack-Integration an den definierten Kanal und setze einen Workflow-Budget-Cap von €5/Monat, damit der Report-Workflow das Gesamtbudget nicht belastet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Reporting-Assistent. Erstelle aus den übergebenen Usage-Daten eine Management-Summary. Enthalte: Gesamtkosten des Monats, Top-3-Kostentreiber (Modell + Team), Vergleich zum Vormonat in Prozent und eine Handlungsempfehlung. Max. 5 Stichpunkte. Sie-Form."
**Erwartetes Artefakt:** Ein konfigurierter Reporting-Workflow (Cron → API-Abruf → Haiku-Summarisierung → Slack-Versand) plus eine Beispiel-Summary als Vorlage.
**Fallstricke (≥2 spezifisch):**
- Usage-Export-API-Tokens haben Ablaufdaten — wenn der API-Key abläuft, scheitert der Workflow still ohne Fehlermeldung; Mitigation: API-Key-Ablauf-Datum im Workflow-Kommentar dokumentieren und drei Tage vor Ablauf einen Kalender-Alert setzen.
- Haiku für die Summarisierung produziert korrekte Zahlen, aber keine kontextuellen Interpretationen (z.B. "Anstieg erklärt durch Kampagnenstart") — Mitigation: einen optionalen manuellen Kommentarfeld in die Summary integrieren, den der Marketing-Ops-Lead vor dem Versand befüllen kann.
**Anschluss-Szenario:** S-MK-024

### S-MK-024 Haiku für Bulk-Klassifikation: Modell-Suitability-Test vor dem Vollauf

**Wann nutzen (Trigger):** Vor einem geplanten Bulk-Workflow zur Klassifikation von 5.000 Support-Tickets nach Marketingrelevanz soll geprüft werden, ob Haiku 4.5 die Aufgabe zuverlässig genug löst, bevor das Volumen-Budget ausgegeben wird. (Quelle: sources/12 Q23)
**Strategisches Ziel:** Vor jedem Bulk-Workflow mit einem Stichproben-Test validieren, dass das günstigste Modell die erforderliche Klassifikationsqualität liefert — und die Testergebnisse für die Modell-Wahl dokumentieren.
**Hands-on Ergebnis:** Ein Suitability-Test-Report (100 Stichproben, Precision/Recall-Schätzung) plus eine begründete Modell-Entscheidung für den Vollauf.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl (Haiku 4.5), Wissensordner für Klassifikations-Kriterien, Usage-Export für Kosten-Vergleich.
**Vorgehen (4 Schritte):**
1. Ziehe eine zufällige Stichprobe von 100 Tickets und klassifiziere sie manuell (Ground Truth) — ohne Ground Truth ist der Modell-Test nicht aussagekräftig.
2. Lass Haiku 4.5 dieselben 100 Tickets klassifizieren mit dem geplanten Klassifikations-Prompt und vergleiche die Ergebnisse mit der Ground Truth.
3. Berechne Precision und Recall für die wichtigste Kategorie ("marketingrelevant") — wenn Recall unter 80 % liegt, übersieht das Modell zu viele relevante Tickets; erwäge ein Step-up auf GPT-5.2 (1,0x).
4. Dokumentiere die Testergebnisse als Entscheidungsgrundlage: Modell, Prompt-Version, Precision, Recall, Kosten-Schätzung für Vollauf.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Klassifikations-Assistent. Klassifiziere das folgende Support-Ticket als 'marketingrelevant' oder 'nicht marketingrelevant'. Kriterien aus dem Wissensordner anwenden. Antworte ausschließlich mit 'marketingrelevant' oder 'nicht marketingrelevant' — keine Begründung."
**Erwartetes Artefakt:** Ein Suitability-Test-Report (Stichproben-Größe, Precision, Recall, Kosten-Schätzung Vollauf) plus eine dokumentierte Modell-Entscheidung mit Begründung.
**Fallstricke (≥2 spezifisch):**
- Einen Bulk-Workflow ohne Stichproben-Test zu starten bedeutet, dass systematische Klassifikationsfehler erst nach Verbrauch des gesamten Budgets sichtbar werden — Mitigation: immer 100 manuell gelabelte Stichproben als Ground Truth vor dem Vollauf.
- Ein zu weich formulierter Klassifikations-Prompt führt bei Haiku zu hoher Recall aber niedriger Precision (zu viele False Positives) — Mitigation: Klassifikations-Kriterien im Wissensordner präzise und exklusiv formulieren, mit Beispielen für Grenzfälle.
**Anschluss-Szenario:** S-MK-025

### S-MK-025 Modell-Changelog verfolgen: Quartals-Review für stabile Kostenplanung

**Wann nutzen (Trigger):** Die Quartalsplanung zeigt Abweichungen zwischen der budgetierten und der tatsächlichen KI-Kosten — bei der Analyse stellt sich heraus, dass zwei Modelle im letzten Quartal Preisänderungen hatten, die das Team nicht mitbekommen hat. (Quelle: sources/12 Q24; A-30)
**Strategisches Ziel:** Einen strukturierten Quartals-Review-Prozess etablieren, der Modell-Preisänderungen, neue Releases und Multiplikator-Verschiebungen rechtzeitig für die nächste Budgetrunde erfasst.
**Hands-on Ergebnis:** Ein Quartals-Review-Template (Modell-Roster-Check, Multiplikator-Vergleich, Budget-Anpassungsempfehlung) als wiederkehrender Wissensordner-Eintrag.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, Usage-Export, Wissensordner für historische Multiplikator-Werte, manuelle Modellwahl.
**Vorgehen (4 Schritte):**
1. Rufe zu Quartalsbeginn langdock.com/models auf und vergleiche alle genutzten Modell-Multiplikatoren mit den in der letzten Planung verwendeten Werten — dokumentiere jede Änderung mit Datum.
2. Prüfe, ob neue Releases (z.B. neue Flash-Generation) die bestehende Routing-Matrix verändern sollten: nicht jede neue Version ist günstiger oder besser — entscheide anhand Multiplikator und Batch-Test, nicht Versionsnummer.
3. Passe die Kostenkalkulation für das laufende Quartal an geänderte Multiplikatoren an und kommuniziere Abweichungen gegenüber der Jahresplanung proaktiv an Controlling.
4. Halte das aktualisierte Modell-Roster mit Stand-Datum im Wissensordner ab — jede Kostenkalkulation muss auf einen datierten Roster verweisen, nicht auf vage "aktuelle Preise".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Controlling-Assistent. Vergleiche die Modell-Multiplikatoren aus unserem letzten Quartals-Roster (im Wissensordner) mit den aktuellen Werten. Identifiziere Änderungen und schätze die Budget-Auswirkung basierend auf unserem Usage-Volumen aus dem Export. Gib eine Anpassungsempfehlung für die laufende Quartalsplanung. Tabellenformat, Sie-Form."
**Erwartetes Artefakt:** Ein datiertes Modell-Roster-Update (Modell / alter Multiplikator / neuer Multiplikator / Budget-Auswirkung EUR/Quartal) als Controlling-Vorlage.
**Fallstricke (≥2 spezifisch):**
- Kostenpläne ohne datierten Modell-Roster-Verweis sind bei der nächsten Preisänderung sofort veraltet — Mitigation: jede Kalkulation mit "Basis: Modell-Roster Stand [Datum], Quelle: langdock.com/models" versehen.
- Neue Modell-Releases als automatisch günstiger anzunehmen ohne Multiplikator-Prüfung führt zu Budget-Überraschungen — Mitigation: immer den tatsächlichen Multiplikator aus dem Katalog prüfen, bevor ein neues Modell in die Routing-Matrix aufgenommen wird.
**Anschluss-Szenario:** S-MK-026

### S-MK-026 Gemini vs. Claude für DACH-Sprachqualität: Welches Modell schreibt besser Deutsch?

**Wann nutzen (Trigger):** Das Content-Team streitet darüber, ob Gemini 2.5 Flash oder Haiku 4.5 für deutschsprachige Marketingtexte besser ist — ein Teammitglied besteht auf Anthropic, ein anderes schwört auf Google, aber niemand hat die beiden je systematisch verglichen. (Quelle: sources/12 Q16)
**Strategisches Ziel:** Einen datenbasis-gestützten Provider-Entscheid für DACH-Sprachqualität treffen, statt ihn aus Markenpräferenz oder Hörensagen zu fällen.
**Hands-on Ergebnis:** Eine qualitative Vergleichstabelle (5 Aufgabentypen × 2 Modelle) mit Bewertung nach DACH-Sprachkriterien plus eine begründete Modell-Empfehlung pro Aufgabentyp.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl (Gemini 2.5 Flash vs. Haiku 4.5), Wissensordner mit Brand-Voice-Kriterien, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Definiere DACH-Bewertungskriterien vorab: Genitive-Bildung, idiomatische Kollokationen, formelles Sie vs. informelles Du, Schweizerhochdeutsch-Kompatibilität (kein ß), österreichische Fachbegriffe — dokumentiere sie im Wissensordner als Bewertungsraster.
2. Führe fünf repräsentative Aufgaben durch (Headline, Social Post, Pressemitteilung, Produkttext, E-Mail) parallel auf beiden Modellen mit identischem Prompt.
3. Bewerte die Outputs nach dem definierten Raster auf einer 1-5-Skala pro Kriterium; lass bei Bedarf einen Muttersprachler zwei strittige Outputs blind beurteilen.
4. Entscheide aufgabenspezifisch: wenn Anthropic für Brand-Voice-Texte besser abschneidet und Gemini für kurze Draft-Aufgaben gleichwertig bei niedrigerem Multiplikator ist, trenne die Routing-Empfehlung danach.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein DACH-Sprachqualitäts-Bewerter. Ich habe fünf Textpaare (Gemini-Output vs. Claude-Output) im Wissensordner. Bewerte jedes Paar nach folgenden Kriterien: idiomatisches Deutsch, formelle Anrede, Brand-Voice-Konsistenz, regionale Neutralität (DACH-kompatibel). Vergib 1-5 Punkte pro Kriterium. Fasse die Empfehlung pro Aufgabentyp in einer Tabelle zusammen. Sie-Form."
**Erwartetes Artefakt:** Eine Vergleichstabelle (Aufgabentyp / Gemini-Score / Claude-Score / Empfehlung) plus eine begründete Routing-Empfehlung pro Aufgabenkategorie.
**Fallstricke (≥2 spezifisch):**
- Einen Modellvergleich mit nur einer Textart (z.B. nur Headlines) zu generalisieren führt zu falschen Schlüssen — Mitigation: mindestens fünf verschiedene Aufgabentypen aus dem realen Content-Mix testen.
- Bewertung ohne vorab definiertes Raster führt zu subjektiven, nicht reproduzierbaren Urteilen — Mitigation: Bewertungskriterien im Wissensordner verankern, bevor der erste Output bewertet wird.
**Anschluss-Szenario:** S-MK-027

### S-MK-027 Kontextfenstergröße steuern: Welches Modell für welchen Dokumenttyp?

**Wann nutzen (Trigger):** Der Marktforschungs-Lead will einen 150-seitigen Trendreport auf einmal in den Chat laden — Sonnet 4.6 streikt bei der Dateigröße, und das Team fragt, welches Modell das verarbeiten kann, ohne die Kosten zu sprengen. (Quelle: sources/12 Q20)
**Strategisches Ziel:** Eine Entscheidungsregel etablieren, welche Dokumentlänge welches Modell mit welchem Kontextfenster erfordert, damit große Dokumente weder an Limits scheitern noch unnötig teuer verarbeitet werden.
**Hands-on Ergebnis:** Eine Dokumenttyp-zu-Modell-Matrix (Seitenanzahl / empfohlenes Modell / Begründung) plus eine Kostenrechnung für den konkreten 150-Seiten-Fall.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog (Kontextfenster-Vergleich), Wissensordner als RAG-Alternative zu langen Inline-Uploads, manuelle Modellwahl.
**Vorgehen (4 Schritte):**
1. Kläre die Dokumentlänge in Token: 150 Seiten entsprechen ca. 75.000–100.000 Token; prüfe, welche Modelle dieses Kontextfenster unterstützen — Gemini 2.5 Flash hat hier einen strukturellen Vorteil mit über 1 Million Token Kontextfenster.
2. Wäge Kontextfenster gegen Kosten ab: ein vollständiges 100K-Token-Dokument als Inline-Input bei einem teuren Modell kostet deutlich mehr als eine RAG-Abfrage aus dem Wissensordner — trenne Aufgaben, die den vollen Text brauchen (Synthese), von denen, die nur Auszüge brauchen (Faktencheck).
3. Nutze Gemini 2.5 Flash für Extraktions- und Komprimierungsaufgaben großer Dokumente; eskaliere auf Sonnet 4.6 nur, wenn strategische Synthese aus dem vollen Dokumentkontext nötig ist.
4. Lege die Matrix im Wissensordner ab: Dokument ≤10 Seiten → jedes Modell; 10–80 Seiten → RAG/Wissensordner bevorzugt; 80–500 Seiten → Gemini 2.5 Flash direkt; >500 Seiten → zwingend RAG-Chunking.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Kontext-Effizienz-Berater. Ich habe einen 150-seitigen Report (ca. 90.000 Token). Empfiehl: (1) welches Modell dieses Kontextfenster unterstützt, (2) ob Inline-Upload oder Wissensordner-RAG günstiger ist, (3) welche Aufgabentypen den vollen Kontext wirklich benötigen. Gib eine Entscheidungsmatrix aus. Sie-Form."
**Erwartetes Artefakt:** Eine Dokumenttyp-Matrix (Seitenbereich / empfohlenes Modell / Zugangsmethode / Kostenbegründung) als Wissensordner-Leitfaden.
**Fallstricke (≥2 spezifisch):**
- Ein großes Dokument inline hochladen statt im Wissensordner abzulegen multipliziert die Input-Token-Kosten bei jeder Folge-Abfrage — Mitigation: für wiederholt abgefragte Dokumente immer den Wissensordner nutzen, nie wiederholten Inline-Upload.
- Gemini für große Kontexte einsetzen ohne Qualitätsprüfung am Ende des Dokuments — Modelle mit großem Kontextfenster verlieren Präzision bei Inhalten am Dokumentende ("lost in the middle") — Mitigation: kritische Passagen explizit als Zitat im Prompt anfordern statt auf implizites Scanning zu vertrauen.
**Anschluss-Szenario:** S-MK-028

### S-MK-028 Streaming vs. Batch: Kostenunterschiede für interaktive Agenten und Massenläufe

**Wann nutzen (Trigger):** Das Team überlegt, ob der neue Kundendienst-Agent, der in Echtzeit mit Nutzern interagiert, genauso abgerechnet wird wie der Nacht-Workflow, der tausend Texte verarbeitet — und ob es einen Kostenvorteil gibt, bestimmte Aufgaben asynchron zu verschieben. (Quelle: sources/12 Q119)
**Strategisches Ziel:** Den Kostenunterschied zwischen synchronem Streaming (Echtzeit-Chat, sichtbare Antwort-Generierung) und asynchronem Batch-Processing verstehen und Aufgaben dem richtigen Modus zuordnen.
**Hands-on Ergebnis:** Eine Modus-Entscheidungsregel (Streaming vs. Batch) mit konkreten Beispielen und einer Kostenprognose für den Kundendienst-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (asynchrone Batch-Verarbeitung), Chat (synchrones Streaming), Modell-Katalog, Workflow-Budget-Cap.
**Vorgehen (4 Schritte):**
1. Halte fest: Token-Kosten pro generiertem Token sind in beiden Modi gleich — der Unterschied liegt in der Nutzungsstruktur: Streaming bindet eine Session während der Antwortgenerierung, Batch kann parallelisiert und zu Nebenzeiten ausgeführt werden.
2. Identifiziere latenz-sensitive Aufgaben (Kundendienst-Chat, interaktive Briefing-Generierung) → Streaming unvermeidbar; und latenz-tolerante Aufgaben (Massenübersetzung, Report-Summarisierung, Klassifikation) → Batch bevorzugen.
3. Verschiebe latenz-tolerante Aufgaben in Nacht-Workflows, damit sie kein Tages-Kontingent der interaktiven Agenten blockieren — das verhindert Rate-Limit-Probleme in Stoßzeiten.
4. Dokumentiere die Aufgabentrennung: Batch-Workflows bekommen ein dediziertes Budget und Zeitplan-Trigger; Streaming-Agenten bekommen ein separates Budget für interaktive Nutzung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Architektur-Berater. Ich habe zwei Aufgabentypen: (1) Echtzeit-Kundendienst-Antworten, (2) tägliche Batch-Klassifikation von 500 Tickets. Erkläre den Kostenunterschied zwischen Streaming und Batch und empfehle die optimale Architektur. Berücksichtige Rate-Limits und Budget-Trennung. Stichpunkte, Sie-Form."
**Erwartetes Artefakt:** Eine Aufgaben-Zuordnung (Aufgabentyp / Streaming oder Batch / Begründung / Budget-Cap-Empfehlung) als Architektur-Entscheidungsdokument.
**Fallstricke (≥2 spezifisch):**
- Latenz-tolerante Massenaufgaben im Chat-Streaming-Modus auszuführen blockiert Rate-Limits für interaktive Nutzer in Stoßzeiten — Mitigation: alle Batch-Aufgaben als Zeitplan-Workflows konfigurieren, niemals als manuell getriggerte Chat-Sessions.
- Batch-Workflows ohne eigenen Budget-Cap können das Streaming-Budget aufzehren, wenn beide aus demselben Workspace-Kontingent schöpfen — Mitigation: dedizierte Workflow-Level-Budgets für Batch vs. Streaming-Agenten definieren.
**Anschluss-Szenario:** S-MK-029

### S-MK-029 Temperature-Einstellung und ihr Einfluss auf Token-Verbrauch und Qualität

**Wann nutzen (Trigger):** Ein Kollege hat den Kreativitäts-Regler (Temperature) im Content-Agenten auf Maximum gestellt, weil die Outputs "zu steif" wirkten — seitdem produziert der Agent wortreiche, abschweifende Antworten, die mehr Tokens verbrauchen und mehr Nachbearbeitung erfordern. (Quelle: sources/12 Q34)
**Strategisches Ziel:** Den Zusammenhang zwischen Temperature-Einstellung, Output-Varianz, Token-Länge und Nachbearbeitungsaufwand verstehen und aufgabenspezifische Defaults etablieren.
**Hands-on Ergebnis:** Eine Temperature-Empfehlungstabelle (Aufgabentyp → Temperature → Begründung) plus eine Anpassung des betroffenen Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Agenten-Konfiguration (Kreativitäts-Regler / Temperature), Modell-Katalog, Wissensordner für Output-Vergleiche.
**Vorgehen (4 Schritte):**
1. Erkläre dem Team: hohe Temperature (0,8–1,0) erhöht Varianz und Wortreichtum — das führt zu längeren Outputs, mehr Input-Token für Nachbearbeitungs-Prompts und höherem Redaktionsaufwand; niedrige Temperature (0,1–0,3) erzeugt konsistente, präzisere und kürzere Antworten.
2. Lege aufgabenspezifische Defaults fest: Brainstorming/Slogan-Ideation → 0,8; Textpolitur/Brand-Voice → 0,4; strukturierte Datenextraktion/Klassifikation → 0,1; Standard-Content-Drafting → 0,5.
3. Teste den betroffenen Agenten mit Temperature 0,4 statt 1,0 an fünf Beispieltexten und vergleiche Output-Länge und Nachbearbeitungszeit — dokumentiere den Token-Unterschied.
4. Verankere die Temperature-Einstellung als expliziten Parameter in der Agenten-Konfiguration und erkläre dem Team, warum "steif" oft besser ist als "wortreich-unkontrolliert".
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Agenten-Konfigurations-Berater. Erkläre mir den praktischen Effekt einer Temperature von 0,1 vs. 0,8 für einen Brand-Voice-Content-Agenten. Welche Temperature empfiehlst du für: (1) Headline-Varianten, (2) Produkttexte, (3) Datenextraktion? Begründe mit Token-Effizienz und Qualitätsargumenten. Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Temperature-Empfehlungstabelle (Aufgabentyp / empfohlene Temperature / Begründung / Token-Effizienz-Effekt) als Agenten-Konfigurationsregel.
**Fallstricke (≥2 spezifisch):**
- Temperature auf Maximum zu setzen, um "Kreativität" zu steigern, erhöht den Token-Verbrauch und den Redaktionsaufwand überproportional — Mitigation: "Kreativitätsproblem" zuerst im Prompt lösen (bessere Persona, reicherer Kontext), bevor an der Temperature gedreht wird.
- Temperature-Änderungen gelten global für den Agenten — bei gemischten Aufgabentypen in einem Agenten führt ein hoher Wert zu schlechten Klassifikationsergebnissen — Mitigation: Aufgaben mit stark unterschiedlichen Temperature-Anforderungen auf separate Agenten verteilen.
**Anschluss-Szenario:** S-MK-030

### S-MK-030 Multimodal-Kosten kalkulieren: Vision-Tasks im Marketing-Workflow

**Wann nutzen (Trigger):** Die Brand-Managerin will prüfen, ob KI Agentur-Entwürfe automatisch auf CD-Konformität prüfen kann — der erste Test mit einem Vision-Modell war überraschend teuer, und niemand weiß, wie Bild-Inputs abgerechnet werden. (Quelle: sources/12 Q30)
**Strategisches Ziel:** Die Kostenstruktur von Vision-Tasks (Bild-Inputs) im Vergleich zu reinen Text-Tasks verstehen und einen kontrollierten Einsatz multimodaler Modelle für CD-Checks etablieren.
**Hands-on Ergebnis:** Eine Kosten-Schätzung für den geplanten Vision-Workflow (Anzahl Bilder × Token-Äquivalent × Multiplikator) plus eine Entscheidung über Modellwahl und Batch-Architektur.
**Eingesetzte Langdock-Fähigkeit(en):** Vision-fähige Modelle (Sonnet 4.6, GPT-5.2, Gemini 2.5 Flash), Workflow-Builder, Workflow-Budget-Cap, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Halte fest: Bild-Inputs werden in Token-Äquivalente umgerechnet — ein typisches 1024×1024-Bild entspricht je nach Modell 1.000–2.000 Token; bei 50 Bildern pro Batch summiert sich das schnell auf 100.000 Input-Token pro Lauf.
2. Wähle für CD-Checks (Farben, Logo-Position, Abstände) Gemini 2.5 Flash als kosteneffizientes Vision-Modell — Präzisionsanforderungen sind hoch, aber die Aufgabe ist strukturiert, kein kreatives Reasoning nötig.
3. Erstelle einen Batch-Workflow (nicht interaktiven Chat), der Bilder sequenziell prüft und das Ergebnis als strukturierte Liste (Konform / Nicht Konform / Begründung) in eine Tabelle schreibt.
4. Setze einen Workflow-Budget-Cap pro Batch-Lauf und limitiere die Bildauflösung auf das für den Check nötige Minimum — höhere Auflösung erhöht Token-Kosten ohne Qualitätsgewinn für strukturierte Compliance-Checks.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein CD-Compliance-Prüfer. Analysiere das angehängte Bild gegen folgende Corporate-Design-Regeln aus dem Wissensordner: Primärfarben (#HEX), Logo-Mindestabstand (20px), Schriftart (nur Helvetica). Antworte ausschließlich mit: 'Konform' oder 'Nicht konform: [Regel] verletzt'. Keine Erläuterungen."
**Erwartetes Artefakt:** Eine Kosten-Schätzung für den Vision-Workflow (Bilder × Token-Äquivalent × Multiplikator × EUR) plus eine konfigurierte Batch-Pipeline mit Budget-Cap.
**Fallstricke (≥2 spezifisch):**
- Vision-Tasks in hoher Auflösung zu senden erhöht den Token-Verbrauch massiv ohne proportionalen Qualitätsgewinn für strukturierte Checks — Mitigation: Bilder vor dem Upload auf die für die Aufgabe notwendige Mindestauflösung komprimieren.
- Interaktiven Vision-Chat statt Batch-Workflow zu nutzen bindet Sitzungsressourcen und erhöht durch Kontextkumulation die Folge-Input-Kosten — Mitigation: immer Workflow statt Chat für seriell verarbeitete Bilder.
**Anschluss-Szenario:** S-MK-031

### S-MK-031 Kostenallokation auf Abteilungen: Chargeback-Modell mit Usage-Export aufbauen

**Wann nutzen (Trigger):** Die Finanzabteilung verlangt, dass die KI-Kosten des gemeinsamen Marketing-Workspaces auf die vier Sub-Teams (Content, Performance, Brand, CRM) aufgeteilt werden — bisher wird alles auf eine Kostenstelle gebucht und niemand fühlt sich für Einsparungen verantwortlich. (Quelle: sources/12 Q124)
**Strategisches Ziel:** Ein Chargeback-Modell aufbauen, das KI-Kosten verursachungsgerecht auf Abteilungen verteilt und Kostenbewusstsein dezentralisiert.
**Hands-on Ergebnis:** Eine monatliche Chargeback-Tabelle (Team / Token-Verbrauch / Modell-Multiplikator / EUR-Anteil) exportierbar aus dem Usage-Export, plus eine Policy für die Kostenstellen-Zuordnung.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export-CSV (per-User-Filter), Workspace-Admin (Gruppen-Konfiguration), Modell-Katalog (Multiplikatoren).
**Vorgehen (4 Schritte):**
1. Konfiguriere im Workspace-Admin User-Gruppen nach Sub-Team (Content, Performance, Brand, CRM) — der Usage-Export kann dann nach User gefiltert werden, und User-Gruppen ermöglichen die Aggregation.
2. Exportiere monatlich den Usage-Export, filtere nach User-Gruppe und multipliziere Token-Volumen je Modell mit dem jeweiligen Kostenmultiplikator, um die EUR-Kosten pro Team zu erhalten.
3. Definiere die Chargeback-Policy: direkte Nutzungskosten werden verursachungsgerecht verteilt; Lizenzkosten (Seats) bleiben auf der zentralen Marketing-Kostenstelle.
4. Teile die Chargeback-Tabelle monatlich mit jedem Team-Lead und verknüpfe sie mit dem Team-Budget — Kostentransparenz erzeugt dezentrales Sparverhalten ohne zentrale Mikromanagement-Eingriffe.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Kostencontroller. Ich habe eine Usage-CSV mit Token-Verbrauch pro User der letzten 30 Tage im Wissensordner sowie eine User-Gruppen-Zuordnung (User → Team). Berechne die KI-Kosten pro Team in EUR (Token × Multiplikator). Gib eine Chargeback-Tabelle aus: Team / Token-Gesamt / Kosten-EUR / Anteil am Gesamtbudget %. Sie-Form."
**Erwartetes Artefakt:** Eine monatliche Chargeback-Tabelle (Team / Token-Volumen / Modell-Mix / EUR-Kosten / Budgetanteil %) als Controlling-Vorlage.
**Fallstricke (≥2 spezifisch):**
- User-Gruppen ohne klare Ownership-Zuordnung (ein User in zwei Teams) erzeugen Doppelzählungen im Chargeback — Mitigation: jeder User wird genau einer primären Kostenstellen-Gruppe zugeordnet, Cross-Team-Projekte werden manuell bereinigt.
- Chargeback ohne Erklärung führt zu Abwehr statt zu Kostenbewusstsein — Mitigation: die erste Chargeback-Runde mit einem erklärenden Team-Brief begleiten, der Einsparungshebel pro Team konkret benennt.
**Anschluss-Szenario:** S-MK-032

### S-MK-032 Kostenanomalie-Analyse: Unerwarteter Ausgabenspike in 48 Stunden verstehen

**Wann nutzen (Trigger):** Das Workspace-Dashboard zeigt, dass die KI-Kosten in den letzten 48 Stunden um das Dreifache gestiegen sind — keine bekannte Kampagne erklärt den Spike, und das Team weiß nicht, wo es anfangen soll zu suchen. (Quelle: A-21)
**Strategisches Ziel:** Eine strukturierte Anomalie-Diagnose durchführen, um die Ursache eines plötzlichen Kosten-Spikes innerhalb von 30 Minuten zu identifizieren, statt blind alle Workflows zu pausieren.
**Hands-on Ergebnis:** Ein Diagnose-Protokoll (Zeitstempel / Quelle / Modell / Token-Volumen) mit identifizierter Ursache und einer gezielten Sofortmaßnahme.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Dashboard (Zeitreihen-Filter), Usage-Export-CSV, per-User- und per-Workflow-Filter, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Filtere den Usage-Export auf den 48-Stunden-Zeitraum und sortiere nach Token-Kosten (Modell-Multiplikator beachten) — meist lässt sich der Spike auf einen einzelnen User, Agent oder Workflow eingrenzen.
2. Prüfe die Top-Ausgaben auf Modellklasse: ein einzelner Frontier-Modell-Lauf (Opus, 8x) kann denselben Kosteneffekt haben wie hundert Standard-Chats — der Multiplikator ist entscheidend, nicht das absolute Token-Volumen.
3. Identifiziere, ob der Spike durch einen Loop-Fehler (unendliche Wiederholung), eine nicht geplante Frontier-Eskalation (Auto Mode) oder einen neu aktivierten Agenten ausgelöst wurde.
4. Implementiere die gezielte Sofortmaßnahme (Workflow pausieren / Modell herabstufen / Auto Mode deaktivieren) und dokumentiere die Ursache für die nächste Team-Retrospektive.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Anomalie-Diagnostiker. Ich habe eine Usage-CSV der letzten 48 Stunden im Wissensordner. Die Kosten sind dreimal höher als der Tagesdurchschnitt. Identifiziere den Spike-Auslöser: Welcher User, Workflow oder Agent verursacht den größten Kostenanteil? Welches Modell wurde genutzt? Schlage eine Sofortmaßnahme vor. Diagnose-Bericht, Sie-Form."
**Erwartetes Artefakt:** Ein Anomalie-Diagnose-Report (Spike-Quelle / Modell / Token-Volumen / Kostenanteil / Sofortmaßnahme) als Grundlage für das Post-Mortem.
**Fallstricke (≥2 spezifisch):**
- Den gesamten Workspace zu pausieren als Erstreaktion auf einen Spike stoppt laufende Kampagnen unnötig — Mitigation: erst die Ursache eingrenzen, dann gezielt den Verursacher stoppen, nicht alles auf einmal.
- Token-Volumen ohne Multiplikator zu lesen täuscht über die Kosten-Hierarchie — ein Haiku-Lauf mit 1 Million Token kostet weniger als ein Opus-Lauf mit 100.000 Token — Mitigation: immer Token × Multiplikator als Kosten-Metrik verwenden, nie absolutes Token-Volumen allein.
**Anschluss-Szenario:** S-MK-033

### S-MK-033 Modell-Fallback-Strategie: Was tun, wenn das bevorzugte Modell nicht verfügbar ist?

**Wann nutzen (Trigger):** Mitten in einer zeitkritischen Kampagnen-Produktion zeigt Langdock an, dass Sonnet 4.6 aufgrund von Provider-Ausfällen temporär nicht verfügbar ist — das Team ist paralysiert und weiß nicht, auf welches Modell es ausweichen soll. (Quelle: sources/12 Q28)
**Strategisches Ziel:** Eine vorab definierte Modell-Fallback-Strategie etablieren, die bei Ausfällen sofort greift, ohne Qualitätskompromisse zu erzwingen oder Kosten unkontrolliert zu erhöhen.
**Hands-on Ergebnis:** Ein Fallback-Protokoll (Primärmodell → Fallback-Modell → Begründung → Einschränkungen) für die fünf wichtigsten Marketing-Aufgabentypen.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog (Provider-Diversität), manuelle Modellwahl, Wissensordner für Fallback-Policy.
**Vorgehen (4 Schritte):**
1. Baue die Fallback-Strategie auf Provider-Diversität: Anthropic-Ausfall → OpenAI-Äquivalent; Google-Ausfall → Anthropic oder OpenAI; nutze Langdocks modellagnostische Architektur als Absicherung gegen Single-Provider-Abhängigkeit.
2. Definiere aufgabenspezifische Fallbacks: Brand-Voice-Content (Sonnet 4.6 → GPT-5.4, ~1,5x, mit expliziter Brand-Voice-Anweisung im Prompt); Bulk-Drafts (Gemini 2.5 Flash → Haiku 4.5, ~0,8x); Synthese (Opus 4.8 → Sonnet 4.6, mit akzeptiertem Qualitätsabstrich).
3. Dokumentiere Einschränkungen des Fallback-Modells explizit: GPT-5.4 hält Brand-Voice-Nuancen weniger präzise als Claude — das Team muss bei einem Fallback mit erhöhtem Redaktionsaufwand rechnen.
4. Lege das Fallback-Protokoll im Wissensordner ab und referenziere es im Team-Onboarding, damit bei einem Ausfall kein zeitraubendes Suchen beginnt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Resilience-Berater. Erstelle ein Modell-Fallback-Protokoll für unser Marketing-Team. Für jeden Aufgabentyp (Brand-Content, Bulk-Drafts, Strategie-Synthese, Klassifikation, Übersetzung): Primärmodell → Fallback-Modell → Kostenmultiplikator-Änderung → Qualitäts-Einschränkung. Tabellenformat, Sie-Form."
**Erwartetes Artefakt:** Ein Fallback-Protokoll (Aufgabentyp / Primärmodell / Fallback / Multiplikator-Delta / Einschränkungen) zur Ablage im Wissensordner als Notfallplan.
**Fallstricke (≥2 spezifisch):**
- Ein Fallback auf ein teureres Modell (z.B. von Flash auf Sonnet) ohne Budget-Anpassung kann das Workflow-Budget in der Ausfallperiode sprengen — Mitigation: Fallback-Protokoll enthält immer eine Kostenwarnung und eine temporäre Budget-Anpassungs-Empfehlung.
- Das Fallback-Protokoll im Notfall suchen zu müssen kostet Zeit — Mitigation: das Protokoll als angepinnter Wissensordner-Eintrag im Content-Agenten als erste Antwort-Option hinterlegen.
**Anschluss-Szenario:** S-MK-034

### S-MK-034 Tier-Upgrade-Entscheidung: Wann Standard zu Max wechseln?

**Wann nutzen (Trigger):** Zwei Mitarbeitende des Marketing-Teams stoßen regelmäßig an die Grenzen des Standard-Tarifs — Workflows mit mehr als einer bestimmten Anzahl Knoten werden blockiert und komplexe RAG-Szenarien laufen fehlerhaft, obwohl die meisten der zwölf Teammitglieder diese Features nie brauchen. (Quelle: sources/12 Q122)
**Strategisches Ziel:** Die Tier-Upgrade-Entscheidung (Standard → Max) auf objektivierbaren Kriterien stützen, statt pauschal alle auf Max hochzustufen oder Engpässe zu tolerieren.
**Hands-on Ergebnis:** Eine Upgrade-Entscheidungsmatrix mit konkreten Schwellenwerten (Workflow-Knoten-Limit, RAG-Volumen, Nutzeranzahl) plus eine Jahreskosten-Rechnung für das gemischte Tier-Modell.
**Eingesetzte Langdock-Fähigkeit(en):** Pricing-Tiers (Standard €25 / Max €99 / Enterprise), Usage-Export, Workflow-Builder (Max-Feature-Grenzen).
**Vorgehen (4 Schritte):**
1. Identifiziere konkret, welche Features im Standard-Tarif limitiert sind und von welchen Nutzern sie gebraucht werden — nicht jede Einschränkung rechtfertigt einen Tier-Wechsel für alle.
2. Prüfe die drei Upgrade-Schwellen: (a) Workflows mit >10 Knoten oder Loop-Nodes werden benötigt → Max-Kandidat; (b) RAG-Szenarien mit >50.000 Token pro Abfrage → Max-Kandidat; (c) SSO, BYOK, Audit-Logs → Enterprise, nicht Max.
3. Rechne das gemischte Modell: 2 Nutzer auf Max (€99/Monat) + 10 Nutzer auf Standard (€25/Monat) = €448/Monat = €5.376/Jahr — vs. pauschal Max für alle: €1.188/Monat = €14.256/Jahr.
4. Dokumentiere die Entscheidung mit einem Revisionsterm (6 Monate): wenn weitere Nutzer auf Max-Features angewiesen sind, schrittweise upgraden statt auf einmal.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Lizenz-Strategie-Berater. Wir haben 12 Marketing-Nutzer auf Standard-Tarif (€25/Nutzer/Monat). 2 Nutzer brauchen komplexe Workflows mit Loop-Nodes und großvolumige RAG-Abfragen. Rechne: (1) gemischtes Modell 2x Max + 10x Standard, (2) alle auf Max, (3) alle auf Standard mit Einschränkungen. Jahresbasis, Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Jahreskosten-Gegenüberstellung (3 Szenarien) plus eine begründete Tier-Empfehlung pro Nutzergruppe mit Revisionsterm.
**Fallstricke (≥2 spezifisch):**
- Max-Features wie komplexe Workflows für alle freizuschalten erzeugt keine Mehrkosten bei ungenutzten Features der Standard-Nutzer, aber vervierfacht die Lizenzkosten für 80 % des Teams — Mitigation: Feature-Bedarf vor Tier-Entscheidung pro Nutzer explizit erheben, nicht annahme-basiert hochstufen.
- Unterschätzen der Enterprise-Anforderungen (SSO, BYOK, Audit-Logs) führt zu einem späteren zweiten Upgrade — Mitigation: die Enterprise-Feature-Liste bei jedem Tier-Gespräch aktiv gegen den Compliance-Bedarf abgleichen.
**Anschluss-Szenario:** S-MK-035

### S-MK-035 Token-Counting-Tool nutzen: Prompt-Länge vor dem Absenden schätzen

**Wann nutzen (Trigger):** Vor einem teuren Batch-Lauf mit einem Frontier-Modell will der Marketing-Ops-Lead wissen, wie viele Token der geplante Prompt mit den angehängten Dokumenten tatsächlich hat — um die Kosten vorab zu kalkulieren, bevor das Budget festgelegt wird. (Quelle: sources/12 Q23)
**Strategisches Ziel:** Den tatsächlichen Token-Umfang eines Prompts (System-Prompt + Kontext + User-Input) vor der Ausführung transparent machen, um Kostenüberraschungen bei hochvolumigen oder teuren Modell-Läufen zu vermeiden.
**Hands-on Ergebnis:** Eine Token-Schätzung für den geplanten Batch-Lauf (Prompt-Komponenten aufgeschlüsselt) plus ein Kosten-Kalkul (Token × Multiplikator × EUR) als Entscheidungsgrundlage.
**Eingesetzte Langdock-Fähigkeit(en):** Tokenisierungs-Schätzung (Faustregeln: ~750 Wörter = ~1.000 Token für Deutsch), Modell-Katalog (Input-Preis), Usage-Export für Referenzwerte.
**Vorgehen (4 Schritte):**
1. Schätze die Token-Länge der Prompt-Komponenten separat: System-Prompt (typisch 500–2.000 Token), angehängte Dokumente (Faustregel: deutsche Texte ~1,2 Token/Wort), User-Frage (typisch 50–200 Token).
2. Berechne den Total-Input pro Request: addiere alle Komponenten und multipliziere mit dem Modell-Multiplikator und dem Basis-Preis — für 100 Batch-Requests mit je 5.000 Input-Token auf Sonnet 4.6 (3,1x) ergibt das ~€1,35 Input-Kosten.
3. Berücksichtige auch Output-Tokens: bei Zusammenfassungen oder Klassifikationen ist der Output kurz; bei vollständigen Textentwürfen kann er länger als der Input sein.
4. Nutze die Kalkulation als Freigabe-Schwelle: Batch-Läufe über €10 benötigen eine begründete Modell-Wahl; über €50 eine explizite Management-Freigabe.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Token-Budget-Rechner. Ich plane einen Batch-Lauf: System-Prompt (1.200 Token), 3 Dokumente à 8 Seiten (je ~4.000 Token), User-Frage (150 Token), 50 Wiederholungen. Modell: Sonnet 4.6 (Multiplikator 3,1x, €2,75/1M Input-Token). Berechne: Gesamt-Input-Token, geschätzte Input-Kosten EUR, Output-Kosten bei durchschnittlich 500 Token Output. Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Token-Aufschlüsselung (Komponente / Token-Schätzung / EUR-Kosten) plus eine Gesamtkosten-Kalkulation als Freigabe-Vorlage.
**Fallstricke (≥2 spezifisch):**
- Deutschsprachige Texte haben eine höhere Token-Dichte als englischsprachige (ca. 20 % mehr Token/Wort) — Mitigation: bei deutschen Prompts immer den Faktor 1,2 auf englische Token-Schätzungen anwenden, niemals englische Benchmarks unkorrigiert übernehmen.
- Output-Kosten zu ignorieren verfälscht die Kalkulation erheblich bei textgenerierenden Aufgaben — Mitigation: Output-Token immer separat schätzen und zum Input addieren, da Output-Token typischerweise teurer als Input-Token abgerechnet werden.
**Anschluss-Szenario:** S-MK-036

### S-MK-036 Modell-Latenz vs. Kostentradeoff für interaktive Marketing-Agenten

**Wann nutzen (Trigger):** Der neue interaktive Brand-Agent soll auf der Messe in Echtzeit auf Besucher-Fragen antworten — das Team hat Sonnet 4.6 gewählt wegen der Qualität, aber die Antwortzeiten von 8–12 Sekunden sind für den Messestand zu langsam. (Quelle: sources/12 Q16)
**Strategisches Ziel:** Den Tradeoff zwischen Modell-Latenz und Antwortqualität für zeitkritische interaktive Anwendungen bewerten und das Modell mit dem besten Latenz-Qualitäts-Kosten-Verhältnis wählen.
**Hands-on Ergebnis:** Eine Latenz-Qualitäts-Kosten-Matrix für drei Modellklassen (Flash, Sonnet, GPT-5.2) mit einer begründeten Empfehlung für den Messestand-Agenten.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, manuelle Modellwahl, Agenten-Konfiguration, Wissensordner für FAQ-Basis.
**Vorgehen (4 Schritte):**
1. Miss die tatsächliche Time-to-First-Token (TTFT) für die drei Kandidaten auf typischen Messe-Fragen — Light-Modelle (Flash/Haiku) liefern typischerweise TTFT unter 1 Sekunde; Sonnet 4.6 typisch 3–5 Sekunden; Opus 4.8 oft 8–15 Sekunden.
2. Bewerte die Qualitätsanforderungen für den Use Case: Messefragen sind oft FAQ-artig und gut durch den Wissensordner abgedeckt — ein Haiku 4.5-Modell mit reichem Wissensordner-Kontext kann hier qualitativ besser sein als Sonnet ohne Kontext.
3. Kalkuliere den Kostenvorteil: tausend Messe-Interaktionen auf Haiku 4.5 (0,8x) kosten ca. ein Siebentel von Sonnet 4.6 (3,1x) — die Latenz-Optimierung ist hier gleichzeitig eine Kosten-Optimierung.
4. Reserviere Sonnet für komplexe Folgefragen oder Eskalations-Pfade (z.B. technische Detail-Anfragen), die der Haiku-Agent mit "Weitere Details finden Sie beim Fachberater" weitergeleitet hat.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Latenz-Optimierungs-Berater. Ich habe einen Messestand-Agenten auf Sonnet 4.6 mit 8-12 Sekunden Antwortzeit. Analysiere: Kann Haiku 4.5 mit dem angehängten FAQ-Wissensordner die Qualität halten bei deutlich geringerer Latenz? Bewerte Latenz, Kosten-Multiplikator und Qualitätsrisiko. Empfehle eine Hybrid-Strategie (Fast-Track vs. Eskalation). Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Latenz-Qualitäts-Kosten-Matrix (Modell / TTFT / Multiplikator / Qualitätsbewertung) plus eine Hybrid-Architektur-Empfehlung (Standard-Fragen vs. Eskalations-Pfad).
**Fallstricke (≥2 spezifisch):**
- Latenz-Messungen im Büro unterschätzen die tatsächliche Latenz bei hoher gleichzeitiger Nutzung auf der Messe — Mitigation: Latenz-Tests unter simulierter Gleichzeitigkeit (mehrere parallele Anfragen) durchführen, nicht nur seriell.
- Ein reiner Latenz-Fokus ohne Qualitätsprüfung führt dazu, dass der Agent auf dem Messestand falsche oder unvollständige Antworten liefert — Mitigation: die Qualität des Haiku-Agenten an 20 repräsentativen Messefragen vorab validieren.
**Anschluss-Szenario:** S-MK-037

### S-MK-037 Fine-Tuning vs. Prompting: Kostenvergleich für wiederkehrende Brand-Voice-Aufgaben

**Wann nutzen (Trigger):** Nach sechs Monaten intensiver Prompt-Arbeit für einen Brand-Voice-Agenten überlegt der Marketing-Direktor, ob ein Fine-Tuned-Modell günstiger und konsistenter wäre als das aufwändige System-Prompt-Engineering mit langen Style-Guides im Wissensordner. (Quelle: sources/12 Q34)
**Strategisches Ziel:** Eine fundierte Make-or-Buy-Entscheidung zwischen Fine-Tuning und Prompt-Engineering für wiederkehrende Brand-Voice-Aufgaben treffen, basierend auf Kosten, Konsistenz und Wartungsaufwand.
**Hands-on Ergebnis:** Eine strukturierte Entscheidungsmatrix (Fine-Tuning vs. Prompting nach Kosten, Qualität, Flexibilität, Wartung) plus eine klare Empfehlung für den konkreten Use Case.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (als Prompting-Lösung), Modell-Katalog, BYOC-Option für Fine-Tuned-Modelle.
**Vorgehen (4 Schritte):**
1. Kalkuliere die Prompting-Kosten: langer System-Prompt (2.000 Token) + Style-Guide aus Wissensordner (3.000 Token) = 5.000 Input-Token-Overhead pro Request; bei 500 täglichen Requests auf Sonnet 4.6 sind das ~€2,06/Tag nur für den Kontext-Overhead.
2. Halte fest: Fine-Tuning ist via Langdock nicht nativ verfügbar — es erfordert BYOC (Bring Your Own Compute) mit einem extern fine-getunten Modell; der Aufwand (Datenvorbereitung, Training, Deployment) ist erheblich.
3. Empfehle für die meisten Marketing-Use-Cases die Prompting-Lösung: niedrigere Rüstkosten, sofortige Anpassbarkeit bei Brand-Änderungen und keine Abhängigkeit von externem ML-Engineering.
4. Fine-Tuning ist nur dann wirtschaftlich, wenn: (a) das Prompt-Overhead >50 % der Input-Kosten ausmacht, (b) täglich >5.000 Requests ausgeführt werden und (c) die Brand-Voice sich selten ändert.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Strategie-Berater. Vergleiche Fine-Tuning vs. Prompt-Engineering für unseren Brand-Voice-Agenten mit 500 täglichen Requests auf Sonnet 4.6. System-Prompt: 5.000 Token. Bewerte nach: tägliche Kosten, Einrichtungsaufwand, Flexibilität bei Brand-Änderungen, Qualitäts-Konsistenz. Gib eine klare Empfehlung mit Break-Even-Schwelle. Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Entscheidungsmatrix (Kriterium / Fine-Tuning / Prompting / Gewinner) plus eine Break-Even-Berechnung (ab welchem Request-Volumen würde Fine-Tuning günstiger).
**Fallstricke (≥2 spezifisch):**
- Die Einmalkosten für Fine-Tuning (Datenvorbereitung, Training, Deployment) werden beim Kostenvergleich oft vergessen — Mitigation: immer Total Cost of Ownership über 12 Monate rechnen, nicht nur laufende Inferenzkosten.
- Ein fine-getuntes Modell muss bei jeder Brand-Voice-Änderung neu trainiert werden — Mitigation: wenn die Brand-Voice sich häufiger als quartalsweise ändert, ist Prompting strukturell flexibler und günstiger.
**Anschluss-Szenario:** S-MK-038

### S-MK-038 GPT-5 via BYOC vs. Langdock-Standard: Wann lohnt sich der Wechsel?

**Wann nutzen (Trigger):** Das Content-Team hat für einen spezifischen analytischen Use Case (strukturierte JSON-Outputs für Kampagnen-Reports) bessere Ergebnisse mit GPT-5.2 Pro als mit Sonnet 4.6 erzielt — und fragt, ob es dieses Modell über BYOC günstiger nutzen kann als über Langdock-Standard. (Quelle: sources/12 Q117)
**Strategisches Ziel:** Den wirtschaftlichen und operativen Vorteil von BYOC (Bring Your Own Compute) für einen spezifischen Hochleistungs-Use-Case gegenüber der Standard-Langdock-Abrechnung bewerten.
**Hands-on Ergebnis:** Eine BYOC-Entscheidungsvorlage mit Break-Even-Berechnung (monatliches Request-Volumen, bei dem BYOC günstiger wird) plus eine Empfehlung an IT und Einkauf.
**Eingesetzte Langdock-Fähigkeit(en):** BYOC-Option (Enterprise-Tier), Usage-Export für Volumenmessung, Modell-Katalog (Multiplikatoren), BYOK als Vergleichsalternative.
**Vorgehen (4 Schritte):**
1. Miss das tatsächliche monatliche Request-Volumen für den spezifischen Use Case über den Usage-Export — Entscheidungen ohne Volumendaten führen zu falschen Break-Even-Kalkulationen.
2. Vergleiche die Kostenwege: Langdock-Standard (Multiplikator 24x für GPT-5.2 Pro) vs. BYOC (direkter OpenAI-Preis ohne Langdock-Markup, aber mit BYOC-Setup-Aufwand und Enterprise-Tier-Lizenzkosten).
3. Halte fest: BYOC erfordert Enterprise-Tier — wenn der aktuelle Tarif Standard oder Max ist, kommen Lizenz-Upgrade-Kosten hinzu, die in die Break-Even-Berechnung einfließen müssen.
4. Empfehle BYOC nur, wenn (a) Enterprise-Tier bereits vorhanden, (b) Use-Case-Volumen >20.000 Requests/Monat für das teure Modell und (c) IT-Kapazität für Key-Management vorhanden ist.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein BYOC-Entscheidungsberater. Ich nutze GPT-5.2 Pro (24x-Multiplikator) für 800 Requests/Monat à 3.000 Input-Token und 1.000 Output-Token. Vergleiche: Langdock-Standard vs. BYOC mit direktem OpenAI-Preis (€55/1M Input). Berücksichtige Enterprise-Tier-Kosten bei BYOC. Gib Break-Even-Monat und Empfehlung. Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine BYOC-Entscheidungsvorlage (Kostenszenario A vs. B / Break-Even-Monat / Empfehlung) mit einer klaren Schwelle für die IT-Eskalation.
**Fallstricke (≥2 spezifisch):**
- BYOC-Kalkulationen, die den Enterprise-Tier-Upgrade vergessen, unterschätzen die tatsächlichen BYOC-Gesamtkosten erheblich — Mitigation: immer die vollständige Lizenz-Kostenstruktur (Seats × Tier-Preis) in den Vergleich einbeziehen.
- BYOC bedeutet, dass die IT den API-Key verwaltet und rotiert — wenn diese Kapazität fehlt, entstehen Ausfallrisiken — Mitigation: IT-Kapazität für Key-Management als Voraussetzung vor der BYOC-Entscheidung evaluieren.
**Anschluss-Szenario:** S-MK-039

### S-MK-039 Performance-Benchmarking: Modelle an realen Marketing-Aufgaben messen

**Wann nutzen (Trigger):** Vor der jährlichen Budgetplanung will der Marketing-Direktor objektiv belegen, welche Modelle für das Team den besten Output-pro-Euro liefern — bisher sind alle Modell-Entscheidungen auf Einzelerfahrungen basiert, nicht auf einem reproduzierbaren Benchmark. (Quelle: A-21)
**Strategisches Ziel:** Einen internen Modell-Benchmark aufbauen, der aufgabenspezifische Qualität und Kosten misst und eine jährlich aktualisierbare Grundlage für Modell-Entscheidungen liefert.
**Hands-on Ergebnis:** Ein Benchmark-Report (5 Aufgabentypen × 3 Modelle × Qualitäts- und Kostenscores) als dauerhafter Wissensordner-Eintrag mit Aktualisierungsroutine.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl, Wissensordner für Benchmark-Aufgaben und Bewertungsraster, Usage-Export für Kostenmessung.
**Vorgehen (4 Schritte):**
1. Definiere 5 Marketing-Benchmark-Aufgaben aus dem realen Aufgabenportfolio (Brand-Voice-Text, SEO-Headline-Varianten, Briefing-Erstellung, Daten-Klassifikation, Strategie-Zusammenfassung) und lege sie als wiederholbare Testfälle im Wissensordner ab.
2. Führe alle 5 Aufgaben auf den 3 zu vergleichenden Modellen durch, messe die tatsächlich verbrauchten Token per Usage-Export und berechne den Kostenwert pro Aufgabe.
3. Bewerte jeden Output nach einem definierten Qualitätsraster (Relevanz, DACH-Sprachqualität, Strukturtreue, Faktentreue) auf einer 1-5-Skala — mindestens ein Muttersprachler bewertet blind.
4. Berechne den "Qualität-pro-EUR"-Score: Qualitätspunkte / tatsächliche Kosten EUR und erstelle das Benchmark-Ranking; aktualisiere es quartalsweise nach Modell-Releases.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Benchmark-Analyst. Ich habe Outputs von Haiku 4.5, Sonnet 4.6 und Gemini 2.5 Flash für fünf Aufgaben und das Bewertungsraster im Wissensordner. Bewerte alle 15 Outputs nach: Relevanz (1-5), DACH-Sprachqualität (1-5), Strukturtreue (1-5). Berechne den Gesamt-Score und den Qualität-pro-EUR-Score auf Basis der beiliegenden Kostendaten. Ranking-Tabelle, Sie-Form."
**Erwartetes Artefakt:** Ein Benchmark-Ranking (Modell / Aufgabe / Qualitäts-Score / Kosten-EUR / Qualität-pro-EUR) plus eine Empfehlung für die nächste Budgetplanung.
**Fallstricke (≥2 spezifisch):**
- Einen Benchmark mit nur einer Aufgabe oder einem einzigen Bewerter als Grundlage für die Jahresplanung zu nehmen ist statistisch nicht belastbar — Mitigation: mindestens 5 Aufgabentypen, 2 unabhängige Bewerter und 3 Wiederholungen pro Aufgabe.
- Benchmark-Ergebnisse ohne Datum im Wissensordner abzulegen und bei neuen Modell-Releases nicht zu aktualisieren macht den Benchmark wertlos — Mitigation: Benchmark-Datum verpflichtend im Dateinamen und eine Quartals-Aktualisierungs-Aufgabe im Team-Kalender.
**Anschluss-Szenario:** S-MK-040

### S-MK-040 API-Nutzungs-Aufschlag verstehen und im Budget einplanen

**Wann nutzen (Trigger):** Das Controlling meldet, dass die Langdock-Rechnung 10 % höher ist als die kalkulierten Token-Kosten aus dem Modell-Katalog — niemand weiß, woher die Differenz kommt, und die Jahreskalkulation muss korrigiert werden. (Quelle: sources/12 Q120)
**Strategisches Ziel:** Den Langdock-API-Nutzungsaufschlag von 10 % auf externe Modell-Token transparent erklären, in zukünftige Budgets einplanen und einen Abgleich mit der tatsächlichen Rechnung aufsetzen.
**Hands-on Ergebnis:** Eine korrigierte Budget-Kalkulation mit eingepreistem 10 %-Aufschlag sowie ein Abgleich-Template für die monatliche Rechnungsprüfung.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export-CSV, Modell-Katalog (Multiplikatoren + Aufschlag-Struktur), Workflow-Budget-Caps.
**Vorgehen (4 Schritte):**
1. Erkläre dem Team die Aufschlag-Struktur: der 10 %-Aufschlag gilt auf externe Modell-Token bei API-Nutzung (nicht bei Standard-Chat-Abrechnung über Langdock-Pakete) — er deckt Langdocks Routing-Infrastruktur und garantierte Verfügbarkeits-SLAs.
2. Prüfe im Usage-Export, welche Kostenanteile API-basiert und welche paket-basiert abgerechnet werden — der Aufschlag gilt nur für den API-Anteil.
3. Passe die Kostenkalkulation an: Token-Kosten × Multiplikator × 1,10 für alle API-genutzten Modelle; dokumentiere den Faktor explizit in jeder Kalkulations-Vorlage.
4. Erstelle ein monatliches Abgleich-Template: Langdock-Rechnung / kalkulierte Basiskosten / erwarteter Aufschlag / Abweichung — eine Abweichung über 5 % ist ein Hinweis auf nicht geplante API-Nutzung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Abrechnungs-Aufklärer. Erkläre unserem Controlling, warum die Langdock-Rechnung 10 % über unserer Token-Kalkulation liegt. Erstelle ein Abgleich-Template für die monatliche Rechnungsprüfung: kalkulierte Token-Kosten (aus Usage-Export) + 10 % API-Aufschlag vs. tatsächliche Rechnung. Gib das Template als ausfüllbare Tabelle. Sie-Form."
**Erwartetes Artefakt:** Ein Abgleich-Template (Kalkulierte Basiskosten / API-Aufschlag 10 % / Gesamt-Soll / Tatsächliche Rechnung / Abweichung EUR/%) plus eine erklärende Notiz für das Controlling.
**Fallstricke (≥2 spezifisch):**
- Den Aufschlag als versteckte Gebühr zu kommunizieren statt als transparente Infrastrukturkosten erzeugt Misstrauen beim Controlling — Mitigation: den Aufschlag proaktiv in jeder Kalkulation ausweisen und dokumentieren, was er abdeckt.
- Nicht zwischen API-basierter und Paket-basierter Abrechnung zu unterscheiden führt zu falschen Gesamtkalkulationen — Mitigation: den Usage-Export nach Abrechnungstyp segmentieren, bevor der Aufschlag angewendet wird.
**Anschluss-Szenario:** S-MK-041

### S-MK-041 Over-Quota-Situation vermeiden: Extra-Usage-Aktivierung bewusst steuern

**Wann nutzen (Trigger):** Am letzten Wochentag vor dem Monatsabschluss kündigt Langdock an, dass das Premium-Modell-Kontingent aufgebraucht ist und fragt, ob "Extra Usage" aktiviert werden soll — das Team weiß nicht, was das kostet und klickt im Zweifel auf Ja. (Quelle: sources/12 Q121)
**Strategisches Ziel:** Die Extra-Usage-Funktion (Nutzung über das inkludierte Kontingent hinaus) bewusst steuern, ihre Kostenauswirkungen verstehen und eine Policy aufsetzen, die unbeabsichtigte Aktivierung verhindert.
**Hands-on Ergebnis:** Eine Extra-Usage-Policy (wer darf aktivieren, unter welchen Bedingungen, mit welchem sofortigen Budget-Cap) plus eine Kalkulation der Over-Quota-Kosten für das aktuelle Szenario.
**Eingesetzte Langdock-Fähigkeit(en):** Extra-Usage-Funktion, Workspace-Budget-Cap, Warn-Schwellen (50/75/90%), Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Erkläre dem Team: Extra-Usage aktiviert die Nutzung kostenpflichtiger Token über das inkludierte Monatskontingent hinaus — der Over-Quota-Markup kann je nach Modell und Paket erheblich sein; nie blind aktivieren ohne Kostenprüfung.
2. Definiere die Aktivierungs-Policy: Extra-Usage darf nur der Marketing-Operations-Lead oder der Workspace-Admin aktivieren; Teamnutzer erhalten keine Selbst-Aktivierungs-Rechte.
3. Setze sofort nach Aktivierung einen dedizierten Extra-Usage-Budget-Cap (z.B. €50 maximal), damit der Over-Quota-Bereich nicht unbegrenzt läuft.
4. Plane mittelfristig: wenn Extra-Usage regelmäßig nötig wird, ist das ein Signal, das Basis-Kontingent (Paket-Upgrade) zu erhöhen statt strukturell im Over-Quota-Modus zu arbeiten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Abrechnungs-Berater. Erstelle eine Extra-Usage-Policy für unser Marketing-Team. Definiere: (1) wer darf Extra-Usage aktivieren, (2) welche Bedingungen müssen vorliegen (Notfall-Kriterien), (3) welchen sofortigen Budget-Cap setzen wir, (4) wie dokumentieren wir jede Aktivierung. Policy-Dokument, max. 1 Seite, Sie-Form."
**Erwartetes Artefakt:** Eine Extra-Usage-Policy (Aktivierungsberechtigung / Notfall-Kriterien / Budget-Cap / Dokumentationspflicht) plus eine Kalkulation der Over-Quota-Kosten für das aktuelle Szenario.
**Fallstricke (≥2 spezifisch):**
- Extra-Usage ohne sofortigen Budget-Cap läuft unbegrenzt bis zum manuellen Stopp — Mitigation: Cap immer als ersten Schritt bei der Aktivierung setzen, nicht als nachgelagerten Schritt.
- Extra-Usage-Aktivierungsrechte für alle Teammitglieder erzeugen unkontrollierte Kostenpunkte — Mitigation: Aktivierungsrecht explizit auf eine benannte Person beschränken und im Workspace-Admin entsprechend konfigurieren.
**Anschluss-Szenario:** S-MK-042

### S-MK-042 Günstige Experimente vom produktiven Budget trennen: Sandbox-Strategie

**Wann nutzen (Trigger):** Ein Marketingteam testet aggressiv neue Agenten-Konfigurationen und Prompt-Experimente direkt im produktiven Workspace — die Usage-Leiste zeigt erhöhte Kosten, aber es ist unklar, wie viel davon produktive Arbeit und wie viel Experiment-Overhead ist. (Quelle: A-22)
**Strategisches Ziel:** Experiment-Budget von produktivem Budget trennen, sodass Lernkosten transparent sind und das produktive Budget nicht durch fehlgeleitete Tests aufgebraucht wird.
**Hands-on Ergebnis:** Eine Sandbox-Strategie (separates Experiment-Projekt mit eigenem Budget-Cap, Namenskonvention und Rückkoppelungs-Prozess) als Team-Governance-Dokument.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Projekte (als Sandbox-Container), Workflow-Level-Budget, Usage-Export (per-Projekt-Filter), Warn-Schwellen.
**Vorgehen (4 Schritte):**
1. Erstelle ein dediziertes Sandbox-Projekt ("SANDBOX – Experimente") mit eigenem Workflow-Budget-Cap (z.B. €30/Monat) — alle Experimente, Prompt-Tests und neuen Agenten-Konfigurationen laufen ausschließlich hier.
2. Definiere die Namenskonvention: alle Sandbox-Agenten und Workflows tragen das Präfix "EXP-" — so sind Experimente im Usage-Export sofort von produktiven Prozessen unterscheidbar.
3. Weise das günstigste passende Modell für Experimente zu (Haiku 4.5 oder Gemini 2.5 Flash) — Experimente validieren Prompt-Logik, nicht Frontier-Modell-Qualität; teure Modelle erst im Produktiv-Modus einsetzen.
4. Etabliere einen monatlichen "Experiment-Review": was hat funktioniert und wird in den produktiven Workspace übernommen, was wird verworfen? Nur validierte Ansätze migrieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Governance-Berater. Erstelle eine Sandbox-Strategie für unser Langdock-Marketing-Workspace. Definiere: (1) Sandbox-Projekt-Setup mit Budget-Cap, (2) Namenskonvention für Experiment-Agenten, (3) Modell-Policy für Experimente (günstigstes passendes Modell), (4) monatlicher Review-Prozess für Migration in Produktion. Policy-Dokument, Sie-Form."
**Erwartetes Artefakt:** Ein Sandbox-Governance-Dokument (Projektstruktur / Namenskonvention / Modell-Policy / Review-Zyklus) als Wissensordner-Eintrag für das Team-Onboarding.
**Fallstricke (≥2 spezifisch):**
- Experimente im produktiven Workspace zu beginnen "weil es schneller geht" und dann zu vergessen, sie zu bereinigen, schleust dauerhaft suboptimale Agenten in den produktiven Betrieb — Mitigation: Sandbox-Projekt als einzigen erlaubten Ort für neue Agenten-Konfigurationen etablieren, kein direkter Produktiv-Start.
- Das Sandbox-Budget zu niedrig zu setzen bremst legitimes Lernen und verleitet dazu, doch wieder im Produktiv-Workspace zu experimentieren — Mitigation: €30/Monat als Richtwert, aber quartalsweise an tatsächlichen Experimentier-Bedarf anpassen.
**Anschluss-Szenario:** S-MK-043

### S-MK-043 Modell-Nutzungs-Transparenz für das gesamte Team schaffen

**Wann nutzen (Trigger):** Das Team hat ein allgemeines Kostenbewusstsein, aber keine Möglichkeit, im Alltag zu sehen, was ihre eigene KI-Nutzung kostet — Kostenbewusstsein bleibt abstrakt, weil der Usage-Export nur dem Admin zugänglich ist und nur monatlich gezogen wird. (Quelle: sources/12 Q124)
**Strategisches Ziel:** Nutzungs-Transparenz für jeden Teammitglieder im Alltag schaffen, sodass Kostenbewusstsein konkret und handlungsleitend wird, ohne den Admin mit Einzelanfragen zu überlasten.
**Hands-on Ergebnis:** Ein Transparenz-Setup (automatisierter wöchentlicher Usage-Digest per Slack + individuelle Usage-Leisten-Nutzung) plus eine Kommunikations-Policy, die Kosten ohne Blame-Kultur sichtbar macht.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Transparenz-Leiste (individuelle Sicht), Usage-Export-API (Admin-Sicht), Workflow-Builder (Zeitplan-Trigger für automatischen Digest), Slack-Integration.
**Vorgehen (4 Schritte):**
1. Erkläre jedem Teammitglied, wie die individuelle Usage-Transparenz-Leiste in ihrem Account-Bereich funktioniert — sie zeigt den persönlichen Verbrauch in Echtzeit und ist das wichtigste tägliche Feedback-Instrument für Kostenbewusstsein.
2. Konfiguriere einen wöchentlichen Workflow (Montag, 9:00 Uhr), der den Usage-Export der Vorwoche abruft, die Top-5-Verbraucher (anonymisiert oder namentlich je nach Kultur) und die Modell-Mix-Verteilung zusammenfasst und in den Marketing-Slack-Kanal sendet.
3. Kommuniziere die Zahlen ohne Blame: "Team-Verbrauch letzte Woche: €87 (Budget: €500/Monat). Top-Modell: Sonnet 4.6 (60 %). Tipp: 3 Tasks auf Flash umstellbar." — Transparenz als Coaching, nicht als Kontrolle.
4. Definiere monatliche Team-Ziele für den Modell-Mix (z.B. "Flash/Haiku soll >50 % der Token-Verbrauchsanteile ausmachen") und feiere Fortschritte als Team-Leistung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Kultur-Berater. Erstelle eine Transparenz-Kommunikation für unseren wöchentlichen Slack-Digest zur KI-Nutzung. Enthalte: Gesamtverbrauch der Woche in EUR, Modell-Mix in Prozent, einen konkreten Spar-Tipp, einen positiven Hinweis auf gute Praktiken. Ton: coachend, nicht kontrollierend. Max. 5 Zeilen, Sie-Form."
**Erwartetes Artefakt:** Ein konfigurierter wöchentlicher Slack-Digest-Workflow plus ein Kommunikations-Template (5 Zeilen) für die transparente, nicht-sanktionierende Kosten-Kommunikation.
**Fallstricke (≥2 spezifisch):**
- Kostenübersichten ohne Kontext ("Ihr Verbrauch: €15 diese Woche") ohne Einordnung (Budget, Durchschnitt, Tipp) erzeugen Verunsicherung statt Handlung — Mitigation: immer Vergleichswert (Vorwoche, Budget) und einen konkreten Handlungstipp beifügen.
- Namentliche Top-Verbraucher-Listen ohne Vorabkonsens erzeugen eine Blame-Kultur, die KI-Nutzung hemmt statt zu fördern — Mitigation: erste Digest-Runde anonymisiert starten; erst nach Team-Konsens auf namentliche Darstellung wechseln.
**Anschluss-Szenario:** S-MK-044

### S-MK-044 Frontier-Modell-Nutzung genehmigungspflichtig machen: Governance-Prozess aufsetzen

**Wann nutzen (Trigger):** Zwei Senior-Strategen nutzen Opus 4.8 täglich für Aufgaben, die auch Sonnet 4.6 lösen könnte — zusammen verursachen sie 40 % des gesamten Workspace-Budgets, und keine Policy hindert sie daran, weil Frontier-Modelle für alle zugänglich sind. (Quelle: A-30)
**Strategisches Ziel:** Einen leichtgewichtigen Genehmigungsprozess für Frontier-Modell-Nutzung aufsetzen, der Budget-Disziplin ohne bürokratischen Overhead sicherstellt und die richtigen Ausnahmen ermöglicht.
**Hands-on Ergebnis:** Ein Genehmigungsprotokoll (wer darf was, wie beantragen, wie dokumentieren) plus eine technische Absicherung (Workspace-Admin-Restriktion für Frontier-Modelle).
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Admin (Modell-Zugriffsbeschränkung per Gruppe), Modell-Katalog, Usage-Export für Überwachung.
**Vorgehen (4 Schritte):**
1. Konfiguriere im Workspace-Admin, dass Opus 4.8 und GPT-5.2 Pro nur für eine dedizierte "Frontier-Approved"-Gruppe zugänglich sind — Standard-User sehen diese Modelle nicht in ihrer Auswahl.
2. Definiere den Genehmigungsprozess: eine kurze Anfrage (Use Case + Begründung + Zeitraum) per E-Mail oder Slack an den Marketing-Operations-Lead; Genehmigung dauert maximal 1 Werktag.
3. Lege die Ausnahme-Kriterien fest: Frontier-Modell ist genehmigt für (a) geschäftskritische Synthesen aus heterogenen Quellen, (b) Quartals-Strategiepapiere, (c) komplexe Marktanalysen mit zehntausenden Datenpunkten — nicht für iterative Entwurfsprozesse.
4. Überprüfe die "Frontier-Approved"-Gruppe quartalsweise: wer ist noch berechtigt, wer kann wieder auf Standard zurückgestuft werden?
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Governance-Berater. Erstelle einen Genehmigungsprozess für Frontier-Modell-Nutzung (Opus 4.8, GPT-5.2 Pro) in unserem Marketing-Team. Definiere: Genehmigungskriterien, Antragsformat (max. 3 Felder), Genehmigungspfad, maximale Bearbeitungszeit und Quartals-Review. Policy-Dokument, max. 1 Seite, Sie-Form."
**Erwartetes Artefakt:** Ein Frontier-Modell-Genehmigungsprotokoll (Kriterien / Antragsformat / Genehmigungspfad / Review-Zyklus) plus eine technische Umsetzungsanweisung für den Workspace-Admin.
**Fallstricke (≥2 spezifisch):**
- Zu strikte Einschränkungen, die auch legitime Frontier-Aufgaben blockieren, erzeugen Umgehungsversuche (z.B. API-Direktzugriff außerhalb Langdock) — Mitigation: Genehmigungsprozess leichtgewichtig und schnell halten (max. 1 Werktag), damit der Weg des geringsten Widerstands durch den Prozess führt, nicht um ihn herum.
- Frontier-Zugangsbeschränkung ohne Monitoring erzeugt keine Lernkurve für das Team — Mitigation: monatlich die Frontier-Nutzung der Approved-Gruppe im Usage-Export reviewen und im nächsten Team-Meeting als Benchmark kommunizieren.
**Anschluss-Szenario:** S-MK-045

### S-MK-045 Jahres-KI-Budget planen: Von Token-Schätzung zur Vorstandsgenehmigung

**Wann nutzen (Trigger):** Anfang Oktober startet die Jahresbudgetplanung, und der Marketing-Direktor muss erstmals ein eigenständiges KI-Budget beantragen — bisher wurde Langdock aus dem Software-Topf bezahlt, aber die Ausgaben sind zu signifikant geworden, um sie weiterhin zu verstecken. (Quelle: sources/12 Q116)
**Strategisches Ziel:** Ein strukturiertes Jahres-KI-Budget entwickeln, das Lizenzkosten, Token-Kosten (nach Modell und Multiplikator), Wachstumspuffer und ROI-Aussage in einer vorstandsreifen Vorlage zusammenführt.
**Hands-on Ergebnis:** Eine Jahresbudget-Vorlage (Lizenz + Token nach Aufgabentyp + Puffer + ROI-Aussage) im Controlling-Format, genehmigungsreif für Vorstandspräsentation.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export (Referenzjahr), Modell-Katalog (Multiplikatoren + Preise), Pricing-Tiers, Wissensordner für historische Verbrauchsdaten.
**Vorgehen (5 Schritte):**
1. Ziehe den Usage-Export des laufenden Jahres und segmentiere die tatsächlichen Kosten in: Lizenzkosten (Seats × Tier), Token-Kosten nach Modellklasse, Workflow-Run-Pakete — das ist die Baseline für die Hochrechnung.
2. Plane das Volumen-Wachstum: schätze das Token-Wachstum basierend auf geplanten Automatisierungen und Team-Erweiterungen (typisch 30–60 % Wachstum im zweiten Jahr bei steigender Adoption).
3. Erstelle die Budget-Struktur: Fixkosten (Seats × Tier × 12 Monate) + Variable Kosten (Token-Volumen × Modell-Mix × Multiplikator × Basispreis) + Experimentier-Budget (10 % Puffer) + Extra-Usage-Reserve (5 % für Stoßzeiten).
4. Formuliere die ROI-Aussage: KI-Budget-Anfrage / Lohnkosten-Äquivalent der eingesparten Arbeitsstunden = ROI-Faktor; ergänze drei konkrete Kampagnen-Erfolge als qualitative Belege.
5. Bereite zwei Szenarien vor: Basis-Szenario (Status quo + organisches Wachstum) und Wachstums-Szenario (zusätzliche Automatisierungen + neue Use Cases) — der Vorstand entscheidet zwischen den Szenarien, nicht über die Methodik.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Jahresbudget-Stratege für KI-Investitionen. Erstelle auf Basis der angehängten Usage-Daten des laufenden Jahres eine Jahresbudget-Vorlage für die Vorstandsgenehmigung. Enthalte: Lizenzkosten, Token-Kosten nach Modellklasse, 40 % Wachstumspuffer, ROI-Aussage (eingesparte Arbeitsstunden × Stundensatz). Zwei Szenarien: Basis und Wachstum. Tabellenformat, EUR, Sie-Form."
**Erwartetes Artefakt:** Eine Jahresbudget-Vorlage (Kostenstruktur / Szenarien / ROI-Aussage) im Controlling-Format als Entscheidungsvorlage für die Vorstandspräsentation.
**Fallstricke (≥2 spezifisch):**
- Jahresbudgets ohne Wachstumspuffer werden bereits im ersten Quartal gesprengt, wenn die KI-Adoption wie geplant steigt — Mitigation: mindestens 30 % Wachstumspuffer einplanen und diesen explizit als "Adoption-Reserve" benennen, nicht als Sicherheitspuffer.
- Eine Budget-Anfrage ohne ROI-Aussage wird vom Vorstand als reiner Kostenpunkt behandelt, nicht als Investition — Mitigation: die ROI-Aussage (Lohnkosten-Äquivalent) immer als erste Zahl im Deck präsentieren, bevor die Kostenaufstellung folgt.
**Anschluss-Szenario:** S-MK-046

### S-MK-046 Echtzeit- vs. Async-Aufgaben: Latenzanforderungen als Modell-Auswahlkriterium

**Wann nutzen (Trigger):** Das Operations-Team plant zwei neue Agenten gleichzeitig: einen Echtzeit-Chat für Messebesucher und einen nächtlichen Report-Agenten — und fragt, ob beide dasselbe Modell nutzen können, um die Konfiguration zu vereinfachen. (Quelle: A-27)
**Strategisches Ziel:** Latenzanforderungen (Time-to-First-Token) als eigenständiges Modell-Auswahlkriterium neben Kosten und Qualität etablieren, damit interaktive und asynchrone Agenten das jeweils passende Modell erhalten.
**Hands-on Ergebnis:** Eine Latenz-Klassifikation der aktuellen Agenten-Landschaft (echtzeit-kritisch / latenz-tolerant) mit je einer Modell-Empfehlung und einer Kostendifferenz-Notiz.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog (Latenz-Profile), Workflow-Builder (asynchrone Zeitplan-Trigger), manuelle Modellwahl, Agenten-Konfiguration.
**Vorgehen (4 Schritte):**
1. Trenne Aufgaben nach Latenz-Toleranz: echtzeit-kritisch (Antwort in <2 Sekunden erwartet) → Light/Efficient-Modelle (Haiku 4.5, Gemini 2.5 Flash); latenz-tolerant (Batch, nächtlich, asynchron) → auch mittlere und starke Modelle akzeptabel, da Wartezeit keine UX-Rolle spielt.
2. Halte fest: ein Frontier-Modell wie Opus 4.8 hat typischerweise TTFT von 8–15 Sekunden — für einen interaktiven Messestand-Chat ist das eine akzeptanzgefährdende Wartezeit, nicht ein Qualitätsproblem.
3. Definiere einen Hybrid-Ansatz: der Echtzeit-Agent verwendet Haiku 4.5 (TTFT <1 Sek., Multiplikator 0,8x) gestützt durch einen reichhaltigen Wissensordner; der Nacht-Agent verwendet Sonnet 4.6 (Multiplikator 3,1x) für tiefere Synthesen, da Nutzer schlafen.
4. Dokumentiere die Latenz-Klassifikation im Wissensordner als Teil der Agenten-Übersicht, damit neue Kolleginnen den Echtzeit-vs.-Async-Unterschied sofort sehen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Architektur-Berater. Wir haben einen Echtzeit-Messeagenten und einen Nacht-Reporting-Agenten. Empfehle je ein Modell nach Latenz, Qualität und Kostenmultiplikator. Begründe, warum ein einheitliches Modell für beide keine gute Idee ist. Tabelle mit TTFT-Schätzung, Multiplikator und Qualitätsbewertung. Sie-Form."
**Erwartetes Artefakt:** Eine Latenz-Klassifikations-Matrix (Agent / Latenz-Klasse / empfohlenes Modell / TTFT-Schätzung / Multiplikator) als Konfigurationsleitfaden.
**Fallstricke (≥2 spezifisch):**
- Ein teures Modell für interaktive Anwendungen wählen und Latenz erst im Livebetrieb zu messen führt zu einer technischen Notbremsung kurz vor der Veranstaltung — Mitigation: TTFT-Tests immer vor der Produktivnahme unter realistischer Last durchführen, nicht im Einzeltest.
- Latenz-tolerante Batch-Agenten auf Light-Modellen zu belassen, obwohl die Aufgabe strategische Tiefe erfordert, verschenkt Qualitätspotenzial — Mitigation: die Latenz-Klassifikation von der Qualitäts-Anforderung getrennt bewerten; beide Kriterien müssen erfüllt sein.
**Anschluss-Szenario:** S-MK-047

### S-MK-047 Token-Schätzung für große Wissensordner: Input-Kosten vor dem RAG-Lauf kalkulieren

**Wann nutzen (Trigger):** Der Wissensordner ist auf 200 Dokumente (Briefings, Styleguides, Marktberichte) angewachsen, und das Team bemerkt, dass jede Agenten-Session deutlich teurer geworden ist — ohne zu verstehen, wie viele Token pro Abfrage tatsächlich aus dem Wissensordner geladen werden. (Quelle: A-22; sources/12 Q57)
**Strategisches Ziel:** Die Input-Token-Last eines RAG-gestützten Agenten mit großem Wissensordner transparent machen und eine Strategie zur Token-Reduzierung ohne Qualitätsverlust entwickeln.
**Hands-on Ergebnis:** Eine Token-Analyse des Wissensordners (Dokument-Größen, typische Abruf-Token pro Session) plus eine Bereinigungsstrategie und eine Kostenprognose nach Optimierung.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (RAG-Abfrage), Token-Schätzung (Faustregel ~1,2 Token/Wort für Deutsch), Usage-Export für Input-Token-Messung, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Inventarisiere alle Wissensordner-Dokumente mit ihrer Seitenzahl und schätze die Token-Last: eine deutsche Seite (300 Wörter) ≈ 360 Token; 200 Dokumente à 5 Seiten = ~360.000 Token potenzielle Abruf-Last.
2. Verstehe, dass RAG nicht alle 200 Dokumente bei jedem Query lädt, sondern die Top-k relevantesten Chunks — prüfe über den Usage-Export, wie viele Input-Token tatsächlich pro Session geladen werden.
3. Bereinige den Wissensordner: Dokumente, die älter als 12 Monate und durch neuere ersetzt sind, archivieren; Styleguides auf das Wesentliche kürzen; Duplikate entfernen — Ziel: Reduktion auf die 50 wichtigsten, aktuellen Dokumente.
4. Miss die Input-Token-Reduktion nach der Bereinigung über den Usage-Export und dokumentiere die monatliche Einsparung für das Controlling.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Wissensordner-Optimierer. Analysiere die Dokument-Liste im angehängten Inventar (Name, Seiten, Datum). Identifiziere: (1) Dokumente die archiviert werden können (älter als 12 Monate, durch neuere ersetzt), (2) Dokumente die inhaltlich redundant sind, (3) Dokumente die auf das Wesentliche gekürzt werden können. Ziel: Reduktion auf 50 Kern-Dokumente. Priorisierte Liste, Sie-Form."
**Erwartetes Artefakt:** Eine Wissensordner-Bereinigungsliste (Dokument / Handlungsempfehlung: behalten/archivieren/kürzen / Begründung) plus eine Token-Einspar-Schätzung nach der Bereinigung.
**Fallstricke (≥2 spezifisch):**
- Alte Dokumente im Wissensordner zu lassen, die widersprüchliche Informationen zu neueren enthalten, führt zu halluzinatorischen Misch-Antworten des Agenten — Mitigation: bei der Bereinigung aktiv nach inhaltlichen Widersprüchen suchen, nicht nur nach Alter filtern.
- RAG-Systeme laden nicht deterministisch dieselben Chunks bei jeder Abfrage — Token-Schätzungen basierend auf "Worst Case alle Dokumente" sind unrealistisch; Mitigation: den tatsächlichen Usage-Export für Input-Token-Messung nutzen, nicht theoretische Maximalwerte.
**Anschluss-Szenario:** S-MK-048

### S-MK-048 Standard vs. Max vs. BYOC: Tier-Entscheidung nach Aufgabentyp-Portfolio

**Wann nutzen (Trigger):** Ein mittelständisches B2B-Unternehmen mit einem 15-köpfigen Marketing-Team evaluiert, welcher Langdock-Tarif zum Aufgaben-Mix passt — ein Teil des Teams macht einfaches Content-Drafting, zwei Personen entwickeln komplexe Automatisierungsworkflows, und eine Führungskraft fragt nach BYOC für kritische strategische Analysen. (Quelle: sources/12 Q117)
**Strategisches Ziel:** Den optimalen Tarif-Mix (Standard / Max / BYOC) für ein heterogenes Marketing-Team auf Basis des tatsächlichen Aufgaben-Portfolios ermitteln, statt einen Einheitstarif zu wählen.
**Hands-on Ergebnis:** Eine Tier-Zuordnung pro Rollengruppe (Content / Workflow-Entwickler / Strategen) mit Jahreskosten-Gegenüberstellung drei Szenarien (Einheitstarif Standard / Einheitstarif Max / gemischtes Modell).
**Eingesetzte Langdock-Fähigkeit(en):** Pricing-Tiers (Standard €25 / Max €99 / Enterprise mit BYOC), Workflow-Builder (Max-Feature), BYOC (Enterprise-Tier), Usage-Export.
**Vorgehen (4 Schritte):**
1. Segmentiere das 15-köpfige Team in Rollengruppen: Content-Autoren (10 Personen, Basis-Chat und einfache Agenten, Standard reicht), Workflow-Entwickler (3 Personen, komplexe Loop-Nodes und RAG, Max nötig), Strategen (2 Personen, Frontier-Modelle und eventuell BYOC, Enterprise-Kandidaten).
2. Ermittle pro Gruppe, welche Features tatsächlich genutzt werden — kein Tier-Upgrade ohne Feature-Nachweis: SSO und BYOC erst bei nachgewiesenem Enterprise-Bedarf.
3. Rechne drei Szenarien auf Jahresbasis: (a) alle 15 auf Standard = €4.500/Jahr; (b) alle 15 auf Max = €17.820/Jahr; (c) gemischt 10x Standard + 3x Max + 2x Enterprise (Preis auf Anfrage, Schätzwert €150/Nutzer) = €9.060/Jahr plus Enterprise-Verhandlung.
4. Empfehle das gemischte Modell mit einem 6-Monats-Review: wenn weitere Workflow-Entwickler dazukommen, schrittweise upgraden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Lizenz-Strategie-Berater. Unser 15-köpfiges Marketing-Team hat drei Rollengruppen: 10 Content-Autoren, 3 Workflow-Entwickler, 2 Strategen. Rechne drei Tier-Szenarien auf Jahresbasis: alle Standard, alle Max, gemischtes Modell. Begründe je Gruppe den Tier-Bedarf anhand konkreter Feature-Anforderungen. Tabelle, EUR, Sie-Form."
**Erwartetes Artefakt:** Eine Tier-Entscheidungsmatrix (Rollengruppe / benötigte Features / empfohlener Tier / Jahreskosten) plus eine Jahreskosten-Gegenüberstellung drei Szenarien.
**Fallstricke (≥2 spezifisch):**
- BYOC mit Enterprise-Tier verwechseln: Enterprise ist der Tarif, BYOC ist eine Feature-Option innerhalb von Enterprise — nicht jedes Enterprise-Team benötigt BYOC; Mitigation: Feature-Bedarf (API-Key-Management, Azure-Rahmenvertrag) vor der BYOC-Entscheidung klar definieren.
- Den gemischten Tier-Mix nach 12 Monaten nicht zu überprüfen führt dazu, dass das ursprünglich optimale Modell veraltet, wenn das Team wächst — Mitigation: Tier-Review als festen Termin im Jahresbudget-Prozess verankern.
**Anschluss-Szenario:** S-MK-049

### S-MK-049 ROI-Kalkulations-Framework für KI-Investitionen im Marketing

**Wann nutzen (Trigger):** Der CFO verlangt vor der nächsten Budget-Runde einen strukturierten ROI-Nachweis für die gesamte Langdock-Investition — bisherige Antworten wie "wir sparen Zeit" werden nicht akzeptiert, es werden Zahlen erwartet. (Quelle: A-01)
**Strategisches Ziel:** Ein wiederverwendbares ROI-Kalkulations-Framework entwickeln, das KI-Investitionen in drei Dimensionen messbar macht: direkte Kosteneinsparung, Zeitersparnis (Opportunitätswert) und Qualitätsverbesserung (Iterations-Reduktion).
**Hands-on Ergebnis:** Ein ausgefülltes ROI-Framework (Investition / Direktersparnis / Zeitersparnis-Wert / Qualitätseffekt / Gesamt-ROI in %) als CFO-taugliche Vorlage.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export-CSV (Ist-Kosten), Wissensordner für Stundensätze und Benchmark-Daten, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Erhebe die Investitions-Gesamtkosten: Langdock-Lizenz (Seats × Tier × 12) + Token-Kosten (aus Usage-Export) + Einmalinvestitionen (Onboarding, Schulung) = Gesamtinvestition Jahr 1.
2. Berechne die Direktersparnis: welche Agentur- oder Freelancer-Kosten wurden durch interne KI-Produktion ersetzt? Welche Software-Lizenzen wurden abgelöst?
3. Kalkuliere den Zeitersparnis-Wert: durchschnittliche Zeitersparnis pro Aufgabentyp (aus Mitarbeiterbefragung) × Anzahl der Durchläufe pro Monat × interner Stundensatz = jährlicher Opportunitätswert.
4. Ergänze den Qualitätseffekt als Proxy: Reduktion der Überarbeitungsrunden bei Briefings und Texten (messbar durch Versionszählung vor vs. nach KI) × Kosten pro Überarbeitungsrunde.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein ROI-Analyse-Experte für KI-Investitionen. Erstelle auf Basis der angehängten Daten (Usage-Export, Stundensätze, Aufgaben-Logs) ein ROI-Framework mit drei Dimensionen: Direktersparnis, Zeitersparnis-Wert, Qualitätseffekt. Berechne den Gesamt-ROI in Prozent. Gib das Framework als ausfüllbare Vorlage für Folgejahre aus. Tabellenformat, EUR, Sie-Form."
**Erwartetes Artefakt:** Ein ROI-Framework-Dokument (Investitions-Komponenten / Einsparungs-Dimensionen / Gesamt-ROI %) als jährlich wiederverwendbare CFO-Vorlage.
**Fallstricke (≥2 spezifisch):**
- Zeitersparnis ohne valide Zeiterfassungs-Daten zu schätzen erzeugt angreifbare Zahlen — Mitigation: vor der ROI-Berechnung einen zweiwöchigen Zeiterfassungs-Sprint mit dem Team durchführen, bei dem Aufgabendauer vor und nach KI-Unterstützung gemessen wird.
- Den Qualitätseffekt wegzulassen, weil er schwer zu messen ist, unterschätzt den ROI systematisch — Mitigation: auch eine einfache Proxy-Messung (Versionszahl vorher vs. nachher) als Qualitätsindikator dokumentieren und für den CFO erklären.
**Anschluss-Szenario:** S-MK-050

### S-MK-050 Modell-Evaluierungs-Scorecard für marketing-spezifische Benchmarks

**Wann nutzen (Trigger):** Ein neues Modell-Release (z.B. Gemini 4.0 Flash) wird vom Provider mit allgemeinen Benchmark-Ergebnissen beworben — das Marketing-Team will wissen, ob das Modell für seine spezifischen Aufgaben (DACH-Texte, Briefings, Daten-Klassifikation) tatsächlich besser ist als das bisherige Default-Modell. (Quelle: sources/12 Q24; A-30)
**Strategisches Ziel:** Eine standardisierte Evaluierungs-Scorecard entwickeln, die neue Modell-Releases zuverlässig an marketing-relevanten Aufgaben misst und eine nachvollziehbare Entscheidungsgrundlage für den Modell-Wechsel liefert.
**Hands-on Ergebnis:** Eine ausgefüllte Scorecard (5 Aufgaben × Qualitätsdimensionen × Kostenmultiplikator) plus eine Wechsel-Empfehlung mit Konfidenz-Angabe.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl, Wissensordner für Evaluierungs-Aufgaben und Bewertungsraster, Usage-Export für Kostenmessung, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Definiere die Scorecard-Struktur: 5 Pflicht-Aufgaben (DACH-Brand-Voice-Text, SEO-Headline-Varianten, Briefing aus Stichpunkten, Support-Ticket-Klassifikation, Strategie-Zusammenfassung) — diese decken das reale Aufgaben-Portfolio ab und sind im Wissensordner als wiederholbare Tests abgelegt.
2. Führe alle 5 Aufgaben parallel auf dem neuen Modell und dem bisherigen Default durch; messe Qualität (1-5 pro Dimension: Relevanz, Sprachqualität, Strukturtreue) und Kostenmultiplikator.
3. Berechne den "Qualität-pro-Multiplikator"-Score: höhere Qualität bei gleichem oder niedrigerem Multiplikator ist ein klares Wechselsignal; höhere Qualität bei deutlich höherem Multiplikator erfordert eine Kosten-Nutzen-Abwägung je Aufgabentyp.
4. Dokumentiere die Scorecard mit Datum und Modell-Version im Wissensordner — die Scorecard bildet die historische Entscheidungsspur für zukünftige Modell-Reviews.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Evaluierungs-Analytiker. Ich habe Outputs von unserem bisherigen Default-Modell und dem neuen Kandidaten für 5 Aufgaben aus dem Wissensordner. Bewerte alle Outputs nach: Relevanz (1-5), DACH-Sprachqualität (1-5), Strukturtreue (1-5). Berechne Qualität-pro-Multiplikator-Score. Gib eine Wechsel-Empfehlung mit Konfidenz-Angabe. Scorecard-Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine ausgefüllte Evaluierungs-Scorecard (Aufgabe / altes Modell / neues Modell / Score / Multiplikator / Wechsel-Empfehlung) als datierter Wissensordner-Eintrag.
**Fallstricke (≥2 spezifisch):**
- Allgemeine Provider-Benchmarks (z.B. MMLU, HumanEval) sagen wenig über Marketing-spezifische Aufgaben aus — Mitigation: ausschließlich auf die eigene Scorecard mit team-relevanten Aufgaben vertrauen, nicht auf Provider-Marketing-Zahlen.
- Eine Scorecard ohne Versionsnummer und Datum zu archivieren macht den historischen Vergleich bei zukünftigen Reviews unmöglich — Mitigation: Dateiname immer mit Modell-Name und Datum versehen, z.B. "Scorecard-GeminiFlash4-2026-05.md".
**Anschluss-Szenario:** S-MK-051

### S-MK-051 Prompt-Caching und sein Effekt auf Token-Kosten: Wann sich statische Präambeln lohnen

**Wann nutzen (Trigger):** Der Content-Agent hat einen 4.000-Token-System-Prompt mit Persona, Brand-Voice und Ausgaberegeln, der bei jeder der täglich 300 Sessions neu übertragen wird — die Input-Kosten wachsen linear mit den Sessions, und das Team fragt, ob Prompt-Caching helfen könnte. (Quelle: A-22)
**Strategisches Ziel:** Den wirtschaftlichen Nutzen von Prompt-Caching für statische System-Prompt-Anteile bewerten und eine Entscheidungsregel definieren, ab wann Caching die Token-Kosten messbar senkt.
**Hands-on Ergebnis:** Eine Caching-Wirtschaftlichkeitsrechnung (statische Token × Sessions/Tag × Cache-Treffer-Rate × Multiplikator) plus eine angepasste Prompt-Struktur, die den cachefähigen Teil maximiert.
**Eingesetzte Langdock-Fähigkeit(en):** Agenten-Konfiguration (System-Prompt-Strukturierung), Wissensordner als Cache-Ersatz für statische Dokumente, Usage-Export für Token-Messung.
**Vorgehen (4 Schritte):**
1. Identifiziere im System-Prompt die statischen Anteile (Persona-Definition, Brand-Voice-Regeln, Ausgabeformat) versus dynamische Anteile (aktuelles Datum, Kampagnenname, variable Zielgruppe) — nur statische Anteile sind cachefähig.
2. Prüfe die Caching-Voraussetzungen: statischer Anteil muss >2.048 Token sein UND die Session-Frequenz muss >5 Requests/Stunde betragen — unter diesen Schwellen überwiegt der Cache-Verwaltungsoverhead.
3. Berechne die potenzielle Einsparung: 4.000 statische Token × 300 Sessions/Tag × Cache-Treffer-Rate 70 % × (1 - 0,10 Cache-Kosten-Faktor) × Multiplikator × Basispreis/Token = monatliche Ersparnis in EUR.
4. Strukturiere den System-Prompt so, dass der statische Block an erster Stelle steht und der dynamische Block danach folgt — das maximiert die Cache-Trefferquote.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Prompt-Caching-Berater. Unser Content-Agent hat einen 4.000-Token-System-Prompt, der bei 300 täglichen Sessions komplett übertragen wird. Analysiere den angehängten System-Prompt auf statische und dynamische Anteile. Berechne die monatliche Token-Einsparung durch Caching bei einer angenommenen Cache-Treffer-Rate von 70 %. Gib eine Empfehlung und eine optimierte Prompt-Struktur. Sie-Form."
**Erwartetes Artefakt:** Eine Caching-Wirtschaftlichkeitsrechnung (statische Token / Cache-Treffer-Rate / monatliche Ersparnis EUR) plus eine optimierte System-Prompt-Struktur mit statischem und dynamischem Block.
**Fallstricke (≥2 spezifisch):**
- Gecachte System-Prompts, die nicht regelmäßig auf Aktualität geprüft werden, führen zu veralteten Brand-Voice-Regeln im Produktionsbetrieb — Mitigation: eine quartalsweise Cache-Invalidierungs-Routine einplanen, bei der alle gecachten Inhalte auf Aktualität geprüft werden.
- Caching-Einsparungen als Dauerzustand kalkulieren ohne zu berücksichtigen, dass Modell-Updates den Cache invalidieren können — Mitigation: nach jedem Provider-Update die Cache-Treffer-Rate im Usage-Export kontrollieren und die Wirtschaftlichkeitsrechnung anpassen.
**Anschluss-Szenario:** S-MK-052

### S-MK-052 Kosten-Management für saisonale Peak-Traffic-Kampagnen

**Wann nutzen (Trigger):** Das Black-Friday-Kampagnen-Team plant einen Drei-Wochen-Sprint mit zehnfachem KI-Nutzungsvolumen gegenüber dem Monatsdurchschnitt — das reguläre Workspace-Limit von €500 würde in der ersten Woche erreicht, und das Team weiß nicht, wie es diese Spitze budgetieren soll. (Quelle: sources/12 Q119)
**Strategisches Ziel:** Ein saisonales Budget-Modell aufsetzen, das Peak-Traffic-Phasen absichert, ohne das reguläre Monatsbudget dauerhaft zu erhöhen oder die Routine-Agenten in der Hauptkampagnenphase zu blockieren.
**Hands-on Ergebnis:** Ein Peak-Budget-Plan (temporäre Limit-Erhöhung, Modell-Priorisierung, Nachkampagnen-Reduktion) plus eine dokumentierte Freigabe-Policy für saisonale Budgeterhöhungen.
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Limit (temporäre Erhöhung), Workflow-Level-Budgets (Kampagnen-dediziert), Warn-Schwellen (50/75/90%), Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Quantifiziere den Peak-Bedarf: schätze auf Basis des Vorjahrs-Usage-Exports (oder analoger Kampagnen), wie viel Token-Volumen und wie viele Workflow-Runs in der Peak-Phase anfallen — Faktor 10x als Planungsgröße.
2. Beantrage eine temporäre Workspace-Limit-Erhöhung für den Kampagnenzeitraum (z.B. von €500 auf €2.000 für 4 Wochen) mit begründetem Businesscase beim Management — nicht pauschal verdoppeln, sondern rechnerisch begründen.
3. Richte ein dediziertes Kampagnen-Budget-Konto auf Workflow-Level ein: Kampagnen-Workflows bekommen ein eigenes Budget, Routine-Agenten (Reporting, Onboarding) bekommen ein separates, reduziertes Budget, damit sie die Kampagne nicht konkurrenzieren.
4. Plane die Nachkampagnen-Reduktion explizit: nach dem Peak-Zeitraum Workspace-Limit auf das reguläre Niveau zurücksetzen und nicht als "neue Norm" laufen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Peak-Kampagnen-Budgetplaner. Unsere Black-Friday-Kampagne läuft 4 Wochen mit ca. 10x normalem KI-Nutzungsvolumen. Erstelle: (1) eine Bedarfsschätzung basierend auf den angehängten Vorjahrsdaten, (2) einen Antrag für temporäre Workspace-Limit-Erhöhung mit Begründung, (3) eine Budget-Aufteilung zwischen Kampagnen- und Routine-Workflows. Tabellenformat, EUR, Sie-Form."
**Erwartetes Artefakt:** Ein Peak-Budget-Plan (Bedarfsschätzung / temporäres Limit / Budget-Aufteilung Kampagne vs. Routine / Nachkampagnen-Reduktionsplan) als jährlich wiederverwendbare Vorlage.
**Fallstricke (≥2 spezifisch):**
- Das Peak-Limit nach der Kampagne nicht zurückzusetzen führt dauerhaft zu einem höheren Workspace-Budget, das als neue Norm akzeptiert wird — Mitigation: das Rücksetz-Datum als Kalender-Event mit Admin-Erinnerung beim Limit-Erhöhungsantrag hinterlegen.
- Routine-Agenten ohne dediziertes Budget in der Peak-Phase durch Kampagnen-Workflows von ihrem Kontingent zu verdrängen unterbricht laufende Operations — Mitigation: immer dedizierte Workflow-Budget-Trennung zwischen Peak-Kampagne und Dauerbetrieb.
**Anschluss-Szenario:** S-MK-053

### S-MK-053 Wechselkosten-Analyse: Migration von GPT auf Claude oder umgekehrt

**Wann nutzen (Trigger):** Nach drei Monaten mit GPT-5.4 als Haupt-Content-Modell schlägt ein Teammitglied vor, auf Sonnet 4.6 umzustellen — aus Qualitätsgründen bei deutschen Texten. Das Team fragt, wie hoch die tatsächlichen Wechselkosten (Prompt-Umbau, Qualitäts-Tests, Übergangsphase) sind. (Quelle: sources/12 Q84; A-30)
**Strategisches Ziel:** Die vollständigen Wechselkosten eines Modell-Migrations-Projekts quantifizieren (Prompt-Engineering, Qualitäts-Tests, Übergangsphase, Dokumentations-Update) und gegen den erwarteten Qualitätsgewinn abwägen.
**Hands-on Ergebnis:** Eine Wechselkosten-Kalkulation (Einmalinvestitionen + Übergangskosten + erwarteter Nutzen) als Entscheidungsvorlage für das Management.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl, Wissensordner für Prompt-Inventar, Modell-Katalog (Multiplikator-Vergleich), Usage-Export.
**Vorgehen (4 Schritte):**
1. Inventarisiere alle Prompts und Agenten, die das alte Modell nutzen — typischerweise sind System-Prompts auf Provider-spezifische Stärken optimiert und müssen für den neuen Provider angepasst werden; rechne 2–4 Stunden Prompt-Engineering pro Agent.
2. Kalkuliere den Test-Aufwand: alle aktiven Agenten müssen auf dem neuen Modell gegen einen definierten Qualitäts-Standard geprüft werden (Scorecard aus S-MK-050); mindestens 5 Testdurchläufe pro Agent.
3. Plane eine Übergangsphase von 2–4 Wochen mit Parallel-Betrieb (alt und neu): doppelter Token-Verbrauch in dieser Phase; berechne die Übergangskosten als (alter Multiplikator + neuer Multiplikator) × halbes normales Volumen × Wochen.
4. Vergleiche Gesamtwechselkosten mit dem prognostizierten jährlichen Qualitätsgewinn (Reduktion Überarbeitungsrunden × Stundensatz × Anzahl Iterationen/Jahr) — wenn Amortisierungszeitraum >12 Monate, ist Wechsel wirtschaftlich fraglich.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Migrations-Berater. Wir planen einen Wechsel von GPT-5.4 auf Sonnet 4.6 für unseren Content-Agenten (tägliches Volumen: 200 Sessions, 10 angepasste Prompts). Berechne: Prompt-Engineering-Aufwand, Test-Aufwand, Übergangskosten (4 Wochen Parallelbetrieb), und stelle einen Amortisierungszeitraum bei geschätztem 20 % Qualitätsgewinn gegenüber. Tabelle, EUR, Stundensatz €80, Sie-Form."
**Erwartetes Artefakt:** Eine Wechselkosten-Kalkulation (Einmalinvestition / Übergangskosten / jährlicher Nutzen / Amortisierungszeitraum Monate) als Management-Entscheidungsvorlage.
**Fallstricke (≥2 spezifisch):**
- Prompt-Migration ohne Testing-Phase in der Annahme, dass Prompts provider-übergreifend identisch funktionieren, führt zu Qualitätseinbrüchen im Produktivbetrieb — Mitigation: niemals einen Provider-Wechsel ohne dedizierte Test-Phase mit definierten Qualitäts-Schwellenwerten durchführen.
- Den Wechsel als rein technische IT-Aufgabe zu behandeln und das Marketing-Team nicht einzubeziehen unterschätzt den Einarbeitungsaufwand — Mitigation: Prompt-Engineering-Aufwand immer gemeinsam mit den primären Agenten-Nutzern schätzen, nicht nur IT-seitig.
**Anschluss-Szenario:** S-MK-054

### S-MK-054 Versteckte Kosten: Überarbeitungszyklen und Halluzinations-Korrektur-Overhead

**Wann nutzen (Trigger):** Ein erster Kostenvergleich zeigt, dass Haiku 4.5 für Pressemitteilungen günstiger ist als Sonnet 4.6 — aber nach drei Monaten Nutzung zeigt die Zeiterfassung des Redaktionsteams, dass jede Haiku-Pressemitteilung durchschnittlich 2,5 Überarbeitungsrunden braucht, Sonnet-Texte nur 0,8. (Quelle: A-21)
**Strategisches Ziel:** Die versteckten Kosten von Überarbeitungszyklen und Halluzinations-Korrekturen in die Modell-Kostenkalkulation einbeziehen, um den echten Total-Cost-of-Output zu ermitteln.
**Hands-on Ergebnis:** Eine Total-Cost-of-Output-Rechnung (Token-Kosten + Überarbeitungszeit-Wert) für zwei Modelle mit einem Break-Even-Vergleich.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog (Multiplikatoren), Usage-Export, Wissensordner für Zeiterfassungs-Daten, manuelle Modellwahl.
**Vorgehen (4 Schritte):**
1. Erhebe den Überarbeitungs-Overhead pro Modell: messe oder schätze die durchschnittliche Redaktionszeit pro Output (in Minuten) für das günstigere und das teurere Modell — diese Daten sind in Zeiterfassungs-Logs oder Mitarbeiterbefragungen verfügbar.
2. Berechne den Überarbeitungs-Kostenwert: Überarbeitungszeit (Minuten) × Häufigkeit (Sessions/Monat) × Stundensatz der Redakteurin / 60 = monatlicher Überarbeitungs-Kostenwert.
3. Addiere Token-Kosten und Überarbeitungs-Kosten: Total-Cost-of-Output = (Token-Kosten Modell A) + (Überarbeitungszeit-Wert Modell A) — führe dies für beide Modelle durch.
4. Vergleiche die Total-Cost-of-Output-Werte: wenn Sonnet 4.6 trotz höherem Multiplikator im Gesamt-Kostenvergleich günstiger ist, ist das das wirtschaftliche Argument für den Modell-Upgrade.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Total-Cost-of-Output-Analytiker. Haiku 4.5 kostet 0,8x Multiplikator, Sonnet 4.6 kostet 3,1x. Haiku-Texte brauchen 2,5 Überarbeitungsrunden à 20 Minuten, Sonnet-Texte 0,8 Runden à 20 Minuten. Stundensatz Redaktion: €65. Tägliches Volumen: 15 Pressemitteilungen. Berechne den Total-Cost-of-Output pro Monat für beide Modelle und bestimme den Break-Even. Tabelle, EUR, Sie-Form."
**Erwartetes Artefakt:** Eine Total-Cost-of-Output-Rechnung (Token-Kosten / Überarbeitungs-Kosten / Gesamt / Break-Even-Analyse) plus eine begründete Modell-Empfehlung für faktenkritische Texte.
**Fallstricke (≥2 spezifisch):**
- Die Überarbeitungszeit nur informell zu schätzen ohne Messdaten führt zu angreifbaren Zahlen — Mitigation: einen dreiwöchigen Zeiterfassungs-Sprint mit dem Redaktionsteam durchführen, bevor die Total-Cost-Kalkulation erstellt wird.
- Die Kalkulation auf einen Aufgabentyp zu beschränken (z.B. nur Pressemitteilungen) und das Ergebnis auf alle Inhalte zu verallgemeinern überschätzt den Break-Even-Effekt — Mitigation: Total-Cost-Analyse pro Aufgabentyp separat durchführen, da der Halluzinations-Overhead je nach Faktendichte stark variiert.
**Anschluss-Szenario:** S-MK-055

### S-MK-055 Modell-Deprecation-Planung: Was tun, wenn ein Modell abgekündigt wird

**Wann nutzen (Trigger):** Ein Provider kündigt an, dass GPT-5.2 in 90 Tagen in den "Legacy"-Status wechselt und danach nur noch zu erhöhten Preisen verfügbar ist — das Team hat fünf produktive Agenten, die auf GPT-5.2 laufen, und keine Transitions-Roadmap. (Quelle: sources/12 Q24; A-30)
**Strategisches Ziel:** Einen strukturierten Deprecation-Response-Plan entwickeln, der den Übergang zu einem Nachfolge-Modell ohne Produktionsausfall und ohne Budget-Eskalation sicherstellt.
**Hands-on Ergebnis:** Ein Deprecation-Response-Plan (betroffene Agenten / Migrations-Priorität / Ziel-Modell / Test-Zeitplan / Budget-Auswirkung) als ausführbares Projekt-Dokument.
**Eingesetzte Langdock-Fähigkeit(en):** Modell-Katalog, manuelle Modellwahl, Wissensordner für Agenten-Inventar, Usage-Export (Volumen je betroffenem Agenten).
**Vorgehen (4 Schritte):**
1. Erstelle ein Betroffenheits-Inventar: welche Agenten und Workflows nutzen das abzukündigende Modell? Welches Token-Volumen und welche Produktionskritikalität hat jeder Eintrag? Priorisiere nach Kritikalität (produktionskritisch zuerst).
2. Evaluiere Nachfolge-Modell-Kandidaten nach den Kriterien aus der Evaluierungs-Scorecard (S-MK-050): Qualität für den spezifischen Aufgabentyp, Multiplikator-Vergleich, DACH-Sprachqualität.
3. Plane die Test- und Übergangsphase: produktionskritische Agenten migrieren in den ersten 30 Tagen; niedriger-Priorität-Agenten bis Tag 75; in den letzten 15 Tagen nur noch Notfall-Patches.
4. Kalkuliere die Budget-Auswirkung: wenn das Nachfolge-Modell einen höheren Multiplikator hat, berechne die monatliche Mehrkosten und kommuniziere sie proaktiv an das Controlling — Deprecations sind keine Budget-Überraschungen, wenn sie früh geplant werden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Deprecation-Manager. GPT-5.2 wird in 90 Tagen deprecated. Wir haben 5 Agenten auf diesem Modell (Details im Wissensordner: Aufgabentyp, Volumen, Kritikalität). Erstelle einen Transitions-Plan: Migrations-Priorität, Ziel-Modell-Empfehlung, Test-Zeitplan und Budget-Auswirkung für jedes Nachfolge-Modell. Projektplan-Format, Sie-Form."
**Erwartetes Artefakt:** Ein Deprecation-Response-Plan (Agent / Kritikalität / Ziel-Modell / Migrations-Frist / Budget-Delta) plus ein 90-Tage-Zeitplan als ausführbares Projekt-Dokument.
**Fallstricke (≥2 spezifisch):**
- Deprecation-Ankündigungen zu ignorieren und bis zum letzten Tag zu warten erzwingt Stress-Migrationen unter Zeitdruck mit erhöhtem Fehlerrisiko — Mitigation: Provider-Ankündigungen aktiv beobachten und die ersten 30 Tage für Planung reservieren, nicht für Migration.
- Das Nachfolge-Modell ohne Testing-Phase direkt in Produktion zu nehmen in der Annahme, es sei "ähnlich genug" — Mitigation: jede Deprecation-Migration erfordert eine Scorecard-basierte Qualitätsprüfung, auch wenn die Modelle aus derselben Familie stammen.
**Anschluss-Szenario:** S-MK-056

### S-MK-056 Kosten-pro-Ergebnis-Metrik: Kosten je generiertem Lead und Content-Piece messen

**Wann nutzen (Trigger):** Die Marketing-Leiterin will gegenüber dem Vertrieb belegen, dass KI-generierte Lead-Magneten (Whitepaper, Checklisten) pro gewonnenem Lead günstiger sind als extern produzierte Inhalte — und sucht eine Metrik, die Token-Kosten mit Marketing-Ergebnissen verbindet. (Quelle: A-01)
**Strategisches Ziel:** Eine "Kosten-pro-Ergebnis"-Metrik einführen (z.B. Kosten pro generiertem Lead, Kosten pro Content-Piece), die KI-Ausgaben direkt mit Marketing-KPIs verknüpft und für Vertriebs- und Vorstandskommunikation geeignet ist.
**Hands-on Ergebnis:** Eine Kosten-pro-Ergebnis-Rechnung für zwei Content-Typen (KI-generiert vs. extern produziert) plus eine Vorlage für die monatliche Metrik-Erhebung.
**Eingesetzte Langdock-Fähigkeit(en):** Usage-Export (Token-Kosten je Kampagne), Wissensordner für Kampagnen-Performance-Daten, Modell-Katalog.
**Vorgehen (4 Schritte):**
1. Definiere die Ergebnis-Metrik je Kampagnen-Typ: für Lead-Magneten → Kosten pro gewonnenem Lead (KI-Produktionskosten / generierte Leads); für Content-Marketing → Kosten pro publiziertem Content-Piece (KI-Produktionskosten + Redaktionszeit-Wert / Anzahl veröffentlichter Stücke).
2. Ziehe aus dem Usage-Export die Token-Kosten für die spezifische Kampagne; addiere den Redaktionszeit-Wert (Stunden × Stundensatz) für die Nachbearbeitung.
3. Vergleiche mit dem Benchmark: externe Whitepaper-Produktion kostet typischerweise €2.000–€5.000 pro Stück; KI-gestützte Produktion mit Redaktions-Overhead typischerweise €150–€600 — berechne den Kosten-Faktor.
4. Erstelle eine monatliche Metrik-Tabelle, die automatisch aus dem Usage-Export und dem CRM-Kampagnen-Report befüllt werden kann.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Marketing-ROI-Analytiker. Unsere letzte Whitepaper-Kampagne kostete KI-seitig €87 (aus Usage-Export), plus 6 Stunden Redaktion à €65/h. Das Whitepaper generierte 43 Leads. Vergleiche Kosten-pro-Lead mit unserem externen Benchmark (€3.200 für externes Whitepaper, 28 Leads historisch). Berechne: Kosten-pro-Lead beide Wege, Kosten-Ersparnis-Faktor, ROI-Aussage für Vertrieb. Stichpunkte und Tabelle, Sie-Form."
**Erwartetes Artefakt:** Eine Kosten-pro-Ergebnis-Rechnung (KI vs. Extern / Kosten-pro-Lead / Faktor) plus eine monatliche Metrik-Vorlage für die kontinuierliche Erhebung.
**Fallstricke (≥2 spezifisch):**
- Den Redaktions-Overhead bei der KI-Kostenkalkulation wegzulassen verschönert die Kosten-pro-Ergebnis-Metrik unfair — Mitigation: immer Total Cost of Output (Token + Redaktionszeit) als Grundlage verwenden, nie nur Token-Kosten allein.
- Lead-Qualität zwischen KI-generiertem und extern produziertem Content zu ignorieren macht den Kosten-Vergleich unvollständig — Mitigation: neben der Kosten-pro-Lead-Metrik auch die Lead-Qualitätsrate (z.B. SQL-Rate) als Qualitäts-Korrektiv miterfassen.
**Anschluss-Szenario:** S-MK-057

### S-MK-057 Budget-Freigabe-Workflow für Frontier-Modell-Zugang: Management Sign-off

**Wann nutzen (Trigger):** Ein Senior-Stratege möchte Opus 4.8 für eine komplexe Wettbewerbs-Analyse einsetzen (geschätzte Kosten: Größenordnung €100–150 für den Lauf) — der Workspace-Admin hat Frontier-Modelle genehmigungspflichtig gemacht, aber es gibt noch keinen definierten digitalen Freigabe-Prozess, und die Genehmigung passiert per Zuruf. (Quelle: A-30)
**Strategisches Ziel:** Einen leichtgewichtigen, dokumentierten Budget-Freigabe-Workflow für teure Einzelläufe (>€20) einrichten, der Management Sign-off sichert, ohne die Arbeit der Strategen durch bürokratischen Overhead zu blockieren.
**Hands-on Ergebnis:** Ein Freigabe-Workflow (Antragsformular → Genehmiger → Freigabe-Dokumentation) plus ein Langdock-Workflow-Template, das die Freigabe nach Genehmigung automatisch triggert.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (Genehmigungsschritt), Workspace-Admin (Modell-Zugangsbeschränkung), Wissensordner für Freigabe-Protokolle, Slack-Integration für Benachrichtigungen.
**Vorgehen (4 Schritte):**
1. Definiere die Freigabe-Schwellen: Läufe €20–€50 → Freigabe durch Marketing-Operations-Lead; Läufe €50–€200 → Marketing-Direktor; Läufe >€200 → CFO-Sichtvermerk.
2. Erstelle ein minimales Antragsformular (3 Felder: Use Case in einem Satz, erwartete Kosten, Zeitbedarf) als Slack-Message-Template oder Langdock-Formular-Agent.
3. Baue einen Langdock-Workflow: Antragsformular-Eingang → Benachrichtigung an Genehmiger via Slack → Genehmigung durch Reaktion (✅/❌) → bei ✅ automatische Freigabe des Frontier-Modell-Zugangs für den benannten Nutzer für 24 Stunden.
4. Archiviere jede Genehmigung automatisch im Wissensordner als Audit-Trail (Datum, Nutzer, Use Case, tatsächliche Kosten nach Lauf).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Governance-Prozess-Designer. Erstelle einen Budget-Freigabe-Workflow für Frontier-Modell-Läufe (>€20) in unserem Marketing-Team. Definiere: (1) Freigabe-Schwellen, (2) Antragsformular (max. 3 Felder), (3) Genehmigungspfad per Slack-Reaktion, (4) Audit-Trail-Archivierung. Ziel: weniger als 2 Stunden von Antrag bis Freigabe. Prozessbeschreibung, Sie-Form."
**Erwartetes Artefakt:** Ein Budget-Freigabe-Workflow-Dokument (Schwellen / Antragsformular / Genehmigungspfad / Audit-Trail) plus ein Langdock-Workflow-Template für die automatische Freigabe.
**Fallstricke (≥2 spezifisch):**
- Einen Freigabe-Prozess mit zu vielen Schritten einzuführen, der länger als einen halben Arbeitstag dauert, verleitet Strategen dazu, Frontier-Modelle über Umwege (persönliche API-Keys) zu umgehen — Mitigation: den Prozess auf maximal 2 Stunden von Antrag bis Freigabe beschränken und das als SLA kommunizieren.
- Den Audit-Trail manuell zu führen statt automatisch zu archivieren führt dazu, dass Genehmigungen nicht dokumentiert sind — Mitigation: Archivierung als automatischen letzten Workflow-Schritt konfigurieren, nicht als manuelle Aufgabe.
**Anschluss-Szenario:** S-MK-058

### S-MK-058 Echtzeit-Token-Monitoring-Dashboard: Grafana oder Datadog für KI-Kostenüberwachung

**Wann nutzen (Trigger):** Das Marketing-Operations-Team möchte Langdock-Kosten in dasselbe Dashboard integrieren, in dem sie bereits AWS-Kosten und Kampagnen-KPIs überwachen — statt einmal monatlich den Usage-Export manuell herunterzuladen, wollen sie Echtzeit-Sichtbarkeit. (Quelle: A-25)
**Strategisches Ziel:** Einen automatisierten Token-Monitoring-Kanal von der Langdock-Usage-Export-API in ein bestehendes Observability-Dashboard (Grafana oder Datadog) aufsetzen, der Echtzeit-Kostenüberwachung und Anomalie-Alerting ermöglicht.
**Hands-on Ergebnis:** Eine Monitoring-Architektur (API-Polling-Workflow → Datenbank/Webhook → Grafana/Datadog-Panel) plus eine Anomalie-Alert-Regel für plötzliche Kosten-Spikes.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (HTTP-Request-Knoten für Usage-Export-API, Zeitplan-Trigger alle 15 Minuten), Slack-Integration für Alert-Benachrichtigungen, Wissensordner für Monitoring-Dokumentation.
**Vorgehen (4 Schritte):**
1. Richte einen Langdock-Workflow mit 15-Minuten-Intervall-Trigger ein, der die Usage-Export-API abfragt und die aktuellen Verbrauchsdaten (Token pro Modell, Kosten EUR) als JSON an einen Webhook weiterleitet.
2. Schicke den JSON-Output an die Grafana/Datadog-API oder in ein leichtgewichtiges intermediäres Datenbank-Layer (z.B. Google Sheets via Webhook als einfachste Option für kleine Teams).
3. Baue im Dashboard zwei Panels: (a) Tageskosten kumuliert vs. Tagesbudget-Soll, (b) Modell-Mix-Verteilung (% Frontier vs. Standard vs. Light) — diese zwei Panels decken 90 % der Überwachungs-Bedürfnisse ab.
4. Konfiguriere eine Anomalie-Alert-Regel: wenn die Kosten in einem 1-Stunden-Fenster 20 % des Tagesbudgets überschreiten, wird eine Slack-Alert-Nachricht an den Marketing-Operations-Kanal gesendet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Monitoring-Architektur-Berater. Beschreibe eine Monitoring-Architektur für Langdock-Token-Kosten in Grafana. Definiere: (1) Daten-Pipeline von der Langdock-API zum Dashboard, (2) zwei wichtigste Dashboard-Panels mit Metriken, (3) Anomalie-Alert-Regel für Kosten-Spikes. Wir sind ein kleines Team ohne eigenes Ops — empfiehl die einfachste umsetzbare Lösung. Stichpunkte, Sie-Form."
**Erwartetes Artefakt:** Eine Monitoring-Architektur-Beschreibung (Daten-Pipeline / Panel-Definitionen / Alert-Regel) plus ein Langdock-Workflow-Template für das 15-Minuten-API-Polling.
**Fallstricke (≥2 spezifisch):**
- Ein 15-Minuten-Polling-Workflow ohne eigenes Budget-Cap läuft unbegrenzt und erzeugt selbst Token-Kosten — Mitigation: den Monitoring-Workflow als reinen API-Abruf ohne LLM-Schritt konfigurieren (kein Modell-Aufruf nötig), damit er keine Token-Kosten erzeugt.
- Zu granulare Monitoring-Daten (per-Message-Level) zu speichern ohne Datenschutz-Review verletzt DSGVO-Anforderungen für Mitarbeiterdaten — Mitigation: Monitoring auf aggregierte Team-Level-Metriken beschränken; keine Einzelpersonen-Zuordnung ohne vorab geklärte Rechtsgrundlage.
**Anschluss-Szenario:** S-MK-059

### S-MK-059 Modell-Performance-Regressionstests nach Provider-Updates

**Wann nutzen (Trigger):** Sonnet 4.6 hat ein stilles Update erhalten (ohne Versionsänderung), und das Content-Team bemerkt, dass die Brand-Voice-Konsistenz in den letzten zwei Wochen schlechter geworden ist — aber niemand kann belegen, ob das am Modell oder an einem geänderten Prompt liegt. (Quelle: A-34; sources/12 Q84)
**Strategisches Ziel:** Einen automatisierten Regressions-Test-Prozess aufsetzen, der nach jedem Provider-Update oder nach gemeldeten Qualitätsproblemen die Agenten-Performance gegen eine definierte Baseline prüft.
**Hands-on Ergebnis:** Ein Regressions-Test-Protokoll (5 Canary-Prompts mit gespeicherten Referenz-Outputs × automatischer Abweichungs-Alert) plus ein Eskalationsprozess bei detektierter Performance-Regression.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow-Builder (Test-Workflow mit Referenz-Output-Vergleich), Wissensordner für Referenz-Outputs (Baseline), Modell-Katalog, Slack-Integration für Test-Alerts.
**Vorgehen (4 Schritte):**
1. Definiere 5 Canary-Prompts aus dem Tages-Aufgaben-Portfolio: ein Prompt je Aufgabentyp (Brand-Voice-Text, Headline, Briefing, Klassifikation, Zusammenfassung) — diese Prompts sind unveränderlich und dienen als dauerhafter Test-Anker.
2. Erstelle Referenz-Outputs für jeden Canary-Prompt (heutiger Stand, nach aktuellem Qualitäts-Niveau bewertet) und speichere sie im Wissensordner — das ist die Baseline gegen die zukünftige Outputs verglichen werden.
3. Konfiguriere einen wöchentlichen Test-Workflow (jeden Montag, 8:00 Uhr): alle 5 Canary-Prompts werden automatisch ausgeführt; ein Bewertungs-Schritt (mit Haiku 4.5 als günstigem Evaluator) vergleicht neue Outputs mit den Referenz-Outputs nach definierten Kriterien.
4. Sende einen Slack-Alert, wenn mehr als 2 von 5 Tests eine Qualitäts-Abweichung von >1 Punkt auf der 1-5-Skala zeigen — das triggert eine manuelle Review-Sitzung mit dem Prompt-Engineering-Verantwortlichen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Qualitätssicherungs-Berater. Erstelle ein Regressions-Test-Protokoll für unseren Content-Agenten. Definiere: 5 Canary-Prompts (je ein Aufgabentyp), Bewertungs-Kriterien für automatischen Vergleich mit Referenz-Outputs, Alert-Schwelle und Eskalationsprozess bei detektierter Regression. Ziel: wöchentliche automatisierte Qualitäts-Baseline-Prüfung. Protokoll-Format, Sie-Form."
**Erwartetes Artefakt:** Ein Regressions-Test-Protokoll (5 Canary-Prompts / Bewertungs-Kriterien / Alert-Schwelle / Eskalationsprozess) plus ein Langdock-Workflow-Template für den wöchentlichen Test-Lauf.
**Fallstricke (≥2 spezifisch):**
- Canary-Prompts zu wählen, die zu einfach sind und keine Qualitäts-Unterschiede zeigen, macht das Regressions-System blind für echte Qualitäts-Verschlechterungen — Mitigation: Canary-Prompts so wählen, dass sie die für die Marke kritischsten und schwierigsten Anforderungen (z.B. präzise Brand-Voice, komplexe Satzstruktur) abdecken.
- Referenz-Outputs nie zu aktualisieren führt dazu, dass das System legitime Qualitätsverbesserungen als Regression meldet — Mitigation: Referenz-Outputs quartalsweise überprüfen und bei nachgewiesener Qualitätssteigerung auf das neue Niveau anheben.
**Anschluss-Szenario:** S-MK-060

### S-MK-060 Notfall-Kosten-Cap-Enforcement: Automatischer Workflow-Stopp bei Schwellenwert

**Wann nutzen (Trigger):** Ein fehlerhaft konfigurierter Loop-Knoten hat in der Vergangenheit das gesamte Monatsbudget in vier Stunden aufgebraucht — das Team will jetzt sicherstellen, dass ein solcher Vorfall automatisch gestoppt wird, bevor er das Budget sprengt, ohne dass ein Mensch manuell eingreifen muss. (Quelle: A-25)
**Strategisches Ziel:** Ein automatisches Kosten-Cap-Enforcement-System aufsetzen, das bei Erreichen eines definierten Kosten-Schwellenwerts in Echtzeit alle oder bestimmte Workflows anhält und gleichzeitig eine Benachrichtigung auslöst.
**Hands-on Ergebnis:** Ein Enforcement-Workflow (Kosten-Monitor → Schwellenwert-Prüfung → automatischer Pause-Befehl → Slack-Alert) plus eine dokumentierte Recovery-Prozedur (wie Workflows nach manueller Prüfung wieder aktiviert werden).
**Eingesetzte Langdock-Fähigkeit(en):** Workspace-Limit (harter Stopp), Workflow-Level-Budgets (weicher Stopp je Workflow), Warn-Schwellen (50/75/90%), Workflow-Builder (automatischer Stopp-Trigger), Slack-Integration.
**Vorgehen (4 Schritte):**
1. Setze auf drei Ebenen Sicherheitsnetze: (a) Per-Execution-Limit (max. 2.000 Schritte pro Workflow-Ausführung) als erste Barriere gegen Endlosschleifen; (b) Workflow-Level-Budget als zweite Barriere für jede Automatisierung; (c) Workspace-Limit als finaler globaler Stopp.
2. Konfiguriere einen Monitoring-Workflow (15-Minuten-Trigger), der die aktuelle Workspace-Ausgabe gegen einen Intraday-Schwellenwert prüft: wenn Tagesausgaben 15 % des Monatsbudgets überschreiten, wird ein Halt-Signal gesendet.
3. Baue den automatischen Pause-Befehl: bei Erreichen des Intraday-Schwellenwerts pausiert der Monitoring-Workflow alle Nicht-Prioritäts-Workflows über die Workflow-API und sendet einen Slack-Alert mit der Fehldiagnose-Information (welcher Workflow, welches Modell, wie viele Token in den letzten 60 Minuten).
4. Dokumentiere die Recovery-Prozedur: nach manuellem Review und Ursachenbehebung reaktiviert der Admin die Workflows einzeln mit einer expliziten Freigabe — kein automatisches Resume, da das das Problem erneut triggern könnte.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Sicherheits-Architekt. Entwirf ein automatisches Kosten-Cap-Enforcement-System für unseren Langdock-Workspace. Definiere: (1) drei Sicherheits-Ebenen (Execution-Limit, Workflow-Budget, Workspace-Limit), (2) Intraday-Schwellenwert-Logik, (3) automatischer Pause-Befehl mit Slack-Alert, (4) manuelle Recovery-Prozedur. Ziel: kein manueller Eingriff nötig bei Loop-Fehler in weniger als 30 Minuten. Architektur-Dokument, Sie-Form."
**Erwartetes Artefakt:** Ein Enforcement-Architektur-Dokument (drei Sicherheits-Ebenen / Intraday-Schwellenwert-Logik / Pause-Befehl / Recovery-Prozedur) plus ein Langdock-Workflow-Template für den automatischen Stopp-Trigger.
**Fallstricke (≥2 spezifisch):**
- Einen automatischen Resume-Mechanismus nach automatischem Stopp einzubauen, der nach einer Wartezeit alle Workflows wieder startet, perpetuiert den Loop-Fehler — Mitigation: ausschließlich manuelles Resume nach expliziter menschlicher Prüfung und Ursachenbehebung; kein automatisches Restart.
- Den Monitoring-Workflow selbst ohne Execution-Limit und ohne eigenes Budget-Cap zu lassen schafft eine Lücke: der Sicherheits-Mechanismus ist selbst nicht abgesichert — Mitigation: den Monitoring-Workflow als reinen API-Abfrage-Workflow ohne LLM-Aufrufe konfigurieren und ein separates, minimales Budget-Cap (€2/Monat) zuweisen.
**Anschluss-Szenario:** S-MK-061
