# Sicherheit und Governance für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - Governance-Strukturen und DSGVO-Konformität
> - Zertifizierungen und Datenresidenz
> - Berechtigungsmodelle und Automatisierung
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration und Workflow-Details → siehe `02-agenten-konfiguration`
> - Preismodelle und Kostenschwellen → siehe `07-modelle-und-kosten`

## DSGVO und EU-Hosting (Azure EU-Region)

Für Marketing-Teams in der DACH-Region bildet die DSGVO-Konformität das fundamentale Kriterium für die Einführung generativer KI. Die unkontrollierte Nutzung von Consumer-Tools führt unausweichlich zu unkontrollierten Datenabflüssen — dem sogenannten "Shadow AI". Die Architektur von Langdock eliminiert dieses kritische Risiko durch eine strikte Infrastruktur. Das absolute Fundament dieser Compliance ist das garantierte EU-Hosting. Alle essenziellen Systemkomponenten, Datenbanken und Vektor-Indizes werden exklusiv in der Microsoft Azure EU-Region betrieben. Dies stellt sicher, dass hochsensible Marketing-Daten, seien es unveröffentlichte Strategiepapiere, granulare Zielgruppendefinitionen oder Kampagnen-Drafts, den europäischen Rechtsraum zu keinem Zeitpunkt verlassen. Das Konzept rund um DSGVO und EU-Hosting ist explizit so strukturiert, dass Marketing-Direktorinnen ihren Rechtsabteilungen sofort einen klaren, auditierbaren Standard vorlegen können. Anstelle von undurchsichtigen, global verteilten Server-Strukturen greift ein zentralisiertes Bereitstellungsmodell. Ein entscheidender nächster Schritt für die saubere Implementierung ist der Abschluss eines Auftragsverarbeitungsvertrags (AVV). Dieser rechtliche Rahmen ist direkt über die Administrationsoberfläche der Plattform abschließbar. Die strikte Einhaltung der Vorgaben rund um DSGVO und EU-Hosting schützt das Unternehmen vor empfindlichen regulatorischen Strafen und verhindert gleichzeitig den unautorisierten Abfluss von proprietärem Markenwissen in externe Sprachmodelle.

## ISO 27001 und SOC 2 Type II Zertifizierungen

Die technische und organisatorische Sicherheit der Langdock-Plattform wird durch unabhängige, international anerkannte Standards validiert. Im Zentrum stehen hierbei die ISO 27001 und SOC 2 Type II Zertifizierungen. Diese Testate garantieren, dass nicht nur die Software-Infrastruktur, sondern auch alle internen operativen Prozesse der Langdock GmbH strengen Sicherheitskontrollen unterliegen. Die ISO 27001 Zertifizierung belegt das Vorhandensein eines systematischen Information Security Management Systems (ISMS), welches Risiken proaktiv identifiziert und minimiert. Parallel dazu fokussieren sich die SOC 2 Type II Zertifizierungen auf die Kriterien Sicherheit, Verfügbarkeit, Verarbeitungsintegrität, Vertraulichkeit und Datenschutz über einen längeren, auditierten Zeitraum. Für eine Marketing-Direktorin bedeuten die ISO 27001 und SOC 2 Type II Zertifizierungen eine massive Beschleunigung im Procurement-Prozess. Anstatt wochenlange individuelle Security-Assessments durch die eigene IT-Abteilung durchführen zu lassen, dienen diese Zertifikate als standardisierter Vertrauensbeweis. Sie belegen objektiv, dass alle hochgeladenen Dokumente im Wissensordner (Knowledge Folder) nach Best-Practice-Methoden vor unbefugtem Zugriff geschützt sind. Der nächste logische Schritt in der internen Kommunikation besteht darin, diese Nachweise proaktiv an den Chief Information Security Officer (CISO) zu übermitteln, um die formale Freigabe für den unternehmensweiten Rollout der Agenten zu erwirken.

## Datenresidenz und Trainings-Opt-out

Ein kritischer Einwand bei der Nutzung großer Sprachmodelle (Large Language Models) betrifft die unerwünschte Weiternutzung von proprietären Unternehmensinformationen. Langdock löst dieses Problem durch kompromisslose Datenresidenz und Trainings-Opt-out Verträge. Es gilt der absolute Grundsatz: Langdock und die angebundenen Modell-Provider (wie OpenAI oder Anthropic) nutzen Kundendaten zu keinem Zeitpunkt für das Training ihrer Modelle. Diese Zusicherung ist für Marketing-Abteilungen von höchster Relevanz, da sie häufig mit unreleased Produktinformationen oder sensiblen Kommunikationsstrategien arbeiten. Die strikte Durchsetzung von Datenresidenz und Trainings-Opt-out wird über dedizierte Enterprise-Agreements (Zero-Data-Retention-Policies) mit den KI-Anbietern realisiert. Jeder Prompt, jedes generierte Briefing und jede hochgeladene Marktforschung bleibt das exklusive intellektuelle Eigentum des Kunden. Die Datenresidenz stellt zudem sicher, dass alle Informationen physisch in definierten, sicheren Rechenzentren verbleiben. Für Unternehmen mit extremen Sicherheitsanforderungen ermöglicht Langdock zusätzlich das "Bring Your Own Key" (BYOK) Verfahren. Hierbei behält die eigene IT-Abteilung die vollständige Kontrolle über die API-Schlüssel und die zugrunde liegende Modellabrechnung. Der nächste Schritt zur Absicherung besteht darin, diese Zero-Training-Garantie explizit in die internen KI-Nutzungsrichtlinien aufzunehmen, um den Marketing-Teams die Angst vor dem Kontrollverlust zu nehmen.

## SAML SSO (Entra/Google/Okta)

