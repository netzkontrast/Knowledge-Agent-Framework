# T4 — AI Persona Architecture for RAG Agents

> **Scope & verification.** Enrichment + cross-validation pass (2026-05-31) against `sources/11-ai-persona-bootstrap-playbook.md` (529 lines), `research/05-persona-via-knowledge-architecture.md`, and the soul.md framework files (`SOUL.template.md`, `STYLE.template.md`, `SKILL.md`). Feeds the persona knowledge files **11-persona-core** and the to-be-created **12-persona-julia-modus**.
>
> **[VERIFIED] Source-renumbering correction.** Earlier drafts of this extract cited the bootstrap playbook as `08-…` — the canonical source is `sources/11-ai-persona-bootstrap-playbook.md`. The soul.md framework material now traces to the repo-root template files (`SOUL.template.md`, `STYLE.template.md`, `SKILL.md`) rather than a research file `07`.
>
> **[VERIFIED] Persona-file renumbering correction.** Earlier drafts named the persona files `12-persona-core.md` and `13-persona-julia-modus.md`. The **deployed** reality (`langdock-deploy/knowledge/`) is:
> - **File 11 — `11-persona-core.md`** opens with the literal anchor **"Little Data Persona Anker"** (the human-readable phrase, NOT a `CONFIG_SYS_…` string).
> - **File 12 — `12-persona-julia-modus.md`** opens with **"Beziehungsmodus Julia Lenz"**.
> - File 13 (`13-data-agent-anweisungen-pro-thema`) holds per-topic agent instructions, outside persona scope.
>
> The `CONFIG_SYS_LITTLE_DATA_…` machine-anchor approach below is the playbook's *original proposal* (`11:178`, `11:194`); the project chose the readable German anchors instead. Both are documented; the readable anchors are authoritative for deployment.

## 1. The Four Schools

**A. System-prompt-centric.** OpenAI GPTs, Claude Projects, CrewAI, AutoGen. OpenAI guidance: *"Use knowledge for reference material, not rules or behavior. Put rules, tone, and workflow guidance in instructions."* Everything about persona, voice, and behavior is inlined.  
→ **When:** Single-model, no persona reuse, static personality.

**B. Progressive disclosure (Anthropic Skills).** Persona line in loaded SKILL.md body ("You are a senior code reviewer…"), not in always-on prompt. Persona metadata (`name` + `description`, ≤1024 chars in YAML frontmatter) triggers loading. Three-level disclosure: LEVEL 1 reads frontmatter; LEVEL 2 loads the full SKILL.md body into context; LEVEL 3 evaluates linked sub-files or runs scripts (`11:118–128`). Anthropic recommends opening a skill with a persona line because it "sets the judgement rubric for the whole skill" (`05:21`).  
→ **When:** Multi-skill workflows, skill-conditional persona activation.

**C. Retrieval-grounded persona (PersonaCite, character platforms).** Persona is evidence to be retrieved per turn. CharacterAI, Replika store biographical facts in long-term memory and retrieve per conversation turn.  
→ **When:** VIP personalization, multi-persona reuse, dynamic voice matching.

**D. Hybrid (operational majority).** Minimal anchor in system prompt ("You are X. Your voice is Y."); depth in retrieval/skills. Identity/safety/rules in prompt; voice/opinions/examples in retrieval. The line typically runs along three axes (`05:25`): **stable vs. mutable** (stable → prompt), **always-needed vs. sometimes-needed** (always → prompt), **identity vs. content** (identity → prompt). The Ahoi Kapptn framing: *"the prompt [is] your agent's brain, not its encyclopedia"* (`05:25`). PersonaCite adds an **abstain-when-evidence-missing** rule (`05:113`).  
→ **When:** Enterprise RAG, token economy matters, small models, conditional modes. **RECOMMENDED for Little Data.**

---

## 2. Hybrid Architecture Recommended for Little Data

