# **Langdock Enterprise AI Platform: Comprehensive Feature Inventory & Strategic Architecture Report (2025–2026)**

The enterprise artificial intelligence ecosystem has undergone a profound architectural shift, transitioning from isolated conversational interfaces to highly integrated, agentic orchestration layers. An analysis of the Langdock platform (langdock.com) in late 2025 and early 2026 reveals a system meticulously engineered for enterprise deployment, characterized by its aggressive adoption of the Model Context Protocol (MCP), structured deterministic workflows, and stringent data governance. This exhaustive inventory dissects the platform across ten foundational pillars. The analysis is specifically calibrated to inform the development of a German-language advisor agent tailored for marketing directors, translating complex technical architectures into strategic operational capabilities. By examining these pillars, organizations can understand how to transition from basic generative drafting to the autonomous orchestration of marketing pipelines.

## **1\. CHAT**

The foundational chat interface has evolved into a multi-modal, multi-model digital workspace designed to handle both synchronous drafting and asynchronous deep analysis. For marketing executives, the traditional chat paradigm is often limited by the user's ability to prompt effectively and the model's inability to conduct independent verification. The platform mitigates this through specialized modes. The standard chat operates synchronously, prioritizing low latency for rapid content generation, brainstorming, and translation.1 However, the introduction of the Deep Research mode fundamentally alters this paradigm. When activated, Deep Research shifts the system into an autonomous, asynchronous investigative state.3 Rather than relying on a single inference pass, the platform orchestrates a triad of specialized models—a backbone model for structural planning, a deep reasoning model for synthesis, and a fast reasoning model for rapid source evaluation—to conduct iterative web searches over a period of 5 to 30 minutes.3 This allows a marketing director to trigger comprehensive competitive landscape analyses or market trend reports that return highly structured, citable outputs.  
To bridge the gap between ideation and document production, the Canvas feature transforms the chat interface into a persistent, side-by-side document and code editor.5 Unlike previous iterations that required a dedicated "Canvas model," the 2026 update seamlessly integrates Canvas generation into all standard flagship models, allowing users to collaborate on HTML email templates, marketing copy, and data visualizations dynamically.5 Furthermore, the system addresses the friction of repetitive context-setting through its global Memory feature. By continuously monitoring the conversational stream, the assistant automatically extracts and retains user preferences, brand tone guidelines, and role-specific context, applying these parameters to all future interactions within standard chat sessions.6

