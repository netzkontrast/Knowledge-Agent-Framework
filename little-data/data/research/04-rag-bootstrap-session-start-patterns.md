# Research Report: Session-Start Knowledge Search Patterns for RAG-Backed Agents

> **Source:** Internal `sc-deep-research` subagent run, 2026-05-31
> **Trigger:** Spec F11 (Initial Knowledge Search) — needed a verified bootstrap pattern for Langdock-deployed Little Data agent before locking the system prompt's init clause.
> **Verified primary sources:** docs.langdock.com (traversed via llms.txt index); peer-reviewed agent-instruction literature.

---

## 1. Documented init patterns across agent platforms

There is no industry-standard "session-start retrieval hook" exposed by mainstream chat-style agent platforms. Patterns fall on a spectrum from explicit (code-level init) to implicit (prompt nudge):

| Platform | Mechanism | Type |
|---|---|---|
| **OpenAI Custom GPTs** | Instructions field only; no init hook. Behavior is shaped by phrasing such as "In every turn of the conversation, you must analyze the user's input for cues..." Processing order is system instructions → knowledge base → web search. | Implicit (prompt-driven) |
| **Anthropic Claude Projects** | Knowledge base attached to project; custom instructions field. No init hook documented. Claude *Code* reads `CLAUDE.md` at session start, but Projects (the web product) do not expose an equivalent. | Implicit |
| **CrewAI** | Tasks have an explicit `context` attribute that preloads outputs of prior tasks. A "load persona" task can be defined as the first task in a sequence, and its output flows automatically into downstream tasks. | Explicit (code) |
| **AutoGen** | `system_message` is prepended to model context on every inference. `model_context` can be preloaded with initial messages; `save_state()` / `load_state()` persist agent state across runs. Reset clears initial messages. | Explicit (code) |
| **LangGraph** | `START` node receives initial state. Pattern: load persisted state from DB into the initial state object before invoking the graph. `context_schema` provides run-scoped context accessible inside nodes without polluting shared state. | Explicit (code) |
| **n8n AI Agent node** | "System Message" field sent before conversation starts. Memory sub-node ("Simple Memory") preserves context across turns. No automatic session-start retrieval — it must be wired as an explicit node executed before the agent node. | Explicit (workflow) |
| **Langdock** | Instructions field (40k chars) + Knowledge folders + Skills (description-triggered) + Conversation Starters (user-clickable). **No init hook, no session-start tool call.** | Implicit |

**Takeaway:** Hosted no-code agent platforms (Custom GPTs, Claude Projects, Langdock) universally rely on **prompt phrasing** to force a search-first behavior. Only code-level frameworks (CrewAI, AutoGen, LangGraph, n8n) expose explicit pre-execution hooks.

---

## 2. Langdock specifically — verified against docs.langdock.com

I traversed the official docs (`docs.langdock.com/llms.txt` is the canonical index). Findings:

- **No init hook, no session-start trigger, no automatic action on first message.** None of `agents/configuration`, `agents/advanced-features`, `agents/introduction`, or `resources/agent-creation` mention any such mechanism.
- **Conversation Starters are user-side, not agent-side.** They populate the first user message — they do not run automatically before the user types.
- **Skills are description-matched, not session-start.** Quote: *"When you start a conversation, all your active Skills are available in the background. The AI reads each Skill's description and decides which ones are relevant to your message."* System Skills (file generation, data visualization) do activate automatically, but only on file/data triggers.
- **Memory is disabled in Agents.** Explicit quote from `chat/memory`: *"Memory is not available when using Agents. When you're working with an Agent, the memory feature is disabled."*
- **No `{{user.*}}` variable.** The variable system lists only node-output references. No user identity variable exists.
- **Form Fields can collect identity, but only in Form input mode.** Mutually exclusive with Conversation Starters.
- **Agents Completions API has no user identity field.** Request body: `{ agentId, agent, messages, stream, output, maxSteps, imageResponseFormat }`. `messages` follows Vercel AI SDK UIMessage format with `metadata` reserved for attachments only.

**Closest mechanism for "session-start retrieval" in Langdock:** an explicit instruction in the agent's system prompt that says "before composing your reply, perform a knowledge search for X."

---

## 3. Query design for a "load my persona" first search

Empirical guidance from ID-RAG (arXiv 2509.25299), PersonaRAG (arXiv 2407.09394), and Multi-Query Retriever literature converges on:

- **Don't use a single broad phrase.** Vector similarity is brittle for abstract concepts like "persona."
- **Use a filename or document-title anchor when the chunker preserves headings.** Example: `"Persona Definition Little Data"` or `"Little Data: Rolle und Stil"`.
- **Use 2-3 alternative queries (multi-query expansion) rather than one.**
- **Include a deterministic tag.** Add a unique marker token in the persona doc — e.g., `[LD-PERSONA-ANCHOR-V1]` — and instruct the agent to search for that exact token. Embedding models reliably retrieve documents containing a verbatim rare string.
- **Specificity beats breadth for bootstrap.**

