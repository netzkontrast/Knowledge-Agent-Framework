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

Für Marketing-Aufgaben bietet Langdock eine breite Palette an KI-Modellen. Die Wahl des richtigen Modells balanciert Leistung und Budget. Dieser Katalog dient als Leitfaden für Marketing-Direktoren. Langdock rechnet direkte EUR-Preise pro 1M Tokens ab (getrennt nach Input und Output); es gibt keine veröffentlichten per-Modell-EUR-Preise. Die wirtschaftliche Einordnung erfolgt über Tier-Stufen, die relativen Kosten ergeben sich direkt aus den EUR-Preisen. Der Efficient-Default-Tier (Gemini 2.5 Flash) dient als günstige Referenz.

| Tier | Modell | Input €/1M | Output €/1M | Marketing-Anwendungsfall |
| --- | --- | --- | --- | --- |
| **Light** | Gemini 2.5 Flash | 0,26 | 2,15 | Daten-Bereinigung, Formatierung, schnelle Drafts |
| **Efficient Default** | Haiku 4.5 | 0,86 | 4,30 | Standard-Konversationen, Agenten, Klassifikation |
| **Balanced** | GPT-5.2 | 1,50 | 12,03 | Parsing, Standard-Coding, Kontext |
| **Strong Generalist** | Sonnet 4.6 | 2,58 | 12,89 | Brand-Voice, Problemlösung, Deduktion |
| **Frontier** | Opus 4.8 | 4,30 | 21,48 | Strategische Planung, komplexe Synthese |

(Stand Juni 2026 — Quelle: langdock.com/models; bei Wartung gegenprüfen)

Die gezielte Zuweisung dieser Modelle ist die Grundlage für ein effektives Cost Engineering im Marketing. Als grobe Orientierung: Opus 4.8 (€4,30 Input) ist rund 16x teurer als der Efficient-Default Gemini 2.5 Flash (€0,26), Sonnet 4.6 (€2,58) rund 10x. Nutzen Sie diese Übersicht bei der Konfiguration von Agenten oder der Planung von Automatisierungen. (Quelle: 13-langdock-pricing-verified-2026-06)

## Modell-Empfehlungen für Content-Drafting

Das Erstellen von Entwürfen für Marketing-Content — von LinkedIn-Posts bis hin zu SEO-Artikeln — ist eine der häufigsten Aufgaben für KI-Agenten. Für dieses Content-Drafting empfiehlt sich ein sehr spezifischer Mix aus Modellen, um Qualität und Kosten optimal auszubalancieren. Für routinemäßiges Content-Drafting wie Standard-Social-Media-Posts oder interne Newsletter-Entwürfe ist **Gemini 2.5 Flash** oder **Haiku 4.5** die erste Wahl. Diese Modelle arbeiten im Light- bzw. Efficient-Default-Tier und bieten eine hervorragende Geschwindigkeit bei minimalen Kosten (Gemini 2.5 Flash circa €0,26, Haiku 4.5 circa €0,86 pro 1M Input-Tokens). Sie sind ideal, wenn der Fokus auf Quantität und schneller Ideengenerierung liegt.

Wenn die Anforderungen an Tonalität (Brand Voice) oder den strukturellen Aufbau komplexer werden — beispielsweise bei Whitepapers, detaillierten Fachartikeln oder Landing-Page-Texten —, sollte das Modell hochgestuft werden. Hier ist **Sonnet 4.6** ("Strong Generalist", circa €2,58 pro 1M Input-Tokens) die bevorzugte Option. Sonnet 4.6 hat eine überlegene Fähigkeit, spezifische Stilvorgaben aus dem Wissensordner präzise umzusetzen und subtile Nuancen in der Markenstimme beizubehalten, was den manuellen Korrekturaufwand im Nachgang deutlich reduziert. Der höhere Preis rechtfertigt sich durch die signifikante Zeitersparnis bei der finalen Redaktion. Marketing-Teams sollten daher Standard-Entwürfe konsequent auf Flash/Haiku belassen und Sonnet exklusiv für High-Value-Content reservieren, bei dem stilistische Präzision erfolgskritisch ist.

## Modell-Empfehlungen für Briefing-Erstellung

Die Erstellung präziser Briefings für Agenturen oder interne Teams ist eine essenzielle Marketing-Disziplin, die stark von klaren Strukturen und umfassendem Kontextverständnis profitiert. Bei der Wahl des Modells für die Briefing-Erstellung kommt es darauf an, wie komplex die zugrundeliegenden Informationen sind. Handelt es sich um ein Standard-Briefing für wiederkehrende Kampagnen, bei dem lediglich bestehende Vorlagen mit neuen Parametern befüllt werden, reicht ein "Balanced"-Modell wie **GPT-5.2** (circa €1,50 pro 1M Input-Tokens) vollkommen aus. Es verarbeitet Strukturvorgaben zuverlässig und generiert saubere, verwertbare Dokumente.

Für strategisch anspruchsvollere Briefings, die umfangreiches Research-Material synthetisieren oder mehrere komplexe Zielgruppen-Personas integrieren müssen, ist ein stärkeres Modell wie **GPT-5.4** (circa €2,36 pro 1M Input-Tokens) oder ein "Strong Generalist" wie **Sonnet 4.6** (circa €2,58) empfehlenswert. Diese Modelle können widersprüchliche Informationen aus verschiedenen Quellen im Wissensordner besser auflösen und in eine kohärente strategische Anweisung übersetzen. Besonderes Augenmerk sollte hierbei auf die Kontextlänge gelegt werden: Wenn Sie dem Agenten umfangreiche Marktforschungsberichte als Kontext für das Briefing zur Verfügung stellen, steigen die Input-Kosten. Ein gut strukturiertes Prompt-Design (Context-Task-Format) in Kombination mit einem leistungsstarken Modell stellt sicher, dass das resultierende Briefing nicht nur eine Zusammenfassung, sondern eine echte Arbeitsgrundlage für Kreativ-Dienstleister bildet. Investieren Sie hier gezielt in etwas Rechenleistung, um Missverständnisse in der Ausführung zu vermeiden.

## Modell-Empfehlungen für strategische Analyse

Strategische Analysen im Marketing — wie die Auswertung von Wettbewerbsbewegungen, das Zusammenführen von Markttrends aus unstrukturierten Daten oder die Entwicklung langfristiger Go-to-Market-Strategien — erfordern die höchste Stufe an kognitiver Verarbeitungstiefe. Für diese komplexen Deduktionsaufgaben müssen Marketing-Direktoren auf Modelle der Kategorie "Frontier Reasoning" zurückgreifen. Das primäre Modell für diese Anforderungen ist **Opus 4.8**. Im Frontier-Tier (circa €4,30 pro 1M Input-Tokens, rund 16x des Efficient-Defaults) ist es kostenintensiv, bietet aber unübertroffene Fähigkeiten in der logischen Analyse und der Synthese von heterogenen Informationen aus dem Wissensordner. (Quelle: 13-langdock-pricing-verified-2026-06)

Für extreme Edge-Cases, bei denen tiefgehende quantitative und qualitative Daten für geschäftskritische Entscheidungen aggregiert und neu kombiniert werden müssen, steht am oberen Ende des Frontier-Tiers das teuerste verfügbare Modell **GPT-5.5** (circa €4,72 pro 1M Input-Tokens, €28,35 Output) zur Verfügung. Diese Modelle liefern maximale Reasoning-Tiefe für hochkomplexe Problemlösungen. Aufgrund der hohen Output-Kosten sollten sie jedoch strikt limitiert und niemals für alltägliche Aufgaben oder automatisierte Workflows eingesetzt werden. (Quelle: 13-langdock-pricing-verified-2026-06) Der Einsatzbereich beschränkt sich idealerweise auf vierteljährliche Strategie-Reviews, komplexe Jahresplanungen oder die Auswertung groß angelegter Customer-Insights-Studien. Eine klare interne Policy sollte regeln, wann Marketing-Teams diese Frontier-Modelle aktivieren dürfen, um das Budget nicht überzustrapazieren.

## Provider-Vergleich nach Anwendungsfall

Langdock ist modellagnostisch, was bedeutet, dass Nutzer flexibel zwischen verschiedenen Anbietern (Google, Anthropic, OpenAI, Mistral, Llama) wechseln können, ohne sich an einen Provider zu binden (Vendor-Lock-in). Jeder Provider hat spezifische Stärken für unterschiedliche Marketing-Szenarien. **OpenAI (GPT-Familie)** glänzt durch Vielseitigkeit und eine sehr gute "Out-of-the-Box"-Leistung bei strukturierter Datengenerierung und Code-basierten Analysen (z.B. im Data Analyst). **Anthropic (Claude-Familie: Sonnet, Opus, Haiku)** ist der absolute Marktführer bei Schreibaufgaben, Text-Nuancierung und der exakten Einhaltung komplexer Brand-Voice-Richtlinien. Für fast alle kreativen Content-Aufgaben im Marketing ist Anthropic die erste Wahl.

**Google (Gemini-Familie)** bietet enorme Geschwindigkeitsvorteile, besonders bei großen Kontextfenstern (z.B. wenn Sie einen gesamten PDF-Report auswerten). Gemini 2.5 Flash ist hervorragend für schnelle Extraktionen und erste Entwürfe geeignet. Die europäischen Provider **Mistral** und die Open-Source-Modelle der **Llama**-Serie bieten zudem exzellente Alternativen für Teams, die höchste Anforderungen an regionale Datenverarbeitung haben oder sehr spezifische, kostengünstige Massenverarbeitung anstreben. Die Wahl des Providers sollte immer fallbezogen erfolgen: Anthropic für nuancierte Markenkommunikation, OpenAI für logisch-strukturierte Analysen und Systemintegrationen, und Google für die schnelle Verarbeitung enormer Textmengen oder visuelle Analysen von Dashboards.

## Auto Mode

Der "Auto Mode" in Langdock ist eine Funktion, bei der die Plattform automatisch das vermeintlich am besten geeignete Modell für die aktuelle Anfrage auswählt. Für Marketing-Beginner, die sich noch nicht mit den Unterschieden zwischen den Providern und Tiers auseinandergesetzt haben, mag dies verlockend erscheinen. Es birgt jedoch ein erhebliches Risiko für unkontrolliertes Cost-Leakage. Wenn der Auto Mode aktiv ist, kann das System bei einer simplen Frage nach einer Headline versehentlich ein Frontier-Modell wie Opus 4.8 (€4,30 Input) ansteuern, wodurch die Kosten für eine triviale Aufgabe gegenüber einem Light-Modell (Gemini 2.5 Flash, €0,26) um rund das Sechzehnfache explodieren.

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

Um den Return on Investment (ROI) von KI im Marketing zu maximieren, müssen Teams proaktiv Cost-Saving-Patterns implementieren. Der effektivste Hebel ist die Etablierung einer Modell-Hierarchie: Die Nutzung von Opus 4.8 oder GPT-5.5 sollte genehmigungspflichtig sein, während Haiku 4.5 und Gemini 2.5 Flash als Standard für 80% der täglichen Aufgaben (wie E-Mail-Drafting oder SEO-Meta-Tags) vorgegeben werden. Ein weiterer entscheidender Faktor ist die effiziente Nutzung des Wissensordners (RAG). Anstatt riesige Dokumente in jedem Prompt neu hochzuladen (was immense Token-Kosten verursacht), sollten Informationen einmalig im Wissensordner strukturiert abgelegt werden.

Auch das Prompt-Design beeinflusst die Kosten direkt. Präzise, gut strukturierte Prompts (z.B. nach dem Persona-Task-Context-Format) reduzieren die Notwendigkeit für teure, iterative Nachbesserungen. Zudem sollten repetitive Massenaufgaben niemals manuell im Chat, sondern über Workflows abgewickelt werden, bei denen explizit günstige Modelle zugewiesen sind. Schließlich ist die Schulung von "KI-Champions" im Team essenziell. Diese Experten überwachen die Nutzung, identifizieren ineffiziente Agenten und verbreiten Best Practices zur Token-Optimierung. Ein bewusster Umgang mit der Ressource "Compute" unterscheidet erfolgreiche KI-Transformationen von teuren Experimenten.

## Marketing-Szenarien aus dieser Domäne

Die folgenden Szenarien zeigen typische Modell- und Kostenentscheidungen (Model & Cost Decisions), vor denen Marketing-Direktoren in der täglichen Steuerung stehen. Der Fokus liegt auf der Beratung — also der bewussten Wahl von Modell, Auto Mode oder Budget-Deckel —, nicht auf der technischen Agenten-Konfiguration. Alle Preise und Modellnamen beziehen sich auf den Stand Juni 2026 und sollten bei jeder Quartalsplanung gegen langdock.com/models gegengeprüft werden; die belastbare Größe ist der direkte EUR-Preis pro 1M Tokens (Input/Output) — Langdock veröffentlicht keine per-Modell-EUR-Preise. (Quelle: 13-langdock-pricing-verified-2026-06)

### S-MK-001 Massen-Lokalisierung von 4.000 Produkttexten: Light-Modell statt Flaggschiff

Trigger: Der E-Commerce-Katalog soll für die DACH-Expansion in Schweizerhochdeutsch und österreichisches Deutsch lokalisiert werden — 4.000 kurze Produkttexte, und das erste Test-Batch mit Sonnet 4.6 hat das Workflow-Budget in zwei Stunden gesprengt. (Quelle: 07-modelle-und-kosten)
Ziel: Eine Massenaufgabe mit dem günstigsten Modell lösen, das die Qualität noch trägt, statt reflexhaft ein Flaggschiff-Modell (Flagship Model) zu wählen.
Ergebnis: Eine Modell-Empfehlung mit gerechneter Kostenprognose: GPT-5 Mini (€0,21/1M Input) für den Lauf, Stichproben-Review durch Sonnet 4.6.
Fähigkeit: Workflows mit manueller Modellzuweisung, Workflow-Level-Budget, Modell-Katalog.
Vorgehen:
1. Halte fest, dass die Lokalisierung eine Light-Aufgabe ist (kurze Texte, klare Vorlage) — der EUR-Preis pro Token von Sonnet 4.6 (€2,58) ist hier nicht durch Qualitätsgewinn gerechtfertigt.
2. Weise dem Workflow fest GPT-5 Mini (€0,21/1M) zu; nutze niemals Auto Mode in einem automatisierten Workflow, da dieser unvorhersehbar teure Modelle anstößt.
3. Setze ein Workflow-Budget (Standard €25/Monat) plus einen 50%-Warn-Alert, damit der Lauf bei Fehlkonfiguration stoppt, bevor er entgleist.
4. Lass die ersten 50 Texte als Stichprobe durch Sonnet 4.6 prüfen — gezielter Qualitäts-Check statt teurem Volllauf.
Empfehlung: Behandle die Massen-Lokalisierung als Light-Aufgabe und weise dem Workflow fest ein guenstiges Modell zu (z. B. GPT-5 Mini, EUR 0,21/1M Input) - der EUR-Preis von Sonnet 4.6 (EUR 2,58) ist bei kurzen, schablonenhaften Texten nicht durch Qualitaetsgewinn gerechtfertigt. Nutze nie Auto Mode in einem automatisierten Workflow und setze ein Workflow-Budget (Standard EUR 25) plus 50-%-Warn-Alert, damit ein Fehl-Loop stoppt, bevor er das Workspace-Limit (EUR 500) ausreizt. Lass die ersten 50 Texte als Stichprobe durch Sonnet pruefen und schreibe die Region-Regeln (ss statt ß, 'Velo') explizit in den Prompt, da Light-Modelle regionale Vokabel-Feinheiten uebersehen.
Artefakt: Lokalisierter Katalog als Tabelle plus eine kurze Kostennotiz (Modell-/Tier-Wahl + Budget-Deckel) für das Controlling.
Fallstricke:
- Light-Modelle übersehen regionale Vokabel-Feinheiten (Velo, parkieren) — Mitigation: die Region-Regeln explizit in den Prompt schreiben, nicht dem Modell überlassen.
- Ohne Workflow-Budget kann ein fehlerhafter Loop-Knoten das Workspace-Limit (€500) ausreizen — Mitigation: Per-Execution-Limit und 2.000-Schritte-Stopp aktiv lassen.
Anschluss: S-MK-007

### S-MK-002 Board-Deck zur Jahresstrategie: Wann ein Frontier-Modell den Frontier-Aufpreis wert ist

Trigger: In drei Tagen steht die Vorstandspräsentation zur Marketing-Jahresstrategie an; widersprüchliche Marktdaten aus fünf Quartalsreports müssen zu einer kohärenten These synthetisiert werden, und die Standard-Entwürfe wirken oberflächlich. (Quelle: 07-modelle-und-kosten)
Ziel: Für eine seltene, geschäftskritische Synthese bewusst ein Frontier-Reasoning-Modell (Frontier Reasoning Model) einsetzen — und diese Ausnahme gegenüber dem Budget rechtfertigen.
Ergebnis: Eine strategische Synthese-Note mit Opus 4.8 (Frontier-Tier, €4,30), erstellt im Chat, nicht in einem Workflow.
Fähigkeit: Manuelle Modellwahl im Chat, Wissensordner für die fünf Reports, Modell-Katalog.
Vorgehen:
1. Lege die fünf Reports einmalig im Wissensordner ab, statt sie in jeden Prompt zu kopieren — das spart Input-Tokens trotz des hohen EUR-Preises.
2. Pinne bewusst Opus 4.8 (Frontier-Tier, €4,30) — die Aufgabe ist Deduktion aus heterogenen Quellen, genau das Profil, für das der Aufpreis gerechtfertigt ist.
3. Begrenze den Einsatz auf diese eine Session; dokumentiere die Modellwahl als genehmigungspflichtige Ausnahme für das Quartals-Review.
4. Prüfe alle Zahlen aus der Synthese gegen die Originalreports — auch Frontier-Modelle halluzinieren Quartalszahlen.
Empfehlung: Pinne fuer die seltene, geschaeftskritische Synthese bewusst Opus 4.8 (Frontier, EUR 4,30) - Deduktion aus widerspruechlichen Quellen ist genau das Profil, fuer das der Frontier-Aufpreis gerechtfertigt ist; begrenze ihn strikt auf diese eine Chat-Session und stufe Folgefragen auf GPT-5.2 herab. Lege die fuenf Reports einmalig im Wissensordner ab statt sie in jeden Prompt zu kopieren (spart Input-Tokens), pruefe alle Quartalszahlen gegen die Originale (auch Frontier-Modelle halluzinieren) und dokumentiere die Modellwahl als genehmigungspflichtige Ausnahme.
Artefakt: Eine einseitige Synthese-Note mit benannten Datenwidersprüchen, vorstandsreif.
Fallstricke:
- Opus 4.8 für eine simple Headline zu nutzen verbrennt das ~8-fache des Nötigen — Mitigation: das Frontier-Modell strikt auf Synthese begrenzen, Folgefragen auf GPT-5.2 herabstufen.
- Reports im Prompt statt im Wissensordner vervielfachen die Input-Kosten bei jedem Folgeprompt — Mitigation: einmalig im Wissensordner ablegen.
Anschluss: S-MK-005

### S-MK-003 Auto Mode oder gepinntes Modell: Entscheidungsregel für ein neues Content-Team

Trigger: Ein neues, KI-unerfahrenes Content-Team startet auf Langdock, und die ersten Workspace-Verbrauchszahlen zeigen unerklärliche Ausschläge — vermutlich feuert der Auto Mode bei trivialen Anfragen Premium-Modelle. (Quelle: 07-modelle-und-kosten)
Ziel: Eine klare Regel etablieren, wann Auto Mode (Auto Mode) erlaubt ist und wann ein Modell fest gepinnt wird, um Cost-Leakage durch Bequemlichkeit zu stoppen.
Ergebnis: Eine einseitige Team-Policy plus ein Workspace-Cap für Einsteiger.
Fähigkeit: Auto Mode (Routing GPT-5.2 ↔ Sonnet 4.6), Workspace-Limit, Usage-Transparenz-Leiste.
Vorgehen:
1. Erkläre dem Team, dass Auto Mode nach der ersten Nachricht zwischen GPT-5.2 und Sonnet 4.6 wählt und dann fixiert — bei komplex formulierten Trivialfragen also unnötig teuer landen kann.
2. Lege die Regel fest: Auto Mode nur für exploratives Chatten; für wiederkehrende Aufgaben das günstigste passende Modell pinnen (z.B. Haiku 4.5, €0,86).
3. Setze für Einsteiger einen reduzierten Workspace-Cap unter dem €500-Standard, damit ein Auto-Mode-Ausreißer früh stoppt.
4. Lass das Team einmal pro Woche die Usage-Transparenz-Leiste prüfen und Ausreißer melden.
Vorlage: Auto-Mode-vs-Pinned Team-Policy:
1. Regel - Auto Mode nur fuer exploratives Chatten; fuer wiederkehrende Aufgaben das guenstigste passende Modell pinnen (z. B. Haiku 4.5).
2. Modell je Aufgabentyp - Social-Post -> Flash/Haiku, Whitepaper -> Sonnet, Analyse -> Frontier (genehmigungspflichtig).
3. Einsteiger-Cap - reduzierter Workspace-Cap unter EUR 500 + Warn-Schwellen 50/75/90 %.
4. Routine - woechentliche Usage-Leisten-Pruefung, Ausreisser melden.
Artefakt: Eine Modell-Wahl-Policy (1 Seite) plus ein konfigurierter Einsteiger-Cap.
Fallstricke:
- Auto Mode in Workflows einzusetzen erzeugt unvorhersehbare Kosten — Mitigation: in jeder Automatisierung ein Modell fest zuweisen, nie Auto Mode.
- Ein zu niedriger Cap blockiert legitime Arbeit mitten in einer Kampagne — Mitigation: Warn-Schwellen bei 50/75/90% statt nur harter Stopp, damit man vorher nachsteuert.
Empfehlung: Weise in jeder Automatisierung ein Modell fest zu und nutze nie Auto Mode - Auto Mode fixiert nach der ersten Nachricht zwischen GPT-5.2 und Sonnet und landet bei komplex formulierten Trivialfragen unnoetig teuer. Setze den Einsteiger-Cap mit Warn-Schwellen (50/75/90 %) statt nur als harten Stopp, damit ein Ausreisser frueh auffaellt, ohne legitime Arbeit mitten in einer Kampagne zu blockieren.
Anschluss: S-MK-001

### S-MK-004 BYOK-Entscheidung: Lohnt der Azure-Rahmenvertrag für das Marketing-Volumen?

Trigger: Das Unternehmen hat einen großen Azure-Rahmenvertrag mit ausgehandelten OpenAI-Rabatten, und die Marketing-Token-Kosten über die Langdock-Standardabrechnung steigen monatlich — die Frage ist, ob BYOK günstiger wäre. (Quelle: 07-modelle-und-kosten)
Ziel: Beurteilen, ob Bring Your Own Key (BYOK) für das Marketing-Volumen wirtschaftlich ist, statt es als reine IT-Entscheidung zu behandeln.
Ergebnis: Eine Kosten-Gegenüberstellung Standard-Abrechnung vs. BYOK plus eine Empfehlung an die IT.
Fähigkeit: BYOK, Usage-Export-CSV für Chargeback, Enterprise-Tier.
Vorgehen:
1. Zieh den Usage-Export (CSV) der letzten drei Monate und ermittle das tatsächliche Token-Volumen pro Modell — Schätzungen führen hier zu Fehlentscheidungen.
2. Halte fest, dass BYOK nur die reinen Token-Kosten verlagert (direkt beim Provider abgerechnet), Langdock berechnet dann nur Plattformgebühren — der Hebel liegt also in deinen ausgehandelten Azure-Rabatten.
3. Beachte, dass BYOK ab Enterprise-Tier relevant ist und der Admin mindestens drei Modelltypen (Completion, Embedding, Image-Gen) hinterlegen muss, sonst fallen UI-Funktionen aus.
4. Übergib die Gegenüberstellung an die IT mit klarer Empfehlung und der Volumenschwelle, ab der sich BYOK rechnet.
Empfehlung: Entscheide BYOK nicht spekulativ, sondern auf Basis des realen Token-Volumens aus dem 3-Monats-Usage-Export - BYOK verlagert nur die reinen Token-Kosten zum Provider (Langdock berechnet dann Plattformgebuehren), der Hebel liegt in deinen ausgehandelten Azure-Rabatten und lohnt erst ab hohem Volumen. Pruefe vor dem Umstieg, dass alle drei Modelltypen (Completion, Embedding, Image-Gen) hinterlegt sind, sonst fallen UI-Features aus, und uebergib der IT die Gegenueberstellung mit der konkreten Volumenschwelle, ab der BYOK guenstiger wird (BYOK ist Enterprise-Tier).
Artefakt: Eine Entscheidungsvorlage (Tabelle + Empfehlung) für das Controlling und die IT.
Fallstricke:
- BYOK ohne alle drei Modelltypen führt zu ausfallenden UI-Features (z.B. Bildgenerierung) — Mitigation: vor dem Umstieg Completion, Embedding und Image-Gen mappen.
- BYOK rechnet sich erst ab hohem Volumen; bei kleinen Teams überwiegt der Verwaltungsaufwand — Mitigation: erst die reale CSV-Schwelle berechnen, nicht spekulativ umstellen.
Anschluss: S-MK-009

### S-MK-005 Workspace-Limit erreicht am 20. des Monats: Notfall-Triage statt Panik-Erhöhung

Trigger: Eine Warnung meldet, dass der Workspace-Verbrauch am 20. des Monats bereits bei 90% liegt — laufende Kampagnen drohen zu stoppen, und der Reflex ist, das Budget einfach zu verdoppeln. (Quelle: 07-modelle-und-kosten)
Ziel: Die Ursache des Budget-Verbrauchs (Budget Burn) diagnostizieren und gezielt nachsteuern, bevor man pauschal das Limit erhöht.
Ergebnis: Eine Verbrauchs-Triage: welche Agenten/Workflows treiben die Kosten, plus eine priorisierte Sofortmaßnahme.
Fähigkeit: Workspace-Limit, Warn-Schwellen 50/75/90%, Usage-Transparenz-Leiste, Modell-EUR-Preise.
Vorgehen:
1. Identifiziere über die Usage-Transparenz-Leiste die Top-Verbraucher nach Modell — meist treibt ein einzelner Agent auf einem teures Frontier-Modell (z.B. versehentlich Opus statt Haiku) die Kosten.
2. Stufe unkritische Prozesse sofort herab oder pausiere sie, damit Budget für geschäftskritische Agenten bis Monatsende bleibt.
3. Prüfe, ob ein Workflow Auto Mode nutzt oder ein Modell falsch zugewiesen ist — die häufigste Einzelursache für Ausreißer.
4. Erst wenn der Verbrauch legitim und produktiv ist, beantrage eine begründete Limit-Erhöhung statt einer pauschalen Verdopplung.
Empfehlung: Diagnostiziere bei erreichtem 90-%-Limit zuerst die Ursache ueber die Usage-Leiste (welcher Agent/welches Modell treibt die Kosten - meist ein Agent versehentlich auf Opus statt Haiku oder ein Workflow im Auto Mode), statt das Budget pauschal zu verdoppeln. Stufe unkritische Prozesse sofort herab oder pausiere sie (90-%-Schwelle gezielt nutzen), damit Budget fuer geschaeftskritische Agenten bis Monatsende bleibt, und beantrage eine Limit-Erhoehung erst, wenn der Verbrauch nachweislich legitim und produktiv ist.
Artefakt: Eine Triage-Liste der Top-3-Kostentreiber mit je einer Sofortmaßnahme.
Fallstricke:
- Pauschale Limit-Erhöhung verschiebt nur das Problem in den nächsten Monat — Mitigation: erst die Ursache (Modellwahl/Workflow) beheben.
- Ein harter Stopp mitten in einer zeitkritischen Kampagne — Mitigation: 90%-Schwelle nutzen, um unkritische Prozesse gezielt zu pausieren, statt alles laufen zu lassen.
Anschluss: S-MK-003

### S-MK-006 Günstiges Modell, teure Halluzination: Wo Sparen am Faktencheck scheitert

Trigger: Ein auf Haiku 4.5 laufender Agent erstellt PR-Texte mit konkreten Marktzahlen, und in einem Entwurf tauchte eine frei erfundene Studienzahl auf — kurz vor Versand an die Presse. (Quelle: 07-modelle-und-kosten)
Ziel: Entscheiden, bei welchen Aufgabentypen ein günstiges Modell trotz Spar-Logik das falsche Werkzeug ist, weil das Halluzinationsrisiko (Hallucination Risk) den Schaden über die Ersparnis hebt.
Ergebnis: Eine Risiko-Klassifikation der PR-Aufgaben plus eine angepasste Modell-Zuordnung mit Faktencheck-Schritt.
Fähigkeit: Modell-Katalog, Wissensordner als Faktenquelle, manuelle Modellwahl.
Vorgehen:
1. Trenne PR-Aufgaben in faktenarme (Tonalität, Formulierung) und faktenkritische (Zahlen, Zitate, Studien) — nur Letztere brauchen ein stärkeres Modell oder strikten Quellenbezug.
2. Belasse faktenarme Aufgaben auf Haiku 4.5 (€0,86), aber zwinge faktenkritische Texte dazu, nur Zahlen aus dem Wissensordner zu nutzen, keine aus dem Modellwissen.
3. Füge einen verpflichtenden menschlichen Faktencheck vor jedem Presseversand ein — kein Modellpreis ersetzt diese Kontrolle.
4. Erwäge für faktenkritische Synthesen ein Step-up auf GPT-5.4 (€2,36), wenn Quellenbindung allein nicht reicht.
Empfehlung: Trenne PR-Aufgaben in faktenarme (Tonalitaet, Formulierung -> Haiku 4.5, EUR 0,86 genuegt) und faktenkritische (Zahlen, Zitate, Studien) - bei Letzteren zwinge das Modell, nur Zahlen aus dem Wissensordner zu nutzen und fehlende mit '[Quelle fehlt]' zu markieren, statt aus dem Modellwissen zu schaetzen. Mach einen menschlichen Faktencheck vor jedem Presseversand verpflichtend (kein Modellpreis und kein Upgrade ersetzt ihn) und erwaege fuer faktenkritische Synthesen einen Step-up auf GPT-5.4 (EUR 2,36), wenn Quellenbindung allein nicht reicht.
Artefakt: Eine PR-Risiko-Matrix (faktenarm/faktenkritisch) plus ein quellengebundener Meldungsentwurf mit markierten Zahlen.
Fallstricke:
- Sparen am Modell ohne Quellenbindung verlagert das Risiko auf erfundene Zahlen mit Reputationsschaden — Mitigation: Quellenbindung an den Wissensordner plus '[Quelle fehlt]'-Pflicht.
- Ein Modell-Upgrade allein verhindert Halluzinationen nicht zuverlässig — Mitigation: der menschliche Faktencheck bleibt unabhängig vom Modell verpflichtend.
Anschluss: S-MK-002

### S-MK-007 Drei-Stufen-Pipeline: Flash zum Entwerfen, Sonnet zum Polieren, Opus nur zur Synthese

Trigger: Die Content-Supply-Chain für einen monatlichen Thought-Leadership-Artikel kostet zu viel, weil das ganze Team alles auf Sonnet 4.6 macht — vom ersten Brainstorm bis zur Endredaktion. (Quelle: 07-modelle-und-kosten)
Ziel: Eine Aufgabe in Phasen zerlegen und jeder Phase das kosteneffizienteste Modell zuordnen, statt durchgängig ein mittleres Modell zu fahren.
Ergebnis: Eine dreistufige Modell-Pipeline mit zugeordneten EUR-Preise und geschätzter Ersparnis.
Fähigkeit: Modell-Katalog, manuelle Modellwahl pro Phase, Wissensordner.
Vorgehen:
1. Zerlege den Prozess: Ideenfindung/Rohentwurf, stilistische Politur (Brand Voice), strategische Synthese der Kernthese.
2. Ordne zu: Gemini 2.5 Flash für Rohentwürfe (sehr günstig), Sonnet 4.6 (€2,58) für die Brand-Voice-Politur, Opus 4.8 (Frontier-Tier, €4,30) nur falls die Kernthese echte Synthese braucht — sonst auch hier Sonnet.
3. Stelle dem Sonnet-Schritt die Brand-Voice-Richtlinie aus dem Wissensordner bereit, damit weniger manuelle Nachkorrektur nötig ist.
4. Rechne die Phasen-EUR-Kosten gegen den alten Durchgängig-Sonnet-Lauf und dokumentiere die Ersparnis fürs Team.
Empfehlung: Zerlege die Content-Supply-Chain in Phasen und ordne jeder das kosteneffizienteste Modell zu, statt durchgaengig Sonnet zu fahren: Gemini 2.5 Flash fuer Rohentwuerfe, Sonnet 4.6 (EUR 2,58) fuer die Brand-Voice-Politur, Opus 4.8 nur falls die Kernthese echte Synthese braucht (sonst auch hier Sonnet). Starte pro Phase eine neue Session mit gepinntem Modell (ein Phasenwechsel innerhalb einer Session loest kein Re-Routing aus) und verankere die Politur-Phase als verbindlichen Schritt, damit guenstige Flash-Rohentwuerfe nicht ungepoliert rausgehen.
Artefakt: Eine dokumentierte Modell-Pipeline mit EUR-Preise pro Phase und einer Ersparnis-Rechnung.
Fallstricke:
- Phasenwechsel innerhalb einer Chat-Session löst kein Modell-Re-Routing aus (Auto Mode fixiert) — Mitigation: pro Phase bewusst eine neue Session mit gepinntem Modell starten.
- Flash-Rohentwürfe verleiten dazu, die Politur-Phase zu überspringen — Mitigation: die Sonnet-Phase als verbindlichen Schritt im Team-Prozess verankern.
Anschluss: S-MK-008

### S-MK-008 Max-Tarif oder Standard: Lizenz-Tier an der tatsächlichen Automatisierungstiefe ausrichten

Trigger: Vor der Jahresbudgetierung steht die Frage, ob das 12-köpfige Marketing-Team vom Standard-Tarif (€25/Nutzer/Monat) auf Max (€99/Nutzer/Monat) wechseln soll — der Vertrieb drängt, aber der reale Bedarf ist unklar. (Quelle: 07-modelle-und-kosten)
Ziel: Den Pricing-Tier (Pricing Tier) an der tatsächlichen Nutzung ausrichten, statt pauschal hochzustufen oder aus Sparsamkeit Engpässe zu riskieren.
Ergebnis: Eine Tier-Empfehlung pro Nutzergruppe mit Jahreskostenrechnung.
Fähigkeit: Pricing-Tiers, Usage-Export, Workflows (Max-Feature).
Vorgehen:
1. Segmentiere das Team: wer braucht nur Chat und Basis-Agenten (Standard reicht) und wer baut Workflows oder fährt hochvolumige RAG-Szenarien (Max-Kandidaten)?
2. Halte fest, dass Max die fünffache Nutzungskapazität und komplexe Workflows freischaltet — relevant nur für die Automatisierer.
3. Prüfe, ob Features wie SSO oder BYOK gebraucht werden — die liegen erst im Enterprise-Tier, nicht in Max.
4. Rechne ein gemischtes Modell (z.B. 3x Max, 9x Standard) gegen pauschal-Max und gegen pauschal-Standard, jeweils auf Jahresbasis (ex VAT).
Empfehlung: Richte den Pricing-Tier am realen Bedarf aus statt pauschal hochzustufen: Segmentiere in Chat-/Basis-Agenten-Nutzer (Standard EUR 25 genuegt) und Workflow-Bauer/hochvolumige RAG-Nutzer (Max EUR 99, schaltet 5-fache Kapazitaet + komplexe Workflows frei) und rechne ein gemischtes Modell (z. B. 3x Max, 9x Standard) gegen pauschal-Max und pauschal-Standard auf Jahresbasis. Pruefe den Feature-Bedarf gegen die Tier-Matrix, bevor du hochstufst - SSO und BYOK liegen erst im Enterprise-Tier, nicht in Max.
Artefakt: Eine Tier-Zuordnung pro Nutzergruppe mit Jahreskosten-Gegenüberstellung.
Fallstricke:
- Pauschal-Max für alle vervierfacht die Lizenzkosten, obwohl die meisten nur Chat nutzen — Mitigation: gemischte Tier-Zuordnung nach realem Bedarf.
- Annahme, Max enthalte SSO/BYOK — die sind Enterprise-only — Mitigation: Feature-Bedarf vorab gegen die Tier-Matrix prüfen, nicht raten.
Anschluss: S-MK-010

