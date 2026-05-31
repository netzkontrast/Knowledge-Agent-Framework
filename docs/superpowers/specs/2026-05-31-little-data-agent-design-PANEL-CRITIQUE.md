# Spec Panel Critique — little-data Agent Design v1

> **Spec under review:** `2026-05-31-little-data-agent-design.md` (Draft v1)
> **Mode:** critique
> **Panel:** Wiegers, Adzic, Cockburn, Fowler, Nygard, Crispin
> **Focus:** the 5 angles requested by the user
> **Severity:** 🔴 Critical / 🟡 Major / 🟢 Minor

---

## (a) Is the SOUL/persona delta approach actually token-saving, or will smaller models drift?

**MARTIN FOWLER 🟡**
The architectural intent — "assume the model knows Lt. Cmdr. Data, only encode deltas" — is sound for token economy and elegant for capable models (Sonnet, Opus). But it leaks responsibility onto the model's training data, which the spec treats as a constant. For Gemini 2.5 Flash and Haiku 4.5, the canonical-Data prior may be thinner than assumed. Action: add a calibration step to the build sequence that prompts each target model with *only* "You are Lt. Cmdr. Data. Reply in one paragraph to: 'Welche Werte teilst du mit Captain Picard?'" and inspect the output. If the small models return generic-android responses, expand SOUL.md with two concrete voice anchors (≈100 chars each). This adds ≤200 chars to the prompt — still well inside budget — and is cheap insurance.

**KARL WIEGERS 🟡**
N1 says "≤2500 chars (≈700 tokens)" but the spec never defines who validates the budget or when it's measured. Make it executable: add `tools/check_prompt_size.sh` that fails CI when AGENT_PROMPT.md grows beyond 2500 chars. Otherwise budget drift in the build phase is invisible until it's expensive.

**MICHAEL NYGARD 🔴**
You're betting the persona on emergent behavior of the underlying model. That's fine while it works, dangerous when it doesn't. Add a failure mode entry: "If, in spot-check, the agent produces canonical-AI-assistant tone instead of Data's, the SOUL.md persona block must be expanded with explicit voice samples." Without this fallback, you'll either ship a bland agent or rewrite the spec under deadline pressure.

---

## (b) Is the 10-file taxonomy correctly carved for the per-document cap?

**MARTIN FOWLER 🔴**
Two real collisions visible in the current taxonomy:

1. **File 02 (agenten-konfiguration) vs. File 09 (marketing-praxis).** A query like *"Wie baue ich einen Brand-Voice-Agent?"* could pull from 02 (agent build mechanics + the scenario chunk for brand voice) OR 09 (cross-cutting playbook). Under the per-doc cap, both files surface ONE chunk each; that's fine, but the LLM has to reconcile two near-identical answers. Defensive fix: declare a strict ownership rule in section 4.3 — *"specific feature scenarios live in their feature file; only scenarios genuinely spanning ≥3 features live in 09."* Add a 1-sentence test for "spans ≥3 features" to the authoring skill.

2. **File 07 (modelle-und-kosten) is overloaded.** 14 model-recommendation scenarios + ~10 feature subtopics = 24 H2 blocks. The per-doc cap punishes overloaded files. A query like *"Welches Modell für Brand-Voice-Generierung?"* will pull the strongest single chunk, but the *feature* chunk explaining what brand voice generation involves is now silent. Fix: split 07 into `07a-modelle-katalog.md` (the price/capability matrix) and `07b-kostensteuerung.md` (Auto Mode, Fair Usage, BYOK, Workspace-Limits). The catalog file holds scenarios; the steuerung file holds governance.

That would push the file count to 11. Spec says "~10" — adjustable.

**KARL WIEGERS 🟡**
Section 4.3 says "Scenario distribution: 8+12+10+12+10+6+14+6+24 = 102 ≈ 100" but no rule prevents the same scenario being placed in two files by different authors. Add: each scenario gets a unique ID (`S-001` … `S-100`) and a single owning file declared in `coverage-matrix.md`. Without IDs, duplication is silent.

**GOJKO ADZIC 🟡**
File 09 with 24 cross-cutting scenarios is the largest file by chunk count. Under the per-doc cap, 23 of those 24 are invisible for any given query. That's acceptable for true cross-cutting playbooks but suspicious as a category. Inspect each of the 24 candidates: how many genuinely span ≥3 features vs. how many are just "important and didn't fit elsewhere"? The second class belongs in the feature file. Realistic count: 8-12 truly cross-cutting playbooks.

---

## (c) Are the acceptance criteria measurable, or hand-wavy?