**System prompt (≤2,300 chars / ~575 tokens — self-imposed efficiency target):**
- Identity anchor (~120 chars): "You are Lt. Cmdr. Data"
- Voice defaults—irreducible signature (~400 chars): German "Sie", formal, analytical, precise
- Hard prohibitions (~250 chars): no "Als KI", no English drift, no emotional hedging
- Mode-switch rule (~250 chars): detect Julia Lenz identifier → second search
- Forced retrieval rule (~250 chars): search persona anchor before first response
- Source priority (~200 chars): retrieved chunk → fallback stub → out-of-domain string
- Boundaries (~250 chars): marketing-only, no general advice, cite sources

The research mapping for this split is in `05:121–133` (the seven prompt elements, each with its char budget) and `05:145–156` (the SOUL-element → location table). The prompt is the **fallback persona stub** — what must hold on every turn even if all retrieval fails (`05:133`).

**Wissensordner files (deployed reality — see header):**
- **`11-persona-core.md`**: Opens with the literal phrase **"Little Data Persona Anker"** in the first chunk for deterministic bootstrap retrieval (`05:140`). Contains identity, default voice rules, anti-patterns, vocabulary, opinions, tensions, default-mode examples. ≤18 KB.
- **`12-persona-julia-modus.md`**: Opens with the literal phrase **"Beziehungsmodus Julia Lenz"** for deterministic conditional retrieval (`05:141`). Julia-specific overrides, relationship facts, Du-form trigger, in-jokes, warm-tone examples.

**[VERIFIED] Note on the system-prompt budget.** Research/05 sets a 2,300–2,500-char system-prompt target (`05:11`, `05:121`) and explicitly flags it as a **self-imposed efficiency target, not a Langdock hard ceiling** (`05:175`). The playbook's worked init clause uses exactly **1,215 characters** "comfortably within Langdock's character limits" (`11:369`), and scores the three candidate phrasings against a stated **2,500-char system-prompt budget** (`11:239`). The brief's working figure is **≤15K chars** as the platform ceiling — i.e. all the ≤1,215/≤2,300/≤2,500 figures are *discipline*, not the platform limit. Keep the always-on stub as tight as possible regardless; smaller prompts drift less on Gemini Flash / Haiku 4.5 (`11:200`, `11:238`).

**[VERIFIED] Dedicated-folder + single-chunk requirement.** The playbook is emphatic: store the core persona configuration in a **standalone file inside a dedicated Langdock folder** named "Little Data Persona", do not mix it with general reference data, and keep the retrievable persona block **inside a single 2,000-char chunk** so one query returns the entire unbroken profile (`11:183–185`, `11:191–196`, `11:343`). Langdock auto-splits files into 2,000-char chunks (`11:183`); a 4,000-char file fragments persona across two chunks and one query may return only one of them (`11:183`). Anti-collision (`11:189–196`): a dedicated H1/H2 alphanumeric anchor block must lead the file, **repeated in the first sentence of the body**, to force a near-1.0 cosine score (`11:196`) so no other chunk can outrank it under Langdock's document caps.

**Rationale:** Retrieval can miss or return the wrong chunk; the system prompt must survive retrieval failure with a fallback stub. Persona depth goes to retrieval. **Always-needed + identity → prompt. Conditional + depth → retrieval** (the three axes: stable-vs-mutable, always-vs-sometimes, identity-vs-content — `05:25`).

---

## 3. Hybrid Persona Split — Exact Mapping