### S-MK-009 Modell-Roster im Quartal aktualisieren: neue Releases bewerten statt blind übernehmen

Trigger: Langdock hat im Mai 2026 Opus 4.8 und Gemini 3 Flash global automatisch aktiviert, und das Team fragt, ob es seine etablierten Modell-Zuordnungen umstellen soll. (Quelle: 07-modelle-und-kosten)
Ziel: Neue Modell-Releases (Model Releases) strukturiert gegen die bestehende Zuordnung bewerten, statt aus Neugier auf das jeweils neueste Modell zu wechseln.
Ergebnis: Eine aktualisierte Modell-Roster-Empfehlung mit begründeten Wechseln oder bewusstem Beibehalten.
Fähigkeit: Modell-Katalog, manuelle Modellwahl, Usage-Transparenz-Leiste.
Vorgehen:
1. Liste die aktuellen Aufgabentyp-zu-Modell-Zuordnungen und markiere, wo ein neues Release theoretisch besser oder günstiger passt.
2. Beachte, dass Gemini 3 Flash (Stand Mai 2026 teurer als Gemini 2.5 Flash) nicht automatisch der günstigere Draft-Default ist — der niedrigere EUR-Preis pro Token bleibt das Kriterium, nicht die höhere Versionsnummer.
3. Teste ein neues Modell nur an einem repräsentativen Aufgaben-Batch, bevor du es teamweit zuweist.
4. Dokumentiere die Entscheidung mit Datum ("Stand Mai 2026"), damit die nächste Quartalsplanung den Stand kennt.
Empfehlung: Bewerte neue Modell-Releases strukturiert gegen die bestehende Zuordnung am EUR-Preis pro Token und an einem repraesentativen Batch-Test, nicht an der Versionsnummer - Gemini 3 Flash ist (Stand Mai 2026) teurer als Gemini 2.5 Flash und damit nicht automatisch der guenstigere Draft-Default. Pruefe nach jedem auto-aktivierten Release die Usage-Leiste und pinne Modelle gezielt, da neue Modelle ueber Auto Mode unbemerkt teurer routen koennen, und datiere die Entscheidung ('Stand Mai 2026') fuer die naechste Quartalsplanung.
Artefakt: Eine datierte Modell-Roster-Empfehlung mit Begründung pro Wechsel/Beibehalten.
Fallstricke:
- Annahme, ein höheres Versions-Release sei automatisch günstiger oder besser — Gemini 3 Flash ist teurer als 2.5 Flash — Mitigation: immer am EUR-Preis pro Token und am Batch-Test entscheiden.
- Auto-aktivierte neue Modelle können über Auto Mode unbemerkt teurer routen — Mitigation: Usage-Leiste nach jedem Release prüfen und ggf. Modelle pinnen.
Anschluss: S-MK-004

### S-MK-010 Frontier-Edge-Case rechtfertigen: Wann das teuerste Frontier-Modell (GPT-5.5) vertretbar ist

Trigger: Für eine groß angelegte Customer-Insights-Studie mit zehntausenden offenen Antworten soll ein Modell tiefe, mehrstufige Muster ableiten — ein Analyst schlägt das teuerste verfügbare Modell vor, und die Marketing-Leitung muss den Aufpreis verantworten. (Quelle: 07-modelle-und-kosten)
Ziel: Entscheiden, ob das teuerste Frontier-Modell (GPT-5.5, €4,72/1M Input) vertretbar ist, oder ob ein günstigeres Tier mit klugem Vorgehen genügt.
Ergebnis: Eine begründete Modell-Entscheidung mit Kostendeckel und klarer Einsatzgrenze.
Fähigkeit: Modell-Katalog, Wissensordner, Workspace-Limit, Code Node für deterministische Vorverarbeitung.
Vorgehen:
1. Trenne, was deterministisch vorverarbeitet werden kann (Code Node, kostet keine AI-Tokens) von dem, was echte Reasoning-Tiefe braucht — oft schrumpft die Frontier-Aufgabe dadurch stark.
2. Beziffere: GPT-5.5 (€4,72/1M Input, €28,35 Output) ist das teuerste Modell — rund 3x so teuer pro Input-Token wie GPT-5.2 (€1,50) und rund 18x des Efficient-Defaults (€0,26); der Einsatz ist nur für die finale, mehrstufige Synthese der vorverarbeiteten Cluster vertretbar, nicht für die Rohdaten.
3. Setze einen dedizierten Workspace-Cap für diesen einmaligen Lauf, damit der hohe Frontier-Preis nicht das Monatsbudget aufzehrt.
4. Halte die Entscheidung als genehmigte Ausnahme fest und prüfe das Ergebnis stichprobenartig gegen die Rohdaten.
Empfehlung: Trenne vor dem Frontier-Einsatz, was deterministisch per Code Node vorverarbeitet werden kann (kostet keine AI-Tokens) von dem, was echte Reasoning-Tiefe braucht - oft schrumpft die Frontier-Aufgabe dadurch stark. Setze das teuerste Modell (GPT-5.5, EUR 4,72/1M Input, EUR 28,35 Output - rund 3x GPT-5.2, 18x des Efficient-Defaults) nur fuer die finale, mehrstufige Synthese der vorverarbeiteten Cluster ein, sichere den einmaligen Lauf mit einem dedizierten Workspace-Cap ab und dokumentiere ihn als genehmigte Ausnahme.
Artefakt: Eine Insights-Synthese der Top-Muster plus eine dokumentierte Frontier-Modell-Ausnahme mit Kostendeckel.
Fallstricke:
- Rohdaten direkt durch das teuerste Frontier-Modell zu jagen ist Geldverschwendung — Mitigation: deterministische Vorverarbeitung per Code Node, Frontier-Modell nur für die finale Synthese.
- Ein einzelner Frontier-Lauf ohne dedizierten Cap kann das Workspace-Limit allein sprengen — Mitigation: einmaligen Lauf-Cap setzen und nach Abschluss zurücknehmen.
Anschluss: S-MK-011

### S-MK-011 Teuerste 5 % der Prompts identifizieren und umbauen

Trigger: Das Workspace-Dashboard zeigt auffällig hohen Token-Verbrauch, aber unklar ist, welche konkreten Prompts oder Agenten die Budgetspitzen treiben — das Team ahnt, dass wenige "Heavy-Hitter" den Großteil verursachen. (Quelle: A-21)
Ziel: Die kostenintensivsten Prompt-Muster isolieren und gezielt umbauen, statt pauschal alle Modelle herunterzustufen.
Ergebnis: Eine priorisierte Liste der Top-5-Kostentreiber (Prompt/Agent + Modell + EUR-Preis pro Token) plus eine konkrete Refactor-Empfehlung je Eintrag.
Fähigkeit: Workspace-Dashboard (Token-Verbrauch-Sortierung), per-User- und per-Agent-Filter, Usage-Export-CSV.
Vorgehen:
1. Öffne das Workspace-Dashboard und sortiere nach Token-Verbrauch absteigend; filtere getrennt nach Nutzer und nach Agent, um zu sehen, wo die Ausreißer liegen.
2. Exportiere die Top-10-Einträge als CSV und prüfe, welches Modell jeweils aktiv war — ein einzelner Frontier-Agent auf Opus 4.8 (Frontier-Tier, €4,30) treibt die Kosten oft mehr als zwanzig Standard-Prompts zusammen.
3. Klassifiziere jeden Heavy-Hitter: Ist die Komplexität des Prompts durch den EUR-Preis pro Token gerechtfertigt, oder wurde ein zu teures Modell für eine Routine-Aufgabe eingesetzt?
4. Baue die Top-3-Problemprompts um: entweder Modell-Downgrade (z.B. von Sonnet auf Haiku), Kontext-Komprimierung (Wissensordner statt Inline-Upload) oder Splitting in eine günstige Vorverarbeitungs- und eine gezielte Synthese-Phase.
Empfehlung: Isoliere die teuersten Prompts ueber das nach Token-Verbrauch sortierte Dashboard (getrennt nach Nutzer und Agent) und multipliziere immer die absolute Token-Zahl mit dem Modell-EUR-Preis, bevor du priorisierst - ein langer Haiku-Prompt erscheint volumenmaessig oben, ist aber kostenmaessig unbedeutend, waehrend ein Opus-Agent zwanzig Standard-Prompts uebertrifft. Bau die Top-3-Heavy-Hitter um (Modell-Downgrade, Kontext-Komprimierung via Wissensordner, oder Split in guenstige Vorverarbeitung + gezielte Synthese) und vergleiche nach jedem Downgrade fuenf Canary-Prompts mit dem alten Ergebnis, damit die Qualitaet nicht unbemerkt sinkt.
Artefakt: Eine Refactor-Tabelle mit den Top-5-Kostentreibern, zugehörigem EUR-Preis pro Token und je einer priorisierten Sparmaßnahme.
Fallstricke:
- Dashboard-Zahlen zeigen absoluten Token-Verbrauch, nicht die tatsächlichen Kosten — ein langer Haiku-Prompt kann volumenmäßig oben erscheinen, aber kostenmäßig unbedeutend sein; Mitigation: immer Modell-EUR-Preis zur absoluten Token-Zahl multiplizieren, bevor priorisiert wird.
- Refactoring ohne Qualitäts-Stichprobe kann die Output-Güte unbemerkt senken — Mitigation: nach jedem Modell-Downgrade fünf Canary-Prompts mit dem alten Ergebnis vergleichen.
Anschluss: S-MK-012

### S-MK-012 Prompt-Caching-Potenzial für Briefing-Templates bewerten

Trigger: Das Team hat drei Briefing-Vorlagen, die täglich mehrfach als Kontext an Agenten übergeben werden — jedes Mal werden dieselben 3.000 Token neu verarbeitet, und der Monatsbericht zeigt, dass Input-Kosten schneller wachsen als der tatsächliche Output-Wert. (Quelle: A-22)
Ziel: Beurteilen, ob Prompt-Caching (Prompt Caching) für repetitive Template-Anteile wirtschaftlich sinnvoll ist, und wenn ja, die Voraussetzungen schaffen.
Ergebnis: Eine Caching-Entscheidung mit ROI-Schwelle sowie eine angepasste Prompt-Struktur, die den Cache-fähigen Teil klar vom variablen Teil trennt.
Fähigkeit: Wissensordner als Cache-Ersatz, manuelle Prompt-Strukturierung, Usage-Export für ROI-Berechnung.
Vorgehen:
1. Prüfe, ob der Template-Anteil pro Prompt über 2.048 Token liegt UND mindestens 5 Requests pro Minute anfallen — unterhalb dieser Schwelle überwiegt der Verwaltungsaufwand den Caching-Nutzen.
2. Trenne den statischen Template-Teil (Persona, Ton, Struktur) klar vom variablen Teil (Kampagnenname, Datum, Zielgruppe) — nur der statische Teil profitiert vom Cache.
3. Hinterlege den statischen Teil einmalig im Wissensordner; der Agent ruft ihn per RAG ab, statt ihn bei jeder Anfrage neu zu übergeben — das ist Langdocks praktische Caching-Entsprechung.
4. Messe die Input-Token-Reduktion nach 30 Tagen über den Usage-Export und dokumentiere die Ersparnis für das Quartals-Reporting.
Empfehlung: Pruefe Prompt-Caching nur, wenn der statische Template-Anteil ueber 2.048 Token liegt UND mindestens 5 Requests/Minute anfallen - darunter ueberwiegt der Verwaltungsaufwand den Nutzen. Trenne den statischen Teil (Persona, Ton, Struktur) klar vom variablen (Kampagnenname, Datum) und hinterlege den statischen einmalig im Wissensordner (Langdocks praktische Caching-Entsprechung via RAG); plane eine Quartals-Review-Pflicht fuer gecachte Templates ein, damit keine veralteten Briefing-Vorgaben zementiert werden.
Artefakt: Eine annotierte Template-Struktur (statisch / variabel) plus eine ROI-Schätzung der monatlichen Token-Ersparnis.
Fallstricke:
- Caching lohnt sich nicht bei niedrigem Request-Volumen: unter 5 Requests/Minute und unter 2.048 Token Template-Anteil ist der Cache-Overhead größer als die Ersparnis — Mitigation: erst das Volumen messen, bevor die Architektur umgebaut wird.
- Statischen Cache-Inhalt zu selten aktualisieren führt zu veralteten Briefing-Vorgaben — Mitigation: eine Quartals-Review-Pflicht für alle gecachten Templates im Wissensordner einplanen.
Anschluss: S-MK-013

### S-MK-013 Flash vs. Sonnet: Aufgaben-Routing-Entscheidung für das tägliche Content-Team

Trigger: Das Content-Team nutzt Sonnet 4.6 für alles — von der schnellen Headline bis zum Strategiepapier — und die Monatskostenabrechnung zeigt, dass 70 % der Token auf Routine-Drafts entfallen, die kein starkes Modell erfordern. (Quelle: A-27)
Ziel: Eine verbindliche, aufgabenbezogene Routing-Regel etablieren, die Flash für Routine-Content und Sonnet für qualitätskritische Aufgaben reserviert.
Ergebnis: Eine einseitige Routing-Matrix (Aufgabentyp → empfohlenes Modell + EUR-Preis pro Token) plus eine geschätzte monatliche Einsparung.
Fähigkeit: Modell-Katalog, manuelle Modellwahl, Workspace-Warn-Schwellen.
Vorgehen:
1. Kategorisiere die häufigsten Content-Aufgaben: Routine-Drafts und Übersetzungen (Flash/Haiku, günstigstes Tier), Headlines und Social-Copy (Haiku 4.5), Brand-Voice-kritische Langform-Texte und Strategie-Reviews (Sonnet 4.6, €2,58/1M).
2. Lege fest, dass Flash-Klasse-Modelle der Default für jede Aufgabe sind, bei der kein explizites Qualitätsargument für Sonnet vorliegt — Bequemlichkeit ist kein Qualitätsargument.
3. Halte die Routing-Matrix im Wissensordner ab und verknüpfe sie mit dem Content-Agenten als Referenz, damit das Team die Regel im Chat abrufen kann.
4. Prüfe nach vier Wochen die Usage-Leiste: hat der Sonnet-Anteil im Verhältnis abgenommen? Wenn nicht, war die Kommunikation der Regel unklar.
Vorlage: Aufgaben-Routing-Matrix (Flash vs. Sonnet):
1. Kategorien - Routine-Drafts/Uebersetzungen -> Flash/Haiku (guenstigstes Tier); Headlines/Social -> Haiku 4.5; Brand-Voice-Langform/Strategie -> Sonnet 4.6 (EUR 2,58).
2. Default-Regel - Flash-Klasse fuer jede Aufgabe ohne explizites Qualitaetsargument fuer Sonnet.
3. Ablage - Matrix im Wissensordner + als Konversations-Starter im Content-Agenten.
4. Kontrolle - nach 4 Wochen Usage-Leiste: Sonnet-Anteil gesunken?
Artefakt: Eine Routing-Matrix (Aufgabentyp / Modell / EUR-Preis / Begründung) plus Einsparungs-Schätzung als Team-Leitfaden.
Fallstricke:
- Flash-Modelle produzieren bei Brand-Voice-kritischen Texten inkonsistente Tonalität — Mitigation: jede Ausnahme für Sonnet muss schriftlich begründet werden, nicht aus Gewohnheit.
- Eine Routing-Matrix nützt nichts, wenn das Team sie nicht findet — Mitigation: die Matrix als Konversations-Starter im Content-Agenten verankern, nicht nur als Dokument im Ordner ablegen.
Empfehlung: Verlange fuer jede Sonnet-Ausnahme ein schriftliches Qualitaetsargument - Bequemlichkeit ist keines, und Flash-Modelle liefern bei Brand-Voice-kritischen Texten inkonsistente Tonalitaet. Verankere die Routing-Matrix als Konversations-Starter im Content-Agenten, nicht nur als Dokument im Ordner, sonst findet das Team sie nicht und die Regel verpufft.
Anschluss: S-MK-014

### S-MK-014 Monatliches KI-Budget für eine Kampagne im Voraus kalkulieren

Trigger: Vor dem Start einer größeren Omnichannel-Kampagne (6 Wochen, 4 Kanäle, 3 Sprachen) fragt die Finanzabteilung nach einer begründeten KI-Kosten-Prognose — das Team hat bisher immer erst im Nachhinein auf den Usage-Export geschaut. (Quelle: sources/12 Q119)
Ziel: Vor Kampagnenstart eine belastbare Kostenprognose erstellen, die Modell-EUR-Preise, Aufgabenvolumen und Workflow-Runs berücksichtigt, statt rückwirkend zu budgetieren.
Ergebnis: Eine Excel-kompatible Kostenkalkulation mit Token-Schätzung pro Aufgabentyp, Modell-EUR-Preis und einem Puffer-Faktor für Iterationen.
Fähigkeit: Modell-Katalog (EUR-Preise), Workflow-Budget-Funktion, Usage-Export vergangener Kampagnen als Referenz.
Vorgehen:
1. Zerlege die Kampagne in Aufgabentypen (Briefing, Texterstellung, Übersetzung, Review, Analyse) und schätze für jede Aufgabe Anzahl der Durchläufe und typische Prompt-Länge in Token.
2. Multipliziere Token-Volumen je Aufgabentyp mit dem EUR-Preis pro Token des geplanten Modells — nutze Referenzwerte aus dem Usage-Export vergangener Kampagnen als Ankerpunkt.
3. Addiere einen Iterations-Puffer von 30 % für Nachbesserungen und setze das Ergebnis als Workflow-Budget-Cap vor dem Kampagnenstart.
4. Übergib die Kalkulation an das Controlling mit einer klaren Zeile: "Basis: EUR-Preis pro Tokenen Stand Mai 2026 — bei Quartalsplanung gegen langdock.com/models gegenchecken."
Vorlage: Vorkampagnen-Kostenkalkulation:
1. Aufgaben-Zerlegung - Briefing, Texterstellung, Uebersetzung, Review, Analyse; je Durchlaeufe + typische Prompt-Laenge (Token) schaetzen.
2. Kosten je Typ - Token-Volumen x EUR-Preis pro Token des geplanten Modells; Anker aus Usage-Export vergangener Kampagnen.
3. Puffer - +30 % Iterations-Puffer; Ergebnis als Workflow-Budget-Cap vor Start.
4. Controlling-Zeile - 'Basis: EUR-Preis Stand Mai 2026, gegen langdock.com/models gegenchecken'.
Artefakt: Eine tabellarische Vorkampagnen-Kalkulation (Aufgabentyp / Token-Schätzung / Modell / EUR-Preis / Kosten-EUR / Puffer) als Controlling-Vorlage.
Fallstricke:
- Token-Schätzungen ohne Referenz aus vergangenen Kampagnen weichen stark von der Realität ab — Mitigation: immer den Usage-Export der letzten vergleichbaren Kampagne als Ankerpunkt verwenden, nie rein spekulativ schätzen.
- Der Puffer-Faktor deckt keine unkontrollierten Frontier-Model-Läufe ab — Mitigation: den Puffer zusammen mit einem Workflow-Cap setzen, damit Ausreißer gestoppt werden, bevor sie den Puffer aufzehren.
Empfehlung: Verwende immer den Usage-Export der letzten vergleichbaren Kampagne als Anker statt rein spekulativ zu schaetzen - ohne Referenz weichen Token-Schaetzungen stark von der Realitaet ab. Setze den 30-%-Puffer zusammen mit einem Workflow-Cap, da der Puffer keine unkontrollierten Frontier-Laeufe abdeckt und Ausreisser gestoppt werden muessen, bevor sie ihn aufzehren.
Anschluss: S-MK-015

### S-MK-015 Modell mitten im Projekt wechseln: Regeln für den sauberen Übergang

Trigger: Ein Whitepaper-Projekt startete auf Sonnet 4.6, aber nach drei Entwurfsrunden zeigt sich, dass die strategische Kernthese flach bleibt — ein Teammitglied schlägt vor, auf Opus 4.8 zu wechseln, ohne zu wissen, ob das den laufenden Kontext zerstört. (Quelle: sources/12 Q21)
Ziel: Klare Entscheidungsregeln für einen Modellwechsel innerhalb eines laufenden Projekts etablieren, um Kontextverlust und unnötige Kostensprünge zu vermeiden.
Ergebnis: Ein Wechsel-Protokoll (wann wechseln, wie Kontext sichern, wie zurückwechseln) plus eine dokumentierte Modell-Entscheidung für das aktuelle Projekt.
Fähigkeit: Manuelle Modellwahl im Chat, Wissensordner als Kontext-Anker, Modell-Katalog.
Vorgehen:
1. Definiere den Wechsel-Trigger: ein Modellwechsel ist gerechtfertigt, wenn drei Iterationen mit dem aktuellen Modell keinen messbaren Qualitätsfortschritt zeigen — nicht als Reflex nach einem schlechten Einzelergebnis.
2. Sichere den bisherigen Kontext: speichere die beste Zwischenversion im Wissensordner, bevor das Modell gewechselt wird — ein Modellwechsel löscht den Chat-Kontext nicht, aber das neue Modell hat keinen automatischen Zugriff auf frühere Schlussfolgerungen.
3. Starte eine neue Session mit dem höheren Modell, übergib die gesicherte Zwischenversion als Kontext-Dokument und formuliere explizit, was die vorherigen Entwürfe nicht geleistet haben.
4. Plane den Rückwechsel auf das günstigere Modell für die Überarbeitungs- und Formatierungsphase — Opus nur für die strategische Synthese, nicht für die redaktionelle Politur.
Vorlage: Modell-Wechsel-Protokoll (mid-Projekt):
1. Wann wechseln - Aufgabenphase aendert sich (Draft -> Politur -> Synthese) oder Qualitaet/Kosten passen nicht mehr.
2. Kontext sichern - 'Bisher entschieden'-Zusammenfassung erstellen, bevor die Session gewechselt wird.
3. Sauberer Uebergang - neue Session mit gepinntem Zielmodell + Kontext-Zusammenfassung starten (kein Re-Routing in derselben Session).
4. Rueckwechsel - Bedingung dokumentieren, falls das Zielmodell schlechter abschneidet.
Artefakt: Ein dokumentiertes Wechsel-Protokoll plus eine überarbeitete Whitepaper-Kernthese aus dem Frontier-Modell-Lauf.
Fallstricke:
- Modellwechsel ohne Kontext-Sicherung bedeutet, dass das neue Modell den Entwurfsverlauf nicht kennt und schlechter startet als das alte Modell nach Iteration 3 — Mitigation: Zwischenversion immer im Wissensordner ablegen, bevor gewechselt wird.
- Auf dem höheren Modell auch die Formatierungs- und Korrekturphase laufen lassen ist vermeidbare Kostenverschwendung — Mitigation: Rückwechsel auf Sonnet oder Haiku für alle Phasen nach der strategischen Synthese fest einplanen.
Empfehlung: Starte fuer den Wechsel eine neue Session mit gepinntem Modell und gib eine kompakte Kontext-Zusammenfassung mit - ein Modellwechsel innerhalb derselben Session loest kein Re-Routing aus und das neue Modell verliert sonst den Gespraechskontext. Dokumentiere die Modell-Entscheidung mit Datum, damit spaetere Projektphasen den Stand nachvollziehen.
Anschluss: S-MK-016

### S-MK-016 ROI des KI-Setups für den CFO übersetzen

Trigger: Das Quartalsgespräch mit dem CFO steht an, und er will wissen, was das Marketing-Team für das Langdock-Budget bekommt — der Marketing-Direktor hat Token-Verbrauchszahlen, aber keine Sprache, die der CFO versteht. (Quelle: A-01)
Ziel: KI-Effekte in kaufmännische Kennzahlen übersetzen: Token-Verbrauch → Lohnkosten-Äquivalent, Time-to-Brief → Opportunitätskostenersparnis, Iterations-Anzahl → Qualitätsproxy.
Ergebnis: Eine einseitige CFO-Folie mit drei KPIs (AI-Assisted-Output-Ratio, Cost-per-Brief, Time-from-Brief-to-Draft) und einer Gesamt-ROI-Aussage.
Fähigkeit: Usage-Export-CSV, Wissensordner für Stundensätze und Benchmark-Daten, Modell-Katalog.
Vorgehen:
1. Ermittle aus dem Usage-Export, welcher Anteil des Marketing-Outputs KI-assistiert entstanden ist (AI-Assisted-Output-Ratio) — das ist die Ankerzahl für das CFO-Gespräch.
2. Berechne das Lohnkosten-Äquivalent: wie viele Arbeitsstunden hätten die erledigten Aufgaben ohne KI gekostet, multipliziert mit dem internen Stundensatz?
3. Stelle die Langdock-Lizenzkosten plus Token-Kosten der Stunden-Ersparnis gegenüber — das ergibt den ROI in Prozent.
4. Beschränke die CFO-Folie auf drei Kennzahlen maximum; mehr Details in den Appendix, nicht in den Hauptteil.
Vorlage: CFO-ROI-Uebersetzung (KI-Setup):
1. Anker - AI-Assisted-Output-Ratio aus dem Usage-Export (Anteil KI-assistierten Outputs).
2. Lohnkosten-Aequivalent - eingesparte Arbeitsstunden x internem Stundensatz.
3. ROI - Lizenz + Token-Kosten gegen Stunden-Ersparnis; ROI in %.
4. Drei KPIs - AI-Assisted-Output-Ratio, Cost-per-Brief, Time-from-Brief-to-Draft; max. 3 auf der Folie, Rest in den Appendix.
Artefakt: Eine CFO-Folie (Gliederung + Kennzahlen) plus ein kurzes Methodenblatt zur Berechnung des Lohnkosten-Äquivalents.
Fallstricke:
- Stundensätze ohne Abstimmung mit HR zu schätzen erzeugt angreifbare Zahlen — Mitigation: offizielle interne Stundensätze oder Markt-Benchmarks als Quelle dokumentieren.
- KPIs ohne Vorjahresdaten sind Einmalwerte ohne Trend — Mitigation: bereits im ersten Quartal eine Baseline erheben, damit der nächste CFO-Report Vorjahresvergleiche zeigen kann.
Empfehlung: Dokumentiere offizielle interne Stundensaetze oder Markt-Benchmarks als Quelle statt sie zu schaetzen - selbst geschaetzte Stundensaetze erzeugen angreifbare Zahlen im CFO-Gespraech. Erhebe bereits im ersten Quartal eine Baseline, da KPIs ohne Vorjahresdaten Einmalwerte ohne Trend bleiben und der naechste Report sonst keinen Vergleich zeigt.
Anschluss: S-MK-017

### S-MK-017 Bulk-Lokalisierungs-Workflow: Batch statt synchronem Chat

Trigger: Das Team muss 800 Produktbeschreibungen in drei Sprachen lokalisieren und versucht es über den Chat — nach zwei Stunden sind 40 Texte fertig und das Rate-Limit ist erreicht. (Quelle: A-24)
Ziel: Großvolumige Lokalisierungs-Aufgaben in einen asynchronen Batch-Workflow überführen, der günstiger, schneller und rate-limit-sicher ist als der synchrone Chat-Modus.
Ergebnis: Ein konfigurierter Lokalisierungs-Workflow (JSON-Array-Input → Flash-Modell → CSV-Output) mit dokumentiertem Kostenvorteil gegenüber dem Chat-Modus.
Fähigkeit: Workflow-Builder (Loop-Knoten, JSON-Array-Input), Haiku 4.5 oder Gemini 2.5 Flash als zugewiesenes Modell, Workflow-Level-Budget.
Vorgehen:
1. Verpacke alle Quelltexte als JSON-Array (ein Objekt pro Text) und lade sie als Workflow-Input hoch — das ermöglicht parallele Verarbeitung statt sequenziellem Chat.
2. Weise dem Workflow-Schritt fest Haiku 4.5 (€0,86) oder Gemini 2.5 Flash zu; nutze niemals Auto Mode in einem Massen-Workflow, da dieser unvorhersehbar teurere Modelle ansteuert.
3. Setze ein Workflow-Level-Budget als Sicherheitsnetz und aktiviere einen 50%-Warn-Alert, damit ein fehlerhafter Loop-Knoten früh gestoppt wird.
4. Vergleiche nach dem ersten Lauf die tatsächlichen Kosten mit einer Schätzung für den Chat-Modus — dokumentiere den Faktor (typisch 5–10x Kostendifferenz) für das interne Reporting.
Workflow: Manual-Trigger (JSON-Array, ein Objekt pro Text) -> Loop-Knoten (parallele Verarbeitung) -> AI-Node (fest Haiku 4.5 oder Gemini 2.5 Flash, Zielsprache + Region-Regeln) -> CSV-Output. Vor Start: Kostenschaetzung gegen Chat-Modus.
Budget: Workflow-Level-Budget als Sicherheitsnetz + 50-%-Warn-Alert; Per-Execution-Limit (max. 2.000 Schritte); nie Auto Mode. Typischer Kostenvorteil 5-10x gegenueber Chat. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Ein Lokalisierungs-Workflow mit Loop-Knoten, zugewiesenem Flash-Modell, Workflow-Budget-Cap und einer Kostendifferenz-Notiz (Batch vs. Chat) für das Controlling.
Fallstricke:
- Ein fehlerhafter Loop-Knoten ohne Workflow-Budget-Cap kann Tausende von API-Calls generieren und das Workspace-Limit sprengen — Mitigation: immer Workflow-Budget und Per-Execution-Limit (max. 2.000 Schritte) aktivieren.
- Batch-Output ohne Stichproben-Review lässt systematische Fehler (z.B. falsch übersetzte Markennamen) unbemerkt skalieren — Mitigation: 2 % der Outputs manuell oder per Sonnet-Stichprobe prüfen, bevor der vollständige Datensatz produktiv geht.
Empfehlung: Aktiviere immer Workflow-Budget und Per-Execution-Limit (max. 2.000 Schritte) - ein fehlerhafter Loop-Knoten kann sonst Tausende API-Calls generieren und das Workspace-Limit sprengen. Pruefe 2 % der Outputs per Stichprobe (manuell oder Sonnet), bevor der Vollauf produktiv geht, da systematische Fehler (z. B. falsch uebersetzte Markennamen) sonst unbemerkt skalieren.
Anschluss: S-MK-018

### S-MK-018 Persönliches Standard-Modell konfigurieren und Kostendisziplin im Team verankern

Trigger: Nach dem Onboarding neuer Kolleginnen zeigt die Usage-Leiste, dass alle auf dem teuersten verfügbaren Modell starten — nicht aus Absicht, sondern weil das persönliche Standard-Modell in den Account-Einstellungen nicht konfiguriert wurde. (Quelle: sources/12 Q22)
Ziel: Kostendisziplin durch technische Voreinstellung verankern: jedes neue Teammitglied startet mit dem günstigsten passfähigen Modell als Default, nicht mit dem Flaggschiff.
Ergebnis: Eine Team-Onboarding-Checkliste mit dem Schritt "Standard-Modell setzen" plus eine empfohlene Default-Konfiguration nach Rolle.
Fähigkeit: Account-Einstellungen (persönliches Standard-Modell), Modell-Katalog, Workspace-Admin-Rechte.
Vorgehen:
1. Erkläre dem Team, dass das persönliche Standard-Modell in den Account-Einstellungen manuell gesetzt werden muss — ohne Konfiguration greift die Plattform auf den Workspace-Default zurück, der möglicherweise auf einem höheren Tier liegt.
2. Empfehle rollenspezifische Defaults: Content-Autor → Haiku 4.5 (€0,86); Strategen und Analysten → GPT-5.2 (€1,50); Workspace-Admins bei komplexen Synthesen → Sonnet 4.6 (€2,58); Opus-Klasse nur auf explizite Anforderung.
3. Füge "Standard-Modell konfigurieren" als Pflichtschritt in das Day-1-Onboarding ein — prüfbar im Admin-Panel anhand der Default-Modell-Einstellung pro User.
4. Kommuniziere die Regel als "günstigstes passendes Modell wählen, bewusst hochstufen statt bequem oben bleiben".
Vorlage: Standard-Modell-Default + Onboarding-Checkliste:
1. Plattform-Verhalten - persoenliches Standard-Modell muss in den Account-Einstellungen gesetzt werden; ohne Konfig greift der (ggf. hoehere) Workspace-Default.
2. Rollen-Defaults - Content -> Haiku 4.5; Strategie/Analyse -> GPT-5.2; komplexe Synthese -> Sonnet 4.6; Opus nur auf Anforderung.
3. Day-1-Pflichtschritt - 'Standard-Modell setzen', im Admin-Panel pruefbar.
4. Regel - guenstigstes passendes Modell, bewusst hochstufen.
Artefakt: Eine Day-1-Onboarding-Checkliste mit Default-Modell-Empfehlung pro Rolle als wiederverwendbarer Wissensordner-Eintrag.
Fallstricke:
- Standard-Modell-Konfiguration gilt nur für neue Sessions — laufende Chats behalten das Modell aus dem Sitzungsstart; Mitigation: Teammitglieder schulen, bei jedem neuen Thema eine neue Session zu starten.
- Zu restriktive Admin-Einschränkungen (alle auf Haiku gesperrt) blockieren legitime Hochanforderungen — Mitigation: Default niedrig setzen, aber Hochwahl erlauben und begründungspflichtig machen.
Empfehlung: Schule das Team, bei jedem neuen Thema eine neue Session zu starten - die Standard-Modell-Konfiguration gilt nur fuer neue Sessions, laufende Chats behalten das Start-Modell. Setze den Default niedrig, aber erlaube begruendungspflichtige Hochwahl; zu restriktive Admin-Sperren (alle auf Haiku) blockieren legitime Hochanforderungen.
Anschluss: S-MK-019

### S-MK-019 Token-Budget-Alarm konfigurieren und Eskalations-Playbook erstellen

