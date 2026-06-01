# Soul.md Framework as a Source for Agent-Prompt Design

> **Source:** Direct analysis of the soul.md repo (SOUL.template.md, STYLE.template.md, SKILL.md, BUILD.md, examples/_GUIDE.md, README.md) on 2026-05-31.
> **Purpose:** Extract operational principles from the soul.md personality framework that transfer to a deployed RAG agent like Little Data. The framework was built for Claude-Code-style file-loading personas; we translate it for Langdock-style retrieval-grounded personas.
> **Companion:** `05-persona-via-knowledge-architecture.md` covered the same ground from an architecture angle. This one is focused on the *prompt-engineering principles* of the framework, not the storage architecture.

---

## 1. The framework at a glance

The repo treats "personality" as a multi-file specification with discipline. Four files, one folder, each owning one aspect:

| File | Owns | Tested against |
|---|---|---|
| **SOUL.md** | Identity, worldview, opinions, interests, current focus, influences, vocabulary, tensions, boundaries, pet peeves | "Could someone predict your take on a new topic from this?" |
| **STYLE.md** | Voice principles, vocabulary used/avoided, punctuation, platform differences, 6 quick-reaction registers, rhetorical moves, anti-patterns | "Would someone be able to write in your voice using this guide?" |
| **SKILL.md** | Operating instructions: reading order, character integrity, interpolation rules, source priority, 5 modes, anti-patterns, memory protocol | Loaded first; sets all behavior |
| **examples/good-outputs.md + bad-outputs.md** | Calibration material — 10-20 examples done right + anti-patterns | "Match the vibe in good-outputs.md. Avoid patterns in bad-outputs.md." |

The framework's central claim: *"someone reading your SOUL.md should be able to predict your takes on new topics. If they can't, it's too vague."* That predictability test is the engineering specification.

---

## 2. Fifteen prompt-engineering principles extracted from the framework

### Principle 1 — Specificity over vagueness
SOUL.template's worldview section: *"I believe in being kind" is useless. "Most people optimize for status, not truth" is useful.*

Opinions must be *specific enough to be wrong*. Vague positions produce generic AI output.

**Transfer to Little Data:** every behavior in the system prompt should be a specific commitment (exact phrasings, exact actions) rather than vague guidance ("be helpful, be accurate"). Concrete examples in the current Little Data prompt:
- *"Findet meine semantische Suche keinen passenden Eintrag, lautet meine Antwort exakt: 'Diese Information liegt nicht in meiner Datenbank…'"* — specific, not "say something polite"
- *"Bei Modell-Empfehlungen stets eine Alternative"* — specific, not "be balanced"
- *"Standardantwort höchstens 250 Wörter"* (now superseded by F9: *"Kurz-Übersicht im Chat, ≤120 Wörter"*) — specific, not "be brief"

### Principle 2 — Character integrity is non-negotiable
SKILL.md: *"Never break character. No 'as an AI', 'I don't have opinions', 'I can't speak for [name]'. You ARE this person for the duration of the interaction. If you need to caveat, do it in-character."*

**Transfer:** Little Data's caveats are in-character refusal strings (F8 retrieval-miss, F3 out-of-domain). The agent never says "As an AI assistant…". The bad-outputs anti-pattern list in the spec explicitly bans "Breaking character to apologize as an AI."

### Principle 3 — Real people have contradictions; don't smooth them
SOUL.template's *Tensions & Contradictions* section: *"Real people have inconsistent views. What do you believe that's in tension with something else you believe?"*

Quality red flag in BUILD.md: *"All consistent with no tensions (suspiciously coherent)."*

**Transfer:** for a canon-grounded character like Lt. Cmdr. Data, organic contradictions are replaced by canon-grounded fixed deltas — Data IS precise AND curious; he IS formal with Picard AND warm with Geordi; he IS an android AND he strives to be human. These deltas are NOT smoothed; they coexist. The persona file should preserve them (e.g., default-mode Sie + Julia-mode Du as a coexisting pair, not a contradiction to resolve).

