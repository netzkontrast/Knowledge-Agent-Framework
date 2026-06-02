# IW Medien — Zusammenarbeit, Leistungen, Abgrenzung

> **IW-Medien-Profil-Anker** (für deterministisches Retrieval).
>
> **Was diese Datei abdeckt:**
> - Profil und Rechtsentität der IW Medien GmbH (100%-Tochter des IW)
> - Leistungsspektrum und eigene Medienplattformen (iwd, AKTIV, TouchTomorrow-Truck)
> - Wann Little Data eine IW-Medien-Leistung empfiehlt — und wann das IW selbst zuständig ist
> - Konkrete Handlungsempfehlungen (Advice-Style, R7): keine Beispiel-Prompts, sondern actionable Guidance
>
> **Was diese Datei NICHT abdeckt:**
> - Wissenschaftliche IW-Publikationsreihen (IW-Report, IW-Trends, …) → `15-glossar-und-faq`, Quelle `data/research/14-iw-publikationsformate-verified-2026-06`
> - IW-Organisationsprofil insgesamt → `data/research/10-iw-koeln-organisationsprofil`

## Profil — IW Medien GmbH

IW Medien ist die hauseigene Kommunikationsagentur des Instituts der deutschen Wirtschaft und arbeitet als eigenständige Markt-Tochter mit Kundengeschäft. Sie tritt selbst als "Agentur für den Wandel" auf und kommuniziert "Zukunfts-, Wirtschafts- und Gesellschaftsthemen, die das Land verändern" (Quelle: iwmedien.de, Stand Juni 2026).

| Feld | Wert |
|---|---|
| Firma | Institut der deutschen Wirtschaft Köln Medien GmbH |
| Verhältnis zum IW | 100%-Tochter |
| Sitz | Konrad-Adenauer-Ufer 21, 50668 Köln |
| Geschäftsführung | Dinah Erdmann |
| Handelsregister | Amtsgericht Köln HRB 1449 |
| USt-IdNr. | DE123052388 |
| Mitarbeitende | rund 150 |
| Standorte | Köln (HQ), Berlin, München, Hamburg, Brüssel |

(Quelle: iwmedien.de/impressum; iwmedien.de; LinkedIn — alle Stand Juni 2026; bei Wartung gegenprüfen)

## Leistungsspektrum

Full-Service mit Fokus auf wirtschafts- und gesellschaftspolitische Themen. Verifizierter Katalog (Quelle: iwmedien.de):

- **Kampagnen und Strategie** — Cross-Media-Kampagnen, Kommunikationsstrategien
- **Wissenschaftskommunikation** — komplexe Forschung allgemeinverständlich
- **Employer Branding**
- **Content Marketing** — Content-Management, Performance-Marketing
- **Experience Communication / Event-Kommunikation**
- **Digital** — Social Media (inkl. TikTok), digitale Plattformen, Development
- **Audiovisuell** — Video-Produktion
- **Print** — klassischer Print, Magazin- und Studien-Layout
- **Außenwerbung** — City-Light-Werbung
- **Beratung** — über alle Phasen des Kommunikationsprozesses

## Eigene Medienplattformen

- **iwd** (Informationsdienst der deutschen Wirtschaft) — redaktionelles Nachrichtenprodukt, allgemeinverständlich (Quelle: iwkoeln.de + iwmedien.de). Beschrieben als "klassische Publikation" im IW-Medien-Portfolio.
- **AKTIV** — Wirtschaftszeitung von IW Medien; eigener Zugang zu wirtschaftspolitischen Entscheidern (Quelle: iwmedien.de).
- **TouchTomorrow-Truck** — mobile Wissensplattform / Roadshow-Format (Quelle: iwmedien.de).

## Marketing-Szenarien aus dieser Domäne

Diese Datei nutzt die Advice-Style-Form (R7): jedes Szenario liefert eine konkrete, actionable Empfehlung statt eines Beispiel-Prompts. Trigger und Felder folgen dem Standard, das Feld **Konkrete Empfehlung** ersetzt **Beispiel-Prompt**.

### S-MD-001 Wann IW Medien beauftragen — und wann nicht

