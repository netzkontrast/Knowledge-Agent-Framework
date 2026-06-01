# Onboarding und Change-Management für den IW-Rollout

> **Was diese Datei abdeckt:**
> - Strukturierter Rollout des "Little Data"-Langdock-Advisors am Institut der deutschen Wirtschaft (IW Köln)
> - Team-Onboarding, KI-Champions je Wissenschaftsbereich, Schulung und Adoptionsmetriken
> - Governance-Freigabe, Nutzungs-Policy, Eskalation und Skalierung unter Wahrung der IW-Neutralität
>
> **Was diese Datei NICHT abdeckt:**
> - DSGVO-, RBAC- und Audit-Log-Detailmechanik → siehe `08-sicherheit-und-governance`
> - KI-Champion-Curriculum und Marketing-Quick-Wins im Detail → siehe `09-marketing-praxis`
> - Plattform-Grundlagen, Modelle und Kosten → siehe `00-langdock-uebersicht`, `07-modelle-und-kosten`
> - Inhaltliche IW-Use-Cases (iwd-Übersetzung, Pressemitteilung) → siehe `14-iw-use-cases`

## Marketing-Szenarien aus dieser Domäne

Die folgenden zwanzig Szenarien (Präfix S-OC) bilden den Einführungs- und Veränderungs-Pfad für den "Little Data"-Langdock-Advisor am IW Köln ab. Sie führen von einem eng umrissenen Pilot mit einem einzelnen Kompetenzfeld über die Befähigung von KI-Champions je Wissenschaftsbereich, die Governance-Freigabe durch Datenschutz, Recht und CISO, die Schulung in Wissenschaftskommunikation mit KI bis hin zur kontrollierten Skalierung auf weitere Bereiche. Jedes Szenario respektiert die institutionelle Realität des IW: die strikte sachlich-evidenzbasierte Tonalität, die ordnungspolitische Ausrichtung, den redaktionellen Workflow von der Forschung über iwd und IW Medien bis zur Distribution sowie den fundamentalen Neutralitätsanspruch eines arbeitgebernahen Forschungsinstituts. Alle Artefakte sind Beratungsgrundlagen; jede Governance-Entscheidung und jede externe Handlung bleibt menschlich verantwortet (Human-in-the-Loop). Die Kette schließt sich bewusst: S-OC-020 führt zurück zu S-OC-001, weil Skalierung nach IW-Logik stets ein neuer, sauber pilotierter Anlauf ist.

### S-OC-001 Pilot mit einem einzelnen Kompetenzfeld aufsetzen

**Wann nutzen (Trigger):** Die Kommunikationsleitung will den Langdock-Advisor nicht institutsweit, sondern zunächst in einem klar abgegrenzten Kompetenzfeld (z. B. "Digitalisierung & Klimawandel") erproben, um Risiken und Akzeptanz kontrolliert zu testen, bevor breiter ausgerollt wird. (Quelle: research/11 — AI-Adoption über Pilotphasen und "human in the loop"; Quelle: research/10 — Kompetenzfelder/Themencluster als organisatorische Einheiten)
**Strategisches Ziel:** Einen eng umrissenen, messbaren Pilot etablieren, der den Mehrwert des Advisors an einem realen IW-Workflow (Forschung → iwd) belegt, ohne das gesamte Institut zu exponieren.
**Hands-on Ergebnis:** Ein einseitiges Pilot-Charter-Dokument mit Scope, Erfolgskriterien, Laufzeit und benanntem Pilot-Owner für genau ein Kompetenzfeld.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Charter; Knowledge (Wissensordner) für das Organisationsprofil und die Workflow-Beschreibung.
**Vorgehen (4 Schritte):**
1. Das Kompetenzfeld, seine typischen Publikationsformate (z. B. IW-Kurzbericht) und den Aufbereitungs-Workflow im Wissensordner hinterlegen.
2. Im Canvas Pilot-Scope, drei messbare Erfolgskriterien und eine feste Laufzeit (z. B. 6 Wochen) definieren.
3. Einen Pilot-Owner und zwei freiwillige Test-Anwender aus dem Kompetenzfeld benennen.
4. Das Charter der Kommunikationsleitung zur Freigabe vorlegen (menschliche Entscheidung).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Rollout-Berater. Erstelle aus der Workflow-Beschreibung im Wissensordner ein einseitiges Pilot-Charter für den Langdock-Advisor im Kompetenzfeld 'Digitalisierung & Klimawandel'. Kontext: 6 Wochen Laufzeit, ein Pilot-Owner, zwei Test-Anwender. Format: Abschnitte Scope, Erfolgskriterien (drei messbare), Out-of-Scope, Verantwortlichkeiten. Erfinde keine Erfolgszahlen; markiere offene Punkte als 'mit Leitung zu klären'."
**Erwartetes Artefakt:** Pilot-Charter (Canvas, ca. 1 Seite) mit Scope, drei Erfolgskriterien, Laufzeit und Verantwortlichkeiten.
**Fallstricke (≥2 spezifisch):**
- Ein zu breiter Scope verwässert die Messbarkeit und zieht unfreigegebene Use-Cases hinein → den Pilot strikt auf ein Kompetenzfeld und maximal zwei Formate begrenzen.
- Erfolgskriterien als reine "Vanity-Metriken" (Anzahl Prompts) definiert → mindestens ein qualitatives Kriterium (Zeitersparnis bei iwd-Aufbereitung) verankern, das den IW-Workflow widerspiegelt.
**Anschluss-Szenario:** S-OC-002

### S-OC-002 Governance-Freigabe durch Datenschutz, Recht und CISO vor Rollout einholen

**Wann nutzen (Trigger):** Bevor der Pilot überhaupt produktiv geht, fordern Datenschutzbeauftragte, Rechtsabteilung und CISO einen gebündelten Freigabe-Nachweis (EU-Hosting, AVV, Zertifikate, Zero-Data-Retention), da das IW als arbeitgebernahes Institut auf unangreifbare Compliance angewiesen ist. (Quelle: 08 — DSGVO/EU-Hosting, ISO 27001/SOC 2, "Was die Rechtsabteilung wissen muss"; Quelle: research/11 — DSGVO-Pflichten und AVV als nicht-verhandelbare Tier-1-Anforderung)
**Strategisches Ziel:** Den juristisch-technischen Freigabe-Engpass auflösen, indem alle Compliance-Nachweise prüffähig konsolidiert werden — Rechtsgrundlage vor Technologie.
**Hands-on Ergebnis:** Ein Governance-Freigabe-Dossier (One-Pager plus Anhänge), das Datenschutz, Recht und CISO ohne Rückfragen abzeichnen können.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für AVV, ISO-27001-/SOC-2-Testat und Sub-Prozessor-Liste; Canvas / Document Editor für das Dossier.
**Vorgehen (4 Schritte):**
1. AVV, Zertifikate, EU-Hosting-Architektur und Trainings-Opt-out-Zusage in einen Wissensordner legen.
2. Im Canvas je Stakeholder (Datenschutz / Recht / CISO) die jeweils relevanten Nachweise tabellarisch zuordnen.
3. Jede Aussage mit dem konkreten Quelldokument belegen und offene Punkte als "offen" markieren.
4. Das Dossier den drei Freigabe-Instanzen zur formalen Zeichnung übergeben (menschliche Entscheidung).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Compliance-Referent. Erstelle aus den Dokumenten im Wissensordner ein Governance-Freigabe-Dossier für Datenschutz, Rechtsabteilung und CISO des IW. Format: je Anforderung eine Zeile mit Status, Fundstelle und zuständiger Instanz. Belege EU-Hosting, AVV und Zero-Data-Retention je mit Quelle. Erfinde keine Klauseln; markiere Lücken explizit als 'offen'."
**Erwartetes Artefakt:** Governance-Freigabe-Dossier mit Anforderungs-Status-Tabelle, Quellenverweisen und markierten offenen Punkten.
**Fallstricke (≥2 spezifisch):**
- Der Standard-AVV deckt nur die Langdock-Plattform, nicht den angebundenen Modell-Provider → die provider-seitige Zero-Data-Retention-Zusage separat beilegen.
- Zertifikate gelten nur zum Audit-Zeitraum → das Berichtsdatum mitführen und eine Re-Prüfung vor Skalierung terminieren.
**Anschluss-Szenario:** S-OC-003