Trigger: Das Monatsbudget wurde schon zweimal überraschend am 25. des Monats aufgebraucht — das Team wusste nicht, dass es Warn-Schwellen gibt, und hat erst beim harten Stopp reagiert. (Quelle: A-25)
Ziel: Ein proaktives Eskalations-Playbook aufbauen, das bei 50 %, 75 % und 90 % Budgetverbrauch konkrete Handlungsschritte auslöst, bevor der harte Stopp den Kampagnenbetrieb unterbricht.
Ergebnis: Ein einseitiges Eskalations-Playbook (Schwelle → Verantwortlicher → Maßnahme) plus eine konfigurierte Warn-Schwellen-Einstellung im Workspace.
Fähigkeit: Workspace-Warn-Schwellen (50/75/90%), Workspace-Limit, Usage-Transparenz-Leiste, Admin-Benachrichtigungs-E-Mail.
Vorgehen:
1. Konfiguriere im Workspace-Admin die drei Standard-Warn-Schwellen (50 %, 75 %, 90 %) und stelle sicher, dass Benachrichtigungen an die Marketing-Operations-Adresse gehen, nicht nur an den technischen Admin.
2. Definiere im Playbook für 50 %: Usage-Leiste auf Ausreißer prüfen, unkritische Frontier-Modell-Nutzung einfrieren.
3. Definiere für 75 %: Workflow-Budgets unkritischer Prozesse halbieren, Team über verbleibende Kapazität informieren.
4. Definiere für 90 %: alle nicht kampagnenkritischen Agenten pausieren, Limit-Erhöhung beim Admin beantragen mit begründetem Bedarf — nicht pauschal verdoppeln.
Vorlage: Budget-Eskalations-Playbook (50/75/90 %):
1. Konfiguration - drei Warn-Schwellen im Workspace-Admin; Benachrichtigung an Marketing-Operations, nicht nur an den technischen Admin.
2. 50 % - Usage-Leiste auf Ausreisser pruefen, unkritische Frontier-Nutzung einfrieren.
3. 75 % - Workflow-Budgets unkritischer Prozesse halbieren, Team ueber Restkapazitaet informieren.
4. 90 % - alle nicht kampagnenkritischen Agenten pausieren, begruendete Limit-Erhoehung beantragen (nicht pauschal verdoppeln).
Artefakt: Ein Eskalations-Playbook (Tabelle: Schwelle / Verantwortlicher / Maßnahme / Reaktionszeit) zur Ablage im Wissensordner.
Fallstricke:
- Warn-Schwellen ohne definierten Empfänger-Kreis bleiben wirkungslos — Mitigation: explizit eine namentlich benannte Person (z.B. Marketing-Operations-Lead) als primären Alert-Empfänger konfigurieren.
- Ein Playbook das nur Maßnahmen für den Admin enthält, ignoriert, dass das Team selbst Verbrauch treibt — Mitigation: jede Stufe muss eine Maßnahme für Teamebene (welche Modelle/Workflows pausieren?) enthalten, nicht nur Admin-Eskalation.
Empfehlung: Konfiguriere eine namentlich benannte Person (Marketing-Operations-Lead) als primaeren Alert-Empfaenger - Warn-Schwellen ohne definierten Empfaenger bleiben wirkungslos. Gib jeder Stufe eine Massnahme auf Teamebene (welche Modelle/Workflows pausieren), nicht nur eine Admin-Eskalation, da das Team selbst den Verbrauch treibt.
Anschluss: S-MK-020

### S-MK-020 Workflow-Runs vs. Chat-Session: Abrechnung und Paketwahl verstehen

Trigger: Das Team hat den Workflow-Builder intensiv genutzt und erhält am Monatsende eine unerwartete Zusatzrechnung — es wusste nicht, dass Workflow-Runs separat abgerechnet werden und das Monats-Paket aufgebraucht wurde. (Quelle: sources/12 Q119)
Ziel: Den Unterschied zwischen Chat-basiertem Token-Verbrauch und Workflow-Run-Paketen verstehen und die Paket-Wahl an das tatsächliche Automatisierungs-Volumen anpassen.
Ergebnis: Eine Verbrauchs-Analyse (Chat-Token vs. Workflow-Runs) plus eine Paket-Empfehlung mit Jahreskostenrechnung.
Fähigkeit: Workflow-Builder, Usage-Export, Pricing-Tiers (Standard/Max/Enterprise), Workflow-Run-Pakete.
Vorgehen:
1. Ziehe den Usage-Export und trenne Chat-Token-Kosten von Workflow-Run-Kosten — beide werden unterschiedlich abgerechnet und müssen separat betrachtet werden.
2. Halte fest: Workflow-Runs verfallen am Monatsende (kein Rollover) — ungenutzte Runs im Paket sind verlorene Investitionen; Mitigation ist entweder ein kleineres Paket oder eine bessere Auslastungsplanung.
3. Prüfe, ob der Max-Tarif mit höherem Workflow-Run-Inklusivvolumen günstiger ist als Standard plus Zusatz-Pakete — rechne auf Jahresbasis.
4. Setze für jeden aktiven Workflow ein dediziertes Run-Budget, damit kein einzelner Prozess das monatliche Kontingent allein aufzehrt.
Empfehlung: Trenne im Usage-Export Chat-Token-Kosten von Workflow-Run-Kosten - beide werden unterschiedlich abgerechnet, und Workflow-Runs verfallen am Monatsende (kein Rollover), ungenutzte Runs sind verlorene Investitionen. Rechne auf Jahresbasis, ob der Max-Tarif mit hoeherem Inklusiv-Run-Volumen guenstiger ist als Standard plus Zusatzpakete, und setze fuer jeden aktiven Workflow ein dediziertes Run-Budget, damit kein einzelner Prozess das Monatskontingent allein aufzehrt.
Artefakt: Eine Verbrauchs-Aufschlüsselung (Chat vs. Runs) plus eine Jahreskosten-Gegenüberstellung zweier Paket-Szenarien als Entscheidungsvorlage.
Fallstricke:
- Workflow-Runs ohne Run-Budget können bei einem Fehler oder Loop-Fehler das komplette Monatskontingent in Minuten verbrauchen — Mitigation: für jeden produktiven Workflow ein explizites Run-Limit setzen.
- Annahme, dass ungenutzte Runs übertragen werden — sie verfallen — Mitigation: bei der Paket-Wahl das historische Verbrauchsmuster zugrunde legen, nicht das theoretische Maximum.
Anschluss: S-MK-021

### S-MK-021 Sonnet auf Opus upgraden: ROI-Schwelle messen statt intuitiv wechseln

Trigger: Ein Strategieprojekt läuft seit vier Wochen auf Sonnet 4.6, die Outputs sind solide aber nicht überzeugend — jemand schlägt Opus 4.8 vor, aber der Frontier-Aufpreis (Opus €4,30 vs. Sonnet €2,58 pro 1M Input) ist schwer zu rechtfertigen ohne harte Evidenz. (Quelle: A-30)
Ziel: Den Upgrade-Entscheid von Sonnet auf Opus auf messbare Qualitäts-Evidenz stützen statt auf Bauchgefühl, und eine ROI-Schwelle definieren, ab der der Aufpreis vertretbar ist.
Ergebnis: Ein A/B-Vergleich derselben fünf Aufgaben auf Sonnet vs. Opus plus eine dokumentierte ROI-Entscheidung mit Rückwechsel-Bedingung.
Fähigkeit: Manuelle Modellwahl, Wissensordner für Bewertungskriterien, Modell-Katalog (EUR-Preise).
Vorgehen:
1. Wähle fünf repräsentative Aufgaben aus dem laufenden Projekt (unterschiedliche Komplexität) und führe sie parallel mit Sonnet 4.6 und Opus 4.8 durch.
2. Bewerte die Outputs strukturiert: Argumentation, Quellenbindung, strategische Tiefe — dokumentiere, wo Opus einen messbaren Mehrwert zeigt und wo die Outputs gleichwertig sind.
3. Berechne den Upgrade-Kosteneffekt: wenn 60 % der Aufgaben Opus-Qualität benötigen und Opus (€4,30) rund 1,7x so teuer pro Token ist wie Sonnet (€2,58), steigen die Gesamtkosten für das Projekt auf rund 1,4x des Sonnet-Niveaus — ist der Mehrwert das wert?
4. Lege eine Rückwechsel-Bedingung fest: wenn das Projekt in die Überarbeitungs- und Formatierungsphase wechselt, zurück auf Sonnet.
Empfehlung: Stuetze den Upgrade von Sonnet auf Opus auf einen A/B-Vergleich von mindestens fuenf repraesentativen Aufgaben (Argumentation, Quellenbindung, strategische Tiefe), nicht auf ein schlechtes Einzelergebnis - dokumentiere, wo Opus messbaren Mehrwert zeigt und wo die Outputs gleichwertig sind. Rechne den Kosteneffekt (Opus EUR 4,30 ist rund 1,7x Sonnet EUR 2,58) und plane einen Rueckwechsel auf Sonnet fuer die Ueberarbeitungs-/Formatierungsphase fest ein - Opus nur fuer die strategische Synthese, nicht fuer die Politur.
Artefakt: Eine Vergleichstabelle (Aufgabe / Sonnet-Output-Qualität / Opus-Output-Qualität / Mehrwert ja/nein) plus eine ROI-Entscheidung mit Rückwechsel-Bedingung.
Fallstricke:
- Einen Upgrade nach einem schlechten Einzelergebnis auf Sonnet zu entscheiden ist kein valider Test — Mitigation: mindestens fünf verschiedene Aufgaben vergleichen, um ein repräsentatives Bild zu erhalten.
- Opus für die gesamte Projektlaufzeit aktiv lassen, auch wenn nur die Synthesephasen von ihm profitieren — Mitigation: den Rückwechsel auf Sonnet für Überarbeitungs- und Routinephasen als festen Prozessschritt einplanen.
Anschluss: S-MK-022

### S-MK-022 AI-Carbon-Footprint für den Nachhaltigkeitsbericht schätzen

Trigger: Die Nachhaltigkeitsbeauftragte fragt, ob der Langdock-Einsatz im Marketing in den CO₂-Bericht aufgenommen werden soll — das Team hat Token-Verbrauchsdaten, aber keine Ahnung, wie man Token in Emissionen umrechnet. (Quelle: A-45)
Ziel: Eine belastbare, transparent dokumentierte CO₂-Schätzung für den KI-Einsatz erstellen, die im Nachhaltigkeitsbericht verwendbar ist und Annahmen klar offenlegt.
Ergebnis: Eine Emissions-Tabelle (Token-Volumen pro Modell × CO₂-Faktor) mit Quellenangabe und einer jährlichen Aktualisierungs-Pflicht.
Fähigkeit: Usage-Export-CSV, Wissensordner für Emissionsfaktoren-Referenzen, Modell-Katalog.
Vorgehen:
1. Ziehe den Usage-Export und segmentiere das Token-Volumen nach Modell-Kategorie — verschiedene Modellklassen haben unterschiedliche Energieverbrauchsprofile.
2. Nutze öffentliche CO₂-Faktoren von ML.energy und Hugging Face Public Estimates als Basis; dokumentiere explizit, dass diese Schätzungen sind, keine zertifizierten Messungen.
3. Multipliziere Token-Volumen je Modellklasse mit dem jeweiligen Faktor und addiere die Ergebnisse zu einer Jahres-Gesamtschätzung in kg CO₂-Äquivalent.
4. Füge eine Annahmen-Sektion hinzu und plane eine jährliche Aktualisierung der Faktoren ein — CO₂-Schätzungen für KI-Modelle ändern sich mit der Hardware-Effizienz der Rechenzentren.
Vorlage: KI-CO2-Schaetzung (Nachhaltigkeitsbericht):
1. Segmentierung - Token-Volumen nach Modellklasse aus dem Usage-Export.
2. Faktoren - oeffentliche CO2-Faktoren (ML.energy, Hugging Face) als Basis; explizit als Schaetzung deklarieren.
3. Berechnung - Token x Faktor je Klasse -> Jahres-Gesamt in kg CO2-Aequivalent.
4. Annahmen-Sektion + jaehrliche Aktualisierungs-Pflicht.
Artefakt: Eine Emissions-Tabelle (Modellklasse / Token-Volumen / CO₂-Faktor / kg CO₂/Jahr) mit Annahmen-Dokumentation als Anhang für den Nachhaltigkeitsbericht.
Fallstricke:
- CO₂-Faktoren für KI-Modelle sind keine zertifizierten Messungen, sondern Schätzungen mit hoher Unsicherheitsspanne — Mitigation: im Bericht explizit als "Schätzwert auf Basis öffentlicher Daten" deklarieren, nicht als Messung ausgeben.
- Eine einmalige Berechnung ohne Aktualisierungs-Pflicht wird mit jeder Hardware-Effizienz-Generation ungenauer — Mitigation: jährliche Überprüfung der verwendeten Faktoren als festen Termin im Nachhaltigkeits-Kalender verankern.
Empfehlung: Deklariere den Wert im Bericht ausdruecklich als 'Schaetzwert auf Basis oeffentlicher Daten', nicht als Messung - CO2-Faktoren fuer KI-Modelle sind keine zertifizierten Messungen, sondern Schaetzungen mit hoher Unsicherheitsspanne. Verankere eine jaehrliche Faktor-Ueberpruefung als festen Termin, da die Schaetzung mit jeder Hardware-Effizienz-Generation ungenauer wird.
Anschluss: S-MK-023

### S-MK-023 Kosten-Reporting für das Management automatisieren

Trigger: Der Marketing-Direktor erstellt den monatlichen KI-Kostenreport manuell aus dem Usage-Export — das dauert zwei Stunden, und die Zahlen kommen oft zu spät für das Management-Meeting am ersten Montag des Monats. (Quelle: sources/12 Q124)
Ziel: Den KI-Kostenreport als automatisierten Workflow aufsetzen, der am letzten Tag des Monats eine fertige Management-Summary in den definierten Kanal liefert.
Ergebnis: Ein Reporting-Workflow (Usage-Export-Abruf → KPI-Berechnung → Summary-Generierung → Slack/E-Mail-Versand) mit dokumentiertem Modell-Einsatz und Budget-Cap.
Fähigkeit: Workflow-Builder (HTTP-Request-Knoten für Usage-Export-API, Zeitplan-Trigger), Haiku 4.5 für Summarisierung, Slack- oder E-Mail-Integration.
Vorgehen:
1. Konfiguriere einen monatlichen Cron-Trigger (letzter Werktag des Monats, 16:00 Uhr) der den Workflow startet.
2. Nutze einen HTTP-Request-Knoten, der die Usage-Export-API abruft und die Daten als JSON an den nächsten Schritt übergibt.
3. Weise dem Summarisierungs-Schritt Haiku 4.5 zu — die Aufgabe ist strukturierte Zusammenfassung mit bekannten Feldern, kein Frontier-Modell nötig; Prompt: "Erstelle aus den KPI-Daten eine Management-Summary mit drei Kennzahlen und einer Handlungsempfehlung."
4. Sende die Summary per Slack-Integration an den definierten Kanal und setze einen Workflow-Budget-Cap von €5/Monat, damit der Report-Workflow das Gesamtbudget nicht belastet.
Workflow: Cron-Trigger (letzter Werktag, 16:00) -> HTTP-Request-Node (Usage-Export-API -> JSON) -> AI-Node (Haiku 4.5, Management-Summary: 3 KPIs + Top-3-Treiber + Vormonats-Vergleich + Handlungsempfehlung) -> Slack/E-Mail-Action.
Budget: Workflow-Budget-Cap EUR 5/Monat; Haiku genuegt fuer strukturierte Summarisierung. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Ein konfigurierter Reporting-Workflow (Cron → API-Abruf → Haiku-Summarisierung → Slack-Versand) plus eine Beispiel-Summary als Vorlage.
Fallstricke:
- Usage-Export-API-Tokens haben Ablaufdaten — wenn der API-Key abläuft, scheitert der Workflow still ohne Fehlermeldung; Mitigation: API-Key-Ablauf-Datum im Workflow-Kommentar dokumentieren und drei Tage vor Ablauf einen Kalender-Alert setzen.
- Haiku für die Summarisierung produziert korrekte Zahlen, aber keine kontextuellen Interpretationen (z.B. "Anstieg erklärt durch Kampagnenstart") — Mitigation: einen optionalen manuellen Kommentarfeld in die Summary integrieren, den der Marketing-Ops-Lead vor dem Versand befüllen kann.
Empfehlung: Dokumentiere das Ablaufdatum des Usage-Export-API-Keys im Workflow-Kommentar und setze drei Tage vorher einen Kalender-Alert - laeuft der Key ab, scheitert der Workflow still ohne Fehlermeldung. Integriere ein optionales manuelles Kommentarfeld, das der Marketing-Ops-Lead vor dem Versand befuellt, da Haiku korrekte Zahlen liefert, aber keine kontextuellen Interpretationen ('Anstieg durch Kampagnenstart').
Anschluss: S-MK-024

### S-MK-024 Haiku für Bulk-Klassifikation: Modell-Suitability-Test vor dem Vollauf

Trigger: Vor einem geplanten Bulk-Workflow zur Klassifikation von 5.000 Support-Tickets nach Marketingrelevanz soll geprüft werden, ob Haiku 4.5 die Aufgabe zuverlässig genug löst, bevor das Volumen-Budget ausgegeben wird. (Quelle: sources/12 Q23)
Ziel: Vor jedem Bulk-Workflow mit einem Stichproben-Test validieren, dass das günstigste Modell die erforderliche Klassifikationsqualität liefert — und die Testergebnisse für die Modell-Wahl dokumentieren.
Ergebnis: Ein Suitability-Test-Report (100 Stichproben, Precision/Recall-Schätzung) plus eine begründete Modell-Entscheidung für den Vollauf.
Fähigkeit: Manuelle Modellwahl (Haiku 4.5), Wissensordner für Klassifikations-Kriterien, Usage-Export für Kosten-Vergleich.
Vorgehen:
1. Ziehe eine zufällige Stichprobe von 100 Tickets und klassifiziere sie manuell (Ground Truth) — ohne Ground Truth ist der Modell-Test nicht aussagekräftig.
2. Lass Haiku 4.5 dieselben 100 Tickets klassifizieren mit dem geplanten Klassifikations-Prompt und vergleiche die Ergebnisse mit der Ground Truth.
3. Berechne Precision und Recall für die wichtigste Kategorie ("marketingrelevant") — wenn Recall unter 80 % liegt, übersieht das Modell zu viele relevante Tickets; erwäge ein Step-up auf GPT-5.2 (€1,50).
4. Dokumentiere die Testergebnisse als Entscheidungsgrundlage: Modell, Prompt-Version, Precision, Recall, Kosten-Schätzung für Vollauf.
Empfehlung: Validiere vor jedem Bulk-Workflow mit 100 manuell gelabelten Stichproben (Ground Truth), ob das guenstigste Modell (Haiku 4.5) die noetige Klassifikationsqualitaet liefert - ohne Ground Truth ist der Test nicht aussagekraeftig. Berechne Precision und Recall fuer die wichtigste Kategorie; liegt der Recall unter 80 %, uebersieht das Modell zu viele relevante Faelle und du solltest auf GPT-5.2 (EUR 1,50) hochstufen; formuliere die Kriterien praezise und exklusiv mit Grenzfall-Beispielen, da ein zu weicher Prompt hohe Recall bei niedriger Precision erzeugt.
Artefakt: Ein Suitability-Test-Report (Stichproben-Größe, Precision, Recall, Kosten-Schätzung Vollauf) plus eine dokumentierte Modell-Entscheidung mit Begründung.
Fallstricke:
- Einen Bulk-Workflow ohne Stichproben-Test zu starten bedeutet, dass systematische Klassifikationsfehler erst nach Verbrauch des gesamten Budgets sichtbar werden — Mitigation: immer 100 manuell gelabelte Stichproben als Ground Truth vor dem Vollauf.
- Ein zu weich formulierter Klassifikations-Prompt führt bei Haiku zu hoher Recall aber niedriger Precision (zu viele False Positives) — Mitigation: Klassifikations-Kriterien im Wissensordner präzise und exklusiv formulieren, mit Beispielen für Grenzfälle.
Anschluss: S-MK-025

### S-MK-025 Modell-Changelog verfolgen: Quartals-Review für stabile Kostenplanung

Trigger: Die Quartalsplanung zeigt Abweichungen zwischen der budgetierten und der tatsächlichen KI-Kosten — bei der Analyse stellt sich heraus, dass zwei Modelle im letzten Quartal Preisänderungen hatten, die das Team nicht mitbekommen hat. (Quelle: sources/12 Q24; A-30)
Ziel: Einen strukturierten Quartals-Review-Prozess etablieren, der Modell-Preisänderungen, neue Releases und EUR-Preisänderungen rechtzeitig für die nächste Budgetrunde erfasst.
Ergebnis: Ein Quartals-Review-Template (Modell-Roster-Check, EUR-Preis-Vergleich, Budget-Anpassungsempfehlung) als wiederkehrender Wissensordner-Eintrag.
Fähigkeit: Modell-Katalog, Usage-Export, Wissensordner für historische EUR-Preise, manuelle Modellwahl.
Vorgehen:
1. Rufe zu Quartalsbeginn langdock.com/models auf und vergleiche alle genutzten Modell-EUR-Preise mit den in der letzten Planung verwendeten Werten — dokumentiere jede Änderung mit Datum.
2. Prüfe, ob neue Releases (z.B. neue Flash-Generation) die bestehende Routing-Matrix verändern sollten: nicht jede neue Version ist günstiger oder besser — entscheide anhand EUR-Preis pro Token und Batch-Test, nicht Versionsnummer.
3. Passe die Kostenkalkulation für das laufende Quartal an geänderte EUR-Preise an und kommuniziere Abweichungen gegenüber der Jahresplanung proaktiv an Controlling.
4. Halte das aktualisierte Modell-Roster mit Stand-Datum im Wissensordner ab — jede Kostenkalkulation muss auf einen datierten Roster verweisen, nicht auf vage "aktuelle Preise".
Vorlage: Modell-Changelog Quartals-Review:
1. EUR-Preis-Vergleich - zu Quartalsbeginn langdock.com/models gegen den letzten Roster; jede Aenderung mit Datum.
2. Release-Check - neue Versionen am EUR-Preis pro Token + Batch-Test bewerten, nicht an der Versionsnummer.
3. Budget-Anpassung - Kalkulation an geaenderte Preise anpassen, Abweichungen proaktiv ans Controlling.
4. Datierter Roster - im Wissensordner; jede Kalkulation verweist auf einen datierten Roster.
Artefakt: Ein datiertes Modell-Roster-Update (Modell / alter EUR-Preis pro Token / neuer EUR-Preis pro Token / Budget-Auswirkung EUR/Quartal) als Controlling-Vorlage.
Fallstricke:
- Kostenpläne ohne datierten Modell-Roster-Verweis sind bei der nächsten Preisänderung sofort veraltet — Mitigation: jede Kalkulation mit "Basis: Modell-Roster Stand [Datum], Quelle: langdock.com/models" versehen.
- Neue Modell-Releases als automatisch günstiger anzunehmen ohne EUR-Preis-Prüfung führt zu Budget-Überraschungen — Mitigation: immer den tatsächlichen EUR-Preis aus dem Katalog prüfen, bevor ein neues Modell in die Routing-Matrix aufgenommen wird.
Empfehlung: Versieh jede Kostenkalkulation mit 'Basis: Modell-Roster Stand [Datum], Quelle: langdock.com/models' - Plaene ohne datierten Roster-Verweis sind bei der naechsten Preisaenderung sofort veraltet. Pruefe den tatsaechlichen EUR-Preis aus dem Katalog, bevor du ein neues Modell in die Routing-Matrix aufnimmst, statt ein neues Release als automatisch guenstiger anzunehmen.
Anschluss: S-MK-026

### S-MK-026 Gemini vs. Claude für DACH-Sprachqualität: Welches Modell schreibt besser Deutsch?

Trigger: Das Content-Team streitet darüber, ob Gemini 2.5 Flash oder Haiku 4.5 für deutschsprachige Marketingtexte besser ist — ein Teammitglied besteht auf Anthropic, ein anderes schwört auf Google, aber niemand hat die beiden je systematisch verglichen. (Quelle: sources/12 Q16)
Ziel: Einen datenbasis-gestützten Provider-Entscheid für DACH-Sprachqualität treffen, statt ihn aus Markenpräferenz oder Hörensagen zu fällen.
Ergebnis: Eine qualitative Vergleichstabelle (5 Aufgabentypen × 2 Modelle) mit Bewertung nach DACH-Sprachkriterien plus eine begründete Modell-Empfehlung pro Aufgabentyp.
Fähigkeit: Manuelle Modellwahl (Gemini 2.5 Flash vs. Haiku 4.5), Wissensordner mit Brand-Voice-Kriterien, Modell-Katalog.
Vorgehen:
1. Definiere DACH-Bewertungskriterien vorab: Genitive-Bildung, idiomatische Kollokationen, formelles Sie vs. informelles Du, Schweizerhochdeutsch-Kompatibilität (kein ß), österreichische Fachbegriffe — dokumentiere sie im Wissensordner als Bewertungsraster.
2. Führe fünf repräsentative Aufgaben durch (Headline, Social Post, Pressemitteilung, Produkttext, E-Mail) parallel auf beiden Modellen mit identischem Prompt.
3. Bewerte die Outputs nach dem definierten Raster auf einer 1-5-Skala pro Kriterium; lass bei Bedarf einen Muttersprachler zwei strittige Outputs blind beurteilen.
4. Entscheide aufgabenspezifisch: wenn Anthropic für Brand-Voice-Texte besser abschneidet und Gemini für kurze Draft-Aufgaben gleichwertig bei niedrigerem EUR-Preis ist, trenne die Routing-Empfehlung danach.
Empfehlung: Triff den Provider-Entscheid fuer DACH-Sprachqualitaet datenbasiert ueber einen strukturierten Vergleich von Gemini 2.5 Flash vs. Haiku 4.5 an 5 Aufgabentypen mit Brand-Voice-Kriterien, nicht aus Markenpraeferenz oder Hoerensagen. Empfiehl pro Aufgabentyp das passende Modell statt eines pauschalen Siegers - die Staerken unterscheiden sich je nach Textsorte, und der EUR-Preis pro Token bleibt das Mit-Kriterium.
Artefakt: Eine Vergleichstabelle (Aufgabentyp / Gemini-Score / Claude-Score / Empfehlung) plus eine begründete Routing-Empfehlung pro Aufgabenkategorie.
Fallstricke:
- Einen Modellvergleich mit nur einer Textart (z.B. nur Headlines) zu generalisieren führt zu falschen Schlüssen — Mitigation: mindestens fünf verschiedene Aufgabentypen aus dem realen Content-Mix testen.
- Bewertung ohne vorab definiertes Raster führt zu subjektiven, nicht reproduzierbaren Urteilen — Mitigation: Bewertungskriterien im Wissensordner verankern, bevor der erste Output bewertet wird.
Anschluss: S-MK-027

### S-MK-027 Kontextfenstergröße steuern: Welches Modell für welchen Dokumenttyp?

Trigger: Der Marktforschungs-Lead will einen 150-seitigen Trendreport auf einmal in den Chat laden — Sonnet 4.6 streikt bei der Dateigröße, und das Team fragt, welches Modell das verarbeiten kann, ohne die Kosten zu sprengen. (Quelle: sources/12 Q20)
Ziel: Eine Entscheidungsregel etablieren, welche Dokumentlänge welches Modell mit welchem Kontextfenster erfordert, damit große Dokumente weder an Limits scheitern noch unnötig teuer verarbeitet werden.
Ergebnis: Eine Dokumenttyp-zu-Modell-Matrix (Seitenanzahl / empfohlenes Modell / Begründung) plus eine Kostenrechnung für den konkreten 150-Seiten-Fall.
Fähigkeit: Modell-Katalog (Kontextfenster-Vergleich), Wissensordner als RAG-Alternative zu langen Inline-Uploads, manuelle Modellwahl.
Vorgehen:
1. Kläre die Dokumentlänge in Token: 150 Seiten entsprechen ca. 75.000–100.000 Token; prüfe, welche Modelle dieses Kontextfenster unterstützen — Gemini 2.5 Flash hat hier einen strukturellen Vorteil mit über 1 Million Token Kontextfenster.
2. Wäge Kontextfenster gegen Kosten ab: ein vollständiges 100K-Token-Dokument als Inline-Input bei einem teuren Modell kostet deutlich mehr als eine RAG-Abfrage aus dem Wissensordner — trenne Aufgaben, die den vollen Text brauchen (Synthese), von denen, die nur Auszüge brauchen (Faktencheck).
3. Nutze Gemini 2.5 Flash für Extraktions- und Komprimierungsaufgaben großer Dokumente; eskaliere auf Sonnet 4.6 nur, wenn strategische Synthese aus dem vollen Dokumentkontext nötig ist.
4. Lege die Matrix im Wissensordner ab: Dokument ≤10 Seiten → jedes Modell; 10–80 Seiten → RAG/Wissensordner bevorzugt; 80–500 Seiten → Gemini 2.5 Flash direkt; >500 Seiten → zwingend RAG-Chunking.
Empfehlung: Waehle das Modell nach Dokumentlaenge: <=10 Seiten jedes Modell; 10-80 Seiten RAG/Wissensordner bevorzugen; 80-500 Seiten Gemini 2.5 Flash direkt (>1 Mio Token Kontextfenster); >500 Seiten zwingend RAG-Chunking - so scheitern grosse Dokumente weder an Limits noch werden sie unnoetig teuer. Lade wiederholt abgefragte Dokumente immer in den Wissensordner statt per wiederholtem Inline-Upload (multipliziert sonst die Input-Kosten) und fordere kritische Passagen explizit als Zitat an, da Grosskontext-Modelle in der Dokumentmitte an Praezision verlieren ('lost in the middle').
Artefakt: Eine Dokumenttyp-Matrix (Seitenbereich / empfohlenes Modell / Zugangsmethode / Kostenbegründung) als Wissensordner-Leitfaden.
Fallstricke:
- Ein großes Dokument inline hochladen statt im Wissensordner abzulegen multipliziert die Input-Token-Kosten bei jeder Folge-Abfrage — Mitigation: für wiederholt abgefragte Dokumente immer den Wissensordner nutzen, nie wiederholten Inline-Upload.
- Gemini für große Kontexte einsetzen ohne Qualitätsprüfung am Ende des Dokuments — Modelle mit großem Kontextfenster verlieren Präzision bei Inhalten am Dokumentende ("lost in the middle") — Mitigation: kritische Passagen explizit als Zitat im Prompt anfordern statt auf implizites Scanning zu vertrauen.
Anschluss: S-MK-028

### S-MK-028 Streaming vs. Batch: Kostenunterschiede für interaktive Agenten und Massenläufe

Trigger: Das Team überlegt, ob der neue Kundendienst-Agent, der in Echtzeit mit Nutzern interagiert, genauso abgerechnet wird wie der Nacht-Workflow, der tausend Texte verarbeitet — und ob es einen Kostenvorteil gibt, bestimmte Aufgaben asynchron zu verschieben. (Quelle: sources/12 Q119)
Ziel: Den Kostenunterschied zwischen synchronem Streaming (Echtzeit-Chat, sichtbare Antwort-Generierung) und asynchronem Batch-Processing verstehen und Aufgaben dem richtigen Modus zuordnen.
Ergebnis: Eine Modus-Entscheidungsregel (Streaming vs. Batch) mit konkreten Beispielen und einer Kostenprognose für den Kundendienst-Agenten.
Fähigkeit: Workflow-Builder (asynchrone Batch-Verarbeitung), Chat (synchrones Streaming), Modell-Katalog, Workflow-Budget-Cap.
Vorgehen:
1. Halte fest: Token-Kosten pro generiertem Token sind in beiden Modi gleich — der Unterschied liegt in der Nutzungsstruktur: Streaming bindet eine Session während der Antwortgenerierung, Batch kann parallelisiert und zu Nebenzeiten ausgeführt werden.
2. Identifiziere latenz-sensitive Aufgaben (Kundendienst-Chat, interaktive Briefing-Generierung) → Streaming unvermeidbar; und latenz-tolerante Aufgaben (Massenübersetzung, Report-Summarisierung, Klassifikation) → Batch bevorzugen.
3. Verschiebe latenz-tolerante Aufgaben in Nacht-Workflows, damit sie kein Tages-Kontingent der interaktiven Agenten blockieren — das verhindert Rate-Limit-Probleme in Stoßzeiten.
4. Dokumentiere die Aufgabentrennung: Batch-Workflows bekommen ein dediziertes Budget und Zeitplan-Trigger; Streaming-Agenten bekommen ein separates Budget für interaktive Nutzung.
Empfehlung: Ordne latenz-sensitive Aufgaben (Kundendienst-Chat, interaktive Briefings) dem Streaming-Modus zu und latenz-tolerante (Massenuebersetzung, Klassifikation, Report-Summarisierung) dem Batch-Modus - die Token-Kosten pro Token sind identisch, der Hebel ist die Nutzungsstruktur. Konfiguriere Batch-Aufgaben als Zeitplan-Workflows mit eigenem Budget-Cap, nie als manuelle Chat-Sessions, sonst blockieren sie Rate-Limits in Stosszeiten und zehren das Streaming-Budget mit auf.
Artefakt: Eine Aufgaben-Zuordnung (Aufgabentyp / Streaming oder Batch / Begründung / Budget-Cap-Empfehlung) als Architektur-Entscheidungsdokument.
Fallstricke:
- Latenz-tolerante Massenaufgaben im Chat-Streaming-Modus auszuführen blockiert Rate-Limits für interaktive Nutzer in Stoßzeiten — Mitigation: alle Batch-Aufgaben als Zeitplan-Workflows konfigurieren, niemals als manuell getriggerte Chat-Sessions.
- Batch-Workflows ohne eigenen Budget-Cap können das Streaming-Budget aufzehren, wenn beide aus demselben Workspace-Kontingent schöpfen — Mitigation: dedizierte Workflow-Level-Budgets für Batch vs. Streaming-Agenten definieren.
Anschluss: S-MK-029

### S-MK-029 Temperature-Einstellung und ihr Einfluss auf Token-Verbrauch und Qualität

