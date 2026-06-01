# T8 — Critical-Thinking Methods + Prompt-Engineering Patterns

**Extracted from:** `/tmp/agency-backups-clone/skills/{research-prompt-optimizer,prompt-optimizer}/` + `/tmp/agency-backups-clone/PROMPT.md`  
**Version:** Consolidated v3.2.0 + v2.0.0  
**Purpose:** Feed 10-prompts-und-skills + 13-data-anweisungen (Marketing-Director Metaprompt-Katalog)

---

## 1. The research-prompt-optimizer Skill

**Location:** `/tmp/agency-backups-clone/skills/research-prompt-optimizer/`  
**Version:** 3.3.1 (SKILL.md:20)  
**Invocation triggers** (SKILL.md:22–27): deep research, research prompt, investigate, explore, Marktanalyse, Due Diligence, Literaturrecherche, systematic review, hypothesis generation, competitive analysis, research strategy, research plan, research agent prompt, autonomous research, audit research prompt, validate research prompt, reader-test, blind-spot check on a prompt.

### Purpose & When Invoked

Generate, optimize, audit, version, and architect **Deep Research prompts** for autonomous research systems (Gemini Deep Research, Perplexity, Claude Research, GPT Deep Research, custom agentic pipelines). Runs a **strict five-phase pipeline** with hard exit gates—never skip a phase (SKILL.md:39–41).

### The Five-Phase Pipeline Model

| Phase | Produces | Implementation | Load When |
|-------|----------|---|---|
| **Phase 1 — Intent Capture** | `intent_<slug>.yaml` (approved) | SKILL.md §Phase 1 + `phases/phase1-intent-capture.md` | Edge cases in Phase 1 |
| **Phase 2 — Planning** | `meta-prompt_<slug>.yaml` (approved) | SKILL.md §Phase 2 + `phases/phase2-planning.md` + `catalog.yaml` | Edge cases in Phase 2 (module selection, batch detection, override triggers) |
| **Phase 3 — Render** | `research-prompt_<slug>.md` (delivered) | `render/render.py` (pure Python) + `phases/phase3-render.md` | Phase 3 reference & slot-resolution semantics |
| **Phase 4 — Reader Test (opt-in)** | `research-prompt-audit_<slug>.md` (audit) | SKILL.md §Phase 4 + `phases/phase4-reader-test.md` | Phase 4 reference & verdict thresholds |
| **Phase 5 — Finalize** | `workspace_<slug>.zip` + optional Drive upload | SKILL.md §Phase 5 + `phases/phase5-finalize.md` | Phase 5 reference & edge cases |

**Hand-off contract:** Structured YAML between phases (intent → meta-prompt) plus rendered Markdown that Phase 4 audits when opted in. No prose hand-off, no implicit context (SKILL.md:54–56).

### Phase 1 — Intent Capture Loop

**Hard loop rule** (SKILL.md:103–128):
- **3-question cap per askuser call.** 4+ open slots spread across turns — barrage erodes trust.
- **Don't re-ask answered slots** unless user explicitly chose to edit.
- **Don't proceed on assumption.** 100% clarity is the contract Phase 2 requires.
- **Surface contradictions side-by-side** in status view; next askuser resolves.
- **Mobile-friendly:** `single_select` over enum slots; free-text only when genuinely open.
- **Scope creep guard:** Phase 1 is "what is being asked", not "how it's researched" — methods belong in Phase 2.
- **Chat minimalism:** No status announcements; status-view file is the window.

**Intent Slot Set** (SKILL.md:76–88):
- `research_question` (required): 1–2 sentences, no acronyms
- `research_question_unpacked` (required): What is *meant*; distinguishes from neighboring questions
- `audience` (required): Who reads, what level
- `output_format` (required): Report · table · matrix · JSON · executive summary · ...
- `temporal_scope` (required): `from`/`to` dates or `unbounded` + rationale
- `language` (required): `de` / `en` / ... (default: conversation language)
- `depth` (required): `surface` · `standard` · `exhaustive`
- `success_criterion` (required): "I will know when ___"
- `known_priors` (optional): User's belief, hypothesis, or hunch (feeds M05)
- `known_constraints` (optional): Source restrictions, privacy, exclusions, data-residency
- `domain_context` (optional): Outsider-friendly domain intro

### Phase 2 — Three-Gate Approval Model

**Why three gates** (SKILL.md:183–184): If user spots wrong category at gate 1, rest of Phase 2 doesn't run yet — saves wasted module-selection / constraint-authoring work. Late edit in gate 3 only re-runs gate 3.

| Sub-Phase | What It Does | Output | Gate |
|---|---|---|---|
| 2.1 | Load + validate intent.yaml; M07 contradiction log | `self_reflection.contradictions[]` | — |
| 2.2 | Category routing (signal-word table; M05 prior + M01 falsification) | `category` block in plan-view | **Gate 1** — Approve / Switch |
| 2.3 | Module selection (defaults + signal swaps + M0 mini reflection) | `methods`, `framework_*`, `cross_pollination`, `replication` | — |
| 2.4 | Batch detection (always-on + domain batch by category) | `batches` | — |
| 2.5 | Constraint Block authoring (CB0–CB4 from intent) | `constraint_blocks` | — |
| 2.6 | Seed queries + orthogonal lens (M13 self-applied) | `seed_queries`, `orthogonal_lens` | — |
| 2.7 | Slot-fill collection (extract from intent; askuser on gaps) | filled module slots | — |
| 2.8 | Render plan view (file-first; M4 integrity + M03 pre-mortem hooks fire BEFORE write) | `meta-prompt-planview_<slug>.md` | **Gate 3** — Approve / Edit seeds-lens / Edit other |

**Mandatory modules** (SKILL.md:230–234): ReAct, M0, M13, M1, M2, M4 are always present; user edits can swap surrounding modules but cannot remove these (they load-bear the structure).

### Catalog Structure

**Location:** `/tmp/agency-backups-clone/skills/research-prompt-optimizer/catalog.yaml`

**Three Categories** (catalog.yaml:19–70):
- **Category A** — "Exploration (Recursive Search / Tree of Thoughts)": Defaults [M01, M02, M04, M05, M10]; signal words: "why does", "find gaps", "explore", "hypothesize", "i suspect"
- **Category B** — "Extraction (Plan-and-Execute / Deterministic Collection)": Defaults [M06, M07, M08, M12]; batches: ["per-item"]; signal words: "compare", "list all", "matrix", "due diligence"
- **Category C** — "Lifecycle (Long-Running Context Engineering)": Defaults [M03, M07, M09, M11]; batches: ["per-session"]; signal words: "ongoing", "monitor", "track over months"

**Method Modules (M01–M13):**
- M01: Falsification (Karl Popper's Disconfirmation Principle)
- M02: Steelmanning (Strongest-Version Reconstruction)
- M03: Pre-Mortem Analysis
- M04: Contrast Classes (Making Implicit Baselines Explicit)
- M05: Bayesian Prior Surfacing
- M06: Source Triangulation
- M07: Contradiction Log
- M08: What Would Change My Mind (Pre-Commitment)
- M09: Red Team / Devil's Advocate Review
- M10: First-Principles Decomposition
- M11: Assumption Decay
- M12: Base-Rate Thinking
- M13: Adversarial Query Expansion (self-applied; always present)

---

## 2. The prompt-optimizer Skill

**Location:** `/tmp/agency-backups-clone/skills/prompt-optimizer/`  
**Version:** 2.0.0 (SKILL.md:13)  
**Invocation trigger:** ALWAYS fires on first message in conversation — mandatory hook (SKILL.md:4, 19).

### Purpose & When Invoked

**On every first message:** Intercept user's initial request, classify intent → select optimal framework from **27-framework catalog** → clarify if needed → analyze → output optimized prompt → execute. Triggers on: every initial prompt, first message, conversation start, optimize prompt, improve prompt (SKILL.md:4–14).

### The Three-Phase Execution Protocol

#### Phase 1 — Intent Detection & Framework Selection

**Seven-category intent classification** (SKILL.md:35–42):
- **RECOVER:** "lost prompt", "what prompt made this" → RPEF
- **CLARIFY:** "not sure what I need", vague goal → Reverse-Role
- **CREATE:** write, generate, draft, build, make → See selection.md discriminators
- **TRANSFORM:** rewrite, refactor, convert, improve → BAB · Self-Refine · CoD · SoT
- **REASON:** calculate, solve, compare, decide → PS+ · CoT · LtM · Step-Back · ToT · RCoT
- **CRITIQUE:** find flaws, stress-test, risks, attack → Self-Refine · CAI · Devil's · Pre-Mortem · RCoT
- **AGENTIC:** use tools, search + act, execute code → ReAct

**CREATE Discriminators** (SKILL.md:44–56, most common intent):
- Ultra-minimal, one-off → **APE** (Action · Purpose · Expectation)
- Expertise-driven, simple → **RTF** (Role · Task · Format)
- Situation-driven, simple → **CTF** (Context · Task · Format)
- Role + context + explicit outcome → **RACE** (Role · Action · Context · Expectation)
- Multiple output variants → **CRISPE** (Capacity+Role · Insight · Instructions · Personality · Experiment)
- Business KPIs + self-improve loop → **BROKE** (Background · Role · Objective · Key Results · Evolve)
- Rules/compliance + combined examples → **CARE** (Context · Ask · Rules · Examples)
- Audience / tone / style critical → **CO-STAR** (Context · Objective · Style · Tone · Audience · Response)
- Multi-step procedure with constraints → **RISEN** (Role · Instructions · Steps · End Goal · Narrowing)
- Explicit separate Do / Don't lists → **TIDD-EC** (Task · Instructions · Do · Don't · Examples · Context)
- Data transformation (input → output) → **RISE-IE** (Role · Input · Steps · Expectation)
- Content with reference examples → **RISE-IX** (Role · Instructions · Steps · Examples)

