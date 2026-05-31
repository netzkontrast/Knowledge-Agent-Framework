# Chat und Prompts für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Chat-Oberfläche und Tastatur-Shortcuts
> - PTCF-Framework für gute Prompts
> - Few-Shot Prompting praktisch eingesetzt
> - Skills in Langdock
> - Memory in Chat vs Agents
> - Custom Instructions vs Memory
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration im Detail → siehe `02-agenten-konfiguration`
> - Wissensordner-Strukturen → siehe `03-wissensordner-und-rag`

## Chat-Oberfläche und Tastatur-Shortcuts (Cmd-K, Chat-Branching, PWA)

Die Langdock-Chat-Oberfläche ist das zentrale Werkzeug für schnelle Interaktionen. Für eine effiziente Nutzung sind die Tastatur-Shortcuts essenziell. Mit Cmd-K (oder Ctrl-K auf Windows) öffnet sich das Omni-Search-Menü, über das sich Chats durchsuchen, neue Chats starten oder bestimmte Workflows direkt ansteuern lassen. Diese Abkürzung beschleunigt den Zugriff erheblich, besonders wenn zwischen vielen Aufgaben gewechselt wird.

Chat-Branching ist ein weiteres mächtiges Feature. Wenn ein Konversationsstrang in eine Sackgasse führt oder eine alternative Route evaluiert werden soll, kann der Chat an einer bestimmten Nachricht verzweigt werden. Die ursprüngliche Konversation bleibt erhalten, während eine neue Abzweigung für Experimente zur Verfügung steht. Diese Verzweigung ist besonders nützlich beim Verfeinern von Prompts, bei denen der initiale Ansatz nach einer Richtungsänderung verlangt.

Zusätzlich bietet Langdock eine PWA (Progressive Web App). Diese ermöglicht es, die Plattform wie eine native Applikation auf dem Desktop oder mobilen Gerät zu installieren. Diese lokale Installation sorgt für einen noch schnelleren Zugriff und eine fokussierte Arbeitsumgebung, frei von Browser-Tabs. Die Kombination aus Shortcuts, Branching und PWA bildet das Fundament für produktive KI-Sitzungen und verkürzt die Time-to-Value der einzelnen Handgriffe massiv.

## PTCF-Framework für gute Prompts (Persona-Task-Context-Format)

Das PTCF-Framework ist die Grundlage für konsistent hochwertige KI-Ergebnisse. Es steht für Persona, Task, Context und Format. Jeder gute Prompt sollte diese vier Elemente enthalten, um dem Modell die nötige Führung zu geben. Die Persona definiert die Rolle, die die KI einnehmen soll, beispielsweise "Senior Brand Manager". Diese Rollen-Vorgabe beeinflusst die Tonalität und den Detaillierungsgrad der Antwort maßgeblich.

Der Task beschreibt die eigentliche Aufgabe klar und handlungsorientiert. Anstatt "Schreibe über SEO" sollte es heißen "Erstelle eine Liste von 10 Long-Tail-Keywords für unsere neue Software-as-a-Service-Lösung". Der Context liefert die notwendigen Hintergrundinformationen, wie Zielgruppe, bisherige Maßnahmen oder spezifische Einschränkungen. Je präziser der Kontext, desto relevanter das Ergebnis.

Das Format gibt schließlich die Struktur der Ausgabe vor. Soll es eine Tabelle, eine Liste, ein strukturiertes Markdown-Dokument oder ein reiner Fließtext sein? Durch die klare Definition des Formats entfällt nachträgliche Formatierungsarbeit. Das PTCF-Framework verwandelt vage Anfragen in präzise Briefings (Briefings), die zu sofort nutzbaren Resultaten führen und den Workflow der Direktion optimieren.

## Few-Shot Prompting praktisch eingesetzt

Few-Shot Prompting ist eine Technik, bei der dem Modell Beispiele (Shots) mitgegeben werden, um die gewünschte Ausgabe zu demonstrieren. Diese Technik ist besonders wirkungsvoll, wenn spezifische Tonalitäten (Brand Voice) oder komplexe Datenstrukturen gefordert sind. Anstatt nur die Regeln zu erklären, zeigt man der KI in Vorleistung, wie das Ergebnis exakt aussehen soll.

Im praktischen Einsatz bedeutet dies, dass einem Prompt zwei bis drei Beispiele für Input und den dazugehörigen idealen Output vorangestellt werden. Wenn beispielsweise LinkedIn-Posts in einem bestimmten Stil verfasst werden sollen, liefert man ein Muster: "Input: [Thema X]. Output: [Beispielpost im exakten Hausstil]". Dieses Muster kalibriert das Modell auf die genauen, nuancierten Anforderungen der Marke.

Diese Methode reduziert Halluzinationen und erhöht die Konsistenz der Ausgaben drastisch. Es ist eine der effektivsten Methoden, um sicherzustellen, dass die KI nicht nur inhaltlich korrekt arbeitet, sondern auch den exakten stilistischen und strukturellen Vorgaben der Markenstimme entspricht. Der Aufwand für das Erstellen der handverlesenen Beispiele zahlt sich durch sofort verwendbare Artefakte aus.

## Skills (System-Skills, Workspace-Skills, Custom Skills)

Skills erweitern die Fähigkeiten des Langdock-Chats über reine Textgenerierung hinaus. System-Skills sind vordefinierte Fähigkeiten, die allen Nutzern direkt aus der Box zur Verfügung stehen, wie beispielsweise die native Websuche oder rudimentäre Datenanalyse. Diese System-Skills sind sofort einsatzbereit, erfordern keine Konfiguration und dienen als schnelle Recherche-Helfer im Alltag.

Workspace-Skills werden auf Unternehmensebene definiert und stehen allen Mitgliedern eines Workspaces zur Verfügung. Solche Workspace-Skills können Anbindungen an interne Systeme, spezifische Datenbank-Queries oder unternehmensweite APIs sein. Sie ermöglichen es der KI, mit den tatsächlichen Daten des Unternehmens zu interagieren, was den Wert der Plattform vom isolierten Textgenerator zur echten Unternehmensassistenz transformiert.

Custom Skills bieten die höchste Flexibilität. Sie erlauben es, individuelle Integrationen für spezifische Workflows zu bauen. Durch die Definition von Custom Skills können Marketing-Teams die KI direkt mit ihren bevorzugten Tools wie CRM-Systemen oder Content-Management-Systemen verknüpfen, um komplexe Automatisierungen und Datentransfers direkt aus dem Chat heraus zu orchestrieren.

## Memory in Chat vs Agents (kritischer Unterschied)

Ein kritischer Aspekt bei der Nutzung von Langdock ist das Verständnis von Memory (Gedächtnis) im Standard-Chat im Vergleich zu Agenten. Im Standard-Chat verfügt der Nutzer über ein persönliches, sitzungsübergreifendes Memory mit bis zu 50 gespeicherten Präferenzen. Die KI greift auf diese Präferenzen automatisch in jedem neuen Chat zu — Tonalität, bevorzugte Modelle, wiederkehrender Kontext bleiben verfügbar, ohne dass die Marketing-Direktorin sie pro Session neu setzen muss. Memory ist damit das Mittel der Wahl, wenn persönliche, individualisierte Konversationskontinuität über viele eigenständige Aufgaben hinweg gewünscht ist.

Agenten hingegen haben Memory NICHT aktiviert — diese Eigenschaft ist plattformseitig deaktiviert, um die Bidirektionalität zwischen Workspace-geteilten Agenten und privaten Nutzer-Präferenzen zu vermeiden. Stattdessen tragen Agenten ihren persistenten Kontext über drei Kanäle: (a) System-Anweisungen im Agent-Prompt, (b) angehängte Wissensordner für strukturiertes Domänen-Wissen, und (c) Konversations-Starter für wiederkehrende Use-Cases. Für langfristige strategische Projekte, bei denen Kontext (z.B. Zielgruppen-Insights) über Monate hinweg konsistent abrufbar bleiben muss, ist ein dedizierter Wissensordner — verknüpft mit einem Agent — die korrekte Architektur.