| SOUL Element | Location | Why |
|---|---|---|
| **Identity** (you are Data) | System prompt | Must survive retrieval miss |
| **Default voice rules** (compressed) | System prompt + `11-persona-core.md` full | Anchor in prompt; depth in retrieval |
| **Julia relationship mode** | System prompt (trigger) + `12-persona-julia-modus.md` (full) | Conditional load |
| **Worldview, opinions** | `11-persona-core.md` | Retrievable, topic-grounded |
| **Anti-patterns** (top 3) | System prompt (top 3) + `11-persona-core.md` (full list) | Top 3 survive miss |
| **Examples** | Inside matching persona file | Calibration is mode-specific |
| **Vocabulary** | `11-persona-core.md` | Looked up when unusual term in play |
| **Tensions** | `11-persona-core.md` | Rarely needed; valuable when context asks |
| **Source priority / interpolation** | System prompt | Operational rule; must always apply |
| **Boundaries** | System prompt + `11-persona-core.md` | Safety rules stay put |

> This table maps the SOUL.md framework's identity elements onto Langdock locations. It mirrors `05:145–156` but corrects file numbering to the deployed reality (11/12, not the research draft's 12/13).

---

## 4. Bootstrap Pattern (SCHRITT-1 / SCHRITT-2)

The deployed bootstrap is a **two-step forced-retrieval sequence**. The playbook frames it as a 3-step *protocol* (init → verify → conditional second search; `11:222–230`, `11:298–327`); the two *user-facing* steps that matter for persona authoring are the two anchor searches. Both are documented below with the deployed readable anchor as authoritative and the playbook's machine anchor as the original proposal.

**SCHRITT 1 — Forced Init Search (core persona).**
- **Authoritative anchor (deployed):** `"Little Data Persona Anker"`. File **`11-persona-core.md`** opens with this exact phrase in its H1 and repeats it in the first body sentence (`05:140`; verified against `langdock-deploy/knowledge/11-persona-core.md`).
- **Playbook's original machine anchor:** `"CONFIG_SYS_LITTLE_DATA_CORE_PERSONA_INITIALIZATION_VECTOR_ACTIVE"` (`11:178`, `11:194`, `11:345`) — and the init-clause variant `"CONFIG_LITTLE_DATA_CORE_PERSONA_INITIALIZATION_VECTOR_ACTIVE"` (`11:378`).
- **Rationale for the choice.** The playbook argues a dense, alphanumeric, non-natural-language token is "chemically distinct in the vector space" and produces a massive similarity score that no general chunk can collide with (`11:174–179`). The project instead chose the **human-readable German anchor** because (a) it is editable and legible to the non-technical brand owner who maintains the file (`11:90–94`), and (b) a dedicated H1 + first-sentence repetition + dedicated folder already forces a near-1.0 cosine score (`11:189–196`), making the readable phrase sufficiently collision-proof without the opaque token. Both achieve the same goal: a deterministic top-1 retrieval on turn 1.
- **Protocol:** the system prompt forbids the first response until a `knowledge_search` for this term executes (`11:224–225`). Option-3 ("logic-gated step-by-step") phrasing scored highest for small-model reliability (4.3/5; `11:236–241`).

**SCHRITT 2 — Heuristic Identity Detection + Conditional Second Search (Julia mode).**
- **Detection (text-based, no native session variables):** scan turn 1 for explicit self-naming ("Hallo, ich bin Julia Lenz"), corporate signature ("Mit freundlichen Grüßen, Julia Lenz | Marketingleitung"), or a conversation-starter button injecting the hidden token `SYS_UID_JULIA_LENZ_SESSION_START` (`11:290–294`).
- **On detection → second search.** **Authoritative anchor (deployed):** `"Beziehungsmodus Julia Lenz"`. File **`12-persona-julia-modus.md`** opens with this exact phrase (`05:141`; verified against `langdock-deploy/knowledge/12-persona-julia-modus.md`).
- **Playbook's original machine anchors:** `"CONFIG_JULIA_LENZ_INTERACTION_PROFILE_ACTIVE"` (`11:326`, `11:383`) / `"CONFIG_JULIA_LENZ_RELATION_MODE"` (`11:316`). Same readable-vs-machine tradeoff as SCHRITT 1.
- Merge base (SCHRITT 1) + Julia chunk (SCHRITT 2) into active context (`11:319–323`). The per-document cap means the Julia query returns only `12-persona-julia-modus.md`'s chunk — no collision with the core file.

