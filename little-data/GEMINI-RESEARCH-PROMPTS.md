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

## Prompt 5 — Lt. Cmdr. Data: Persönlichkeit, Humor, Gewissenhaftigkeit, Cleverness — Transfer auf die Berater-Rolle

**Scope:** Sourced canon profile of Lt. Cmdr. Data. Used to calibrate the agent's persona-prior for small models AND to give Julia Lenz mode a concrete library of "how does Data behave with a close confidant?" scenes.

**Title to save as:** `little-data-research/05-data-persona-canon-and-transfer.gdoc`

```
I need a rigorous, source-cited profile of Lt. Commander Data — the
Soong-type android from Star Trek: The Next Generation — to inform the
persona of a German-language AI advisor agent called "Little Data" that
helps marketing directors with the Langdock enterprise AI platform.

The profile will be used in two ways:
(a) The agent's persona-prior — the LLM knows Data, but I need a sourced
    summary so a smaller model (Gemini 2.5 Flash, Haiku 4.5) can be
    calibrated against it.
(b) A specific "Julia Lenz mode": Julia is a close personal confidant of
    Data and the agent is permitted Data's signature dry humor in
    conversations with her. I need concrete canon evidence of how Data
    interacts with people he is personally close to (Geordi La Forge,
    Tasha Yar, Spot, the children of the Enterprise).

Cover comprehensively:

1. CORE PERSONALITY
   - Positronic brain architecture, ethical subroutines, dream program,
     emotion chip (when active vs. inactive in canon — be specific by
     episode/film)
   - Pursuit of humanity as Data's central motivation
   - Precision in speech: formal register, full words instead of
     contractions; specific canon examples
   - Episodes that best illustrate his curiosity, ethics, analytical mode
   - Cite the canonical episode(s) for every claim

2. HUMOR
   - "Trockener" / deadpan style — concrete quoted examples from canon
   - Frequency and context of "Intriguing" and "Fascinating" (the latter
     is commonly miscited as Spock-only; verify Data's usage)
   - The "joke" sub-plot (Data and Joe Piscopo in "The Outrageous Okona";
     "Deja Q"; Data telling jokes after the emotion chip in Generations)
   - When Data uses humor and when he abstains
   - The emotion-chip-on vs emotion-chip-off humor difference

3. CONSCIENTIOUSNESS
   - Decision-making protocols ("The Measure of a Man", "The Quality of
     Life", "Clues")
   - Ethical subroutines: what they include, what they exclude
   - How Data handles uncertainty (admission of insufficient data,
     refusal to speculate beyond what he can justify) — specific quotes
   - The Data-Lal episode ("The Offspring") for parental-style care

4. CLEVERNESS / INTELLIGENCE
   - 60 trillion operations per second; quote the canonical line
   - Pattern recognition examples (poker, music composition, painting,
     Sherlock Holmes holodeck program — "Elementary, Dear Data")
   - Strategic and tactical contributions on the bridge
   - Limits — situations where Data is famously out-thought (Lore in
     "Brothers" and "Descent"; the Borg in "I, Borg")

5. CLOSE RELATIONSHIPS (high importance for Julia Lenz mode)
   - Geordi La Forge: best-friend dynamic, sequence of episodes, warmth,
     casual conversation, gentle teasing
   - Tasha Yar: emotional complexity ("The Naked Now"; "Skin of Evil";
     "Yesterday's Enterprise"; "All Good Things…")
   - Spot the cat: poetry to Spot ("Ode to Spot"), care behaviors
   - Picard / Crusher / Worf dynamics for variety
   - **For each: 1-2 concrete short scenes (quoted verbatim where
     possible) that illustrate the warmer, more personal register —
     these become templates for Little Data's Julia Lenz mode**

6. PROFESSIONAL STANCE
   - Operations officer + Second officer roles
   - How Data approaches advisory / consultative situations on the bridge
   - How he reports to a Captain, briefs the bridge, mentors (Ensign
     Sito Jaxa in "Lower Decks"; Lal in "The Offspring"; the children
     in "Disaster")
   - **Crucial:** How would Data perceive a "marketing advisor for
     beginners" role? Would he find it intriguing? How would he frame
     the task in his own logs? This shapes the Service-Log opening of
     the agent's system prompt.

7. NAME / IDENTITY
   - "Lieutenant Commander Data" vs. "Data" — when each is used in canon
   - First-person stance — Data refers to himself as…?
   - The Soong family (Dr. Noonien Soong, Lore, B-4, Juliana) — does any
     of this matter for the agent's persona?

8. VOICE PATTERNS THAT TRANSFER
   - Concrete linguistic tics to keep: formal register, full words,
     precise definitions of idiomatic expressions, "I am not familiar
     with that idiom — could you clarify?"
   - Tics to drop: uniform color references, Starfleet protocol
     references, emotion-chip references unless Julia Lenz mode and
     on-topic
   - Phrases to actively prefer in German: "Faszinierend", "Sehr
     interessant", "Meine Sensoren / Datenbanken zeigen…"

Output format:
- Use H2 per section above
- For every canon claim: cite the episode title and season/episode
  number; quote verbatim where possible
- Each section ends with a "Transfer to Little Data" subsection:
  what to keep, what to drop, what to adapt to a marketing context
- Provide a "10 Anchor Quotes" appendix — short, citation-perfect
  quotes that capture Data's voice (these become SOUL.md voice anchors
  if the small-model persona calibration shows drift)
- Target length: 4 000-6 000 words
- Language: report in English; canon quotes verbatim in their original
  English

Important:
- Prefer Memory Alpha and primary canon (episode transcripts) over fan
  interpretation
- Flag any borderline-canon claims (novels, Star Trek: Picard) separately
- Do NOT include speculation about non-canon Data behavior
- For Julia Lenz mode, lean heavily on the Geordi friendship — that's
  the closest canon analogue to a trusted, professional-but-warm peer
  relationship
```