Die Unterscheidung ist essenziell für das Architektur-Design von Arbeitsabläufen. Wenn nutzer-spezifische Präferenzen über Chats hinweg automatisch greifen sollen, ist das Standard-Chat-Memory richtig. Wenn organisations-weite Domänen-Logik (Brand Voice, Compliance-Regeln) in einem geteilten Asset abgebildet werden soll, ist ein Agent mit Wissensordner die korrekte Wahl. Die falsche Wahl führt entweder zu Konfusion (Memory-Drift im Agent erwartet, aber nicht vorhanden) oder zu überdimensioniertem Aufbau für persönliche Routine-Tasks.

## Custom Instructions vs Memory

Custom Instructions und Memory dienen unterschiedlichen Zwecken bei der Feinsteuerung und Personalisierung der KI-Erfahrung. Custom Instructions (benutzerdefinierte Anweisungen) sind statische Vorgaben, die bei absolut jedem Chat-Start als unsichtbarer Meta-Prompt greifen. Hier werden permanente Präferenzen hart codiert, wie beispielsweise die bevorzugte Sprache, die Rolle (z.B. "Antworte immer als nüchterner DACH-Marketer") oder Formatierungswünsche (z.B. "Keine Bulletpoints ohne konkreten Nutzen").

Memory hingegen ist hochgradig dynamisch. Es baut sich während der laufenden Interaktion organisch auf und speichert spezifische Fakten, getroffene Entscheidungen oder erarbeitete Zwischenergebnisse, die im Verlauf einer konkreten Konversation entstehen. Memory reagiert agil auf den Verlauf des Gesprächs, während Custom Instructions proaktiv die unabänderlichen Basis-Leitplanken für jedes Gespräch setzen.

Für eine exzellente Nutzung sollten beide Konzepte strategisch kombiniert werden. Custom Instructions sorgen für das verlässliche Basis-Setup und die Einhaltung ungeschriebener Team-Richtlinien, während das Memory den spezifischen, flüchtigen Kontext der aktuellen Aufgabe verwaltet. Das tiefe Verständnis dieses Zusammenspiels verhindert die frustrierende Notwendigkeit, der KI immer wieder dieselben grundlegenden Arbeitsweisen erklären zu müssen.

## Marketing-Szenarien aus dieser Domäne

Die folgenden zehn Szenarien decken die häufigsten Chat- und Prompting-Situationen einer Marketing-Direktorin ab. Modellnamen sind auf dem Stand Mai 2026; bei neuen Releases bleibt die jeweilige Logik gültig. Die zugrundeliegenden Critical-Thinking-Methoden sind unsichtbares Konstruktions-Gerüst und erscheinen nicht als Feld.

### S-CP-001 Wiederverwendbaren PTCF-Prompt für eine Routine-Aufgabe bauen

**Wann nutzen (Trigger):** Eine wiederkehrende Aufgabe — etwa der wöchentliche LinkedIn-Post — wird jedes Mal neu und uneinheitlich geprompted.
**Strategisches Ziel:** Einen stabilen, teamweit nutzbaren Prompt etablieren, der reproduzierbare Ergebnisse liefert.
**Hands-on Ergebnis:** Ein dokumentierter PTCF-Prompt zum Kopieren für das ganze Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Custom Instructions (für stabile Tonalität)
**Vorgehen (3-5 Schritte):**
1. Die vier PTCF-Slots explizit benennen: Persona, Aufgabe, Kontext, Format.
2. Den Kontext-Slot mit den wenigen ergebnisbestimmenden Angaben füllen (Zielsegment, gewünschte Handlung).
3. Den fertigen Prompt einmal testen und das Ergebnis gegen die Erwartung prüfen, bevor er geteilt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Du bist B2B-Social-Media-Redakteur für ein DACH-SaaS. Aufgabe: Schreibe einen LinkedIn-Post zu [Thema]. Kontext: Zielgruppe Marketing-Entscheider, Ziel ein Klick auf [Asset]. Format: Hook in den ersten 40 Zeichen, max. 1.200 Zeichen, ein klarer CTA."
**Erwartetes Artefakt:** Ein vier-teiliger PTCF-Prompt mit Platzhaltern, abgelegt für die Wiederverwendung.
**Fallstricke (≥2 spezifisch):**
- Der Format-Slot fehlt → das Modell erzeugt unstrukturierten Fließtext; die Zielstruktur immer explizit vorgeben.
- Projektdetails werden in Custom Instructions hinterlegt → dort gehören nur stabile Regeln, projektbezogenes in den Prompt oder Wissensordner.
**Anschluss-Szenario:** S-CP-002

### S-CP-002 Few-Shot-Prompting zur Fixierung von Format und Ton

**Wann nutzen (Trigger):** Das Modell trifft den gewünschten Ton oder das Format trotz Beschreibung nicht zuverlässig.
**Strategisches Ziel:** Tonalität und Struktur über konkrete Beispiele statt über Adjektive erzwingen.
**Hands-on Ergebnis:** Ein Prompt mit zwei bis drei eingebetteten Vorbild-Beispielen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Wissensordner (Auslagerung bei vielen Beispielen)
**Vorgehen (3-5 Schritte):**
1. Zwei bis drei vorbildliche Beispiele auswählen, die den Zielton exakt treffen.
2. Die Beispiele dem Prompt voranstellen und das Muster benennen ("schreibe im Stil dieser Beispiele").
3. Bei mehr als drei Beispielen die Sammlung in einen Wissensordner auslagern, statt den Prompt zu überladen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Markenredakteur. Aufgabe: Schreibe drei Betreffzeilen im Stil der folgenden Beispiele. Kontext: [drei Beispiel-Betreffzeilen]. Format: maximal 50 Zeichen, gleiche Tonalität wie die Beispiele."
**Erwartetes Artefakt:** Ein Few-Shot-Prompt mit eingebetteten Referenzbeispielen.
**Fallstricke (≥2 spezifisch):**
- Zu viele Inline-Beispiele blähen den Prompt auf → ab drei Beispielen in den Wissensordner auslagern.
- Widersprüchliche Beispiele verwirren das Modell → nur konsistente Vorbilder verwenden.
**Anschluss-Szenario:** S-CP-008

### S-CP-003 Persona-Setup über Custom Instructions statt pro Chat

**Wann nutzen (Trigger):** Die Direktorin erklärt der KI in jedem neuen Chat erneut ihre Rolle, Sprache und Formatwünsche.
**Strategisches Ziel:** Wiederkehrende Grund-Leitplanken einmalig hinterlegen und Memory vom statischen Setup trennen.
**Hands-on Ergebnis:** Ein konsolidierter Satz Custom Instructions plus klare Memory-Abgrenzung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Custom Instructions, Memory
**Vorgehen (3-5 Schritte):**
1. Die wirklich unveränderlichen Vorgaben sammeln (Sprache, Rolle, Formatpräferenzen).
2. Diese als Custom Instructions hinterlegen, die bei jedem Chat-Start greifen.
3. Dynamische, projektbezogene Fakten bewusst dem Memory bzw. dem jeweiligen Prompt überlassen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: nüchterner DACH-Marketer. Aufgabe: Lege meine Custom Instructions fest. Kontext: Antworte stets auf Deutsch, mit Fachbegriffen englisch in Klammern, ohne Floskeln. Format: kurze Bestätigung der gespeicherten Regeln."
**Erwartetes Artefakt:** Ein dokumentierter Custom-Instructions-Block mit getrennter Memory-Notiz.
**Fallstricke (≥2 spezifisch):**
- Projektdetails landen in Custom Instructions → sie gelten dann fälschlich für alle Chats; nur stabile Regeln hinterlegen.
- Erwartung, dass ein geteilter Agent dasselbe Memory nutzt → Agenten haben Memory deaktiviert; Kontext dort über Wissensordner.
**Anschluss-Szenario:** S-CP-001