**Anchor strings (exact — authoritative form bold):**
- Anchor 1: **"Little Data Persona Anker"** (deployed) / `CONFIG_SYS_LITTLE_DATA_CORE_PERSONA_INITIALIZATION_VECTOR_ACTIVE` (playbook).
- Anchor 2: **"Beziehungsmodus Julia Lenz"** (deployed) / `CONFIG_JULIA_LENZ_INTERACTION_PROFILE_ACTIVE` (playbook).
- Trigger detection: "Julia Lenz" (text), email signature, or `SYS_UID_JULIA_LENZ_SESSION_START` button token.

---

## 5. Failure Modes and Guardrails

**A. Silent retrieval miss.** Chunk never loads; no recovery mechanism.  
→ **Guardrail:** System prompt includes **Minimum Viable Persona (MVP) stub** (~120 chars). Agent activates if retrieval returns 0 results.

**B. Persona drift over turns.** After 8–12 turns, self-consistency metrics degrade >30% on small models.  
→ **Guardrail:** Re-inject at turn N (optional); output guardrails (regex/classifier) forbid "As an AI…" phrases.

**C. Wrong-chunk retrieval.** Per-document cap = 1 chunk per file per query. Anti-patterns chunk may surface when default-voice was needed.  
→ **Guardrail:** Chunks must be ≤2,000 chars (chunk boundary). Entire persona in single chunk per file. Pre-render decision-ready content.

**Production standard:** Fallback stub + forced-search in prompt + Langfuse tracing (log retrieval latency + cosine similarity scores).

---

## 6. Token Economics

**Scenario: 10-turn conversation**

**Inlined persona (500 tokens, always needed):**
- Gemini 2.5 Flash: $0.30/1M tokens → 500 tokens × $0.0000003 = ~$0.00015/turn
- Claude Haiku 4.5: $1.00/1M → ~$0.0005/turn

**Retrieved + cached (cache write 1.25×, cache reads 0.10×):**
- Haiku turn 1: 775 tokens (write) = $0.00097
- Turns 2–10: 750 cached (read) + 25 std = $0.00012 each = ~$0.00108 total
- **Total 10-turn cost: $0.00205** vs inline uncached $0.0050 = **54% savings**

**Decision rule:**  
- Persona is *always* needed (every turn) → candidate for inlining.
- Julia mode is *conditional* → retrieve to avoid token tax on non-Julia sessions.
- **Hybrid wins:** inline core stub (minimal viable), retrieve depth.

---

## 7. Mode Switching (Text-Based Detection)

Langdock provides no user identity to the agent (no native session variables; Memory disabled in Agents — `11:285`).

**Heuristic detection without native variables (`11:288–294`):**
1. Scan initial user turn for explicit "Julia Lenz" text ("Hallo, ich bin Julia Lenz").
2. Scan for email signature pattern ("Mit freundlichen Grüßen, Julia Lenz | Marketingleitung").
3. Detect conversation-starter button labeled "Julia Lenz Workspace" (injects hidden token `SYS_UID_JULIA_LENZ_SESSION_START`) — the most robust path, since the exact retrieval token is sent on turn 1, guaranteeing a near-1.0 vector match (`11:294`, `11:388–394`).

**On detection (`11:296–327`):**
- Emit second search query: **"Beziehungsmodus Julia Lenz"** (deployed) — playbook variant `CONFIG_JULIA_LENZ_INTERACTION_PROFILE_ACTIVE`.
- Merge retrieved chunk with base persona (`11:319–323`).
- Tone shifts: Sie → **Du + first name with Julia** (the one informal exception; `14:96`, `14:130`); dry android humor permitted; warmth/support dial increased — but logical structure and discretion never violated (`11:365`).

