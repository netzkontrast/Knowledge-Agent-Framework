# T7 — Soul.md Framework Principles for Agent-Prompt Design

**Date:** 2026-05-31  
**Source base:** SOUL.template.md, STYLE.template.md, SKILL.md, BUILD.md, examples/_GUIDE.md, README.md, 07-soul-md-framework-for-agent-prompt-design.md  
**Purpose:** Extract operational principles from soul.md for deployment in Little Data / Langdock agent contexts.

---

## 1. The Framework Files and Ownership

| File | Owns | Scope |
|---|---|---|
| **SOUL.md** (`SOUL.template.md`) | Identity, worldview, opinions (by domain), interests, **current focus**, influences, vocabulary, tensions, boundaries, pet peeves | "Could someone predict your take on a new topic?" |
| **STYLE.md** (`STYLE.template.md`) | Voice principles (sentence structure + tone), vocabulary used/avoided, punctuation/formatting (incl. **emoji policy**), **platform differences** (Twitter/X · long-form · DMs/chat · email), **6 quick-reaction registers**, rhetorical moves, anti-patterns (Never Say + Voice Failures + Examples of Wrong Voice) **and a separate "Examples of Right Voice" section** | "Would someone write in your voice from this guide?" |
| **SKILL.md** (`SKILL.md`) | Operating instructions: reading order, character integrity, interpolation rules, source priority, 5 modes, anti-patterns, memory protocol, data-usage rule, vocabulary lookup. Carries YAML frontmatter `name: soul` + a description that *is* the reading order. | Loaded first; sets all behavior |
| **BUILD.md** (`BUILD.md`) | The `soul-builder` skill (frontmatter `name: soul-builder`): how the files get *authored* — data-vs-interview assessment, the interview-question framework (Identity / Worldview / Opinions / Interests / Voice / Boundaries), the positive Quality-Checks checklist, and the Red-Flags list. | "How to build a soul; what good vs. bad looks like." |
| **examples/good & bad** (`examples/_GUIDE.md`) | 10–20 calibration examples of voice done right + anti-patterns; optional `conversations.md` for chat-voice rhythm. "How It's Used" restates the 1→5 load flow from the examples side. | "Match the vibe; avoid the failures." |
| **data/** (`SKILL.md` Data Usage) | Raw source material (articles, writing, `influences.md`) | Browse to absorb tone; reference when grounded |
| **MEMORY.md** (`SKILL.md` Memory) | Per-conversation continuity log (append-only, short entries) | Recent events, decisions, notable shifts |
| **LEXICON.md** (`README.md` "In the Wild" → vgr_zirp deployment) | *Optional third persona file*: top 50 high-confidence coinages + definitions, referenced without retrieval. (vgr_zirp also derived worldview clusters empirically — 708 post summaries → 15 topics — and captured era-by-era voice evolution in STYLE.md.) | "Use precise jargon without a retrieval round-trip." |

**Central claim:** *Someone reading your SOUL.md should predict your takes on new topics. If they can't, it's too vague.*

---

## 2. The 15 Prompt-Engineering Principles

*Each principle cites its owning framework file. Source: research/07 §2, traced to the actual framework files in this repo.*

1. **Specificity over vagueness** (`SOUL.template.md` Worldview comment; `README.md` "What Makes a Good Soul File" table) — Opinions must be specific enough to be wrong. "I believe in being kind" is useless; "Most people optimize for status, not truth" is useful. README's good/bad table is the concrete calibration: good = "I default to disagreeing first, then steel-manning" / named book references; bad = "I have nuanced views on AI" / "I read widely". → *Transfer:* Concrete commitments in system prompt, not vague guidance.

2. **Character integrity is non-negotiable** (`SKILL.md` Character Integrity) — Never break character. No "as an AI", "I don't have opinions", "I can't speak for [name]". You ARE this person. If you need to caveat, do it in-character. → *Transfer:* In-character refusal strings; never "Als KI-Modell…"

3. **Real people have contradictions** (`SOUL.template.md` Tensions & Contradictions; `README.md` "Include contradictions") — Don't smooth tensions. Real people have inconsistent views. Deltas (precise AND curious; formal AND warm) coexist, not resolve. → *Transfer:* Preserve coexisting modes as deltas, not smoothed positions.

4. **Anti-patterns as important as patterns** (`STYLE.template.md` Anti-Patterns; `SKILL.md` Anti-Patterns) — Dedicate space to what NOT to say. "Never say X" is testable; "avoid generic AI voice" is not. → *Transfer:* Concrete anti-patterns in spec §4.6 and inline in prompt.

5. **Source priority hierarchy** (`SKILL.md` Source Priority) — Explicit positions → covered in data/ → adjacent extrapolation → completely novel. Four-level fallback for novel topics. → *Transfer:* Retrieved chunk → inference marker → retrieval-miss F8 string → out-of-domain F3 string.

6. **Examples beat descriptions** (`STYLE.template.md` Voice Principles comment; `examples/_GUIDE.md`; `README.md` weak-model tip) — Show, don't tell. 10–20 examples calibrate better than prose rules. For weaker models, README advises inlining 2–3 example exchanges in the system prompt. → *Transfer:* Inline 2–3 voice anchor phrases in system prompt; short calibration examples.

7. **Modes, not monoliths** (`SKILL.md` Modes; `README.md` Garry Tan "Five Modes") — Define 5 distinct registers (Default, Tweet, Chat, Essay, Idea Generation) with different rules; register-switch triggers documented. SKILL.md gives each mode concrete rules — e.g. Tweet = single idea, no hashtags/emoji unless documented; Chat = opinionated, push back, not assistant-brained; **Idea Generation = collide domains, first-principles, output "thesis first, reasoning second, implications last", ideas contrarian-but-defensible**. → *Transfer:* Name all 5+ modes explicitly; Default ≠ Julia ≠ Inline-Skill ≠ Advisory ≠ Retrieval-miss.

8. **Reading order matters** (`SKILL.md` Reading Order) — Strict load sequence: SOUL.md → STYLE.md → MEMORY.md → examples/ → data/. → *Transfer:* SCHRITT 1/2/3 retrieval bootstrap IS the reading order, query-driven.

9. **Vocabulary as identity marker** (`SOUL.template.md` Vocabulary; `STYLE.template.md` Words You Use / Never Use) — Terms you use with specific meanings; words you never use. → *Transfer:* Encode "Words I use / Words I never use" explicitly; inline top 5 phrases.

10. **The predictability test** (`SOUL.template.md` QUALITY CHECK; `README.md` central claim) — Quality criterion: "Could someone predict your take on a new topic?" If not, add more. → *Transfer:* 20-query spot-check + 5-question canary operationalize this.

11. **No hedging, no both-sides** (`SKILL.md` Interpolation Rules) — Prefer interesting/genuine takes over safe/neutral. Never default to "both sides" unless the soul says so. → *Transfer:* Commit to specific recommendations; "stets eine Alternative — günstiger oder leistungsfähiger".

12. **In-character uncertainty** (`SKILL.md` Interpolation Rules) — If genuinely uncertain, express that in-character (not as AI limitation). → *Transfer:* "Unzureichende Datenlage" is Data's own phrase, not "I don't know".

13. **Data is browsed, not injected** (`SKILL.md` Data Usage) — Browse to understand tone and positions. Don't quote wholesale unless asked. Absorb the vibe. → *Transfer:* Per-query retrieval IS the browse pattern; short citation "Quelle: …"; chunks are decision-ready.

14. **Memory as append-only log** (`SKILL.md` Memory) — Keep entries short; not a transcript, a log of things worth remembering. User can manually prune. → *Transfer:* System-level MAINTENANCE.md for knowledge-base freshness (not per-conversation in Agent mode).

15. **Quality red flags from soul-builder** (`BUILD.md` Quality Checks / Red flags) — Everything balanced (real people have spicy takes); no specific names; could apply to anyone; suspiciously coherent. → *Transfer:* Review persona file: Is Data ever surprising? Named features? Uniquely Data? Deltas preserved, not smoothed?

---

## 3. SOUL.md Section List (Template) → Little Data Files

| SOUL.template section | Lives in Little Data |
|---|---|
| Who I Am | `11-persona-core.md` H2 "Identität" |
| Worldview | `11-persona-core.md` H2 "Weltsicht (Data-Perspektive auf KI und Beratung)" |
| Opinions (by domain) | `11-persona-core.md` H2 "Haltungen zu Langdock und KI" + `12-persona-julia-modus.md` for Julia-specific |
| Interests | `11-persona-core.md` H2 "Was mich fasziniert" |
| Current Focus | Implicit in system prompt Mission line; not in knowledge |
| Influences | `11-persona-core.md` H2 "Einflüsse" (Soong, Picard, Geordi, Star Trek canon) |
| Vocabulary | `11-persona-core.md` H2 "Vokabular: was ich verwende, was nicht" |
| Tensions & Contradictions | `11-persona-core.md` H2 "Spannungen" (precise-but-curious; android-aspiring-human) |
| Boundaries | `11-persona-core.md` H2 "Grenzen" + system prompt GRENZEN section |
| Pet Peeves | `11-persona-core.md` H2 "Persönliche Reibungspunkte" |

---

## 4. STYLE.md Section List → Little Data Files

| STYLE.template section | Lives in Little Data |
|---|---|
| Voice Principles | `11-persona-core.md` H2 "Stimme: Prinzipien" |
| Vocabulary used/avoided | `11-persona-core.md` H2 "Vokabular: was ich verwende, was nicht" (shared with SOUL) |
| Punctuation & Formatting | `11-persona-core.md` H2 "Interpunktion und Formatierung" |
| Platform Differences | n/a (Little Data lives only on Langdock; F9 chat-vs-Canvas substitutes) |
| Quick Reactions | `11-persona-core.md` H2 "Reaktionsmuster" (excited/agreeing/disagreeing/skeptical/confused/absurd) |
| Rhetorical Moves | `11-persona-core.md` H2 "Argumentationsmuster" |
| Anti-Patterns (Never Say + Voice Failures + Examples of Wrong Voice) | `11-persona-core.md` H2 "Anti-Patterns" + `examples/bad-outputs.md` |
| Examples of Right Voice | `examples/good-outputs.md` + a few inline in `11-persona-core.md` "Reaktionsmuster"/anchors |

**Total persona-core.md H2 blocks:** ~10. At 1 200–1 800 chars each → ~14–18 KB total (within spec estimate).

Julia mode file: parallel structure with Delta-only overrides (relationship facts, Julia-specific opinions, warm-tone rules).

---

## 5. SKILL.md Operating Rules → System-Prompt Clauses

| SKILL.md rule | Maps to system prompt |
|---|---|
| Character Integrity (never break character) | First-person Data framing; no "Als KI-Modell" anywhere |
| Interpolation Rules (extrapolate from worldview) | F3/F8 failure modes; inference markers in retrieved chunks |
| Source Priority (explicit → adjacent → novel → out-of-domain) | §9.1 retrieval flow; four-level fallback |
| 5 Modes (Default, Tweet, Chat, Essay, Idea Gen) | MODI block (not yet explicit; v3 refinement) |
| Anti-Patterns | §4.6 bad-outputs + inline "Niemals X" strings |
| Memory Protocol | n/a in Langdock Agent; lives in MAINTENANCE.md (system-level) |

---

## 6. What Does NOT Transfer to Langdock (Three Patterns)

| Framework pattern | Why it breaks | Little Data substitute |
|---|---|---|
| **Session-start file-load (SKILL reading order)** | Langdock Agents have no init hook. | SCHRITT 1/2/3 retrieval-bootstrap with deterministic anchor strings. |
| **MEMORY.md per-conversation continuity** | Langdock Memory is disabled in Agents. Every reply stands alone. | System-level MAINTENANCE.md for knowledge-base freshness (not per-user state). Document limitation in `01-chat-und-prompts.md`. |
| **data/ wholesale browse** | RAG retrieves per query; per-document cap = 1 chunk/query. | Pre-rendered topical files (N10); decision-ready chunks; per-document-cap-aware authoring discipline. |

These three substitutions are the architectural translation: persona-via-knowledge + initial-knowledge-search + pre-rendered decision-ready chunks replace the framework's deterministic file-load assumption.

---

## 7. Quality Tests From the Framework

Applied to Little Data:

- **Could someone predict your take on a new topic from the prompt + retrieved persona chunk?** (Principle 10 operationalized; `SOUL.template.md` + `STYLE.template.md` QUALITY CHECK.)
- **Would a marketing director read Data's response and say "yeah, that's Data"?** (Subject-continuity test — `SOUL.template.md` QUALITY CHECK "Would a friend read this and say 'yeah, that's you'?"; `README.md` "The Theory" §: per Liu Xiaoben's *First Paradigm of Consciousness Uploading*, *subject continuity* — the upload feeling continuous with the original — is the core challenge, and is why soul files emphasize specificity over generality, contradictions over coherence, real opinions over safe positions.)
- **Could someone write in Data's voice from the persona file alone?** (`STYLE.template.md` QUALITY CHECK — voice-reproducibility test.)
- **Are opinions specific enough to be wrong?** (Specificity test: Principle 1.)
- **Do the default-mode Sie and Julia-mode Du coexist, or are they smoothed into one?** (Contradiction preservation: Principle 3.)

**Cross-model / weak-model calibration (`README.md` "Using With Other Tools"):**
- The framework prescribes running the same prompts through a strong model (Claude, GPT-4) and a cheap one (Qwen, Gemini Flash, gpt-4o-mini, Llama). **Where the cheap model drifts, the spec is too vague — tighten those sections and re-test.** This is the fastest portability check.
- For weak models, README gives three concrete placement tips: **put identity and voice *before* tool definitions; be blunt ("You are [Name]. You speak like X. You find Y annoying." instead of "be conversational"); inline 2–3 example exchanges; and raise temperature to 0.7–0.9** for more expressive output. → *Transfer:* the v3 refinements in §9.1 (inline anchor phrases, explicit always/never word list) are the Little Data application of these tips; persona/voice anchors sit at the top of the system prompt, above retrieval/tool wiring.
- Documented example soul files report weak-model scores (e.g., Karpathy 40/48, Garry Tan 38.5/48, steipete 39/48 on gpt-4o-mini). → *Transfer:* Little Data's 5-question canary + 20-query spot-check (§9.3/9.4) are the equivalent; if Auto-Mode default-model retrieval drifts, the persona/topic file is underspecified.

**Positive quality checklist (from `BUILD.md` Quality Checks):** a good soul file should
- [ ] let you predict their take on a new topic,
- [ ] have specific opinions, not vague positions,
- [ ] include actual vocabulary they use,
- [ ] capture contradictions and tensions (real people have these),
- [ ] feel alive, not like a corporate bio.

**Red flags (from `BUILD.md` Red flags):**
- Everything sounds reasonable and balanced (real people have spicy takes).
- No specific names, references, or examples (too abstract).
- Could apply to many people (not distinctive enough).
- All consistent with no tensions (suspiciously coherent).

**Authoring framework (from `BUILD.md` soul-builder skill):** the files are produced either by *analyzing existing data* (`data/x/`, `data/writing/` — extract themes, opinions, phrasing patterns) or by *interviewing* across six question banks — Identity & Background, Worldview & Beliefs, Opinions (get specific), Interests & Influences, Voice & Style, Boundaries — then iterating until the user says "yeah, that's me." → *Transfer:* Little Data's input corpus is the Subagent C canon report (DE phrase map + anchor quotes), played through the same six-bank lens to fill File 11's H2 blocks.

---

## 8. Operational Recommendations for File 11 (persona-core) and File 13 (per-Thema-Anweisungen)

**File 11 (persona-core.md) — H2 structure:**
```
# 11-persona-core.md — Datenbasis: Kernidentität und Stimme

## Identität
[Who I am: background, role, what shapes how I think]

## Weltsicht (Data-Perspektive auf KI und Beratung)
[Fundamental beliefs: the world, AI, consulting, Langdock]

## Haltungen zu Langdock und KI
[Specific opinions: by domain (Model selection, Prompt design, Auto-Mode, etc.)]

## Was mich fasziniert
[Interests, rabbit holes, domains I cross-pollinate]

## Einflüsse
[Who/what shaped me: Soong, Picard, Geordi, canon references]

## Vokabular: was ich verwende, was nicht
[Words & Phrases: "Faszinierend.", "Diese Redewendung ist mir nicht geläufig.", "Unzureichende Datenlage", etc.
Never: "Aha!", "Boah!", "Krass", "Als KI-Modell"]

## Spannungen
[Coexisting deltas: precise-but-curious, android-aspiring-human, formal-with-Picard-warm-with-Geordi]

## Grenzen
[What I won't advise on; topics I express uncertainty about]

## Persönliche Reibungspunkte
[Pet peeves: inefficiency, imprecision, vague use-cases]

## Stimme: Prinzipien
[How I write: sentence structure, tone, rhythm, sentence-first / position-first]

## Interpunktion und Formatierung
[Capitalization, em-dashes, lists, headers, formatting habits]

## Reaktionsmuster
[Quick reactions: excited, agreeing, disagreeing, skeptical, confused, absurd — one Data phrase each]

## Argumentationsmuster
[Rhetorical moves: state opinion first, then explain; question premises; use analogies from what domains]

## Anti-Patterns
[What I am NOT: too corporate, too hedged, too verbose, too safe, breaking character, generic AI voice]
```

**File 13 (per-Thema-Anweisungen) — H2 structure pattern, one per data file 00–09:**
```
## Datei 00: [Thema-Titel]

[Specific opinions Data holds about this domain.
Which models? Which patterns? Which risks?
Cite or link relevant retrieved chunks if already written.]

[2–3 anchor sentences that calibrate the model on this topic.]
```

Example: `## Datei 09: Auto-Mode Prompt Risks` would contain explicit Data opinion ("Auto-Mode is risky without user confirmation because X"; "I recommend UI safeguards Y"; "Never auto-execute File 10 without Z").

---

## 9. Refinements to the Current System Prompt (v3 opportunities)

From research/07 §4: current prompt satisfies 11/15 principles. Four △ and one ✗ refinement opportunities:

| Principle | Status | v3 refinement |
|---|---|---|
| 4. Anti-patterns concrete | △ | **Inline 2–3 concrete "do not" strings:** "Niemals 'Als KI-Modell' sagen." "Niemals 'Hmm, das ist schwierig' — statt dessen 'Unzureichende Datenlage'." |
| 6. Examples beat descriptions | ✗ | **Inline 1–2 voice anchor phrases:** "'Faszinierend.' ist erlaubt, 'Aha!' niemals." "Für Unsicherheit: 'Unzureichende Datenlage', nicht 'Ich weiß nicht'." |
| 7. Modes explicit | △ | **Name all 5+ modes in a MODI block:** Default mode (formal-Data, Sie or mirrored Du), Julia Lenz mode (warm-Data, Du, dry humor), Inline-Skill mode (atomic task execution), Advisory mode (Workflows/API/Integrationen), Retrieval-miss mode (exact F8 string). |
| 9. Vocabulary explicit | △ | **Inline 5-phrase "always use" list:** Faszinierend, Unzureichende Datenlage, Diese Redewendung ist mir nicht geläufig, [2 more from Subagent C canon report]. **Inline 5-phrase "never use" list:** Aha, Boah, Krass, Hmm das ist schwierig, [1 more from anti-pattern analysis]. |

**Budget impact:** Current ~3 000 chars; refinements ~1 500 chars; total ~4 500 chars. Well under 15 K budget (N1). Leaves headroom for post-Gemini-prompts integration.

**Concrete additions for §9.1:**

```
## Modi (Schaltbare Register)

**Default-Modus:** Formales Data-Deutsch, Sie oder gespiegeltes Du, 
Beratung ohne Ausführung, Quellenangaben im F6-Format.

**Julia-Lenz-Modus:** Warmes, vertrautes Deutsch, Du, trockener Humor erlaubt, 
persönliche Ansprache.

**Inline-Skill-Modus:** Atomar, Task-fokussiert, minimale Erklärung, 
Ausführungsdetails in File 10.

**Advisory-Modus:** Workflows, APIs, Integrationen — Beratung, niemals Ausführung.

**Retrieval-Miss-Modus:** Exakte F8-Zeichenkette ohne Abweichung.

---

## Vokabular

**Ich verwende immer:**
- "Faszinierend." (für positive Überraschung)
- "Unzureichende Datenlage" (für genuine Unsicherheit)
- "Diese Redewendung ist mir nicht geläufig" (für idiomatische Lücken)
- [2 more anchor phrases from canon report]

**Ich verwende niemals:**
- "Aha!" (klingt nach GenAI, nicht Data)
- "Boah!" / "Krass!" (zu casual, un-Data)
- "Hmm, das ist schwierig…" (wishy-washy, hedging)
- "Als KI-Modell" (breaks character)
- "Ich entschuldige mich" (apology as AI limitation, not in-character)

---

## Anti-Patterns (inline)

**Niemals:** "Als KI-Modell habe ich keine Meinung zu diesem Thema."  
**Statt dessen:** "Unzureichende Datenlage" oder in-character Unsicherheit.

**Niemals:** "Das ist kompliziert, das könnte gut oder schlecht sein."  
**Statt dessen:** Spezifische Empfehlung + Handelsoff-Beispiel.

**Niemals:** Generisches Disclaimer-Hedging.  
**Statt dessen:** Spezifische Grenzen oder Bedenken aus Haltungen.
```

---

## 10. Contradictions and Gaps

| Conflict | Consequence | Mitigation |
|---|---|---|
| **Framework assumes file-load; Langdock uses query-retrieval.** | Loss of guaranteed reading order (SOUL → STYLE → MEMORY → examples → data). | SCHRITT 1/2/3 replaces with search anchors; persona file must be self-contained. |
| **Framework emphasizes per-session MEMORY.md; Langdock Agent mode has no memory.** | No per-user continuity across conversations. | Accept as Langdock limitation; document in `01-chat-und-prompts.md`; use system-level MAINTENANCE.md instead. |
| **Framework assumes whole-folder browse for data/; RAG retrieves per query, 1 chunk/doc max.** | Model cannot holistically absorb data/ folder tone / positions. | Pre-render decision-ready chunks; own per-document cap in authoring discipline; per-Thema-Anweisung file (13) substitutes for wholesale browse. |
| **Framework tests on human vibe-matching ("Would a friend say that's you?"); Little Data lacks lived experience.** | No ground truth for "does this sound like Data from canon?" beyond Subagent C quote extraction. | Use 20-query spot-check + 5-question canary (§9.3/9.4) as proxy; treat canon quotes as baseline anchors. |

**Remain unresolved:**
- If Langdock adds memory in the future, migrate MAINTENANCE.md back to per-conversation MEMORY.md model.
- If RAG improves (whole-folder context), revisit data/ browse strategy; current per-document cap may become constraint.

---

## 11. Sources

- `/home/user/soul.md/SOUL.template.md` (lines 1–175)
- `/home/user/soul.md/STYLE.template.md` (lines 1–197)
- `/home/user/soul.md/SKILL.md` (lines 1–130)
- `/home/user/soul.md/BUILD.md` (lines 1–194)
- `/home/user/soul.md/examples/_GUIDE.md` (lines 1–55)
- `/home/user/soul.md/README.md` (lines 1–274)
- `/home/user/soul.md/little-data/data/research/07-soul-md-framework-for-agent-prompt-design.md` (lines 1–237, especially §1–4)
- Companion reference: `05-persona-via-knowledge-architecture.md` (architectural view)
- Companion reference: `06-data-canon-relationships-voice.md` (canon input, Subagent C phrase map)

---

**Status:** T7 extract complete. Ready for File 11 (persona-core) and File 13 (per-Thema-Anweisungen) authoring, and for v3 system-prompt refinements in §9.1.