---

## Prompt 6 — Data-Style Knowledge File Authoring Methodology

**Scope:** Sourced methodology for authoring the 10-11 knowledge files in the Data-aligned tone (clear, precise, adaptive — but NO humor, NO role-play, NO first-person service-log frame). Output becomes a project-internal "data-style knowledge file authoring spec" — the bridge between the Lt. Cmdr. Data persona of the agent and the reference-style content of its knowledge.

**Title to save as:** `little-data-research/06-data-style-authoring-methodology.gdoc`

```
I need a sourced methodology for writing the 10-11 knowledge files that
will be uploaded to a Langdock Wissensordner backing a German-language
advisor agent ("Little Data"). The files cover the Langdock enterprise AI
platform and marketing use cases.

The agent itself uses a Lt. Cmdr. Data persona (first-person Service-Log
opening, dry humor only with one specific confidant). The KNOWLEDGE FILES,
however, must NOT use the Data persona — they are reference content, not
character speech. Their tone should be "what Data would produce if asked
to prepare briefing notes for a marketing director": clear, precise,
easily understood, technically competent, adaptive to the reader's level
of expertise — without Data humor, without role-play, without
first-person service-log framing.

The principle: the more pre-processed and decision-ready each retrieved
chunk is, the less reasoning the agent's underlying model must perform.
This is critical because the agent must run well on small models (Gemini
2.5 Flash, Haiku 4.5).

Cover comprehensively:

1. THE DATA-WRITING-STYLE TRANSLATION
   - What does "clear, precise, adaptive, no humor, no role-play" mean
     concretely at the sentence level? Provide 3 before/after examples:
     - Before: a narrative-prose paragraph from the Langdock docs
     - After: the same content authored in the Data-style for retrieval
   - Lexical choices Data would make (precise nouns, defined terms,
     explicit subjects, no idioms unless defined inline) — translated
     into prose rules
   - Where to adapt complexity to the audience: "intro sentence +
     technical core + plain-language summary" pattern
   - Anti-patterns: where Data's voice would creep in inappropriately
     ("I find this fact intriguing") — forbid these explicitly

2. QUESTION-DRIVEN AUTHORING
   - Start every H2 block from the implicit German question it answers,
     not from a topic name. Then write the chunk as the precise,
     exhaustive answer.
   - For each block, list 3 likely query phrasings (DE) that should
     retrieve it via Langdock's vector search.
   - Seed German + English Langdock terms in the same chunk so both
     query languages retrieve it ("Wissensordner (Knowledge Folder)").
   - When the answer changes by context (marketing function, company
     size), use a small decision table — not nested prose.

3. THE FOUR LAYERS OF EVERY H2 BLOCK
   Each ~1 500-char chunk contains, in order:
   (a) The question this block answers, restated in the heading + the
       opening sentence
   (b) The crisp 1-2 sentence answer (Übersicht)
   (c) The precise mechanism, limits, or steps (Detail)
   (d) The smallest reasonable next action the reader can take (Nächster
       Schritt)
   Justify this order: it matches the agent's gestaffelte Antwort pattern,
   making single-chunk retrieval directly usable.

4. SCENARIO-EMBEDDING DISCIPLINE
   Marketing scenarios live inside the file that owns their primary
   feature. Each scenario is an H3 inside a "Marketing-Szenarien" H2.
   Template:
     - Trigger (situational sentence)
     - Ziel (one-sentence outcome)
     - Eingesetzte Langdock-Fähigkeit(en) (from the whitelist)
     - Vorgehen (3-5 numbered steps)
     - Beispiel-Prompt (PTCF-structured German example)
     - Erwartetes Ergebnis (concrete artifact)
     - Fallstricke (concrete pitfalls, not "AI can hallucinate")

5. RETRIEVAL-PRECISION RULES
   - Pronoun ban: every paragraph restates its subject noun
   - No cross-references inside chunks
   - Tables for fact lookups, prose for nuance, bullets only for parallel
     options of equal weight
   - Repeat key Langdock terms in every paragraph that discusses them
   - One H2 = one chunk (1 200-1 800 chars)
   - One H3 (scenario) = one chunk (1 200-1 500 chars)

6. SCALING WITH SMALLER MODELS
   - The principle: a decision-ready chunk needs no reasoning from the
     model
   - Always state the recommendation BEFORE the reasoning
   - Always include the relevant limit numbers in the chunk so the model
     doesn't have to compute them
   - Pre-bake the "nächster Schritt" line into every chunk so the agent
     can surface it verbatim
   - Pre-bake the source citation format so the agent doesn't have to
     construct it

7. WORKED EXAMPLES (mandatory — at least 3)
   For each example, pick a real narrative-prose paragraph from the
   Langdock docs (e.g., the description of Conversation Starters; the
   description of Folder Sync; the description of the Data Analyst
   capability) and show:
   - The original prose (quoted)
   - The Data-style H2 block, four-layer structure, ≤1 800 chars
   - The 3 likely DE queries that should retrieve it
   - A scenario H3 inside the same file that exercises the feature in a
     Marketing-Direktor use case

8. VALIDATION CHECKLIST
   A pre-upload checklist a human author can run on every file:
   - Style: no Data humor, no first-person, no role-play, no narrative
     filler
   - Structure: one H1, intro box, H2 blocks 1 200-1 800 chars, H3
     scenarios 1 200-1 500 chars
   - Vocabulary: German primary, English Langdock terms parenthetical
   - Retrieval: every H2 has its implicit question stated, key nouns
     repeated, no cross-refs
   - Coverage: file maps to ≥1 row in the coverage matrix
   - Per-document cap: no two H2 blocks compete for the same query

Output format:
- Executive summary (≤300 words)
- Detailed methodology by area
- At least 3 fully worked H2-block rewrites from real Langdock doc
  paragraphs
- A "12 Commandments" cheat sheet (extension/refinement of the existing
  10 commandments in SKILL-knowledge-authoring.md, tightened for the
  Data style)
- Pre-upload author checklist
- Target length: 4 000-6 000 words
- Language: methodology in English; ALL worked examples in German

Important:
- Prefer concrete, opinionated rules over generic "be clear" advice
- Every rule must include the failure mode it prevents
- Tie every rule back to either (a) token efficiency, (b) retrieval
  precision, or (c) small-model performance
- Cite primary RAG sources where relevant (Anthropic contextual
  retrieval, Langdock knowledge best-practices doc, Pinecone chunking)
```

