# T1 — Langdock Platform Features & Limits

**Corpus Extraction Date:** 2026-05-31 (enriched & re-validated 2026-05-31 against full source set)  
**Basis:** Langdock research corpus (sources 01–08), restructured master inventory, official docs (docs.langdock.com, langdock.com), internal case studies  
**Scope:** Compact feature inventory for Little Data advisor agent  
**Primary newest source:** `08-langdock-platform-feature-inventory.md` (10-pillar inventory + Verified/Unverified appendix)

**Verification legend:** *Confirmed* = numeric specs cross-checked ≥2 sources; *Consistent* = concept described identically across sources; `[INFERRED]` = defensible worst-case, not officially documented; `[UNVERIFIED]` = not documented, needs external verification.

---

## 1. Platform Pillars

| Pillar | Purpose | Primary Limit |
|--------|---------|---------------|
| **Chat** | Conversational interface, synchronous ideation, Deep Research (5–30 min async), Document Editor/Canvas, Prompt Library, Skills, Memory | 20 files per session; Memory max 50 entries (disabled in Agents); Deep Research 15/user/30 days (Standard) — `08:24-27` |
| **Agents** | Domain-specific, persistent AI workers with knowledge + tools | Name 80 chars; Desc 500 chars; Instructions 40K chars (UI); inline API agent 16,384 chars; 3 labels max — `08:50-53`, `02:31`, `03:43` |
| **Workflows** | Event-driven automation (webhook/schedule/integration/form/manual triggers) | 2,000 steps per execution; agent-node Max Steps default 25; €500/month default workspace budget — `08:67,77`, `02:137` |
| **Integrations** | Native connectors + MCP client/server support | 55+ native (Feature Overview) **vs** 57 integrations / 754 actions (Products page) — see §9 reconciliation; 57 official MCP servers — `08:128-129`, `02:44` |
| **API** | REST endpoints (Completion, Agent, Knowledge Folder, Embedding, Integrations, Usage Export, Audit Logs, User Management/SCIM) | 500 RPM / 60K TPM **per workspace, per model**; 100s non-streaming timeout (HTTP 524) — `08:159-162`, `00:279` |
| **Models** | Model-agnostic routing: OpenAI, Anthropic, Google, Mistral, Meta, DeepSeek + Auto Mode + BYOK | Up to ~1M-token context (Claude Opus 1M); Auto Mode toggles GPT-5.2 ↔ Sonnet 4.6 — `08:181-183` |
| **Library/Skills** | Centralized file mgmt + versioning + reusable instruction sets (Skills, SKILL.md) | 1K files per Library Folder; 200 files per Synced Folder — `08:100-102` |

---

## 2. Agent Configuration

### Required Fields
- **Icon** (emoji/image), **Name**, **Description**, **System Instructions** (PTCF framework: Persona, Task, Context, Format) — `08:31,35`
- **Prompt framework:** PTCF is the primary documented framework (Consistent across `01`, `04`, `08`). **CO-STAR** (Context, Objective, Style, Target Audience, Response) appears in the internal source tied to the "Agent Configurator" meta-agent — both coexist; PTCF is authoritative for official docs (`00:36-37`)
- **Input Mode:** Prompt (conversational, allows Conversation Starters) OR Form (structured fields, Starters disabled) — `08:36`, `00:54-56`
- **Knowledge Attachment:** Library Folders / Synced Folders / Direct chat uploads (text files only — images/audio/tabular not allowed in Agent knowledge) — `00:41`
- **Versioning:** Drafts autosave; explicit publishing with change summary; **Extended Thinking** available on Agent nodes and Agents API (Changelog May 2026) — `00:74-75`

### Conversation Starters (Prompt Mode Only)
| Constraint | Value |
|-----------|-------|
| Max Count | 20 per agent |
| Max Characters | 255 per starter |
| Input Mode Restriction | Prompt-only (disabled for Form-based agents) |

### Capabilities Toggle (Default: Disabled)
Web Search, Data Analyst (Python sandbox), Canvas/Document Editor, Image Generation, Subagents, Skills, Agent Actions (integrations/MCP/custom JS), Memory (⚠️ **disabled in Agents**, enabled only in Chat) — `08:39`, `00:46`
- **Subagents:** delegation to embedded agents — now documented (`https://docs.langdock.com/product/agents/subagents`, `00:46,472`). Max nesting/count still undocumented (§9).
- **A2A protocol:** Agent-to-Agent communication for multi-agent scenarios — `00:225` (`docs.langdock.com/product/integrations/a2a-protocol`)