### S-OC-003 KI-Nutzungs-Policy für das Institut entwerfen

**Wann nutzen (Trigger):** Nach der technischen Freigabe verlangt die Geschäftsführung eine schriftliche, institutsweite KI-Nutzungs-Policy, die festlegt, welche Daten in den Advisor dürfen, wer redaktionell verantwortet und wie die Neutralität gewahrt bleibt. (Quelle: research/11 — "unteilbare redaktionelle Verantwortung", Organisatorische Safeguards, KI-Literacy; Quelle: 08 — KI-Nutzungsrichtlinie, Zero-Training-Garantie)
**Strategisches Ziel:** Einen verbindlichen Rahmen schaffen, der Shadow AI verhindert und die Mitarbeitenden befähigt, den Advisor sicher und neutralitätskonform zu nutzen.
**Hands-on Ergebnis:** Eine KI-Nutzungs-Policy (Entwurf) mit Do's, Don'ts, Datenklassen und redaktioneller Verantwortungsklausel.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für die FactoryWisskomm-/IQ_HKom-Leitlinien und die interne Datenklassifikation.
**Vorgehen (4 Schritte):**
1. Die drei Governance-Tiers (rechtliche Pflichten, organisatorische Safeguards, professionelle Standards) als Gliederung übernehmen.
2. Im Canvas Datenklassen definieren: was nie in den Advisor darf (unveröffentlichte Gutachten, embargobehaftete Daten) vs. was erlaubt ist.
3. Die Klausel der unteilbaren redaktionellen Verantwortung verankern: KI ist Assistenz, nie Autor.
4. Den Entwurf der Geschäftsführung und dem Betriebsrat zur Abstimmung vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Policy-Berater. Entwirf aus den KI-Leitlinien im Wissensordner eine institutsweite KI-Nutzungs-Policy für das IW. Format: Abschnitte Geltungsbereich, erlaubte/verbotene Datenklassen, redaktionelle Verantwortung, Kennzeichnung, Schulungspflicht. Verankere die 'unteilbare redaktionelle Verantwortung'. Stütze jede Pflicht auf eine Quelle im Ordner; markiere Lücken."
**Erwartetes Artefakt:** KI-Nutzungs-Policy-Entwurf mit Datenklassen, Verantwortungsklausel und Schulungspflicht.
**Fallstricke (≥2 spezifisch):**
- Eine Policy ohne benannte erlaubte Alternative treibt Mitarbeitende zurück in private Tools → jede Verbots-Regel mit der genehmigten Advisor-Entsprechung koppeln.
- Embargo-/Sperrfrist-Daten werden nicht als eigene Datenklasse geführt → unveröffentlichte Studien und embargobehaftete Pressetexte explizit als "nie ohne Freigabe" klassifizieren.
**Anschluss-Szenario:** S-OC-004

### S-OC-004 Change-Story für die Geschäftsführung formulieren

**Wann nutzen (Trigger):** Die Direktion (z. B. der wissenschaftliche Geschäftsführer) muss den Rollout verstehen und tragen; sie braucht eine Change-Story, die den Mehrwert für die Wissenschaftskommunikation und den Schutz der Neutralität verbindet — ohne Marketing-Hyperbel. (Quelle: 08 — "Was die Marketing-Direktorin der Geschäftsführung sagt"; Quelle: research/10 — Direktor/Geschäftsführung als Figuren, sachlich-restriktive Tonalität)
**Strategisches Ziel:** Sponsorship auf Leitungsebene sichern, indem der Advisor als Risikominimierung und Effizienzhebel für den Übersetzungs-Workflow positioniert wird, nicht als technische Spielerei.
**Hands-on Ergebnis:** Ein Change-Story-One-Pager für die Geschäftsführung mit Problem, Lösung, Leitplanken und nächstem Entscheidungsschritt.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den One-Pager; Knowledge (Wissensordner) für Pilot-Charter und Governance-Dossier als Faktenbasis.
**Vorgehen (4 Schritte):**
1. Den konkreten Schmerzpunkt benennen: Übersetzung dichter Studien in iwd/Pressetexte unter Zeitdruck.
2. Im Canvas die Lösung in IW-Sprache fassen: Assistenz für den Aufbereitungs-Schritt, Mensch entscheidet.
3. Die drei wichtigsten Leitplanken (EU-Hosting, redaktionelle Verantwortung, Neutralität) sichtbar machen.
4. Einen klaren Entscheidungs-Call-to-Action (Pilot-Freigabe) formulieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Leitungs-Kommunikation. Formuliere aus Pilot-Charter und Governance-Dossier im Wissensordner eine Change-Story für die IW-Geschäftsführung. Ton: sachlich, evidenzbasiert, ohne Werbe-Adjektive. Format: Problem, Lösung, drei Leitplanken, Entscheidungsfrage. Maximal eine Seite. Verzichte auf 'bahnbrechend' o. Ä."
**Erwartetes Artefakt:** Change-Story-One-Pager (ca. 1 Seite) mit Problem, Lösung, Leitplanken und Entscheidungs-Call-to-Action.
**Fallstricke (≥2 spezifisch):**
- Promotionaler Ton verletzt den IW-Neutralitätsanspruch → Werbe-Adjektive hart unterdrücken, bei "signifikant/strukturell/evidenzbasiert" bleiben.
- Effizienz wird über Compliance gestellt → die Reihenfolge Risikominimierung-zuerst beibehalten, wie es das arbeitgebernahe Profil verlangt.
**Anschluss-Szenario:** S-OC-005

### S-OC-005 KI-Champions je Wissenschaftsbereich identifizieren und befähigen