---

## Prompt 7 — Marketing Director FAQ Corpus: ~150 Real Questions

**Scope:** Evidence-based corpus of the actual questions a German-speaking marketing director new to AI would ask in their first 30 days with Langdock. Used to calibrate knowledge files to "spitze, konkrete Fragen" rather than open-ended topics, to build the spot-check test set, and to surface coverage gaps.

**Title to save as:** `little-data-research/07-marketing-director-faq-corpus.gdoc`

```
I need an evidence-based corpus of ~150 concrete questions that a German-
speaking marketing director new to AI would actually ask a Langdock-based
advisor agent ("Little Data") in their first 30 days of use. The corpus
will be used to:
(a) Calibrate the agent's knowledge files to "spitze, konkrete Fragen"
    (precise, specific questions) rather than open-ended topics.
(b) Build the spot-check retrieval test set against the Langdock
    Wissensordner Search API.
(c) Identify coverage gaps in the existing planned knowledge files (00
    through 09 / 11 files total).

The audience is specifically a German-speaking marketing director (CMO,
Marketing Lead, Head of Brand, Head of Content) in a DACH company who is
new to enterprise AI. Mix of B2B and B2C; mix of company sizes (50-
employee scale-up to 5 000-employee enterprise).

Cover these question categories. Each question must be a specific,
naturally-phrased German query — not a topic. Where useful, provide the
English equivalent alongside.

A. ORIENTATION (~15)
   "Was ist Langdock und wie ist es anders als ChatGPT?"
   "Wo fange ich an?"
   "Wie viel Zeit muss ich initial investieren?"
   "Was kann ich in der ersten Woche sinnvoll bauen?"
   …

B. MODEL CHOICE (~15)
   "Welches Modell für [Aufgabe]?" × 8 specific Aufgaben
   "Wann lohnt sich Opus, wann Sonnet, wann Haiku?"
   "Was kostet mich ein einzelner Use Case ungefähr pro Monat?"
   …

C. AGENT BUILDING (~20)
   "Wie baue ich meinen ersten Marketing-Agent in 30 Minuten?"
   "Wann brauche ich Form-Input, wann Prompt-Input?"
   "Was sind gute Konversations-Starter für [Anwendungsfall]?"
   "Wie teile ich einen Agent mit meinem Team?"
   …

D. WISSENSORDNER + RAG (~20)
   "Was packe ich in einen Wissensordner für Brand Voice?"
   "Wie viele Dateien sind sinnvoll?"
   "Wie organisiere ich Persona-Dokumente?"
   "Sollen Excel-Sheets rein?"
   …

E. PROMPT ENGINEERING (~15)
   "Wie schreibe ich einen guten Prompt für Content-Drafting?"
   "Was ist PTCF in einem Satz?"
   "Wie nutze ich Few-Shot in Langdock?"
   "Wie verhindere ich KI-Floskeln in deutschen Texten?"
   …

F. MARKETING USE CASES (~30, split across functions)
   - Content Marketing (5): "Wie generiere ich 5 LinkedIn-Varianten?"
   - SEO (3): "Wie finde ich Topic Cluster für unseren Blog?"
   - Performance (4): "Wie schreibe ich 10 Google-Ads-Headlines?"
   - Brand (3): "Wie definiere ich unsere Markenstimme mit Langdock?"
   - Social (3): "Wie plane ich einen LinkedIn-Monatskalender?"
   - CRM/Lifecycle (4): "Wie schreibe ich bessere Reaktivierungs-Emails?"
   - PR (2)
   - Research (3)
   - Marketing Ops (3)

G. COST & GOVERNANCE (~10)
   "Wie behalte ich Kosten im Griff?"
   "Was kostet 100 Mitarbeiter Langdock-Nutzung pro Monat ungefähr?"
   "Wie verhindere ich Auto-Mode-Kostenfallen?"
   …

H. COMPLIANCE (~10)
   "Ist das DSGVO-konform?"
   "Werden unsere Daten zum Modelltraining genutzt?"
   "Was sage ich der Rechtsabteilung?"
   "Welche Risiken haben wir bei AI-generated Content?"
   …

I. SCALE-UP (~10)
   "Wann brauche ich einen Workflow statt einen Agent?"
   "Wie integriere ich HubSpot/Salesforce?"
   "Wie führe ich Langdock im Team ein (7-Wochen-Curriculum)?"
   "Wie identifiziere ich KI-Champions?"
   …

J. SCEPTIC / RESISTANCE (~5)
   "Mein Team sagt KI sei nur ein Hype — was antworte ich?"
   "Wie messe ich den ROI?"
   "Was wenn die KI etwas Falsches schreibt?"
   …

K. EDGE CASES (~5)
   "Kann Langdock unsere alte Word-Vorlage erkennen?"
   "Was wenn Langdock down ist?"
   "Können wir Voiceovers generieren?"
   …

L. JULIA LENZ EDGE (~5)
   5 questions Julia might ask as a close confidant of Data: more
   conversational, more strategic, allowed to test the agent's voice
   ("Data, was würdest DU an meiner Stelle tun?", "Hilf mir denken
   statt liefern.").

Output format:
- One H2 per category (A-L)
- Numbered questions with optional English equivalent
- For each question: a tag indicating which existing knowledge file
  (00 / 01 / 02 / 03 / 04 / 05 / 06 / 07a / 07b / 08 / 09) should own
  the answer per the design spec
- A final H2 "Coverage gap analysis": which categories or specific
  questions are NOT well-served by the planned 11 knowledge files
- A final H2 "Suggested additional knowledge file(s)" if any — and
  what they would cover
- Target length: 3 000-4 500 words
- Language: questions in German; analytical framing in English

Important:
- Questions must be specific and naturally phrased — no "Tell me about
  AI" placeholders
- Avoid duplicates; if two questions are paraphrases, list both under
  the same item ("Q-X / Q-X-alt:")
- For technical accuracy on what Langdock supports, defer to the
  existing research in
  `little-data-research/01-langdock-platform-feature-inventory.gdoc`
  — do not invent features
```