### Sharing Model
- Individual users / Groups (SCIM-synchronized) / Workspace-wide — `08:41`
- **Verified Agents** badge (admin-controlled) — `08:42,217`
- **Highlighted Agents** (prominent UI placement; use sparingly) — `01:132`, `00:68`
- **Disabled Agents** (unpublished, prevents new conversations, history preserved) vs **Delete** (permanent, irreversible, breaks dependent workflows/APIs) — `08:218`
- **Labels:** max 3 per agent (workspace-scoped) — `08:42`
- **Permission roles:** 3-tier — Owner, Editor, Viewer (SCIM-synced) — `08:216`

### Owner Transfer & Duplication
- **Duplication:** Copies instructions, model, capabilities, folders, attachments — **NOT** connections, labels, or OAuth bindings
- **Owner Transfer:** Reassign to new owners; critical for Synced Folder continuity (OAuth breaks if creator deleted)

### Deployment Surfaces
- Native Web UI (app.langdock.com) — `08:43`
- **Slack App** (@mention, DM) — `08:43`, `00:60`
- **Microsoft Teams** (Direct Messaging) — `08:43`, `00:61`
- **Agent API** v1 (`/agent/v1/chat/completions`, usage-based pricing; no per-user license required) — `01:4`, `00:62`
- **MCP Server endpoint** (`api.langdock.com/mcp` — exposes agents to Cursor, Claude Desktop via 3 tools: `find_agent`, `ask_agent`, `ask_custom_agent`; auth Bearer or `x-api-key`, AGENT_API scope) — `00:217`, `03:60`

---

## 3. Default Agent Capabilities (Toggle List)

| Capability | When to Use | Key Limit |
|------------|-------------|-----------|
| **Web Search** | Real-time fact-checking, market research | Structured JSON array output (title, url, snippet, type=`website-preview`, query, error); ⚠️ can hallucinate without PTCF grounding — `01:124` |
| **Data Analyst** | Tabular analysis (CSV, Excel, JSON); no RAG | 30 MB max file; Python 60s timeout; **no internet access**; pandas/numpy/matplotlib/openpyxl/python-docx/reportlab pre-installed; stateful Jupyter; files saved to `/mnt/data/` surface as downloads; **files wiped after 15 min inactivity** — `01:67-70`, `02:146` |
| **Canvas/Document Editor** | Long-form code, text, multimodal drafting | Auto-triggered for extensive tasks; embedded Python/JS terminal (2026 overhaul); export PDF, Word, Markdown; "Canvas model" decoupled — merged into all flagship models — `08:12,233` |
| **Image Generation** | Visual asset creation | Flux (Black Forest Labs), DALL-E, Google Imagen; "fast" variants for ideation — `08:174` |
| **Subagents** | Agent-to-agent delegation (embedded agents) | Documented capability; max nesting depth/count still undocumented (§9) — `00:46,472` |
| **Skills** | Reusable instruction sets (SKILL.md), description-triggered | Workspace Skills can be enforced globally; System Skills = built-in (PPT, Excel, image gen); description must be specific or activates wrongly — `01:94`, `03:139` |
| **Memory** | Persistent user preferences across chats | 50 entries max per user; **DISABLED in Agents**; requires explicit Opt-In; per-user (not per-workspace); filters sensitive data by default — `08:15`, `00:391-395` |

---

## 4. Knowledge/RAG (Advisory Only)

### Storage Topologies

| Topology | Sync Freq | Capacity | Use Case |
|----------|-----------|----------|----------|
| **Direct Chat Attach** | Ephemeral | 20 files / session | Ad-hoc, cross-doc comparison |
| **Library Folder** | Manual (UI/API) | 1,000 files (~8M chars) | Static reference, compliance docs, archives |
| **Synced Folder** | 24h auto-cycle | 200 files max; 5 folders max per agent | Dynamic (HR policies, roadmaps, SharePoint, Google Drive, OneDrive) |