**Wann nutzen (Trigger):** Die Marketing-Direktorin überlegt, eine Kommunikationsleistung extern zu vergeben, und prüft, ob die hauseigene IW Medien GmbH die richtige Adresse ist oder ob das Anliegen besser im IW selbst (Wissenschaft) liegt. (Quelle: 15-iwmedien-verified-2026-06)
**Strategisches Ziel:** Eine belastbare Make-or-Buy-Entscheidung treffen, die die zwei Auftragslogiken (Wissenschaft vs. Agentur) sauber trennt.
**Hands-on Ergebnis:** Eine Zuordnungsempfehlung mit zwei Begründungen (Inhalt + Auftragslogik).
**Eingesetzte Langdock-Fähigkeit(en):** Chat (synchroner Berater), optional Wissensordner mit dem IW-Medien-Profil
**Vorgehen (4 Schritte):**
1. Inhalt klären: ist das Anliegen Forschung/Analyse (→ IW) oder Kommunikation/Vermarktung (→ IW Medien)?
2. Auftragslogik klären: braucht es wissenschaftliche Neutralität (→ IW) oder kundenadaptive Vermarktung (→ IW Medien)?
3. Liegt eine eigene IW-Medien-Plattform nahe (iwd, AKTIV, TouchTomorrow-Truck) — dann ist die Tochter strukturell die richtige Adresse.
4. Empfehlung als zwei Sätze formulieren: "Inhaltlich passt X zu Y; auftragslogisch ebenfalls, weil Z."
**Konkrete Empfehlung:** Wissenschaftliche Befunde, Methodik und Studien bleiben beim IW (Neutralitätsanspruch). Alles, was Vermarktung, Kreation, Kampagnen, Print/Layout oder Event ist, gehört zur IW Medien — sie ist eigens dafür gebaut. Bei Unschärfe gilt die Faustregel "Wer publiziert nach außen, wer veranstaltet?": die Tochter.
**Erwartetes Artefakt:** Eine Make-or-Buy-Notiz (zwei Sätze + Empfehlung).
**Fallstricke (≥2 spezifisch):**
- Eine wissenschaftlich heikle Aussage in den Vermarktungspfad geben — Mitigation: vor Übergabe an IW Medien einen IW-internen Freigabe-Schritt einbauen.
- Eine reine Werbeleistung im IW selbst suchen — Mitigation: die Selbstdefinition "Forschungsinstitut" ernst nehmen und kommerzielle Aufgaben konsequent zur Tochter routen.
**Anschluss-Szenario:** S-MD-002

### S-MD-002 Welche IW-Medien-Leistung passt zur Aufgabe

**Wann nutzen (Trigger):** Die Aufgabe ist klar bei IW Medien angesiedelt, aber das Leistungsfeld muss noch zugeordnet werden — Kampagne, Wissenschaftskommunikation, Employer Branding, Content Marketing, Event oder Print? (Quelle: 15-iwmedien-verified-2026-06)
**Strategisches Ziel:** Aus dem verifizierten Leistungskatalog die passende Disziplin auswählen und die Schnittstellen klären.
**Hands-on Ergebnis:** Eine Disziplin-Zuordnung plus eine kurze Liste der mitlaufenden Disziplinen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Berater), Wissensordner (IW-Medien-Katalog)
**Vorgehen (4 Schritte):**
1. Aufgabe in eines der zehn Felder einordnen (Kampagnen, Wissenschaftskommunikation, Employer Branding, Content Marketing, Experience Communication, Digital, Audiovisuell, Print, Außenwerbung, Beratung).
2. Mitlaufende Disziplinen identifizieren (eine Kampagne braucht meist Content + Digital + Audiovisuell zusätzlich).
3. Schnittstellen prüfen: wo greift die Aufgabe auf eigene Plattformen (iwd, AKTIV, TouchTomorrow-Truck)?
4. Zuordnung mit den mitlaufenden Disziplinen festhalten — vermeidet "nackte" Briefings.
**Konkrete Empfehlung:** Vor dem Briefing immer die zwei häufigsten mitlaufenden Disziplinen explizit benennen — sonst entsteht ein Loch zwischen Hauptdisziplin und Lieferleistung (klassisch: Kampagne ohne Content-Plan, Print ohne Layout-Briefing).
**Erwartetes Artefakt:** Disziplin-Zuordnung (1 Hauptfeld + 2–3 mitlaufende).
**Fallstricke (≥2 spezifisch):**
- Eine reine Kreativ-Aufgabe ohne Distribution beauftragen — Mitigation: Digital- oder Print-Disziplin sofort mitdenken, sonst entsteht Content ohne Reichweite.
- Event-Kommunikation isoliert sehen — Mitigation: Pre-Event-Kampagne und Post-Event-Content gleich mitbestellen, sonst verpufft die Eventwirkung.
**Anschluss-Szenario:** S-MD-003

