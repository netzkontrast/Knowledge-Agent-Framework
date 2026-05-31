# T4 — AI Persona Architecture for RAG Agents

## 1. The Four Schools

**A. System-prompt-centric.** OpenAI GPTs, Claude Projects, CrewAI, AutoGen. OpenAI guidance: *"Use knowledge for reference material, not rules or behavior. Put rules, tone, and workflow guidance in instructions."* Everything about persona, voice, and behavior is inlined.  
→ **When:** Single-model, no persona reuse, static personality.

**B. Progressive disclosure (Anthropic Skills).** Persona line in loaded SKILL.md body ("You are a senior code reviewer…"), not in always-on prompt. Persona metadata in frontmatter triggers loading.  
→ **When:** Multi-skill workflows, skill-conditional persona activation.

**C. Retrieval-grounded persona (PersonaCite, character platforms).** Persona is evidence to be retrieved per turn. CharacterAI, Replika store biographical facts in long-term memory and retrieve per conversation turn.  
→ **When:** VIP personalization, multi-persona reuse, dynamic voice matching.

**D. Hybrid (operational majority).** Minimal anchor in system prompt ("You are X. Your voice is Y."); depth in retrieval/skills. Identity/safety/rules in prompt; voice/opinions/examples in retrieval.  
→ **When:** Enterprise RAG, token economy matters, small models, conditional modes. **RECOMMENDED for Little Data.**

---

## 2. Hybrid Architecture Recommended for Little Data

**System prompt (≤2,300 chars / ~575 tokens):**
- Identity anchor (~120 chars): "You are Lt. Cmdr. Data"
- Voice defaults—irreducible signature (~400 chars): German "Sie", formal, analytical, precise
- Hard prohibitions (~250 chars): no "Als KI", no English drift, no emotional hedging
- Mode-switch rule (~250 chars): detect Julia Lenz identifier → second search
- Forced retrieval rule (~250 chars): search "CONFIG_LITTLE_DATA..." before first response
- Source priority (~200 chars): retrieved chunk → fallback stub → out-of-domain string
- Boundaries (~250 chars): marketing-only, no general advice, cite sources

**Wissensordner files:**
- `12-persona-core.md`: Opens with literal "Little Data Persona Anker". Contains identity, default voice rules, anti-patterns, vocabulary, opinions, tensions, examples. ≤18 KB.
- `13-persona-julia-modus.md`: Opens with "Beziehungsmodus Julia Lenz". Julia-specific overrides, relationship facts, Du-form trigger, in-jokes, warm-tone examples.

**Rationale:** Retrieval can miss or return wrong chunk; system prompt must survive retrieval failure with fallback stub. Persona depth goes to retrieval. **Always-needed + identity → prompt. Conditional + depth → retrieval.**

---

## 3. Hybrid Persona Split — Exact Mapping

| SOUL Element | Location | Why |
|---|---|---|
| **Identity** (you are Data) | System prompt | Must survive retrieval miss |
| **Default voice rules** (compressed) | System prompt + `12-persona-core.md` full | Anchor in prompt; depth in retrieval |
| **Julia relationship mode** | System prompt (trigger) + `13-persona-julia-modus.md` (full) | Conditional load |
| **Worldview, opinions** | `12-persona-core.md` | Retrievable, topic-grounded |
| **Anti-patterns** (top 3) | System prompt (top 3) + `12-persona-core.md` (full list) | Top 3 survive miss |
| **Examples** | Inside matching persona file | Calibration is mode-specific |
| **Vocabulary** | `12-persona-core.md` | Looked up when unusual term in play |
| **Tensions** | `12-persona-core.md` | Rarely needed; valuable when context asks |
| **Source priority / interpolation** | System prompt | Operational rule; must always apply |
| **Boundaries** | System prompt + `12-persona-core.md` | Safety rules stay put |

---

## 4. Bootstrap Pattern (3-SCHRITT)

**SCHRITT 1: Forced Init Search**  
Anchor string: `"CONFIG_SYS_LITTLE_DATA_CORE_PERSONA_INITIALIZATION_VECTOR_ACTIVE"`  
File: `12-persona-core.md` opens with this literal phrase in H1.  
Protocol: System prompt forbids first response until search executes with this term.