### Chunking & Retrieval
- **Chunk Size:** 2,000 characters (rigid)
- **Embedding Model:** text-embedding-ada-002 (1,536 dimensions)
- **k-Value (Retrieval):** 50 chunks max (≈100K characters injected per query)
- **Max File Size:** 256 MB (or 8M chars, whichever hits first)
- **Supported Formats:** PDF, DOCX, TXT, MD, HTML, PPTX (text-heavy)
- **Excluded Formats:** XLSX, CSV, JPG, PNG, MP3 (tabular & multimedia → Data Analyst or Chat only)

### Folder Sync Gotchas
- ⚠️ OAuth relies on creator's token; sync breaks if creator deactivated
- ⚠️ 200-file limit forces strict taxonomy (no broad parent folders)
- ⚠️ Initial sync can take up to 1 hour

---

## 5. Workflows (Advisory Only)

### Node Types
**Triggers:** Manual, Webhook, Scheduled (cron), Integration event, Form  
**Logic:** Code (JS/Python), Condition, Loop, Delay, Guardrails  
**Action:** Action (integration call), HTTP Request, Notification, Output  
**AI:** Agent, File Search, Web Search, Image Generation  
**HITL:** Human-in-the-Loop approval gates

### Trigger Details
- **Webhook:** Async (returns 202 immediately); auth via `X-Webhook-Secret` header (recommended) or legacy query param
- **Scheduled:** 5-field cron syntax; timezone-aware; DST-safe with UTC recommended
- **Integration:** Real-time events from Slack, CRM, inbox, etc.
- **Form:** Structured input masks for workflow initiation

### Cost Controls
| Level | Default | Cap |
|-------|---------|-----|
| Workspace Monthly | €500 | €100K |
| Per-Workflow Monthly | $25 | $10K |
| Execution Step Limit | — | 2,000 steps |

### Structured Output (Mandatory for Determinism)
- Agent nodes must return JSON schema or strict enum — `08:66`, `02:137`
- Prevents downstream parsing failures in Condition branching
- **Agent-node Max Steps:** caps iterative tool calls, **default 25** (separate from the 2,000-step per-execution cap) — `02:137`
- Variable templating: `{{trigger.output.body.field}}`, `{{trigger.output.query.param}}`, `{{node_name.output.x}}` (Jinja-style) — `02:129`, `03:93`

### Error Handling (3 strategies per node, `00:180-183`)
- **Fail Workflow** (total abort) / **Continue Workflow** (ignore, proceed) / **Error Callback** (dynamic fallback path)
- **Loop limit:** best practice ≤100 iterations to avoid runaway cost — `00:167`
- **Debugging:** real-time execution tracing, error logs, AI "Fix in chat" auto-correction — `08:68`
- **Cost discipline:** use Code nodes for deterministic transforms (never an LLM to format a timestamp); batch items instead of per-item agent calls; place Condition nodes early to exit invalid branches — `02:118`, `03:122`

---

## 6. Integrations & MCP (Advisory Only)

### Native Integrations (55+ / "57 with 754 actions" — see §9 reconciliation)
**Categories** (`02:47-57`, `00:205-207`, `08:116`):
- **CRM/Support:** HubSpot, Salesforce, Zendesk, Pylon, ServiceNow, Attio, Close
- **Productivity/Docs:** Google Workspace (Docs/Sheets/Slides/Drive), Microsoft 365 (SharePoint/OneDrive/Excel/Word/OneNote), Confluence, Notion
- **Project Mgmt:** Jira, Linear, Asana, Monday.com, Wrike, Microsoft Planner, Airtable, Miro
- **Comms/Scheduling:** Slack, Teams, Gmail, Outlook Email/Calendar, Google Meet, Calendly, Luma
- **Vector DBs (semantic search over existing stores):** Pinecone, Qdrant, Milvus, AWS Kendra, Azure AI Search, Vertex AI Vector Search — `02:50,189`, `00:128-129`
- **BI/Analytics:** Google Analytics, Looker, Metabase, Power BI, Tableau, PostHog, Databricks, BigQuery, Snowflake, Statista
- **Dev/Infra:** GitHub, Render, Supabase, DeepL, ElevenLabs, OpenRegister
- **HR:** Personio, Ashby
- Auth split: most OAuth-based; some API-key-based (`00:205-207`). Connections bound to acting user's identity → no privilege escalation via AI proxy — `02:58`

