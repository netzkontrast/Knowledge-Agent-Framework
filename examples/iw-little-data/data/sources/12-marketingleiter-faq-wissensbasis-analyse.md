# **Calibration and Alignment Analysis: A 160-Question Evaluation Corpus for Langdock Enterprise AI Adoption in DACH Marketing**

Generative AI adoption within German, Austrian, and Swiss (DACH) enterprises presents a complex intersection of technical innovation, rigid regulatory compliance, and departmental change management.1 For a newly appointed Marketing Director (CMO, Brand Lead, or Head of Content) operating in an organization ranging from a 50-employee scale-up to a 5,000-employee conglomerate, the immediate challenge lies in shifting from broad, unstructured conceptualizations of AI to precise, context-aware queries.2  
This report provides a comprehensive, evidence-based corpus of 160 concrete questions that a DACH marketing executive would ask a Langdock-based advisor agent, code-named "Little Data," during their first 30 days of active platform onboarding.3 By formalizing these natural-language queries, the enterprise can successfully achieve three technical objectives:

* Calibrate "Little Data's" underlying knowledge bases to handle precise, specific queries rather than broad, thematic topics.  
* Establish a robust regression and spot-check retrieval test set to evaluate the Langdock Wissensordner Search API under realistic, localized semantic conditions.5  
* Systematically identify structural coverage gaps in the planned eleven knowledge files (00 through 09\) to optimize corporate data alignment.

To ensure "Little Data" acts as a dependable, highly aligned advisor, the platform's knowledge files must be clearly categorized.3 The table below outlines the core functional architecture of the planned knowledge files, mapping each identifier to its target platform functionality, operational constraints, and technical dependencies 5:

| Knowledge File ID | Target Platform Functionality | Covered Operational Concepts & Platform Boundaries | Key Technical Dependencies |
| :---- | :---- | :---- | :---- |
| 00 | Getting Started & Platform Orientation | Workspace onboarding, Projects, sidebar pinning, mobile app, interface themes, command bar navigation | Cmd+K / Ctrl+K navigation, session persistence 7 |
| 01 | Enterprise Model Portfolio | Multi-model capabilities, Auto mode routing, reasoning models (o-series), extended thinking, speed vs. quality tradeoffs | Model selector, provider API endpoints, token weighting 10 |
| 02 | Creating & Designing Custom Agents | Setup configurations, system prompts, creativity index (temperature), forms, sub-agent orchestrations, performance analytics | Langfuse tracing, analytics dashboards 6 |
| 03 | Wissensordner (Folders) & RAG | Semantic vector index, folder file limits (1,000 files), character limit (8M), folder API, SharePoint/Google Drive syncing | Embedding API, async folder upload endpoints 5 |
| 04 | Document Editor & Visual Assets | In-chat editor (Canvas), formatting / menu, version history, export integrations, Mermaid flowcharts, code previewing | Markdown to Word/PDF converters, cloud storage APIs 8 |
| 05 | Prompt Library & Variable Systems | Saving successful prompts, prompt template libraries, variable inputs ({{variableName}}), departmental sharing | Workspace permission roles, group access structures 7 |
| 06 | Visual Workflow Builder & Automation | No-code process automation, schedule/webhook triggers, loops, branching conditions, HTTP request nodes, "Fix in Chat" debugs | Webhook endpoints, custom Python/JS code blocks 15 |
| 07a | Native Enterprise Integrations | Read/write capabilities for CRM, Analytics, and collaboration suites (HubSpot, Salesforce, GA4, Confluence, Slack, SharePoint) | OAuth authentication flows, mirrored permissions 19 |
| 07b | Custom Integrations, APIs, & MCP | Custom endpoints, Model Context Protocol (MCP) servers, Agent-to-Agent (A2A) protocol setups | API key scope validation, remote agents 22 |
| 08 | Workspace Economics & Administration | Seat licenses (€20–€25/user/month), workflow packs, API billing, over-quota markups, volume tiers, usage export API | Standard billing cycles, 10% model surcharge 1 |
| 09 | Regulatory Compliance & Governance | GDPR (DSGVO) compliance, EU hosting (Frankfurt), zero data retention, ISO 27001, SOC 2 Type II, works council templates | Single-tenant configurations, DPO audit trails 1 |

## **A. Orientation**

In the initial 10 days of platform adoption, a DACH marketing director must quickly understand the workspace's layout.8 This transition involves moving from disorganized browser tabs to structured, project-based workspaces that support complex campaigns.8 The executive needs to learn how to manage sidebar priorities, navigate the platform via keyboard shortcuts, and leverage mobile tools to review copy drafts during commutes.7

1. **German**: *Wie kann ich meine täglichen Kampagnen-Chats in themenbasierten Projekten strukturieren, damit mein Team nicht den Überblick über verschiedene Produktlinien verliert?*  
   **English**: *How can I structure my daily campaign chats into topic-based projects so my team does not lose track of different product lines?*  
   **Tag**: 00  
   **Context**: Establishing campaign directories to maintain structural context across multiple creative sessions.8  
2. **German**: *Gibt es ein Tastenkürzel für die Befehlsleiste (Command Bar), um direkt zu einem bestimmten Brand-Agenten zu springen, ohne mich durch das Menü klicken zu müssen?*  
   **English**: *Is there a keyboard shortcut for the command bar to jump directly to a specific brand agent without clicking through the menu?*  
   **Tag**: 00  
   **Context**: Using the Cmd+K shortcut on macOS or Ctrl+K on Windows to bypass manual navigation.7  
3. **German**: *Wie hefte ich die laufende Diskussion über unsere Sommerkampagne 2026 ganz oben in meiner Seitenleiste an, um sofortigen Zugriff zu haben?*  
   **English**: *How do I pin the ongoing discussion about our Summer Campaign 2026 to the top of my sidebar for immediate access?*  
   **Tag**: 00  
   **Context**: Pinning active projects to keep high-priority conversations visible.8  
4. **German**: *Wo finde ich die interaktiven Onboarding-Aufgaben für neue Marketingmitarbeiter, und wie wird unser Fortschritt auf dem Workspace-Leaderboard dargestellt?*  
   **English**: *Where do I find the interactive onboarding tasks for new marketing employees, and how is our progress represented on the workspace leaderboard?*  
   **Tag**: 00  
   **Context**: Using gamified onboarding paths to help new team members adopt the platform.9  
5. **German**: *Wie passe ich das Farbschema der Plattform an meine Systempräferenzen an, um die Lesbarkeit bei nächtlichen Redaktionsplanungen zu verbessern?*  
   **English**: *How do I adjust the platform's color theme to my system preferences to improve readability during late-night editorial planning?*  
   **Tag**: 00  
   **Context**: Adjusting light, dark, or system-synced interface themes within account preferences.8  
6. **German**: *Kann ich einen spezifischen Chatverlauf sicher für einen externen Freelancer freigeben, ohne ihm Zugriff auf andere sensible Marketing-Projekte zu gewähren?*  
   **English**: *Can I securely share a specific chat history with an external freelancer without granting them access to other sensitive marketing projects?*  
   **Tag**: 00  
   **Context**: Sharing specific conversation threads with external creative partners.7  
7. **German**: *Wie nutze ich die globale Chat-Suche, um alle Konversationen zu finden, in denen das Keyword 'Influencer-Vertrag' vorkommt?*  
   **English**: *How do I use the global chat search to find all conversations containing the keyword 'influencer contract'?*  
   **Tag**: 00  
   **Context**: Running full-text queries across conversation archives.9  
8. **German**: *Wo sehe ich auf meinem Mobiltelefon, in welchen verschiedenen Firmen-Workspaces ich angemeldet bin, und wie wechsle ich dazwischen?*  
   **English**: *Where on my mobile phone can I see which company workspaces I am logged into, and how do I switch between them?*  
   **Tag**: 00  
   **Context**: Navigating multiple corporate instances on the mobile app.30  
9. **German**: *Wie aktiviere ich die Spracheingabe im Chatfenster, um einen Prompt während einer Autofahrt einzusprechen und das transkribierte Ergebnis vor dem Absenden zu prüfen?*  
   **English**: *How do I activate the voice input in the chat window to dictate a prompt during a car ride and check the transcribed result before sending?*  
   **Tag**: 00  
   **Context**: Dictating prompts on the go to draft quick content ideas.15  
10. **German**: *Werden meine unvollendeten Prompts automatisch gespeichert, wenn ich das Browser-Tab schließe, oder verliere ich den gesamten Kontext?*  
    **English**: *Are my unfinished prompts saved automatically if I close the browser tab, or do I lose the entire context?*  
    **Tag**: 00  
    **Context**: Verifying draft retention and workspace session persistence.7  
11. **German**: *Wie verhindere ich in der iOS-App, dass eine Wischgeste fälschlicherweise einen neuen Chat startet, wenn ich eigentlich nur im Text scrollen möchte?*  
    **English**: *How do I prevent the iOS app from accidentally starting a new chat with a swipe gesture when I actually just want to scroll through the text?*  
    **Tag**: 00  
    **Context**: Optimizing touch gestures for mobile content editing.30  
12. **German**: *Wie füge ich eine unternehmensspezifische Pflichtaufgabe zu unserem Onboarding-Leitfaden hinzu, wie z. B. 'Lies unsere KI-Richtlinien für soziale Medien'?*  
    **English**: *How do I add a company-specific mandatory task to our onboarding guide, such as 'Read our social media AI guidelines'?*  
    **Tag**: 00  
    **Context**: Injecting custom compliance tasks into employee onboarding flows.9  
13. **German**: *Wo schalte ich die Sichtbarkeit meines Namens auf dem workspace-weiten Leaderboard ein oder aus, um meine Privatsphäre zu wahren?*  
    **English**: *Where do I turn the visibility of my name on the workspace-wide leaderboard on or off to protect my privacy?*  
    **Tag**: 00  
    **Context**: Anonymizing user progress on internal platform leaderboards.9  