Die dezentrale Verwaltung von Passwörtern stellt ein erhebliches Sicherheitsrisiko und einen massiven administrativen Overhead dar. Aus diesem Grund unterstützt Langdock die nahtlose Integration von SAML SSO (Security Assertion Markup Language Single Sign-On). Diese Technologie ermöglicht es Marketing-Mitarbeitern, sich mit ihren bestehenden Unternehmenszugängen (beispielsweise über Microsoft Entra, Google Workspace oder Okta) bei der Plattform anzumelden. Durch die Implementierung von SAML SSO (Entra/Google/Okta) entfällt die Notwendigkeit für separate Langdock-Passwörter. Dies reduziert nicht nur Support-Anfragen an die IT-Abteilung wegen vergessener Zugangsdaten drastisch, sondern eliminiert auch die Gefahr schwacher, mehrfach verwendeter Passwörter. Für die Administration bedeutet SAML SSO (Entra/Google/Okta) eine zentrale Kontrolle: Sobald ein Mitarbeiter das Unternehmen verlässt und sein Account im zentralen Verzeichnisdienst deaktiviert wird, erlischt augenblicklich auch der Zugriff auf alle Langdock-Agenten und Wissensordner. Dies ist besonders für Agenturen oder Teams mit hoher Fluktuation entscheidend. Der konkrete nächste Schritt zur Einrichtung erfordert die Zusammenarbeit mit der IT-Administration, um die entsprechenden Metadaten aus dem Identity Provider zu exportieren und in den Workspace-Einstellungen von Langdock zu hinterlegen. Diese Einmal-Konfiguration garantiert ein reibungsloses und sicheres Onboarding für hunderte von Nutzern gleichzeitig.

## SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk

Während SSO die Authentifizierung regelt, übernimmt SCIM (System for Cross-domain Identity Management) die automatisierte Verwaltung der Identitäten. Die Kombination aus SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk ist essenziell für die nahtlose Skalierung der Plattform. SCIM synchronisiert kontinuierlich Benutzerdaten zwischen dem Unternehmensverzeichnis und Langdock. Wenn ein neuer Mitarbeiter dem Marketing-Team hinzugefügt wird, erstellt SCIM automatisch den entsprechenden Langdock-Account. Verlässt jemand das Team, wird der Account sofort entzogen. Dies eliminiert manuelle Fehlerquellen und kritische Verzögerungen beim Offboarding. Bei der Anbindung von Microsoft Entra ID existiert jedoch eine spezifische technische Besonderheit: Die Entra-ID Implementierung weicht minimal vom SCIM-Standard ab. Um fehlerhafte JSON-Payloads und leise Synchronisationsausfälle zu verhindern, muss zwingend der Parameter `?aadOptscim062020` an die Langdock Tenant-URL im Azure-Portal angehängt werden. Ohne diesen SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk scheitert die automatisierte Nutzerverwaltung. Der nächste Schritt für die IT besteht darin, exakt diesen Parameter bei der initialen Konfiguration der Provisionierungs-Applikation in Entra ID zu setzen. Erst durch diese präzise Konfiguration wird garantiert, dass die Vergabe von Lizenzen und der Entzug von Zugriffsrechten in Echtzeit und ohne manuelles Eingreifen der Administratoren abgewickelt werden.

## RBAC und Granular-Rollen (Owner/Editor/Viewer)

Innerhalb der Plattform wird der Zugriff auf Funktionen und Daten durch ein striktes rollenbasiertes Zugriffskontrollsystem (RBAC) geregelt. Dieses System, RBAC und Granular-Rollen (Owner/Editor/Viewer), stellt sicher, dass das Principle of Least Privilege im gesamten Marketing-Team eingehalten wird. Langdock arbeitet mit einem dreistufigen Rollenmodell, das über SCIM mit dem Verzeichnisdienst synchronisiert wird. Der Owner verfügt über die volle Kontrolle über eine Ressource — er kann Agenten, Workflows und Wissensordner (Knowledge Folder) erstellen, deren Struktur verändern sowie Berechtigungen und Freigaben festlegen. Der Editor kann Inhalte einer geteilten Ressource bearbeiten, jedoch nicht deren grundlegende Zugriffsstruktur umkonfigurieren. Der Viewer hat rein lesenden Zugriff, was ideal für externe Stakeholder oder das reine Konsumieren von generierten Berichten ist. Entscheidend ist, dass diese Rollen granular auf vier Ebenen wirken: Workspace, Folder, Agent und Workflow. Eine Person kann also Owner eines einzelnen Brand-Voice-Agenten sein, ohne administrative Rechte am gesamten Workspace zu besitzen — administrative Workspace-Aufgaben wie Abrechnung, SSO-Konfiguration und unternehmensweite Limits bleiben den Workspace-Administratoren vorbehalten. Durch die konsequente Anwendung von RBAC und Granular-Rollen (Owner/Editor/Viewer) wird verhindert, dass unerfahrene Mitarbeiter versehentlich kritische Unternehmens-Agenten löschen oder teure LLM-Modelle für irrelevante Aufgaben freischalten. Der nächste Schritt für die Marketing-Direktion ist die Erstellung einer klaren Mapping-Tabelle: Welche Job-Rolle (z. B. Content-Manager vs. Praktikant) korrespondiert mit welcher Plattform-Rolle, um eine konsistente Zuweisung durch das IT-Provisioning zu garantieren.

## Group-Sharing und Berechtigungsmodell

