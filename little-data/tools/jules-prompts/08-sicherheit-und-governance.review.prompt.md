# Jules Panel-Review Session: `08-sicherheit-und-governance`

Du bist eine Jules-**Review**-Session. Deine Aufgabe ist NICHT die Knowledge-Datei zu ändern. Du **liest** sie und produzierst einen strukturierten Review-Bericht.

## Repo + Branch

- Repo: `netzkontrast/soul.md`
- Branch: `claude/friendly-ride-eRsPr`

## Input — Pflicht zu lesen

1. **Knowledge-Datei unter Review** — `little-data/langdock-deploy/knowledge/08-sicherheit-und-governance.md` (auf Branch `claude/friendly-ride-eRsPr`). Lies das gesamte Dokument vor Beginn.
2. **Original-Dispatch-Prompt** (der Auftrag, mit dem diese Datei geschrieben wurde) — `little-data/tools/jules-prompts/08-sicherheit-und-governance.prompt.md`. Dieser Prompt definiert die Erwartungen.
3. **Authoring-Spec** — `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` (12 Commandments + §6.2 Scenario-Template + §4 Tonalität).
4. **Agent-Design** — `docs/superpowers/specs/2026-05-31-little-data-agent-design.md` §3 (F8-F12, N9-N12) + §4.3 (file taxonomy).
5. **Coverage-Matrix** — `little-data/data/coverage-matrix.md` für anchor-Strings und H2-Liste.
6. **Critical-Thinking-Katalog** — `little-data/data/extracts/T8-metaprompts-critical-thinking.md` (M01-M13).
7. **Persona-Core (für Tonalitäts-Check)** — `little-data/langdock-deploy/knowledge/11-persona-core.md`.

## Aufgabe — `/sc:sc-spec-panel` pro Szenario

Für **jedes** `### S-SG-NNN` Szenario in der Datei führe einen simulierten **Business-Expert-Panel** durch. Das Panel besteht aus neun Experten (Quelle: `sc:sc-business-panel-experts`):

1. **Clayton Christensen** — Disruptions-Theorie, Jobs-to-be-Done
2. **Michael Porter** — Wettbewerbsstrategie, Five Forces, Value-Chain
3. **Peter Drucker** — Management, Effektivität, Customer-Definition
4. **Seth Godin** — Permission Marketing, Tribes, "Purple Cow"
5. **Kim & Mauborgne** — Blue Ocean, Strategy Canvas, ERRC-Grid
6. **Jim Collins** — Hedgehog Concept, Level-5-Leadership, Flywheel
7. **Nassim Taleb** — Anti-Fragility, Black Swan, Risk Asymmetry
8. **Donella Meadows** — Systems Thinking, Leverage Points
9. **Jean-luc Doumont** — Communication, Signal-Noise-Ratio, "Trees"

Für jedes Szenario:

1. **Wähle 3 der 9 Experten**, die am meisten zu DIESEM spezifischen Szenario beitragen können.
2. Lass jeden 1-2 Sätze Kritik / Beobachtung liefern — präzise, nicht generisch.
3. Zusätzlich: applye **eine** Critical-Thinking-Methode aus M01-M13 als Test-Linse — welche Methode würde dieses Szenario AM STÄRKSTEN herausfordern?
4. **Verdict:** KEEP / IMPROVE / DROP
5. **Rationale** in 1 Zeile.
6. Wenn IMPROVE: **Konkrete Improvement-Notes** (was genau ändern: Trigger schärfen / Vorgehen konkretisieren / Fallstricke distinkt machen / Beispiel-Prompt PTCF-vollständig machen).
7. **Cross-Refs:** Welche anderen Knowledge-Files referenziert oder ergänzt dieses Szenario? (z.B. "Querverweis zu 03-wissensordner-und-rag: Wissensordner-Setup für diese Workflow-Datenbasis").

## Output — eine einzige Datei

Schreibe nach `little-data/data/reviews/08-sicherheit-und-governance.review.md` in folgendem Format:

