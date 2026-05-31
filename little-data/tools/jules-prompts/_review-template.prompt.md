# Jules Review-Session: Validate Knowledge-File `${FILE_NAME}`

Du bist eine Jules-Review-Session. Deine Aufgabe ist NICHT, eine Knowledge-Datei zu schreiben, sondern eine bereits geschriebene Datei zu validieren. Wenn du Probleme findest, melde sie strukturiert zurück — du fixt NICHT selbst, sondern produzierst einen Review-Report.

## Datei unter Review

`little-data/langdock-deploy/knowledge/${FILE_NAME}.md` (auf Branch `${BRANCH}`)

## Authoritative Specs (Pflicht zu kennen)

1. `docs/superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` (die 12 Commandments + §6.2 Scenario-Template + §4 Tonalität)
2. `docs/superpowers/specs/2026-05-31-little-data-agent-design.md` §4.3 (taxonomy row für diese Datei)
3. `little-data/data/coverage-matrix.md` (Anchor-Strings, H2-Liste)
4. `little-data/data/extracts/T8-metaprompts-critical-thinking.md` (die 13 M01-M13 Methoden)

## Review-Checklist (Pflicht)

Führe ALLE folgenden Checks aus. Berichte für jeden: PASS / FAIL / WARN + konkrete Beobachtung.

### A. Struktur-Checks (deterministisch — via grep)

A1. Genau 1 H1 (`^# `).
A2. Intro-Box vorhanden mit den zwei Zeilen `^> \*\*Was diese Datei abdeckt:` und `^> \*\*Was diese Datei NICHT abdeckt:`.
A3. Genau 1 H2 mit dem Text `## Marketing-Szenarien aus dieser Domäne`.
A4. Mindestens 100 H3-Scenarios mit Prefix `### S-`.
A5. Jedes Scenario-H3 hat alle 9 Pflicht-Felder:
   - `**Critical-Thinking-Method:**`
   - `**Wann nutzen (Trigger):**`
   - `**Strategisches Ziel:**`
   - `**Hands-on Ergebnis:**`
   - `**Eingesetzte Langdock-Fähigkeit(en):**`
   - `**Vorgehen (3-5 Schritte):**`
   - `**Beispiel-Prompt`
   - `**Erwartetes Artefakt:**`
   - `**Fallstricke`
A6. Alle `**Critical-Thinking-Method:**` Werte sind aus `M01..M13`.
A7. Anchor-Strings (falls für diese Datei verlangt — siehe Coverage-Matrix): exakt 1x vorhanden in den ersten 200 Zeichen des relevanten Chunks.
A8. Keine YAML-Front-Matter (kein `^---` am Anfang).
A9. Keine HTML-Tags im Body (außer Markdown-konformen Blockquotes).
A10. Datei-Encoding ist UTF-8.

### B. Inhalt-Checks (sample-basiert — pick N=5 zufällige Scenarios)

Wähle 5 Scenarios per Zufallsprinzip aus der Marketing-Szenarien Sektion. Für jedes:

B1. Trigger-Sentenz ist konkret und marketingnah (nicht generisch wie "wenn du Marketing machst").
B2. Strategisches Ziel UND hands-on Ergebnis sind beide vorhanden und unterscheidbar.
B3. Eingesetzte Langdock-Fähigkeit ist aus der erlaubten Whitelist (Knowledge / Web Search / Data Analyst / Canvas / Image Generation / Konversations-Starter / PTCF-Prompt). Keine Workflows / API / Custom Integrations.
B4. Beispiel-Prompt ist vollständig (PTCF-Struktur) und copy-paste-fähig.
B5. Mindestens 2 spezifische Fallstricke (keine generischen "AI kann halluzinieren" Sätze).
B6. Methode-Anwendung ist korrekt (z.B. M03 Pre-Mortem nutzt prospektive Rückschau, nicht Plain-Brainstorming).
B7. Chunk-Größe: das Scenario ist 1 200-1 800 chars (nicht spürbar darüber oder darunter).

### C. Tonalität-Checks (sample-basiert — random sample 3 H2-Blöcke + 3 H3-Scenarios)

C1. KEINE erste Person ("ich", "mein", "meine Datenbank", "ich finde").
C2. KEIN "Faszinierend", "Aufschlussreich" oder andere Data-Catchphrases im Body.
C3. KEIN Service-Log-Frame ("ENDE DER INITIALISIERUNG", "PROTOKOLL" etc.).
C4. KEINE Star-Trek-Referenzen im Body.
C5. Deutsch-primary; Anglizismen nur für etablierte Langdock-Loanwords; offizielle deutsche Langdock-Begriffe wo vorhanden.
C6. Bilingual seeding wo nötig (`Markenstimme (Brand Voice)` Pattern bei Erstnennung).

### D. Per-Document-Cap-Checks

D1. Top-3 Triggernoun-Pairs prüfen: liste die ersten 200 Zeichen jedes der ersten 10 Scenarios. Sind 2 oder mehr Scenarios so ähnlich formuliert, dass eine Query plausibel zwischen ihnen wählen müsste? Falls ja: FLAG.

### E. Quellen-Konsistenz

E1. Wenn die Datei einen "Hinweise & Quellen-Konflikte" Abschnitt hat: dokumentiere die genannten Konflikte und ob sie tatsächlich Konflikte sind (cross-check ein einzelner Konflikt gegen die Source).

## Review-Output

Schreibe deinen Report direkt nach `little-data/data/reviews/${FILE_NAME}.review.md`. Strukturiere:

```markdown
# Review: ${FILE_NAME}

**Review-Datum:** ${DATE}
**Reviewer:** Jules-Review-Session ${SESSION_ID}

## Zusammenfassung

OVERALL: PASS / FAIL / NEEDS-CHANGES

Stats: [N_lines] lines, [N_bytes] bytes, [N_scenarios] scenarios, methods [Mxx_dist].

## Struktur-Checks (Sektion A)

| Check | Result | Notiz |
|---|---|---|
| A1 Eine H1 | PASS/FAIL | ... |
| A2 Intro-Box vorhanden | ... | |
| ... bis A10 | ... | |

## Inhalt-Checks (Sektion B)

Gewählte 5 Sample-Scenarios:
- S-XXX-NNN: PASS/FAIL [notes per check B1-B7]
- ...

## Tonalität-Checks (Sektion C)

Gewählte Samples + Findings.

## Per-Document-Cap (Sektion D)

Liste der gefundenen Konflikte (falls vorhanden).

## Quellen-Konsistenz (Sektion E)

Befund.

## Empfehlungen

[Konkrete, actionable Anweisungen, die der Author-Session als Follow-up-Message zugeschickt werden können. Pro Empfehlung: was, warum, welche Lines/Sections.]

## Sektionen für Re-Authoring

Falls FAIL: liste die Section-Anker (z.B. `## Marketing-Szenarien aus dieser Domäne -> ### S-XXX-NNN bis -NNN`), die neu geschrieben werden müssen. Author-Session kann diese Liste direkt verarbeiten.
```

Commit den Report. Sende mir am Ende die Status-Zeile:
> "Review done. ${FILE_NAME}: OVERALL [PASS/FAIL/NEEDS-CHANGES]. Hard fails: [count]. Recommended re-authoring sections: [count]."