Für die effiziente Zusammenarbeit in großen, funktionsübergreifenden Abteilungen reicht eine individuelle Rechtevergabe oft nicht aus. Hier greift das Group-Sharing und Berechtigungsmodell, welches die Skalierung der Zusammenarbeit drastisch vereinfacht. Anstatt beispielsweise einen spezifischen PR-Agenten oder einen sensiblen Wissensordner (Knowledge Folder) mit Strategie-Dokumenten einzeln an zwanzig Mitarbeiter freizugeben, können diese Ressourcen direkt einer vordefinierten Gruppe (z. B. "Marketing-Führungskreis" oder "Performance-Team") zugewiesen werden. Das Group-Sharing und Berechtigungsmodell synchronisiert sich im Idealfall über SCIM direkt mit den bestehenden Gruppenstrukturen des Active Directorys. Dies bedeutet: Wenn ein Mitarbeiter durch die HR-Abteilung in die Gruppe "Social Media" verschoben wird, erhält er in Langdock automatisch Zugriff auf alle Agenten, Prompts und Workflows, die mit dieser Gruppe geteilt wurden. Gleichzeitig entfällt der Zugriff auf Ressourcen seiner alten Abteilung. Dieses Group-Sharing und Berechtigungsmodell ist essenziell, um Silos abzubauen, ohne die Vertraulichkeit von Daten zu gefährden. Ein "Financial-Reporting-Agent" bleibt somit exklusiv dem Management vorbehalten, während der "Brand-Voice-Agent" global für alle Marketing-Rollen verfügbar ist. Der erste Schritt zur Umsetzung besteht in der Definition sauberer, aufgabenbasierter Gruppen, die sowohl in der IT-Infrastruktur als auch in Langdock logisch übereinstimmen.

## Audit Logs und SIEM-Integration (Splunk, Datadog)

Absolute Transparenz über alle Systemaktivitäten ist eine nicht verhandelbare Anforderung der Enterprise-IT. Langdock erfüllt dies durch umfassende Audit Logs und SIEM-Integration (Splunk, Datadog). Die Audit Logs API erfasst jede signifikante Veränderung im Workspace: Wer hat wann einen API-Schlüssel rotiert? Welcher Nutzer hat die System-Prompts eines unternehmenskritischen Agenten modifiziert? Gab es fehlgeschlagene Authentifizierungsversuche? Diese granulare Telemetrie ist entscheidend, um interne Richtlinien zu überwachen und bei Sicherheitsvorfällen eine lückenlose forensische Analyse durchführen zu können. Die native Audit Logs und SIEM-Integration (Splunk, Datadog) erlaubt es Sicherheitsteams, diesen kontinuierlichen Datenstrom direkt in ihre zentralen Security Information and Event Management Systeme einzuleiten. Dadurch können automatisierte Alarme konfiguriert werden, beispielsweise wenn massenhaft Dokumente aus einem sensiblen Wissensordner gelöscht werden. Für die Marketing-Direktorin bedeutet dies die Gewissheit, dass die Nutzung der KI-Plattform kein Blindflug ist, sondern vollständig nachvollziehbar bleibt. Der nächste Umsetzungsschritt verlangt die Generierung eines spezialisierten API-Schlüssels, der ausschließlich Lesezugriff auf den Audit-Endpunkt besitzt. Dieser Schlüssel wird dem IT-Security-Team übergeben, welches die fortlaufende Ingestion in Splunk oder Datadog konfiguriert und entsprechende Überwachungs-Dashboards etabliert.

## Was die Rechtsabteilung wissen muss

Die rechtliche Freigabe von generativer KI ist oft der größte Engpass bei der Einführung. Daher ist es kritisch, proaktiv die Argumente zu strukturieren rund um das Thema: Was die Rechtsabteilung wissen muss. Im Kern fordert die Rechtsabteilung Sicherheiten bezüglich Datenschutz, Urheberrecht und der Vermeidung von unlauterem Wettbewerb. Das wichtigste Argument ist die vertraglich garantierte Trennung von Kundendaten und Modell-Training. Die Rechtsabteilung muss verifizieren, dass das Zero-Data-Retention-Agreement greift und keine Geschäftsgeheimnisse in die Modelle von OpenAI oder Anthropic abfließen. Weiterhin ist bezüglich Was die Rechtsabteilung wissen muss das EU-Hosting essenziell, um die Anforderungen der DSGVO zu erfüllen. Ein weiterer kritischer Punkt ist die Kennzeichnungspflicht für KI-generierte Inhalte (z. B. nach dem deutschen UWG). Die Plattform ermöglicht es, Workflows so zu konfigurieren, dass Wasserzeichen oder standardisierte Disclaimer ("KI-generierter Inhalt") in die Outputs integriert werden. Dies minimiert das Risiko von Abmahnungen durch die Wettbewerbszentrale (AI-Washing). Der direkte nächste Schritt für die Marketing-Direktorin ist die Zusammenstellung eines One-Pagers, der die ISO 27001 Zertifikate, den Standard-AVV und die Architektur-Skizze der europäischen Datenverarbeitung enthält. Dieses Dokument beantwortet 90 Prozent der Standard-Rückfragen der Juristen und beschleunigt den Freigabeprozess massiv.

## Was die Marketing-Direktorin der Geschäftsführung sagt

Um die notwendigen Budgets für eine Enterprise-KI-Plattform zu sichern, muss die Kommunikation auf C-Level-Ziele ausgerichtet sein. Das Narrativ unter Was die Marketing-Direktorin der Geschäftsführung sagt konzentriert sich auf Risikominimierung, Effizienzsteigerung und skalierbare Innovation. Anstatt technische Features zu erläutern, liegt der Fokus auf dem Schutz von Unternehmenswerten. Der unregulierte Einsatz von ChatGPT-Accounts durch Mitarbeiter erzeugt ein unkalkulierbares Haftungsrisiko (Shadow AI). Die Investition in Langdock ist primär eine Investition in Compliance und erst sekundär in Produktivität. Gleichzeitig betont Was die Marketing-Direktorin der Geschäftsführung sagt die messbaren ROI-Faktoren: Durch die Zentralisierung der Prompts, die Nutzung von Wissensordnern (Knowledge Folder) und die Automatisierung von Workflows sinken die operativen Agenturkosten. Das Marketing wird befähigt, strategische Inhalte schneller und in höherer Qualität zu produzieren, ohne das Markenvertrauen durch Datenschutzverletzungen zu riskieren. Ein weiterer zentraler Punkt für das C-Level ist die Unabhängigkeit: Durch die agnostische Plattform-Architektur ist das Unternehmen nicht an einen einzigen KI-Anbieter gebunden (Vendor Lock-in). Fällt ein Modell zurück, kann nahtlos auf ein leistungsstärkeres System gewechselt werden. Der nächste Schritt ist die Präsentation eines klaren Business Cases, der die Kosten der Plattform den eingesparten Arbeitsstunden und den mitigierten rechtlichen Risiken gegenüberstellt.

