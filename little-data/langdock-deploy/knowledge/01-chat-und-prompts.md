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

## Hinweise & Quellen-Konflikte

- Keine Konflikte zwischen Extracts und Sources festgestellt. Modellnamen sind auf Stand Mai 2026; die Prompting-Logik bleibt bei neuen Releases gültig.