**Wann nutzen (Trigger):** Der Rollout soll dezentral getragen werden; je Wissenschaftsbereich (Staat/Steuern, Bildung/Innovation, Digitalisierung/Klima u. a.) wird ein KI-Champion gesucht, der die Schmerzpunkte des Bereichs kennt und als Multiplikator wirkt. (Quelle: 09 — "KI-Champions identifizieren und befähigen", föderiertes Governance-Modell; Quelle: research/10 — Wissenschaftsbereiche/Kompetenzfelder)
**Strategisches Ziel:** Ein föderiertes Champion-Netzwerk aufbauen, das Agenten und Prompt-Bibliotheken bereichsnah pflegt, während Sicherheit und Abrechnung zentral bleiben.
**Hands-on Ergebnis:** Eine Champion-Landkarte mit Rolle, Verantwortlichkeiten und Auswahlkriterien je Wissenschaftsbereich.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Landkarte; Knowledge (Wissensordner) für das Organigramm der Wissenschaftsbereiche.
**Vorgehen (4 Schritte):**
1. Die Wissenschaftsbereiche aus dem Organigramm im Wissensordner auflisten.
2. Im Canvas je Bereich ein Champion-Profil definieren (Domänenkenntnis, Akzeptanz im Team, Compliance-Bewusstsein).
3. Verantwortlichkeiten festlegen: Agenten bauen, Prompt-Bibliothek pflegen, Peer-Training geben.
4. Die Landkarte den Bereichsleitungen zur Nominierung vorlegen (menschliche Entscheidung).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für KI-Champion-Strukturen. Erstelle aus dem Organigramm im Wissensordner eine Champion-Landkarte für die IW-Wissenschaftsbereiche. Format: Tabelle (Bereich, Champion-Profil/Auswahlkriterien, Verantwortlichkeiten, zentrale vs. dezentrale Aufgaben). Halte fest, dass Sicherheit und Abrechnung zentral bleiben, Agenten-Kreation dezentral."
**Erwartetes Artefakt:** Champion-Landkarte (Tabelle) mit Profilen, Verantwortlichkeiten und föderierter Governance-Abgrenzung je Bereich.
**Fallstricke (≥2 spezifisch):**
- Champions ohne Compliance-Wissen verbreiten unsichere Praktiken → Auswahlkriterium "kennt DSGVO-/Neutralitäts-Leitplanken" verbindlich machen.
- Reine Technik-Affinität statt Domänenkenntnis → Auswahl an realen Bereichs-Schmerzpunkten (z. B. iwd-Aufbereitung) ausrichten, nicht nur an Tool-Begeisterung.
**Anschluss-Szenario:** S-OC-006

### S-OC-006 7-Wochen-Onboarding-Curriculum für das Kommunikationsteam aufsetzen

**Wann nutzen (Trigger):** Das Kommunikationsteam und IW Medien sollen strukturiert befähigt werden; die Leitung will einen Wochenplan, der von Datenschutz-Grundlagen bis zu fortgeschrittener Aufbereitung führt und Shadow AI vermeidet. (Quelle: 09 — "7-Wochen-Curriculum für KI-Adoption im Marketing-Team"; Quelle: research/10 — Content-Production-Reality, Aufbereitungs-Workflow)
**Strategisches Ziel:** Das gesamte Kommunikationsteam in sieben Wochen von Grundlagen zu produktiver, compliance-konformer Nutzung führen, abgestimmt auf IW-Formate.
**Hands-on Ergebnis:** Ein 7-Wochen-Curriculum mit Lernzielen, Übungen und IW-spezifischen Praxisaufgaben je Woche.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Lehrplan; Knowledge (Wissensordner) für die KI-Nutzungs-Policy und Format-Definitionen (iwd, Pressemitteilung).
**Vorgehen (4 Schritte):**
1. Woche 1-2 auf Datenschutz/AVV und Prompt-Grundlagen (inkl. IW-Tonalität, "Sie"-Form) legen.
2. Woche 3-4 auf Wissensordner-Nutzung und Agenten-Konfiguration für IW-Formate ausrichten.
3. Woche 5-7 auf Aufbereitung (iwd-Übersetzung), Workflows und Qualitätssicherung anlegen.
4. Je Woche eine reale IW-Praxisaufgabe und ein Lernziel verankern; Plan der Leitung vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Lerndesign-Berater. Erstelle aus Policy und Format-Definitionen im Wissensordner ein 7-Wochen-Onboarding-Curriculum für das IW-Kommunikationsteam. Format: je Woche Lernziel, Inhalt, eine IW-Praxisaufgabe (z. B. iwd-Übersetzung eines Kurzberichts), Compliance-Hinweis. Beginne mit Datenschutz; ende mit Qualitätssicherung."
**Erwartetes Artefakt:** 7-Wochen-Curriculum (Tabelle/Liste) mit Lernzielen, Inhalten, IW-Praxisaufgaben und Compliance-Hinweisen je Woche.
**Fallstricke (≥2 spezifisch):**
- Strukturierte CSV-Daten werden fälschlich im Wissensordner geübt → Woche 3 explizit klären, dass tabellarische Daten in den Data Analyst gehören, nicht in den RAG-Ordner.
- Curriculum ignoriert die IW-"Sie"-Form und Sachlichkeit → Prompt-Übungen müssen formelle, evidenzbasierte Tonalität von Anfang an trainieren.
**Anschluss-Szenario:** S-OC-007

### S-OC-007 Schulung "Wissenschaftskommunikation mit KI" konzipieren

**Wann nutzen (Trigger):** Über das reine Tool-Training hinaus braucht das Team eine inhaltliche Schulung, wie KI in der Wissenschaftskommunikation eingesetzt wird, ohne Übersetzungs-Distortion, Tone-Drift oder Verletzung des Neutralitätsanspruchs. (Quelle: research/11 — Wissenschaftskommunikation/Übersetzungs-Disziplin, Leibniz-Grundsätze, Tone-Drift-Risiko; Quelle: research/10 — Übersetzungs-Rolle des iwd)
**Strategisches Ziel:** Die Mitarbeitenden befähigen, dichte Ökonometrie verständlich zu übersetzen und dabei Unsicherheiten und Forschungslücken ehrlich zu kommunizieren — KI als Assistenz, nicht als Faktenquelle.
**Hands-on Ergebnis:** Ein Schulungskonzept mit Modulen, Beispielen guter/schlechter Übersetzung und Anti-Tone-Drift-Regeln.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die Leibniz-Grundsätze und iwd-Stilbeispiele.
**Vorgehen (4 Schritte):**
1. Die Übersetzungs-Disziplin als Kernmodul definieren: Kernmechanismus statt Methodik, ehrliche Unsicherheit.
2. Im Canvas Vorher/Nachher-Beispiele kuratieren (akademischer Caveat → klare iwd-Aussage ohne Distortion).
3. Anti-Tone-Drift-Regeln formulieren: keine Werbe-Superlative, Wahrung der Neutralität.
4. Eine Abschlussübung verankern: Übersetzung eines IW-Reports mit Pflicht-Faktencheck durch einen Menschen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Wissenschaftskommunikation. Konzipiere aus den Leibniz-Grundsätzen und iwd-Stilbeispielen im Wissensordner eine Schulung 'Wissenschaftskommunikation mit KI' für das IW. Format: Module mit Lernziel, je ein Vorher/Nachher-Beispiel, Anti-Tone-Drift-Regeln, Abschlussübung. Betone: Unsicherheiten und Forschungslücken ehrlich ausweisen, KI nie als Faktenquelle."
**Erwartetes Artefakt:** Schulungskonzept mit Modulen, Vorher/Nachher-Beispielen, Anti-Tone-Drift-Regeln und Abschlussübung.
**Fallstricke (≥2 spezifisch):**
- Glättung von Unsicherheiten zugunsten einer "knackigeren" Aussage → Schulung muss das explizite Ausweisen von Konfidenzintervallen und Forschungsdesideraten einüben.
- KI-Halluzination kausaler Zusammenhänge → Regel verankern, dass nur aus dem bereitgestellten Quelltext gearbeitet wird, keine Extrapolation.
**Anschluss-Szenario:** S-OC-008