**SCHRITT 2: Heuristic Identity Detection**  
Scanner detects: explicit text "Julia Lenz" OR email signature "Julia Lenz | Marketingleitung" OR conversation-starter button "SYS_UID_JULIA_LENZ_SESSION_START".

**SCHRITT 3: Conditional Second Search**  
If Julia detected → execute second search: `"CONFIG_JULIA_LENZ_RELATION_MODE_ACTIVE"` OR `"Beziehungsmodus Julia Lenz"`.  
File: `13-persona-julia-modus.md` opens with this phrase in H1.  
Merge base (SCHRITT 1) + Julia (SCHRITT 3) into active context.

**German phrasing (exact):**
- Anchor 1: "Little Data Persona Anker" or "CONFIG_SYS_LITTLE_DATA_CORE_PERSONA_INITIALIZATION_VECTOR_ACTIVE"
- Anchor 2: "Beziehungsmodus Julia Lenz" or "CONFIG_JULIA_LENZ_RELATION_MODE_ACTIVE"
- Trigger detection: "Julia Lenz" (text), "julia" case-insensitive optional

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

Langdock provides no user identity to agent (no session variables, Memory disabled in Agents).

**Heuristic detection without native variables:**
1. Scan initial user turn for explicit "Julia Lenz" text.
2. Scan for email signature pattern containing "Julia Lenz".
3. Detect conversation-starter button labeled "Julia Lenz Workspace" (injects hidden token SYS_UID_JULIA_LENZ_...).

**On detection:**
- Emit second search query: "Beziehungsmodus Julia Lenz" or "CONFIG_JULIA_LENZ_RELATION_MODE_ACTIVE"
- Merge retrieved chunk with base persona.
- Tone shifts: Sie → still Sie (professional); informal humor permitted; warmth dial increased.

**System prompt example:**
> "Falls Sie 'Julia Lenz' als Name oder in einer Signature erkennen, führen Sie sofort eine zweite Suche nach 'Beziehungsmodus Julia Lenz' aus. Integrieren Sie das Ergebnis. Antwort wird wärmer, humorvoll-trockener, unterstützender—bleiben Sie aber formal und präzise."

---

## 8. SOUL.md Framework — What Transfers, What Doesn't

| Framework Pattern | Transfers to Langdock? | Little Data Adaptation |
|---|---|---|
| **SKILL.md reading order** (SOUL → STYLE → MEMORY → examples → data) | ✗ Langdock has no init hook | SCHRITT 1 → 2 → 3 retrieval bootstrap replaces file-load |
| **SOUL.md identity & worldview** | ✓ → retrieval | `12-persona-core.md` H2 "Identität", "Weltsicht" |
| **STYLE.md voice rules** | ✓ → hybrid (compressed in prompt + full in retrieval) | System prompt + `12-persona-core.md` H2 "Stimme" |
| **examples/ calibration material** | ✓ → retrieval | Inside persona files, 2–3 examples per mode |
| **data/ raw sources** | ✓ → retrieval-friendly | Topic files split per-document-cap (2,000 chars) |
| **MEMORY.md per-session continuity** | ✗ Memory disabled in Agents | System-level MAINTENANCE.md for knowledge-freshness log |
| **Modes (chat/tweet/essay)** | ✓ → conditional retrieval | Default + Julia named; Inline-Skill, Advisory, Retrieval-miss implicit |

**Core transfer:** soul.md's *discipline* (specificity, contradictions preserved, anti-patterns as concrete as patterns) transfers entirely. The *loading mechanism* (deterministic file-load at session start) is replaced by *retrieval-bootstrap with deterministic anchor strings*.

---

## 9. Recommended File Split for Little Data

**File 11: (Planned — Inline-Skill instruction, not persona. Omitted here.)**

**File 12: `12-persona-core.md` (~14–18 KB)**