14. **German**: *Wie lade ich die offizielle mobile Anwendung auf mein Android-Gerät herunter, um unterwegs Zugriff auf unsere freigegebenen Marketing-Modelle zu haben?*  
    **English**: *How do I download the official mobile application to my Android device to have access to our shared marketing models on the go?*  
    **Tag**: 00  
    **Context**: Setting up mobile applications for responsive, on-the-go workflow coordination.30  
15. **German**: *Wie lade ich ein Video- oder Audio-Recording unserer gestrigen Brainstorming-Session hoch, um ein automatisches Transkript erstellen zu lassen?*  
    **English**: *How do I upload a video or audio recording of our yesterday's brainstorming session to have an automatic transcript generated?*  
    **Tag**: 00  
    **Context**: Converting multi-format recordings into actionable text context.15

## **B. Model Choice**

The platform's model-agnostic architecture lets marketing directors match their tasks with the most appropriate model.10 The challenge is to understand the trade-offs between speed, intelligence, context window limits, and cost across providers like OpenAI, Anthropic, and Google.11 For example, simple spelling checks are best handled by fast, cost-effective models, while strategic competitor analysis requires reasoning models with extended thinking capabilities.12

16. **German**: *Welches Modell aus der Claude-Familie eignet sich am besten für das Verfassen einer langen, markenkonformen Pressemitteilung im Vergleich zu den GPT-Modellen?*  
    **English**: *Which model from the Claude family is best suited for writing a long, brand-compliant press release compared to the GPT models?*  
    **Tag**: 01  
    **Context**: Evaluating linguistic nuances between different providers.12  
17. **German**: *Wann sollte ich die 'Auto'-Modell-Auswahl im Chat aktivieren, und wie erkennt das System die Komplexität meiner SEO-Analyse?*  
    **English**: *When should I activate the 'Auto' model selection in the chat, and how does the system detect the complexity of my SEO analysis?*  
    **Tag**: 01  
    **Context**: Relying on the platform's automated routing model for everyday tasks.9  
18. **German**: *Welchen Vorteil bietet ein Reasoning-Modell wie die o-Serie bei der Erstellung komplexer Wettbewerbsanalysen gegenüber Standardmodellen?*  
    **English**: *What advantage does a reasoning model like the o-series offer when creating complex competitor analyses compared to standard models?*  
    **Tag**: 01  
    **Context**: Using deep logical analysis and step-by-step reasoning models.11  
19. **German**: *Wie stark belasten Flaggschiff-Modelle wie Claude Opus mein Fair-Usage-Limit pro Interaktion im Vergleich zu kostengünstigen Varianten wie Haiku?*  
    **English**: *How heavily do flagship models like Claude Opus impact my fair usage limit per interaction compared to cost-effective variants like Haiku?*  
    **Tag**: 01  
    **Context**: Balancing model selection with budget limits and usage weights.2  
20. **German**: *Welches Modell hat das größte Kontextfenster, wenn ich das gesamte Transkript einer dreistündigen Fokusgruppe analysieren möchte?*  
    **English**: *Which model has the largest context window if I want to analyze the entire transcript of a three-hour focus group?*  
    **Tag**: 01  
    **Context**: Choosing high-capacity models (e.g., Gemini) for large content ingestion.12  
21. **German**: *Kann ich das Modell mitten in einer laufenden Konversation wechseln, um von der schnellen Ideenfindung zur präzisen Content-Ausarbeitung überzugehen?*  
    **English**: *Can I switch the model in the middle of an ongoing conversation to transition from fast brainstorming to precise content elaboration?*  
    **Tag**: 01  
    **Context**: Changing models mid-chat to optimize cost and performance.8  
22. **German**: *Wo lege ich mein persönliches Standardmodell für jeden neu geöffneten Chat in den Kontoeinstellungen fest?*  
    **English**: *Where do I set my personal default model for each newly opened chat in the account settings?*  
    **Tag**: 01  
    **Context**: Configuring personal default models to streamline daily use.12  
23. **German**: *Reicht ein schnelles 'Mini'-Modell aus, um Tippfehler und grammatikalische Fehler in unseren deutschen Blogbeiträgen zu korrigieren?*  
    **English**: *Is a fast 'mini' model sufficient to correct typos and grammatical errors in our German blog posts?*  
    **Tag**: 01  
    **Context**: Choosing cost-effective, low-latency models for routine administrative tasks.11  
24. **German**: *Was bedeuten die verschiedenen Versionsnummern wie GPT-5.4 oder Claude 4.7 bei der Modellauswahl bezüglich ihrer Fähigkeiten?*  
    **English**: *What do the different version numbers like GPT-5.4 or Claude 4.7 mean in model selection regarding their capabilities?*  
    **Tag**: 01  
    **Context**: Understanding active model updates and version naming.11  
25. **German**: *Welches Modell liefert die stabilsten, strukturierten JSON-Ausgaben, wenn wir Rohdaten für Kampagnen-Berichte generieren?*  
    **English**: *Which model delivers the most stable, structured JSON outputs when we generate raw data for campaign reports?*  
    **Tag**: 01  
    **Context**: Choosing models that excel at structured coding outputs.32  
26. **German**: *Warum bevorzugen professionelle Copywriter oft Anthropic-Modelle, wenn es um das Schreiben im kreativen und authentischen Tonfall der Marke geht?*  
    **English**: *Why do professional copywriters often prefer Anthropic models when it comes to writing in a creative and authentic brand tone of voice?*  
    **Tag**: 01  
    **Context**: Matching specific marketing copy requirements with a model's linguistic style.12  
27. **German**: *Wie aktiviere ich die 'Thinking'-Funktion im Chat, wenn ich ein fähiges Modell für mathematische Analysen unserer Marketingbudgets verwende?*  
    **English**: *How do I activate the 'Thinking' feature in chat when using a capable model for mathematical analysis of our marketing budgets?*  
    **Tag**: 01  
    **Context**: Activating extended thinking controls for analytical tasks.30  
28. **German**: *Warum fehlen bestimmte Flaggschiff-Modelle in meiner Auswahlliste, und wie hängen diese Einschränkungen mit unseren Administrator-Richtlinien zusammen?*  
    **English**: *Why are certain flagship models missing from my selection list, and how do these restrictions relate to our administrator guidelines?*  
    **Tag**: 01  
    **Context**: Navigating admin-restricted model lists to manage budgets and performance.7  
29. **German**: *Welches Modell wird für Programmieraufgaben empfohlen, wenn wir Tracking-Codes auf unserer Website implementieren wollen?*  
    **English**: *Which model is recommended for programming tasks when we want to implement tracking codes on our website?*  
    **Tag**: 01  
    **Context**: Selecting models with strong coding capabilities for marketing technology tasks.12  
30. **German**: *Welches Modell bietet die beste visuelle Analysefähigkeit, um Designentwürfe unserer Agentur mit unseren Corporate-Design-Richtlinien abzugleichen?*  
    **English**: *Which model offers the best visual analysis capability to match design drafts from our agency with our corporate design guidelines?*  
    **Tag**: 01  
    **Context**: Evaluating image analysis and multimodal features.13

## **C. Agent Building**

Moving beyond generic chat interfaces requires building customized, repeatable brand assistants.1 Setting up these agents involves specifying detailed system instructions (up to 40,000 characters), adjusting the creativity index (temperature), structuring user input through custom forms, and integrating tracking systems like Langfuse to monitor token usage and latency.6

31. **German**: *Wie baue ich einen benutzerdefinierten Marketing-Agenten, der ausschließlich auf Basis unserer internen Brand Guidelines antwortet?*  
    **English**: *How do I build a custom marketing agent that answers exclusively based on our internal brand guidelines?*  
    **Tag**: 02  
    **Context**: Restricting agents to specific brand guidelines.1  
32. **German**: *Wie kann ich die 'Mit Chat erstellen'-Funktion nutzen, um die Systemanweisungen für meinen neuen Content-Review-Agenten im Dialog aufzubauen?*  
    **English**: *How can I use the 'Create with Chat' feature to build the system instructions for my new content review agent in a dialogue?*  
    **Tag**: 02  
    **Context**: Using natural language prompts to generate core agent instructions.9  
33. **German**: *Gibt es ein Zeichenlimit für die Systemanweisungen eines Agenten, wenn ich umfassende demografische Zielgruppenprofile dort hinterlegen will?*  
    **English**: *Is there a character limit for an agent's system instructions if I want to store comprehensive demographic target group profiles there?*  
    **Tag**: 02  
    **Context**: Navigating the platform's 40,000 character limit for agent instructions.6  
34. **German**: *Wie hoch sollte ich den 'Creativity'-Regler (Temperatur) für einen Agenten einstellen, der für kreatives Brainstorming neuer Kampagnen-Slogans gedacht ist?*  
    **English**: *How high should I set the 'Creativity' slider (temperature) for an agent intended for creative brainstorming of new campaign slogans?*  
    **Tag**: 02  
    **Context**: Adjusting temperature scales to balance creative variation and predictability.6  
35. **German**: *Wie richte ich ein 'Form' (Eingabeformular) für meinen Agenten ein, damit Benutzer Kampagnen-Parameter wie Budget, Kanal und Zielgruppe strukturiert übergeben müssen?*  
    **English**: *How do I set up a form for my agent so that users must submit campaign parameters like budget, channel, and target audience in a structured way?*  
    **Tag**: 02  
    **Context**: Building input forms to standardize creative briefings.6  
36. **German**: *Wie teile ich einen neu erstellten Brand-Agenten gezielt mit der Social-Media-Benutzergruppe, statt ihn für den gesamten Workspace sichtbar zu machen?*  
    **English**: *How do I share a newly created brand agent specifically with the social media user group instead of making it visible to the entire workspace?*  
    **Tag**: 02  
    **Context**: Restricting agent access to specific departments or project teams.6  
37. **German**: *Welche Auswirkungen hat das Veröffentlichen (Publish) eines Agenten-Drafts auf die Benutzer, die den Agenten aktuell verwenden?*  
    **English**: *What impact does publishing an agent draft have on users who are currently using the agent?*  
    **Tag**: 02  
    **Context**: Managing draft and published states without disrupting active campaigns.6  
