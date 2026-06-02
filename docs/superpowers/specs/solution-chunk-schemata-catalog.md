# Solution-Chunk-Schemata Catalog

**Status:** living catalog — proposed loop-3, applies from loop-4 deep passes onward.
**Purpose:** Different real-world marketing/comms problems need different deliverables. A copy-paste prompt is one solution kind; an API call, an MCP integration, a workflow, a built skill, or in-agent Python are others. Forcing every scenario into "prompt + 8 fields" produces shallow answers for the cases where the real deliverable is code or configuration.

This catalog defines the **chunk-type codes** (the middle letter in scenario IDs) and the **type-specific schema** each kind ships with. Every scenario gets exactly one type code; the schema gate (`tools/check_schema.sh`) validates type-specific fields per code.

---

## Naming convention

`S-XXX-Y-NNN` where:
- `XXX` = file/domain prefix (LC, JL, IW, MK, AK, …) — unchanged from today
- `Y` = **chunk-type code** (the new letter — see catalog below)
- `NNN` = three-digit running number — unchanged

Example: today's `S-LC-020` becomes `S-LC-P-020` when classified as Prompt-driven; an API-driven sibling might be `S-LC-A-021`.

**Type code is part of the ID** so the gate can verify type-specific schema and so `Anschluss-Szenario` chains stay sortable by type. Renaming is a one-time migration per file (see plan).

---

## The nine chunk-type codes

All nine kinds keep the **8 universal fields** (Wann nutzen Trigger, Strategisches Ziel, Hands-on Ergebnis, Eingesetzte Langdock-Fähigkeit(en), Vorgehen ≤5 Schritte, Erwartetes Artefakt, Fallstricke ≥2, Konkrete Empfehlung, Anschluss-Szenario). The **9th solution-payload field** is type-specific.

### P — Prompt-driven  (today's default)
**Payload field:** `**Beispiel-Prompt (DE):**` — a copy-paste prompt.
**Use when:** the deliverable is a chat instruction the human can run as-is.
**Schema gate:** must contain `**Beispiel-Prompt` (any framework label).
**Example today:** all S-LC, S-JL, S-IW chat-reaction scenarios.

### A — API-driven
**Payload field:** `**API-Aufruf:**` — a fenced code block with HTTP method, endpoint, headers, payload, response-shape, and a brief retry/backoff rule.
**Use when:** the deliverable is a Langdock or external API integration (Completion, Usage Export, Document Editor, OpenAI-compat endpoint, etc.).
**Extra required:** `**Rate-Limit-Rahmen:**` (500 RPM, 100 s timeout, HTTP 524 awareness).
**Schema gate:** must contain `**API-Aufruf:**` plus the rate-limit line.
**Migration candidates:** S-API-031 (async batch), S-API-060 (OpenAI compat), and many others currently in file 06.

### M — MCP-driven
**Payload field:** `**MCP-Server:**` (server name + config snippet) + `**Tool-Aufruf:**` (specific MCP tool + parameters).
**Use when:** the deliverable is an MCP server integration (Drive, Slack, GitHub, custom).
**Extra required:** `**Berechtigungs-Scope:**` (least-privilege which scopes are needed).
**Schema gate:** must contain both `**MCP-Server:**` and `**Tool-Aufruf:**`.
**Migration candidates:** several S-IM scenarios in file 05.

### S — Skill-driven (reusable Skill in the Langdock Library)
**Payload field:** `**Skill-Definition:**` — name, slots, examples, output contract; a `**Auslöser-Wörter:**` list (the trigger keywords that should invoke the Skill).
**Use when:** the deliverable is a packaged, reusable skill that lives in the Library and is invoked by users or other agents.
**Schema gate:** must contain `**Skill-Definition:**` and `**Auslöser-Wörter:**`.
**Migration candidates:** several S-PS scenarios in file 10.

### T — Tool / Agentic (in-agent code execution)
**Payload field:** `**Code-Snippet:**` — a fenced code block (Python with pandas, SQL, regex) that runs in the agent's tool environment, plus an `**Input-/Output-Schema:**` line describing the data contract.
**Use when:** the deliverable is in-agent code execution (Data Analyst with pandas, statistical analysis, structured-output computation).
**Schema gate:** must contain `**Code-Snippet:**` (fenced) and `**Input-/Output-Schema:**`.
**Migration candidates:** Data-Analyst-heavy scenarios across files 03, 04, 09 (chart briefings, CSV analyses).

### W — Workflow-driven
**Payload field:** `**Workflow-Architektur:**` — a structured Trigger → Nodes → HITL-Gates description (DSL-light or numbered) + `**Workflow-Budget:**` (per-Lauf cap, 2.000-Schritte-Stopp awareness).
**Use when:** the deliverable is a multi-step automated workflow (Scheduled, Integration, Manual trigger).
**Schema gate:** must contain `**Workflow-Architektur:**` plus `**Workflow-Budget:**`.
**Migration candidates:** most S-WF scenarios in file 04.