## Marketing-Szenarien aus dieser Domäne

### S-SG-001 AVV-Nachweis vor dem HubSpot-Sync erbringen

**Wann nutzen (Trigger):** Die Rechtsabteilung verlangt vor der Freigabe des HubSpot-Sync einen belastbaren Nachweis, dass ein Auftragsverarbeitungsvertrag (AVV) nach Art. 28 DSGVO vorliegt und das Modell-Training auf Unternehmensdaten vertraglich ausgeschlossen ist.
**Strategisches Ziel:** Den juristischen Freigabe-Engpass auflösen, indem die vertragliche Datenschutz-Grundlage (DSGVO) prüffähig dokumentiert wird, bevor die erste Kampagnendatei das CRM verlässt.
**Hands-on Ergebnis:** Ein AVV-Nachweisdossier, das die Rechtsabteilung ohne Rückfragen abzeichnen kann.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) als Ablage für AVV, ISO-27001-Zertifikat und Sub-Prozessor-Liste; Canvas / Document Editor für die Dossier-Erstellung. (Keine Web-Search — die Nachweise liegen intern vor.)
**Vorgehen (3-5 Schritte):**
1. Den über die Admin-Oberfläche abgeschlossenen AVV, das ISO-27001-Testat und die Sub-Prozessor-Liste in einen Wissensordner legen.
2. Im Canvas ein Dossier strukturieren: EU-Hosting (Azure), Zero-Data-Retention, Sub-Prozessoren, Breach-Fenster.
3. Jede Aussage mit dem konkreten Dokument aus dem Wissensordner belegen (keine erfundenen Klauseln).
4. Das Dossier der Rechtsabteilung als prüffähige Grundlage für die HubSpot-Sync-Freigabe übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Compliance-Referent. Erstelle aus den Dokumenten im Wissensordner ein AVV-Nachweisdossier für unsere Rechtsabteilung vor dem HubSpot-Sync. Belege EU-Hosting, Zero-Data-Retention und die Sub-Prozessor-Liste je mit der Quelle. Format: tabellarisch, je Anforderung eine Zeile mit Status und Fundstelle. Erfinde keine Klauseln; markiere Lücken explizit als 'offen'."
**Erwartetes Artefakt:** Tabellarisches AVV-Nachweisdossier mit Quellenverweis je Datenschutz-Anforderung und markierten offenen Punkten.
**Fallstricke (≥2 spezifisch):**
- Der Standard-AVV deckt nur die Langdock-Plattform ab, nicht den angebundenen Modell-Provider — Mitigation: die provider-seitige Zero-Data-Retention-Zusage (OpenAI/Anthropic) separat als eigenes Dokument beilegen.
- Die Sub-Prozessor-Liste veraltet still nach Provider-Wechseln — Mitigation: im Dossier ein Stand-Datum führen und eine quartalsweise Re-Prüfung als Aufgabe verankern.
**Anschluss-Szenario:** S-SG-002 für die vorgelagerte DSFA-Pflicht.

### S-SG-002 Datenschutz-Folgenabschätzung vor dem Agenten-Rollout strukturieren

**Wann nutzen (Trigger):** Der Datenschutzbeauftragte stuft den geplanten CRM-Agenten als wahrscheinlich hochriskante Verarbeitung ein und fordert eine Datenschutz-Folgenabschätzung (DSFA / DPIA nach Art. 35 DSGVO), bevor irgendein Team produktiv geht.
**Strategisches Ziel:** Die DSFA als strukturierten Prozess aufsetzen, sodass die Verarbeitung dokumentiert, Risiken bewertet und technisch-organisatorische Maßnahmen (TOMs) belegt sind — Rechtsgrundlage vor Technologie.
**Hands-on Ergebnis:** Ein DSFA-Entwurf entlang des 7-Schritte-Compliance-Programms als Vorlage für den Datenschutzbeauftragten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Strukturierung; Knowledge (Wissensordner) für DSK-Orientierungshilfe und interne Verarbeitungsbeschreibungen. (Beratungsartefakt, keine automatisierte Ausführung.)
**Vorgehen (3-5 Schritte):**
1. Die konkrete Verarbeitung beschreiben: welche Marketing-Daten, welcher Zweck, welcher Agent, welches Modell.
2. Im Canvas die DSFA entlang der 7 Schritte gliedern (Inventar, EU-AI-Act-Risikoklasse, Rechtsgrundlage/AVV, Folgenabschätzung, interne Richtlinien, Transparenz, TOMs).
3. Die TOMs konkret an Langdock-Fakten knüpfen: EU-Azure-Hosting, RBAC, Audit Logs, Trainings-Opt-out.
4. Die Risikobewertung pro Verarbeitungsschritt als Ampel kennzeichnen und Restrisiken benennen.
5. Den Entwurf dem Datenschutzbeauftragten zur finalen Bewertung vorlegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein DSFA-Berater. Strukturiere für den geplanten CRM-Marketing-Agenten eine Datenschutz-Folgenabschätzung entlang des 7-Schritte-Programms. Kontext: Verarbeitung von Kundenkontaktdaten zur Kampagnenpersonalisierung. Format: je Schritt ein Abschnitt mit Maßnahme und Restrisiko-Ampel. Stütze die TOMs ausschließlich auf die belegten Langdock-Eigenschaften aus dem Wissensordner."
**Erwartetes Artefakt:** DSFA-Entwurf mit 7 Abschnitten, TOM-Liste und Restrisiko-Ampel je Verarbeitungsschritt.
**Fallstricke (≥2 spezifisch):**
- Eine DSFA ohne benannten Restrisiko-Eigentümer bleibt folgenlos — Mitigation: je Restrisiko eine verantwortliche Rolle und ein Review-Datum eintragen.
- Die Risikoklasse nach EU AI Act wird mit dem DSGVO-Risiko verwechselt — Mitigation: beide Klassifikationen getrennt führen und die Art.-50-Transparenzpflicht separat als Schritt 6 markieren.
**Anschluss-Szenario:** S-SG-003 für die Mitbestimmung des Betriebsrats.