### S-OC-008 Geteilte Prompt-Bibliothek aufbauen

**Wann nutzen (Trigger):** Mehrere Champions und Teammitglieder erfinden Prompts doppelt und in schwankender Qualität; die Leitung will eine kuratierte, geteilte Prompt-Bibliothek als Single-Source-of-Truth für IW-Formate. (Quelle: 09 — Champions pflegen Prompt-Bibliotheken, zentralisierte Prompt-Bibliotheken; Quelle: research/10 — wiederkehrende High-Volume-Tasks)
**Strategisches Ziel:** Konsistente, neutralitätskonforme Ergebnisse sichern und den Einarbeitungsaufwand senken, indem geprüfte Prompts zentral verfügbar und versioniert sind.
**Hands-on Ergebnis:** Eine strukturierte Prompt-Bibliothek mit Kategorien (iwd-Übersetzung, Pressemitteilung, Social-Atomisierung) und Qualitätskriterien.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) als Ablage der Bibliothek; Canvas / Document Editor für Strukturierung und Versionierung.
**Vorgehen (4 Schritte):**
1. Die häufigsten IW-Aufgaben aus dem Workflow als Kategorien festlegen.
2. Je Kategorie zwei bis drei geprüfte PTCF-Prompts (Persona, Task, Context, Format) sammeln.
3. Im Canvas Qualitätskriterien und ein Versions-/Freigabe-Feld je Prompt ergänzen.
4. Die Bibliothek als "v1.0" im Wissensordner ablegen und alle Champions darauf verlinken.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Prompt-Bibliotheks-Kurator. Strukturiere aus den vorhandenen Team-Prompts im Wissensordner eine geteilte Prompt-Bibliothek für das IW. Format: Kategorien (iwd-Übersetzung, Pressemitteilung, Social-Atomisierung), je Prompt Persona/Task/Context/Format, Qualitätskriterium und Versionsfeld. Markiere ungeprüfte Prompts als 'Review offen'."
**Erwartetes Artefakt:** Prompt-Bibliothek v1.0 (Wissensordner) mit kategorisierten, versionierten PTCF-Prompts und Qualitätskriterien.
**Fallstricke (≥2 spezifisch):**
- Unkuratierte Prompts verbreiten Tone-Drift institutsweit → nur geprüfte, neutralitätskonforme Prompts als "freigegeben" markieren.
- Memory-Reste alter Kampagnen verfälschen die Bibliotheks-Prompts → bei der Kuratierung Memory deaktivieren und auf reine PTCF-Struktur achten.
**Anschluss-Szenario:** S-OC-009

### S-OC-009 Wissensordner-Struktur für das Team festlegen

**Wann nutzen (Trigger):** Mit wachsender Nutzung droht Wildwuchs bei Wissensordnern; die Leitung will eine klare Ordner-Taxonomie, die sensible von freigegebenen Inhalten trennt und Retrieval-Qualität sichert. (Quelle: 08 — Group-Sharing/Berechtigungsmodell, sensible vs. offene Ordner; Quelle: 09 — Wissensordner-Nutzung, RAG-Limits)
**Strategisches Ziel:** Eine konsistente Ordner-Architektur etablieren, die Vertraulichkeit (Gutachten) wahrt, RAG-Genauigkeit sichert und Champions sauberes Teilen ermöglicht.
**Hands-on Ergebnis:** Ein Wissensordner-Strukturplan mit Benennung, Sensitivitätsstufen und Freigabelogik.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Strukturplan; Knowledge (Wissensordner) für die bestehende Inhalts-Taxonomie.
**Vorgehen (4 Schritte):**
1. Inhaltstypen erfassen (Brand-Voice, Format-Vorlagen, Glossar vs. sensible Gutachten).
2. Im Canvas eine Ordner-Taxonomie mit Sensitivitätsstufen (offen / bereichsintern / vertraulich) entwerfen.
3. Je Ordner die Group-Sharing-Rolle und das RAG-Limit (max. Dateien) festlegen.
4. Den Plan mit den Champions abstimmen und als Konvention verankern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Wissensordner-Architektur. Entwirf aus der Inhalts-Taxonomie im Wissensordner einen Strukturplan für das IW-Team. Format: Tabelle (Ordnername, Inhaltstyp, Sensitivitätsstufe, Group-Sharing-Rolle, RAG-Hinweis). Trenne offene Format-Vorlagen klar von vertraulichen Gutachten. Verweise auf das Datei-Limit pro Ordner."
**Erwartetes Artefakt:** Wissensordner-Strukturplan mit Taxonomie, Sensitivitätsstufen und Freigabe-/RAG-Hinweisen.
**Fallstricke (≥2 spezifisch):**
- Vertrauliche Gutachten landen in einem breit geteilten Ordner → vertrauliche Stufe von Anfang an mit restriktiver Group-Sharing-Rolle koppeln.
- Überfüllte Ordner (>1000 Dateien) verschlechtern das Retrieval → pro Ordner ein Datei-Limit und eine thematische Trennung festschreiben.
**Anschluss-Szenario:** S-OC-010

### S-OC-010 Rollen und Rechte (RBAC) für sensible Gutachten konfigurieren