### S-CP-004 Modell bewusst wählen statt blind Auto-Mode

**Wann nutzen (Trigger):** Für eine markenkritische Aufgabe ist unklar, ob der Auto-Mode oder ein fest gewähltes Modell genutzt werden soll.
**Strategisches Ziel:** Die Modellwahl an Aufgabe und Kostenrahmen ausrichten statt an Gewohnheit.
**Hands-on Ergebnis:** Eine begründete Modell-Empfehlung für den konkreten Task.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Modell-Auswahl, Auto-Mode)
**Vorgehen (3-5 Schritte):**
1. Die Aufgabe als Routine- oder als Anspruchsaufgabe einordnen.
2. Für Routine ein günstiges Modell (z. B. Gemini 3.5 Flash) wählen, für markenkritische Texte ein stärkeres (z. B. Sonnet 4.6 oder Opus 4.8).
3. Den Auto-Mode nur für unkritische Einzelanfragen nutzen und ab hohem Volumen ein Modell fest pinnen, um Kostenvarianz zu kontrollieren.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: KI-Kosten-Berater. Aufgabe: Empfiehl mir ein Modell für [Task]. Kontext: Stand Mai 2026, Aufgabe ist markenkritisch / Routine. Format: eine Empfehlung mit kurzer Begründung und Kosten-Hinweis."
**Erwartetes Artefakt:** Eine Modell-Empfehlung mit Begründung (Detailtiefe siehe 07-modelle-und-kosten).
**Fallstricke (≥2 spezifisch):**
- Ein Premium-Modell wird für triviale Massen-Tasks genutzt → unnötige Kosten; Routine auf ein günstiges Modell legen.
- Auto-Mode bei hohem Volumen erzeugt unkontrollierte Kostenvarianz → Modell fest wählen und Budget beobachten.
**Anschluss-Szenario:** S-CP-006

### S-CP-005 Deep Research für eine asynchrone Wettbewerbsanalyse

**Wann nutzen (Trigger):** Eine fundierte, mehrquellige Markt- oder Wettbewerbsrecherche ist nötig, die mehr Tiefe braucht als eine schnelle Chat-Antwort.
**Strategisches Ziel:** Eine strukturierte, belegte Recherche erhalten, ohne manuell Dutzende Quellen zu sichten.
**Hands-on Ergebnis:** Ein strukturierter Research-Report mit benannten Quellen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Deep Research Modus, asynchron)
**Vorgehen (3-5 Schritte):**
1. Den Rechercheauftrag präzise eingrenzen (Wettbewerber, Zeitraum, Leitfragen).
2. Den Deep-Research-Modus starten und die asynchrone Laufzeit einplanen.
3. Den Report auf belegte Aussagen prüfen und unbelegte Punkte als ungeprüft markieren.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Markt-Analyst. Aufgabe: Recherchiere die Positionierung von [drei Wettbewerbern]. Kontext: DACH-Markt, letzte zwölf Monate, Fokus auf Botschaft und Kanäle. Format: Tabelle je Wettbewerber plus Quellenliste mit URLs."
**Erwartetes Artefakt:** Ein Deep-Research-Report mit Vergleichstabelle und Quellenangaben.
**Fallstricke (≥2 spezifisch):**
- Deep Research verliert sich in Eigen-PR der Wettbewerber → nach Wirkungs-Indikatoren statt Selbstdarstellung fragen.
- Aussagen ohne Quelle werden als Fakt gelesen → nur URL-belegte Punkte als gesichert behandeln.
**Anschluss-Szenario:** S-CP-010

### S-CP-006 Veraltete Prompting-Hacks aus Team-Templates entfernen

**Wann nutzen (Trigger):** Die Team-Templates enthalten alte "Voodoo-Hacks" wie "Take a deep breath" oder übertriebenes "Think step-by-step" bei trivialen Aufgaben.
**Strategisches Ziel:** Veraltete Prompt-Mythen identifizieren, die bei aktuellen Modellen nichts mehr bringen oder schaden (Assumption Decay).
**Hands-on Ergebnis:** Eine bereinigte Template-Sammlung ohne wirkungslose Hacks.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Wissensordner (Template-Ablage)
**Vorgehen (3-5 Schritte):**
1. Die meistgenutzten Team-Prompts zusammentragen.
2. Prüfen lassen, welche Taktiken bei der aktuellen Modell-Generation (z. B. Sonnet 4.6, GPT-5.2) obsolet oder kontraproduktiv sind.
3. Eine rote Liste der zu entfernenden Hacks mit kurzer Begründung erstellen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: LLM-Forscher. Aufgabe: Prüfe unsere alten Prompts (anbei) auf veraltete Hacks. Kontext: Wir nutzen noch 'Take a deep breath' und übertriebenes 'Think step-by-step'. Welche dieser Taktiken sind für aktuelle Modelle nutzlos oder schädlich? Format: rote Liste mit technischer Begründung."
**Erwartetes Artefakt:** Eine Liste veralteter Prompting-Mythen zum Entfernen aus den Templates.
**Fallstricke (≥2 spezifisch):**
- Pauschales Streichen aller Strukturhilfen → "Think step-by-step" bleibt bei echter mehrstufiger Logik sinnvoll; nur den trivialen Einsatz entfernen.
- Modellnamen werden hart kodiert → die Logik version-neutral formulieren, damit sie neue Releases überdauert.
**Anschluss-Szenario:** S-CP-004

### S-CP-007 CO-STAR für hochsensible C-Level-Kommunikation

**Wann nutzen (Trigger):** Eine strategische oder Krisen-Botschaft an die Geschäftsführung erfordert mehr Steuerung, als PTCF bietet.
**Strategisches Ziel:** Alle Wirkungs-Parameter einer sensiblen Botschaft vorab festlegen.
**Hands-on Ergebnis:** Ein nach CO-STAR strukturierter Entwurf für die Führungskommunikation.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Canvas (für die Ausarbeitung)
**Vorgehen (3-5 Schritte):**
1. Den Anlass und das harte, messbare Ziel der Botschaft definieren (Context, Objective).
2. Stil, Ton und Zielpublikum scharf festlegen (Style, Tone, Audience).
3. Die exakte Ausgabestruktur vorgeben (Response) und im Canvas verfeinern.
**Beispiel-Prompt (DE, PTCF):**
> "Context: Q3 verfehlt, Vorstand verunsichert. Objective: Vertrauen zurückgewinnen mit einem klaren Plan. Style: nüchternes Memo. Tone: sachlich-zuversichtlich. Audience: Geschäftsführung. Response: ein Absatz Lage, drei Maßnahmen, ein Ausblick."
**Erwartetes Artefakt:** Ein CO-STAR-Entwurf für die Führungskommunikation.
**Fallstricke (≥2 spezifisch):**
- Ton und Publikum bleiben vage → die Botschaft wirkt unpassend; beide Slots konkret füllen.
- CO-STAR wird für Alltags-Tasks genutzt → der Overhead lohnt nur bei Leuchtturm-Kommunikation, sonst PTCF.
**Anschluss-Szenario:** S-CP-001

### S-CP-008 Format-Konversion per Inline-Skill (Prose zu Tabelle)