### C — Configuration-Change
**Payload field:** `**Einstellungs-Pfad:**` (UI-path or admin-console location), `**Vorher → Nachher:**` (the exact value diff), `**Rollback-Plan:**` (how to revert if it breaks).
**Use when:** the deliverable is a settings/admin change (workspace limit, model defaults, RBAC, Wissensordner-Sync-Mode).
**Schema gate:** must contain all three lines: Einstellungs-Pfad, Vorher → Nachher, Rollback-Plan.
**Migration candidates:** S-SG access-control scenarios, S-AK agent-config scenarios.

### D — Decision / Advice  (today's R7b)
**Payload field:** `**Konkrete Empfehlung:**` IS the operative deliverable (no Beispiel-Prompt, no code).
**Use when:** the question is "should we / which option" — the answer is a clear recommendation with trade-off, not a runnable artifact.
**Schema gate:** must contain `**Konkrete Empfehlung:**` and **must not** contain `**Beispiel-Prompt`.
**Today's instances:** all 10 scenarios in file 19 (S-MD-001..010).

### G — Guide / Document (template artifact)
**Payload field:** `**Artefakt-Vorlage:**` — the skeleton/template of the document to produce (sections, headings, mandatory blocks), inline as markdown.
**Use when:** the deliverable is a written artifact the human will fill in or have IW Medien produce (briefing, policy, one-pager, checklist).
**Schema gate:** must contain `**Artefakt-Vorlage:**` with at least 3 section markers.
**Migration candidates:** S-IW press kit / Faktenblatt / Sprechzettel scenarios; S-OC onboarding checklists.

---

## Universal fields (all 9 chunk types keep these)

| # | Field | Note |
|---|---|---|
| 1 | `**Wann nutzen (Trigger):**` | + `(Quelle: NN-…)` for factual triggers (R2) |
| 2 | `**Strategisches Ziel:**` | one sentence |
| 3 | `**Hands-on Ergebnis:**` | concrete deliverable description |
| 4 | `**Eingesetzte Langdock-Fähigkeit(en):**` | the platform features used |
| 5 | `**Vorgehen (N Schritte):**` | ≤5 steps |
| 6 | *(type-specific payload — see catalog above)* | |
| 7 | `**Erwartetes Artefakt:**` | what gets handed off |
| 8 | `**Fallstricke (≥2 spezifisch):**` | real failure modes with named mitigations |
| 9 | `**Konkrete Empfehlung:**` | distilled actionable advice (R7a) |
| 10 | `**Anschluss-Szenario:**` | must resolve to an existing scenario ID |

---

## Audit + classification process (per file, in the deep pass)

For each scenario, ask:
1. What does the user actually do after reading this — paste a prompt, write code, change a setting, build a workflow, decide?
2. If the answer is "paste a prompt" → keep as `P`.
3. Otherwise, pick the closest matching type from A/M/S/T/W/C/D/G and re-author the payload field accordingly. The other 8 universal fields usually stay; the Vorgehen may need to map to the new payload's structure.
4. Rename `S-XXX-NNN` → `S-XXX-Y-NNN`. Update every `Anschluss-Szenario` reference in the same file. Cross-file Anschluss references are renamed when the target file is migrated.
5. Re-validate via `check_schema.sh` (will be extended to recognise the type code in the ID and dispatch the type-specific check).

## Gate evolution (per R17)

`tools/check_schema.sh` must, in the same commit as the first migrated file:
1. Parse the type code from `### S-XXX-Y-NNN` headers.
2. Run the type-specific payload check (e.g. for `Y=A` require `**API-Aufruf:**`).
3. Continue to enforce all universal fields.
4. Report unclassified `### S-XXX-NNN` (no type code) as `[WARN] unclassified scenario`.

`tools/kb_index.py` reports coverage per type (e.g. "P=940, D=10, A=0, …") so the rollout is visible.

## Migration plan (added to active plan)

Phase-by-phase per file. **No bulk programmatic rename of payload bodies** — each scenario read individually (per the no-programmatic discipline). Bulk ID renames are concrete-string operations and are permitted.

| Phase | Files | Notes |
|---|---|---|
| L4-1 | 06 API + deployment | classify into A/T/W/C; exemplar for type-A migration |
| L4-2 | 04 Workflows | mostly W; exemplar for type-W |
| L4-3 | 05 Integrations & MCP | mix of M, A, C |
| L4-4 | 10 Prompts & Skills | mix of P, S |
| L4-5 | 03 Wissensordner & RAG | mix of T (Data Analyst), C, G |
| L4-6 | 08 Security & Governance | mostly C and G |
| L4-7 | 02 Agenten-Konfiguration | mostly C, some P |
| L4-8 | 07 Modelle & Kosten | P + D (cost decisions) |
| L4-9 | 09 Marketing-Praxis | mostly P + G |
| L4-10 | 00, 01 | mostly P |
| L4-11 | 14, 16, 17 IW files | mix of P + G + D |
| L4-12 | 11, 12 persona | all P (reaction patterns) |
| L4-13 | 13 anweisungen | structural — no scenario IDs to migrate |
| L4-14 | 15 glossar / 18 links | structural — no scenario IDs to migrate |
| L4-15 | 19 iwmedien | already type D (rename in place) |

Loop-4 entry condition: this catalog committed + rulebook R18 in place. Loop-4 exit condition: every scenario classified, every gate type-aware, kb_index reports the type breakdown.