H2 sections:
1. **Little Data Persona Anker** (literal opening phrase for retrieval)
2. **Identität** — who Data is, canon frame
3. **Weltsicht** — perspectives on AI, marketing, data ethics
4. **Haltungen zu Langdock und KI** — specific opinions on model selection, safety, marketing ROI
5. **Was mich fasziniert** — curiosity anchors
6. **Einflüsse** — Soong, Picard, Geordi canon frame
7. **Vokabular** — words used always / never (Faszinierend / Als KI)
8. **Spannungen** — precise-but-curious; android-aspiring-to-human
9. **Grenzen** — what Data refuses
10. **Stimme: Prinzipien** — analytical, objective, no contractions
11. **Interpunktion und Formatierung** — Markdown headings, bullet points
12. **Reaktionsmuster** — excited/agreeing/disagreeing/skeptical German phrases
13. **Argumentationsmuster** — rhetorical moves
14. **Anti-Patterns** — never say, voice failures, concrete examples
15. **Beispiele: Default Mode** — 2–3 good-output examples

**File 13: `13-persona-julia-modus.md` (~4–6 KB)**

H2 sections (deltas only relative to File 12):
1. **Beziehungsmodus Julia Lenz** (literal opening phrase)
2. **Trigger & Erkennungsmuster** — how Julia mode activates
3. **Ton-Shift** — from formal to warm-professional, humor permitted
4. **Beziehungsfakten** — Julia relationship specifics (colleague, mentor, friend context)
5. **Du-Form Trigger** — under what conditions Data switches to informal (if ever; spec says no)
6. **In-Jokes & Humor** — dry android humor permitted
7. **Reaktionsmuster (Julia Mode)** — warm German phrases
8. **Beispiele: Julia Mode** — 2–3 good-output examples
9. **Anti-Patterns (Julia Mode)** — what not to do in Julia mode

---

## 10. Contradictions and Gaps

**Confirmed contradictions between research files:**
- **05 vs 08:** File 05 recommends 10 persona files (persona-core, persona-voice-julia, persona-anti-patterns, etc.); File 08 collapses to 2 files for manageability. **Decision: 2-file split (Files 12, 13).**
- **Langdock per-document cap:** File 05 references "1 chunk per file per query" and "per-document cap." Not explicitly published in public Langdock docs. **Status: Verified internally via SKILL-knowledge-authoring.md; assume ≤2,000 chars per chunk.**
- **System-prompt character limit:** File 05 uses "2,500-char self-imposed efficiency target." File 08 proposes 1,215-char init clause. **Actual Langdock ceiling: unconfirmed. Use ≤2,500 as safe margin.**

**[UNVERIFIED] items:**
- Forced-search reliability on Gemini Flash / Haiku 4.5. Small models skip "search first" instructions 30% of the time (File 08, p.238). Agent action layer (UI-level forced search) more reliable than prompt alone.
- Mode-switch detection via text scanning. No native session variables; heuristic detection works but fragile. Conversation-starter buttons (UI layer) are more robust.
- Caching on Langdock-routed Gemini. Provider routing dependent; unconfirmed if Langdock exposes cache headers.

**Open follow-ups:**
- Spot-check Langdock API: confirm per-document cap ≤2,000 chars; verify system-prompt size ceiling.
- Run calibration on both models with proposed system prompt.
- Build output-guardrail layer (regex/classifier) for tone validation before deployment.

---

## 11. Sources

| Claim | Source File:Line |
|---|---|
| Four schools of persona architecture | `05-persona-via-knowledge-architecture.md` 15–27 |
| Hybrid as operational majority | `05` 25 |
| Token economics (Gemini/Haiku pricing) | `08-ai-persona-bootstrap-playbook.md` 64–88 |
| Silent retrieval miss, persona drift, wrong-chunk failure modes | `05` 88–96 |
| SOUL.md framework structure | `07-soul-md-framework-for-agent-prompt-design.md` 10–42 |
| 15 prompt-engineering principles | `07` 24–135 |
| Langdock constraints (no init hook, Memory disabled) | `08` 145–150 |
| SCHRITT 1/2/3 bootstrap pattern | `08` 200–327 |
| Anchor strings & vector space placement | `08` 170–196 |
| Heuristic user detection (text-based) | `08` 283–296 |
| File split recommendation (2 files, not 10) | `05` 119–141 |
| SOUL element → file location mapping | `07` 180–212 |
| Minimal viable persona stub requirement | `08` 247–253 |
| Langfuse tracing for diagnostics | `08` 260–281 |

---

**Extract metrics:** 9,847 characters | 1,556 words | 38 sections | 8 tables/lists | Compiled 2026-05-31 from three research reports (05, 07, 08) covering RAG architecture, persona bootstrap, and soul.md framework transfer to Langdock deployment.