### S-SG-003 Betriebsrat-Vorlage zur KI-Einführung vorbereiten

**Wann nutzen (Trigger):** Der Betriebsrat macht von seinem Mitbestimmungsrecht Gebrauch und verlangt vor dem unternehmensweiten Rollout eine nachvollziehbare Darstellung, welche Leistungs- und Verhaltensdaten der Mitarbeiter durch die Plattform erfasst werden.
**Strategisches Ziel:** Vertrauen schaffen und eine Betriebsvereinbarung ermöglichen, indem klar abgegrenzt wird, was die Audit Logs erfassen — und dass sie nicht zur Leistungsüberwachung einzelner Mitarbeiter zweckentfremdet werden.
**Hands-on Ergebnis:** Eine Betriebsrat-Informationsvorlage mit Datenkatalog und Zweckbindung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für die Audit-Logs-Eventliste und die interne KI-Nutzungsrichtlinie. (Reines Beratungsartefakt.)
**Vorgehen (3-5 Schritte):**
1. Aus der Audit-Logs-Dokumentation auflisten, welche Events erfasst werden (Schlüsselrotation, Prompt-Änderung, fehlgeschlagene Logins).
2. Im Canvas zwei Spalten gegenüberstellen: "technisch erfasst" vs. "nicht zur Leistungsbewertung verwendet".
3. Die Zweckbindung an die interne KI-Nutzungsrichtlinie koppeln und auf das EU-Hosting verweisen.
4. Offene Verhandlungspunkte (z. B. Aufbewahrungsfristen der Logs) klar als verhandelbar kennzeichnen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für die Betriebsratsvorlage. Erstelle aus dem Wissensordner einen Datenkatalog: Welche Aktivitäten erfassen Langdocks Audit Logs, und welche Zweckbindung gilt? Format: zweispaltige Tabelle plus ein Absatz zur ausdrücklichen Nicht-Verwendung für individuelle Leistungsbewertung. Keine Aussage ohne Beleg aus dem Ordner."
**Erwartetes Artefakt:** Betriebsrat-Vorlage mit Audit-Event-Katalog, Zweckbindungs-Erklärung und Liste verhandelbarer Punkte.
**Fallstricke (≥2 spezifisch):**
- Audit Logs können bei naiver Auswertung wie ein Überwachungsinstrument wirken — Mitigation: explizit zusichern, dass Auswertungen nur aggregiert und anlassbezogen (Sicherheitsvorfall) erfolgen.
- Fehlende Aufbewahrungsfrist führt zu unbegrenzter Datenhaltung — Mitigation: eine konkrete Löschfrist für Log-Daten vorschlagen und in der Vorlage als Verhandlungsposition ausweisen.
**Anschluss-Szenario:** S-SG-004 für die Aufdeckung nicht freigegebener Tools.

### S-SG-004 Shadow-AI im Marketing-Team aufdecken und überführen

**Wann nutzen (Trigger):** Der Verdacht steht im Raum, dass Mitarbeiter unveröffentlichte Kampagnen-Drafts in private ChatGPT-Accounts kopieren; die Marketing-Direktorin will das Shadow-AI-Ausmaß belegen, bevor sie eine genehmigte Alternative durchsetzt.
**Strategisches Ziel:** Den unkontrollierten Datenabfluss (Shadow AI) sichtbar machen und in die DSGVO-konforme Plattform überführen — Risikominimierung als primärer Hebel, nicht Produktivität.
**Hands-on Ergebnis:** Ein Shadow-AI-Lagebild mit Maßnahmenplan zur Überführung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für die KI-Nutzungsrichtlinie und Tool-Inventar; Canvas / Document Editor für das Lagebild. (Hinweis: Eine technische Endpoint-Erfassung gehört nicht zu Langdock — die Daten liefert die IT; die Plattform stützt nur die Analyse und Kommunikation.)
**Vorgehen (3-5 Schritte):**
1. Das von der IT bereitgestellte Tool-Inventar (Schritt 1 des 7-Schritte-Programms) als Quelldatei in den Wissensordner geben.
2. Im Canvas die genutzten Consumer-Tools nach Risikoklasse und verarbeiteten Datenarten einordnen.
3. Für jedes Risiko eine genehmigte Langdock-Entsprechung benennen (z. B. Brand-Voice-Agent statt privatem ChatGPT).
4. Einen Überführungsplan mit Champion-Benennung und Stichtag formulieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Risk-Analyst. Erstelle aus dem IT-Tool-Inventar im Wissensordner ein Shadow-AI-Lagebild für mein Marketing-Team. Kontext: Verdacht auf Strategie-Drafts in privaten KI-Accounts. Format: Risiko-Tabelle (Tool, Datenart, Risiko, genehmigte Alternative) plus Überführungsplan mit Stichtag. Nutze nur das Inventar; spekuliere nicht über einzelne Personen."
**Erwartetes Artefakt:** Shadow-AI-Lagebild mit Risiko-Tabelle und terminierter Überführungsplan.
**Fallstricke (≥2 spezifisch):**
- Personenbezogene Schuldzuweisungen verbrennen das Vertrauen und torpedieren die Adoption — Mitigation: das Lagebild strikt auf Tools und Datenarten beschränken, nicht auf Namen.
- Ein Verbot ohne genehmigte Alternative treibt Shadow AI nur tiefer in den Untergrund — Mitigation: jede Sperrung mit einer benannten, sofort verfügbaren Langdock-Entsprechung koppeln.
**Anschluss-Szenario:** S-SG-005 für die saubere Rollen-Konfiguration der Alternative.

