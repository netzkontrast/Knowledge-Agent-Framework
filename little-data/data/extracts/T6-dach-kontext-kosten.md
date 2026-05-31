# T6 — DACH Marketing Context + Langdock Costs

## 1. DACH AI Marketing Adoption State (2025–2026)

**Concrete Statistics:**
- 41% of German enterprises adopt AI (Bitkom, May 2026)
- 61% report increased AI reliance (MaibornWolff, 2026)
- 98% of digital/creative agencies use generative AI (BVDW/Observatory, April 2025)
- 69% of agencies plan increased AI investment (BVDW, April 2025)
- 28% develop proprietary models; 54% customize/tune external models (PAGE Online, June 2025)

**Primary Use Cases:**
- Data analysis & optimization: 94% of agencies (BVDW)
- Creative ideation & design: 95% of agencies (BVDW)
- Outbound B2B marketing: 142% meeting rate increase, 50% cost reduction (Agentur Consulting, May 2026)
- B2C personalization: 59% higher purchase intent with AI-driven offers (UIM, May 2026)

**Gap:** Experimentation → Scaled Production. 59% of German AI users lack visibility on data processing location; agentic workflows require governance, not just LLM access.

## 2. DACH Regulatory Environment

**GDPR/DSGVO:**
- AVV (Data Processing Agreement) mandatory; prohibit model training on corporate data
- DSFA (Data Protection Impact Assessment) required for AI agents per DSK guidance
- BfDI warning: prevent "memorization" of personal data in foundational models

**EU AI Act Timelines:**
- Feb 2, 2025: Prohibitions & AI literacy obligations in force
- Aug 2, 2025: GPAI governance rules; grace period until Aug 2027 for existing models
- Aug 2, 2026 → Dec 2, 2026: Article 50 transparency/watermarking deadlines
- Dec 2, 2027: High-risk AI (HR recruiting, biometric analysis) deadline

**UWG (German Unfair Competition Act):**
- AI-generated synthetic media must be labeled ("KI-generierter Inhalt") if photorealistic/deceptive
- "AI Washing" (falsely marketing AI-powered services) is actionable consumer deception
- Disclosure required for AI influencers/testimonials per § 5a UWG

## 3. DACH MarTech Stack Patterns

**Global Leaders:** HubSpot, Salesforce MC, Adobe, Eloqua, Marketo, Pardot, Mailchimp, Dynamics.

**DACH-Native:** CleverReach, Inxmail, Brevo (Sendinblue), Mailjet, LoyJoy.

**Analytics:** GA4 (heavily scrutinized), Piwik PRO, Matomo, etomite (DSGVO-compliant).

**Integration Hub:** Make.com bridges Langdock to DACH tools via automation; MCP enables native Langdock connectivity.

## 4. DACH-Specific Brand Voice (Du/Sie, Localizations)

**German Formality:** "Sie" (formal) for B2B finance; "Du" (informal) for B2C lifestyle. Inconsistency destroys credibility.

**Regional Variants:**
- Swiss German: no "ß" (use "ss"), vocabulary shift (Velo, parkieren, Zmorgen vs. German: Fahrrad, parken, Frühstück)
- Austrian German: Jänner (Jan), Paradeiser (tomato)

**LLM Failure Modes:** Anglizismen, clunky passive voice, invented compound nouns, generic "cheerleader" tone (misaligned with DACH preference for direct, benefit-driven copy).

**Solution:** Centralized prompt libraries enforcing strict register constraints, pre-vetted localization templates per region.

## 5. Langdock Model Catalog (May 2026)

| Provider | Model | Input/1M | Output/1M | Region |
|---|---|---|---|---|
| Google | Gemini 2.5 Flash | €0.26 | €2.15 | EU |
| Google | Gemini 3.5 Flash | €1.29 | €7.73 | EU |
| OpenAI | GPT-5.2 | €1.50 | €12.03 | EU |
| OpenAI | GPT-5.4 Mini | €0.71 | €4.25 | EU |
| Anthropic | Haiku 4.5 | €0.86 | €4.30 | EU |
| Anthropic | Sonnet 4.6 | €2.58 | €12.89 | EU |
| Anthropic | Opus 4.8 | €4.30 | €21.48 | EU |
| Meta | Llama 3.3 70B | €0.61 | €0.61 | EU |
| Mistral | Large 3 | €0.43 | €1.29 | EU |
| DeepSeek | v3.1 | €0.85 | €3.38 | Global |