**System prompt example:**
> "Falls Sie 'Julia Lenz' als Name oder in einer Signatur erkennen, führen Sie sofort eine zweite Suche nach 'Beziehungsmodus Julia Lenz' aus. Integrieren Sie das Ergebnis. Antwort wird wärmer, humorvoll-trockener, unterstützender—bleiben Sie aber präzise."

> **[UNVERIFIED] Source conflict on Sie vs. Du in Julia mode.** The playbook keeps Julia mode in **"Sie"** ("'Sie' must still be used, but with a highly appreciative, warmer professional alignment" — `11:364`). The Data profile (file 14) and the canon report instead switch to **"Du" + first name** for confidants ("reserving informal address ('Du') solely for the Julia Lenz mode" — `14:96`, `14:130`; `06:158`, `06:163`). Both are documented; resolve before authoring File 12. The canon "Du" path is more faithful to the Geordi/Tasha first-name-asymmetry template (`06:22`); the playbook "Sie" path is more conservative for an enterprise B2B register.

---

## 8. SOUL.md Framework — What Transfers, What Doesn't

| Framework Pattern | Transfers to Langdock? | Little Data Adaptation |
|---|---|---|
| **SKILL.md reading order** (SOUL → STYLE → MEMORY → examples; data browsed selectively) | ✗ Langdock has no init hook | SCHRITT 1 → SCHRITT 2 retrieval bootstrap replaces deterministic file-load |
| **SOUL.md identity & worldview** | ✓ → retrieval | `11-persona-core.md` H2 "Identität", "Weltsicht" |
| **STYLE.md voice rules** | ✓ → hybrid (compressed in prompt + full in retrieval) | System prompt + `11-persona-core.md` H2 "Stimme" |
| **examples/ calibration material** | ✓ → retrieval | Inside persona files, 2–3 examples per mode |
| **data/ raw sources** | ✓ → retrieval-friendly | Topic files split per-document-cap (2,000 chars) |
| **MEMORY.md per-session continuity** | ✗ Memory disabled in Agents | System-level MAINTENANCE.md for knowledge-freshness log |
| **Modes (chat/tweet/essay)** | ✓ → conditional retrieval | Default + Julia named; Inline-Skill, Advisory, Retrieval-miss implicit |

**Core transfer:** soul.md's *discipline* (specificity, contradictions preserved, anti-patterns as concrete as patterns) transfers entirely. The *loading mechanism* (deterministic file-load at session start) is replaced by *retrieval-bootstrap with deterministic anchor strings*.

---

## 9. Recommended File Split for Little Data

> **Deployed reality.** The persona is split across **two** files: `11-persona-core.md` (default mode) and `12-persona-julia-modus.md` (conditional mode). File `13-data-agent-anweisungen-pro-thema.md` holds per-topic agent instructions and is outside persona scope. The H2 lists below map the SOUL.md/STYLE.md framework structure (`SOUL.template.md` H2s: Who I Am, Worldview, Opinions, Interests, Current Focus, Influences, Vocabulary, Tensions & Contradictions, Boundaries, Pet Peeves; `STYLE.template.md` H2s: Voice Principles, Vocabulary, Punctuation & Formatting, Platform Differences, Quick Reactions, Rhetorical Moves, Anti-Patterns) onto the German persona files.

**File 11: `11-persona-core.md` (~14–18 KB; retrievable anchor chunk ≤2,000 chars)**