**Wann nutzen (Trigger):** Auftragsforschung und IW-Gutachten enthalten vertrauliche, teils embargobehaftete Inhalte; ein Review zeigt, dass Zugriffsrechte auf entsprechende Agenten und Ordner zu breit gesetzt sind. (Quelle: 08 — RBAC/Granular-Rollen, Least Privilege, sensible Ressourcen; Quelle: research/10 — IW-Gutachten als formell beauftragte, vertrauliche Expertise)
**Strategisches Ziel:** Den Zugriff auf Gutachten-bezogene Ressourcen nach dem Least-Privilege-Prinzip absichern, sodass nur autorisierte Personen Zugriff haben.
**Hands-on Ergebnis:** Eine RBAC-Mapping-Tabelle für Gutachten-Ressourcen mit priorisierter Korrektur-Liste.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für den exportierten Ist-Zustand der Freigaben; Canvas / Document Editor für die Mapping-Tabelle. (Die eigentliche Rollenänderung nimmt der Admin in den Workspace-Einstellungen vor, nicht die Plattform-KI.)
**Vorgehen (4 Schritte):**
1. Den Ist-Zustand der Rollen je Gutachten-Agent und -Ordner als Liste in den Wissensordner geben.
2. Im Canvas ein Soll-Mapping erstellen: Job-Rolle → Plattform-Rolle (Owner/Editor/Viewer) → Ressource.
3. Jede Über-Berechtigung markieren (z. B. externer Mitarbeiter mit Owner auf Gutachten-Ordner).
4. Eine priorisierte Korrektur-Liste für den Admin ableiten, kritischste Fälle zuerst.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Access-Governance-Berater. Gleiche den Ist-Zustand der Rollen für Gutachten-Ressourcen im Wissensordner gegen Least Privilege ab. Format: Mapping-Tabelle (Job-Rolle, Soll-Rolle, Ressource) plus priorisierte Korrektur-Liste. Behandle embargobehaftete Gutachten als höchste Sensitivität. Erfinde keine Nutzer; arbeite nur mit der Liste."
**Erwartetes Artefakt:** RBAC-Mapping-Tabelle für Gutachten-Ressourcen mit priorisierter Korrektur-Liste.
**Fallstricke (≥2 spezifisch):**
- Manuell korrigierte Rollen werden beim nächsten SCIM-Sync überschrieben → die Korrektur an der Gruppen-/Verzeichnisquelle vornehmen, nicht nur lokal.
- Workspace-Admin-Rechte werden mit Owner-Rechten auf einer Ressource verwechselt → klarstellen, dass Abrechnung und Limits nur Workspace-Admins vorbehalten sind.
**Anschluss-Szenario:** S-OC-011

### S-OC-011 Editorial-Workflow-Integration (Forschung → iwd/Medien → Distribution) entwerfen

**Wann nutzen (Trigger):** Der Advisor soll nicht isoliert genutzt, sondern in den realen IW-Produktionsfunnel eingebettet werden: vom fertigen Forschungs-PDF über die iwd-/Medien-Aufbereitung bis zur PR- und Social-Distribution. (Quelle: research/10 — typischer Content-Workflow in vier Stufen; Quelle: 09 — Content-Supply-Chain-Playbook, Human-in-the-Loop-Tore)
**Strategisches Ziel:** Klare Übergabepunkte und Qualitäts-Tore definieren, an denen der Advisor assistiert und ein Mensch vor jeder Veröffentlichung entscheidet.
**Hands-on Ergebnis:** Ein Workflow-Diagramm in Textform mit Advisor-Touchpoints und Human-in-the-Loop-Gates je Stufe.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Workflow-Beschreibung; Knowledge (Wissensordner) für die Workflow- und Format-Dokumentation.
**Vorgehen (4 Schritte):**
1. Die vier Stufen (Forschung, Aufbereitung, Distribution, Amplifikation) aus dem Wissensordner übernehmen.
2. Im Canvas je Stufe den Advisor-Touchpoint benennen (z. B. iwd-Übersetzung in Stufe 2).
3. Vor jeder Veröffentlichung ein verbindliches Human-in-the-Loop-Gate setzen.
4. Die Übergabe-Artefakte je Stufe definieren und die Beschreibung mit dem Team validieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Workflow-Berater. Beschreibe aus der Workflow-Doku im Wissensordner die Advisor-Integration in den IW-Editorial-Funnel. Format: je Stufe (Forschung, Aufbereitung, Distribution, Amplifikation) ein Block mit Input, Advisor-Touchpoint, Human-Gate, Output-Artefakt. Mache klar, dass vor jeder Veröffentlichung ein Mensch freigibt."
**Erwartetes Artefakt:** Workflow-Beschreibung mit Advisor-Touchpoints, Human-in-the-Loop-Gates und Artefakten je Stufe.
**Fallstricke (≥2 spezifisch):**
- Ein fehlendes Human-Gate vor der Distribution lässt ungeprüfte Texte in den Nachrichtenzyklus → vor PR-/Social-Ausspielung zwingend menschliche Freigabe verankern.
- Embargo-/Sperrfrist-Logik wird im automatisierten Schritt ignoriert → Sperrfrist-Hinweise als Pflichtfeld in der Aufbereitungsstufe führen.
**Anschluss-Szenario:** S-OC-012

### S-OC-012 Qualitäts- und Neutralitäts-Guardrails verankern

**Wann nutzen (Trigger):** Die Leitung sorgt sich, dass KI-Texte unbemerkt von der sachlich-ordnungspolitischen IW-Tonalität abdriften oder Spin erzeugen; es braucht prüfbare Guardrails für Qualität und Neutralität. (Quelle: research/11 — Neutralitätsanspruch, Tone-Drift, Spin-Verbot/DRPR; Quelle: research/10 — Brand Voice & Editorial Standards, Neutralität vs. Arbeitgebernähe)
**Strategisches Ziel:** Einen ordnungspolitischen Check und einen Anti-Spin-Filter als feste Qualitätssicherung etablieren, der jede KI-gestützte Ausgabe vor Freigabe durchläuft.
**Hands-on Ergebnis:** Eine Guardrail-Checkliste mit konkreten Prüfkriterien für Tonalität, Evidenzbindung und Neutralität.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die Brand-Voice-Standards und Neutralitäts-Grundsätze.
**Vorgehen (4 Schritte):**
1. Aus den Brand-Voice-Standards die IW-Tonalitätskriterien extrahieren (sachlich, evidenzbasiert, keine Alarmistik).
2. Im Canvas Prüfpunkte formulieren: keine Werbe-Superlative, Aussagen aus Daten abgeleitet, keine Datenauslassung (Spin).
3. Einen Neutralitäts-Check ergänzen: Trennung von empirischer Aussage und Wertung.
4. Die Checkliste als Pflicht-Gate in den Freigabe-Workflow integrieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Qualitäts- und Neutralitäts-Auditor. Erstelle aus den Brand-Voice-Standards im Wissensordner eine Guardrail-Checkliste für KI-gestützte IW-Texte. Format: Prüfpunkte zu Tonalität, Evidenzbindung, Anti-Spin (keine Datenauslassung) und Neutralität, je mit Bestanden/Nicht-bestanden. Sei pedantisch; markiere jeden Werbe-Superlativ als Verstoß."
**Erwartetes Artefakt:** Guardrail-Checkliste mit Prüfpunkten zu Tonalität, Evidenzbindung, Anti-Spin und Neutralität.
**Fallstricke (≥2 spezifisch):**
- Spin durch selektive Datenauslassung bleibt unbemerkt → Prüfpunkt "wurden widersprechende Daten weggelassen?" explizit aufnehmen (DRPR-konform).
- Der Check fokussiert nur Rechtschreibung statt Markenstimme → Prüfkriterien zwingend auf Tonalitäts- und Neutralitätsbrüche ausrichten.
**Anschluss-Szenario:** S-OC-013

