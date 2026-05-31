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

### S-CP-026 Chain-of-Thought für komplexe strategische Analyse aktivieren

**Wann nutzen (Trigger):** Eine mehrstufige Aufgabe — z. B. Priorisierung von vier Kampagnen-Optionen nach ROI, Machbarkeit und Brand-Fit — liefert oberflächliche Antworten, weil das Modell direkt zum Ergebnis springt.
**Strategisches Ziel:** Das Modell zwingen, seinen Denkweg sichtbar zu machen, damit die Direktorin den Schluss nachvollziehen und bei Bedarf an einem bestimmten Schritt eingreifen kann.
**Hands-on Ergebnis:** Eine strukturierte Analyse mit sichtbarem Schritt-für-Schritt-Reasoning und einem begründeten Endergebnis.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Instruktions-Formulierung), Chat-Branching (alternative Denkwege)
**Vorgehen (4 Schritte):**
1. Im Prompt explizit anweisen: "Denke laut und zeige jeden Bewertungsschritt, bevor du eine Empfehlung gibst."
2. Die Bewertungsdimensionen (ROI, Machbarkeit, Brand-Fit) mit Gewichtung vorab benennen, damit das Modell nicht selbst eine Hierarchie erfindet.
3. Das Reasoning lesen und bei einem fehlerhaften Zwischenschritt direkt dort einhaken: "Schritt 2 ist falsch — korrigiere ab hier."
4. Das Endergebnis als separaten Absatz vom Reasoning trennen lassen, damit die Präsentation ans C-Level sauber bleibt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Strategie-Analytikerin. Analysiere die vier Kampagnen-Optionen unten. Bewerte jede Dimension (ROI-Potenzial, Zeit-to-Market, Brand-Fit) nacheinander und zeige deine Überlegung je Schritt. Erst dann nenne die Empfehlung. Format: nummeriertes Reasoning je Option, darunter ein Fazit-Absatz."
**Erwartetes Artefakt:** Eine nachvollziehbare Schritt-für-Schritt-Analyse mit begründetem Fazit, geeignet als Entscheidungsvorlage.
**Fallstricke (≥2 spezifisch):**
- Das Modell schreibt pro forma "Schritt 1, Schritt 2", aber das Reasoning ist nicht tiefer als ohne CoT → explizit nach Widersprüchen und Trade-offs innerhalb jedes Schritts fragen.
- CoT-Prompts bei trivialen Aufgaben → der Overhead lohnt nur bei mehrstufiger Logik; für einfache Listen PTCF verwenden.
**Anschluss-Szenario:** S-CP-027

### S-CP-027 Brand Voice Audit eines bestehenden Content-Korpus im Chat

**Wann nutzen (Trigger):** Neue Agenturmaterialien oder Freelancer-Texte sollen vor der Freigabe auf Übereinstimmung mit der Markensprache geprüft werden — schnell, ohne manuelles Durchlesen. (Quelle: sources/10 S-038, S-039)
**Strategisches Ziel:** Den Chat als automatisierten "Brand-Guardian-Prüfschritt" einsetzen, der Off-Brand-Stellen identifiziert und direkte Korrekturvorschläge liefert.
**Hands-on Ergebnis:** Eine annotierte Liste der Off-Brand-Passagen mit konkreten Alternativformulierungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment), Wissensordner (Brand-Voice-Guidelines als Anker)
**Vorgehen (4 Schritte):**
1. Den zu prüfenden Text als Anhang oder Einfügung in den Chat laden.
2. Den @-Mention auf den Wissensordner mit den Brand-Voice-Guidelines setzen, damit das Modell gegen den offiziellen Standard prüft.
3. Das Modell anweisen, Off-Brand-Stellen mit Zeilennummer und Begründung auszugeben — nicht pauschal umzuformulieren.
4. Nur die markierten Stellen gezielt überarbeiten lassen; das Restdokument nicht ohne Grund anfassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Brand-Auditorin. Prüfe den angehängten Text gegen unsere Brand-Voice-Guidelines im @Wissensordner. Markiere jede Off-Brand-Passage mit Zeilennummer, erkläre in einem Satz warum, und schlage eine regelkonforme Alternativformulierung vor. Format: Tabelle mit Spalten Zeile, Original, Problem, Korrektur."
**Erwartetes Artefakt:** Eine Audit-Tabelle mit Off-Brand-Stellen, Begründung und Korrekturen — direkt für das Freigabe-Meeting nutzbar.
**Fallstricke (≥2 spezifisch):**
- Das Modell überarbeitet den gesamten Text, obwohl nur wenige Stellen off-brand sind → explizit anweisen "nur markierte Passagen, kein Gesamtrewrite".
- Ohne verankerten Wissensordner erfindet das Modell eine Brand Voice → @Mention auf den Ordner ist Pflicht, kein optionales Nice-to-have.
**Anschluss-Szenario:** S-CP-028

### S-CP-028 Dokument-Analyse per Chat-Attachment: Vertragsklauseln extrahieren

**Wann nutzen (Trigger):** Ein Agentur- oder Medienvertrag (PDF) soll vor dem internen Meeting auf für Marketing relevante Klauseln durchsucht werden — Laufzeiten, Exklusivitäten, Nutzungsrechte — ohne den Rechtstext vollständig zu lesen.
**Strategisches Ziel:** Relevante Klauseln schnell isolieren und in ein handlungsorientiertes Übersichtsdokument verdichten, ohne juristische Eigeninterpretation zu erzeugen.
**Hands-on Ergebnis:** Eine Klauseln-Tabelle mit Fundstelle, Kurzinhalt und einem Hinweis auf eventuelle Rückfragen ans Rechtsteam.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment, PDF-Volltext-Modus statt RAG)
**Vorgehen (3 Schritte):**
1. Das PDF als direkte Dateianlage in den Chat laden — nicht in den Wissensordner, damit das Modell den vollständigen Text liest statt Chunks zu retrieven.
2. Die gesuchten Klausel-Kategorien explizit benennen (Laufzeit, Exklusivität, Nutzungsrechte, Haftung, Kündigungsfristen).
3. Das Modell anweisen, fehlende oder unklare Klauseln explizit als "nicht gefunden — bitte Rechtsteam fragen" zu kennzeichnen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Vertragsanalystin für Marketing-Einkauf. Lies den angehängten Vertrag vollständig. Extrahiere alle Klauseln zu: Laufzeit, Exklusivität, Nutzungsrechte, Haftungsobergrenzen, Kündigungsfrist. Format: Tabelle mit Spalten Klausel-Typ, Fundstelle (Abschnitt/Seite), Kurzinhalt (max. 2 Sätze), Hinweis für Rechtsteam."
**Erwartetes Artefakt:** Eine strukturierte Klauseln-Übersicht für das Meeting-Briefing, mit expliziten "Bitte prüfen"-Markierungen für unklare Stellen.
**Fallstricke (≥2 spezifisch):**
- PDF in den Wissensordner statt als Attachment laden → RAG-Chunking zerstört die Dokumentstruktur; für Volltext-Analyse immer als Direktanlage im Chat verwenden.
- Das Modell gibt rechtliche Einschätzungen als Fakten aus → die Klauseln-Tabelle enthält Zusammenfassungen, keine Rechtsberatung; Rückfragen ans Rechtsteam explizit einfordern.
**Anschluss-Szenario:** S-CP-029

