# A3 — Retrieval Audit (M13 Adversarial Query Expansion)

Lens: M13 Adversarial Query Expansion against the 19-file IW "Little Data" Wissensordner
(1056 `### S-` scenarios). RAG rule: one chunk wins per file per query, so when two files
each hold a near-duplicate-intent scenario under the same dominant trigger noun, they
compete and the wrong chunk can win. This ledger lists (1) trigger-noun collisions across
files and (2) the higher-value output: orthogonal real IW communications queries that no
scenario currently answers, with target file + seed.

Method: extracted all scenario headers (`grep '^### S-'`), clustered by dominant noun,
then ran full-text presence checks for ~40 communications phrasings. Severity:
[C] critical (high-frequency user query, 3+ files compete), [M] moderate (2 files,
common query), [m] minor (overlap exists but intents diverge enough).

---

## Section 1 — Trigger-noun collisions

| Shared query / noun | Colliding scenario IDs (file) | Sev | Suggested disambiguation |
|---|---|---|---|
| "Pressemitteilung schreiben / verteilen" | S-IW-001 (14), S-MP-023 (09), S-AK-026 (02), S-WF-032 + S-WF-079 (04) | [C] | Reserve the bare noun "Pressemitteilung **schreiben/texten**" to S-IW-001 (IW-Report-specific). Rename 09/02 around their real axes: S-MP-023 → "Journalisten-**Pitch** für DACH-Fachmedien", S-AK-026 → "PR-**Agent konfigurieren**". 04 already scoped to "**Distribution/Pipeline**" — keep but lead with "Verteiler/Distribution". |
| "Newsletter erstellen / zusammenbauen" | S-IW-005 (14), S-MP-057 (09), S-WF-001 + S-WF-027 + S-WF-070 (04), S-TT-013 (17), S-LU-003 (00) | [C] | Give each a distinct qualifier noun: S-IW-005 = "IW-**Themen-Newsletter** kuratieren", S-MP-057 = "**internes** Team-Newsletter", 04 = "Newsletter-**Workflow/Scheduled**", S-TT-013 = "Newsletter-**Repurposing**". Bare "Newsletter schreiben" should resolve to S-IW-005. |
| "Brand Voice / Tonalität festlegen" | S-MP-011 + S-MP-071 (09), S-CP-027 + S-CP-064 (01), S-AK-001 + S-AK-050 (02), S-WR-012 (03), S-PS-033 + S-PS-070 (10) | [C] | S-MP-011 and S-MP-071 are near-duplicates ("Brand-Voice-Leitfaden aus Bestands-Content") in the SAME file — merge. Across files: 09 = author the guideline, 01 = audit in chat, 02 = Brand-Guardian-Agent, 03 = store persona in Wissensordner, 10 = anchor voice in prompts. Add the axis noun to each title. |
| "CEO / Thought-Leadership Ghostwriting" | S-CP-036 (01), S-MP-015 + S-MP-076 (09), S-TT-020 (17) | [M] | S-MP-015 and S-MP-076 overlap heavily; differentiate by channel (S-MP-015 = LinkedIn-Post, S-MP-076 = Fachartikel). For IW, "**Forschenden**-Ghostwriting aus Interview-Transkript" (S-TT-020) should own the think-tank query; 01 owns the chat-workflow mechanic. |
| "Krisenkommunikation / Krisen-Playbook" | S-CP-038 (01), S-WR-017 (03), S-MP-045 (09), S-TT-019 (17), S-LU-007 (00), S-API-008 (06) | [M] | For IW the dominant query is "bestrittene Studienbefunde" → route to S-TT-019; keep S-WR-017 as the "Playbook **strukturieren** (Wissensordner)" mechanic and S-CP-038 as "im **Chat** abrufen". Lead each title with its distinguishing noun. |
| "Lokalisierung / Übersetzung DE↔EN" | S-IW-013 (14), S-CP-077 (01), S-WF-006/013/073 (04), S-MK-001/017 (07), S-IM-005/054 (05), S-PS-019/024 (10), S-AK-009/070 (02), S-WR-059 (03), S-MP-073 (09), S-TT-001 (17) | [M] | Extremely crowded. For IW, "IW-Report **DE↔EN übersetzen**" = S-IW-013; "**Transkreation Slogan**" = S-CP-077; "**Bulk/Batch** kostenoptimiert" = S-MK-001/017; "**Glossar-Bindung**" = S-PS-024/S-WR-059. Distinguish by the operative noun, not "Übersetzung" alone. |
| "Pressekonferenz / Hintergrundgespräch vorbereiten" | S-IW-014 (14), S-TT-005 (17) | [m] | Both legitimate; S-TT-005 = the *practice/choreography*, S-IW-014 = the *concrete prep artefact*. Cross-link via Anschluss-Szenario rather than rename. |
| "Policy-Brief / Stellungnahme" | S-IW-006 (14), S-TT-007 (17) | [m] | S-IW-006 = produce the draft; S-TT-007 = the practice for Anhörungen. Add "**Entwurf**" vs "**Anhörung/Hearing**" qualifier. |
| "Sperrfrist / Embargo" | S-IW-008 (14), S-TT-004 (17) | [m] | S-IW-008 = the concrete comms-plan artefact; S-TT-004 = the choreography practice. Keep both; lead S-IW-008 with "Embargo-**Kommunikationsplan**". |
| "Datenvisualisierung / Chart-Briefing" | S-IW-004 (14), S-TT-011 (17), S-CP-033 (01) | [m] | S-IW-004 = chart briefing from study data (owns the IW query); S-TT-011 = interactive-chart practice; S-CP-033 = inline-viz mechanic in chat. Distinct enough; lead S-IW-004 with "Grafik-/Chart-**Briefing aus Studiendaten**". |
| "Faktencheck / Faktentreue Studienzahlen" | S-TT-015 (17), S-PS-072 (10), S-CP-078 (01) | [m] | S-TT-015 owns "**Studienzahlen** absichern"; S-PS-072/S-CP-078 are generic fact-check mechanics. Keep "Studienzahlen" exclusive to S-TT-015. |

