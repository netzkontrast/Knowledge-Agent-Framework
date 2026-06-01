# Research Prompt Template (Gemini Deep Research)

<!--
One prompt per domain. Run in Gemini Deep Research; save the report to the project's
data/research/ folder. English instructions; the agent's output language (e.g. German)
for any verbatim material. Demand primary-source citations and explicit [unverified] flags.
Fill the <…> placeholders. See examples/iw-little-data/GEMINI-RESEARCH-PROMPTS.md for worked prompts.
-->

**Scope:** <what this prompt extracts and which knowledge file(s) it feeds>

**Title to save as:** `<project>-research/<NN-topic>.gdoc`

```
I need a comprehensive, source-cited research brief on <SUBJECT>. The output will be used
to build a <language>-language knowledge advisor agent for <audience/client>. Be exhaustive
and concrete; cite primary sources and flag anything you cannot verify as "[unverified]".

Cover the following:

1. <AREA ONE>
   - <specific sub-points to enumerate>
2. <AREA TWO>
   - <…>
3. <AREA THREE>
   - <…>

Output format:
- One H2 per area; bullet points with a 1-sentence description + source URL in parentheses
- A "limits & numbers" table where applicable
- A closing "Implications for the agent" section: the highest-value tasks this enables
- Target length: <N> words; completeness over brevity
- Language: framing in English; verbatim domain terms/quotes in <language>

Important:
- Prefer primary sources; label third-party claims "[unverified]"
- Do NOT invent names, figures, features, limits, or prices
- For time-sensitive facts add "Stand: <Monat/Jahr> — vor Nutzung verifizieren"
- Where evidence is thin, say so explicitly rather than substituting generic data
```
