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

## PR-Review Feedback (codex bot, 2026-05-31)

The 15 Jules-PRs received automated review comments. P-priority issues identified per file:

### Knowledge files (committed)

| File | P1 (safety/blocking) | P2 (quality) | Status |
|---|---|---|---|
| 01-chat-und-prompts | S-CP-090 unsafe "Halluzinationen technisch fast unmöglich" Legal claim | Memory section reversed claims; S-CP-005 hardcoded "2024 Base-Rates"; S-CP-007 CSV→Wissensordner; S-CP-009 Agent capability in chat file; S-CP-071 hardcoded old model names; S-CP-078/079/090/104 over 1800 chars | **4 fixed (P1 + 3 P2)**; 4 pending for Stage-2 |
| 04-workflows | — | "Produktionsbereit" advisory overpromise; "Workflow-Architektur-Beratung" non-Langdock capability; chunks >1800 chars; triangulation triggers misdesigned; Beispiel-Prompts not PTCF; Structured-Output guidance wrong; trigger monoculture (Launch-Debrief/Q3-Review repetition) | Stage-2 will trim to 10 + add Advanced |
| 05-integrationen-und-mcp | — | Templated bodies; generic Vorgehen; duplicate Fallstricke (per existing notes) | Stage-2 will trim to 10 + add Advanced |
| 07-modelle-und-kosten | — | Templated "Praxis-Szenario: X Use Case N"; generic Strategische Ziele; "Du bist ein Senior Consultant" boilerplate Prompts | Stage-2 will trim to 10 + add Advanced |
| 08-sicherheit-und-governance | — | 13× duplicate H3 titles ("Content-Marketing Governance Check" etc.); "Integrations" not in capability whitelist; Web-Search disabled in Web-Search scenarios | Stage-2 will trim to 10 + add Advanced |
| 02, 06, 09, 10 (10-scenario pivot files) | — | none significant — pivot quality holds | OK; Stage-2 may add Advanced |
| 11-persona-core | every S-LC-* has 7 steps (spec wants 3-5) | DROP rationale single-sentence; wrong Advanced-Scenarios pointers (no A-NN targets 11) | Stage-2 will fix |

### Review files (committed)

| File | Issues | Status |
|---|---|---|
| 01-chat-und-prompts.review.md | Wrong A-NN pointers (A-01/A-03 vs correct A-06/A-46); empty Cross-Refs; over-1800-char source chunks not flagged for IMPROVE; S-CP-071 model staleness not flagged; S-CP-090 unsafe claim not flagged; CSV-routing and Agent-capability scenarios not flagged | Pending Stage-2 redo with proper directives |
| 04-workflows.review.md | Empty Cross-Refs; IMPROVE rationale truncated text; DROP justifications single-sentence; wrong CT-method on S-WF-006 | Pending Stage-2 |
| 11-persona-core.review.md | Step-count violation (7 vs 3-5 spec) not flagged; DROP rationale single-sentence; pointed at non-existent A-NN targets; DROP count + KEEP residual = 20 scenarios (below 100 schema gate, now relaxed to 10) | Pending Stage-2 |

### Coverage Matrix

- Section 1 (Marketing Scenarios) still has `S-001 | TBD` placeholder
- 104+ delivered scenarios per file not enumerated; cross-validation tooling can't verify them
- **Pending:** populate Coverage Matrix Section 1 with delivered S-XX-NNN rows per file before final Phase 5 commit

## Acceptance Threshold (proposed)

A scenario is "actionable" if **all four** are true:

- Trigger names a specific Langdock feature, marketing artifact, or persona moment (not "X optimieren").
- Vorgehens-Schritte 2-3 mention concrete tools/UI surfaces or content types.
- Beispiel-Prompt reads as a Marketing-Direktorin would write it (≤2 sentences, specific ask).
- Fallstricke are 2-3 distinct pitfalls with concrete mitigation each.

Aim: ≥80% of scenarios per file meet this bar.
