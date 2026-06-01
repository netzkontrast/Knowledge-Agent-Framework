# T3 — Marketing-Praxis & Use Cases

## 1. Marketing Functions (14 Functions, 128 Scenarios)
The catalog spans **14 marketing functions** mapped to **128 concrete scenarios (S-001–S-128)**: A. Content Marketing (S-001–S-015), B. SEO & Organic (S-016–S-025), C. Performance/Paid (S-026–S-037), D. Brand & Creative (S-038–S-045), E. Social Media (S-046–S-055), F. CRM & Lifecycle/Email (S-056–S-067), G. ABM (S-068–S-075), H. PR & Communications (S-076–S-083), I. Research & Insights (S-084–S-093), J. Marketing Operations (S-094–S-103), K. Analytics & Reporting (S-104–S-113), L. Events & Field (S-114–S-118), M. Localization (S-119–S-123), N. Internal Enablement (S-124–S-128). Each leverages AI for content synthesis, semantic search, bulk automation, vision analysis, or workflow orchestration. The platform anchors every scenario in three out-of-the-box pillars — vector **Folders** (RAG over up to 1,000 reference files), the split-screen **Canvas**, and the **Data Analyst** (Python execution over CSV/XLSX) — plus **Workflows** for cross-platform automation. **10:1–8 (catalog overview); 10:6–774 (full scenario set)**

**Each scenario detail block is consistently structured** (Trigger/situation → Goal → Langdock feature(s) → How it works → Sample German prompt with [Persona]/[Context]/[Format] tags → Expected artifact → KPIs → Pitfalls → Estimated time saved), making the catalog directly operational as a prompt-library seed. **10:12–774**

**Feature Usage Matrix (which features each function relies on most heavily, 10:807–822):** Folders/RAG dominates Content, Brand, PR, Research, Enablement; Data Analyst dominates Performance, Research, Analytics; Workflows dominate SEO, Social, CRM, Ops, Localization; Web Search dominates SEO, ABM, PR, Events; Canvas dominates Content, Brand, PR, Enablement.

---

## 2. Top-20 Quick Wins (Official Source Ranking)

The catalog's own "Top 20 Quick Wins for New Users" ranks scenarios by highest ROI / lowest setup friction — explicitly chosen because they "drive immediate value and user adoption without requiring complex API configurations," exploiting out-of-the-box Folders, Canvas, and Data Analyst (10:776–801). Note: the source table itself does **not** carry time-saved figures; the Time-Saved column below is sourced from each scenario's own detail block (per-scenario estimate), while the "why it's a quick win" rationale is the source's own column (10:782–801).

| Rank | Scenario | Function | Feature | Time Saved | Why a Quick Win (source rationale, 10:782–801) |
|------|----------|----------|---------|-----------|------------------------------------------------|
| 1 | S-003 Blog Post Drafting | Content | Chat + Canvas split-screen | 3h/asset | Immediate productivity; intuitive collaborative split-screen UI |
| 2 | S-099 Internal Knowledge Base | Ops | Agent + Folder | 5h/wk | Folder→Agent stops repetitive Slack pings instantly |
| 3 | S-026 Google Ads RSA Variants | Performance | Agent + Prompt Library | 2h/campaign | High-volume text gen suits Prompt Library variables |
| 4 | S-048 Community Mgmt Replies | Social | Chat + Folder (FAQ) | 2h/incident | Folder + Chat for instant, safe external comms |
| 5 | S-104 Weekly Performance Summary (GA4) | Analytics | Data Analyst | 2h/wk | Automates dreaded Monday reporting via Data Analyst |
| 6 | S-058 Email Subject Line Testing | CRM | Agent (Prompt Library) | 1h/email | Zero integration; instant localized A/B testing |
| 7 | S-038 Brand Voice Guidelines | Brand | Folders + Canvas | 10h/project | Reverse-engineering creates foundational value for all AI tasks |
| 8 | S-084 Customer Interview Synthesis | Research | Folders + Agent | 15h/project | Saves manual transcript reading; shows vector-search efficiency |
| 9 | S-021 Competitive SERP Analysis | SEO | Agent + Web Search | 3h/analysis | Web Search replaces expensive external tools |
| 10 | S-115 Post-Event Recap | Events | Chat | 1h/event | Unstructured→structured text formatting via plain Chat |
| 11 | S-046 Social Media Calendar | Social | Workflow (Sheets Action) | 5h/month | Introduces no-code Workflows (Sheets Action) |
| 12 | S-069 Personalized Outreach (1:1) | ABM | Chat + File Attachment | 30 min/prospect | Empowers sales; cross-departmental AI value |
| 13 | S-119 DE↔EN Transcreation | Localization | Agent | 3h/page | Saves external agency translation costs via transcreation |
| 14 | S-076 Press Release Drafting | PR | Folders + Chat | 2h/release | Standardized formatting is where enterprise LLMs excel |
| 15 | S-001 Editorial Calendar Planning | Content | Agents + Folders + Canvas | 4h/quarter | Showcase of Canvas for collaborative brainstorming |
| 16 | S-018 Meta Description Generation (bulk) | SEO | Workflow-Loop + Sheets | 6h/audit | Bulk Workflow gen demonstrates time savings at scale |
| 17 | S-085 Survey Open-Text Analysis | Research | Data Analyst | 10h/survey | Data Analyst turns qualitative mess into charts in minutes |
| 18 | S-064 Post-Purchase Upsell | CRM | Chat | 1h/email | Direct revenue from a 5-minute contextual chat |
| 19 | S-128 Competitor Battlecards | Enablement | Agents + Folders + Canvas | 4h/competitor | High Sales visibility builds enterprise-wide trust |
| 20 | S-094 Campaign Brief Intake Form | Ops | Workflow (Form Trigger) | 4h/wk | Form Triggers enforce process and organization instantly |