### S-CP-029 Chat-Export und Konversations-Wiederverwendung als Projekt-Gedächtnis

**Wann nutzen (Trigger):** Ein mehrtägiges Strategieprojekt (z. B. Rebranding-Sprint) erzeugt wertvolle Konversationsverläufe, die das Team in der nächsten Session nicht neu aufbauen will. (Quelle: A-10, sources/12 Q80)
**Strategisches Ziel:** Exportierte Chat-Inhalte als strukturiertes Projekt-Gedächtnis recyceln, um Kontext zwischen Sessions nicht zu verlieren.
**Hands-on Ergebnis:** Ein komprimiertes Briefing-Dokument aus dem vorherigen Chat-Verlauf, das als Einstieg für die nächste Session dient.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Cmd-K Omni-Search, File-Attachment), Wissensordner (für langlebige Projekt-Snapshots)
**Vorgehen (4 Schritte):**
1. Den wichtigsten Chat-Verlauf über Cmd-K suchen und den Inhalt als Text exportieren oder kopieren.
2. In einem neuen Chat das Exportdokument anhängen und ein Projekt-Briefing generieren lassen: Entscheidungen, offene Punkte, nächste Schritte.
3. Das Briefing in den Projekt-Wissensordner laden, damit es für alle Teammitglieder abrufbar ist.
4. Zukünftige Sessions mit "@Projekt-Ordner — hier ist der Stand" starten statt den Kontext mündlich zu wiederholen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Projektkoordinatorin. Lies den folgenden exportierten Chat-Verlauf unseres Rebranding-Sprints [eingefügt]. Erstelle ein strukturiertes Projekt-Briefing mit: getroffenen Entscheidungen (nummeriert), offenen Fragen (priorisiert), nächsten Schritten mit Verantwortlichen. Format: max. eine A4-Seite, Markdown."
**Erwartetes Artefakt:** Ein Projekt-Briefing-Dokument im Wissensordner, das als Session-Einstieg für das gesamte Team dient.
**Fallstricke (≥2 spezifisch):**
- Zu viele Chat-Verläufe auf einmal → das Kontextfenster läuft voll; maximal zwei bis drei Verläufe pro Komprimierungs-Session einbringen.
- Das Briefing ersetzt das originale Chat-Protokoll → das Original immer archivieren; das Briefing ist eine Verdichtung, kein vollständiges Protokoll.
**Anschluss-Szenario:** S-CP-030

### S-CP-030 Prompt-Debugging: Schlechte Outputs systematisch reparieren

**Wann nutzen (Trigger):** Ein Prompt liefert wiederholt Ergebnisse, die nicht dem gewünschten Standard entsprechen — aber unklar ist, welches der vier PTCF-Elemente das Problem verursacht. (Quelle: sources/12 Q76, Q79)
**Strategisches Ziel:** Schlechte KI-Outputs nicht durch blindes Neuformulieren, sondern durch systematisches Eingrenzen des Fehlers effizient verbessern.
**Hands-on Ergebnis:** Ein reparierter Prompt mit dokumentierter Fehlerursache und Lösung für die Team-Prompt-Bibliothek.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Antwort neu generieren, Modell wechseln), Chat-Branching (Varianten testen)
**Vorgehen (4 Schritte):**
1. Den schlechten Prompt und seine Ausgabe kopieren und das Modell bitten zu diagnostizieren, welches PTCF-Element fehlt oder falsch ist.
2. Die Diagnose auf einen einzigen Fehler eingrenzen: fehlende Persona, unklarer Task, zu wenig Kontext oder fehlendes Format.
3. Nur das identifizierte Element ändern und die Ausgabe im selben Chat vergleichen — nicht mehrere Elemente gleichzeitig ändern.
4. Den reparierten Prompt mit Fehlerursache als Notiz in der Prompt-Bibliothek ablegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Debugging-Expertin. Analysiere den folgenden Prompt [Prompt einfügen] und seine fehlerhafte Ausgabe [Ausgabe einfügen]. Identifiziere das schwächste PTCF-Element. Schlage nur eine gezielte Verbesserung vor — keine Komplett-Neufassung. Format: Diagnose (1 Satz), Schwaches Element (P/T/C/F), Korrektur-Vorschlag (max. 3 Sätze)."
**Erwartetes Artefakt:** Ein reparierter Prompt mit dokumentierter Fehlerursache, abgelegt in der Prompt-Bibliothek als Lernbeispiel.
**Fallstricke (≥2 spezifisch):**
- Mehrere Elemente gleichzeitig ändern → unklar, welche Änderung den Unterschied gemacht hat; immer eine Variable nach der anderen testen.
- Das Modell gibt eine Komplett-Neufassung statt einer gezielten Korrektur → explizit auf "eine Änderung" beschränken, sonst ist der Lerneffekt verloren.
**Anschluss-Szenario:** S-CP-031

### S-CP-031 Wettbewerber-Sentiment-Analyse aus öffentlichen Quellen im Chat