### S-SG-005 Fehlkonfigurierte Zugriffsrollen nach Least-Privilege bereinigen

**Wann nutzen (Trigger):** Ein Security-Review zeigt, dass eine externe Agentur Owner-Rechte auf einem unternehmenskritischen Agenten besitzt und ein Praktikant einen sensiblen Strategie-Wissensordner bearbeiten kann — die Zugriffskontrolle (RBAC) verstößt gegen das Least-Privilege-Prinzip.
**Strategisches Ziel:** Die Berechtigungsstruktur (RBAC) auf das Principle of Least Privilege zurückführen, sodass Job-Rollen sauber auf die dreistufigen Plattform-Rollen (Owner/Editor/Viewer) abgebildet sind.
**Hands-on Ergebnis:** Eine RBAC-Mapping-Tabelle plus konkrete Korrektur-Liste.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für den exportierten Ist-Zustand der Freigaben; Canvas / Document Editor für die Mapping-Tabelle. (Die eigentliche Rollenänderung erfolgt durch den Admin in den Workspace-Einstellungen, nicht durch die Plattform-KI.)
**Vorgehen (3-5 Schritte):**
1. Den Ist-Zustand der Rollen je Ressource (Workspace/Folder/Agent/Workflow) als Liste in den Wissensordner geben.
2. Im Canvas eine Soll-Mapping-Tabelle erstellen: Job-Rolle → Plattform-Rolle → erlaubte Ressourcen-Ebene.
3. Jede Abweichung markieren (Agentur Owner → Editor; Praktikant Editor → Viewer).
4. Eine priorisierte Korrektur-Liste für den Admin ableiten, kritischste Über-Berechtigungen zuerst.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Access-Governance-Berater. Gleiche den Ist-Zustand der Rollen im Wissensordner gegen das Least-Privilege-Prinzip ab. Format: Mapping-Tabelle (Job-Rolle, Soll-Plattform-Rolle, Ressourcen-Ebene) plus priorisierte Korrektur-Liste. Erfinde keine Nutzer; arbeite nur mit der Liste."
**Erwartetes Artefakt:** RBAC-Mapping-Tabelle und priorisierte Korrektur-Liste der Über-Berechtigungen.
**Fallstricke (≥2 spezifisch):**
- Workspace-Admin-Rechte werden mit Owner-Rechten auf einer Ressource verwechselt — Mitigation: klarstellen, dass Abrechnung, SSO und unternehmensweite Limits ausschließlich Workspace-Admins vorbehalten bleiben.
- Manuell korrigierte Rollen werden beim nächsten SCIM-Sync überschrieben — Mitigation: die Korrektur an der Gruppen-/Verzeichnisquelle vornehmen, nicht nur lokal in Langdock.
**Anschluss-Szenario:** S-SG-006 für die Gruppen-basierte Skalierung der Freigaben.

### S-SG-006 Group-Sharing für eine neue Abteilung sauber aufsetzen

**Wann nutzen (Trigger):** Eine neue Abteilung "Performance-Team" wird gegründet und benötigt Zugriff auf einen definierten Satz Agenten und Wissensordner — eine Einzelfreigabe an zwanzig Personen wäre fehleranfällig und beim nächsten Personalwechsel sofort veraltet.
**Strategisches Ziel:** Die Zusammenarbeit über das Group-Sharing-Modell skalieren, ohne die Vertraulichkeit sensibler Ressourcen (z. B. Financial-Reporting-Agent) zu gefährden — Silos abbauen bei gewahrter Datentrennung.
**Hands-on Ergebnis:** Ein Gruppen- und Freigabekonzept als Umsetzungsvorlage für die IT.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die bestehende Gruppen-Taxonomie aus dem Active Directory. (Die Gruppen-Synchronisation läuft über SCIM; die Plattform-KI berät nur zur Struktur.)
**Vorgehen (3-5 Schritte):**
1. Die geplante Aufgabe der neuen Abteilung und die dafür nötigen Ressourcen erfassen.
2. Im Canvas eine aufgabenbasierte Gruppe definieren, die in AD und Langdock identisch benannt ist.
3. Je Ressource die Gruppen-Rolle festlegen (Performance-Team = Editor auf Kampagnen-Agenten, kein Zugriff auf Financial-Reporting).
4. Den Abgleich mit der bestehenden AD-Gruppen-Taxonomie prüfen und Namenskonflikte auflösen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Berechtigungsstrukturen. Entwirf für die neue Abteilung 'Performance-Team' ein Group-Sharing-Konzept. Kontext: 20 Mitarbeiter, Zugriff nur auf Kampagnen-Agenten, kein Financial-Reporting. Format: Gruppen-Definition plus Freigabe-Matrix (Ressource × Gruppen-Rolle). Stütze die Gruppen-Namen auf die AD-Taxonomie im Wissensordner."
**Erwartetes Artefakt:** Gruppen-/Freigabekonzept mit Freigabe-Matrix (Ressource × Gruppen-Rolle).
**Fallstricke (≥2 spezifisch):**
- Abweichende Gruppen-Namen in AD und Langdock brechen die SCIM-Gruppensynchronisation still — Mitigation: identische Benennung als verbindliche Konventionsregel im Konzept festschreiben.
- Eine zu breit geschnittene Gruppe gewährt versehentlich Zugriff auf sensible Ressourcen — Mitigation: das Performance-Team explizit von der Financial-Reporting-Freigabe ausschließen und das in der Matrix sichtbar machen.
**Anschluss-Szenario:** S-SG-007 für das automatisierte Onboarding dieser Gruppe.

