# Persona-via-Knowledge for RAG Agents — Research Report

> **Source:** Internal `sc-deep-research` subagent run, 2026-05-31
> **Trigger:** Spec F11/F12 (Initial Knowledge Search + persona file split) — needed empirical evidence on whether to inline persona in the system prompt or retrieve it from knowledge.
> **Read internally:** the soul.md framework files (SOUL.template.md, STYLE.template.md, SKILL.md, examples/_GUIDE.md, README.md, BUILD.md) + Anthropic Skills + OpenAI Custom GPTs + CrewAI + AutoGen + LangGraph + research literature.

---

## Goal

Determine the best architectural split for "Little Data" — a German Langdock advisor agent with persona Lt. Cmdr. Data, two modes (default formal-Data, Julia Lenz warm-Data-with-humor), 2300–2500 char system-prompt budget, running on small models (Gemini 2.5 Flash, Haiku 4.5), with a Langdock Wissensordner that retrieves at most **1 chunk per file per query** and **up to 50 chunks total**, chunks of 2,000 chars at 1,536-dim embeddings.

---

## 1. How production RAG platforms handle persona storage

The boundary between "system-prompt content" and "retrieved content" is now a real architectural decision. Four schools have emerged:

**A. System-prompt-centric (everything inlined).** OpenAI Custom GPTs, Claude Projects, Cursor Rules, CrewAI agent YAML, AutoGen `system_message`. OpenAI's own guidance: *"Use knowledge for reference material, not rules or behavior. Put rules, tone, and workflow guidance in instructions."* CrewAI bakes the persona into `role`, `goal`, `backstory` — the backstory "shapes how the LLM approaches problems," treated as instruction.

**B. Progressive disclosure (Anthropic Skills).** Anthropic Skills explicitly separate "what's in the system prompt" (just `name` + `description`, ≤1024 chars in YAML frontmatter) from "what gets loaded when relevant" (the SKILL.md body). Anthropic recommends opening a skill with a persona line ("You are a senior code reviewer focused on correctness over style") because it "sets the judgement rubric for the whole skill." Persona lives in the *loaded* skill body — not in the always-on system prompt — and the model relies on the description metadata to know *when* to pull it in.

**C. Retrieval-grounded persona (PersonaCite, PersonaRAG, character platforms).** Research-grade systems and consumer companions push further: persona is evidence to be retrieved per turn. PersonaCite *"retrieves actual voice-of-customer artifacts during each conversation turn, constrains responses to retrieved evidence, [and] explicitly abstains when evidence is missing."* Character.AI and Replika store the persona's biographical/relational facts in long-term memory stores and retrieve them as conversation context.

**D. Hybrid (the operational majority).** Most production deployments keep a minimal anchor in the system prompt ("You are X. Your voice is Y.") and offload depth (worldview, opinions, relationship contexts, anti-patterns) to either skills, project knowledge files, or RAG indices. The Ahoi Kapptn essay frames it: *"the prompt [is] your agent's brain, not its encyclopedia."* The line typically runs along three axes: **stable vs. mutable** (stable in prompt), **always-needed vs. sometimes-needed** (always in prompt), and **identity vs. content** (identity in prompt).

**Where the line runs in practice:** identity/role/safety guardrails/tool-use rules → system prompt; voice details, opinions, domain knowledge, examples, relationship-mode lookup → retrieval.

---

## 2. The SOUL.md framework — what it does and what transfers

**Hierarchical decomposition of "personality" into files, each owning one aspect:**

