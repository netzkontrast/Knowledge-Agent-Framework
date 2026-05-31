# T3 — Marketing-Praxis & Use Cases

## 1. Marketing Functions (14 Functions)
Content Marketing, SEO & Organic, Performance/Paid, Brand & Creative, Social Media, CRM & Lifecycle, ABM, PR & Mediarelations, Market Research, Marketing Operations, Analytics & Reporting, Event Marketing, Localization, Internal Enablement. Each leverages AI for content synthesis, semantic search, bulk automation, vision analysis, or workflow orchestration. **10-1–270**

---

## 2. Top-20 Quick Wins

| # | Trigger | Feature | Time Saved |
|---|---------|---------|-----------|
| 1 | Newsletter due | Scheduled Workflow + Web Search | 2h/wk |
| 2 | Blog finished, teasers needed | Workflow (URL→Agent→Copy) | 1h |
| 3 | 100 meta-descriptions missing | Workflow-Loop + Sheets | 6h |
| 4 | SEO audit unreadable | Agent (jargon→Jira) | 1h |
| 5 | Content gap vs. competitors | Agent + Web Search + Folder | 3h |
| 6 | Campaign post-mortem | Data Analyst (CSV→narrative) | 4h |
| 7 | Freelancer brief | Workflow (Jira→Google Docs) | 1h |
| 8 | Ad-copy variants | Agent (Prompt Library) | 2h |
| 9 | Case-study transcript | Chat + Memory | 4h |
| 10 | 60-second video script | Agent + Brand Folder | 2h |
| 11 | Creative fatigue in Meta | Data Analyst | 3h |
| 12 | 200 missing alt-texts | Workflow-Loop + Vision | 5h |
| 13 | 10 local landing pages | Workflow-Loop + Agent | 15h |
| 14 | Evergreen content dated | Canvas + Web Search | 2h |
| 15 | Tagline brainstorm | Chat (50+ variants) | 4h |
| 16 | Social brand-tone check | Agent (Brand Guardian) | 1h |
| 17 | Keyword clusters | Data Analyst + CSV | 5h |
| 18 | Whitepaper structure | Canvas + Folder | 3h |
| 19 | Competitive SERP brief | Agent + Web Search | 3h |
| 20 | Podcast run-of-show | Chat + File | 1.5h |

**Sources: 10:10–270 (S-001–S-043 primary scenarios)**

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
26-28: Business plan pricing, BYOK vs. bundled, spending limits. **12:544–583**

### Compliance (2)
29-30: EU data hosting, zero-training guarantee. **12:589–628**

**Source: 12:26–695 (160-question corpus; top-30 extracted by frequency)**

---

## 6. Failure Modes

| Issue | Impact | Mitigation |
|-------|--------|-----------|
| Hallucinated stats | Claim liability; regulatory risk | Web-Search required; "verified sources only"; fact-check loop |
| Duplicate content penalty | SEO deindex | Sentence-structure variation, not just find-replace |
| OCR quality loss (scans) | Search index fails | Use Chat+File-Attach, not Folder-RAG for poor scans |
| Character-count overflow (ads) | Cut-off; low performance | Char-counter column; manual trim audit |
| CSV formatting errors | Data Analyst crashes | Pre-clean data; explicit error handling in prompt |
| API rate-limit exceeded | Workflow stalls; costly retry | Batch ≤50 requests/min for Folder API |
| Off-brand outputs | Consistency gaps | Agent+Folder attachment mandatory; Memory for templates |
| Keyword stuffing (SEO) | Spam penalty | "Natural description first" in prompt |
| Memory pollution | Old campaigns infect new prompts | Deactivate Memory globally per project |
| Folder file-limit (1K) | Silent indexing failure | Archive old files; split folders by topic |

**10:S-001–S-043 (pitfalls per scenario); 12:700–723 (edge cases)**

---

## 7. Contradictions & Gaps

### Internal Conflicts
- **CSV in Folders**: File 10 says no direct upload (10:253); File 12 clarifies Data Analyst handles CSV, not Folder-RAG (12:758). → **Resolution**: Folders = semantic RAG text only; CSV → Data Analyst.
- **Vision Limits**: File 10 claims Vision for alt-text (S-025); File 10 later says Vision cannot read exact HEX codes (S-042). → **Resolution**: Vision ok for layout/content; not pixel-perfect.
- **Memory Transparency**: File 12 says Memory deactivatable for GDPR (12:742), but File 10 doesn't flag this control. → **Gap**: Governance UI not clearly documented.

### Documentation Gaps
1. **Practical Marketing Process Guidance**: File 02 (agent config) lacks brand-voice-prompt templates (12:754).
2. **Webhook Mapping**: File 06 (workflows) missing HubSpot/GA4/Slack-specific templates (12:763).
3. **DACH Compliance Kits**: File 09 (GDPR) lacks Works-Council (Betriebsrat) pre-approval docs (12:767).
4. **Multi-Sheet Excel Handling**: Data Analyst lacks best-practice for 10+ sheets (12:762).
5. **Deep Research Timing**: Not documented: 5–30min duration, 15 runs/month limit (12:432–450).

### Recommended New Files
- **File 10**: Marketing Stack Integration Playbook (CRM pagination, lead-qualification sequences).
- **File 11**: DACH Compliance & Works-Council Kit (monitoring proof, access-control mirrors).
- **File 12**: Advanced Data Analyst Guide (multi-sheet Excel, Python chart export).

**12:750–796**

---

## Sources

| Section | Reference |
|---------|-----------|
| 14 marketing functions, 128 scenarios (S-001–S-043) | 10-langdock-marketing-scenarios-catalog.md:1–270 |
| Quick wins (S-001,002,004,006,014,016,018,025,026,027,029,031,034,035) | 10:scattered |
| Cross-cutting scenarios | 10:270–283; 12:392–510 |
| Atomic skills (50 tasks) | 10:160–270 (embedded) |
| FAQ corpus (160 Qs, top-30 extracted) | 12:26–749 |
| Failure modes (hallucination, OCR, limits) | 10:S-001–S-043 pitfalls; 12:700–723 |
| Contradictions (CSV/Folder/Memory/Vision) | 10:253,262; 12:758,742 |
| Documentation gaps (marketing processes, webhooks, compliance, Deep Research timing) | 12:754,763,767,762,432–450 |
| New knowledge files recommendation | 12:770–796 |

---

**Summary**: T3 synthesizes 128 marketing scenarios + 160 FAQ questions for DACH CMOs. Key findings: (1) CSV ≠ Folder (structured data requires Data Analyst, not RAG), (2) Vision limited to layout checks, not pixel-perfection, (3) Missing Marketing Stack templates & Betriebsrat compliance docs block rollout, (4) Memory governance not transparent. **Estimated 10.8 KB, focused on actionable extraction.**
