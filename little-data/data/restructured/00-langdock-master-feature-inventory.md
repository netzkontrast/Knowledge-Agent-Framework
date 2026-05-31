# Langdock Plattform-Recherche — Strukturierter Forschungsbericht

> **Stichtag:** 2026-05-31
> **Zielnutzer:** Deutschsprachiger "little-data" Advisor-Agent für Marketing-Direktoren
> **Quellenbasis:** Offizielle Langdock-Docs (docs.langdock.com), Produktseiten (langdock.com), Changelog, plus interner User-Recherchebericht
> **Erstellt durch:** sc-deep-research Subagent-Lauf, kreuzvalidiert mit Drive-Quellen

---

## 1. Plattform-Säulen (Überblick)

Langdock bündelt sechs Produktsäulen unter einem Workspace:

| Säule | Zweck | Quelle |
|---|---|---|
| **Chat** | LLM-Chat-Interface mit Modellwechsel, Bibliothek, Projekten, Skills, Document Editor, Deep Research | https://langdock.com/ |
| **Agents** | Konfigurierbare, geteilte Spezial-Assistenten mit Wissensanhang und Tools | https://docs.langdock.com/product/agents/introduction |
| **Workflows** | Asynchrone Automation per Visual Builder (Trigger → Node-Kette → Output) | https://docs.langdock.com/product/workflows/introduction |
| **Integrations** | 60+ native Konnektoren plus MCP-Server-Support | https://docs.langdock.com/administration/integrations-details |
| **API** | REST-Endpoints für Completion, Embedding, Agent, Knowledge Folder, Usage Export, Audit Logs | https://docs.langdock.com/api-endpoints/api-introduction |
| **Library/Skills** | Zentrale Dateiverwaltung, Versionierung, wiederverwendbare Anweisungssets | https://docs.langdock.com/product/library/introduction · https://docs.langdock.com/product/skills/introduction |

