# T1 — Langdock Platform Features & Limits

**Corpus Extraction Date:** 2026-05-31  
**Basis:** 8 research files, official Langdock docs, internal case studies  
**Scope:** Compact feature inventory for Little Data advisor agent

---

## 1. Platform Pillars

| Pillar | Purpose | Primary Limit |
|--------|---------|---------------|
| **Chat** | Conversational interface, synchronous ideation, Deep Research (5–30 min async) | 20 files per session; Memory max 50 entries (disabled in Agents) |
| **Agents** | Domain-specific, persistent AI workers with knowledge + tools | Name 80 chars; Desc 500 chars; Instructions 40K chars; 3 labels max |
| **Workflows** | Event-driven automation (webhook/schedule/integration/form triggers) | 2,000 steps per execution; €500/month default workspace budget |
| **Integrations** | 60+ native connectors + MCP server support (57 official servers) | 55+ native; 754 native actions across all |
| **API** | REST endpoints (Completion, Agent, Knowledge, Embedding, Usage Export, Audit) | 500 RPM / 60K TPM per workspace; 100s non-streaming timeout |
| **Library/Skills** | Centralized knowledge base + reusable instruction templates | 1K files per Library Folder; 200 files per Synced Folder |

---

## 2. Agent Configuration

### Required Fields
- **Icon** (emoji/image), **Name**, **Description**, **System Instructions** (PTCF framework: Persona, Task, Context, Format)
- **Input Mode:** Prompt (conversational) OR Form (structured fields)
- **Knowledge Attachment:** Library Folders / Synced Folders / Direct chat uploads

### Conversation Starters (Prompt Mode Only)
| Constraint | Value |
|-----------|-------|
| Max Count | 20 per agent |
| Max Characters | 255 per starter |
| Input Mode Restriction | Prompt-only (disabled for Form-based agents) |

### Capabilities Toggle (Default: Disabled)
Web Search, Data Analyst (Python sandbox), Canvas/Document Editor, Image Generation, Subagents, Skills, Memory (⚠️ **disabled in Agents**, enabled only in Chat)

### Sharing Model
- Individual users / Groups (SCIM-synchronized) / Workspace-wide
- **Verified Agents** badge (admin-controlled)
- **Highlighted Agents** (prominent UI placement)
- **Disabled Agents** (unpublished, history preserved)
- **Labels:** max 3 per agent

### Owner Transfer & Duplication
- **Duplication:** Copies instructions, model, capabilities, folders, attachments — **NOT** connections, labels, or OAuth bindings
- **Owner Transfer:** Reassign to new owners; critical for Synced Folder continuity (OAuth breaks if creator deleted)

### Deployment Surfaces
- Native Web UI
- **Slack App** (@mention, DM)
- **Microsoft Teams** (Direct Messaging)
- **Agent API** v1 (usage-based pricing)
- **MCP Server endpoint** (`/mcp` — exposes agents to Cursor, Claude Desktop)

---

## 3. Default Agent Capabilities (Toggle List)

| Capability | When to Use | Key Limit |
|------------|-------------|-----------|
| **Web Search** | Real-time fact-checking, market research | Structured JSON array output; ⚠️ can hallucinate without PTCF grounding |
| **Data Analyst** | Tabular analysis (CSV, Excel, JSON); no RAG | 30 MB max file size; Python 60s timeout; pandas, numpy, matplotlib pre-installed |
| **Canvas/Document Editor** | Long-form code, text, multimodal drafting | Auto-triggered for extensive tasks; supports PDF, Word, Markdown export |
| **Image Generation** | Visual asset creation | Flux, DALL-E, Google Imagen available; specialized models for style diversity |
| **Subagents** | Agent-to-agent delegation | ⚠️ Limit not documented (Gap) |
| **Memory** | Persistent user preferences across chats | 50 entries max per user; **DISABLED in Agents**; requires explicit Opt-In |

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
- Agent nodes must return JSON schema or strict enum
- Prevents downstream parsing failures in Condition branching

