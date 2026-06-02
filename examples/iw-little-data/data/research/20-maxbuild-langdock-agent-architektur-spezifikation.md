# **Spezifikation des maximalen Ausbaus: Advisor-Agent "Little Data" auf der Langdock-Plattform**

## **1\. PLATTFORM-BESTANDSAUFNAHME**

Die nachfolgende detaillierte und erschöpfende Bestandsaufnahme analysiert die aktuelle Langdock-Plattformarchitektur. Sie dokumentiert verifizierte Fähigkeiten sowie harte Systemgrenzen über alle relevanten Plattformflächen hinweg, um das Fundament für den maximalen Ausbau des Advisor-Agenten "Little Data" zu legen. Jede technische Behauptung ist durch eine Primärquelle belegt, während vermutete oder abgeleitete Systemgrenzen explizit als unbestätigt markiert werden.  
Die Langdock-Plattform stellt eine komplexe Orchestrierungsumgebung dar, die sich primär in die Flächen Workflows, Agents, das Model Context Protocol (MCP), Skills und eine umfangreiche API unterteilt. Für den DACH-fokussierten Advisor-Agenten "Little Data", der strengen Governance-Richtlinien unterliegt, ist das genaue Verständnis dieser Flächen essenziell.  
Im Bereich der Workflows bietet Langdock eine visuelle und programmatische Automatisierungsschicht, die asynchrone Prozesse ohne direkte Nutzerinteraktion ermöglicht. Die Architektur unterstützt eine Vielzahl von Node-Typen, darunter Agent, Action, Web Search, File Search, HTTP Request, Condition, Loop, Code, Guardrails, Delay, Send Notification und Output (Quelle: [https://docs.langdock.com/product/workflows/nodes/action-node](https://docs.langdock.com/product/workflows/nodes/action-node), abgerufen 2026-06-02). Für die geplante Selbstaktualisierung (Self-Currency) ist der Trigger-Mechanismus von zentraler Bedeutung. Die Plattform stellt Manual, Webhook, Scheduled, Integration und Form Trigger zur Verfügung (Quelle: [https://docs.langdock.com/product/workflows/nodes/scheduled-trigger](https://docs.langdock.com/product/workflows/nodes/scheduled-trigger), abgerufen 2026-06-02). Der Scheduled Trigger ist hierbei besonders relevant, da er Cron-Ausdrücke unterstützt. Dadurch lässt sich die geforderte Granularität für zeitgesteuerte Abläufe exakt abbilden, beispielsweise durch Ausdrücke wie 0 0 1 \* \* für monatliche Läufe, was wiederum die Programmierung von Kadenzen für 60, 90 oder 180 Tage ermöglicht (Quelle: [https://docs.langdock.com/product/workflows/nodes/scheduled-trigger](https://docs.langdock.com/product/workflows/nodes/scheduled-trigger), abgerufen 2026-06-02).  
Um komplexe Datentransformationen innerhalb dieser Workflows abzubilden, stellt der Code-Node eine isolierte Ausführungsumgebung bereit. Diese Umgebung unterstützt verifiziert sowohl JavaScript als auch Python, was für die Validierung von abgerufenen API-Daten unerlässlich ist (Quelle: [https://docs.langdock.com/product/workflows/nodes/code-node](https://docs.langdock.com/product/workflows/nodes/code-node), abgerufen 2026-06-02). Für die Kommunikation mit externen Vendor-APIs zur Preis- und Limit-Prüfung steht ein nativer HTTP-Request-Node bereit, der die REST-Kommunikation übernimmt (Quelle: [https://docs.langdock.com/resources/feature-overview](https://docs.langdock.com/resources/feature-overview), abgerufen 2026-06-02). Ein architektonisch kritischer Baustein für die Governance ist der Human-in-the-Loop-Node (HITL). Dieser pausiert die Ausführung eines Workflows hart und erzwingt die manuelle Freigabe durch einen berechtigten Editor, bevor nachfolgende Nodes, insbesondere solche mit schreibenden Seiteneffekten, ausgeführt werden (Quelle: [https://docs.langdock.com/product/workflows/human-in-the-loop](https://docs.langdock.com/product/workflows/human-in-the-loop), abgerufen 2026-06-02). Um deterministische Datenübergaben zwischen den Nodes zu garantieren, unterstützt der Agent-Node nativ die Generierung von "Structured Output", wodurch das Sprachmodell gezwungen wird, valides JSON gemäß einem vordefinierten Schema zurückzugeben (Quelle: [https://docs.langdock.com/product/workflows/nodes/agent-node](https://docs.langdock.com/product/workflows/nodes/agent-node), abgerufen 2026-06-02). Zur Vermeidung von Endlosschleifen und zur Kostenkontrolle existiert ein Max-Steps-Stopp, der die Anzahl der iterativen Tool-Aufrufe innerhalb eines Agenten-Schritts auf einen Wert zwischen 1 und 20 limitiert (Quelle: [https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent), abgerufen 2026-06-02). Flankierend dazu greifen Budget- und Kosten-Guards auf Workspace- und Workflow-Ebene, die über ein "Monthly Limit" und ein "Per-Execution Limit" harte Warn- und Stopp-Schwellen definieren (Stand: Juni/2026 — vor Nutzung verifizieren) (Quelle: [https://docs.langdock.com/product/workflows/cost-management](https://docs.langdock.com/product/workflows/cost-management), abgerufen 2026-06-02).  
Die zweite fundamentale Fläche bilden die Agents. In Bezug auf die Wissensanbindung (Knowledge) muss architektonisch zwingend zwischen zwei Paradigmen unterschieden werden. Einerseits existieren die nativen Library Folders, die als verwaltete Wissensordner direkt in Langdock fungieren und bis zu 1.000 Dateien mit einer kumulierten Größe von circa acht Millionen Zeichen (basierend auf Token-Limits) fassen können (Quelle: [https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders), abgerufen 2026-06-02). Andererseits bietet die Plattform Synced Folders zur Anbindung an externe Systeme wie Microsoft SharePoint oder Google Drive an. Für diese Synced Folders gelten jedoch harte Restriktionen: Sie sind auf maximal 200 verarbeitete Dateien pro Ordner limitiert und unterliegen einem starren automatischen Synchronisationszyklus von 24 Stunden (Quelle: [https://docs.langdock.com/resources/integrations/folder-sync](https://docs.langdock.com/resources/integrations/folder-sync), abgerufen 2026-06-02). Die kognitiven Fähigkeiten der Agenten lassen sich über Capability-Toggles steuern, welche native Funktionen wie Web Search, Image Generation, Code Interpreter und Canvas aktivieren oder deaktivieren (Quelle: [https://docs.langdock.com/administration/workspace-setup](https://docs.langdock.com/administration/workspace-setup), abgerufen 2026-06-02). Das Tool-Calling-Verhalten der Agenten ist vielschichtig; sie können native Actions, Custom Actions sowie via MCP eingebundene Tools ausführen (Quelle: [https://docs.langdock.com/resources/integrations/mcp](https://docs.langdock.com/resources/integrations/mcp), abgerufen 2026-06-02). Die gravierendste Einschränkung auf dieser Fläche betrifft das Memory-Management. Während Langdock ein nutzerspezifisches Chat-Memory für bis zu 50 Präferenzen anbietet, ist dieses Feature plattformseitig vollständig deaktiviert, sobald ein dedizierter Agent aufgerufen wird ("Memory is not available when using Agents") (Quelle: [https://docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory), abgerufen 2026-06-02). Dies stellt eine massive Blockade für den dauerhaften Zustand (Cross-Session State) eines Advisor-Agenten dar.  
Das Model Context Protocol (MCP) stellt die wichtigste Schnittstelle für die programmatische Erweiterung dar. Langdock agiert hier in einer dualen Rolle. Als MCP-Client unterstützt die Plattform die Transportprotokolle STREAMABLE\_HTTP sowie Server-Sent Events (SSE) für bidirektionale Echtzeitkommunikation. Die Authentifizierung gegenüber externen MCP-Servern kann flexibel über Custom Header, wie beispielsweise Authorization: Bearer \<api-key\>, konfiguriert werden. Eine Auto-Tool-Discovery-Funktion erfasst automatisch bis zu 50 Tools, die ein externer MCP-Server exponiert. Für die Governance relevant ist die Tatsache, dass die User-Confirmation für die Ausführung dieser Tools standardmäßig deaktiviert ist, jedoch pro Tool manuell erzwungen werden kann (Quelle: [https://docs.langdock.com/resources/integrations/mcp](https://docs.langdock.com/resources/integrations/mcp), abgerufen 2026-06-02). Parallel dazu fungiert Langdock selbst als MCP-Server und exponiert den Endpoint https://api.langdock.com/mcp. Die Nutzung dieses Endpoints erfordert zwingend einen API-Key mit dem spezifischen Scope AGENT\_API. Externe Clients können darüber die nativen Tools find\_agent, ask\_agent und ask\_custom\_agent konsumieren, um Langdock-Agenten aus Drittsystemen heraus zu orchestrieren (Quelle: [https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server](https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server), abgerufen 2026-06-02).  
Die Konzeptualisierung von Skills innerhalb der Plattform erfordert eine präzise Abgrenzung. Ein Langdock-Skill fungiert im Kern als dynamisches Briefing-Dokument oder "System Prompt Wrapper", der im Hintergrund aktiv ist und dem Sprachmodell spezifische Anweisungen und Verhaltensregeln übermittelt. Skills können in verschiedenen Scopes angewendet werden: als System-Skills, die global und unabänderlich aktiv sind, als Workspace-Skills für organisationsweite Vorgaben oder im persönlichen Scope des jeweiligen Nutzers (Quelle: [https://docs.langdock.com/product/skills/workspace-skills](https://docs.langdock.com/product/skills/workspace-skills), abgerufen 2026-06-02). Die Trigger-Mechanik erfolgt entweder durch semantisches Matching der Nutzerintention oder durch explizite Aktivierung. Ein Skill ist technologisch in der Lage, Integrationen "lazy" zu laden; das bedeutet, dass die mit einem Skill verknüpften MCP-Tools oder nativen Actions erst dann für das Sprachmodell verfügbar werden, wenn der Skill im Chatverlauf aktiviert wird (Quelle: [https://docs.langdock.com/product/skills/skills-integrations](https://docs.langdock.com/product/skills/skills-integrations), abgerufen 2026-06-02). Die exakte technische Demarkationslinie zwischen einem reinen "Inline-Skill" und einer hardcodierten Action ist in der öffentlichen Dokumentation nicht trennscharf definiert und gilt für tiefgreifende Modifikationen als \[unverified\].  
Die Langdock-API stellt das Rückgrat für jegliche Headless-Operationen dar. Die Base-URLs unterscheiden sich je nach Deployment: Cloud-Instanzen nutzen https://api.langdock.com/, während dedizierte Deployments über \<deployment-url\>/api/public angesprochen werden (Quelle: [https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction), abgerufen 2026-06-02). Die Sicherheit wird über ein striktes Scoping-Modell geregelt, das die Scopes AGENT\_API, KNOWLEDGE\_FOLDER\_API, INTEGRATION\_API, AUDIT\_LOG\_API und USAGE\_EXPORT\_API umfasst (Quelle: [https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction), abgerufen 2026-06-02). Die Completion API ist weitreichend OpenAI-kompatibel (/openai/eu/v1) und unterstützt fortschrittliche Parameter wie reasoning\_effort, mit denen die Allokation von Rechenleistung für komplexe Inferenzaufgaben (none, minimal, low, medium, high, xhigh) gesteuert werden kann (Quelle: [https://docs.langdock.com/api-endpoints/completion/openai](https://docs.langdock.com/api-endpoints/completion/openai), abgerufen 2026-06-02). Die Embedding API generiert standardmäßig Vektoren mit einer Dimensionalität von 1536, was die Kompatibilität zu gängigen OpenAI-Embeddings sicherstellt (Quelle: [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics), abgerufen 2026-06-02). Für die Verwaltung der Wissensbasis ist die Knowledge Folder API essenziell. Sie unterstützt synchronen Upload, einen dedizierten Async-Upload (/upload-async) für große Datenmengen, DELETE-Operationen zur Bereinigung sowie die Abfrage detaillierter Sync-States (UPLOADING, EXTRACTING, EMBEDDING, SYNCED) (Quelle: [https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file), abgerufen 2026-06-02). Die isolierte SEARCH API ermöglicht das direkte Retrieval von Chunks basierend auf einer Vektorsuche und liefert einen Relevanz-Score (similarity) zurück, generiert jedoch selbst keine transformierten Antworten (Quelle: [https://docs.langdock.com/product/workflows/nodes/file-search-node](https://docs.langdock.com/product/workflows/nodes/file-search-node), abgerufen 2026-06-02). Umfassende Logging- und Audit-Fähigkeiten werden über die Usage Export API und die Audit Logs API bereitgestellt, wobei letztere eine Datenvorhaltung von 90 Tagen garantiert (Quelle: [https://docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api](https://docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api), abgerufen 2026-06-02). Die operativen Rate Limits der API sind standardmäßig auf 500 RPM (Requests Per Minute) und 60.000 TPM (Tokens Per Minute) auf Workspace-Ebene limitiert (Stand: Juni/2026 — vor Nutzung verifizieren) (Quelle: [https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction), abgerufen 2026-06-02). Das genaue Zeitfenster für ein Non-Streaming-Timeout bei extrem lang laufenden MCP- oder HTTP-Requests ist in der vorliegenden Dokumentation nicht exakt quantifiziert und muss als \[unverified\] eingestuft werden.  
Die native Wissensordner-RAG-Architektur (Retrieval-Augmented Generation) von Langdock folgt etablierten, jedoch starren Mustern. Die Chunk-Größe ist fest auf etwa 2.000 Zeichen pro Segment eingestellt, um eine optimale Balance zwischen Informationsdichte und Kontextlimit zu wahren (Quelle: [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics), abgerufen 2026-06-02). Die semantische Repräsentation erfolgt über die bereits erwähnten 1536-dimensionalen Embeddings (Quelle: [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics), abgerufen 2026-06-02). Der Retrieval-Parameter (k-value) ist auf einen maximalen Abruf von bis zu 50 Chunks pro Query fixiert (Quelle: [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics), abgerufen 2026-06-02). Das Vorhandensein eines strikten PER-DOCUMENT-CAPs, bei dem zwingend nur ein einziger Chunk aus einer bestimmten Quelldatei pro Suchanfrage extrahiert wird, lässt sich aus dem Systemverhalten ableiten, ist aber als explizit dokumentiertes Limit \[unverified\]. Ein eklatanter Architekturengpass ist das fehlende native Re-Ranking. Die Plattform verlässt sich ausschließlich auf den initialen Dense Vector Recall und bietet keine Cross-Encoder-Schicht zur lexikalischen Nachsortierung an, was bedeutet, dass exaktes Re-Ranking \[nativ nicht moeglich\] ist und zwingend programmatisch umgangen werden muss. Die native Citation-Mechanik für das Grounding von Antworten beschränkt sich auf grundlegende Dateimetadaten, primär den Dateinamen (fileName) und die zugehörige URL (fileUrl) (Quelle: [https://docs.langdock.com/product/workflows/nodes/file-search-node](https://docs.langdock.com/product/workflows/nodes/file-search-node), abgerufen 2026-06-02). Eine tiefergehende, Graph-basierte Lineage-Verfolgung auf Chunk-Ebene existiert nativ nicht.  
Für den Dauerbetrieb auf Enterprise-Niveau stellt Langdock diverse Deployment- und Sicherheitsarchitekturen bereit. Das Cloud-Hosting erfolgt EU-zentrisch über Microsoft Azure mit Standorten wie Frankfurt, was die DSGVO-Konformität stützt (Quelle: [https://langdock.com/security](https://langdock.com/security), abgerufen 2026-06-02). Ein essenzieller Baustein ist die Zero-Data-Retention-Policy hinsichtlich des Modelltrainings; Kundendaten werden rigoros vom Training der zugrundeliegenden KI-Modelle ausgeschlossen (Quelle: [https://langdock.com/security](https://langdock.com/security), abgerufen 2026-06-02). Zur Kosten- und Providerkontrolle unterstützt die Plattform BYOK (Bring Your Own Key), wodurch Unternehmen direkte Vertragsbeziehungen mit Modell-Providern pflegen können (Quelle: [https://docs.langdock.com/settings/models/byok](https://docs.langdock.com/settings/models/byok), abgerufen 2026-06-02). Für die Absicherung der Netzwerkkommunikation mit der eigenen RAG-Pipeline oder externen Systemen garantiert Langdock eine statische Outbound-IP (4.185.103.44), die in unternehmensinternen Firewalls auf die Whitelist gesetzt werden kann (Quelle: [https://docs.langdock.com/settings/security/static-ip-configuration](https://docs.langdock.com/settings/security/static-ip-configuration), abgerufen 2026-06-02). Die gesamte Plattforminfrastruktur unterliegt regelmäßigen Audits und verfügt über Zertifikate nach ISO 27001 sowie SOC2 Type II (Quelle: [https://langdock.com/security](https://langdock.com/security), abgerufen 2026-06-02).

### **Konsolidierte Verifikationstabelle der Plattformfähigkeiten**

| Fähigkeit | Limit / Wert | Primärquelle \+ Abrufdatum | Verifiziert |
| :---- | :---- | :---- | :---- |
| **Scheduled Workflow Kadenz** | Cron-basiert (Tage, Wochen, Monate) | [docs.langdock.com/product/workflows/nodes/scheduled-trigger](https://docs.langdock.com/product/workflows/nodes/scheduled-trigger) (2026-06-02) | ja |
| **Code Node Sprachen** | JavaScript & Python | [docs.langdock.com/product/workflows/nodes/code-node](https://docs.langdock.com/product/workflows/nodes/code-node) (2026-06-02) | ja |
| **Workflow HITL-Node** | Harte Pausierung für manuellen Review | [docs.langdock.com/product/workflows/human-in-the-loop](https://docs.langdock.com/product/workflows/human-in-the-loop) (2026-06-02) | ja |
| **Workflow Kosten-Guards** | Monthly Limit / Per-Execution Limit | [docs.langdock.com/product/workflows/cost-management](https://docs.langdock.com/product/workflows/cost-management) (2026-06-02) | ja |
| **Agent Memory Status** | **Deaktiviert in Agenten**, 50 Präferenzen im Chat | [docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory) (2026-06-02) | ja |
| **API Default Rate Limits** | 500 RPM / 60.000 TPM | [docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction) (2026-06-02) | ja |
| **MCP Auto-Discovery** | Maximal 50 Tools pro Server | [docs.langdock.com/resources/integrations/mcp](https://docs.langdock.com/resources/integrations/mcp) (2026-06-02) | ja |
| **RAG Chunk-Größe** | Ca. 2.000 Zeichen | [docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics) (2026-06-02) | ja |
| **RAG Retrieval k-Wert** | Bis zu 50 Chunks pro Query | [docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics) (2026-06-02) | ja |
| **RAG Embedding Dimension** | 1536 | [docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics) (2026-06-02) | ja |
| **RAG Re-Ranking** | Nicht nativ vorhanden | \[nativ nicht moeglich\] | nein (Workaround nötig) |
| **Synced Folder Limits** | Max. 200 Dateien, 24-h-Sync-Zyklus | [docs.langdock.com/resources/integrations/folder-sync](https://docs.langdock.com/resources/integrations/folder-sync) (2026-06-02) | ja |
| **Library Folder Limits** | Max. 1000 Dateien, ca. 8 Mio. Zeichen | [docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders) (2026-06-02) | ja |
| **Audit Logs Vorhaltung** | 90 Tage | [docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api](https://docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api) (2026-06-02) | ja |
| **RAG Per-Document-Cap** | 1 Chunk pro Datei pro Query | Erfahrungswert / Systemverhalten | \[unverified\] |
| **Non-Streaming Timeout** | Exakter Schwellenwert in Sekunden | Fehlende Spezifikation in API-Doku | \[unverified\] |

## **2\. SCHWAECHEN-KATALOG**

Für den Betrieb eines langlebigen, DACH-spezifischen Advisory-Agenten, der einer rigorosen Governance-Doktrin unterliegt – namentlich dem strikten Source-Grounding, der Einhaltung der 2000-Zeichen-Disziplin (Szenario \= Chunk) und der absoluten Emoji-Freiheit –, weisen die nativen Langdock-Funktionen erhebliche operative und architektonische Lücken auf. Dieser Katalog strukturiert die identifizierten Schwächen und bewertet deren Lösbarkeit über die 9-Typen-Architektur.

### **RAG-Retrieval-Unschärfe und das Per-Document-Cap**

Die native RAG-Implementierung von Langdock operiert mit einer fixen Abrufmenge von bis zu 50 Chunks pro Suchanfrage. Bei hochspezifischen oder tiefgreifenden Anfragen, die sich intensiv auf ein einziges, umfangreiches Quelldokument konzentrieren, führt die Algorithmus-Logik potenziell zu einer Verdängung hochrelevanter Chunks. Dieses mutmaßliche Per-Document-Cap (die Begrenzung auf einen einzigen Chunk pro Datei) erzwingt Diversität auf Kosten der Präzision. Für das Framework, das Sub-Szenarien in aufeinanderfolgenden, autarken 2000-Zeichen-Blöcken ohne chunkübergreifende Pronomen verfasst, bedeutet dies, dass bei einer übergreifenden Query der zweite relevante Block derselben Datei ignoriert wird.

* **Betroffene Fläche:** Agents (Native Wissensordner-RAG), API (Search API).  
* **Schweregrad:** rot  
* **Lösbarkeit:** ja.  
* **Begründung:** Diese Einschränkung kann vollständig umgangen werden, indem die native Langdock-RAG durch eine eigene, via MCP angebundene RAG-Pipeline ersetzt wird. Die externe Vector-Database (z. B. Weaviate oder Qdrant) erlaubt die exakte Kontrolle über den Recall, sodass das Per-Document-Cap deaktiviert und die Top-k-Ergebnisse unabhängig von der Dateizugehörigkeit ausgeliefert werden können.

### **Fehlendes natives Re-Ranking**

Nach dem initialen Vektor-Recall (unter Nutzung der 1536 Dimensionen) liefert die native Plattform die Chunks basierend auf der reinen Cosinus-Ähnlichkeit im latenten Raum zurück. Es existiert keine zweite Stufe im Sinne eines Cross-Encoder-Re-Rankings, welches die abgerufenen Dokumente lexikalisch und semantisch exakt gegen die Nutzeranfrage abwägt. In streng formatierten deutschen Markdown-Dateien, in denen feine Nuancen (etwa "Gültig für Produkt A" vs. "Gültig für Produkt B") über korrekte Antworten entscheiden, führt reines Vector-Matching häufig zu Halluzinationen durch falschen Kontext.

* **Betroffene Fläche:** Agents (Knowledge), API (Search API).  
* **Schweregrad:** rot  
* **Lösbarkeit:** ja.  
* **Begründung:** Da ein Cross-Encoder \[nativ nicht moeglich\] ist, muss dieser Schritt in die externe RAG-Pipeline verlagert werden. Die via MCP aufgerufene Pipeline führt einen breiten BM25+Dense-Recall aus und nutzt anschließend ein dediziertes Re-Ranker-Modell (z. B. Cohere Rerank), um nur die drei absolut relevantesten Chunks an den Langdock-Agenten zu übermitteln.

### **Keine native Knowledge-Graph-/Audit-Lineage**

Die native Plattform gewährleistet die Rückverfolgbarkeit von Informationen (Citation) primär über den Dateinamen (fileName) und die zugehörige URL (Quelle: [https://docs.langdock.com/product/workflows/nodes/file-search-node](https://docs.langdock.com/product/workflows/nodes/file-search-node), abgerufen 2026-06-02). Für eine Enterprise-Umgebung, die eine lückenlose Auditierung verlangt, ist dies unzureichend. Es fehlt die deterministische Lineage, die aufzeichnet, welcher exakte Chunk-Hash aus welcher spezifischen Dateiversion bei exakt welchem Retrieval-Event zur finalen Antwort beigetragen hat.

* **Betroffene Fläche:** Workflows (File Search Node), Agents.  
* **Schweregrad:** gelb  
* **Lösbarkeit:** teilweise.  
* **Begründung:** Innerhalb der Langdock-Plattform lässt sich ein Graph-Modell \[nativ nicht moeglich\] abbilden. Der Workaround besteht im Aufbau eines Graph-Audit-Layers (z. B. Neo4j) innerhalb der externen RAG-Pipeline. Der externe Server protokolliert den kompletten Lineage-Pfad, bevor er die Daten via MCP an Langdock übergibt. Langdock erhält lediglich eine eindeutige Lineage-ID (als Textmarker), die bei Audits in der externen Datenbank aufgelöst wird.

### **Begrenzte und deaktivierte Memory in Agenten**

Ein kritischer Fehler in der nativen Architektur für den Betrieb eines "Advisory"-Agenten ist das Memory-Management. Das native Memory ist nicht nur auf magere 50 Präferenzen limitiert, sondern wird bei der Nutzung von dedizierten Agenten plattformseitig rigoros deaktiviert (Quelle: [https://docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory), abgerufen 2026-06-02). Ein Advisor-Agent benötigt jedoch zwingend ein Cross-Session-State-Management, um Projektkontexte und Nutzerhistorien über Wochen hinweg zu persistieren.

* **Betroffene Fläche:** Agents.  
* **Schweregrad:** rot  
* **Lösbarkeit:** ja.  
* **Begründung:** Die Einschränkung erfordert zwingend den Einsatz eines externen Memory-Stores (z. B. Redis oder PostgreSQL). Dieser Store wird über die API oder als Custom Action via MCP in den Agenten eingebunden. Bei jedem Aufruf liest und schreibt der Agent seinen Kontext asynchron in diese externe, DSGVO-konforme Datenbank.

### **Kein natives Self-Update der Wissensbasis (Wissensalterung)**

Informationen wie Modellpreise, Limitierungen oder Verfügbarkeiten altern kontinuierlich. Die Langdock-Plattform aktualisiert Dateien in Synced Folders zwar alle 24 Stunden, bietet jedoch keinen nativen, zyklischen Prüfmechanismus, der proaktiv im Web verifiziert, ob sich Fakten geändert haben, und der anschließend die Quelldatei automatisiert umschreibt. Ohne Intervention altert das Wissen im Wissensordner manuell.

* **Betroffene Fläche:** Wissensordner, Workflows.  
* **Schweregrad:** gelb  
* **Lösbarkeit:** ja.  
* **Begründung:** Diese Schwäche lässt sich orchestrieren, indem Scheduled Workflows mit Code-Nodes (Python) und HTTP-Requests kombiniert werden. Diese Workflows pollen die Primärquellen (Frische-Checks). Die Aktualisierung der Dokumente erfolgt dann programmatisch über die Knowledge Folder API, zwingend abgesichert durch einen HITL-Node, um unbeaufsichtigte Mutationen zu verhindern.

### **Kein nativer geschlossener Feedback-/Self-Improvement-Loop**

Das Plattform-Design sieht keinen zirkulären Rückfluss von Nutzer-Feedback vor. Wenn eine Antwort als fehlerhaft oder unscharf geflaggt wird, existiert keine native Pipeline, die den genutzten Chunk in der Knowledge-Base direkt für eine Revision markiert, den Prompt-Skill anpasst oder das Qualitäts-Gate automatisiert in Gang setzt.

* **Betroffene Fläche:** Agents, API.  
* **Schweregrad:** gelb  
* **Lösbarkeit:** ja.  
* **Begründung:** Der geschlossene Feedback-Loop muss über einen Form Trigger Workflow konstruiert werden. Nutzer melden Feedback über dieses Formular, welches strukturiert erfasst, in eine Kuratierungs-Queue eingespeist und durch einen HITL-Review-Node geleitet wird, bevor die API die Korrektur in den Wissensordner pusht.

### **Indexierungsverzug nach API-Upload**

Der Upload von modifizierten Markdown-Dateien via Knowledge Folder API führt nicht zu einer Echtzeit-Vektorisierung und sofortigen Suchbarkeit. Der Sync-Status ist asynchron und durchläuft die Phasen UPLOADED, EXTRACTING, EMBEDDING und SYNCED (Quelle: [https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file), abgerufen 2026-06-02).

* **Betroffene Fläche:** Knowledge Folder API, Workflows.  
* **Schweregrad:** gruen  
* **Lösbarkeit:** ja.  
* **Begründung:** Da die Dauer der Vektorisierung variiert, muss die Workflow-Architektur so gestaltet sein, dass ein Code-Node (T) die API im Polling-Verfahren abfragt, bis der Status auf SYNCED wechselt, bevor ein Canary-Re-Test gestartet wird.

## **3\. KOMBINATIONSMUSTER (Architektur — Interlocking Patterns)**

Die Beseitigung der im Katalog beschriebenen Schwächen erfordert eine tiefe Integration der vier Langdock-Flächen. Die nachfolgenden Text-Sequenzdiagramme illustrieren, wie Workflows, Agents, MCP-Server und Skills ineinandergreifen, um den maximalen Ausbau des Agenten "Little Data" zu erreichen. Jede Komponente ist gemäß dem 9-Typen-System klassifiziert: P (Prompt), A (API), M (MCP), S (Skill), T (Code), W (Workflow), C (Config), D (Decision), G (Guide).

### **Muster 1: Orchestrierter Tool-Aufruf zur Memory-Erweiterung**

Dieses Muster dient der Überwindung der nativen amnestischen Agentenschwäche und führt zustandsbehaftete, komplexe Operationen durch den Zugriff auf externe Speicher aus.

1. \`\` Initiiert den Prozess asynchron im Hintergrund.  
2. \-\> Erhält den Ausführungsauftrag und analysiert die Anforderung.  
3. \-\> \[M: MCP Client\] Der Agent entscheidet, dass historischer Kontext fehlt, und ruft das angebundene MCP-Tool read\_external\_memory auf.  
4. \-\> Der externe Server nimmt den Request entgegen und fragt die DSGVO-konforme PostgreSQL/Redis-Datenbank ab.  
5. \-\> Das Resultat des MCP-Tools wird durch den Langdock-Skill geleitet. Der Skill (unterfüttert durch einen \[P: Prompt\]) erzwingt die strukturelle Integrität: Keine Emojis, reine Textmarker, deutsche Sprache.  
6. \-\> Der Agent empfängt das bereinigte Ergebnis und formatiert es als "Structured Output" (JSON), um Parsing-Fehler auszuschließen.  
7. \-\> Entscheidet den weiteren Verlauf des Workflows basierend auf den JSON-Werten.  
* **HITL-Punkt:** Da dieser Fluss lediglich lesend auf den Memory-Store zugreift und keine Datenveränderung an der Live-Wissensbasis vornimmt, ist hier kein HITL-Node zwingend erforderlich.  
* **Gap-Workaround:** Das langlebige Memory ist \[nativ nicht moeglich\]. Der Workaround erfolgt durch die Delegation des States an den externen Server (Schritt 3-4).

### **Muster 2: Kapselung von MCP-Tools durch Skills für Governance**

Dieses Muster demonstriert, wie Skills als formale Hülle fungieren, um rohe MCP-Tools mit den strikten Governance-Regeln des DACH-Frameworks zu versehen.

1. \[C: Config\] Im Workspace wird ein externer MCP-Server unter Integrations registriert und das Tool little\_data\_retrieval freigeschaltet.  
2. \-\> Ein neuer Langdock-Skill "Little Data Compliance" wird erstellt. Er bindet das MCP-Tool als zwingende Aktion ein (Quelle: [https://docs.langdock.com/product/skills/skills-integrations](https://docs.langdock.com/product/skills/skills-integrations), abgerufen 2026-06-02).  
3. \-\> \[P: Prompt\] Der System-Prompt des Skills wird definiert: "Du bist 'Little Data'. Nutze für Fakten ausschließlich die Ergebnisse des Tools little\_data\_retrieval. Erfinde nichts. Gib Quellen als Textmarker (z.B.) an. Verwende niemals Emojis. Deine Ausgabe ist strikt Deutsch."  
4. \-\> Wenn der Agent antwortet, wird das Tool "lazy" durch den Skill geladen und unter den Restriktionen des Prompts ausgeführt.  
* **Gap-Workaround:** Die plattformweite Durchsetzung von Output-Stilen (Emoji-Verbot) direkt auf den Rohdaten eines externen Tools ist ohne diese Kapselung fehleranfällig.

### **Muster 3: Self-Currency (Frische-Checks und HITL-Review)**

Dieses Muster etabliert die Autokorrektur-Schleife für Alterungsprozesse in der Wissensdatenbank und gewährleistet das "Immer Aktuell"-Paradigma.

1. \`\` Startet den Workflow basierend auf der Cron-Kadenz (Preise: 60 Tage, Namen: 90 Tage, Limits: 180 Tage).  
2. \-\> Ruft die aktuellen Preis- oder Limit-Daten direkt über die verifizierten Vendor-APIs ab.  
3. \-\> Holt den existierenden RAG-Chunk aus dem Langdock-Wissensordner (via integriertem File Search Node) und vergleicht ihn mit dem frischen Datensatz.  
4. \-\> Prüft, ob eine inhaltliche Abweichung (Drift) vorliegt. Wenn nein \-\> Ende. Wenn ja \-\> weiter.  
5. \-\> **Kritischer Punkt:** Der Workflow pausiert hart. Ein Editor erhält eine Notification mit einem Diff-View des vorgeschlagenen Markdown-Updates.  
6. \-\> \[A: Knowledge Folder API\] Nach der manuellen HITL-Freigabe: Die API führt einen DELETE-Request für das alte Attachment aus und lädt das korrigierte Markdown-File über den POST /upload-async-Endpoint hoch (Quelle: [https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file), abgerufen 2026-06-02).  
7. \-\> Pollt die API periodisch (GET /knowledge/{folderId}/list), bis der syncStatus der Datei den Zustand SYNCED erreicht hat.  
* **HITL-Punkt:** Zwingend bei Schritt 5\. Da ein *Write-Back* in die Live-Wissensbasis stattfindet, verbietet die Governance ein "vollautomatisch".

### **Muster 4: Delegiertes Retrieval (Eigene RAG-Pipeline)**

Dieses Muster ersetzt die native RAG-Suche durch eine hochspezialisierte, programmatische Erweiterung.

1. \`\` Nutzer stellt eine Fachanfrage im Chat an Little Data.  
2. \-\> Der System-Skill erkennt den Informationsbedarf, unterbindet den Zugriff auf den nativen Wissensordner und leitet die Query an das MCP-Tool little\_data\_retrieve weiter.  
3. \-\> \[M: MCP Client\] Sendet die Anfrage an den externen RAG-Server.  
4. \-\> Der Server führt ein Two-Stage-Retrieval aus (Vektor-Recall zur Umgehung der nativen k=50 Grenze, gefolgt von Cohere Re-Ranking).  
5. \-\> Der Server protokolliert die Query, die abgerufenen Chunks und die Lineage-ID asynchron im Neo4j-Audit-Graphen.  
6. \-\> Liefert die Top-3 Chunks inklusive der exakten Lineage-ID an Langdock zurück.  
7. \-\> Formuliert die Antwort unter Beachtung der 2000-Zeichen-Chunk-Disziplin und platziert die Lineage-ID als Textmarker im Dokument.  
* **Gap-Workaround:** Das Re-Ranking und die Umgehung des Per-Document-Caps sind \[nativ nicht moeglich\]. Der delegierte Aufruf via MCP löst dieses Architekturproblem vollständig.

## **4\. EIGENE RAG-PIPELINE (Referenzarchitektur)**

Da die native Wissensordner-RAG von Langdock fundamentale Limitationen aufweist – namentlich das Fehlen eines Cross-Encoder-Re-Rankings, die starre Beschränkung auf maximal 50 abgerufene Chunks, das mutmaßliche Per-Document-Cap und die unzureichende, rein dateibasierte Citation –, wird für "Little Data" eine eigene, hochspezialisierte RAG-Pipeline konstruiert. Diese Pipeline wird als externer Service betrieben und über die MCP-Schnittstelle programmatisch in den Langdock-Agenten integriert.

### **Ingestion und Trigger-Mechanik**

Die Datenbasis der Pipeline speist sich aus zwei primären Quellen. Erstens werden die bestehenden, kuratierten Markdown-Dateien aus dem Langdock-Wissensordner über die Knowledge Folder API (GET /knowledge/{folderId}/list gefolgt vom Datei-Download) zyklisch abgegriffen (Quelle: [https://docs.langdock.com/api-endpoints/knowledge-folder/retrieve-files](https://docs.langdock.com/api-endpoints/knowledge-folder/retrieve-files), abgerufen 2026-06-02). Zweitens werden externe Primärquellen (z. B. Vendor-Dokumentationen) angebunden. Der Trigger für die Ingestion ist eventbasiert: Sobald ein Langdock-Webhook-Workflow eine Änderung oder einen Upload in der Wissensbasis registriert, feuert er einen Request an die externe Pipeline, um den Re-Indexierungsprozess anzustoßen.

### **Chunking-Strategie und Datenstruktur**

Die Chunking-Strategie respektiert explizit die rigide Disziplin des DACH-Frameworks. Anstelle einer blinden semantischen Segmentierung wird das Prinzip "Ein Szenario \= ein Chunk" angewendet, wobei die Blockgröße streng zwischen 2000 und 2300 Bytes (\~2000 Zeichen) gehalten wird. Eine entscheidende Regel beim Authoring dieser Blöcke ist die Wiederholung des Schlüssel-Nomens in jedem signifikanten Satz und der vollständige Verzicht auf chunkübergreifende Pronomen.  
Eine Abweichung von dieser Strategie – etwa ein feingranulares Sentence-Window-Retrieval mit 256 Tokens – ist hier *nicht* notwendig und sogar kontraproduktiv. Da die nachfolgende Two-Stage-Retrieval-Architektur auf lexikalische Dichte angewiesen ist, bieten die in sich geschlossenen, 2000 Zeichen langen, pronominal aufgelösten Szenarien den perfekten Kontextvektor für die Embedding-Modelle, ohne dass beim Retrieval referenzielle Integrität verloren geht.

### **Embeddings und Vektorspeicher**

Für die Vektorisierung der Chunks wird ein Embedding-Modell gewählt, das eine Dimensionalität von 1536 aufweist (z. B. text-embedding-3-large von OpenAI, skaliert auf 1536 Dimensionen). Dies garantiert die mathematische Kompatibilität zur nativen Langdock-Embedding-API, sollte in Zukunft ein Fallback oder eine Migration zurück in die native Plattform notwendig werden (Quelle: [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics), abgerufen 2026-06-02).  
Als Vektorspeicher wird Qdrant oder Weaviate eingesetzt. Um die strikten DSGVO-Vorgaben für den Dauerbetrieb und das DACH-Marketing-Klientel zu erfüllen, wird der Vektorspeicher zwingend in der EU (z. B. Frankfurt) gehostet, analog zur Azure-Infrastruktur von Langdock (Quelle: [https://langdock.com/security](https://langdock.com/security), abgerufen 2026-06-02).

### **Retrieval und Re-Ranking (Two-Stage-Retrieval)**

Der kritischste operative Vorteil dieser eigenen Pipeline ist das Two-Stage-Retrieval, da exaktes Re-Ranking \[nativ nicht moeglich\] ist.

* **Stage 1 (Vektor-Recall):** Die Engine führt eine hybride Suche aus, die BM25 (lexikalisches Keyword-Matching) mit Dense Vector Search (semantisches Matching) kombiniert. Hierbei wird der Recall tief angesetzt (z. B. k=150). Dies umgeht das native Limit von k=50 und hebelt das mutmaßliche Per-Document-Cap aus, da alle semantisch relevanten Chunks in den Trichter gelangen, selbst wenn sie aus derselben Ursprungsdatei stammen.  
* **Stage 2 (Re-Ranking):** Die top 150 Chunks werden durch einen Cross-Encoder (konkret: Cohere rerank-multilingual-v3.0 oder Voyage) geleitet. Der Re-Ranker berechnet die exakte lexikalisch-semantische Relevanz zwischen der Nutzeranfrage und jedem Chunk neu und filtert die Ergebnisse auf die top 3 Chunks herunter. Dies verhindert Halluzinationen durch "Vektor-Nachbarschaften", die thematisch ähnlich, aber faktisch falsch sind.

### **Citation und Grounding**

Um das Source-Grounding-Paradigma zu erfüllen, trägt jeder Chunk in der Vektordatenbank ein unveränderliches Set an Metadaten: chunk\_id, source\_file, file\_version\_hash, valid\_until und den exakten timestamp der letzten Validierung. Die RAG-Pipeline bettet diese Metadaten fest in den JSON-Payload ein, der an Langdock zurückgesendet wird. Der Langdock-Agent wird durch seinen Skill (\[P: Prompt\]) gezwungen, jede Behauptung mit der chunk\_id und der source\_file in Form eines Textmarkers zu belegen.

### **Frische- und Self-Update-Loop**

Die Pipeline überwacht das Alter des Wissens autonom. Die Vektordatenbank wertet das Feld valid\_until (gekoppelt an die 60/90/180-Tage-Kadenz) in einem nächtlichen Batch-Job aus. Identifiziert der Job veraltete Chunks, sendet die Pipeline einen Webhook an Langdock. Dieser Webhook triggert den in Muster 3 beschriebenen HITL-Workflow. Der Workflow präsentiert einem Redakteur den veralteten Chunk. Erst nach der kuratierten, HITL-freigegebenen Eingabe des neuen Wertes pusht der Workflow die Daten via API zurück in die Pipeline. Es erfolgt niemals ein unbeaufsichtigtes Schreiben in die Live-Wissensbasis.

### **Graph-Audit-Layer**

Da Langdock nativ keine tiefgehende Lineage bietet, etabliert die Pipeline ein eigenes Knowledge-Graph-Datenmodell (z. B. in Neo4j), um die Provenienz jeder Antwort mathematisch beweisbar zu machen.

* **Knoten (Nodes):** Source (URL der Primärquelle), File (Die physische Markdown-Datei), Version (SHA-256 Hash der Datei), Chunk (Der spezifische 2000-Zeichen-Block), Answer (Die an Langdock generierte Antwort-ID), UserFeedback (Die qualitative Bewertung).  
* **Kanten (Edges):** \[Answer\] \-BELEGT\_DURCH-\> \[Chunk\], \[Chunk\] \-ABGELEITET\_VON-\> \[Version\], \[Version\] \-TEIL\_VON-\> \[File\], \[UserFeedback\] \-WIDERSPRICHT-\> \[Chunk\].  
  Dieser Graph ermöglicht es Auditoren, für jede Antwort im Chat exakt zu rekonstruieren, welche Version eines Chunks zu welchem Zeitpunkt abgerufen wurde.

### **Text-Architektur-Diagramm (Komponenten & Datenflüsse)**

# **| |-- (1) User Query (z.B. Limit-Anfrage) v (Erzwingt Emoji-freie deutsche Textmarker) | |-- (2) Tool Execution Request (Triggering MCP) v \[Langdock MCP Client (M)\] | |-- (3) POST /mcp/invoke (Payload: Query) v**

# **| |-- (4a) Stage 1: Hybrid Recall (BM25 \+ Dense) in Weaviate/Qdrant |-- (4b) Stage 2: Cross-Encoder Re-Ranking (Cohere rerank-multilingual) | |-- (5) Asynchrones Logging der Lineage in Neo4j Graph DB | (Answer \-\> belegt\_durch \-\> Chunk) | |-- (6) JSON Response: Top 3 Chunks inkl. Metadaten (Hash, File)**

|  
v  
|  
|-- (7) Inferenz: Synthese der Chunks zur finalen Antwort  
v  
\[User Chat\] (Ergebnis: Strukturierter Text mit-Citations)

## **5\. MEMORY- UND SELF-IMPROVEMENT-SCHICHT**

Das Design für langlebige Interaktionen (Durable Memory) und den geschlossenen Qualitätsregelkreis (Feedback-Loop) erfordert die Kompensation einer harten Plattformgrenze.

### **Durable Memory (Cross-Session State)**

Die Anforderung an ein langlebiges Gedächtnis kollidiert frontal mit der Architektur von Langdock, in der das Memory innerhalb von Agenten plattformseitig komplett deaktiviert ist ("Memory is not available when using Agents") (Quelle: [https://docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory), abgerufen 2026-06-02). Folglich ist Durable Memory \[nativ nicht moeglich\] und muss externalisiert werden.

* **Speicherort & Technologie:** Der Cross-Session-Zustand wird in einem externen Key-Value-Store (z. B. Redis) oder Document-Store (MongoDB) abgelegt. Die Kommunikation erfolgt zwingend über die MCP/API-Schicht \[M / A\], wobei der Agent bei jedem Session-Start das Tool fetch\_user\_context aufruft.  
* **Gespeicherte Daten:** Das externe Memory speichert spezifisch Nutzerpraeferenzen (z. B. Tonalität, Vorwissen), den Projektkontext (aktuelle Marketingkampagnen des Nutzers) und eine Historie der abgelehnten Antworten, um Wiederholungsfehler zu vermeiden.  
* **Aufbewahrung & DSGVO:** Alle Einträge im externen Store sind strikt an einen pseudonymisierten User-Hash gebunden. Die Daten unterliegen den europäischen DSGVO-Grenzen für Datensparsamkeit.  
* **HITL-/Lösch-Pfad:** Nutzer können über einen Langdock Form-Trigger \`\` die Löschung ihres Kontextes verlangen. Dieser Trigger führt einen Workflow aus, der einen HTTP-DELETE-Request \[A\] an den externen Store sendet (Recht auf Vergessenwerden).

### **Self-Improvement (Der geschlossene Feedback-Loop)**

Das Konzept des "Qualitäts-Gates" stellt sicher, dass fehlerhafte Outputs strukturiert in die Verbesserung der RAG-Dokumente münden. Es muss ausdrücklich klargestellt werden: **Dieses Feedback verbessert ausschließlich die Kuratierung der Quelldokumente und der System-Prompts, NICHT das KI-Modell selbst.** Das Modell wird nicht re-trainiert, was die Zero-Data-Retention-Compliance von Langdock wahrt (Quelle: [https://langdock.com/security](https://langdock.com/security), abgerufen 2026-06-02).  
**Der geschlossene Pfad:**

1. **Melden:** Der Nutzer flaggt eine schlechte oder unsichere Antwort direkt im Chat. Über einen Form-Trigger \`\` wird der Feedback-Prozess initiiert.  
2. **Strukturierte Erfassung:** Das Formular erfasst zwingend die Felder: "Was war falsch?", "Welcher Textmarker/welcher Chunk ist betroffen?" und "Welche Primärquelle wurde referenziert?" \`\`.  
3. **Kuratierungs-Queue:** Die Daten werden via API \[A\] in ein internes Ticket-System oder eine dedizierte Langdock-Datenstruktur übergeben.  
4. **HITL-Review:** Ein menschlicher Redakteur öffnet die Queue. Ein HITL-Node \`\` pausiert den Prozess. Der Redakteur bewertet das Feedback und korrigiert den fehlerhaften Chunk oder den Prompt.  
5. **Update:** Nach der Freigabe erfolgt der Update des Knowledge-Chunks im Wissensordner via Knowledge Folder API \[A\] (Upload-Async).  
6. **Re-Index:** Die Datei wird asynchron vektorisiert. Ein Code-Node \`\` wartet auf den Status SYNCED.  
7. **Canary-Re-Test:** Ein abschließender Workflow führt die ursprüngliche Nutzeranfrage automatisiert gegen den neuen Index aus, um zu verifizieren, dass der Fehler behoben ist und das Source-Grounding intakt bleibt \`\`.

### **Anbindung an die bestehende Governance**

Die Architektur garantiert, dass die Governance an jedem Knotenpunkt greift. Der HITL-Node fungiert als absolute Pflicht-Schranke vor jedem schreibenden Zugriff (Knowledge-Write). Das Source-Grounding bleibt invariant, da jeder neue Chunk sofort in den Graph-Audit-Layer überführt wird. Die deutsche Stimme und die emoji-freie Tonalität werden kontinuierlich durch den System-Prompt \[P\] erzwungen.

## **6\. SPEZIFIKATION DES MAXIMALEN AUSBAUS (Consolidated Target-State Spec)**

Die nachfolgende Konsolidierung beschreibt den Zielzustand ("maximaler Ausbau") von Little Data und orchestriert alle Komponenten zu einem kohärenten System.

### **Komponenten-Inventar**

| Komponente | Zweck | 9-Typ-Code |
| :---- | :---- | :---- |
| **Little Data Core Agent** | Zentrales Chat-Interface, steuert Tools, fasst Antworten zusammen. | C / S |
| **Governance System-Prompt** | Erzwingt deutsche Sprache, emoji-freie Ausgabe und Grounding-Textmarker. | P / S |
| **MCP-Client RAG Pipeline** | Externe Two-Stage-Retrieval-Logik (umgeht native RAG-Limits). | M / A |
| **External Memory Store** | Sichert DSGVO-konformen Cross-Session-State (da natives Memory inaktiv). | M / A |
| **Frische-Check Workflow** | Cron-getriggerte Prüfung (60/90/180 Tage) von Preisen und Limits via Vendor-API. | W / T |
| **Feedback Form Trigger** | Nutzer-Eingabemaske zur Meldung fehlerhafter Antworten für den Loop. | W / D |
| **Qualitäts-Gate HITL** | Manueller Freigabeknoten vor jedem Knowledge-Update (Write-Back). | W / D |
| **Neo4j Graph Audit DB** | Externer Audit-Trail für deterministische Lineage (Query zu Chunk). | A |

### **Datenflüsse zwischen den Komponenten (Text-Diagramm)**

\======================================================================  
\[Neo4j Audit Graph\] \<---+ \+---\> \[External Memory\]  
| |  
v v  
\<-- \-- \[Vendor APIs (Preise)\]  
\=========================|========================|===================  
| (MCP Interface) | (HTTP/API Interface)  
v v  
\-\>\[Langdock MCP (M)\]  
| |  
v v  
\<-+ (HITL Approval Gate)  
|  
v  
\--+-\> \[Nutzer Chat-Interface\]

### **Der Selbstaktualisierungs-Mechanismus (End-to-End)**

Der zyklische Update-Prozess garantiert die in der Governance verankerten Kadenzen ohne vollautomatische (unüberwachte) Schreibvorgänge:

1. Ein Scheduled Workflow ist konfiguriert, um zeitlich gestaffelt auszulösen: Alle 60 Tage für Modellpreise, alle 90 Tage für Modellnamen und Integrationsverfügbarkeiten, alle 180 Tage für Plattformlimits (Chunk-Größen, k-Werte) (Quelle: [https://docs.langdock.com/product/workflows/nodes/scheduled-trigger](https://docs.langdock.com/product/workflows/nodes/scheduled-trigger), abgerufen 2026-06-02).  
2. Ein Code Node (Python) kontaktiert die entsprechenden Vendor-APIs, parst die JSON-Responses und extrahiert die Zielwerte.  
3. Der Workflow vergleicht diese Werte mit dem aktuellen Status in der RAG-Pipeline. Wird ein Drift (Abweichung) festgestellt, stoppt der Prozess.  
4. Der HITL-Node wird aktiviert. Ein Redakteur des DACH-Teams prüft die Abweichung visuell und erteilt die Freigabe.  
5. Der Workflow generiert den neuen 2000-Zeichen-Chunk (unter Beibehaltung der Nomen-Disziplin) und pusht ihn via Knowledge Folder API (/upload-async) sowie an den externen Graph-Audit-Layer.

### **Gestufte Build-Roadmap (MVP \-\> Vollausbau)**

* **Stufe 1: MVP (Strikter Wissensordner & Agent)**  
  * *Bau:* Einrichtung des Core-Agenten. Upload der strikt formatierten Markdown-Dateien (\~2000 Zeichen) in einen nativen Library Folder. Konfiguration des Governance-System-Prompts (Emoji-frei, Grounding).  
  * *Status:* Nativ vollständig möglich.  
  * *Risiken:* Keine Cross-Session-Memory. Bei wachsendem Dokumentenbestand nimmt die Präzision durch fehlendes Re-Ranking rapide ab.  
* **Stufe 2: Automatisierung (Frische-Checks & HITL)**  
  * *Bau:* Implementierung der Scheduled Workflows für die 60/90/180-Tage-Kadenzen. Aufbau der Code-Nodes für Vendor-API-Parsing. Einrichtung des HITL-Approval-Gates.  
  * *Status:* Nativ vollständig möglich.  
  * *Abhängigkeiten:* Erfordert saubere Python-Skripte für das zuverlässige Parsing diverser externer Vendor-Strukturen.  
* **Stufe 3: Schwächenkompensation (Memory & Feedback Loop)**  
  * *Bau:* Da natives Agenten-Memory deaktiviert ist (\[nativ nicht moeglich\]), wird der externe Redis/PostgreSQL-Store aufgebaut und via MCP/API angebunden. Der Form-Trigger-Workflow für das "Qualitäts-Gate" wird live geschaltet.  
  * *Status:* Workaround für Memory zwingend über externe Stores. Feedback-Loop nativ via Workflows darstellbar.  
* **Stufe 4: Vollausbau (Eigene RAG-Pipeline & Graph Audit)**  
  * *Bau:* Der native Wissensordner wird für das Retrieval deaktiviert. Die externe RAG-Pipeline (Qdrant/Weaviate \+ Cohere) übernimmt das Two-Stage-Retrieval, um das Per-Document-Cap zu umgehen. Die Neo4j-Datenbank für Graph-Lineage wird hochgefahren.  
  * *Status:* \[nativ nicht moeglich\]. Zwingt zum kompletten Workaround via MCP-Client-Anbindung.  
  * *Risiken:* Die Auslagerung der RAG in eine externe EU-Infrastruktur erhöht die Latenz (Time-to-First-Token) und erfordert sorgfältiges Timeout-Management für die MCP-Schnittstelle.

## **7\. QUELLEN & VERIFIKATIONSSTATUS**

### **Vollständige Quellenliste**

* API Endpoints / API Introduction & Rate Limits: https://docs.langdock.com/api-endpoints/api-introduction (abgerufen 2026-06-02)  
* API Endpoints / Audit Logs: https://docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api (abgerufen 2026-06-02)  
* API Endpoints / Completion (OpenAI): https://docs.langdock.com/api-endpoints/completion/openai (abgerufen 2026-06-02)  
* API Endpoints / Knowledge Folder Upload: https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file (abgerufen 2026-06-02)  
* API Endpoints / Knowledge Folder Retrieve: https://docs.langdock.com/api-endpoints/knowledge-folder/retrieve-files (abgerufen 2026-06-02)  
* API Endpoints / Usage Export: https://docs.langdock.com/api-endpoints/usage-export/intro-to-usage-export-api (abgerufen 2026-06-02)  
* Agent Memory Status: https://docs.langdock.com/product/chat/memory (abgerufen 2026-06-02)  
* Agents / Capabilities & Setup: https://docs.langdock.com/administration/workspace-setup (abgerufen 2026-06-02)  
* Knowledge Basics (Chunking, Dimensions, Retrieval-k): https://docs.langdock.com/resources/knowledge/knowledge-basics (abgerufen 2026-06-02)  
* Library Folders (Limits): https://docs.langdock.com/product/library/folders (abgerufen 2026-06-02)  
* Synced Folders (Limits): https://docs.langdock.com/resources/integrations/folder-sync (abgerufen 2026-06-02)  
* MCP Client & Server: https://docs.langdock.com/resources/integrations/mcp / https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server (abgerufen 2026-06-02)  
* Skills Integrations: https://docs.langdock.com/product/skills/skills-integrations (abgerufen 2026-06-02)  
* Sicherheit / Security Overview: https://langdock.com/security (abgerufen 2026-06-02)  
* Sicherheit / Static IP: https://docs.langdock.com/settings/security/static-ip-configuration (abgerufen 2026-06-02)  
* Workflows / Code Node: https://docs.langdock.com/product/workflows/nodes/code-node (abgerufen 2026-06-02)  
* Workflows / Cost Management: https://docs.langdock.com/product/workflows/cost-management (abgerufen 2026-06-02)  
* Workflows / File Search Node: https://docs.langdock.com/product/workflows/nodes/file-search-node (abgerufen 2026-06-02)  
* Workflows / Human-in-the-Loop: https://docs.langdock.com/product/workflows/human-in-the-loop (abgerufen 2026-06-02)  
* Workflows / Scheduled Trigger: https://docs.langdock.com/product/workflows/nodes/scheduled-trigger (abgerufen 2026-06-02)

### **Explizite \[unverified\]-Liste**

Die folgenden Aussagen und architektonischen Annahmen konnten nicht durch eine explizite Primärquelle als absolute Plattformkonstante bestätigt werden. Das Build-Team muss diese vor der Umsetzung von Stufe 3/4 in der Sandbox validieren:

* **Per-Document-Cap in RAG:** Dass der native Retrieval-Mechanismus strikt nur einen einzigen Chunk pro physischer Datei pro Query liefert, ist ein aus dem Systemverhalten abgeleiteter Erfahrungswert, wird jedoch in der Doku nicht als fest codiertes Limit benannt (Status: \[unverified\]).  
* **Abgrenzung Skill vs. Action:** Die genaue semantische und technische Grenze zwischen einer "Library-Skill", "Inline-Skill" und einer hardcodierten Action ist potenziell unscharf. Skills fungieren laut Doku als System Prompts, die Integrationen "lazy" laden (Status: \[unverified\]).  
* **Non-Streaming Timeout für MCP:** Ein exakter Schwellenwert in Sekunden (z. B. 60s oder 120s), nach dem ein asynchroner oder schwergewichtiger MCP-Tool-Aufruf hart durch Langdock terminiert wird, fehlt in der öffentlichen API-Spezifikation (Status: \[unverified\]).

### **Verified vs. Unverified Anhang (Datums-sensitive Werte)**

Alle nachfolgenden Werte spiegeln den **Stand: Juni/2026 — vor Nutzung verifizieren** wider:

| Parameter | Angegebener Wert | Verifikationsstatus |
| :---- | :---- | :---- |
| **API Default Rate Limits** | 500 RPM / 60.000 TPM | Verifiziert (Workspace-Level, per Modell) |
| **Audit Logs Vorhaltezeit** | 90 Tage | Verifiziert |
| **Library Folder Kapazität** | Max. 1.000 Dateien, ca. 8 Mio. Zeichen | Verifiziert |
| **Synced Folder Kapazität** | Max. 200 Dateien, 24-h-Sync | Verifiziert |
| **RAG Embedding Dimension** | 1536 | Verifiziert |
| **RAG Retrieval-k** | 50 Chunks | Verifiziert |
| **Statische Outbound IP** | 4.185.103.44 | Verifiziert |
| **Workflow Code Node Limit** | Zeitlimit in Sekunden | \[unverified\] |