**Wann nutzen (Trigger):** Vor einem Strategie-Update möchte die Direktorin wissen, wie Kunden und Marktbeobachter die wichtigsten Wettbewerber wahrnehmen — anhand öffentlicher Rezensionen, LinkedIn-Posts und Fachmedien. (Quelle: sources/10 S-052, A-43)
**Strategisches Ziel:** Öffentliche Stimmungsbilder zu Wettbewerbern verdichten, um eigene Positionierungslücken zu identifizieren — ohne proprietäre Social-Listening-Daten.
**Hands-on Ergebnis:** Eine Sentiment-Übersicht je Wettbewerber (positiv/negativ/neutral) mit den meistgenannten Themen und einer Differenzierungsempfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Web Search aktiviert), Data Analyst (bei CSV-Export aus Rezensions-Tools)
**Vorgehen (3 Schritte):**
1. Web Search aktivieren und das Modell nach G2/Capterra-Rezensionen, LinkedIn-Kommentaren und Fachmedien-Artikeln zu den Wettbewerbern suchen lassen.
2. Das Modell die Quellen nach Sentiment kategorisieren lassen: Lob, Kritik, Neutral — und die meistgenannten Themen je Kategorie extrahieren.
3. Eine "Differenzierungslücke"-Analyse anfordern: Wo kritisieren Kunden die Wettbewerber konsistent, wo sind wir stärker?
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Marktforscherin. Recherchiere via Web Search die öffentlichen Kundenstimmen zu [Wettbewerber A] auf G2, Capterra und LinkedIn (letzte 6 Monate). Kategorisiere nach Sentiment (positiv/negativ/neutral). Identifiziere die drei häufigsten Kritikpunkte. Format: Tabelle Wettbewerber | Top-3-Lob | Top-3-Kritik | Differenzierungsansatz für uns."
**Erwartetes Artefakt:** Eine Sentiment-Tabelle je Wettbewerber mit konkreten Differenzierungsempfehlungen für die eigene Positionierung.
**Fallstricke (≥2 spezifisch):**
- Web Search liefert nur aktuelle Top-Ergebnisse, keine vollständigen Datensätze → als Stichprobe kommunizieren, nicht als repräsentative Studie verkaufen.
- Sarkasmus und ironische Kommentare werden als positives Sentiment klassifiziert → das Modell explizit auf den Sarkasmus-Bias hinweisen und ambivalente Quellen manuell prüfen lassen.
**Anschluss-Szenario:** S-CP-032

### S-CP-032 Mehrsprachige Prompt-Strategie für DACH-Teams

**Wann nutzen (Trigger):** Das Marketing-Team arbeitet mit Kolleginnen in Deutschland, Österreich und der Schweiz; Prompts werden gemischt auf Deutsch und Englisch verfasst, was zu inkonsistenten Outputs führt. (Quelle: A-46, sources/12 Q77)
**Strategisches Ziel:** Eine klare Sprachstrategie für Prompts im DACH-Team etablieren, die Konsistenz erhöht und regionalen Tonalitäts-Anforderungen gerecht wird.
**Hands-on Ergebnis:** Eine ein-seitige Sprachpolitik für Prompts mit Entscheidungsbaum und Beispiel-Prompts für drei häufige Aufgabentypen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Custom Instructions (Sprachpräferenz), Prompt Library (DE/AT/CH-Varianten)
**Vorgehen (4 Schritte):**
1. Die häufigsten Aufgabentypen sammeln (Brand-Text DE, E-Mail AT/CH, Übersetzung EN→DE) und für jeden die optimale Prompt-Sprache testen.
2. Regel-Empfehlung ableiten: Fachterminologie auf Englisch in Klammern, Ausgabe immer auf Deutsch, Prompt-Sprache = Ausgabe-Sprache.
3. Für CH-spezifische Inhalte eine Variante mit Schweizer Orthografie (kein ß, "ss") und CH-Hochdeutsch-Ton testen.
4. Den Entscheidungsbaum und die validierten Beispiel-Prompts in der Prompt-Bibliothek unter "Sprachstrategie DACH" ablegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist DACH-Sprachstratege. Analysiere, ob ein Prompt auf Deutsch oder Englisch besser formuliert werden sollte für folgende Aufgabe: [Aufgabe]. Berücksichtige: Modell-Präferenz, Ziel-Tonalität, Ausgabe-Sprache. Format: Empfehlung (DE/EN) mit Begründung (max. 3 Sätze) und einem Beispiel-Prompt in der empfohlenen Sprache."
**Erwartetes Artefakt:** Ein Entscheidungsbaum "Wann prompt ich auf Deutsch, wann auf Englisch" plus drei Beispiel-Prompts für Kerntasks, abgelegt in der Prompt-Bibliothek.
**Fallstricke (≥2 spezifisch):**
- Englische Prompts für deutsche Brand-Texte führen zu englisch eingefärbter Syntax → Ausgabe-Sprache immer explizit im Prompt erzwingen, auch wenn der Prompt auf Englisch ist.
- Schweizer Hochdeutsch wird mit Österreichischem Deutsch verwechselt → regionalen Kontext immer explizit benennen und Few-Shot-Beispiele aus der Zielregion beifügen.
**Anschluss-Szenario:** S-CP-033

### S-CP-033 Inline-Datenvisualisierung aus Kampagnenzahlen im Chat anfordern

**Wann nutzen (Trigger):** Die Direktorin hat Kampagnen-Performance-Zahlen als Tabelle im Chat und möchte sofort eine verständliche Visualisierung für das Management-Meeting — ohne in ein Reporting-Tool zu wechseln. (Quelle: sources/12 Q107)
**Strategisches Ziel:** Rohdaten direkt im Chat in ein präsentationsfähiges Diagramm überführen, das als PNG oder in Canvas exportiert werden kann.
**Hands-on Ergebnis:** Ein Python-generiertes Diagramm (Balken-, Linien- oder Tortendiagramm) aus den eingefügten Kampagnendaten.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Data Analyst für Python-Code-Ausführung)
**Vorgehen (3 Schritte):**
1. Die Daten als Tabelle oder CSV-Text in den Chat einfügen und zum Data Analyst wechseln.
2. Den gewünschten Diagrammtyp und die Achsen explizit benennen (Zeitachse, Metrik, Farb-Encoding für Kanäle).
3. Das generierte Diagramm herunterladen und mit einem Alt-Text versehen lassen (Barrierefreiheit, WCAG-konform, max. 125 Zeichen).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Data-Analyst. Erstelle aus der folgenden Tabelle [Tabelle einfügen] ein Balkendiagramm mit Python (matplotlib). X-Achse: Monate, Y-Achse: Leads, Farbkodierung nach Kanal (Blau=SEO, Orange=Paid, Grün=Social). Titel: 'Lead-Entwicklung Q1–Q2 2026'. Exportiere als PNG. Erstelle zusätzlich einen WCAG-konformen Alt-Text (max. 125 Zeichen)."
**Erwartetes Artefakt:** Ein PNG-Diagramm zum Download und ein barrierefreier Alt-Text, direkt für Präsentationen und E-Mails nutzbar.
**Fallstricke (≥2 spezifisch):**
- Mehr als 200 Datenpunkte im Standard-Chat eingefügt → Kontextüberlastung; ab dieser Größe CSV hochladen und Data Analyst nutzen.
- Das Modell wählt eigenständig einen unpassenden Diagrammtyp → Diagrammtyp und Achsen-Belegung immer explizit vorgeben.
**Anschluss-Szenario:** S-CP-034