38. **German**: *Wie verknüpfe ich einen bestehenden Wissensordner direkt mit den Aktionen meines Agenten, damit er bei Produktfragen automatisch dort recherchiert?*  
    **English**: *How do I link an existing knowledge folder directly to my agent's actions so it automatically searches there for product questions?*  
    **Tag**: 02  
    **Context**: Attaching knowledge folders to provide context for agents.5  
39. **German**: *Wie konfiguriere ich meinen Marketing-Agenten so, dass er für Übersetzungsaufgaben einen spezialisierten Unteragenten (Subagenten) hinzuzieht?*  
    **English**: *How do I configure my marketing agent to call a specialized sub-agent for translation tasks?*  
    **Tag**: 02  
    **Context**: Connecting multiple agents to handle multi-step workflows.6  
40. **German**: *Wo finde ich die Auswertungen (Usage Insights) und das qualitative Feedback unserer Mitarbeiter zu den Antworten meines Agenten?*  
    **English**: *Where do I find the usage insights and qualitative employee feedback regarding my agent's responses?*  
    **Tag**: 02  
    **Context**: Tracking agent usage metrics and user ratings.6  
41. **German**: *Wie richte ich die Tracing-Verbindung zu Langfuse ein, um detaillierte Logs über Token-Verbrauch und Systemeingaben meines Agenten zu erhalten?*  
    **English**: *How do I set up the tracing connection to Langfuse to obtain detailed logs on token consumption and system inputs of my agent?*  
    **Tag**: 02  
    **Context**: Connecting developer-grade monitoring platforms to optimize prompts.6  
42. **German**: *Wie kann ich vordefinierte Gesprächsstarter (Conversation Starters) hinzufügen, um meinem Team den Einstieg in die Interaktion mit dem Kampagnen-Agenten zu erleichtern?*  
    **English**: *How can I add predefined conversation starters to make it easier for my team to get started interacting with the campaign agent?*  
    **Tag**: 02  
    **Context**: Creating quick-click prompts to guide users.6  
43. **German**: *Welche Schritte sind nötig, um eine vorgefertigte Fähigkeit (Skill) aus einem öffentlichen Repository in unseren Agenten hochzuladen?*  
    **English**: *What steps are necessary to upload a pre-made skill from a public repository into our agent?*  
    **Tag**: 02  
    **Context**: Uploading community skill configurations.9  
44. **German**: *Wie stelle ich sicher, dass mein Agent sensible Daten verarbeitet, ohne dass Benutzer die zugrundeliegenden PDF-Quelldokumente direkt herunterladen können?*  
    **English**: *How do I ensure that my agent processes sensitive data without users being able to directly download the underlying source PDF documents?*  
    **Tag**: 02  
    **Context**: Restricting source document downloads while keeping semantic search active.6  
45. **German**: *Wie aktiviere ich die Web-Suche als integrierte Standardfähigkeit (Capability) für meinen News-Agenten?*  
    **English**: *How do I activate web search as an integrated default capability for my news agent?*  
    **Tag**: 02  
    **Context**: Enabling real-time internet search capabilities.6  
46. **German**: *Was passiert mit den API-Aufrufen meines Agenten, wenn die zugrundeliegende Integration zeitweise keine Autorisierung hat, und wie hilft die Fehler-Wiederholung?*  
    **English**: *What happens to my agent's API calls when the underlying integration temporarily lacks authorization, and how does error retry help?*  
    **Tag**: 02  
    **Context**: Handling API authorization failures and automatic retries.9  
47. **German**: *Wie kann ich meinen Agenten in einer Sandbox testen, bevor ich die Änderungen für die gesamte Grafikabteilung freigebe?*  
    **English**: *How can I test my agent in a sandbox before releasing the changes to the entire graphics department?*  
    **Tag**: 02  
    **Context**: Testing changes before publishing to protect active users.9  
48. **German**: *Wie formuliere ich die Kurzbeschreibung meines Agenten, damit die automatische Modellauswahl der Plattform versteht, wann dieser Agent hinzuzuziehen ist?*  
    **English**: *How do I formulate my agent's short description so the platform's automatic model selection understands when to call this agent?*  
    **Tag**: 02  
    **Context**: Writing effective agent meta-descriptions.9  
49. **German**: *Kann ich für meinen Content-Agenten die Erstellung von Grafiken (Image Generation) standardmäßig als Aktion aktivieren?*  
    **English**: *Can I activate image generation as a default action for my content agent?*  
    **Tag**: 02  
    **Context**: Enabling text-to-image capabilities within custom agent workflows.6  
50. **German**: *Wie greift mein Agent auf das Data-Analyst-Tool zu, um hochgeladene CSV-Dateien mit Python-Code auszuwerten?*  
    **English**: *How does my agent access the data analyst tool to evaluate uploaded CSV files with Python code?*  
    **Tag**: 02  
    **Context**: Enabling code execution environments for statistical data analysis.6

## **D. Wissensordner & RAG**

Wissensordner (Folders) serve as the central repository for unstructured brand knowledge, such as product sheets, PR archives, and regulatory policies.5 For marketing teams, managing folders effectively requires understanding technical constraints. These include the 1,000-file storage limit, the 8-million-character individual document limit, RAG-indexing behavior, SharePoint syncing, and the restriction on uploading structured spreadsheets (CSV/XLSX) directly into folders.5

51. **German**: *Wie erstelle ich einen neuen Wissensordner in der Bibliothek, um alle unsere PR-Dokumente an einem zentralen Ort für das Team bereitzustellen?*  
    **English**: *How do I create a new knowledge folder in the library to provide all our PR documents in a central location for the team?*  
    **Tag**: 03  
    **Context**: Building a centralized reference library for shared PR materials.5  
52. **German**: *Warum sollte ich für eine rechtliche Vertragsprüfung lieber eine direkte Dateianlage statt einer Suche im Wissensordner nutzen?*  
    **English**: *Why should I prefer a direct file attachment over a knowledge folder search for a legal contract review?*  
    **Tag**: 03  
    **Context**: Choosing between full context parsing and semantic chunk retrieval.5  
53. **German**: *Warum erhalte ich eine Fehlermeldung, wenn ich versuche, unsere Excel-Mediaplanung direkt in einen Wissensordner hochzuladen?*  
    **English**: *Why do I get an error message when trying to upload our Excel media planning directly into a knowledge folder?*  
    **Tag**: 03  
    **Context**: Understanding why tabular data is restricted from RAG document search folders.5  
54. **German**: *Gibt es ein Limit für die Anzahl an Dateien, die ich in einem einzelnen Wissensordner speichern kann, bevor die Suche fehlschlägt?*  
    **English**: *Is there a limit on the number of files I can store in a single knowledge folder before the search fails?*  
    **Tag**: 03  
    **Context**: Verifying the 1,000-file capacity threshold of folders.5  
55. **German**: *Wie verhält sich das System, wenn eines unserer hochgeladenen PDFs die Grenze von 8 Millionen Zeichen überschreitet?*  
    **English**: *How does the system behave when one of our uploaded PDFs exceeds the 8 million character limit?*  
    **Tag**: 03  
    **Context**: Managing character limits to prevent processing failures.5  
56. **German**: *Wie wende ich die @-Mention-Funktion im Chatverlauf an, um gezielt nur Dokumente aus dem Ordner 'B2B-Case-Studies' zu durchsuchen?*  
    **English**: *How do I apply the @-mention feature in the chat history to specifically search only documents from the 'B2B Case Studies' folder?*  
    **Tag**: 03  
    **Context**: Querying specific directories directly in the chat interface.5  
57. **German**: *Was passiert im Hintergrund bei der Vektorsuche (Embedding Search), wenn ich eine semantische Frage an meinen Wissensordner stelle?*  
    **English**: *What happens in the background during semantic vector search (embedding search) when I ask my knowledge folder a question?*  
    **Tag**: 03  
    **Context**: Explaining retrieval mechanics and context injection to non-technical users.5  
58. **German**: *Wie unterscheidet sich die Rolle des Owners von der Rolle des Editors bei der Verwaltung freigegebener Wissensordner?*  
    **English**: *How does the role of the owner differ from the role of the editor when managing shared knowledge folders?*  
    **Tag**: 03  
    **Context**: Structuring folder permissions across team roles.5  
59. **German**: *Wie kann ich einrichten, dass unser SharePoint-Marketingordner automatisch alle 24 Stunden mit dem Wissensordner synchronisiert wird?*  
    **English**: *How can I configure our SharePoint marketing folder to sync automatically every 24 hours with the knowledge folder?*  
    **Tag**: 03  
    **Context**: Setting up automated cloud synchronization for marketing assets.15  
60. **German**: *Wann wechselt das System bei unserer Dokumentenanalyse automatisch vom Targeted-Search-Modus in den Full-Retrieval-Modus?*  
    **English**: *When does the system automatically switch from targeted search mode to full retrieval mode during our document analysis?*  
    **Tag**: 03  
    **Context**: Navigating retrieval search modes based on query requirements.13  
61. **German**: *Wie weise ich das Modell an, über den Page Viewer bestimmte Seiten eines hochgeladenen PDF-Reports visuell zu prüfen, wenn diese Grafiken enthalten?*  
    **English**: *How do I instruct the model to visually inspect specific pages of an uploaded PDF report using the page viewer if they contain graphics?*  
    **Tag**: 03  
    **Context**: Activating visual page inspections to capture embedded charts.13  
62. **German**: *Wie nutze ich die asynchrone Upload-Schnittstelle der Folder-API, um neue Pressematerialien massenhaft hochzuladen?*  
    **English**: *How do I use the asynchronous upload interface of the folder API to upload new press materials in bulk?*  
    **Tag**: 03  
    **Context**: Programmatically managing data ingestion using the /upload-async API endpoint.5  
