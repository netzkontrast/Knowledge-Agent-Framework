# Knowledge-Build-Plan — Design

> **Part of:** the **Knowledge Agent Framework** — the build architecture for producing a RAG-backed knowledge advisor agent end to end.
> **Status:** framework-level build-architecture design.
> **Goal:** Take an agent build from its inputs (research files + ingested sources + an agent-design spec) to its final deliverable: the knowledge files + system prompt + conversation starters + install instructions, deployment-ready for the target RAG platform.
> **Scope:** This document defines the BUILD ARCHITECTURE — what is done when and with which tools. The concrete implementation steps live in the companion build plan (`docs/knowledge-build-plan.md`).
> **Reference example:** the IW Little Data build (see `examples/iw-little-data/`) — the concrete numbers below (e.g. 14 knowledge files, the cluster mapping, the file taxonomy) are that build's instantiation of this architecture.

---

## 1. Domain-Slicing — Hybrid (Themen + Outputs)

Zwei-Phasen-Slicing, vom User in der Brainstorming-Runde gewählt:

**Phase 1 — Themen-basierte Extraktion (8 lokale Subagents, parallel)**
Jeder Subagent liest 2-4 Research-Files seines Themas und produziert einen kompakten, strukturierten Extract (~6-10 KB).

**Phase 2 — Output-basierte Synthese (eine Authoring-Session pro Knowledge-File, parallel)**
Jede Authoring-Session bekommt: Authoring-Spec + 2-4 relevante Extracts + die Coverage-Matrix-Row für ihr File. Produziert eine Knowledge-Datei als PR. (Reference example: IW Little Data = 14 parallele Sessions.)

---

## 2. Knowledge-File-Taxonomy (reference example: IW Little Data — 14 active files, budget 16)

The framework's file-kind taxonomy is **content / persona / anweisung / glossar**; every build maps its domain onto these kinds and assigns a stable filename per retrieval domain. The concrete table below is the IW Little Data reference example's taxonomy (content files 00–10, persona files 11/12, anweisung file 13), consolidated per its build decisions:

| # | Filename | Kurz-Inhalt | Größe |
|---|---|---|---|
| 00 | `00-langdock-uebersicht.md` | Plattform-Router, Glossar, "wenn du X willst, schau in Y" | ~12 KB |
| 01 | `01-chat-und-prompts.md` | Chat-Surface, PTCF, Few-Shot, Skills, Memory-Grenzen, Custom Instructions | ~28 KB |
| 02 | `02-agenten-konfiguration.md` | Agent build, Konversations-Starter, Form vs. Prompt, Standard-Fähigkeiten | ~32 KB |
| 03 | `03-wissensordner-und-rag.md` | Wissensordner, Anhänge, RAG-Mechanik, Folder-Sync | ~30 KB |
| 04 | `04-workflows.md` | Node-Typen, Trigger, Marketing-Automatisierungs-Beispiele (advisory-only) | ~30 KB |
| 05 | `05-integrationen-und-mcp.md` | 60+ native Integrationen, MCP, Custom Integrations (advisory-only) | ~26 KB |
| 06 | `06-api-und-deployment.md` | REST-Endpoints, BFF, 4 Deployment-Modelle (advisory-only) | ~26 KB |
| **07** | **`07-modelle-und-kosten.md`** | **Modelle-Katalog + Kostensteuerung** (α: fusion 07a+07b) | ~24 KB |
| 08 | `08-sicherheit-und-governance.md` | ISO/SOC/DSGVO, SSO, RBAC, Audit-Logs | ~18 KB |
| 09 | `09-marketing-praxis.md` | Cross-cutting Szenarien (≥3 Features), TOP-10 Quick Wins | ~24 KB |
| **10** | **`10-prompts-und-skills.md`** | **Inline-Skills + Metaprompt-Katalog** (γ: fusion 10+14) | ~100 KB |
| 11 | `11-persona-core.md` | Identity, Voice, Anti-patterns, Anker "Little Data Persona Anker" | ~18 KB |
| 12 | `12-persona-julia-modus.md` | Julia-Modus, Geordi-Transfer, Anker "Beziehungsmodus Julia Lenz" | ~12 KB |
| 13 | `13-data-agent-anweisungen-pro-thema.md` | Per-Thema Data-Kommunikations-Anweisung | ~22 KB |