### S-CP-034 Prompt-Template mit Pflichtfeldern für das Team standardisieren

**Wann nutzen (Trigger):** Neue Teammitglieder schicken unvollständige Prompts ab, weil sie vergessen, Zielgruppe, Tonalität oder Format zu füllen — was zu Nachfragen und Iterationsrunden führt. (Quelle: sources/12 Q78, Q35)
**Strategisches Ziel:** Pflichtfelder im Prompt-Template erzwingen, sodass unvollständige Prompts gar nicht erst abgesendet werden können.
**Hands-on Ergebnis:** Mindestens drei Prompt-Templates mit Pflicht-Platzhaltern (`{{Zielgruppe}}`, `{{Tonalität}}`, `{{Format}}`) in der Team-Prompt-Bibliothek.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Prompt Library mit Variable-System), Agent-Form (für strukturierte Pflichtfelder)
**Vorgehen (4 Schritte):**
1. Die häufigsten Pflichtfelder identifizieren, die bei Routinetasks immer ausgefüllt werden müssen.
2. Die Templates mit geschweiften Klammern und aussagekräftigen Platzhalter-Texten versehen: `{{Zielgruppe: z.B. "DACH-Marketing-Entscheider"}}`.
3. Für besonders fehleranfällige Workflows auf Agent-Forms umstellen: Pflichtfelder als separate Eingabemasken konfigurieren, die vor dem Absenden ausgefüllt sein müssen.
4. Die fertigen Templates in der Bibliothek unter dem jeweiligen Team-Ordner ablegen und beim Onboarding einführen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Prompt-Architektin. Erstelle ein wiederverwendbares Prompt-Template für LinkedIn-Posts mit Pflicht-Platzhaltern für: {{Thema}}, {{Zielgruppe}}, {{Kernbotschaft}}, {{CTA}}. Ergänze hilfreiche Beispielwerte in jedem Platzhalter. Format: fertiges Template mit Anleitung für das Team in max. 5 Sätzen."
**Erwartetes Artefakt:** Drei abgelegte Templates mit Platzhaltern und Ausfüll-Anleitung, bereit für den Team-Rollout.
**Fallstricke (≥2 spezifisch):**
- Zu viele Pflichtfelder → das Template wird als Bürde empfunden und umgangen; maximal vier bis fünf kritische Felder erzwingen.
- Beispielwerte in den Platzhaltern werden ohne Anpassung abgesendet → bei der Einführung explizit darauf hinweisen, dass Beispielwerte ersetzt werden müssen.
**Anschluss-Szenario:** S-CP-035

### S-CP-035 Tagline-Ideation mit kategorisierten Varianten im Chat

**Wann nutzen (Trigger):** Ein Produkt-Relaunch oder eine Submarke benötigt einen neuen Claim; die erste Chat-Runde liefert generische Vorschläge ohne echte Differenzierung. (Quelle: sources/10 S-040)
**Strategisches Ziel:** Durch kategorisierte Ideation einen breiten Variantenraum aufspannen und die stärksten Kandidaten systematisch selektieren.
**Hands-on Ergebnis:** 30 Tagline-Varianten in fünf Kategorien (Direkt, Metaphorisch, Provokant, Aspirational, Wortspiel), plus drei ausgearbeitete Favoriten mit Begründung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Chat-Branching (für Tiefenentwicklung der Top-3)
**Vorgehen (4 Schritte):**
1. Die Kernbotschaft auf einen Satz komprimieren und das Modell anweisen, 30 Varianten in exakt fünf Kategorien zu liefern — keine Selbstzensur.
2. Die Ergebnisse bewerten lassen nach: Einprägsamkeit, Differenzierung, Übersetzbarkeit ins Englische.
3. Die Top-3 per Chat-Branching tiefer ausarbeiten: je zwei Variationen, eine Long- und eine Short-Version.
4. Den finalen Kandidaten einer kurzen Plagiats-Prüfung unterziehen lassen (Web Search aktivieren, bekannte Slogans ausschließen).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Copywriter für Marken-Claims. Generiere 30 Taglines für [Produkt], Kernbotschaft: [ein Satz]. Teile auf in fünf Kategorien: Direkt/Klar, Metaphorisch, Provokant, Aspirational, Wortspiel — je 6 Varianten. Keine Bewertung in diesem Schritt. Format: nummerierte Liste nach Kategorie."
**Erwartetes Artefakt:** Eine kategorisierte Liste von 30 Taglines plus drei ausgearbeitete Favoriten mit Begründung und Übersetzbarkeits-Hinweis.
**Fallstricke (≥2 spezifisch):**
- Das Modell kämpft mit echten Wortspielen in der deutschen Sprache → für die Wortspiel-Kategorie zwei Referenz-Beispiele als Few-Shot voranstellen.
- Tagline klingt in der Bewertungsrunde stark, ist aber ein bekannter Slogan → Web Search explizit auf bekannte Werbe-Claims prüfen lassen, bevor der Favorit kommuniziert wird.
**Anschluss-Szenario:** S-CP-036

### S-CP-036 CEO-Ghostwriting über einen Langdock-Chat-Workflow