### S-MD-003 iwd, AKTIV und TouchTomorrow als Distributions-Pfade nutzen

**Wann nutzen (Trigger):** Eine IW-Studie oder ein IW-Standpunkt soll Aufmerksamkeit über die wissenschaftliche Fachöffentlichkeit hinaus erreichen, und es liegt nahe, die eigenen Plattformen der Tochter zu nutzen. (Quelle: 15-iwmedien-verified-2026-06)
**Strategisches Ziel:** Die hauseigenen Plattformen zielgerichtet einsetzen, statt sie wahllos zu bespielen.
**Hands-on Ergebnis:** Eine Zuordnung der Botschaft zur richtigen Plattform inklusive Format-Empfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Chat (Berater), Wissensordner (Plattform-Profile)
**Vorgehen (4 Schritte):**
1. Zielgruppe schärfen: breite Öffentlichkeit (→ iwd), wirtschaftspolitische Entscheidung (→ AKTIV), Schüler-/Multiplikator-Ansprache vor Ort (→ TouchTomorrow-Truck).
2. Format zur Plattform wählen: iwd-Artikel/Teaser, AKTIV-Beitrag, Truck-Programm-Modul.
3. Den iwd-Teaser plus SEO-Title separat behandeln (siehe S-IW-031) — er ist der Klick-Hebel auf die Startseite.
4. Cross-Posting zurückhaltend einsetzen — drei Plattformen mit derselben Botschaft konkurrieren um dasselbe Publikum.
**Konkrete Empfehlung:** iwd ist der allgemeinverständliche Standard, AKTIV der Entscheider-Hebel, TouchTomorrow das Format mit physischer Präsenz. Wähle eine als primäre Bühne, dann höchstens eine zweite als Verstärker — niemals alle drei automatisch parallel bespielen.
**Erwartetes Artefakt:** Plattform-Zuordnung (Primär + optionaler Verstärker + Format).
**Fallstricke (≥2 spezifisch):**
- Eine wissenschaftliche Originalstudie im iwd unverdaut spiegeln — Mitigation: die iwd-Redaktion lebt von der Übersetzung in Alltagssprache, nicht vom Original-Layout der Studie.
- AKTIV als Generalist-Magazin behandeln — Mitigation: die Beitragsidee muss ein Entscheidungs-Relevanz-Argument tragen, sonst gehört sie eher in den iwd.
**Anschluss-Szenario:** S-MD-004

### S-MD-004 Briefing an IW Medien sauber übergeben

**Wann nutzen (Trigger):** Eine Leistung der IW Medien ist zugeordnet, und die Marketing-Direktorin schreibt das Briefing — sie will vermeiden, dass die Agentur mit fünf Rückfragen zurückkommt. (Quelle: 15-iwmedien-verified-2026-06)
**Strategisches Ziel:** Ein Briefing übergeben, das ohne weitere Klärung umsetzbar ist.
**Hands-on Ergebnis:** Ein vollständiges Ein-Seiter-Briefing mit den fünf Pflichtfeldern.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas (Briefing-Edit), Wissensordner (Brand-Voice + Asset-Vorlagen)
**Vorgehen (5 Schritte):**
1. Ziel als ein Satz (was soll erreicht werden, messbar).
2. Zielgruppe konkret (Rolle + Branche + Pain-Point).
3. Format und Kanal explizit (z. B. "1 LinkedIn-Karussell + 1 iwd-Teaser").
4. Tonalitätsleitplanken (IW-Neutralität wahren; keine partisan Wertung).
5. Zeitleiste und Freigabe-Schritte (HITL vor Versand und vor Veröffentlichung).
**Konkrete Empfehlung:** Lass das Briefing nie ohne diese fünf Felder rausgehen. Insbesondere die Freigabe-Schritte sind nicht verhandelbar — IW-Studien dürfen nicht durch eine Agentur-Veröffentlichung politisch positioniert werden.
**Erwartetes Artefakt:** Ein-Seiter-Briefing (5 Felder) zur Übergabe.
**Fallstricke (≥2 spezifisch):**
- "Tonalität: locker" bei einem IW-Thema — Mitigation: "locker" mit konkretem Beispiel-Satz und einem Anti-Beispiel-Satz definieren, sonst trifft die Agentur den falschen Ton.
- Freigabe nur am Ende — Mitigation: zwei Freigabe-Punkte einplanen (nach Konzept, vor Veröffentlichung), sonst wird das Schlussbild durchgereicht, ohne dass das IW gegengelesen hat.
**Anschluss-Szenario:** S-MD-005