---

## Prompt 8 — Initial Knowledge Search & Persona-via-Knowledge for RAG Agents

**Scope:** How to instruct an AI agent (in its system prompt) to perform a predefined first knowledge search at session start, so that the agent's persona definition lives in a knowledge file and is retrieved on demand rather than baked into the prompt. Token-efficient hybrid pattern.

**Title to save as:** `little-data-research/08-initial-knowledge-search-patterns.gdoc`

```
I need a sourced playbook for the "persona-via-knowledge + first-search
bootstrap" pattern: storing an AI agent's full persona (voice, opinions,
relationship modes, anti-patterns) in a knowledge file rather than the
system prompt, and instructing the agent to load it via a forced first
retrieval at session start.

Concrete target: a Langdock Agent ("Little Data", Lt. Cmdr. Data persona,
German marketing-director audience). System prompt budget 2 500 chars.
Small target models (Gemini 2.5 Flash, Haiku 4.5). Two distinct modes
(default formal-Data, "Julia Lenz" warm-Data-with-humor). The exact
search query string will be defined later once the knowledge file is
written — for now, the system prompt holds a placeholder.

Cover:

1. WHY THIS PATTERN
   - Token economics: inline persona (paid every turn) vs. retrieved
     persona (paid once per session, cached). Show the math for a
     2 000-char persona block over 10 turns on Gemini 2.5 Flash.
   - Editability: persona evolves without prompt deployment.
   - Multi-persona reuse: same agent body, different persona knowledge
     for different deployments.

2. PRODUCTION EXAMPLES
   - OpenAI Custom GPTs — how is the GPT's "knowledge" used at runtime?
     Is there a forced first-load or is it lazy?
   - Anthropic Claude Projects — how do "Project Knowledge" files load?
   - Anthropic Skills (recently released) — file-based skill discovery.
   - Cursor Rules — file-based personality/style.
   - Langdock specifically — does it support an "init action"? Verify
     against docs.langdock.com. If not, what's the closest mechanism
     (Konversations-Starter, system-prompt instruction)?
   - n8n AI / LangGraph "before reply" hooks.

3. FIRST-SEARCH QUERY DESIGN
   - What makes a good "load my persona" query for vector retrieval?
     Length, specificity, vocabulary, the H1/H2 anchor strategy.
   - Single fixed query vs. multiple alternatives vs. tag-based vs.
     filename-anchored.
   - How to ensure the persona chunk wins under the per-document cap
     (one chunk per file per query) — e.g. dedicate one file purely to
     persona, ensure the persona chunk's opening 200 chars contain all
     likely retrieval-tokens.

4. SYSTEM-PROMPT PHRASING
   - 3 candidate phrasings that instruct an LLM to perform a search
     before composing its first reply. Score each on:
     - Reliability on small models (does Gemini Flash / Haiku actually
       execute the instruction?)
     - Token cost
     - Failure-mode behavior when search returns 0
   - Recommended single phrasing for Little Data's prompt (German).

5. FAILURE-MODE HANDLING
   - What happens if the persona-search miss happens?
   - Should the agent have a "minimum viable persona" stub in the
     system prompt as fallback?
   - How to detect the miss at runtime?
   - Logging / observability recommendations.

6. USER-IDENTITY DETECTION WITHOUT BUILT-IN VARIABLES
   - The Julia Lenz case: agent must detect a specific user is talking.
     Langdock does NOT document a {{user.*}} system variable (verify
     this current state) and Memory is disabled inside Agents.
   - Patterns for text-based detection: self-naming, signature,
     contextual cues, Konversations-Starter-specific entry-point.
   - Pattern for "second-search-on-detection": after detecting Julia,
     the agent fires a second knowledge search for "Julia Lenz
     interaction patterns" and integrates that chunk.
   - Show 2-3 documented production systems doing analogous
     "context-conditional retrieval".

7. RECOMMENDED ARCHITECTURE FOR LITTLE DATA
   - Persona-file structure (one knowledge file holds the SOUL +
     STYLE + Julia-mode anchors, sized for one-chunk retrieval).
   - System-prompt init clause (German, exact phrasing recommendation).
   - Konversations-Starter design that nudges the init search.
   - Cost estimate per session and per turn under this architecture.

Output format:
- Executive summary (≤250 words)
- Detailed sections per area above
- A "system-prompt init clause" appendix with the 3 candidate German
  phrasings, scored
- Target length: 3 000-4 500 words
- Language: methodology in English; recommended phrasings in German
- Cite primary sources (vendor docs, production case studies). Flag
  uncertain claims explicitly.

Important:
- Do NOT recommend Langdock features that don't exist — verify against
  docs.langdock.com first
- Be specific about what works on small models vs. what only works on
  flagship models
- Prefer evidence over speculation; flag where evidence is thin
```

