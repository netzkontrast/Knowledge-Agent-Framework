# A4 — Depth & Reasoning-Rigor Diagnosis (READ-ONLY)

Lens: M02 Steelman + M03 Pre-Mortem + M09 Red Team
Scope: 19 knowledge files (00-18), IW "Little Data". Content/persona scenarios scanned: 11×80 (00-10) + 22×3 (14/16/17) + 40 (11) + 31 (12) = ~1057 scenarios.

## Summary (overall depth quality)

The knowledge base is **structurally and qualitatively strong**. Programmatic scan of every content/persona scenario found **zero** hard violations: no Vorgehen exceeds 5 steps, every scenario carries ≥2 Fallstricke, and no genuine outward action (send/publish/CRM-write) ships without a HITL/Freigabe gate. The Fallstricke read like real pre-mortems — concrete failure mode + named mitigation (the `→` pattern is used consistently), not vague hand-waving. Beispiel-Prompts generally serve their stated Ziel, and Erwartete Artefakte are concrete (template, matrix, one-pager, JSON schema, ZIP-kit). The HITL discipline is explicitly honored: outward-looking scenarios state "keine automatische Veröffentlichung" (S-WF-064), "Draft-Status mit Pflicht-Review als unveränderliches Gate" (S-IM-054), "explizite Freigabe-Step ist Pflicht, kein Auto-Post" (S-AK-024 region in 02). Remaining findings are minor polish ([m]) plus one systemic label-template artifact. **No [C] findings. Weakest file by depth: file 01 (deliberately terse Ziel/Artefakt on prompt-technique scenarios). Strongest: 06, 08, and the persona files 11/12 (textbook pre-mortem/red-team application).**

## Findings (severity-ranked)