| File | Owns | Purpose |
|---|---|---|
| **SOUL.md** | Identity, worldview, opinions, interests, current focus, influences, vocabulary, tensions, boundaries, pet peeves | The "WHO" |
| **STYLE.md** | Voice principles, vocabulary used/avoided, punctuation/formatting habits, platform differences, quick reactions, rhetorical moves, anti-patterns | The "HOW" |
| **SKILL.md** | Operating instructions: reading order, source priority, modes (default/tweet/chat/essay), anti-patterns | The "PROTOCOL" |
| **examples/good-outputs.md + bad-outputs.md** | Calibration material | The "SOUND CHECK" |
| **data/** | Raw source material | The "EVIDENCE" |
| **MEMORY.md** | Session log | The "CONTINUITY" |

**How it solves the "predict the take on a new topic" problem:**
1. Specific opinions over vague positions
2. Interpolation protocol in SKILL.md (four-level source priority)
3. Tensions & Contradictions section captures real-people inconsistency

**What's transferable to Langdock vs. what's Claude-Code-specific:**

| SOUL element | Claude Code | Langdock |
|---|---|---|
| **SKILL.md operating instructions** | Loads at session start | **Must be inlined in system prompt** — Langdock doesn't auto-load |
| **SOUL.md identity body** | Loaded in full once | Will fragment across chunks; retrieval pulls 1 chunk per file per query |
| **STYLE.md voice rules** | Loaded once | Must either inline (small, hot-path) or chunk-by-topic |
| **examples/** | Browsed wholesale | Must be split into multiple files; only top-matching example retrieved |
| **data/ raw sources** | Browsed selectively | Naturally fits as multi-file RAG corpus |
| **MEMORY.md** | Read at start, appended | Langdock has no equivalent — disabled in Agents |
| **Modes (chat/tweet/essay)** | Switch within session prompt | Each mode needs its own file |

The Claude-Code-specific assumption that breaks in Langdock is *deterministic file-load-order at session start*. SKILL.md says "Reading order: SOUL.md → STYLE.md → MEMORY.md → examples/ → data/." Langdock has no equivalent — every retrieval is query-conditioned. So the SOUL framework's *files* are transferable, but its *loading discipline* is not.

The framework's authoring discipline (specificity, contradictions, anti-patterns, never-break-character) transfers directly. The SKILL.md operating principles should become the spine of the Langdock system prompt — those are the rules retrieval cannot replace.

---

## 3. Token economics — inline vs. retrieved

A 2,000-character persona file ≈ **500 tokens** (German ~3.5–4.0 chars/token).

**Per-turn cost on Gemini 2.5 Flash ($0.30 / 1M input):**
- *Inlined:* 500 × $0.30/1M = **$0.00015/turn**.
- *Retrieved via RAG:* comparable input cost, plus retrieval call overhead (latency, not chat tokens).

**Per-turn cost on Claude Haiku 4.5 ($1.00 / 1M input):**
- *Inlined:* 500 × $1.00/1M = **$0.0005/turn**.
- *With Anthropic prompt caching:* cache writes 1.25× base, cache reads 0.10×. Break-even at ≥2 reads in the 5-minute cache window.

**Cheaper per turn:**
- Short and one-shot: inlining wins.
- Multi-turn with caching: inlining + caching wins decisively.
- Many conditional modes: RAG wins because you don't pay for unused modes.

**For Little Data:** persona is *always* needed (every turn must sound like Data); Julia mode is *conditional*. The economic answer is hybrid — inline the always-needed core, retrieve the conditional mode definitions. The real cost is **latency** (RAG adds round-trip) and **reliability** (a retrieval miss = a personality miss).

---

## 4. Failure modes — what happens when persona retrieval misses

Three documented failure classes:

**A. Silent retrieval miss.** Classic RAG returns *something* whether or not the query was a good match. *"When retrieval fails in classic RAG, the model has no recovery mechanism and generates the best output it can from whatever came back."* For a persona agent: agent responds in default-LLM voice, not in-character.

**B. Persona drift over turns.** *"After 8–12 dialogue turns, persona self-consistency metrics degrade by more than 30%, even when context remains intact."* Small models drift faster.

**C. Wrong-chunk retrieval.** Per-document cap means the wrong slice of personality may surface — e.g., "anti-patterns" chunk returned when "default voice" was needed.

**Production guardrails:**
- **System-prompt fallback persona stub** (universal pattern).
- **Forced first-turn retrieval ("init action").** Either via a workflow node OR via system prompt instruction.
- **Circuit breakers / retry with fallback.**
- **Output guardrails for tone** — regex/classifier for forbidden phrases ("As an AI…").
- **Re-injection at turn N** to fight drift.

---

## 5. Hybrid patterns — three documented examples

**Anthropic Skills:** description in prompt; full SKILL.md body loaded when relevant. Persona opener inside skill body, not in always-on prompt.

**Claude Projects:** custom instructions hold identity/rules; knowledge files hold reference material. *"Project instructions set the rules. The knowledge base provides the reference material."*

**PersonaCite:** minimal anchor + abstain-when-missing rule in system prompt; voice-of-customer artifacts retrieved per turn; responses constrained to retrieved evidence.

Pattern across all three: the **trigger** and the **bounding rule** live in the system prompt; the **content** lives in retrieved/loaded files. Inversion of the naive "persona goes in system prompt" model.

---

## 6. Recommendation for Little Data — the operational split

### System prompt (≤2,300 chars / ≈575 tokens)

Hold only what must be true on **every turn even if retrieval fails**:

1. **Identity anchor** (~120 chars)
2. **Voice defaults — the irreducible Data signature** (~400 chars)
3. **Hard prohibitions / anti-patterns** (~250 chars)
4. **Mode switch rule** (~250 chars)
5. **Forced retrieval rule** (~250 chars)
6. **Source priority** (~200 chars)
7. **Boundaries** (~250 chars)

This is the **fallback persona stub**: if every retrieval fails, the agent still sounds like Data.

### Wissensordner files

Subagent A originally recommended 10 separate persona files (persona-core, persona-voice-default, persona-voice-julia, persona-anti-patterns, persona-opinions-tech, persona-opinions-marketing, persona-examples-default, persona-examples-julia, persona-vocabulary, persona-tensions).

**Project decision (in this spec):** consolidate to **2 persona files** to keep total file count manageable, with explicit anchor strings for retrieval reliability:
- `12-persona-core.md` — Identity, default voice rules, anti-patterns, vocabulary, opinions, tensions, default-mode examples. Opens with the literal phrase **"Little Data Persona Anker"** in the first chunk for deterministic bootstrap retrieval.
- `13-persona-julia-modus.md` — Julia Lenz mode: warmth dials, humor permission, relationship facts, Du-form trigger, in-jokes, Julia-mode examples. Opens with the literal phrase **"Beziehungsmodus Julia Lenz"** for deterministic conditional retrieval.

### Where SOUL aspects live

| SOUL element | Location | Why |
|---|---|---|
| **Identity (you are Data)** | System prompt | Must survive retrieval miss |
| **Default voice rules** | System prompt (compressed) + `12-persona-core.md` (full) | Anchor in prompt; depth in retrieval |
| **Julia relationship mode** | System prompt (trigger rule) + `13-persona-julia-modus.md` (full) | Conditional load |
| **Worldview, opinions** | `12-persona-core.md` | Retrievable |
| **Anti-patterns** | System prompt (top 3) + `12-persona-core.md` (full) | Top 3 must survive miss |
| **Examples** | Inside the matching persona file | Calibration material is mode-specific |
| **Vocabulary** | `12-persona-core.md` | Looked up when unusual term in play |
| **Tensions** | `12-persona-core.md` | Rarely needed but valuable |
| **Source priority / interpolation rules** | System prompt | Operational, must always apply |

### Forced-load mechanism

Two layers (small models unreliable about "search first"):
1. **Langdock Agent action layer.** Where possible, configure a forced search action.
2. **System-prompt instruction layer.** Explicit "search for persona-core first" rule (recommended phrasing in `04-rag-bootstrap-session-start-patterns.md`, the companion report).

### Mode switching for Julia Lenz

Implement as a query-conditioned retrieval:
- System prompt detects "Julia Lenz" identification → emits second search query "Beziehungsmodus Julia Lenz"
- Langdock returns `13-persona-julia-modus.md` (only file optimized for that query thanks to per-document cap)
- Julia mode file overrides default rules in-place

---

## Uncertainties to flag

1. **Langdock per-document cap.** Confirmed in this project's own SKILL-knowledge-authoring.md; public Langdock docs don't explicitly publish it. Verify via API spot-check before deployment.
2. **System-prompt char limit on Langdock.** 2500-char is a self-imposed efficiency target, not a Langdock ceiling.
3. **Forced-search reliability on Gemini Flash and Haiku 4.5.** Small models routinely skip "search first" instructions. Agent action layer is more reliable than prompt alone.
4. **Caching on Langdock-routed Gemini.** Provider-routing-dependent.
5. **Mode-switch detection.** Open product decision: chat phrase, session variable, or separate agent entirely.

## Open follow-ups

- Verify Langdock per-document cap with Search-API spot-check.
- Decide whether Julia mode is triggered by chat phrase, session header, or separate agent.
- Run calibration on Gemini Flash and Haiku 4.5 with the proposed system prompt.
- Build output-guardrail layer (regex/classifier) for forbidden phrases as deployment requirement.

## Key sources

- [Anthropic — Equipping agents with Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills)
- [Anthropic — Skill authoring best practices](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices)
- [OpenAI — Knowledge in GPTs](https://help.openai.com/en/articles/8843948-knowledge-in-gpts)
- [Claude Project Instructions Examples](https://www.jdhodges.com/blog/claude-project-instructions-examples/)
- [CrewAI Agents](https://docs.crewai.com/en/concepts/agents)
- [Ahoi Kapptn — From Long Prompt to RAG](https://ahoikapptn.com/en/blog/from-long-prompt-to-rag-how-to-build-robust-ai-agents-with-your-knowledge-base)
- [Mindra — Designing AI Agent Personas](https://mindra.co/blog/designing-ai-agent-personas-system-prompts-enterprise)
- [PersonaCite — arXiv 2601.22288](https://arxiv.org/pdf/2601.22288)
- [PersonaRAG — arXiv 2407.09394](https://arxiv.org/pdf/2407.09394)
- [Persona Drift — arXiv 2402.10962](https://arxiv.org/html/2402.10962v1)
- [Towards Data Science — Agentic RAG Failure Modes](https://towardsdatascience.com/agentic-rag-failure-modes-retrieval-thrash-tool-storms-and-context-bloat-and-how-to-spot-them-early/)
- [Salesforce — Why AI Agents and RAG Pipelines Fail](https://www.salesforce.com/blog/ai-agent-rag/)
- [Langdock — Knowledge Basics](https://docs.langdock.com/resources/knowledge/knowledge-basics)
- [Langdock — Agent Configuration](https://docs.langdock.com/product/agents/configuration)
- [DigitalOcean — Prompt Caching for Anthropic and OpenAI](https://www.digitalocean.com/blog/prompt-caching-with-digital-ocean)
- soul.md framework files (in repo): SOUL.template.md, STYLE.template.md, SKILL.md, examples/_GUIDE.md, README.md, BUILD.md