### S-SG-007 SSO- und SCIM-Onboarding mit dem Entra-Quirk absichern

**Wann nutzen (Trigger):** Beim Anbinden von Microsoft Entra ID für das automatisierte User-Provisioning scheitern erste Synchronisationen still — Nutzer werden nicht angelegt, ohne dass eine Fehlermeldung erscheint.
**Strategisches Ziel:** Ein reibungsloses, sicheres Onboarding über SAML SSO und SCIM etablieren, sodass Zugriffe beim Ein- und Austritt in Echtzeit und ohne manuelles Eingreifen vergeben bzw. entzogen werden.
**Hands-on Ergebnis:** Eine SSO/SCIM-Konfigurations-Checkliste für die IT-Administration mit dem Entra-Quirk als Pflichtschritt.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die interne IdP-Metadaten-Dokumentation. (Die Konfiguration selbst nimmt die IT in Entra und den Workspace-Einstellungen vor.)
**Vorgehen (3-5 Schritte):**
1. Die SSO-Voraussetzungen erfassen: IdP-Metadaten-Export, Domain-Verifizierung.
2. Im Canvas die SCIM-Schritte auflisten und den Pflichtschritt markieren: Parameter `?aadOptscim062020` an die Tenant-URL anhängen.
3. Den Test-Fall definieren: Probe-Nutzer anlegen, deaktivieren, sofortigen Zugriffsentzug verifizieren.
4. Den Umgang mit "pending users" dokumentieren (provisioniert, aber nie eingeloggt → von der Seat-Abrechnung ausgenommen).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IAM-Berater. Erstelle eine Konfigurations-Checkliste für SAML-SSO und SCIM-Provisioning mit Microsoft Entra ID. Kontext: erste Syncs scheitern still. Format: nummerierte Checkliste mit Verifikationsschritt je Punkt. Hebe den `?aadOptscim062020`-Parameter als Pflichtschritt hervor und erkläre kurz, warum er nötig ist."
**Erwartetes Artefakt:** SSO/SCIM-Onboarding-Checkliste mit hervorgehobenem Entra-Quirk und Verifikationsschritten.
**Fallstricke (≥2 spezifisch):**
- Fehlt der Parameter `?aadOptscim062020` an der Tenant-URL, scheitert die Provisionierung mit fehlerhaften JSON-Payloads ohne klare Fehlermeldung — Mitigation: ihn als ersten Pflichtschritt setzen und den Probe-Sync explizit gegenprüfen.
- Synced-Folder-Verbindungen brechen, wenn der erstellende Account beim Offboarding gelöscht wird (OAuth hängt am Ersteller-Token) — Mitigation: vor dem Austritt einen Owner-Transfer auf einen Funktions-Account durchführen.
**Anschluss-Szenario:** S-SG-008 für die laufende Überwachung dieser Zugänge.

### S-SG-008 Audit-Log-Übergabe an das SIEM-Team vorbereiten

**Wann nutzen (Trigger):** Das IT-Security-Team verlangt, dass alle sicherheitsrelevanten Workspace-Ereignisse kontinuierlich in das zentrale SIEM (Splunk oder Datadog) eingespeist werden, damit Alarme z. B. bei Massenlöschungen aus sensiblen Wissensordnern automatisch auslösen.
**Strategisches Ziel:** Die Nutzung der Plattform vollständig nachvollziehbar machen (kein Blindflug) und die Telemetrie sauber an die bestehende Security-Infrastruktur übergeben — mit minimal nötigen Rechten.
**Hands-on Ergebnis:** Ein Übergabe-Dokument für das SIEM-Team inklusive Schlüssel-Scope und überwachenswerter Events.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Übergabe-Dokument; Knowledge (Wissensordner) für die Audit-Logs-Endpoint-Doku und Schlüsselrichtlinie. (Die Ingestion konfiguriert das Security-Team; die Audit Logs API liefert die Daten.)
**Vorgehen (3-5 Schritte):**
1. Aus der Endpoint-Doku die relevanten Audit-Events auswählen (Schlüsselrotation, Prompt-Änderung, fehlgeschlagene Logins, Massenlöschungen).
2. Im Canvas den Schlüssel-Scope festlegen: ein dedizierter API-Schlüssel ausschließlich mit `AUDIT_LOGS_API`-Leserecht.
3. Die Paginierung dokumentieren (max. 50 Einträge pro Anfrage) als Hinweis für die Ingestion-Logik.
4. Vorgeschlagene Alarm-Regeln je Event formulieren (z. B. Schwelle für Dokument-Löschungen pro Stunde).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Security-Telemetrie-Berater. Erstelle ein Übergabe-Dokument für unser SIEM-Team zur Audit-Logs-Anbindung. Kontext: Alarme bei Massenlöschungen aus sensiblen Wissensordnern. Format: Event-Tabelle (Event, Relevanz, Alarm-Schwelle) plus ein Abschnitt zum minimalen Schlüssel-Scope. Stütze dich auf die Endpoint-Doku im Wissensordner."
**Erwartetes Artefakt:** SIEM-Übergabe-Dokument mit Event-Tabelle, Alarm-Schwellen und Least-Privilege-Schlüssel-Scope.
**Fallstricke (≥2 spezifisch):**
- Ein zu breit gescopter Schlüssel (z. B. mit Schreibrechten oder `USAGE_EXPORT_API`) wird zum Sicherheitsrisiko — Mitigation: strikt nur `AUDIT_LOGS_API`-Leserecht vergeben und 90-Tage-Rotation festlegen.
- Die 50-Einträge-Paginierung wird übersehen, sodass Events bei hohem Volumen verloren gehen — Mitigation: die Paginierungs-Grenze im Dokument hervorheben und die Ingestion auf vollständiges Durchblättern auslegen.
**Anschluss-Szenario:** S-SG-009 für die Absicherung der Datenresidenz selbst.