**Source: 10:776–801 (official Top-20 ranking); time-saved per scenario detail blocks.** Highest single-scenario time savings across the full catalog: S-120 Du→Sie rewrite at scale (20h/project, 10:728), S-084/S-085 research synthesis (15h, 10:516/522), S-012/S-023 localization & local landing pages (15h, 10:76/144), S-005 content audit (10h, 10:38).

---

## 3. Cross-Cutting Scenarios (9 Multi-Feature)

**Campaign-Launch Briefing**: Folder→Agent→Canvas→Workflow (publish to Slack). **Lead Qualification Loop**: CRM-Trigger→Agent+HubSpot→Condition→Auto-Draft. **Content Repurposing**: Webhook(Recording)→Web-Fetch→Agent(3-asset split)→Loop-Refine→Canvas-Edit. **SEO Strategy**: Deep Research→Data Analyst(keyword volume)→Folder(asset check)→Canvas(roadmap). **Brand Consistency**: Folder(tone samples)→Agent(extract guide)→Prompt Library→Workflow(QA). **Performance Dashboard**: GA4-Sync→Data Analyst(ROAS+charts)→Workflow(Slack). **Multi-Channel Versioning**: Folder(master)→Canvas(baseline)→Loop(variants per channel)→Vision(compliance). **DACH Localization**: Folder→Agent+DeepL(cultural nuance)→Loop(DE/AT/CH)→Workflow(CMS). **Competitive Intel**: Web Search→Data Analyst(matrix)→Folder(parity check)→Prompts(positioning). **10:270–283; 12:392–510**

---

## 4. Atomic Inline-Skills (50 Micro-Tasks)

**Format Conversions (10)**: Blog→Newsletter (Markdown→HTML), Article→Social (long→posts), Transcript→Blog (SRT→structured), Data→Slides (CSV→PPT), PDF→HTML, Google Doc→Markdown, Figma Brief→Copy, Spreadsheet→JSON, Audio→AV-Script, Website→Plaintext.

**Text Generation (15)**: H1-Pairs, Meta-Descriptions, Social Hooks, Ad-Copy-Matrix, Taglines (50x categorized), Press Release, Email Subjects, Product Descriptions, Customer Testimonials, Title Tags, CTA Options, FAQ Answers, Listicle Titles, Email Templates, Social Carousel Slides.

**Refinement (10)**: Tone-Alignment, Readability-Simplification, Keyword-Density, Fact-Check, Length-Optimization, Personalization Tokens, Grammar/Style, Cultural Nuance, Voice-Over Clarity, Multi-Asset Typo-Audit.

**Quick Analysis (8)**: Competitor USPs, Content-Type Distribution, Keyword-Intent, Persona-Snapshot, SERP-Features, Social-Sentiment, Email-Anomalies, Form-Friction.

**Structuring (7)**: Outline→Structure, Data-Tabularization, Timeline-Viz, FAQ-Reorganization, Feature-Comparison-Matrix, Customer-Journey-Map, Workflow-Decision-Tree. **10:160–270 (embedded in scenarios)**

---

## 5. Marketing-Director FAQ (Top-30, DACH)

### Orientation (5)
1-5: Project structure, Cmd+K navigation, sidebar pinning, workspace progress, external sharing. **12:30–70**

### Model Choice (5)
6-10: Claude vs. GPT (linguistic quality), Auto-routing, context windows, mid-chat switching, default settings. **12:95–154**

### Agent Building (4)
11-14: Brand-guideline restriction, "Create with Chat", temperature tuning, input forms. **12:160–180**

### Knowledge Folders (4)
15-18: CSV upload constraint, 1,000-file limit, SharePoint sync, OCR quality limits. **12:249–324**