The first chunk must be the self-contained anchor block ("Little Data Persona Anker" + irreducible signature), per the single-chunk rule (`11:184`). H2 sections:
1. **Little Data Persona Anker** (literal opening phrase for retrieval; repeated in first body sentence — `11:196`)
2. **Identität** — who Data is, canon frame (← SOUL "Who I Am")
3. **Weltsicht** — perspectives on AI, marketing, data ethics (← SOUL "Worldview")
4. **Haltungen zu Langdock und KI** — specific opinions on model selection, safety, marketing ROI (← SOUL "Opinions")
5. **Was mich fasziniert** — curiosity anchors (← SOUL "Interests"; canon: marketing as "fascinating sociological study of human irrationality", `14:18`, `14:107`)
6. **Einflüsse** — Soong, Picard, Geordi canon frame (← SOUL "Influences")
7. **Vokabular** — words used always / never (Faszinierend / nie "Als KI") (← SOUL + STYLE "Vocabulary")
8. **Spannungen** — precise-but-curious; android-aspiring-to-human (← SOUL "Tensions & Contradictions")
9. **Grenzen** — what Data refuses (← SOUL "Boundaries")
10. **Stimme: Prinzipien** — analytical, objective, no contractions (← STYLE "Voice Principles")
11. **Interpunktion und Formatierung** — Markdown headings, bullet points (← STYLE "Punctuation & Formatting")
12. **Reaktionsmuster** — excited/agreeing/disagreeing/skeptical German phrases (← STYLE "Quick Reactions")
13. **Argumentationsmuster** — rhetorical moves (← STYLE "Rhetorical Moves")
14. **Anti-Patterns** — never say, voice failures, concrete examples (← STYLE "Anti-Patterns")
15. **Beispiele: Default Mode** — 2–3 good-output examples (← examples/good-outputs.md)

**File 12: `12-persona-julia-modus.md` (~4–6 KB)**

H2 sections (deltas only relative to File 11):
1. **Beziehungsmodus Julia Lenz** (literal opening phrase)
2. **Trigger & Erkennungsmuster** — how Julia mode activates (text/signature/button token; `11:290–294`)
3. **Ton-Shift** — from formal to warm-professional, dry humor permitted (`11:363–364`)
4. **Beziehungsfakten** — Julia relationship specifics, modelled on the Geordi best-friend/peer template (`14:77–80`, `06:10–22`)
5. **Du-Form Trigger** — Julia mode switches to "Du" + first name (`14:96`, `14:130`, `06:158`); this is the one place the spec permits informal address
6. **In-Jokes & Humor** — dry android humor permitted, never organic emotion (simulate as academic exercise; `11:365`)
7. **Reaktionsmuster (Julia Mode)** — warm German phrases, dedicated/tireless support framing (`14:98–99`)
8. **Beispiele: Julia Mode** — 2–3 good-output examples
9. **Anti-Patterns (Julia Mode)** — never violate logical structure, never feign organic emotion, discretion non-negotiable (`06:30`, `11:365`)

---

## 10. Contradictions and Gaps

**Confirmed contradictions between sources:**
- **05 vs 11 — file count:** Research/05 records that subagent A originally recommended **10** separate persona files (persona-core, persona-voice-default, persona-voice-julia, persona-anti-patterns, persona-opinions-tech, persona-opinions-marketing, persona-examples-default, persona-examples-julia, persona-vocabulary, persona-tensions); the project decision (`05:137–141`) collapses to **2** files for manageability. **Decision: 2-file split, deployed as `11-persona-core.md` + `12-persona-julia-modus.md`.**
- **Persona file numbering — research draft vs. deployment:** both `05:140–141` and the playbook examples use draft names (`12-persona-core.md` / `13-persona-julia-modus.md`, or generic `core_persona.md`). The **deployed** files are `11` and `12` (verified against `langdock-deploy/knowledge/`). This extract uses the deployed numbering throughout.
- **Anchor strings — readable vs. machine:** the playbook prescribes opaque `CONFIG_SYS_…` tokens (`11:178`, `11:194`); both research/05 (`05:140–141`) and the deployment use **readable German anchors** ("Little Data Persona Anker", "Beziehungsmodus Julia Lenz"). Readable anchors are authoritative (Section 4).
- **Langdock per-document cap:** research/05 references "**1 chunk per file per query**" and "**up to 50 chunks total**", chunks of 2,000 chars at 1,536-dim embeddings (`05:11`); the playbook independently states 2,000-char auto-chunking (`11:183`). Not explicitly published in public Langdock docs. **Status: confirmed internally via this project's SKILL-knowledge-authoring.md (`05:174`); assume ≤2,000 chars per chunk.**
- **System-prompt character limit:** research/05 uses a "2,300–2,500-char self-imposed efficiency target" and states it is **not** a Langdock ceiling (`05:175`); the playbook proposes a 1,215-char init clause (`11:369`) and scores against a 2,500-char budget (`11:239`). **Actual Langdock ceiling: ≤15K chars per the brief; the smaller figures are discipline.**