63. **German**: *Wie hoch ist das API-Rate-Limit für das Hochladen von Dateien in Wissensordner, und was muss ich bei Batch-Prozessen beachten?*  
    **English**: *What is the API rate limit for uploading files to knowledge folders, and what do I need to consider for batch processes?*  
    **Tag**: 03  
    **Context**: Managing rate limits (50 requests/min) for bulk programmatic ingestion.5  
64. **German**: *Welche gängigen Text- und Medienformate werden beim Upload in unsere Marketing-Ordner offiziell unterstützt?*  
    **English**: *Which common text and media formats are officially supported when uploading to our marketing folders?*  
    **Tag**: 03  
    **Context**: Verifying compatibility for PDF, DOCX, and PPTX formats.13  
65. **German**: *Werden alte Vektor-Einträge gelöscht, wenn ich eine Datei aus dem Wissensordner lösche, oder bleiben Datenfragmente erhalten?*  
    **English**: *Are old vector entries deleted when I remove a file from the knowledge folder, or do data fragments remain?*  
    **Tag**: 03  
    **Context**: Clearing vector embeddings after deleting outdated content.5  
66. **German**: *Wie gebe ich einen Wissensordner für eine ganze Abteilung frei, und welche Rollen dürfen diese globale Freigabe laut Admin-Einstellung steuern?*  
    **English**: *How do I share a knowledge folder with an entire department, and which roles are permitted to control this global sharing according to admin settings?*  
    **Tag**: 03  
    **Context**: Managing global workspace folder permissions.5  
67. **German**: *Warum werden eingescannte Produktkataloge mit geringer OCR-Qualität oft fehlerhaft von der Dokumentensuche ausgelesen, und wie beheben wir das?*  
    **English**: *Why are scanned product catalogs with poor OCR quality often read incorrectly by document search, and how do we fix that?*  
    **Tag**: 03  
    **Context**: Troubleshooting extraction errors on poorly scanned documents.13  
68. **German**: *Wie formuliere ich eine Suchanfrage so, dass die KI mich zwingt, direkte Zitate aus der Quelldatei für unsere Claims zu verwenden?*  
    **English**: *How do I formulate a search query so that the AI forces me to use direct quotes from the source file for our claims?*  
    **Tag**: 03  
    **Context**: Encouraging direct citations to verify marketing claims.13  
69. **German**: *Kann ich mehrere Wissensordner in einer einzigen Chatnachricht gleichzeitig ansprechen, um Daten aus verschiedenen Quellen abzugleichen?*  
    **English**: *Can I target multiple knowledge folders simultaneously in a single chat message to match data from different sources?*  
    **Tag**: 03  
    **Context**: Aggregating context across multiple active folders.13  
70. **German**: *Wie kann unser Workspace-Admin verhindern, dass Standardbenutzer sensible Wissensordner unkontrolliert für die gesamte Organisation freigeben?*  
    **English**: *How can our workspace admin prevent standard users from sharing sensitive knowledge folders with the entire organization without control?*  
    **Tag**: 03  
    **Context**: Restricting global workspace folder sharing.5

## **E. Prompt Engineering**

To help marketing teams transition from raw prompting to precise, structured prompting, they should leverage the platform's Prompt Library.7 Using variables like {{zielgruppe}} makes templates highly versatile.8 Sharing proven prompts with functional groups helps align tone of voice and ensures consistent creative outputs.7

71. **German**: *Wie speichere ich einen bewährten Prompt zur Generierung von Instagram-Beiträgen direkt aus meinem Chatverlauf in unserer Prompt Library?*  
    **English**: *How do I save a proven prompt for generating Instagram posts directly from my chat history into our prompt library?*  
    **Tag**: 05  
    **Context**: Saving successful prompts directly from chat history.7  
72. **German**: *Wie verwende ich geschweifte Klammern, um Platzhalter wie {{brand\_voice}} in meinen Vorlagen zu erstellen, die vor dem Ausführen ausgefüllt werden müssen?*  
    **English**: *How do I use curly braces to create placeholders like {{brand\_voice}} in my templates that must be filled in before execution?*  
    **Tag**: 05  
    **Context**: Designing prompts with dynamic variables.8  
73. **German**: *Wie rufe ich meine gespeicherten Prompt-Vorlagen im Chateingabefeld über die @-Mention-Funktion ab?*  
    **English**: *How do I retrieve my saved prompt templates in the chat input field using the @-mention feature?*  
    **Tag**: 05  
    **Context**: Using quick UI triggers to insert prompt templates.7  
74. **German**: *Kann ich eine Vorlagengruppe in der Prompt-Bibliothek erstellen, die ausschließlich für unser B2B-Content-Team sichtbar ist?*  
    **English**: *Can I create a template group in the prompt library that is visible exclusively to our B2B content team?*  
    **Tag**: 05  
    **Context**: Limiting prompt template access to specific department groups.7  
75. **German**: *Wie strukturiere ich einen Prompt am besten, um Systemanweisungen und Benutzerdaten sauber zu trennen, damit die KI nicht irritiert wird?*  
    **English**: *How do I best structure a prompt to cleanly separate system instructions and user data so that the AI does not get confused?*  
    **Tag**: 05  
    **Context**: Setting clear boundaries within prompts to prevent instructional drift.13  
76. **German**: *Wie kann ich einen bereits abgeschickten Prompt im Chatverlauf nachträglich korrigieren, um den Output neu generieren zu lassen?*  
    **English**: *How can I retroactively correct an already submitted prompt in the chat history to have the output regenerated?*  
    **Tag**: 05  
    **Context**: Editing and resubmitting active chat messages.10  
77. **German**: *Welche Prompt-Techniken helfen dabei, dass die KI bei der Übersetzung unserer Werbeslogans kulturelle Nuancen im DACH-Raum berücksichtigt?*  
    **English**: *Which prompting techniques help the AI consider cultural nuances in the DACH region when translating our advertising slogans?*  
    **Tag**: 05  
    **Context**: Fine-tuning prompts for regional linguistic demands.8  
78. **German**: *Wie erstelle ich ansprechende Platzhaltertexte für unsere Variablen, damit unerfahrene Kollegen die Eingabemaske korrekt ausfüllen?*  
    **English**: *How do I create engaging placeholder texts for our variables so that inexperienced colleagues fill in the input form correctly?*  
    **Tag**: 05  
    **Context**: Guiding users with helpful prompt variables and forms.6  
79. **German**: *Wie nutze ich die Funktion 'Antwort neu generieren', wenn das Modell eine unpassende Tonalität gewählt hat, und wie wechsle ich dabei das Modell?*  
    **English**: *How do I use the 'regenerate response' function when the model has chosen an inappropriate tone, and how do I switch the model during this?*  
    **Tag**: 05  
    **Context**: Regenerating outputs while testing different models.8  
80. **German**: *Können wir eine bewährte Prompt-Bibliothek als JSON-Datei exportieren oder aus anderen Systemen importieren, um Zeit zu sparen?*  
    **English**: *Can we export a proven prompt library as a JSON file or import it from other systems to save time?*  
    **Tag**: 05  
    **Context**: Migrating prompt configurations.7  
81. **German**: *Gibt es eine Möglichkeit, unsere gespeicherten Prompts nach Kategorien wie 'SEO', 'PR' und 'Ad-Copy' in der Bibliothek zu filtern?*  
    **English**: *Is there a way to filter our saved prompts by categories like 'SEO', 'PR', and 'Ad-Copy' in the library?*  
    **Tag**: 05  
    **Context**: Organizing large corporate prompt collections.7  
82. **German**: *Wie helfen mir die Onboarding-Touren der Plattform dabei, ein grundlegendes Verständnis für systematisches Prompting zu entwickeln?*  
    **English**: *How do the platform's onboarding tours help me develop a fundamental understanding of systematic prompting?*  
    **Tag**: 05  
    **Context**: Learning prompt design through structured walkthroughs.9  
83. **German**: *Wie beeinflusst die Komplexität und Länge meiner Prompt-Vorlagen die Verarbeitungsgeschwindigkeit (Latenz) bei der Inhaltserstellung?*  
    **English**: *How does the complexity and length of my prompt templates affect the processing speed (latency) during content creation?*  
    **Tag**: 05  
    **Context**: Balancing detailed prompt context with response latency.6  
84. **German**: *Warum verhalten sich gespeicherte Prompts unterschiedlich, wenn ich von einem GPT-Modell auf Claude wechsle, und wie passe ich sie an?*  
    **English**: *Why do saved prompts behave differently when I switch from a GPT model to Claude, and how do I adapt them?*  
    **Tag**: 05  
    **Context**: Standardizing prompts to work consistently across different model families.10  
85. **German**: *Wie deaktiviere ich den automatischen Speicher (Memory) im Chat, um zu verhindern, dass alte Kampagnen-Prompts den neuen Text beeinflussen?*  
    **English**: *How do I deactivate the automatic memory in the chat to prevent old campaign prompts from influencing the new text?*  
    **Tag**: 05  
    **Context**: Resetting context limits by deactivating memory features.15

## **F. Marketing Use Cases**

Category F maps practical marketing operations to specific platform capabilities.7 To help the marketing director understand how to use these tools effectively, the use cases are divided into five functional areas:

### **Content & Copywriting**

Using the Document Editor (formerly Canvas) alongside chats helps teams draft long-form copy, refine texts with inline AI edits, and export finalized drafts directly to Google Drive or OneDrive.8

86. **German**: *Wie verwende ich den Document Editor (ehemals Canvas), um eine mehrseitige Case Study direkt neben meinem Chatverlauf zu verfassen?*  
    **English**: *How do I use the Document Editor (formerly Canvas) to draft a multi-page case study directly alongside my chat history?*  
    **Tag**: 04  
    **Context**: Writing long-form marketing content using split-screen editors.8  
87. **German**: *Wie markiere ich ein bestimmtes Kapitel in unserem Blog-Entwurf im Editor, um es mithilfe von 'Edit with AI' umzuformulieren?*  
    **English**: *How do I highlight a specific chapter in our blog draft in the editor to reformulate it using 'Edit with AI'?*  
    **Tag**: 04  
    **Context**: Modifying highlighted text selections directly with inline assistance.14  