**Wann nutzen (Trigger):** Ein langer Fließtext aus einem Meeting soll schnell in eine strukturierte, sortierbare Übersicht überführt werden.
**Strategisches Ziel:** Unstrukturierte Information ohne manuelle Nacharbeit in ein nutzbares Format bringen.
**Hands-on Ergebnis:** Eine strukturierte Tabelle aus dem Quelltext.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Inline-Skill), Data Analyst (bei CSV↔JSON)
**Vorgehen (3-5 Schritte):**
1. Den Quelltext einfügen und die Zielspalten benennen.
2. Den Inline-Skill die Kernpunkte extrahieren und in die Tabellenstruktur überführen lassen.
3. Für tabellarische Datendateien (CSV/JSON) auf den Data Analyst wechseln, nicht den Wissensordner.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Strukturierungs-Assistent. Aufgabe: Überführe den folgenden Meeting-Text in eine Tabelle. Kontext: [Text]. Format: Spalten Thema, Entscheidung, Verantwortlich, Frist."
**Erwartetes Artefakt:** Eine dreidimensionale Markdown-Tabelle mit den extrahierten Punkten.
**Fallstricke (≥2 spezifisch):**
- CSV-Dateien werden in den Wissensordner geladen → tabellarische Dateien gehören in den Data Analyst, nicht in den Wissensordner.
- Die Spalten sind nicht definiert → das Modell rät die Struktur; Zielspalten immer vorgeben.
**Anschluss-Szenario:** S-CP-002

### S-CP-009 Chat-Branching zum Vergleich zweier strategischer Richtungen

**Wann nutzen (Trigger):** Zwei mögliche Kampagnen-Richtungen sollen aus demselben Ausgangspunkt heraus durchgespielt und verglichen werden.
**Strategisches Ziel:** Beide Optionen unter gleichen Bedingungen entwickeln, ohne den Kontext zu vermischen.
**Hands-on Ergebnis:** Zwei parallel ausgearbeitete Optionen aus einem gemeinsamen Briefing.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Chat-Branching)
**Vorgehen (3-5 Schritte):**
1. Das gemeinsame Briefing als Ausgangspunkt im Chat festhalten.
2. Den Verlauf verzweigen und in jedem Ast genau eine Richtung konsequent ausarbeiten.
3. Beide Äste anhand derselben Kriterien gegenüberstellen.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Kampagnen-Stratege. Aufgabe: Entwickle aus diesem Briefing die Richtung 'emotionale Marke'. Kontext: [gemeinsames Briefing]. Format: Kernbotschaft, drei Maßnahmen, ein Risiko — für den späteren Vergleich mit der zweiten Richtung."
**Erwartetes Artefakt:** Zwei vergleichbare Strategie-Skizzen aus einem Branch-Punkt.
**Fallstricke (≥2 spezifisch):**
- Beide Richtungen werden im selben Verlauf vermischt → konsequent verzweigen, sonst kontaminiert der Kontext den Vergleich.
- Unterschiedliche Bewertungskriterien je Ast → für beide dieselben Kriterien festlegen.
**Anschluss-Szenario:** S-CP-007

### S-CP-010 Quellen-gestützter Fakten-Check im Chat

**Wann nutzen (Trigger):** Eine Zahl oder Behauptung soll vor der externen Verwendung verifiziert werden, um eine Halluzination zu vermeiden.
**Strategisches Ziel:** Aussagen belegen statt ihnen zu vertrauen — mit klarer Markierung des Ungeprüften.
**Hands-on Ergebnis:** Eine verifizierte Aussage mit Quelle oder eine explizite Ungeprüft-Kennzeichnung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Web Search), Wissensordner (interne Belege)
**Vorgehen (3-5 Schritte):**
1. Die zu prüfende Aussage isolieren.
2. Web Search oder den passenden Wissensordner zur Belegsuche nutzen.
3. Die Aussage als belegt (mit Quelle) oder als ungeprüft kennzeichnen — niemals eine unbelegte Zahl als Fakt ausgeben.
**Beispiel-Prompt (DE, PTCF):**
> "Persona: Faktenprüfer. Aufgabe: Verifiziere die folgende Behauptung. Kontext: [Aussage], Verwendung in einer Pressemitteilung. Format: Urteil (belegt/ungeprüft), Quelle mit URL, ein Satz Begründung."
**Erwartetes Artefakt:** Eine Fakten-Check-Notiz mit Quelle oder Ungeprüft-Markierung.
**Fallstricke (≥2 spezifisch):**
- Das Modell erfindet eine plausible Quelle → nur über Web Search oder Wissensordner verifizierte Belege akzeptieren.
- RAG wird als Garantie gegen Fehler missverstanden → Retrieval reduziert Halluzinationen, eliminiert sie nicht; kritische Zahlen menschlich gegenprüfen.
**Anschluss-Szenario:** S-CP-011

### S-CP-011 Blog-Post-Entwurf iterativ im Chat verfeinern

**Wann nutzen (Trigger):** Ein erster Blog-Post-Entwurf ist vorhanden, aber Ton, Struktur und Argumentation müssen in mehreren Runden angepasst werden — ohne den Kontext von vorne aufzurollen. (Quelle: sources/10 S-003)
**Strategisches Ziel:** Den Chat-Verlauf als iteratives Redaktionswerkzeug einsetzen, das den Kontext zwischen Runden behält.
**Hands-on Ergebnis:** Ein durchgearbeiteter Blog-Post-Entwurf nach 3–4 gezielten Verfeinerungsrunden im selben Chat.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Konversationsverlauf, File-Attachment), Canvas (für finale Ausarbeitung)
**Vorgehen (4 Schritte):**
1. Den Rohtext oder das Interview-Transkript als Dateianhang in den Chat laden und einen ersten strukturierten Entwurf anfragen.
2. Den Entwurf gezielt in einer zweiten Nachricht beanstanden: Ton, Länge oder einen konkreten Abschnitt benennen.
3. Weitere Runden mit präzisen Ein-Punkt-Instruktionen durchführen ("Kürze Absatz 3 auf zwei Sätze") statt globaler Neufassung.
4. Den finalen Stand in den Canvas übertragen und mit dem Split-Screen-Editor letzten Schliff geben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Senior-B2B-Texter. Schreibe einen 1.200-Wörter-Blogpost auf Basis des angehängten Interview-Transkripts. Zielgruppe sind DACH-Marketing-Entscheider; Tonalität nüchtern-fachlich. Format: Intro (150 W.), drei H2-Abschnitte, Fazit mit einem CTA."
**Erwartetes Artefakt:** Ein fertig redigierter Blog-Post-Entwurf im Canvas, bereit für das interne Review.
**Fallstricke (≥2 spezifisch):**
- Zu viele Änderungswünsche in einer Nachricht → das Modell priorisiert falsch; eine Anweisung pro Runde ergibt sauberere Ergebnisse.
- Das Transkript enthält vage Aussagen wie "wir sparen enorm Zeit" → das Modell erfindet Zahlen; fehlende Belege explizit als Platzhalter markieren lassen.
**Anschluss-Szenario:** S-CP-012

### S-CP-012 E-Mail-Sequenz für eine Produktneuheit im Chat entwickeln

**Wann nutzen (Trigger):** Ein Produktlaunch steht an und die Marketing-Direktorin benötigt eine dreistufige Nurture-E-Mail-Sequenz (Awareness, Consideration, Conversion) — von der Ideation bis zum finalen Text in einer einzigen Chat-Session. (Quelle: sources/10 S-058, S-063)
**Strategisches Ziel:** Eine kohärente, tonkonsistente Multi-Touch-E-Mail-Kampagne in einem durchgehenden Konversationsfaden entwickeln und dokumentieren.
**Hands-on Ergebnis:** Drei fertige E-Mail-Texte mit Betreffzeile, Preheader und Body für die Übergabe ans CRM-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Konversationsverlauf, Memory für Brand-Voice), Canvas
**Vorgehen (4 Schritte):**
1. Die strategische Basis in einer Nachricht festlegen: Produktnutzen, Zielsegment, gewünschte Handlung je E-Mail.
2. E-Mail 1 (Awareness) anfordern und sofort auf Ton und Länge prüfen.
3. E-Mail 2 und 3 im selben Chat anschließen und dabei explizit auf die Vorgänger-Mails referenzieren ("Baue auf der ersten E-Mail auf").
4. Alle drei Entwürfe in einer Abschluss-Nachricht konsolidieren lassen: Tabelle mit Betreff, Preheader und Body.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist E-Mail-Copywriterin für B2B-SaaS. Schreibe E-Mail 1 einer dreiteiligen Nurture-Sequenz für den Launch von [Produkt]. Zielgruppe: Marketing-Ops-Manager, die noch kein Angebot angefordert haben. Tonalität: professionell-empathisch. Format: Betreffzeile (max. 50 Zeichen), Preheader (max. 90 Zeichen), Body max. 150 Wörter, ein CTA-Button-Text."
**Erwartetes Artefakt:** Drei E-Mail-Entwürfe als konsolidierte Tabelle, importfertig für HubSpot oder Klaviyo.
**Fallstricke (≥2 spezifisch):**
- E-Mail 3 klingt wie E-Mail 1, weil der Kontext verloren geht → explizit auf Eskalation ("mehr Dringlichkeit als E-Mail 2") hinweisen.
- Betreffzeilen landen im Spam durch Trigger-Wörter → das Modell auf häufige Spam-Filter-Begriffe prüfen lassen.
**Anschluss-Szenario:** S-CP-013