## 6. Cost Governance in Langdock

**Workspace Limits:** €500/month default (adjustable to €100k)

**Workflow Budget Controls:**
- Per-workflow default: €25/month
- Per-execution caps available
- Warn thresholds: 50%, 75%, 90%
- Max 2,000 steps/execution; absolute hard stop to prevent runaway costs

**Fair Usage Policy:**
- Session window: 5 hours
- Weekly window: Monday to Monday reset
- 250 messages per 3 hours (anti-spam)
- Automatic fallback to cheaper model (GPT-5.2) when limit exceeded
- Grace period for in-flight generations

**BYOK (Bring Your Own Key):** Direct cloud provider billing; Langdock charges platform fees only.

## 7. Langdock Pricing Tiers

| Tier | Price | AI Usage | Users |
|---|---|---|---|
| Trial | €5, 7 days | Limited | 1 |
| Business Standard | €25/user/mo | Standard | up to 1,000 |
| Business Max | €99/user/mo | 5× usage | up to 1,000 |
| Enterprise | Custom | Custom | 1,000+ |

Workflows add-on: €539–€1,199/mo/workspace (40k–100k runs).

## 8. Deployment Models (Cost Implications)

**Multi-Tenant SaaS** (Standard): EU Azure, logically isolated.

**Single-Tenant SaaS** (≥2,000 seats): Dedicated, physically isolated, Langdock-managed.

**BYOC** (≥5,000 seats): Bring Your Own Cloud (Azure/AWS/GCP); customer VPC, zero perimeter exit.

**On-Premise** (≥5,000 seats): Kubernetes via Helm; air-gapped, zero internet connectivity.

All EU-hosted by default; compliance: ISO 27001, SOC 2 Type II, GDPR, DSGVO.

## 9. Cost-Saving Patterns

- **Gemini 2.5 Flash for drafts:** €0.26/1M input (68% cheaper than Sonnet)
- **Sonnet 4.6 for polish:** €2.58/1M input (41% cheaper than Opus)
- **Opus only for strategy synthesis:** €4.30/1M input, use sparingly
- **Auto Mode WARNING:** Routes to expensive models (GPT-5 Pro, Opus) for complex tasks; set workspace cap for beginners
- **Code Node over LLM:** Deterministic transformations cost zero AI tokens

## 10. DACH Case Studies

- **Merck:** 33,000 monthly active users, federated governance model
- **GetYourGuide:** 70% workforce adoption via workflow integration, not isolated chat
- **Hofmann Personal:** 20,000 hours/year saved (proposal 2–3h → 30–45min; presentation 5h → 1–2h)
- **Ignite Group:** 10–20% productivity boost for knowledge workers
- **Laverana/lavera:** "Just ask EVA" campaign; personification lowers psychological barrier to entry

## 11. Key Takeaways for Marketing Directors

1. **Execute AVV + DSFA before deployment:** Legal infrastructure before technology.
2. **Federated governance:** Centralize billing/security (ISO 27001) while decentralizing agent creation and workflows.
3. **Connect AI to MarTech via MCP:** Chat → CRM/Inxmail/Piwik integration drives 142% ROI in outbound.
4. **Standardize DACH prompt libraries:** Du/Sie register, regional vocabulary, strict formatting rules.
5. **Invest in AI Champions:** Peer-led training reduces "Shadow AI" risk and accelerates adoption.
6. **Fair Usage + Workspace Caps:** Prevent runaway costs; Auto Mode can fire expensive models unintentionally.
7. **Model Selection:** Gemini Flash for speed, Sonnet for quality, Opus for strategy only.

---

**Sources:**
- Bitkom AI Study 2026 (May 2026)
- BVDW × Observatory (April 2025)
- Agentur Consulting (May 2026)
- Wettbewerbszentrale UWG Guideline (Feb 2026)
- Langdock Docs & Pricing (May 2026)
- Langdock Case Studies (langdock.com/case-studies)
- EU AI Act Timeline (artificialintelligenceact.eu)
- BfDI Data Protection Guidance (2025)