Note: several intra-file duplications were spotted (S-MP-011 vs S-MP-071; S-MP-015 vs S-MP-076;
S-WF-032 vs S-WF-079; S-SG-026 vs S-SG-070 shadow-AI; S-AK-016 vs S-AK-052/S-AK-077 deprecation;
S-AK-019 vs S-AK-073 prompt-versioning). These are not cross-file collisions but waste the
single per-file chunk slot and should be merged or sharpened.

---

## Section 2 — New scenarios to author (priority output)

Confirmed hard gaps (zero or near-zero dedicated scenario in any file). Targets concentrate
on the IW communications files (14 iw-use-cases, 17 think-tank-praxis), with supporting seeds
in 09/16/10 where the mechanic belongs.

| Candidate query | Target file | Scenario seed (one line) | Why it matters |
|---|---|---|---|
| "Sharepic / Zitatkachel für eine Studie texten" | 14 | S-IW-NEW Social-Sharepic + Zitatkachel-Text aus Studienkernaussage (Bildbriefing + Caption, HITL-Freigabe vor Post). | Zero dedicated scenario; Sharepics are the #1 organic-social asset for think-tank studies. |
| "Faktenblatt / Hintergrundpapier zu einer Studie erstellen" | 14 | S-IW-NEW Ein-Seiten-Faktenblatt (Kernzahlen, Methodik-Kasten, O-Ton) für Journalisten und Politik. | "Factsheet/Faktenblatt" returns 0 hits anywhere; a core IW press-kit artefact. |
| "Methoden-/Limitationen-Kasten allgemeinverständlich erklären" | 17 | S-TT-NEW Methodenkasten + Limitationen für Laien formulieren ohne die Aussage zu überzeichnen. | No scenario owns methodology-explanation; central to credible Wissenschaftskommunikation. |
| "Erklärvideo-Skript / Reel-Skript aus einer Studie" | 14 | S-IW-NEW Kurzvideo-/Reel-Skript (30–60 s) mit Hook, drei Kernzahlen, CTA aus Studienergebnis. | "Erklärvideo/Reel-Skript" = 1 incidental hit; bewegtbild is a growing IW channel with no seed. |
| "Rede / Grußwort / Sprechzettel für eine Führungskraft" | 14 | S-IW-NEW Sprechzettel + Talking Points für Präsidenten-Statement bei Studien-Launch. | "Keynote/Grußwort/Sprechzettel" has no dedicated scenario; recurring exec-comms need. |
| "Social-Karussell / Slide-Post aus Studienergebnissen" | 14 | S-IW-NEW LinkedIn-Karussell (5–7 Slides) mit je einer Kernaussage + Quellenfußnote. | Carousel format absent; high-engagement B2P asset for LinkedIn. |
| "Gastbeitrag / Op-Ed für ein Leitmedium aus Studienthese" | 17 | S-TT-NEW Op-Ed-Entwurf (FAZ/Handelsblatt-Format) mit Ordnungspolitik-konsistenter These. | Op-Ed mentioned but no authoring scenario; key reach instrument for IW. |
| "Veranstaltung / Save-the-Date / Einladungstext bewerben" | 14 | S-IW-NEW Einladungs- und Save-the-Date-Texte plus Reminder-Sequenz für IW-Veranstaltung. | Event mentioned only in passing; Veranstaltungsbewerbung is explicit user need. |
| "X- / Bluesky-Kurznachricht aus einer Studie" | 14 | S-IW-NEW Plattform-native Kurzpost-Varianten (X, Bluesky, LinkedIn) aus einem Kernbefund. | Short-form micro-post not owned by any IW scenario; daily comms task. |
| "Zielgruppen-Botschaften für ein Statement zur Tagespolitik" | 14 | S-IW-NEW Reaktiv-Statement zu aktueller wirtschaftspolitischer Entwicklung, drei Zielgruppen. | Bridges S-IW-011 (Botschaften) + S-TT-008 (Kalender) but no reactive-statement seed exists. |
| "Pressespiegel / Clipping-Auswertung aufbereiten" | 17 | S-TT-NEW Pressespiegel verdichten zu Management-Resonanz-Report (Tenor, Reichweite, Zitate). | Only one passing mention; recurring weekly comms-ops deliverable. |
| "iwd-Teaser / Anrei&szlig;er für die Startseite" | 14 | S-IW-NEW iwd-Teaser + SEO-Title + Meta-Description aus dem Langfassungs-Artikel. | S-IW-002 covers the article body, not the teaser/listing layer that drives clicks. |
| "Hörfunk-O-Ton / TV-Statement-Vorbereitung" | 14 | S-IW-NEW Rundfunk-O-Ton-Vorbereitung: kurze, zitierfähige Sätze + Brückensätze für Interview. | Broadcast prep absent; distinct from print-pitch (S-IW-016). |
| "FAQ / Sprachregelung zu einer kontroversen Studie" | 17 | S-TT-NEW Q&A-Sprachregelung für strittige Befunde inkl. Gegenargument-Antworten. | S-IW-012 covers public FAQ; internal Sprachregelung for spokespersons is a gap. |
| "Drittmittel- und Auftraggeber-Transparenz im Text ausweisen" | 17 | S-TT-NEW Transparenz-Hinweis + Förder-/Auftraggeber-Disclosure korrekt platzieren. | Sharpens S-TT-014; the *how-to-place-it* artefact is missing for Fördermittel-Kommunikation. |
| "Konjunkturprognose laienverständlich kommunizieren" | 17 | S-TT-NEW Prognose-Kommunikation mit Unsicherheits-Bandbreiten ohne Scheingenauigkeit. | S-IW-017 exists but the uncertainty-honest framing for forecasts has no dedicated seed. |
| "Zeitreihe / Tabelle in eine Mediengrafik-Idee übersetzen" | 17 | S-TT-NEW Aus Rohdaten-Zeitreihe drei Visualisierungs-Optionen + Aussage-Risiko bewerten. | Distinct from chart *briefing* (S-IW-004): this is the data-to-story interpretation step. |
| "Politischer-Kalender-Themenplan für die Kommunikation" | 14 | S-IW-NEW Redaktionsplan aus Sitzungswochen + Gesetzgebungsvorhaben ableiten (verfeinert S-IW-019). | S-IW-019 exists but thin; tie concrete legislative events to comms timing. |
| "Englische Kurzfassung eines Reports für internationale Presse" | 14 | S-IW-NEW EN-Executive-Summary + EN-Press-Note aus deutschem IW-Report, terminologie-treu. | S-IW-013 = full translation; the short EN press artefact for foreign media is a gap. |
| "Wissenschaftsjargon → Politik-Sprache übersetzen" | 17 | S-TT-NEW Befund in entscheider-gerechte Politik-Sprache überführen (Was bedeutet das für die Maßnahme?). | S-TT-001 targets Laien; the *policy-maker* register is a distinct, missing audience. |
| "Embargo-Bruch / vorzeitiges Leak: Sofortreaktion" | 17 | S-TT-NEW Reaktions-Playbook bei gebrochenem Embargo (Statement, Verteiler-Nachzug, Timeline). | S-TT-004/S-IW-008 plan the embargo; no scenario handles the breach. |
| "Jubiläum / Jahresbericht-Story aus mehreren Studien bündeln" | 14 | S-IW-NEW Jahresbericht-Narrativ aus Jahres-Studienportfolio + Highlight-Auswahl synthetisieren. | Mentioned but no authoring seed; recurring annual comms project. |
| "Interner Wissenstransfer: Studien-Briefing fürs Kommunikationsteam" | 16 | S-OC-NEW Internes 1-Pager-Briefing pro neuer Studie (Kernaussagen, Sprachregelung, No-Go-Formulierungen). | Wissenstransfer query returns nothing concrete; bridges research→comms handoff. |
| "Zitatfreigabe / Autorisierungs-Schleife mit Forschenden organisieren" | 14 | S-IW-NEW Autorisierungs-Workflow für O-Töne und Pressezitate mit HITL-Freigabe. | Mentioned in passing; the freigabe-prozess artefact is missing and is a daily friction point. |
| "Barrierefreie / einfache Sprache-Version einer Pressemitteilung" | 17 | S-TT-NEW Leichte-Sprache-Fassung einer Studienmeldung nach klaren Verständlichkeitsregeln. | Accessibility only in alt-text scenarios; einfache-Sprache for public comms is a gap. |
| "SEO-Themen-Hub / Evergreen-Explainer pflegen und aktualisieren" | 17 | S-TT-NEW Evergreen-Explainer-Update bei neuer Studienlage (Inhalts-Refresh + Quellen-Swap). | S-TT-012/S-IW-015 build the hub; the maintenance/refresh cycle is unowned. |
| "Datengetriebene Infografik-Story für Instagram/LinkedIn" | 14 | S-IW-NEW Social-Infografik-Serie (3 Posts) aus einem Befund mit konsistentem Bildbriefing. | Infografik appears as mechanic; no IW social-series authoring seed. |
| "Podcast-Episode aus einer Studie konzipieren" | 17 | S-TT-NEW Podcast-Folge planen: Gliederung, Interviewfragen an Forschende, Show-Notes. | S-TT-013 = repurposing only; original-episode planning is missing. |
| "Medienresonanz / Wirkungsmessung quartalsweise berichten" | 17 | S-TT-NEW Wirkungs-Report: Politik-Zitationen + Reichweite + Tenor in Leitungs-Deck verdichten. | Sharpens S-TT-006/S-TT-018 into a concrete recurring artefact. |
| "Krisen-Statement bei methodisch angegriffener Studie" | 17 | S-TT-NEW Verteidigungs-Statement gegen Methodikkritik mit belegter Replik und Eskalationsstufen. | S-TT-019 generic; the methodology-attack variant is the most likely real crisis. |
| "Social-Listening: Reaktion auf politische Vereinnahmung eines Befunds" | 17 | S-TT-NEW Reaktion, wenn eine Partei eine IW-Zahl aus dem Kontext reißt (Klarstellung, Neutralität wahren). | No scenario covers misuse-by-third-party, a recurring think-tank risk. |
| "Gutachten-Kurzfassung für die Geschäftsführung (verfeinern)" | 14 | S-IW-NEW Geschäftsführungs-Briefing mit Entscheidungs-Optionen statt nur Zusammenfassung (erweitert S-IW-009). | S-IW-009 summarises; the decision-oriented exec brief is the actual ask. |
| "Förder-/Drittmittel-Antrag kommunikativ aufbereiten" | 14 | S-IW-NEW Laienverständliche Projekt-/Förder-Kommunikation aus Antragstext (Außendarstellung). | Fördermittel-Kommunikation named in brief; only one incidental hit, no IW seed. |
| "Mediengrafik mit Quellen-/Lizenzfreigabe absichern" | 17 | S-TT-NEW Bild- und Datenquellen-Lizenz vor Veröffentlichung prüfen (Freigabe-Checkliste). | Bridges comms + S-SG rights-clearance; no comms-side seed exists. |
| "Wahlkampf-/Legislaturperioden-Themenplanung" | 17 | S-TT-NEW Themen-Roadmap entlang Koalitionsvertrag/Legislaturagenda für proaktive Studien-PR. | Policy-calendar scenarios are reactive; proactive legislature-driven planning is missing. |

---

### How to apply

- Section 1: rename or merge so each file's chunk for a shared query carries a **distinct
  dominant noun**; keep the bare IW noun (Pressemitteilung, Newsletter, Brand Voice) routed
  to the IW-specific file (14/17), and qualify the generic-mechanic files (01/02/04/09/10).
- Section 2: author into 14 and 17 first (highest IW-communications value), supporting seeds
  in 16 (internal transfer) and 10 (prompt mechanics). Each new scenario must keep distinct
  trigger nouns from the collision list above so it does not create a *new* competition.