**Geltende Limits Workspace-weit:**
- API-Default: 500 RPM / 60.000 TPM pro Modell (https://docs.langdock.com/api-endpoints/api-introduction)
- Anti-Spam: 250 Messages / 3h pro User (https://docs.langdock.com/settings/fair-usage-policy)
- Session-Window: 5h | Weekly-Window: Mo–Mo Reset (Fair Usage Policy)
- Memory: max. 50 Einträge pro User (https://docs.langdock.com/product/chat/memory)

---

## 2. Agents im Detail

### Pflichtfelder beim Erstellen
- **Icon** (Emoji/Image), **Name**, **Description**, **Instructions**.
- Instructions folgen dem PTCF-Framework: **P**ersona, **T**ask, **C**ontext, **F**ormat. (https://docs.langdock.com/resources/agent-creation)
- Alternativ steht das **CO-STAR-Framework** (Context, Objective, Style, Target Audience, Response) im internen Recherchebericht, propagiert durch den "Agent Configurator" Meta-Agent.
- *Diskrepanz:* Offizielle Docs nennen primär PTCF; CO-STAR taucht in interner Quelle auf und ist mit dem Konfigurator-Tool verknüpft.

### Wissensanhang (Knowledge)
- Drag-and-Drop von Dateien direkt zum Agent oder Verbindung zu Knowledge Folder.
- Bilder/Audio/Tabellen **nicht** in Agent-Knowledge erlaubt — nur Text-Dateien. (https://docs.langdock.com/resources/faq/supported-file-types)
- Agent-Attachments respektieren dieselbe File-Size-Matrix (PDF/DOCX/PPTX 256 MB, MD/TXT/JSON 10 MB, alle Textfiles bis 8 Mio. Zeichen pro Datei).

### Tools/Capabilities
Standardmäßig deaktiviert; Ersteller schaltet einzeln frei:
- Web Search, Data Analysis (Code Interpreter Sandbox), Image Generation, Canvas/Document Editor, Agent Actions (External APIs/Integrationen), Modellauswahl mit Temperatur, **Subagents** (Delegation an eingebettete Agenten, https://docs.langdock.com/product/agents/subagents), **Skills** (https://docs.langdock.com/product/skills/introduction).

### Conversation Starters
- **20 maximal pro Agent**
- **255 Zeichen maximal** pro Starter
- **Nur bei Prompt-Input-Modus** verfügbar — nicht bei Form-basierten Agents.
- Best Practice: spezifisch statt generisch ("Summarize Q3 sales report" statt "Hilf mir"), regelmäßig basierend auf Nutzungsmustern aktualisieren. (https://docs.langdock.com/product/agents/advanced-features)

### Form vs. Prompt Input
- **Prompt-Input:** Freitext-Chat (klassisch), erlaubt Conversation Starters.
- **Form-Input:** Strukturierte Felder erzwingen Kontextqualität für wiederkehrende Aufgaben (z.B. Briefing-Agent). Conversation Starters dort nicht möglich. (https://docs.langdock.com/product/agents/form-fields)

### Deployment-Surfaces
- Native Web-UI (app.langdock.com)
- **Slack-App** mit @mention oder DM (https://docs.langdock.com/settings/chatbots/slack)
- **Microsoft Teams-App** mit Direct Messaging (https://docs.langdock.com/settings/chatbots/teams-bot)
- **Agent API** (https://api.langdock.com/agent/v1/...) für externe Chatbot-Embedding (Usage-Based Pricing, ähnlich OpenAI/Anthropic)
- **MCP-Server** (https://api.langdock.com/mcp) — exponiert Agent-Aufrufe an Claude Desktop, Cursor etc.

### Permissions & Sharing
- Workspace-Admins haben Override-Rechte
- Teilen: Einzelpersonen, Gruppen, ganzer Workspace
- **Admin-Steuerung:** "Verified Agents" mit Checkmark, "Highlighted Agents" prominent in Library, "Disabled Agents" verhindern neue Conversations
- **Labels** (max. 3 pro Agent, Workspace-scoped)
- **Owner Transfer** möglich
- **Duplication** kopiert Instructions, Modell, Capabilities, Folders, Attachments — **nicht** Connections/Labels. (https://docs.langdock.com/product/agents/advanced-features)

### Versionierung
- **Drafts autosave**; explizites Publishing mit Change Summary.
- **Extended Thinking** auf Agent-Nodes und Agents API verfügbar (Changelog Mai 2026).

---

## 3. Knowledge / RAG

### Knowledge Folders (zentrale RAG-Schicht)
- **Max. 1.000 Dateien pro Folder**
- **Max. ~8 Mio. Zeichen pro Datei** (an LLM-Token-Limit gekoppelt)
- **Retrieval-Modus:** Embedding-/Vektorsuche, semantisches Chunking (keine Voll-Volltext-Übergabe).
- (https://docs.langdock.com/resources/integrations/knowledge-folders)

### Direct Attachments
- **Bis zu 20 Dateien** pro Chat/Agent
- **Volldokument** wird in den Kontext gepusht (kein Chunking) — laut Docs "leads to the best results" wenn praktikabel. (https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments)

### File-Preview vs. Chunked Retrieval
- **Direct Attachment = File Preview / Voll-Übergabe** — beste Qualität, aber abhängig vom Kontextfenster des Modells.
- **Folder = Chunked Retrieval** — skaliert auf 1.000 Dateien, zieht nur semantisch relevante Sektionen.
- Faustregel der Docs: "Attach as few documents as possible" direkt; Folders für große Sammlungen / FAQ-Agents.

### Unterstützte Dateiformate (Quelle: https://docs.langdock.com/resources/faq/supported-file-types)

| Kategorie | Formate | Max. Größe | Folder-fähig? |
|---|---|---|---|
| PDF, DOCX, PPTX, DOC, PPT | 256 MB | Ja |
| SharePoint Pages, Outlook Email | 256 MB | Ja |
| Markdown, TXT, JSON | 10 MB | Ja |
| Excel/XLSX, CSV, TSV | 30 MB | **Nein** — nur Chat (Data Analyst) |
| Bilder (JPG, PNG, WebP, GIF, TIFF, BMP, HEIF, HEIC) | 20 MB | **Nein** — nur Chat |
| Audio (MP3, WAV, OGG, MPEG, MP4, M4A) | 200 MB | **Nein** — nur Chat |

- Zusätzliches Hard-Limit: **8 Mio. Zeichen pro Textdatei** (überschreibt Filesize bei sehr text-dichten Dokumenten).
- DOCX/PPTX bekommen seit Mai 2026 **Per-Page-Previews + Page-Citations** im Chat (Changelog).

### Knowledge Folder API
- Endpoints (https://docs.langdock.com/api-endpoints/knowledge-folder):
  - `Share folders` (Rollen User für Search, Editor für Upload)
  - `Upload file`
  - `Retrieve files`
  - `Update attachment`
  - `Delete attachment`
  - `Search` (semantische Folder-Suche)
- Authentifizierung: Bearer Token mit Knowledge Folder Scope.

### Indexierung
- Embeddings werden nach Upload erzeugt ("takes a few moments"); Status sollte vor Nutzung geprüft werden.
- **Gap:** Genauer Chunk-Size, Overlap, Embedding-Modell sind nicht öffentlich dokumentiert. Interne Quelle: 2.000 Zeichen Chunks, 1536-dim Embeddings, k=50 — **unbestätigt extern**.

### Folder Sync
- Verbindet Knowledge Folder mit OneDrive/SharePoint/Google Drive automatisch zur Synchronisation. (https://docs.langdock.com/resources/integrations/folder-sync)
- Interne Quelle: 24h-Zyklus, max. 200 Dateien pro Synced Folder, max. 5 Synced Folders pro Agent.

### Vector Databases
- Externe Vektor-DBs (Pinecone, Qdrant, Milvus) integrierbar als Custom Knowledge Source. (https://docs.langdock.com/resources/integrations/vector-databases)

---

## 4. Workflows

### Komplette Node-Liste (https://docs.langdock.com/llms.txt)

| Node | Funktion |
|---|---|
| **Trigger Nodes** | Manual, Webhook, Scheduled, Integration, Form |
| **Logic** | Code (JS), Condition (If/Else), Loop, Delay, Guardrails |
| **Action** | Action (Integration call), HTTP Request, Notification, Output |
| **AI** | Agent, File Search, Web Search, Image Generation |

### Trigger-Details

**Webhook Trigger** (https://docs.langdock.com/product/workflows/nodes/webhook-trigger)
- Unique HTTPS-Endpoint + Webhook-ID auto-generated
- 3 Auth-Modi: None / Header `X-Webhook-Secret` (empfohlen) / Query `?secret=`
- Async by default — antwortet sofort mit `202 Accepted`
- Optional: "Wait for Response" + auto-eingefügter `Respond to Webhook` Node (Changelog 2026)
- Body via `{{trigger.output.body.field}}`, Query via `{{trigger.output.query.param}}`

**Scheduled Trigger** (https://docs.langdock.com/de/product/workflows/nodes/scheduled-trigger)
- Standard 5-Feld Cron-Syntax (`min hour day month weekday`)
- Visual Builder: Every few minutes / hourly / daily / weekly / monthly
- Timezone-Support für alle Standards, Default = Account-Timezone, UTC empfohlen (DST-Schutz)
- Warnung: nicht häufiger als nötig (Cost!)

**Manual Trigger** — Button-Auslöser, ideal für Testing.

**Integration Trigger** — Real-time Events aus Slack, CRM, Inbox etc. (https://docs.langdock.com/product/workflows/nodes/integration-trigger)

**Form Trigger** — strukturierte Eingabemaske für Workflow-Start (z.B. interne Antragsformulare).

### Conditionals, Branching, Loops
- **Condition Node**: If/Else mit Variable-Vergleichen
- **Loop Node**: Iteration über Arrays/Items mit Hard-Limit (Best Practice: max. 100 Iterationen, https://docs.langdock.com/product/workflows/best-practices)
- **Parallelization**: Unabhängige Nodes laufen simultan

### Modellauswahl & Kostensteuerung
- Pro Agent-Node eigenes Modell wählbar
- **Best Practice**: kleinstes Modell für deterministische Aufgaben, fähigstes nur für komplexes Reasoning
- **Code Node (JavaScript)** für Daten-Transformationen statt LLM — drastische Latenz- und Kostenreduktion
- **Batch-Verarbeitung** statt Loops bei vielen Items
- **Structured Outputs (JSON Schema)** obligatorisch für deterministische Down-Stream-Verarbeitung
- **Cost Limits**: Monatliche und Per-Execution-Limits + Warn-Schwellen bei 50%/75%/90% des Budgets
- (https://docs.langdock.com/product/workflows/cost-management)

### Error Handling
3 Strategien pro Node:
- **Fail Workflow** (Totalabbruch)
- **Continue Workflow** (Ignorieren, weiter)
- **Error Callback** (Dynamic Fallback Path)

### Human-in-the-Loop
- Eingebettete Genehmigungs-Schritte, bevor AI Aktionen ausführt. (https://docs.langdock.com/product/workflows/human-in-the-loop)

### Workflows-Plan
- **Starter**: 2.500 Runs/Monat inklusive, 2.000 Steps default. (https://langdock.com/pricing)
- **Business Add-on**: €539–€1.199/Monat pro Workspace, 40.000–100.000 Runs.
- Workflows müssen vom Admin in Workspace-Settings aktiviert werden; konsumieren AI Credits separat.

### Marketing-Workflow-Beispiele (https://docs.langdock.com/product/workflows/use-cases/marketing)
1. **Multi-Channel Content Distribution** — CMS-Publish-Trigger → Agent generiert LinkedIn/Twitter/Email/Instagram-Versionen → parallele Posts → Calendar-Update. Erspart 2-3h pro Post.
2. **Campaign Lead Nurturing** — Scheduled 10am täglich → CRM zieht Leads → Loop pro Lead → Agent analysiert Engagement → Conditional Routing (educational / re-engagement / sales handoff) → CRM-Update. Erspart 15+ Wochenstunden.

**Gap:** Lead-Scoring und Briefing-Workflows werden in den Marketing-Use-Cases erwähnt, aber **nicht** mit konkreten Builder-Beispielen dokumentiert.

---

## 5. Integrations

### 60+ native Connectors (https://docs.langdock.com/administration/integrations-details)

**OAuth-basiert:** Airtable, Asana, BigQuery, Calendly, Confluence, Excel, GitHub, Gmail, Google Analytics, Google Calendar, Google Docs, Google Drive, Google Meet, Google Sheets, Google Slides, Google Tasks, HubSpot, Jira, Linear, Microsoft Entra, Microsoft Planner, Microsoft Teams, Microsoft Todo, Miro, Notion, OneDrive, Outlook Calendar, Outlook Email, Power BI, Salesforce, ServiceNow, SharePoint, Slack, Wrike, Zendesk.

**API-Key-basiert:** AWS Kendra, Ashby, Azure AI Search, Databricks, DeepL, ElevenLabs, Google Maps, Looker, Luma, Metabase, Milvus, OpenRegister, Personio, Pinecone, Pylon, Qdrant, Snowflake, Statista, Stripe, Tableau, Monday.com.

### Action Patterns
Pro Integration einheitlich: Create / Read (List/Find/Search) / Update / Delete / Analytics. Aktivierung in Chat per `@` (Context Picker), in Agents auto-trigger basierend auf Instructions.

### MCP-Support (https://docs.langdock.com/resources/integrations/mcp)
- Volle MCP-Server-Unterstützung
- Offizielle Server (GitHub, Notion, Stripe) ohne lokales Setup einbindbar
- **Flexible HTTPS-URLs** und **Workspace-shared Connections** (Changelog 2026)
- MCP-File-Input/Output dokumentiert
- **Langdock MCP-Server**: `https://api.langdock.com/mcp` — exponiert eigene Agents nach außen mit drei Tools: `find_agent`, `ask_agent`, `ask_custom_agent`. Auth via Bearer oder `x-api-key`, scope: Agent API.

### Custom Integration Builder
- JavaScript-basiert, geführter Action/Trigger-Builder
- "Bring Your Own OAuth" möglich (https://docs.langdock.com/resources/integrations/bring-your-own-oauth)
- API-Endpoints: Create/Update/Delete für Integrations, Actions, Triggers, Auth

### A2A-Protokoll
- Agent-to-Agent Kommunikation für komplexe Multi-Agent-Szenarien (https://docs.langdock.com/product/integrations/a2a-protocol)

---

## 6. API

### Base URLs
- **Cloud:** `https://api.langdock.com`
- **Dedicated Deployment:** `https://<your-domain>/api/public` (Suffix mandatory)
- (https://docs.langdock.com/api-endpoints/api-introduction)

### Authentifizierung
- Bearer Token: `Authorization: Bearer YOUR_API_KEY`
- Scopes: Completion / Assistant / Agent / Knowledge Folder / Usage / Audit
- **CRITICAL — CORS-Posture:** Langdock blockiert Browser-Origin-Requests bewusst. **BFF-Pattern (Backend-for-Frontend) zwingend erforderlich** — niemals Client-seitig aufrufen.

### Endpoints (vollständig, Quelle: https://docs.langdock.com/llms.txt)

**Completion (OpenAI-kompatibel):**
- `/openai/{region}/v1/chat/completions` — region = `eu` oder `us`
- `/anthropic/...` (Anthropic Messages-Format)
- `/google/...` (Google-Format)
- `/mistral/...` (Codestral)

**Assistant (Legacy, in Migration):**
- `/assistant/v1/chat/completions`, `/assistant/v1/create`, `/get`, `/update`, `/disable`, `/models`
- Migration-Doc zu Agents: `assistant-to-agent-migration`

**Agent:**
- `/agent/v1/create`, `/get`, `/update`, `/disable`, `/publish`, `/models`, `/upload-attachments`
- Chat-Completions im OpenAI-Format

**Knowledge Folder:**
- Share / Upload / Retrieve / Update / Delete / Search (semantic)

**Embeddings:**
- OpenAI Text Embeddings

**Integrations API:**
- CRUD für Integrations, Actions, Triggers, Auth

**Usage Export:**
- `/export/users`, `/export/assistants`, `/export/agents`, `/export/projects`, `/export/model`

**Audit Logs:**
- `/audit-logs/{workspace_id}`

**User Management:**
- Invite via Email, Deactivate User

### OpenAI-Kompatibilität
- Chat Completions Endpoint ist OpenAI-Schema-kompatibel — Drop-in-Replacement durch Base-URL-Tausch.

### Rate Limits
- **Default**: 500 RPM, 60.000 TPM **pro Modell**
- **BYOK-Workspaces**: Custom Thresholds in Settings → Models setzbar
- Höhere Limits per Support anfragbar

### OpenAPI-Spec
- Verfügbar unter `https://docs.langdock.com/openapi.yaml`

---

## 7. Modelle und Kosten

### Modell-Katalog (Stand Mai 2026, https://langdock.com/models)

| Provider | Modell | Input/1M | Output/1M | Region |
|---|---|---|---|---|
| **Google** | Gemini 2.5 Flash | €0,26 | €2,15 | EU |
| Google | Gemini 2.5 Pro | €2,15 | €12,89 | EU |
| Google | Gemini 3.1 Pro Preview | €2,15 | €12,89 | Global |
| Google | Gemini 3.5 Flash | €1,29 | €7,73 | EU |
| Google | Gemini 3 Flash Preview | €0,43 | €2,58 | Global |
| **OpenAI** | GPT-5, 5.1, 5.1 Thinking Fast | €1,07 | €8,59 | EU |
| OpenAI | GPT-5.2 | €1,50 | €12,03 | Global/EU |
| OpenAI | GPT-5.2 Pro | €18,04 | €144,31 | EU |
| OpenAI | GPT-5.4 | €2,36 | €14,17 | EU |
| OpenAI | GPT-5.4 Mini | €0,71 | €4,25 | EU |
| OpenAI | GPT-5.5 | €4,72 | €28,35 | EU |
| OpenAI | GPT-5 Mini | €0,21 | €1,72 | EU |
| OpenAI | GPT-5 Pro | €12,89 | €103,08 | Global |
| OpenAI | o3 / o3 Pro / o4 Mini | varies | varies | EU/Global |
| **Anthropic** | Haiku 4.5 | €0,86 | €4,30 | EU |
| Anthropic | Opus 4.5 / 4.6 / 4.7 / 4.8 | €4,30 | €21,48 | EU |
| Anthropic | Sonnet 4.5 / 4.6 | €2,58 | €12,89 | EU |
| **Meta** | Llama 3.3 70B | €0,61 | €0,61 | EU |
| Meta | Llama 4 Maverick | €0,19 | €0,74 | Global |
| **Mistral** | Mistral Large 3 | €0,43 | €1,29 | EU |
| **DeepSeek** | DeepSeek v3.1 | €0,85 | €3,38 | Global |
| **Open Source** | GPT-OSS (120b) | €0,26 | €2,15 | Global |

### Auto Mode / Prompt AI
- **Auto Model Mode** (Changelog Mai 2026): Routet automatisch basierend auf erster Message zum geeigneten Modell. Usage-Transparenz-Bar zeigt Konsum pro Modell.
- *Vorsicht für Marketing-Beginners:* Auto-Mode kann unbeabsichtigt teure Premium-Modelle (z.B. GPT-5 Pro, Opus 4.8) anwerfen. Empfehlung: in der Beratung explizit kleines Modell für Drafts vorschlagen.

### Cost Governance
- **Workspace-Limits** in Admin-Settings
- **Workflow-Budgets**: monatlich + per Execution, Warn-Schwellen 50/75/90%
- **Fair Usage** (https://docs.langdock.com/settings/fair-usage-policy):
  - Session Window 5h
  - Weekly Window Mo-Mo
  - Automatischer Fallback auf günstigeres Modell (GPT-5.2) bei Limit-Erreichung
  - Grace Period: laufende Generierung wird nicht abgeschnitten
  - "Request higher limits" Button für Admins
- **BYOK** (Bring Your Own Key, https://docs.langdock.com/settings/models/byok): eigene API-Schlüssel von OpenAI/Anthropic/etc., direkte Abrechnung beim Provider, Custom Rate Limits.

### Pricing-Tiers (https://langdock.com/pricing)
- **Trial**: 7 Tage, €5 AI Credits, kostenlos, keine Kreditkarte.
- **Business Standard**: €25/User/Monat — Standard-Usage, alle Features, SSO/SCIM/SAML, bis 1.000 User.
- **Business Max**: €99/User/Monat — 5× mehr Usage.
- **Enterprise**: Custom Pricing, 1.000+ Nutzer, Dedicated Deployment.
- Alle Preise ohne MwSt.

---

## 8. Deployment + Security

### 4 Deployment-Modelle (https://langdock.com/enterprise)

| Modell | Skalierung | Architektur |
|---|---|---|
| **Multi-Tenant SaaS** | Standard | Microsoft Azure, EU-Server, logische Mandantentrennung |
| **Single-Tenant SaaS** | ab 2.000 Sitze | Dediziertes, von Langdock verwaltetes Deployment, physisch isoliert |
| **BYOC (Bring Your Own Cloud)** | ab 5.000 Sitze | Kunden-VPC in Azure/AWS/GCP, Daten verlassen Kundenperimeter nicht |
| **On-Premise** | ab 5.000 Sitze | Kunden-Kubernetes via Helm Charts |

### Compliance & Zertifizierungen
- **ISO 27001** zertifiziert
- **SOC 2 Type II** auditiert
- **DSGVO-konform**
- EU-Hosting via Microsoft Azure

### SSO / Identity (https://docs.langdock.com/settings/security/...)
- **SAML 2.0**: Microsoft Entra (Azure AD), Google, Okta
- **SCIM**: User-Provisioning. Für Entra ID: Tenant-URL mit `?aadOptscim062020` versehen (bekannte Microsoft-Abweichung im SCIM-Standard).
- **IP Restrictions** möglich
- **Session Management** mit Granular-Kontrolle
- **Static IP Configuration** auf Anfrage

### RBAC & Permissions
- **Granular Roles** auf Workspace-, Folder-, Agent-, Workflow-Ebene
- Least-Privilege-Prinzip (Best Practice in Docs)
- Workspace Admin / Editor / Member / Viewer
- Agent Sharing: Individual / Group / Workspace

### Audit Logs
- API-Endpoint `/audit-logs/{workspace_id}`
- Exporte für Compliance möglich
- (https://docs.langdock.com/api-endpoints/audit-logs/intro-to-audit-logs-api)

### Datenresidenz
- EU-Region für SaaS garantiert
- US-Region optional verfügbar (Global Models)
- Kunde-eigene Region bei BYOC/On-Prem

---

## 9. Memory / Personalisierung

(Quelle: https://docs.langdock.com/product/chat/memory)

### Wie Memory funktioniert
- Speichert Infos im Modellkontext für Konversations-übergreifende Kontinuität
- User-bezogen ("available to you in all your chats") — **per-User**, nicht per-Workspace
- **Opt-In**: muss explizit aktiviert werden (Account Settings → Preferences → Capabilities)
- **Max. 50 Memories pro User**

### Scope
- **In Chats: vollumfänglich aktiv**
- **In Agents: deaktiviert** — wichtige Einschränkung! Memory greift nicht für Agent-Konversationen.
- Custom Instructions (User-spezifisch, global) sind separat zu Memory.

### Operations
- **Speichern**: Natürliche Sprache ("Merke dir…")
- **Update / Delete**: dito
- **UI**: Account Settings → Memory-Tab zeigt alle Einträge, bearbeitbar/löschbar
- System speichert keine sensiblen / kurzlebigen Infos by default

### Custom Instructions (komplementär)
- Globale Verhaltensregeln pro User (https://docs.langdock.com/resources/custom-instructions)
- Beispiel: "Beende jede konzeptionelle Antwort mit 4 kritischen Folgefragen" (aus interner User-Quelle)

---

## 10. Marketing-spezifische Affordances

### Vorgefertigte Agent-Templates (Marketing)
8 Marketing-Agents in Library (https://docs.langdock.com/resources/agent-templates):
1. **LinkedIn Posts**
2. **Update Announcements** (Slack/Teams/Website/In-Product)
3. **Content Writing** (Strategie + Multi-Channel-Texte)
4. **Cross Posting** (versionierte Social-Posts mit Brand Guidelines)
5. **SEO Copy**
6. **Internationalizer** (Transkreation, kulturelle Lokalisierung)
7. **Competition Comparison** (Battlecards)
8. **Marketing Insights** (quantitative Survey-Auswertung)

### Public Templates
- **Marketing Content Writer**: human-sounding, on-brand, fordert Audience/Objective/Sources, gibt Variants (https://www.langdock.com/templates/marketing-content-writer-e7e1b6)
- **Workflow Use Case Finder**: personalisierte Vorschläge basierend auf Rolle/Aufgaben (https://www.langdock.com/templates/workflow-use-case-finder-8bd847)

### Marketing-relevante Integrationen
- **HubSpot, Salesforce, Zendesk** (CRM)
- **Google Analytics + GA Companion-Agent** (Traffic, Content Performance, Recommendations)
- **Statista** (API-Key)
- **Hootsuite/Buffer/etc.: nicht nativ** — über HTTP Request Node oder MCP einbindbar
- **LinkedIn / Twitter / Instagram: keine native Connectoren** — Publishing typisch via Buffer/Hootsuite-MCP oder eigene API
- **DeepL** (Übersetzung, API-Key)
- **Canva: keine native Integration** dokumentiert
- **Notion, Confluence** (Content-Quellen)
- **SharePoint, Google Drive, OneDrive** (Brand-Assets, Briefings)

### Marketing-spezifische Workflows
- **Multi-Channel Content Distribution**, **Campaign Lead Nurturing**
- **Lead Scoring, Briefing Generation, Content Variant Testing**: in Use-Case-Liste erwähnt, **aber nicht mit dedizierten Templates dokumentiert** → Gap

### Internationalisierung
- Internationalizer-Agent für kulturelle Transkreation (nicht nur Übersetzung)
- DeepL-Integration für linguistische Konvertierung

---

## 11. Diskrepanzen & Lücken

### Bestätigt durch externe + interne Quelle
- 4 Deployment-Modelle, ISO/SOC/DSGVO, EU-Hosting
- 60+ native Integrationen
- Modellagnostik (OpenAI/Anthropic/Google/Mistral/Meta/DeepSeek)
- Workflows mit Visual Builder
- Fair Usage 5h-Session / Weekly-Window
- Custom Instructions + Memory

### Interne Quelle (User-Drive), extern nicht voll bestätigt
- **CO-STAR-Framework**: in interner Quelle als Standard für Agent Configurator beschrieben; externe Docs zeigen primär **PTCF**. Beide existieren parallel.
- **30 MB Limit für Data Analyst CSV/Excel**: deckt sich mit FAQ-Doc (30 MB tabular).
- **Cmd/Ctrl+K Command Palette, Chat Branching, PWA Install**: ✓ in https://docs.langdock.com/resources/tricks-and-shortcuts dokumentiert.
- **Fallback auf GPT-5.2 bei Limit-Erreichung**: ✓ in Fair Usage Doc bestätigt.
- **Case Studies** (Merck 33k User, GetYourGuide 70%, Hofmann 20k Stunden, Ignite 10-20% Produktivität): ✓ auf https://langdock.com/case-studies.

### Extern, in interner Quelle nicht behandelt
- **Conversation Starters Limits (20 / 255 chars)** — nur in offiziellen Advanced-Features-Docs.
- **Memory ist in Agents deaktiviert** — wichtige Einschränkung, in interner Quelle nicht explizit.
- **MCP-Server-Endpoint** (`api.langdock.com/mcp`) mit `find_agent`/`ask_agent`/`ask_custom_agent`.
- **Auto Model Mode** seit Mai 2026.
- **Document Editor** hat Canvas ersetzt (Mai 2026).
- **Per-Page Citations** für DOCX/PPTX seit Mai 2026.
- **Subagents** mit Delegation.
- **Skills** als wiederverwendbare Anweisungssets (vergleichbar Anthropic Skills).
- **Extended Thinking** auf Agent-Nodes.

### Echte Dokumentationslücken (auch extern nicht gefunden)
- **Knowledge Folder Chunking-Details**: Genauer Chunk-Size, Overlap, Embedding-Modell nicht öffentlich dokumentiert.
- **Rate-Limit-Skalierung pro Tier** (Trial / Business / Business Max / Enterprise): keine harten Zahlen außer 500 RPM / 60k TPM Default.
- **Konkrete Workflow-Templates für Lead Scoring, Briefing, Content Variant Testing**: nur als Idee in Use-Case-Doc erwähnt.
- **Context-Window-Größe pro Modell** in Langdock: muss aus jeweiliger Provider-Doku abgeleitet werden.
- **MCP-Server-Rate-Limits**: nicht spezifiziert.
- **Embedding-Modell für Knowledge Folders**: nicht offen kommuniziert (vermutlich OpenAI text-embedding-3 oder ähnlich, aber unbestätigt).

---

## 12. Anwendungshinweise für den "little-data" Advisor-Agent

### Beginner-relevante Anker
1. **Erster Touchpoint = Chat**: `Cmd/Ctrl+K` Command Palette, `Cmd/Ctrl+Shift+O` neuer Chat, `@`-Context Picker → erkläre als "Einstiegswerkzeuge ohne Risiko".
2. **Erstes Agent ohne Tools** bauen → Conversation Starters mit konkretem Marketing-Use-Case-Beispiel (max 20, max 255 Zeichen).
3. **Knowledge Folder als nächster Schritt** für Brand-Voice-Dokumente, Briefing-Templates, Style Guides (bis 1.000 Dateien).
4. **Workflows erst nach Agent-Sicherheit** vorschlagen — sonst Overengineering-Risiko (siehe Rollout-Playbook Anti-Pattern).
5. **Modellempfehlung**: Gemini 2.5 Flash für Drafts (0,26€/M), Sonnet 4.6 für Polishing, Opus nur für Strategie-Synthesen.
6. **Memory** für persönliche Präferenzen aktivieren (Opt-In) — aber Hinweis: nur in Chat, nicht in Agents.

### Häufige Marketing-Director-Fragen mit Antworten
- *"Welches Modell soll ich nutzen?"* → Default Auto Mode für Einsteiger, später bewusste Wahl (Gemini Flash / Sonnet / Opus).
- *"Kann ich HubSpot anbinden?"* → Ja, OAuth, native Integration. Salesforce ebenfalls.
- *"Was ist mit DSGVO?"* → EU-Hosting, ISO 27001 + SOC 2 Type II + DSGVO-konform.
- *"Wie viele Dateien kann mein Brand-Guidelines-Folder enthalten?"* → 1.000 Dateien, je bis 256 MB / 8 Mio. Zeichen.
- *"Kann ich Excel-Sheets ins Wissen packen?"* → Nein, nicht in Folder. Direct Attach in Chat, dann Data Analyst.
- *"Memory auch für meinen Marketing-Agent?"* → Nein, Memory deaktiviert in Agents. Stattdessen Form-Input oder Custom Instructions.

### Cost-Warnsignale (für Direktor-Briefing)
- Auto Mode kann Opus/GPT-5 Pro feuern → Workspace-Cap empfehlen
- Workflow ohne Loop-Limit = unkontrollierte Kosten
- LLM für triviale Transformationen = teurer Anti-Pattern, Code Node nutzen

---

## Quellen-Tabelle

| URL | Titel | Glaubwürdigkeit |
|---|---|---|
| https://langdock.com/ | Langdock Hauptseite | A |
| https://langdock.com/enterprise | Enterprise-Seite | A |
| https://langdock.com/pricing | Pricing | A |
| https://langdock.com/models | Modell-Katalog | A |
| https://langdock.com/changelog | Changelog | A |
| https://langdock.com/products/api | API-Produktseite | A |
| https://langdock.com/products/agents | Agents Produktseite | A |
| https://langdock.com/products/workflows | Workflows Produktseite | A |
| https://langdock.com/products/integrations | Integrationen Produktseite | A |
| https://langdock.com/case-studies | Case Studies | A |
| https://docs.langdock.com/api-endpoints/api-introduction | API Intro | A+ |
| https://docs.langdock.com/llms.txt | Doc-Index | A+ |
| https://docs.langdock.com/product/agents/introduction | Agents Intro | A+ |
| https://docs.langdock.com/product/agents/advanced-features | Advanced Features | A+ |
| https://docs.langdock.com/resources/agent-creation | Agent Creation | A+ |
| https://docs.langdock.com/product/agents/form-fields | Form Fields | A+ |
| https://docs.langdock.com/product/agents/subagents | Subagents | A+ |
| https://docs.langdock.com/product/chat/memory | Memory | A+ |
| https://docs.langdock.com/resources/integrations/knowledge-folders | Knowledge Folders | A+ |
| https://docs.langdock.com/resources/faq/supported-file-types | File Types | A+ |
| https://docs.langdock.com/resources/faq/knowledge-folders-and-direct-attachments | Folders vs Attachments | A+ |
| https://docs.langdock.com/product/workflows/introduction | Workflows Intro | A+ |
| https://docs.langdock.com/product/workflows/nodes/webhook-trigger | Webhook Trigger | A+ |
| https://docs.langdock.com/product/workflows/nodes/scheduled-trigger | Scheduled Trigger | A+ |
| https://docs.langdock.com/product/workflows/best-practices | Best Practices | A+ |
| https://docs.langdock.com/product/workflows/use-cases/marketing | Marketing Workflows | A+ |
| https://docs.langdock.com/administration/integrations-details | Integration Details | A+ |
| https://docs.langdock.com/resources/integrations/langdock-agent-mcp-server | MCP Server | A+ |
| https://docs.langdock.com/resources/integrations/mcp | MCP Overview | A+ |
| https://docs.langdock.com/resources/agent-templates | Agent Templates | A+ |
| https://docs.langdock.com/settings/fair-usage-policy | Fair Usage | A+ |
| https://docs.langdock.com/resources/tricks-and-shortcuts | Tricks & Shortcuts | A+ |
| https://docs.langdock.com/openapi.yaml | OpenAPI Spec | A+ |

**Glaubwürdigkeits-Skala:** A+ = offizielle Doku, A = offizielle Marketing-Seite, B = Third-Party-Research / interne Sekundärquelle.

---

## Offene Fragen / Empfohlene Follow-ups

1. **Konkretes Embedding-Modell** der Knowledge Folders — Anfrage bei support@langdock.com.
2. **Trial vs Business Rate Limits** — keine harten Tier-Zahlen extern dokumentiert.
3. **MCP-Server Rate Limits** — nicht spezifiziert; vermutlich identisch zu Agent API (500 RPM / 60k TPM).
4. **Lead-Scoring-Workflow-Template** — gibt es im Sales-Use-Case ggf. ein Pendant?
5. **Sub-Agents Limits**: Wie viele Subagents pro Agent? Nicht extern dokumentiert.
6. **Memory + Custom Instructions Wechselwirkung in Agents**: explizite Aussage erforderlich.