**LISA CRISPIN 🔴**
US-1 to US-6 mix testable and hand-wavy criteria:
- US-1: "Reply ≤120 words, names the 5 pillars, ends with a single next-step suggestion" → testable.
- US-2: "names a specific model from the catalog, gives a price reference, names one cheaper fallback" → testable IF "specific" means model ID; ambiguous if it means model family. Pin it: *"names a specific model ID exactly as it appears in 07-modelle-und-kosten.md"*.
- US-3: "Reply gives a clear 'use X because' with citation; mentions per-file size caps" → "clear" is hand-wavy. Replace with: *"Reply contains exactly one explicit recommendation phrased as 'Nutze [X] weil [Begründung]' and mentions at least one of the file caps from 03-wissensordner-und-rag.md."*
- US-5: "estimates rough cost order-of-magnitude" → undefined. Pin: *"cites a per-1M-token price from 07-modelle-und-kosten.md and a Workspace-Limit reference."*

**GOJKO ADZIC 🟡**
No Given/When/Then anywhere. For US-2:
```
Given the user is a marketing director with no model knowledge
When they ask "Welches Modell für LinkedIn Posts?"
Then the reply
  - names "Gemini 2.5 Flash" (the cheap-and-fast default for this use case)
  - states the price "€0,26/M input"
  - offers Haiku 4.5 OR Sonnet 4.6 as alternative
  - cites "07-modelle-und-kosten"
  - is ≤120 words
  - ends with one concrete next step
```
Without these examples baked into the spec, two reviewers will disagree on what "pass" looks like.

**ALISTAIR COCKBURN 🟡**
Each user story is missing the *primary actor's goal* — the WHY underneath. US-2 isn't "know which model" — it's "minimize cost without sacrificing quality" OR "maximize quality regardless of cost" depending on the user. The agent should disambiguate. Add a goal column to the user story table.

---

## (d) Failure mode blind spots

**MICHAEL NYGARD 🔴**

The spec has no entries for:

1. **Retrieval miss (0 chunks above threshold).** Agent behavior is undefined. F3 says "say so plainly" but assumes the agent KNOWS the retrieval was empty. Decide: should the agent explicitly check for "no high-confidence chunk" by inspecting the response, or just answer naturally and trust the LLM to defer? Pin: *"If no Knowledge chunk is cited in the agent's working memory, the reply must explicitly state: 'Diese Information liegt nicht in meiner Datenbank. Bitte prüfe direkt docs.langdock.com.'"*

2. **Retrieval mismatch (wrong-file chunk wins).** Agent will hallucinate confidently. Detection: in spot-check, every query that returns the wrong file's chunk = a failure. But there's no runtime detection. Add a self-check pattern to the system prompt: *"Wenn die abgerufene Information nicht direkt die Frage beantwortet, sage das."*

3. **Stale knowledge (Langdock ships new model / price change).** No update cadence. Add a maintenance commitment: *"Knowledge files reviewed monthly against https://docs.langdock.com/de/ and the Langdock changelog. Stale entries flagged in `MAINTENANCE.md`."*

4. **Inconsistency across turns.** Same question, slight rewording, different chunks retrieved, contradictory answers. Memory is disabled in Agents, so there's no continuity safety net. Mitigation: don't fight it; mention in the SKILL.md that the agent can't reference earlier turns — every reply must stand alone.

5. **Token budget overrun in long conversations.** Each turn pulls up to 50 chunks × 2000 chars = 100K chars. After 5 turns, history pushes context near the limit on smaller models. Document a recommended "neuer Chat" tip in 01-chat-und-prompts.md AND in the agent's system prompt.

6. **Language drift to English under stress.** Smaller models drop into English when uncertain. Counter-pattern in the prompt: *"Auch bei Unsicherheit ausschließlich Deutsch antworten."*

**LISA CRISPIN 🟡**
"Zero fabrication" (N6) is unenforceable as written. Make it testable: add an end-of-build canary test — feed the agent 5 questions about fake Langdock features ("Wie nutze ich die Predictive-Analytics-Funktion?") and verify it refuses each. Otherwise N6 is aspirational.

---

## (e) Is the build sequence realistic?

**MICHAEL NYGARD 🔴**
Step 8: "Run the 20-query spot-check (manual via Langdock UI or Search API once we have a workspace)." This is a **hard dependency on a Langdock workspace** that the spec hasn't called out as a prerequisite. If the user doesn't have a workspace yet (or one with API access), step 8 blocks. Move workspace provisioning to step 0 as an explicit precondition.