### S-OC-013 Kennzeichnungs-Policy für KI-Inhalte festlegen

**Wann nutzen (Trigger):** Erste KI-gestützte Grafiken und Texte stehen vor der Veröffentlichung; Recht und Wissenschaftskommunikation fordern eine einheitliche Kennzeichnung gemäß EU AI Act und wissenschaftlicher Transparenz. (Quelle: research/11 — Transparenz-Tagging, § 50/Art. 50 EU AI Act, KI-Bilder nie als Evidenz; Quelle: 08 — Kennzeichnungspflicht UWG/AI Act, Disclaimer-Bausteine)
**Strategisches Ziel:** Transparenz- und Abmahnrisiken vermeiden, indem KI-generierte Inhalte einheitlich und regelkonform gekennzeichnet werden — passend zur IW-Glaubwürdigkeit.
**Hands-on Ergebnis:** Eine Kennzeichnungs-Policy mit Disclaimer-Bausteinen je Inhaltstyp und Regeln für KI-Bilder.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für AI-Act-Fristen und Transparenz-Leitlinien; Web-Search nur zur Verifikation der aktuell gültigen Art.-50-Frist gegen eine Primärquelle.
**Vorgehen (4 Schritte):**
1. Inhaltstypen erfassen (KI-unterstützte Texte, KI-Grafiken, KI-Übersetzungen).
2. Im Wissensordner prüfen, welche Inhalte kennzeichnungspflichtig sind.
3. Per Web-Search die aktuell gültige Art.-50-Frist gegen eine Primärquelle verifizieren und Quelle notieren.
4. Im Canvas Disclaimer-Bausteine je Typ formulieren; KI-Bilder nie als empirische Evidenz zulassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Transparenz-Compliance. Erstelle aus den AI-Act-Fristen im Wissensordner eine Kennzeichnungs-Policy für KI-Inhalte des IW. Format: Tabelle (Inhaltstyp, kennzeichnungspflichtig ja/nein, Disclaimer-Baustein). Verankere: KI-Bilder nie als empirische Evidenz. Verifiziere die aktuelle Art.-50-Frist per Web-Search und nenne die Quelle."
**Erwartetes Artefakt:** Kennzeichnungs-Policy mit Disclaimer-Bausteinen je Inhaltstyp und verifizierter AI-Act-Frist.
**Fallstricke (≥2 spezifisch):**
- KI-Grafiken werden als Beleg für reale Forschungsergebnisse genutzt → Regel verankern, dass KI-Bilder nie als empirische Evidenz dienen dürfen (AI-Act-konform).
- Eine veraltete AI-Act-Frist im Ordner führt zu falscher Planung → den per Web-Search verifizierten Stichtag mit Quelle und Abrufdatum dokumentieren.
**Anschluss-Szenario:** S-OC-014

### S-OC-014 Einwand-Playbook für skeptische Wissenschaftler erstellen

**Wann nutzen (Trigger):** Ökonominnen und Ökonomen im Institut äußern Skepsis ("KI gefährdet die methodische Strenge und Neutralität"); die Champions brauchen ein Playbook, das diese Einwände evidenzbasiert und respektvoll adressiert. (Quelle: research/11 — Neutralitätsanspruch, Hallucination-/Bias-Risiken, redaktionelle Verantwortung; Quelle: research/10 — methodische Unangreifbarkeit als Glaubwürdigkeitsbasis)
**Strategisches Ziel:** Akzeptanz bei der wissenschaftlichen Kernbelegschaft erhöhen, indem berechtigte Sorgen anerkannt und mit den realen Leitplanken des Advisors entkräftet werden.
**Hands-on Ergebnis:** Ein Einwand-Playbook (Q&A) mit den häufigsten Skepsis-Argumenten und belegten Antworten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Playbook; Knowledge (Wissensordner) für KI-Nutzungs-Policy, Guardrails und Anti-Hallucination-Regeln.
**Vorgehen (4 Schritte):**
1. Die fünf häufigsten Einwände sammeln (Halluzination, Neutralitätsverlust, Datenabfluss, Methodendrift, Autorenschaft).
2. Im Canvas je Einwand eine sachliche Anerkennung und eine belegte Antwort formulieren.
3. Jede Antwort an eine reale Leitplanke knüpfen (z. B. "nur aus Quelltext", EU-Hosting, Human-Gate).
4. Das Playbook den Champions als Gesprächsleitfaden übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Change-Kommunikation. Erstelle aus Policy und Guardrails im Wissensordner ein Einwand-Playbook für skeptische IW-Wissenschaftler. Format: je Einwand eine Zeile mit anerkennender Einleitung und belegter Antwort, gestützt auf eine konkrete Leitplanke. Ton: respektvoll, evidenzbasiert, ohne Marketing. Spiele die Sorgen nicht herunter."
**Erwartetes Artefakt:** Einwand-Playbook (Q&A) mit anerkennenden Einleitungen und leitplanken-gestützten Antworten.
**Fallstricke (≥2 spezifisch):**
- Einwände werden bagatellisiert statt anerkannt → jede Antwort mit echter Anerkennung der berechtigten Sorge beginnen, sonst verhärten sich die Fronten.
- Antworten versprechen mehr, als der Advisor leistet → keine Langdock-Fähigkeiten erfinden; nur belegte Leitplanken nennen.
**Anschluss-Szenario:** S-OC-015

### S-OC-015 Office-Hour und Community of Practice etablieren

**Wann nutzen (Trigger):** Nach dem ersten Onboarding sinkt die Nutzung wieder, weil Anwender bei Detailfragen allein bleiben; die Leitung will eine wiederkehrende Office-Hour und eine Community of Practice für Peer-Support. (Quelle: 09 — Peer-to-Peer-Training durch Champions senkt Risiko und beschleunigt Adoption; Quelle: research/11 — KI-Literacy durch laufende Befähigung)
**Strategisches Ziel:** Adoption verstetigen, indem Champions regelmäßig Wissen teilen, Fallstricke dokumentieren und neue Use-Cases gemeinsam reifen lassen.
**Hands-on Ergebnis:** Ein Community-of-Practice-Konzept mit Office-Hour-Rhythmus, Rollen und Wissens-Ablage.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die Champion-Landkarte und Prompt-Bibliothek.
**Vorgehen (4 Schritte):**
1. Einen festen Office-Hour-Rhythmus (z. B. zweiwöchentlich) und Moderationsrolle festlegen.
2. Im Canvas ein Format definieren: kurzer Impuls, Q&A, dokumentierte Fallstricke.
3. Eine geteilte Ablage für neue Prompts und Lessons Learned mit der Bibliothek verknüpfen.
4. Das Konzept den Champions zur Umsetzung übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Community-Berater. Entwirf aus Champion-Landkarte und Prompt-Bibliothek im Wissensordner ein Community-of-Practice-Konzept für den IW-Advisor. Format: Office-Hour-Rhythmus, Agenda-Vorlage, Rollen, Ablagestruktur für Lessons Learned. Verknüpfe neue Prompts mit der bestehenden Bibliothek."
**Erwartetes Artefakt:** Community-of-Practice-Konzept mit Office-Hour-Rhythmus, Agenda-Vorlage, Rollen und Wissens-Ablage.
**Fallstricke (≥2 spezifisch):**
- Lessons Learned versickern ohne feste Ablage → eine verbindliche Verknüpfung zur Prompt-Bibliothek festschreiben, sonst geht Wissen verloren.
- Office-Hour wird zur reinen Tool-Demo → Agenda zwingend an realen IW-Aufgaben (z. B. iwd-Übersetzung) ausrichten, nicht an Feature-Showcases.
**Anschluss-Szenario:** S-OC-016