**Wann nutzen (Trigger):** Die Geschäftsführerin gibt Stichpunkte für einen LinkedIn-Thought-Leadership-Post — aber hat keine Zeit für mehrere Abstimmungsrunden, und der Ton muss authentisch wirken. (Quelle: sources/10 S-053, A-48)
**Strategisches Ziel:** Aus rohen Stichpunkten einen authentisch klingenden CEO-Post entwickeln, der die persönliche Stimme der Führungskraft bewahrt und nicht nach KI-generiertem "Broetry" klingt.
**Hands-on Ergebnis:** Ein fertiger LinkedIn-Post (250–400 Wörter), der die Stimme der CEO trifft und keine generischen Phrasen enthält.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Memory für CEO-Voice-Präferenzen), Wissensordner (CEO-Redestil-Referenztexte)
**Vorgehen (4 Schritte):**
1. Im Memory oder Wissensordner mindestens drei Referenztexte der CEO hinterlegen: frühere Posts, Reden oder Interviews, die den echten Stil zeigen.
2. Die Stichpunkte in den Chat eingeben und das Modell anweisen, streng im Stil der Referenzen zu bleiben.
3. Den ersten Entwurf auf generische Phrasen ("Ich freue mich sehr...", "In der heutigen schnelllebigen Zeit...") prüfen lassen und diese eliminieren.
4. Maximal eine Überarbeitungsrunde mit konkreten Einzel-Instruktionen ("Erster Satz ist zu weich — stärker formulieren").
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Ghostwriter für unsere CEO. Formuliere aus diesen Stichpunkten [einfügen] einen LinkedIn-Post. Stil-Referenzen sind in @CEO-Voice-Ordner. Regeln: keine Emojis, kurze Absätze (max. 3 Sätze), konträrer Hook im ersten Satz, offene Frage am Ende. Verbiete Phrasen wie 'Ich freue mich' und 'In der heutigen Zeit'. Format: Post-Text, max. 350 Wörter."
**Erwartetes Artefakt:** Ein LinkedIn-Post-Entwurf, der die CEO-Stimme authentisch trifft und ohne weitere Abstimmungsrunde abgesendet werden kann.
**Fallstricke (≥2 spezifisch):**
- Ohne Stil-Referenzen imitiert das Modell generisches LinkedIn-"Broetry" → mindestens drei Referenztexte sind keine Option, sondern Voraussetzung.
- Zu viele Stichpunkte auf einmal → der Post verliert Fokus; maximal drei Kernpunkte pro Post eingeben, den Rest für folgende Posts reservieren.
**Anschluss-Szenario:** S-CP-037

### S-CP-037 Antwort-Regenerierung und Modell-Wechsel gezielt einsetzen

**Wann nutzen (Trigger):** Die erste Antwort eines Modells trifft die Tonalität nicht — zu formell, zu kreativ, zu kurz — und unklar ist, ob eine Prompt-Änderung oder ein Modell-Wechsel das Problem löst. (Quelle: sources/12 Q79, Q84)
**Strategisches Ziel:** Zwischen Prompt-Problem und Modell-Problem unterscheiden, bevor Zeit mit unnötigen Prompt-Variationen verschwendet wird.
**Hands-on Ergebnis:** Eine dokumentierte Daumenregel: welche Tonalitätsprobleme durch Prompt-Änderung, welche durch Modell-Wechsel gelöst werden.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Antwort neu generieren, Modell-Selektor), Chat-Branching
**Vorgehen (3 Schritte):**
1. Den gleichen Prompt in zwei Chat-Branches parallel mit zwei verschiedenen Modellen testen (z. B. Sonnet 4.6 vs. GPT-5.2).
2. Wenn beide Modelle denselben Fehler machen → Prompt-Problem; wenn nur eines fehlt → Modell-Problem.
3. Die Diagnose und den validierten Fix als Notiz im Wissensordner festhalten: Wann welches Modell für welchen Ton.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Qualitätsprüferin für KI-Outputs. Vergleiche die zwei angehängten Antworten auf denselben Prompt. Diagnostiziere: Ist der Fehler im Prompt (falscher Kontext/Format) oder modell-spezifisch (Tonalitäts-Tendenz)? Format: Diagnose (Prompt-Problem / Modell-Problem / beides), ein konkreter Lösungsvorschlag."
**Erwartetes Artefakt:** Eine Diagnose-Notiz im Wissensordner: welche Tonalitätsprobleme Modell-Wechsel erfordern und welche Prompt-Reparaturen.
**Fallstricke (≥2 spezifisch):**
- Modell und Prompt gleichzeitig ändern → unklar, was geholfen hat; immer nur eine Variable pro Test ändern.
- Immer das teuerste Modell zu wechseln, um Probleme zu lösen → Tonalitätsprobleme sind meist Prompt-Probleme; erster Schritt ist immer Prompt-Diagnose.
**Anschluss-Szenario:** S-CP-038

### S-CP-038 Krisenkommunikation im Chat mit Playbook-Wissensordner

**Wann nutzen (Trigger):** Eine negative Schlagzeile oder ein viraler Shitstorm erfordert innerhalb von zwei Stunden eine abgestimmte Holding-Statement-Reaktion auf mehreren Kanälen. (Quelle: sources/10 S-051, A-44)
**Strategisches Ziel:** Geschwindigkeit und Ton-Konsistenz im Krisenfall sicherstellen, indem ein vorbereiteter Krisenordner die Reaktion rahmt statt von Null zu starten.
**Hands-on Ergebnis:** Drei kanalspezifische Holding Statements (LinkedIn, Pressemitteilung, Interne E-Mail) innerhalb von 30 Minuten, abgestimmt auf das Krisenplaybook.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Wissensordner @Krisenplaybook), Canvas (für simultane Ausarbeitung mehrerer Formate)
**Vorgehen (4 Schritte):**
1. Den @Krisenplaybook-Wissensordner aktivieren, der vorab genehmigte Reaktionsmuster und Sperrwörter enthält.
2. Die Fakten der Krise in einem Satz zusammenfassen und das Modell anweisen, ausschließlich auf diesen Fakten aufzubauen — keine spekulativen ETAs oder Versprechen.
3. Parallel in Canvas drei Formate generieren: kurzes LinkedIn-Statement, Presseentwurf, interne Mitarbeiter-E-Mail.
4. Alle drei Entwürfe vor dem Versand vom Rechtsteam und dem C-Level freigeben lassen — KI-Output nie ungecheckt in der Krise versenden.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Krisenkommunikations-Managerin. Fakten: [ein Satz]. Nutze den @Krisenplaybook-Ordner als Rahmen. Erstelle drei Statements: (1) LinkedIn-Post max. 300 Zeichen, (2) Presseentwurf max. 150 Wörter, (3) Interne E-Mail max. 100 Wörter. Verboten: geschätzte Lösungszeiten, Schuldeingeständnisse, Superlative."
**Erwartetes Artefakt:** Drei kanalgerechte Krisenstatements im Canvas, freigabe-fertig für das Rechtsteam.
**Fallstricke (≥2 spezifisch):**
- Das Modell erfindet eine Ursache oder einen Lösungszeitpunkt → explizit anweisen: "Nenne niemals eine Ursache oder ETA, die nicht in den Fakten steht."
- Kein Krisenplaybook-Ordner vorhanden → in der Krise ist es zu spät; den Ordner mit Reaktionsmustern, Sperrwörtern und Freigabe-Checkliste vorab anlegen.
**Anschluss-Szenario:** S-CP-039