⚠️ **Not native:** LinkedIn/Twitter/Instagram publishing, Buffer/Hootsuite, Canva — via HTTP Request node or MCP only — `00:431-434`

### MCP Support
- **57 officially hosted remote servers** (Stripe, Zapier, Notion, Neon, Netlify, PagerDuty, PostHog, etc.)
- **Transport:** STREAMABLE_HTTP and Server-Sent Events (SSE)
- **Automatic Tool Discovery:** Up to 50 tools/resources per server on connect
- **File Handling:** `.meta({format:'file'})` marker triggers base64 file payload interception
- **Langdock as MCP Server:** Exposes agents via `/mcp` endpoint; auth via Bearer token or `x-api-key` (AGENT_API scope required)

### Custom Integration Builder
- JavaScript sandbox with `ld.request()` utility (no internet by default)
- Input schema: TEXT, MULTI_LINE_TEXT, NUMBER, BOOLEAN, SELECT, FILE, OBJECT, PASSWORD
- Regular vs. Native File Actions (native require strict return schema for OCR/parsing)

---

## 6b. Models & Costs (Advisory Only)

### Model-Agnostic Roster (Mai 2026)
OpenAI (GPT-5 / 5.1 / 5.2 / 5.4 / 5.5, GPT-5 Mini/Pro, o3/o4-mini), Anthropic (Opus 4.5–4.8, Sonnet 4.5/4.6, Haiku 4.5), Google (Gemini 2.5 Flash/Pro, 3.x Flash/Pro), Mistral (Large 3), Meta (Llama 3.3 70B, Llama 4 Maverick), DeepSeek (v3.1), GPT-OSS — `08:171`, `00:290-315`

### Context / Output
- Max context: up to **1,000,000 tokens** (Claude Opus 1M variant) — `08:181`
- Max output: up to ~32,768 tokens (GPT-4.1) — `08:182`

### Auto Mode & BYOK
- **Auto Mode:** routes by first-message complexity between GPT-5.2 ↔ Claude Sonnet 4.6, then fixes the model for the conversation (avoids context-resend cost) — `08:172,183`. ⚠️ Can fire expensive premium models (Opus/GPT-5 Pro) — recommend a workspace cap — `00:319,505`
- **BYOK:** own provider keys (OpenAI/Anthropic/Google/Azure); must configure ≥3 model types (Completion, Embedding, Image Gen); admin sets per-1M-token pricing for accurate chargeback; image rate limits (e.g. 50 images/user/3h) configurable — `08:169,173,184`, `02:166-168`

### Relative Cost Multipliers (baseline GPT-5.2 = 1.0×, `03:108-118`)
| Tier (example) | Multiplier | Use |
|----|----|----|
| Light (GPT-5.4 Mini) | 0.3× | Formatting, high-volume extraction |
| Efficient default (Haiku 4.5) | 0.8× | Standard conversational agents |
| Balanced (GPT-5.2) | 1.0× | Parsing, code, context-heavy analysis |
| Step up (GPT-5.4) | 1.5× | Nuanced reasoning |
| Strong generalist (Sonnet 4.6) | 3.1× | Multi-step reasoning, nuanced text |
| Frontier reasoning (Opus 4.7) | 8.0× | Architectural planning, edge cases |
| Rare top runs (GPT-5.2 Pro) | 24.0× | Max-depth problem solving |

*Exact token-to-credit conversion for BYOK/non-included models is not published — `[UNVERIFIED]` per `08:264`.*

### Pricing Tiers (`00:332-337`)
- **Trial:** 7 days, €5 AI credits, no card
- **Business Standard:** €25/user/mo (SSO/SCIM/SAML, ≤1,000 users)
- **Business Max:** €99/user/mo (5× usage)
- **Enterprise:** custom, 1,000+ users, dedicated deployment
- **Workflows plan:** Starter = 2,500 runs/mo incl., 2,000 steps default; Business add-on €539–€1,199/mo, 40k–100k runs — `00:189-190`

### Fair Usage (`00:25-26,324-329`)
- Session window 5h; weekly Mo–Mo reset; anti-spam 250 messages/3h per user; auto-fallback to GPT-5.2 at limit (running generation not cut off)

---

## 7. API + Deployment (Advisory Only)