### S-OC-016 Onboarding externer Agenturen absichern

**Wann nutzen (Trigger):** IW Medien arbeitet mit externen Agenturen und Dienstleistern; diese sollen den Advisor mitnutzen, aber nur mit eng begrenztem Zugriff und ohne Berührung vertraulicher Gutachten. (Quelle: research/10 — IW Medien als Agentur, externe Kunden/Dienstleister; Quelle: 08 — RBAC/Group-Sharing, Viewer-Rolle für externe Stakeholder, Offboarding)
**Strategisches Ziel:** Externe sicher und produktiv einbinden, ohne die Vertraulichkeit institutsinterner Ressourcen oder die Neutralität zu gefährden.
**Hands-on Ergebnis:** Ein Agentur-Onboarding-Leitfaden mit Zugriffsmatrix, NDA-Bezug und Offboarding-Schritten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Leitfaden; Knowledge (Wissensordner) für die RBAC-/Group-Sharing-Doku und das Tool-Inventar.
**Vorgehen (4 Schritte):**
1. Den nötigen Funktionsumfang der Agentur erfassen (z. B. nur Social-Atomisierung, kein Gutachten-Zugriff).
2. Im Canvas eine Zugriffsmatrix erstellen: Externe = Viewer/Editor auf freigegebene Ressourcen, kein Owner.
3. NDA-/AVV-Bezug und Sensitivitätsregeln verankern (vertrauliche Ordner ausgeschlossen).
4. Verbindliche Offboarding-Schritte definieren (Owner-Transfer vor Abgang, sofortiger Zugriffsentzug).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für externes Onboarding. Erstelle aus der RBAC-Doku im Wissensordner einen Agentur-Onboarding-Leitfaden für IW Medien. Kontext: externe Agentur, nur Social-Atomisierung, kein Gutachten-Zugriff. Format: Zugriffsmatrix (Ressource × Rolle), NDA-/AVV-Hinweis, Offboarding-Checkliste. Externe nie als Owner sensibler Ressourcen."
**Erwartetes Artefakt:** Agentur-Onboarding-Leitfaden mit Zugriffsmatrix, NDA-/AVV-Bezug und Offboarding-Checkliste.
**Fallstricke (≥2 spezifisch):**
- Synced-Folder-Verbindungen brechen, wenn der externe Ersteller-Account beim Offboarding gelöscht wird → vor Abgang einen Owner-Transfer auf einen Funktions-Account durchführen.
- Externe erhalten versehentlich Zugriff auf vertrauliche Gutachten-Ordner → vertrauliche Stufe in der Matrix explizit für Externe sperren.
**Anschluss-Szenario:** S-OC-017

### S-OC-017 Adoptionsmetriken definieren

**Wann nutzen (Trigger):** Die Geschäftsführung will belastbar wissen, ob der Advisor angenommen wird; es braucht ein Set an Adoptionsmetriken jenseits reiner Nutzungszahlen, das den IW-Mehrwert misst. (Quelle: research/11 — Metrics & KPIs jenseits von Vanity-Metriken, Engagement mit Owned Assets; Quelle: 09 — Adoption durch Workflow-Integration, Champions)
**Strategisches Ziel:** Adoption messbar und steuerbar machen, indem qualitative und quantitative Metriken den realen Beitrag zum Aufbereitungs-Workflow abbilden.
**Hands-on Ergebnis:** Ein Adoptionsmetrik-Set mit Definition, Datenquelle und Zielwert je Kennzahl.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Metrik-Set; Data Analyst für die spätere aggregierte Auswertung anonymisierter Nutzungsdaten.
**Vorgehen (4 Schritte):**
1. Vier bis sechs Metriken definieren (aktive Nutzer je Bereich, Zeitersparnis bei iwd-Aufbereitung, Anteil geprüfter Outputs, Champion-Aktivität).
2. Im Canvas je Metrik Datenquelle und realistischen Zielwert festlegen.
3. Sicherstellen, dass Metriken aggregiert/anonym sind (keine individuelle Leistungskontrolle, Betriebsrat-konform).
4. Das Set der Leitung als Steuerungsgrundlage vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Adoptions-Analyst. Definiere aus den KPI-Prinzipien im Wissensordner ein Adoptionsmetrik-Set für den IW-Advisor. Format: Tabelle (Metrik, Definition, Datenquelle, Zielwert, Aggregationsebene). Mische qualitative (Zeitersparnis Aufbereitung) und quantitative Metriken. Schließe individuelle Leistungskontrolle aus."
**Erwartetes Artefakt:** Adoptionsmetrik-Set (Tabelle) mit Definition, Datenquelle, Zielwert und Aggregationsebene je Kennzahl.
**Fallstricke (≥2 spezifisch):**
- Reine Vanity-Metriken (Prompt-Anzahl) suggerieren Erfolg ohne Wirkung → mindestens eine Wirkungsmetrik (Zeitersparnis im Workflow) verpflichtend aufnehmen.
- Metriken auf Individualebene verletzen die Betriebsrat-Zusicherung → ausschließlich aggregierte, anonymisierte Auswertung festschreiben.
**Anschluss-Szenario:** S-OC-018

### S-OC-018 Eskalations- und Korrektur-Prozess bei KI-Fehlern aufsetzen