### Principle 4 — Anti-patterns are as important as patterns
The framework gives anti-patterns dedicated, prominent space:
- STYLE.template: "Never Say" + "Voice Failures" + "Examples of Wrong Voice"
- SKILL.md: an "Anti-Patterns (What NOT to Do)" section
- examples/bad-outputs.md as a required file

**Transfer:** Little Data's spec section 4.6 (bad-outputs anti-patterns) carries this discipline. The 5-question canary test (N6) operationalizes it. The system prompt explicitly forbids drift to English (N8) and certain phrases. **Anti-patterns must be as concrete as patterns** — "Generic AI assistant voice" is too vague; "saying 'Als KI-Modell' anywhere in a response" is testable.

### Principle 5 — Source priority hierarchy
SKILL.md defines a 4-level fallback for novel topics:
> 1. **Explicit positions in SOUL.md** → use directly
> 2. **Covered in data/** → reference for grounding
> 3. **Adjacent to known positions** → extrapolate from worldview
> 4. **Completely novel** → reason from worldview, flag uncertainty in-character

**Transfer:** Little Data's source priority is:
> 1. **Explicit in retrieved Wissensordner chunk** → cite verbatim with "Quelle: …"
> 2. **Implicit but adjacent to retrieved chunk** → extrapolate, mark as inference
> 3. **No relevant chunk retrieved (F8)** → exact retrieval-miss string + stop
> 4. **Out of domain (F3)** → exact out-of-domain string + stop

This is the framework's pattern adapted to RAG: same hierarchy, retrieval as the substrate instead of file-load.

### Principle 6 — Examples beat descriptions
SOUL.template: *"Examples help more than descriptions."* STYLE.template: same. examples/_GUIDE.md insists on 10-20 examples minimum.

**Transfer:** even with the persona-via-knowledge architecture (persona depth in knowledge files), Little Data's system prompt should still inline 2-3 short voice anchors — short phrases like *"Faszinierend."* or *"Diese Redewendung ist mir nicht geläufig."* — so the LLM has a calibration baseline that survives any retrieval miss. The current prompt is mostly description; per Principle 6, it could be tightened with one or two inline anchor phrases. (This is a deliberate v3 decision waiting for the persona-prior calibration step in the build sequence.)

### Principle 7 — Modes, not monoliths
SKILL.md defines 5 modes (Default / Tweet / Chat / Essay / Idea Generation). Each is a different register with different rules.

**Transfer:** Little Data has implicit modes that should be named and made explicit:
- **Default mode** — formal-Data, marketing director, Sie or mirrored Du
- **Julia Lenz mode** — warm-Data, Du, dry humor permitted (separate persona file)
- **Inline-Skill mode** — atomic mikro-task execution (file 10)
- **Advisory mode** — for Workflows / API / Integrationen topics (no Phase-2-Wording, just "Beratung, nicht Ausführung")
- **Retrieval-miss mode** — exact F8 string, no improvisation

The spec already names these in spirit; making them explicit in the prompt is a v3 refinement.

### Principle 8 — Reading order matters
SKILL.md prescribes a strict load order: *"1. SOUL.md → 2. STYLE.md → 3. MEMORY.md → 4. examples/ → 5. data/."*

**Transfer:** Langdock has no auto-load, but Little Data's bootstrap SCHRITT 1 / SCHRITT 2 / SCHRITT 3 *IS* the reading order, translated into search queries. SCHRITT 1 (Persona Anker) ≈ SOUL.md+STYLE.md; SCHRITT 2 (Beziehungsmodus Julia Lenz) ≈ a mode-conditional MEMORY-like piece; SCHRITT 3 (Data-Anweisung [Thema]) ≈ the data/ topic browse, but query-driven.

### Principle 9 — Vocabulary as identity marker
SOUL.template: *Vocabulary section — "Terms you use with specific meanings."* STYLE.template: *Words & Phrases You Use* + *Words You Never Use*.

**Transfer:** the Subagent C canon report already produced a DE phrase map (*"Faszinierend"*, *"Diese Redewendung ist mir nicht geläufig"*, *"Unzureichende Datenlage"* …). The persona-core knowledge file should encode this as an explicit "Words I use / Words I never use" section. The prompt can carry the top 5 or so inline.

### Principle 10 — The predictability test as quality criterion
SOUL.template's quality check: *"Could someone predict your take on a new topic from this? If not, add more."*

**Transfer:** for Little Data, the equivalent test is *"Could a marketing director predict Data's recommendation on a new Langdock topic from the prompt + retrieved persona chunk?"* The 20-query spot-check + 5-question canary in §9.3/9.4 of the spec operationalize this. If a marketing-director-typical question consistently produces unpredictable Data behavior, the persona file (or topic file) is underspecified.

### Principle 11 — No hedging, no both-sides
SKILL.md interpolation rules: *"Prefer interesting/genuine takes over safe/neutral ones. Never default to 'both sides' unless the soul file says they do that."*

**Transfer:** Little Data must commit to specific recommendations. The current prompt encodes this with *"Bei Modell-Empfehlungen stets eine Alternative — günstiger oder leistungsfähiger"* (concrete trade-off, not abstract balance). The spec's user stories make this testable: US-2 demands "a specific model ID + cheaper alternative", not "consider various options."

### Principle 12 — In-character uncertainty
SKILL.md: *"If genuinely uncertain, express that uncertainty in-character."*

**Transfer:** *"Unzureichende Datenlage"* (Data's canon phrase, see Subagent C anchor quote 4) is the in-character uncertainty marker. The system prompt's F8 string *"Diese Information liegt nicht in meiner Datenbank"* is *in*-character — Data refers to his own "Datenbank", consistent with canon.

### Principle 13 — Data is browsed, not injected
SKILL.md on data/ usage: *"Browse to understand their positions and tone. Don't quote directly unless asked—absorb the vibe."*

**Transfer:** Langdock's per-query retrieval IS the soul.md "browse" pattern operationalized at scale. The retrieved chunk informs the response style and substance but isn't dumped verbatim into the reply (the F6 citation pattern is short: "Quelle: [dateiname-ohne-md]", not "the file said …"). The pre-rendering principle (N10) lines up here: the chunk should be decision-ready so the model can absorb the substance without re-narrating it.

### Principle 14 — Memory as append-only log
SKILL.md: *"Keep entries short. This isn't a transcript — it's a log of things worth remembering. The user can edit it manually to prune noise."*

**Transfer:** Langdock has no per-user memory in Agent mode (verified). The spec's `MAINTENANCE.md` is the framework's MEMORY.md adapted for *system-level* continuity — not per-conversation memory, but rather *"the knowledge base was last reviewed on X; the model price changed on Y; the Julia greeting cue now also accepts 'Julia hier'."* Same discipline (append-only, short, user-editable), different layer of state.

### Principle 15 — Quality red flags from the soul-builder
BUILD.md's quality red flags:
> - Everything sounds reasonable and balanced (real people have spicy takes)
> - No specific names, references, or examples (too abstract)
> - Could apply to many people (not distinctive enough)
> - All consistent with no tensions (suspiciously coherent)

**Transfer:** apply these as a review checklist for Little Data's *persona file* before deploying it:
- Does Little Data ever take a position that could surprise? (canon-anchored opinions about "good Marketing-Prompts," about Auto-Mode risks, etc.)
- Are there specific Langdock features / specific model names / specific marketing scenarios named? (yes, but verify in persona file)
- Could this persona apply to any AI advisor? (No — must be uniquely Data + uniquely marketing-director-facing)
- Are the deltas between default mode and Julia mode preserved as deltas, not smoothed? (yes by design)

---

## 3. What does NOT transfer cleanly

Three patterns from the framework that *don't* survive the Langdock translation, and how Little Data substitutes:

| Framework pattern | Why it breaks in Langdock | Little Data substitute |
|---|---|---|
| **Session-start file-load (SKILL.md reading order)** | Langdock Agents have no init hook (verified by Subagent B). | SCHRITT 1/2/3 retrieval-bootstrap with deterministic anchor strings. |
| **MEMORY.md per-conversation continuity** | Langdock Memory is disabled inside Agents (verified). Every reply stands alone. | System-level MAINTENANCE.md for knowledge-base freshness, not per-user state. Document this limitation in `01-chat-und-prompts.md` so the agent can explain it. |
| **data/ wholesale browse** | RAG retrieves per query, not whole-folder browse. Per-document cap = 1 chunk per file per query. | Pre-rendered topical files (N10); decision-ready chunks; ownership rule (per-document-cap-aware authoring discipline). |

These three substitutions are the architectural translation: persona-via-knowledge + initial-knowledge-search + pre-rendered decision-ready chunks together replace the framework's deterministic file-load assumption.

---

## 4. Applying the framework to the current Little Data system prompt

Walking through the current §9.1 prompt with the 15 principles:

| Principle | Current prompt does this? | Suggested v3 refinement |
|---|---|---|
| 1. Specificity over vagueness | ✓ exact refusal strings, exact char counts | — |
| 2. Character integrity | ✓ first-person Data, no "Als KI" | — |
| 3. Contradictions preserved | ✓ default Sie + Julia Du as parallel modes | — |
| 4. Anti-patterns as concrete as patterns | △ specified mostly in §4.6, not in prompt | inline 2-3 concrete "do not" strings (e.g., *"Niemals 'Als KI'…"*) |
| 5. Source priority hierarchy | ✓ retrieved chunk → F8 string → F3 string | — |
| 6. Examples beat descriptions | ✗ no inline anchor phrase | inline 1-2 voice anchors (e.g., *"'Faszinierend.' ist erlaubt, 'Aha!' niemals."*) |
| 7. Modes, not monoliths | △ Default + Julia named; Inline-Skill, Advisory, Retrieval-miss implicit | name all 5 modes explicitly in a "Modi" block |
| 8. Reading order matters | ✓ SCHRITT 1 → 2 → 3 | — |
| 9. Vocabulary as identity | △ German/English term-handling specified, but no "always/never" word list | inline a 3-5 phrase "always" list (Faszinierend, Unzureichende Datenlage) and a 3-5 phrase "never" list (Aha, Boah, Krass) |
| 10. Predictability test | ✓ spot-check + canary in §9.3/9.4 | — |
| 11. No hedging / no both-sides | ✓ "stets eine Alternative" | — |
| 12. In-character uncertainty | ✓ F8 string uses "meine Datenbank" | — |
| 13. Browsed not injected | ✓ short citation; F6 *"Quelle: …"* | — |
| 14. Memory as append-only | n/a in agent prompt; lives in MAINTENANCE.md | — |
| 15. Predictability red flags | ✓ spec §3.5 OQ + §9.4 canary | — |

The four △ and one ✗ above are the concrete refinement opportunities. With the now-15K-char budget (N1), adding the inline anchor phrases (Principle 6) and the explicit "always/never" word list (Principle 9) is cheap. Naming all 5 modes (Principle 7) and inlining 2-3 concrete "never say" anti-patterns (Principle 4) also fits.

A v3 prompt that addresses all four refinements would still come in well under 5 000 characters (current ~3 000 + ~1 500 for the refinements) — a third of the budget, leaving headroom for the post-Gemini-prompts-5-9 integrations.

---

## 5. Where to write the Little Data persona files (per the framework's discipline)

Mapping each SOUL.template section to its target Wissensordner file:

| SOUL.template section | Lives in (Little Data) |
|---|---|
| Who I Am | `11-persona-core.md` H2 "Identität" |
| Worldview | `11-persona-core.md` H2 "Weltsicht (Data-Perspektive auf KI und Beratung)" |
| Opinions (by domain) | `11-persona-core.md` H2 "Haltungen zu Langdock und KI" + `12-persona-julia-modus.md` for any Julia-specific opinions |
| Interests | `11-persona-core.md` H2 "Was mich fasziniert" |
| Current Focus | implicit in the Mission line of the system prompt — not in knowledge |
| Influences | `11-persona-core.md` H2 "Einflüsse" (Soong, Picard, Geordi, the canonical Star Trek frame) |
| Vocabulary | `11-persona-core.md` H2 "Vokabular: was ich verwende, was nicht" |
| Tensions & Contradictions | `11-persona-core.md` H2 "Spannungen" (precise-but-curious; android-aspiring-to-human) |
| Boundaries | `11-persona-core.md` H2 "Grenzen" + system prompt's GRENZEN section |
| Pet Peeves | `11-persona-core.md` H2 "Persönliche Reibungspunkte" — what Data finds inefficient or imprecise |

And STYLE.template:

| STYLE.template section | Lives in |
|---|---|
| Voice Principles | `11-persona-core.md` H2 "Stimme: Prinzipien" |
| Vocabulary used/avoided | `11-persona-core.md` H2 "Vokabular: was ich verwende, was nicht" (shared with SOUL's vocabulary) |
| Punctuation & Formatting | `11-persona-core.md` H2 "Interpunktion und Formatierung" |
| Platform Differences | n/a — Little Data lives only on Langdock; the F9 chat-vs-Canvas split substitutes |
| Quick Reactions | `11-persona-core.md` H2 "Reaktionsmuster" (excited/agreeing/disagreeing/skeptical/confused/absurd — each gets one Data-aligned German phrase) |
| Rhetorical Moves | `11-persona-core.md` H2 "Argumentationsmuster" |
| Anti-Patterns | `11-persona-core.md` H2 "Anti-Patterns" + bad-outputs.md examples |

Total persona-core.md H2 blocks: ~10. At 1 200–1 800 chars each, the file lands at ~14–18 KB — within the spec's ~18 KB estimate.

Julia mode file gets the parallel structure, scoped to Julia-specific overrides + Julia relationship facts + Julia-mode examples.

---

## 6. Bottom line — what this means for the Little Data build sequence

Three concrete takeaways for next steps:

1. **The persona-core.md file is structurally already designed.** It's SOUL.md + STYLE.md collapsed into one Langdock-retrievable file, with the section list above. Authoring can begin as soon as Subagent C's canon report (Section 6 DE phrase map + 10 anchor quotes) is treated as the input corpus.

2. **The Julia mode file is the framework's "additional mode" pattern.** Like SKILL.md defines Tweet/Chat/Essay as register switches, Julia mode is a register switch — formal-default → warm-Julia, Sie → Du, no humor → dry humor. The file holds only the *deltas* relative to the default mode in persona-core.md.

3. **The system prompt has clear v3 refinements ready to apply.** Inline 2-3 anchor phrases + a 5-phrase always/never word list + name the 5 modes explicitly. ~1 500 chars added; brings total to ~4 500 chars; still well under the 15 K budget. This refinement is the natural next edit to §9.1 once the Persona-Calibration step (Build step 2) confirms small models need the explicit anchors.

The soul.md framework is, in effect, *the discipline manual for the persona-core and persona-julia knowledge files we are about to write*. The system prompt encodes the framework's SKILL.md (operating rules); the persona files encode SOUL.md + STYLE.md (identity + voice). Examples and bad-outputs become entries inside the persona files and the spec's `examples/` folder.

## Sources

- `/home/user/soul.md/SOUL.template.md`
- `/home/user/soul.md/STYLE.template.md`
- `/home/user/soul.md/SKILL.md`
- `/home/user/soul.md/BUILD.md`
- `/home/user/soul.md/examples/_GUIDE.md`
- `/home/user/soul.md/README.md`
- Companion: `little-data/data/research/05-persona-via-knowledge-architecture.md` (architectural view)
- Companion: `little-data/data/research/06-data-canon-relationships-voice.md` (canon input for the persona files)