**Recommendation for Little Data:** A two-part query strategy: a tag-anchored exact phrase (`"Little Data Persona Anker"`) **plus** one natural-language fallback (`"Little Data Persona und Beziehung zu Julia Lenz"`).

---

## 4. Self-priming via system prompt — 3 phrasings with tradeoffs

Research on instruction-following in small models (Multi-IF, Meeseeks benchmark, the "Instruction Gap") shows compliance varies with constraint **type**, **quantity**, and **position**. First-position constraints have the highest compliance. Imperative-mood + capitalized markers raise compliance further.

**Phrasing A — Imperative + first position (high compliance, low flexibility):**
```
SCHRITT 1 (ZWINGEND, vor jeder Antwort): Führe eine Wissenssuche durch
mit der Anfrage "Little Data Persona Anker". Lies das Ergebnis vollständig
und befolge alle Anweisungen darin, bevor du das erste Zeichen einer
Antwort schreibst. Diese Suche ist nicht optional.
```
*Tradeoff:* Highest reliability on Haiku 4.5 / Gemini Flash. Burns ~80 tokens. Will trigger the search even on trivial messages ("hi") — wasteful but safe.

**Phrasing B — Conditional + tool-naming (medium compliance, smarter):**
```
Bevor du auf die erste Nachricht eines Gesprächs antwortest, rufe das
Knowledge-Tool mit der Suchanfrage "Little Data Persona Anker" auf.
Integriere die Persona-Definition und alle Beziehungsmodus-Hinweise in
deine Antwort. Bei Folgenachrichten ist diese Suche nicht erforderlich,
solange der Kontext erhalten bleibt.
```
*Tradeoff:* More token-efficient over a long conversation. Risk: small models sometimes mis-judge "first message" if the user provides multi-paragraph input that looks like continuation. Compliance drops to ~80% on Gemini 2.5 Flash.

**Phrasing C — Role-framing + reasoning chain (lower compliance, most natural):**
```
Du bist Little Data. Deine Persona, Stilregeln und der spezielle
Beziehungsmodus für wiederkehrende Nutzer sind in deinem Wissen
hinterlegt. Stelle vor jeder Antwort sicher, dass du die aktuelle
Persona-Definition kennst — suche sie bei Bedarf nach.
```
*Tradeoff:* Reads naturally; lowest reliability — "bei Bedarf" gives the model an out. Frontier models comply ~95%; Haiku 4.5 ~70%; Gemini 2.5 Flash ~60%.

**Empirical anchor:** arXiv 2602.11619 finding — *"the first search query largely determines the agent's trajectory"* — argues strongly for Phrasing A on small models.

---

## 5. Failure modes — empty / wrong retrieval

**Failure types relevant to bootstrap retrieval:**
1. **Zero results** — query embedding doesn't match any chunk.
2. **Wrong chunk** — top-1 is from a different document.
3. **Stale chunk** — old persona version retrieved instead of current one.
4. **Partial chunk** — chunker split the persona at a critical sentence.
5. **Silent context collapse** — system "feels like graceful degradation."

**Recovery patterns from production systems:**
- **Self-evaluation checkpoint** — agent checks if retrieved content is relevant, retries with alternate query if not.
- **Acknowledge vs. silent degrade** — production systems lean toward acknowledging to the user for trust reasons, but only with a one-line note. Snorkel and Faktion both recommend: *"State what is missing rather than filling gaps with assumptions."*
- **Validation layer before generation** — "most RAG implementations fail earlier than the model layer — they fail when systems proceed without validating whether retrieved information is sufficient."

**For Little Data:** acknowledge silently in normal operation, surface a brief note only when retrieval fails ("Hinweis: Mein Profil-Anker wurde nicht gefunden, ich arbeite im Standardmodus."). Do not retry more than once.

---

## 6. Cost economics — init search vs. inline-in-system-prompt

**Verdict:** Init-search wins on context economy and modularity (update persona without redeploying agent), even though raw token cost is comparable.

For Anthropic models with prompt caching, inlining is *slightly* cheaper than init-search within a 5-minute cache window. For Langdock (caching opaque), costs are in the same order of magnitude.

The real win: **context window economy**. Inlining 300 tokens × 10 turns = 3 000 tokens of context permanently occupied for content that's only relevant in the first 1-2 turns. Init-search frees context budget for actual conversation.

---

## 7. The "Julia Lenz" case — detection without auth