**Wann nutzen (Trigger):** Es zeichnet sich ab, dass irgendwann ein KI-Fehler (Halluzination, falscher Zahlenwert, Tone-Drift) in einen Entwurf gerät; die Leitung will einen klaren Eskalations- und Korrektur-Prozess, bevor ein solcher Fehler die IW-Glaubwürdigkeit gefährdet. (Quelle: research/11 — Factual Fidelity/Hallucinations als paramountes Risiko, redaktionelle Verantwortung; Quelle: 08 — Eskalations-/Korrekturmechanismen, Human-in-the-Loop)
**Strategisches Ziel:** Einen reproduzierbaren Prozess etablieren, der KI-Fehler früh erkennt, eskaliert, korrigiert und als Lessons Learned zurückspielt — Schutz der empirischen Glaubwürdigkeit.
**Hands-on Ergebnis:** Ein Eskalations- und Korrektur-Prozess (Ablaufbeschreibung) mit Rollen, Fristen und Dokumentationspflicht.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Prozessbeschreibung; Knowledge (Wissensordner) für die Guardrails und die KI-Nutzungs-Policy.
**Vorgehen (4 Schritte):**
1. Fehlerklassen definieren (Faktenfehler, Zahlenfehler, Tone-/Neutralitäts-Drift, Datenschutz).
2. Im Canvas einen Ablauf festlegen: Erkennung → Stopp → Eskalation an Champion/Leitung → Korrektur → Lessons Learned.
3. Je Fehlerklasse Rolle, Frist und ob ein veröffentlichter Inhalt zu korrigieren ist festhalten.
4. Eine Dokumentationspflicht verankern, die in die Community of Practice zurückfließt.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Incident-Prozesse. Entwirf aus Guardrails und Policy im Wissensordner einen Eskalations- und Korrektur-Prozess für KI-Fehler im IW. Format: Fehlerklassen-Tabelle (Klasse, Erkennung, Eskalationsrolle, Frist, Korrektur, Doku). Behandle Zahlen-/Faktenfehler als höchste Priorität wegen der Glaubwürdigkeit."
**Erwartetes Artefakt:** Eskalations- und Korrektur-Prozess mit Fehlerklassen, Rollen, Fristen und Dokumentationspflicht.
**Fallstricke (≥2 spezifisch):**
- Ein bereits veröffentlichter Zahlenfehler wird nur intern korrigiert → für veröffentlichte Inhalte eine externe Korrektur-/Richtigstellungspflicht verankern.
- Fehler werden korrigiert, aber nicht dokumentiert → verbindliche Lessons-Learned-Rückspielung in die Community of Practice festschreiben.
**Anschluss-Szenario:** S-OC-019

### S-OC-019 Erfolgsmessung und Quartals-Review durchführen

**Wann nutzen (Trigger):** Nach dem ersten Quartal produktiver Nutzung verlangt die Geschäftsführung einen strukturierten Review, der Adoption, Wirkung und Risiken zusammenführt und über die Skalierung entscheidet. (Quelle: research/11 — Metrics & KPIs, quartalsweise Evaluation, Re-Prüfung; Quelle: 08 — Quartals-Review-Logik, Re-Prüfung von Zertifikaten/Fristen)
**Strategisches Ziel:** Eine faktenbasierte Entscheidungsgrundlage schaffen, ob, wo und wie der Advisor auf weitere Bereiche skaliert wird — unter Wahrung der Governance.
**Hands-on Ergebnis:** Ein Quartals-Review-Bericht mit Metrik-Auswertung, Lessons Learned und Skalierungsempfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst für die aggregierte Auswertung der anonymisierten Adoptionsdaten; Canvas / Document Editor für den Bericht; Knowledge (Wissensordner) für Metrik-Set und Lessons Learned.
**Vorgehen (4 Schritte):**
1. Die anonymisierten Adoptionsdaten als CSV in den Data Analyst laden und gegen die Zielwerte auswerten.
2. Im Canvas die Lessons Learned und Eskalationsfälle des Quartals zusammenführen.
3. Offene Governance-Punkte (Zertifikats-/Frist-Re-Prüfung) abhaken.
4. Eine begründete Skalierungsempfehlung (ja/nein/teilweise) für die Leitung ableiten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Quartals-Reviews. Werte die anonymisierten Adoptionsdaten gegen das Metrik-Set im Wissensordner aus und erstelle einen Review-Bericht für die IW-Leitung. Format: Metrik-Soll/Ist-Tabelle, Lessons-Learned-Abschnitt, offene Governance-Punkte, Skalierungsempfehlung mit Begründung. Nutze nur belegte Zahlen; markiere Datenlücken."
**Erwartetes Artefakt:** Quartals-Review-Bericht mit Soll/Ist-Metriken, Lessons Learned, Governance-Status und begründeter Skalierungsempfehlung.
**Fallstricke (≥2 spezifisch):**
- Multi-Sheet-Excels überfordern den Data Analyst → vor dem Upload bereinigen und nur relevante, anonymisierte Sheets behalten.
- Zertifikate und AI-Act-Fristen werden im Review nicht nachgeprüft → die Re-Prüfung des Audit-/Stichtags als Pflichtpunkt aufnehmen.
**Anschluss-Szenario:** S-OC-020

### S-OC-020 Skalierung auf weitere Wissenschaftsbereiche planen

**Wann nutzen (Trigger):** Der Quartals-Review fällt positiv aus; die Leitung will den Advisor von einem Kompetenzfeld auf weitere Wissenschaftsbereiche ausrollen, ohne die im Pilot bewährten Leitplanken zu verlieren. (Quelle: research/10 — Wissenschaftsbereiche/Kompetenzfelder als Skalierungsachsen; Quelle: research/11 — kontrollierte, governance-gebundene AI-Adoption)
**Strategisches Ziel:** Die Skalierung so planen, dass jeder neue Bereich denselben sauberen Pilot-, Governance- und Champion-Pfad durchläuft — kein institutsweiter "Big Bang".
**Hands-on Ergebnis:** Ein Skalierungs-Fahrplan mit Wellen, je Welle ein Bereich, Voraussetzungen und Verantwortlichen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Fahrplan; Knowledge (Wissensordner) für Champion-Landkarte, Review-Bericht und Pilot-Charter-Vorlage.
**Vorgehen (4 Schritte):**
1. Die noch nicht abgedeckten Wissenschaftsbereiche priorisieren (Bedarf, Champion-Verfügbarkeit, Datensensitivität).
2. Im Canvas einen Wellen-Fahrplan erstellen: je Welle ein Bereich mit eigenem Mini-Pilot.
3. Je Welle die Voraussetzungen festhalten (Governance-Freigabe geprüft, Champion benannt, Charter erstellt).
4. Den Fahrplan der Leitung vorlegen; den Pilot-Pfad (S-OC-001) je neuem Bereich wieder anstoßen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Skalierungs-Berater. Erstelle aus Champion-Landkarte und Review-Bericht im Wissensordner einen Wellen-Fahrplan für die Skalierung des IW-Advisors auf weitere Wissenschaftsbereiche. Format: Tabelle (Welle, Bereich, Voraussetzungen, Champion, Mini-Pilot-Charter ja/nein). Schreibe fest, dass jeder Bereich einen eigenen Pilot- und Governance-Pfad durchläuft."
**Erwartetes Artefakt:** Skalierungs-Fahrplan (Wellen-Tabelle) mit Bereichen, Voraussetzungen, Champions und Mini-Pilot-Pflicht je Welle.
**Fallstricke (≥2 spezifisch):**
- Ein institutsweiter Big-Bang-Rollout überspringt Governance und überfordert die Champions → jede Welle an einen eigenen, abgeschlossenen Mini-Pilot binden.
- Die im Pilot bewährten Guardrails werden bei Skalierung verwässert → je neuem Bereich die Guardrail-Checkliste und Kennzeichnungs-Policy verbindlich übernehmen.
**Anschluss-Szenario:** S-OC-001