### Base URLs
- **Multi-tenant SaaS:** `https://api.langdock.com`
- **Dedicated Deployment:** `https://<your-domain>/api/public` (suffix mandatory)

### Authentication & Scopes
- Bearer token required for all requests
- Scopes: COMPLETION_API, AGENT_API, KNOWLEDGE_FOLDER_API, INTEGRATION_API, USAGE_EXPORT_API, AUDIT_LOGS_API
- ⚠️ **CORS Blocked:** No client-side calls; BFF (Backend-for-Frontend) pattern required

### Core Endpoints
- **Completion (OpenAI-compatible):** `/openai/{region}/v1/chat/completions` (region = eu / us)
- **Agent:** `/agent/v1/chat/completions` (Vercel AI SDK compatible, UIMessage format)
- **Knowledge Folder:** Upload (async), Retrieve, Search (semantic), Share, Update, Delete
- **Embedding:** OpenAI Text Embeddings API
- **Integrations:** CRUD for connections, actions, triggers, auth
- **Usage Export:** `/export/users`, `/export/agents`, `/export/models` (CSV async)
- **Audit Logs:** `/audit-logs/{workspace_id}` (max 50 items per request)

### Rate Limits & Timeouts
| Metric | Limit |
|--------|-------|
| Default Requests/Min (RPM) | 500 per workspace |
| Default Tokens/Min (TPM) | 60,000 per workspace |
| Non-streaming Timeout | 100 seconds (HTTP 524 after) |
| Audit Log Pagination | 50 items max per request |

### OpenAI Compatibility
- Chat Completions endpoint accepts OpenAI schema
- Supports `reasoning_effort` parameter (none, minimal, high, xhigh)
- ⚠️ Unsupported params: `n`, `service_tier`, `parallel_tool_calls`, `stream_options`

### Deployment Models (4 Tiers)
| Model | Scale | Architecture |
|-------|-------|--------------|
| Multi-tenant SaaS | Standard | Azure EU, logical isolation — `08:188,192`, `00:347` |
| Single-tenant SaaS | 2,000+ seats | Dedicated, Langdock-managed, physically isolated — `08:188`, `00:348` |
| BYOC | 5,000+ seats | Customer VPC (Azure/AWS/GCP); data stays in customer perimeter — `00:349` |
| On-premise | 5,000+ seats | Customer Kubernetes + Helm charts; air-gapped — `08:188`, `00:350` |

*Seat thresholds (2,000/5,000) come from `00`; `08:267` notes exact minimum seat counts are **not** officially documented — treat thresholds as `[UNVERIFIED]`.*

### Discovery Endpoints
- **`/llms.txt`** — complete doc index/topology for programmatic ingestion — `03:7`
- **`/openapi.yaml`** — full OpenAPI spec — `00:284`

### API Key Governance
- Never hardcode keys; use `.env` + `python-dotenv`, list in `.gitignore` — `03:13`
- **90-day key rotation** lifecycle advised; scope per environment (dev/staging/prod) and per capability (least privilege) — `03:14`
- Knowledge Folder API: key needs `KNOWLEDGE_FOLDER_API` scope **and** the folder must be explicitly shared with the key (User role = search, Editor = upload) — `03:65`

### Async Upload Status States (Knowledge Folder API)
`UPLOADING → UPLOADED → EXTRACTING → EMBEDDING → SYNCED`; failures: `EXTRACTION_FAILED`, `EMBEDDING_FAILED`, `ACTION_FAILED`/`TIMEOUT` (with `syncMessage` diagnostic). Upload errors: 403 (folder not shared), 413 (>256 MB), 408 (sync timeout) — `03:69-80`, `08:92`

### Export API Limit
Usage Export CSV hard cap = **1,000,000 rows per file**; exceeding the date range returns HTTP 400 — batch into weekly/daily blocks. `Z`-suffixed dates are stripped to avoid double TZ offset — `03:130-131`

---

## 7b. Deployment & Security / Compliance (Advisory Only)

### Hosting & Compliance
- Cloud hosting strictly in the **EU** (Microsoft Azure); US region optional for Global models; customer region for BYOC/On-Prem — `08:193`, `00:376-379`
- Certifications: **ISO 27001, SOC 2 Type II, GDPR/DSGVO** — `08:190,194`, `00:353-356`
- Data residency: prompts/uploads/chat history isolated, **excluded from external LLM training** — `08:198`, `01:135`