### S-MD-005 Brand-Konsistenz zwischen IW und IW Medien wahren

**Wann nutzen (Trigger):** Die Marketing-Direktorin sieht, dass eine IW-Medien-Produktion (z. B. eine Social-Kampagne) tonal und visuell anders auftritt als die wissenschaftliche IW-Linie, und fragt, wo die Grenze ist. (Quelle: 15-iwmedien-verified-2026-06)
**Strategisches Ziel:** Die zwei zulässigen Register (wissenschaftlich-neutral vs. kundenadaptiv-vermarktend) klar trennen und keine grauzone entstehen lassen.
**Hands-on Ergebnis:** Eine Tonalitäts-Matrix mit zwei Spalten (IW-Register vs. IW-Medien-Register) und einer Liste der heiklen Übergänge.
**Eingesetzte Langdock-Fähigkeit(en):** Wissensordner (Brand-Voice-Profile), Canvas (Matrix-Erstellung)
**Vorgehen (4 Schritte):**
1. IW-Register definieren: präzise, datenbasiert, neutral, ohne partisan Positionierung.
2. IW-Medien-Register definieren: kundenadaptiv, vermarktend, aktiv ansprechend — kann partisan klingen, wenn der Kunde es will (außerhalb des IW-eigenen Materials).
3. Übergangs-Heuristiken: alles mit IW-Logo + iwd-Bühne folgt dem IW-Register; alles im Auftrag eines externen Kunden folgt dessen Markenwelt.
4. Heikle Fälle markieren (IW-Studienzitat in einer Kunden-Kampagne) und durch das IW gegenlesen lassen.
**Konkrete Empfehlung:** Die Trennung ist nicht stilistisch, sie ist auftragslogisch. IW-Produkte folgen IW-Tonalität auch dann, wenn IW Medien sie produziert. Externe Kunden-Produkte folgen Kunden-Tonalität — aber wer eine IW-Quelle zitiert, übernimmt für dieses Zitat die IW-Neutralitätspflicht.
**Erwartetes Artefakt:** Tonalitäts-Matrix (2 Spalten + 3–5 heikle Übergangsfälle).
**Fallstricke (≥2 spezifisch):**
- Eine IW-Studie wird in einer Kunden-Kampagne zitiert und politisch zugespitzt — Mitigation: IW-Freigabe für die zitierte Stelle separat einholen.
- Stilistische Modernisierung der iwd-Sprache wird mit Tonalitätswechsel verwechselt — Mitigation: Modernisierung ja, Position aufgeben nein.
**Anschluss-Szenario:** S-MD-001

## Hinweise

Die Stilform "Advice-Style" (R7) ersetzt **Beispiel-Prompt** durch **Konkrete Empfehlung** — passend für Beratungs-/Entscheidungssituationen, in denen ein direkter Handlungsvorschlag wertvoller ist als eine kopierbare Prompt-Vorlage. Die Schema-Felder (Trigger, Strategisches Ziel, Hands-on Ergebnis, Eingesetzte Langdock-Fähigkeit(en), Vorgehen, Erwartetes Artefakt, Fallstricke, Anschluss-Szenario) bleiben Pflicht.
