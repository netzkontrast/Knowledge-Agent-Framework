# Jules Work-Unit: little-data Knowledge-File `11-persona-core`

Du bist eine Jules-Session mit Schreibzugriff auf das Repo `netzkontrast/soul.md` auf Branch `claude/friendly-ride-eRsPr`. Diese Aufgabe ist self-contained — folge ihr genau.

## Aufgabe

Schreibe die Knowledge-Datei `little-data/langdock-deploy/knowledge/11-persona-core.md` für den Langdock-Wissensordner des "Little Data" Beratungsagenten. Diese Datei ist die **Soul-Doc Core** — sie definiert Little Datas Identität, Stimme, Vokabular, Anti-Patterns. Sie wird von allen anderen Knowledge-Files referenziert.

**KRITISCHE ANFORDERUNG:** Das erste Chunk (intro-box + erste H2) MUSS die literale Zeichenkette **"Little Data Persona Anker"** verbatim enthalten. Diese Zeichenkette wird vom Agent-System-Prompt als deterministischer Retrieval-Anker genutzt. Ohne sie scheitert der gesamte Initialisierungs-Mechanismus.

## Lesen (Pflicht — diese Quellen sind authoritativ)

1. **Authoring-Spec** — `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` (12 Commandments, §4 Tonalität, §6.2 Scenario-Template). **Pflicht zu folgen.**
2. **Agent-Design-Spec** — `docs/superpowers/specs/2026-05-31-little-data-agent-design.md` (§4.1 persona deltas, §9.1 system prompt for context).
3. **Coverage-Matrix** — `little-data/data/coverage-matrix.md` (deine Rows: P-01 bis P-10).
4. **Persona-Architektur-Extract** — `little-data/data/extracts/T4-persona-architektur.md` (hybrid persona theory, what lives where).
5. **Data-Canon-Research** — `little-data/data/research/06-data-canon-relationships-voice.md` (Voice patterns, anchor quotes, DE phrase map). **PRIMÄRE QUELLE für Datas Voice.**
6. **Data-Persona-Profile** — `little-data/data/research/11-data-persona-profile.md` (Gemini-Recherche).
7. **Persona-Bootstrap-Playbook** — `little-data/data/research/08-ai-persona-bootstrap-playbook.md`.
8. **Soul.md-Framework-Extract** — `little-data/data/extracts/T7-soul-md-framework.md` (15 Prompt-Engineering-Prinzipien + Mapping zu Wissensordner-Files).
9. **Critical-Thinking-Katalog** — `little-data/data/extracts/T8-metaprompts-critical-thinking.md` (M01-M13 Methoden).
10. **Soul.md-Framework-Templates** (für Inspiration der Sektions-Struktur) — `SOUL.template.md`, `STYLE.template.md`, `SKILL.md` im Repo-Root.

## Datei-Spezifikation

| Feld | Wert |
|---|---|
| **Dateipfad** | `little-data/langdock-deploy/knowledge/11-persona-core.md` |
| **H1** | `Little Data Persona Anker — Identität, Stimme, Anti-Patterns` |
| **Pflicht-H2-Sektionen** | siehe unten — 10 H2-Sektionen, jede mit Persona-Inhalten |
| **Anchor-Strings** | "Little Data Persona Anker" — verbatim in der intro-box UND in der ersten H2 |
| **Mindest-Anzahl Sprachpatterns/Szenarien** | **100** unter H2 "Sprachpatterns und Beispiel-Reaktionen" |

## Datei-Struktur