### S-CP-013 Social-Media-Texte aus einem Blog-Post ableiten

**Wann nutzen (Trigger):** Ein veröffentlichter Blog-Post soll auf LinkedIn und in einem Newsletter-Snippet zweitverwertet werden, ohne manuelles Umschreiben. (Quelle: sources/10 S-004, S-014)
**Strategisches Ziel:** Maximale Inhaltsausbeute aus einem Asset durch gezielte Format-Konversion im Chat.
**Hands-on Ergebnis:** Ein LinkedIn-Post (Hook + Body + CTA) und ein Newsletter-Teaser (zwei Sätze + Link-Text) aus einem einzigen Quelltext.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment oder URL-Paste), Web Search (bei URL)
**Vorgehen (3 Schritte):**
1. Den Blog-Post als Text einfügen oder die URL nennen und das Modell den Inhalt zusammenfassen lassen.
2. LinkedIn-Post anfragen: Hook (erste 40 Zeichen), Body, CTA — in einer expliziten Format-Vorgabe.
3. Im selben Chat den Newsletter-Teaser anfordern und auf denselben Inhalt referenzieren ("Nutze dieselbe Kernaussage wie oben").
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Social-Media-Redakteur für ein DACH-B2B-Unternehmen. Extrahiere aus dem folgenden Blogpost den stärksten Insight und schreibe einen LinkedIn-Post. Zielgruppe: Marketing-Entscheider. Format: Hook (max. 40 Zeichen), drei kurze Absätze, ein CTA mit Link-Platzhalter. Max. 1.200 Zeichen gesamt."
**Erwartetes Artefakt:** Ein fertiger LinkedIn-Post und ein zweisätziger Newsletter-Teaser.
**Fallstricke (≥2 spezifisch):**
- Alle fünf Posts beginnen mit demselben Satzaufbau → explizit verschiedene Hook-Typen (Frage, Zahl, These) vorgeben.
- Der Newsletter-Teaser wiederholt den LinkedIn-Text wörtlich → auf "andere Formulierung, gleicher Kern" hinweisen.
**Anschluss-Szenario:** S-CP-014

### S-CP-014 Betreffzeilen-Varianten mit psychologischen Triggern testen

**Wann nutzen (Trigger):** Eine Kampagnen-E-Mail ist textet, aber es fehlen fünf testbare Betreffzeilen-Varianten mit unterschiedlichen psychologischen Triggern für einen A/B-Test. (Quelle: sources/10 S-058, Quelle: 12 Q18)
**Strategisches Ziel:** Open-Rate-Potenzial durch strukturierte Trigger-Variation maximieren, ohne auf generische Formeln zurückzugreifen.
**Hands-on Ergebnis:** Fünf Betreffzeilen mit Preheader, je einem benannten Trigger und einer kurzen Begründung — in einer Tabelle.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Prompt Library (bei Wiederverwendung)
**Vorgehen (3 Schritte):**
1. Den E-Mail-Body als Kontext einfügen und das Modell explizit nach fünf Triggern fragen: Neugier, Dringlichkeit, Nutzen, FOMO, persönliche Ansprache.
2. Das Modell eine Tabelle (Trigger | Betreffzeile | Preheader | Begründung) ausgeben lassen.
3. Die zwei schwächsten Varianten im selben Chat durch "Schärfere Version von Zeile X" ersetzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist E-Mail-Copywriter. Generiere 5 Betreffzeilen zum folgenden E-Mail-Text. Nutze die Trigger: Neugier, Dringlichkeit, direkter Nutzen, FOMO und persönliche Ansprache. Keine Ausrufezeichen, keine Spam-Wörter. Format: Tabelle mit Spalten Trigger, Betreffzeile (max. 50 Zeichen), Preheader (max. 90 Zeichen), Begründung."
**Erwartetes Artefakt:** Eine Tabelle mit fünf testbaren Betreffzeilen-Varianten, direkt in das E-Mail-Tool übertragbar.
**Fallstricke (≥2 spezifisch):**
- Das Modell überschreitet das Zeichenlimit um 2–3 Zeichen → eine Zeichenprüfung in der Tabellenspalte oder ein nachgelagerter manueller Check ist Pflicht.
- Dringlichkeits-Trigger werden als Spam klassifiziert → Wörter wie "Jetzt!" oder "Nur heute!" explizit in der Anweisung sperren.
**Anschluss-Szenario:** S-CP-015

### S-CP-015 Prompt-Bibliothek für Routine-Tasks im Team anlegen

**Wann nutzen (Trigger):** Das Marketing-Team erfindet dieselben Prompts für Standardaufgaben (Pressemitteilung, LinkedIn-Post, Briefing) wöchentlich neu, was Zeit kostet und zu Qualitätsschwankungen führt. (Quelle: 12 Q35, sources/10 S-001)
**Strategisches Ziel:** Eine wiederverwendbare Team-Prompt-Bibliothek aufbauen, die Qualität stabilisiert und Einarbeitungszeit für neue Mitarbeitende senkt.
**Hands-on Ergebnis:** Mindestens fünf abgelegte, teamweit nutzbare Prompts mit Platzhalter-Variablen in der Langdock Prompt Library.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Prompt Library, Variable-System mit {{Platzhaltern}})
**Vorgehen (4 Schritte):**
1. Die fünf meistgenutzten Aufgaben im Team identifizieren und je einen Muster-Prompt im Chat testen.
2. Veränderliche Bestandteile durch Platzhalter ersetzen (z. B. `{{Thema}}`, `{{Zielgruppe}}`, `{{Kanal}}`).
3. Den finalisierten Prompt in der Prompt Library unter dem richtigen Team-Ordner ablegen.
4. Die Bibliothek im Team-Kickoff vorstellen und Feedback-Runde in 30 Tagen einplanen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist B2B-Presseredakteur für den DACH-Markt. Schreibe eine Pressemitteilung zu {{Thema}}. Zielgruppe: {{Zielmedien}}. Hintergrund: {{Kontext}}. Format: Headline, Subline, Lead-Absatz (5 Sätze), Zitat CEO, Boilerplate-Platzhalter. Tonalität: sachlich, keine Superlative."
**Erwartetes Artefakt:** Ein Satz von ≥5 abgelegten Prompts mit Variablen in der Team-Prompt Library, direkt per Klick aufrufbar.
**Fallstricke (≥2 spezifisch):**
- Platzhalter werden im Prompt-Text vergessen → der Nutzer sendet den Roh-Template ohne Ausfüllen ab; Pflichtfelder im Form-Modus nutzen oder Checkliste voranstellen.
- Die Bibliothek wächst unkontrolliert → Namenskonvention und Verantwortlichen pro Prompt von Anfang an definieren.
**Anschluss-Szenario:** S-CP-016

### S-CP-016 Chat-Verlauf als Wissensquelle für eine Retrospektive nutzen