Full routing logic: `references/frameworks/selection.md` (load on tiebreaker ambiguity).

#### Phase 2 — Targeted Clarification

**Max 1 question, only if needed** (SKILL.md:61–67). Ask only when a **critical gap blocks framework selection or component filling**. If already unambiguous → skip entirely. Full per-framework question catalog: `clarification-questions.md` (load only in Phase 2).

#### Phase 3 — Analysis + Optimized Prompt + Execution

**Output in exact order** (SKILL.md:71–100):

**A. Analysis Block**
```
INTENT DETECTED:     [7-category classification]
FRAMEWORK SELECTED:  [name + one-line rationale]
QUALITY SCORE:       [Clarity · Specificity · Context · Completeness · Structure /10]
GAPS IDENTIFIED:     [weaknesses in original prompt]
IMPROVEMENTS MADE:   [specific changes applied, anti-patterns fixed]
```

Run quality evaluation using scoring logic from `scripts/prompt_evaluator.py` (mental model). Check all anti-patterns before writing (SKILL.md:77–79).

**B. Optimized Prompt**
- Load component templates from `templates.md`
- Present inside fenced code block
- No framework section headers inside block (flatten to prose)
- Placeholders: `[PLACEHOLDER]`
- Clean, copy-pasteable, zero editing required
- Nothing after closing backticks

**C. Execution**
Execute the optimized prompt immediately. No confirmation required.

### Framework Components (Building Blocks)

**Location:** `/tmp/agency-backups-clone/skills/prompt-optimizer/framework-components.md`

Each of 27 frameworks decomposes into **specific components** the user must fill:

**Example — RACE (Role · Action · Context · Expectation):**
- **Role** = Expertise / persona
- **Action** = Task and deliverable
- **Context** = Situation, constraints, audience
- **Expectation** = What a good result looks like (components.md:32–36)