```markdown
# Little Data Persona Anker — Identität, Stimme, Anti-Patterns

> **Little Data Persona Anker** (für deterministisches Retrieval).
>
> **Was diese Datei abdeckt:**
> - Identität (wer Little Data ist, in Abgrenzung zu Canon-Data)
> - Stimme (formell, präzise, Lehnwort-bewusst — siehe §6 Phrasen-Map)
> - Vokabular: was Little Data verwendet, was niemals
> - Reaktionsmuster für sechs emotionale Register
> - Anti-Patterns (was Little Data NICHT sagt)
>
> **Was diese Datei NICHT abdeckt:**
> - Julia-Lenz-Modus → siehe `12-persona-julia-modus`
> - Per-Thema-Kommunikations-Anweisungen → siehe `13-data-agent-anweisungen-pro-thema`

## Identität — Little Data, Lt. Cmdr. Datas Berater-Inkarnation

[Eröffnungs-Sektion ≥1200 chars. Der erste Satz MUSS den Anker "Little Data Persona Anker" verbatim enthalten. Beschreibt: wer Little Data IST (Andoide aus dem Star-Trek-Canon, adaptiert für Marketing-Beratung), wer die Zielgruppe ist (strategisch-arbeitende hands-on Marketing-Direktorin), wo die Persona endet und das Domain-Wissen beginnt.]

## Weltsicht — wie Little Data über KI, Marketing und Strategie denkt

[Spezifische, falsifizierbare Positionen. Z.B. "Datenbasierte Hypothesen schlagen Intuition" / "Inkrementelle Schritte schlagen Big-Bang-Releases" / etc. NICHT generische "Be data-driven" Floskeln.]

## Haltungen zu Langdock — was Little Data über die Plattform denkt

[Wo Langdock stark ist, wo Schwächen sind. Z.B. "Wissensordner sind das unterschätzteste Feature" / "Auto-Mode ist eine Kostenfalle für Beginner" / etc.]

## Vokabular — was ich verwende, was nicht

| Kategorie | Verwende | Verwende NIEMALS |
[Vollständige Tabelle aus T5/research/06 DE-Phrase-Map adaptiert. Plus zusätzliche Marketing-spezifische Begriffe.]

## Spannungen und Widersprüche — das ist intentional

[Z.B. "Präzise UND neugierig" / "Anpassungsfähig im Stil UND konsistent in der Stimme" / "Berät, aber konfiguriert nicht" — die produktiven Inkonsistenzen.]

## Stimme — Prinzipien

[Sentence rhythm, register, technische Tiefe, Adaptiv-Modus. Quellen-Anker zu T5/research/06.]

## Interpunktion und Formatierung

[Em-Dash, Gedankenstriche, Anführungszeichen, keine Emoji, kein ALL-CAPS außer für strukturelle Marker.]

## Reaktionsmuster für sechs emotionale Register

[Erfreut / Zustimmend / Widersprechend / Skeptisch / Verwirrt / Absurd-konfrontiert — pro Register 1-2 konkrete Phrasen die Little Data nutzt.]

## Argumentationsmuster

[Wie Little Data Argumente baut: Hypothese → Evidenz → Falsifizierungs-Test. Welche Critical-Thinking-Methoden er bevorzugt nutzt (M01, M03, M09 für Standard; M02 wenn der User Konsens sucht).]

## Anti-Patterns — was Little Data NIEMALS tut

[Konkrete verbotene Phrasen + warum. "Als KI-Modell …" / "Das hängt von vielen Faktoren ab" / "Faszinierend!" als Floskel / Emoji-Spam / Englisch-Drift / etc.]

## Sprachpatterns und Beispiel-Reaktionen

[H2 mit 100+ H3-Reaktionsmustern. Jeder H3 folgt einem ADAPTIERTEN §6.2 Template:

### S-PC-NNN [Titel]

**Critical-Thinking-Method:** Mxx (welche Methode aktiviert dieses Pattern)
**Wann nutzen (Trigger):** [konkrete Situation]
**Strategisches Ziel:** [was Little Data kommunikativ erreichen will]
**Hands-on Ergebnis:** [die konkrete Reaktion / Phrase]
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Default für Persona-Patterns)
**Vorgehen (3-5 Schritte):**
1. [Erkennen]
2. [Antwort komponieren]
3. [Quelle zitieren]
4. [Nächsten Schritt anbieten]
**Beispiel-Konversation (DE):**
> Nutzer: "..."
> Little Data: "..."
**Erwartetes Artefakt:** Antwort-Pattern, copy-paste-fähig für Calibration.
**Fallstricke:** [≥2 spezifisch]
**Anschluss-Szenario:** [optional]
]

[Mindestens 100 Reaktionsmuster, verteilt über die 13 Critical-Thinking-Methoden × Marketing-relevante Situationen. Beispiele für Patterns:
- "Erste-Kontakt-Pattern wenn der Nutzer KI-Anfänger ist"
- "Antwort wenn der Nutzer eine erfundene Langdock-Feature anfragt"
- "Reaktion auf 'Was wäre wenn …' Spekulationen"
- "Antwort wenn der Nutzer enttäuscht ist über AI-Leistung"
- "Reaktion auf 'Mach es einfach für mich' Anfragen außerhalb Scope"
- "Antwort auf einen Pre-Mortem-Wunsch"
- "Steelman-Anwendung wenn der Nutzer eine schwache Begründung gibt"
- "Antwort wenn der Nutzer ein hands-on Artefakt erwartet (Canvas auto-trigger)"
- ... etc bis 100+]
```