**Wann nutzen (Trigger):** Eine Kampagne ist abgeschlossen und die Direktorin möchte aus mehreren vergangenen Chat-Verläufen schnell Learnings und Muster extrahieren, ohne alles neu zu lesen. (Quelle: A-10, sources/10 S-031)
**Strategisches Ziel:** Bestehende Chat-Historien als Informationsquelle nutzen, um Kampagnen-Retrospektiven und Board-Reporting effizienter zu gestalten.
**Hands-on Ergebnis:** Eine strukturierte Zusammenfassung mit drei Learnings und einer Empfehlungsliste aus den vorliegenden Chat-Inhalten.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Omni-Search Cmd-K, File-Attachment für exportierte Chats), Deep Research (optional)
**Vorgehen (4 Schritte):**
1. Relevante Chat-Verläufe über Cmd-K suchen und die wichtigsten als Text exportieren oder kopieren.
2. Die Rohtexte in einem neuen Chat zusammenfassen lassen: "Was sind die drei wichtigsten Erkenntnisse aus diesen Verläufen?"
3. Das Modell eine WHAT-SO-WHAT-NOW-WHAT-Struktur erstellen lassen (Was war, warum relevant, was folgt daraus).
4. Den Output als Basis für ein Board-Update-Slide oder ein Retrospektions-Dokument in Canvas finalisieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marketing-Analytiker. Lies die folgenden Chat-Auszüge unserer letzten Kampagne [eingefügt]. Extrahiere drei zentrale Learnings, identifiziere das größte Risiko, das wir übersehen haben. Format: strukturiertes Memo mit drei Learnings, einem Risiko und zwei konkreten Empfehlungen für die nächste Kampagne."
**Erwartetes Artefakt:** Ein strukturiertes Retrospektions-Memo mit benannten Learnings und konkreten Handlungsempfehlungen.
**Fallstricke (≥2 spezifisch):**
- Zu viele Chat-Auszüge auf einmal überschreiten das Kontextfenster → maximal zwei bis drei Verläufe parallel einbringen und bei Bedarf sequentiell vorgehen.
- Das Modell spiegelt nur bereits genannte Meinungen wider → explizit nach "überraschenden oder kontraintuitiven Mustern" fragen.
**Anschluss-Szenario:** S-CP-017

### S-CP-017 Keyword-Cluster im Chat analysieren und priorisieren

**Wann nutzen (Trigger):** Das SEO-Team hat einen CSV-Export mit gruppierten Keywords geliefert und die Direktorin muss im Chat schnell entscheiden, welche Cluster für den nächsten Content-Sprint priorisiert werden. (Quelle: sources/10 S-016, S-024)
**Strategisches Ziel:** Keyword-Daten im Chat ohne Data-Analyst-Umweg interpretieren und strategisch gewichten, um den Sprint-Backlog zu füllen.
**Hands-on Ergebnis:** Eine priorisierte Cluster-Tabelle mit Begründung für die Top-3-Themen des nächsten Sprints.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment für kleine CSV), Data Analyst (bei >200 Zeilen)
**Vorgehen (3 Schritte):**
1. Die CSV-Datei anhängen oder eine vereinfachte Tabelle als Text einfügen (Cluster-Name, Volumen, Intent, Wettbewerb-Score).
2. Das Modell bitten, die Cluster nach einem Priorisierungs-Framework zu sortieren (z. B. hohes Volumen + niedrige Competition + Bottom-of-Funnel).
3. Eine kurze Begründung je Top-3-Cluster generieren lassen, die im Sprint-Planning direkt präsentiert werden kann.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist SEO-Strategin. Hier sind meine Keyword-Cluster [Tabelle eingefügt]. Priorisiere die drei Cluster für den nächsten 4-Wochen-Sprint. Kriterien: (1) Suchvolumen >500, (2) Search-Intent = Commercial oder Transactional, (3) Keyword-Difficulty <60. Format: Tabelle mit Rang, Cluster-Name, Kernargument in einem Satz."
**Erwartetes Artefakt:** Eine priorisierte Top-3-Cluster-Tabelle mit je einer Sprint-Begründung, sofort für Sprint-Planning nutzbar.
**Fallstricke (≥2 spezifisch):**
- CSV-Dateien mit mehr als 200 Zeilen gehören in den Data Analyst, nicht in den Standard-Chat — sonst wird der Kontext überflutet.
- Das Modell priorisiert nach Volumen allein → Priorisierungs-Kriterien immer explizit nennen, sonst dominiert Kopfvolumen ohne Funnel-Kontext.
**Anschluss-Szenario:** S-CP-018

### S-CP-018 Gesprächseinstieg für Wettbewerbs-Schnellrecherche im Chat

**Wann nutzen (Trigger):** Vor einem wichtigen Meeting in einer Stunde braucht die Direktorin eine schnelle, quellenbasierte Übersicht der Positionierung von zwei bis drei Wettbewerbern — ohne Deep Research zu starten. (Quelle: sources/10 S-021, Quelle: 12 Q17)
**Strategisches Ziel:** Öffentlich zugängliche Wettbewerber-Informationen in unter 15 Minuten in einem strukturierten Chat-Briefing verdichten.
**Hands-on Ergebnis:** Eine Kurzübersicht (maximal eine Seite) mit Kernbotschaft, Kanal-Mix und einer erkennbaren Schwäche je Wettbewerber.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Web Search aktiviert)
**Vorgehen (3 Schritte):**
1. Web Search aktivieren und das Modell gezielt nach den Websites, aktuellen Kampagnen-Claims und LinkedIn-Präsenz der Wettbewerber suchen lassen.
2. Die Ergebnisse in einer Vergleichstabelle strukturieren: Kernbotschaft, Kanal, sichtbare Schwäche.
3. Eine "Was würde ich anders machen?"-Frage anfügen, um direkt Differenzierungs-Ansätze zu generieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Wettbewerbs-Analytikerin. Recherchiere via Web Search die aktuelle Positionierung von [Wettbewerber A] und [Wettbewerber B] im DACH-Markt. Fokus: Hauptbotschaft auf der Website, aktive Kampagnen-Claims, LinkedIn-Frequenz. Format: Vergleichstabelle (Wettbewerber | Kernbotschaft | Kanal-Mix | erkennbare Schwäche) plus zwei Differenzierungs-Ansätze für uns."
**Erwartetes Artefakt:** Eine einseite Wettbewerbs-Übersicht für das Meeting, mit URL-Belegen aus der Web Search.
**Fallstricke (≥2 spezifisch):**
- Web Search zieht Eigen-PR statt unabhängige Quellen → nach Drittquellen (Fachmedien, LinkedIn-Posts) oder Nutzerrezensionen fragen.
- Aussagen ohne URL-Beleg werden als Fakt behandelt → nur URL-belegte Punkte im Meeting präsentieren; unbelegte Punkte kennzeichnen.
**Anschluss-Szenario:** S-CP-019

### S-CP-019 Dialekt-Grenzen im Chat testen — DACH-Regionalisierung