Trigger: Ein Kollege hat den Kreativitäts-Regler (Temperature) im Content-Agenten auf Maximum gestellt, weil die Outputs "zu steif" wirkten — seitdem produziert der Agent wortreiche, abschweifende Antworten, die mehr Tokens verbrauchen und mehr Nachbearbeitung erfordern. (Quelle: sources/12 Q34)
Ziel: Den Zusammenhang zwischen Temperature-Einstellung, Output-Varianz, Token-Länge und Nachbearbeitungsaufwand verstehen und aufgabenspezifische Defaults etablieren.
Ergebnis: Eine Temperature-Empfehlungstabelle (Aufgabentyp → Temperature → Begründung) plus eine Anpassung des betroffenen Agenten.
Fähigkeit: Agenten-Konfiguration (Kreativitäts-Regler / Temperature), Modell-Katalog, Wissensordner für Output-Vergleiche.
Vorgehen:
1. Erkläre dem Team: hohe Temperature (0,8–1,0) erhöht Varianz und Wortreichtum — das führt zu längeren Outputs, mehr Input-Token für Nachbearbeitungs-Prompts und höherem Redaktionsaufwand; niedrige Temperature (0,1–0,3) erzeugt konsistente, präzisere und kürzere Antworten.
2. Lege aufgabenspezifische Defaults fest: Brainstorming/Slogan-Ideation → 0,8; Textpolitur/Brand-Voice → 0,4; strukturierte Datenextraktion/Klassifikation → 0,1; Standard-Content-Drafting → 0,5.
3. Teste den betroffenen Agenten mit Temperature 0,4 statt 1,0 an fünf Beispieltexten und vergleiche Output-Länge und Nachbearbeitungszeit — dokumentiere den Token-Unterschied.
4. Verankere die Temperature-Einstellung als expliziten Parameter in der Agenten-Konfiguration und erkläre dem Team, warum "steif" oft besser ist als "wortreich-unkontrolliert".
Vorlage: Temperature-Empfehlungstabelle:
1. Brainstorming/Slogan-Ideation -> 0,8.
2. Textpolitur/Brand-Voice -> 0,4.
3. Strukturierte Extraktion/Klassifikation -> 0,1.
4. Standard-Content-Drafting -> 0,5; je Aufgabentyp mit Begruendung.
Artefakt: Eine Temperature-Empfehlungstabelle (Aufgabentyp / empfohlene Temperature / Begründung / Token-Effizienz-Effekt) als Agenten-Konfigurationsregel.
Fallstricke:
- Temperature auf Maximum zu setzen, um "Kreativität" zu steigern, erhöht den Token-Verbrauch und den Redaktionsaufwand überproportional — Mitigation: "Kreativitätsproblem" zuerst im Prompt lösen (bessere Persona, reicherer Kontext), bevor an der Temperature gedreht wird.
- Temperature-Änderungen gelten global für den Agenten — bei gemischten Aufgabentypen in einem Agenten führt ein hoher Wert zu schlechten Klassifikationsergebnissen — Mitigation: Aufgaben mit stark unterschiedlichen Temperature-Anforderungen auf separate Agenten verteilen.
Empfehlung: Loese ein 'Kreativitaetsproblem' zuerst im Prompt (bessere Persona, reicherer Kontext), bevor du an der Temperature drehst - Maximum-Temperature erhoeht Token-Verbrauch und Redaktionsaufwand ueberproportional. Verteile Aufgaben mit stark unterschiedlichen Temperature-Anforderungen auf separate Agenten, da die Einstellung global gilt und ein hoher Wert die Klassifikationsqualitaet zerstoert.
Anschluss: S-MK-030

### S-MK-030 Multimodal-Kosten kalkulieren: Vision-Tasks im Marketing-Workflow

Trigger: Die Brand-Managerin will prüfen, ob KI Agentur-Entwürfe automatisch auf CD-Konformität prüfen kann — der erste Test mit einem Vision-Modell war überraschend teuer, und niemand weiß, wie Bild-Inputs abgerechnet werden. (Quelle: sources/12 Q30)
Ziel: Die Kostenstruktur von Vision-Tasks (Bild-Inputs) im Vergleich zu reinen Text-Tasks verstehen und einen kontrollierten Einsatz multimodaler Modelle für CD-Checks etablieren.
Ergebnis: Eine Kosten-Schätzung für den geplanten Vision-Workflow (Anzahl Bilder × Token-Äquivalent × EUR-Preis pro Token) plus eine Entscheidung über Modellwahl und Batch-Architektur.
Fähigkeit: Vision-fähige Modelle (Sonnet 4.6, GPT-5.2, Gemini 2.5 Flash), Workflow-Builder, Workflow-Budget-Cap, Modell-Katalog.
Vorgehen:
1. Halte fest: Bild-Inputs werden in Token-Äquivalente umgerechnet — ein typisches 1024×1024-Bild entspricht je nach Modell 1.000–2.000 Token; bei 50 Bildern pro Batch summiert sich das schnell auf 100.000 Input-Token pro Lauf.
2. Wähle für CD-Checks (Farben, Logo-Position, Abstände) Gemini 2.5 Flash als kosteneffizientes Vision-Modell — Präzisionsanforderungen sind hoch, aber die Aufgabe ist strukturiert, kein kreatives Reasoning nötig.
3. Erstelle einen Batch-Workflow (nicht interaktiven Chat), der Bilder sequenziell prüft und das Ergebnis als strukturierte Liste (Konform / Nicht Konform / Begründung) in eine Tabelle schreibt.
4. Setze einen Workflow-Budget-Cap pro Batch-Lauf und limitiere die Bildauflösung auf das für den Check nötige Minimum — höhere Auflösung erhöht Token-Kosten ohne Qualitätsgewinn für strukturierte Compliance-Checks.
Empfehlung: Waehle fuer strukturierte CD-Checks (Farben, Logo-Position, Abstaende) Gemini 2.5 Flash als kosteneffizientes Vision-Modell und rechne die Kosten vorab (ein Bild ~1.000-2.000 Token-Aequivalent, 50 Bilder ~100.000 Input-Token/Lauf). Fuehre den Check als Batch-Workflow mit Budget-Cap statt interaktivem Chat aus und komprimiere Bilder auf die noetige Mindestaufloesung - hoehere Aufloesung treibt die Token-Kosten ohne Qualitaetsgewinn fuer strukturierte Checks.
Artefakt: Eine Kosten-Schätzung für den Vision-Workflow (Bilder × Token-Äquivalent × EUR-Preis pro Token × EUR) plus eine konfigurierte Batch-Pipeline mit Budget-Cap.
Fallstricke:
- Vision-Tasks in hoher Auflösung zu senden erhöht den Token-Verbrauch massiv ohne proportionalen Qualitätsgewinn für strukturierte Checks — Mitigation: Bilder vor dem Upload auf die für die Aufgabe notwendige Mindestauflösung komprimieren.
- Interaktiven Vision-Chat statt Batch-Workflow zu nutzen bindet Sitzungsressourcen und erhöht durch Kontextkumulation die Folge-Input-Kosten — Mitigation: immer Workflow statt Chat für seriell verarbeitete Bilder.
Anschluss: S-MK-031

### S-MK-031 Kostenallokation auf Abteilungen: Chargeback-Modell mit Usage-Export aufbauen

Trigger: Die Finanzabteilung verlangt, dass die KI-Kosten des gemeinsamen Marketing-Workspaces auf die vier Sub-Teams (Content, Performance, Brand, CRM) aufgeteilt werden — bisher wird alles auf eine Kostenstelle gebucht und niemand fühlt sich für Einsparungen verantwortlich. (Quelle: sources/12 Q124)
Ziel: Ein Chargeback-Modell aufbauen, das KI-Kosten verursachungsgerecht auf Abteilungen verteilt und Kostenbewusstsein dezentralisiert.
Ergebnis: Eine monatliche Chargeback-Tabelle (Team / Token-Verbrauch / Modell-EUR-Preis / EUR-Anteil) exportierbar aus dem Usage-Export, plus eine Policy für die Kostenstellen-Zuordnung.
Fähigkeit: Usage-Export-CSV (per-User-Filter), Workspace-Admin (Gruppen-Konfiguration), Modell-Katalog (EUR-Preise).
Vorgehen:
1. Konfiguriere im Workspace-Admin User-Gruppen nach Sub-Team (Content, Performance, Brand, CRM) — der Usage-Export kann dann nach User gefiltert werden, und User-Gruppen ermöglichen die Aggregation.
2. Exportiere monatlich den Usage-Export, filtere nach User-Gruppe und multipliziere Token-Volumen je Modell mit dem jeweiligen EUR-Preis pro Token, um die EUR-Kosten pro Team zu erhalten.
3. Definiere die Chargeback-Policy: direkte Nutzungskosten werden verursachungsgerecht verteilt; Lizenzkosten (Seats) bleiben auf der zentralen Marketing-Kostenstelle.
4. Teile die Chargeback-Tabelle monatlich mit jedem Team-Lead und verknüpfe sie mit dem Team-Budget — Kostentransparenz erzeugt dezentrales Sparverhalten ohne zentrale Mikromanagement-Eingriffe.
Vorlage: Chargeback-Modell (Abteilungen):
1. User-Gruppen - im Workspace-Admin nach Sub-Team (Content/Performance/Brand/CRM).
2. Monatsexport - Usage nach Gruppe filtern, Token x EUR-Preis je Modell -> EUR/Team.
3. Policy - direkte Nutzungskosten verursachungsgerecht; Lizenz-Seats auf zentraler Kostenstelle.
4. Verteilung - Tabelle monatlich an Team-Leads, mit Team-Budget verknuepft.
Artefakt: Eine monatliche Chargeback-Tabelle (Team / Token-Volumen / Modell-Mix / EUR-Kosten / Budgetanteil %) als Controlling-Vorlage.
Fallstricke:
- User-Gruppen ohne klare Ownership-Zuordnung (ein User in zwei Teams) erzeugen Doppelzählungen im Chargeback — Mitigation: jeder User wird genau einer primären Kostenstellen-Gruppe zugeordnet, Cross-Team-Projekte werden manuell bereinigt.
- Chargeback ohne Erklärung führt zu Abwehr statt zu Kostenbewusstsein — Mitigation: die erste Chargeback-Runde mit einem erklärenden Team-Brief begleiten, der Einsparungshebel pro Team konkret benennt.
Empfehlung: Verteile nur die direkten Nutzungskosten verursachungsgerecht und belasse Lizenz-Seats auf der zentralen Marketing-Kostenstelle - so erzeugt Transparenz dezentrales Sparverhalten ohne zentrales Mikromanagement. Multipliziere immer Token-Menge mit dem Modell-EUR-Preis je Modell, nicht das absolute Token-Volumen, sonst verzerrt der Modell-Mix die Team-Zuordnung.
Anschluss: S-MK-032

### S-MK-032 Kostenanomalie-Analyse: Unerwarteter Ausgabenspike in 48 Stunden verstehen

Trigger: Das Workspace-Dashboard zeigt, dass die KI-Kosten in den letzten 48 Stunden um das Dreifache gestiegen sind — keine bekannte Kampagne erklärt den Spike, und das Team weiß nicht, wo es anfangen soll zu suchen. (Quelle: A-21)
Ziel: Eine strukturierte Anomalie-Diagnose durchführen, um die Ursache eines plötzlichen Kosten-Spikes innerhalb von 30 Minuten zu identifizieren, statt blind alle Workflows zu pausieren.
Ergebnis: Ein Diagnose-Protokoll (Zeitstempel / Quelle / Modell / Token-Volumen) mit identifizierter Ursache und einer gezielten Sofortmaßnahme.
Fähigkeit: Workspace-Dashboard (Zeitreihen-Filter), Usage-Export-CSV, per-User- und per-Workflow-Filter, Modell-Katalog.
Vorgehen:
1. Filtere den Usage-Export auf den 48-Stunden-Zeitraum und sortiere nach Token-Kosten (Modell-EUR-Preis beachten) — meist lässt sich der Spike auf einen einzelnen User, Agent oder Workflow eingrenzen.
2. Prüfe die Top-Ausgaben auf Modellklasse: ein einzelner Frontier-Modell-Lauf (Opus, €4,30/1M) kann denselben Kosteneffekt haben wie hundert Standard-Chats — der EUR-Preis pro Token ist entscheidend, nicht das absolute Token-Volumen.
3. Identifiziere, ob der Spike durch einen Loop-Fehler (unendliche Wiederholung), eine nicht geplante Frontier-Eskalation (Auto Mode) oder einen neu aktivierten Agenten ausgelöst wurde.
4. Implementiere die gezielte Sofortmaßnahme (Workflow pausieren / Modell herabstufen / Auto Mode deaktivieren) und dokumentiere die Ursache für die nächste Team-Retrospektive.
Empfehlung: Diagnostiziere einen Kosten-Spike anhand eines Protokolls (Zeitstempel/Quelle/Modell/Token-Volumen) und stoppe gezielt den Verursacher, statt als Erstreaktion den gesamten Workspace zu pausieren (das stoppt laufende Kampagnen unnoetig). Lies nie das absolute Token-Volumen allein, sondern immer Token-Menge x EUR-Preis pro 1M Tokens als Kosten-Metrik - ein Haiku-Lauf mit 1 Mio Token kostet weniger als ein Opus-Lauf mit 100.000 Token.
Artefakt: Ein Anomalie-Diagnose-Report (Spike-Quelle / Modell / Token-Volumen / Kostenanteil / Sofortmaßnahme) als Grundlage für das Post-Mortem.
Fallstricke:
- Den gesamten Workspace zu pausieren als Erstreaktion auf einen Spike stoppt laufende Kampagnen unnötig — Mitigation: erst die Ursache eingrenzen, dann gezielt den Verursacher stoppen, nicht alles auf einmal.
- Token-Volumen ohne EUR-Preis pro Token zu lesen täuscht über die Kosten-Hierarchie — ein Haiku-Lauf mit 1 Million Token kostet weniger als ein Opus-Lauf mit 100.000 Token — Mitigation: immer Token-Menge × EUR-Preis pro 1M Tokens als Kosten-Metrik verwenden, nie absolutes Token-Volumen allein.
Anschluss: S-MK-033

### S-MK-033 Modell-Fallback-Strategie: Was tun, wenn das bevorzugte Modell nicht verfügbar ist?

Trigger: Mitten in einer zeitkritischen Kampagnen-Produktion zeigt Langdock an, dass Sonnet 4.6 aufgrund von Provider-Ausfällen temporär nicht verfügbar ist — das Team ist paralysiert und weiß nicht, auf welches Modell es ausweichen soll. (Quelle: sources/12 Q28)
Ziel: Eine vorab definierte Modell-Fallback-Strategie etablieren, die bei Ausfällen sofort greift, ohne Qualitätskompromisse zu erzwingen oder Kosten unkontrolliert zu erhöhen.
Ergebnis: Ein Fallback-Protokoll (Primärmodell → Fallback-Modell → Begründung → Einschränkungen) für die fünf wichtigsten Marketing-Aufgabentypen.
Fähigkeit: Modell-Katalog (Provider-Diversität), manuelle Modellwahl, Wissensordner für Fallback-Policy.
Vorgehen:
1. Baue die Fallback-Strategie auf Provider-Diversität: Anthropic-Ausfall → OpenAI-Äquivalent; Google-Ausfall → Anthropic oder OpenAI; nutze Langdocks modellagnostische Architektur als Absicherung gegen Single-Provider-Abhängigkeit.
2. Definiere aufgabenspezifische Fallbacks: Brand-Voice-Content (Sonnet 4.6 → GPT-5.4, €2,36/1M, mit expliziter Brand-Voice-Anweisung); Bulk-Drafts (Gemini 2.5 Flash → Haiku 4.5, €0,86/1M); Synthese (Opus 4.8 → Sonnet 4.6, mit akzeptiertem Qualitätsabstrich).
3. Dokumentiere Einschränkungen des Fallback-Modells explizit: GPT-5.4 hält Brand-Voice-Nuancen weniger präzise als Claude — das Team muss bei einem Fallback mit erhöhtem Redaktionsaufwand rechnen.
4. Lege das Fallback-Protokoll im Wissensordner ab und referenziere es im Team-Onboarding, damit bei einem Ausfall kein zeitraubendes Suchen beginnt.
Vorlage: Modell-Fallback-Protokoll (5 Aufgabentypen):
1. Je Aufgabentyp - Primaermodell -> Fallback-Modell -> Begruendung -> Einschraenkungen.
2. Kostenwarnung - bei Fallback auf teureres Modell temporaere Budget-Anpassung.
3. Ablage - als angepinnter Wissensordner-Eintrag im Content-Agenten (erste Antwort-Option).
Artefakt: Ein Fallback-Protokoll (Aufgabentyp / Primärmodell / Fallback / EUR-Preis-Delta / Einschränkungen) zur Ablage im Wissensordner als Notfallplan.
Fallstricke:
- Ein Fallback auf ein teureres Modell (z.B. von Flash auf Sonnet) ohne Budget-Anpassung kann das Workflow-Budget in der Ausfallperiode sprengen — Mitigation: Fallback-Protokoll enthält immer eine Kostenwarnung und eine temporäre Budget-Anpassungs-Empfehlung.
- Das Fallback-Protokoll im Notfall suchen zu müssen kostet Zeit — Mitigation: das Protokoll als angepinnter Wissensordner-Eintrag im Content-Agenten als erste Antwort-Option hinterlegen.
Empfehlung: Nimm in jedes Fallback-Protokoll eine Kostenwarnung und eine temporaere Budget-Anpassungs-Empfehlung auf - ein Fallback von Flash auf Sonnet kann sonst das Workflow-Budget in der Ausfallperiode sprengen. Hinterlege das Protokoll als angepinnten Wissensordner-Eintrag im Content-Agenten, damit es im Notfall nicht erst gesucht werden muss.
Anschluss: S-MK-034

### S-MK-034 Tier-Upgrade-Entscheidung: Wann Standard zu Max wechseln?

Trigger: Zwei Mitarbeitende des Marketing-Teams stoßen regelmäßig an die Grenzen des Standard-Tarifs — Workflows mit mehr als einer bestimmten Anzahl Knoten werden blockiert und komplexe RAG-Szenarien laufen fehlerhaft, obwohl die meisten der zwölf Teammitglieder diese Features nie brauchen. (Quelle: sources/12 Q122)
Ziel: Die Tier-Upgrade-Entscheidung (Standard → Max) auf objektivierbaren Kriterien stützen, statt pauschal alle auf Max hochzustufen oder Engpässe zu tolerieren.
Ergebnis: Eine Upgrade-Entscheidungsmatrix mit konkreten Schwellenwerten (Workflow-Knoten-Limit, RAG-Volumen, Nutzeranzahl) plus eine Jahreskosten-Rechnung für das gemischte Tier-Modell.
Fähigkeit: Pricing-Tiers (Standard €25 / Max €99 / Enterprise), Usage-Export, Workflow-Builder (Max-Feature-Grenzen).
Vorgehen:
1. Identifiziere konkret, welche Features im Standard-Tarif limitiert sind und von welchen Nutzern sie gebraucht werden — nicht jede Einschränkung rechtfertigt einen Tier-Wechsel für alle.
2. Prüfe die drei Upgrade-Schwellen: (a) Workflows mit >10 Knoten oder Loop-Nodes werden benötigt → Max-Kandidat; (b) RAG-Szenarien mit >50.000 Token pro Abfrage → Max-Kandidat; (c) SSO, BYOK, Audit-Logs → Enterprise, nicht Max.
3. Rechne das gemischte Modell: 2 Nutzer auf Max (€99/Monat) + 10 Nutzer auf Standard (€25/Monat) = €448/Monat = €5.376/Jahr — vs. pauschal Max für alle: €1.188/Monat = €14.256/Jahr.
4. Dokumentiere die Entscheidung mit einem Revisionsterm (6 Monate): wenn weitere Nutzer auf Max-Features angewiesen sind, schrittweise upgraden statt auf einmal.
Empfehlung: Triff den Standard-vs-Max-Upgrade-Entscheid an konkreten Schwellenwerten (Workflow-Knoten-Limit, RAG-Volumen, Nutzeranzahl) und einer Jahreskosten-Rechnung fuer ein gemischtes Tier-Modell, statt 80 % des Teams pauschal auf Max zu vervierfachen. Gleiche die Enterprise-Feature-Liste (SSO, BYOK, Audit-Logs) aktiv gegen den Compliance-Bedarf ab, da ein unterschaetzter Enterprise-Bedarf sonst ein spaeteres zweites Upgrade erzwingt.
Artefakt: Eine Jahreskosten-Gegenüberstellung (3 Szenarien) plus eine begründete Tier-Empfehlung pro Nutzergruppe mit Revisionsterm.
Fallstricke:
- Max-Features wie komplexe Workflows für alle freizuschalten erzeugt keine Mehrkosten bei ungenutzten Features der Standard-Nutzer, aber vervierfacht die Lizenzkosten für 80 % des Teams — Mitigation: Feature-Bedarf vor Tier-Entscheidung pro Nutzer explizit erheben, nicht annahme-basiert hochstufen.
- Unterschätzen der Enterprise-Anforderungen (SSO, BYOK, Audit-Logs) führt zu einem späteren zweiten Upgrade — Mitigation: die Enterprise-Feature-Liste bei jedem Tier-Gespräch aktiv gegen den Compliance-Bedarf abgleichen.
Anschluss: S-MK-035

### S-MK-035 Token-Counting-Tool nutzen: Prompt-Länge vor dem Absenden schätzen

Trigger: Vor einem teuren Batch-Lauf mit einem Frontier-Modell will der Marketing-Ops-Lead wissen, wie viele Token der geplante Prompt mit den angehängten Dokumenten tatsächlich hat — um die Kosten vorab zu kalkulieren, bevor das Budget festgelegt wird. (Quelle: sources/12 Q23)
Ziel: Den tatsächlichen Token-Umfang eines Prompts (System-Prompt + Kontext + User-Input) vor der Ausführung transparent machen, um Kostenüberraschungen bei hochvolumigen oder teuren Modell-Läufen zu vermeiden.
Ergebnis: Eine Token-Schätzung für den geplanten Batch-Lauf (Prompt-Komponenten aufgeschlüsselt) plus ein Kosten-Kalkul (Token-Menge × EUR-Preis pro 1M Tokens) als Entscheidungsgrundlage.
Fähigkeit: Tokenisierungs-Schätzung (Faustregeln: ~750 Wörter = ~1.000 Token für Deutsch), Modell-Katalog (Input-Preis), Usage-Export für Referenzwerte.
Vorgehen:
1. Schätze die Token-Länge der Prompt-Komponenten separat: System-Prompt (typisch 500–2.000 Token), angehängte Dokumente (Faustregel: deutsche Texte ~1,2 Token/Wort), User-Frage (typisch 50–200 Token).
2. Berechne den Total-Input pro Request: addiere alle Komponenten und multipliziere mit dem Modell-EUR-Preis und dem Basis-Preis — für 100 Batch-Requests mit je 5.000 Input-Token auf Sonnet 4.6 (€2,58) ergibt das ~€1,35 Input-Kosten.
3. Berücksichtige auch Output-Tokens: bei Zusammenfassungen oder Klassifikationen ist der Output kurz; bei vollständigen Textentwürfen kann er länger als der Input sein.
4. Nutze die Kalkulation als Freigabe-Schwelle: Batch-Läufe über €10 benötigen eine begründete Modell-Wahl; über €50 eine explizite Management-Freigabe.
Empfehlung: Schaetze den Batch-Lauf token-genau, indem du die Prompt-Komponenten aufschluesselst und Token x EUR-Preis pro 1M rechnest - wende auf deutsche Texte den Faktor 1,2 auf englische Token-Benchmarks an (deutsche Texte haben ~20 % hoehere Token-Dichte). Schaetze Output-Token immer separat und addiere sie zum Input, da Output-Token typischerweise teurer abgerechnet werden und ihr Weglassen die Kalkulation bei textgenerierenden Aufgaben erheblich verfaelscht.
Artefakt: Eine Token-Aufschlüsselung (Komponente / Token-Schätzung / EUR-Kosten) plus eine Gesamtkosten-Kalkulation als Freigabe-Vorlage.
Fallstricke:
- Deutschsprachige Texte haben eine höhere Token-Dichte als englischsprachige (ca. 20 % mehr Token/Wort) — Mitigation: bei deutschen Prompts immer den Faktor 1,2 auf englische Token-Schätzungen anwenden, niemals englische Benchmarks unkorrigiert übernehmen.
- Output-Kosten zu ignorieren verfälscht die Kalkulation erheblich bei textgenerierenden Aufgaben — Mitigation: Output-Token immer separat schätzen und zum Input addieren, da Output-Token typischerweise teurer als Input-Token abgerechnet werden.
Anschluss: S-MK-036

### S-MK-036 Modell-Latenz vs. Kostentradeoff für interaktive Marketing-Agenten

Trigger: Der neue interaktive Brand-Agent soll auf der Messe in Echtzeit auf Besucher-Fragen antworten — das Team hat Sonnet 4.6 gewählt wegen der Qualität, aber die Antwortzeiten von 8–12 Sekunden sind für den Messestand zu langsam. (Quelle: sources/12 Q16)
Ziel: Den Tradeoff zwischen Modell-Latenz und Antwortqualität für zeitkritische interaktive Anwendungen bewerten und das Modell mit dem besten Latenz-Qualitäts-Kosten-Verhältnis wählen.
Ergebnis: Eine Latenz-Qualitäts-Kosten-Matrix für drei Modellklassen (Flash, Sonnet, GPT-5.2) mit einer begründeten Empfehlung für den Messestand-Agenten.
Fähigkeit: Modell-Katalog, manuelle Modellwahl, Agenten-Konfiguration, Wissensordner für FAQ-Basis.
Vorgehen:
1. Miss die tatsächliche Time-to-First-Token (TTFT) für die drei Kandidaten auf typischen Messe-Fragen — Light-Modelle (Flash/Haiku) liefern typischerweise TTFT unter 1 Sekunde; Sonnet 4.6 typisch 3–5 Sekunden; Opus 4.8 oft 8–15 Sekunden.
2. Bewerte die Qualitätsanforderungen für den Use Case: Messefragen sind oft FAQ-artig und gut durch den Wissensordner abgedeckt — ein Haiku 4.5-Modell mit reichem Wissensordner-Kontext kann hier qualitativ besser sein als Sonnet ohne Kontext.
3. Kalkuliere den Kostenvorteil: tausend Messe-Interaktionen auf Haiku 4.5 (€0,86) kosten ca. ein Siebentel von Sonnet 4.6 (€2,58) — die Latenz-Optimierung ist hier gleichzeitig eine Kosten-Optimierung.
4. Reserviere Sonnet für komplexe Folgefragen oder Eskalations-Pfade (z.B. technische Detail-Anfragen), die der Haiku-Agent mit "Weitere Details finden Sie beim Fachberater" weitergeleitet hat.
Empfehlung: Waehle den Messestand-Agenten ueber eine Latenz-Qualitaets-Kosten-Matrix (Flash/Sonnet/GPT-5.2) - fuer Echtzeit-Interaktion am Stand zaehlt niedrige Latenz, aber validiere die Qualitaet des schnellen Modells (Haiku) vorab an 20 repraesentativen Messefragen. Fuehre die Latenz-Tests unter simulierter Gleichzeitigkeit (mehrere parallele Anfragen) durch, nicht nur seriell, da Buero-Messungen die reale Messe-Latenz bei hoher Parallelnutzung unterschaetzen.
Artefakt: Eine Latenz-Qualitäts-Kosten-Matrix (Modell / TTFT / EUR-Preis / Qualitätsbewertung) plus eine Hybrid-Architektur-Empfehlung (Standard-Fragen vs. Eskalations-Pfad).
Fallstricke:
- Latenz-Messungen im Büro unterschätzen die tatsächliche Latenz bei hoher gleichzeitiger Nutzung auf der Messe — Mitigation: Latenz-Tests unter simulierter Gleichzeitigkeit (mehrere parallele Anfragen) durchführen, nicht nur seriell.
- Ein reiner Latenz-Fokus ohne Qualitätsprüfung führt dazu, dass der Agent auf dem Messestand falsche oder unvollständige Antworten liefert — Mitigation: die Qualität des Haiku-Agenten an 20 repräsentativen Messefragen vorab validieren.
Anschluss: S-MK-037

### S-MK-037 Fine-Tuning vs. Prompting: Kostenvergleich für wiederkehrende Brand-Voice-Aufgaben

Trigger: Nach sechs Monaten intensiver Prompt-Arbeit für einen Brand-Voice-Agenten überlegt der Marketing-Direktor, ob ein Fine-Tuned-Modell günstiger und konsistenter wäre als das aufwändige System-Prompt-Engineering mit langen Style-Guides im Wissensordner. (Quelle: sources/12 Q34)
Ziel: Eine fundierte Make-or-Buy-Entscheidung zwischen Fine-Tuning und Prompt-Engineering für wiederkehrende Brand-Voice-Aufgaben treffen, basierend auf Kosten, Konsistenz und Wartungsaufwand.
Ergebnis: Eine strukturierte Entscheidungsmatrix (Fine-Tuning vs. Prompting nach Kosten, Qualität, Flexibilität, Wartung) plus eine klare Empfehlung für den konkreten Use Case.
Fähigkeit: Wissensordner (als Prompting-Lösung), Modell-Katalog, BYOC-Option für Fine-Tuned-Modelle.
Vorgehen:
1. Kalkuliere die Prompting-Kosten: langer System-Prompt (2.000 Token) + Style-Guide aus Wissensordner (3.000 Token) = 5.000 Input-Token-Overhead pro Request; bei 500 täglichen Requests auf Sonnet 4.6 sind das ~€2,06/Tag nur für den Kontext-Overhead.
2. Halte fest: Fine-Tuning ist via Langdock nicht nativ verfügbar — es erfordert BYOC (Bring Your Own Compute) mit einem extern fine-getunten Modell; der Aufwand (Datenvorbereitung, Training, Deployment) ist erheblich.
3. Empfehle für die meisten Marketing-Use-Cases die Prompting-Lösung: niedrigere Rüstkosten, sofortige Anpassbarkeit bei Brand-Änderungen und keine Abhängigkeit von externem ML-Engineering.
4. Fine-Tuning ist nur dann wirtschaftlich, wenn: (a) das Prompt-Overhead >50 % der Input-Kosten ausmacht, (b) täglich >5.000 Requests ausgeführt werden und (c) die Brand-Voice sich selten ändert.
Empfehlung: Entscheide Fine-Tuning vs. Prompting ueber eine Total Cost of Ownership ueber 12 Monate (Datenvorbereitung + Training + Deployment + Inferenz), nicht ueber laufende Inferenzkosten allein - die Fine-Tuning-Einmalkosten werden sonst vergessen. Waehle Prompting, wenn sich die Brand-Voice oefter als quartalsweise aendert; ein fine-getuntes Modell muss bei jeder Aenderung neu trainiert werden und ist dann strukturell teurer und traeger.
Artefakt: Eine Entscheidungsmatrix (Kriterium / Fine-Tuning / Prompting / Gewinner) plus eine Break-Even-Berechnung (ab welchem Request-Volumen würde Fine-Tuning günstiger).
Fallstricke:
- Die Einmalkosten für Fine-Tuning (Datenvorbereitung, Training, Deployment) werden beim Kostenvergleich oft vergessen — Mitigation: immer Total Cost of Ownership über 12 Monate rechnen, nicht nur laufende Inferenzkosten.
- Ein fine-getuntes Modell muss bei jeder Brand-Voice-Änderung neu trainiert werden — Mitigation: wenn die Brand-Voice sich häufiger als quartalsweise ändert, ist Prompting strukturell flexibler und günstiger.
Anschluss: S-MK-038

### S-MK-038 GPT-5 via BYOC vs. Langdock-Standard: Wann lohnt sich der Wechsel?

Trigger: Das Content-Team hat für einen spezifischen analytischen Use Case (strukturierte JSON-Outputs für Kampagnen-Reports) bessere Ergebnisse mit GPT-5.5 als mit Sonnet 4.6 erzielt — und fragt, ob es dieses Modell über BYOC günstiger nutzen kann als über Langdock-Standard. (Quelle: sources/12 Q117)
Ziel: Den wirtschaftlichen und operativen Vorteil von BYOC (Bring Your Own Compute) für einen spezifischen Hochleistungs-Use-Case gegenüber der Standard-Langdock-Abrechnung bewerten.
Ergebnis: Eine BYOC-Entscheidungsvorlage mit Break-Even-Berechnung (monatliches Request-Volumen, bei dem BYOC günstiger wird) plus eine Empfehlung an IT und Einkauf.
Fähigkeit: BYOC-Option (Enterprise-Tier), Usage-Export für Volumenmessung, Modell-Katalog (EUR-Preise), BYOK als Vergleichsalternative.
Vorgehen:
1. Miss das tatsächliche monatliche Request-Volumen für den spezifischen Use Case über den Usage-Export — Entscheidungen ohne Volumendaten führen zu falschen Break-Even-Kalkulationen.
2. Vergleiche die Kostenwege: Langdock-Standard (GPT-5.5 zu €4,72/1M Input inkl. rund 10% API-Aufschlag) vs. BYOC (direkter Provider-Preis ohne den 10%-Aufschlag, aber mit BYOC-Setup-Aufwand und Enterprise-Tier-Lizenzkosten).
3. Halte fest: BYOC erfordert Enterprise-Tier — wenn der aktuelle Tarif Standard oder Max ist, kommen Lizenz-Upgrade-Kosten hinzu, die in die Break-Even-Berechnung einfließen müssen.
4. Empfehle BYOC nur, wenn (a) Enterprise-Tier bereits vorhanden, (b) Use-Case-Volumen >20.000 Requests/Monat für das teure Modell und (c) IT-Kapazität für Key-Management vorhanden ist.
Empfehlung: Berechne fuer BYOC das monatliche Request-Volumen, ab dem es guenstiger wird, und bezieh die vollstaendige Lizenz-Kostenstruktur (Seats x Enterprise-Tier-Preis) ein - eine Kalkulation ohne den Enterprise-Aufpreis unterschaetzt die BYOC-Gesamtkosten erheblich. Evaluiere die IT-Kapazitaet fuer API-Key-Management und -Rotation als harte Voraussetzung vor der Entscheidung, da fehlende Kapazitaet Ausfallrisiken erzeugt.
Artefakt: Eine BYOC-Entscheidungsvorlage (Kostenszenario A vs. B / Break-Even-Monat / Empfehlung) mit einer klaren Schwelle für die IT-Eskalation.
Fallstricke:
- BYOC-Kalkulationen, die den Enterprise-Tier-Upgrade vergessen, unterschätzen die tatsächlichen BYOC-Gesamtkosten erheblich — Mitigation: immer die vollständige Lizenz-Kostenstruktur (Seats × Tier-Preis) in den Vergleich einbeziehen.
- BYOC bedeutet, dass die IT den API-Key verwaltet und rotiert — wenn diese Kapazität fehlt, entstehen Ausfallrisiken — Mitigation: IT-Kapazität für Key-Management als Voraussetzung vor der BYOC-Entscheidung evaluieren.
Anschluss: S-MK-039

### S-MK-039 Performance-Benchmarking: Modelle an realen Marketing-Aufgaben messen

Trigger: Vor der jährlichen Budgetplanung will der Marketing-Direktor objektiv belegen, welche Modelle für das Team den besten Output-pro-Euro liefern — bisher sind alle Modell-Entscheidungen auf Einzelerfahrungen basiert, nicht auf einem reproduzierbaren Benchmark. (Quelle: A-21)
Ziel: Einen internen Modell-Benchmark aufbauen, der aufgabenspezifische Qualität und Kosten misst und eine jährlich aktualisierbare Grundlage für Modell-Entscheidungen liefert.
Ergebnis: Ein Benchmark-Report (5 Aufgabentypen × 3 Modelle × Qualitäts- und Kostenscores) als dauerhafter Wissensordner-Eintrag mit Aktualisierungsroutine.
Fähigkeit: Manuelle Modellwahl, Wissensordner für Benchmark-Aufgaben und Bewertungsraster, Usage-Export für Kostenmessung.
Vorgehen:
1. Definiere 5 Marketing-Benchmark-Aufgaben aus dem realen Aufgabenportfolio (Brand-Voice-Text, SEO-Headline-Varianten, Briefing-Erstellung, Daten-Klassifikation, Strategie-Zusammenfassung) und lege sie als wiederholbare Testfälle im Wissensordner ab.
2. Führe alle 5 Aufgaben auf den 3 zu vergleichenden Modellen durch, messe die tatsächlich verbrauchten Token per Usage-Export und berechne den Kostenwert pro Aufgabe.
3. Bewerte jeden Output nach einem definierten Qualitätsraster (Relevanz, DACH-Sprachqualität, Strukturtreue, Faktentreue) auf einer 1-5-Skala — mindestens ein Muttersprachler bewertet blind.
4. Berechne den "Qualität-pro-EUR"-Score: Qualitätspunkte / tatsächliche Kosten EUR und erstelle das Benchmark-Ranking; aktualisiere es quartalsweise nach Modell-Releases.
Vorlage: Modell-Benchmark-Report (dauerhaft):
1. Setup - 5 Aufgabentypen x 3 Modelle x Qualitaets- und Kostenscores.
2. Methodik - 2 unabhaengige Bewerter, 3 Wiederholungen pro Aufgabe, Blind-Bewertung.
3. Ablage - datierter Wissensordner-Eintrag + Quartals-Aktualisierungsroutine im Team-Kalender.
Artefakt: Ein Benchmark-Ranking (Modell / Aufgabe / Qualitäts-Score / Kosten-EUR / Qualität-pro-EUR) plus eine Empfehlung für die nächste Budgetplanung.
Fallstricke:
- Einen Benchmark mit nur einer Aufgabe oder einem einzigen Bewerter als Grundlage für die Jahresplanung zu nehmen ist statistisch nicht belastbar — Mitigation: mindestens 5 Aufgabentypen, 2 unabhängige Bewerter und 3 Wiederholungen pro Aufgabe.
- Benchmark-Ergebnisse ohne Datum im Wissensordner abzulegen und bei neuen Modell-Releases nicht zu aktualisieren macht den Benchmark wertlos — Mitigation: Benchmark-Datum verpflichtend im Dateinamen und eine Quartals-Aktualisierungs-Aufgabe im Team-Kalender.
Empfehlung: Stuetze die Jahresplanung nie auf einen Benchmark mit nur einer Aufgabe oder einem Bewerter - nutze mindestens 5 Aufgabentypen, 2 unabhaengige Bewerter und 3 Wiederholungen pro Aufgabe fuer statistische Belastbarkeit. Versieh den Benchmark verpflichtend mit Datum im Dateinamen und verankere eine Quartals-Aktualisierung, sonst wird er bei neuen Modell-Releases wertlos.
Anschluss: S-MK-040