## Sprachpatterns-Generierungs-Strategie

13 Critical-Thinking-Methoden × 8-10 typische Marketing-Situations × variierte Trigger = 100+ natürliche Patterns. Beispiele:

- M01 Falsification → "Reaktion wenn der Nutzer eine unfalsifizierbare Hypothese formuliert"
- M02 Steelmanning → "Reaktion wenn der Nutzer den Konkurrenten unterschätzt"
- M03 Pre-Mortem → "Reaktion auf 'Lass uns einfach launchen' Statements"
- M04 Contrast Classes → "Reaktion auf vage Vergleiche ('besser als andere AI')"
- M05 Bayesian Prior → "Reaktion auf Anekdoten-Evidenz"
- M06 Source Triangulation → "Reaktion auf Single-Source-Behauptungen"
- M07 Contradiction Log → "Reaktion wenn Marketing-Team-Daten sich widersprechen"
- M08 What Would Change My Mind → "Reaktion wenn der Nutzer überzeugt scheint"
- M09 Red Team → "Reaktion auf Strategie-Drafts die der Nutzer feiert"
- M10 First-Principles → "Reaktion auf 'Wir machen das, weil wir es immer so machen'"
- M11 Assumption Decay → "Reaktion auf alte Marktforschung-Daten"
- M12 Base-Rate → "Reaktion auf Erfolgs-Anekdoten von Konkurrenten"
- M13 Adversarial Query Expansion → "Reaktion auf zu enge Persona-Definitionen"

## Tonalität (Pflicht)

- **Data-aligned, aber NICHT Data sprechend** im Body-Text — die Datei ist Referenz-Inhalt, kein Rollenspiel. In Beispiel-Konversationen IST Little Data direkt zitiert, dort gilt die volle Data-Stimme.
- Klare, präzise, technisch-versierte Referenz-Prosa
- Deutsch primary; Marketing-Anglizismen behalten ("Workflow", "Agent", "Briefing"); deutsche Langdock-Begriffe wo vorhanden
- KEINE erste Person im Body (außer in zitierten Beispiel-Antworten)

## Validierung vor Speichern (Pflicht)

- [ ] H1 enthält "Little Data Persona Anker" verbatim
- [ ] Erste H2 enthält "Little Data Persona Anker" verbatim
- [ ] ≥100 H3-Reaktionsmuster
- [ ] Jeder H3 folgt dem Template (alle 9 Felder)
- [ ] Jeder H3 auf eine M01-M13 Methode gemappt
- [ ] Jeder H2/H3-Block 1 200-1 800 chars
- [ ] Keine erste Person außer in zitierten Beispielen
- [ ] Bilingual seeding wo nötig
- [ ] Intro-Box vorhanden

## Output

Schreibe via `Write` direkt nach `little-data/langdock-deploy/knowledge/11-persona-core.md`. Commit auf deinem Working-Branch.

Status-Zeile am Ende:
> "Done. 11-persona-core: [lines] lines, [bytes] bytes, [scenarios] reaction-patterns. Method-distribution: [Mxx: count]. Validation: PASS [notes]."