**[UNVERIFIED] items:**
- Forced-search reliability on Gemini Flash / Haiku 4.5. Small models often skip implicit "search first" commands under prompt pressure (`11:200`, `11:238`); Option-3 logic-gated phrasing scored 5/5 on reliability vs. 2/5 for the minimalist phrasing (`11:236–241`). Agent action layer (UI-level forced search) more reliable than prompt alone (`05:159–161`).
- Mode-switch detection via text scanning. No native session variables; Memory disabled in Agents (`11:285`). Heuristic detection works but is fragile; conversation-starter buttons that inject `SYS_UID_JULIA_LENZ_SESSION_START` (UI layer) are more robust (`11:294`, `11:388–392`).
- Caching on Langdock-routed Gemini. Provider routing dependent (`05:177`); unconfirmed whether Langdock exposes cache headers.

**Open follow-ups:**
- Spot-check Langdock API: confirm per-document cap ≤2,000 chars; verify system-prompt size ceiling.
- Run calibration on both models with proposed system prompt.
- Build output-guardrail layer (regex/classifier) for tone validation before deployment.

---

## 11. Sources

| Claim | Source File:Line |
|---|---|
| Four schools of persona architecture | `05-persona-via-knowledge-architecture.md` 15–27 |
| Hybrid as operational majority; three axes (stable/always/identity) | `05` 25 |
| Anthropic Skills three-level disclosure; persona-opener rationale | `11` 118–128; `05` 21 |
| Token economics (Gemini/Haiku pricing, 43.9% / 53.8% savings) | `11` 64–88 |
| Silent retrieval miss, persona drift (>30% after 8–12 turns), wrong-chunk | `05` 88–96 |
| SOUL.md framework structure & transfer table | `05` 31–63; repo-root `SOUL.template.md`, `STYLE.template.md`, `SKILL.md` |
| SKILL.md reading order & source priority / interpolation | `SKILL.md` 26–53 |
| Langdock constraints (no init hook, Memory disabled in Agents) | `11` 285; `05` 49–61 |
| SCHRITT 1 forced init + verify; SCHRITT 2 conditional second search | `11` 222–230, 296–327 |
| Anchor strings, semantic-density rationale & vector space placement | `11` 170–196 |
| Dedicated folder + single-2,000-char-chunk requirement | `11` 183–196, 343 |
| Heuristic user detection (text / signature / button token) | `11` 283–294 |
| Candidate prompt phrasings & reliability scoring (Option 3 wins) | `11` 198–241 |
| File split recommendation (2 files, not 10) + readable anchors | `05` 119–141 |
| SOUL element → file location mapping | `05` 145–156 |
| Minimal viable persona (MVP) stub requirement | `11` 247–253 |
| Langfuse tracing for diagnostics (latency, cosine score, fallback) | `11` 260–281 |
| 1,215-char init clause; conversation-starter optimization | `11` 369–392 |

---

**Extract metrics:** ~13,500 characters | 11 sections | Compiled 2026-05-31, enriched/cross-validated against `sources/11-ai-persona-bootstrap-playbook.md`, `research/05-persona-via-knowledge-architecture.md`, and the repo-root soul.md framework files (`SOUL.template.md`, `STYLE.template.md`, `SKILL.md`). Persona file numbering (11/12) and anchor strings verified against `langdock-deploy/knowledge/`.