### S-CP-039 Influencer-Briefing-Qualitätsprüfung im Chat

**Wann nutzen (Trigger):** Ein Influencer-Briefing ist fertig, soll aber vor dem Versand auf Vollständigkeit, rechtliche Pflichtinformationen und Ton geprüft werden — besonders UWG-Kennzeichnungspflicht und Markenkonformität. (Quelle: A-19, sources/10 S-050)
**Strategisches Ziel:** Das Briefing in einem Chat-Schritt auf Inhaltsvollständigkeit, Brand-Voice-Konsistenz und DACH-rechtliche Pflichten (UWG § 5a Kennzeichnung) prüfen.
**Hands-on Ergebnis:** Eine Prüftabelle mit Status "OK / Fehlt / Korrektur nötig" für jede Pflicht-Dimension des Briefings.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (File-Attachment), Wissensordner (Brand-Guidelines, Rechtliche-Checkliste)
**Vorgehen (3 Schritte):**
1. Das Briefing als Anhang laden und den @Wissensordner mit der rechtlichen Checkliste verknüpfen.
2. Das Modell anweisen, gegen drei Dimensionen zu prüfen: inhaltliche Vollständigkeit (Produktbeschreibung, Do's/Don'ts, Deadlines), Brand-Voice (Tonalität, Sperrwörter), Rechtliches (Kennzeichnungspflicht-Hinweis, DSGVO-Datenschutzhinweis).
3. Für jede Dimension den Status ausgeben lassen und bei "Fehlt" einen konkreten Ergänzungsvorschlag generieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Influencer-Marketing-Compliance-Prüferin. Prüfe das angehängte Briefing gegen drei Dimensionen: (1) Inhalt vollständig, (2) Brand-Voice konform (@Brand-Ordner), (3) DACH-Rechtliches (UWG § 5a Kennzeichnungspflicht, DSGVO-Datenschutzhinweis). Format: Tabelle mit Spalten Dimension, Status (OK/Fehlt/Korrektur), Ergänzungsvorschlag."
**Erwartetes Artefakt:** Eine Compliance-Tabelle für das Briefing, die als Checkliste vor dem Versand abgehakt wird.
**Fallstricke (≥2 spezifisch):**
- Das Modell gibt einen allgemeinen "sieht gut aus"-Status → explizit nach fehlenden Pflichtfeldern und konkreten Lücken fragen, nicht nach Gesamturteil.
- Rechtliche Prüfung ersetzt keine Anwaltsmeinung → die Tabelle dient als erster Filter; bei unklaren Kennzeichnungsfällen immer Rechtsrat einholen.
**Anschluss-Szenario:** S-CP-040

### S-CP-040 Produkt-Naming-Workshop im Chat mit Namenskonventions-Ordner

**Wann nutzen (Trigger):** Eine neue Produktfunktion benötigt einen Namen, der in die bestehende Produktarchitektur passt — und das Team hat keine Zeit für einen externen Naming-Workshop. (Quelle: sources/10 S-041)
**Strategisches Ziel:** Naming-Kandidaten systematisch gegen interne Konventionen und externe Verfügbarkeit prüfen, ohne den kreativen Prozess zu überadministrieren.
**Hands-on Ergebnis:** 15 Namenskandidaten mit Begründung, einer Bewertungsmatrix und einer klaren Empfehlung — plus Hinweis auf notwendige Markenrechtsprüfung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Wissensordner (bestehende Produktnamen und Namenskonvention)
**Vorgehen (4 Schritte):**
1. Den @Wissensordner mit bestehenden Produktnamen und der Namensphilosophie verknüpfen.
2. Das Modell 15 Kandidaten generieren lassen, die zur Architektur passen: Kürze, Aussprechbarkeit, Strukturlogik (z. B. Verb-Substantiv, Adjektiv-Noun).
3. Die Kandidaten gegen ein Bewertungs-Framework prüfen lassen: Passung zur Architektur, Einprägsamkeit, Übersetzbarkeit, keine bestehenden Domain-Konflikte (Web Search).
4. Einen expliziten Hinweis einfordern, dass die finale Wahl eine DPMA/EUIPO-Markenrecherche erfordert — vor jeder internen Kommunikation.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Naming-Expertin. Generiere 15 Namenskandidaten für die neue Funktion [Kurzbeschreibung]. Nutze @Namenskonventions-Ordner als Ankerpunkt. Bewerte jeden Namen nach: Architektur-Passung, Einprägsamkeit (1–5), Übersetzbarkeit ins Englische (ja/nein). Format: Tabelle Name | Begründung | Score | Englische Version. Hinweis am Ende: Markenrechtsprüfung erforderlich."
**Erwartetes Artefakt:** Eine bewertete Kandidaten-Tabelle mit klarer Empfehlung und explizitem Markenrechts-Vorbehalt.
**Fallstricke (≥2 spezifisch):**
- Das Modell kann keine Markenverfügbarkeit prüfen → immer explizit als "nicht ersetzt DPMA-Recherche" kennzeichnen; Markenrecht ist Pflicht vor Rollout.
- Namenskandidaten klingen isoliert gut, passen aber nicht ins Portfolio → den @Namenskonventions-Ordner immer verknüpfen, sonst ignoriert das Modell die Architekturlogik.
**Anschluss-Szenario:** S-CP-041

### S-CP-041 No-KI-Liste für sensible Marketing-Aufgaben aktualisieren