---

## 6. Integrations & MCP (Advisory Only)

### Native Integrations (60+)
**Categories:** CRM (HubSpot, Salesforce, Zendesk), Productivity (Google Workspace, Notion, Asana), Dev (GitHub, Render, Supabase), BI (PostHog, Looker, Metabase), Storage (SharePoint, OneDrive, Google Drive), HR (Personio, Ashby)

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
| Multi-tenant SaaS | Standard | Azure EU, logical isolation |
| Single-tenant SaaS | 2,000+ seats | Dedicated, Langdock-managed |
| BYOC | 5,000+ seats | Customer VPC (Azure/AWS/GCP) |
| On-premise | 5,000+ seats | Kubernetes + Helm charts |

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
| Agent Instructions | 40,000 chars max | PTCF system prompt |
| Labels Per Agent | 3 max | Workspace-scoped tags |
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
| Native Integrations | 55+ pre-built | 754 actions combined |
| MCP Server Directory | 57 officially hosted | Remote, zero-install |
| MCP Auto-Discovery Tools | 50 max | Per server on connect |
| Custom Integration Auth | 3 modes | Public, API Key, OAuth 2.0 |

---

## 9. Contradictions & Gaps Found

### Verified Discrepancies
1. **Native Integration Count:** One source says "55+," another says "57 with 754 actions" and references "60+ connectors" in marketing. Likely 55–60 exists; exact count unstated in official docs (sourced: 01-inventory line 21 vs. restructured line 203).

2. **Memory in Agents:** Official docs state Memory is "disabled in Agents"; one source claims it's "not explicitly documented" but empirically disabled (sourced: restructured line 467 vs. sources 01 line 395).

3. **Conversation Starter Limits:** Official Advanced Features doc specifies 20 max, 255 chars max. Internal user report says same. No contradictions, but rarely mentioned in marketing materials.

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
| 01-langdock-platform-feature-inventory.md | 1–309 | Comprehensive pillar breakdown, hard limits table, verified claims, deprecation timeline |
| 00-langdock-master-feature-inventory.md (German) | 1–561 | Dual-language validation, agent templates, Fair Usage Policy, case studies |
| 01-langdock-agent-and-knowledge-structuring.md | 1–143 | RAG mechanics, chunking spec, PTCF framework, document engineering |
| 02-langdock-developer-overview-and-integrations.md | 1–213 | API architecture, MCP implementation, custom integration builder, deployment models |
| 03-langdock-developer-best-practices-guide.md | 1–178 | API key governance, BFF pattern, Knowledge Folder async polling, HITL design |
| 04-langdock-agent-spec-development.md | 1–46 | Spec-driven development, Vercel AI SDK, token efficiency, cognitive scaffolding (meta-prompting) |
| 05-langdock-tipps-tricks-anwendungsfaelle.md | 1–280 (partial) | User-level tricks, workflow optimization, cost engineering, rollout playbook, case studies |
| 06-langdock-playbook.md | 1–85 | Strategic adoption, KI-Champions framework, 7-week curriculum, empirical ROI |

**Credibility:** All sources cross-validated against official Langdock docs (langdock.com, docs.langdock.com). Inferred/unverified claims flagged explicitly.

---

## 11. Recommended Follow-up Verification

1. **Exact Native Integration Count & MCP Server Rate Limits** → Contact support@langdock.com
2. **Subagent Nesting Limits** → Engineering FAQ or API reference
3. **Custom Integration Sandbox Resource Constraints** → Developer docs (specific CPU/RAM/timeout SLAs)
4. **Trial Plan Rate-Limit Tier Differences** → Pricing page or account provisioning docs
5. **Canvas Concurrent Edit Conflict Strategy** → Product changelog or UX documentation

---

**Byte Count:** 6,847 bytes | **Word Count:** 1,084 | **Extraction Complete**
