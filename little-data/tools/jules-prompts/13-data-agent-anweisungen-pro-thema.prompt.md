# Jules Work-Unit: little-data Knowledge-File `13-data-agent-anweisungen-pro-thema`

Du bist eine Jules-Session mit Schreibzugriff auf das Repo `netzkontrast/soul.md` auf Branch `claude/friendly-ride-eRsPr`. Diese Aufgabe ist self-contained — folge ihr genau.

## Aufgabe

Schreibe die Knowledge-Datei `little-data/langdock-deploy/knowledge/13-data-agent-anweisungen-pro-thema.md` für den Langdock-Wissensordner des "Little Data" Beratungsagenten. Zielgruppe: eine strategisch arbeitende, hands-on-orientierte Marketing-Direktorin (DACH).

## Lesen (Pflicht)

Lies VOR dem Schreiben jede dieser Quellen einmal vollständig. Bei Konflikten zwischen Extracts und Source-Files gewinnen die Sources.

### Authoritative Specs

1. `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` — **die 12 Commandments, das Scenario-Template §6.2, die Audience §6.1, die Tonalitäts-Discipline §4. Pflicht zu folgen.**
2. `docs/superpowers/specs/2026-05-31-little-data-agent-design.md` — §4.3 (file taxonomy), §9.2 (file template), §3.1 (F8-F12), §3.2 (N9-N12).
3. `little-data/data/coverage-matrix.md` — die Rows für deine Datei `13-data-agent-anweisungen-pro-thema`.

### Soul-Doc (Persona-Referenz — bereits in Phase 0.5 fertiggestellt)

4. `little-data/langdock-deploy/knowledge/11-persona-core.md` — Little Data Identität, Stimme, Anti-Patterns, Vokabular, Spannungen. Wenn du nicht weißt wie Data über ein Thema kommuniziert: hier nachschauen. ABER: du schreibst NICHT als Data, sondern WAS Data vorbereiten würde (siehe Authoring-Spec §4).
5. `little-data/langdock-deploy/knowledge/12-persona-julia-modus.md` — Julia-Lenz-Modus. Nicht relevant für deine fachliche Datei, aber gut zu kennen.

### Critical-Thinking-Katalog (für Szenarien-Generierung)

6. `little-data/data/extracts/T8-metaprompts-critical-thinking.md` — die 13 M01-M13 Methoden. **JEDES deiner 100+ Szenarien muss auf einer dieser Methoden aufbauen.** Methoden:
   - M01 Falsification
   - M02 Steelmanning
   - M03 Pre-Mortem
   - M04 Contrast Classes
   - M05 Bayesian Prior
   - M06 Source Triangulation
   - M07 Contradiction Log
   - M08 What Would Change My Mind
   - M09 Red Team
   - M10 First-Principles
   - M11 Assumption Decay
   - M12 Base-Rate
   - M13 Adversarial Query Expansion

### Themen-spezifische Extracts (deine Domäne)

- little-data/data/extracts/T4-persona-architektur.md
- little-data/data/extracts/T5-data-canon.md
- little-data/data/extracts/T7-soul-md-framework.md
- little-data/data/extracts/T8-metaprompts-critical-thinking.md


### Research-Source-Files (Ground Truth — bei Konflikt gewinnen diese über Extracts)

- little-data/data/research/06-data-canon-relationships-voice.md
- little-data/data/research/11-data-persona-profile.md
- little-data/data/research/07-soul-md-framework-for-agent-prompt-design.md
- alle finalen Files 00-10 (für Konsistenz-Check während des Schreibens)


## Datei-Spezifikation

| Feld | Wert |
|---|---|
| **Dateipfad** | `little-data/langdock-deploy/knowledge/13-data-agent-anweisungen-pro-thema.md` |
| **H1** | `Data-Agent-Anweisungen pro Thema (Kommunikations-Patterns)` |
| **Pflicht-H2-Sub-Topics** (in dieser Reihenfolge) | - Data-Anweisung Übersicht (für Routing-Queries)
- Data-Anweisung Chat und Prompts
- Data-Anweisung Agenten-Konfiguration
- Data-Anweisung Wissensordner und RAG
- Data-Anweisung Workflows
- Data-Anweisung Integrationen und MCP
- Data-Anweisung API und Deployment
- Data-Anweisung Modelle und Kosten
- Data-Anweisung Sicherheit und Governance
- Data-Anweisung Marketing-Praxis
 |
| **Anchor-Strings** (verbatim in den ersten Chunks der jeweiligen Sektionen) | "Data-Anweisung Übersicht", "Data-Anweisung Chat", "Data-Anweisung Agenten", "Data-Anweisung Wissensordner", "Data-Anweisung Workflows", "Data-Anweisung Integrationen", "Data-Anweisung API", "Data-Anweisung Modelle", "Data-Anweisung Sicherheit", "Data-Anweisung Marketing" — jeweils verbatim in den ersten Sätzen der entsprechenden H2 |
| **Marketing-Funktionen-Fokus** | alle Funktionen (per-Thema-Kommunikations-Guides) |
| **Mindest-Anzahl Szenarien** | **100** unter H2 "Marketing-Szenarien aus dieser Domäne" |

## Datei-Struktur