**Wann nutzen (Trigger):** Eine Lokalkampagne für Bayern oder die Deutschschweiz erfordert regional eingefärbte Texte; das Team ist unsicher, wie weit das Modell Dialekt oder regionalen Ton zuverlässig trifft. (Quelle: A-46)
**Strategisches Ziel:** Die tatsächliche Modell-Kompetenz für DACH-Regionalisierung durch gezielte Chat-Tests herausarbeiten und einen verlässlichen Workflow für lokale Kampagnen definieren.
**Hands-on Ergebnis:** Eine klare Entscheidung: welcher regionale Ton ist modell-sicher lieferbar, wo muss ein Muttersprachler nachbessern.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Few-Shot mit Beispieltexten), Chat-Branching
**Vorgehen (4 Schritte):**
1. Einen Testprompt in Standard-Hochdeutsch generieren lassen, dann im Branch die gleiche Aufgabe mit explizitem Dialekt-Auftrag wiederholen.
2. Beide Versionen einem Muttersprachler zeigen und Feedback dokumentieren.
3. Für Schwiizerdütsch auf CH-Hochdeutsch + manuelle Dialekt-Überarbeitung umschwenken; für Bayerisch: explizite Beispieltexte als Few-Shot voranstellen.
4. Den validierten Workflow als Hinweis-Note im Wissensordner festhalten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Lokalkampagnen-Texterin. Schreibe einen Instagram-Post für einen Münchner Einzelhändler in lockerem bayerischen Ton. Hier sind zwei Referenztexte im Zielton: [Beispiel 1], [Beispiel 2]. Zielgruppe: Münchner*innen 25–40. Format: max. 120 Zeichen Text + drei passende Hashtags."
**Erwartetes Artefakt:** Testversionen für mindestens zwei DACH-Regionen plus eine dokumentierte Entscheidung über Modell-Einsatz vs. manueller Überarbeitung.
**Fallstricke (≥2 spezifisch):**
- Schwiizerdütsch wird vom Modell unzuverlässig erzeugt und klingt künstlich → DE-CH-Hochdeutsch ist die sichere Basis; Dialekt-Passagen immer manuell finalisieren.
- Bayerische Texte ohne Referenzbeispiele wirken wie Klischee-Bayern aus TV-Werbung → mindestens zwei authentische Vorlagen als Few-Shot einreichen.
**Anschluss-Szenario:** S-CP-020

### S-CP-020 Langer Analyse-Text im Chat in ein Executive Summary überführen

**Wann nutzen (Trigger):** Ein 20-seitiger Marktforschungsbericht oder ein Agentur-Briefing liegt vor; die Direktorin braucht daraus in unter fünf Minuten eine Board-taugliche Executive Summary. (Quelle: sources/10 S-031, A-10)
**Strategisches Ziel:** Unstrukturierte Langform-Dokumente schnell in entscheidungsreife Zusammenfassungen für C-Level-Kommunikation komprimieren.
**Hands-on Ergebnis:** Eine Executive Summary mit maximal einer A4-Seite: Lage, drei Kernaussagen, Empfehlung, nächster Schritt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment), Canvas (für finale Formatierung)
**Vorgehen (4 Schritte):**
1. Das Dokument als PDF oder Text anhängen und das Modell um eine strukturierte Rohfassung bitten.
2. Das Format explizit vorgeben: Lage (2 Sätze), drei nummerierte Kernaussagen, eine Empfehlung, nächster Schritt.
3. Zahlen und Quellenangaben im Chat prüfen und bei Bedarf im Dokument gegenchecken.
4. Die finale Fassung in Canvas übertragen und für die Board-Folie formatieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist strategischer Analyst. Fasse den angehängten Bericht in eine Executive Summary zusammen. Zielgruppe: Geschäftsführung, die max. 90 Sekunden Lesezeit hat. Format: Lage (2 Sätze), drei nummerierte Kernaussagen (je max. 30 Wörter), eine Empfehlung, ein konkreter nächster Schritt."
**Erwartetes Artefakt:** Eine Board-taugliche Executive Summary (max. 250 Wörter) als Canvas-Dokument.
**Fallstricke (≥2 spezifisch):**
- Das Modell übernimmt den Sprachstil des Originalberichts statt für C-Level zu vereinfachen → Zielgruppe und Lesezeitbudget immer explizit im Prompt nennen.
- Zahlen werden aus dem Kontext gerissen und verlieren ihre Bedeutung → das Modell anweisen, jede Zahl mit ihrem Bezugsrahmen ("gegenüber Vorjahr") zu versehen.
**Anschluss-Szenario:** S-CP-021

### S-CP-021 Ideation-Session im Chat strukturiert führen

**Wann nutzen (Trigger):** Das Team ist in einer Kampagnen-Ideation festgefahren und braucht frische Perspektiven — ohne ein Meeting anzuberaumen. Die Direktorin will im Chat einen strukturierten Brainstorming-Durchlauf starten. (Quelle: sources/10 S-040, A-39)
**Strategisches Ziel:** Den Chat als asynchrones Kreativ-Werkzeug nutzen, das divergentes und konvergentes Denken in einer Session vereint.
**Hands-on Ergebnis:** 10 priorisierte Kampagnen-Ideen mit je einer Kurzbegründung und einem konkreten nächsten Schritt.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Chat-Branching für parallele Richtungen), Canvas
**Vorgehen (4 Schritte):**
1. Divergente Phase: das Modell 10 unzensierte Ideen ohne Bewertung generieren lassen.
2. Konvergente Phase: die Ideen nach Kriterien (Budget-Realisierbarkeit, Differenzierungspotenzial, Zeit-to-Market) bewerten lassen.
3. Die Top-3-Ideen per Chat-Branching parallel ausarbeiten lassen.
4. Alle drei Kurzkonzepte in Canvas zusammenführen und als Entscheidungsvorlage exportieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Kreativ-Strategin für B2B-Marketing. Generiere 10 Kampagnen-Ideen für das Thema [Thema] — ohne Selbstzensur, auch unkonventionelle Ansätze erlaubt. Zielgruppe: [Segment]. Format: nummerierte Liste, je Idee ein Satz Beschreibung. Keine Bewertung in diesem Schritt."
**Erwartetes Artefakt:** Eine Entscheidungsvorlage mit 10 Ideen, einer Bewertungsmatrix und drei ausgearbeiteten Kurzkonzepten.
**Fallstricke (≥2 spezifisch):**
- Das Modell bewertet bereits in der Divergenz-Phase → explizit anweisen "keine Bewertung in diesem Schritt"; Bewertung als Folge-Prompt trennen.
- Alle Ideen klingen wie Varianten derselben Grundidee → nach "kontraintuitiven Ansätzen" oder "Was würde ein Disruptor tun?" fragen.
**Anschluss-Szenario:** S-CP-022

### S-CP-022 Antwort-Entwürfe für Community-Kommentare im Chat-Stapel verarbeiten

**Wann nutzen (Trigger):** Nach einem viralen Post türmen sich 30+ Kommentare auf LinkedIn und Instagram; das Social-Media-Team braucht schnell abgestimmte Antwort-Entwürfe — ohne jeden Kommentar einzeln einzutippen. (Quelle: sources/10 S-048)
**Strategisches Ziel:** Community-Management skalieren, ohne die Brand-Voice zu gefährden, indem Kommentare im Batch-Modus bearbeitet werden.
**Hands-on Ergebnis:** 10–15 fertige Antwort-Entwürfe, je maximal zwei Sätze, ready für manuelles Freigabe-Review.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Wissensordner-Link für FAQ und Brand-Voice, Batch-Prompt-Technik)
**Vorgehen (3 Schritte):**
1. Kommentare kategorisieren: Lob, Produktfrage, Beschwerde, Troll — und entsprechend an das Modell gruppiert übergeben.
2. Den Wissensordner mit FAQ und Brand-Voice-Regeln verknüpfen, damit Produktantworten korrekt sind.
3. Das Modell pro Kategorie einen Batch von Entwürfen erzeugen lassen; kritische Kommentare (Beschwerden, Trolle) immer manuell reviewen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Community-Managerin für eine DACH-B2B-Marke. Beantworte die folgenden fünf Kommentare (Typ: Produktfrage). Nutze den FAQ-Ordner für korrekte Informationen. Tonalität: freundlich-professionell, kein Jargon. Format: je Kommentar ein zweisätziger Antwort-Entwurf, nummeriert."
**Erwartetes Artefakt:** Nummerierte Antwort-Entwürfe je Kommentar, direkt in die Social-Media-Plattform kopierbar.
**Fallstricke (≥2 spezifisch):**
- Das Modell entschuldigt sich bei provokanten Kommentaren ohne Grundlage → für Troll-Kategorie explizit anweisen, sachlich zu bleiben und keine Entschuldigung zu implizieren.
- Ohne FAQ-Wissensordner erfindet das Modell Produktdetails → den Ordner immer verknüpfen und das Modell anweisen, fehlende Infos als "bitte direkt an support@..." zu delegieren.
**Anschluss-Szenario:** S-CP-023