### Identity & Access (IAM)
- **SAML 2.0** SSO: Microsoft Entra ID (Azure AD), Google, Okta; domain verification enforced — `08:195`, `00:359`
- **SCIM 2.0** provisioning/deprovisioning; departing user → instant access revocation — `08:196`, `02:155`
- **Entra ID quirk:** append `?aadOptscim062020` to the Tenant URL (Microsoft SCIM deviation) or sync silently fails — `02:156`, `00:360`
- **SCIM pending users:** Entra-provisioned users who haven't logged in show as "pending" and are excluded from seat billing — `08:189,196`
- Network: domain-based access, CIDR/IP restrictions, dedicated **static outbound IP** (`4.185.103.44` per `02:160`, but exact string `[UNVERIFIED]` per `08:266`) for firewall whitelisting (TCP 443) — `08:189`, `02:160-161`
- **RBAC:** 3-tier Owner / Editor / Viewer (SCIM-synced); granular at Workspace/Folder/Agent/Workflow level — `08:216`, `00:366-369`

---

## 7c. Admin & Governance (Advisory Only)

- **Workspace settings:** central dashboard for branding, default models, domain onboarding, system-wide prompt context, mandatory chat disclaimer — `08:215`
  - Workspace Description: max **10,000 chars**; Custom Chat Disclaimer: max **128 chars** — `08:225-226`
- **Groups** (SCIM-synced silos, e.g. "Global Marketing") restrict agents/folders to departments — `08:212`
- **Verified Agents** (admin checkmark) vs **Highlighted** (prominent placement, use sparingly) vs **Disable** (unpublish, preserve history) vs **Delete** (permanent, breaks dependent workflows/APIs) — `08:212-218`, `01:132`
- **Cost reporting / chargeback:** Usage Export CSVs map per-user/per-agent token consumption (BYOK) for departmental billing — `08:219`, `03:128-129`

---

## 7d. Recent Releases & Roadmap (currency)

| Release | Date | Note |
|---------|------|------|
| Claude Opus 4.8 | May 20, 2026 | Self-correction + pushback for long-running agentic tasks; auto-enabled — `08:235,245-246` |
| Gemini 3.5 Flash | May 13, 2026 | Fast multimodal + deep-reasoning toggle; auto-enabled — `08:236,245` |
| Canvas overhaul | early 2026 | "Canvas model" decoupled → merged into flagship models; embedded Python/JS terminal; PDF/Word/MD export — `08:233,237` |
| Agents API (Vercel AI SDK / UIMessage) | shipped | Replaces legacy Assistants API — `08:239`, `02:30` |
| **Assistants API EOL** | **April 30, 2026** | Hard migration deadline to Agents API — `08:238,247,257`, `02:29` |
| Per-page citations (DOCX/PPTX) | May 2026 | Page-level citation tracing in chat — `00:108,471` |
| Auto Model Mode | May 2026 | Routes by first message; usage-transparency bar — `00:318,469` |

---

## 8. Hard Limits Table