**Budget: 16, aktiv: 14, reserved: 2.** (δ: Budget +1 angehoben.)

**Wichtig für File 10 (γ-Fusion):** Trigger-Kollisionsrisiko zwischen 50 Skills und 30 Metaprompts. Mitigation: distinkte Vocabulary-Anker pro Kategorie. Skills triggern auf Verben ("formatiere", "generiere", "konvertiere"); Metaprompts triggern auf Templating-Begriffe ("Vorlage für", "Prompt für", "Wie schreibe ich einen Prompt für"). Wenn Spot-Check zeigt, dass Kollisionen auftreten, splitten wir nachträglich auf Files 10 und 14 (wieder).

---

## 3. Phasen-Architektur

```
┌─────────────────────────────────────────────────────────────────────────────┐
│ Phase 0 — Pre-Build Setup (lokal)                                            │
│  ├─ Knowledge-Authoring-Spec finalisieren                                    │
│  ├─ System-Prompt v3 entwerfen                                               │
│  ├─ Coverage-Matrix Skelett                                                  │
│  └─ Tools: check_prompt_size, check_prompt_tokens, check_coverage,           │
│           check_overlap                                                       │
├─────────────────────────────────────────────────────────────────────────────┤
│ Phase 1 — Extract (8 parallele lokale Subagents, bite-sized)                 │
│  ├─ T1 → extracts/T1-langdock-features.md                                    │
│  ├─ T2 → extracts/T2-rag-mechanik.md                                         │
│  ├─ T3 → extracts/T3-marketing-praxis.md                                     │
│  ├─ T4 → extracts/T4-persona-architektur.md                                  │
│  ├─ T5 → extracts/T5-data-canon.md                                           │
│  ├─ T6 → extracts/T6-dach-kontext-kosten.md                                  │
│  ├─ T7 → extracts/T7-persona-framework.md                                    │
│  └─ T8 → extracts/T8-metaprompts-critical-thinking.md                        │
│  Phase 1.5 — Cross-Validation (lokal): widerspruchs- und gap-check          │
├─────────────────────────────────────────────────────────────────────────────┤
│ Phase 2 — Synthesize (one authoring-session per file, phasenorientiert)      │
│  Per Session: Authoring-Spec + 2-4 Extracts + Matrix-Row → PR mit            │
│  Knowledge-File                                                              │
│  Driver: dispatch session → review plan → verify branch on remote            │
│  Recovery: session reports done without a branch → probe → patch locally     │
├─────────────────────────────────────────────────────────────────────────────┤
│ Phase 3 — Lokale Integration (lokal)                                         │
│  ├─ Knowledge-File PRs reviewen + mergen                                     │
│  ├─ AGENT_PROMPT.md v3 finalisieren                                          │
│  ├─ CONVERSATION_STARTERS.md (10 in DE)                                      │
│  ├─ examples/good-outputs.md + bad-outputs.md                                │
│  └─ MAINTENANCE.md skeleton                                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│ Phase 4 — Validation (lokal + dispatched)                                    │
│  ├─ check_prompt_size + check_prompt_tokens                                  │
│  ├─ check_coverage (Coverage-Matrix → existierende Anker)                    │
│  ├─ check_overlap (cross-file Embedding-Vergleich)                           │
│  ├─ 20-Query Spot-Check (Langdock Search API, falls Workspace verfügbar)     │
│  ├─ 5-Question Canary (N6 zero fabrication)                                  │
│  └─ Persona-Calibration auf Flash + Haiku                                    │
├─────────────────────────────────────────────────────────────────────────────┤
│ Phase 5 — Deployment Package                                                 │
│  ├─ INSTALL.md (Schritt-für-Schritt Langdock-Setup)                          │
│  ├─ examples/iw-little-data/README.md (Project-Überblick für PR-Reviewer)                │
│  └─ langdock-deploy/ als Upload-Ready-Folder                                 │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 4. Themen-Cluster (Phase 1) — Inputs & Mapping

| Cluster | Inputs (Research-Files) | Feeds Knowledge-Files |
|---|---|---|
| **T1** Langdock Features & Limits | research/01 (Feature Inventory), restructured/00 (Master Inventory), sources/01-06 | 00, 01, 02, 03, 04, 05, 06 |
| **T2** RAG & Retrieval-Mechanik | research/04 (Bootstrap), research/10+12 (Authoring-Methodology), restructured/01, sources/07 | 02, 03 |
| **T3** Marketing-Praxis & Use-Cases | research/03 (Scenarios Catalog), research/09 (FAQ Corpus) | 09, 10 |
| **T4** AI-Persona-Architektur | research/05 (Persona-via-Knowledge), research/08 (Persona Bootstrap Playbook), research/07 (Persona-Framework-Analyse) | 11, 13 |
| **T5** Persona-Canon (reference example: Lt. Cmdr. Data) | research/06 (Persona Canon), research/11 (Persona Profile) | 11, 12 |
| **T6** DACH-Kontext + Kosten | research/02 (DACH Adoption), research/01 (Pricing), restructured/00 | 07, 08, 09 |
| **T7** Persona-via-Knowledge-Framework | research/07 (Framework Analysis), persona/style/build references | 11, 13 |
| **T8** Metaprompts + Critical-Thinking | netzkontrast/agency (research/prompts/, red-team/, Plan/*), Anthropic/OpenAI prompt patterns | 10, 13 |

**Phase-1.5 Cross-Validation:** vor Phase 2 wird automatisiert geprüft, ob Extracts widerspruchsfrei sind (z.B. T1 sagt Chunk-Size 2000 / T2 sagt Chunk-Size 2048 → flag). Lokaler Subagent macht das in einem Pass.

---

## 5. Authoring-Session-Pattern für Phase 2

**Pro Knowledge-File eine Authoring-Session** (lokaler Subagent oder in-session Author). Driver-Pattern:

```
1. Dispatch eine self-contained Authoring-Session pro File (Authoring-Spec +
   Extracts + Matrix-Row als Input).