**Wann nutzen (Trigger):** Die Unternehmensrichtlinie für KI-Einsatz soll für das neue Geschäftsjahr aktualisiert werden — bestehende "No-KI"-Grenzen werden hinterfragt und neue Risikobereiche identifiziert. (Quelle: A-06, A-24)
**Strategisches Ziel:** Eine regelmäßig überprüfte "No-KI"-Liste pflegen, die zwischen echten Verboten und Aufgaben mit "menschliche Endfreigabe Pflicht" unterscheidet.
**Hands-on Ergebnis:** Eine aktualisierte "No-KI"-Liste mit ≥5 Kategorien, je einer Begründung und einem klaren Prozesshinweis (Verbot vs. menschliche Freigabe).
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Web Search für regulatorische Updates), Wissensordner (aktuelle Policy-Datei)
**Vorgehen (4 Schritte):**
1. Die bestehende Policy aus dem Wissensordner laden und das Modell auf neue regulatorische Entwicklungen seit der letzten Version prüfen lassen (EU AI Act Meilensteine, BetrVG-Updates).
2. Das Modell für jede bestehende Kategorie bewerten lassen: noch relevant, veraltet, neu klassifizieren.
3. Neue Risikobereiche ergänzen, die durch veränderte Technologie entstanden sind (z. B. KI-generierte Deepfakes in Kampagnen, autonome Personalisierung ohne menschliche Kontrolle).
4. Die Formulierung "verboten" auf "menschliche Endfreigabe Pflicht" kalibrieren, wo möglich — restriktive Verbote ohne Begründung werden umgangen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Policy-Beraterin. Aktualisiere unsere bestehende No-KI-Liste [aus @Policy-Ordner]. Prüfe auf regulatorische Neuerungen (EU AI Act 2027-Meilensteine, BetrVG § 87). Ergänze neue Risikobereiche. Format: nummerierte Liste mit Kategorie, Begründung (max. 2 Sätze), Prozess (Verbot / menschliche Endfreigabe), Änderung seit letzter Version (neu/aktualisiert/unverändert)."
**Erwartetes Artefakt:** Eine versionierte "No-KI"-Policy-Liste im Wissensordner, mit Änderungs-Tracking für das nächste interne Review.
**Fallstricke (≥2 spezifisch):**
- Das Modell nennt nur offensichtliche Verbote (Rechtsberatung) → explizit nach DACH-spezifischen Graubereichen fragen: Mitarbeiterfeedback-Auswertung (BetrVG § 87), Influencer-Disclosure (UWG § 5a).
- Eine zu restriktive Liste blockiert sinnvollen KI-Einsatz → die Formulierung "menschliche Endfreigabe Pflicht" gibt mehr Nutzbarkeit als pauschale Verbote.
**Anschluss-Szenario:** S-CP-042

### S-CP-042 Prompt für ein schriftliches Board-Reporting zur KI-Nutzung

**Wann nutzen (Trigger):** Der CFO oder die Geschäftsführung fragt nach dem konkreten ROI des Langdock-Einsatzes; die Direktorin braucht eine strukturierte, zahlenbasierte Darstellung für das nächste Board-Deck. (Quelle: A-01, A-10)
**Strategisches Ziel:** KI-Effekte in CFO-verständliche Metriken übersetzen: Time-savings, Cost-per-Brief, Iteration-Qualität — ohne Floskeln.
**Hands-on Ergebnis:** Ein Board-Ready KPI-Block (max. eine Folie) mit drei bis vier Metriken, je einer Bezugsgröße und einem Trend-Indikator.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Data Analyst (wenn Verbrauchsdaten als CSV vorliegen), Canvas (für Folie)
**Vorgehen (4 Schritte):**
1. Die verfügbaren Nutzungsdaten zusammentragen: Langdock-Workspace-Dashboard-Export (Token-Verbrauch, aktive User, Deep-Research-Runs).
2. Das Modell die Rohdaten in drei KPI-Kategorien übersetzen lassen: Effizienz (Time-to-Brief), Qualität (Iterationen pro Entwurf), Kosten (Cost-per-Artefakt in EUR).
3. Jeden KPI mit einem Vor-KI-Benchmark vergleichen lassen — ohne Benchmark ist der Wert bedeutungslos.
4. Den KPI-Block in Canvas als Folie formatieren: Titel, Metrik, Delta, Daten-Quelle, Vorbehalt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Management-Consultant. Übersetze die folgenden Langdock-Nutzungsdaten [einfügen] in einen Board-Reporting-KPI-Block. Wähle max. 4 Metriken, die ein CFO versteht. Forme jede Metrik als: Bezeichnung | Wert | Vergleich Vorquartal | Interpretation (1 Satz). Füge einen Daten-Vorbehalt hinzu. Format: Markdown-Tabelle."
**Erwartetes Artefakt:** Ein KPI-Block (max. eine Folie) mit vier Metriken in CFO-Sprache, Trend-Indikator und Daten-Vorbehalt, exportfertig für das Board-Deck.
**Fallstricke (≥2 spezifisch):**
- Metriken ohne Benchmark → eine isolierte Zahl ("wir haben 4.000 Prompts gesendet") sagt dem CFO nichts; immer Vorquartal oder Vor-KI-Baseline vergleichen.
- Zu viele KPIs → Board-Slides mit mehr als vier Metriken verlieren die Botschaft; weniger ist mehr.
**Anschluss-Szenario:** S-CP-043

### S-CP-043 Visuelles Design-Briefing aus Text-Konzept im Chat generieren

**Wann nutzen (Trigger):** Die Direktorin hat ein Konzept für eine Infografik oder ein Social-Bild im Kopf, kann es aber nicht in ein Designer-Briefing übersetzen — und der Designer fragt nach Spezifikationen. (Quelle: sources/10 S-043)
**Strategisches Ziel:** Einen Text-Konzept-Input in ein strukturiertes, fachsprachliches Design-Briefing überführen, das den Designprozess beschleunigt und Revisions-Runden reduziert.
**Hands-on Ergebnis:** Ein Design-Briefing-Dokument mit Layout-Struktur, Farb-Mood, Typografie-Hinweisen und exaktem Copy-Text — fertig für die Übergabe ans Grafik-Team.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Canvas (für Briefing-Dokument), Wissensordner (Corporate Design Guidelines)
**Vorgehen (3 Schritte):**
1. Die Rohdaten einfügen: Zweck des Visuals, Plattform (LinkedIn, Infografik, Print), Zielgruppe, die drei bis fünf Kernaussagen.
2. Das Modell das Briefing in Designersprache übersetzen lassen — Layout-Logik (F-Pattern, Z-Pattern), Farb-Mood (warm/kalt, Energie-Level), Schrift-Hierarchie, Icon-Stil.
3. Den Copy-Text für jedes visuelle Element verbindlich festlegen — so dass der Designer keinen inhaltlichen Spielraum mehr hat, nur gestalterischen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Creative Director. Übersetze das folgende Konzept [einfügen] in ein Grafiker-Briefing für eine LinkedIn-Infografik. Berücksichtige @Corporate-Design-Ordner. Format: Abschnitte — Ziel & Zielgruppe, Layout-Logik (Leserichtung), Farb-Mood (3 Adjektive), Typografie-Hierarchie, Icon-Stil, exakter Copy-Text je Element."
**Erwartetes Artefakt:** Ein vollständiges Design-Briefing-Dokument im Canvas, das das Grafik-Team ohne Rückfragen umsetzen kann.
**Fallstricke (≥2 spezifisch):**
- Zu viel kreative Freiheit im Briefing → der Designer interpretiert, was eigentlich festgelegt war; Copy-Texte immer verbindlich ausformulieren.
- Corporate Design Guidelines nicht verknüpft → das Modell erfindet Farben und Schriften; den @Wissensordner immer als Anker setzen.
**Anschluss-Szenario:** S-CP-044