88. **German**: *Wie öffne ich das Formatierungsmenü über die Tastatureingabe '/' im Editor, um Tabellen und Aufzählungslisten in unseren Entwurf einzufügen?*  
    **English**: *How do I open the formatting menu using the '/' keyboard input in the editor to insert tables and bulleted lists into our draft?*  
    **Tag**: 04  
    **Context**: Building structured documents using layout commands.14  
89. **German**: *Kann ich einen fertiggestellten Newsletter-Entwurf direkt aus dem Editor als PDF- oder Word-Dokument für unser PR-Team herunterladen?*  
    **English**: *Can I download a completed newsletter draft directly from the editor as a PDF or Word document for our PR team?*  
    **Tag**: 04  
    **Context**: Exporting completed text files to common formats.14  
90. **German**: *Wie kann ich eine ältere Version unseres Blogbeitrags über die Versionshistorie im Editor wiederherstellen, falls mir die Änderungen nicht gefallen?*  
    **English**: *How can I restore an older version of our blog post via the version history in the editor if I do not like the changes?*  
    **Tag**: 04  
    **Context**: Reverting changes using version history.14  
91. **German**: *Wie speichere ich einen fertig geschriebenen Marketing-Report direkt aus dem Editor auf unserem OneDrive, ohne die Datei manuell herunterladen zu müssen?*  
    **English**: *How do I save a fully written marketing report directly from the editor to our OneDrive without having to manually download the file?*  
    **Tag**: 04  
    **Context**: Exporting completed files directly to cloud storage.14

### **SEO & Digital Strategy**

Using the Deep Research tool helps teams analyze search intent, map competitive positions, and track search landscapes.7

92. **German**: *Wie nutze ich das Deep Research Tool im Chat, um eine detaillierte Wettbewerbsanalyse unserer Top-3-Konkurrenten im Bereich B2B-SaaS zu starten?*  
    **English**: *How do I use the Deep Research tool in chat to start a detailed competitor analysis of our top 3 competitors in the B2B SaaS space?*  
    **Tag**: 02  
    **Context**: Running deep, multi-angle search queries.7  
93. **German**: *Wie viel Zeit muss ich für einen Deep-Research-Lauf einplanen, wenn die KI mehrere Suchpfade gleichzeitig analysieren soll?*  
    **English**: *How much time do I need to plan for a Deep Research run if the AI is to analyze multiple search paths simultaneously?*  
    **Tag**: 02  
    **Context**: Setting expectations for research runtimes (5 to 30 minutes).34  
94. **German**: *Wie hoch ist das monatliche Limit für Deep-Research-Anfragen pro Benutzer, und wo sehe ich meinen aktuellen Verbrauch?*  
    **English**: *How high is the monthly limit for Deep Research queries per user, and where do I see my current consumption?*  
    **Tag**: 02  
    **Context**: Managing rolling usage limits (typically 15 runs/month).34  
95. **German**: *Wie lade ich den fertigen Deep-Research-Report mit allen zitierten Weblinks als PDF herunter, um ihn unserem SEO-Team vorzulegen?*  
    **English**: *How do I download the completed Deep Research report with all cited weblinks as a PDF to present it to our SEO team?*  
    **Tag**: 02  
    **Context**: Downloading documented research reports as PDFs.34  
96. **German**: *Welche Sprachmodelle nutzt Deep Research im Hintergrund für die Planung und Analyse der Websuchen, und kann ich diese manuell ändern?*  
    **English**: *Which language models does Deep Research use in the background to plan and analyze web searches, and can I change them manually?*  
    **Tag**: 01  
    **Context**: Verifying which background planning and synthesis engines are used.34  
97. **German**: *Warum fordert mich Deep Research vor dem Suchlauf auf, detaillierte Anschlussfragen zu beantworten, und wie beeinflusst das die Ergebnisqualität?*  
    **English**: *Why does Deep Research prompt me to answer detailed follow-up questions before the search run, and how does this affect the output quality?*  
    **Tag**: 02  
    **Context**: Refining research queries using guided onboarding prompts.34

### **Brand, PR & Creative**

Creating Mermaid flowcharts, analyzing visual assets, and running translation tasks via DeepL helps PR and brand managers work more efficiently.8

98. **German**: *Wie generiere ich ein Mermaid-Diagramm direkt im Chat, um die Customer Journey unserer neuen Brand-Kampagne visuell darzustellen?*  
    **English**: *How do I generate a Mermaid diagram directly in the chat to visually represent the customer journey of our new brand campaign?*  
    **Tag**: 04  
    **Context**: Generating flowcharts and visual process models.8  
99. **German**: *Wie kann ich die Bild-Analysefunktion (Vision) nutzen, um zu prüfen, ob ein Social-Media-Banner unseren Richtlinien für Textanteile entspricht?*  
    **English**: *How can I use the image analysis feature (Vision) to check whether a social media banner complies with our text ratio guidelines?*  
    **Tag**: 03  
    **Context**: Analyzing visual layouts and design specifications.13  
100. **German**: *Welche Bildgenerierungsmodelle stehen uns in Langdock zur Verfügung, um kreative Layout-Konzepte für ein PR-Event zu entwerfen?*  
     **English**: *Which image generation models are available to us in Langdock to draft creative layout concepts for a PR event?*  
     **Tag**: 01  
     **Context**: Selecting text-to-image engines for creative mockups.6  
101. **German**: *Wie instruiere ich die KI im System-Prompt unseres PR-Agenten, damit Pressemitteilungen automatisch den formellen Stil deutscher Wirtschaftsmedien übernehmen?*  
     **English**: *How do I instruct the AI in the system prompt of our PR agent so that press releases automatically adopt the formal style of German business media?*  
     **Tag**: 02  
     **Context**: Writing instructions to enforce formal journalistic standards.6  
102. **German**: *Können wir eine vordefinierte Vorlage für Pressemitteilungen in der Bibliothek als wiederverwendbares Dokumenten-Template hinterlegen?*  
     **English**: *Can we store a predefined press release template in the library as a reusable document template?*  
     **Tag**: 03  
     **Context**: Distributing document templates across the workspace.9  
103. **German**: *Wie nutzen wir die DeepL-Schnittstelle in Langdock, um unsere Blogbeiträge unter Berücksichtigung unseres Glossars ins Englische zu übersetzen?*  
     **English**: *How do we use the DeepL interface in Langdock to translate our blog posts into English while considering our glossary?*  
     **Tag**: 07a  
     **Context**: Integrating translation pipelines to localize marketing copy.21

### **Performance, Social & Analytics**

Analyzing media performance data requires pulling reports via Google Analytics and evaluating raw datasets (CSV/XLSX) using Python-based data analyst features.7

104. **German**: *Wie verbinde ich Google Analytics mit Langdock, um wöchentliche Berichte über unsere organischen Zugriffszahlen direkt im Chat abzurufen?*  
     **English**: *How do I connect Google Analytics with Langdock to retrieve weekly reports on our organic traffic numbers directly in chat?*  
     **Tag**: 07a  
     **Context**: Retrieving real-time performance analytics directly.19  
105. **German**: *Wie nutze ich den 'Data Analyst', um eine CSV-Datei mit unseren monatlichen Werbeausgaben (Ad Spend) hochzuladen und einen Trendgraphen zu erstellen?*  
     **English**: *How do I use the 'Data Analyst' to upload a CSV file with our monthly ad spend and generate a trend graph?*  
     **Tag**: 02  
     **Context**: Running Python-based data transformations on raw marketing files.7  
106. **German**: *Kann der Data Analyst auch automatisiert mathematische Berechnungen wie den Return on Ad Spend (ROAS) direkt im Chat für uns kalkulieren?*  
     **English**: *Can the Data Analyst also automatically calculate mathematical computations like the Return on Ad Spend (ROAS) directly in chat for us?*  
     **Tag**: 02  
     **Context**: Calculating performance formulas inside secure code environments.6  
107. **German**: *Welche Diagrammtypen kann das Data-Analyst-Tool erstellen, und wie lade ich diese Grafiken für unser Vorstands-Reporting herunter?*  
     **English**: *Which chart types can the Data Analyst tool generate, and how do I download these graphics for our executive board reporting?*  
     **Tag**: 02  
     **Context**: Downloading generated charts (bar, line, scatter) for marketing reports.7  
108. **German**: *Können wir über die n8n-Integration einen Workflow bauen, der Social-Media-Erwähnungen filtert und wöchentlich in Langdock zusammenfasst?*  
     **English**: *Can we build a workflow via the n8n integration that filters social media mentions and summarizes them weekly in Langdock?*  
     **Tag**: 06  
     **Context**: Automating report aggregation across third-party networks.35  
109. **German**: *Wie gebe ich eine im Data Analyst erstellte Grafik direkt über unsere Slack-Integration an mein Performance-Team weiter?*  
     **English**: *How do I pass a graphic generated in the Data Analyst directly to my performance team via our Slack integration?*  
     **Tag**: 07a  
     **Context**: Sharing campaign assets through connected communication channels.6

### **B2B Lead Gen & Operations**

Connecting CRM systems like HubSpot or Salesforce directly with workflows helps teams automate lead qualification and manage task delegation.16

110. **German**: *Wie greife ich im Chat über das @-Symbol auf HubSpot zu, um Leads zu finden, die im letzten Monat über unsere Social-Media-Kampagne konvertiert sind?*  
     **English**: *How do I access HubSpot in chat using the @ symbol to find leads that converted last month via our social media campaign?*  
     **Tag**: 07a  
     **Context**: Querying integrated CRM systems directly from conversation threads.19  
111. **German**: *Wie erstelle ich einen Workflow, der eingehende Kontaktdaten aus einem Formular analysiert, qualifiziert und automatisch an HubSpot übergibt?*  
     **English**: *How do I create a workflow that analyzes incoming contact data from a form, qualifies it, and automatically passes it to HubSpot?*  
     **Tag**: 06  
     **Context**: Automating lead qualification and routing pipelines.16  