### S-MK-040 API-Nutzungs-Aufschlag verstehen und im Budget einplanen

Trigger: Das Controlling meldet, dass die Langdock-Rechnung 10 % höher ist als die kalkulierten Token-Kosten aus dem Modell-Katalog — niemand weiß, woher die Differenz kommt, und die Jahreskalkulation muss korrigiert werden. (Quelle: sources/12 Q120)
Ziel: Den Langdock-API-Nutzungsaufschlag von 10 % auf externe Modell-Token transparent erklären, in zukünftige Budgets einplanen und einen Abgleich mit der tatsächlichen Rechnung aufsetzen.
Ergebnis: Eine korrigierte Budget-Kalkulation mit eingepreistem 10 %-Aufschlag sowie ein Abgleich-Template für die monatliche Rechnungsprüfung.
Fähigkeit: Usage-Export-CSV, Modell-Katalog (EUR-Preise + Aufschlag-Struktur), Workflow-Budget-Caps.
Vorgehen:
1. Erkläre dem Team die Aufschlag-Struktur: der 10 %-Aufschlag gilt auf externe Modell-Token bei API-Nutzung (nicht bei Standard-Chat-Abrechnung über Langdock-Pakete) — er deckt Langdocks Routing-Infrastruktur und garantierte Verfügbarkeits-SLAs.
2. Prüfe im Usage-Export, welche Kostenanteile API-basiert und welche paket-basiert abgerechnet werden — der Aufschlag gilt nur für den API-Anteil.
3. Passe die Kostenkalkulation an: Token-Kosten × EUR-Preis pro Token × 1,10 für alle API-genutzten Modelle; dokumentiere den Faktor explizit in jeder Kalkulations-Vorlage.
4. Erstelle ein monatliches Abgleich-Template: Langdock-Rechnung / kalkulierte Basiskosten / erwarteter Aufschlag / Abweichung — eine Abweichung über 5 % ist ein Hinweis auf nicht geplante API-Nutzung.
Vorlage: Budget-Kalkulation mit Langdock-Aufschlag:
1. 10-%-Aufschlag - in jede Kalkulation als transparente Infrastrukturkosten einpreisen und ausweisen.
2. Abgleich-Template - monatliche Rechnungspruefung (kalkuliert vs. abgerechnet).
3. Segmentierung - nach Abrechnungstyp (API-basiert vs. Paket-basiert) trennen.
Artefakt: Ein Abgleich-Template (Kalkulierte Basiskosten / API-Aufschlag 10 % / Gesamt-Soll / Tatsächliche Rechnung / Abweichung EUR/%) plus eine erklärende Notiz für das Controlling.
Fallstricke:
- Den Aufschlag als versteckte Gebühr zu kommunizieren statt als transparente Infrastrukturkosten erzeugt Misstrauen beim Controlling — Mitigation: den Aufschlag proaktiv in jeder Kalkulation ausweisen und dokumentieren, was er abdeckt.
- Nicht zwischen API-basierter und Paket-basierter Abrechnung zu unterscheiden führt zu falschen Gesamtkalkulationen — Mitigation: den Usage-Export nach Abrechnungstyp segmentieren, bevor der Aufschlag angewendet wird.
Empfehlung: Weise den 10-%-Aufschlag proaktiv in jeder Kalkulation als transparente Infrastrukturkosten aus und dokumentiere, was er abdeckt - als versteckte Gebuehr kommuniziert, erzeugt er Misstrauen beim Controlling. Segmentiere den Usage-Export nach Abrechnungstyp (API vs. Paket), bevor du den Aufschlag anwendest, sonst entstehen falsche Gesamtkalkulationen.
Anschluss: S-MK-041

### S-MK-041 Over-Quota-Situation vermeiden: Extra-Usage-Aktivierung bewusst steuern

Trigger: Am letzten Wochentag vor dem Monatsabschluss kündigt Langdock an, dass das Premium-Modell-Kontingent aufgebraucht ist und fragt, ob "Extra Usage" aktiviert werden soll — das Team weiß nicht, was das kostet und klickt im Zweifel auf Ja. (Quelle: sources/12 Q121)
Ziel: Die Extra-Usage-Funktion (Nutzung über das inkludierte Kontingent hinaus) bewusst steuern, ihre Kostenauswirkungen verstehen und eine Policy aufsetzen, die unbeabsichtigte Aktivierung verhindert.
Ergebnis: Eine Extra-Usage-Policy (wer darf aktivieren, unter welchen Bedingungen, mit welchem sofortigen Budget-Cap) plus eine Kalkulation der Over-Quota-Kosten für das aktuelle Szenario.
Fähigkeit: Extra-Usage-Funktion, Workspace-Budget-Cap, Warn-Schwellen (50/75/90%), Modell-Katalog.
Vorgehen:
1. Erkläre dem Team: Extra-Usage aktiviert die Nutzung kostenpflichtiger Token über das inkludierte Monatskontingent hinaus — der Over-Quota-Markup kann je nach Modell und Paket erheblich sein; nie blind aktivieren ohne Kostenprüfung.
2. Definiere die Aktivierungs-Policy: Extra-Usage darf nur der Marketing-Operations-Lead oder der Workspace-Admin aktivieren; Teamnutzer erhalten keine Selbst-Aktivierungs-Rechte.
3. Setze sofort nach Aktivierung einen dedizierten Extra-Usage-Budget-Cap (z.B. €50 maximal), damit der Over-Quota-Bereich nicht unbegrenzt läuft.
4. Plane mittelfristig: wenn Extra-Usage regelmäßig nötig wird, ist das ein Signal, das Basis-Kontingent (Paket-Upgrade) zu erhöhen statt strukturell im Over-Quota-Modus zu arbeiten.
Vorlage: Extra-Usage-Policy:
1. Aktivierungsrecht - auf eine benannte Person beschraenkt, im Workspace-Admin konfiguriert.
2. Bedingungen - wer darf aktivieren, unter welchen Umstaenden.
3. Sofort-Cap - bei jeder Aktivierung als erster Schritt setzen.
4. Kalkulation - Over-Quota-Kosten fuer das aktuelle Szenario.
Artefakt: Eine Extra-Usage-Policy (Aktivierungsberechtigung / Notfall-Kriterien / Budget-Cap / Dokumentationspflicht) plus eine Kalkulation der Over-Quota-Kosten für das aktuelle Szenario.
Fallstricke:
- Extra-Usage ohne sofortigen Budget-Cap läuft unbegrenzt bis zum manuellen Stopp — Mitigation: Cap immer als ersten Schritt bei der Aktivierung setzen, nicht als nachgelagerten Schritt.
- Extra-Usage-Aktivierungsrechte für alle Teammitglieder erzeugen unkontrollierte Kostenpunkte — Mitigation: Aktivierungsrecht explizit auf eine benannte Person beschränken und im Workspace-Admin entsprechend konfigurieren.
Empfehlung: Setze den Budget-Cap als ersten Schritt bei der Aktivierung, nicht nachgelagert - Extra-Usage laeuft sonst unbegrenzt bis zum manuellen Stopp. Beschraenke das Aktivierungsrecht explizit auf eine benannte Person und konfiguriere das im Workspace-Admin, da Aktivierungsrechte fuer alle unkontrollierte Kostenpunkte erzeugen.
Anschluss: S-MK-042

### S-MK-042 Günstige Experimente vom produktiven Budget trennen: Sandbox-Strategie

Trigger: Ein Marketingteam testet aggressiv neue Agenten-Konfigurationen und Prompt-Experimente direkt im produktiven Workspace — die Usage-Leiste zeigt erhöhte Kosten, aber es ist unklar, wie viel davon produktive Arbeit und wie viel Experiment-Overhead ist. (Quelle: A-22)
Ziel: Experiment-Budget von produktivem Budget trennen, sodass Lernkosten transparent sind und das produktive Budget nicht durch fehlgeleitete Tests aufgebraucht wird.
Ergebnis: Eine Sandbox-Strategie (separates Experiment-Projekt mit eigenem Budget-Cap, Namenskonvention und Rückkoppelungs-Prozess) als Team-Governance-Dokument.
Fähigkeit: Workspace-Projekte (als Sandbox-Container), Workflow-Level-Budget, Usage-Export (per-Projekt-Filter), Warn-Schwellen.
Vorgehen:
1. Erstelle ein dediziertes Sandbox-Projekt ("SANDBOX – Experimente") mit eigenem Workflow-Budget-Cap (z.B. €30/Monat) — alle Experimente, Prompt-Tests und neuen Agenten-Konfigurationen laufen ausschließlich hier.
2. Definiere die Namenskonvention: alle Sandbox-Agenten und Workflows tragen das Präfix "EXP-" — so sind Experimente im Usage-Export sofort von produktiven Prozessen unterscheidbar.
3. Weise das günstigste passende Modell für Experimente zu (Haiku 4.5 oder Gemini 2.5 Flash) — Experimente validieren Prompt-Logik, nicht Frontier-Modell-Qualität; teure Modelle erst im Produktiv-Modus einsetzen.
4. Etabliere einen monatlichen "Experiment-Review": was hat funktioniert und wird in den produktiven Workspace übernommen, was wird verworfen? Nur validierte Ansätze migrieren.
Vorlage: Sandbox-Strategie (Experimente):
1. Separates Experiment-Projekt - eigener Budget-Cap (~EUR 30/Monat, quartalsweise anpassen).
2. Namenskonvention + Rueckkoppelungs-Prozess - was wird in Produktion uebernommen.
3. Regel - einziger erlaubter Ort fuer neue Agenten-Konfigurationen.
Artefakt: Ein Sandbox-Governance-Dokument (Projektstruktur / Namenskonvention / Modell-Policy / Review-Zyklus) als Wissensordner-Eintrag für das Team-Onboarding.
Fallstricke:
- Experimente im produktiven Workspace zu beginnen "weil es schneller geht" und dann zu vergessen, sie zu bereinigen, schleust dauerhaft suboptimale Agenten in den produktiven Betrieb — Mitigation: Sandbox-Projekt als einzigen erlaubten Ort für neue Agenten-Konfigurationen etablieren, kein direkter Produktiv-Start.
- Das Sandbox-Budget zu niedrig zu setzen bremst legitimes Lernen und verleitet dazu, doch wieder im Produktiv-Workspace zu experimentieren — Mitigation: €30/Monat als Richtwert, aber quartalsweise an tatsächlichen Experimentier-Bedarf anpassen.
Empfehlung: Etabliere das Sandbox-Projekt als einzigen erlaubten Ort fuer neue Agenten-Konfigurationen - im produktiven Workspace begonnene und vergessene Experimente schleusen dauerhaft suboptimale Agenten in den Betrieb. Setze das Sandbox-Budget nicht zu niedrig (~EUR 30/Monat als Richtwert, quartalsweise anpassen), da zu enge Limits legitimes Lernen bremsen und zurueck ins Produktiv-Experimentieren verleiten.
Anschluss: S-MK-043

### S-MK-043 Modell-Nutzungs-Transparenz für das gesamte Team schaffen

Trigger: Das Team hat ein allgemeines Kostenbewusstsein, aber keine Möglichkeit, im Alltag zu sehen, was ihre eigene KI-Nutzung kostet — Kostenbewusstsein bleibt abstrakt, weil der Usage-Export nur dem Admin zugänglich ist und nur monatlich gezogen wird. (Quelle: sources/12 Q124)
Ziel: Nutzungs-Transparenz für jeden Teammitglieder im Alltag schaffen, sodass Kostenbewusstsein konkret und handlungsleitend wird, ohne den Admin mit Einzelanfragen zu überlasten.
Ergebnis: Ein Transparenz-Setup (automatisierter wöchentlicher Usage-Digest per Slack + individuelle Usage-Leisten-Nutzung) plus eine Kommunikations-Policy, die Kosten ohne Blame-Kultur sichtbar macht.
Fähigkeit: Usage-Transparenz-Leiste (individuelle Sicht), Usage-Export-API (Admin-Sicht), Workflow-Builder (Zeitplan-Trigger für automatischen Digest), Slack-Integration.
Vorgehen:
1. Erkläre jedem Teammitglied, wie die individuelle Usage-Transparenz-Leiste in ihrem Account-Bereich funktioniert — sie zeigt den persönlichen Verbrauch in Echtzeit und ist das wichtigste tägliche Feedback-Instrument für Kostenbewusstsein.
2. Konfiguriere einen wöchentlichen Workflow (Montag, 9:00 Uhr), der den Usage-Export der Vorwoche abruft, die Top-5-Verbraucher (anonymisiert oder namentlich je nach Kultur) und die Modell-Mix-Verteilung zusammenfasst und in den Marketing-Slack-Kanal sendet.
3. Kommuniziere die Zahlen ohne Blame: "Team-Verbrauch letzte Woche: €87 (Budget: €500/Monat). Top-Modell: Sonnet 4.6 (60 %). Tipp: 3 Tasks auf Flash umstellbar." — Transparenz als Coaching, nicht als Kontrolle.
4. Definiere monatliche Team-Ziele für den Modell-Mix (z.B. "Flash/Haiku soll >50 % der Token-Verbrauchsanteile ausmachen") und feiere Fortschritte als Team-Leistung.
Vorlage: Kosten-Transparenz-Setup:
1. Woechentlicher Usage-Digest - automatisiert per Slack (Verbrauch + Vergleichswert + Handlungstipp).
2. Individuelle Usage-Leiste - je Nutzer.
3. Kommunikations-Policy - Kosten sichtbar ohne Blame-Kultur.
Artefakt: Ein konfigurierter wöchentlicher Slack-Digest-Workflow plus ein Kommunikations-Template (5 Zeilen) für die transparente, nicht-sanktionierende Kosten-Kommunikation.
Fallstricke:
- Kostenübersichten ohne Kontext ("Ihr Verbrauch: €15 diese Woche") ohne Einordnung (Budget, Durchschnitt, Tipp) erzeugen Verunsicherung statt Handlung — Mitigation: immer Vergleichswert (Vorwoche, Budget) und einen konkreten Handlungstipp beifügen.
- Namentliche Top-Verbraucher-Listen ohne Vorabkonsens erzeugen eine Blame-Kultur, die KI-Nutzung hemmt statt zu fördern — Mitigation: erste Digest-Runde anonymisiert starten; erst nach Team-Konsens auf namentliche Darstellung wechseln.
Empfehlung: Fuege jeder Kostenuebersicht einen Vergleichswert (Vorwoche, Budget) und einen konkreten Handlungstipp bei - nackte Zahlen ('Ihr Verbrauch: EUR 15') ohne Einordnung erzeugen Verunsicherung statt Handlung. Starte die erste Digest-Runde anonymisiert und wechsle erst nach Team-Konsens auf namentliche Top-Verbraucher-Listen, da diese sonst eine KI-hemmende Blame-Kultur erzeugen.
Anschluss: S-MK-044

### S-MK-044 Frontier-Modell-Nutzung genehmigungspflichtig machen: Governance-Prozess aufsetzen

Trigger: Zwei Senior-Strategen nutzen Opus 4.8 täglich für Aufgaben, die auch Sonnet 4.6 lösen könnte — zusammen verursachen sie 40 % des gesamten Workspace-Budgets, und keine Policy hindert sie daran, weil Frontier-Modelle für alle zugänglich sind. (Quelle: A-30)
Ziel: Einen leichtgewichtigen Genehmigungsprozess für Frontier-Modell-Nutzung aufsetzen, der Budget-Disziplin ohne bürokratischen Overhead sicherstellt und die richtigen Ausnahmen ermöglicht.
Ergebnis: Ein Genehmigungsprotokoll (wer darf was, wie beantragen, wie dokumentieren) plus eine technische Absicherung (Workspace-Admin-Restriktion für Frontier-Modelle).
Fähigkeit: Workspace-Admin (Modell-Zugriffsbeschränkung per Gruppe), Modell-Katalog, Usage-Export für Überwachung.
Vorgehen:
1. Konfiguriere im Workspace-Admin, dass Opus 4.8 und GPT-5.5 nur für eine dedizierte "Frontier-Approved"-Gruppe zugänglich sind — Standard-User sehen diese Modelle nicht in ihrer Auswahl.
2. Definiere den Genehmigungsprozess: eine kurze Anfrage (Use Case + Begründung + Zeitraum) per E-Mail oder Slack an den Marketing-Operations-Lead; Genehmigung dauert maximal 1 Werktag.
3. Lege die Ausnahme-Kriterien fest: Frontier-Modell ist genehmigt für (a) geschäftskritische Synthesen aus heterogenen Quellen, (b) Quartals-Strategiepapiere, (c) komplexe Marktanalysen mit zehntausenden Datenpunkten — nicht für iterative Entwurfsprozesse.
4. Überprüfe die "Frontier-Approved"-Gruppe quartalsweise: wer ist noch berechtigt, wer kann wieder auf Standard zurückgestuft werden?
Vorlage: Frontier-Genehmigungsprotokoll:
1. Wer darf was - Antrag, Genehmiger, Dokumentation.
2. Technische Absicherung - Workspace-Admin-Restriktion fuer Frontier-Modelle.
3. SLA - max. 1 Werktag von Antrag bis Freigabe.
4. Monitoring - monatlicher Frontier-Nutzungs-Review der Approved-Gruppe.
Artefakt: Ein Frontier-Modell-Genehmigungsprotokoll (Kriterien / Antragsformat / Genehmigungspfad / Review-Zyklus) plus eine technische Umsetzungsanweisung für den Workspace-Admin.
Fallstricke:
- Zu strikte Einschränkungen, die auch legitime Frontier-Aufgaben blockieren, erzeugen Umgehungsversuche (z.B. API-Direktzugriff außerhalb Langdock) — Mitigation: Genehmigungsprozess leichtgewichtig und schnell halten (max. 1 Werktag), damit der Weg des geringsten Widerstands durch den Prozess führt, nicht um ihn herum.
- Frontier-Zugangsbeschränkung ohne Monitoring erzeugt keine Lernkurve für das Team — Mitigation: monatlich die Frontier-Nutzung der Approved-Gruppe im Usage-Export reviewen und im nächsten Team-Meeting als Benchmark kommunizieren.
Empfehlung: Halte den Genehmigungsprozess leichtgewichtig (max. 1 Werktag) - zu strikte Beschraenkungen, die legitime Frontier-Aufgaben blockieren, treiben Nutzer zu Umgehungen (API-Direktzugriff ausserhalb Langdock). Reviewe die Frontier-Nutzung der Approved-Gruppe monatlich im Usage-Export und kommuniziere sie als Benchmark, sonst entsteht keine Lernkurve.
Anschluss: S-MK-045

### S-MK-045 Jahres-KI-Budget planen: Von Token-Schätzung zur Vorstandsgenehmigung

Trigger: Anfang Oktober startet die Jahresbudgetplanung, und der Marketing-Direktor muss erstmals ein eigenständiges KI-Budget beantragen — bisher wurde Langdock aus dem Software-Topf bezahlt, aber die Ausgaben sind zu signifikant geworden, um sie weiterhin zu verstecken. (Quelle: sources/12 Q116)
Ziel: Ein strukturiertes Jahres-KI-Budget entwickeln, das Lizenzkosten, Token-Kosten (nach Modell und EUR-Preis pro Token), Wachstumspuffer und ROI-Aussage in einer vorstandsreifen Vorlage zusammenführt.
Ergebnis: Eine Jahresbudget-Vorlage (Lizenz + Token nach Aufgabentyp + Puffer + ROI-Aussage) im Controlling-Format, genehmigungsreif für Vorstandspräsentation.
Fähigkeit: Usage-Export (Referenzjahr), Modell-Katalog (EUR-Preise), Pricing-Tiers, Wissensordner für historische Verbrauchsdaten.
Vorgehen:
1. Struktur aufbauen: Lizenzkosten + Token-Kosten nach Aufgabentyp + Puffer + ROI-Aussage.
2. Adoption-Reserve von mind. 30 % einplanen und explizit benennen.
3. ROI (Lohnkosten-Aequivalent) als erste Zahl voranstellen; im Controlling-Format genehmigungsreif aufbereiten.
Vorlage: Jahresbudget-Vorlage (Controlling):
1. Struktur - Lizenz + Token nach Aufgabentyp + Puffer + ROI-Aussage.
2. Adoption-Reserve - >=30 % Wachstumspuffer, explizit benannt.
3. ROI zuerst - Lohnkosten-Aequivalent als erste Zahl im Deck.
4. Format - genehmigungsreif fuer Vorstandspraesentation.
Artefakt: Eine Jahresbudget-Vorlage (Kostenstruktur / Szenarien / ROI-Aussage) im Controlling-Format als Entscheidungsvorlage für die Vorstandspräsentation.
Fallstricke:
- Jahresbudgets ohne Wachstumspuffer werden bereits im ersten Quartal gesprengt, wenn die KI-Adoption wie geplant steigt — Mitigation: mindestens 30 % Wachstumspuffer einplanen und diesen explizit als "Adoption-Reserve" benennen, nicht als Sicherheitspuffer.
- Eine Budget-Anfrage ohne ROI-Aussage wird vom Vorstand als reiner Kostenpunkt behandelt, nicht als Investition — Mitigation: die ROI-Aussage (Lohnkosten-Äquivalent) immer als erste Zahl im Deck präsentieren, bevor die Kostenaufstellung folgt.
Empfehlung: Plane mindestens 30 % Wachstumspuffer ein und benenne ihn explizit als 'Adoption-Reserve', nicht als vagen Sicherheitspuffer - ohne ihn wird das Jahresbudget bei planmaessig steigender KI-Adoption schon im ersten Quartal gesprengt. Praesentiere die ROI-Aussage (Lohnkosten-Aequivalent) als erste Zahl vor der Kostenaufstellung, sonst behandelt der Vorstand die Anfrage als reinen Kostenpunkt statt als Investition.
Anschluss: S-MK-046

### S-MK-046 Echtzeit- vs. Async-Aufgaben: Latenzanforderungen als Modell-Auswahlkriterium

Trigger: Das Operations-Team plant zwei neue Agenten gleichzeitig: einen Echtzeit-Chat für Messebesucher und einen nächtlichen Report-Agenten — und fragt, ob beide dasselbe Modell nutzen können, um die Konfiguration zu vereinfachen. (Quelle: A-27)
Ziel: Latenzanforderungen (Time-to-First-Token) als eigenständiges Modell-Auswahlkriterium neben Kosten und Qualität etablieren, damit interaktive und asynchrone Agenten das jeweils passende Modell erhalten.
Ergebnis: Eine Latenz-Klassifikation der aktuellen Agenten-Landschaft (echtzeit-kritisch / latenz-tolerant) mit je einer Modell-Empfehlung und einer Kostendifferenz-Notiz.
Fähigkeit: Modell-Katalog (Latenz-Profile), Workflow-Builder (asynchrone Zeitplan-Trigger), manuelle Modellwahl, Agenten-Konfiguration.
Vorgehen:
1. Trenne Aufgaben nach Latenz-Toleranz: echtzeit-kritisch (Antwort in <2 Sekunden erwartet) → Light/Efficient-Modelle (Haiku 4.5, Gemini 2.5 Flash); latenz-tolerant (Batch, nächtlich, asynchron) → auch mittlere und starke Modelle akzeptabel, da Wartezeit keine UX-Rolle spielt.
2. Halte fest: ein Frontier-Modell wie Opus 4.8 hat typischerweise TTFT von 8–15 Sekunden — für einen interaktiven Messestand-Chat ist das eine akzeptanzgefährdende Wartezeit, nicht ein Qualitätsproblem.
3. Definiere einen Hybrid-Ansatz: der Echtzeit-Agent verwendet Haiku 4.5 (TTFT <1 Sek., €0,86/1M) gestützt durch einen reichhaltigen Wissensordner; der Nacht-Agent verwendet Sonnet 4.6 (€2,58/1M) für tiefere Synthesen, da Nutzer schlafen.
4. Dokumentiere die Latenz-Klassifikation im Wissensordner als Teil der Agenten-Übersicht, damit neue Kolleginnen den Echtzeit-vs.-Async-Unterschied sofort sehen.
Empfehlung: Klassifiziere die Agenten-Landschaft in echtzeit-kritisch und latenz-tolerant und ordne je eine Modell-Empfehlung mit Kostendifferenz-Notiz zu - bewerte Latenz und Qualitaets-Anforderung getrennt, beide Kriterien muessen erfuellt sein. Fuehre TTFT-Tests vor der Produktivnahme unter realistischer Last durch (nicht im Einzeltest), sonst droht eine technische Notbremsung kurz vor der Veranstaltung, und belasse latenz-tolerante, aber strategisch tiefe Aufgaben nicht auf Light-Modellen.
Artefakt: Eine Latenz-Klassifikations-Matrix (Agent / Latenz-Klasse / empfohlenes Modell / TTFT-Schätzung / EUR-Preis) als Konfigurationsleitfaden.
Fallstricke:
- Ein teures Modell für interaktive Anwendungen wählen und Latenz erst im Livebetrieb zu messen führt zu einer technischen Notbremsung kurz vor der Veranstaltung — Mitigation: TTFT-Tests immer vor der Produktivnahme unter realistischer Last durchführen, nicht im Einzeltest.
- Latenz-tolerante Batch-Agenten auf Light-Modellen zu belassen, obwohl die Aufgabe strategische Tiefe erfordert, verschenkt Qualitätspotenzial — Mitigation: die Latenz-Klassifikation von der Qualitäts-Anforderung getrennt bewerten; beide Kriterien müssen erfüllt sein.
Anschluss: S-MK-047

### S-MK-047 Token-Schätzung für große Wissensordner: Input-Kosten vor dem RAG-Lauf kalkulieren

Trigger: Der Wissensordner ist auf 200 Dokumente (Briefings, Styleguides, Marktberichte) angewachsen, und das Team bemerkt, dass jede Agenten-Session deutlich teurer geworden ist — ohne zu verstehen, wie viele Token pro Abfrage tatsächlich aus dem Wissensordner geladen werden. (Quelle: A-22; sources/12 Q57)
Ziel: Die Input-Token-Last eines RAG-gestützten Agenten mit großem Wissensordner transparent machen und eine Strategie zur Token-Reduzierung ohne Qualitätsverlust entwickeln.
Ergebnis: Eine Token-Analyse des Wissensordners (Dokument-Größen, typische Abruf-Token pro Session) plus eine Bereinigungsstrategie und eine Kostenprognose nach Optimierung.
Fähigkeit: Wissensordner (RAG-Abfrage), Token-Schätzung (Faustregel ~1,2 Token/Wort für Deutsch), Usage-Export für Input-Token-Messung, Modell-Katalog.
Vorgehen:
1. Inventarisiere alle Wissensordner-Dokumente mit ihrer Seitenzahl und schätze die Token-Last: eine deutsche Seite (300 Wörter) ≈ 360 Token; 200 Dokumente à 5 Seiten = ~360.000 Token potenzielle Abruf-Last.
2. Verstehe, dass RAG nicht alle 200 Dokumente bei jedem Query lädt, sondern die Top-k relevantesten Chunks — prüfe über den Usage-Export, wie viele Input-Token tatsächlich pro Session geladen werden.
3. Bereinige den Wissensordner: Dokumente, die älter als 12 Monate und durch neuere ersetzt sind, archivieren; Styleguides auf das Wesentliche kürzen; Duplikate entfernen — Ziel: Reduktion auf die 50 wichtigsten, aktuellen Dokumente.
4. Miss die Input-Token-Reduktion nach der Bereinigung über den Usage-Export und dokumentiere die monatliche Einsparung für das Controlling.
Empfehlung: Analysiere den Wissensordner token-genau (Dokument-Groessen, typische Abruf-Token pro Session aus dem realen Usage-Export, nicht aus theoretischen Worst-Case-Maximalwerten - RAG laedt nicht deterministisch alle Chunks) und leite daraus eine Bereinigungsstrategie + Kostenprognose ab. Suche bei der Bereinigung aktiv nach inhaltlichen Widerspruechen zwischen alten und neuen Dokumenten, nicht nur nach Alter, da widerspruechliche Inhalte halluzinatorische Misch-Antworten erzeugen.
Artefakt: Eine Wissensordner-Bereinigungsliste (Dokument / Handlungsempfehlung: behalten/archivieren/kürzen / Begründung) plus eine Token-Einspar-Schätzung nach der Bereinigung.
Fallstricke:
- Alte Dokumente im Wissensordner zu lassen, die widersprüchliche Informationen zu neueren enthalten, führt zu halluzinatorischen Misch-Antworten des Agenten — Mitigation: bei der Bereinigung aktiv nach inhaltlichen Widersprüchen suchen, nicht nur nach Alter filtern.
- RAG-Systeme laden nicht deterministisch dieselben Chunks bei jeder Abfrage — Token-Schätzungen basierend auf "Worst Case alle Dokumente" sind unrealistisch; Mitigation: den tatsächlichen Usage-Export für Input-Token-Messung nutzen, nicht theoretische Maximalwerte.
Anschluss: S-MK-048

### S-MK-048 Standard vs. Max vs. BYOC: Tier-Entscheidung nach Aufgabentyp-Portfolio

Trigger: Ein mittelständisches B2B-Unternehmen mit einem 15-köpfigen Marketing-Team evaluiert, welcher Langdock-Tarif zum Aufgaben-Mix passt — ein Teil des Teams macht einfaches Content-Drafting, zwei Personen entwickeln komplexe Automatisierungsworkflows, und eine Führungskraft fragt nach BYOC für kritische strategische Analysen. (Quelle: sources/12 Q117)
Ziel: Den optimalen Tarif-Mix (Standard / Max / BYOC) für ein heterogenes Marketing-Team auf Basis des tatsächlichen Aufgaben-Portfolios ermitteln, statt einen Einheitstarif zu wählen.
Ergebnis: Eine Tier-Zuordnung pro Rollengruppe (Content / Workflow-Entwickler / Strategen) mit Jahreskosten-Gegenüberstellung drei Szenarien (Einheitstarif Standard / Einheitstarif Max / gemischtes Modell).
Fähigkeit: Pricing-Tiers (Standard €25 / Max €99 / Enterprise mit BYOC), Workflow-Builder (Max-Feature), BYOC (Enterprise-Tier), Usage-Export.
Vorgehen:
1. Segmentiere das 15-köpfige Team in Rollengruppen: Content-Autoren (10 Personen, Basis-Chat und einfache Agenten, Standard reicht), Workflow-Entwickler (3 Personen, komplexe Loop-Nodes und RAG, Max nötig), Strategen (2 Personen, Frontier-Modelle und eventuell BYOC, Enterprise-Kandidaten).
2. Ermittle pro Gruppe, welche Features tatsächlich genutzt werden — kein Tier-Upgrade ohne Feature-Nachweis: SSO und BYOC erst bei nachgewiesenem Enterprise-Bedarf.
3. Rechne drei Szenarien auf Jahresbasis: (a) alle 15 auf Standard = €4.500/Jahr; (b) alle 15 auf Max = €17.820/Jahr; (c) gemischt 10x Standard + 3x Max + 2x Enterprise (Preis auf Anfrage, Schätzwert €150/Nutzer) = €9.060/Jahr plus Enterprise-Verhandlung.
4. Empfehle das gemischte Modell mit einem 6-Monats-Review: wenn weitere Workflow-Entwickler dazukommen, schrittweise upgraden.
Empfehlung: Ordne die Tiers pro Rollengruppe (Content/Workflow-Entwickler/Strategen) zu und rechne drei Szenarien gegeneinander (Einheitstarif Standard / Einheitstarif Max / gemischt) auf Jahresbasis - Max-Features fuer alle freizuschalten vervierfacht die Lizenzkosten fuer 80 % ungenutzte Features. Verwechsle BYOC nicht mit dem Enterprise-Tier (Enterprise ist der Tarif, BYOC eine Feature-Option darin) und verankere einen Tier-Review im Jahresbudget-Prozess, da der optimale Mix mit wachsendem Team veraltet.
Artefakt: Eine Tier-Entscheidungsmatrix (Rollengruppe / benötigte Features / empfohlener Tier / Jahreskosten) plus eine Jahreskosten-Gegenüberstellung drei Szenarien.
Fallstricke:
- BYOC mit Enterprise-Tier verwechseln: Enterprise ist der Tarif, BYOC ist eine Feature-Option innerhalb von Enterprise — nicht jedes Enterprise-Team benötigt BYOC; Mitigation: Feature-Bedarf (API-Key-Management, Azure-Rahmenvertrag) vor der BYOC-Entscheidung klar definieren.
- Den gemischten Tier-Mix nach 12 Monaten nicht zu überprüfen führt dazu, dass das ursprünglich optimale Modell veraltet, wenn das Team wächst — Mitigation: Tier-Review als festen Termin im Jahresbudget-Prozess verankern.
Anschluss: S-MK-049

### S-MK-049 ROI-Kalkulations-Framework für KI-Investitionen im Marketing