### Prompt Templates (3)
19-21: Save-from-chat workflow, {{variable}} syntax, cross-model consistency. **12:330–389**

### Workflows & Automation (4)
22-25: No-code lead qualification, scheduled triggers, webhooks, human-in-loop approval. **12:634–653**

### Cost Control (3)
26-28: Business plan pricing (~€20/user/mo annual; volume discounts at 50+/250+/550+ seats), BYOK vs. bundled (note the **10% API token markup** + over-quota premium-model markup), spending limits per model. **12:540–583**

### Compliance (2)
29-30: EU data hosting (Frankfurt servers), zero-training guarantee (incl. via Azure/Bedrock third-party hosting), AVV/DPA for legal, Betriebsrat (works-council) proof that analytics ≠ behavioral monitoring. **12:585–628**

### Marketing Use Cases — section F (not in original top-30, large block)
Source 12's largest functional section is **F. Marketing Use Cases (12:391–539)**, sub-divided into Content & Copywriting, SEO & Digital Strategy, Brand/PR/Creative, Performance/Social/Analytics, and B2B Lead Gen & Operations — the FAQ analogue to file 10's scenario catalog, framed as director-level evaluation questions. **12:391–539**

### Scale-Up, Sceptic/Resistance, Edge Cases
Section I Scale-Up (no-code workflows, schedule/webhook triggers, conditions/loops, human-in-loop, "Fix in Chat", Zapier/Make JSON import; 50→500 seat scaling) **12:630–673**; Section J Sceptic/Resistance (job-displacement fears, hallucination on legal claims, ease-of-use, brand-dilution, "why pay vs. free chatbots") **12:675–699**; Sections K Edge Cases and L "Julia Lenz Edge" cover failure/persona stress-tests **12:700–749**.

**Source: 12:26–749 (160-question corpus across sections A–L; top-30 in tables above extracted by frequency; F/I/J/K/L summarized as thematic blocks)**

---

## 6. Failure Modes

| Issue | Impact | Mitigation |
|-------|--------|-----------|
| Hallucinated stats | Claim liability; regulatory risk | Web-Search required; "verified sources only"; fact-check loop |
| Duplicate content penalty | SEO deindex | Sentence-structure variation, not just find-replace |
| OCR quality loss (scans) | Search index fails | Use Chat+File-Attach, not Folder-RAG for poor scans |
| Character-count overflow (ads) | Cut-off; low performance | Char-counter column; manual trim audit |
| CSV formatting errors | Data Analyst crashes | Pre-clean data; explicit error handling in prompt |
| API rate-limit exceeded (429) | Workflow stalls; costly retry | Stay under workspace cap of **500 RPM / 60,000 TPM** (per model); batch instead of loops; non-streaming calls hard-timeout at 100s (HTTP 524). **08:150,159–160; 00:279** |
| Off-brand outputs | Consistency gaps | Agent+Folder attachment mandatory; Memory for templates |
| Keyword stuffing (SEO) | Spam penalty | "Natural description first" in prompt |
| Memory pollution | Old campaigns infect new prompts | Memory is per-user/opt-in/cap 50 and OFF in Agents (00:388–395); for Agents use Folders/Custom Instructions, not Memory |
| Folder file-limit (1K) | Silent indexing failure | Folders index up to 1,000 files (10:8); archive old files; split folders by topic |
| Verbosity / spoken-time miscount | AV scripts overrun :60 | Enforce hard word cap (~130 words/60s), not just a time limit (S-009 10:60) |
| Repeated verbs/hooks at scale | Dynamic ads / teasers read poorly | Force varied sentence structure & hooks (S-014 10:88, S-033 10:202, S-015 10:92) |

**10 per-scenario "Pitfalls" lines (e.g. 10:26,38,50,114,144,154,164,202,265); 12:700–749 (edge cases, sceptic, Julia Lenz persona)**

---

## 7. Contradictions & Gaps

### Internal Conflicts
- **CSV in Folders**: File 10 implies structured data goes to Data Analyst, not Folders (S-005 10:36–38, S-016 10:100–102). Authoritative confirmation: master inventory states CSV/XLSX are **definitively banned from semantic RAG folders but supported in the Data Analyst tool** (00:255; source 08:255). → **Resolution**: Folders = semantic RAG text only; CSV → Data Analyst. [VERIFIED — master/08]
- **Vision Limits**: File 10 uses Vision for bulk alt-text (S-025, 10:152–154) and brand QA (S-042, 10:263–265), but S-042 explicitly states Vision "cannot accurately read exact HEX codes from compressed images; it can only judge general color families" (10:265). → **Resolution**: Vision ok for layout/content/legibility; not pixel-perfect color. [VERIFIED — single source 10]
- **Memory Scope/Transparency**: Marketing scenarios use Memory freely (S-013 10:80, S-032, S-122 10:738). Authoritative correction: Memory is **per-user, opt-in, capped at 50 entries, and DISABLED inside Agents** (00:388–395) — so any Agent-based scenario relying on Memory is mis-specified. → **Resolution/Gap**: For Agents, persist context via attached Folders/Custom Instructions, not Memory; governance UI lives in Account Settings → Memory tab (00:401). [VERIFIED — master 00]