112. **German**: *Wie können wir über eine Workflow-Aktion automatisch neue Kampagnen-Mitglieder (Campaign Members) in Salesforce anlegen lassen?*  
     **English**: *How can we automatically have new campaign members created in Salesforce via a workflow action?*  
     **Tag**: 07a  
     **Context**: Updating CRM campaigns through integration triggers.19  
113. **German**: *Wie nutzen wir die Jira-Integration, um direkt aus einem Chat über fehlerhafte Tracking-Links ein neues Ticket für unsere IT zu erstellen?*  
     **English**: *How do we use the Jira integration to create a new ticket for our IT directly from a chat about broken tracking links?*  
     **Tag**: 07a  
     **Context**: Converting chat discussions into actionable engineering tickets.19  
114. **German**: *Wie lässt sich ein automatisierter Gmail-Workflow einrichten, der personalisierte Antwort-Entwürfe für eingehende Leads in meinem Postfach speichert?*  
     **English**: *How can an automated Gmail workflow be set up to save personalized draft replies for incoming leads in my inbox?*  
     **Tag**: 06  
     **Context**: Generating email replies based on incoming interest.16  
115. **German**: *Wie stellen wir sicher, dass sensible Kundendaten bei der Abfrage von Salesforce-Einträgen in Langdock nicht an unbefugte Mitarbeiter gelangen?*  
     **English**: *How do we ensure that sensitive customer data does not reach unauthorized employees when querying Salesforce entries in Langdock?*  
     **Tag**: 07a  
     **Context**: Enforcing CRM data access boundaries.19

## **G. Cost & Governance**

Managing the workspace budget requires understanding per-seat software pricing, volume tiers, workflow run packages, and model surcharges (such as the 10% over-quota markup on API usage).1

116. **German**: *Wie viel kostet eine Standard-Benutzerlizenz für den Langdock-Business-Plan im Monat bei einer jährlichen Abrechnung?*  
     **English**: *How much does a standard user license for the Langdock Business plan cost per month with annual billing?*  
     **Tag**: 08  
     **Context**: Budgeting for standard enterprise licenses (€20 per user/month annually).1  
117. **German**: *Wie unterscheiden sich die Abrechnungsmethoden 'AI Models Included' und 'BYOK' (Bring Your Own Key) bezüglich unserer monatlichen Ausgaben?*  
     **English**: *How do the billing methods 'AI Models Included' and 'BYOK' (Bring Your Own Key) differ regarding our monthly expenses?*  
     **Tag**: 08  
     **Context**: Choosing between bundled usage and custom API keys.27  
118. **German**: *Ab wie vielen aktiven Benutzern im Marketing greifen die automatischen Volumenrabatte auf unsere Seat-Lizenzen?*  
     **English**: *From how many active users in marketing do the automatic volume discounts on our seat licenses apply?*  
     **Tag**: 08  
     **Context**: Navigating bulk discounting tiers (50+, 250+, 550+ seats).1  
119. **German**: *Wie wird die Nutzung des Workflow-Builders abgerechnet, und was kostet das Business-Paket für 40.000 Läufe?*  
     **English**: *How is the use of the Workflow Builder billed, and how much does the Business package for 40,000 runs cost?*  
     **Tag**: 08  
     **Context**: Budgeting for workflow automation packages (€449 per workspace/month).1  
120. **German**: *Warum fällt bei der API-Nutzung ein Zuschlag von 10% auf die Token-Preise der Modell-Provider an, und wie kontrollieren wir diese Kosten?*  
     **English**: *Why is there a 10% surcharge on token prices of model providers for API usage, and how do we control these costs?*  
     **Tag**: 08  
     **Context**: Budgeting for the 10% token markup on external model routing.1  
121. **German**: *Was verbirgt sich hinter dem 'Over-Quota Markup' bei der intensiven Nutzung von Premium-Modellen wie Claude Opus?*  
     **English**: *What is hidden behind the 'over-quota markup' during intensive use of premium models like Claude Opus?*  
     **Tag**: 08  
     **Context**: Managing premium model spend to avoid unexpected budget spikes.2  
122. **German**: *Wo kann ich als Administrator tägliche oder monatliche Kostengrenzen für teure Modelle festlegen, um Budgetüberschreitungen zu vermeiden?*  
     **English**: *Where can I as administrator set daily or monthly cost limits for expensive models to prevent budget overruns?*  
     **Tag**: 08  
     **Context**: Restricting access to expensive models using spending limits.3  
123. **German**: *Verfallen ungenutzte Workflow-Läufe am Ende des Abrechnungsmonats, oder werden sie in den nächsten Monat übertragen?*  
     **English**: *Do unused workflow runs expire at the end of the billing month, or are they carried over to the next month?*  
     **Tag**: 08  
     **Context**: Tracking workflow package usage expiration rules.1  
124. **German**: *Wie exportiere ich die detaillierten Verbrauchsdaten unserer Kampagnen-Projekte über die Usage-Export-API für unser Controlling?*  
     **English**: *How do I export the detailed consumption data of our campaign projects via the usage export API for our controlling?*  
     **Tag**: 08  
     **Context**: Exporting usage metrics programmatically to calculate ROI.15  
125. **German**: *Wie wirkt sich die Aktivierung von 'Extra Usage' für Modelle auf die monatliche Abrechnung unseres Marketing-Workspaces aus?*  
     **English**: *How does activating 'Extra Usage' for models affect the monthly billing of our marketing workspace?*  
     **Tag**: 08  
     **Context**: Enabling extra usage capabilities while maintaining budget control.27

## **H. Compliance**

DACH enterprises require strict adherence to local regulatory frameworks, including EU-based hosting (such as Frankfurt servers), GDPR (DSGVO) guidelines, works council rules, and verified ISO 27001 / SOC 2 Type II certifications.1

126. **German**: *In welchem EU-Rechenzentrum werden unsere Daten gehostet, und wie stellen wir sicher, dass keine Übertragung in die USA stattfindet?*  
     **English**: *In which EU data center is our data hosted, and how do we ensure that no transfer to the USA takes place?*  
     **Tag**: 09  
     **Context**: Verifying local EU server hosting locations to meet strict data privacy rules.1  
127. **German**: *Wie garantiert Langdock vertraglich, dass unsere eingegebenen Daten und Prompts nicht zum Training von öffentlichen Modellen genutzt werden?*  
     **English**: *How does Langdock contractually guarantee that our entered data and prompts are not used to train public models?*  
     **Tag**: 09  
     **Context**: Confirming zero data retention policies for model training.1  
128. **German**: *Ist das DSGVO-Konformitätsniveau von Langdock ausreichend, um sensible personenbezogene Kundendaten in unseren CRM-Integrationen zu verarbeiten?*  
     **English**: *Is Langdock's GDPR compliance level sufficient to process sensitive personal customer data in our CRM integrations?*  
     **Tag**: 09  
     **Context**: Verifying data protection limits when syncing customer contacts.1  
129. **German**: *Welche aktuellen Sicherheitszertifizierungen wie ISO 27001 oder SOC 2 Type II besitzt Langdock, und wie erhalten wir die entsprechenden Audit-Berichte?*  
     **English**: *What current security certifications like ISO 27001 or SOC 2 Type II does Langdock hold, and how do we obtain the corresponding audit reports?*  
     **Tag**: 09  
     **Context**: Providing verified security audit materials to corporate IT and DPO auditors.1  
130. **German**: *Wie wird die vollständige Löschung des Kontos eines ausgeschiedenen Mitarbeiters mitsamt all seiner Chat-Historien systemseitig abgewickelt?*  
     **English**: *How is the complete deletion of a departed employee's account along with all their chat histories handled on the system side?*  
     **Tag**: 09  
     **Context**: Enforcing the GDPR 'right to be forgotten' when offboarding users.28  
131. **German**: *Gibt es eine standardisierte Vereinbarung zur Auftragsverarbeitung (AVV / DPA) von Langdock, die wir direkt an unsere Rechtsabteilung weiterleiten können?*  
     **English**: *Is there a standardized data processing agreement (DPA) from Langdock that we can forward directly to our legal department?*  
     **Tag**: 09  
     **Context**: Accessing the legal Data Protection Addendum (DPA).29  
132. **German**: *Wie weise ich unserem Betriebsrat nach, dass die im Workspace integrierten Nutzungsanalysen (Analytics) keine unzulässige Verhaltensüberwachung darstellen?*  
     **English**: *How do I prove to our works council that the usage analytics integrated into the workspace do not constitute unauthorized behavioral monitoring?*  
     **Tag**: 09  
     **Context**: Aligning workspace tracking settings with local labor laws.2  
133. **German**: *Gilt die 'Zero-Training'-Garantie für Kundendaten auch dann, wenn wir Modelle über Drittanbieter wie Microsoft Azure oder AWS Bedrock anbinden?*  
     **English**: *Does the 'zero training' guarantee for customer data also apply when we connect models via third-party providers like Microsoft Azure or AWS Bedrock?*  
     **Tag**: 09  
     **Context**: Verifying compliance setups for third-party hosting partners.1  
134. **German**: *Ab welcher Unternehmensgröße steht uns die Option für eine Single-Tenant- oder On-Premise-Bereitstellung zur Verfügung?*  
     **English**: *From what company size is the option for a single-tenant or on-premise deployment available to us?*  
     **Tag**: 09  
     **Context**: Evaluating single-tenant setups for enterprise needs (typically 5,000+ users).1  
135. **German**: *Welche personenbezogenen Metadaten werden in den Server-Logdateien von Langdock gespeichert, und wie lange werden diese aufbewahrt?*  
     **English**: *What personal metadata is stored in the server log files of Langdock, and how long is it kept?*  
     **Tag**: 09  
     **Context**: Auditing logging metrics to meet transparency guidelines.28

## **I. Scale-Up**

Scaling marketing automation requires coordinating multi-step processes. Teams can build automated workflows using triggers (forms, webhooks, or schedules), branching logic, and custom loops to scale campaign operations.15