| Constraint | Value | Context |
|-----------|-------|---------|
| **Chat** | | |
| Direct File Attachments (Chat) | 20 files per session | Full content injected into context |
| Memory Capacity | 50 entries per user | Opt-in; disabled in Agents |
| Deep Research Quota | 15 per user / 30 days (Standard) | Async 5–30 min execution |
| **Agents** | | |
| Agent Name | 80 chars max | UI display |
| Agent Description | 500 chars max | UI display |
| Agent Instructions (UI) | 40,000 chars max | PTCF system prompt — `08:52` |
| Agent Instructions (inline API) | 16,384 chars max | Ephemeral inline agent object — `02:31`, `03:43` |
| Inline Agent Temperature | 0–1 | API `temperature` param — `02:31` |
| Agent-Node Max Steps | 25 (default) | Caps iterative tool calls — `02:137` |
| Labels Per Agent | 3 max | Workspace-scoped tags — `08:53` |
| Conversation Starters | 20 max per agent | Prompt-mode only |
| Starter Characters | 255 chars max | Each |
| **Knowledge (RAG)** | | |
| Library Folder Files | 1,000 max | Total chars ~8M per file |
| Synced Folder Files | 200 max | Per folder |
| Synced Folders Per Agent | 5 max | Cascading limit |
| Chunk Size | 2,000 characters | Rigid; no overlap specified |
| Retrieval Limit (k-value) | 50 chunks | ~100K chars total injected |
| Embedding Dimensions | 1,536 (ada-002) | Vector space size |
| File Upload Size (API) | 256 MB | Hard cap per file |
| **Workflows** | | |
| Workspace Budget (Default) | €500 / month | Configurable up to €100K |
| Per-Workflow Budget (Default) | $25 / month | Configurable up to $10K |
| Execution Steps | 2,000 max per run | Prevents infinite loops |
| **API** | | |
| Requests Per Minute | 500 per workspace | Default (adjustable per scope) |
| Tokens Per Minute | 60,000 per workspace | Default (adjustable per scope) |
| Audit Log Pagination | 50 items max | Per request |
| Sync Status Check Polling | ~1 hour max | Knowledge Folder async upload |
| Export CSV Rows | 1,000,000 max | Hard limit (batch to avoid) |
| **Data Analyst** | | |
| Tabular File Size | 30 MB max | CSV, Excel, JSON |
| Python Sandbox Timeout | 60 seconds | Hard stop, no grace period |
| **Fair Usage (Session/Weekly)** | | |
| Session Window | 5 hours | Resets after inactivity |
| Weekly Window | Mo–Mo reset | Aggregate consumption cap |
| Anti-Spam Limit | 250 messages / 3h per user | Prevents bot abuse |
| **Integration** | | |
| Native Integrations | 55+ (Feature Overview) / 57 + 754 actions (Products) | See §9 reconciliation — `08:128,263`, `02:44` |
| MCP Server Directory | 57 officially hosted | Remote, zero-install — `08:129,258` |
| MCP Auto-Discovery Tools | 50 max | Per server on connect — `08:131` |
| Custom Integration Auth | 3 modes | Public, API Key, OAuth 2.0 (DCR-capable) — `02:66-68` |
| **Admin** | | |
| Workspace Description | 10,000 chars max | `08:225` |
| Custom Chat Disclaimer | 128 chars max | `08:226` |
| Role Tiers | 3 (Owner/Editor/Viewer) | SCIM-synced — `08:216,227` |

---

## 9. Contradictions & Gaps Found

### Verified Discrepancies
1. **Native Integration Count:** Feature Overview doc says "55+" (`08:115,128`, `08:263`); Products page says "57 integrations / 754 actions" (`02:44`); German master inventory says "60+ connectors" (`00:19,203`). Likely 55–60; exact count unstated in official docs. **Authoritative:** use "55+ native (with ~754 actions)" and flag the 57-vs-60 spread.

2. **MCP server count is firm at 57** (`08:129,258` lists all 57 by name: Amplitude, Apify, Asana, Astro, Atlassian, Attio, Box, Braintrust, Browser-use, Buildkite, Canva, ClickUp, Close, Coda, Cloudflare, Cloudinary, Context, DeepWiki, Fireflies, GitHub Copilot, Google Maps, Honeycomb, HubSpot, Hugging Face, InstantDB, Intercom, Lazyweb, Linear, Microsoft Learn, Mobbin, Monday, Neon, Netlify, Notion, PagerDuty, PayPal, Pipedream, Plaid, PostHog, Postman, Prisma, Ramp, Render, Replicate, Sanity, Semgrep, Sentry, Square, Stack Overflow, Stripe, Stytch, Supabase, Superglue, Vercel, Webflow, Wix, Zapier). MCP servers ≠ native integrations — different mechanisms.

3. **Memory in Agents:** Official docs (`08:15`, `00:394-395`) and the bootstrap research (`research/04:34`) all confirm Memory is **disabled in Agents** (enabled only in Chat). No real contradiction; the master inventory just hadn't called it out (`00:467`).

4. **Conversation Starter Limits:** 20 max, 255 chars max — cross-confirmed (`08`, `01:9`, `00:49-51`). Prompt-mode only.

5. **Embedding model:** `08:87,106,142,175` names `text-embedding-ada-002`; the Knowledge Basics page (per T2 sources) names only "workspace's default embedding model." For the **Embedding API** ada-002 is documented; for **Folder retrieval** the model is undocumented. See T2 §1 for full reconciliation.