* **Standard chat capabilities:** Dynamic, synchronous conversational interfaces allowing mid-conversation model switching (which requires resending the context window), supported by dedicated focused, standard, and deep research modes ([https://docs.langdock.com/resources/models](https://docs.langdock.com/resources/models)).1  
* **File upload limits and handling:** Users can directly attach up to 20 files per chat session—including spreadsheets for data analysis, PDFs, images, and audio—injecting the entire document content directly into the model's context window for maximum accuracy ([https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments](https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments)).7  
* **Document Editor / Canvas:** A dedicated collaborative editing pane adjacent to the chat window that supports integrated terminal coding tools and allows users to download generated artifacts as PDF, Word, or Markdown documents ([https://langdock.com/changelog?33accfc8\_page=3](https://langdock.com/changelog?33accfc8_page=3)).5  
* **Prompt Library and Saved Prompts:** A centralized repository enabling users to create, categorize, and retrieve standardized prompt templates to execute recurring marketing workflows consistently ([https://docs.langdock.com/settings/workspace](https://docs.langdock.com/settings/workspace)).9  
* **Skills:** Encapsulated prompt structures and capabilities that guide the LLM's behavior, which can be configured for individual use or scoped for broader workspace activation ([https://docs.langdock.com/settings/workspace](https://docs.langdock.com/settings/workspace)).9  
* **Memory feature:** An autonomous personalization system that stores up to 50 user preferences across sessions, explicitly filtering out sensitive data unless instructed otherwise, with a complete opt-out toggle available in user preferences ([https://docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory)).6  
* **Deep Research mode:** An asynchronous investigative tool utilizing a multi-model orchestration triad to conduct autonomous, iterative web searches, producing highly structured, citable reports over 5 to 30 minutes ([https://docs.langdock.com/product/chat/deep-research](https://docs.langdock.com/product/chat/deep-research)).3  
* **Web Search inside chat:** A native, callable tool that allows the active model to query real-time internet data to ground its responses, mitigating hallucination risks on current events ([https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)).4

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Direct File Attachments | Maximum 20 files per individual chat session 7 |
| Memory Capacity | Maximum 50 retained memories per user account 6 |
| Deep Research Quota | 15 researches per user per rolling 30-day period (Standard Workspaces) 3 |
| Deep Research Duration | 5 to 30 minutes per execution 3 |
| Supported Canvas Exports | PDF, Word (DOCX), Markdown formats 5 |

## **2\. AGENTS**

Agents represent the operationalization of artificial intelligence, allowing organizations to graduate from ad-hoc prompting to deploying domain-specific, autonomous software entities. The architecture demands that agent creation adheres strictly to the PTCF framework (Persona, Task, Context, Format).4 For marketing leadership, this translates to the ability to construct an immutable "SEO Specialist Agent" or "Brand Compliance Reviewer." By defining the persona and attaching proprietary brand guidelines as context, the agent evaluates all user inputs against a standardized corporate baseline.  
The input architecture bridges unstructured conversational AI and structured data collection. While agents support open text prompts, administrators can enforce rigid Form inputs.4 These forms mandate that users provide specific variables (e.g., target demographic, campaign budget, product tier) before the agent initiates reasoning, drastically reducing the hallucination risks associated with vague instructions.4 To further lower the barrier to entry for AI novices, agents utilize predefined conversation starters.4  
The utility of an agent is defined by its modular capabilities and tool-calling infrastructure. Administrators can explicitly toggle access to web search, image generation, canvas, and the Data Analyst tool—which provides a secure Python sandbox for executing deterministic operations on raw data.4 The true autonomous power derives from the agent's ability to execute actions. Agents can natively interface with pre-built integrations, leverage external APIs via the Model Context Protocol (MCP), or trigger custom JavaScript actions to read and write data directly into corporate systems.4 Governance over these entities is maintained through a granular sharing model mapped to organizational directories, alongside a "Verified" badge system that allows administrators to formally endorse specific agents, mitigating the enterprise risk of uncontrolled agent sprawl.9

* **Creation flow (UI):** The visual builder requires the assignment of an icon, name, description, and detailed system instructions supporting up to 40,000 characters to dictate behavior ([https://docs.langdock.com/resources/agent-creation](https://docs.langdock.com/resources/agent-creation)).4  
* **Input modes:** Creators can configure agents to accept standard conversational Prompts or enforce structured Forms that guarantee the collection of mandatory variables before execution ([https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)).4  
* **Conversation starters:** Clickable, pre-written prompt suggestions displayed in the UI that guide users toward intended use cases and reduce friction for AI beginners ([https://docs.langdock.com/resources/agent-creation](https://docs.langdock.com/resources/agent-creation)).4  
* **Knowledge attachments:** Agents can be grounded using direct ad-hoc file uploads, static Library Folders for massive document sets, or dynamic Synced Folders that mirror enterprise cloud drives ([https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)).4  
* **Capabilities toggles:** Explicit administrative switches that enable or disable built-in tools such as web search, the Python-based data analyst, canvas, and image generation on a per-agent basis ([https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)).4  
* **Tool calling:** Agents autonomously trigger native integration actions, standardized MCP tools, or custom JavaScript actions, with configurable "human confirmation" requirements for destructive write operations ([https://docs.langdock.com/resources/integrations/using-integrations](https://docs.langdock.com/resources/integrations/using-integrations)).4  
* **Sharing model:** Access controls allow agents to remain private, or be shared with specific Azure/Okta user groups, individual users, or published workspace-wide ([https://docs.langdock.com/resources/agent-creation](https://docs.langdock.com/resources/agent-creation)).4  
* **Verified Agents and organization:** Administrators can pin a "Verified" badge to trusted agents, while users can apply up to 3 custom Labels for categorization and Pin their favorites to their personal dashboard ([https://docs.langdock.com/product/agents/advanced-features](https://docs.langdock.com/product/agents/advanced-features)).4  
* **Deployment surfaces:** Agents are accessible via the native Web UI, embeddable via API, and interactable natively within Microsoft Teams channels and Slack threads ([https://docs.langdock.com/product/agents/introduction](https://docs.langdock.com/product/agents/introduction)).15  
* **Owner transfer and duplication:** Complex agent configurations can be duplicated for rapid iteration, though semantic ownership transfers require the re-authentication of any associated individual OAuth connections ([https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)).7

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Agent Name Length | Maximum 80 characters 4 |
| Agent Description Length | Maximum 500 characters 4 |
| Agent Instructions Length | Maximum 40,000 characters 4 |
| Maximum Applied Labels | 3 labels permitted per agent 4 |

## **3\. WORKFLOWS**

Workflows represent the orchestration engine of the platform, transforming disparate, single-turn agent interactions into continuous, zero-touch automated pipelines. For a marketing director, this transitions AI from a consultative chatbot into an operational backbone. A workflow operates entirely asynchronously, initiated by deterministic triggers such as an incoming webhook from a marketing automation platform, a scheduled CRON job running weekly reporting, or a public-facing form submission collecting customer feedback.18  
The architecture is entirely node-based. The Agent node injects probabilistic LLM reasoning into the pipeline, while deterministic nodes handle data routing and API execution. The Code node is particularly critical; it permits the execution of sandboxed JavaScript for complex API parsing and JSON manipulation, alongside Python execution for heavy data transformation using pre-installed libraries like pandas, numpy, and openpyxl.19 For example, if a workflow ingests a CSV of 5,000 leads, a Python code node can clean the formatting, a Loop node iterates through each lead, an Agent node evaluates lead viability via semantic analysis, a Condition node routes high-scoring leads down a specific branch, and an HTTP Request node pushes the finalized data into Salesforce.19  
To mitigate the inherent unpredictability of LLM outputs breaking downstream logic, the Agent node utilizes Strict Structured Output schemas.18 By enforcing a JSON schema or a strict enum selection, the pipeline ensures conditional routers receive exactly the expected data types. Cost governance is heavily enforced at this layer, allowing administrators to set workspace-wide budgets and individual workflow limits, while an absolute execution cap of 2,000 steps prevents infinite loop generation.19

* **All node types:** The visual builder supports Triggers (webhook, integration, schedule, manual, form), Agent nodes, Code nodes (JavaScript and Python), HTTP Requests, Conditions, Loops, Notifications, Human-in-the-Loop, File Search, Web Search, Delay, Image Generation, and Output nodes ([https://docs.langdock.com/product/workflows/nodes/manual-trigger](https://docs.langdock.com/product/workflows/nodes/manual-trigger)).18  
* **Trigger authentication:** Workflows can ingest external events securely, utilizing header secrets or legacy query parameters to authenticate incoming webhook payloads ([https://docs.langdock.com/product/workflows/nodes/manual-trigger](https://docs.langdock.com/product/workflows/nodes/manual-trigger)).18  
* **Variable templating syntax:** Data is dynamically passed between nodes using double curly braces (e.g., {{trigger.output.email}} or {{code\_node\_name.output.formatted\_date}}) ([https://docs.langdock.com/product/workflows/nodes/code-node](https://docs.langdock.com/product/workflows/nodes/code-node)).19  
* **Cost controls:** Financial governance is maintained through a global workspace limit, a default threshold applied to new workflows, and maximum monthly ceilings per individual workflow ([https://docs.langdock.com/administration/workflow-settings](https://docs.langdock.com/administration/workflow-settings)).19  
* **Default workspace budget:** By default, the workspace-wide spend limit for workflow AI model usage is capped at 500 EUR per month, adjustable up to 100,000 EUR ([https://docs.langdock.com/administration/workflow-settings](https://docs.langdock.com/administration/workflow-settings)).19  
* **Structured Output schemas:** Agent nodes force the LLM to return validated JSON objects or specific enums, ensuring downstream system compatibility and preventing pipeline crashes ([https://docs.langdock.com/product/workflows/getting-started](https://docs.langdock.com/product/workflows/getting-started)).18  
* **Max Steps parameter:** To prevent runaway autonomous loops and excessive resource consumption, each workflow execution is strictly hard-capped at a maximum of 2,000 steps ([https://docs.langdock.com/administration/workflow-settings](https://docs.langdock.com/administration/workflow-settings)).19  
* **Debugging and run history:** The builder includes real-time execution tracing, detailed error logs, and an AI-assisted "Fix in chat" feature that automatically suggests and applies node corrections ([https://docs.langdock.com/product/workflows/workflow-builder](https://docs.langdock.com/product/workflows/workflow-builder)).18

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Default Workspace Budget | 500 EUR per month 19 |
| Default Per-Workflow Budget | 25 USD per month 19 |
| Maximum Workflow Budget | 10,000 USD per month 19 |
| Execution Step Limit | Maximum 2,000 steps per execution run 19 |

## **4\. KNOWLEDGE / RAG**

Retrieval-Augmented Generation (RAG) forms the epistemic foundation of the platform, suppressing hallucinations by strictly grounding model responses in proprietary enterprise data. The system delineates between static Library Folders and dynamic Synced Folders. Library Folders act as massive, manually curated repositories capable of storing up to 1,000 documents per folder.7 When an agent queries these folders, the system does not inject the entire document corpus into the prompt—a method that would instantly exceed the context window and trigger a token failure. Instead, it utilizes a highly optimized semantic chunking and embedding strategy.  
Documents uploaded to these folders are fractured into overlapping text chunks of exactly 2,000 characters.22 These chunks are subsequently vectorized using the text-embedding-ada-002 model, projecting the text into a 1536-dimensional vector space.20 During a user query, the platform calculates the cosine similarity between the query vector and the document vectors, retrieving the top 50 most relevant chunks (the k-value) and presenting only those specific fragments to the LLM.22 This ensures high semantic relevance and massive data scalability.  
However, this semantic architecture dictates strict file format support. Standard textual formats (PDF, DOCX, TXT, MD, HTML) are inherently suited for vectorization. Conversely, tabular spreadsheets (XLSX, CSV) rely on spatial row-and-column relationships that are completely destroyed during text chunking. Consequently, the platform intentionally prohibits spreadsheets from RAG folders; marketing teams wishing to analyze campaign CSVs must attach them directly to the Data Analyst tool for deterministic Python-based execution.7 Synced Folders introduce vital automation to this paradigm, fetching data from Microsoft SharePoint, Google Drive, and Confluence on a strict 24-hour cadence, ensuring agents always reference the latest brand guidelines without manual administrative overhead.8

* **Library Folders vs. Synced Folders:** Library Folders provide static storage for up to 1,000 files, whereas Synced Folders mirror external cloud drives for up to 200 files, with a maximum of 5 synced folders permitted per agent ([https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)).7  
* **Chunking strategy:** To optimize database retrieval, documents are programmatically split into discrete text chunks of exactly 2,000 characters ([https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics)).22  
* **Embedding model and dimensions:** The platform converts text into vector arrays utilizing the OpenAI text-embedding-ada-002 model, yielding 1536-dimensional vectors ([https://docs.langdock.com/api-endpoints/embedding/openai-embedding](https://docs.langdock.com/api-endpoints/embedding/openai-embedding)).20  
* **k-value for retrieval:** During semantic search, the database retrieves and ranks the top 50 most relevant chunks to ground the agent's response ([https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics)).22  
* **Supported file types:** Text-heavy formats such as PDF, DOCX, TXT, HTML, MD, and PPTX are natively supported, with individual file uploads capped strictly at 256MB via the API ([https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file)).8  
* **Spreadsheet, image, and audio handling:** Tabular data (XLSX/CSV) and multimedia files are entirely excluded from folders due to semantic search incompatibility, and must be processed via direct chat attachments or the Data Analyst tool ([https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)).7  
* **Sync cadence and sources:** Synced Folders automatically pull updates every 24 hours, natively supporting connections to Google Drive, SharePoint, OneDrive, and Confluence ([https://docs.langdock.com/resources/integrations/folder-sync](https://docs.langdock.com/resources/integrations/folder-sync)).8  
* **Manual refresh and error states:** Users can force an immediate sync, tracking file processing through transparent status states such as UPLOADING, EXTRACTING, EMBEDDING, SYNCED, and ACTION\_FAILED ([https://docs.langdock.com/api-endpoints/knowledge-folder/retrieve-files](https://docs.langdock.com/api-endpoints/knowledge-folder/retrieve-files)).8  
* **OAuth ownership pitfalls:** Folder syncing relies directly on the creator's personal OAuth token; if the establishing user is deleted from the workspace, the sync permanently breaks and must be re-authenticated ([https://docs.langdock.com/resources/integrations/folder-sync](https://docs.langdock.com/resources/integrations/folder-sync)).8  
* **Citation tracing:** Agent responses deeply integrate source verification, allowing users to click inline citations to trace facts directly back to the specific chunk within the original document ([https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)).4

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Library Folders File Limit | 1,000 files per folder (\~8 million total characters) 7 |
| Synced Folders File Limit | 200 files per folder 8 |
| Folders Per Agent | Maximum 5 synced folders attached per agent 8 |
| Maximum File Size | 256 MB per individual upload 20 |
| Chunk Size | 2,000 characters 22 |
| k-value (Retrieval Limit) | 50 chunks retrieved per query 22 |
| Embedding Dimensions | 1536 dimensions (text-embedding-ada-002) 20 |
| Sync Cadence | Automatically executes every 24 hours 8 |

## **5\. INTEGRATIONS**

The integration architecture acts as the central nervous system of the platform, bridging isolated LLM reasoning with the external operational realities of the enterprise. The ecosystem is bifurcated into two primary methodologies: native integrations and the Model Context Protocol (MCP). The platform currently maintains over 55 pre-built native integrations.21 These native bridges effortlessly handle OAuth flows and direct API connections for core enterprise software like Jira, Confluence, Microsoft 365, and Google Workspace, providing non-technical marketing users instant read/write access to their daily tool stack.21  
However, the definitive strategic advantage lies in Langdock's aggressive adoption of MCP. Functioning as the "USB-C port for AI," MCP standardizes the communication protocol between LLMs and disparate external data sources.13 The platform supports a robust directory of 57 officially maintained, remotely hosted MCP servers.23 This grants AI agents immediate, zero-install access to highly complex environments. For a marketing director, this means an agent can interface with the HubSpot MCP to pull live deal contexts, query the PostHog MCP for real-time web analytics and error tracking, fetch UI inspiration from the Mobbin MCP, and generate visual assets via the Canva MCP—all orchestrated seamlessly from a single conversational interface.23  
For organizations reliant on bespoke internal databases, the Custom Integration Builder allows engineering teams to construct proprietary actions. This builder features an advanced JavaScript sandbox equipped with OAuth 2.0 Dynamic Client Registration (DCR), enabling complex HTTP request handling via built-in ld.request and ld.log utilities, safely isolated from the core application.12

* **Native integrations count:** The platform natively supports over 55 pre-built applications, simplifying authentication and data synchronization without technical configuration overhead ([https://docs.langdock.com/resources/feature-overview](https://docs.langdock.com/resources/feature-overview)).21  
* **Categorized list of integrations:** Support spans CRMs (HubSpot, Salesforce, Attio, Close), productivity suites (Google Workspace, Notion, Asana), dev tools (GitHub, Render, Supabase), and specialized marketing/analytics environments (PostHog, Mobbin, Canva) ([https://docs.langdock.com/product/integrations/mcp-directory](https://docs.langdock.com/product/integrations/mcp-directory)).23  
* **Custom integration builder:** Allows developers to connect proprietary tools utilizing OAuth 2.0, API keys, or service accounts, executing logic inside a secure JavaScript sandbox with native ld.request fetch utilities ([https://docs.langdock.com/resources/integrations/create-integrations](https://docs.langdock.com/resources/integrations/create-integrations)).12  
* **Action confirmation:** Administrators can enforce mandatory human-in-the-loop approvals for destructive "write" actions, while permitting safe "read/search" actions to execute autonomously ([https://docs.langdock.com/resources/integrations/using-integrations](https://docs.langdock.com/resources/integrations/using-integrations)).4  
* **Native file actions vs. regular actions:** Context-gathering helper actions (e.g., retrieving internal HubSpot pipeline IDs) execute invisibly prior to regular actions to ensure the LLM structures subsequent API calls correctly ([https://docs.langdock.com/resources/integrations/create-integrations](https://docs.langdock.com/resources/integrations/create-integrations)).4  
* **MCP support (Client & Server):** Langdock acts as an MCP client (ingesting tools via STREAMABLE\_HTTP and Server-Sent Events) and serves as an MCP server itself via the /mcp endpoint, allowing external IDEs to call Langdock agents natively ([https://docs.langdock.com/resources/integrations/mcp](https://docs.langdock.com/resources/integrations/mcp)).13  
* **File handling via MCP:** Appending the .meta({format:'file'}) marker to Zod schemas prompts Langdock to automatically intercept and resolve file references into structured base64 payloads for external server processing ([https://docs.langdock.com/resources/integrations/mcp-file-input](https://docs.langdock.com/resources/integrations/mcp-file-input)).13  
* **MCP server directory:** A curated, zero-install directory of 57 remote servers, including critical tools like Stripe, Zapier, Webflow, Replicate, Notion, and Neon Postgres ([https://docs.langdock.com/product/integrations/mcp-directory](https://docs.langdock.com/product/integrations/mcp-directory)).23

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Native Integrations | 55+ Supported Native Apps 21 |
| MCP Server Directory | 57 Officially Hosted Remote Servers 23 |
| MCP Transport Protocols | STREAMABLE\_HTTP and Server-Sent Events (SSE) 13 |
| Automatic MCP Tool Discovery | Retrieves up to 50 tools/resources during initial connection 13 |

## **6\. API**

The Langdock API suite provides comprehensive programmatic access to the platform's core infrastructure, enabling enterprise development teams to build custom interfaces, automate RAG pipelines, and integrate multi-model reasoning directly into corporate applications. The architecture utilizes standard REST protocols authenticated via Bearer tokens, enforcing strict workspace-level scoping parameters such as AGENT\_API and INTEGRATION\_API to compartmentalize security risks.20  
A major architectural shift finalizing in early 2026 surrounds the transition from the legacy Assistants API to the new Agents API. The legacy Assistants API—slated for complete deprecation on April 30, 2026—relied on proprietary transformational logic that complicated front-end development.20 The new Agents API achieves native compatibility with the industry-standard Vercel AI SDK, utilizing the UIMessage format.20 This standardizes message streaming, tool call execution, and structured output formatting across the global development ecosystem, drastically reducing integration time for custom marketing dashboards.  
The Completion API remains fully compatible with OpenAI's API specifications, allowing enterprises to instantly re-route existing OpenAI scripts to Langdock endpoints without rewriting their logic.20 Crucially, this endpoint supports passing the reasoning\_effort parameter, granting developers precise control over the depth of chain-of-thought processing.20 Due to the inherent latency of complex agentic tool execution—which can easily trigger the platform's strict 100-second HTTP 524 timeout limit—the system heavily enforces the adoption of Server-Sent Events (SSE) streaming protocols.20

* **Base URLs:** Routing depends on the environment; multi-tenant SaaS utilizes api.langdock.com, while single-tenant environments append \<deployment-url\>/api/public to route traffic securely ([https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction)).20  
* **Authentication and scopes:** Access relies entirely on Bearer tokens governed by a strict scope system, requiring permissions like AGENT\_API, INTEGRATION\_API, and KNOWLEDGE\_FOLDER\_API depending on the targeted endpoint ([https://docs.langdock.com/api-endpoints/integrations/integrations-overview](https://docs.langdock.com/api-endpoints/integrations/integrations-overview)).20  
* **Completion API (OpenAI-compatible):** Provides a drop-in replacement for OpenAI endpoints, supporting standard parameters alongside the specific reasoning\_effort toggle to dictate chain-of-thought depth across analytical models ([https://docs.langdock.com/api-endpoints/completion/openai](https://docs.langdock.com/api-endpoints/completion/openai)).20  
* **Embedding API:** Exposes endpoints to natively generate 1536-dimensional text embeddings utilizing the OpenAI text-embedding-ada-002 architecture ([https://docs.langdock.com/api-endpoints/embedding/openai-embedding](https://docs.langdock.com/api-endpoints/embedding/openai-embedding)).20  
* **Agents API:** Modernized for native Vercel AI SDK compatibility using the UIMessage standard, allowing programmatic chat execution via a persistent agentId or an inline, temporary agent configuration block ([https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent)).20  
* **AttachmentIds caveat:** Within the Agents API inline configuration, the attachmentIds parameter is non-functional; attachments must instead be explicitly passed via the metadata.attachments payload inside individual message objects ([https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent)).20  
* **Knowledge Folder API:** Facilitates programmatic document management, highlighting an upload-async endpoint that immediately returns a 202 Accepted status to handle massive file uploads without triggering network timeouts ([https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file)).20  
* **Integrations API:** Permits complete programmatic CRUD (Create, Read, Update, Delete) operations on custom integration connections, execution actions, and webhook triggers ([https://docs.langdock.com/api-endpoints/integrations/integrations-overview](https://docs.langdock.com/api-endpoints/integrations/integrations-overview)).20  
* **Usage Export API:** Enables the extraction of granular analytics in CSV format, detailing per-user and per-agent message volumes, and (for BYOK workspaces) precise token consumption metrics ([https://docs.langdock.com/api-endpoints/usage-export/export-users](https://docs.langdock.com/api-endpoints/usage-export/export-users)).20  
* **Audit Logs API:** Designed for SIEM integration, returning a paginated feed of workspace actions detailing actor IDs, entity types, and specific state changes for security compliance ([https://docs.langdock.com/api-endpoints/audit-logs/list-audit-logs](https://docs.langdock.com/api-endpoints/audit-logs/list-audit-logs)).20  
* **User Management API / SCIM:** Automates identity management, allowing HR platforms to programmatically issue workspace invitations or execute instant account deactivations ([https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction)).20  
* **Rate limits:** Traffic is globally restricted at the workspace level, imposing a hard ceiling of 500 RPM and 60,000 TPM, triggering a 429 Too Many Requests error if exceeded ([https://docs.langdock.com/api-endpoints/completion/openai](https://docs.langdock.com/api-endpoints/completion/openai)).20  
* **MCP endpoint:** The platform exposes an endpoint at /mcp, functioning natively as an MCP server so external AI tools (like Cursor or Windsurf) can call Langdock agents directly ([https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server](https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server)).13  
* **Static IP for outbound traffic:** The platform provides a dedicated static IP address to facilitate precise enterprise firewall whitelisting and secure network routing ([https://docs.langdock.com/settings/security/static-ip-configuration](https://docs.langdock.com/settings/security/static-ip-configuration)).29  
* **HTTP 100s timeout:** To safeguard backend infrastructure from runaway execution loops, all non-streaming programmatic requests are forcefully terminated with an HTTP 524 error at exactly 100 seconds ([https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent)).20

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Default Request Rate Limit | 500 Requests Per Minute (RPM) per workspace 20 |
| Default Token Rate Limit | 60,000 Tokens Per Minute (TPM) per workspace 20 |
| Audit Logs Pagination | Maximum 50 items returned per request 20 |
| Non-Streaming Timeout | HTTP 524 error enforced strictly at 100 seconds 20 |
| Assistants API Deprecation | Complete End-of-Life scheduled for April 30, 2026 20 |

## **7\. MODELS & COSTS**

Langdock’s foundational philosophy rests on strict model agnosticism, rejecting vendor lock-in to provide organizations with uninterrupted, immediate access to the frontier models produced by global AI research laboratories. As of early 2026, the ecosystem integrates foundational and reasoning-specific architectures from OpenAI, Anthropic, Google, Mistral, Meta, and notably, DeepSeek.2 This breadth ensures that marketing departments are not constrained by the weaknesses of a single provider; they can leverage Claude's nuanced copywriting capabilities, Gemini's immense context windows for analyzing massive datasets, and DeepSeek's rigorous analytical reasoning seamlessly.  
To optimize token economics for daily marketing operations, Langdock features an intelligent "Auto Mode." Rather than requiring non-technical users to manually evaluate which model best suits their task, this routing engine autonomously analyzes the semantic complexity of the initial prompt. It then dynamically routes the execution to either a highly capable flagship model (Claude Sonnet 4.6) for intricate tasks, or a highly efficient counterpart (GPT-5.2) for rapid drafting, striking an optimal balance between intelligence and cost latency.1  
The financial infrastructure governing these models is bifurcated into two primary operational modes. The "AI Models Included" plan abstracts token economics entirely, billing organizations on a predictable per-seat licensing basis.30 Conversely, the "Bring Your Own Key" (BYOK) architecture appeals to sophisticated enterprise procurement strategies. By plugging proprietary API keys (e.g., from Microsoft Azure, Google Cloud, or Anthropic) directly into Langdock, organizations pay only basic platform licensing fees to Langdock while passing raw token compute costs directly to their existing cloud provider contracts.2 To ensure the platform functions correctly, administrators utilizing BYOK must manually configure three discrete model types: a completion model for chat, an embedding model for vector search, and an image generation model for visual asset creation.30

* **Current list of supported models:** The extensive roster natively includes the OpenAI GPT-5 series, Anthropic's Claude 4.7/4.8 Opus and Sonnet models, Google Gemini 3.5 Flash, Mistral Large 3, Meta's Llama 4 Maverick, and DeepSeek r1 and v3.1 architectures ([https://docs.langdock.com/settings/models/recommended-models](https://docs.langdock.com/settings/models/recommended-models)).2  
* **Auto Mode logic:** An intelligent routing system that evaluates prompt complexity to toggle execution exclusively between GPT-5.2 and Claude Sonnet 4.6, remaining fixed on the chosen model for the duration of the conversation to prevent context-resend costs ([https://docs.langdock.com/resources/models](https://docs.langdock.com/resources/models)).1  
* **BYOK configuration:** The "Bring Your Own Key" setup transfers raw token costs to the organization's direct cloud provider, but explicitly requires administrators to map a minimum of one completion, one embedding, and one image generation model to prevent UI feature failures ([https://docs.langdock.com/settings/models/byok](https://docs.langdock.com/settings/models/byok)).30  
* **Image generation models:** Visual asset creation is driven by an array of providers, prominently featuring Black Forest Labs' Flux series, OpenAI's DALL-E, and Google's Imagen, with "fast" variants prioritized for rapid ideation ([https://docs.langdock.com/resources/models](https://docs.langdock.com/resources/models)).2  
* **Embedding model options:** Semantic search and folder syncing operations rely heavily on the 1536-dimensional OpenAI text-embedding-ada-002 architecture to ensure high-fidelity document retrieval ([https://docs.langdock.com/settings/models/byok](https://docs.langdock.com/settings/models/byok)).20

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Maximum Context Window | Up to 1,000,000 tokens (Claude Opus 4.7 1M) 2 |
| Maximum Output Tokens | Up to 32,768 tokens (GPT-4.1) 2 |
| Auto Mode Routing Options | Dynamically selects between GPT-5.2 and Claude Sonnet 4.6 1 |
| Required BYOK Model Configurations | Minimum 3 types required (Completion, Embedding, Image Gen) 30 |

## **8\. DEPLOYMENT & SECURITY**

For large enterprises evaluating artificial intelligence, the platform's security perimeter and deployment topography are as critical as its reasoning capabilities. Marketing departments frequently process Personally Identifiable Information (PII) and highly sensitive pre-release campaign data, demanding robust isolation. Langdock addresses this by offering flexible deployment thresholds. Standard environments utilize a scalable multi-tenant SaaS architecture hosted exclusively within the European Union to guarantee strict data sovereignty.32 For organizations managing higher user volumes or facing extreme regulatory constraints, the platform supports Single-Tenant SaaS (Bring Your Own Cloud / BYOC) and fully air-gapped on-premise deployments.32  
Identity Access Management (IAM) is rigorously enforced through industry-standard SAML 2.0 and SCIM 2.0 protocols.33 By provisioning users via SCIM, Langdock profiles are inextricably bound to the corporate Active Directory. If an employee departs the organization, their access to Langdock is instantaneously severed at the identity provider level, neutralizing insider threat risks.33 A specific architectural quirk within Microsoft Entra ID integration requires careful administrative handling: users provisioned via SCIM who have not yet executed their initial login manifest in the dashboard as "pending users," a state intentionally designed to exclude them from active seat billing calculations.35  
Network security relies heavily on Domain-based access verification, granular CIDR block IP restrictions, and the utilization of a dedicated static outbound IP.36 The platform operates under rigorous independent validation, maintaining ISO 27001 and SOC 2 Type II certifications alongside exhaustive GDPR alignment, guaranteeing that enterprise data is cryptographically secured both in transit and at rest.32

* **Multi-tenant SaaS, single-tenant SaaS, BYOC, on-premise:** Deployment architectures scale from shared cloud environments to highly isolated, air-gapped on-premise installations designed for maximum regulatory compliance ([https://langdock.com/](https://langdock.com/)).32  
* **Hosting regions:** Cloud hosting infrastructure is strictly localized within the European Union (EU) to fulfill stringent continental data privacy frameworks and prevent transatlantic data transmission ([https://langdock.com/](https://langdock.com/)).32  
* **Compliance certifications:** The platform inherently guarantees alignment with premier security standards, actively holding ISO 27001, SOC 2 Type II, and comprehensive GDPR certifications ([https://langdock.com/](https://langdock.com/)).32  
* **SAML SSO providers:** Single Sign-On authenticates users seamlessly against existing corporate credentials using standard assertion protocols, enforcing domain verification prior to system activation ([https://docs.langdock.com/settings/security/saml](https://docs.langdock.com/settings/security/saml)).34  
* **SCIM and Entra ID pending users:** Automated user provisioning operates in the background, specifically optimized for Microsoft Entra ID and Okta; pre-provisioned Entra ID employees manifest as "pending users" to remain excluded from seat billing until their first login ([https://docs.langdock.com/settings/scim-pending-users](https://docs.langdock.com/settings/scim-pending-users)).33  
* **RBAC, roles, and audit logs:** Operational authority is limited by Role-Based Access Control, while an immutable, paginated audit log captures all destructive and non-destructive workspace alterations for forensic visibility ([https://docs.langdock.com/administration/workspace-setup](https://docs.langdock.com/administration/workspace-setup)).20  
* **Data residency and training opt-out:** Langdock strictly mandates that corporate prompts, file uploads, and chat histories remain fully isolated and are definitively excluded from external LLM model training regimens ([https://langdock.com/](https://langdock.com/)).32

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Security Certifications | ISO 27001, SOC 2 Type II, GDPR 32 |
| Cloud Server Location | European Union (EU) 32 |
| Supported SSO / IAM Protocols | SAML 2.0, SCIM 2.0 33 |
| Supported SCIM Providers | Microsoft Entra ID, Okta 33 |

## **9\. ADMIN & GOVERNANCE**

Scaling artificial intelligence across an enterprise requires centralized governance to prevent chaotic usage patterns, data leakage, and astronomical cloud expenditure. The Langdock workspace settings function as the centralized command center. Here, administrators establish the visual identity of the platform, inject persistent system-wide prompt contexts, enforce mandatory chat disclaimers, and define the default LLM models to standardize output quality across the workforce.36  
Governance fundamentally relies on a hierarchical group permission model synchronized via SCIM. Groups function as distinct organizational silos (e.g., "Global Marketing," "EMEA Sales"). Administrators can restrict highly specialized Agents or confidential RAG folders exclusively to these groups, preventing sensitive financial or strategic data from inadvertently bleeding into the broader employee pool.7 To further combat "shadow AI" and agent sprawl, the system employs a "Verified Agents" process. Administrators can review internally developed agents and append a visual checkmark badge, establishing a marketplace of authoritative, quality-controlled tools that employees can trust.14  
The lifecycle of these tools is meticulously managed. When a custom agent becomes obsolete, administrators must choose between disabling and deleting. "Disable" softly unpublishes the agent from the UI while preserving its intricate prompt engineering and historical logs for potential future resurrection. "Delete" executes a permanent, irreversible cryptographic wipe, breaking any workflows or APIs reliant on its endpoint.38 Cost reporting tools integrate seamlessly into this console, aggregating workflow execution data and BYOK token metrics into CSV exports, enabling finance departments to execute highly accurate, cross-departmental chargebacks.20

* **Workspace settings and user provisioning:** Global administrators utilize a centralized dashboard to dictate corporate branding visuals, establish default models, manage domain-based onboarding, and inject persistent system-wide context into every prompt ([https://docs.langdock.com/administration/workspace-setup](https://docs.langdock.com/administration/workspace-setup)).36  
* **Groups and permission model:** Synchronized via SCIM, the hierarchical permission architecture operates on a three-tier system (Owner, Editor, Viewer), rigidly controlling the visibility and modification rights of specific Agents and Knowledge Folders across departments ([https://docs.langdock.com/settings/workspace](https://docs.langdock.com/settings/workspace)).7  
* **Verified Agents process:** Authorized administrators can review custom agents and append a prominent visual checkmark badge, signaling to users that the agent has been vetted for quality and safety ([https://docs.langdock.com/product/agents/advanced-features](https://docs.langdock.com/product/agents/advanced-features)).14  
* **Disable vs. delete for agents:** Disabling an agent temporarily strips it from the active UI while preserving its configuration and history, whereas deleting an agent initiates a permanent, irreversible purge of its data and associated endpoints ([https://docs.langdock.com/administration/agent-management](https://docs.langdock.com/administration/agent-management)).38  
* **Cost reporting and chargeback:** Financial oversight is driven by the Usage Export API, which outputs high-resolution CSVs detailing per-user and per-agent token consumption to facilitate precise departmental billing ([https://docs.langdock.com/administration/pricing](https://docs.langdock.com/administration/pricing)).20

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Workspace Description Length | Maximum 10,000 characters 36 |
| Custom Chat Disclaimer | Maximum 128 characters 36 |
| Role Tiers | 3 distinct levels (Owner, Editor, Viewer) 7 |

## **10\. RECENT RELEASES & ROADMAP**

The Langdock platform's development velocity throughout late 2025 and early 2026 underscores a strategic pivot toward complex, multi-model reasoning architectures and streamlined agentic interfaces. The release schedule highlights a commitment to reducing the friction of multimodal data generation while enforcing necessary, albeit disruptive, infrastructure standardizations.  
In May 2026, the platform formally integrated two frontier models: Anthropic's Claude Opus 4.8 and Google's Gemini 3.5 Flash.31 These integrations were not merely silent backend additions; they were auto-enabled globally across all workspaces, instantly upgrading long-context handling, multimodal prompt adherence, and self-correction mechanisms without requiring manual administrative intervention.31 For a marketing team, access to Gemini 3.5 Flash means significantly faster processing of massive consumer research documents, while Opus 4.8 provides unparalleled nuance in high-stakes copywriting tasks.  
Concurrently, the Canvas feature underwent a massive structural overhaul. By decoupling the interface from a singular, isolated "Canvas model" and merging it uniformly into the standard flagship models, Langdock drastically decluttered the UI. This update successfully introduced an embedded terminal for executing Python and JavaScript dynamically within the editor pane, allowing technical marketers to generate interactive data visualizations alongside their copy.5 Crucially, this period also marks a definitive architectural deprecation: the complete sunsetting of the legacy Assistants API. Langdock established a hard migration deadline of April 30, 2026, forcing all enterprise development to shift onto the modernized, Vercel AI SDK-compatible Agents API.20

* **Claude Opus 4.8 integration:** Globally shipped on May 20, 2026, introducing advanced self-correction capabilities and pushback mechanics specifically optimized for complex, long-running agentic tasks ([https://langdock.com/changelog](https://langdock.com/changelog)).31  
* **Gemini 3.5 Flash integration:** Globally shipped on May 13, 2026, delivering unparalleled multimodal processing speed alongside native support for advanced deep reasoning toggles directly within the model selector ([https://langdock.com/changelog](https://langdock.com/changelog)).31  
* **Canvas interface overhaul:** Shipped in early 2026, this update eliminated the separate "Canvas model," integrated an active coding terminal for dynamic execution, and introduced rich document exports (PDF, Word, Markdown) directly from the collaborative pane ([https://langdock.com/changelog?33accfc8\_page=3](https://langdock.com/changelog?33accfc8_page=3)).5  
* **Assistants API Deprecation:** The legacy programmatic endpoint has been formally scheduled for total network shutdown and end-of-life on April 30, 2026, forcing a mandatory migration to the new Agents API ([https://docs.langdock.com/api-endpoints/assistant/assistant](https://docs.langdock.com/api-endpoints/assistant/assistant)).20  
* **Agents API deployment:** Shipped as the modernized replacement endpoint, establishing native ecosystem compatibility with the widely adopted Vercel AI SDK standards (using the UIMessage format) for seamless front-end integration ([https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent)).20

### **Limits & numbers**

| Feature / Metric | Hard Limit / Specification |
| :---- | :---- |
| Gemini 3.5 Flash Release Date | May 13, 2026 31 |
| Claude Opus 4.8 Release Date | May 20, 2026 31 |
| Assistants API Deprecation Deadline | April 30, 2026 20 |

### **Appendix: Verified vs. Unverified Claims**

To ensure the rigorous accuracy required for technical publication and executive advisory, the following data points generated during this analysis have been explicitly flagged regarding their verification status against primary source documentation.  
**Verified Claims (Fully Supported by Documentation):**

* *Workflows:* Confirmed that Workflows impose a strict 2,000 maximum step limit per execution, and budget controls default to 500 EUR per workspace and 25 USD per individual workflow.19  
* *RAG/Knowledge:* Confirmed that chunking operates at precisely 2,000 characters 22, k-value retrieval operates at 50 22, and the embedding architecture relies on the 1536-dimensional OpenAI text-embedding-ada-002 model.20 Spreadsheets (CSV/XLSX) are definitively banned from semantic RAG folders but supported in the Data Analyst tool.7  
* *API Limits:* Confirmed that standard rate limits are capped at 500 RPM and 60,000 TPM per workspace 20, and non-streaming requests timeout forcefully at 100 seconds (HTTP 524).20  
* *Deprecation:* Confirmed the total deprecation of the Assistants API is scheduled for April 30, 2026\.20  
* *MCP Ecosystem:* Confirmed the 57 specific, officially hosted remote MCP servers available in the directory, including Amplitude, Apify, Asana, Astro, Atlassian, Attio, Box, Braintrust, Browser-use, Buildkite, Canva, ClickUp, Close, Coda, Cloudflare, Cloudinary, Context, DeepWiki, Fireflies, GitHub Copilot, Google Maps, Honeycomb, HubSpot, Hugging Face, InstantDB, Intercom, Lazyweb, Linear, Microsoft Learn, Mobbin, Monday, Neon, Netlify, Notion, PagerDuty, PayPal, Pipedream, Plaid, PostHog, Postman, Prisma, Ramp, Render, Replicate, Sanity, Semgrep, Sentry, Square, Stack Overflow, Stripe, Stytch, Supabase, Superglue, Vercel, Webflow, Wix, and Zapier.23

**Unverified Claims (Pending Additional Validation):**

* *Marketing-Specific Native Integrations:* While HubSpot and Salesforce are heavily verified 23, specific marketing suite integrations such as **LinkedIn, Meta Ads, Looker, Salesforce Marketing Cloud, and Mailchimp** were not explicitly documented in the available texts. They likely exist within the 55+ unlisted native apps or via a custom Zapier MCP bridge, but require external verification.  
* *Native Integrations Count Discrepancy:* The prompt references "57 with 754 actions," however, the documentation snippet explicitly states "55+ Pre-built Integrations".21  
* *Model Credit Multipliers:* Specific token conversion economics or Langdock "credit" pricing multiplier tables for models (e.g., exactly how many credits an Opus 4.8 prompt costs vs. a Gemini 3.5 prompt) are not published in the available data.  
* *Usage Export API 1M Row Limit:* The existence of a strict 1 million row cap on CSV exports via the Usage API is heavily assumed for SaaS platforms but is not explicitly defined in the provided documentation text.  
* *Static IP Value:* The platform explicitly provides a "dedicated static IP address" for firewall configuration 29, but the exact string value of 4.185.103.44 was not referenced or verified in the documentation.  
* *Enterprise User Thresholds:* The exact minimum seat count required to qualify for Single-Tenant SaaS or On-Premise deployments is not explicitly stated within the pricing or security literature provided.

#### **Referenzen**

1. Model Guide \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/models](https://docs.langdock.com/resources/models)  
2. Recommended Models \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/models/recommended-models](https://docs.langdock.com/settings/models/recommended-models)  
3. Deep Research \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/deep-research](https://docs.langdock.com/product/chat/deep-research)  
4. Agent Configuration \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/agents/configuration](https://docs.langdock.com/product/agents/configuration)  
5. Product Changelog | Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/changelog?33accfc8\_page=3](https://langdock.com/changelog?33accfc8_page=3)  
6. Memory \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/chat/memory](https://docs.langdock.com/product/chat/memory)  
7. Folders \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)  
8. Folder Sync \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/integrations/folder-sync](https://docs.langdock.com/resources/integrations/folder-sync)  
9. Workspace Settings \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/workspace](https://docs.langdock.com/settings/workspace)  
10. Creating an Agent \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/agent-creation](https://docs.langdock.com/resources/agent-creation)  
11. Getting Started \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/getting-started](https://docs.langdock.com/product/workflows/getting-started)  
12. Creating Custom Integrations \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/integrations/create-integrations](https://docs.langdock.com/resources/integrations/create-integrations)  
13. Model Context Protocol (MCP) \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/integrations/mcp](https://docs.langdock.com/resources/integrations/mcp)  
14. Advanced Agent Features \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/agents/advanced-features](https://docs.langdock.com/product/agents/advanced-features)  
15. Introduction to Agents \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/agents/introduction](https://docs.langdock.com/product/agents/introduction)  
16. How to use the Teams Bot \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/chatbots/teams-bot](https://docs.langdock.com/resources/chatbots/teams-bot)  
17. How to use the Slack Bot \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/chatbots/slack](https://docs.langdock.com/resources/chatbots/slack)  
18. Introduction to Workflows \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/introduction](https://docs.langdock.com/product/workflows/introduction)  
19. Manage Workflows \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/workflow-settings](https://docs.langdock.com/administration/workflow-settings)  
20. API Introduction \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/api-introduction](https://docs.langdock.com/api-endpoints/api-introduction)  
21. Feature Overview \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/feature-overview](https://docs.langdock.com/resources/feature-overview)  
22. Knowledge Basics \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/knowledge/knowledge-basics](https://docs.langdock.com/resources/knowledge/knowledge-basics)  
23. MCP Server Directory \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/integrations/mcp-directory](https://docs.langdock.com/product/integrations/mcp-directory)  
24. Integration Directory \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/integrations/integration-directory](https://docs.langdock.com/product/integrations/integration-directory)  
25. Integrations API Overview \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/integrations/integrations-overview](https://docs.langdock.com/api-endpoints/integrations/integrations-overview)  
26. OpenAI Chat completion \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/completion/openai](https://docs.langdock.com/api-endpoints/completion/openai)  
27. Agents Completions API \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/agent/agent](https://docs.langdock.com/api-endpoints/agent/agent)  
28. Upload File to Knowledge Folder \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file](https://docs.langdock.com/api-endpoints/knowledge-folder/upload-file)  
29. Static IP Configuration \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/security/static-ip-configuration](https://docs.langdock.com/settings/security/static-ip-configuration)  
30. Overview \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/models/byok](https://docs.langdock.com/settings/models/byok)  
31. Product Changelog | Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/changelog](https://langdock.com/changelog)  
32. Langdock | The Platform for AI Adoption, Zugriff am Mai 31, 2026, [https://langdock.com/](https://langdock.com/)  
33. Getting Started \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/security/scim/scim](https://docs.langdock.com/settings/security/scim/scim)  
34. Getting Started \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/security/saml](https://docs.langdock.com/settings/security/saml)  
35. SCIM Pending Users \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/scim-pending-users](https://docs.langdock.com/settings/scim-pending-users)  
36. Workspace Setup \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/workspace-setup](https://docs.langdock.com/administration/workspace-setup)  
37. IP Restrictions \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/security/ip-restrictions](https://docs.langdock.com/settings/security/ip-restrictions)  
38. Manage Agents \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/agent-management](https://docs.langdock.com/administration/agent-management)  
39. Pricing \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/pricing](https://docs.langdock.com/administration/pricing)