136. **German**: *Wie erstelle ich einen automatisierten Workflow zur Lead-Verarbeitung ohne Programmierkenntnisse im Visual Workflow Builder?*  
     **English**: *How do I create an automated lead processing workflow without programming knowledge in the Visual Workflow Builder?*  
     **Tag**: 06  
     **Context**: Building multi-step marketing automations.15  
137. **German**: *Wie richte ich einen zeitgesteuerten Trigger (Schedule Trigger) ein, damit ein wöchentlicher Social-Media-Report jeden Montag um 8 Uhr morgens generiert wird?*  
     **English**: *How do I set up a scheduled trigger so a weekly social media report is generated every Monday at 8 AM?*  
     **Tag**: 06  
     **Context**: Setting up scheduled triggers to automate recurring tasks.15  
138. **German**: *Wie binde ich einen Webhook-Trigger ein, um einen Marketing-Workflow zu starten, sobald sich ein neuer Lead auf unserer Landingpage einträgt?*  
     **English**: *How do I integrate a webhook trigger to start a marketing workflow as soon as a new lead signs up on our landing page?*  
     **Tag**: 06  
     **Context**: Launching automated workflows using real-time webhook endpoints.15  
139. **German**: *Wie nutze ich Bedingungen (Conditions) und Schleifen (Loops) im Workflow, um verschiedene Social-Media-Kanäle je nach Relevanz anzusteuern?*  
     **English**: *How do I use conditions and loops in a workflow to target different social media channels depending on relevance?*  
     **Tag**: 06  
     **Context**: Implementing complex branching logic within automated workflows.15  
140. **German**: *Wie füge ich einen Freigabeschritt (Human-in-the-Loop) hinzu, damit KI-generierte Texte erst nach meiner manuellen Prüfung versendet werden?*  
     **English**: *How do I add an approval step (Human-in-the-Loop) so that AI-generated texts are only sent after my manual review?*  
     **Tag**: 06  
     **Context**: Integrating manual checkpoints to review and approve AI outputs.15  
141. **German**: *Was passiert mit einem fehlerhaften Workflow, und wie nutzen wir die Option 'Fix in Chat', um den Fehler automatisch beheben zu lassen?*  
     **English**: *What happens to a faulty workflow, and how do we use the 'Fix in Chat' option to have the error resolved automatically?*  
     **Tag**: 06  
     **Context**: Debugging broken automated steps using natural language prompts.18  
142. **German**: *Können wir Workflows aus externen Automatisierungs-Tools wie Zapier oder Make als JSON-Datei in den Langdock Workflow Builder importieren?*  
     **English**: *Can we import workflows from external automation tools like Zapier or Make as a JSON file into the Langdock Workflow Builder?*  
     **Tag**: 06  
     **Context**: Migrating existing workflow schemas.18  
143. **German**: *Wie binde ich den 'File Search'-Node in einen Workflow ein, um automatisch nach den neuesten Preislisten in unseren Ordnern zu suchen?*  
     **English**: *How do I integrate the 'File Search' node into a workflow to automatically search for the latest price lists in our folders?*  
     **Tag**: 06  
     **Context**: Retrieving specific files automatically during workflow execution.15  
144. **German**: *Wie können wir die Ausführungskosten unserer automatisierten Workflows im Dashboard analysieren, um Budgetüberschreitungen zu vermeiden?*  
     **English**: *How can we analyze the execution costs of our automated workflows in the dashboard to prevent budget overruns?*  
     **Tag**: 08  
     **Context**: Tracking automation expenditures.17  
145. **German**: *Welche Schritte sind nötig, um unseren Workspace von einer kleinen Testgruppe von 50 Benutzern auf ein großes Team mit 500+ Benutzern zu skalieren?*  
     **English**: *What steps are necessary to scale our workspace from a small pilot group of 50 users to a large team with 500+ users?*  
     **Tag**: 08  
     **Context**: Organizing workspace setups and seat allocations for larger rollouts.1

## **J. Sceptic / Resistance**

Addressing user hesitation and skepticism is key to a successful roll-out.3 Marketing directors often need to address concerns about job displacement, system accuracy/hallucinations, ease of use, creative quality, and data security compared to free public alternatives.2

146. **German**: *Wie gehe ich mit Bedenken aus meinem Redaktionsteam um, dass die KI-Agenten ihre kreative Arbeit überflüssig machen und Stellen abbauen sollen?*  
     **English**: *How do I address concerns from my editorial team that AI agents will make their creative work redundant and aim to reduce headcount?*  
     **Tag**: 00  
     **Context**: Addressing displacement fears and highlighting AI as a productivity partner.3  
147. **German**: *Wie erklären wir Kritikern das Risiko von Halluzinationen bei rechtlich sensiblen Aussagen, und welche Sicherheitsvorkehrungen bietet Langdock?*  
     **English**: *How do we explain the risk of hallucinations for legally sensitive claims to critics, and what safeguards does Langdock offer?*  
     **Tag**: 01  
     **Context**: Minimizing hallucination risks using low creativity parameters.9  
148. **German**: *Wie nehmen wir Mitarbeitern die Angst vor einer komplizierten Bedienung, wenn sie bisher noch nie mit generativer KI gearbeitet haben?*  
     **English**: *How do we ease employees' fear of complicated handling if they have never worked with generative AI before?*  
     **Tag**: 00  
     **Context**: Reducing user friction using pre-built guides and tours.3  
149. **German**: *Was entgegne ich dem Vorwurf, dass KI-generierte Texte die Markenidentität verwässern und im Vergleich zu menschlichen Entwürfen zu generisch klingen?*  
     **English**: *What do I reply to the accusation that AI-generated texts dilute brand identity and sound too generic compared to human drafts?*  
     **Tag**: 02  
     **Context**: Using precise style and tone configurations to prevent generic outputs.6  
150. **German**: *Warum sollten wir Geld für eine lizenzbasierte, sichere KI-Plattform ausgeben, wenn unsere Mitarbeiter auch kostenlose, öffentliche Chatbots nutzen können?*  
     **English**: *Why should we spend money on a license-based, secure AI platform when our employees can also use free, public chatbots?*  
     **Tag**: 09  
     **Context**: Highlighting the data protection risks of using unmanaged public tools.1

## **K. Edge Cases**

Handling edge cases helps prevent system errors. Typical issues include uploading password-protected files, parsing poor-quality scans, dealing with layout formatting bugs, exceeding character limits, and processing multi-sheet spreadsheets.5

151. **German**: *Warum bricht der Upload einer passwortgeschützten PDF-Wettbewerbsanalyse ab, und wie kann ich diese Datei dennoch im Wissensordner durchsuchbar machen?*  
     **English**: *Why does the upload of a password-protected PDF competitor analysis abort, and how can I still make this file searchable in the knowledge folder?*  
     **Tag**: 03  
     **Context**: Managing document search constraints on protected files.13  
152. **German**: *Wie gehen wir vor, wenn eingescannte Marketingflyer aufgrund schlechter Bildqualität nicht semantisch über die Dokumentensuche erfasst werden können?*  
     **English**: *How do we proceed when scanned marketing flyers cannot be semantically captured via document search due to poor image quality?*  
     **Tag**: 03  
     **Context**: Managing OCR limitations on poor quality scans.13  
153. **German**: *Warum wird die Formatierung unserer Preis-Tabellen zerschossen, wenn ich sie direkt aus dem Document Editor in eine Word-Datei kopiere?*  
     **English**: *Why is the formatting of our pricing tables broken when I copy them directly from the Document Editor into a Word file?*  
     **Tag**: 04  
     **Context**: Troubleshooting formatting bugs when exporting structured tables.14  
154. **German**: *Wie verhält sich der Wissensordner, wenn eine PDF-Datei zwar klein ist, aber das absolute Limit von 8 Millionen Zeichen überschreitet?*  
     **English**: *How does the knowledge folder behave when a PDF file is small but exceeds the absolute limit of 8 million characters?*  
     **Tag**: 03  
     **Context**: Managing character vs. file size limits on large documents.5  
155. **German**: *Kann das Data-Analyst-Tool eine Excel-Datei auswerten, die mehr als 10 verschiedene Arbeitsblätter (Sheets) enthält, oder müssen wir diese trennen?*  
     **English**: *Can the Data Analyst tool evaluate an Excel file that contains more than 10 different sheets, or do we have to separate them?*  
     **Tag**: 02  
     **Context**: Processing multi-sheet spreadsheets using the Data Analyst tool.7

## **L. Julia Lenz Edge**

This category addresses specific scenarios involving Julia Lenz, who represents the company's internal Data Protection Officer (DPO).1 It focuses on meeting her requirements, such as verifying mirrored access permissions, setting up auditor access, managing DPA legal documentation, deactivating automatic memory, and ensuring GDPR compliance.1

156. **German**: *Wie kann ich Julia Lenz beweisen, dass die HubSpot-Schnittstelle in Langdock die Benutzerberechtigungen exakt 1:1 spiegelt, damit kein unbefugter Datenzugriff erfolgt?*  
     **English**: *How can I prove to Julia Lenz that the HubSpot interface in Langdock mirrors user permissions exactly 1:1 so that no unauthorized data access occurs?*  
     **Tag**: 09  
     **Context**: Verifying that active integrations mirror system permissions.20  
157. **German**: *Können wir Julia Lenz als Datenschutz-Prüferin temporären Lesezugriff auf unsere Wissensordner einrichten, ohne dass dafür Lizenzkosten anfallen?*  
     **English**: *Can we set up temporary read access for Julia Lenz as a data privacy auditor to our knowledge folders without incurring license costs?*  
     **Tag**: 08  
     **Context**: Managing viewer permissions for auditors without using active seats.5  
158. **German**: *Welchen rechtlichen Nachweis müssen wir Julia Lenz vorlegen, um den gesicherten Transfer von IP-Adressen bei der Nutzung europäischer Server abzusichern?*  
     **English**: *What legal proof do we have to present to Julia Lenz to secure the protected transfer of IP addresses when using European servers?*  
     **Tag**: 09  
     **Context**: Securing legal approvals for data transfers under the DPA.28  