### Documentation Gaps (source 12 "Coverage Gap Analysis", 12:750–768)
1. **Practical Marketing Process Guidance**: File 02 (agent config) explains system instructions but lacks brand-voice-prompt structure and standard campaign-brief templates (12:754–756).
2. **Data Ingestion Transition**: No documented guidance on moving files between Data Analyst (CSV/XLSX code execution) and vector Folders (semantic text) (12:758–760).
3. **Webhook Mapping**: File 06 (workflows) lacks HubSpot/GA4/Slack-specific integration templates and data-mapping steps (e.g. WordPress→HubSpot) (12:762–764).
4. **DACH Compliance Kits**: File 09 (GDPR) lacks Works-Council (Betriebsrat) approval templates proving analytics ≠ employee performance tracking (12:766–768).

### Recommended New Files (source 12, 12:770–796)
- **File 10**: Marketing Stack Integration & Workflow Playbook — native CRM lead/campaign-member handling, HubSpot pagination/rate-limit/filter rules, step-by-step lead-qualification & auto-reply sequences (12:774–780).
- **File 11**: DACH Compliance & Works-Council (Betriebsrat) Alignment Kit — proof no per-user prompt/speed tracking, 1:1 SharePoint-permission mirroring, system-description templates for council approval (12:782–788).
- **File 12**: Advanced Data Analyst & Spreadsheets Optimization Kit — multi-sheet Excel best practices, Python chart styling/export to corporate design, attachment-vs-Folder guidance (12:790–796).

**Note [UNVERIFIED]**: An earlier extract attributed "Deep Research: 5–30 min duration, 15 runs/month" to 12:432–450; that figure is **not** present in source 12 (whose Deep Research reference is only a docs URL, 12:834) — drop or verify against docs.langdock.com/product/chat/deep-research before reuse.

**12:750–796**

---

## Sources

| Section | Reference |
|---------|-----------|
| 14 marketing functions, 128 scenarios (S-001–S-128) | 10-langdock-marketing-scenarios-catalog.md:6–774 (function headers A–N at 10:6,94,156,235,281,341,420,462,508,568,628,686,716,746) |
| Top-20 official ranking + "why a quick win" rationale | 10:776–801 |
| Per-scenario time-saved estimates | 10:14,26,32,38,…,774 (each scenario's "Estimated time saved" line) |
| Feature Usage Matrix (function × feature) | 10:803–822 |
| Cross-cutting scenarios | 10:270–283; 12:392–510 |
| Atomic skills (50 tasks) | 10:160–270 (embedded in scenario bodies) |
| FAQ corpus (160 Qs, sections A–L; top-30 by frequency) | 12:26–749 |
| Failure modes (hallucination, OCR, char-count, limits) | 10 per-scenario "Pitfalls" lines (e.g. 10:26,50,114,144,154,164); 12:700–749 |
| Contradictions (CSV/Folder/Memory/Vision) | 10:253(CSV),265(HEX); 12:597,613; master 00:255 (CSV banned from RAG, ok in Data Analyst) |
| Documentation gaps (marketing processes, webhooks, compliance, Deep Research timing) | 12:750–769 |
| New knowledge files recommendation (Files 10/11/12) | 12:770–796 |

---

**Summary**: T3 synthesizes 128 marketing scenarios (file 10) + 160 FAQ questions across sections A–L (file 12) for DACH CMOs. Key findings: (1) CSV ≠ Folder — structured data requires Data Analyst, not RAG (authoritatively confirmed in master inventory/08: CSV/XLSX banned from RAG folders); (2) Vision limited to layout/legibility checks, not pixel-perfect color; (3) **Memory is per-user, opt-in, capped at 50, and disabled inside Agents** — several Agent scenarios that lean on Memory are mis-specified and should use Folders/Custom Instructions; (4) Missing Marketing-Stack templates, webhook data-mapping, and Betriebsrat compliance docs block rollout (gap analysis → recommended Files 10/11/12).

**Date-sensitive flags**: pricing figures in the FAQ (~€20/user/mo annual, 10% API markup, Workflow run packages) — verify against file 12/08 and master inventory, which currently disagree on the Business-Standard headline (€20 annual vs. €25 monthly) and Workflow add-on (€449 vs. €539–€1,199); see T6 §7 for the reconciliation. Model availability references (Claude/GPT routing) are as-of May 2026.
