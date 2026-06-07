# v2 Spec-Panel Review — Loop 2 (read-only)

**Reviewer:** spec-panel (read-only). **Date:** 2026-06-02.
**Scope:** all 19 knowledge files (00–18) + `AGENT_PROMPT.md` + `CONVERSATION_STARTERS.md`.
**Standard:** `knowledge-authoring-rulebook.md` (R0–R12), M01–M13 as invisible test criteria.

---

## Executive summary (5 lines)

1. The base is in strong shape: all five gates GREEN (schema 80/80 per content file, grounding clean, coherence resolves, AGENT_PROMPT 12 373/15 000 chars, emoji-free across knowledge + prompt + starters).
2. Pricing converged correctly to verified direct-EUR (Opus €4,30 / Sonnet €2,58 / GPT-5.2 €1,50 / Flash €0,26 / Haiku €0,86), consistent across 07/09/13 and matching `data/research/13-langdock-pricing-verified-2026-06.md` — the old loop-1 P1–P5 pricing cluster is resolved.
3. ONE genuine pricing-doctrine leak remains and the grounding gate cannot catch it: file 15 still defines "Modell-Multiplikator (Cost Multiplier)" and advises deciding by it — a direct R1 violation ("NO multipliers") with a false "(Quelle: 07)".
4. Two HITL (R10) soft spots persist around outward content mutation (S-API-031 nightly auto-update of 500 live blog articles "ohne menschliche Überwachung"; 04 line 1163 "vollautomatisch" in a distribution Ziel).
5. Biggest remaining levers are small and surgical: fix the 15 multiplier term, add HITL to S-API-031, and trim the two brand-voice intra-file twins. Verdict: **ITERATE** (one short, targeted loop) — the base is release-quality but not yet at "no material improvement potential."

**Release-ready for v1.0-Beta?** Yes with one caveat — fix the [C] multiplier leak first (it contradicts the central rule and a glossary term is high-visibility). The rest are [M]/[m] polish.

---

## Severity-ranked findings

| Sev | File / ID | Issue | Rule | Concrete fix |
|---|---|---|---|---|
| **[C]** | 15-glossar L40 | Glossary term **"Modell-Multiplikator (Cost Multiplier)"** ("GPT-5.2 = 1.0x", "belastbarer als der absolute Credit-Preis"), cited "(Quelle: 07)". 07 has NO multiplier language; rulebook R1 explicitly forbids reintroducing multipliers. Grounding gate cannot catch it (only catches literal TODO strings). | R1, R3 | Delete or rewrite the term to the verified reality: economic comparison is by **direct EUR/1M Input/Output** (07). Remove "= 1.0x" and the false "more reliable than absolute price" claim. |
| **[C]** | 15-glossar L182 (FAQ) | Model-choice FAQ ends "**Maßgeblich ist der Modell-Multiplikator, nicht der absolute Preis.**" — same forbidden doctrine, contradicts 07's direct-EUR guidance and the model-tier advice everywhere else. | R1, R3 | Replace with "Maßgeblich ist der direkte EUR/1M-Preis pro Tier (07): günstigstes Tier, das die Aufgabe zuverlässig löst." |
| **[M]** | 06 / S-API-031 (L658) | Nightly batch "prüfen und **aktualisieren**" of 500 live blog articles, "**vollautomatisch … ohne menschliche Überwachung**, Fehler ohne manuellen Eingriff selbst behebt." Writes/mutates outward-published content with no Freigabe. | R10 | Add a HITL/staging step: write changes to a draft/staging branch and require a morning human Freigabe before publish; or reframe output as "Änderungsvorschläge", not live update. Add a Fallstrick covering silent bad mass-edit. |
| **[M]** | 04 / L1163 | Strategisches Ziel says mehrsprachige Content-Synchronisation "**vollautomatisch** anstoßen" (the body does later reduce to HITL-Freigaben, so it is internally hedged but the word in the Ziel risks promising full automation for an outward action). | R10 | Change "vollautomatisch anstoßen" → "weitgehend automatisiert anstoßen, mit HITL-Freigabe vor jeder externen Veröffentlichung." |
| **[m]** | 09 / S-MP-011 vs S-MP-071 | Two scenarios both "Brand-Voice-Guideline aus Bestands-Content" (reverse-engineer / authoring); same source (sources/10 S-038). 071 differentiates only via a rebranding/merger framing — partial overlap wastes the per-file single-chunk slot for the bare query "Brand Voice". | R4 | Merge into one richer scenario, or sharpen 071's dominant noun to "Rebranding-Voice-Konsolidierung" so the trigger nouns are genuinely distinct. |
| **[m]** | cross-file | Bare nouns still spread across many files' triggers: "Pressemitteilung" (11 files), "Newsletter" (9), "Lokalisierung" (6). Uses are mostly context-distinct (workflow/RAG/format angles), but the bare-query winner is not clearly reserved to the IW files (14/17) per R4. | R4 | Low-cost pass: ensure each generic-mechanic occurrence leads with its operative noun (e.g. "PR-Versand-Workflow", "Newsletter-Workflow", "Lokalisierungs-Workflow") and let 14/17 own the bare IW nouns. Not blocking. |
| **[m]** | 09 / S-MP-015 vs S-MP-076 | CEO/Führungskraft-Ghostwriting pair — already differentiated (LinkedIn short post vs DACH-Fachmedium long-form). No action needed; confirm the dominant nouns ("LinkedIn-Post" vs "Fachartikel") stay distinct in any future edit. | R4 | None (resolved); keep noun separation. |

---

## No improvement potential found in

00, 01, 02, 03, 04 (except the one L1163 wording), 05, 06 (except S-API-031), 07, 08, 10,
11, 12, 13, 14, 16, 17, 18, AGENT_PROMPT.md, CONVERSATION_STARTERS.md.

Notes on the cleanest files:
- **07** — pricing fully verified-EUR, 0 multipliers, all tiers match the research file; canonical source of truth holds.
- **11/12** — persona anchors intact ("Little Data Persona Anker", "Beziehungsmodus Julia Lenz"), voice/anti-patterns faithful (Multiplikator only appears as the legitimate "KI-Champion as multiplier" metaphor, not the cost term).
- **17** — IW Neutralitätsanspruch explicitly built into partisan-risk scenarios (17 neutrality mentions; S-TT-007/018/030 frame political work as überparteilich/evidenzbasiert).
- **AGENT_PROMPT.md** — all three init anchors present, refusal string present (L33), 12 373 chars, emoji-clean.
- No leaked `Critical-Thinking-Method:` field found anywhere (R5 scaffolding stays invisible).
- Fallstricke sampled across files are genuine pre-mortems (failure-mode → named mitigation), no generic filler.

---

## Verdict

**ITERATE — top 5 priorities:**
1. [C] Remove the "Modell-Multiplikator / Cost Multiplier" doctrine from 15 (term L40 + FAQ L182); re-anchor model-choice advice to direct EUR/1M (07).
2. [M] Add HITL/staging Freigabe to 06 S-API-031 before it mutates live published articles; remove "ohne menschliche Überwachung" for the publish step.
3. [M] Soften 04 L1163 "vollautomatisch" → automation-with-HITL for outward distribution.
4. [m] Merge/disambiguate 09 brand-voice twins S-MP-011 / S-MP-071 to free the single chunk slot.
5. [m] Light R4 noun-qualify pass so 14/17 own the bare IW nouns (Pressemitteilung / Newsletter / Lokalisierung).

After these, re-run the four validators + emoji guard and re-review; the remaining surface looks convergent.
