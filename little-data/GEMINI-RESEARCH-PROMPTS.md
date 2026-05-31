# Gemini Deep Research Prompts — Little Data Agent

> Run these in **Google Gemini Deep Research** (gemini.google.com → Deep Research mode), save each report to Google Drive in a folder named **`little-data-research`** so I can ingest them.
>
> All three prompts are written in English (Gemini's strongest research language); the final knowledge files for the agent will be in German. Each prompt asks Gemini to cite primary sources (langdock.com, docs.langdock.com, vendor blogs, analyst reports).
>
> Recommended run order: **Prompt 1** (features) → **Prompt 3** (marketing scenarios) → **Prompt 2** (DACH adoption). Prompt 1 grounds Prompt 3.

---

## Prompt 1 — Complete Langdock Feature Inventory (2025–2026)

**Title to save as:** `little-data-research/01-langdock-feature-inventory.gdoc`

```
I need a comprehensive, current feature inventory of the Langdock enterprise AI
platform (langdock.com) as of late 2025 / early 2026. The output will be used
to build a German-language advisor agent for marketing directors who are
beginners with AI. Be exhaustive — I am explicitly looking for completeness,
not brevity.

For EACH of the following platform pillars, list every feature, configuration
knob, limit, and recently-announced capability. Cite the official Langdock
documentation URL (docs.langdock.com) or the relevant Langdock blog post for
every claim. Flag explicitly anything you cannot verify from primary sources.

1. CHAT
   - Standard chat capabilities, modes (focused/standard, deep research, canvas)
   - File upload limits, supported formats, image and audio handling
   - Document Editor / Canvas
   - Prompt Library, Saved Prompts
   - Skills (creation, activation, workspace vs. personal scope)
   - Memory feature (per user, per workspace, behavior, retention, opt-out)
   - Deep Research mode — full mechanics, model used, limits
   - Web Search inside chat — providers, structured output

2. AGENTS
   - Creation flow (UI), required fields, max instruction length
   - Input modes (prompt vs. form), conversation starters (limits, best practice)
   - Knowledge attachments (Library Folders, Synced Folders, ad-hoc files)
   - Capabilities toggles (web search, data analyst, canvas, image gen, etc.)
   - Tool calling — native actions vs. MCP tools vs. custom actions
   - Sharing model (private, group, workspace, public)
   - Verified Agents, Highlighted Agents, Labels, Pinning
   - Deployment surfaces (web UI, Slack, Teams, embed, API)
   - Owner transfer, duplication semantics

3. WORKFLOWS
   - All node types: triggers (webhook, integration, schedule, manual, form),
     Agent node, Code node (Python AND JavaScript? Confirm), HTTP Request,
     Condition, Loop, Notification, Human-in-the-Loop, others
   - Trigger authentication (header secret, query param legacy)
   - Variable templating syntax ({{trigger.output.body.x}})
   - Cost controls: workspace, workflow, per-execution, hourly rate limits
   - Default workspace budget (current value)
   - Structured Output schemas on Agent node
   - Max Steps parameter
   - Debugging, run history, replay

4. KNOWLEDGE / RAG
   - Library Folders vs. Synced Folders — current limits (files/folder,
     folders/agent, file size, total characters)
   - Chunking strategy and chunk size (confirm 2000 chars)
   - Embedding model and vector dimensions (confirm text-embedding-ada-002,
     1536-dim) — has this changed in 2025/2026?
   - k-value for retrieval (confirm 50)
   - Supported file types with exact size caps for each
   - Spreadsheet / image / audio handling
   - Sync cadence for Synced Folders, sync sources (Google Drive, SharePoint,
     OneDrive, Confluence, Notion, others)
   - Manual refresh, error states, OAuth ownership pitfalls
   - Citation tracing in responses

5. INTEGRATIONS
   - Full current count of native integrations (was 57 with 754 actions — confirm
     current numbers)
   - Categorized list of native integrations (CRM, productivity, dev tools,
     marketing tools — note any marketing-specific ones like HubSpot, Salesforce
     Marketing Cloud, Mailchimp, LinkedIn, Meta Ads, Google Ads, Google Analytics,
     Looker, etc.)
   - Custom integration builder — auth types (OAuth, API key, service account),
     JavaScript sandbox capabilities, ld.request, ld.log, action confirmation
   - Native file actions vs. regular actions
   - MCP support — Langdock as client AND as server, transport types,
     authentication, file handling via .meta({format:'file'})
   - MCP server directory — current entries

6. API
   - Base URLs (api.langdock.com, dedicated <deployment>/api/public)
   - Authentication, scope system (full list of scopes)
   - Completion API (OpenAI-compatible) — supported / unsupported parameters,
     reasoning_effort values
   - Embedding API
   - Agents API (UIMessage / Vercel AI SDK compatibility, agentId vs inline
     agent, attachmentIds caveat)
   - Knowledge Folder API (upload, upload-async, search, sync states)
   - Integrations API (CRUD on integrations, actions, triggers)
   - Usage Export API (endpoints, 1M row limit, CSV format)
   - Audit Logs API
   - User Management API / SCIM
   - Rate limits (default RPM / TPM, how to request higher)
   - MCP endpoint at /mcp
   - Static IP for outbound traffic (was 4.185.103.44 — still current?)
   - HTTP 100s timeout for non-streaming requests

7. MODELS & COSTS
   - Current list of supported models (OpenAI, Anthropic, Mistral, Google,
     others — any new providers like xAI, DeepSeek, Llama?)
   - Model multiplier table (current Langdock "credits" pricing)
   - Auto Mode logic
   - BYOK (Bring Your Own Key) — configuration, supported providers
   - Image generation models (Flux, DALL-E, Imagen, others)
   - Embedding model options

8. DEPLOYMENT & SECURITY
   - Multi-tenant SaaS, single-tenant SaaS, BYOC, on-premise — current minimum
     license thresholds
   - Hosting regions (EU only? Other regions added?)
   - Compliance certifications (ISO 27001, SOC 2 Type II, GDPR, others?)
   - SAML SSO providers, SCIM (Entra ID quirk: ?aadOptscim062020)
   - RBAC, roles, audit logs
   - Data residency commitments, training opt-out (confirm customer data is
     never used for model training)

9. ADMIN & GOVERNANCE
   - Workspace settings, user provisioning
   - Groups (private, public), permission model
   - Verified Agents process
   - Disable vs. delete for agents
   - Cost reporting and chargeback

10. RECENT RELEASES & ROADMAP
    - Everything announced or shipped in 2025 and 2026 — list with date and
      source URL
    - Anything Langdock has publicly committed to ship in the next 6 months
    - Any deprecations (e.g., Assistants API → Agents API migration deadline)

Output format:
- Use H2 for each pillar
- Inside each pillar, use bullet lists with a 1-sentence description per
  feature, followed by source URL in parentheses
- After each pillar, include a "Limits & numbers" table
- End with a "Verified vs. unverified" appendix listing claims I should
  double-check before publishing
- Target length: ~4000-6000 words

Important constraints:
- Prefer primary sources (langdock.com, docs.langdock.com)
- If a claim is only found in third-party blogs or community posts, label it
  "[unverified]"
- Do not invent feature names
- If Langdock has a /llms.txt at docs.langdock.com/llms.txt, fetch and use it
- Specifically check the Langdock Changelog if one exists
```

---

## Prompt 2 — DACH Marketing AI Adoption Patterns

**Title to save as:** `little-data-research/02-dach-marketing-ai-adoption.gdoc`

```
I need a research brief on how marketing organizations in the DACH region
(Germany, Austria, Switzerland) are adopting enterprise AI platforms like
Langdock as of late 2025 / early 2026. The output will guide a German-language
AI advisor agent for marketing directors who are AI beginners.

Cover these areas:

1. ADOPTION STATE
   - Concrete adoption statistics for AI in DACH marketing (surveys: Bitkom,
     BVDW, OMR, MarTech Alliance, McKinsey, BCG, Forrester)
   - Most common AI use cases reported in DACH marketing departments
   - The gap between AI experimentation and AI in production / scaled use

2. REGULATORY ENVIRONMENT
   - GDPR / DSGVO implications for AI use in marketing (Auftragsverarbeitung,
     DSFA / DPIA, AVV)
   - EU AI Act — current status, what marketing leaders need to know now,
     timelines for high-risk classifications, transparency obligations,
     biometric/automated decision-making boundaries relevant to marketing
   - German UWG (Gesetz gegen den unlauteren Wettbewerb) and AI-generated
     content disclosure
   - DACH-specific guidance from data protection authorities (BfDI, Bayerisches
     Landesamt, etc.) on generative AI in marketing

3. ORGANIZATIONAL PATTERNS
   - How DACH companies structure AI governance for marketing (Center of
     Excellence, AI Champions, federated model)
   - Successful rollout patterns (Merck, GetYourGuide, Hofmann Personal,
     Ignite Group — any other Langdock or comparable case studies)
   - Common organizational anti-patterns and failure modes
   - Skills marketers need to develop (prompt engineering basics, evaluation,
     critical reading of AI output)

4. MARTECH STACK INTEGRATION
   - How Langdock or comparable platforms integrate with the typical DACH
     marketing stack (HubSpot, Salesforce Marketing Cloud, Adobe Experience
     Cloud, Eloqua, Marketo, Pardot, Mailchimp, Microsoft Dynamics, native
     DACH tools like Sendinblue/Brevo, Mailjet, CleverReach, Inxmail)
   - Integration with social and ads platforms used in DACH (LinkedIn, Meta,
     Google Ads, TikTok, XING)
   - Integration with analytics (Google Analytics 4, Piwik PRO, etomite,
     Matomo, Adobe Analytics)

5. CONTENT, CONTEXT, AND VOICE
   - What "good prompts" look like in German for marketing tasks (Du/Sie,
     register, length)
   - Common German prompt failure modes (English-tinged output, awkward
     compound words, wrong Anglizismen)
   - DACH-specific brand voice considerations vs. translated English content

6. COMPETITIVE LANDSCAPE
   - How Langdock compares to other enterprise AI platforms popular in DACH:
     Mistral Le Chat Enterprise, Microsoft Copilot M365, Aleph Alpha PhariaAssistant,
     Glean, Writer.com, OpenAI ChatGPT Enterprise / Team, Perplexity Enterprise
   - DACH-specific strengths of Langdock (EU hosting, GDPR posture, customer base)

Output format:
- Executive summary (~300 words)
- One H2 per area above
- Cite every statistic or claim with a source URL and publication date
- Include a "key takeaways for a marketing director" closing section
- Target length: ~3000-4500 words
- Language: English in the report itself; quote any German source material
  verbatim in German

Important:
- Prefer 2024-2026 sources; explicitly note publication date for every cited
  source
- Avoid generic AI hype claims — I want substantive, sourced information
- If you cannot find DACH-specific data for an area, say so explicitly rather
  than substituting US/global data
```

---

## Prompt 3 — 100+ Marketing Scenarios for a Default Langdock Agent (Agent + Knowledge ONLY)

**Scope:** Default Langdock Agent with Knowledge attachments (Folders + ad-hoc) and the standard default capabilities (Web Search, Data Analyst, Canvas/Document Editor, Image Generation). **NOT** Workflows, **NOT** API consumption, **NOT** custom integrations or native action triggers (HubSpot/Salesforce/etc.), **NOT** MCP, **NOT** BFF. Those are postponed for a later phase.

**Title to save as:** `little-data-research/03-marketing-scenarios-langdock-mapping.gdoc`

```
I need a comprehensive catalog of 100+ concrete marketing scenarios where a
DEFAULT Langdock Agent — using only its system instructions, attached
Knowledge (Folders + direct attachments), Conversation Starters, and the
default capability toggles (Web Search, Data Analyst, Canvas/Document Editor,
Image Generation) — delivers measurable value to a marketing director.

EXPLICITLY EXCLUDED from this catalog (these are postponed to a later phase
and must NOT appear as scenarios):
- Langdock Workflows (visual builder, triggers, conditions, code nodes, loops)
- Native action integrations (HubSpot, Salesforce, Slack write-actions, etc.)
  — read-only attachment / file selection via integration is fine if it
  happens inside the Chat / Agent surface
- Langdock API / programmatic consumption
- Custom JavaScript integrations
- MCP servers / MCP setup
- Subagents
- Any scenario that requires admin to configure workflow budgets, BYOK,
  custom integrations, or anything beyond agent-level configuration

Output will feed a German-language advisor agent for marketing directors.

For EACH scenario, structure it like this:

---
### S-XXX [Scenario short title]
**Marketing function:** [Content Marketing / Brand / Performance / SEO / CRM
                        / ABM / PR / Marketing Ops / Analytics / Research /
                        Internal Comms / Event / Localization]
**Trigger / situation:** [One sentence describing when this comes up]
**Goal:** [One sentence on the marketing outcome]
**Langdock feature(s):** [Agents / Workflows / Chat / Skills / Knowledge Folder
                          / Specific integration / Data Analyst / Canvas / etc.]
**How it works (3-5 sentences):** [The mechanic — what the prompt, knowledge,
                                    integration, or workflow does]
**Sample prompt (German, in quotes):** ["Beispielprompt..."]
**Expected outcome / artifact:** [What the marketer gets]
**KPIs / measurement:** [How to know it worked]
**Pitfalls:** [What can go wrong, what to watch for]
**Estimated time saved:** [Hours/week or per-asset]
---

For EACH scenario, the "Langdock feature(s)" field must be drawn ONLY from
this allowed list:
- Agent system instructions (PTCF prompt)
- Knowledge Folder (persistent, up to 1,000 files)
- Direct file attachment in chat (up to 20 files per session)
- Conversation Starters
- Web Search (default capability)
- Data Analyst (default capability, Python sandbox over CSV/XLSX)
- Canvas / Document Editor (default capability)
- Image Generation (default capability)
- Custom Instructions / Memory (chat-level; note Memory is disabled inside
  Agents — use Custom Instructions when persistence is needed)

If a scenario you considered NATURALLY requires a Workflow or a write-action
integration, EITHER (a) rewrite it to use only the allowed list, OR (b) drop
it from the catalog. Do not slip workflow/integration scenarios in.

Cover these marketing functions, at least 8-12 scenarios per function:

A. CONTENT MARKETING (~15 scenarios)
   - Editorial calendar planning, briefing, drafting, repurposing,
     content audits, content gap analysis, evergreen refresh, multimedia
     scripting (podcast, video), newsletter drafting

B. SEO & ORGANIC (~10 scenarios)
   - Keyword research, topic clustering, internal linking suggestions,
     meta description generation, schema markup, content optimization for
     featured snippets, competitive SERP analysis, technical SEO briefs,
     local SEO

C. PERFORMANCE / PAID (~12 scenarios)
   - Ad copy variants for Google Ads / Meta / LinkedIn, audience persona
     hypothesis, landing page variant briefs, A/B test ideation, creative
     fatigue detection from campaign data, post-campaign analysis,
     attribution narrative writing

D. BRAND & CREATIVE (~8 scenarios)
   - Brand voice guidelines from samples, tone-of-voice consistency checks,
     tagline generation, naming workshops, brand audit reports, visual
     brief writing for designers

E. SOCIAL MEDIA (~10 scenarios)
   - Calendar planning, post variants per platform, community management
     reply drafts, trend monitoring summaries, influencer outreach drafts,
     crisis comms drafts, social listening synthesis

F. CRM & LIFECYCLE / EMAIL (~12 scenarios)
   - Segment definition from data, lifecycle journey mapping, email subject
     line testing, transactional email rewrites, win-back campaign drafts,
     reactivation, personalization at scale via Workflows + HubSpot/Salesforce

G. ABM (Account-Based Marketing) (~8 scenarios)
   - Account research dossiers, personalized outreach drafts, stakeholder
     mapping, account-tier content plans, intent signal interpretation,
     1:1 microsite copy

H. PR & COMMUNICATIONS (~8 scenarios)
   - Press release drafting, media list research, talking points, crisis
     response drafts, journalist outreach personalization, thought leadership
     ghostwriting from interview transcripts

I. RESEARCH & INSIGHTS (~10 scenarios)
   - Customer interview synthesis, survey open-text analysis, persona
     refresh, competitive intelligence reports, trend reports, voice of
     customer dashboards, NPS verbatim analysis

J. MARKETING OPERATIONS (~10 scenarios)
   - Campaign brief intake form (Workflows + form trigger), brief routing
     to right team, lead scoring rule writing, MQL/SQL handoff documentation,
     campaign retrospective templates, internal knowledge base for the
     marketing team, onboarding new marketers

K. ANALYTICS & REPORTING (~10 scenarios)
   - Weekly performance summary from GA4/Looker via Data Analyst, anomaly
     explanation, executive dashboard narrative, monthly board prep,
     custom KPI definitions, marketing mix narrative

L. EVENTS & FIELD (~5 scenarios)
   - Event briefing docs, post-event recap, attendee follow-up
     personalization, speaker prep, breakout session topic ideation

M. LOCALIZATION (~5 scenarios)
   - DE↔EN content adaptation (not just translation), tone-of-voice
     localization, market-specific examples and references, A/CH/DE variant
     differences, legal disclaimer adaptation

N. INTERNAL ENABLEMENT (~5 scenarios)
   - Sales enablement decks from product launches, FAQ generation for
     sales teams, training materials for new product features, internal
     comms summaries

Output format:
- One H2 per function (A through N)
- Numbered scenarios with the structured template above
- End with a TOP 20 QUICK WINS section — the highest-impact / easiest-to-start
  scenarios for a marketing director new to Langdock
- Cross-reference Langdock features (Agents, Workflows, Knowledge, Integrations,
  Skills) — include a feature usage matrix at the end (which features each
  function relies on most)
- Sample prompts MUST be in German
- Everything else can be in English
- Target length: don't artificially compress — completeness over brevity.
  Aim for 6000-10000 words

Important constraints:
- Each scenario must be SPECIFIC, not generic. "AI for content" is not a
  scenario. "Generating 5 LinkedIn ad copy variants per persona, targeted
  at B2B SaaS DACH CIOs, based on attached buyer persona doc and customer
  case study, via an Agent with conversation starters" is a scenario.
- Sample prompts must demonstrate the PTCF structure (Persona, Task, Context,
  Format)
- No Workflow node graphs — scenarios are single-Agent interactions
  (possibly multi-turn) the marketer drives from the chat surface.
- Pitfalls must be concrete (not "AI can hallucinate") — e.g., "Subject
  line generator will overuse exclamation marks unless prompt explicitly
  bans them"
- Favor scenarios that exploit Langdock's distinct strengths AT THE AGENT
  LEVEL: EU hosting + GDPR posture + persistent Knowledge Folders (brand
  voice, style guides, persona docs, product info) + default capabilities,
  rather than generic LLM use cases
- Mark each scenario with a "Future expansion (postponed)" line if it would
  obviously benefit from Workflows or native action integrations in a later
  phase — this lets us prioritize what to unlock next
```

---

---

## Prompt 4 — Authoring Knowledge Files for Langdock RAG (Methodology)

**Title to save as:** `little-data-research/04-knowledge-file-authoring-methodology.gdoc`

```
I need a rigorous, source-cited methodology for authoring Knowledge files
that will be uploaded to a Langdock Knowledge Folder and consumed by a
single advisor Agent. The goal is to write a small number (target: 10
files) of markdown documents that together cover EVERY Langdock feature
and topic, AND that retrieve cleanly against a corpus of ~100 specific
marketing scenarios via Langdock's RAG pipeline.

This output will be used to build a project-internal "writing knowledge
files" skill (analogous to a style guide for documentation engineers
optimizing for vector retrieval).

Cover the following:

1. HARD CONSTRAINTS (from Langdock + general RAG)
   - Langdock Knowledge Folder hard limits (files per folder, max chars per
     file, supported MIME types, sync cadence)
   - Per-file size caps for each format (MD/TXT/JSON vs PDF/DOCX/PPTX)
   - Embedding model and dimensions if known (publicly documented or
     reasonably inferred)
   - Chunking strategy Langdock uses (chunk size in chars/tokens, overlap,
     boundary detection — cite the docs that confirm this)
   - Retrieval mechanics: k value, ranking model, anything about re-ranking
   - Direct-attachment "full document push" vs Folder "chunked retrieval"
     — when each is preferred
   - Cite primary sources (docs.langdock.com, Langdock blog) for every
     constraint

2. DOCUMENT ENGINEERING PRINCIPLES FOR RAG
   - Single-topic-per-chunk discipline: how to author so each ~2000-char
     chunk stands alone
   - Hierarchical heading taxonomy (H1/H2/H3) as algorithmic chunk boundaries
   - Avoiding pronoun-bound references that fail after chunking (rules)
   - When to use Markdown tables vs prose vs bulleted lists for embedding
     density and retrieval precision
   - Repeating key nouns explicitly in every chunk where they apply
   - Cross-document deduplication rules (single source of truth, conflict
     resolution)
   - Anti-patterns: narrative filler, ambiguous intros, vague disclaimers,
     "see section X" cross-refs
   - Citing or grounding within the file itself so the model knows the
     source authority

3. FILE TAXONOMY DESIGN
   - How to choose the right number of files (the case for 5 vs 10 vs 30
     vs 100 — what drives the optimum)
   - One-topic-per-file vs multi-topic files with strong H2 boundaries
   - Avoiding cross-file contradiction
   - How to name files for retrieval (does the filename matter for Langdock?
     verify)
   - How to use a "platform overview / router" file as a semantic backbone

4. ALIGNING KNOWLEDGE TO RETRIEVAL SCENARIOS
   - "Scenario-driven authoring": starting from the queries you expect, then
     writing the chunks they should retrieve
   - Vocabulary alignment: matching the user's likely query language (German
     marketing director vocabulary) to the chunk text
   - Synonym seeding inside chunks (German marketing terms + English
     technical Langdock terms in the same chunk)
   - Coverage matrix: scenario → expected top-3 retrieved chunks → source file
   - When you should write a dedicated "scenario index" file vs scattering
     scenario hooks across topical files

5. METADATA, FRONT MATTER, AND STRUCTURE
   - Does Langdock parse YAML front matter? Verify from docs.
   - Recommended H1 conventions (one H1 per file, matching file purpose)
   - Section anchors / IDs — useful?
   - Inclusion of small "What this file covers / What it does NOT cover"
     headers at the top to set retrieval scope

6. TESTING METHODOLOGY
   - How to evaluate retrieval quality before deploying to users
   - Manual "spot-check" protocol: pick 20 likely queries, query the folder
     via Search API, verify expected chunks rank in top-3
   - Coverage gaps: how to detect topics that fail to retrieve
   - Iteration loop: rewrite under-retrieving chunks (vocabulary alignment,
     explicit nouns, stronger H2 anchors)

7. MULTI-LANGUAGE CONSIDERATIONS
   - When source content is mixed German + English: keep separate files vs
     mixed in one chunk
   - Should German queries reliably retrieve English-source chunks via
     embedding (and vice versa) — what does the embedding model handle well
   - Best practice for terms that are loaned (e.g., "Workflow", "Conversation
     Starter") that exist identically in both languages

8. CASE STUDIES OR PRIMARY SOURCES
   - Langdock's own "Best Practices for Knowledge" doc (
     https://docs.langdock.com/resources/knowledge/best-practices )
   - Langdock cheat sheet ( https://docs.langdock.com/resources/cheat-sheet )
   - Astera Software, Regal.ai, Pinecone, Anthropic, OpenAI RAG playbooks —
     anything cite-worthy on chunking and retrieval
   - Cite each claim with a URL

9. OUTPUT FORMAT
   - Executive summary (one page)
   - "10 commandments" cheat sheet for authors
   - Detailed methodology by area
   - A working example: given a fictional "Brand Voice" topic with 4 sub-
     topics and 2 expected query patterns, demonstrate the resulting
     markdown file structure (H1, H2s, opening "what this file covers"
     box, table, prose)
   - End with a checklist a human author can use before approving a file
     for upload

Target length: 4000-6000 words of substance. Prefer concrete, sourced
guidance over generic AI-writing advice.

The deliverable feeds a project-internal authoring skill, so prioritize
operational specificity (do X, not Y, because Z) over high-level theory.
```

---

## After Gemini finishes

1. Move all four Google Docs into the `little-data-research` folder in Drive.
2. Tell me they're ready — I'll fetch them with the Drive MCP and integrate them into the agent's knowledge base alongside the 6 source docs already ingested.
3. If any prompt produced a thin or off-target result, paste me Gemini's output and I'll write a tighter follow-up prompt.

## Recommended run order

1. **Prompt 4** (knowledge-file authoring methodology) first — its output shapes how I structure everything else.
2. **Prompt 1** (feature inventory) — grounds Prompt 3.
3. **Prompt 3** (marketing scenarios) — depends on Prompts 1 and 4.
4. **Prompt 2** (DACH adoption) — independent, can run anytime.
