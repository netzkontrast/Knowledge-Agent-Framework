# Knowledge-File Quality Notes

> **Updated:** 2026-05-31 16:40 UTC
> Quality observations from recovered files + corrective actions taken.

## Observed Pattern: Template-Generated Scenarios

Several Jules sessions appear to have produced scenarios via programmatic generation rather than hand-authoring. Indicators:

- Uniform titles ("Strategische Evaluierung", "Operative Optimierung") with combinatoric variants
- Triggers reading as "Die Marketing-Direktorin muss X optimieren" with X swapped per row
- Vorgehens-Schritte that don't reference the specific trigger
- **Duplicate Fallstricke** (identical pitfall text repeated 2×)
- Beispiel-Prompts that are generic ("Analysiere unsere Situation bezüglich X")

## Files Affected (confirmed)

| File | Session | Severity | Evidence |
|---|---|---|---|
| 05-integrationen-und-mcp.md | 12663632701708472741 | Medium | S-IM-005 has duplicate Fallstrich, generic 5-step Vorgehen |

## Corrective Action (in-flight)

A quality-correction message was sent to all 11 IN_PROGRESS sessions on 2026-05-31 16:39 UTC asking them to:

1. Use **concrete triggers** (e.g. "Julia kommt aus dem Q3-Review mit dem Auftrag, die DSGVO-Compliance der HubSpot-Synchronisation zu verifizieren") not generic "X optimieren" phrasing.
2. Make **Vorgehens-Schritte** reference the trigger directly.
3. Use **realistic Marketing-Direktorin language** in Beispiel-Prompts.
4. Ensure **Fallstricke are distinct** — no duplicates within a scenario.
5. Distribute scenarios across **different Marketing situations** from data/sources/01-15.

If sessions had already generated programmatically, they were asked to hand-craft each scenario with concrete source references before finalizing.

## What Passes vs What's Borderline

**Passes (structural)**: every scenario has the 8 required fields, anchor strings present, ≥100 scenarios, scenario H2 present, no Critical-Thinking-Method leakage, schema-check OK.

**Borderline (semantic)**: programmatically-generated scenarios are technically retrievable but provide limited value to the Marketing-Direktorin. They satisfy the structural acceptance criteria but not the spirit of "actionable und data-esk".

## Plan

1. Let the in-flight sessions absorb the correction; recover when they complete.
2. After all files land, **spot-audit** 5 random scenarios per file. If quality < threshold, dispatch a Jules-review session per affected file with the rewrite prompt.
3. The agent's runtime behavior is still anchored to the AGENT_PROMPT + persona files (11, 12, 13). Even if some content-file scenarios are weak, the persona patterns drive voice and the F8 retrieval-miss string covers gaps.

## Acceptance Threshold (proposed)

A scenario is "actionable" if **all four** are true:

- Trigger names a specific Langdock feature, marketing artifact, or persona moment (not "X optimieren").
- Vorgehens-Schritte 2-3 mention concrete tools/UI surfaces or content types.
- Beispiel-Prompt reads as a Marketing-Direktorin would write it (≤2 sentences, specific ask).
- Fallstricke are 2-3 distinct pitfalls with concrete mitigation each.

Aim: ≥80% of scenarios per file meet this bar.
