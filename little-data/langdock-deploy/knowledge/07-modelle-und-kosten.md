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
2. Exportiere die Top-10-Einträge als CSV und prüfe, welches Modell jeweils aktiv war — ein einzelner Frontier-Agent auf Opus 4.7 (~8x) treibt die Kosten oft mehr als zwanzig Standard-Prompts zusammen.
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

**Wann nutzen (Trigger):** Ein Strategieprojekt läuft seit vier Wochen auf Sonnet 4.6, die Outputs sind solide aber nicht überzeugend — jemand schlägt Opus 4.7 vor, aber der 8x-Multiplikator ist schwer zu rechtfertigen ohne harte Evidenz. (Quelle: A-30)
**Strategisches Ziel:** Den Upgrade-Entscheid von Sonnet auf Opus auf messbare Qualitäts-Evidenz stützen statt auf Bauchgefühl, und eine ROI-Schwelle definieren, ab der der Aufpreis vertretbar ist.
**Hands-on Ergebnis:** Ein A/B-Vergleich derselben fünf Aufgaben auf Sonnet vs. Opus plus eine dokumentierte ROI-Entscheidung mit Rückwechsel-Bedingung.
**Eingesetzte Langdock-Fähigkeit(en):** Manuelle Modellwahl, Wissensordner für Bewertungskriterien, Modell-Katalog (Multiplikatoren).
**Vorgehen (4 Schritte):**
1. Wähle fünf repräsentative Aufgaben aus dem laufenden Projekt (unterschiedliche Komplexität) und führe sie parallel mit Sonnet 4.6 und Opus 4.7 durch.
2. Bewerte die Outputs strukturiert: Argumentation, Quellenbindung, strategische Tiefe — dokumentiere, wo Opus einen messbaren Mehrwert zeigt und wo die Outputs gleichwertig sind.
3. Berechne den Upgrade-Kosteneffekt: wenn 60 % der Aufgaben Opus-Qualität benötigen und Opus 8x kostet, steigen die Gesamtkosten für das Projekt auf 5,2x des Sonnet-Niveaus — ist der Mehrwert das wert?
4. Lege eine Rückwechsel-Bedingung fest: wenn das Projekt in die Überarbeitungs- und Formatierungsphase wechselt, zurück auf Sonnet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Modell-Evaluierungs-Berater. Ich habe fünf Aufgaben je auf Sonnet 4.6 und Opus 4.7 durchgeführt. Die Ergebnisse sind im Wissensordner. Bewerte den Qualitätsunterschied strukturiert nach: Argumentation, Quellenbindung, strategische Tiefe. Empfiehl, ob der Upgrade auf Opus für dieses Projekt gerechtfertigt ist. Begründung in Zahlen, Sie-Form."
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

**Wann nutzen (Trigger):** Die Quartalsplanung zeigt Abweichungen zwischen der budgetierten und der tatsächlichen KI-Kosten — bei der Analyse stellt sich heraus, dass zwei Modelle im letzten Quartal Preisänderungen hatten, die das Team nicht mitbekommen hat. (Quelle: A-09 analog; sources/12 Q24)
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
**Anschluss-Szenario:** S-MK-001
