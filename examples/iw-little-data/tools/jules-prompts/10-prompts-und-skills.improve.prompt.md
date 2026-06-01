# Jules Cross-Ref + Advanced Improvement Session: `10-prompts-und-skills`

Du bist eine Jules-**Improvement**-Session (Stage 2). Du **erhältst alle work-done bereits geleistet** und **konsolidierst** sie zur finalen Version dieser Knowledge-Datei.

## Repo + Branch

- Repo: `netzkontrast/soul.md`
- Branch: `claude/friendly-ride-eRsPr`

## Input — Pflicht zu lesen (in dieser Reihenfolge)

1. **Knowledge-Datei (aktueller Stand)** — `little-data/langdock-deploy/knowledge/10-prompts-und-skills.md` (auf Branch `claude/friendly-ride-eRsPr`). Das ist deine Basis. **Erhalte vorhandene Trigger und Strategische Ziele.**
2. **Panel-Review** — `little-data/data/reviews/10-prompts-und-skills.review.md`. Diese Datei enthält pro Szenario das Panel-Urteil (KEEP / IMPROVE / DROP), Improvement-Notes, und Cross-Ref-Vorschläge. **Du MUSST jede IMPROVE-Note umsetzen.**
3. **50 Advanced Scenarios (Julia-Lens)** — `little-data/data/research/50-advanced-scenarios-julia-lens.md`. Identifiziere die Rows in der "Integration-Plan"-Sektion, die `10-prompts-und-skills` als Target-File nennen. **Diese Rows musst du als neue Szenarien anfügen (Numerisierung weiterführen ab S-PS-105).**
4. **Coverage-Matrix** — `little-data/data/coverage-matrix.md`. Für Anchor-Strings und H2-Konsistenz mit anderen Dateien.
5. **Andere Knowledge-Files (alle)** — Lies die H2/H3-Überschriften der anderen 13 Knowledge-Dateien im Verzeichnis `little-data/langdock-deploy/knowledge/` für **Cross-Reference-Möglichkeiten**.
6. **Authoring-Spec** — `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` (Schema unverändert, §6.2).

## Aufgabe (Drei-Phasen-Pflicht)

### Phase A — IMPROVE-Notes umsetzen

Für jedes Szenario, das im Review als **IMPROVE** markiert ist:

1. Lies die `Improvement-Notes` aus der Review-Datei.
2. Setze die Notes exakt um (Trigger schärfen / Vorgehen konkretisieren / Fallstricke distinkt machen / Beispiel-Prompt komplettieren / 8-Felder-Schema vervollständigen).
3. Behalte die **Szenario-ID** unverändert (S-PS-001 bleibt S-PS-001).
4. Behalte die **Reihenfolge** unverändert.

Für jedes Szenario, das **DROP** markiert ist:

1. Entferne das Szenario.
2. Renumeriere folgende Szenarien NICHT — lasse die Lücke (S-PS-001, S-PS-003, …). Notiere am Datei-Ende eine `## Dropped Scenarios` Sektion mit den entfernten IDs + Begründung.

Für jedes Szenario, das **KEEP** markiert ist: nicht anfassen.

### Phase B — Cross-References einbauen

Für jedes IMPROVE/KEEP-Szenario, das eine Cross-Ref-Notiz im Review hat:

1. Füge in dem **Eingesetzte Langdock-Fähigkeit(en):** oder **Anschluss-Szenario:** Feld einen Verweis auf das verwandte File/Szenario hinzu — Format: `Siehe auch: <file-name> § <H2-or-S-ID>`.
2. Beispiel: `Anschluss-Szenario: S-PS-005 oder siehe auch 03-wissensordner-und-rag § "Wissensordner-Setup für CRM-Daten"`.
3. Maximum **3 Cross-Refs pro Szenario** — mehr verwässert die Retrieval-Priorität.

### Phase C — Advanced Scenarios anfügen