```markdown
# Review: 08-sicherheit-und-governance

> Reviewed by Jules-Panel-Review-Session `<session-id>` on YYYY-MM-DD.
> Panel: Christensen, Porter, Drucker, Godin, Kim & Mauborgne, Collins, Taleb, Meadows, Doumont (3 picked per scenario).
> Critical-Thinking Methods M01-M13 as test lens.

## Summary

- Scenarios reviewed: NNN
- Verdicts: **KEEP** NN | **IMPROVE** NN | **DROP** NN
- Top-5 Quality-Patterns (Stärken):
  1. …
  2. …
- Top-5 Improvement-Patterns (Gemeinsame Schwächen):
  1. …
  2. …
- File-Level Cross-References — Vorschläge für Stage-2:
  - Verbindung zu `<other-file>` an Szenarien: S-XX-NN, S-XX-NN, …
  - …

## Per-Scenario Review

### S-SG-001 <original scenario title>

**Panel:**
- **<Expert-1>:** <1-2 lines, scenario-specific>
- **<Expert-2>:** <1-2 lines, scenario-specific>
- **<Expert-3>:** <1-2 lines, scenario-specific>

**Critical-Thinking Test:** M0X — <wie würde diese Methode dieses Szenario testen?>
- Befund: <bestanden / nicht-bestanden + warum>

**Verdict:** KEEP / IMPROVE / DROP
**Rationale:** <1 line>
**Improvement-Notes:** <konkrete edits — leer wenn KEEP>
**Cross-Refs:** <files/scenarios this connects to — leer wenn keine>

### S-SG-002 …

(repeat for every S-SG-NNN scenario in the file)

## Reviewer-Notes (file-level)

- Tonalitäts-Drift gegenüber `11-persona-core`: <ja/nein + Belege>
- Anchor-Strings (siehe Coverage-Matrix Sektion 0): <vorhanden + position>
- F8/F9-Format-Compliance: <Stichprobe von 5 Szenarien — werden die 8 Pflicht-Felder eingehalten?>
- Per-Document-Cap-Risiko (zu viele duplikate Trigger): <ja/nein + Beispiel-IDs>

## Empfehlungen für Stage-2 Improvement-Session

1. <was muss die Stage-2-Session zwingend tun>
2. <welche Cross-Refs sind höchster Priorität>
3. <welche Advanced Scenarios (A-NN aus `50-advanced-scenarios-julia-lens.md`) gehören in diese Datei>
```

## Tonalität & Diskurs-Discipline

- **Panel-Stimmen sind charakteristisch.** Christensen sagt nicht "Drucker-Dinge"; Drucker nicht "Porter-Dinge". Jeder Experte zitiert das eigene Framework.
- **Konkret, nicht generisch.** "Christensen würde fragen: 'Welches Job-to-be-Done bedient dieses Szenario, das die Marketing-Direktorin sonst nirgends erfüllen kann?'" — nicht "Christensen sagt es ist gut".
- **DE-primary, Englisch nur in Eigennamen** (Jobs-to-be-Done, Blue Ocean, Five Forces).
- **Kein "Faszinierend." Drift** — du bist Reviewer, nicht Little Data.
- **Verdict-Reservierung:** DROP nur bei klar widersprüchlichen, dupliziert-trivialen oder regulatorisch-falschen Szenarien.
- **Improvement-Notes spezifisch:** "Trigger zu generisch → ersetze 'X optimieren' durch konkreten Auslöser wie 'Q3-Review-Anforderung mit DSGVO-Risiko'." Nicht "verbessere Trigger".

## Performance-Hinweis

100+ Szenarien × 3 Experten × 1-2 Zeilen + Test-Lens + Verdict-Block = ~250-400 Zeichen pro Szenario × 100 = **30-50 KB Review-Datei**. Plan deine Schreibgeschwindigkeit entsprechend. Schreibe die Datei **in Blöcken von 10-20 Szenarien** und committe häufig, damit nichts verlorengeht.

## Output-Schritte

1. `git pull origin claude/friendly-ride-eRsPr` zum Start.
2. Datei lesen, Plan abstimmen, Panel-Reviews schreiben.
3. `git add little-data/data/reviews/08-sicherheit-und-governance.review.md`
4. `git commit -m "review: panel-review für 08-sicherheit-und-governance (Jules <session-id>)"`
5. `git push origin claude/friendly-ride-eRsPr`

## Status-Zeile am Ende

> "Done. Panel-Review für 08-sicherheit-und-governance: [count] Szenarien reviewed. Verdicts: KEEP NN / IMPROVE NN / DROP NN. Datei: little-data/data/reviews/08-sicherheit-und-governance.review.md ([bytes] bytes). Cross-Ref-Vorschläge: [count] zu [list of files]."

## Was du NICHT tun darfst

- NIEMALS die Quell-Knowledge-Datei verändern.
- NIEMALS Szenarien als "DROP" markieren ohne 2-Satz-Begründung.
- NIEMALS Experten-Stimmen ohne charakteristisches Framework-Vokabular zitieren ("Christensen: Disruption-Job"; nicht "Christensen: gutes Szenario").
- NIEMALS Critical-Thinking-Method als visibles Feld im Knowledge-File-Schema vorschlagen — sie ist intern (siehe Authoring-Spec §6.2).
- KEINE Emoji, kein Englisch-Drift im Output.