### S-CP-023 Modell-Wechsel mitten in einem Chat für verschiedene Aufgaben

**Wann nutzen (Trigger):** In einer laufenden Chat-Session wechselt die Aufgabe von kreativem Brainstorming zu strukturierter JSON-Ausgabe oder Datenanalyse — und das aktuelle Modell liefert für die neue Aufgabe suboptimale Ergebnisse. (Quelle: 12 Q21, Quelle: 12 Q25)
**Strategisches Ziel:** Das richtige Modell zur richtigen Aufgabe im Verlauf einer Session zuordnen, ohne den Chat-Kontext zu verlieren.
**Hands-on Ergebnis:** Eine dokumentierte Daumenregel für den Team-internen Modell-Wechsel plus ein Beispiel-Workflow.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Modell-Selektor mid-Chat), Auto-Mode als Fallback
**Vorgehen (3 Schritte):**
1. Die Aufgabenphase diagnostizieren: kreatives Schreiben → Sonnet oder vergleichbares Frontier-Modell; strukturierte Ausgaben (JSON, Code) → Modell mit starker Instruktions-Folge-Kompetenz; Massenverarbeitung → Flash-Klasse.
2. Im Langdock-Modell-Selektor das Modell wechseln und in der nächsten Nachricht explizit auf den bestehenden Kontext referenzieren.
3. Eine kurze Team-Notiz im Wissensordner festhalten: welche Aufgabentypen welches Modell brauchen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Modell-Effizienz-Beraterin. Wir haben gerade auf [neues Modell] gewechselt. Kontext aus der bisherigen Session: [Zusammenfassung]. Jetzt benötige ich eine strukturierte JSON-Ausgabe der erarbeiteten Kampagnen-Parameter. Format: valides JSON-Objekt mit den Feldern campaign_name, target_segment, budget_eur, channels (Array)."
**Erwartetes Artefakt:** Eine interne Modell-Wechsel-Daumenregel (max. eine Seite) plus ein konkreter Beispiel-Workflow für den täglichen Einsatz.
**Fallstricke (≥2 spezifisch):**
- Nach dem Modellwechsel verliert das neue Modell den Kontext → immer eine kurze Kontext-Zusammenfassung in der ersten neuen Nachricht mitgeben.
- Flash-Modelle bei markenkritischen Texten → die Aufgabenklasse muss immer die Modell-Klasse bestimmen; niemals aus Kosten-Bequemlichkeit ein zu schwaches Modell für Brand-Content wählen.
**Anschluss-Szenario:** S-CP-024

### S-CP-024 KI-Einsatzgrenzen im Chat klar kommunizieren

**Wann nutzen (Trigger):** Das Team fragt, welche Marketing-Aufgaben niemals durch KI laufen dürfen — z. B. vor einer Betriebsratsanhörung oder einem Agenturgespräch. Die Direktorin braucht eine klare, begründete Liste für die interne Kommunikation. (Quelle: A-06, A-48)
**Strategisches Ziel:** Eine konservative, rechtlich und markenstrategisch begründete "No-KI"-Liste erstellen, die als Leitplanke für das gesamte Marketing-Team gilt.
**Hands-on Ergebnis:** Eine dokumentierte Liste mit mindestens fünf "No-KI"-Aufgaben, je einer Begründung und einem klaren menschlichen Verantwortlichen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (strukturierter Brainstorming-Prompt, Web Search für regulatorische Quellen)
**Vorgehen (4 Schritte):**
1. Das Modell bitten, Aufgabenkategorien zu identifizieren, bei denen KI-Outputs rechtliche, reputationelle oder ethische Risiken erzeugen.
2. Web Search für DACH-spezifische Quellen aktivieren (EU AI Act Art. 50, UWG, BetrVG).
3. Die Liste nach Risiko-Schwere sortieren und je Kategorie einen menschlichen Verantwortlichen benennen.
4. Die finale Liste im Wissensordner ablegen und in Custom Instructions referenzieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Governance-Beraterin für ein DACH-Unternehmen. Identifiziere Marketing-Aufgaben, die aus rechtlichen oder strategischen Gründen NICHT durch KI erledigt werden dürfen. Quellen: EU AI Act, UWG, Markenrecht. Format: nummerierte Liste, je Aufgabe eine Begründung (max. 2 Sätze) und ein benannter menschlicher Verantwortlicher."
**Erwartetes Artefakt:** Eine "No-KI"-Leitlinie (5–10 Punkte) als abgelegtes Dokument im Wissensordner, verlinkbar in Onboarding-Materialien.
**Fallstricke (≥2 spezifisch):**
- Das Modell nennt nur offensichtliche Kategorien (Rechtsberatung) → nach branchenspezifischen DACH-Risiken fragen, z. B. Mitarbeiterfeedback-Auswertung (BetrVG § 87), Influencer-Disclosure (UWG § 5a).
- Die Liste wirkt zu restriktiv und blockiert sinnvollen KI-Einsatz → die Formulierung auf "menschliche Endfreigabe Pflicht" statt "verboten" kalibrieren.
**Anschluss-Szenario:** S-CP-025

### S-CP-025 Konversations-Starter für einen neuen Marketing-Agent entwerfen

**Wann nutzen (Trigger):** Ein neuer Agent (z. B. Brand-Guardian oder Briefing-Assistent) ist konfiguriert, aber das Team weiß nicht, wie es ihn sinnvoll ansprechen soll — die ersten Nutzungsversuche sind unklar formuliert und liefern schlechte Ergebnisse. (Quelle: 12 Q42, A-37)
**Strategisches Ziel:** Durch gezielt vorgefertigte Konversations-Starter die Einstiegshürde senken und den Agent sofort produktiv nutzbar machen.
**Hands-on Ergebnis:** Fünf fertige Konversations-Starter für den neuen Agent, direkt in die Agent-Konfiguration eingebettet.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (für Entwurf und Test der Starter), Agent-Konfiguration (Konversations-Starter-Feld)
**Vorgehen (4 Schritte):**
1. Die fünf häufigsten Aufgaben definieren, für die der Agent gebaut wurde.
2. Für jede Aufgabe einen Starter-Satz entwerfen, der Persona + Task + Kontext auf 1–2 Sätze komprimiert.
3. Die Starter im Chat gegen den Agent testen und auf Eindeutigkeit prüfen.
4. Die validierten Starter in die Agent-Konfiguration im Feld "Konversations-Starter" eintragen und dem Team vorstellen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Langdock-Konfigurationsexpertin. Entwirf 5 Konversations-Starter für unseren Brand-Guardian-Agent. Der Agent prüft Texte auf Marken-Compliance und schlägt Korrekturen vor. Jeder Starter soll eine typische Aufgabe in einem Satz beschreiben und den Nutzer zur Texteingabe auffordern. Format: nummerierte Liste, je Starter max. 2 Sätze."
**Erwartetes Artefakt:** Fünf einsatzbereite Konversations-Starter im Agent-Konfigurationsfeld, die das Team ohne Einarbeitung sofort nutzen kann.
**Fallstricke (≥2 spezifisch):**
- Zu generische Starter ("Hilf mir mit Marketing") geben dem Agent keine Richtung → jeder Starter muss den Kontext und den erwarteten Output benennen.
- Starter werden ohne Test direkt eingesetzt → immer mindestens einen Trockenlauf im Chat-Sandbox durchführen, bevor der Agent für das Team freigegeben wird.
**Anschluss-Szenario:** S-CP-026

## Hinweise & Quellen-Konflikte

- Keine Konflikte zwischen Extracts und Sources festgestellt. Modellnamen sind auf Stand Mai 2026; die Prompting-Logik bleibt bei neuen Releases gültig.