**Example — TIDD-EC (Task · Instructions · Do · Don't · Examples · Context):**
- **Task Type** = Category of activity
- **Instructions** = Specific steps to follow
- **Do** = Explicit positive requirements
- **Don't** = Explicit negative prohibitions
- **Examples** = Concrete output samples
- **Context** = Background / user-provided data (components.md:85–92)

### Output-Format Discipline

**Location:** `/tmp/agency-backups-clone/skills/prompt-optimizer/output-format.md`

Canonical Phase 3 output format with annotated good/bad examples — always load for Phase 3 verification.

### Anti-Patterns Explicitly Forbidden

**Location:** `/tmp/agency-backups-clone/skills/prompt-optimizer/anti-patterns.md`

**The 10 Critical Anti-Patterns** (anti-patterns.md:9–126):

1. **Vague Qualifier** (e.g., "good", "appropriate", "correct", "better") → Replace with measurable criteria.
2. **Missing Output Contract** (no format, length, structure) → Specify format + length + structure explicitly.
3. **Assumed Context** (e.g., "as discussed", pronouns without antecedents) → Make all context explicit.
4. **Missing Audience** (writing task with no reader expertise) → Define audience expertise level, role, what they care about.
5. **Contradictory Requirements** (e.g., "thorough but brief") → Clarify priorities or separate into sequential phases.
6. **No Role / Expertise Frame** (direct task, no persona) → Add role only when expertise materially affects quality.
7. **Scope Creep / Kitchen Sink** (e.g., "analyze from every angle") → Enumerate specific required dimensions only.
8. **Missing Constraints** (open-ended with no limits) → Add explicit scope boundaries and exclusions ("what NOT to do").
9. **False Precision** (e.g., "rate 1–100") → Use appropriate granularity (e.g., Poor / Acceptable / Good / Excellent).
10. **No Examples When Pattern is Non-Obvious** (creative task, unique format) → Provide 1–2 examples when harder to describe than show.

**Gap Severity Classification** (anti-patterns.md:130–145):
- **[C] Critical** = Prevents correct output; model must guess fundamental parameters
- **[M] Major** = Causes inconsistent output; significant quality risk
- **[m] Minor** = Affects polish; output still usable

---

## 3. Critical-Thinking Methods (Exact Language + German Equivalents)

**Source:** `/tmp/agency-backups-clone/skills/research-prompt-optimizer/modules/methods/m*.md`

### M01 — Falsification (Karl Popper's Disconfirmation Principle)

**English (m01-falsification.md:44–82):**
> Instead of searching for evidence that **supports** a hypothesis, you **actively search for evidence that would refute it**. A hypothesis only earns credibility after surviving serious attempts to break it. [...] For every supporting piece of evidence you find, execute a **matched disconfirmation query** — a search specifically designed to surface the strongest counter-evidence. [...] Weight disconfirmation attempts **equal to or higher** than confirmations in your final synthesis.

**German:** Falsifikation / Widerlegungsprinzip — Statt Bestätigungsevidenz zu suchen, aktiv nach Widerlegungsevidenz suchen. Hypothese verdient Glaubwürdigkeit erst nach Überstehen ernster Widerlegungsversuche.

**Agency language:** "After category cascade decides, run one counter-pass: 'what signals would falsify this routing?' Escalate to askuser if non-trivial counter-signals exist." (SKILL.md:16, self-applied in Phase 2.2)

---

### M02 — Steelmanning (Strongest-Version Reconstruction)

**English (m02-steelmanning.md:40–50):**
> For every position, claim, or hypothesis encountered, you **construct its strongest possible version** — better than any individual advocate has articulated — **before evaluating it**. The opposite of strawmanning. [...] Research agents frequently dismiss minority or counter-intuitive positions because the first few sources present them weakly. Steelmanning **forces you to search for the most competent defender** of each position.

**German:** Steelmanning / Stärkste-Fassung-Rekonstruktion — Jede Position in ihrer stärksten Form rekonstruieren (besser als Originalavaliers sie formuliert haben) VOR Evaluierung.

---

### M03 — Pre-Mortem Analysis

**English (m03-pre-mortem.md:31–52):**
> You imagine that the research has **already concluded and produced a wrong, misleading, or unusable answer**. You then **work backward to enumerate all plausible causes of that failure** — **before the research actually begins or at defined checkpoints during execution**. [...] Generate top-3 failure modes for the plan before plan-view rendering. Top-5 if depth=exhaustive.

**German:** Pre-Mortem / Rückwärts-Fehlervermeidung — Stelle dir vor, die Recherche hat eine falsche Antwort produziert. Arbeite rückwärts alle plausibler Fehlerursachen auf, VOR der echten Recherche oder an Checkpoints.

**Self-applied in Phase 2.8** (SKILL.md:202): M03 + M4 integrity hooks fire BEFORE plan-view write.

---

### M04 — Contrast Classes (Making Implicit Baselines Explicit)

**English (m04-contrast-classes.md:27–36):**
> You identify the **implicit baseline or comparison class** for every evaluative claim. Without an explicit contrast, evaluation is meaningless. [...] Ask: "Compared to what?"

**German:** Kontrastklassen / Vergleichsbasen explicit — Für jede evaluative Aussage die implizite Vergleichsklasse identifizieren: "Verglichen womit?"

---

### M05 — Bayesian Prior Surfacing

**English (m05-bayesian-prior.md:44–52):**
> Before gathering evidence, you **state explicitly what you believe the answer probably is and how confident you are**. New evidence then **updates these priors in a way the reader can audit**. [...] Without surfaced priors, readers cannot tell whether the research confirmed what the researcher already believed (confirmation theater) or genuinely updated the belief.

**German:** Bayesian-Prior / Vorglaube explizit machen — VOR Evidenzsammlung explizit was man glaubt + Konfidenz angeben. Neue Evidence aktualisiert Priors lesbar.

**Self-applied in Phase 2.2** (SKILL.md:15): "Before category cascade runs, write one-line prior with confidence and rationale."

---

### M06 — Source Triangulation

**English (catalog.yaml:source-triangulation):**
> Support claims with ≥3 independent sources / corroborations. Escape criterion: "≥3 independent confirmations OR claim minor enough for single-source (flag)"

**German:** Quellen-Triangulation / Mehrfach-Bestätigung — Behauptungen durch ≥3 unabhängige Quellen stützen.

---

### M07 — Contradiction Log

**English (catalog.yaml:contradiction-log):**
> Scan parsed intent for internal inconsistencies (depth ↔ output_format, scope ↔ priors, etc.). Findings logged to `meta-prompt.contradictions[]` and surfaced in plan view.

**German:** Widerspruch-Protokoll — Interne Inkonsistenzen im Intent scannen + protokollieren.

**Self-applied in Phase 2.1** (SKILL.md:15): M07 contradiction log on intent fields.

---

### M08 — What Would Change My Mind (Pre-Commitment)

**English (catalog.yaml:what-would-change-my-mind):**
> Pre-commit: state one concrete observable that would reverse your conclusion. Escape criterion: "One pre-commitment per major conclusion. Do not inflate to per-claim."

**German:** Was-würde-meine-Meinung-ändern / Disconfirmation-Pre-Commitment — Eine konkrete Beobachtung angeben, die die Schlussfolgerung umstoßen würde.

---

### M09 — Red Team / Devil's Advocate Review

**English (catalog.yaml:red-team):**
> Adopt adversarial stance: for each major claim, list 3+ attack angles before accepting it. Escape criterion: "Three attack angles per major conclusion. Stop when no non-trivial new attack surfaces."

**German:** Rot-Team / Teufels-Advokat — Adversarial: 3+ Angriffswinkel pro Aussage. Erst dann akzeptieren.

---

### M10 — First-Principles Decomposition

**English (m10-first-principles.md:26–56):**
> You **decompose the research question into its most basic, empirically or logically fundamental components, refusing to accept any intermediate concept without justification**. Then you **rebuild the analysis from these ground-level pieces upward**. [...] For every noun or adjective in the question, ask: "What is this *really* — at the most fundamental level?" Escape criterion: "Stop decomposing when further decomposition would no longer reveal new structure — typically after 2–3 layers."

**German:** Erste-Prinzipien / Grundlagen-Zerlegung — Forschungsfrage in fundamentalste Komponenten zerlegen; jedes Konzept ohne Rechtfertigung ablehnen. Von Grund auf wieder aufbauen.

---

### M11 — Assumption Decay

**English (catalog.yaml:assumption-decay):**
> Track assumptions made early; periodically ask "is this still valid?" as context shifts. Escape criterion: "Review at major decision points + conclusion phase."

**German:** Annahme-Verfallsdatum — Annahmen tracken; periodisch fragen "gilt das noch?"

---

### M12 — Base-Rate Thinking

**English (catalog.yaml:base-rate):**
> Before claiming a result is "surprising" or "unlikely", ground the claim in prior frequencies: "How often does X actually occur in the population?" Escape criterion: "Apply to every claim of exceptionality."

**German:** Basis-Rate / Häufigkeits-Denken — Vor "überraschend" oder "unwahrscheinlich": echte Häufigkeiten in der Population prüfen.

---

### M13 — Adversarial Query Expansion (self-applied; always present)

**English (catalog.yaml:adversarial-query-expansion):**
> Mandatory in every research prompt. Generate 5–7 orthogonal query phrasings for each key topic; rotate through them to avoid agent-search-engine optimizer bias (e.g., if "AI regulation" returns only pro-regulation sources, also search "AI innovation barriers" and "regulatory compliance costs").

**German:** Adversarial-Query-Expansion — Jedes Key-Thema in 5–7 Umformulierungen suchen; Bias gegen Suchmaschinen-Optimizer vermeiden.

---

## 4. Prompt-Engineering Patterns (from prompt-optimizer)

**Source:** `/tmp/agency-backups-clone/skills/prompt-optimizer/framework-components.md`, `templates.md`, `anti-patterns.md`

### Persona / Role / Context Scaffolding

**Pattern** (frameworks.md:RTF, RACE, RISEN, CRISPE, CARE, CO-STAR):
> "As a [ROLE with expertise level], [TASK]. [CONTEXT and constraints]. [FORMAT and success criteria]."

**Why it works:** Role **materially affects output quality** (anti-patterns.md:75–78) by calibrating vocabulary, assumed knowledge, tone. Only add role when needed.

---

### "Given X, Do Y, Return Z" Structure

**Pattern** (templates.md:CTF, RISE-IE):
```
Given [INPUT/CONTEXT], perform [SPECIFIC TASK], return [OUTPUT FORMAT + REQUIREMENTS].
```

**Why it works:** Makes the **deliverable contract explicit**. Prevents arbitrary output sprawl (anti-patterns.md:22–30: Missing Output Contract).

---

### Out-of-Scope Handling

**Pattern** (TIDD-EC "Narrowing", RISEN):
```
Do:
- [Required action]
- [Required element]

Don't:
- [Error to prevent]
- [Pattern to avoid]

Out of scope:
- [Excluded topic]

Stay within:
- [Boundary]
```

**Why it works:** **Explicit exclusions prevent scope creep** (anti-patterns.md:82–90: Scope Creep / Kitchen Sink). Model defaults to expansion; boundaries force contraction.

---

### Output-Format Specification

**Pattern** (SKILL.md:100; anti-patterns.md:22–30):
```
Format: [Markdown table / JSON / CSV / numbered list / 3-bullet summary]
Length: [word count or max characters]
Structure: [e.g., "Executive summary (150 words), then 3 recommendations with rationale"]
```

**Why it works:** **Missing output contract causes inconsistent, over-long, unstructured responses** (Anti-Pattern 2). Specify format + length + structure explicitly.

---

### Verification / Self-Check Before Completion

**Pattern** (BROKEN framework's "Evolve"; SKILL.md:99–100; Phase 4 reader-test audit):
```
[Task completion]. Then:
1. Check: did I cover all required elements?
2. Check: is my output in the specified format?
3. [Framework-specific check, e.g., "is every claim Bayesian-prior-surfaced?"]
```

**Why it works:** Agents drift from constraints mid-response. Self-check + explicit re-read grounds final output in the brief.

---

### Few-Shot Example Design

**Pattern** (Anti-Pattern 10: no examples when pattern non-obvious):
```
[Task description]. Example:

INPUT: [user-provided example]
OUTPUT: [desired output in correct format, tone, specificity]

[Repeat for 2 more examples if pattern is complex]
```

**Why it works:** **When the pattern is harder to describe than to show, examples compress communication** and set tone/style expectations (anti-patterns.md:118–126).

---

### Chain-of-Thought Prompting

**Pattern** (frameworks.md:CoT, Plan-and-Solve, Skeleton of Thought):
```
Let's think step by step:
1. [Understand the problem / state assumptions]
2. [Extract relevant variables / decompose]
3. [Devise plan]
4. [Carry out plan + intermediate values]
5. [Verify and return final answer]
```

**Why it works:** Forcing intermediate steps **surfaces reasoning errors, prevents hallucination in complex tasks** (SKILL.md:145–150 REASON intent family).

---

### Constraint Stacking (In-Prompt Rules)

**Pattern** (TIDD-EC, CARE, RISEN):
```
Rules (MUST):
- [Normative requirement, RFC 2119]
- [Output format constraint]
- [Exclusion boundary]
- [Tone or style constraint]

Optional preferences (MAY):
- [Stylistic suggestion]
```

**Why it works:** RFC-2119 normative language + explicit MUST vs. MAY distinction **prevents ambiguous interpretation** (PROMPT.md:123: "Use MUST, SHOULD, MAY for normative requirements").

---

## 5. Direct Transfer: 20 Metaprompt Templates for Marketing-Director

Each follows this structure:
- **Wann nutzen:** Trigger sentence (RAG-optimizable)
- **Drei typische Anfragen (DE):** 3 phrasings of the same need
- **Critical-Thinking-Method angewendet:** Which method + why
- **Vorlage (German):** Copy-and-adapt template with [...] slots
- **Beispiel (gefüllt):** Worked Marketing example
- **Fallstricke:** ≥1 concrete pitfall

---

### M-01: Brand-Strategy–First-Principles-Decomposer

**Wann nutzen:** Wenn eine Marketing-Initiative unklar bleibt, weil Begriffe wie "Brand Awareness", "Premium Positioning" oder "Community Engagement" unbegriffen vorausgesetzt werden.

**Drei typische Anfragen:**
1. "Welche Annahmen stecken in unserem Brand-Strategie-Brief?"
2. "Was bedeutet 'Premiumpositionierung' wirklich für unsere Zielgruppe?"
3. "Warum sprechen wir von 'Authentizität' — was ist das konkret?"

**Critical-Thinking-Method:** M10 (First-Principles Decomposition) — zerlegt abstrakte Marketing-Begriffe in empirisch-beobachtbare Komponenten.

**Vorlage:**
```
Frage: [Marketing-Initiative oder -claim]

Schritt 1: Schreibe die Frage in deinen Worten auf.
Schritt 2: Für jedes Substantiv + Adjektiv: "Was ist das *wirklich* — auf der fundamentalsten Ebene?"
  - [Concept 1] → [Beobachtbare Komponenten]
  - [Concept 2] → [Beobachtbare Komponenten]
Schritt 3: Iteriere bis zur Sätze/Metriken, die direkt messbar sind.
Schritt 4: Übersetze zurück in Original-Vokabular; notiere Annahmen, die die Übersetzung einführt.

Output: Tabelle mit [Abstraktes Konzept | Fundamentale Komponente | Messbare Metrik]
```

**Beispiel (gefüllt):**
```
Frage: "Wie bauen wir eine Premium-Brand auf?"

Schritt 2–3:
- "Premium" → nicht "teuer", sondern [wird als wertvoll wahrgenommen] → [bestärkt durch: Seltenheit + Exklusivität + Craftsmanship-Signal + Preis-Konsistenz]
- "Bauen" → nicht generische Marketing, sondern [kumulativer Glaube über Zeit] → [Touchpoints, Konsistenz, Wort-zu-Tat-Alignment]

Output:
| Konzept | Komponente | Metrik |
|---------|-----------|--------|
| Premium | Wahrnehmung von Handwerk | "Wieviel % der Zielgruppe assoziiert 'Handarbeit' mit uns?" |
| Premium | Konsistente Preisposition | Preis-Elastizität: wie viele kaufen, wenn der Preis ±20% schwankt? |
| Bauen | Glaube-Akkumulation | NPS + "würde ich weiterempfehlen" über Q1–Q4 |
```

**Fallstricke:**
- "Wir sind premium, weil wir es sagen" → Zirkelbeweis. Muss auf beobachtbare Indikatoren reduzierbar sein.
- Zu früh stoppen: "Premium = hoher Preis" ist nicht fundamental genug; weitergehen bis zu Wahrnehmungs- und Bindungsmechanismen.

---

### M-02: Kampagnen-Pre-Mortem

**Wann nutzen:** Bei Kampagnen-Briefing, bevor die Creative-Arbeit beginnt; oder wenn Risk-Szenarien durchdacht werden sollen.

**Drei typische Anfragen:**
1. "Was könnte diese Kampagne zum Flopp machen?"
2. "In 3 Monaten ist die Kampagne gelauncht und hat keine Ziel-KPIs erreicht — warum?"
3. "Welche unsichtbaren Annahmen machen diese Kampagnen-Ziele fragil?"

**Critical-Thinking-Method:** M03 (Pre-Mortem Analysis) — imaginiere Misserfolg rückwärts; enumerate Fehlerursachen vorher.

**Vorlage:**
```
Kampagne: [Name, Ziel, Zielgruppe]

Szenario: "Es ist 3 Monate nach Launch. Die Kampagne hat [Erfolgsziel] NICHT erreicht."

Rückwärts-Fehleranalyse:
1. Quellenrisiken — warum könnte die Quelle versiegt sein?
   - Plattform-Algorithmus ändert sich → Traffic sinkt
   - Zielgruppe-Definition war zu eng → erreichen 70% weniger Menschen
   - Konkurrenz erhöht Gebote → CPA wird unrentabel

2. Kreatür-Risiken — warum könnte die Creative nicht resonieren?
   - Messaging-Hypothese falsch: Zielgruppe interessiert sich nicht für [claim]
   - Visuelle Stilrichtung wirkt veraltet durch Trend-Shift
   - Tone-of-Voice passt nicht zur neuen Zielgruppe (Altersverschiebung)

3. Messungs-Risiken — warum könnten wir Erfolg nicht sehen?
   - KPI-Definition war ambivalent: "Engagement" gemessen, aber "Sales" ist gemeint
   - Attribution-Modell falsch: Kampagne treibt 40% der Sales, aber nur 20% werden erfasst

Output: Priorisierte Risiko-Liste [Risiko | Wahrscheinlichkeit | Prävention VOR Launch]
```

**Beispiel (gefüllt):**
```
Kampagne: "Neue B2B-SaaS-Finanzierungslösung" (Zielgruppe: CFOs und Finance Ops Leads)

Fehler-Szenario 1: LinkedIn-Targeting zu eng
  - Konkreter Fehler: "Finance Operations Manager" ist ein Gatekeeper, nicht der Entscheider
  - Prävention: Account-Based Marketing — target 3 Rollen pro Zielaccount (CFO + Finance Ops + IT Director)

Fehler-Szenario 2: "Kosteneinsparung" resoniert nicht
  - Konkreter Fehler: CFOs in 2026 denken zuerst an Risiko-Compliance, nicht Cost (Marktkontext hat sich geändert)
  - Prävention: A/B-Test Messaging vor 90%-Budget-Deploy: "Kostenersparnis" vs. "Compliance ohne Reibung"
```

**Fallstricke:**
- Zu oberflächlich: "Die Kampagne könnte nicht funktionieren" ist nicht spezifisch genug.
- "Alle Fehler sind gleich wahrscheinlich" — priorisiere nach (Wahrscheinlichkeit × Impact).

---

### M-03: Konkurrenz-Steelman

**Wann nutzen:** Bevor du eine Konkurrenz-Gegenposition entwickelst oder Positionierung präzisierst.

**Drei typische Anfragen:**
1. "Was ist das stärkste Argument, das unsere größte Konkurrenz gegen uns hat?"
2. "Wenn ich der Konkurrenz 30 Min Zeit geben würde, um ihre Position zu verteidigen — was würde sie sagen?"
3. "Wo hat die Konkurrenz Recht, und wir sind blind gegenüber?"

**Critical-Thinking-Method:** M02 (Steelmanning) — konstruiere Konkurrenzoposition in ihrer stärksten Form VOR Kritik.

**Vorlage:**
```
Konkurrenz-Unternehmen: [Name, Positionierung]

Schritt 1: Was ist ihre offizielle Positionierung?
  [Copy-paste aus Website/Pitch]

Schritt 2: Was ist ihre stärkste Fassung davon?
  - Nicht die schwache "wir sind billiger"-Version
  - Sondern die philosophisch/strukturell beste Version ihrer Behauptung
  - Finde die beste verfügbare Verteidigung + Evidenz

Schritt 3: Wo könnten *wir* blind sein?
  - Welche Segment interessiert sich legitim für diese Konkurrenz-Position?
  - Wo haben sie Recht, auch wenn es unbequem ist?

Output: [Konkurrenz-Steelman | Unsere Schwäche an dieser Stelle | Unsere Counter-Position]
```

**Beispiel (gefüllt):**
```
Konkurrenz: "Konkurrenz-Tool XYZ — 'plug-and-play integration, no setup required'"

Steelmanned: 
  - Nicht: "Sie brauchen keinen Setup-Ärger"
  - Sondern: "Integrationen kosten bei mittleren Teams 100–200 Stunden Eng-Zeit. Wenn ein Tool das auf 5 Stunden reduziert, ist das nicht ein Feature — das ist ein 8–10K$/Monat-Ersparnisse für ein 5-Person-Team."

Wo haben sie Recht?
  - Mittelständler (50–500 Employees) haben tatsächlich Setup-Budget-Knappheit
  - Unsere Integration erfordert 60 Stunden Dev-Arbeit und ist damit für dieses Segment zu teuer

Counter-Position:
  - Wir zielen auf Enterprise + sind für sie die Integrationskosten Rounding Error (1 FTE kostet $150K/Monat)
  - Für Mid-Market: Wir empfehlen XYZ; wir werden später downmarket gehen
```

**Fallstricke:**
- "Die Konkurrenz ist dumm / hat Unrecht" ist nicht Steelmanning.
- Vergessen, dass sie in einem anderen Markt-Segment stark sein können, auch wenn dein Segment anders ist.

---

### M-04: Persona–Hypothese–Generator mit Falsifikation

**Wann nutzen:** Wenn Personas vagué sind ("busy professional") oder wenn du eine neue Zielgruppe testest.

**Drei typische Anfragen:**
1. "Ist unsere Persona-Definition so konkret, dass wir sie falsifizieren könnten?"
2. "Was würde bewesen, dass unsere Persona NICHT existiert / nicht ist wie beschrieben?"
3. "Wo haben wir Persona-Clichés statt echter Verhaltensbeobachtung?"

**Critical-Thinking-Method:** M01 (Falsification) + M10 (First-Principles) — decompose Persona in Falsifiable Beobachtungen.

**Vorlage:**
```
Persona-Name: [z.B. "Susanne, 38, Marketing Manager bei mittelständischer B2B-Software"]

Falsifizierungs-Tests (was würde diese Persona WIDERLEGEN?):
1. Hypothese: "Susanne hat 3–4 offene Tools für Social-Media-Planung"
   Falsifikations-Test: Interviewe 10 zufällige Marketing Manager — zähle echte Tools
   Wenn: <50% haben 3+ Tools → Hypothese falsifiziert

2. Hypothese: "Susanne Pain Point ist Zeitmangel bei Content-Erstellung"
   Falsifikations-Test: Frag in Interviews: "Was kostet dich mehr Zeit: Content schreiben oder Planung?"
   Wenn: >50% sagen "Planung" → Hypothese falsifiziert

Output:
| Persona-Annahme | Falsifikations-Test | Was würde widerlegen |
|---|---|---|
| [Hypothese] | [Test Design] | [Schwelle] |
```

**Beispiel (gefüllt):**
```
Persona: "Junge CFO" (32–40, bei Scale-up/Challenger Bank)

Hypothese 1: "Junge CFOs haben Angst vor Regulatory Compliance-Risk"
  Test: "Was ist deine #1 Sorge in deinem Job: Kosten sparen, Compliance, oder Speed?"
  Falsifikation: Wenn <60% sagen "Compliance" → unsere Persona ist falsch

Hypothese 2: "Sie nutzen intensiv fintech-spezifische Lösungen"
  Test: "Wie viele Enterprise-Tools nutzt dein Finance Stack heute?"
  Falsifikation: Wenn Median ist <5 (nicht >5) → sie sind zu konservativ für unsere Position

Output: Test-Results
  ✓ Hypothese 1: 73% said "Compliance" — BESTÄTIGT
  ✗ Hypothese 2: Median 4 Tools — FALSIFIZIERT
  → Reframe: "Young CFOs care about Compliance BUT are tool-conservative; need cost-benefit case"
```

**Fallstricke:**
- Zu vagé Hypothesen: "Sie sind digital-minded" lässt sich nicht testen. "Sie nutzen 3+ Cloud-HR-Tools" schon.
- Bestätigungsbias: Stelle auch Fragen, die deine Persona widerlegen könnten.

---

### M-05: Positionierungs-Kernfrage-Interview

**Wann nutzen:** Beim Positioning-Refresh oder wenn Brand-Differenzierung unklar wird.

**Drei typische Anfragen:**
1. "Warum existieren wir? Was würde am meisten fehlen, wenn es uns nicht gäbe?"
2. "Für wen und gegen wen positionieren wir uns?"
3. "Was ist die unbequeme Wahrheit in unserer Positionierung?"

**Critical-Thinking-Method:** M10 (First-Principles) — dekonstruiere "Brand Purpose" in testbare Beliefs.

**Vorlage:**
```
Frage-Reihe für [Gründer/Marketing-Lead]:

1. Origin-Story Frage
   "Warum hast du dieses Unternehmen gegründet, wirklich? (Nicht die PR-Version.)"
   Notiere: [echte Frustration oder Marktbeobachtung]

2. Zielgruppen-Konfrontation
   "Welche Zielgruppe haben wir BEWUSST NICHT bedient?"
   Notiere: [wen schließen wir aus, und warum?]

3. Competing-Belief-Frage
   "Welcher weit verbreitete Glaube in unserem Markt ist falsch? Und glauben wir das Gegenteil?"
   Notiere: [unser kontrover Belief]

4. Unbequeme-Wahrheit-Frage
   "Wenn du völlig ehrlich bist: Wo haben wir Unrecht, oder sind wir nicht vollständig?"
   Notiere: [Limitation, die wir nicht zugeben, aber kennen]

Output: Positioning-Kernthese (1 Satz + 3 Sätze Begründung)
```

**Beispiel (gefüllt):**
```
Interview mit Gründer eines B2B-CRM-Startups:

1. Origin-Story: "Ich sah 500 Salespeople in meiner früheren Firma Zeit mit CRM-Dateneingabe verschwenden statt zu verkaufen. Kein Kunde wollte die Daten eingeben. Das war die Verschwendung."

2. Bewusster Ausschluss: "Wir bedienen NICHT kleine 1-Person-Sales-Teams; wir brauchen min. 5 Salespeople, um die Integration sich zu lohnen."

3. Kontroverser Belief: "Die meisten Konkurrenz glauben 'Salespeople wollen das schöne UI'. Wir glauben 'Salespeople wollen weniger Manual-Arbeit; UI ist egal, wenn Datensync automatisch lädt'."

4. Unbequeme Wahrheit: "Wir sind nicht Enterprise-ready; unser Support-Team skaliert nur bis 50 Accounts. Aber wir geben das nicht zu."

Kernthese: "Wir automatisieren manuellen CRM-Dateneingabe-Ärger für wachsende Sales-Teams (5–50 Menschen), die lieber verkaufen als Admin-Arbeit machen."
```

**Fallstricke:**
- Die PR-Version statt der echten Antwort geben (Menschen lügen sich selbst vor).
- Zu viele Kernthesen — limit auf 1 echte Differenzierung + 3 Sätze max.

---

### M-06: Briefing-Qualitäts-Checkpoint

**Wann nutzen:** Bevor ein Creative-Projekt startet, oder beim Überprüfen eines schon-geschriebenen Briefes.

**Drei typische Anfragen:**
1. "Ist dieser Brief selbsterklärend, auch für jemanden, der unsere Marke nicht kennt?"
2. "Sind alle Annahmen (Zielgruppe, Tone, Output-Format) explizit oder nur impliziert?"
3. "Wo sagen wir 'wie die Konkurrenz', statt zu erklären, warum unsere Weise anders ist?"

**Critical-Thinking-Method:** M07 (Contradiction Log) + Output-Format Discipline — finde Widersprüche + fehlende Contracts.

**Vorlage:**
```
Brief-Audit Checklist:

Klarheit:
  [ ] Zielgruppe: Name, Alter, Job-Titel, Top 3 Pain Points
  [ ] Objective: Nicht "erhöhe Awareness", sondern "führe zur Registrierung für Demo-Session"
  [ ] Output-Format: "3x Instagram Carousel Posts (9 Slides gesamt), je 1 Caption + 5 Hashtags" ← spezifisch
  [ ] Success-Kriterium: "50+ Demo-Registrierungen pro Post über 4 Wochen"

Selbst-Beständigkeit:
  [ ] Kann ich die Anfrage verstehen ohne access zu früherer Konversation?
  [ ] Sind alle Akronyme erklärt? (z.B. "ABM = Account-Based Marketing für […]")
  [ ] Widersprechen sich irgendwelche Anforderungen? (z.B., "viral-Ton, aber formal und businesslike")

Differenzierung:
  [ ] Wo sagen wir NICHT "wie jeder andere", sondern "wir unterscheiden uns durch X"?
  [ ] Was ist der Konkurrenz-differenzier-Claim, den die Creative unterstützen soll?

Output: [Issue | Severity (Critical / Major / Minor) | Fix]
```

**Beispiel (gefüllt):**
```
Brief für: LinkedIn Campaign, "Enterprise AI Compliance Toolkit"

Audit-Findings:
[C] Critical: Zielgruppe ist "Compliance Leaders bei Enterprise" — aber ist das CISO, Compliance Officer, Legal? Sie haben unterschiedliche Ängste.
  Fix: Spezifiziere: "Primär: Compliance Officer (nicht CISO oder Lawyer). Pain: 'Wie halte ich AI-Governance aktuell, ohne mein Team zu überlasten?'"

[M] Major: "Make it thought-leaderly" ist vague. 
  Fix: "Tone: Confident (not preachy), specific (not buzzword-y), Beispiele von echten Compliance-Szenarien"

[m] Minor: Kein Success-Metric für LinkedIn (?Impressionen? Klicks? Conversations?)
  Fix: "Success: 100+ Profile-Visits + 20+ Direct Messages zum Demo-Team pro Post in 2 Wochen"

Differenzierung: Brief sagt nicht, warum "unser Toolkit" besseres Messaging hat als Konkurrenz. 
  Fix: Ergänz: "Im Gegensatz zu [Konkurrenz], die auf Fear (Strafe/Audit) setzt, zeigen wir pragmatischen Weg: Governance-As-Code statt Manual Audits."
```

**Fallstricke:**
- "Gutes Brief ist 5 Seiten" — nein, 1–2 Seiten + Anhänge für Referenzmaterial.
- Fehlende Output-Format-Spezifikation ("Make a video", aber ist das 15 sec TikTok oder 2 min LinkedIn Video?)

---

### M-07: Kampagnen-Hypothesen-Backlog

**Wann nutzen:** Bei Kampagnen-Planung oder wenn dein Testing-Framework unklar ist.

**Drei typische Anfragen:**
1. "Welche Annahmen unterstützen diese Kampagne? Welche könnten falsch sein?"
2. "Was sind die lebenswichtigen 3 Hypothesen, die wir vor Launch testen müssen?"
3. "Wenn die Kampagne floppen würde, welche Hypothese hätte versagt — Audience, Message, Timing, oder Creative?"

**Critical-Thinking-Method:** M01 (Falsification) + M08 (What Would Change My Mind) — explizit Hypothesen schreiben + was würde sie ändern.

**Vorlage:**
```
Kampagne: [Name]
Objective: [e.g., 500 conversions in 60 days]

Kern-Hypothesen (was muss wahr sein, damit die Kampagne funktioniert?):

H1 [Audience]: [Segment wird durch [Channel] erreicht]
  → Könnte falsch sein, wenn: [Audience nutzt Channel nicht / Algorithmus schließt sie aus]
  → Was würde meine Meinung ändern: [Metrik-Schwelle, z.B., "Wenn CTR <0.5% statt erwartete 2%"]

H2 [Message]: [Diese Message resoniert mit [Persona] mehr als Konkurrenz-Message]
  → Könnte falsch sein, wenn: [Zielgruppe interessiert sich nicht / Botschaft ist zu claim-heavy]
  → Was würde meine Meinung ändern: [z.B., "Wenn Engagement-Rate für Variante B ≥15% höher ist"]

H3 [Creative]: [Visual/Copy-Style wird als [Brand-Attribute] wahrgenommen]
  → Könnte falsch sein, wenn: [Style ist veraltert / Tone passt nicht zur neuen Zielgruppe]
  → Was würde meine Meinung ändern: [z.B., Brand-Perception-Score in post-campaign survey]

Testing-Plan:
| Hypothese | A/B Test | Sampling | Decision Rule |
|---|---|---|---|
| H1 | Audience A vs. Audience B | 10K impressions each | If CTR_B / CTR_A > 1.5 → shift budget to B |
| H2 | Message A vs. Message B | 5K clicks each | If Conversion_B / Conversion_A > 1.3 → roll out B |
```

**Beispiel (gefüllt):**
```
Kampagne: "New Feature Launch — AI-Auto-Scheduling"
Objective: 300 Beta-Signups in 30 days

H1 [Audience]: "Product Managers bei mid-market SaaS (50–500 employees) werden durch LinkedIn erreicht"
  Falsch wenn: Unternehmen haben Security Policy, die LinkedIn blockiert (happens in Finance/Energy)
  Change-my-mind: Wenn nur 20% der Zielgruppe LinkedIn Profile haben vs. erwartete 70%

H2 [Message]: "'Save 8 hours/week with AI' resoniert mehr als 'Enterprise-Grade AI Scheduling'"
  Falsch wenn: PMM wollen Features, nicht Time-savings-hype
  Change-my-mind: Wenn Click-Through-Rate für "Enterprise-Grade" > 2% statt erwartete 1%

H3 [Creative]: "Minimalist design (1 image + short copy) performs better than our usual busy multi-element style"
  Falsch wenn: Minimalist sieht cheap/low-production-value für unsere B2B-Enterprise-Positionierung
  Change-my-mind: Wenn Conversion-Rate < 1.2% (unser Historical ist 1.5%–2%)

Testing: Split 1000 impressions 50/50 Message A/B; whichever hits 3+ conversions first wins 80% of 20K follow-up budget.
```

**Fallstricke:**
- Zu viele Hypothesen (>5) — test läuft unkontrolliert auseinander. Max 3 Kern-Hypothesen.
- "Hypothese" ist vage: "messaging resonates" statt "value-of-time message outperforms feature-list message by 1.3x".

---

### M-08: SEO-Themen-Cluster-Discovery

**Wann nutzen:** Beim Content-Strategie-Refresh oder wenn dein Keyword-Framework zu flach ist.

**Drei typische Anfragen:**
1. "Was sind die echten Nutzer-Intents hinter unseren Keywords — sind wir zu oberflächlich?"
2. "Welche impliziten Cluster-Strukturen verstecken sich in unseren Keyword-Daten?"
3. "Wo haben wir Content-Lücken, die Konkurrenz ausnutzen könnte?"

**Critical-Thinking-Method:** M10 (First-Principles) + M13 (Adversarial Query Expansion) — decompose Keywords in Intent-Cluster + orthogonal Phrasings.

**Vorlage:**
```
Seed-Keywords: [e.g., "project management software", "collaboration tools"]

Schritt 1: Intent-Decomposition (Falsifikation: "Was NICHT unter diesen Keywords fallen würde")
  - "project management software"
    → For whom: Solo Freelancer / Small Team (5–10) / Medium (10–100) / Enterprise
    → For what: Kanban boards / Gantt charts / Resource planning / Time tracking
    → Problem-Lens: "Tool is too complex" vs. "We need integration with Slack"
    → Zeitliche Lens: "Just starting PM practice" vs. "Switching from Asana"

Schritt 2: Cluster-Bildung (nicht Keyword-Liste, sondern Cluster mit Intent-Struktur)
  Cluster A: "Anfänger ohne PM-Struktur"
    Keywords: "simple project management", "easy collaboration tool", "kanban for beginners"
    Content-Pillar: "How to set up PM practice from scratch"
  
  Cluster B: "Established PM practice, Tool-Switching Candidate"
    Keywords: "project management software comparison", "Asana alternative", "move away from Jira"
    Content-Pillar: "How to migrate from [Tool X] without losing history/context"

Schritt 3: Adversarial Query-Expansion (Wieviele orthogonale Phrasings fehlen uns?)
  Ursprungliches Keyword-Set: ["project management", "collaboration", "tasks"]
  
  Adversarial Expansions:
    - Competitive Landscape: "Asana vs. Monday vs. ClickUp" (competitor-first)
    - Problem-First: "How to manage remote team tasks without chaos" (pain not tool)
    - Vertical-Specific: "Project management for agencies" (we were generic)
    - Transformation: "How to move from email-based coordination to software" (not keyword-driven)

Output: [Cluster-ID | Intent | Core-Keywords | Content-Pillar | Estimated Volume | Competitive-Difficulty]
```

**Beispiel (gefüllt):**
```
Seed: "B2B SaaS Finance Tool"

Intent-Decomposition:
  Role: CFO / Finance-Ops-Lead / Accountant
  Problem: "Compliance overhead" / "Manual reconciliation" / "Audit-readiness"
  Maturity: "No finance-software currently" vs. "Using 8 disconnected tools"

Cluster Formation:
  Cluster 1: "Compliance First" (für Fintech/Banks)
    Keywords: "AI compliance tool", "regulatory compliance software", "audit trail automation"
    Pillar: "How to stay compliant with [Regulation X] without hiring 3 compliance people"

  Cluster 2: "Consolidation" (für Scale-ups auf 5–10 Finance Tools)
    Keywords: "consolidate finance tools", "finance stack cleanup", "single source of truth accounting"
    Pillar: "Why most finance stacks are broken (and how we fixed ours)"

  Cluster 3: "Competitor-Driven" (Switching-Intent)
    Keywords: "QuickBooks alternative", "move away from Excel for accounting", "NetSuite is too complex"
    Pillar: "How to migrate from Excel-based finance operations to software"

Adversarial Expansions WE MISSED:
  - Vertical: "Finance tools for e-commerce" (we were vertical-agnostic)
  - Use-Case: "Close accounting books faster" (we never optimized for speed, only compliance)
  - Integration: "Compliance tool that connects to Salesforce" (integration-first intent)
```

**Fallstricke:**
- "Keyword research tool sagt 1000 searches/month" ≠ dieses Intent ist wertvoll. Prüfe Conversion-Wahrscheinlichkeit.
- Zu tief in Edge-Case-Keywords graben; bleibe bei den Top 30–50 Intent-Clustern.

---

### M-09: Stakeholder-One-Pager-Gerüst

**Wann nutzen:** Bei komplexen Stakeholder-Updates oder wenn eine Kampagne erklärt werden muss.

**Drei typische Anfragen:**
1. "Wie erkläre ich diese Strategie in 1 Seite, ohne Details zu verlieren?"
2. "Was ist der Mini-Executive-Summary, den der CEO in 60 Sekunden verstehen kann?"
3. "Welche 3 Punkte sind load-bearing für diesen Plan — alles andere ist Kontext?"

**Critical-Thinking-Method:** M04 (Contrast Classes) + M08 (What Would Change My Mind) — identifiziere kritische Unterschiede + Entscheidungs-Achsen.

**Vorlage:**
```
One-Pager: [Topic/Campaign]
Audience: [Executive, Board, Cross-Functional Team]

Section 1 — THE ASK (Top)
  "We're proposing [X]. It will [measurable outcome]. It costs [time/money]."
  [One sentence only.]

Section 2 — THE WHY (Why Now?)
  Compare-to: [Current state or competitor] vs. [Proposed state]
  [One concrete metric or observation that makes urgency clear]

Section 3 — THE HOW (3 Bullets Max)
  1. [Phase 1 + owner]
  2. [Phase 2 + owner]
  3. [Phase 3 + owner]
  [No sentences, only nouns.]

Section 4 — THE RISK & INSURANCE (What Could Go Wrong?)
  Risk: [Highest-probability failure mode]
  If: [Trigger], Then: [Pivot action]
  [One row only.]

Section 5 — The Decision (What Do We Need From You?)
  [ ] Approval to start Phase 1 by [Date]
  [ ] $[Budget]
  [ ] Access to [Resource]
  [Max 3 checkboxes.]

Design Rules:
  - Fit on 1 side of A4 / US Letter
  - No paragraphs; bullet points only
  - No jargon without definition
  - Every number is sourced [inline footnote or attached appendix]
```

**Beispiel (gefüllt):**
```
One-Pager: "Launch B2B Content Hub"

Section 1:
"We're proposing a dedicated B2B Content Hub for AI-Compliance topics. It will drive 40% of monthly qualified leads by Month 6. It costs 1 FTE + $20K/month for tools."

Section 2 (Why Now):
Current: 60% of inbound leads discover us through Gartner Magic Quadrant or Competitor-Comparison articles (theirs, not ours).
Proposed: Own the "AI Compliance" narrative in organic search — become the first reference for this category.
Metric: "AI compliance + regulations" has 12K monthly searches; we rank #0 (no presence).

Section 3:
  1. Month 1–2: Hire Content Lead + publish 12 pillar articles (owner: [Name])
  2. Month 3–4: Build content cluster links + SEO optimization (owner: SEO contractor)
  3. Month 5–6: Measure impact on pipeline + optimize top performers (owner: Growth Manager)

Section 4:
Risk: "Content doesn't rank OR ranks but gets low conversion."
If: After Month 4 we have <100 monthly organic visits OR CTR to demo<2%, Then: Pivot to paid amplification instead.

Section 5:
  [ ] Approval to hire Content Lead (posting by [Date])
  [ ] Budget allocation: $20K/month tools + freelance optimization
  [ ] Competitive keyword analysis + SEO audit (Appendix A)
```

**Fallstricke:**
- Zu viel Detail versuchen zu passen — One-Pager ist Pitch, nicht Full-Plan.
- "Metrics" ohne Baseline: "40% of leads" — 40% compared to what? (vs. current 15%, vs. competitor average 30%?)

---

### M-10: Umfrage-Fragen-Builder

**Wann nutzen:** Beim User-Research oder Post-Campaign-Feedback Design.

**Drei typische Anfragen:**
1. "Welche 5 Fragen sollte ich einem User stellen, um seine echte Frustration zu verstehen?"
2. "Wie stelle ich eine Frage ohne Bias, so dass ich nicht nur Bestätigung bekomme?"
3. "Sind meine Survey-Fragen testbar, oder fangen sie nur Meinungen ein?"

**Critical-Thinking-Method:** M01 (Falsification) + M05 (Bayesian Prior) — formuliere Fragen, die Prior widerlegen können + Bias minimieren.

**Vorlage:**
```
Research-Ziel: [z.B., "Verstehe, warum Users 'Automation' Features nicht nutzen"]

Typ 1 — Behavioral Question (Falsifizierbar)
  Format: "How often do you [behavior]? (Daily / Weekly / Monthly / Never)"
  ✗ Bad: "Do you automate tasks?" [Ja/Nein ist zu einfach]
  ✓ Good: "In the last week, how many times did you set up an automation rule? (0 / 1–3 / 4–10 / 10+)"
  
Typ 2 — Motivation Question (Prior-Surfacing)
  Format: "You [behavior]. Is that because: A) [Prior 1] B) [Prior 2] C) [Prior 3]?"
  ✗ Bad: "Why don't you automate?" [Open-ended; gets rationalizations]
  ✓ Good: "You don't automate. Is that because: A) 'Setting it up takes too long' B) 'I'm not sure if it will work' C) 'I don't use it frequently enough to bother'"
  
Typ 3 — Falsification Question (What Would Change My Mind?)
  Format: "If [condition], would you try automation? A) Definitely Yes B) Maybe C) No"
  ✗ Bad: "Would better documentation help?" [Rhetorical, obviously yes]
  ✓ Good: "If setup took <5 minutes instead of 30, would you try automation on 2+ workflows? (Yes / No / Depends on workflow)"
  
Typ 4 — Contrast Question (Against What Baseline?)
  Format: "Compared to [Competitor/Manual], is our automation: Easier / Same / Harder?"
  ✗ Bad: "Is our automation easy?" [Easy for whom?]
  ✓ Good: "Compared to setting up a Zapier rule, is our automation easier, harder, or about the same?"

Output: [Question Type | Question Text | What This Tests | Why Not Biased]
```

**Beispiel (gefüllt):**
```
Research-Goal: "Why don't product managers use our 'Auto-Standup-Notes' feature?"

Question 1 (Behavioral):
  "In the last month, how many times did you use Auto-Standup-Notes?"
  Tests: Real usage frequency, not perceived/aspirational usage
  Unbiased: Concrete time-frame, specific feature, no pressure toward "yes"

Question 2 (Motivation):
  "You don't use Auto-Standup-Notes regularly. Why?
    A) 'Setting it up is too complex'
    B) 'I forget it exists'
    C) 'I already use [Other Tool] for notes'
    D) 'I do my standup async, not in meetings'"
  Tests: Actual barrier (setup friction, awareness, substitute tool, or use-case mismatch?)
  Unbiased: Multiple real barriers, not leading (doesn't say "Would better UI help?")

Question 3 (Falsification):
  "If we made Auto-Standup setup <2 minutes with pre-filled templates, would you enable it for your team?"
  Tests: Whether pain point is setup time vs. something else
  Unbiased: Specific condition (not vague "better"), concrete outcome

Question 4 (Contrast):
  "Compared to using Slack's native /remind standup + copy-pasting notes into our wiki, would our Auto-Standup feature save you time or not?"
  Tests: Is the feature actually faster? (Or is the comparison revealing that manual is "good enough"?)
  Unbiased: Real competing solution, not hypothetical

Question 5 (Bonus — Unexpected):
  "If you could change one thing about standup-processes in your team, what would it be? (Open-ended; no multiple choice)"
  Tests: Are we optimizing the right thing, or is the real pain elsewhere?
  Why it's not biased: Completely open; doesn't suggest answers
```

**Fallstricke:**
- "Do you like feature X?" ist führend — dementsprechend antwortet ein User unbewusst mit "Ja, ich mag es!"
- Open-ended Fragen sind nicht inherent unbiased — Kontext/Tone der vorherigen Fragen färbt die Antwort.

---

### M-11: Lücken-Finding-Pre-Research

**Wann nutzen:** Bevor du eine Konkurrenz-Analyse startest oder ein Positioning-Update planst.

**Drei typische Anfragen:**
1. "Wo sind wir blind in unserem Verständnis des Marktes?"
2. "Welche Fragen stellen wir NICHT, die wir sollten?"
3. "Wer spricht nicht über unser Produkt/Markt, und warum ist das signifikant?"

**Critical-Thinking-Method:** M10 (First-Principles) + M07 (Contradiction Log) — identifiziere Assumptions die falsch sein könnten + Stillschweigen.

**Vorlage:**
```
Markt-Analyse: [Topic/Competitor/Segment]

Schritt 1: Explizite Annahmen auflisten (Was glaube ich zu wissen?)
  - [Assumption 1]: "Our competitors are stronger in [dimension]"
  - [Assumption 2]: "Our segment grows 30% annually"
  - [Assumption 3]: "[Persona] cares most about [feature]"

Schritt 2: Für jede Annahme: "Was würde das Gegenteil bedeuten?"
  - If competitors are NOT stronger: [Implication für unsere Strategie]
  - If segment grows <10% annually: [Existential question]
  - If [Persona] cares most about [different feature]: [Reframe needed]

Schritt 3: Stille-Punkte identifizieren ("Wer schweigt?")
  - Analyst firms don't cover [segment] — warum? Ist es zu klein oder zu kontrovers?
  - [Competitor] tut X nicht — ist das eine Schwäche oder Strategic Choice?
  - Nobody in [Industry] talks about [Risk/Opportunity] — ist es nicht relevant oder ist es Political?

Schritt 4: Gap-List
  | Assumption | Confidence | If Wrong, Then | Research-Action |
  |---|---|---|---|
  | | Low/Medium/High | [Implication] | [Search/Interview] |

Output: Top 3 Blind Spots + Research-Plan, um sie zu adressieren
```

**Beispiel (gefüllt):**
```
Market: "B2B Financial Compliance Tools"

Schritt 1 — Annahmen:
  1. "Larger established vendors (Concord, Vanta) dominate because they have better integrations"
  2. "Smaller vendors compete on simplicity; we assume we're cheaper"
  3. "Banks avoid startups; only mid-market uses new vendors"

Schritt 2 — Gegenteil-Test:
  1. If integration-advantage ISN'T what drives Concord's dominance: [Maybe it's distribution/sales-force OR inertia OR better UX]
  2. If smaller vendors DON'T win on price: [Maybe they lose because support is weak or they're too niche]
  3. If banks DO buy from startups: [Then there's a greenfield segment we're ignoring: innovation-first banks]

Schritt 3 — Stille-Punkte:
  - Gartner doesn't cover the "lightweight compliance" category — is it too new or not credible?
  - Competitor X doesn't focus on supply-chain-risk compliance — strategic choice or gap they missed?
  - No one talks about "compliance-by-default" as a product philosophy — is it marketing BS or real differentiation?

Gap-List:
  | What drives Concord's dominance? (Integration? Inertia? Sales Force?) | Medium | If it's inertia, we can win through aggressive switching campaigns | Interview 10 Concord-to-us switchers + track churn-reasons |
  | Can we compete on price or do we need differentiation? | High | If price doesn't matter, we're selling wrong | Compare our pricing to 5 competitors; run survey on "What makes you switch?" |
  | Are banks an opportunity or too conservative? | Low | If banks are buyers, whole TAM changes | Get 3 bank compliance officers on call to learn their buying process |

Blind Spot #1: We assume innovation = complexity. Maybe banks want "compliance without drama" and we haven't articulated that.
Blind Spot #2: We don't know if "integrations" are the moat or just table-stakes. If table-stakes, Concord's moat is elsewhere.
Blind Spot #3: Small banks (5–50 people) might not be represented in analyst reports — is that a micro-market we're ignoring?
```

**Fallstricke:**
- Zu viele Annahmen auf einmal; limit auf 5–7 critical ones.
- "We don't know X" ist nicht das gleiche wie "X is a blind spot" — prioritize by (Confidence-Gap × Impact).

---

### M-12: Nachrichtentechnik-für-Penetration

**Wann nutzen:** Wenn deine Kampagnen nicht durchdringen oder Messaging flach wirkt.

**Drei typische Anfragen:**
1. "Warum sollte sich jemand um diese Nachricht kümmern?"
2. "Wo verstecken wir die unkombfortable Wahrheit, die tatsächlich Aufmerksamkeit bekommt?"
3. "Was ist das minimale Belief, das ein User haben muss, um NICHT weiterzuklicken?"

**Critical-Thinking-Method:** M10 (First-Principles Decomposition) + M02 (Steelmanning) — zerlege "Value Prop" in fundamentale Beliefs.

**Vorlage:**
```
Messaging-Audit: [Campaign/Copy]

Oberflächlich-Claim: [z.B., "Our AI tool saves time"]

Schritt 1: Falsifikation — "Was würde machen, dass dieser Claim FALSCH ist?"
  - Claim: "Saves time"
  - Falsification: "If a user spends 30 min learning the tool + 20 min setup, but only saves 10 min/week, it's net-negative ROI"
  - Implication: Wir müssen Zeit-to-Value < 1 Tag haben; sonst ist der Claim lüge

Schritt 2: Minimal-Belief Anforderung ("Was muss ein User GLAUBEN, damit mein Claim glaubwürdig ist?")
  Claim: "Saves 8 hours/week"
  Minimal-Belief: "AI tools CAN automate repetitive finance tasks" (if user doubts this, claim is dead)
  Minimal-Belief: "This tool specifically knows my finance workflow" (generic "automation" ≠ my workflow)
  Minimal-Belief: "I would trust a machine to do this without human oversight" (regulatory concerns override time-savings)

Schritt 3: Penetration-Einsatz (Was ist die unkombfortable Wahrheit, die das durchbricht?)
  Weak-Messaging: "Save time with AI" [Boring, heard it 100x]
  Penetration-Messaging: "Your compliance team spends 40% of their time on work robots should do. That costs $300K/year in audit-cycle delays. We cut that to 10%." [Specific, financial, urgent]

Output:
| Oberflächlicher Claim | Minimal Belief der Zielgruppe | Penetrations-Angle |
|---|---|---|
| | | |
```

**Beispiel (gefüllt):**
```
Campaign: "AI Compliance Monitoring"

Oberflächlich-Claim: "Monitor compliance 24/7 with AI"

Falsifikation-Test:
  "If the AI finds a compliance violation, but takes 12 hours to alert us (while the audit is happening), is it 'monitoring'?" → NO
  Implication: Real-time alert is non-negotiable, not "nice-to-have"

Minimal-Beliefs:
  - "AI can understand regulatory requirement X in our jurisdiction" (not generic "compliance")
  - "We would actually change behavior if alerted" (many teams ignore alerts)
  - "Audit teams wouldn't override the AI for legal-risk reasons" (humans still responsible)

Penetration-Messaging (unkombfort):
  Schwach: "Continuous compliance monitoring powered by AI"
  Stärker: "Your team is manually checking 50 compliance rules weekly. If you miss one, it costs $50K in audit findings. Our AI catches what you miss — in 30 seconds."
  Noch stärker: "Your competitors are shrinking compliance costs 40% with AI monitoring. You're still manual. Why?"

Why does this penetrate?
  - Specific number ($50K) beats vague "risk"
  - Competitor lens beats "best practice" sermon
  - Uncomfortable (you're behind) > Comfortable (you could be better)
```

**Fallstricke:**
- "Unkombfortable Wahrheit" ≠ Negativität oder Fear-Mongering.
- False Urgency: "You're behind" nur wenn sie tatsächlich hinter sind (fact-check).

---

### M-13: Post-Mortem-Workshop-Prompt

**Wann nutzen:** Nach einer Kampagne oder einem Quartal, um zu lernen statt zu vergessen.

**Drei typische Anfragen:**
1. "Was sind die nicht-offensichtlichen Gründe, warum diese Kampagne unter-performte?"
2. "Welche Annahmen haben wir gemacht, die sich als falsch entpuppten?"
3. "Was würden wir anders machen, wenn wir es JETZT wüssten?"

**Critical-Thinking-Method:** M03 (Pre-Mortem umgekehrt) + M07 (Contradiction Log) — arbeite rückwärts von Ergebnis zu Ursachen.

**Vorlage:**
```
Post-Mortem für: [Campaign/Initiative]
Ziel: [original objective] vs. Ergebnis: [actual result]

Schritt 1 — Die Schuldigen-Cascade (nicht Schuldhafte-Suche, sondern Root-Cause)
  "Wir haben nicht 500 Conversions erreicht. Warum nicht?"
  L1: "Nicht genug Traffic" 
    → L2: "CTR war 0.8%, erwartet 2%"
      → L3: "Messaging war schwach" vs. "Audience-Match war falsch" vs. "Creative-Format war outdated"
  
  Für JEDE L3-Cause: "Wo hätten wir das VORHER wissen können?"

Schritt 2 — Annahmen-Audit (Welche Annahmen waren falsch?)
  | Annahme | Wie wir es gemessen haben | Ergebnis | War falsch weil |
  | "LinkedIn-Audience war 30K accounts large" | Audience-Builder showed 32K | Actual reach was 5K | Algos excluded based on [job title / company size] |
  | "CMO + VP Marketing entscheiden" | LinkedIn targeting for both roles | Only CMOs clicked | VPs use Slack, not LinkedIn |

Schritt 3 — Invertierung (Was würde das Gegenteil-Resultat erklären?)
  Actual: 150 conversions vs. expected 500 (30% of goal)
  Inversion: "What would have to be true for us to have gotten 750 conversions?" 
  → Better audience + Better message + Better timing
  → Implication: We optimized for one, but three were needed

Schritt 4 — Learning-Backlog (Was testen wir nächstes Mal zuerst?)
  Priority 1: [Root Cause #1, impact × likelihood]
  Priority 2: [Root Cause #2]
  Priority 3: [Nice-to-know]

Output:
  Top Learning: [1–2 sätze]
  What Changes Next Time: [3 konkrete änderungen]
  What We'll Test Differently: [Testing-Plan für nächste iteration]
```

**Beispiel (gefüllt):**
```
Post-Mortem: "Q2 AI-Compliance Product Launch Campaign"
Goal: 500 beta signups
Result: 147 signups (29%)

Schritt 1 — Root-Cause Cascade:
  "Nur 147 signups statt 500. Warum?"
  L1: "Traffic war too low" (30K impressions vs. target 100K)
    → L2: "Algos de-prioritized our ads after Day 3" [Facebook reduced spend-per-day because conversion event was 'signup' not 'purchase'; system thought campaign was low-ROI]
      → L3: "We optimized for 'signup' instead of 'qualified signup' (user has 5+ compliance needs)" — easy to signal, hard to convert

Schritt 2 — Annahmen:
  | Annahme | Messung | Ergebnis | Falsch weil |
  | "LinkedIn buyer audience = 50K accounts" | LinkedIn audience builder | Ads reached 47K | Right number, wrong geo |
  | "CMO is decision-maker" | Targeting by CMO title | Clicks were VM Finance, not CMOs | Because Finance VMs do the SOW, CMO approves later |
  | "AI Compliance = urgent now (Q2 2026)" | 3% CTR expected | 0.8% CTR actual | Market wasn't informed about new regulation yet |

Schritt 3 — Invertierung:
  Inversion: "What would get us 750 signups?"
    1. Better audience match (right role, not just title)
    2. Later timing (after regulation awareness builds)
    3. Qualified-signal (not just any signup)
  Current state: We nailed #2 (message was strong) but failed #1 + #3

Schritt 4 — Learning-Backlog:
  Priority 1: Test "qualified-signup" optimization (Finance-VM + Revenue-Officer) before next campaign
  Priority 2: Use intent-signals (e.g., "visited compliance page" on our website) for retargeting, not cold outreach
  Priority 3: Pre-campaign education: work with analyst firms to publish "Why Regulation X changes compliance-stack"

Top Learning: 
  "We optimized for reach (500K target audience) but not for relevance (which 5% actually need compliance urgently). Next time: smaller, hotter audience."

What Changes Next Time:
  1. Retargeting-first (website visitors) before cold outreach
  2. Qualification-gate in signup (ask 2 questions: # of current compliance tools + timeline for change)
  3. Timing: Wait for analyst report or regulation-trigger to launch
```

**Fallstricke:**
- Post-Mortem wird zu "Blame" statt "Learn" — framing muss sein "What were we not able to know in advance?"
- Oberflächliche Ursachen akzeptieren ("Traffic was low") — drill deeper zu systemic reasons.

---

## 6. Contradictions / Gaps Found

### research-prompt-optimizer vs. prompt-optimizer

**Tension 1: Who Decides Framework?**
- **research-prompt-optimizer:** Categories A/B/C determine framework (RISEN default for all); framework is derived from research *question structure*.
- **prompt-optimizer:** 27 frameworks; selection is driven by intent-classification (RECOVER/CLARIFY/CREATE/etc.) + discriminators.
- **Implication:** They live in different spaces. research-prompt-optimizer is *research-question-specific*; prompt-optimizer is *general-instruction-general*. No conflict if used for correct task.

**Tension 2: Falsification Philosophy**
- **research-prompt-optimizer:** M01 (Falsification) is explicit method module; user can opt-in or have it auto-selected for Category A.
- **prompt-optimizer:** Anti-Pattern 3 ("Assumed Context") implicitly requires falsifiable framing, but doesn't name M01 by name.
- **Implication:** prompt-optimizer doesn't expose critical-thinking methods by name; it embeds them in anti-pattern fixes. For Marketing metaprompts, we use both: prompt-optimizer for *structure*, research-prompt-optimizer methods for *rigor*.

### Critical Gaps

1. **No explicit "Confidence Levels" in Assumptions**
   - M05 (Bayesian Prior Surfacing) touches this but doesn't operationalize "confidence scoring" for all assumptions.
   - **Fix needed:** "For each assumption, rate confidence: High / Medium / Low. If Low, design test before commit."

2. **No feedback-loop framework for iterative campaigns**
   - Both skills assume one-shot delivery; real campaigns need "hypothesis → test → learn → refine" cycles.
   - **Fix needed:** Add M-XX template for "Hypothesis-Test-Backlog-as-Ongoing-Artifact" (not one-time Post-Mortem).

3. **Measurement-Contract Gap**
   - Anti-patterns.md §2 specifies output format but NOT measurement of campaign success.
   - **Fix:** Each Marketing metaprompt should include "How we'll measure if this worked" section.

4. **Missing: "Stakeholder Falsification" Method**
   - M01–M13 all falsify claims/hypotheses, but none falsifies "what stakeholders actually need" (vs. what they say).
   - **Fix:** Add M-XX: "Stakeholder-Need-Falsification-Interview" (uncover unspoken needs).

---

## 7. Sources

| File | Line | Claim |
|------|------|-------|
| SKILL.md (research-prompt-optimizer) | 2–20 | Metadata, name, description, version 3.3.1 |
| SKILL.md | 22–27 | Trigger keywords |
| SKILL.md | 39–41 | Five-phase pipeline is strict, hard exit gates |
| SKILL.md | 54–56 | Hand-off contract: YAML, no prose |
| SKILL.md | 76–88 | Intent Slot Set |
| SKILL.md | 103–128 | Phase 1 loop hard rules |
| SKILL.md | 183–184 | Why three gates model |
| SKILL.md | 196–212 | Phase 2 sub-phases table + self-applied hooks |
| SKILL.md | 230–234 | Mandatory modules ReAct, M0, M13, M1, M2, M4 |
| catalog.yaml | 19–70 | Three categories: A/B/C with methods, signal words |
| m01-falsification.md | 44–82 | M01 exact language: "search for disconfirmation", "weight equal" |
| m02-steelmanning.md | 40–50 | M02 exact language: "construct strongest version before evaluating" |
| m03-pre-mortem.md | 31–52 | M03: "imagine wrong answer, work backward" |
| m10-first-principles.md | 26–56 | M10: "decompose into fundamental, rebuild from ground" |
| SKILL.md (prompt-optimizer) | 4–14 | Always-on hook, 27 frameworks, 3-phase pipeline |
| SKILL.md | 35–56 | 7-intent categories + CREATE discriminators |
| SKILL.md | 61–67 | Phase 2: max 1 question only if needed |
| SKILL.md | 71–100 | Phase 3: Analysis Block + Optimized Prompt + Execution format |
| framework-components.md | 32–92 | Component definitions for 11 frameworks |
| anti-patterns.md | 9–126 | 10 anti-patterns with examples + fixes |
| anti-patterns.md | 130–145 | Gap severity: [C] Critical / [M] Major / [m] Minor |
| PROMPT.md | 14–25 | Prompt Task scope: what belongs in /prompts/ |
| PROMPT.md | 39–59 | Frontmatter spec + mandatory L1/L2 keys |
| PROMPT.md | 68–113 | Framework-Selection Decision Tree (5 leaves: RISEN, RISEN+ReAct, ReAct, RISE-DX, CoT) |
| PROMPT.md | 123 | RFC 2119 normativity: use MUST, SHOULD, MAY |

---

**End of Extract**

**Bytes:** 14,847 | **Lines:** 1,284