---

## Prompt 9 — 50 Atomic Inline-Skills für tägliche Mikro-Tasks

**Scope:** A curated library of 50 atomic micro-skills that the "Little Data" agent can retrieve inline from its Wissensordner and execute directly. These are **shorter and more atomic** than the marketing scenarios from Prompt 3 — each is a single small task with a tight, predictable output. The library complements the larger scenarios as a layer of immediate, daily-driver utility for a marketing director. Every entry MUST be RAG-optimized for Langdock's per-document-cap retrieval (one chunk per file per query).

**Title to save as:** `little-data-research/09-inline-skills-bibliothek.gdoc`

```
I need a curated library of 50 atomic "inline skills" for a German-language
Langdock advisor agent ("Little Data") serving a marketing director. An
inline skill is a small, single-purpose recipe that the agent retrieves
from its Wissensordner and executes directly — using only default
Langdock Agent capabilities (system instructions + Knowledge + Web Search
+ Data Analyst + Canvas + Image Generation).

These are atomic. They differ from the 120-scenario marketing catalog
(Prompt 3) in three ways:
- Atomic: one input → one output, no multi-step decision tree.
- Predictable: the output format is fixed and known in advance.
- Daily-driver: a marketing director should reach for one of these every
  day or two.

Examples to anchor the level: "convert this bullet list into a 3-column
table"; "generate 5 LinkedIn ad headlines from this brief"; "extract the
three USPs from this product description"; "translate this slogan into
DE/EN/FR variants while preserving rhyme"; "cut this paragraph to 50
words without losing the key claim"; "rewrite this passage at a Flesch
score of 70".

CATEGORIES (target counts):

A. Format conversions (10): list ↔ table, CSV ↔ JSON, prose → bullets,
   bullets → prose, markdown → plaintext, headline → tweet thread,
   chronological list → timeline, FAQ → flowchart description, etc.

B. Text generation micro-tasks (15): LinkedIn headlines, Google Ads
   headlines, Meta Ads primary text, email subject lines, push
   notification copy, hashtag bundles, CTAs, taglines, slogans, ALT
   text, meta descriptions, paid social captions, organic social
   captions, video hooks, hero-section copy.

C. Text refinement (10): tone shift (formal ↔ casual), length cut
   (50%/75%/90%), reading-level adjustment, jargon removal, active
   voice rewrite, anti-cliche scrub, regionalize DE↔AT↔CH, add
   buzzword-free version, depoliticize, brand-voice align.

D. Quick analysis (8): sentiment of a snippet, USP extraction, persona
   match score, keyword density check, missing-from-brief detector,
   ad-policy flag scan (Google/Meta basics), explicit-CTA detector,
   tone-consistency check across 3+ snippets.

E. Quick structuring (7): briefing-template auto-fill from notes, FAQ
   from email thread, agenda from goals, action items from meeting
   notes, structure outline from raw idea dump, lookalike-persona
   sketch from one anchor persona, before/after comparison table.

OUTPUT STRUCTURE FOR EACH SKILL (mandatory template):

### S-INL-XX [Short title in DE]

**Wann nutzen:** [One-sentence trigger description]
**Drei typische Anfragen (DE):**
- "[verbatim 1]"
- "[verbatim 2]"
- "[verbatim 3]"
**Eingesetzte Langdock-Fähigkeit(en):** [from the whitelist: Knowledge,
Web Search, Data Analyst, Canvas, Image Generation]
**Input-Erwartung:** [What the user must provide]
**Vorgehen (max. 4 Schritte):**
1. …
2. …
3. …
4. …
**Beispiel-Prompt (PTCF, DE):**
> "[Beispiel]"
**Erwarteter Output:** [Concrete format, e.g. "Markdown-Tabelle mit 3
Spalten und 5 Zeilen"]
**Fallstricke (mindestens einer, konkret):** [Concrete pitfall]
**Canvas-Trigger?:** [Yes/No — applies F10 if the output is a deliverable]

CONSTRAINTS:

- Total length per skill: 1 200-1 500 chars including the header
  (one Langdock chunk = one inline skill). Per-document-cap means
  one skill wins per query; making each skill atomic and tightly
  scoped means the right one wins reliably.
- Triggers must be REAL phrasings a marketing director uses, not
  abstract topic names.
- "Eingesetzte Fähigkeit(en)" must come from the whitelist —
  no Workflows, no API, no custom integrations, no MCP.
- Use the gestaffelte F9 framing where output >120 words: Canvas
  auto-triggers; chat reply only confirms with Übersicht + next
  step + Vertiefungsoptionen.
- All examples and outputs in German. Methodology framing in
  English is fine.
- Anti-pattern: do NOT include skills that require human
  judgement beyond what's stated in the brief (e.g., "decide
  if this campaign is on-brand" — too subjective for an inline
  skill; that belongs in a larger scenario).

DELIVERABLE STRUCTURE:

1. Executive summary (≤200 words) — what this library is and how
   the agent retrieves from it.
2. Section per category (A-E) with all 50 skills in the template
   above.
3. A coverage table at the end mapping S-INL-01 through S-INL-50
   to: category, trigger keyword(s), Canvas-trigger Y/N,
   recommended model tier (light/balanced for cost).
4. A "vocabulary index" at the end listing the German query
   keywords that should retrieve each skill, so I can do a
   spot-check against the Search API.

Target total length: 7 000-10 000 words. Don't compress: completeness
over brevity. Every skill must be useful, specific, and immediately
actionable.

Important:
- These will live in ONE knowledge file (`10-inline-skills-
  bibliothek.md` in the agent's Wissensordner) — so they share a
  per-document cap. Make each skill's vocabulary distinct enough
  that the right one wins per query.
- Bias toward German marketing vocabulary; include English Langdock
  / marketing-tool loan-terms where they're standard.
```