Trigger: Der CFO verlangt vor der nächsten Budget-Runde einen strukturierten ROI-Nachweis für die gesamte Langdock-Investition — bisherige Antworten wie "wir sparen Zeit" werden nicht akzeptiert, es werden Zahlen erwartet. (Quelle: A-01)
Ziel: Ein wiederverwendbares ROI-Kalkulations-Framework entwickeln, das KI-Investitionen in drei Dimensionen messbar macht: direkte Kosteneinsparung, Zeitersparnis (Opportunitätswert) und Qualitätsverbesserung (Iterations-Reduktion).
Ergebnis: Ein ausgefülltes ROI-Framework (Investition / Direktersparnis / Zeitersparnis-Wert / Qualitätseffekt / Gesamt-ROI in %) als CFO-taugliche Vorlage.
Fähigkeit: Usage-Export-CSV (Ist-Kosten), Wissensordner für Stundensätze und Benchmark-Daten, Modell-Katalog.
Vorgehen:
1. Erhebe die Investitions-Gesamtkosten: Langdock-Lizenz (Seats × Tier × 12) + Token-Kosten (aus Usage-Export) + Einmalinvestitionen (Onboarding, Schulung) = Gesamtinvestition Jahr 1.
2. Berechne die Direktersparnis: welche Agentur- oder Freelancer-Kosten wurden durch interne KI-Produktion ersetzt? Welche Software-Lizenzen wurden abgelöst?
3. Kalkuliere den Zeitersparnis-Wert: durchschnittliche Zeitersparnis pro Aufgabentyp (aus Mitarbeiterbefragung) × Anzahl der Durchläufe pro Monat × interner Stundensatz = jährlicher Opportunitätswert.
4. Ergänze den Qualitätseffekt als Proxy: Reduktion der Überarbeitungsrunden bei Briefings und Texten (messbar durch Versionszählung vor vs. nach KI) × Kosten pro Überarbeitungsrunde.
Vorlage: ROI-Framework (CFO):
1. Struktur - Investition / Direktersparnis / Zeitersparnis-Wert / Qualitaetseffekt / Gesamt-ROI in %.
2. Zeiterfassung - 2-Wochen-Sprint (Aufgabendauer vor/nach KI) als Datenbasis.
3. Qualitaets-Proxy - z. B. Versionszahl vorher/nachher.
Artefakt: Ein ROI-Framework-Dokument (Investitions-Komponenten / Einsparungs-Dimensionen / Gesamt-ROI %) als jährlich wiederverwendbare CFO-Vorlage.
Fallstricke:
- Zeitersparnis ohne valide Zeiterfassungs-Daten zu schätzen erzeugt angreifbare Zahlen — Mitigation: vor der ROI-Berechnung einen zweiwöchigen Zeiterfassungs-Sprint mit dem Team durchführen, bei dem Aufgabendauer vor und nach KI-Unterstützung gemessen wird.
- Den Qualitätseffekt wegzulassen, weil er schwer zu messen ist, unterschätzt den ROI systematisch — Mitigation: auch eine einfache Proxy-Messung (Versionszahl vorher vs. nachher) als Qualitätsindikator dokumentieren und für den CFO erklären.
Empfehlung: Fuehre vor der ROI-Berechnung einen zweiwoechigen Zeiterfassungs-Sprint durch (Aufgabendauer vor und nach KI) - ohne valide Zeitdaten sind die Ersparniszahlen angreifbar. Dokumentiere auch eine einfache Proxy-Messung fuer den Qualitaetseffekt (Versionszahl vorher/nachher), statt ihn wegzulassen, weil er schwer messbar ist - sonst unterschaetzt das Framework den ROI systematisch.
Anschluss: S-MK-050

### S-MK-050 Modell-Evaluierungs-Scorecard für marketing-spezifische Benchmarks

Trigger: Ein neues Modell-Release (z.B. Gemini 4.0 Flash) wird vom Provider mit allgemeinen Benchmark-Ergebnissen beworben — das Marketing-Team will wissen, ob das Modell für seine spezifischen Aufgaben (DACH-Texte, Briefings, Daten-Klassifikation) tatsächlich besser ist als das bisherige Default-Modell. (Quelle: sources/12 Q24; A-30)
Ziel: Eine standardisierte Evaluierungs-Scorecard entwickeln, die neue Modell-Releases zuverlässig an marketing-relevanten Aufgaben misst und eine nachvollziehbare Entscheidungsgrundlage für den Modell-Wechsel liefert.
Ergebnis: Eine ausgefüllte Scorecard (5 Aufgaben × Qualitätsdimensionen × EUR-Preis pro Token) plus eine Wechsel-Empfehlung mit Konfidenz-Angabe.
Fähigkeit: Manuelle Modellwahl, Wissensordner für Evaluierungs-Aufgaben und Bewertungsraster, Usage-Export für Kostenmessung, Modell-Katalog.
Vorgehen:
1. Definiere die Scorecard-Struktur: 5 Pflicht-Aufgaben (DACH-Brand-Voice-Text, SEO-Headline-Varianten, Briefing aus Stichpunkten, Support-Ticket-Klassifikation, Strategie-Zusammenfassung) — diese decken das reale Aufgaben-Portfolio ab und sind im Wissensordner als wiederholbare Tests abgelegt.
2. Führe alle 5 Aufgaben parallel auf dem neuen Modell und dem bisherigen Default durch; messe Qualität (1-5 pro Dimension: Relevanz, Sprachqualität, Strukturtreue) und EUR-Preis pro Token.
3. Berechne den "Qualität-pro-EUR"-Score: höhere Qualität bei gleichem oder niedrigerem EUR-Preis ist ein klares Wechselsignal; höhere Qualität bei deutlich höherem EUR-Preis erfordert eine Kosten-Nutzen-Abwägung je Aufgabentyp.
4. Dokumentiere die Scorecard mit Datum und Modell-Version im Wissensordner — die Scorecard bildet die historische Entscheidungsspur für zukünftige Modell-Reviews.
Empfehlung: Triff die Modell-Wechsel-Entscheidung ueber eine eigene Scorecard mit team-relevanten Aufgaben (5 Aufgaben x Qualitaetsdimensionen x EUR-Preis pro Token) mit Konfidenz-Angabe, nicht ueber allgemeine Provider-Benchmarks (MMLU, HumanEval), die wenig ueber Marketing-Aufgaben aussagen. Versieh jede Scorecard mit Modell-Name und Datum im Dateinamen, sonst ist der historische Vergleich bei kuenftigen Reviews unmoeglich.
Artefakt: Eine ausgefüllte Evaluierungs-Scorecard (Aufgabe / altes Modell / neues Modell / Score / EUR-Preis / Wechsel-Empfehlung) als datierter Wissensordner-Eintrag.
Fallstricke:
- Allgemeine Provider-Benchmarks (z.B. MMLU, HumanEval) sagen wenig über Marketing-spezifische Aufgaben aus — Mitigation: ausschließlich auf die eigene Scorecard mit team-relevanten Aufgaben vertrauen, nicht auf Provider-Marketing-Zahlen.
- Eine Scorecard ohne Versionsnummer und Datum zu archivieren macht den historischen Vergleich bei zukünftigen Reviews unmöglich — Mitigation: Dateiname immer mit Modell-Name und Datum versehen, z.B. "Scorecard-GeminiFlash4-2026-05.md".
Anschluss: S-MK-051

### S-MK-051 Prompt-Caching und sein Effekt auf Token-Kosten: Wann sich statische Präambeln lohnen

Trigger: Der Content-Agent hat einen 4.000-Token-System-Prompt mit Persona, Brand-Voice und Ausgaberegeln, der bei jeder der täglich 300 Sessions neu übertragen wird — die Input-Kosten wachsen linear mit den Sessions, und das Team fragt, ob Prompt-Caching helfen könnte. (Quelle: A-22)
Ziel: Den wirtschaftlichen Nutzen von Prompt-Caching für statische System-Prompt-Anteile bewerten und eine Entscheidungsregel definieren, ab wann Caching die Token-Kosten messbar senkt.
Ergebnis: Eine Caching-Wirtschaftlichkeitsrechnung (statische Token × Sessions/Tag × Cache-Treffer-Rate × EUR-Preis pro Token) plus eine angepasste Prompt-Struktur, die den cachefähigen Teil maximiert.
Fähigkeit: Agenten-Konfiguration (System-Prompt-Strukturierung), Wissensordner als Cache-Ersatz für statische Dokumente, Usage-Export für Token-Messung.
Vorgehen:
1. Identifiziere im System-Prompt die statischen Anteile (Persona-Definition, Brand-Voice-Regeln, Ausgabeformat) versus dynamische Anteile (aktuelles Datum, Kampagnenname, variable Zielgruppe) — nur statische Anteile sind cachefähig.
2. Prüfe die Caching-Voraussetzungen: statischer Anteil muss >2.048 Token sein UND die Session-Frequenz muss >5 Requests/Stunde betragen — unter diesen Schwellen überwiegt der Cache-Verwaltungsoverhead.
3. Berechne die potenzielle Einsparung: 4.000 statische Token × 300 Sessions/Tag × Cache-Treffer-Rate 70 % × (1 - 0,10 Cache-Kosten-Faktor) × EUR-Preis pro Token × Basispreis/Token = monatliche Ersparnis in EUR.
4. Strukturiere den System-Prompt so, dass der statische Block an erster Stelle steht und der dynamische Block danach folgt — das maximiert die Cache-Trefferquote.
Empfehlung: Rechne die Caching-Wirtschaftlichkeit (statische Token x Sessions/Tag x Cache-Treffer-Rate x EUR-Preis pro Token) und maximiere den cachefaehigen Prompt-Teil, indem du Statisches klar vom Variablen trennst. Plane eine quartalsweise Cache-Invalidierungs-Routine ein und kontrolliere die Cache-Treffer-Rate nach jedem Provider-Update, da Modell-Updates den Cache invalidieren und veraltete Brand-Voice-Regeln zementieren koennen.
Artefakt: Eine Caching-Wirtschaftlichkeitsrechnung (statische Token / Cache-Treffer-Rate / monatliche Ersparnis EUR) plus eine optimierte System-Prompt-Struktur mit statischem und dynamischem Block.
Fallstricke:
- Gecachte System-Prompts, die nicht regelmäßig auf Aktualität geprüft werden, führen zu veralteten Brand-Voice-Regeln im Produktionsbetrieb — Mitigation: eine quartalsweise Cache-Invalidierungs-Routine einplanen, bei der alle gecachten Inhalte auf Aktualität geprüft werden.
- Caching-Einsparungen als Dauerzustand kalkulieren ohne zu berücksichtigen, dass Modell-Updates den Cache invalidieren können — Mitigation: nach jedem Provider-Update die Cache-Treffer-Rate im Usage-Export kontrollieren und die Wirtschaftlichkeitsrechnung anpassen.
Anschluss: S-MK-052

### S-MK-052 Kosten-Management für saisonale Peak-Traffic-Kampagnen

Trigger: Das Black-Friday-Kampagnen-Team plant einen Drei-Wochen-Sprint mit zehnfachem KI-Nutzungsvolumen gegenüber dem Monatsdurchschnitt — das reguläre Workspace-Limit von €500 würde in der ersten Woche erreicht, und das Team weiß nicht, wie es diese Spitze budgetieren soll. (Quelle: sources/12 Q119)
Ziel: Ein saisonales Budget-Modell aufsetzen, das Peak-Traffic-Phasen absichert, ohne das reguläre Monatsbudget dauerhaft zu erhöhen oder die Routine-Agenten in der Hauptkampagnenphase zu blockieren.
Ergebnis: Ein Peak-Budget-Plan (temporäre Limit-Erhöhung, Modell-Priorisierung, Nachkampagnen-Reduktion) plus eine dokumentierte Freigabe-Policy für saisonale Budgeterhöhungen.
Fähigkeit: Workspace-Limit (temporäre Erhöhung), Workflow-Level-Budgets (Kampagnen-dediziert), Warn-Schwellen (50/75/90%), Modell-Katalog.
Vorgehen:
1. Quantifiziere den Peak-Bedarf: schätze auf Basis des Vorjahrs-Usage-Exports (oder analoger Kampagnen), wie viel Token-Volumen und wie viele Workflow-Runs in der Peak-Phase anfallen — Faktor 10x als Planungsgröße.
2. Beantrage eine temporäre Workspace-Limit-Erhöhung für den Kampagnenzeitraum (z.B. von €500 auf €2.000 für 4 Wochen) mit begründetem Businesscase beim Management — nicht pauschal verdoppeln, sondern rechnerisch begründen.
3. Richte ein dediziertes Kampagnen-Budget-Konto auf Workflow-Level ein: Kampagnen-Workflows bekommen ein eigenes Budget, Routine-Agenten (Reporting, Onboarding) bekommen ein separates, reduziertes Budget, damit sie die Kampagne nicht konkurrenzieren.
4. Plane die Nachkampagnen-Reduktion explizit: nach dem Peak-Zeitraum Workspace-Limit auf das reguläre Niveau zurücksetzen und nicht als "neue Norm" laufen lassen.
Vorlage: Peak-Budget-Plan (saisonal):
1. Temporaere Limit-Erhoehung - mit Ruecksetz-Datum als Admin-Kalender-Event beim Antrag.
2. Modell-Priorisierung - in der Peak-Phase.
3. Budget-Trennung - dedizierte Workflow-Budgets fuer Peak-Kampagne vs. Dauerbetrieb.
4. Freigabe-Policy fuer saisonale Erhoehungen.
Artefakt: Ein Peak-Budget-Plan (Bedarfsschätzung / temporäres Limit / Budget-Aufteilung Kampagne vs. Routine / Nachkampagnen-Reduktionsplan) als jährlich wiederverwendbare Vorlage.
Fallstricke:
- Das Peak-Limit nach der Kampagne nicht zurückzusetzen führt dauerhaft zu einem höheren Workspace-Budget, das als neue Norm akzeptiert wird — Mitigation: das Rücksetz-Datum als Kalender-Event mit Admin-Erinnerung beim Limit-Erhöhungsantrag hinterlegen.
- Routine-Agenten ohne dediziertes Budget in der Peak-Phase durch Kampagnen-Workflows von ihrem Kontingent zu verdrängen unterbricht laufende Operations — Mitigation: immer dedizierte Workflow-Budget-Trennung zwischen Peak-Kampagne und Dauerbetrieb.
Empfehlung: Hinterlege das Ruecksetz-Datum als Admin-Kalender-Event direkt beim Limit-Erhoehungsantrag - ein nicht zurueckgesetztes Peak-Limit etabliert sich sonst als neue, dauerhaft hoehere Norm. Trenne die Workflow-Budgets von Peak-Kampagne und Dauerbetrieb, damit Kampagnen-Workflows die Routine-Agenten nicht von ihrem Kontingent verdraengen.
Anschluss: S-MK-053

### S-MK-053 Wechselkosten-Analyse: Migration von GPT auf Claude oder umgekehrt

Trigger: Nach drei Monaten mit GPT-5.4 als Haupt-Content-Modell schlägt ein Teammitglied vor, auf Sonnet 4.6 umzustellen — aus Qualitätsgründen bei deutschen Texten. Das Team fragt, wie hoch die tatsächlichen Wechselkosten (Prompt-Umbau, Qualitäts-Tests, Übergangsphase) sind. (Quelle: sources/12 Q84; A-30)
Ziel: Die vollständigen Wechselkosten eines Modell-Migrations-Projekts quantifizieren (Prompt-Engineering, Qualitäts-Tests, Übergangsphase, Dokumentations-Update) und gegen den erwarteten Qualitätsgewinn abwägen.
Ergebnis: Eine Wechselkosten-Kalkulation (Einmalinvestitionen + Übergangskosten + erwarteter Nutzen) als Entscheidungsvorlage für das Management.
Fähigkeit: Manuelle Modellwahl, Wissensordner für Prompt-Inventar, Modell-Katalog (EUR-Preis-Vergleich), Usage-Export.
Vorgehen:
1. Inventarisiere alle Prompts und Agenten, die das alte Modell nutzen — typischerweise sind System-Prompts auf Provider-spezifische Stärken optimiert und müssen für den neuen Provider angepasst werden; rechne 2–4 Stunden Prompt-Engineering pro Agent.
2. Kalkuliere den Test-Aufwand: alle aktiven Agenten müssen auf dem neuen Modell gegen einen definierten Qualitäts-Standard geprüft werden (Scorecard aus S-MK-050); mindestens 5 Testdurchläufe pro Agent.
3. Plane eine Übergangsphase von 2–4 Wochen mit Parallel-Betrieb (alt und neu): doppelter Token-Verbrauch in dieser Phase; berechne die Übergangskosten als (alter EUR-Preis pro Token + neuer EUR-Preis pro Token) × halbes normales Volumen × Wochen.
4. Vergleiche Gesamtwechselkosten mit dem prognostizierten jährlichen Qualitätsgewinn (Reduktion Überarbeitungsrunden × Stundensatz × Anzahl Iterationen/Jahr) — wenn Amortisierungszeitraum >12 Monate, ist Wechsel wirtschaftlich fraglich.
Empfehlung: Rechne die Wechselkosten eines Provider-Wechsels vollstaendig (Einmalinvestitionen + Uebergangskosten inkl. Parallelbetrieb + erwarteter Nutzen) als Management-Entscheidungsvorlage. Fuehre den Wechsel nie ohne dedizierte Test-Phase mit definierten Qualitaets-Schwellenwerten durch (Prompts funktionieren nicht provider-uebergreifend identisch) und schaetze den Prompt-Engineering-Aufwand gemeinsam mit den primaeren Agenten-Nutzern, nicht rein IT-seitig.
Artefakt: Eine Wechselkosten-Kalkulation (Einmalinvestition / Übergangskosten / jährlicher Nutzen / Amortisierungszeitraum Monate) als Management-Entscheidungsvorlage.
Fallstricke:
- Prompt-Migration ohne Testing-Phase in der Annahme, dass Prompts provider-übergreifend identisch funktionieren, führt zu Qualitätseinbrüchen im Produktivbetrieb — Mitigation: niemals einen Provider-Wechsel ohne dedizierte Test-Phase mit definierten Qualitäts-Schwellenwerten durchführen.
- Den Wechsel als rein technische IT-Aufgabe zu behandeln und das Marketing-Team nicht einzubeziehen unterschätzt den Einarbeitungsaufwand — Mitigation: Prompt-Engineering-Aufwand immer gemeinsam mit den primären Agenten-Nutzern schätzen, nicht nur IT-seitig.
Anschluss: S-MK-054

### S-MK-054 Versteckte Kosten: Überarbeitungszyklen und Halluzinations-Korrektur-Overhead

Trigger: Ein erster Kostenvergleich zeigt, dass Haiku 4.5 für Pressemitteilungen günstiger ist als Sonnet 4.6 — aber nach drei Monaten Nutzung zeigt die Zeiterfassung des Redaktionsteams, dass jede Haiku-Pressemitteilung durchschnittlich 2,5 Überarbeitungsrunden braucht, Sonnet-Texte nur 0,8. (Quelle: A-21)
Ziel: Die versteckten Kosten von Überarbeitungszyklen und Halluzinations-Korrekturen in die Modell-Kostenkalkulation einbeziehen, um den echten Total-Cost-of-Output zu ermitteln.
Ergebnis: Eine Total-Cost-of-Output-Rechnung (Token-Kosten + Überarbeitungszeit-Wert) für zwei Modelle mit einem Break-Even-Vergleich.
Fähigkeit: Modell-Katalog (EUR-Preise), Usage-Export, Wissensordner für Zeiterfassungs-Daten, manuelle Modellwahl.
Vorgehen:
1. Erhebe den Überarbeitungs-Overhead pro Modell: messe oder schätze die durchschnittliche Redaktionszeit pro Output (in Minuten) für das günstigere und das teurere Modell — diese Daten sind in Zeiterfassungs-Logs oder Mitarbeiterbefragungen verfügbar.
2. Berechne den Überarbeitungs-Kostenwert: Überarbeitungszeit (Minuten) × Häufigkeit (Sessions/Monat) × Stundensatz der Redakteurin / 60 = monatlicher Überarbeitungs-Kostenwert.
3. Addiere Token-Kosten und Überarbeitungs-Kosten: Total-Cost-of-Output = (Token-Kosten Modell A) + (Überarbeitungszeit-Wert Modell A) — führe dies für beide Modelle durch.
4. Vergleiche die Total-Cost-of-Output-Werte: wenn Sonnet 4.6 trotz höherem EUR-Preis im Gesamt-Kostenvergleich günstiger ist, ist das das wirtschaftliche Argument für den Modell-Upgrade.
Empfehlung: Vergleiche zwei Modelle ueber die Total Cost of Output (Token-Kosten + Wert der Ueberarbeitungszeit), nicht ueber Token-Kosten allein - ein guenstigeres Modell mit hohem Redaktions-Overhead kann teurer sein als ein staerkeres. Stuetze die Ueberarbeitungszeit auf einen dreiwoechigen Zeiterfassungs-Sprint statt informeller Schaetzung und rechne pro Aufgabentyp getrennt, da der Korrektur-Overhead je nach Faktendichte stark variiert.
Artefakt: Eine Total-Cost-of-Output-Rechnung (Token-Kosten / Überarbeitungs-Kosten / Gesamt / Break-Even-Analyse) plus eine begründete Modell-Empfehlung für faktenkritische Texte.
Fallstricke:
- Die Überarbeitungszeit nur informell zu schätzen ohne Messdaten führt zu angreifbaren Zahlen — Mitigation: einen dreiwöchigen Zeiterfassungs-Sprint mit dem Redaktionsteam durchführen, bevor die Total-Cost-Kalkulation erstellt wird.
- Die Kalkulation auf einen Aufgabentyp zu beschränken (z.B. nur Pressemitteilungen) und das Ergebnis auf alle Inhalte zu verallgemeinern überschätzt den Break-Even-Effekt — Mitigation: Total-Cost-Analyse pro Aufgabentyp separat durchführen, da der Halluzinations-Overhead je nach Faktendichte stark variiert.
Anschluss: S-MK-055

### S-MK-055 Modell-Deprecation-Planung: Was tun, wenn ein Modell abgekündigt wird

Trigger: Ein Provider kündigt an, dass GPT-5.2 in 90 Tagen in den "Legacy"-Status wechselt und danach nur noch zu erhöhten Preisen verfügbar ist — das Team hat fünf produktive Agenten, die auf GPT-5.2 laufen, und keine Transitions-Roadmap. (Quelle: sources/12 Q24; A-30)
Ziel: Einen strukturierten Deprecation-Response-Plan entwickeln, der den Übergang zu einem Nachfolge-Modell ohne Produktionsausfall und ohne Budget-Eskalation sicherstellt.
Ergebnis: Ein Deprecation-Response-Plan (betroffene Agenten / Migrations-Priorität / Ziel-Modell / Test-Zeitplan / Budget-Auswirkung) als ausführbares Projekt-Dokument.
Fähigkeit: Modell-Katalog, manuelle Modellwahl, Wissensordner für Agenten-Inventar, Usage-Export (Volumen je betroffenem Agenten).
Vorgehen:
1. Erstelle ein Betroffenheits-Inventar: welche Agenten und Workflows nutzen das abzukündigende Modell? Welches Token-Volumen und welche Produktionskritikalität hat jeder Eintrag? Priorisiere nach Kritikalität (produktionskritisch zuerst).
2. Evaluiere Nachfolge-Modell-Kandidaten nach den Kriterien aus der Evaluierungs-Scorecard (S-MK-050): Qualität für den spezifischen Aufgabentyp, EUR-Preis-Vergleich, DACH-Sprachqualität.
3. Plane die Test- und Übergangsphase: produktionskritische Agenten migrieren in den ersten 30 Tagen; niedriger-Priorität-Agenten bis Tag 75; in den letzten 15 Tagen nur noch Notfall-Patches.
4. Kalkuliere die Budget-Auswirkung: wenn das Nachfolge-Modell einen höheren EUR-Preis hat, berechne die monatliche Mehrkosten und kommuniziere sie proaktiv an das Controlling — Deprecations sind keine Budget-Überraschungen, wenn sie früh geplant werden.
Vorlage: Deprecation-Response-Plan:
1. Betroffene Agenten - Inventar + Migrations-Prioritaet.
2. Ziel-Modell + Test-Zeitplan - Scorecard-Pruefung je Migration.
3. Budget-Auswirkung - EUR-Preis-Delta.
4. Timing - erste 30 Tage nach Ankuendigung fuer Planung, nicht fuer Migration.
Artefakt: Ein Deprecation-Response-Plan (Agent / Kritikalität / Ziel-Modell / Migrations-Frist / Budget-Delta) plus ein 90-Tage-Zeitplan als ausführbares Projekt-Dokument.
Fallstricke:
- Deprecation-Ankündigungen zu ignorieren und bis zum letzten Tag zu warten erzwingt Stress-Migrationen unter Zeitdruck mit erhöhtem Fehlerrisiko — Mitigation: Provider-Ankündigungen aktiv beobachten und die ersten 30 Tage für Planung reservieren, nicht für Migration.
- Das Nachfolge-Modell ohne Testing-Phase direkt in Produktion zu nehmen in der Annahme, es sei "ähnlich genug" — Mitigation: jede Deprecation-Migration erfordert eine Scorecard-basierte Qualitätsprüfung, auch wenn die Modelle aus derselben Familie stammen.
Empfehlung: Beobachte Provider-Deprecation-Ankuendigungen aktiv und reserviere die ersten 30 Tage fuer Planung statt bis zum letzten Tag zu warten - Stress-Migrationen unter Zeitdruck erhoehen das Fehlerrisiko. Pruefe jedes Nachfolge-Modell per Scorecard, auch innerhalb derselben Familie, statt es als 'aehnlich genug' direkt in Produktion zu nehmen.
Anschluss: S-MK-056

### S-MK-056 Kosten-pro-Ergebnis-Metrik: Kosten je generiertem Lead und Content-Piece messen

Trigger: Die Marketing-Leiterin will gegenüber dem Vertrieb belegen, dass KI-generierte Lead-Magneten (Whitepaper, Checklisten) pro gewonnenem Lead günstiger sind als extern produzierte Inhalte — und sucht eine Metrik, die Token-Kosten mit Marketing-Ergebnissen verbindet. (Quelle: A-01)
Ziel: Eine "Kosten-pro-Ergebnis"-Metrik einführen (z.B. Kosten pro generiertem Lead, Kosten pro Content-Piece), die KI-Ausgaben direkt mit Marketing-KPIs verknüpft und für Vertriebs- und Vorstandskommunikation geeignet ist.
Ergebnis: Eine Kosten-pro-Ergebnis-Rechnung für zwei Content-Typen (KI-generiert vs. extern produziert) plus eine Vorlage für die monatliche Metrik-Erhebung.
Fähigkeit: Usage-Export (Token-Kosten je Kampagne), Wissensordner für Kampagnen-Performance-Daten, Modell-Katalog.
Vorgehen:
1. Definiere die Ergebnis-Metrik je Kampagnen-Typ: für Lead-Magneten → Kosten pro gewonnenem Lead (KI-Produktionskosten / generierte Leads); für Content-Marketing → Kosten pro publiziertem Content-Piece (KI-Produktionskosten + Redaktionszeit-Wert / Anzahl veröffentlichter Stücke).
2. Ziehe aus dem Usage-Export die Token-Kosten für die spezifische Kampagne; addiere den Redaktionszeit-Wert (Stunden × Stundensatz) für die Nachbearbeitung.
3. Vergleiche mit dem Benchmark: externe Whitepaper-Produktion kostet typischerweise €2.000–€5.000 pro Stück; KI-gestützte Produktion mit Redaktions-Overhead typischerweise €150–€600 — berechne den Kosten-Faktor.
4. Erstelle eine monatliche Metrik-Tabelle, die automatisch aus dem Usage-Export und dem CRM-Kampagnen-Report befüllt werden kann.
Empfehlung: Vergleiche KI-generierten vs. extern produzierten Content ueber die Total Cost of Output (Token + Redaktionszeit), nicht ueber Token-Kosten allein, und erhebe die Metrik monatlich. Fuehre neben der Kosten-pro-Ergebnis-Metrik immer ein Qualitaets-Korrektiv mit (z. B. SQL-/Konversionsrate je Weg), da ein reiner Kostenvergleich Aepfel mit Birnen vergleicht, wenn KI-Leads schwaecher konvertieren.
Artefakt: Eine Kosten-pro-Ergebnis-Rechnung (KI vs. Extern / Kosten-pro-Lead / Faktor) plus eine monatliche Metrik-Vorlage für die kontinuierliche Erhebung.
Fallstricke:
- Den Redaktions-Overhead bei der KI-Kostenkalkulation wegzulassen verschönert die Kosten-pro-Ergebnis-Metrik unfair — Mitigation: immer Total Cost of Output (Token + Redaktionszeit) als Grundlage verwenden, nie nur Token-Kosten allein.
- Lead-Qualität zwischen KI-generiertem und extern produziertem Content zu ignorieren macht den Kosten-Vergleich unvollständig — Mitigation: neben der Kosten-pro-Lead-Metrik auch die Lead-Qualitätsrate (z.B. SQL-Rate) als Qualitäts-Korrektiv miterfassen.
Anschluss: S-MK-057

### S-MK-057 Budget-Freigabe-Workflow für Frontier-Modell-Zugang: Management Sign-off

Trigger: Ein Senior-Stratege möchte Opus 4.8 für eine komplexe Wettbewerbs-Analyse einsetzen (geschätzte Kosten: Größenordnung €100–150 für den Lauf) — der Workspace-Admin hat Frontier-Modelle genehmigungspflichtig gemacht, aber es gibt noch keinen definierten digitalen Freigabe-Prozess, und die Genehmigung passiert per Zuruf. (Quelle: A-30)
Ziel: Einen leichtgewichtigen, dokumentierten Budget-Freigabe-Workflow für teure Einzelläufe (>€20) einrichten, der Management Sign-off sichert, ohne die Arbeit der Strategen durch bürokratischen Overhead zu blockieren.
Ergebnis: Ein Freigabe-Workflow (Antragsformular → Genehmiger → Freigabe-Dokumentation) plus ein Langdock-Workflow-Template, das die Freigabe nach Genehmigung automatisch triggert.
Fähigkeit: Workflow-Builder (Genehmigungsschritt), Workspace-Admin (Modell-Zugangsbeschränkung), Wissensordner für Freigabe-Protokolle, Slack-Integration für Benachrichtigungen.
Vorgehen:
1. Antragsformular und Genehmiger-Node (HITL) definieren; SLA max. 2 Stunden.
2. Freigabe-Dokumentation und automatischen Archivierungs-Schritt (Audit-Trail) konfigurieren.
3. Langdock-Workflow-Template anlegen, das die Freigabe nach Genehmigung automatisch triggert.
Workflow: Antragsformular-Trigger -> Genehmiger-Node (HITL) -> Freigabe-Dokumentation -> automatischer Archivierungs-Schritt (Audit-Trail). Langdock-Workflow-Template, das die Freigabe nach Genehmigung automatisch triggert.
Budget: Minimal (Formular + HITL, kein teurer Modell-Aufruf); Genehmigungs-SLA max. 2 Stunden. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Ein Budget-Freigabe-Workflow-Dokument (Schwellen / Antragsformular / Genehmigungspfad / Audit-Trail) plus ein Langdock-Workflow-Template für die automatische Freigabe.
Fallstricke:
- Einen Freigabe-Prozess mit zu vielen Schritten einzuführen, der länger als einen halben Arbeitstag dauert, verleitet Strategen dazu, Frontier-Modelle über Umwege (persönliche API-Keys) zu umgehen — Mitigation: den Prozess auf maximal 2 Stunden von Antrag bis Freigabe beschränken und das als SLA kommunizieren.
- Den Audit-Trail manuell zu führen statt automatisch zu archivieren führt dazu, dass Genehmigungen nicht dokumentiert sind — Mitigation: Archivierung als automatischen letzten Workflow-Schritt konfigurieren, nicht als manuelle Aufgabe.
Empfehlung: Begrenze den Freigabe-Pfad auf maximal 2 Stunden von Antrag bis Freigabe und kommuniziere das als SLA - ein laengerer Prozess verleitet Strategen, Frontier-Modelle ueber private API-Keys zu umgehen. Konfiguriere die Audit-Trail-Archivierung als automatischen letzten Workflow-Schritt, nicht als manuelle Aufgabe, sonst entstehen Dokumentationsluecken.
Anschluss: S-MK-058

### S-MK-058 Echtzeit-Token-Monitoring-Dashboard: Grafana oder Datadog für KI-Kostenüberwachung