### S-CP-044 Retargeting-Texte in einer sequentiellen Chat-Session entwickeln

**Wann nutzen (Trigger):** Eine dreistufige Retargeting-Sequenz (Social Proof → Einwandbehandlung → Dringlichkeit) soll kohärent und tonkonsistent entwickelt werden, ohne dass die Stufen inhaltlich auseinanderdriften. (Quelle: sources/10 S-035)
**Strategisches Ziel:** Den Chat-Verlauf als Kontinuitätspuffer nutzen, damit alle drei Retargeting-Stufen eine gemeinsame Erzähllinie behalten.
**Hands-on Ergebnis:** Drei Ad-Copies (je Primary Text und Headline) für Facebook/Instagram, klar nach Funnel-Stufe differenziert.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Konversationsverlauf für Ton-Kontinuität), Canvas (für simultane Drei-Stufen-Ansicht)
**Vorgehen (4 Schritte):**
1. Die strategische Basis in einer Eröffnungsnachricht festlegen: Produkt-USP, Zielgruppe, maximale Dringlichkeit der Stufe 3.
2. Stufe 1 (Social Proof) allein anfragen und Ton sowie Frame festlegen — dieser Ton wird für alle drei Stufen verbindlich.
3. Stufen 2 und 3 im selben Chat anschließen mit explizitem Eskalationshinweis ("mehr Dringlichkeit als Stufe 2, aber kein Spam-Ton").
4. Alle drei Texte in Canvas nebeneinander stellen und auf Ton-Konsistenz sowie Dringlichkeits-Eskalation prüfen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist Funnel-Copywriter. Schreibe die erste Stufe unserer Retargeting-Sequenz für [Produkt]. Stufe 1 = Social Proof (Kundenstimmen + Vertrauen). Zielgruppe: [Segment], die die Produktseite besucht, aber nicht gekauft haben. Tonalität: warm, empathisch, kein Druck. Format: Primary Text (max. 125 Zeichen), Headline (max. 40 Zeichen)."
**Erwartetes Artefakt:** Drei aufeinander aufbauende Ad-Copy-Sets mit konsistentem Ton und klar gestaffelter Dringlichkeit, importfertig für Meta Ads Manager.
**Fallstricke (≥2 spezifisch):**
- Stufe 3 klingt identisch mit Stufe 1, weil das Modell die Eskalation vergisst → explizit anweisen "20 % mehr Dringlichkeit als die vorige Stufe".
- Dringlichkeits-Formulierungen lösen Meta-Richtlinien-Flags aus → Begriffe wie "Letzter Tag!" oder "Nur noch heute!" vermeiden und das Modell auf Meta-konforme Alternativen hinweisen.
**Anschluss-Szenario:** S-CP-045

### S-CP-045 Onboarding neuer Teammitglieder auf KI-Workflows über Chat-Starter

**Wann nutzen (Trigger):** Eine neue Marketing-Managerin fängt an und soll innerhalb der ersten zwei Wochen die wichtigsten KI-Workflows eigenständig nutzen können — ohne die Direktorin mit Einzel-Erklärungen zu belasten. (Quelle: A-37, A-04)
**Strategisches Ziel:** Einen strukturierten 14-Tage-Chat-Onboarding-Pfad etablieren, der die neue Person Schritt für Schritt an die KI-Workflows heranführt.
**Hands-on Ergebnis:** Ein Onboarding-Plan mit vier konkreten Meilensteinen und je einem Konversations-Starter pro Meilenstein — abgelegt als Dokument im Wissensordner.
**Eingesetzte Langdock-Fähigkeit(en):** Chat, Wissensordner (Onboarding-Dokument), Agent-Konversations-Starter
**Vorgehen (4 Schritte):**
1. Die vier wichtigsten Workflows für eine neue Marketing-Managerin priorisieren (z. B. PTCF-Prompting, Prompt-Bibliothek, Brand-Guardian-Agent, Briefing-Workflow).
2. Für jeden Workflow einen konkreten Konversations-Starter entwerfen, der in einem Durchgang bearbeitbar ist (max. 30 Minuten).
3. Die Meilensteine zeitlich staffeln: Tag 1 (erster Chat), Tag 3 (Agenten testen), Tag 7 (Workflow nachbauen), Tag 14 (eigenen Starter beitragen).
4. Den Plan als Dokument im Onboarding-Wissensordner ablegen und als erster Konversations-Starter des Willkommens-Agents hinterlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist KI-Onboarding-Designerin. Erstelle einen 14-Tage-Onboarding-Plan für eine neue Marketing-Managerin, die Langdock noch nicht kennt. Meilensteine: Tag 1, 3, 7, 14. Je Meilenstein: eine Aufgabe (max. 30 min), ein konkreter Konversations-Starter, ein Erfolgskriterium. Format: strukturierte Tabelle, Markdown."
**Erwartetes Artefakt:** Ein 14-Tage-Onboarding-Dokument im Wissensordner mit vier Meilensteinen, je einem Konversations-Starter und einem messbaren Erfolgskriterium.
**Fallstricke (≥2 spezifisch):**
- Zu viel auf einmal in Tag 1 → neue Personen brauchen einen schnellen Win; Tag 1 muss auf einen einzigen, vollständig abschließbaren Task beschränkt bleiben.
- Onboarding-Dokument liegt nur im Wissensordner, wird aber nie gefunden → als Konversations-Starter im Willkommens-Agent prominent verlinken.
**Anschluss-Szenario:** S-CP-001

## Hinweise & Quellen-Konflikte

- Keine Konflikte zwischen Extracts und Sources festgestellt. Modellnamen sind auf Stand Mai 2026; die Prompting-Logik bleibt bei neuen Releases gültig.