**KARL WIEGERS 🟡**
Step 1 says "Lock OQ-1 through OQ-4 with user." Step 2 says "Write SOUL.md, STYLE.md, SKILL.md." These are sequential dependencies, fine. But OQ-5 (whether Gemini Prompt 3 output is canonical) gates step 3 (coverage-matrix.md). That's not stated. Reorder: lock OQ-5 BEFORE step 3.

**ALISTAIR COCKBURN 🟡**
"10 commits for 10 knowledge files = 10 review rounds" — slow if reviews are async with the user. Add a parallel option: write 3 files (00, 01, 02) for early validation, get the user to spot-check via Langdock, then bulk-author 03-09 once the format is approved. This shaves 5-7 review rounds.

**LISA CRISPIN 🟡**
Step 8 says "spot-check" but Step 3 ("Write coverage-matrix.md") is where the 20 spot-check queries are defined. The spec never explicitly says "the 20 queries are taken from coverage-matrix.md sample queries." Make the link explicit.

**GOJKO ADZIC 🟢**
Step 9 ("Iterate on failed queries") has no exit criterion beyond "the test passes." Define: max 3 iteration cycles per file; if a file still fails on cycle 3, the file is split (per Fowler's 02/07 collision concern).

---

## Consolidated priority ranking

| ID | Severity | Issue | Recommendation |
|---|---|---|---|
| F-1 | 🔴 | Retrieval miss has no defined agent behavior | Add explicit "no info in Knowledge" response pattern to system prompt + an N7 requirement |
| F-2 | 🔴 | Per-doc cap collision between files 02 and 09 | Add strict ownership rule: scenarios spanning ≥3 features only in 09 |
| F-3 | 🔴 | File 07 overloaded (14 scenarios + features) | Split into 07a (catalog) and 07b (governance); accept 11 files |
| F-4 | 🔴 | Workspace dependency not in step 0 | Add step 0: "Confirm Langdock workspace + Knowledge Folder + Search API access" |
| F-5 | 🔴 | US-1/3/5 acceptance criteria too soft | Replace hand-wavy phrases with model IDs / exact quote patterns |
| F-6 | 🔴 | Persona-delta gamble unmitigated on small models | Add small-model calibration step before knowledge-file authoring |
| F-7 | 🟡 | N1 token budget has no validator | Add `tools/check_prompt_size.sh` to CI |
| F-8 | 🟡 | No scenario IDs → silent duplication risk | Assign S-001…S-100 in coverage-matrix.md |
| F-9 | 🟡 | File 09 may hide 23 of 24 chunks | Audit each candidate; drop to 8-12 true cross-cutting scenarios |
| F-10 | 🟡 | User goal column missing from user stories | Add explicit goal per US (cost min vs quality max etc.) |
| F-11 | 🟡 | Knowledge staleness has no cadence | Add monthly review commitment + MAINTENANCE.md |
| F-12 | 🟡 | Language drift not countered in prompt | Add "Auch bei Unsicherheit ausschließlich Deutsch" |
| F-13 | 🟡 | "Zero fabrication" not testable | Add 5-question canary set with fake Langdock features |
| F-14 | 🟡 | OQ-5 sequencing not declared | OQ-5 must be locked before step 3 |
| F-15 | 🟡 | Filename inconsistency: "03-knowledge-und-rag" cited but file is `03-wissensordner-und-rag.md` | Standardize on German file names in citation pattern |
| F-16 | 🟢 | Build sequence too sequential | Parallelize: 00/01/02 first, then bulk-author 03-09 after format approval |
| F-17 | 🟢 | No iteration cycle cap | Max 3 iteration cycles per file before split |
| F-18 | 🟢 | "Conversation" undefined in cost target | Define: 1 conversation = 3 user turns avg |

---

## Expert consensus

All six experts agree on three points:

1. **The taxonomy must avoid letting scenarios compete with features in the same file.** Either split scenario-heavy files (Fowler) or rule out the soft cross-cutting candidates (Adzic), or both.
2. **Acceptance criteria need concrete examples committed to the spec** (Given/When/Then or quoted patterns) — Wiegers, Crispin, Adzic all say this.
3. **Failure modes (retrieval miss, hallucinated limits, language drift) need first-class entries in the spec** — not just a sentence in N6 — Nygard, Crispin.

---

## Recommended next step

Apply F-1 through F-6 (all 🔴 criticals) and F-15 (filename consistency) immediately. Defer 🟡 and 🟢 to a v2 polish pass. Then proceed to `/sc:sc-design` for architecture iteration on the system-prompt and chunk-structure details.