Trigger: Das Marketing-Operations-Team möchte Langdock-Kosten in dasselbe Dashboard integrieren, in dem sie bereits AWS-Kosten und Kampagnen-KPIs überwachen — statt einmal monatlich den Usage-Export manuell herunterzuladen, wollen sie Echtzeit-Sichtbarkeit. (Quelle: A-25)
Ziel: Einen automatisierten Token-Monitoring-Kanal von der Langdock-Usage-Export-API in ein bestehendes Observability-Dashboard (Grafana oder Datadog) aufsetzen, der Echtzeit-Kostenüberwachung und Anomalie-Alerting ermöglicht.
Ergebnis: Eine Monitoring-Architektur (API-Polling-Workflow → Datenbank/Webhook → Grafana/Datadog-Panel) plus eine Anomalie-Alert-Regel für plötzliche Kosten-Spikes.
Fähigkeit: Workflow-Builder (HTTP-Request-Knoten für Usage-Export-API, Zeitplan-Trigger alle 15 Minuten), Slack-Integration für Alert-Benachrichtigungen, Wissensordner für Monitoring-Dokumentation.
Vorgehen:
1. Polling-Workflow (Schedule-Trigger) als reinen API-Abruf ohne LLM-Schritt bauen.
2. Daten an Datenbank/Webhook und ein Grafana/Datadog-Panel uebergeben.
3. Anomalie-Alert-Regel fuer ploetzliche Kosten-Spikes definieren; auf aggregierte Team-Metriken beschraenken.
Workflow: Schedule-Trigger (Polling, z. B. 15 Min) -> HTTP-Request-Node (Usage-/Cost-API, KEIN LLM-Schritt) -> Datenbank/Webhook -> Grafana/Datadog-Panel; plus Anomalie-Alert-Regel fuer ploetzliche Kosten-Spikes.
Budget: Eigenes Mini-Budget-Cap; als reiner API-Abruf ohne LLM-Schritt konfiguriert (keine Token-Kosten). (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Eine Monitoring-Architektur-Beschreibung (Daten-Pipeline / Panel-Definitionen / Alert-Regel) plus ein Langdock-Workflow-Template für das 15-Minuten-API-Polling.
Fallstricke:
- Ein 15-Minuten-Polling-Workflow ohne eigenes Budget-Cap läuft unbegrenzt und erzeugt selbst Token-Kosten — Mitigation: den Monitoring-Workflow als reinen API-Abruf ohne LLM-Schritt konfigurieren (kein Modell-Aufruf nötig), damit er keine Token-Kosten erzeugt.
- Zu granulare Monitoring-Daten (per-Message-Level) zu speichern ohne Datenschutz-Review verletzt DSGVO-Anforderungen für Mitarbeiterdaten — Mitigation: Monitoring auf aggregierte Team-Level-Metriken beschränken; keine Einzelpersonen-Zuordnung ohne vorab geklärte Rechtsgrundlage.
Empfehlung: Konfiguriere den Monitoring-Workflow als reinen API-Abruf ohne LLM-Schritt, damit er selbst keine Token-Kosten erzeugt. Beschraenke das Monitoring auf aggregierte Team-Level-Metriken ohne Einzelpersonen-Zuordnung - per-Message-Level-Daten ohne Datenschutz-Review verletzen DSGVO-Anforderungen fuer Mitarbeiterdaten.
Anschluss: S-MK-059

### S-MK-059 Modell-Performance-Regressionstests nach Provider-Updates

Trigger: Sonnet 4.6 hat ein stilles Update erhalten (ohne Versionsänderung), und das Content-Team bemerkt, dass die Brand-Voice-Konsistenz in den letzten zwei Wochen schlechter geworden ist — aber niemand kann belegen, ob das am Modell oder an einem geänderten Prompt liegt. (Quelle: A-34; sources/12 Q84)
Ziel: Einen automatisierten Regressions-Test-Prozess aufsetzen, der nach jedem Provider-Update oder nach gemeldeten Qualitätsproblemen die Agenten-Performance gegen eine definierte Baseline prüft.
Ergebnis: Ein Regressions-Test-Protokoll (5 Canary-Prompts mit gespeicherten Referenz-Outputs × automatischer Abweichungs-Alert) plus ein Eskalationsprozess bei detektierter Performance-Regression.
Fähigkeit: Workflow-Builder (Test-Workflow mit Referenz-Output-Vergleich), Wissensordner für Referenz-Outputs (Baseline), Modell-Katalog, Slack-Integration für Test-Alerts.
Vorgehen:
1. 5 Canary-Prompts mit gespeicherten Referenz-Outputs definieren (markenkritischste Anforderungen).
2. Automatischen Abweichungs-Alert gegen die Referenz-Outputs einrichten.
3. Eskalationsprozess bei detektierter Regression festlegen; Referenzen quartalsweise pruefen.
Vorlage: Performance-Regressions-Test:
1. 5 Canary-Prompts - mit gespeicherten Referenz-Outputs, die die markenkritischsten/schwierigsten Anforderungen abdecken.
2. Automatischer Abweichungs-Alert - bei Differenz zum Referenz-Output.
3. Eskalationsprozess - bei detektierter Regression.
Artefakt: Ein Regressions-Test-Protokoll (5 Canary-Prompts / Bewertungs-Kriterien / Alert-Schwelle / Eskalationsprozess) plus ein Langdock-Workflow-Template für den wöchentlichen Test-Lauf.
Fallstricke:
- Canary-Prompts zu wählen, die zu einfach sind und keine Qualitäts-Unterschiede zeigen, macht das Regressions-System blind für echte Qualitäts-Verschlechterungen — Mitigation: Canary-Prompts so wählen, dass sie die für die Marke kritischsten und schwierigsten Anforderungen (z.B. präzise Brand-Voice, komplexe Satzstruktur) abdecken.
- Referenz-Outputs nie zu aktualisieren führt dazu, dass das System legitime Qualitätsverbesserungen als Regression meldet — Mitigation: Referenz-Outputs quartalsweise überprüfen und bei nachgewiesener Qualitätssteigerung auf das neue Niveau anheben.
Empfehlung: Waehle Canary-Prompts, die die fuer die Marke kritischsten und schwierigsten Anforderungen abdecken (praezise Brand-Voice, komplexe Satzstruktur) - zu einfache Prompts machen das System blind fuer echte Qualitaets-Verschlechterungen. Ueberpruefe die Referenz-Outputs quartalsweise und hebe sie bei nachgewiesener Qualitaetssteigerung an, sonst meldet das System legitime Verbesserungen als Regression.
Anschluss: S-MK-060

### S-MK-060 Notfall-Kosten-Cap-Enforcement: Automatischer Workflow-Stopp bei Schwellenwert

Trigger: Ein fehlerhaft konfigurierter Loop-Knoten hat in der Vergangenheit das gesamte Monatsbudget in vier Stunden aufgebraucht — das Team will jetzt sicherstellen, dass ein solcher Vorfall automatisch gestoppt wird, bevor er das Budget sprengt, ohne dass ein Mensch manuell eingreifen muss. (Quelle: A-25)
Ziel: Ein automatisches Kosten-Cap-Enforcement-System aufsetzen, das bei Erreichen eines definierten Kosten-Schwellenwerts in Echtzeit alle oder bestimmte Workflows anhält und gleichzeitig eine Benachrichtigung auslöst.
Ergebnis: Ein Enforcement-Workflow (Kosten-Monitor → Schwellenwert-Prüfung → automatischer Pause-Befehl → Slack-Alert) plus eine dokumentierte Recovery-Prozedur (wie Workflows nach manueller Prüfung wieder aktiviert werden).
Fähigkeit: Workspace-Limit (harter Stopp), Workflow-Level-Budgets (weicher Stopp je Workflow), Warn-Schwellen (50/75/90%), Workflow-Builder (automatischer Stopp-Trigger), Slack-Integration.
Vorgehen:
1. Kosten-Monitor (API-Abruf) + Condition-Node (Schwellenwert-Pruefung) bauen.
2. Bei Ueberschreitung automatischen Pause-Befehl fuer kostenpflichtige Workflows + Slack-Alert ausloesen.
3. Recovery nur manuell nach menschlicher Pruefung; Monitoring-Workflow selbst mit Mini-Budget-Cap absichern.
Workflow: Schedule-Trigger -> Kosten-Monitor (API-Abruf) -> Condition-Node (Schwellenwert-Pruefung) -> automatischer Pause-Befehl (kostenpflichtige Workflows) -> Slack-Alert; manuelle Recovery nach Pruefung.
Budget: Reiner API-Abfrage-Workflow ohne LLM-Aufrufe + separates Mini-Budget-Cap (EUR 2/Monat); Per-Execution-Limit. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Ein Enforcement-Architektur-Dokument (drei Sicherheits-Ebenen / Intraday-Schwellenwert-Logik / Pause-Befehl / Recovery-Prozedur) plus ein Langdock-Workflow-Template für den automatischen Stopp-Trigger.
Fallstricke:
- Einen automatischen Resume-Mechanismus nach automatischem Stopp einzubauen, der nach einer Wartezeit alle Workflows wieder startet, perpetuiert den Loop-Fehler — Mitigation: ausschließlich manuelles Resume nach expliziter menschlicher Prüfung und Ursachenbehebung; kein automatisches Restart.
- Den Monitoring-Workflow selbst ohne Execution-Limit und ohne eigenes Budget-Cap zu lassen schafft eine Lücke: der Sicherheits-Mechanismus ist selbst nicht abgesichert — Mitigation: den Monitoring-Workflow als reinen API-Abfrage-Workflow ohne LLM-Aufrufe konfigurieren und ein separates, minimales Budget-Cap (€2/Monat) zuweisen.
Empfehlung: Baue ausschliesslich ein manuelles Resume nach expliziter menschlicher Pruefung und Ursachenbehebung ein, kein automatisches Restart nach Wartezeit - ein Auto-Resume perpetuiert den Loop-Fehler, der den Stopp ausgeloest hat. Sichere den Monitoring-Workflow selbst ab (reiner API-Abruf ohne LLM, eigenes Mini-Budget-Cap EUR 2/Monat, Execution-Limit), sonst ist der Sicherheits-Mechanismus selbst nicht abgesichert.
Anschluss: S-MK-061

### S-MK-061 Per-Task-Routing-Matrix für das gesamte Aufgaben-Portfolio formalisieren

Trigger: Das Marketing-Team hat 14 wiederkehrende Aufgabentypen (von Headline bis Quartals-Synthese), aber jede Person wählt das Modell nach Gefühl — und niemand kann sagen, welcher Aufgabentyp verbindlich auf welchem Modell laufen soll. (Quelle: A-27)
Ziel: Eine verbindliche, vollständige Per-Task-Routing-Matrix etablieren, die jedem Aufgabentyp ein günstigstes ausreichendes Modell zuordnet — und für jede Stufe eine günstigere und eine stärkere Alternative ausweist.
Ergebnis: Eine Routing-Matrix über alle 14 Aufgabentypen (Aufgabe → Default-Modell + EUR-Preis pro Token → günstigere Alternative → stärkere Alternative).
Fähigkeit: Modell-Katalog, manuelle Modellwahl, Wissensordner als Matrix-Ablage, Usage-Export zur Validierung.
Vorgehen:
1. Liste alle 14 Aufgabentypen aus dem realen Portfolio und ordne jeden in eine Modell-Klasse: Light (Daten-Cleanup, Formatierung), Efficient (Drafts, Headlines, Klassifikation), Balanced/Step-up (Briefings, JSON-Reports), Strong (Brand-Voice-Langform), Frontier (heterogene Synthese).
2. Trage als Default je Aufgabe das günstigste tragfähige Modell ein und ergänze pro Zeile eine günstigere Alternative (z.B. GPT-5 Mini, €0,21/1M) für unkritische Varianten und eine stärkere (z.B. Sonnet 4.6, €2,58/1M) für Qualitäts-Eskalation.
3. Verankere die Matrix als Konversations-Starter im Content-Agenten, damit das Team sie im Chat abrufen kann, statt ein totes Dokument abzulegen.
4. Validiere nach vier Wochen über den Usage-Export, ob der reale Modell-Mix der Matrix folgt; bei Abweichung ist die Kommunikation, nicht die Matrix, das Problem.
Vorlage: Routing-Matrix (14 Aufgabentypen):
1. Je Aufgabe - Default-Modell + EUR-Preis pro Token -> guenstigere Alternative -> staerkere Alternative.
2. Eskalations-Kriterium - je Zeile, wann auf die staerkere Alternative gewechselt wird.
3. Ablage - als Konversations-Starter im genutzten Agenten.
Artefakt: Eine Routing-Matrix (Aufgabentyp / Default-Modell / EUR-Preis / günstigere Alternative / stärkere Alternative / Begründung) als Konversations-Starter im Content-Agenten.
Fallstricke:
- Eine Matrix ohne ausgewiesene Eskalations-Alternative zwingt das Team bei Qualitätsbedarf zurück ins Bauchgefühl — Mitigation: jede Zeile muss eine definierte stärkere Alternative und ein Eskalations-Kriterium nennen, nicht nur einen Default.
- Eine Matrix, die das Team nicht im Arbeitsfluss findet, wird ignoriert — Mitigation: als Konversations-Starter im genutzten Agenten verankern, nicht nur als Ordner-Datei.
Empfehlung: Nenne in jeder Zeile eine definierte staerkere Alternative und ein Eskalations-Kriterium, nicht nur einen Default - sonst faellt das Team bei Qualitaetsbedarf zurueck ins Bauchgefuehl. Verankere die Matrix als Konversations-Starter im genutzten Agenten, nicht nur als Ordner-Datei, da eine Matrix, die das Team im Arbeitsfluss nicht findet, ignoriert wird.
Anschluss: S-MK-062

### S-MK-062 Workspace-Kostenguardrails mehrstufig absichern: Quota, Cap, Alert

Trigger: Nach mehreren knappen Monatsabschlüssen will der Marketing-Operations-Lead nicht mehr auf den harten €500-Stopp warten, sondern ein gestaffeltes Guardrail-System, das pro Nutzer, pro Workflow und global gleichzeitig greift. (Quelle: A-25)
Ziel: Ein dreischichtiges Guardrail-System (Per-User-Quota → Workflow-Cap → Workspace-Limit mit 50/75/90%-Alerts) aufsetzen, das Cost-Leakage früh stoppt, ohne legitime Arbeit pauschal zu blockieren.
Ergebnis: Eine konfigurierte Guardrail-Architektur plus ein Eskalations-Sheet, das jede Stufe an einen Verantwortlichen koppelt.
Fähigkeit: Workspace-Limit, Per-User-Quota, Workflow-Level-Budget, Warn-Schwellen (50/75/90%), Usage-Transparenz-Leiste.
Vorgehen:
1. Setze als äußerste Schicht das Workspace-Limit (Standard €500) mit Alerts bei 50/75/90% an die Marketing-Operations-Adresse — nicht nur an den technischen Admin.
2. Lege als mittlere Schicht Per-User-Quotas fest, damit ein einzelner Nutzer das Gemeinschaftsbudget nicht allein aufzehren kann; Default niedrig, Hochwahl begründungspflichtig.
3. Setze als innerste Schicht für jeden produktiven Workflow ein dediziertes Budget plus Per-Execution-Limit (max. 2.000 Schritte) — die erste Barriere gegen Loop-Fehler.
4. Dokumentiere pro Schicht eine günstigere Sofortmaßnahme (Modell-Downgrade) und eine stärkere (Workflow-Pause), damit bei Erreichen jeder Schwelle klar ist, was zuerst zu tun ist.
Vorlage: Mehrschichtige Budget-Guardrails:
1. Drei Schichten - globales Workspace-Limit + Per-User-Schicht + Workflow-Schicht.
2. Eskalations-Sheet - jede Schwelle an einen namentlichen Verantwortlichen mit Reaktionszeit gekoppelt.
Artefakt: Eine Guardrail-Architektur (Schicht / Schwellenwert / Verantwortlicher / Sofortmaßnahme) plus ein konfiguriertes Alert-Set im Workspace-Admin.
Fallstricke:
- Nur ein globales Workspace-Limit ohne Per-User- oder Workflow-Schicht lässt einen einzelnen Ausreißer bis zum harten Stopp laufen — Mitigation: immer alle drei Schichten aktivieren, das globale Limit ist die letzte, nicht die einzige Barriere.
- Alerts ohne namentlichen Empfänger verpuffen — Mitigation: jede Schwelle an eine benannte Person mit definierter Reaktionszeit koppeln.
Empfehlung: Aktiviere immer alle drei Schichten (Workspace, Per-User, Workflow) - ein einzelnes globales Limit laesst einen Ausreisser bis zum harten Stopp laufen; das globale Limit ist die letzte, nicht die einzige Barriere. Koppele jede Schwelle an eine benannte Person mit definierter Reaktionszeit, da Alerts ohne namentlichen Empfaenger verpuffen.
Anschluss: S-MK-063

### S-MK-063 Token-Budget-Forecast pro Quartal aus Treibern modellieren

Trigger: Das Controlling will keine pauschale Fortschreibung der KI-Kosten mehr, sondern einen aus Treibern hergeleiteten Quartals-Forecast — basierend auf geplanten Kampagnen, Team-Größe und Automatisierungsgrad. (Quelle: sources/12 Q119)
Ziel: Den Token-Verbrauch des nächsten Quartals aus konkreten Treibern (Kampagnen-Anzahl, Workflow-Runs, aktive Nutzer) prognostizieren, statt linear aus dem Vormonat fortzuschreiben.
Ergebnis: Ein Treiber-basiertes Forecast-Modell (Treiber × Token-Faktor × Modell-EUR-Preis) mit Best-/Base-/Worst-Case-Spannen.
Fähigkeit: Usage-Export (historische Treiber-Token-Verhältnisse), Modell-Katalog (EUR-Preise), Wissensordner für Forecast-Vorlage.
Vorgehen:
1. Leite aus dem Usage-Export historische Token-pro-Treiber-Verhältnisse ab (Token pro Kampagne, pro Workflow-Run, pro aktivem Nutzer/Monat) — diese Faktoren sind die Forecast-Basis.
2. Multipliziere die geplanten Treibermengen des Quartals mit den Faktoren und dem erwarteten Modell-Mix-EUR-Preis, um die Token-Kosten je Treiber zu erhalten.
3. Rechne drei Szenarien: Base (Plan), Best (-20% Volumen), Worst (+40% durch Adoption) — der Forecast ist eine Spanne, kein Punktwert.
4. Übergib den Forecast an Controlling mit der Basis-Notiz "EUR-Preise Stand Mai 2026, gegen langdock.com/models prüfen" und einer günstigeren Hebel-Liste (Modell-Downgrades), falls das Worst-Case-Szenario eintritt.
Vorlage: Treiber-basiertes Kosten-Forecast-Modell:
1. Berechnung - Treiber x Token-Faktor x Modell-EUR-Preis je Aufgabentyp.
2. Spannen - Best-/Base-/Worst-Case; Worst-Case = Adoptions-Szenario.
3. Datierung - Usage-Historie + EUR-Preis-Quelle mit Datum.
Artefakt: Ein Forecast-Modell (Treiber / Token-Faktor / geplante Menge / EUR-Preis / EUR je Szenario) als Controlling-Vorlage.
Fallstricke:
- Einen Punkt-Forecast statt einer Spanne abzugeben suggeriert eine Scheingenauigkeit, die bei der ersten Adoptionswelle bricht — Mitigation: immer Best/Base/Worst-Spanne ausweisen und den Worst-Case explizit als Adoptions-Szenario benennen.
- Treiber-Faktoren ohne Datum altern still — Mitigation: jeden Forecast mit dem Datum der zugrundeliegenden Usage-Historie und der EUR-Preis pro Token-Quelle versehen.
Empfehlung: Weise immer eine Best/Base/Worst-Spanne aus und benenne den Worst-Case explizit als Adoptions-Szenario, statt einen Punkt-Forecast abzugeben - eine Scheingenauigkeit bricht bei der ersten Adoptionswelle. Versieh jeden Forecast mit dem Datum der zugrundeliegenden Usage-Historie und der EUR-Preis-Quelle, da Treiber-Faktoren sonst still altern.
Anschluss: S-MK-064

### S-MK-064 Quality-vs-Cost-A/B-Harness als wiederholbaren Test aufbauen

Trigger: Das Team trifft Modell-Entscheidungen anekdotisch ("Sonnet fühlt sich besser an") und will eine reproduzierbare Testumgebung, die Qualität und Kosten für jeden Aufgabentyp gegeneinander stellt. (Quelle: A-21)
Ziel: Einen wiederholbaren A/B-Harness etablieren, der für jeden Aufgabentyp zwei Modelle blind gegeneinander bewertet und einen Qualität-pro-EUR-Wert ausgibt — die Grundlage jeder Routing-Entscheidung.
Ergebnis: Ein A/B-Harness (fixe Testfälle, Blind-Bewertungsraster, Kostenmessung) plus ein erstes Ergebnis-Set für zwei Kandidatenmodelle.
Fähigkeit: Manuelle Modellwahl, Wissensordner für Testfälle und Bewertungsraster, Usage-Export für Kostenmessung.
Vorgehen:
1. Lege je Aufgabentyp 3 fixe, unveränderliche Testfälle im Wissensordner ab — sie sind der dauerhafte Anker, damit Ergebnisse über Zeit vergleichbar bleiben.
2. Führe jeden Testfall auf beiden Kandidatenmodellen aus, anonymisiere die Outputs (Modell A/B), und lass mindestens zwei Bewerter blind nach einem 1-5-Raster (Relevanz, Sprachqualität, Strukturtreue) urteilen.
3. Miss die tatsächlichen Kosten je Lauf über den Usage-Export (Token-Menge × EUR-Preis pro 1M Tokens) und berechne Qualität-pro-EUR pro Aufgabentyp.
4. Gib pro Aufgabentyp eine Empfehlung aus: günstigeres Modell, wenn Qualität gleichwertig; stärkeres Modell nur, wenn der Qualitätsvorsprung den Mehrpreis trägt.
Vorlage: A/B-Modell-Evaluierungs-Harness:
1. Fixe Testfaelle - mindestens 3 pro Aufgabentyp.
2. Blind-Bewertungsraster - Outputs als Modell A/B anonymisiert, Aufloesung erst nach dem Urteil.
3. Kostenmessung - parallel zur Qualitaet; 2 unabhaengige Bewerter.
Artefakt: Ein A/B-Harness-Ergebnis (Aufgabentyp / Modell A Score / Modell B Score / Kosten / Qualität-pro-EUR / Empfehlung) als wiederverwendbarer Wissensordner-Eintrag.
Fallstricke:
- Nicht-blinde Bewertung verzerrt zugunsten des Marken-Lieblings (Anthropic/Google) — Mitigation: Outputs vor der Bewertung als Modell A/B anonymisieren, Auflösung erst nach dem Urteil.
- Ein einziger Bewerter oder ein einziger Testfall pro Aufgabentyp ist statistisch nicht belastbar — Mitigation: mindestens 3 Testfälle und 2 unabhängige Bewerter pro Aufgabentyp.
Empfehlung: Anonymisiere Outputs vor der Bewertung als Modell A/B und loese die Zuordnung erst nach dem Urteil auf - nicht-blinde Bewertung verzerrt zugunsten des Marken-Lieblings (Anthropic/Google). Nutze mindestens 3 Testfaelle und 2 unabhaengige Bewerter pro Aufgabentyp, da ein einziger Bewerter oder Testfall statistisch nicht belastbar ist.
Anschluss: S-MK-065

### S-MK-065 Caching-ROI berechnen: Lohnt sich ein statischer Prompt-Block wirklich?

Trigger: Der Briefing-Agent überträgt bei jeder der täglich 200 Anfragen denselben 3.500-Token-Kontext (Persona, Styleguide, Format) — bevor das Team in einen Caching-Umbau investiert, soll der tatsächliche ROI belegt werden. (Quelle: A-22)
Ziel: Den wirtschaftlichen Nutzen von Prompt-Caching für den statischen Kontext-Anteil quantifizieren und nur dann umbauen, wenn die Volumen- und Token-Schwellen den Overhead schlagen.
Ergebnis: Eine Caching-ROI-Rechnung (statische Token × Anfragen × Treffer-Rate × EUR-Preis pro Token) mit Go/No-Go-Entscheidung und ggf. einer umgebauten Prompt-Struktur.
Fähigkeit: Agenten-Konfiguration (System-Prompt-Strukturierung), Wissensordner als praktische Caching-Entsprechung, Usage-Export für Token-Messung.
Vorgehen:
1. Trenne im Prompt den statischen Block (Persona, Styleguide, Format) vom variablen (Kampagne, Datum, Zielgruppe) und miss die statische Token-Zahl exakt — nur der statische Teil ist cachefähig.
2. Prüfe die Schwellen: statischer Block >2.048 Token UND >5 Anfragen/Minute; darunter überwiegt der Cache-Verwaltungsoverhead und die Antwort ist No-Go.
3. Berechne die Ersparnis: statische Token × Anfragen/Tag × Treffer-Rate (z.B. 70%) × (1 − Cache-Lesefaktor) × EUR-Preis pro Token × Basispreis = EUR/Monat; vergleiche mit dem Umbauaufwand.
4. Setze, wenn Go, den statischen Block als RAG-Inhalt in den Wissensordner (Langdocks praktische Caching-Entsprechung) und ordne den variablen Teil hinten an, um die Trefferquote zu maximieren.
Empfehlung: Treffe die Caching-Entscheidung ueber eine ROI-Rechnung (statische Token x Anfragen x Treffer-Rate x EUR-Preis pro Token) mit klarem Go/No-Go - ein No-Go ist ein valides Ergebnis, da Caching unter den Schwellen (niedriges Volumen) mehr Pflegeaufwand kostet als es spart. Plane bei Go eine quartalsweise Cache-/Wissensordner-Review-Pflicht ein, damit keine veralteten Styleguides in die Produktion gelangen.
Artefakt: Eine Caching-ROI-Rechnung (statische Token / Treffer-Rate / EUR-Ersparnis / Go-No-Go) plus, bei Go, eine umgebaute Prompt-Struktur.
Fallstricke:
- Caching unter den Schwellen (niedriges Volumen) einzuführen kostet mehr Pflegeaufwand als es spart — Mitigation: erst Volumen und statische Token messen, dann entscheiden; No-Go ist ein valides Ergebnis.
- Gecachte Inhalte zu selten zu prüfen schleust veraltete Styleguides in die Produktion — Mitigation: quartalsweise Cache-/Wissensordner-Review-Pflicht.
Anschluss: S-MK-066

### S-MK-066 Long-Context-Kostentradeoff: Großes Modell vs. RAG-Chunking abwägen

Trigger: Ein 300-seitiger Marktreport soll wiederholt abgefragt werden — das Team überlegt, ob es ihn als Ganzes in ein Modell mit großem Kontextfenster lädt oder per RAG chunkt, und kennt den Kostenunterschied nicht. (Quelle: sources/12 Q20)
Ziel: Den Kostentradeoff zwischen Voll-Kontext-Verarbeitung (großes Kontextfenster) und RAG-Chunking für große, wiederholt abgefragte Dokumente bewerten und die günstigere Methode je Aufgabentyp wählen.
Ergebnis: Eine Tradeoff-Rechnung (Voll-Kontext-Token vs. RAG-Chunk-Token pro Abfrage × Abfragehäufigkeit) plus eine Methodenempfehlung je Aufgabentyp.
Fähigkeit: Modell-Katalog (Kontextfenster, Gemini 2.5 Flash als Großkontext-Option), Wissensordner (RAG-Chunking), Usage-Export.
Vorgehen:
1. Beziffere den Token-Umfang: 300 Seiten ≈ 150.000–200.000 Token; nur Modelle wie Gemini 2.5 Flash (Großkontext) verarbeiten das vollständig inline.
2. Stelle die Kosten gegenüber: Voll-Kontext lädt bei jeder Abfrage die gesamten Token (teuer bei vielen Abfragen); RAG lädt nur die Top-k Chunks (günstiger bei wiederholten, gezielten Fragen).
3. Trenne nach Aufgabentyp: dokumentweite Synthese braucht Voll-Kontext (einmalig, dafür großes Modell); gezielte Faktenfragen brauchen nur RAG-Chunks (günstig, wiederholbar).
4. Empfiehl die günstigere Methode je Aufgabentyp und weise bei Großkontext-Nutzung auf die "lost in the middle"-Schwäche hin — kritische Passagen explizit als Zitat anfordern.
Empfehlung: Rechne den Tradeoff Voll-Kontext vs. RAG-Chunk (Token pro Abfrage x Abfragehaeufigkeit) und empfiehl die Methode je Aufgabentyp - nutze RAG fuer wiederholte gezielte Abfragen und Voll-Kontext nur fuer die einmalige Synthese, da wiederholtes Inline-Laden die Input-Kosten unnoetig multipliziert. Fordere bei Grosskontext-Modellen kritische Passagen explizit als Zitat an, statt auf implizites Scanning zu vertrauen, da sie in der Dokumentmitte an Praezision verlieren.
Artefakt: Eine Tradeoff-Rechnung (Methode / Token pro Abfrage / Häufigkeit / EUR/Monat) plus eine Methodenempfehlung je Aufgabentyp.
Fallstricke:
- Ein großes Dokument bei jeder Folgefrage vollständig inline zu laden multipliziert die Input-Kosten unnötig — Mitigation: für wiederholte gezielte Abfragen RAG nutzen, Voll-Kontext nur für einmalige Synthese.
- Großkontext-Modellen blind zu vertrauen ignoriert Präzisionsverlust in der Dokumentmitte — Mitigation: kritische Passagen explizit als Zitat anfordern statt auf implizites Scanning zu setzen.
Anschluss: S-MK-067

### S-MK-067 Vision-Task-Kostenplanung: Bild-Inputs vor dem Rollout kalkulieren

Trigger: Die Brand-Managerin plant einen wöchentlichen Vision-Check von Agentur-Kreativen (je ~80 Bilder), aber die erste Testrechnung war unerwartet hoch und niemand weiß, wie Bild-Inputs in Token umgerechnet werden. (Quelle: sources/12 Q30)
Ziel: Die Token-Kostenstruktur von Vision-Tasks transparent machen und einen budgetierten, kosteneffizienten Vision-Workflow für wiederkehrende CD-Checks aufsetzen.
Ergebnis: Eine Vision-Kostenprognose (Bilder × Token-Äquivalent × EUR-Preis pro Token) plus eine Modellwahl- und Auflösungs-Empfehlung.
Fähigkeit: Vision-fähige Modelle (Gemini 2.5 Flash, Sonnet 4.6), Workflow-Builder, Workflow-Budget-Cap, Modell-Katalog.
Vorgehen:
1. Halte fest: ein Bild wird je nach Auflösung in 1.000–2.000 Token-Äquivalente umgerechnet; 80 Bilder/Woche ≈ 80.000–160.000 Input-Token pro Lauf.
2. Wähle für strukturierte CD-Checks (Farben, Logo-Abstand, Schriftart) das günstigere Vision-Modell Gemini 2.5 Flash statt eines teuren Reasoning-Modells — die Aufgabe ist Prüfung, kein kreatives Reasoning.
3. Reduziere die Bildauflösung vor dem Upload auf das für den Check nötige Minimum — höhere Auflösung erhöht die Token-Kosten ohne Qualitätsgewinn für Compliance-Checks.
4. Baue einen Batch-Workflow (kein interaktiver Chat) mit Workflow-Budget-Cap, der je Bild "Konform / Nicht konform: [Regel]" in eine Tabelle schreibt.
Empfehlung: Erstelle eine Vision-Kostenprognose (Bilder x Token-Aequivalent x EUR-Preis pro Token) und empfiehl Modell + Aufloesung - komprimiere Bilder vor dem Upload auf die noetige Mindestaufloesung, da volle Aufloesung die Token-Kosten ohne Mehrwert fuer strukturierte Checks treibt. Fuehre serielle Bildpruefungen immer als Batch-Workflow aus, nie als Chat-Session, da Letztere Kontext kumuliert und Folge-Bilder verteuert.
Artefakt: Eine Vision-Kostenprognose (Bilder / Token-Äquivalent / EUR-Preis / EUR pro Lauf) plus eine Batch-Pipeline-Empfehlung mit Budget-Cap.
Fallstricke:
- Bilder in voller Auflösung zu senden treibt die Token-Kosten ohne Mehrwert für strukturierte Checks — Mitigation: vor dem Upload auf die nötige Mindestauflösung komprimieren.
- Vision-Checks im interaktiven Chat statt im Batch-Workflow auszuführen kumuliert Kontext und verteuert Folge-Bilder — Mitigation: serielle Bildprüfung immer als Workflow, nie als Chat-Session.
Anschluss: S-MK-068

### S-MK-068 Batch-Discount-Hebel: Asynchrone Verarbeitung statt Echtzeit-Premium

Trigger: Eine monatliche Lokalisierung von 6.000 Katalogtexten läuft bisher tagsüber im interaktiven Chat — das Team hört, dass asynchrone Batch-Verarbeitung deutlich günstiger sein kann, und will den Hebel beziffern. (Quelle: A-24)
Ziel: Den Kostenhebel asynchroner Batch-Verarbeitung gegenüber synchroner Echtzeit-Nutzung quantifizieren und latenz-tolerante Massenaufgaben konsequent in günstigere Batch-Läufe verschieben.
Ergebnis: Eine Hebel-Rechnung (Batch vs. Sync für denselben Job) plus ein konfigurierter Nacht-Batch-Workflow mit günstigem Modell.
Fähigkeit: Workflow-Builder (JSON-Array-Input, Zeitplan-Trigger), Haiku 4.5 / Gemini 2.5 Flash, Workflow-Level-Budget.
Vorgehen:
1. Halte fest: Der primäre Hebel ist nicht ein anderer Token-Preis, sondern die Kombination aus günstigem zugewiesenem Modell (Flash/Haiku, günstigstes Tier) und der Vermeidung von Rate-Limit-Engpässen — typische Differenz 5–10x gegenüber dem Sync-Chat mit zu teurem Default.
2. Verpacke die 6.000 Texte als JSON-Array und weise dem Batch-Schritt fest ein Light-Modell zu; niemals Auto Mode in einem Massen-Workflow.
3. Triggere den Lauf nachts (Zeitplan-Trigger), damit er kein Tages-Kontingent der interaktiven Agenten blockiert, und setze ein Workflow-Budget plus Per-Execution-Limit.
4. Rechne nach dem ersten Lauf die Ist-Kosten gegen eine Sync-Chat-Schätzung und dokumentiere den Faktor fürs Controlling.
Workflow: Schedule-Trigger (Nacht) -> Loop ueber Job-Items -> AI-Node (fest guenstiges Light-Modell zugewiesen) -> Output. Hebel-Rechnung Batch vs. Sync dokumentiert.
Budget: Workflow-Level-Budget + Per-Execution-Limit; Light-Modell explizit gesetzt (nie Auto Mode). (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Eine Hebel-Rechnung (Weg / Modell / EUR / Differenzfaktor) plus ein konfigurierter Nacht-Batch-Workflow.
Fallstricke:
- "Batch ist billiger" als pauschale Annahme zu nehmen ohne die Modellzuweisung zu prüfen verfehlt den eigentlichen Hebel — Mitigation: der Spareffekt entsteht durch das günstige zugewiesene Modell, nicht durch den Batch-Modus an sich; immer explizit ein Light-Modell setzen.
- Batch-Output ohne Stichproben-Review skaliert systematische Fehler — Mitigation: 2% der Outputs per Sonnet-Stichprobe prüfen, bevor der Datensatz produktiv geht.
Empfehlung: Setze im Batch-Workflow explizit ein Light-Modell - der Spareffekt entsteht durch die guenstige Modellzuweisung, nicht durch den Batch-Modus an sich; 'Batch ist billiger' als pauschale Annahme verfehlt den Hebel. Pruefe 2 % der Outputs per Sonnet-Stichprobe, bevor der Datensatz produktiv geht, da ein Batch ohne Review systematische Fehler skaliert.
Anschluss: S-MK-069

### S-MK-069 Modell-Retirement-Migrationskosten beziffern und einplanen

Trigger: Ein Provider kündigt das Auslaufen eines genutzten Modells in 60 Tagen an — das Team braucht nicht nur einen Migrationsplan, sondern eine belastbare Bezifferung der Migrationskosten für die Budgetfreigabe. (Quelle: sources/12 Q24)
Ziel: Die vollständigen Migrationskosten eines Modell-Retirements quantifizieren (Prompt-Anpassung, Tests, Parallelbetrieb, EUR-Preis-Delta) und gegen die Frist und das Budget abstimmen.
Ergebnis: Eine Migrationskosten-Kalkulation (Einmalaufwand + Übergangskosten + laufendes EUR-Preis-Delta) mit Fristenplan und Budgetfreigabe-Empfehlung.
Fähigkeit: Modell-Katalog (EUR-Preis-Vergleich), Usage-Export (Volumen je betroffenem Agenten), Wissensordner für Agenten-Inventar, manuelle Modellwahl.
Vorgehen:
1. Inventarisiere die betroffenen Agenten/Workflows mit Token-Volumen und Kritikalität; priorisiere produktionskritische zuerst.
2. Beziffere den Einmalaufwand: Prompt-Anpassung (2–4 h/Agent) plus Scorecard-Tests (5 Durchläufe/Agent) × Stundensatz.
3. Beziffere die Übergangskosten: 2–4 Wochen Parallelbetrieb verdoppeln in dieser Phase die Token-Kosten der betroffenen Agenten — als (alter + neuer EUR-Preis pro Token) × halbes Volumen × Wochen.
4. Beziffere das laufende Delta: hat das Nachfolgemodell einen höheren oder niedrigeren EUR-Preis? Weise eine günstigere Nachfolge-Option und eine stärkere aus und empfiehl die wirtschaftlich tragfähige.
Empfehlung: Kalkuliere die Migrationskosten vollstaendig (Einmalaufwand + Uebergangskosten inkl. Parallelbetrieb-Doppelkosten als eigene Zeile + laufendes EUR-Preis-Delta) mit Fristenplan und Budgetfreigabe-Empfehlung - der Parallelbetrieb wird sonst vergessen und die Kosten unterschaetzt. Pruefe das Nachfolgemodell per Scorecard, auch innerhalb derselben Modellfamilie, statt es als 'aehnlich' direkt in Produktion zu nehmen.
Artefakt: Eine Migrationskosten-Kalkulation (Einmalaufwand / Übergangskosten / laufendes Delta / Fristenplan) als Budgetfreigabe-Vorlage.
Fallstricke:
- Den Parallelbetrieb in der Kalkulation zu vergessen unterschätzt die Migrationskosten erheblich — Mitigation: die Doppelkosten der Übergangsphase explizit als eigene Zeile ausweisen.
- Das Nachfolgemodell ohne Scorecard-Test in Produktion zu nehmen, weil es "ähnlich" ist, riskiert stille Qualitätseinbrüche — Mitigation: jede Retirement-Migration erfordert eine Scorecard-Qualitätsprüfung, auch innerhalb derselben Modellfamilie.
Anschluss: S-MK-070

### S-MK-070 BYOC-Break-Even präzise bestimmen: ab welchem Volumen lohnt eigene Compute?

Trigger: Für einen rechenintensiven analytischen Use Case prüft die IT, ob BYOC (Bring Your Own Compute) über einen bestehenden Cloud-Rahmenvertrag günstiger ist als die Langdock-Standardabrechnung — und ab welchem Monatsvolumen sich der Aufwand rechnet. (Quelle: sources/12 Q117)
Ziel: Den exakten Break-Even-Punkt zwischen Langdock-Standardabrechnung und BYOC ermitteln, inklusive aller versteckten Kosten (Enterprise-Tier, Key-Management), statt nur die reinen Token-Preise zu vergleichen.
Ergebnis: Eine Break-Even-Kalkulation (monatliches Request-Volumen, ab dem BYOC günstiger wird) plus eine Empfehlung an IT und Einkauf.
Fähigkeit: BYOC (Enterprise-Tier), Usage-Export für Volumenmessung, Modell-Katalog (EUR-Preise), BYOK als Vergleichsalternative.
Vorgehen:
1. Miss das reale Monatsvolumen des Use Case über den Usage-Export — eine Break-Even-Rechnung ohne belastbares Volumen führt zur Fehlentscheidung.
2. Stelle die Kostenwege gegenüber: Langdock-Standard (EUR-Preis + 10% API-Aufschlag) vs. BYOC (direkter Provider-Preis über Rahmenvertrag, aber plus Enterprise-Tier-Lizenz und Key-Management-Aufwand).
3. Berücksichtige, dass BYOC den Enterprise-Tier voraussetzt — falls aktuell Standard/Max, gehören die Tier-Upgrade-Kosten in die Break-Even-Rechnung.
4. Empfiehl BYOC nur, wenn alle drei Bedingungen erfüllt sind: Enterprise-Tier ohnehin vorhanden, Use-Case-Volumen über der berechneten Schwelle und IT-Kapazität für Key-Management; sonst bleibt die günstigere Standardabrechnung.
Empfehlung: Berechne fuer BYOC das monatliche Request-Volumen, ab dem es guenstiger wird, und bezieh die vollstaendige Kostenstruktur (Lizenz + Betrieb) ein - BYOC-Rechnungen ohne Enterprise-Tier-Aufpreis und Key-Management unterschaetzen die Gesamtkosten und fuehren zu vorschnellen Umstiegen. Pruefe die IT-Betriebskapazitaet fuer Key-Rotation als harte Voraussetzung vor der Break-Even-Freigabe, da fehlende Kapazitaet Ausfallrisiken erzeugt.
Artefakt: Eine Break-Even-Kalkulation (Kostenweg A vs. B / Break-Even-Volumen / Empfehlung) mit einer Eskalationsschwelle für die IT.
Fallstricke:
- BYOC-Rechnungen, die den Enterprise-Tier-Aufpreis und das Key-Management vergessen, unterschätzen die Gesamtkosten und führen zu vorschnellen Umstiegen — Mitigation: immer die vollständige Kostenstruktur (Lizenz + Betrieb) in den Vergleich aufnehmen.
- BYOC ohne IT-Kapazität für Key-Rotation erzeugt Ausfallrisiken — Mitigation: die Betriebskapazität als harte Voraussetzung vor der Break-Even-Freigabe prüfen.
Anschluss: S-MK-071

### S-MK-071 Kosten pro akquiriertem Lead: KI-Ausgaben an den Funnel koppeln

Trigger: Der CFO akzeptiert keine reinen Token-Zahlen mehr und fragt, was ein über KI-produzierte Inhalte gewonnener Lead tatsächlich kostet — der Marketing-Direktor braucht eine Metrik, die KI-Ausgaben mit dem Funnel-Ergebnis verbindet. (Quelle: A-01)
Ziel: Eine Cost-per-Acquired-Lead-Metrik einführen, die KI-Produktionskosten (Token + Redaktion) den tatsächlich generierten Leads gegenüberstellt und für die CFO-Kommunikation taugt.
Ergebnis: Eine Cost-per-Lead-Rechnung (KI vs. extern) plus eine monatliche Erhebungsvorlage mit Qualitäts-Korrektiv.
Fähigkeit: Usage-Export (Token-Kosten je Kampagne), Wissensordner für Kampagnen-Performance und Stundensätze, Modell-Katalog.
Vorgehen:
1. Ermittle die KI-Produktionskosten je Lead-Magnet: Token-Kosten (Usage-Export) plus Redaktionszeit-Wert (Stunden × Stundensatz) — Token allein verschönert die Metrik unfair.
2. Setze die Gesamtkosten ins Verhältnis zu den tatsächlich generierten Leads aus dem CRM-Kampagnen-Report (Kosten ÷ Leads = Cost-per-Lead).
3. Vergleiche mit dem externen Benchmark (extern produzierter Lead-Magnet, historische Lead-Zahl) und weise den Kosten-Faktor aus — bei deutlich günstigerer KI-Produktion ist das die CFO-Aussage.
4. Erfasse als Korrektiv die Lead-Qualität (z.B. SQL-Rate) je Weg, damit der Kostenvergleich nicht an minderwertigen Leads scheitert.
Empfehlung: Vergleiche Cost-per-Lead von KI vs. extern ueber die Total Cost of Output (Token + Redaktion), nicht ueber Token allein, und erhebe die Metrik monatlich. Fuehre die SQL-/Konversionsrate je Weg immer mit, da Cost-per-Lead ohne Qualitaets-Korrektiv Aepfel mit Birnen vergleicht, wenn KI-Leads schwaecher konvertieren.
Artefakt: Eine Cost-per-Acquired-Lead-Rechnung (KI vs. extern / Cost-per-Lead / Faktor / SQL-Rate) plus eine monatliche Erhebungsvorlage.
Fallstricke:
- Den Redaktions-Overhead bei der KI-Kostenseite wegzulassen erzeugt eine geschönte, angreifbare Metrik — Mitigation: immer Total Cost of Output (Token + Redaktion) als Basis.
- Cost-per-Lead ohne Qualitäts-Korrektiv vergleicht Äpfel mit Birnen, wenn KI-Leads schwächer konvertieren — Mitigation: die SQL- oder Konversionsrate je Weg immer mitführen.
Anschluss: S-MK-072

### S-MK-072 Saisonale Spitzen budgetieren: Peak-Reserve ohne Dauer-Erhöhung

Trigger: Vor der Weihnachtskampagne erwartet das Team ein Vielfaches des üblichen KI-Volumens für drei Wochen — das reguläre Workspace-Limit würde früh greifen, aber eine dauerhafte Erhöhung will niemand. (Quelle: sources/12 Q119)
Ziel: Ein saisonales Budget-Modell aufsetzen, das Peak-Phasen temporär absichert und nach dem Peak verlässlich auf das reguläre Niveau zurückfällt, ohne die Routine-Agenten zu blockieren.
Ergebnis: Ein Peak-Budget-Plan (temporäre Limit-Erhöhung mit Rücksetz-Datum, Kampagnen-vs-Routine-Trennung) plus eine Freigabe-Notiz.
Fähigkeit: Workspace-Limit (temporäre Erhöhung), Workflow-Level-Budgets (Kampagnen-dediziert), Warn-Schwellen (50/75/90%), Modell-Katalog.
Vorgehen:
1. Quantifiziere den Peak-Bedarf aus dem Vorjahres-Usage-Export oder einer analogen Kampagne — Peak-Faktor als Planungsgröße, nicht geschätzt.
2. Beantrage eine temporäre, rechnerisch begründete Workspace-Limit-Erhöhung nur für den Kampagnenzeitraum, mit einem fest hinterlegten Rücksetz-Datum.
3. Trenne Budgets: Kampagnen-Workflows erhalten ein dediziertes Peak-Budget, Routine-Agenten ein separates, damit sie sich nicht gegenseitig verdrängen.
4. Nutze in der Peak-Phase günstige Modelle als Default für die Massenarbeit und reserviere stärkere Modelle für die wenigen qualitätskritischen Hero-Assets.
Vorlage: Peak-Budget-Plan (Saison):
1. Temporaere Limit-Erhoehung - mit Ruecksetz-Datum.
2. Kampagne-vs-Routine-Trennung - dedizierte Workflow-Budgets.
3. Freigabe-Notiz.
Artefakt: Ein Peak-Budget-Plan (Bedarfsschätzung / temporäres Limit / Rücksetz-Datum / Budget-Trennung) als jährlich wiederverwendbare Vorlage.
Fallstricke:
- Das Peak-Limit nach der Kampagne nicht zurückzusetzen etabliert es als neue Norm — Mitigation: das Rücksetz-Datum als Admin-Kalender-Event direkt beim Erhöhungsantrag hinterlegen.
- Routine-Agenten ohne eigenes Budget werden in der Peak-Phase vom Kampagnen-Volumen verdrängt — Mitigation: dedizierte Workflow-Budget-Trennung zwischen Peak und Dauerbetrieb.
Empfehlung: Hinterlege das Ruecksetz-Datum als Admin-Kalender-Event direkt beim Erhoehungsantrag - ein nicht zurueckgesetztes Peak-Limit etabliert sich als neue Norm. Trenne die Workflow-Budgets von Peak und Dauerbetrieb, sonst verdraengt das Kampagnen-Volumen die Routine-Agenten von ihrem Kontingent.
Anschluss: S-MK-073

### S-MK-073 FinOps-Tagging: KI-Kosten verursachungsgerecht kennzeichnen

Trigger: Die Finanzabteilung will KI-Kosten nicht mehr als anonymen Sammelposten sehen, sondern nach Kampagne, Team und Kostenstelle aufgeschlüsselt — bisher fehlt jede Kennzeichnungs-Systematik. (Quelle: sources/12 Q124)
Ziel: Ein FinOps-Tagging-Schema einführen, das jede KI-Nutzung über Projekt-/Namenskonventionen einer Kampagne, einem Team und einer Kostenstelle zuordenbar macht — die Grundlage für Chargeback und Forecast.
Ergebnis: Ein Tagging-Schema (Namenskonvention für Agenten/Workflows/Projekte) plus eine Auswertungs-Logik aus dem Usage-Export.
Fähigkeit: Workspace-Projekte und Gruppen, Usage-Export (per-User/per-Projekt-Filter), Wissensordner für das Tagging-Regelwerk.
Vorgehen:
1. Definiere ein dreiteiliges Präfix-Schema für alle Agenten/Workflows/Projekte: [Team]-[Kampagne]-[Zweck], z.B. "PERF-BF26-AdCopy" — so wird jede Nutzung im Usage-Export filterbar.
2. Lege fest, dass keine produktiven Assets ohne Tag angelegt werden dürfen, und verankere die Regel im Onboarding und im Sandbox-Review.
3. Baue die Auswertungs-Logik: Usage-Export nach Präfix gruppieren, Token-Menge × EUR-Preis pro 1M Tokens je Gruppe = EUR-Kosten je Kampagne/Team/Kostenstelle.
4. Übergib das aggregierte Ergebnis monatlich an Controlling; offene, ungetaggte Posten werden als "nicht zugeordnet" ausgewiesen und sind ein Signal für Prozessdisziplin.
Vorlage: Kosten-Tagging-Schema:
1. Namenskonvention - fuer Agenten/Workflows/Projekte auf Ebene Team/Kampagne/Zweck.
2. Auswertungs-Logik - aus dem Usage-Export nach Tags gruppieren.
3. Durchsetzung - Tag-Pflicht in Sandbox-Review + Onboarding; ungetaggte Posten ausweisen.
Artefakt: Ein FinOps-Tagging-Regelwerk (Namenskonvention / Pflichtregel / Auswertungs-Logik) plus eine Beispiel-Kostenaufschlüsselung je Tag.
Fallstricke:
- Ein Tagging-Schema, das nicht erzwungen wird, erzeugt einen wachsenden "nicht zugeordnet"-Block, der den Zweck unterläuft — Mitigation: die Tag-Pflicht im Sandbox-Review und Onboarding verankern und ungetaggte Posten sichtbar ausweisen.
- Zu granulare Tags (pro Einzel-Asset) erzeugen Pflegeaufwand ohne Mehrwert — Mitigation: auf der Ebene Team/Kampagne/Zweck taggen, nicht pro Datei.
Empfehlung: Erzwinge die Tag-Pflicht im Sandbox-Review und Onboarding und weise ungetaggte Posten sichtbar aus - ein nicht erzwungenes Schema erzeugt einen wachsenden 'nicht zugeordnet'-Block, der den Zweck unterlaeuft. Tagge auf Ebene Team/Kampagne/Zweck, nicht pro Einzel-Asset, da zu granulare Tags Pflegeaufwand ohne Mehrwert erzeugen.
Anschluss: S-MK-074

### S-MK-074 Latenz-SLO gegen Kosten ausbalancieren für interaktive Agenten

Trigger: Ein neuer interaktiver Kundendienst-Agent soll ein Antwortzeit-SLO von unter zwei Sekunden einhalten — das Team hat aus Qualitätsgründen ein starkes Modell gewählt, verfehlt damit aber das SLO und kennt den Kosten-Latenz-Tradeoff nicht. (Quelle: sources/12 Q16)
Ziel: Ein Latenz-SLO als gleichrangiges Auswahlkriterium neben Kosten und Qualität etablieren und das Modell wählen, das das SLO bei vertretbaren Kosten hält.
Ergebnis: Eine SLO-Konformitäts-Matrix (Modell / TTFT / EUR-Preis / Qualität) plus eine Hybrid-Empfehlung mit Eskalationspfad.
Fähigkeit: Modell-Katalog (Latenz-Profile), manuelle Modellwahl, Agenten-Konfiguration, Wissensordner für FAQ-Basis.
Vorgehen:
1. Definiere das SLO konkret (z.B. TTFT <2 Sek. im 95. Perzentil) und miss die Kandidatenmodelle unter realistischer Last, nicht im Einzeltest.
2. Stufe gegen das SLO ein: Light-Modelle (Haiku 4.5, Gemini 2.5 Flash) liegen typisch unter 1 Sek.; Sonnet 4.6 bei 3–5 Sek.; Frontier-Modelle bei 8–15 Sek. und verfehlen das SLO strukturell.
3. Wähle das SLO-konforme günstige Modell, gestützt durch einen reichen Wissensordner — für FAQ-artige Anfragen ist Haiku mit Kontext oft qualitativ besser als Sonnet ohne.
4. Definiere einen Eskalationspfad: komplexe Anfragen, die das günstige Modell nicht löst, werden an ein stärkeres Modell oder einen menschlichen Bearbeiter weitergeleitet — SLO für den Standardfall, Tiefe für den Ausnahmefall.
Empfehlung: Stelle eine SLO-Konformitaets-Matrix auf (Modell / TTFT / EUR-Preis / Qualitaet) und empfiehl ein Hybrid-Modell mit Eskalationspfad - validiere die Qualitaet des SLO-konformen Modells an 20 repraesentativen Anfragen, da ein reiner Latenz-Fokus den Agenten schnell, aber falsch antworten laesst. Fuehre die SLO-/Latenz-Tests unter simulierter paralleler Last durch, nicht nur seriell im Buero, sonst unterschaetzt du die reale TTFT.
Artefakt: Eine SLO-Konformitäts-Matrix (Modell / TTFT / EUR-Preis / Qualität / SLO erfüllt?) plus eine Hybrid-Architektur mit Eskalationspfad.
Fallstricke:
- Latenz nur seriell im Büro zu messen unterschätzt die TTFT unter realer Gleichzeitigkeit — Mitigation: SLO-Tests unter simulierter paralleler Last durchführen.
- Ein reiner Latenz-Fokus ohne Qualitätsprüfung lässt den Agenten schnell, aber falsch antworten — Mitigation: die Qualität des SLO-konformen Modells an 20 repräsentativen Anfragen vorab validieren.
Anschluss: S-MK-075

### S-MK-075 Fine-Tune vs. Prompt: Gesamtkostenvergleich über 12 Monate

Trigger: Nach Monaten aufwändigen System-Prompt-Engineerings für einen Brand-Voice-Agenten fragt das Team, ob ein fine-getuntes Modell langfristig günstiger und konsistenter wäre als der lange Kontext-Overhead bei jedem Request. (Quelle: sources/12 Q34)
Ziel: Eine fundierte Make-or-Buy-Entscheidung zwischen Fine-Tuning und Prompt-Engineering treffen, basierend auf den Gesamtkosten über 12 Monate, nicht nur den laufenden Inferenzkosten.
Ergebnis: Eine Entscheidungsmatrix (Fine-Tune vs. Prompt nach Kosten, Flexibilität, Wartung) plus eine Break-Even-Schwelle.
Fähigkeit: Wissensordner (als Prompting-Lösung), Modell-Katalog, BYOC-Option für fine-getunte Modelle, Usage-Export.
Vorgehen:
1. Beziffere die laufenden Prompting-Kosten: statischer Kontext-Overhead (z.B. 5.000 Token) × Requests/Tag × EUR-Preis pro Token × Basispreis = täglicher Kontext-Aufwand.
2. Halte fest: Fine-Tuning ist über Langdock nicht nativ, sondern nur via BYOC mit extern trainiertem Modell verfügbar; der Einmalaufwand (Datenvorbereitung, Training, Deployment) ist erheblich und gehört in die TCO.
3. Empfiehl für die meisten Marketing-Use-Cases die Prompting-Lösung als günstigere und flexiblere Option: keine Rüstkosten, sofortige Anpassbarkeit bei Brand-Änderungen.
4. Setze die Break-Even-Bedingung: Fine-Tuning lohnt nur, wenn der Kontext-Overhead >50% der Input-Kosten ist, das Volumen sehr hoch und die Brand-Voice quartalsstabil ist.
Empfehlung: Entscheide Fine-Tune vs. Prompt ueber eine TCO ueber 12 Monate (inkl. Datenvorbereitung, Training, Deployment) und eine Break-Even-Schwelle, nicht ueber Inferenzkosten allein - die Einmalkosten verzerren sonst zugunsten des Fine-Tunings. Waehle Prompting, wenn sich die Brand-Voice oefter als quartalsweise aendert, da ein fine-getuntes Modell dann bei jeder Aenderung neu trainiert werden muss und teurer und traeger wird.
Artefakt: Eine Entscheidungsmatrix (Kriterium / Fine-Tune / Prompt / Gewinner) plus eine Break-Even-Berechnung über 12 Monate.
Fallstricke:
- Die Einmalkosten des Fine-Tunings im Vergleich zu vergessen verzerrt zugunsten des Fine-Tunings — Mitigation: immer TCO über 12 Monate rechnen, inkl. Datenvorbereitung, Training, Deployment.
- Ein fine-getuntes Modell bei jeder Brand-Änderung neu trainieren zu müssen macht es bei häufigen Änderungen teurer und träger — Mitigation: ändert sich die Brand-Voice öfter als quartalsweise, ist Prompting strukturell überlegen.
Anschluss: S-MK-076

### S-MK-076 Embeddings-Kosten großer Wissensordner einplanen

Trigger: Ein neuer Wissensordner mit mehreren tausend Dokumenten soll angelegt werden, und das Team bemerkt, dass nicht nur die Abfragen, sondern auch die einmalige Indexierung (Embeddings) Kosten verursacht — ohne diese vorab zu kennen. (Quelle: sources/12 Q57)
Ziel: Die Embeddings-Kosten der einmaligen Wissensordner-Indexierung sowie die laufenden Re-Embedding-Kosten bei Updates transparent machen und in die Folder-Planung einbeziehen.
Ergebnis: Eine Embeddings-Kostenschätzung (Dokument-Token × Embedding-Preis) plus eine Strategie, unnötiges Re-Embedding zu vermeiden.
Fähigkeit: Wissensordner (RAG-Indexierung), Embedding-Modell, Usage-Export, Modell-Katalog.
Vorgehen:
1. Schätze die zu indexierende Token-Menge: Dokumentanzahl × durchschnittliche Token/Dokument (deutsche Seite ≈ 360 Token) — das ist die einmalige Embedding-Last.
2. Halte fest: Embeddings sind deutlich günstiger als generative Inferenz, aber bei sehr großen Ordnern (Millionen Token) summieren sie sich; lege den Embedding-Preis als eigene Kostenzeile an, getrennt von den Abfragekosten.
3. Vermeide unnötiges Re-Embedding: nur geänderte oder neue Dokumente werden re-indexiert; ein kompletter Ordner-Rebuild bei jeder Kleinänderung ist Geldverschwendung.
4. Plane die laufende Pflege: dokumentiere, dass jedes große Dokument-Update Re-Embedding-Kosten auslöst, und bündle Updates statt sie einzeln einzuspielen.
Empfehlung: Schaetze Embeddings-Kosten als eigene, guenstigere Kostenzeile mit dem Embedding-Preis, nicht mit dem generativen Modell-EUR-Preis - die Verwechslung fuehrt zu einer stark ueberhoehten Schaetzung. Buendle Updates und re-indexiere nur geaenderte Dokumente, statt bei jeder Kleinaenderung den gesamten Ordner neu zu embedden, was die Indexierungskosten vervielfacht.
Artefakt: Eine Embeddings-Kostenschätzung (Dokument-Token / Embedding-Preis / einmalige EUR-Kosten) plus eine Update-Strategie gegen unnötiges Re-Embedding.
Fallstricke:
- Embedding-Kosten mit generativen Inferenzkosten zu verwechseln führt zu einer stark überhöhten Schätzung — Mitigation: Embeddings als eigene, günstigere Kostenzeile mit dem Embedding-Preis behandeln, nicht mit dem Modell-EUR-Preis.
- Bei jeder Kleinänderung den gesamten Ordner neu zu embedden vervielfacht die Indexierungskosten — Mitigation: Updates bündeln und nur geänderte Dokumente re-indexieren.
Anschluss: S-MK-077

### S-MK-077 Multi-Model-Fallback-Kosten: Ausfallabsicherung beziffern

Trigger: Nach einem Provider-Ausfall, der eine Kampagnenproduktion stundenlang lahmlegte, will das Team eine Fallback-Kette definieren — aber auch wissen, welche Mehrkosten ein Fallback auf ein teureres Modell im Ausfallzeitraum verursacht. (Quelle: sources/12 Q28)
Ziel: Eine Multi-Model-Fallback-Kette etablieren, die Provider-Ausfälle abfängt, und die Kosten- und Qualitätsfolgen jedes Fallbacks vorab beziffern, statt im Notfall zu improvisieren.
Ergebnis: Ein Fallback-Protokoll (Primärmodell → Fallback → EUR-Preis-Delta → Qualitäts-Einschränkung) mit beziffertem Mehrkostenrahmen je Ausfalltag.
Fähigkeit: Modell-Katalog (Provider-Diversität), manuelle Modellwahl, Wissensordner für Fallback-Policy, Usage-Export.
Vorgehen:
1. Baue die Kette auf Provider-Diversität: Anthropic-Ausfall → OpenAI-Äquivalent; Google-Ausfall → Anthropic/OpenAI — Langdocks modellagnostische Architektur als Absicherung.
2. Definiere je Aufgabentyp den Fallback mit EUR-Preis-Delta: z.B. Brand-Content Sonnet 4.6 → GPT-5.4 (€2,36/1M), Synthese Opus 4.8 → Sonnet 4.6 (mit Qualitätsabstrich).
3. Beziffere die Mehrkosten je Ausfalltag: betroffenes Tagesvolumen × (Fallback-EUR-Preis − Primär-EUR-Preis) pro 1M Tokens = Mehrkosten/Tag — das ist der Preis der Resilienz.
4. Hinterlege im Protokoll eine temporäre Budget-Anpassungs-Empfehlung, falls der Fallback teurer ist, und lege das Protokoll als angepinnten Wissensordner-Eintrag ab.
Vorlage: Modell-Fallback-Protokoll (mit Mehrkostenrahmen):
1. Je Aufgabentyp - Primaermodell -> Fallback -> EUR-Preis-Delta -> Qualitaets-Einschraenkung.
2. Mehrkostenrahmen - beziffert je Ausfalltag.
3. Ablage - angepinnter Wissensordner-Eintrag im Content-Agenten.
Artefakt: Ein Fallback-Protokoll (Aufgabentyp / Primär / Fallback / EUR-Preis-Delta / Mehrkosten pro Ausfalltag / Einschränkung) als angepinnter Notfallplan.
Fallstricke:
- Ein Fallback auf ein teureres Modell ohne Budget-Anpassung kann das Workflow-Budget in der Ausfallperiode sprengen — Mitigation: jedes Fallback-Protokoll enthält eine bezifferte Mehrkostenwarnung und eine temporäre Budget-Empfehlung.
- Das Protokoll erst im Notfall zu suchen kostet die kritische Zeit — Mitigation: als angepinnten Wissensordner-Eintrag im Content-Agenten als erste Antwort-Option hinterlegen.
Empfehlung: Nimm in jedes Fallback-Protokoll eine bezifferte Mehrkostenwarnung und eine temporaere Budget-Empfehlung auf - ein Fallback auf ein teureres Modell kann sonst das Workflow-Budget in der Ausfallperiode sprengen. Hinterlege das Protokoll als angepinnten Wissensordner-Eintrag im Content-Agenten, damit es im Notfall nicht erst gesucht werden muss.
Anschluss: S-MK-078

### S-MK-078 Frontier-Spend-Approval als sauberer Genehmigungs-Workflow

Trigger: Frontier-Modell-Läufe sind genehmigungspflichtig, aber die Freigabe passiert per Zuruf und ist nicht dokumentiert — der Marketing-Direktor will einen schlanken, nachvollziehbaren Approval-Workflow mit klaren Spend-Schwellen. (Quelle: A-30)
Ziel: Einen leichtgewichtigen, dokumentierten Frontier-Spend-Approval-Workflow etablieren, der teure Einzelläufe je nach Spend-Höhe an den richtigen Genehmiger leitet, ohne die Arbeit zu bremsen.
Ergebnis: Ein Approval-Workflow (Spend-Schwellen → Genehmiger → Slack-Reaktion → Audit-Trail) plus ein Langdock-Workflow-Template.
Fähigkeit: Workflow-Builder (Genehmigungsschritt), Workspace-Admin (Frontier-Modell-Zugangsbeschränkung), Wissensordner für Audit-Trail, Slack-Integration.
Vorgehen:
1. Definiere die Spend-Schwellen: Läufe €20–€50 → Marketing-Operations-Lead; €50–€200 → Marketing-Direktor; >€200 → CFO-Sichtvermerk.
2. Erstelle ein minimales Antragsformular (3 Felder: Use Case in einem Satz, erwartete Kosten, Zeitbedarf) als Langdock-Formular oder Slack-Template.
3. Baue den Workflow: Antrag → Slack-Benachrichtigung an den schwellenabhängigen Genehmiger → Freigabe per Reaktion → automatische 24-Stunden-Freischaltung des Frontier-Zugangs für den Antragsteller.
4. Archiviere jede Genehmigung automatisch im Wissensordner (Datum, Nutzer, Use Case, Ist-Kosten nach Lauf) als Audit-Trail.
Workflow: Spend-Schwellen-Trigger -> Genehmiger-Node (HITL) -> Slack-Reaktion (Freigabe/Ablehnung) -> automatischer Audit-Trail-Eintrag. Langdock-Workflow-Template.
Budget: Minimal (kein teurer Modell-Aufruf); Approval-SLA max. 2 Stunden. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Ein Approval-Workflow-Dokument (Spend-Schwellen / Antragsformular / Genehmigungspfad / Audit-Trail) plus ein Langdock-Workflow-Template.
Fallstricke:
- Ein Prozess, der länger als einen halben Arbeitstag dauert, verleitet zu Umgehung über private API-Keys — Mitigation: den Pfad auf maximal 2 Stunden begrenzen und als SLA kommunizieren.
- Einen manuell geführten Audit-Trail vorzusehen führt zu Lücken — Mitigation: die Archivierung als automatischen letzten Workflow-Schritt konfigurieren.
Empfehlung: Begrenze den Approval-Pfad auf maximal 2 Stunden und kommuniziere ihn als SLA - ein Prozess ueber einen halben Arbeitstag verleitet zur Umgehung ueber private API-Keys. Konfiguriere den Audit-Trail als automatischen letzten Workflow-Schritt statt manuell, sonst entstehen Dokumentationsluecken.
Anschluss: S-MK-079

### S-MK-079 Kosten-Anomalie-Alerting: Spikes automatisch früh erkennen

Trigger: Ein Loop-Fehler trieb die Kosten einmal in Stunden hoch, ohne dass jemand es bemerkte — das Team will ein automatisches Alerting, das ungewöhnliche Ausgaben-Muster früh meldet, statt erst beim Monatsabschluss. (Quelle: A-21)
Ziel: Ein automatisches Kosten-Anomalie-Alerting aufsetzen, das auf Basis eines gleitenden Erwartungswerts plötzliche Spikes erkennt und meldet, bevor sie das Budget gefährden.
Ergebnis: Eine Alerting-Regel (Intraday-Schwellenwert relativ zum gleitenden Durchschnitt) plus ein günstiger Monitoring-Workflow ohne eigene Token-Kosten.
Fähigkeit: Workflow-Builder (Zeitplan-Trigger, HTTP-Request für Usage-Export-API), Slack-Integration, Warn-Schwellen, Modell-Katalog.
Vorgehen:
1. Leite aus dem Usage-Export einen gleitenden Erwartungswert ab (z.B. durchschnittliche Stundenkosten der letzten 7 Tage) — die Baseline, gegen die Anomalien gemessen werden.
2. Konfiguriere einen Monitoring-Workflow (15-Minuten-Trigger), der die aktuelle Stundenausgabe gegen die Baseline prüft; Schwelle z.B. >2,5x des Erwartungswerts oder >15% des Tagesbudgets in einem Fenster.
3. Sende bei Überschreitung einen Slack-Alert mit Diagnose-Kontext (Top-Verursacher, Modell, Token der letzten 60 Minuten), damit die Reaktion gezielt erfolgen kann.
4. Konfiguriere den Monitoring-Workflow als reinen API-Abruf ohne LLM-Schritt und mit eigenem Mini-Budget-Cap — der Wächter darf nicht selbst zur Kostenquelle werden.
Workflow: Schedule-Trigger (haeufig) -> HTTP-Request-Node (Usage-API, KEIN LLM) -> Condition-Node (Intraday-Schwelle relativ zum gleitenden Durchschnitt) -> Slack-Alert.
Budget: Reiner API-Abruf-Workflow mit eigenem Mini-Budget-Cap; keine Token-Kosten. (Quelle: 07-modelle-und-kosten, 04-workflows)
Artefakt: Eine Alerting-Regel (gleitende Baseline / Schwellenwert / Diagnose-Inhalt) plus ein Langdock-Monitoring-Workflow-Template ohne LLM-Schritt.
Fallstricke:
- Eine starre absolute Schwelle ohne gleitende Baseline alarmiert in Peak-Phasen ständig und wird ignoriert — Mitigation: relativ zum gleitenden Erwartungswert messen, nicht gegen einen fixen Wert.
- Den Monitoring-Workflow mit einem LLM-Schritt zu bauen erzeugt selbst Token-Kosten — Mitigation: als reinen API-Abruf-Workflow mit eigenem Mini-Budget-Cap konfigurieren.
Empfehlung: Miss relativ zum gleitenden Erwartungswert, nicht gegen einen fixen Wert - eine starre absolute Schwelle alarmiert in Peak-Phasen staendig und wird ignoriert. Baue den Monitoring-Workflow als reinen API-Abruf ohne LLM-Schritt mit eigenem Mini-Budget-Cap, damit er nicht selbst Token-Kosten erzeugt.
Anschluss: S-MK-080

### S-MK-080 Jahres-KI-Budget als vorstandsreifes Board-Pack aufbereiten

Trigger: Das KI-Budget ist zu groß geworden, um es im Software-Topf zu verstecken — der Marketing-Direktor muss erstmals ein eigenständiges, vorstandsreifes Jahresbudget mit Szenarien und ROI-Aussage vorlegen. (Quelle: sources/12 Q116)
Ziel: Ein vorstandsreifes Board-Pack entwickeln, das Lizenz- und Token-Kosten, Wachstumspuffer, Szenarien und eine ROI-Aussage in einer genehmigungsfähigen Vorlage zusammenführt — und die ROI-Zahl vor die Kostenaufstellung stellt.
Ergebnis: Ein Board-Pack (Kostenstruktur + Best/Base/Worst-Szenarien + ROI-Aussage) im Controlling-Format, genehmigungsreif.
Fähigkeit: Usage-Export (Referenzjahr), Modell-Katalog (EUR-Preise), Pricing-Tiers, Wissensordner für historische Verbrauchsdaten.
Vorgehen:
1. Ziehe den Usage-Export des laufenden Jahres und segmentiere die Ist-Kosten: Lizenz (Seats × Tier), Token nach Modellklasse, Workflow-Run-Pakete — die Baseline für die Hochrechnung.
2. Plane das Wachstum aus Treibern (geplante Automatisierungen, Team-Erweiterung) und übersetze es in eine Token-Wachstumsspanne, nicht in einen Punktwert.
3. Baue die Budget-Struktur: Fixkosten (Seats × Tier × 12) + variable Kosten (Token × Modell-Mix × EUR-Preis pro Token × Basispreis) + Adoptions-Reserve (≥30%) + Extra-Usage-Reserve.
4. Formuliere die ROI-Aussage als erste Zahl im Pack: KI-Budget gegen Lohnkosten-Äquivalent der eingesparten Stunden, ergänzt um drei konkrete Kampagnen-Erfolge.
5. Lege zwei Szenarien vor (Base + Wachstum) und eine günstigere Hebel-Liste (Modell-Downgrades, Routing-Matrix), die zeigt, wie das Budget bei Bedarf gesteuert wird — der Vorstand entscheidet zwischen Szenarien, nicht über die Methodik.
Vorlage: KI-Kosten-Board-Pack:
1. Kostenstruktur - Lizenz + Token nach Aufgabentyp.
2. Best/Base/Worst-Szenarien - mit Adoptions-Reserve (>=30 %).
3. ROI-Aussage - Lohnkosten-Aequivalent als erste Zahl.
4. Format - Controlling-konform, genehmigungsreif.
Artefakt: Ein Board-Pack (ROI-Aussage / Kostenstruktur / Szenarien / Steuerungshebel) im Controlling-Format als Vorstandsvorlage.
Fallstricke:
- Ein Jahresbudget ohne Adoptions-Reserve wird bei planmäßig steigender Nutzung schon im ersten Quartal gesprengt — Mitigation: ≥30% Reserve einplanen und explizit als "Adoptions-Reserve" benennen, nicht als vagen Sicherheitspuffer.
- Eine Budget-Anfrage ohne vorangestellte ROI-Aussage wird als reiner Kostenposten behandelt — Mitigation: das Lohnkosten-Äquivalent als erste Zahl im Pack präsentieren, vor der Kostenaufstellung.
Empfehlung: Plane mindestens 30 % Adoptions-Reserve ein und benenne sie explizit, nicht als vagen Sicherheitspuffer - bei planmaessig steigender Nutzung wird das Jahresbudget sonst schon im ersten Quartal gesprengt. Stelle die ROI-Aussage (Lohnkosten-Aequivalent) als erste Zahl vor die Kostenaufstellung, sonst wird die Anfrage als reiner Kostenposten behandelt.
Anschluss: S-MK-001