### S-SG-009 Datenresidenz und Trainings-Opt-out für ein US-Modell prüfen

**Wann nutzen (Trigger):** Ein Team möchte ein nur in der US-Region verfügbares Modell nutzen; die Compliance fragt, ob damit die DSGVO-Datenresidenz und die Trainings-Opt-out-Garantie verletzt würden.
**Strategisches Ziel:** Sicherstellen, dass sensible Marketing-Daten den europäischen Rechtsraum nicht verlassen und nicht in Modell-Training fließen — und für den US-Modell-Wunsch eine klare, belegte Entscheidung herbeiführen.
**Hands-on Ergebnis:** Eine Datenresidenz-Entscheidungsvorlage mit klarer Empfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für die Hosting- und Opt-out-Dokumentation; Canvas / Document Editor für die Entscheidungsvorlage. (Die Region-/Opt-out-Einstellung verwaltet der Admin im Workspace; hier wird beraten, nicht geschaltet.)
**Vorgehen (3-5 Schritte):**
1. Den Anwendungsfall und die betroffenen Datenarten erfassen (z. B. unveröffentlichte Produktinfos).
2. Im Wissensordner abgleichen: Welche Modelle laufen in der EU-Azure-Region, welche nur global/US?
3. Im Canvas gegenüberstellen: EU-Modell-Alternative vs. US-Modell mit Residenz-Risiko.
4. Eine Empfehlung formulieren — im Zweifel EU-Modell — und die Zero-Data-Retention-Zusage als Bedingung benennen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater. Bewerte aus dem Wissensordner, ob das gewünschte US-Modell unsere DSGVO-Datenresidenz und die Trainings-Opt-out-Garantie gefährdet. Kontext: Verarbeitung unveröffentlichter Produktinfos. Format: Gegenüberstellung EU- vs. US-Modell plus klare Empfehlung. Nenne nur belegte Regionen aus dem Ordner; rate nicht."
**Erwartetes Artefakt:** Datenresidenz-Entscheidungsvorlage mit EU/US-Gegenüberstellung und begründeter Empfehlung.
**Fallstricke (≥2 spezifisch):**
- Die Trainings-Opt-out-Garantie wird mit der Hosting-Region verwechselt — Mitigation: beide Eigenschaften getrennt prüfen, da ein EU-Hosting allein das Modell-Training nicht ausschließt.
- Die Modell-Region-Zuordnung ist datums-sensitiv und ändert sich mit Releases — Mitigation: ein Stand-Datum vermerken und vor dem Produktivgang eine Re-Prüfung der aktuellen Region einplanen.
**Anschluss-Szenario:** S-SG-010 für die Kennzeichnungspflicht der erzeugten Inhalte.

### S-SG-010 KI-Kennzeichnung nach UWG und EU AI Act vorbereiten

**Wann nutzen (Trigger):** Eine KI-gestützte Kampagne mit synthetischen Testimonials steht kurz vor Veröffentlichung; die Rechtsabteilung weist auf die Kennzeichnungspflicht nach UWG und Art. 50 EU AI Act hin und fordert eine konforme Disclaimer-Strategie.
**Strategisches Ziel:** Abmahnrisiken (AI-Washing, fehlende Kennzeichnung) vermeiden, indem KI-generierte Inhalte rechtskonform und einheitlich gekennzeichnet werden — bevor die Kampagne live geht.
**Hands-on Ergebnis:** Eine Kennzeichnungs-Richtlinie mit konkreten Disclaimer-Bausteinen je Inhaltstyp.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für UWG-Leitfaden und AI-Act-Fristen; Web-Search nur zur Verifikation der aktuell gültigen Art.-50-Frist gegen eine externe Primärquelle. (Web-Search wird hier bewusst eingesetzt, weil regulatorische Stichtage datums-sensitiv sind.)
**Vorgehen (3-5 Schritte):**
1. Die geplanten Inhaltstypen erfassen (synthetische Testimonials, KI-Bilder, unterstützend bearbeitete Texte).
2. Im Wissensordner prüfen, welche Inhalte kennzeichnungspflichtig sind und welche unter die Ausnahmen fallen.
3. Per Web-Search die aktuell gültige Art.-50-Transparenzfrist (Aug 2026 / Dez 2026 Grandfathering) gegen eine Primärquelle verifizieren.
4. Im Canvas Disclaimer-Bausteine je Inhaltstyp formulieren (z. B. "KI-generierter Inhalt"; synthetische Testimonials immer offenlegen).
5. Die Richtlinie als verbindlichen Bestandteil des Freigabe-Workflows verankern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Werbe-Compliance. Erstelle aus dem UWG-Leitfaden und den AI-Act-Fristen im Wissensordner eine Kennzeichnungs-Richtlinie für unsere KI-Kampagne. Kontext: synthetische Testimonials und KI-Bilder. Format: Tabelle (Inhaltstyp, kennzeichnungspflichtig ja/nein, Disclaimer-Baustein). Verifiziere die aktuelle Art.-50-Frist per Web-Search und nenne die Quelle."
**Erwartetes Artefakt:** Kennzeichnungs-Richtlinie mit Disclaimer-Bausteinen je Inhaltstyp und verifizierter AI-Act-Frist.
**Fallstricke (≥2 spezifisch):**
- Synthetische Testimonials und KI-Influencer werden als "nur unterstützend bearbeitet" fehleingestuft — Mitigation: klarstellen, dass diese nach § 5a UWG immer offenzulegen sind, ohne Ausnahme.
- Eine veraltete AI-Act-Frist im Wissensordner führt zu falscher Planung — Mitigation: den per Web-Search verifizierten Stichtag mit Quelle und Abrufdatum dokumentieren und den internen Beleg entsprechend aktualisieren.
**Anschluss-Szenario:** S-SG-001 für den AVV-Kreislauf bei neuen Datenflüssen.
