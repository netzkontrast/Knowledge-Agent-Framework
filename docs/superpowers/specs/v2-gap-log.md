# v2 Consolidated Gap Log (Wave 1 → Wave 2 input)

Merged from the four critical-thinking diagnosis ledgers in `v2-findings/`
(A1 grounding · A2 coherence · A3 retrieval · A4 depth). Severity: [C] critical,
[M] major, [m] minor. Organised per-file so each Wave-2 agent gets a clean slice.

## Headline

The knowledge base is **structurally healthy**: platform limits, RAG internals,
agent-config caps, glossary fidelity, HITL discipline, and scenario depth all pass
(A4 found zero Critical depth issues across ~1,057 scenarios). **All Critical
findings cluster in two places: model pricing and the integration count.** The
retrieval lens found the biggest *opportunity* — 35 high-value IW communications
scenarios that are currently unanswerable.

---

## CRITICAL — pricing & counts (A1 + A2 converge)

The euro-per-1M-token figures are the root problem. Sources publish **credit
multipliers** (relative cost, e.g. 8.0×) and **seat/pack tiers** (€20–25 seat,
€449 workflow pack) — but **no source publishes EUR-per-1M-token prices**; file 07
*derived* them, then 09 and 13 copied divergent values.

| ID | files | sev | issue | proposed fix |
|---|---|---|---|---|
| P1 | 07, 13 | [C] | EUR/1M price column (€0,14–€55) + €99 "Max" tier not in any source; multipliers are unpublished | Decision needed (see check-in): remove derived EUR/1M, OR web-verify & cite |
| P2 | 07 | [C] | Opus **4.8** = 8.0× stated; source says Opus **4.7** = 8.0× | Correct model/version to match source, or web-verify current Opus |
| P3 | 07 vs 09 | [C] | Opus input price €14,00/1M (07) vs €4,30/1M (09) — ~3.3× gap | Pick canonical, fix the other (depends on P1) |
| P4 | 07 vs 13 | [C] | Sonnet 4.6 €2,75/1M (07) vs €2,58 (13) — 13 falsely cites "Quelle: 07" | Re-sync 13 to 07; fix false provenance |
| P5 | 09, 13 vs 07 | [M] | Flash quoted €0,26 (= GPT-5.2 price) vs canonical €0,23 | Correct 09/13 to €0,23 or clarify model |
| C1 | 00, 05:14 vs 05:1549 | [C] | "über 60 native Integrationen" vs file's own reconciliation "55+ (~754 Actions); exact count not officially documented" | Align 00 & 05:14 to "55+ (~754 Actions)" + caveat |
| C2 | 06 vs 07 | [C] | Workflow budget "€25 pro **Lauf**" (06) vs "€25/**Monat**" (07) — unit mismatch | Decide true default (likely per-run) and make 07 consistent |

**Principle for the fix:** make file 07 the single source of truth for every euro
figure; 09/13 reference it rather than restate. Strip any number that no source
supports (per CLAUDE.md discipline #1 — "if it is not in the sources → it does not
ship"). The fabricated-price provenance trail into 13 must be removed.

---

## MAJOR — grounding hygiene

| ID | files | sev | issue | fix |
|---|---|---|---|---|
| G1 | 02 (25), 04 (10), 07 (10), 08 (10), + others (~58 total) | [M] | factual triggers lack a `(Quelle:)` citation | add citations from data/research|sources, or soften to non-factual framing |
| G2 | 15 | [M] | 4 IW publication formats (iwd, IW-Kurzbericht, IW-Report, IW-Trends) tagged "über IW-Recherche zu verifizieren" | verify against IW primary sources (iwkoeln.de / IW-Medien); cite or remove — this is the only `check_grounding` hard-fail |

---

## MINOR — coherence drift (A2)

| ID | files | issue | fix |
|---|---|---|---|
| D1 | 06 vs 09 | Deep Research duration 5–20 vs 5–30 min | harmonise to one range |
| D2 | 09 vs 00/15/17 | "15 Runs/Monat" drops load-bearing "pro Nutzer / 30 Tage" | restore "15 pro Nutzer / 30 Tage" |
| D3 | 00 vs 09 vs 08 | EU AI Act / Art. 50 dates inconsistent (2027 vs Aug 2026) | defer to 08-style "verify via web-search vs primary source"; remove hard dates from 00/09 prose |
| D4 | 02 vs 00/04/08 | UWG §5 vs §5a | verify each citation matches its claim (likely both correct) |

---

## MINOR — depth polish (A4)

| ID | files | issue | fix |
|---|---|---|---|
| Q1 | 01 (all 80) | label says "(DE, PTCF)" but some prompts are CO-STAR etc. | relabel to the actual framework, or generalise the label |
| Q2 | 01 (prompt-technique), 06 (API dossiers) | ~18 terse Ziel/Artefakt fields | sharpen artefact specificity where it costs nothing |
| Q3 | S-CP-007 | prompt is CO-STAR but field labeled PTCF | relabel |

---

## RETRIEVAL — collisions to disambiguate (A3)

| ID | shared query | colliding files | sev | fix |
|---|---|---|---|---|
| R1 | "Pressemitteilung" | 3–5 files | [C] | give each a distinct trigger noun / angle; designate one primary chunk |
| R2 | "Newsletter" | 3–5 files | [C] | same |
| R3 | "Brand Voice" | 3–5 files | [C] | same |
| R4 | CEO-Ghostwriting, Krisenkommunikation, Lokalisierung | 2–3 files each | [M] | disambiguate trigger nouns |
| R5 | Pressekonferenz, Policy-Brief, Embargo, Datenvis, Faktencheck + intra-file dupes | pairs | [m] | dedup / distinct nouns |

---

## NEW SCENARIOS to author (A3 — the priority growth, ~35 seeds)

Target files **14** (IW use-cases) and **17** (Branchen/Think-Tank-Praxis) first;
all have near-zero current coverage and distinct trigger nouns (no new collisions):

Sharepic/Zitatkachel · Faktenblatt · Methodenkasten · Erklärvideo-Skript ·
Sprechzettel/Reden · Karussell-Post · Op-Ed/Gastbeitrag · Pressespiegel ·
Einfache/Leichte Sprache · Reactive Statements · Embargo-Breach-Response ·
Fördermittel-Kommunikation · (+ ~23 more in `A3-retrieval.md` §2).

These dovetail with the Task-4 mandate to verify+expand 14/16/17 toward full depth.

---

## Wave-2 slice assignment (proposed)

- **Slice PRICE** (highest priority, cross-file): 07 (canonical rebuild) → 09, 13 re-sync. Owner must hold P1–P5 + the "07 is source of truth" principle.
- **Slice COUNT/UNIT:** 00, 05, 06 (C1, C2, G1 for 04/08).
- **Slice GROUNDING:** 02 (G1: 25 citations), 15 (G2: verify IW formats).
- **Slice COHERENCE/POLISH:** 09, 00, 08 (D1–D4), 01/06 (Q1–Q3).
- **Slice GROWTH:** 14, 17 (+16) — new scenarios from A3 §2 + verify/expand (Task 4).