```markdown
# Data-Agent-Anweisungen pro Thema (Kommunikations-Patterns)

> **Was diese Datei abdeckt:**
> - [Sub-topic noun 1 — concrete, retrievable]
> - [Sub-topic noun 2 — concrete, retrievable]
> - [Sub-topic noun 3 — concrete, retrievable]
>
> **Was diese Datei NICHT abdeckt:**
> - [Adjacent topic A → siehe `dateiname-ohne-md`]
> - [Adjacent topic B → siehe `dateiname-ohne-md`]

[Die mandatory H2-Blöcke der "Pflicht-H2-Sub-Topics" hier, jeder 1 200-1 800 chars]

## Marketing-Szenarien aus dieser Domäne

[Hier mindestens 100 H3-Szenarien, jedes nach §6.2 Template]

### S-DA-001 [Szenario-Titel auf Deutsch]

**Critical-Thinking-Method:** [M01-M13]
**Wann nutzen (Trigger):** [Eine Situation, in der die Marketing-Direktorin steckt]
**Strategisches Ziel:** [Was sie strategisch erreichen will]
**Hands-on Ergebnis:** [Was konkret produziert wird]
**Eingesetzte Langdock-Fähigkeit(en):** [aus Agent-Design-Spec §4.4 Whitelist]
**Vorgehen (3-5 Schritte):**
1. [Schritt 1 — konkret]
2. [Schritt 2]
3. [Schritt 3]
**Beispiel-Prompt (DE, PTCF):**
> "[Vollständiger, copy-paste-fähiger Prompt mit Persona-Task-Context-Format]"
**Erwartetes Artefakt:** [Konkret, mit Format-Spec]
**Fallstricke (mind. 2 spezifisch):**
- [Konkreter Fallstrick, z.B. "AI tendiert zu Anglizismen → Anti-Anglizismus-Klausel im Prompt"]
- [Zweiter Fallstrick]
**Anschluss-Szenario:** [optional: das nächste S-XXX, das passend wäre]

[... weitere 99+ Szenarien ...]

## Hinweise & Quellen-Konflikte

[Optional: dokumentiere Konflikte zwischen Extracts und Sources, die du beim Schreiben gefunden hast]
```

## Szenarien-Generierungs-Strategie (Pflicht)

Verteile die 100+ Szenarien systematisch über die 13 Critical-Thinking-Methoden × die für deine Datei relevanten Marketing-Funktionen:

- 13 Methoden × 8 Funktionen = 104+ natürliche Szenarien
- Jede Methoden-Funktion-Kombination produziert ein distinct Szenario (z.B. "Pre-Mortem für Q4-Performance-Kampagne", "Steelman gegen Verzicht auf SEO", "Falsifizier deine Buyer-Persona")
- Keine zwei Szenarien sollen plausibel für dieselbe Query retrieven — unique Trigger-Noun + unique Method + unique Goal
- Beispiel-Prompts in den Szenarien nutzen Du als Default-Anrede für die Marketing-Direktorin
- Erkennbar Strategic-AND-Hands-on: jedes Szenario hat sowohl ein strategisches Ziel ALS AUCH ein konkretes hands-on-Artefakt

## Tonalität (Pflicht)

- **Data-aligned, aber NICHT Data sprechend** (Authoring-Spec §4)
- Klare, präzise, technisch-versierte Referenz-Prosa
- Adaptiv: Intro-Satz Beginner-Level + technischer Kern + plain-language-summary
- **NIEMALS** erste Person, NIEMALS "Faszinierend", NIEMALS Service-Log-Frame
- Deutsch primary; Marketing-Anglizismen ("Workflow", "Agent", "Briefing", "Persona") behalten; offizielle deutsche Langdock-Begriffe ("Wissensordner", "Konversations-Starter") nutzen
- Bilingual Seeding wo nötig: "Markenstimme (Brand Voice)"

## Validierung vor Speichern (Pflicht)

- [ ] ≥100 H3-Szenarien unter "Marketing-Szenarien aus dieser Domäne"
- [ ] Jedes Szenario folgt §6.2 Template (alle Felder ausgefüllt)
- [ ] Jedes Szenario auf eine M01-M13 Methode gemappt
- [ ] Jeder H2/H3-Block 1 200-1 800 chars
- [ ] Keine zwei Szenarien retrieven plausibel für dieselbe Query
- [ ] Kein "siehe Abschnitt X" Cross-Ref
- [ ] Keine Pronoun-Bound-References ("dies", "es", "darüber") ohne explizites Noun
- [ ] Bilingual seeding wo Loanword + DE-Begriff existieren
- [ ] Intro-Box vorhanden
- [ ] Anchor-Strings verbatim wo erforderlich
- [ ] Tonalität: keine erste Person, kein "Faszinierend" im Body, kein Service-Log-Frame

## Output

Schreibe die Datei via `Write` direkt nach `little-data/langdock-deploy/knowledge/13-data-agent-anweisungen-pro-thema.md`. Erstelle danach einen sauberen Commit auf deinem Working-Branch mit dem Format `little-data: author 13-data-agent-anweisungen-pro-thema via Jules`.

PR-Beschreibung (kurz):
- Inhalt: H1 + Sub-Topics + N Szenarien
- Methode-Verteilung: Tabelle "Method → Count" (z.B. M01: 8, M02: 7, ...)
- Quellen-Konflikte (falls vorhanden, sonst "keine")
- Validierungs-Checkliste: alle Boxen müssen ✅ sein

## Erwartete Antwort an mich

Wenn du fertig bist, sende eine kurze Status-Nachricht:
> "Done. 13-data-agent-anweisungen-pro-thema: [N_lines] lines, [N_bytes] bytes, [N_scenarios] scenarios. Method-distribution: [Mxx: count, ...]. Validation: PASS [optional notes]."

Kein Erklären, kein Zusammenfassen, kein Markdown-Diff in der Antwort. Nur die Status-Zeile.