| file | scenario-ID | severity | weakness | suggested sharpening |
|---|---|---|---|---|
| 01-chat-und-prompts.md | S-CP-007 | [M] | prompt-goal/label mismatch: field labeled "Beispiel-Prompt (DE, PTCF)" but prompt is CO-STAR (Context/Objective/Style/Tone/Audience/Response). Title and Ziel are CO-STAR. | Relabel field to "(DE, CO-STAR)" for this scenario; prompt itself correctly serves the goal. |
| 01-chat-und-prompts.md | (all 80) | [m] | Systemic: every Beispiel-Prompt field is hard-labeled "(DE, PTCF)" even where the scenario teaches a different framework (CO-STAR, Few-Shot S-CP-002, etc.). Template artifact, not content error. | Make the framework token in the label dynamic per scenario, or drop the framework token from the label. |
| 01-chat-und-prompts.md | S-CP-007 | [m] | Ziel ("Alle Wirkungs-Parameter ... vorab festlegen", 66 ch) and Artefakt ("Ein CO-STAR-Entwurf ...", 50 ch) are terse. Concise but not the strongest steelman. | Name the concrete deliverable shape (e.g. "1-Absatz-Memo: Lage + 3 Maßnahmen + Ausblick") — the prompt already implies it. |
| 01-chat-und-prompts.md | S-CP-002 | [m] | Terse Artefakt ("Ein Few-Shot-Prompt mit eingebetteten Referenzbeispielen", 57 ch); no count/shape of examples. | Specify example count and selection criterion (e.g. "3 kontrastierende Referenzbeispiele"). |
| 01-chat-und-prompts.md | S-CP-065 | [m] | Artefakt "Weiterverarbeitbare Markdown-Tabelle mit fixen Spalten" — "weiterverarbeitbar" is soft; spalten unnamed in artefact line. | Name the fixed columns in the artefact (they exist in the prompt). |
| 01-chat-und-prompts.md | S-CP-066 | [m] | Artefakt "Schema-konformes JSON-Objekt für die Workflow-Übergabe" — schema not pinned in artefact line. | Reference the target schema/required keys. |
| 01-chat-und-prompts.md | S-CP-067 | [m] | Artefakt "Finale Headline plus dokumentierter Verfeinerungspfad" — count/format soft. | State headline count + what "Verfeinerungspfad" records (e.g. 3 Varianten + Auswahlbegründung). |
| 01-chat-und-prompts.md | S-CP-069 | [m] | Artefakt "Begründete Vergleichsmatrix als Entscheidungsgrundlage" — generic; matrix axes live only in prompt. | Pull the fixed criteria into the artefact line for self-containment. |
| 01-chat-und-prompts.md | S-CP-071 | [m] | Artefakt "Reparierter Prompt mit Fehlerdiagnose und Versionsnotiz" — terse but acceptable. | Optional: note diagnosis format (before/after diff). |
| 01-chat-und-prompts.md | S-CP-075 | [m] | Artefakt "Kategorisierte Ideenliste mit erzwungener Bandbreite" — "erzwungene Bandbreite" vague. | Quantify (e.g. "≥3 Kategorien, je ≥3 Ideen"). |
| 01-chat-und-prompts.md | S-CP-076 | [m] | Artefakt "Überarbeiteter Text mit nachvollziehbarer Mängelliste" — soft. | Specify Mängelliste granularity (per-paragraph / per-claim). |
| 06-api-und-deployment.md | S-API-002 | [m] | Artefakt "Ein formelles Security-Dossier" (31 ch) — strong Ziel (118 ch) but artefact under-specified vs. peers. | Name dossier sections (e.g. SOC2-ref, Datenfluss, Schlüssel-Scope). |
| 06-api-und-deployment.md | S-API-003 | [m] | Artefakt "Eine FinOps Prozess-Spezifikation" (34 ch) — generic noun, no structure. | Name spec components (Tagging-Regel, Auswertungs-Logik, Report-Kadenz). |
| 06-api-und-deployment.md | S-API-006 | [m] | Artefakt "Ein Pitch-Script (3 Absätze)" — concrete shape but thin on content guarantee. | OK as-is; optionally name the 3 beats. |
| 06-api-und-deployment.md | S-API-007 | [m] | Artefakt "Eine formelle E-Mail (Mängelrüge)" — outward-flavored noun; confirm it is a *draft* artefact, not an auto-send. | Add "(Entwurf, manueller Versand)" to remove any auto-send reading. |
| 06-api-und-deployment.md | S-API-010 | [m] | Artefakt "Ein DSGVO-Auskunftsprozess Dokument" (36 ch) — generic. | Name process steps/roles captured. |
| 00-langdock-uebersicht.md | S-LU-007 | [m] | Ziel terse (53 ch); artefact ("schonungsloses Audit-Protokoll") rhetorical rather than structural. | Replace adjective with structure (sections/checklist items). |
| 00-langdock-uebersicht.md | S-LU-009 | [m] | Ziel 50 ch; artefact "kompromisslos gekürzter CRM-Workflow" — adjective-led. | Specify what the deliverable lists (kept vs. cut steps). |
| 05-integrationen-und-mcp.md | S-IM-008 | [m] | Artefakt "MCP-Server-Bereitstellungskonzept für die Client-Teams" (59 ch) — strong Ziel (204 ch); artefact could name components. | List concept sections (auth, scopes, deployment target). |
| 09-marketing-praxis.md | S-MP-075 | [m] | Artefakt "Zehn personalisierte Pitch-E-Mails ... versandbereit nach manueller Verifikation" — HITL present and correct; flag only to confirm the manual-verify gate is load-bearing (it is). | None needed; exemplary HITL phrasing. |
| 09-marketing-praxis.md | S-MP-016 | [m] | Artefakt "...bereit zum direkten E-Mail-Versand an die Agentur" — outward phrasing but the artefact is a draft document handed to a human; no auto-send. Acceptable. | Optional: "versandbereit (manueller Versand)" to harden against misreading. |

## Notes

- **HITL verification:** 10 scenarios initially flagged by a keyword scan for outward verbs (versende/publiziere/poste/CRM) were each inspected; all 10 are false positives — they produce internal drafts/concepts/templates or are explicitly read-only (S-IM-050 Pinterest read-only; S-WF-064 "keine automatische Veröffentlichung"; S-IM-054 Draft-Status + Pflicht-Review gate). Genuine outward-action scenarios (Slack auto-post in 02, crisis email in 01 line 760 "vor dem Versand ... freigeben lassen") all carry explicit Freigabe steps.
- **Fallstricke quality:** Spot-read ~40 scenarios across all 11 content files. The pre-mortem pattern (`<failure mode> → <mitigation>`) is consistent and specific (DSGVO Art. 5/6 citations, 200-file sync limit, 10% Langdock API surcharge, 50-entry pagination, etc.). No generic filler ("could be inaccurate") found.
- **Persona files 11/12:** Strongest reasoning rigor — S-LC-003 literally operationalizes Pre-Mortem ("fiktives Scheitern durchspielen ... fünf plausibelste Ursachen") without naming the method as an output field (M-lens stays invisible per CLAUDE.md discipline). Vorgehen ≤5, Beispiel-Konversation grounded.
- **Terse-style file 01:** Its short Ziel/Artefakt lines are a deliberate house-style for atomic prompt-technique scenarios, not weak placeholders — the depth lives in the Beispiel-Prompt and Fallstricke. Rated [m] (could be sharper) only.