2. Review den Session-Plan, bevor die Session schreibt.
3. Verify das Ergebnis am Remote-Branch — "COMPLETED" allein ≠ done.
4. Recover silent-fails via Probe + lokalem Patch.
```

**Session-Prompt-Template (per File) — reference example: IW Little Data:**
```
Aufgabe: Schreibe die Knowledge-Datei `langdock-deploy/knowledge/<file>.md`
für den Langdock-Wissensordner des "Little Data" Agents.

Inputs (alle im Repo):
- Authoring-Spec: docs/knowledge-file-authoring-spec.md
- Relevante Extracts: examples/iw-little-data/data/extracts/<T-X>, <T-Y>
- Coverage-Matrix-Row: examples/iw-little-data/data/coverage-matrix.md (Sektion für <file>)
- Existing Spec: docs/examples/iw-little-data-agent-design.md (§9.2 template)

Constraints:
- 1 H1, intro box, H2-Blöcke 1200-1800 chars
- Deutsche Sprache (mit englischen Langdock-Loanwords)
- Single-topic-per-chunk
- Per-document-cap aware (no 2 H2 mit überlappendem query)
- Verbatim anchors wo in der Coverage-Matrix gefordert

Output: PR mit der Datei + kurze PR-Beschreibung der Inhalts-Mapping.
```

**Parallel-Limit:** mehrere Sessions parallel; Empfehlung 3-5 gleichzeitig, um Review-Bandbreite handhabbar zu halten. Reference example (14 Files) = 3 Wellen à 4-5 Sessions.

---

## 6. Plan-Granularität (gewählt: Hybrid Bite-sized + Phasen)

- **Phase 0, Phase 1, Phase 1.5, Phase 3 (lokale Schritte), Phase 4, Phase 5:** bite-sized — jeder Plan-Step beschreibt ein konkretes Tool-Invocation mit exaktem Prompt-Template, Input-Files, erwartetem Output.
- **Phase 2 (Authoring-Sessions):** phasenorientiert — eine Plan-Section pro File mit Dispatch-Pattern + Recovery-Notes; die exakten Prompt-Variationen sind im Plan dokumentiert, aber jede Session ist ein Atomwert.

---

## 7. Risiken / Open Questions

| ID | Risiko | Mitigation |
|---|---|---|
| **R1** | Authoring-Dispatcher + Repo-Connection nicht bestätigt | Phase 0 Task 0: probe die Dispatch-Capability; falls Fehler, escalate VOR Phase 2 |
| **R2** | File 10 Trigger-Kollision Skills vs. Metaprompts | Distinkte Vocabulary-Anker, Spot-Check nach Phase 2 für File 10; Fallback: nachträglich splitten |
| **R3** | Phase 2 Authoring-Sessions liefern unterschiedliche Stilistik | Phase 3 Cross-File-Konsistenzprüfung; Style-Linting (lokaler Subagent) |
| **R4** | Cross-Validation in Phase 1.5 findet kritische Widersprüche | Plan-Step für Refinement-Iteration in der relevanten T-X Extract; ggf. zusätzliche Research-Anfrage |
| **R5** | Langdock-Workspace für Spot-Check (Phase 4) nicht verfügbar | Defer Spot-Check; ersetzen durch Embedding-only-check via lokale Tools |
| **R6** | Gemini Prompt 9 (50 Inline-Skills) noch nicht ausgeführt | T3-Extractor kann ohne synthetisieren; falls Prompt 9 später kommt, nachträgliche Erweiterung von File 10 |

---

## 8. Erfolgskriterium

Plan ist erfolgreich, wenn am Ende von Phase 5:

1. `examples/iw-little-data/langdock-deploy/` ist vollständig: 14 Knowledge-Files + AGENT_PROMPT.md + CONVERSATION_STARTERS.md
2. `INSTALL.md` führt Schritt-für-Schritt durch Langdock-Workspace-Setup, Wissensordner-Upload, Agent-Konfiguration, Konversations-Starter-Setup
3. `tools/check_*` Suite läuft grün
4. 20-Query Spot-Check ≥85% Pass-Rate (oder defer mit Begründung)
5. 5-Question Canary: 5/5 Pass (zero fabrication)
6. Persona-Calibration: Gemini 2.5 Flash UND Haiku 4.5 produzieren in-character Output bei Test-Queries
7. PR-Diff sauber: ein PR (oder Stack), klare Commit-History, keine Sources/Extracts in `langdock-deploy/`

---

## 9. Was diese Spec NICHT abdeckt

- Die Inhalte der einzelnen Knowledge-Files (das ist Phase-2-Output)
- Den finalen Wortlaut des AGENT_PROMPT.md v3 (Phase 3 + Validation-Iterationen)
- Die exakten 20 Spot-Check-Queries (kommen aus T3/T8/Coverage-Matrix)
- Marketing-spezifische Personalisierungen für den initial Kunden (post-deployment)

---

## 10. Spec-Self-Review

- [x] **Placeholder scan:** keine TBD/TODO/vage Anforderungen.
- [x] **Internal consistency:** Phase-Architektur, Themen-Cluster, Knowledge-File-Taxonomy stimmen überein (gleiche IDs, gleiche Inputs/Outputs).
- [x] **Scope check:** dieser Spec deckt den Build-Plan ab. Inhaltliche Knowledge-File-Authoring-Methodologie ist eine separate Spec (Phase 0 deliverable).
- [x] **Ambiguity:** "advisory-only" für File 04/05/06 = nicht ausführen, nur beraten; kein "Phase 2"-Wording in Agent-Outputs (siehe Agent-Design-Spec).

Ready für den User-Review-Gate und anschließend die Build-Plan-Erstellung (`docs/knowledge-build-plan.md`).