159. **German**: *Wie deaktiviere ich global die automatische Speicherfunktion (Memory) im Marketing-Workspace, um Julia Lenz' Bedenken hinsichtlich der Datenminimierung zu zerstreuen?*  
     **English**: *How do I globally deactivate the automatic memory feature in the marketing workspace to address Julia Lenz's concerns regarding data minimization?*  
     **Tag**: 09  
     **Context**: Turning off automatic memory features to comply with data minimization policies.15  
160. **German**: *Wie beweise ich Julia Lenz, dass Entwürfe im Document Editor bei der Anbindung unseres SharePoint-Speichers nicht auf Servern außerhalb der EU zwischengespeichert werden?*  
     **English**: *How do I prove to Julia Lenz that drafts in the Document Editor are not cached on servers outside the EU when connecting our SharePoint storage?*  
     **Tag**: 09  
     **Context**: Verifying local EU cloud routing for draft documents.1

## **Coverage Gap Analysis**

Analyzing the 160 questions reveals several gaps in the planned 11 knowledge files (00 through 09). While these files cover platform mechanics and administrative settings, they do not fully address the practical, everyday needs of a marketing team.3 The identified gaps can be divided into four main categories:

### **Practical Marketing Process Guidance**

The planned files cover the technical features of the user interface but do not provide practical guidance on *how* to use them for marketing tasks.6 For example, File 02 (Custom Agent Configuration) explains how to configure an agent's system instructions but lacks guidance on how to structure a brand voice prompt or build a standard campaign brief.6 This creates a gap for teams trying to set up consistent, high-quality assistants.1

### **Data Ingestion and Processing Limits**

There is a gap between File 03 (Wissensordner & Document Search) and the Data Analyst tool in File 02\.5 Wissensordner do not support CSV or XLSX files.5 However, marketing teams frequently work with spreadsheets for budget planning, performance tracking, and media spends.7 Currently, the documentation does not explain how to transition files between the data analyst environment (which handles code-based spreadsheet execution) and vector-based folders (which handle semantic text retrieval).5

### **Workflow Integrations and Webhook Scenarios**

File 06 (Visual Workflow Builder) covers basic automation features but lacks templates for common marketing tools like HubSpot, Google Analytics, and Slack.19 If a marketing director wants to connect a WordPress webhook to HubSpot, the general builder guide does not provide the specific integration steps or data mapping templates needed.16

### **Local Compliance and Works Council Approval Templates**

File 09 covers GDPR and general security certifications but does not address the specific requirements of DACH Works Councils (*Betriebsräte*).2 Enterprise roll-outs in the DACH region often require clear documentation proving that the platform is not used to track employee performance, such as keystrokes, prompt volume, or speed.2 The lack of ready-made compliance templates represents a significant bottleneck for enterprise adoption.2

## **Suggested Additional Knowledge Files**

To address these gaps and support the advisor agent's retrieval capabilities, the addition of three specialized knowledge files is recommended:

### **File 10: Marketing Stack Integration & Workflow Playbook**

This playbook would focus on connecting and running marketing-specific actions. It should cover:

* How native CRM integrations handle lead data and campaign member updates.19  
* Pagination rules, rate limits, and filter queries to safely pull and push HubSpot records without triggering API caps.20  
* Step-by-step templates to build lead-qualification and automated draft-reply sequences.16

### **File 11: DACH Enterprise Compliance & Works Council (Betriebsrat) Alignment Kit**

This kit would serve as a compliance resource to help legal and operational teams accelerate platform approvals. It should cover:

* Proving that Langdock's platform monitoring does not allow tracking individual user prompt histories or speed.2  
* Documentation showing that local system access controls (such as SharePoint permissions) are mirrored 1:1 inside the workspace.20  
* Templates to draft and submit system descriptions for Works Council approval.

### **File 12: Advanced Data Analyst & Spreadsheets Optimization Kit**

This kit would provide clear instructions on using Python-based data analyst nodes to process complex spreadsheets. It should cover:

* Best practices to format and evaluate multi-sheet Excel files.  
* How to use Python libraries inside the sandbox to generate, style, and export marketing charts that match corporate design standards.7  
* How to use direct file attachments for deep document analysis while using Wissensordner solely for broad semantic RAG searches.5

#### **Referenzen**

1. Langdock Review: We Tested the GDPR-Compliant Enterprise AI Platform \- tl;dv, Zugriff am Mai 31, 2026, [https://tldv.io/blog/langdock/](https://tldv.io/blog/langdock/)  
2. LangDock Enterprise Review \[2026\]: Honest Assessment \- Teamazing, Zugriff am Mai 31, 2026, [https://www.teamazing.com/blog/langdock-enterprise-review-2026/](https://www.teamazing.com/blog/langdock-enterprise-review-2026/)  
3. Langdock Reviews 2026: Pricing, Pros, Cons & Best Alt \- Workativ, Zugriff am Mai 31, 2026, [https://workativ.com/ai-agent/blog/langdock-reviews](https://workativ.com/ai-agent/blog/langdock-reviews)  
4. Langdock \- Microsoft Marketplace, Zugriff am Mai 31, 2026, [https://marketplace.microsoft.com/en-us/product/saas/langdock.langdock?tab=overview](https://marketplace.microsoft.com/en-us/product/saas/langdock.langdock?tab=overview)  
5. Folders \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)  
6. Agent Configuration \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)  
7. Langdock Cheat Sheet \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/cheat-sheet](https://docs.langdock.com/resources/cheat-sheet)  
8. Tips and tricks for your internal channels \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/tips-and-tricks-internal](https://docs.langdock.com/administration/tips-and-tricks-internal)  
9. Product Changelog | Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/changelog](https://langdock.com/changelog)  
10. Basic Chat functionalities \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/functionalities](https://docs.langdock.com/product/chat/functionalities)  
11. Recommended Models \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/models/recommended-models](https://docs.langdock.com/settings/models/recommended-models)  
12. Model Guide \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/models](https://docs.langdock.com/resources/models)  
13. Document Search \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/document-search](https://docs.langdock.com/product/chat/document-search)  
14. Document Editor \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/document-editor](https://docs.langdock.com/product/chat/document-editor)  
15. Feature Overview \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/feature-overview](https://docs.langdock.com/resources/feature-overview)  
16. AI Workflow Automation \- Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/products/workflows](https://langdock.com/products/workflows)  
17. Introduction to Workflows \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/introduction](https://docs.langdock.com/product/workflows/introduction)  
18. Workflow Builder \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/workflow-builder](https://docs.langdock.com/product/workflows/workflow-builder)  
19. Integrations | Langdock AI Platform, Zugriff am Mai 31, 2026, [https://langdock.com/products/integrations](https://langdock.com/products/integrations)  
20. Integrations Guide \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/integrations-guide](https://docs.langdock.com/administration/integrations-guide)  
21. Integration Directory \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/integrations/integration-directory](https://docs.langdock.com/product/integrations/integration-directory)  
22. Integrations API Overview \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/integrations/integrations-overview](https://docs.langdock.com/api-endpoints/integrations/integrations-overview)  
23. Langdock/langdock-adk-a2a-agent \- GitHub, Zugriff am Mai 31, 2026, [https://github.com/Langdock/langdock-adk-a2a-agent](https://github.com/Langdock/langdock-adk-a2a-agent)  
24. Demo Langdock A2A Agent \- GitHub, Zugriff am Mai 31, 2026, [https://github.com/matsjfunke/Langdock-A2A-Demo](https://github.com/matsjfunke/Langdock-A2A-Demo)  
25. DOCYET/Langdock.jl: Langdock API wrapper for Julia \- GitHub, Zugriff am Mai 31, 2026, [https://github.com/DOCYET/Langdock.jl](https://github.com/DOCYET/Langdock.jl)  
26. Langdock Pricing 2026: Plans, Hidden Costs & ROI \- Workativ, Zugriff am Mai 31, 2026, [https://workativ.com/ai-agent/blog/langdock-pricing](https://workativ.com/ai-agent/blog/langdock-pricing)  
27. Pricing \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/pricing](https://docs.langdock.com/administration/pricing)  
28. Privacy Policy | Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/privacy-policy](https://langdock.com/privacy-policy)  
29. AI Security & Compliance \- Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/security](https://langdock.com/security)  
30. Langdock \- App Store \- Apple, Zugriff am Mai 31, 2026, [https://apps.apple.com/us/app/langdock/id6741772965](https://apps.apple.com/us/app/langdock/id6741772965)  
31. Langdock | The Platform for AI Adoption, Zugriff am Mai 31, 2026, [https://langdock.com/](https://langdock.com/)  
32. Claude vs. ChatGPT: Why AWS Bedrock or Vertex AI Will Never Give You the App You Know \- innFactory AI Consulting, Zugriff am Mai 31, 2026, [https://innfactory.ai/en/blog/claude-vs-chatgpt-why-cloud-models-are-not-the-apps/](https://innfactory.ai/en/blog/claude-vs-chatgpt-why-cloud-models-are-not-the-apps/)  
33. Usage Tips \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/usage-tips](https://docs.langdock.com/settings/usage-tips)  
34. Deep Research \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/deep-research](https://docs.langdock.com/product/chat/deep-research)  
35. langdock · GitHub Topics, Zugriff am Mai 31, 2026, [https://github.com/topics/langdock](https://github.com/topics/langdock)  
36. Langdock Review @currentyear: Pricing, Features & Use Cases \- Cybernews, Zugriff am Mai 31, 2026, [https://cybernews.com/ai-tools/langdock-review/](https://cybernews.com/ai-tools/langdock-review/)  
37. A Magai Alternative Without Credit Top-Ups \- izzedo chat, Zugriff am Mai 31, 2026, [https://www.izzedo.chat/alternatives/izzedo-vs-magai](https://www.izzedo.chat/alternatives/izzedo-vs-magai)