Aus `50-advanced-scenarios-julia-lens.md`:

1. Identifiziere die Rows, die `10-prompts-und-skills` als Target-File nennen.
2. Für jede solche Row, schreibe ein vollständiges H3-Szenario mit der nächsten freien ID (z.B. S-PS-105 für die erste Advanced).
3. Setze die `M0X lens` aus dem Brainstorm als interne Konstruktion (NICHT als visibles Feld).
4. Schreibe das Szenario per `Sketch der Antwort` ausführlich aus — full PTCF Beispiel-Prompt, konkrete Vorgehens-Schritte, distinkte Fallstricke.
5. **Jedes Advanced Scenario ist 1 200-1 800 Zeichen** (ein Langdock-Chunk).

## Output — eine konsolidierte Datei

Schreibe nach `little-data/langdock-deploy/knowledge/10-prompts-und-skills.md` (überschreibt die existierende Version mit der verbesserten).

Struktur:

```markdown
# <H1 unverändert>

> <Intro-Box unverändert>

## <H2-Sektionen unverändert>

…

## Marketing-Szenarien aus dieser Domäne

### S-PS-001 …
(IMPROVE-Notes umgesetzt; Cross-Refs ergänzt)

### S-PS-002 …
(KEEP — unverändert)

### S-PS-003 …
(DROP — entfernt; siehe ## Dropped Scenarios am Ende)

…

### S-PS-105 <Advanced-Scenario aus Julia-Lens A-NN>
(neu — Advanced)

…

## Dropped Scenarios (Stage 2)

- S-PS-NNN: Begründung (1 Satz)
- …

## Cross-Reference Map (Stage 2)

| Diese Datei (S-ID) | Verbunden mit | Notiz |
|---|---|---|
| S-PS-005 | 03-wissensordner-und-rag § "Wissensordner-Setup" | gemeinsame CRM-Daten-Ingest-Logic |
| S-PS-014 | 07-modelle-und-kosten § "Heavy-Hitter Detection" | Token-Budget-Trigger |
| … | … | … |
```

## Validierung vor Commit

1. `bash little-data/tools/check_schema.sh little-data/langdock-deploy/knowledge/10-prompts-und-skills.md` — muss PASS sein.
2. Anchor-Strings müssen unverändert vorhanden sein (für 11/12/13 — siehe Coverage-Matrix Sektion 0).
3. Mindestens 100 H3-Szenarien (Dropped + Kept + Advanced ≥ 100).
4. Keine `**Critical-Thinking-Method:**` Felder im Output (intern bleibt intern).
5. Keine `> [Reviewer:` oder `<!-- TODO` Marker — alles muss productionsfertig sein.

## Commit + Push

```bash
git add little-data/langdock-deploy/knowledge/10-prompts-und-skills.md
git commit -m "improve: cross-refs + advanced scenarios in 10-prompts-und-skills (Jules <session-id>)"
git push origin claude/friendly-ride-eRsPr
```

## Status-Zeile am Ende

> "Done. 10-prompts-und-skills improved: [original count] Szenarien → [final count] (KEEP NN, IMPROVE NN, DROP NN, ADVANCED NN). check_schema.sh PASS. Cross-Refs: NN. Commit [SHA] pushed."

## Was du NICHT tun darfst

- NIEMALS Szenarien-IDs ändern oder umnumerieren (Lücken sind erlaubt durch DROP).
- NIEMALS Trigger oder Strategische Ziele "verbessern", wenn die Review sie als KEEP markiert hat.
- NIEMALS mehr als 3 Cross-Refs pro Szenario.
- NIEMALS Advanced Scenarios, deren `Target file` nicht 10-prompts-und-skills ist, in diese Datei aufnehmen.
- NIEMALS das `**Critical-Thinking-Method:**` Feld einführen — es ist und bleibt invisible Konstruktion.
- KEINE Emoji, kein Englisch-Drift, kein Phase-2/Phase-3 Framing.