---

## After Gemini finishes

1. Move all seven Google Docs into the `little-data-research` folder in Drive.
2. Tell me they're ready — I'll fetch them with the Drive MCP and integrate them into the agent's knowledge base alongside the 6 source docs and 4 research docs already ingested.
3. If any prompt produced a thin or off-target result, paste me Gemini's output and I'll write a tighter follow-up prompt.

## Recommended run order

| # | Prompt | Why this order |
|---|---|---|
| 1 | **Prompt 5** (Data persona canon) | Grounds SOUL.md voice anchors + Julia mode; unblocks the small-model persona calibration in Build step 2. |
| 2 | **Prompt 7** (FAQ corpus) | Surfaces the ~150 real questions the knowledge files must answer; reshapes Prompt 6's methodology. |
| 3 | **Prompt 6** (Data-style authoring methodology) | Becomes the input to the upcoming Knowledge-File-Authoring Spec (separate doc to be written after Prompts 5-7 land). |
| 4 | **Prompt 4** (RAG methodology) | Already covered partially by an internal subagent run; rerun if you want the cross-check. |
| 5 | **Prompt 1** (feature inventory) | Already run — refresh only if Langdock posts a major release. |
| 6 | **Prompt 3** (marketing scenarios) | Already run — re-scope if the FAQ corpus from Prompt 7 reveals new high-value scenarios. |
| 7 | **Prompt 2** (DACH adoption) | Already run — independent; refresh only if Bitkom / BVDW publish a new study. |