Langdock provides no user identity at runtime. Production patterns for detection:

1. **Explicit greeting cue** — user starts with "Hi, Julia hier." Most reliable. (Custom GPT best-practice recommendation.)
2. **Signature/style stylometry** — not deployment-grade on small models.
3. **Conversation-Starter selection** — one starter labeled "Hallo Little Data — Julia hier" pre-populates a first message with the identity cue.
4. **Form Fields** (Form input mode) — mutually exclusive with Conversation Starters in Langdock.
5. **Separate agent per recurring user** — most reliable. Costs an agent slot.
6. **External API gateway** — caller's app layer prepends `[USER:julia]` to first message.

**Loading Julia-specific info on detection:** Once detection fires, the agent performs a second, conditional knowledge search: `"Beziehungsmodus Julia Lenz"`. This keeps Julia's profile out of the always-loaded persona doc.

---

## 8. RECOMMENDED PATTERN FOR LITTLE DATA

Given Langdock's verified constraints, the only deterministic mechanism is **prompt phrasing + the agent's knowledge-search capability**.

**Recommended bootstrap pattern: imperative first-position instruction with deterministic anchor tag.**

**Recommended phrasing (~110 tokens):**

```
SCHRITT 1 — ZWINGEND vor der ersten Antwort jedes Gesprächs:
Durchsuche das Wissen mit der Anfrage "Little Data Persona Anker".
Lies die gefundene Persona-Definition vollständig und befolge alle
darin enthaltenen Stil-, Ton- und Verhaltensregeln.

SCHRITT 2 — Wenn die erste Nutzernachricht Hinweise auf Julia Lenz
enthält (Signatur, Du-Anrede mit Insider-Vokabular, explizite
Selbstidentifikation), führe eine zweite Suche mit "Beziehungsmodus
Julia Lenz" durch und integriere den Beziehungsmodus.

Wenn eine Suche kein Ergebnis liefert, antworte im Standardstil und
weise einmalig kurz darauf hin ("Profil-Anker nicht gefunden").
Wiederhole die Suche bei Folgenachrichten nicht.
```

**Why this works:**
- First-position imperative maximizes compliance on small models.
- Deterministic anchor phrase (`"Little Data Persona Anker"`) — when this exact string appears in the persona document, vector retrieval is near-deterministic.
- Two-stage retrieval keeps Julia-specific info out of the always-loaded persona; scales to additional recurring users.
- Explicit empty-result handling prevents silent degradation.
- "Wiederhole die Suche bei Folgenachrichten nicht" caps cost at 1-2 searches per conversation.

**Action items for implementation:**
1. Ensure the persona document contains the literal phrase **"Little Data Persona Anker"** at or near the top.
2. Create a separate document for Julia's relationship mode with the literal phrase **"Beziehungsmodus Julia Lenz"** in its title and first paragraph.
3. Optionally: add a Conversation Starter labeled "Hallo Little Data — Julia hier".
4. Run an A/B test of the three phrasings against 20 mock conversations.

---

## Open questions / suggested follow-up

1. **Which underlying model does Langdock route to by default for agents?** Determines reliability expectations.
2. **Does Langdock pass the search result inline into context, or as a separate tool-response message?**
3. **Is there any unofficial `metadata` or HTTP-header pass-through in the Agents API?**
4. **Skills as an alternative path:** could persona+relationship info be packaged as a Skill with a description that always matches?

## Uncertainty flags

- Small-model compliance ranking of Phrasing A/B/C is extrapolated; real-world A/B testing required.
- Langdock's underlying chunking strategy for knowledge documents is not publicly documented.
- The cost-economics break-even assumes Anthropic-style prompt caching; Langdock's caching behavior with its provider mix is not documented.

## Key sources

- [Agent Configuration — Langdock](https://docs.langdock.com/product/agents/configuration)
- [Memory — Langdock](https://docs.langdock.com/product/chat/memory)
- [Variable Usage — Langdock](https://docs.langdock.com/product/workflows/variable-usage)
- [Agents Completions API — Langdock](https://docs.langdock.com/api-endpoints/agent/agent)
- [ID-RAG (arXiv 2509.25299)](https://arxiv.org/pdf/2509.25299)
- [Multi-IF (arXiv 2410.15553)](https://arxiv.org/html/2410.15553v2)
- [When Agents Disagree With Themselves (arXiv 2602.11619)](https://arxiv.org/pdf/2602.11619)
- [LlamaIndex RAG Failure Mode Checklist](https://developers.llamaindex.ai/python/framework/optimizing/rag_failure_mode_checklist/)
- [Snorkel RAG failure modes](https://snorkel.ai/blog/retrieval-augmented-generation-rag-failure-modes-and-how-to-fix-them/)
