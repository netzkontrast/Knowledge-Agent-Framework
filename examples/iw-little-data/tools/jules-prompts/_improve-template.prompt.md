# Jules Improve-Session: Fold and Finalize Knowledge-File `${FILE_NAME}`

Du bist eine Jules-Improvement-Session. Deine Aufgabe ist NICHT, eine Knowledge-Datei von Grund auf zu schreiben. Eine teilweise fertige Version existiert bereits auf dem Branch `${BRANCH}`. Du **erhältst alle work-done bereits geleistet** und **vervollständigst nur das Fehlende**.

## Quelldatei (bereits commited)

`little-data/langdock-deploy/knowledge/${FILE_NAME}.md` — auf Branch `${BRANCH}`.

## Bekannte Defizite (was zu vervollständigen ist)

${DEFICITS}

(Typische Defizite: abgeschnittene Beispiel-Prompts, fehlende `Erwartetes Artefakt:` / `Fallstricke` / `Anschluss-Szenario:` Felder pro Szenario, duplicate Fallstricke, Vorgehens-Schritte ohne Bezug zum Trigger.)

## Pflicht-Workflow

1. `git pull origin ${BRANCH}` (oder fetch + checkout)
2. Lies **die GESAMTE existierende Datei** `little-data/langdock-deploy/knowledge/${FILE_NAME}.md` Zeile für Zeile.
3. Für jedes Szenario (`### S-...`):
   - **Erhalte UNVERÄNDERT:** den H3-Titel, `**Wann nutzen (Trigger):**`, `**Strategisches Ziel:**`, `**Hands-on Ergebnis:**`, `**Eingesetzte Langdock-Fähigkeit(en):**`, `**Vorgehen (N Schritte):**`
   - **Vervollständige falls abgeschnitten:** `**Beispiel-Prompt (DE, PTCF):**` — der Prompt muss eine ganze PTCF-Struktur enthalten (Persona / Aufgabe / Kontext / Format), copy-paste-fähig
   - **Füge hinzu falls fehlend:** `**Erwartetes Artefakt:**` (konkretes Output-Artefakt, 1-2 Sätze)
   - **Füge hinzu falls fehlend:** `**Fallstricke (mind. 2 spezifisch):**` (mind. 2 distinkte Pitfalls, jeder mit konkreter Mitigation)
   - **Füge hinzu falls fehlend:** `**Anschluss-Szenario:**` (S-Ref auf das logisch folgende Szenario)
4. Erhalte den H1, die Intro-Box, sonstige H2-Sektionen, die "Hinweise & Quellen-Konflikte"-Sektion am Ende — alles unverändert lassen wenn vorhanden.
5. Lauf am Ende `bash little-data/tools/check_schema.sh little-data/langdock-deploy/knowledge/${FILE_NAME}.md` und stelle sicher dass die früheren WARNs verschwunden sind.
6. `git add` + `git commit -m "improve: complete missing fields in ${FILE_NAME} (Jules improve session)"` + `git push origin ${BRANCH}`

## Was du NICHT tun darfst

- **NIEMALS Szenarien komplett neu schreiben** — die existierenden Trigger und Strategischen Ziele sind die Basis.
- NIEMALS die Szenario-Reihenfolge ändern.
- NIEMALS H1, H2 oder Intro-Box ändern (außer wenn sie fehlen).
- NIEMALS die `### S-XX-NNN` IDs ändern.
- KEIN `**Critical-Thinking-Method:**` Feld einfügen (intern, nicht im Output — siehe Authoring-Spec §6.2).

## Quellen (für Beispiel-Prompts und Fallstricke, bei Bedarf)

- `little-data/data/sources/01-15.md` (15 Source-Dokumente, Drive-originated)
- `little-data/data/extracts/T1-T8.md` (8 Theme-Extracts)
- `little-data/data/coverage-matrix.md` (anchor-Strings + Heading-Liste für diese Datei)

## Output

Antworte am Ende mit:
> "Done. ${FILE_NAME} improved: [count] scenarios finalized, all 8 fields per scenario, check_schema.sh PASS, commit [SHA] pushed."