6. **Marketing-suite native integrations unverified:** LinkedIn, Meta Ads, Looker (BI yes, but ads?), Salesforce Marketing Cloud, Mailchimp not explicitly documented as native — likely via custom/Zapier MCP bridge (`08:262`). `[UNVERIFIED]`

### [INFERRED] Claims Not Yet Externally Verified
- **Chunking overlap strategy:** Internal source specifies 2,000-char chunks with no stated overlap; industry standard suggests overlaps help. Unconfirmed.
- **MCP Rate Limits:** Assumed equal to Agent API (500 RPM / 60K TPM) but not explicitly documented.
- **Subagent Limits:** Mention of "Subagents" capability exists; max nesting depth or count not specified anywhere.
- **Model Credit Multipliers (BYOK):** Exact token-to-credit conversion for non-included-models not published.
- **Static IP (4.185.103.44):** Specified in one source; verification required.
- **Trial Tier Rate Limits:** Marketing mentions Trial (€5 AI credits), but no separate rate-limit tier stated.

### Documentation Gaps (Real)
1. **Knowledge Folder Indexing Latency:** Stated "takes a few moments" but exact SLA absent.
2. **MCP File Input Size Limits:** No documented max for base64-encoded file payloads transmitted via MCP file actions.
3. **Subagent Cascade Depth:** No max nesting levels for agent-calling-agent scenarios.
4. **Custom Integration JavaScript Sandbox Limits:** Memory, CPU, runtime constraints not explicitly stated.
5. **Canvas Collaborative Features:** Conflict resolution, concurrent edit handling not detailed.
6. **Deep Research Failure Modes:** What triggers a report to fail or timeout; no explicit error recovery documented.

---

## 10. Sources

| File | Lines | Key Contribution |
|------|-------|-----------------|
| **08-langdock-platform-feature-inventory.md** (primary, newest) | 1–309 | 10-pillar inventory; hard-limits tables per pillar; full MCP server list; deployment/security; admin/governance; releases & roadmap; Verified/Unverified appendix |
| restructured/00-langdock-master-feature-inventory.md (German) | 1–561 | Dual-language validation; pricing tiers; model catalog + prices; Fair Usage; workflow plans; case studies; marketing affordances; gaps |
| 01-langdock-agent-and-knowledge-structuring.md | 1–143 | RAG mechanics, chunking spec, PTCF framework, Data Analyst spec, file-format matrix, document engineering |
| 02-langdock-developer-overview-and-integrations.md | 1–213 | API architecture, MCP client/server, custom integration builder (JS sandbox), vector DBs, deployment, SCIM/Entra, static IP, BYOK config |
| 03-langdock-developer-best-practices-guide.md | 1–178 | API key governance, BFF/CORS, Knowledge Folder async polling + status states, HITL design, **model cost multipliers**, Usage Export 1M-row cap, `/llms.txt` |
| 04-langdock-agent-spec-development.md | 1–158 | Spec-driven dev, Vercel AI SDK/UIMessage, inline-agent RAG params, token efficiency, cognitive scaffolding (meta-prompting) |

**Credibility:** All sources cross-validated against official Langdock docs (langdock.com, docs.langdock.com). Inferred/unverified claims flagged explicitly. (Note: earlier draft mis-labeled the primary inventory as `01-langdock-platform-feature-inventory.md`; the actual richest/newest inventory is `08-langdock-platform-feature-inventory.md`.)

---

## 11. Recommended Follow-up Verification

1. **Exact Native Integration Count & MCP Server Rate Limits** → Contact support@langdock.com
2. **Subagent Nesting Limits** → Engineering FAQ or API reference
3. **Custom Integration Sandbox Resource Constraints** → Developer docs (specific CPU/RAM/timeout SLAs)
4. **Trial Plan Rate-Limit Tier Differences** → Pricing page or account provisioning docs
5. **Canvas Concurrent Edit Conflict Strategy** → Product changelog or UX documentation

---

**Currency:** Verified against docs.langdock.com / langdock.com as of 2026-05-31. Primary source `08-langdock-platform-feature-inventory.md` (late-2025/early-2026 inventory). Re-verify hard limits, model catalog, and the Assistants-API EOL (April 30, 2026) before any rollout. **Enrichment Complete.**
