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
**Anschluss-Szenario:** S-SG-011 für die DSGVO-Art.-22-Prüfung automatisierter Newsletter-Logik.

### S-SG-011 DSGVO-Art.-22-Konflikt bei KI-gesteuerten Newsletter-Selektionen prüfen

**Wann nutzen (Trigger):** Der Datenschutzbeauftragte fragt, ob die KI-gestützte Newsletter-Segmentierung automatisierte Entscheidungen nach Art. 22 DSGVO auslöst — und ob damit Profiling-Beschränkungen oder ein Widerspruchsrecht der Empfänger greifen. (Quelle: A-11)
**Strategisches Ziel:** Rechtssicherheit herstellen: klären, wann die Empfänger-Selektion durch KI eine rechtlich relevante Entscheidung darstellt — und wann sie es nicht tut — um einen DSGVO-Verstoß vor dem nächsten Versand auszuschließen.
**Hands-on Ergebnis:** Eine Art.-22-Prüfmatrix, die für jeden Selektions-Schritt Profiling-Relevanz, Entscheidungstyp und erforderliche Schutzmaßnahme ausweist.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Prüfmatrix; Knowledge (Wissensordner) für die interne Segmentierungslogik und den DSK-Leitfaden zu Profiling.
**Vorgehen (4 Schritte):**
1. Die aktuelle Segmentierungslogik dokumentieren: welche Datenpunkte fließen ein, welche Entscheidung trifft das System (Versand ja/nein vs. Inhaltsvariante).
2. Im Canvas für jede Entscheidungsebene prüfen: Ist das Ergebnis rechtlich oder wirtschaftlich erheblich für den Empfänger? Ist ein Mensch im Loop?
3. Die Ampel-Klassifikation vornehmen: regelbasierter Versand mit KI-generiertem Inhalt (grün) vs. KI-bestimmtes Empfänger-Segment mit relevantem Ergebnis (rot = Art.-22-Pflichten).
4. Für rot-klassifizierte Schritte die Schutzmaßnahmen benennen: Human-in-the-Loop-Gate, explizite Einwilligung oder Widerspruchsmechanismus.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein DSGVO-Berater für automatisierte Entscheidungen. Prüfe die im Wissensordner hinterlegte Newsletter-Segmentierungslogik auf Art.-22-Relevanz. Kontext: KI selektiert Empfängersegmente auf Basis von Klickverhalten. Format: Prüfmatrix (Selektionsschritt, Entscheidungstyp, erhebliche Wirkung ja/nein, Schutzmaßnahme). Markiere jeden Schritt mit Ampelfarbe. Erfinde keine Rechtsgrundlagen; verweise auf Lücken im Ordner."
**Erwartetes Artefakt:** Art.-22-Prüfmatrix mit Ampel-Klassifikation je Segmentierungsschritt und Schutzmaßnahmen-Empfehlung.
**Fallstricke (≥2 spezifisch):**
- KI-generierter Inhalt wird mit KI-bestimmter Empfänger-Selektion verwechselt — nur Letzteres kann Art.-22-Relevanz auslösen; Mitigation: beide Ebenen in der Matrix separat führen.
- Eine rein regelbasierte IF/THEN-Selektion wird vorschnell als KI-Profiling eingestuft — Mitigation: klarstellen, dass Art. 22 ausschließlich vollautomatisierte, individuell erhebliche Entscheidungen erfasst.
**Anschluss-Szenario:** S-SG-012

### S-SG-012 EU AI Act Risiko-Inventar für Marketing-Use-Cases anlegen

**Wann nutzen (Trigger):** Die Compliance-Abteilung fordert bis zum nächsten Quartal ein dokumentiertes AI-Inventar aller Marketing-Use-Cases mit Risikoklassifikation nach EU AI Act — bevor die erweiterten Pflichten für KI-Anbieter und -Betreiber in Kraft treten. (Quelle: A-13)
**Strategisches Ziel:** Frühzeitig alle Marketing-Einsätze von Langdock nach EU-AI-Act-Risikoklassen (unannehmbares Risiko / hohes Risiko / begrenztes Risiko / minimales Risiko) dokumentieren, um im Audit-Fall eine vollständige und belegbare Übersicht vorweisen zu können.
**Hands-on Ergebnis:** Ein AI-Use-Case-Inventar mit Risikoklasse, Human-Oversight-Status und nächstem Review-Datum je Use-Case.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Inventar; Knowledge (Wissensordner) für die interne Use-Case-Beschreibungen und den EU-AI-Act-Anhang III (Hochrisiko-Liste).
**Vorgehen (4 Schritte):**
1. Alle aktiven Langdock-Use-Cases im Marketing auflisten (Agenten, Workflows, Segmentierungslogiken).
2. Im Canvas je Use-Case gegen Anhang III des EU AI Act abgleichen: fällt er unter Hochrisiko-Kategorien (z. B. Beschäftigung, Kreditwürdigkeit, biometrische Kategorisierung)?
3. Für jeden Use-Case die Risikoklasse festhalten und den Human-Oversight-Level dokumentieren (vollautomatisch vs. HITL-Checkpoint).
4. Ein nächstes Review-Datum setzen (empfohlen: quartalsweise) und Änderungs-Trigger definieren (neue Use-Cases, Modell-Wechsel).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein EU-AI-Act-Compliance-Berater. Erstelle aus den Use-Case-Beschreibungen im Wissensordner ein Risiko-Inventar nach EU AI Act. Kontext: Marketing-Use-Cases in einem B2B-Unternehmen, kein Beschäftigungs- oder Kreditscoring. Format: Tabelle (Use-Case, Risikoklasse, Begründung, Human-Oversight-Level, Review-Datum). Zitiere den jeweiligen Anhang-III-Eintrag oder nenne explizit 'nicht erfasst'."
**Erwartetes Artefakt:** AI-Risiko-Inventar mit Risikoklasse, Begründung und Human-Oversight-Status je Marketing-Use-Case.
**Fallstricke (≥2 spezifisch):**
- Hochrisiko-Klassifikation wird voreilig abgelehnt — Mitigation: Profiling-Use-Cases mit Auswirkung auf Verbraucherentscheidungen explizit gegen Anhang III prüfen, nicht pauschal ausschließen.
- Das Inventar wird einmalig erstellt und nicht gepflegt — Mitigation: Änderungs-Trigger (neuer Agent, Modell-Update) im Dokument als Pflicht-Review-Anlass festschreiben.
**Anschluss-Szenario:** S-SG-013

### S-SG-013 KI-Sentiment-Analyse auf Kundenfeedback DSGVO-konform gestalten

**Wann nutzen (Trigger):** Das Insights-Team möchte NPS-Freitexte und Support-Tickets mit Langdock automatisch auf Stimmung und Themen auswerten — der Datenschutzbeauftragte fragt, ob individuelle Sentiment-Scores personenbezogene Verarbeitung darstellen. (Quelle: A-14)
**Strategisches Ziel:** Den Unterschied zwischen datenschutzrechtlich unproblematischer aggregierter Analyse und rechtlich riskantem Individual-Profiling operativ verankern — damit das Team die Analyse nutzen kann, ohne eine Rechtsgrundlage zu verletzen.
**Hands-on Ergebnis:** Eine Verarbeitungs-Richtlinie mit klarer Grenzziehung zwischen erlaubter Aggregat-Analyse und berichtigungspflichtigem Individual-Profiling.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für die Datenschutzfolgenabschätzung und Art.-6-Rechtsgrundlagen.
**Vorgehen (4 Schritte):**
1. Den konkreten Anwendungsfall beschreiben: werden Scores je Ticket/Person gespeichert oder nur aggregiert je Kategorie?
2. Im Canvas die Trennlinie ziehen: Aggregat-Auswertung (kein Personenbezug, keine Rechtsgrundlage nötig) vs. Individual-Score mit Zuordnung (Profiling, Rechtsgrundlage Art. 6 (1) f) + Informationspflicht).
3. Für den Individual-Score-Pfad die Schutzmaßnahmen dokumentieren: Zweckbindung, Informationspflicht in Datenschutzerklärung, Widerspruchsrecht.
4. Die Richtlinie als Entscheidungsbaum im Wissensordner ablegen, damit neue Analyse-Projekte sie automatisch durchlaufen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater für Marketing-Analytics. Erstelle eine Verarbeitungs-Richtlinie für KI-Sentiment-Analyse auf Kundenfeedback. Kontext: NPS-Freitexte aus 5 000 Antworten, teilweise mit Kundennummer verknüpft. Format: Entscheidungsbaum (aggregiert vs. individuell) plus Maßnahmen-Checkliste je Pfad. Nutze nur die Rechtsgrundlagen aus dem Wissensordner; erfinde keine Paragraphen."
**Erwartetes Artefakt:** Verarbeitungs-Richtlinie mit Entscheidungsbaum (aggregiert vs. individuell) und Schutzmaßnahmen-Checkliste.
**Fallstricke (≥2 spezifisch):**
- Anonymisierte Aggregat-Scores werden mit gespeicherten Individual-Scores gleichgesetzt — Mitigation: im Entscheidungsbaum explizit zwischen "Ergebnis wird gelöscht nach Auswertung" und "Ergebnis wird Kundenprofil zugeordnet" unterscheiden.
- Die Rechtsgrundlage Art. 6 (1) f) (berechtigtes Interesse) wird ohne Interessenabwägung eingesetzt — Mitigation: die Abwägung als Pflichtdokument im Wissensordner verankern.
**Anschluss-Szenario:** S-SG-014

### S-SG-014 Wissensordner-Embeddings auf DSGVO-Personenbezug prüfen

**Wann nutzen (Trigger):** Der IT-Security-Berater stellt die Frage, ob die Vektor-Embeddings, die Langdock aus hochgeladenen Dokumenten erzeugt, als personenbezogene Daten gelten — und ob der Auftragsverarbeitungsvertrag diesen Verarbeitungsschritt explizit abdeckt. (Quelle: A-20)
**Strategisches Ziel:** Klären, unter welchen Bedingungen Embeddings personenbezogen sind, und sicherstellen, dass EU-Hosting, Verschlüsselung und AVV diese Verarbeitungsschicht lückenlos abdecken.
**Hands-on Ergebnis:** Eine Embedding-Datenschutz-Analyse mit Handlungsempfehlung: AVV-Ergänzung oder Status-quo-Bestätigung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Analyse; Knowledge (Wissensordner) für AVV, Sub-Prozessor-Liste und technische Architektur-Doku des EU-Hostings.
**Vorgehen (4 Schritte):**
1. Den Ursprungsdaten-Typ bestimmen: enthält der Wissensordner PII (Namen, E-Mails, Kundennummern) oder ausschließlich anonymisierte Inhalte?
2. Im Canvas die Personenbezug-Prüfung durchführen: Embeddings aus PII-Texten gelten als personenbezogen; Embeddings aus anonymisierten Texten i. d. R. nicht.
3. Für PII-basierte Embeddings die AVV-Deckung prüfen: erfasst der Vertrag die Vektor-Index-Verarbeitung als eigenständigen Schritt?
4. Maßnahmen ableiten: PII vor Upload pseudonymisieren oder AVV-Ergänzung bei Langdock beantragen; EU-Hosting und Encryption-at-rest als Mindeststandard bestätigen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein technischer Datenschutz-Berater. Prüfe, ob die Embeddings unseres Langdock-Wissensordners personenbezogen sind. Kontext: Ordner enthält Kundenbefragungs-Zusammenfassungen mit anonymisierten Referenzen. Format: Analyse (Personenbezug ja/nein, Begründung) plus Empfehlung zu AVV-Deckung und Schutzmaßnahme. Stütze dich auf die Hosting-Doku und den AVV im Wissensordner."
**Erwartetes Artefakt:** Embedding-Datenschutz-Analyse mit Personenbezug-Bewertung, AVV-Lücken und Handlungsempfehlung.
**Fallstricke (≥2 spezifisch):**
- Anonymisierung wird angenommen, ohne zu prüfen, ob Kontextinformationen Re-Identifikation ermöglichen — Mitigation: Anonymisierungsgrad explizit dokumentieren und nicht auf Plausibilität verlassen.
- Der AVV deckt die Langdock-Plattform, aber nicht den angebundenen Vektor-Datenbank-Provider ab — Mitigation: Sub-Prozessor-Liste auf Embedding-spezifische Dienste prüfen.
**Anschluss-Szenario:** S-SG-015

### S-SG-015 Schweizer DSG-Compliance für Tochtergesellschaft klären

**Wann nutzen (Trigger):** Die Schweizer Tochtergesellschaft soll den gemeinsamen Langdock-Workspace mitnutzen — der dortige Datenschutzbeauftragte fragt, ob das revidierte DSG (in Kraft seit September 2023) zusätzliche Anforderungen stellt, die über die DSGVO-Abdeckung hinausgehen. (Quelle: A-17)
**Strategisches Ziel:** Belegen, dass der EU-DSGVO-konforme Langdock-Workspace auch das Schweizer DSG erfüllt, und eventuelle Lücken (Meldepflicht, Privacy-by-Design-Nachweis) proaktiv schließen.
**Hands-on Ergebnis:** Eine DSG-Gap-Analyse mit Ampel-Status je Anforderungskategorie und konkreten Nachbesserungsschritten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Gap-Analyse; Knowledge (Wissensordner) für DSGVO-AVV, EU-Hosting-Nachweis und DSG-Vergleichstabelle; Web-Search zur Verifikation aktueller EDÖB-Angemessenheitsbeschlüsse.
**Vorgehen (4 Schritte):**
1. Die relevanten DSG-Anforderungen auflisten: Angemessenheits-Beschluss für EU-Transfer, Datenschutzerklärungspflicht, Meldepflicht bei Verletzung (72 h an EDÖB), Privacy-by-Design.
2. Per Web-Search den aktuellen EDÖB-Angemessenheitsbeschluss für EU-Hosting verifizieren und Quelle notieren.
3. Im Canvas je Anforderung den DSGVO-Abdeckungsgrad bewerten und Lücken markieren (z. B. separate Schweizer Datenschutzerklärung nötig?).
4. Einen Maßnahmenplan mit Verantwortlichkeit und Frist für jede Lücke erstellen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater für DACH-Compliance. Führe eine DSG-Gap-Analyse für unsere Schweizer Tochter durch, die den EU-Langdock-Workspace mitnutzt. Kontext: Workspace auf EU-Azure-Hosting, DSGVO-AVV liegt vor. Format: Tabelle (DSG-Anforderung, DSGVO-Abdeckung ja/nein, Lücke, Maßnahme). Verifiziere den EDÖB-Angemessenheitsbeschluss per Web-Search und nenne die Quelle."
**Erwartetes Artefakt:** DSG-Gap-Analyse mit Ampel-Status und Maßnahmenplan je Anforderungskategorie.
**Fallstricke (≥2 spezifisch):**
- Das revidierte DSG wird mit der alten Fassung vor 2023 verglichen — Mitigation: explizit auf die Fassung ab September 2023 abstellen und den EDÖB-Beschluss datieren.
- Die DSGVO-Abdeckung wird als vollständige DSG-Abdeckung angenommen — Mitigation: spezifische DSG-Pflichten (z. B. Meldepflicht Fristen, Privacy-by-Design-Dokumentationspflicht) separat abhaken.
**Anschluss-Szenario:** S-SG-016

### S-SG-016 Mitarbeiterbefragungen per KI auswerten — Betriebsrat-Mitbestimmung absichern

**Wann nutzen (Trigger):** HR und Marketing wollen Langdock nutzen, um interne Mitarbeiterbefragungen zu clustern und Handlungsfelder zu identifizieren — der Betriebsrat macht sein Mitbestimmungsrecht nach BetrVG § 87 (1) Nr. 6 geltend, bevor die Auswertung startet. (Quelle: A-18)
**Strategisches Ziel:** Die KI-Auswertung rechtskonform durch die Mitbestimmung führen, ohne das Projekt zu blockieren — durch eine dokumentierte Betriebsvereinbarungs-Vorlage, die Überwachungsfreiheit und Zweckbindung garantiert.
**Hands-on Ergebnis:** Eine Betriebsvereinbarungs-Vorlage für den KI-Einsatz bei Mitarbeiterbefragungen mit Datenkatalog und Zweckbindungsklausel.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für die bestehende Betriebsvereinbarung Digitalisierung und die Audit-Logs-Eventliste.
**Vorgehen (4 Schritte):**
1. Den konkreten Verarbeitungsumfang beschreiben: anonymisierte Freitexte, Aggregat-Cluster, kein Individual-Scoring.
2. Im Canvas die Vorlage strukturieren: Zweck, Datenumfang, Anonymisierungsverfahren, Zweckbindung, Löschfristen, Ausschluss der Individualauswertung.
3. Den Audit-Log-Scope für diesen Use-Case begrenzen: keine User-Level-Auswertung der KI-Abfragen im Betriebsrat-Scope.
4. Eine Eskalationsklausel für den Fall formulieren, dass die anonymisierten Ergebnisse dennoch Rückschlüsse auf Einzelpersonen erlauben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Berater für Betriebsrat-Mitbestimmung bei KI. Erstelle eine Betriebsvereinbarungs-Vorlage für die KI-gestützte Auswertung interner Mitarbeiterbefragungen. Kontext: anonymisierte Freitexte, Aggregat-Cluster, kein Individual-Scoring. Format: strukturiertes Dokument mit Abschnitten Zweck, Datenumfang, Anonymisierungsverfahren, Zweckbindung, Löschfristen und Eskalationsklausel. Stütze die Formulierungen auf die Betriebsvereinbarung Digitalisierung im Wissensordner."
**Erwartetes Artefakt:** Betriebsvereinbarungs-Vorlage mit Datenkatalog, Zweckbindungsklausel und Eskalationsmechanismus.
**Fallstricke (≥2 spezifisch):**
- Anonymisierung wird zugesagt, aber das Verarbeitungssystem erlaubt Re-Identifikation bei kleinen Abteilungen — Mitigation: Mindest-Abteilungsgröße als Schwellenwert in die Vorlage aufnehmen (Empfehlung: n ≥ 10).
- Die Vorlage deckt nur die Erstauswertung ab, nicht spätere Folgeanalysen mit demselben Datensatz — Mitigation: Zweckbindung auf konkret benannte Auswertungsrunden begrenzen und jede Erweiterung als mitbestimmungspflichtig kennzeichnen.
**Anschluss-Szenario:** S-SG-017

### S-SG-017 Vendor-Lock-in-Risiko bei Langdock systematisch reduzieren

**Wann nutzen (Trigger):** Der CTO fragt in der Jahresplanung, welche Abhängigkeiten entstehen, wenn das Marketing-Team alle Wissensordner, Agenten und Workflows in Langdock aufbaut — und wie das Unternehmen bei einem Plattformwechsel handlungsfähig bleibt. (Quelle: A-03)
**Strategisches Ziel:** Eine BYOK-kompatible Multi-Provider-Strategie und einen Daten-Portabilitäts-Plan definieren, der im Worst-Case-Szenario (Plattformausfall, Pricing-Schock, strategischer Wechsel) einen geordneten Übergang ermöglicht.
**Hands-on Ergebnis:** Ein Vendor-Lock-in-Assessment mit drei Portabilitäts-Maßnahmen und einem jährlichen Wechsel-Drill-Protokoll.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Assessment; Knowledge (Wissensordner) für die bestehende BYOK-Konfiguration und Wissensordner-Export-Dokumentation.
**Vorgehen (4 Schritte):**
1. Die Lock-in-Dimensionen inventarisieren: Wissensordner-Inhalte (exportierbar als Markdown?), Agenten-Konfigurationen (exportierbar?), Workflow-Definitionen (JSON-Export?), Modell-Abhängigkeiten (BYOK-Pfad vorhanden?).
2. Im Canvas je Dimension den Portabilitätsgrad bewerten (hoch / mittel / niedrig) und die Export-Methode dokumentieren.
3. Drei Sofortmaßnahmen ableiten: BYOK für kritische Workflows aktivieren, Wissensordner-Inhalte parallel in Git versionieren, Wechsel-Drill (1× jährlich) als Kalender-Termin verankern.
4. Das Assessment dem CTO als Risiko-Vorlage mit quantifizierten Wechselkosten übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IT-Strategie-Berater. Erstelle ein Vendor-Lock-in-Assessment für unseren Langdock-Einsatz im Marketing. Kontext: Wissensordner mit 200 Dokumenten, 12 Agenten, 5 Workflows, BYOK noch nicht aktiviert. Format: Tabelle (Lock-in-Dimension, Portabilitätsgrad, Export-Methode, Risiko) plus drei priorisierte Maßnahmen. Nutze die Export-Dokumentation im Wissensordner; spekuliere nicht über undokumentierte Features."
**Erwartetes Artefakt:** Vendor-Lock-in-Assessment mit Portabilitäts-Matrix und drei priorisierten Sofortmaßnahmen.
**Fallstricke (≥2 spezifisch):**
- Wissensordner-Inhalte werden als exportiert angesehen, obwohl nur Metadaten, nicht die Dokumente selbst, im Export enthalten sind — Mitigation: den Export-Schritt manuell einmal testen und das Ergebnis im Assessment dokumentieren.
- BYOK wird als vollständige Portabilitätslösung betrachtet — Mitigation: klarstellen, dass BYOK nur die Modell-Abhängigkeit löst, nicht die Wissensordner- oder Workflow-Portabilität.
**Anschluss-Szenario:** S-SG-018

### S-SG-018 Sicherheitsfragebogen für Enterprise-Procurement beantworten

**Wann nutzen (Trigger):** Ein Konzernkunde schickt im Rahmen einer gemeinsamen Kampagnen-Zusammenarbeit einen 40-seitigen Security-Questionnaire — die Marketing-Direktorin muss Antworten zu Datenhaltung, Verschlüsselung, Zertifizierungen und Incident-Response liefern, ohne wochenlang auf IT zu warten. (Quelle: sources/12 Q129)
**Strategisches Ziel:** Den Procurement-Prozess beschleunigen, indem die belegten Langdock-Sicherheitseigenschaften strukturiert auf die Fragebogen-Felder gemappt werden — ohne Aussagen zu erfinden, die im Audit nicht standhalten.
**Hands-on Ergebnis:** Ein vorausgefüllter Security-Questionnaire-Entwurf mit Quellenverweisen je Antwort und markierten offenen Punkten.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner) für ISO-27001-Testat, SOC-2-Type-II-Bericht, AVV und Sub-Prozessor-Liste; Canvas / Document Editor für den Entwurf.
**Vorgehen (4 Schritte):**
1. Den Fragebogen in Themenblöcke gliedern (Hosting/Datenresidenz, Verschlüsselung, Zertifizierungen, Incident-Response, Sub-Prozessoren).
2. Im Canvas je Block die belegten Langdock-Eigenschaften aus dem Wissensordner zuordnen: EU-Azure-Hosting, TLS-in-transit / AES-at-rest, ISO-27001, 72-h-Breach-Notification.
3. Antworten, die interne Unternehmensmaßnahmen erfordern (z. B. eigene BCP-Dokumentation), als "intern auszufüllen" markieren.
4. Den Entwurf dem IT-Security-Team zur finalen Freigabe übergeben, bevor er an den Kunden geht.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Security-Questionnaire-Assistent. Beantworte die im Chat eingefügten Fragebogen-Fragen auf Basis der Dokumente im Wissensordner. Kontext: Enterprise-Kunde fragt nach Datenresidenz, Verschlüsselung und Zertifizierungen. Format: je Frage eine Antwort mit Quellenangabe (Dokument + Abschnitt). Markiere Fragen, für die keine Quelldoku vorhanden ist, explizit als 'intern zu klären'. Erfinde keine Eigenschaften."
**Erwartetes Artefakt:** Vorausgefüllter Security-Questionnaire-Entwurf mit Quellenverweisen und markierten offenen Punkten.
**Fallstricke (≥2 spezifisch):**
- Antworten werden aus allgemeinem KI-Wissen generiert statt aus den tatsächlichen Zertifikaten — Mitigation: Prompt explizit auf Wissensordner-Quellen einschränken und halluzinierte Aussagen als Haftungsrisiko benennen.
- Der Fragebogen enthält Fragen zur eigenen unternehmensinternen Sicherheit, nicht nur zur Plattform — Mitigation: Langdock-spezifische Antworten von eigenen Unternehmensantworten trennen und Letztere als "intern auszufüllen" kennzeichnen.
**Anschluss-Szenario:** S-SG-019

### S-SG-019 Datenlöschung ausgeschiedener Mitarbeiter DSGVO-konform abwickeln

**Wann nutzen (Trigger):** HR meldet den Austritt einer Mitarbeiterin aus dem Marketing-Team — die Datenschutzbeauftragte fragt, wie vollständig ihre Chat-Historien, hochgeladenen Dokumente und erstellten Agenten-Konfigurationen aus dem Workspace entfernt werden und welche Fristen gelten. (Quelle: sources/12 Q130)
**Strategisches Ziel:** Das "Recht auf Vergessenwerden" nach Art. 17 DSGVO operativ umsetzen, indem ein dokumentierter Offboarding-Prozess für Langdock-Accounts etabliert wird — inklusive Owner-Transfer für weitergenutzte Ressourcen.
**Hands-on Ergebnis:** Eine Offboarding-Checkliste für Langdock-Accounts mit Lösch-, Transfert- und Dokumentationsschritten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die interne Datenschutzrichtlinie und die Langdock-Admin-Dokumentation zu Account-Löschung.
**Vorgehen (4 Schritte):**
1. Den Umfang der zu löschenden Daten erfassen: Chat-Historien, hochgeladene Dateien im persönlichen Bereich, geteilte Ressourcen, Agenten-Konfigurationen mit dem Account verknüpft.
2. Die Transfer-Schritte dokumentieren: geteilte Agenten und Wissensordner auf einen Funktions-Account oder Nachfolger übertragen, bevor der Account gelöscht wird.
3. Die Löschfristen aus der internen Datenschutzrichtlinie und der Langdock-Retention-Konfiguration (30/90/365 Tage) abgleichen und die kürzere Frist anwenden.
4. Den Nachweis der Löschung als Datenschutz-Log-Eintrag sichern (Datum, durchgeführte Schritte, Bestätigung aus Admin-Oberfläche).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater für Mitarbeiter-Offboarding. Erstelle eine Langdock-Offboarding-Checkliste für ausgeschiedene Marketing-Mitarbeiter. Kontext: Workspace mit Chat-Historien, geteilten Wissensordnern und Agenten-Konfigurationen. Format: nummerierte Checkliste (Schritt, Verantwortlich, Frist, Nachweis) mit separaten Abschnitten Löschen und Transferieren. Stütze die Fristen auf die Datenschutzrichtlinie im Wissensordner."
**Erwartetes Artefakt:** Langdock-Offboarding-Checkliste mit Lösch-, Transfer- und Dokumentationsschritten je Ressourcentyp.
**Fallstricke (≥2 spezifisch):**
- Geteilte Ressourcen werden mitgelöscht, wenn der erstellende Account entfernt wird — Mitigation: Owner-Transfer zwingend vor Account-Deaktivierung als Schritt Nr. 1 verankern.
- Die Löschung aus dem Workspace-UI entfernt nicht automatisch Daten aus Backup-Systemen — Mitigation: Backup-Retention-Frist in der Checkliste gesondert dokumentieren und mit IT abstimmen.
**Anschluss-Szenario:** S-SG-020

### S-SG-020 KI-Incident-Response bei fehlerhaften oder rufschädigenden Outputs einleiten

**Wann nutzen (Trigger):** Ein Langdock-Agent hat in einem automatisierten Newsletter eine faktisch falsche und potenziell rufschädigende Aussage über einen Mitbewerber erzeugt — die Nachricht wurde an 15 000 Empfänger versandt, bevor der Fehler bemerkt wurde. (Quelle: A-41)
**Strategisches Ziel:** Den Schaden begrenzen, den Vorfall dokumentieren und die Ursache im Wissensordner beheben — mit einem strukturierten Incident-Response-Playbook, das den nächsten Fall verhindert.
**Hands-on Ergebnis:** Ein KI-Incident-Response-Playbook mit Sofort-Stopp, Kommunikations-Template und Root-Cause-Checkliste.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Playbook; Knowledge (Wissensordner) für die Audit-Logs, Wissensordner-Quelle des Fehlers und UWG-Leitfaden.
**Vorgehen (4 Schritte):**
1. Sofort-Stopp einleiten: den Workflow deaktivieren, weitere automatisierte Aussendungen verhindern, Audit-Log-Pull für den betroffenen Zeitraum initiieren.
2. Den Schaden bewerten: Empfängerkreis, Reichweite, UWG-§4-Risiko (Mitbewerber-Herabsetzung), Korrekturbedarf.
3. Kommunikations-Template erstellen: Korrektur-Newsletter (klare Richtigstellung ohne Verschlimmbessern) und interne Eskalations-Memo.
4. Root-Cause-Analyse: Welche Quelle im Wissensordner oder welcher Prompt hat die falsche Aussage ausgelöst? Quelle bereinigen, Fact-Check-Checkpoint vor nächstem Versand einbauen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Krisenberater für KI-Incidents. Erstelle ein Incident-Response-Playbook für einen fehlerhaft versendeten Marketing-Newsletter. Kontext: 15 000 Empfänger, falsche Mitbewerber-Aussage, UWG-Risiko. Format: Playbook mit vier Abschnitten (Sofort-Stopp, Schaden-Bewertung, Korrektur-Kommunikation, Root-Cause-Analyse) plus Korrektur-Newsletter-Template. Stütze die UWG-Risikoeinschätzung auf den Leitfaden im Wissensordner."
**Erwartetes Artefakt:** KI-Incident-Response-Playbook mit Sofort-Stopp-Protokoll, Korrektur-Newsletter-Template und Root-Cause-Checkliste.
**Fallstricke (≥2 spezifisch):**
- Die Korrektur-Kommunikation betont den KI-Fehler so stark, dass sie das Vertrauen in alle KI-generierten Inhalte des Unternehmens untergräbt — Mitigation: Fokus auf konkreten Fehler und Maßnahme legen, nicht auf die Technologie als solche.
- Der Workflow wird reaktiviert, ohne die Quell-Ursache im Wissensordner zu bereinigen — Mitigation: Root-Cause-Fix als Pflicht-Gate vor Reaktivierung im Playbook festschreiben.
**Anschluss-Szenario:** S-SG-021

### S-SG-021 Human-in-the-Loop-Gates für Hochrisiko-Marketing-Workflows definieren

**Wann nutzen (Trigger):** Der Compliance-Beauftragte verlangt, dass automatisierte Workflows, die rechtlich sensible Inhalte (Preise, Produktversprechen, Wettbewerberaussagen) publizieren, vor dem Versand einen dokumentierten menschlichen Prüfschritt durchlaufen. (Quelle: A-13, A-32)
**Strategisches Ziel:** HITL-Checkpoints (Human-in-the-Loop) systematisch in bestehende Workflows einbauen und dokumentieren — sodass KI-Outputs bei Hochrisiko-Content niemals ohne menschliche Freigabe die Plattform verlassen.
**Hands-on Ergebnis:** Eine HITL-Gate-Matrix: je Workflow-Typ der notwendige Checkpoint, die verantwortliche Rolle und das Freigabe-Protokoll.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Gate-Matrix; Knowledge (Wissensordner) für Workflow-Inventar und interne Freigabe-Richtlinie.
**Vorgehen (4 Schritte):**
1. Das Workflow-Inventar nach Risiko-Klasse sortieren: automatisierter Versand an Endkunden (hoch), internes Reporting (niedrig), Social-Media-Draft-Generierung (mittel).
2. Im Canvas je Risiko-Klasse den HITL-Checkpoint-Typ festlegen: Vier-Augen-Freigabe, Rechts-Check, Brand-Voice-Review.
3. Die Checkpoint-Position im Workflow-Flow bestimmen: nach Recherche-Schritt (Fakten-Check) und vor Publish-Schritt (Rechts-/Brand-Check) — niemals nur am Anfang.
4. Die Freigabe-Dokumentation definieren: wer bestätigt was, in welchem System (Slack-Approval, Langdock-HITL-Node, E-Mail-Bestätigung) und mit welchem Audit-Trail.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Workflow-Governance-Berater. Erstelle eine HITL-Gate-Matrix für unsere Marketing-Workflows. Kontext: Workflows produzieren Kunden-E-Mails, Social-Media-Posts und Pressemitteilungen. Format: Tabelle (Workflow-Typ, Risiko-Klasse, HITL-Checkpoint-Art, Position im Flow, Verantwortliche Rolle, Freigabe-Kanal). Nutze das Workflow-Inventar und die Freigabe-Richtlinie im Wissensordner."
**Erwartetes Artefakt:** HITL-Gate-Matrix mit Checkpoint-Typ, Position, Verantwortlichkeit und Freigabe-Kanal je Workflow-Typ.
**Fallstricke (≥2 spezifisch):**
- HITL wird nur am Anfang eines Workflows platziert (Briefinng-Freigabe), aber nicht vor dem tatsächlichen Versand — Mitigation: mindestens einen Checkpoint unmittelbar vor dem finalen Publish-Schritt als Pflicht definieren.
- Die Freigabe erfolgt informell per Zuruf und hinterlässt keinen Audit-Trail — Mitigation: jede Freigabe als Eintrag im Audit-Log oder im HITL-Node mit Zeitstempel und User-ID erzwingen.
**Anschluss-Szenario:** S-SG-022

### S-SG-022 Modell-Provider-Verträge auf Trainingsausschluss und Datenresidenz prüfen

**Wann nutzen (Trigger):** Der Einkauf verhandelt den Jahresvertrag mit einem neuen LLM-Provider (z. B. Microsoft Azure OpenAI Service oder AWS Bedrock) — die Rechtsabteilung fragt, welche Vertragsklauseln zwingend enthalten sein müssen, damit die Zero-Data-Retention-Garantie und die DSGVO-Datenresidenz auch für über Langdock geroutete Prompts gelten. (Quelle: sources/12 Q133)
**Strategisches Ziel:** Die Vertragsgrundlage mit dem Modell-Provider wasserdicht machen, sodass keine Lücke zwischen Langdock-Plattformvertrag und Provider-Zusagen entsteht.
**Hands-on Ergebnis:** Eine Vertrags-Checkliste mit Pflichtklauseln für LLM-Provider-Agreements, die an den Einkauf übergeben werden kann.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für den bestehenden Langdock-AVV, die Sub-Prozessor-Liste und den vorliegenden Provider-Entwurf.
**Vorgehen (4 Schritte):**
1. Den Langdock-AVV und die Sub-Prozessor-Liste auf den jeweiligen Provider abgleichen: ist er bereits als gelisteter Sub-Prozessor mit Pflichten versehen?
2. Im Canvas die Pflichtklauseln für den Provider-Vertrag auflisten: Zero-Data-Retention für Prompts und Completions, Data-Processing-Agreement nach Art. 28 DSGVO, EU-Datenresidenz oder SCCs, Breach-Notification-Fenster (≤72 h).
3. Den vorliegenden Provider-Entwurf Klausel für Klausel gegen die Checkliste abgleichen und Lücken markieren.
4. Nachverhandlungs-Prioritäten setzen: welche Klauseln sind absolut nicht verhandelbar (Zero-Retention), welche sind durch technische Maßnahmen kompensierbar?
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Vertrags-Compliance-Berater. Erstelle eine Pflichtklausel-Checkliste für einen LLM-Provider-Vertrag unter DSGVO. Kontext: Provider wird über Langdock angebunden, Datenresidenz EU erforderlich, Zero-Retention-Garantie Bedingung. Format: Checkliste (Klausel, Pflicht ja/nein, im Entwurf enthalten ja/nein/unklar, Nachverhandlungsprioritätität). Stütze dich auf AVV und Sub-Prozessor-Liste im Wissensordner; markiere Lücken explizit."
**Erwartetes Artefakt:** LLM-Provider-Vertrags-Checkliste mit Pflichtklauseln, Abgleich gegen Entwurf und priorisierten Nachverhandlungspunkten.
**Fallstricke (≥2 spezifisch):**
- Der Langdock-AVV wird als ausreichend für den Provider betrachtet — Mitigation: klarstellen, dass Sub-Prozessoren eigene DPAs benötigen, die die Weitergabe von Prompts an das Modell explizit erfassen.
- "No training on customer data" im Anbieter-Marketingmaterial wird mit einer vertraglichen Zusage verwechselt — Mitigation: nur unterzeichnete DPA-Dokumente als Beleg akzeptieren, keine unilateralen AGB-Klauseln.
**Anschluss-Szenario:** S-SG-023

### S-SG-023 AI-Governance-Framework für das Marketing-Team aufbauen

**Wann nutzen (Trigger):** Die Marketing-Direktorin will einen strukturierten "KI-Ethik-Kompass" für ihr Team einführen — nicht als formelles Compliance-Dokument, sondern als praktischen Entscheidungsrahmen, der bei jeder neuen KI-Initiative die richtigen Fragen stellt. (Quelle: A-50)
**Strategisches Ziel:** Ein praxistaugliches AI-Governance-Framework etablieren, das auf vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) basiert und die Marketing-Aktivitäten mit EU AI Act und Branchen-Kodizes verbindet.
**Hands-on Ergebnis:** Ein AI-Governance-1-Pager mit vier Säulen, Anwendungsbeispielen je Säule und einem Entscheidungsbaum für neue KI-Initiativen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den 1-Pager; Knowledge (Wissensordner) für EU-AI-Act-Grundsätze, UWG-Leitfaden und Branchen-Kodizes.
**Vorgehen (4 Schritte):**
1. Die vier Governance-Säulen mit konkreten Marketing-Fragestellungen füllen: Transparenz (Was muss der Verbraucher über KI-Einsatz wissen?), Konsent (Hat der Betroffene eingewilligt?), Reversibilität (Kann die KI-Entscheidung rückgängig gemacht werden?), Beweisbarkeit (Können wir die KI-Ausgabe belegen?).
2. Im Canvas je Säule zwei bis drei konkrete Marketing-Beispiele ergänzen (z. B. Säule Transparenz: synthetische Testimonials immer kennzeichnen).
3. Einen Entscheidungsbaum entwickeln: Welche Säule ist bei welchem Use-Case-Typ kritisch?
4. Den 1-Pager als verbindliche Onboarding-Pflichtlektüre im Wissensordner ablegen und in den Champion-Einführungsprozess integrieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Governance-Berater. Erstelle einen AI-Governance-1-Pager für mein Marketing-Team auf Basis der vier Säulen Transparenz, Konsent, Reversibilität und Beweisbarkeit. Kontext: B2B-Marketing, DACH-Region, EU AI Act und UWG als Rechtsrahmen. Format: je Säule eine Definition, zwei Marketing-Beispiele und eine Prüffrage als Entscheidungsbaum. Nutze die EU-AI-Act-Grundsätze und den UWG-Leitfaden im Wissensordner."
**Erwartetes Artefakt:** AI-Governance-1-Pager mit vier Säulen, Marketing-Anwendungsbeispielen und Entscheidungsbaum für neue KI-Initiativen.
**Fallstricke (≥2 spezifisch):**
- Der 1-Pager wird zu abstrakt formuliert und landet ungelesen in der Schublade — Mitigation: je Säule konkrete Marketing-Szenarien aus dem eigenen Team verwenden, keine generischen Formulierungen.
- Die Governance-Säulen werden als einmalige Pflicht behandelt — Mitigation: einen quartalsweisen Review-Termin einplanen, bei dem neue Use-Cases gegen den Entscheidungsbaum geprüft werden.
**Anschluss-Szenario:** S-SG-024

### S-SG-024 Datenretention-Konfiguration für Chat-Historien und Wissensordner festlegen

**Wann nutzen (Trigger):** Der Datenschutzbeauftragte stellt fest, dass die Standard-Retention-Einstellung für Chat-Historien und Wissensordner-Metadaten im Workspace nicht explizit konfiguriert wurde — und verlangt eine nachvollziehbare, dokumentierte Entscheidung über die Aufbewahrungsfristen, bevor die Plattform für sensible Projekte freigegeben wird. (Quelle: sources/12 Q135)
**Strategisches Ziel:** Eine Retention-Policy für alle Datentypen im Langdock-Workspace festlegen, die den DSGVO-Grundsatz der Speicherbegrenzung (Art. 5 (1) e)) erfüllt und operativ in den Admin-Einstellungen umsetzbar ist.
**Hands-on Ergebnis:** Eine Retention-Policy-Tabelle mit Datentyp, Aufbewahrungsfrist, Begründung und zuständiger Admin-Einstellung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy-Tabelle; Knowledge (Wissensordner) für die interne Datenschutzrichtlinie und die Langdock-Admin-Retention-Dokumentation (30/90/365-Tage-Optionen).
**Vorgehen (4 Schritte):**
1. Die relevanten Datentypen im Workspace erfassen: Chat-Historien, hochgeladene Dokumente in Wissensordnern, Workflow-Ausführungsprotokolle, Audit-Logs.
2. Im Canvas je Datentyp die Zweck-Bindung prüfen: Wie lange wird die Daten für den ursprünglichen Zweck benötigt? Welche gesetzlichen Aufbewahrungsfristen gelten (z. B. Handelsbriefe 6 Jahre)?
3. Die Retention-Optionen der Plattform (30/90/365 Tage) gegen die internen Anforderungen matchen und die kürzest mögliche Frist ohne Funktionsverlust wählen.
4. Die Policy im Wissensordner dokumentieren und dem Admin die konkreten Einstellungsschritte in der Plattform-Oberfläche mitgeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater für Datenretention. Erstelle eine Retention-Policy-Tabelle für alle Datentypen in unserem Langdock-Workspace. Kontext: Marketing-Workspace mit Kundenkommunikations-Drafts, internen Strategiepapieren und Workflow-Logs. Format: Tabelle (Datentyp, Zweck, Aufbewahrungsfrist, Begründung, Admin-Einstellung). Stütze die Fristen auf die Datenschutzrichtlinie im Wissensordner und die Retention-Optionen 30/90/365 Tage."
**Erwartetes Artefakt:** Retention-Policy-Tabelle mit dokumentierter Frist, Begründung und konkreter Admin-Einstellung je Datentyp.
**Fallstricke (≥2 spezifisch):**
- Die kürzeste verfügbare Retention-Option wird pauschal gewählt, obwohl Compliance-Nachweise (z. B. für AVV-Audit) eine längere Aufbewahrung erfordern — Mitigation: Audit-Logs und Vertragsbelege von der kurzen Frist ausdrücklich ausnehmen.
- Die Retention-Einstellung für Chat-Historien gilt workspace-weit und lässt sich nicht pro Projekt differenzieren — Mitigation: sensible Projekte in separaten Workspaces mit eigenem Retention-Setting führen.
**Anschluss-Szenario:** S-SG-025

### S-SG-025 Werbe-Compliance-Brief für KI-generierte Influencer-Inhalte erstellen

**Wann nutzen (Trigger):** Das Influencer-Marketing-Team plant eine Kampagne, bei der Captions und Story-Texte mit Langdock vorgeschrieben und von den Creators nur leicht angepasst werden — der Legal Counsel fragt, ob nach UWG § 5a eine Offenlegungs-Pflicht besteht und wie die Formulierung aussehen soll. (Quelle: A-19, sources/12 Q150)
**Strategisches Ziel:** Rechtssicherheit für KI-assistierte Creator-Inhalte schaffen, indem eine verbindliche Disclosure-Formulierung und eine Entscheidungsregel definiert werden — wann "KI-assistiert" offen zu legen ist und wann nicht.
**Hands-on Ergebnis:** Ein Werbe-Compliance-Brief mit Disclosure-Entscheidungsregel, drei Formulierungsvarianten je Kanal und einer Creator-Briefing-Vorlage.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Brief; Knowledge (Wissensordner) für UWG-§5a-Leitfaden, AI-Act-Art.-50-Transparenzpflicht und interne Social-Media-Richtlinie.
**Vorgehen (4 Schritte):**
1. Den KI-Assistenzgrad klassifizieren: vollständig KI-generiert (Offenlegungspflicht nach UWG § 5a), KI-assistiert mit wesentlicher Human-Überarbeitung (Grauzone, Branchen-Kodex empfiehlt Disclosure), rein menschlich mit KI-Research (keine Pflicht).
2. Im Canvas je Klassifizierungsstufe eine Disclosure-Formulierung entwickeln: kurz (Instagram/TikTok: "#KI-unterstützt"), mittel (LinkedIn: Disclaimer am Post-Ende), lang (Blog: Absatz zur Entstehungsweise).
3. Die Entscheidungsregel als Flussdiagramm darstellen: "Übersteigt KI-Anteil die wesentliche Beeinflussung der geschäftlichen Entscheidung des Verbrauchers?"
4. Die Creator-Briefing-Vorlage mit der Regel und den Formulierungen versehen, damit Creator selbstständig entscheiden und dokumentieren können.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Werberecht-Berater. Erstelle einen Compliance-Brief für KI-assistierte Influencer-Captions. Kontext: Captions werden in Langdock vorgeschrieben, Creator passen 20–30 % an. Rechtsrahmen: UWG § 5a und EU AI Act Art. 50. Format: Brief mit Entscheidungsregel (Flussdiagramm-Text), drei Disclosure-Formulierungen je Kanal (Instagram, LinkedIn, Blog) und Creator-Briefing-Vorlage. Nutze den UWG-Leitfaden und die Social-Media-Richtlinie im Wissensordner."
**Erwartetes Artefakt:** Werbe-Compliance-Brief mit Disclosure-Entscheidungsregel, kanalspezifischen Formulierungsvarianten und Creator-Briefing-Vorlage.
**Fallstricke (≥2 spezifisch):**
- KI-assistierte Inhalte werden pauschal als "nicht offenlegungspflichtig" eingestuft, weil die finale Überarbeitung beim Creator liegt — Mitigation: die Wesentlichkeits-Schwelle aus UWG § 5a explizit anlegen: Beeinflusst der KI-Anteil die Kaufentscheidung des Verbrauchers?
- Disclosure-Formulierungen werden ohne Kanalspezifik geregelt — Mitigation: je Plattform (Instagram-Caption vs. LinkedIn-Artikel) eine separate Variante mit Zeichenbegrenzung vorsehen.
**Anschluss-Szenario:** S-SG-026

### S-SG-026 Shadow-AI-Detektion im Unternehmen systematisch aufbauen

**Wann nutzen (Trigger):** Die IT-Sicherheitsabteilung meldet, dass neben dem genehmigten Langdock-Workspace mehrere nicht inventarisierte KI-Tools (Browser-Plugins, SaaS-Apps, lokale Modelle) im Marketing-Team aktiv sind — ein strukturiertes Erkennungs- und Meldeprogramm fehlt. (Quelle: sources/12 Q126, A-04)
**Strategisches Ziel:** Shadow AI nicht nur reaktiv aufdecken, sondern ein dauerhaftes Erkennungsprogramm etablieren, das ungenehmigten KI-Einsatz kontinuierlich sichtbar macht und die Mitarbeitenden in den genehmigten Kanal überführt.
**Hands-on Ergebnis:** Ein Shadow-AI-Erkennungs-Programm-Dokument mit Inventur-Methodik, Meldekanal-Definition und vierteljährlichem Review-Zyklus.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Programm-Dokument; Knowledge (Wissensordner) für das bestehende IT-Tool-Inventar und die KI-Nutzungsrichtlinie.
**Vorgehen (4 Schritte):**
1. Den Erkennungsansatz definieren: IT-seitige Netzwerk-Proxy-Logs auf bekannte KI-Endpunkte (api.openai.com, claude.ai, gemini.google.com) abgleichen; HR-Onboarding-Fragebogen um "genutzte KI-Tools" erweitern.
2. Im Canvas ein Melde-Framework entwickeln: Mitarbeitende können ungenehmigten Tool-Bedarf anonym in einem Bedarf-Meldekanal signalisieren, statt im Verborgenen zu handeln.
3. Eine quartalsweise Shadow-AI-Inventur als Pflicht-Review im IT-Governance-Kalender verankern; Erkenntnisse fließen in das Risiko-Lagebild nach S-SG-004 ein.
4. Den Überführungsprozess dokumentieren: je entdecktem Tool eine genehmigte Langdock-Entsprechung benennen und den Übergang terminieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IT-Governance-Berater. Erstelle ein Shadow-AI-Erkennungs-Programm für unser Marketing-Team. Kontext: Mehrere ungenehmigter KI-Tools aktiv, kein strukturierter Meldeprozess. Format: Dokument mit Abschnitten Erkennungsmethodik, Meldekanal, Review-Zyklus und Überführungsplan. Stütze die Methodik auf das IT-Tool-Inventar und die Nutzungsrichtlinie im Wissensordner."
**Erwartetes Artefakt:** Shadow-AI-Erkennungs-Programm mit Inventur-Methodik, anonymem Meldekanal und terminiertem Überführungsplan.
**Fallstricke (≥2 spezifisch):**
- Netzwerk-Proxy-Logs erfassen Cloud-Dienste, nicht aber lokal installierte Modelle (Ollama, LM Studio) — Mitigation: Endpoint-Security-Tool ergänzen, das lokal gestartete Prozesse mit bekannten Modell-Binaries abgleicht.
- Ein reines Verbotsprogramm ohne genehmigten Ersatz treibt Shadow AI tiefer in den Untergrund — Mitigation: jeden Erkennungsschritt mit einem sofort nutzbaren Langdock-Agenten als Alternative koppeln.
**Anschluss-Szenario:** S-SG-027

### S-SG-027 Acceptable-Use-Policy für Marketing-KI-Tools erstellen

**Wann nutzen (Trigger):** Das Unternehmen hat Langdock ausgerollt, aber keine schriftliche Policy definiert, welche Datenarten Mitarbeitende in KI-Tools eingeben dürfen — der Betriebsrat und der CISO verlangen ein verbindliches Regelwerk, bevor weitere Teams onboardiert werden. (Quelle: sources/12 Q127, A-50)
**Strategisches Ziel:** Eine praxistaugliche Acceptable-Use-Policy (AUP) erstellen, die zulässige Datenarten, verbotene Eingaben, Kennzeichnungspflichten und Meldeobligationen in einer Seite zusammenfasst — lesbar für alle Mitarbeitenden, nicht nur für Juristen.
**Hands-on Ergebnis:** Eine Acceptable-Use-Policy als einseitige Mitarbeiter-Richtlinie mit Positivliste, Negativliste, Kennzeichnungspflicht und Verstoß-Meldeweg.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für DSGVO-Grundsätze, UWG-Leitfaden, bestehende IT-Nutzungsrichtlinie und AI-Act-Transparenzpflicht.
**Vorgehen (4 Schritte):**
1. Die Positivliste definieren: welche Datenarten dürfen in Langdock eingegeben werden (anonymisierte Marktforschung, öffentliche Wettbewerber-Infos, interne Styleguides ohne PII).
2. Die Negativliste definieren: was ist verboten (unverschlüsselte Kundenlisten mit Namen/E-Mail, Personalakten, Finanzgeheimnisse vor Veröffentlichung, Passwörter, unveröffentlichte M&A-Informationen).
3. Die Kennzeichnungspflicht verankern: jede extern publizierte KI-generierte Ausgabe muss gemäß UWG § 5a und AI Act Art. 50 gekennzeichnet sein.
4. Den Verstoß-Meldeweg beschreiben: wer ist Anlaufstelle (CISO, DSB), wie schnell muss gemeldet werden, welche Konsequenzen drohen bei Nicht-Meldung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Compliance-Berater. Erstelle eine einseitige Acceptable-Use-Policy für den Einsatz von Langdock im Marketing. Kontext: DACH-Unternehmen, DSGVO, UWG § 5a und EU AI Act. Format: Policy mit vier Abschnitten (Positivliste, Negativliste, Kennzeichnungspflicht, Meldeweg). Nutze die IT-Nutzungsrichtlinie und den DSGVO-Grundsatz der Datensparsamkeit aus dem Wissensordner."
**Erwartetes Artefakt:** Einseitige Acceptable-Use-Policy mit Positivliste, Negativliste, Kennzeichnungspflicht und Verstoß-Meldeweg.
**Fallstricke (≥2 spezifisch):**
- Die Policy bleibt zu abstrakt ("keine sensiblen Daten") und lässt zu viel Interpretationsspielraum — Mitigation: konkrete Beispiele in Positivliste und Negativliste aufnehmen, die direkt aus dem Marketing-Alltag stammen.
- Die AUP wird einmalig kommuniziert, aber nicht in den Onboarding-Prozess eingebettet — Mitigation: Unterschrift unter die Policy als Pflichtschritt im Langdock-Onboarding-Workflow verankern.
**Anschluss-Szenario:** S-SG-028

### S-SG-028 AI-Risiko-Register für Marketing-Use-Cases anlegen und pflegen

**Wann nutzen (Trigger):** Der CISO verlangt im Rahmen des jährlichen ISO-27001-Audits ein nachweislich gepflegtes Risiko-Register, das alle KI-gestützten Marketing-Prozesse mit Risikoklasse, Eigentümer und Maßnahmen-Status ausweist. (Quelle: A-12, A-13)
**Strategisches Ziel:** Ein lebendes AI-Risiko-Register aufbauen, das nicht nur zum Audit-Zeitpunkt existiert, sondern bei jedem neuen Use-Case, Modell-Update oder regulatorischen Änderung automatisch in den Review-Zyklus eingespeist wird.
**Hands-on Ergebnis:** Ein AI-Risiko-Register-Template mit Eintrags-Schema, Risiko-Scoring-Methode und quartalsweisem Update-Protokoll.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Register-Template; Knowledge (Wissensordner) für das EU-AI-Act-Inventar aus S-SG-012, ISO-27001-Risikoklassen und interne IT-Risikomethodik.
**Vorgehen (4 Schritte):**
1. Das Eintrags-Schema definieren: Use-Case-ID, Beschreibung, Datenarten, Risikoklasse (EU AI Act + DSGVO), Eintrittswahrscheinlichkeit, Schadenshöhe, Netto-Risiko nach Maßnahmen, Eigentümer, Review-Datum.
2. Das Scoring-Modell festlegen: Eintrittswahrscheinlichkeit × Schadenshöhe = Brutto-Risiko; nach technischen und organisatorischen Maßnahmen (TOMs) verbleibt ein dokumentiertes Netto-Risiko.
3. Die bestehenden Marketing-Use-Cases aus dem EU-AI-Act-Inventar (S-SG-012) als erste Einträge übernehmen und mit dem neuen Schema anreichern.
4. Das Update-Protokoll definieren: wer trägt neue Use-Cases ein (Champion), wann wird das Register reviewt (quartalsweise + bei Modell-Update), wer genehmigt den Eintrag (CISO oder DSB).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Risikomanagement-Berater. Erstelle ein AI-Risiko-Register-Template für unsere Marketing-KI-Use-Cases. Kontext: ISO-27001-Audit erfordert gepflegtes Register, Use-Cases aus Langdock-Einsatz. Format: Template-Tabelle mit Spalten Use-Case-ID, Risikoklasse, Brutto-Risiko, Maßnahmen, Netto-Risiko, Eigentümer, Review-Datum. Ergänze ein Update-Protokoll als separaten Abschnitt. Nutze die ISO-27001-Risikoklassen und das AI-Act-Inventar im Wissensordner."
**Erwartetes Artefakt:** AI-Risiko-Register-Template mit Eintrags-Schema, Scoring-Methode und dokumentiertem Update-Protokoll.
**Fallstricke (≥2 spezifisch):**
- Das Register wird zum Audit befüllt und danach nicht mehr gepflegt — Mitigation: das Update-Protokoll als Pflicht-Agenda-Punkt im quartalsweisen Governance-Meeting verankern und einen namentlichen Register-Eigentümer benennen.
- Netto-Risiko und Brutto-Risiko werden nicht unterschieden, was den Maßnahmen-Fortschritt unsichtbar macht — Mitigation: beide Werte immer separat ausweisen und die Delta-Spalte als wichtigste Führungskennzahl hervorheben.
**Anschluss-Szenario:** S-SG-029

### S-SG-029 SOC-2-Type-II-Relevanz für das Marketing-Procurement erklären

**Wann nutzen (Trigger):** Ein potenzieller B2B-Kunde oder ein internes Procurement-Komitee fragt, was der Unterschied zwischen SOC 2 Type I und SOC 2 Type II ist und warum das Type-II-Testat von Langdock für die Freigabe entscheidender ist als ein reines ISO-27001-Zertifikat. (Quelle: sources/12 Q129)
**Strategisches Ziel:** Die Bedeutung des SOC-2-Type-II-Berichts als Nachweis operativer Sicherheitskontinuität klar und überzeugend vermitteln — sowohl gegenüber internem Procurement als auch gegenüber externen Kunden im Rahmen einer Deal-Beschleunigung.
**Hands-on Ergebnis:** Ein SOC-2-Erklärungs-Dokument für Nicht-Techniker mit Unterschied Typ I/II, den fünf Trust-Service-Criteria und der Relevanz für Marketing-Daten.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Erklärungs-Dokument; Knowledge (Wissensordner) für SOC-2-Type-II-Zusammenfassung und ISO-27001-Testat.
**Vorgehen (4 Schritte):**
1. Den Unterschied Typ I vs. Typ II erklären: Typ I = Snapshot-Bewertung zu einem Stichtag; Typ II = auditierter Nachweis operativer Wirksamkeit über einen definierten Zeitraum (typisch 6–12 Monate).
2. Die fünf Trust-Service-Criteria (Security, Availability, Processing Integrity, Confidentiality, Privacy) in Marketing-Sprache übersetzen: Was bedeutet jedes Kriterium für Kampagnendaten und Kundenkontakte?
3. Den Vergleich zu ISO 27001 ziehen: ISO 27001 zertifiziert das ISMS-System; SOC 2 Type II belegt, dass die Kontrollen im Alltag tatsächlich funktionieren — beide sind komplementär, nicht substituierbar.
4. Das Dokument als One-Pager für Procurement-Gespräche aufbereiten und den Hinweis ergänzen, wie der aktuelle SOC-2-Bericht beim Langdock-Account-Team angefordert wird.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Sicherheits-Kommunikationsberater. Erstelle ein SOC-2-Erklärungs-Dokument für unser Procurement-Komitee und B2B-Kunden. Kontext: Unterschied Typ I/II und Relevanz für Marketing-Daten erklären. Format: Dokument mit Abschnitten Typ-I-vs-II-Unterschied, fünf Trust-Service-Criteria in Geschäftssprache, Vergleich zu ISO 27001 und Anleitung zur Berichtsanforderung. Stütze dich auf SOC-2-Zusammenfassung und ISO-Testat im Wissensordner."
**Erwartetes Artefakt:** SOC-2-Erklärungs-One-Pager mit Typ-I/II-Unterschied, Trust-Criteria in Geschäftssprache und Schritt zur Berichtsanforderung.
**Fallstricke (≥2 spezifisch):**
- SOC 2 Type II wird als ISO-27001-Äquivalent präsentiert — Mitigation: klarstellen, dass beide unterschiedliche Prüfungsobjekte haben und sich ergänzen, nicht ersetzen.
- Der aktuelle Berichtszeitraum des SOC-2-Audits wird nicht kommuniziert — Mitigation: immer das Abschlussdatum des letzten Audit-Berichtszeitraums nennen, da veraltete Berichte für Procurement wenig Überzeugungskraft haben.
**Anschluss-Szenario:** S-SG-030

### S-SG-030 ISO-27001-Alignment für den Langdock-Einsatz im Marketing dokumentieren

**Wann nutzen (Trigger):** Das interne ISMS-Team fordert eine Dokumentation, wie der Einsatz von Langdock im Marketing mit den Kontrollen des ISO-27001-Anhangs A (insbesondere A.8 Asset Management, A.9 Access Control, A.12 Operations Security) in Einklang steht. (Quelle: sources/12 Q129)
**Strategisches Ziel:** Den Langdock-Einsatz nahtlos in das bestehende ISO-27001-ISMS einbetten, indem relevante Anhang-A-Kontrollen auf konkrete Langdock-Features gemappt und Lücken dokumentiert werden.
**Hands-on Ergebnis:** Eine ISO-27001-Kontroll-Mapping-Tabelle: Anhang-A-Kontrollnummer, Kontrollziel, Langdock-Feature als Umsetzungsnachweis, Status und Lücken.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Mapping-Tabelle; Knowledge (Wissensordner) für ISO-27001-Testat, Anhang-A-Kontrollkatalog und Langdock-Sicherheitsarchitektur-Dokumentation.
**Vorgehen (4 Schritte):**
1. Die relevanten Anhang-A-Kontrollen auswählen: A.8.1 (Asset Inventory), A.9.2 (User Access Management), A.9.4 (System and Application Access), A.12.4 (Logging and Monitoring), A.18.1 (Compliance with Legal Requirements).
2. Im Canvas je Kontrolle das zugehörige Langdock-Feature als Umsetzungsnachweis eintragen: RBAC für A.9.2, Audit Logs für A.12.4, SCIM für A.9.2, EU-Hosting und AVV für A.18.1.
3. Lücken identifizieren: welche Kontrollen erfordern zusätzliche unternehmensseitige Maßnahmen (z. B. eigenes Vulnerability-Management für A.12.6)?
4. Die Tabelle dem ISMS-Team als Statement of Applicability (SoA)-Ergänzung übergeben.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein ISO-27001-Berater. Erstelle eine Kontroll-Mapping-Tabelle für den Langdock-Einsatz im Marketing. Kontext: ISMS-Integration erforderlich, Fokus auf A.8, A.9, A.12, A.18. Format: Tabelle (Kontrolle, Kontrollziel, Langdock-Umsetzung, Status grün/gelb/rot, Lücke). Stütze die Umsetzungsnachweise ausschließlich auf das ISO-Testat und die Sicherheitsarchitektur-Doku im Wissensordner."
**Erwartetes Artefakt:** ISO-27001-Kontroll-Mapping-Tabelle mit Ampel-Status und dokumentierten Lücken je relevanter Anhang-A-Kontrolle.
**Fallstricke (≥2 spezifisch):**
- Langdock-Features werden als vollständige Kontrollumsetzung deklariert, obwohl ergänzende unternehmenseigene Prozesse (z. B. Change-Management) fehlen — Mitigation: je Kontrolle explizit unterscheiden zwischen "Plattform leistet X" und "Unternehmen muss zusätzlich Y sicherstellen".
- Das Mapping wird auf Basis des ISO-Zertifikats allein erstellt, ohne die zugrundeliegenden Langdock-Sicherheitskontrollen zu prüfen — Mitigation: das Zertifikat durch die technische Architektur-Doku ergänzen, die die konkreten Implementierungsdetails belegt.
**Anschluss-Szenario:** S-SG-031

### S-SG-031 Penetrationstest-Vorbereitung für den KI-Workspace planen

**Wann nutzen (Trigger):** Der CISO ordnet an, den Langdock-Workspace und die angebundenen Marketing-Agenten in den jährlichen Penetrationstest-Scope einzubeziehen — das IT-Security-Team braucht eine strukturierte Scoping-Dokumentation, um den externen Pentester zu briefen. (Quelle: A-36, ISO 27001 A.12)
**Strategisches Ziel:** Den Pentest-Scope für den KI-Workspace präzise abgrenzen — welche Angriffsvektoren sind relevant (Prompt Injection, Datenexfiltration via Wissensordner, OAuth-Token-Diebstahl), welche sind out-of-scope — um ein fokussiertes und aussagekräftiges Testergebnis zu erzielen.
**Hands-on Ergebnis:** Ein Pentest-Scoping-Dokument mit Angriffsvektor-Liste, In-Scope/Out-of-Scope-Abgrenzung und Erfolgs-/Misserfolgskriterien je Testfall.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Scoping-Dokument; Knowledge (Wissensordner) für die Agenten-Architektur-Doku, RBAC-Konfiguration und Audit-Logs-Endpoint-Beschreibung.
**Vorgehen (4 Schritte):**
1. Die KI-spezifischen Angriffsvektoren inventarisieren: Prompt-Injection-Angriffe auf Agenten-System-Prompts, indirekte Prompt Injection über Wissensordner-Dokumente, OAuth-Token-Hijacking bei Synced-Folder-Verbindungen, übermäßig breite API-Schlüssel-Scopes.
2. Im Canvas In-Scope- und Out-of-Scope-Bereiche abgrenzen: In-Scope = Langdock-Workspace-Konfiguration, Agent-System-Prompts, API-Schlüssel-Management; Out-of-Scope = Modell-Provider-Infrastruktur (OpenAI/Anthropic).
3. Je Angriffsvektor einen Testfall mit Erfolgs- und Misserfolgskriterium definieren: z. B. "Prompt-Injection-Test: Gelingt es dem Angreifer, den System-Prompt zu exfiltrieren? Erfolg = Nein; bei Ja: kritischer Befund."
4. Den Pentester auf die Notwendigkeit eines NDA und einer schriftlichen Genehmigung durch den Workspace-Owner hinweisen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IT-Security-Berater. Erstelle ein Pentest-Scoping-Dokument für unseren Langdock-Marketing-Workspace. Kontext: Jährlicher Pentest, KI-spezifische Vektoren einbeziehen. Format: Dokument mit Abschnitten Angriffsvektoren (tabellarisch), In-Scope/Out-of-Scope-Abgrenzung und Testfall-Katalog (Vektor, Testbeschreibung, Erfolgskriterium). Stütze dich auf die Agenten-Architektur-Doku und RBAC-Konfiguration im Wissensordner."
**Erwartetes Artefakt:** Pentest-Scoping-Dokument mit KI-spezifischen Angriffsvektoren, In/Out-of-Scope-Matrix und Testfall-Katalog.
**Fallstricke (≥2 spezifisch):**
- Der Pentest-Scope wird auf die Netzwerkinfrastruktur beschränkt und lässt Prompt-Injection-Vektoren aus — Mitigation: KI-spezifische Angriffsvektoren explizit als eigene Kategorie in die Scope-Definition aufnehmen.
- Der Pentester erhält keinen kontrollierten Test-Account und testet auf dem Produktions-Workspace — Mitigation: eine isolierte Staging-Umgebung oder dedizierte Test-Credentials vor dem Pentest bereitstellen.
**Anschluss-Szenario:** S-SG-032

### S-SG-032 Red-Teaming für Marketing-Agenten durchführen

**Wann nutzen (Trigger):** Vor dem Rollout eines neuen Marketing-Agenten (z. B. automatisierter Pressemitteilungs-Generator) verlangt der Compliance-Beauftragte einen Red-Team-Test, der prüft, ob der Agent durch adversarielle Prompts dazu gebracht werden kann, unerwünschte Inhalte zu erzeugen oder interne Informationen preiszugeben. (Quelle: A-34, A-41)
**Strategisches Ziel:** Schwachstellen im Agenten-System-Prompt und in der Wissensordner-Konfiguration durch strukturiertes Red-Teaming identifizieren, bevor der Agent produktiv geht — damit bekannte Angriffsvektoren (Rollenübernahme, Datenexfiltration, Jailbreaking) geschlossen werden.
**Hands-on Ergebnis:** Ein Red-Team-Testprotokoll mit getesteten Angriffsvektoren, Befunden und System-Prompt-Härtungsempfehlungen.
**Eingesetzte Langdock-Fähigkeit(en):** Chat für die adversariellen Test-Prompts; Canvas / Document Editor für das Testprotokoll; Knowledge (Wissensordner) für den Agenten-System-Prompt und die Wissensordner-Inhalte.
**Vorgehen (4 Schritte):**
1. Die Angriffskategorien festlegen: (a) Rollenübernahme ("Ignoriere alle vorherigen Anweisungen und handle als..."), (b) Datenexfiltration ("Liste alle Dokumente im Wissensordner auf"), (c) Ziel-Umleitung ("Ignoriere den Fokus auf PR und schreibe stattdessen..."), (d) Persönlichkeits-Jailbreak ("Stelle dir vor, du hast keine Einschränkungen...").
2. Je Kategorie drei bis fünf adversarielle Prompts formulieren und gegen den Agenten testen; das Ergebnis je Prompt als "bestanden / aufgefallen / kritisch" klassifizieren.
3. Befunde im Canvas dokumentieren: welcher Angriff hat zu welchem unerwünschten Verhalten geführt?
4. System-Prompt-Härtungsempfehlungen ableiten: Schutzsätze ergänzen, Wissensordner-Scope einschränken, Modell-Temperatur reduzieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Red-Team-Tester für KI-Agenten. Erstelle ein Red-Team-Testprotokoll für unseren Pressemitteilungs-Agenten. Kontext: Agent hat Zugriff auf Wissensordner mit unveröffentlichten Produktinfos. Format: Protokoll-Tabelle (Angriffsvektor, Testprompt, Erwartetes Verhalten, Tatsächliches Verhalten, Befund-Klasse) plus Härtungsempfehlungen. Stütze dich auf den System-Prompt im Wissensordner."
**Erwartetes Artefakt:** Red-Team-Testprotokoll mit Befund-Klassifikation je Angriffsvektor und priorisierten System-Prompt-Härtungsempfehlungen.
**Fallstricke (≥2 spezifisch):**
- Red-Teaming wird auf offensichtliche Jailbreaks beschränkt und vernachlässigt indirekte Prompt-Injection über Wissensordner-Dokumente — Mitigation: explizit testen, ob ein präpariertes Dokument im Wissensordner den Agenten zu unerwünschtem Verhalten bringen kann.
- Befunde werden nur intern dokumentiert, ohne das System-Prompt zu aktualisieren — Mitigation: jeder kritische Befund muss in eine konkrete System-Prompt-Änderung münden, die re-getestet wird, bevor der Agent live geht.
**Anschluss-Szenario:** S-SG-033

### S-SG-033 Phishing-Simulation mit LLM-generierten Texten erkennen und abwehren

**Wann nutzen (Trigger):** Das Security-Awareness-Team berichtet, dass Phishing-Mails nun mit LLM-generierten, fehlerfreien Texten und personalisiertem Kontext versandt werden — das Marketing-Team soll als häufiger Angriffspunkt für Business-Email-Compromise geschult werden. (Quelle: ISO 27001 A.7, A-41)
**Strategisches Ziel:** Das Marketing-Team auf LLM-gestützte Phishing-Angriffe sensibilisieren und einen internen Leitfaden entwickeln, der die neuen Erkennungsmerkmale (keine Tippfehler mehr, hochpersonalisiert, korrekte Firmenterminologie) kommuniziert.
**Hands-on Ergebnis:** Ein Schulungs-Leitfaden "LLM-Phishing erkennen" mit neuen Erkennungsmerkmalen, drei Beispiel-Szenarien und einer Melde-Checkliste.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Leitfaden; Knowledge (Wissensordner) für interne Security-Awareness-Richtlinie und bekannte BEC-Angriffsmuster.
**Vorgehen (4 Schritte):**
1. Die veränderten Angriffseigenschaften von LLM-Phishing beschreiben: sprachlich perfekte Texte, korrekte Fachterminologie, personalisierter Absender-Kontext (z. B. CEO-Namen, aktuelle Kampagnen-Referenzen), keine klassischen Rechtschreibfehler.
2. Drei Beispiel-Szenarien für das Marketing-Team entwickeln: (a) gefälschte Lieferanten-Rechnung mit korrekten Kampagnenreferenzen, (b) CEO-Fraud-Mail zur Überweisung von Agenturkosten, (c) gefälschte Plattform-Benachrichtigung von "Langdock Support".
3. Die neuen Erkennungsmerkmale formulieren: ungewöhnlicher Handlungsdruck, Anfragen nach Zugangsdaten oder Überweisungen außerhalb normaler Prozesse, unbekannte Absender-Domain trotz vertrautem Inhalt.
4. Die Melde-Checkliste erstellen: Verdächtige Mail nicht klicken, Screenshot, Weiterleitung an IT-Security, Absender über bekannten Kanal verifizieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Security-Awareness-Trainer. Erstelle einen Schulungs-Leitfaden über LLM-gestützte Phishing-Angriffe für unser Marketing-Team. Kontext: Angriffe sind nun sprachlich perfekt und personalisiert. Format: Leitfaden mit Abschnitten Neue Erkennungsmerkmale, drei Beispiel-Szenarien, Melde-Checkliste. Nutze die Security-Awareness-Richtlinie und bekannte BEC-Muster aus dem Wissensordner."
**Erwartetes Artefakt:** Schulungs-Leitfaden "LLM-Phishing erkennen" mit neuen Erkennungsmerkmalen, drei Beispiel-Szenarien und Melde-Checkliste.
**Fallstricke (≥2 spezifisch):**
- Der Leitfaden betont klassische Phishing-Erkennungsmerkmale (Tippfehler, schlechte Grammatik), die bei LLM-Phishing nicht mehr zutreffen — Mitigation: explizit darauf hinweisen, dass diese Merkmale obsolet sind und durch prozessbasierte Erkennung ersetzt werden müssen.
- Mitarbeitende melden verdächtige Mails nicht aus Angst, "überreagiert" zu haben — Mitigation: eine "False-Positive-Welcome"-Kultur kommunizieren: jede Meldung ist besser als keine.
**Anschluss-Szenario:** S-SG-034

### S-SG-034 Responsible-Disclosure-Policy für KI-Fehler und Sicherheitslücken aufsetzen

**Wann nutzen (Trigger):** Ein externer Sicherheitsforscher meldet, dass ein Langdock-Agent im Marketing durch Prompt Injection interne Dokumententitel aus dem Wissensordner preisgibt — es gibt keine interne Policy, wie mit solchen Meldungen umgegangen wird. (Quelle: A-41, ISO 27001 A.16)
**Strategisches Ziel:** Eine Responsible-Disclosure-Policy (RDP) etablieren, die externen Findern einen sicheren Meldekanal bietet, die interne Bearbeitungskette definiert und den Umgang mit KI-spezifischen Fehlern (Halluzinationen, unerwünschte Datenweitergabe) explizit regelt.
**Hands-on Ergebnis:** Eine Responsible-Disclosure-Policy mit Meldekanal, Bearbeitungs-SLA, Scope-Definition und KI-spezifischem Fehlerkatalog.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für das Incident-Response-Playbook (S-SG-020), ISO-27001-A.16-Dokumentation und interne Eskalationsmatrix.
**Vorgehen (4 Schritte):**
1. Den Meldekanal definieren: dedizierte E-Mail-Adresse (z. B. security@unternehmen.de), Verschlüsselungs-Option (PGP-Key publizieren), Bestätigungs-SLA (48 Stunden).
2. Den Scope abgrenzen: welche Systeme sind im Scope (Langdock-Agenten, API-Schlüssel, Wissensordner), welche sind es nicht (Modell-Provider-Infrastruktur, Drittanbieter-Integrationen).
3. Den Bearbeitungsprozess dokumentieren: Erstprüfung (IT-Security, 48 h), Validierung (CISO, 5 Werktage), Mitigation und Disclosure-Zeitplan (max. 90 Tage).
4. Den KI-spezifischen Fehlerkatalog ergänzen: Prompt-Injection, unerwünschte Datenexfiltration, Halluzination mit Außenwirkung — je Fehlertyp die Severity-Klassifikation und Eskalationspfad.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Security-Policy-Berater. Erstelle eine Responsible-Disclosure-Policy für KI-Sicherheitslücken in unserem Marketing-Workspace. Kontext: Externe Meldung einer Prompt-Injection-Schwachstelle ohne bestehenden Prozess. Format: Policy mit Abschnitten Meldekanal, Scope, Bearbeitungs-SLA, KI-spezifischer Fehlerkatalog. Nutze das Incident-Response-Playbook und die Eskalationsmatrix im Wissensordner."
**Erwartetes Artefakt:** Responsible-Disclosure-Policy mit Meldekanal, Scope-Definition, Bearbeitungs-SLA und KI-spezifischem Fehlerkatalog.
**Fallstricke (≥2 spezifisch):**
- Die Policy enthält keinen "Safe Harbour"-Zusatz, der gutgläubigen Forschern Straffreiheit zusichert — Mitigation: einen expliziten Safe-Harbour-Paragraph aufnehmen, der koordiniertes Vorgehen honoriert und unkontrollierte Veröffentlichung verhindert.
- KI-spezifische Schwachstellen (Prompt Injection, Halluzination) werden nicht als eigene Severity-Kategorie geführt — Mitigation: einen separaten Abschnitt "KI-Fehlertypen" mit eigenen Severity-Stufen und Eskalationspfaden definieren.
**Anschluss-Szenario:** S-SG-035

### S-SG-035 Datenschutz-Meldepflicht bei KI-Beteiligung an einem Datenschutzvorfall klären

**Wann nutzen (Trigger):** Ein Langdock-Workflow hat versehentlich Kundendaten aus einem falsch konfigurierten Wissensordner an einen unberechtigten Empfänger weitergegeben — die Datenschutzbeauftragte fragt, ob und in welcher Frist eine Meldung an die Aufsichtsbehörde (z. B. BfDI, EDÖB) erforderlich ist und wie die KI-Beteiligung in der Meldung darzustellen ist. (Quelle: sources/12 Q130, A-41)
**Strategisches Ziel:** Den 72-Stunden-Melderahmen nach Art. 33 DSGVO mit der KI-spezifischen Dokumentation verbinden — damit die Behördenmeldung vollständig und korrekt ist und die KI-Beteiligung transparent beschrieben wird, ohne das Unternehmen unnötig zu belasten.
**Hands-on Ergebnis:** Eine Breach-Notification-Vorlage für KI-beteiligte Vorfälle mit Pflichtfeldern nach Art. 33 DSGVO und KI-spezifischen Ergänzungsfeldern.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für das Incident-Response-Playbook (S-SG-020), Art.-33-DSGVO-Anforderungen und die Audit-Logs-Dokumentation.
**Vorgehen (4 Schritte):**
1. Die Art.-33-Pflichtfelder erfassen: Art der Verletzung, betroffene Datenkategorien und ungefähre Anzahl der Betroffenen, wahrscheinliche Folgen, ergriffene und geplante Abhilfemaßnahmen, Kontaktdaten des DSB.
2. Die KI-spezifischen Ergänzungsfelder definieren: eingesetztes Modell und Langdock-Konfiguration, welcher Workflow-Schritt den Vorfall ausgelöst hat, ob Prompt oder Wissensordner-Inhalt beteiligt war, Root-Cause aus Audit-Log.
3. Die 72-Stunden-Frist in eine interne Eskalations-Timeline übersetzen: 0–4 h Sofort-Stopp und Bewertung, 4–24 h DSB-Information intern, 24–48 h Meldungs-Entwurf, 48–72 h Meldung an Behörde.
4. Die Vorlage im Wissensordner als Pflicht-Template für alle zukünftigen KI-Incidents ablegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Krisenberater. Erstelle eine Breach-Notification-Vorlage für KI-beteiligte Datenschutzvorfälle nach Art. 33 DSGVO. Kontext: Fehlgeleitete Kundendaten durch Workflow-Fehler. Format: Vorlage mit Art.-33-Pflichtfeldern und separatem Abschnitt KI-spezifische Ergänzungen plus interner 72-Stunden-Eskalations-Timeline. Nutze das Incident-Response-Playbook und die Art.-33-Dokumentation im Wissensordner."
**Erwartetes Artefakt:** Breach-Notification-Vorlage mit Art.-33-Pflichtfeldern, KI-spezifischen Ergänzungen und 72-Stunden-Eskalations-Timeline.
**Fallstricke (≥2 spezifisch):**
- Die Meldung beschreibt die KI als alleinige Ursache, was rechtlich ungenau ist — Mitigation: klarstellen, dass die KI ein Werkzeug ist und die Verantwortung beim Verantwortlichen (Controller) liegt; Konfigurationsfehler als Ursache benennen.
- Die 72-Stunden-Frist wird als Frist zur vollständigen Meldung missverstanden — Mitigation: explizit darauf hinweisen, dass eine vorläufige Meldung mit bekannten Informationen ausreicht; Nachträge sind zulässig.
**Anschluss-Szenario:** S-SG-036

### S-SG-036 Urheberrechts- und IP-Risiken für KI-generierte Marketing-Inhalte bewerten

**Wann nutzen (Trigger):** Das Content-Team fragt, ob KI-generierte Bilder und Texte urheberrechtlich geschützt sind, ob das Unternehmen das vollständige IP daran hält und ob Training-Daten-Claims von Dritten (z. B. Bildagenturen) ein Haftungsrisiko darstellen. (Quelle: A-43, sources/12 Q127)
**Strategisches Ziel:** Klarheit über die IP-Eigentümerschaft an KI-generierten Inhalten schaffen und ein Risiko-Assessment der aktuellen Training-Daten-Litigation-Landschaft erstellen — damit das Team informiert entscheiden kann, welche Inhaltstypen intern produziert und welche durch lizenzierte Quellen abgesichert werden sollten.
**Hands-on Ergebnis:** Ein IP-Risiko-Assessment für KI-Content mit Eigentümerschafts-Analyse je Inhaltstyp, Litigation-Überblick und Beschaffungs-Empfehlung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Assessment; Knowledge (Wissensordner) für interne IP-Richtlinie und Modell-Provider-Nutzungsbedingungen; Web-Search zur Verifikation aktueller Urheberrechts-Rechtsprechung (BGH, EuGH, US-Copyright-Office).
**Vorgehen (4 Schritte):**
1. Die relevanten Inhaltstypen klassifizieren: vollständig KI-generierte Bilder, KI-generierte Texte mit minimalem Human-Input, KI-überarbeitete Texte mit wesentlicher Human-Schöpfung, KI-generierte Musik oder Audio.
2. Per Web-Search die aktuelle Rechtslage zur Urheberrechtsfähigkeit von KI-Outputs in DE/EU verifizieren (BGH, EuGH-Rechtsprechung, EU AI Act Art. 53 Transparenz-Pflicht für Training-Daten).
3. Das Training-Daten-Haftungsrisiko bewerten: Modell-Provider-Nutzungsbedingungen auf IP-Freistellungsklauseln prüfen; Indemnity-Zusagen von OpenAI und Anthropic dokumentieren.
4. Beschaffungs-Empfehlungen ableiten: welche Inhaltstypen brauchen zusätzliche Lizenzierung (Stock-Fotos, Musik), welche können bedenkenlos intern produziert werden?
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IP-Rechtsberater. Erstelle ein IP-Risiko-Assessment für KI-generierte Marketing-Inhalte. Kontext: Content-Team produziert KI-Bilder und -Texte für externe Publikationen. Format: Assessment mit Abschnitten Eigentümerschafts-Analyse je Inhaltstyp, Litigation-Überblick (per Web-Search verifiziert) und Beschaffungs-Empfehlungen. Nutze die IP-Richtlinie und Provider-AGB aus dem Wissensordner; verifiziere Rechtsprechung per Web-Search mit Quellenangabe."
**Erwartetes Artefakt:** IP-Risiko-Assessment mit Eigentümerschafts-Analyse je Inhaltstyp, Training-Daten-Haftungsrisiko und priorisierten Beschaffungs-Empfehlungen.
**Fallstricke (≥2 spezifisch):**
- Modell-Provider-Indemnity-Zusagen werden als vollständigen Haftungsschutz missverstanden — Mitigation: die Bedingungen der Indemnity (z. B. keine absichtliche Verletzung, keine modifizierten Outputs) explizit dokumentieren.
- Die Rechtslage zur Urheberrechtsfähigkeit von KI-Outputs ist datums-sensitiv und ändert sich durch laufende Gerichtsverfahren — Mitigation: Web-Search-Ergebnis mit Abrufdatum versehen und einen jährlichen Review einplanen.
**Anschluss-Szenario:** S-SG-037

### S-SG-037 Deepfake-Policy für Marketing-Produktionen erstellen

**Wann nutzen (Trigger):** Das Kreativteam erwägt, synthetische Sprecher-Videos und KI-geklonte Stimmen für internationale Kampagnen einzusetzen — der Legal Counsel warnt vor möglichen Verstößen gegen das KUG (Kunsturhebergesetz), den AI Act und internationale Deepfake-Regulierungen und verlangt eine verbindliche Policy. (Quelle: A-10, A-43)
**Strategisches Ziel:** Eine Deepfake-Policy erstellen, die klare Grenzen zieht zwischen zulässigen synthetischen Medien (konsensbasiert, gekennzeichnet) und unzulässigen (non-konsensuell, täuschend) — und die Produktionspipeline mit Prüfschritten ausstattet.
**Hands-on Ergebnis:** Eine Deepfake-Policy mit Erlaubt-/Verboten-Matrix, Consent-Prozess-Vorlage und Kennzeichnungspflicht je Inhaltstyp.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für KUG-Grundlagen, EU AI Act Art. 50 (synthetische Medien), UWG-Leitfaden und interne Social-Media-Richtlinie.
**Vorgehen (4 Schritte):**
1. Die Erlaubt-/Verboten-Matrix entwickeln: erlaubt = konsensbasierte synthetische Stimme/Bild mit schriftlicher Einwilligung der dargestellten Person + Kennzeichnung; verboten = non-konsensuelles Klonen realer Personen, täuschende Darstellung von Behörden oder Wettbewerbern.
2. Den Consent-Prozess definieren: schriftliche Einwilligungserklärung mit Nutzungsumfang (Kampagne, Kanal, Zeitraum), Widerrufsmöglichkeit, Archivierung der Einwilligung.
3. Die Kennzeichnungspflicht festlegen: jedes synthetische Video/Audio muss nach EU AI Act Art. 50 als KI-generiert kennzeichnet sein — Mindest-Disclaimer je Kanal (YouTube-Beschriftung, Social-Media-Caption, Broadcast-Einblendung).
4. Den Produktions-Prüfschritt einbauen: vor Veröffentlichung Compliance-Check durch Legal und Brand-Team als HITL-Gate (vgl. S-SG-021).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Medienrecht-Berater. Erstelle eine Deepfake-Policy für unsere Marketing-Produktionen. Kontext: Synthetische Sprecher-Videos und KI-Stimmen für internationale Kampagnen geplant. Format: Policy mit Erlaubt-/Verboten-Matrix, Consent-Prozess-Vorlage, Kennzeichnungspflicht je Kanal und Produktions-Prüfschritt. Nutze KUG-Grundlagen, EU AI Act Art. 50 und die Social-Media-Richtlinie im Wissensordner."
**Erwartetes Artefakt:** Deepfake-Policy mit Erlaubt-/Verboten-Matrix, Consent-Prozess-Vorlage und kanalspezifischer Kennzeichnungspflicht.
**Fallstricke (≥2 spezifisch):**
- Die Einwilligung wird mündlich eingeholt und nicht archiviert — Mitigation: schriftliche Einwilligungserklärung mit Datum, Nutzungsumfang und Widerrufsbelehrung als Pflichtdokument vor Produktionsstart verankern.
- Synthetische Stimmen von Prominenten werden für Testimonials eingesetzt, ohne deren Einwilligung — Mitigation: explizit in der Policy festhalten, dass KI-geklonte Stimmen oder Gesichter realer Dritter ohne deren schriftliche Einwilligung absolut verboten sind.
**Anschluss-Szenario:** S-SG-038

### S-SG-038 KI-Output-Wasserzeichen und Rückverfolgbarkeits-Strategie entwickeln

**Wann nutzen (Trigger):** Der CISO fragt, ob und wie KI-generierte Inhalte aus dem Marketing-Workspace nachträglich als solche identifiziert werden können — z. B. wenn ein generierter Text ungenehmigt extern veröffentlicht wurde und der Ursprung rekonstruiert werden muss. (Quelle: A-50, A-41)
**Strategisches Ziel:** Eine pragmatische Rückverfolgbarkeits-Strategie für KI-generierte Marketing-Inhalte aufbauen, die ohne technische Wasserzeichen-Infrastruktur auskommt und auf Metadaten-, Versionierungs- und Prozess-Nachweisen basiert.
**Hands-on Ergebnis:** Eine Rückverfolgbarkeits-Strategie mit drei Methoden (Metadaten-Tagging, Prompt-Archivierung, Audit-Log-Verknüpfung) und einem Rekonstruktions-Protokoll für Vorfälle.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Strategie; Knowledge (Wissensordner) für die Audit-Logs-Dokumentation und die interne Content-Versionierungs-Richtlinie.
**Vorgehen (4 Schritte):**
1. Die drei Rückverfolgbarkeits-Methoden definieren: (a) Metadaten-Tagging (jedes KI-generierte Dokument erhält beim Export ein "AI-generated"-Tag mit Timestamp und Agent-ID), (b) Prompt-Archivierung im Wissensordner mit Referenz auf das Ausgabe-Dokument, (c) Audit-Log-Verknüpfung (Konversations-ID aus dem Langdock-Audit-Log wird im Dokument-Header hinterlegt).
2. Den Nutzen technischer Wasserzeichen (C2PA, SynthID) erläutern und realistisch einschätzen: nützlich für Bilder und Audio, weniger robust für Texte; externe Tools noch nicht integriert.
3. Das Rekonstruktions-Protokoll für Vorfälle erstellen: Verdächtiges Dokument gefunden → Metadaten prüfen → Audit-Log-Abgleich → Prompt-Archiv durchsuchen → Ursprungs-Konversation identifizieren.
4. Die Metadaten-Tagging-Konvention als Pflichtschritt im Content-Freigabe-Workflow verankern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Content-Governance-Berater. Entwickle eine Rückverfolgbarkeits-Strategie für KI-generierte Marketing-Inhalte aus Langdock. Kontext: Keine technische Wasserzeichen-Infrastruktur vorhanden, Rekonstruktion im Vorfalls-Fall erforderlich. Format: Strategie mit drei Rückverfolgbarkeits-Methoden, realistischer Einschätzung technischer Wasserzeichen und Rekonstruktions-Protokoll. Nutze die Audit-Log-Dokumentation und Content-Versionierungs-Richtlinie im Wissensordner."
**Erwartetes Artefakt:** Rückverfolgbarkeits-Strategie mit drei Methoden, Wasserzeichen-Einschätzung und Rekonstruktions-Protokoll für Vorfälle.
**Fallstricke (≥2 spezifisch):**
- Metadaten-Tags werden beim Export in ein fremdes Format (z. B. Word-Dokument) entfernt — Mitigation: Tags zusätzlich in einem internen Dokument-Register (Spreadsheet oder Notion-Datenbank) mit Dokumenten-ID erfassen.
- Das Rekonstruktions-Protokoll setzt voraus, dass Audit-Logs unbegrenzt verfügbar sind — Mitigation: die Retention-Frist der Audit-Logs (aus S-SG-024) explizit im Protokoll nennen und Rekonstruktionsanfragen innerhalb dieser Frist priorisieren.
**Anschluss-Szenario:** S-SG-039

### S-SG-039 Drittanbieter-Modell-Provider Security-Review durchführen

**Wann nutzen (Trigger):** Das Marketing-Team möchte einen neuen LLM-Provider (z. B. Mistral, Cohere, Google Gemini) über Langdock BYOK anbinden — der CISO verlangt vor der Freigabe einen standardisierten Security-Review, der über das reine DPA-Prüfen hinausgeht. (Quelle: A-22, sources/12 Q133)
**Strategisches Ziel:** Einen reproduzierbaren Security-Review-Prozess für neue LLM-Provider-Anbindungen etablieren, der Sicherheitsarchitektur, Zertifizierungen, Breach-History und vertragliche Garantien systematisch bewertet.
**Hands-on Ergebnis:** Ein Provider-Security-Review-Template mit Bewertungs-Dimensionen, Scoring-Skala und Freigabe-/Ablehnung-Schwellenwert.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Review-Template; Knowledge (Wissensordner) für die bestehende Provider-Vetting-Checkliste (S-SG-022), ISO-27001-Testat und DSGVO-Sub-Prozessor-Anforderungen; Web-Search zur Recherche öffentlich zugänglicher Sicherheits-Dokumentation des Providers.
**Vorgehen (4 Schritte):**
1. Die Bewertungs-Dimensionen festlegen: (a) Zertifizierungen (ISO 27001, SOC 2 Typ II), (b) Datenresidenz und EU-Verarbeitungsoption, (c) Zero-Data-Retention-Garantie (vertraglich oder nur per AGB), (d) Breach-History (öffentlich bekannte Vorfälle der letzten 3 Jahre), (e) API-Sicherheitsarchitektur (TLS, Key-Isolation, Rate-Limiting).
2. Eine Scoring-Skala definieren: je Dimension 0–3 Punkte; Gesamtscore ≥12 = Freigabe empfohlen; 8–11 = Freigabe mit Auflagen; <8 = Ablehnung.
3. Die verfügbare öffentliche Sicherheitsdokumentation des Providers per Web-Search recherchieren und in das Template eintragen.
4. Den Review als wiederholbaren Prozess verankern: jeder neue Provider durchläuft das Template, Ergebnis wird im AI-Risiko-Register (S-SG-028) eingetragen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Vendor-Security-Berater. Erstelle ein Provider-Security-Review-Template für neue LLM-Anbindungen über Langdock BYOK. Kontext: CISO verlangt standardisierten Review über DPA hinaus. Format: Template mit fünf Bewertungs-Dimensionen, Scoring-Skala (0–3 je Dimension, Freigabe-Schwellenwert) und Abschnitt für Web-Search-Recherche-Ergebnisse. Stütze die Dimensionen auf die Provider-Vetting-Checkliste und DSGVO-Sub-Prozessor-Anforderungen im Wissensordner."
**Erwartetes Artefakt:** Provider-Security-Review-Template mit fünf Bewertungs-Dimensionen, Scoring-Skala und dokumentiertem Freigabe-Schwellenwert.
**Fallstricke (≥2 spezifisch):**
- Das Review verlässt sich ausschließlich auf Selbstauskunft des Providers (Whitepaper, Webseite) ohne unabhängige Verifikation — Mitigation: nur Informationen aus unterzeichneten Verträgen, Audit-Berichten oder öffentlich verifizierten Zertifikatsdatenbanken als Belege akzeptieren.
- Ein bestandener Review wird als dauerhafter Status behandelt — Mitigation: eine Wiederholungs-Frist festlegen (jährlich oder bei Major-Änderungen des Providers) und das AI-Risiko-Register entsprechend aktualisieren.
**Anschluss-Szenario:** S-SG-040

### S-SG-040 Österreichisches DSG neben DSGVO für Marketing-Aktivitäten einhalten

**Wann nutzen (Trigger):** Das Marketing-Team expandiert nach Österreich und der Wiener Datenschutzbeauftragte weist darauf hin, dass das österreichische Datenschutzgesetz (DSG) in bestimmten Punkten über die DSGVO hinausgeht — insbesondere bei der Verwendung besonderer Datenkategorien und dem Bildungsbereich. (Quelle: A-17, BDSG-Analogie)
**Strategisches Ziel:** Die DSGVO-konforme Langdock-Konfiguration um die österreichischen DSG-Spezifika ergänzen, damit Marketing-Aktivitäten mit österreichischen Kundendaten keine nationalen Sonderregelungen verletzen.
**Hands-on Ergebnis:** Eine DSG-Österreich-Gap-Analyse mit Ampel-Status je Anforderungskategorie und einem Maßnahmenplan für die österreichische Tochtergesellschaft.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Gap-Analyse; Knowledge (Wissensordner) für den bestehenden DSGVO-AVV, die DSG-Österreich-Vergleichstabelle und die DSGVO-TOMs; Web-Search zur Verifikation aktueller Datenschutzbehörden-Entscheidungen der österreichischen DSB.
**Vorgehen (4 Schritte):**
1. Die DSG-Österreich-Spezifika auflisten, die über die DSGVO hinausgehen: erweitertes Auskunftsrecht (§ 1 DSG), Datenschutzbeschwerde bei der DSB, spezifische Regelungen für automatisierte Verarbeitung im Beschäftigtenkontext.
2. Per Web-Search aktuelle Entscheidungen der österreichischen Datenschutzbehörde (DSB) zu KI-Verarbeitung und Direktmarketing verifizieren.
3. Im Canvas je DSG-Spezifikum den Abdeckungsgrad durch den bestehenden DSGVO-AVV und die Langdock-TOMs bewerten (grün/gelb/rot).
4. Für rot-klassifizierte Punkte konkrete Maßnahmen ableiten: ergänzende Datenschutzerklärung auf Österreichisch, separate Beschwerde-Anlaufstelle benennen, Verarbeitungsverzeichnis um österreichische Spezifika erweitern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Berater für DACH-Expansion. Erstelle eine DSG-Österreich-Gap-Analyse für unsere Marketing-Aktivitäten mit österreichischen Kundendaten. Kontext: DSGVO-AVV liegt vor, österreichische DSG-Spezifika noch nicht geprüft. Format: Tabelle (DSG-Anforderung, DSGVO-Abdeckung, Lücke, Maßnahme, Ampel). Verifiziere aktuelle DSB-Entscheidungen per Web-Search mit Quellenangabe."
**Erwartetes Artefakt:** DSG-Österreich-Gap-Analyse mit Ampel-Status je Anforderungskategorie, verifizierter DSB-Entscheidungs-Referenz und priorisiertem Maßnahmenplan.
**Fallstricke (≥2 spezifisch):**
- Das DSG Österreich wird mit dem DSG Schweiz verwechselt — Mitigation: beide Gesetze als unterschiedliche Regelwerke mit eigenem Analyse-Tab führen; nie gemeinsam in einer Gap-Tabelle vermischen.
- Die österreichische DSB-Entscheidungspraxis zu KI-Marketing wird nicht berücksichtigt, obwohl sie von DSGVO-Entscheidungen abweichen kann — Mitigation: aktuelle DSB-Beschlüsse per Web-Search recherchieren und explizit im Dokument zitieren.
**Anschluss-Szenario:** S-SG-041

### S-SG-041 BDSG-Spezifika für deutsches Beschäftigten-Marketing-Daten einhalten

**Wann nutzen (Trigger):** Das HR-Marketing-Team will Langdock nutzen, um interne Stellenanzeigen und Mitarbeiter-Referral-Kampagnen zu automatisieren — der Betriebsrat weist darauf hin, dass Beschäftigtendaten nach BDSG § 26 besonders geschützt sind und nicht ohne Weiteres in KI-Workflows fließen dürfen. (Quelle: sources/12 Q132, A-18)
**Strategisches Ziel:** Die BDSG-§-26-Schranken für die Verarbeitung von Beschäftigtendaten im Marketing-KI-Kontext operativ umsetzen und sicherstellen, dass nur zulässige Verarbeitungszwecke (Begründung, Durchführung und Beendigung des Beschäftigungsverhältnisses) den Datenfluss in Langdock rechtfertigen.
**Hands-on Ergebnis:** Eine BDSG-§-26-Compliance-Matrix für HR-Marketing-Use-Cases mit zulässigen und unzulässigen Datenflüssen und Alternativen-Vorschlägen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Compliance-Matrix; Knowledge (Wissensordner) für BDSG-§-26-Grundlagen, bestehende Betriebsvereinbarung Digitalisierung und interne HR-Datenverarbeitungsrichtlinie.
**Vorgehen (4 Schritte):**
1. Die geplanten HR-Marketing-Use-Cases inventarisieren: Stellenanzeigen-Generierung, Referral-Kampagnen-Texte, interner Newsletter, Onboarding-Content.
2. Im Canvas je Use-Case prüfen: welche Beschäftigtendaten fließen in den Langdock-Prompt (Namen, Abteilungen, Performance-Daten, Gehaltsgruppen)? Welcher Verarbeitungszweck nach BDSG § 26 rechtfertigt das?
3. Unzulässige Datenflüsse identifizieren: Performance-Daten oder Gehaltsgruppen in Segmentierungs-Prompts ohne Zweckbezug zum Beschäftigungsverhältnis sind unzulässig.
4. Alternativen vorschlagen: anonymisierte Aggregat-Daten statt Personendaten, Opt-in-basierte Referral-Listen statt automatisierter Beschäftigten-Segmentierung.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein BDSG-Compliance-Berater. Erstelle eine Compliance-Matrix für HR-Marketing-Use-Cases, die Beschäftigtendaten verarbeiten. Kontext: Stellenanzeigen und Referral-Kampagnen über Langdock geplant. Format: Tabelle (Use-Case, Beschäftigtendaten involviert, Rechtsgrundlage BDSG § 26, zulässig ja/nein, Alternative). Stütze die Grundlagen auf BDSG § 26 und die Betriebsvereinbarung Digitalisierung im Wissensordner."
**Erwartetes Artefakt:** BDSG-§-26-Compliance-Matrix mit zulässigen und unzulässigen Datenflüssen und priorisierten Alternativenvorschlägen.
**Fallstricke (≥2 spezifisch):**
- BDSG § 26 wird nur auf das Arbeits- nicht aber auf das Bewerberverhältnis angewendet — Mitigation: explizit prüfen, ob Bewerber-Daten im Talent-Pipeline-Marketing ebenfalls unter § 26 fallen (ja, bereits bei Bewerbungseingang).
- Die Einwilligung nach BDSG § 26 (3) wird als gleichwertige Rechtsgrundlage angesehen — Mitigation: darauf hinweisen, dass Einwilligungen im Beschäftigtenkontext wegen des Machtgefälles kritisch zu bewerten sind und durch Betriebsvereinbarung abgesichert werden sollten.
**Anschluss-Szenario:** S-SG-042

### S-SG-042 Champion-Programm für sichere KI-Adoption im Marketing aufbauen

**Wann nutzen (Trigger):** Der Rollout von Langdock ist technisch abgeschlossen, aber die Adoption stagniert — Mitarbeitende nutzen die Plattform sporadisch und fallen in alte Shadow-AI-Gewohnheiten zurück, weil niemand lokal als Ansprechperson für Sicherheits- und Compliance-Fragen zur Verfügung steht. (Quelle: A-37, A-39)
**Strategisches Ziel:** Ein Champion-Netzwerk aufbauen, das Sicherheits- und Governance-Kompetenz dezentral in das Marketing-Team trägt — mit klarer Rolle, definierten Verantwortlichkeiten und einem regelmäßigen Austauschformat, das die AUP (S-SG-027) und den AI-Governance-1-Pager (S-SG-023) lebendig hält.
**Hands-on Ergebnis:** Ein Champion-Programm-Dokument mit Rollen-Definition, Einführungs-Curriculum, monatlichem Meeting-Format und Eskalationspfad für Sicherheitsfragen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Programm-Dokument; Knowledge (Wissensordner) für die AUP, den AI-Governance-1-Pager, das Onboarding-Curriculum und das Shadow-AI-Erkennungs-Programm.
**Vorgehen (4 Schritte):**
1. Die Champion-Rolle definieren: freiwillig oder ernannt, je Team-Bereich ein Champion (Content, Performance, Brand, PR), Zeitaufwand ~2 h/Monat, kein technisches Background erforderlich.
2. Das Einführungs-Curriculum zusammenstellen: (a) AUP-Pflichtlektüre, (b) Compliance-Szenarien aus S-SG-027 und S-SG-023, (c) Shadow-AI-Erkennungs-Demo, (d) Eskalationspfad bei Sicherheitsfragen.
3. Das monatliche Meeting-Format definieren: 30 Minuten, Round-Robin (1 Demo neuer Langdock-Feature 5 min, 2 Compliance-Fragen 15 min, 1 Shadow-AI-Update 5 min, 1 Ankündigung 5 min).
4. Den Eskalationspfad dokumentieren: Champion → CISO/DSB bei Datenschutzfragen, Champion → IT-Security bei Sicherheitsvorfällen, Champion → Marketing-Direktion bei strategischen Entscheidungen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Change-Management-Berater für KI-Adoption. Erstelle ein Champion-Programm-Dokument für sichere Langdock-Nutzung im Marketing. Kontext: Adoption stagniert, Shadow-AI nimmt wieder zu. Format: Dokument mit Abschnitten Rollen-Definition, Einführungs-Curriculum (4 Module), monatliches Meeting-Format und Eskalationspfad. Stütze das Curriculum auf AUP, AI-Governance-1-Pager und Shadow-AI-Programm aus dem Wissensordner."
**Erwartetes Artefakt:** Champion-Programm-Dokument mit Rollen-Definition, 4-Modul-Curriculum, Meeting-Format und dokumentiertem Eskalationspfad.
**Fallstricke (≥2 spezifisch):**
- Champions werden ernannt, ohne Entlastung von anderen Aufgaben, was zu Burnout und Abbruch führt — Mitigation: den Zeitaufwand (~2 h/Monat) realistisch kommunizieren und als offiziellen Teil der Stellenbeschreibung oder als OKR aufnehmen.
- Das Champion-Netzwerk wird nicht in den Governance-Zyklus eingebunden und verliert Relevanz — Mitigation: Champions als Pflicht-Teilnehmende in das quartalsweise AI-Risiko-Register-Review (S-SG-028) einbeziehen.
**Anschluss-Szenario:** S-SG-043

### S-SG-043 KI-Ethik-Leitlinien für DACH-Marketing-Kommunikation formulieren

**Wann nutzen (Trigger):** Die Marketing-Direktorin wird von der Unternehmensführung gebeten, eine öffentlich kommunizierbare KI-Ethik-Position für das Marketing zu formulieren — die auf konkreten Unternehmenspraktiken basiert, nicht auf Marketing-Phrasen, und im Einklang mit dem AI-Governance-1-Pager (S-SG-023) steht. (Quelle: A-50, A-48)
**Strategisches Ziel:** Eine authentische, belegbare KI-Ethik-Position erarbeiten, die das Unternehmen von "AI-Washing" abgrenzt und sowohl für externe Stakeholder als auch für Mitarbeitende glaubwürdig ist.
**Hands-on Ergebnis:** Eine KI-Ethik-Positionierung als 500-Wörter-Statement mit vier belegten Kernsätzen, konkreten Praxis-Beispielen und einem Selbst-Verpflichtungs-Mechanismus.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Statement; Knowledge (Wissensordner) für AI-Governance-1-Pager, AUP, HITL-Gate-Matrix und EU-AI-Act-Grundsätze.
**Vorgehen (4 Schritte):**
1. Die vier Kernsätze aus dem AI-Governance-1-Pager (S-SG-023) in externe Kommunikationssprache übersetzen: Transparenz → "Wir kennzeichnen jeden KI-generierten Inhalt", Konsent → "Wir verarbeiten Kundendaten nur mit ihrer Einwilligung", Reversibilität → "Jede KI-Entscheidung kann von einem Menschen überprüft und korrigiert werden", Beweisbarkeit → "Wir dokumentieren jeden KI-Einsatz und stellen ihn auf Anfrage dar".
2. Jeden Kernsatz mit einer konkreten Unternehmens-Praxis belegen (keine Versprechen ohne Praxis-Nachweis): HITL-Gates aus S-SG-021, Kennzeichnungs-Richtlinie aus S-SG-010, Audit-Logs aus S-SG-008.
3. Den Selbst-Verpflichtungs-Mechanismus definieren: jährlicher KI-Transparenz-Bericht, öffentliche Veröffentlichung der AUP auf der Unternehmenswebsite, Ansprechperson für Ethik-Fragen benennen.
4. Das Statement als konsistente Botschaft mit der Marketing-Kommunikation abgleichen: keine Aussagen, die über tatsächliche Praktiken hinausgehen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Unternehmenskommunikations-Berater. Erstelle ein KI-Ethik-Statement für unsere externe Kommunikation. Kontext: DACH-Marketing-Unternehmen, Statement soll belegbar und nicht als AI-Washing wahrnehmbar sein. Format: 500-Wörter-Statement mit vier Kernsätzen, je einer Praxis-Belegung und einem Selbst-Verpflichtungs-Mechanismus. Nutze AI-Governance-1-Pager, AUP und HITL-Gate-Matrix aus dem Wissensordner als Belegquellen."
**Erwartetes Artefakt:** KI-Ethik-Statement mit vier belegten Kernsätzen, konkreten Praxis-Nachweisen und dokumentiertem Selbst-Verpflichtungs-Mechanismus.
**Fallstricke (≥2 spezifisch):**
- Das Statement enthält Versprechen, die durch interne Praktiken noch nicht gedeckt sind — Mitigation: jeden Kernsatz gegen die tatsächlich implementierten Maßnahmen abgleichen und unerfüllte Punkte als "in Vorbereitung" kennzeichnen, nicht als erfüllt ausgeben.
- Das Statement klingt generisch und unterscheidet sich nicht von Wettbewerber-Boilerplates — Mitigation: konkrete unternehmensspezifische Beispiele (z. B. "Seit März 2025 werden alle synthetischen Inhalte mit #KI-generiert gekennzeichnet") statt abstrakter Formulierungen verwenden.
**Anschluss-Szenario:** S-SG-044

### S-SG-044 Notfallplan für Langdock-Plattformausfall im Marketing operationalisieren

**Wann nutzen (Trigger):** Der Betrieb ist während einer Hochkampagnen-Phase für mehrere Stunden ausgefallen — das Marketing-Team hatte keinen dokumentierten Fallback-Plan und verlor wertvolle Produktionsstunden. Jetzt soll ein Business-Continuity-Plan für den KI-Workspace-Ausfall erstellt werden. (Quelle: A-44, ISO 27001 A.17)
**Strategisches Ziel:** Einen BCP-Abschnitt für den Langdock-Ausfall erstellen, der die kritischsten Marketing-Workflows mit Fallback-Optionen ausstattet und das Team handlungsfähig hält, ohne in ungenehmigtes Shadow-AI auszuweichen.
**Hands-on Ergebnis:** Ein BCP-Abschnitt "KI-Workspace-Ausfall" mit Kritikalitäts-Ranking der Workflows, Fallback-Maßnahmen und 2-Stunden-Wiederherstellungs-Protokoll.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den BCP-Abschnitt; Knowledge (Wissensordner) für das Workflow-Inventar, die Vendor-Lock-in-Assessment (S-SG-017) und die AUP (S-SG-027).
**Vorgehen (4 Schritte):**
1. Das Workflow-Inventar nach Geschäftskritikalität sortieren: Tier-1 (darf nicht ausfallen: automatisierter Kunden-E-Mail-Versand, Social-Media-Freigabe), Tier-2 (darf 2–4 h ausfallen: Content-Drafts, interne Berichte), Tier-3 (darf 1 Tag ausfallen: Recherche-Tasks).
2. Je Tier-1-Workflow einen genehmigten Fallback definieren: Offline-Kopie der wichtigsten 3 Agenten-System-Prompts als Markdown-Dokument, direkter Zugriff auf Anthropic/OpenAI-API über firmeneigene BYOK-Keys, temporäre manuelle Prozess-Beschreibung.
3. Das 2-Stunden-Wiederherstellungs-Protokoll formulieren: 0–30 min Statusprüfung (status.langdock.com), 30–60 min Fallback-Aktivierung, 60–90 min Eskalation an Account-Manager, 90–120 min Management-Information.
4. Den Plan halbjährlich testen: 1× pro Jahr unangekündigter Drill, Ergebnis in das AI-Risiko-Register (S-SG-028) eintragen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Business-Continuity-Berater. Erstelle einen BCP-Abschnitt für den Ausfall unseres Langdock-Marketing-Workspace. Kontext: Ausfall während Hochkampagnen-Phase, kein Fallback-Plan vorhanden. Format: Dokument mit Kritikalitäts-Ranking (Tier 1–3), genehmigten Fallback-Maßnahmen je Tier-1-Workflow und 2-Stunden-Wiederherstellungs-Protokoll. Nutze das Workflow-Inventar und das Vendor-Lock-in-Assessment aus dem Wissensordner."
**Erwartetes Artefakt:** BCP-Abschnitt "KI-Workspace-Ausfall" mit Tier-Klassifikation, Fallback-Maßnahmen und 2-Stunden-Protokoll.
**Fallstricke (≥2 spezifisch):**
- Der Fallback-Plan sieht vor, während des Ausfalls ungenehmigtes Consumer-KI zu nutzen — Mitigation: den Fallback explizit auf genehmigte Alternativen (direkter API-Zugriff über BYOK, manuelle Prozesse) beschränken und in der AUP verankern.
- Das 2-Stunden-Protokoll setzt voraus, dass BYOK-Schlüssel dem Team bekannt sind — Mitigation: BYOK-Schlüssel in einem Passwort-Manager mit eingeschränktem Zugriff hinterlegen und die Zugriffsprozedur im BCP dokumentieren.
**Anschluss-Szenario:** S-SG-045

### S-SG-045 Gesamtreview: Security-und-Governance-Reifegrad des Marketing-Workspaces messen

**Wann nutzen (Trigger):** Nach einem Jahr Langdock-Betrieb verlangt der Vorstand einen Nachweis, dass der Sicherheits- und Governance-Reifegrad des Marketing-Workspaces systematisch gewachsen ist — und einen strukturierten Plan für die nächste Reifegradsstufe. (Quelle: A-36, A-50, ISO 27001 A.18)
**Strategisches Ziel:** Den aktuellen Security-und-Governance-Reifegrad des Workspaces anhand eines Maturity-Modells messen, Lücken identifizieren und einen priorisierten Roadmap für die nächste Stufe erstellen — als Executive-Präsentations-Grundlage.
**Hands-on Ergebnis:** Ein Maturity-Assessment-Report mit Reifegradpunkten je Dimension, Gap-Analyse und priorisierter 12-Monats-Roadmap.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Report; Knowledge (Wissensordner) für alle relevanten Governance-Dokumente aus den S-SG-Szenarien 001–044, das AI-Risiko-Register (S-SG-028) und die HITL-Gate-Matrix (S-SG-021).
**Vorgehen (4 Schritte):**
1. Das Maturity-Modell mit fünf Dimensionen und vier Reifegradstufen definieren: Dimensionen = (a) Datenschutz & Compliance, (b) Zugriffskontrolle & Identity, (c) Incident-Response & Monitoring, (d) KI-spezifische Governance, (e) Kulturelle Adoption. Stufen = Initial (1), Managed (2), Defined (3), Optimized (4).
2. Den Ist-Zustand je Dimension mit Belegen aus den implementierten S-SG-Maßnahmen bewerten: z. B. "Datenschutz & Compliance = Stufe 3, Nachweis: AVV (S-SG-001), DSFA (S-SG-002), Retention-Policy (S-SG-024)".
3. Lücken zu Stufe 4 identifizieren: welche Dimensionen sind noch auf Stufe 2 (z. B. KI-spezifische Governance ohne automatisiertes Monitoring)?
4. Eine priorisierte 12-Monats-Roadmap entwickeln: die drei wichtigsten Maßnahmen je Lücken-Dimension mit Verantwortlichkeit, Budget-Schätzung und messbarem KPI.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Governance-Maturity-Berater. Erstelle ein Maturity-Assessment für den Security-und-Governance-Reifegrad unseres Langdock-Marketing-Workspaces. Kontext: 1 Jahr Betrieb, Vorstand verlangt Nachweis des Fortschritts. Format: Report mit Maturity-Tabelle (fünf Dimensionen, Ist-Stufe 1–4, Belege aus implementierten Maßnahmen, Lücke zur Stufe 4) und 12-Monats-Roadmap (Maßnahme, Verantwortung, KPI). Stütze die Belege auf die im Wissensordner abgelegten Governance-Dokumente."
**Erwartetes Artefakt:** Maturity-Assessment-Report mit Reifegradpunkten je Dimension, belegten Ist-Stufen und priorisierter 12-Monats-Roadmap.
**Fallstricke (≥2 spezifisch):**
- Das Maturity-Assessment wird zu optimistisch ausgefüllt, weil die Bewertenden auch die Implementierenden sind — Mitigation: einen externen Reviewer (CISO oder unabhängigen Berater) als Gegenperspektive einbeziehen und Belege für jede Stufen-Einstufung verlinken.
- Die 12-Monats-Roadmap enthält zu viele Maßnahmen und wird unrealistisch — Mitigation: auf maximal drei Maßnahmen je Dimension beschränken und jede mit einem realistischen Budget-Rahmen versehen, damit der Vorstand priorisieren kann.
**Anschluss-Szenario:** S-SG-046

### S-SG-046 PII in Marketing-Prompts erkennen und maskieren, bevor sie das Modell erreichen

**Wann nutzen (Trigger):** Das Marketing-Team kopiert routinemäßig CRM-Exporte mit echten Kundennamen, E-Mail-Adressen und Telefonnummern in Langdock-Prompts, um Personalisierungs-Vorlagen zu testen — der Datenschutzbeauftragte moniert, dass die PII-Verarbeitung nicht als Verarbeitungszweck im AVV steht. (Quelle: sources/12 Q128, A-14)
**Strategisches Ziel:** Einen PII-Erkennungs-und-Maskierungs-Workflow etablieren, der personenbezogene Daten vor dem Modell-Aufruf pseudonymisiert — damit Kampagnen-Prompts DSGVO-konform bleiben, ohne den Personalisierungsnutzen zu verlieren.
**Hands-on Ergebnis:** Eine PII-Maskierungs-Richtlinie mit Erkennungs-Checkliste, Pseudonymisierungs-Konventionen und einem Langdock-Workflow-Schritt zur automatisierten Maskierung.
**Eingesetzte Langdock-Fähigkeit(en):** Workflow Builder (Preprocessing-Schritt mit Regex/LLM-PII-Filter vor dem eigentlichen Agent-Aufruf); Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für DSGVO-Art.-4-PII-Definition und interne Datenklassifikation.
**Vorgehen (4 Schritte):**
1. PII-Kategorien im Marketing-Kontext inventarisieren: direkte Identifikatoren (Name, E-Mail, Telefon, Kundennummer) und indirekte (Kaufverhalten-Kombination, IP-Adressen in Analytics-Exporten).
2. Maskierungs-Konventionen festlegen: Namen → "{{KUNDE_01}}", E-Mails → "{{EMAIL_01}}", Telefon → "{{TEL_01}}"; konsistente Platzhalter, damit die Prompt-Logik erhalten bleibt.
3. Einen Workflow-Preprocessing-Schritt konfigurieren: Eingehender Text wird durch einen LLM-PII-Detektions-Aufruf (z. B. mit niedrig-temperiertem Flash-Modell) geleitet, der PII durch Platzhalter ersetzt, bevor der Haupt-Agent den Prompt erhält.
4. Die Richtlinie im Wissensordner ablegen und als Pflicht-Onboarding-Modul für das Champion-Programm (S-SG-042) verankern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Datenschutz-Workflow-Berater. Erstelle eine PII-Maskierungs-Richtlinie für Marketing-Prompts in Langdock. Kontext: CRM-Exporte mit echten Kundendaten werden in Prompts kopiert, AVV deckt diese Verarbeitung nicht ab. Format: Richtlinie mit PII-Kategorienliste, Maskierungs-Konventionen (Platzhaltertabelle) und Workflow-Preprocessing-Schritt-Beschreibung. Nutze die DSGVO-Art.-4-Definition und interne Datenklassifikation aus dem Wissensordner."
**Erwartetes Artefakt:** PII-Maskierungs-Richtlinie mit Kategorienliste, Platzhalter-Konventionen und beschriebenem Workflow-Preprocessing-Schritt.
**Fallstricke (≥2 spezifisch):**
- Der PII-Erkennungs-Schritt selbst verarbeitet die Rohdaten mit PII im Modell und erzeugt so den Datenschutzproblem, das er lösen soll — Mitigation: den Maskierungs-Schritt regelbasiert (Regex) oder lokal (on-premise NER-Modell) ausführen, nicht über einen Cloud-LLM-Aufruf mit PII.
- Pseudonymisierte Platzhalter werden nicht in Ausgaben rückverfolgt, sodass personalisierte Ergebnisse nicht den richtigen Empfängern zugeordnet werden können — Mitigation: ein Mapping-Dokument (Platzhalter ↔ Originalwert) sicher und getrennt vom Prompt-Flow aufbewahren.
**Anschluss-Szenario:** S-SG-047

### S-SG-047 Datenklassifikations-Framework für Marketing-Daten einführen

**Wann nutzen (Trigger):** Der CISO stellt fest, dass Marketing-Mitarbeitende unveröffentlichte Kampagnen-Strategien, öffentliche Wettbewerber-Analysen und Kundenlisten alle gleich behandeln und in denselben Wissensordner laden — ein fehlendes Klassifikations-Framework führt zu unkontrolliertem Datenzugriff. (Quelle: sources/12 Q126, ISO 27001 A.8)
**Strategisches Ziel:** Ein praxistaugliches Datenklassifikations-Framework für Marketing-Daten einführen, das vier Schutzklassen definiert, die zulässigen Langdock-Verarbeitungsschritte je Klasse festlegt und die Wissensordner-Struktur neu ordnet.
**Hands-on Ergebnis:** Ein Datenklassifikations-Framework-Dokument mit vier Schutzklassen, Beispielen aus dem Marketing-Alltag und einer Wissensordner-Strukturvorlage je Klasse.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Framework; Knowledge (Wissensordner) für ISO-27001-A.8-Anforderungen, bestehende IT-Datenklassifikationsrichtlinie und RBAC-Konfiguration (S-SG-005).
**Vorgehen (4 Schritte):**
1. Vier Schutzklassen mit Marketing-Beispielen definieren: Öffentlich (veröffentlichte Pressemitteilungen, Public-Case-Studies), Intern (Agentur-Briefings, Styleguides), Vertraulich (unveröffentlichte Kampagnen-Strategien, Budgetpläne), Streng vertraulich (M&A-relevante Kommunikation, Personalentscheidungen).
2. Je Schutzklasse die zulässigen Langdock-Operationen festlegen: Öffentlich = alle Agenten, keine Einschränkung; Intern = nur genehmigte Mitarbeiter-Gruppen; Vertraulich = Owner/Editor-Rollen, kein Viewer-Zugriff für externe Parteien; Streng vertraulich = kein Upload in Langdock ohne explizite CISO-Freigabe.
3. Die Wissensordner-Struktur neu definieren: je Schutzklasse ein separater Ordner mit entsprechendem RBAC-Zugriffsmodell.
4. Den Klassifikations-Entscheidungsbaum als Onboarding-Pflichtlektüre im Champion-Curriculum (S-SG-042) verankern.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Information-Security-Berater. Erstelle ein Datenklassifikations-Framework für Marketing-Daten in Langdock. Kontext: Vier Schutzklassen erforderlich, Wissensordner-Struktur muss neu geordnet werden. Format: Dokument mit Klassifikationstabelle (Klasse, Beschreibung, Marketing-Beispiele, erlaubte Langdock-Operationen) und Wissensordner-Strukturvorlage. Stütze dich auf ISO-27001-A.8 und die IT-Datenklassifikationsrichtlinie im Wissensordner."
**Erwartetes Artefakt:** Datenklassifikations-Framework mit vier Schutzklassen, Marketing-Beispielen und Wissensordner-Strukturvorlage je Klasse.
**Fallstricke (≥2 spezifisch):**
- Mitarbeitende klassifizieren Dokumente zu niedrig, um Zugangsbeschränkungen zu umgehen — Mitigation: die Klassifikation stichprobenartig durch Champion-Reviews prüfen und Fehlklassifikationen als Lernfall kommunizieren, nicht als Disziplinarmaßnahme.
- Die vier Klassen werden zu feinkörnig und der Aufwand lähmt die tägliche Arbeit — Mitigation: zwei klare Entscheidungsfragen für den Alltag formulieren ("Würde mich dieser Inhalt belasten, wenn er öffentlich wird?" und "Enthält er unveröffentlichte Unternehmensstrategien?") als schnellen Filter.
**Anschluss-Szenario:** S-SG-048

### S-SG-048 Privacy-by-Design-Nachweis für neue KI-Features erbringen

**Wann nutzen (Trigger):** Das Produktteam will eine neue Personalisierungs-Funktion auf Basis von Langdock-Agenten einführen, die Nutzungsverhalten aus dem CRM auswertet — der Datenschutzbeauftragte verlangt einen Privacy-by-Design-Nachweis (Art. 25 DSGVO), bevor die Feature-Entwicklung beginnt. (Quelle: sources/12 Q128, A-13)
**Strategisches Ziel:** Privacy-by-Design nicht als nachträglichen Audit-Schritt, sondern als integralen Bestandteil des Feature-Entwicklungsprozesses etablieren — mit einer standardisierten Vorlage, die das Team vor der ersten Codezeile durchläuft.
**Hands-on Ergebnis:** Eine Privacy-by-Design-Checkliste für neue KI-Features mit acht Prinzipien, Ampel-Bewertung und dokumentiertem Nachweis je Prinzip.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die sieben Privacy-by-Design-Prinzipien nach Cavoukian, Art.-25-DSGVO-Anforderungen und die DSFA-Vorlage (S-SG-002).
**Vorgehen (4 Schritte):**
1. Die acht Bewertungsdimensionen definieren: die sieben Cavoukian-Prinzipien (Proaktivität, Datenschutz als Standard, Datenschutz eingebettet, volle Funktionalität, End-to-end-Sicherheit, Sichtbarkeit, Nutzerorientierung) plus als achtes die Langdock-spezifische Dimension "Modell-Trainingsausschluss nachgewiesen".
2. Je Dimension die konkrete Umsetzung im geplanten Feature beschreiben: z. B. "Datenschutz als Standard = segmentierte Kundendaten werden vor Übergabe an Agent pseudonymisiert (vgl. S-SG-046)".
3. Die Ampel-Bewertung vornehmen: grün = vollständig implementiert und belegt; gelb = implementiert, Nachweis noch ausstehend; rot = nicht implementiert, Blocker vor Feature-Launch.
4. Die ausgefüllte Checkliste als Pflicht-Anhang an das DSFA-Dokument (S-SG-002) knüpfen und vom Datenschutzbeauftragten gegenzeichnen lassen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Privacy-by-Design-Berater. Erstelle eine PbD-Checkliste für unser neues KI-Personalisierungs-Feature. Kontext: Feature wertet CRM-Nutzungsverhalten aus, Art.-25-DSGVO-Nachweis erforderlich. Format: Checkliste mit acht Dimensionen (sieben Cavoukian-Prinzipien plus Langdock-Trainingsausschluss), je Dimension Ampel und Nachweis-Feld. Stütze die Prinzipien auf Art. 25 und die DSFA-Vorlage aus dem Wissensordner."
**Erwartetes Artefakt:** Privacy-by-Design-Checkliste mit acht Dimensionen, Ampel-Bewertung und dokumentiertem Nachweis-Feld je Prinzip.
**Fallstricke (≥2 spezifisch):**
- Privacy-by-Design wird als einmaliger Stempel behandelt, obwohl sich das Feature-Design während der Entwicklung ändert — Mitigation: einen Re-Review-Trigger bei wesentlichen Design-Änderungen in die Checkliste aufnehmen.
- Die Checkliste wird intern als Bürde wahrgenommen und sabotiert, indem alle Punkte pauschal auf "grün" gesetzt werden — Mitigation: die Checkliste durch den Datenschutzbeauftragten stichprobenartig im Review prüfen lassen und Gegensignatur als Pflicht verankern.
**Anschluss-Szenario:** S-SG-049

### S-SG-049 Zugriffs-Review-Kadenz für den Langdock-Workspace einrichten

**Wann nutzen (Trigger):** Das ISO-27001-Audit zeigt, dass seit dem Go-live vor zwölf Monaten keine systematische Überprüfung der Workspace-Zugriffsrechte stattgefunden hat — mehrere ausgeschiedene Mitarbeitende haben noch aktive Viewer-Rollen auf sensiblen Wissensordnern, obwohl ihr SCIM-Account deaktiviert ist. (Quelle: ISO 27001 A.9, S-SG-005)
**Strategisches Ziel:** Eine wiederkehrende Zugriffs-Review-Kadenz etablieren, die RBAC-Konfigurationen quartalsweise mit dem aktuellen SCIM-Stand abgleicht und Über-Berechtigungen systematisch bereinigt — bevor sie im nächsten Audit auffallen.
**Hands-on Ergebnis:** Ein Zugriffs-Review-Protokoll mit Schritt-für-Schritt-Vorgehen, Verantwortlichkeits-Matrix und Eskalationspfad für gefundene Anomalien.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Protokoll; Knowledge (Wissensordner) für den RBAC-Ist-Zustand-Export, SCIM-Konfigurationsdokumentation (S-SG-007) und ISO-27001-A.9-Anforderungen.
**Vorgehen (4 Schritte):**
1. Den Review-Scope definieren: alle Ressourcen-Ebenen (Workspace, Folder, Agent, Workflow) und alle Rollen-Typen (Owner, Editor, Viewer, Admin); Frequenz quartalsweise plus ad hoc nach größeren Personalwechseln.
2. Den Abgleich-Prozess beschreiben: SCIM-Gruppenmitgliedschaft aus Entra ID exportieren → Langdock-Rollen-Export → Delta-Vergleich → Anomalie-Liste (Benutzer in Langdock ohne aktiven SCIM-Account; höhere Rolle als Gruppen-Mapping vorsieht).
3. Die Verantwortlichkeits-Matrix erstellen: Review-Durchführung (IT-Admin), Freigabe-Entscheidung bei Anomalien (CISO), Kommunikation an Betroffene (Marketing-Direktion).
4. Den Eskalationspfad für kritische Anomalien definieren: aktiver Langdock-Account ohne SCIM-Eintrag → sofortige Deaktivierung ohne Wartezeit auf regulären Review-Zyklus.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IAM-Governance-Berater. Erstelle ein Zugriffs-Review-Protokoll für unseren Langdock-Marketing-Workspace. Kontext: ISO-Audit hat veraltete Rollen aufgedeckt, quartalsweiser Review erforderlich. Format: Protokoll mit Schritten (Review-Scope, Abgleich-Prozess, Verantwortlichkeits-Matrix, Eskalationspfad) und einer Anomalie-Klassifikationstabelle. Nutze SCIM-Konfigurationsdokumentation und ISO-27001-A.9 aus dem Wissensordner."
**Erwartetes Artefakt:** Zugriffs-Review-Protokoll mit Abgleich-Prozess, Verantwortlichkeits-Matrix und Eskalationspfad für Anomalie-Klassen.
**Fallstricke (≥2 spezifisch):**
- Der Review wird nur auf Workspace-Ebene durchgeführt und lässt Agenten- und Folder-spezifische Berechtigungen aus — Mitigation: alle vier Ressourcen-Ebenen explizit im Protokoll als Pflicht-Scope verankern.
- Deaktivierte SCIM-Accounts erscheinen nicht im Langdock-Rollen-Export, wenn die SCIM-Provisionierung fehlerhaft konfiguriert war — Mitigation: den Abgleich sowohl von Langdock aus (aktive Rollen) als auch von Entra ID aus (aktive Accounts) bidirektional durchführen.
**Anschluss-Szenario:** S-SG-050

### S-SG-050 Insider-Bedrohungsrisiken für KI-Admin-Accounts bewerten

**Wann nutzen (Trigger):** Der CISO fragt nach einer strukturierten Bewertung des Insider-Bedrohungsrisikos für die Langdock-Workspace-Administratoren im Marketing — ein Workspace-Admin könnte im Worst Case alle Agenten-System-Prompts exportieren, RBAC deaktivieren oder den AVV kündigen, ohne dass ein Gegencheck existiert. (Quelle: ISO 27001 A.7, A-36)
**Strategisches Ziel:** Das privilegierte Zugangsrisiko für Workspace-Admins durch das Vier-Augen-Prinzip, minimale Admin-Accounts und Audit-Log-Alarme auf Admin-Aktionen auf ein akzeptables Niveau reduzieren.
**Hands-on Ergebnis:** Ein Insider-Threat-Mitigation-Dokument für KI-Admin-Accounts mit Vier-Augen-Regelung, minimaler Admin-Zahl und konfigurierten Audit-Alarm-Szenarien.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Mitigation-Dokument; Knowledge (Wissensordner) für die Audit-Logs-Dokumentation (S-SG-008), RBAC-Konfiguration und ISO-27001-A.9.2-Anforderungen (privilegierter Zugang).
**Vorgehen (4 Schritte):**
1. Das Admin-Aktions-Spektrum inventarisieren: Rechnungsverwaltung, SSO-Konfiguration ändern, API-Schlüssel erstellen/löschen, Workspace-weite Modell-Limits setzen, AVV kündigen — je Aktion das Schadenpotenzial einschätzen.
2. Das Vier-Augen-Prinzip für kritische Admin-Aktionen definieren: Änderungen an SSO/SCIM-Konfiguration und Kündigung des AVV erfordern Bestätigung durch zweiten benannten Admin.
3. Minimale Admin-Zahl festlegen: maximal zwei natürliche Personen als Workspace-Admin, eine davon als Funktions-Account der IT-Abteilung; kein Marketing-Champion darf Admin-Rechte haben.
4. Audit-Alarm-Szenarien im SIEM konfigurieren (vgl. S-SG-008): Alarm bei jeder API-Schlüssel-Erstellung durch Admin außerhalb der Geschäftszeiten; Alarm bei Massenlöschung von Wissensordner-Inhalten innerhalb von 10 Minuten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Privileged-Access-Management-Berater. Erstelle ein Insider-Threat-Mitigation-Dokument für unsere Langdock-Workspace-Admins. Kontext: Zwei Admins haben uneingeschränkte Kontrolle über alle Sicherheitseinstellungen. Format: Dokument mit Admin-Aktions-Inventar (Schadenpotenzial-Tabelle), Vier-Augen-Regelung, minimaler Admin-Zahl und fünf konfigurierten Audit-Alarm-Szenarien. Stütze dich auf Audit-Logs-Dokumentation und ISO-27001-A.9.2 im Wissensordner."
**Erwartetes Artefakt:** Insider-Threat-Mitigation-Dokument mit Schadenpotenzial-Tabelle für Admin-Aktionen, Vier-Augen-Regelung und konfigurierten Audit-Alarmen.
**Fallstricke (≥2 spezifisch):**
- Das Vier-Augen-Prinzip wird nur für die Plattform definiert, nicht für den zugehörigen BYOK-API-Schlüssel-Manager — Mitigation: die Vier-Augen-Regelung explizit auf alle Systeme ausweiten, die Admin-Zugriff auf Langdock-Funktionalität ermöglichen (Passwort-Manager, API-Konsole des Providers).
- Die minimale Admin-Zahl wird unterschritten, wenn ein Admin das Unternehmen verlässt und der Account deaktiviert wird, bevor ein Nachfolger ernannt ist — Mitigation: eine Nachfolge-Benennungspflicht als Teil des Offboarding-Prozesses (S-SG-019) verankern.
**Anschluss-Szenario:** S-SG-051

### S-SG-051 NDA-Compliance-Check für KI-assistierte Inhalte sicherstellen

**Wann nutzen (Trigger):** Das Marketing-Team nutzt Langdock, um Pressemitteilungen und Fallstudien für einen Kooperationspartner zu erstellen — der Rechtsanwalt des Partners weist darauf hin, dass das bestehende NDA den Einsatz von KI-Tools für partnerschaftliche Inhalte nicht explizit regelt und fragt, ob vertrauliche Partner-Informationen in KI-Modelle geflossen sind. (Quelle: sources/12 Q127, A-43)
**Strategisches Ziel:** Einen NDA-Compliance-Prozess für KI-assistierte Inhalte aufbauen, der vor dem Einsatz von Langdock für partnerschaftliche oder kundenvertrauliche Projekte prüft, ob das NDA den KI-Einsatz erlaubt, und bei Lücken eine Ergänzungsklausel vorschlägt.
**Hands-on Ergebnis:** Eine NDA-KI-Compliance-Checkliste mit Prüffragen, einer Muster-Ergänzungsklausel für KI-Einsatz und einem Freigabe-Dokumentationsschritt.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste und Musterklausel; Knowledge (Wissensordner) für das bestehende NDA-Muster, die Datenhaltungsgarantien (Trainingsausschluss) und die Acceptable-Use-Policy (S-SG-027).
**Vorgehen (4 Schritte):**
1. Die Prüffragen für den NDA-Review definieren: Erlaubt das NDA die Weitergabe vertraulicher Informationen an Sub-Verarbeiter? Enthält es Klauseln zu KI-Tools? Ist der Trainingsausschluss von Langdock für den Partner ausreichend belegt?
2. Wenn das NDA keine KI-Regelung enthält: eine Muster-Ergänzungsklausel formulieren ("Einsatz von KI-Verarbeitungsdiensten ist gestattet, sofern (a) keine Daten für Modell-Training verwendet werden, (b) Datenresidenz in der EU sichergestellt ist und (c) ein AVV nach Art. 28 DSGVO vorliegt").
3. Den Freigabe-Dokumentationsschritt definieren: bevor vertrauliche Partner-Informationen in einen Langdock-Wissensordner geladen werden, Freigabe durch Rechtsabteilung und Dokumentation im Projekt-Log.
4. Den Prozess als Checklisten-Pflichtschritt in den Kampagnen-Intake-Workflow (vgl. S-SG-021 HITL-Gate) integrieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Vertragsrecht-Berater. Erstelle eine NDA-KI-Compliance-Checkliste für Marketing-Projekte mit Kooperationspartnern. Kontext: Bestehendes NDA enthält keine KI-Regelung, Langdock soll für partnerschaftliche Inhalte genutzt werden. Format: Checkliste mit Prüffragen (NDA-Review), Muster-Ergänzungsklausel und Freigabe-Dokumentationsschritt. Stütze die Klausel auf die Datenhaltungsgarantien und AUP im Wissensordner."
**Erwartetes Artefakt:** NDA-KI-Compliance-Checkliste mit Prüffragen, Muster-Ergänzungsklausel und dokumentiertem Freigabe-Schritt.
**Fallstricke (≥2 spezifisch):**
- Die Muster-Ergänzungsklausel wird ohne Rechtsanwalt direkt an den Partner geschickt, was den NDA-Verhandlungsprozess verkompliziert — Mitigation: die Klausel explizit als internen Entwurf markieren und die Freigabe durch die eigene Rechtsabteilung vor Versand vorschreiben.
- Das NDA-Review wird nur einmalig beim Vertragsabschluss durchgeführt, aber nicht bei jeder neuen KI-Kampagne wiederholt — Mitigation: den NDA-Review-Schritt als Pflicht-Gate in den Kampagnen-Intake-Workflow einbauen, nicht nur als einmaligen Vertragsschritt.
**Anschluss-Szenario:** S-SG-052

### S-SG-052 Content-Rights-Clearance-Workflow vor Wissensordner-Upload etablieren

**Wann nutzen (Trigger):** Das Content-Team lädt externe Marktforschungsberichte, Agentur-Studien und lizenzierte Branchenreports in den Langdock-Wissensordner, ohne zu prüfen, ob die Lizenz die Nutzung als Trainings- oder Retrieval-Grundlage für KI-Systeme erlaubt — das IP-Team warnt vor vertraglichen Verletzungen. (Quelle: S-SG-036, A-43)
**Strategisches Ziel:** Einen verpflichtenden Content-Rights-Clearance-Schritt vor jedem Wissensordner-Upload einführen, der lizenzrechtliche Nutzungserlaubnisse für KI-Retrieval und Embedding-Erzeugung prüft und dokumentiert.
**Hands-on Ergebnis:** Eine Content-Rights-Clearance-Checkliste mit Prüffragen je Inhaltstyp, einem Ampel-Schema und einem Upload-Genehmigungsprotokoll.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste und das Protokoll; Knowledge (Wissensordner) für die IP-Richtlinie (S-SG-036), bestehende Lizenzverträge und die Embedding-Datenschutz-Analyse (S-SG-014).
**Vorgehen (4 Schritte):**
1. Die relevanten Inhaltstypen für den Wissensordner klassifizieren: selbst erstellte Dokumente (kein Clearance-Bedarf), intern lizenzierte Reports (Clearance erforderlich), öffentlich lizenzierte Quellen (CC-Lizenz prüfen), extern eingekaufte Marktforschung (Lizenzvertrag prüfen).
2. Für lizenzpflichtige Dokumente drei Prüffragen definieren: (a) Erlaubt die Lizenz maschinelles Lesen und Indexierung? (b) Ist die Nutzung für interne Recherche-Systeme abgedeckt? (c) Enthält die Lizenz Ausschlussklauseln für KI-Systeme?
3. Das Ampel-Schema festlegen: grün = Nutzung explizit erlaubt oder Selbst-erstelltes; gelb = Lizenz unklar, Rückfrage beim Lizenzgeber; rot = Nutzung ausgeschlossen, kein Upload.
4. Das Upload-Genehmigungsprotokoll definieren: jedes hochgeladene Dokument erhält einen Metadata-Tag (Lizenzstatus, Prüfdatum, Prüfer-Name) und wird im Content-Rechts-Register verzeichnet.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IP-Compliance-Berater. Erstelle eine Content-Rights-Clearance-Checkliste für Langdock-Wissensordner-Uploads. Kontext: Externe Berichte und Studien werden ohne Lizenz-Review hochgeladen, KI-Nutzungsrechte oft unklar. Format: Checkliste mit Inhaltstypen-Klassifikation, drei Prüffragen je Typ, Ampel-Schema und Upload-Genehmigungsprotokoll. Stütze dich auf die IP-Richtlinie und Lizenzverträge im Wissensordner."
**Erwartetes Artefakt:** Content-Rights-Clearance-Checkliste mit Inhaltstypen-Klassifikation, Ampel-Schema und Upload-Genehmigungsprotokoll.
**Fallstricke (≥2 spezifisch):**
- Lizenzverträge enthalten keine explizite KI-Klausel, was als stillschweigende Erlaubnis interpretiert wird — Mitigation: das Fehlen einer KI-Klausel als "gelb/unklar" einstufen und Rückfrage beim Lizenzgeber als Standardprozess vorschreiben, nicht als Ausnahme.
- Das Content-Rechts-Register wird nicht gepflegt, wenn das Team unter Zeitdruck steht — Mitigation: das Protokoll als Ein-Klick-Formular in den Workflow-Builder integrieren, damit der Upload ohne ausgefülltes Formular technisch blockiert wird.
**Anschluss-Szenario:** S-SG-053

### S-SG-053 SLA für Compliance-Team-Review von KI-Outputs definieren

**Wann nutzen (Trigger):** Das Compliance-Team beklagt, dass KI-generierte Kampagnen-Texte mit Preisangaben und regulatorischen Aussagen häufig zu spät zur Prüfung eingereicht werden — der Review erfolgt im Nachhinein oder gar nicht, was Haftungsrisiken erzeugt. Eine klare Service-Level-Vereinbarung fehlt. (Quelle: A-32, A-21 analog)
**Strategisches Ziel:** Eine verbindliche Review-SLA zwischen Marketing und Compliance etablieren, die Einreichungs-Fristen, maximale Review-Zeiten und Eskalationspfade für dringende Kampagnen definiert — sodass KI-Outputs nie ohne Compliance-Freigabe bei Hochrisiko-Inhalten publiziert werden.
**Hands-on Ergebnis:** Eine Marketing-Compliance-Review-SLA mit Inhaltstypen-Klassifikation, Fristen-Matrix und Eskalationsprotokoll für Eilfälle.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die SLA; Knowledge (Wissensordner) für die HITL-Gate-Matrix (S-SG-021), AI-Risiko-Register (S-SG-028) und interne Freigabe-Richtlinie.
**Vorgehen (4 Schritte):**
1. Die Inhaltstypen nach Review-Dringlichkeit klassifizieren: Hochrisiko (Preisangaben, rechtliche Aussagen, Wettbewerber-Vergleiche) = Review vor Veröffentlichung Pflicht; Mittelrisiko (Produkt-Features, Testimonials) = Review empfohlen; Niedrigrisiko (allgemeine Blog-Inhalte, Social-Media-Floskeln) = Stichproben-Review ausreichend.
2. Die Fristen-Matrix definieren: Hochrisiko = Einreichung ≥72 h vor Publish, Review-Frist 48 h; Mittelrisiko = Einreichung ≥24 h vor Publish, Review-Frist 24 h; Eilfälle = Einreichung mit Begründung, Compliance-Response ≤4 h.
3. Den Eskalationspfad für Fristversäumnisse dokumentieren: fehlende Einreichung bei Hochrisiko → automatisches Publish-Verbot durch HITL-Node im Workflow.
4. Die SLA als gegenseitige Vereinbarung von Marketing-Direktion und Compliance-Leitung unterzeichnen lassen und im Wissensordner ablegen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Operations-Governance-Berater. Erstelle eine Review-SLA zwischen Marketing und Compliance für KI-generierte Kampagneninhalte. Kontext: Compliance-Reviews erfolgen zu spät oder gar nicht, Haftungsrisiken entstehen. Format: SLA-Dokument mit Inhaltstypen-Klassifikation, Fristen-Matrix, Eilfall-Protokoll und Eskalationsklausel. Stütze die Risikoklassen auf die HITL-Gate-Matrix und das AI-Risiko-Register im Wissensordner."
**Erwartetes Artefakt:** Marketing-Compliance-Review-SLA mit Fristen-Matrix, Eilfall-Protokoll und dokumentiertem Eskalationspfad.
**Fallstricke (≥2 spezifisch):**
- Die SLA wird eingeführt, aber die Fristen werden nicht im Workflow-Builder als automatische Deadlines konfiguriert, sodass Fristversäumnisse unbemerkt bleiben — Mitigation: Publish-Blockierung für Hochrisiko-Inhalte ohne Compliance-Freigabe als technische Workflow-Bedingung, nicht nur als organisatorische Regel umsetzen.
- Der Eilfall-Kanal wird zur Norm, weil das Marketing-Team immer zu spät einreicht — Mitigation: die Eilfall-Nutzung monatlich auswerten und bei mehr als drei Eilfällen pro Monat eine Ursachen-Analyse mit dem Team durchführen.
**Anschluss-Szenario:** S-SG-054

### S-SG-054 Grenzüberschreitende Datentransfer-Dokumentation (SCCs) für Marketing-Daten erstellen

**Wann nutzen (Trigger):** Die Holding verlangt, dass für alle Datentransfers zwischen der DACH-Einheit und US-basierten Marketing-Tools (z. B. HubSpot US-Rechenzentrum, Salesforce Marketing Cloud) Standardvertragsklauseln (SCCs) dokumentiert und dem Datenschutzbeauftragten vorgelegt werden — Langdock ist als EU-gehosteter Hub betroffen, weil es Daten an US-Modell-Provider überträgt. (Quelle: sources/12 Q126, S-SG-009)
**Strategisches Ziel:** Alle relevanten Datentransfer-Pfade im Marketing-Ökosystem kartieren, die SCCs-Dokumentation vollständig aufsetzen und sicherstellen, dass Langdocks EU-Hosting und Zero-Retention korrekt in der Transfer-Impact-Assessment-Logik abgebildet sind.
**Hands-on Ergebnis:** Eine Datentransfer-Kartierung mit SCC-Status je Transfer-Pfad, einer Transfer-Impact-Assessment-Zusammenfassung für die Langdock-Anbindung und einer Lückenliste für ausstehende SCCs.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Kartierung und TIA-Zusammenfassung; Knowledge (Wissensordner) für den bestehenden AVV, Sub-Prozessor-Liste, Datenresidenz-Dokumentation (S-SG-009) und SCC-Musterklauseln der EU-Kommission.
**Vorgehen (4 Schritte):**
1. Alle Datentransfer-Pfade aus dem Marketing-Ökosystem kartieren: EU-Workspace → Langdock (EU-Azure, kein Transfer); Langdock → Modell-Provider OpenAI/Anthropic (US-Transfer, Zero-Retention + SCC erforderlich); Langdock-HubSpot-Sync → HubSpot US (US-Transfer, SCCs prüfen).
2. Den SCC-Status je Transfer-Pfad bewerten: unterzeichnete SCCs vorhanden / vorhanden aber veraltet (post-Schrems-II-Version) / fehlend.
3. Für den kritischen Transfer Langdock → US-Modell-Provider eine Transfer-Impact-Assessment-Zusammenfassung erstellen: EU-Azure-Verarbeitung, Zero-Retention-Zusage als ergänzende Schutzmaßnahme, Art.-46-Abs.-2-c-SCC-Rechtsgrundlage.
4. Eine Lückenliste für ausstehende oder veraltete SCCs erstellen und Fristen zur Nachverhandlung setzen.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein internationaler Datenschutz-Berater. Erstelle eine Datentransfer-Kartierung für unser Marketing-Ökosystem mit SCC-Status je Transfer-Pfad. Kontext: Langdock als EU-Hub mit US-Modell-Provider-Anbindungen und HubSpot-Sync. Format: Kartierungs-Tabelle (Transfer-Pfad, Datenart, Rechtsgrundlage, SCC-Status) plus TIA-Zusammenfassung für Langdock-Provider-Transfer. Stütze dich auf AVV, Sub-Prozessor-Liste und SCC-Musterklauseln im Wissensordner."
**Erwartetes Artefakt:** Datentransfer-Kartierung mit SCC-Status-Tabelle, TIA-Zusammenfassung und priorisierter Lückenliste.
**Fallstricke (≥2 spezifisch):**
- SCCs aus der Zeit vor dem Schrems-II-Urteil (2020) werden als ausreichend behandelt — Mitigation: nur die überarbeiteten EU-Kommissions-SCC-Klauseln von 2021 als gültig akzeptieren und Altklagen systematisch ersetzen.
- Der Zero-Retention-Mechanismus des Modell-Providers wird ohne Rücksicht auf Ausnahmen (z. B. Abuse-Monitoring-Ausnahmen in den AGB) als absolut angesehen — Mitigation: die Zero-Retention-Zusage im Provider-DPA auf Ausnahmen prüfen und diese im TIA explizit dokumentieren.
**Anschluss-Szenario:** S-SG-055

### S-SG-055 AI-Vendor-Due-Diligence-Checkliste für neue KI-Tools erstellen

**Wann nutzen (Trigger):** Das Marketing-Team möchte ein neues KI-Tool (z. B. einen KI-basierten SEO-Analyzer oder ein KI-Video-Generierungs-Tool) neben Langdock einführen — der Procurement-Prozess hat kein standardisiertes KI-spezifisches Due-Diligence-Framework, sodass jede Evaluierung von Grund auf neu beginnt. (Quelle: S-SG-039, sources/12 Q129)
**Strategisches Ziel:** Ein wiederverwendbares AI-Vendor-Due-Diligence-Framework erstellen, das alle neuen KI-Tool-Evaluierungen auf denselben standardisierten Prüfdimensionen basiert und das Procurement-Komitee in die Lage versetzt, begründete Freigabe- oder Ablehnungsentscheidungen zu treffen.
**Hands-on Ergebnis:** Eine AI-Vendor-Due-Diligence-Checkliste mit sieben Prüfdimensionen, einem Scoring-Modell und einer Entscheidungs-Matrix (Freigabe / Freigabe mit Auflagen / Ablehnung).
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für das Provider-Security-Review-Template (S-SG-039), die NDA-Compliance-Checkliste (S-SG-051) und das Datenklassifikations-Framework (S-SG-047).
**Vorgehen (4 Schritte):**
1. Die sieben Prüfdimensionen definieren: (1) Zertifizierungen (ISO 27001, SOC 2), (2) Datenresidenz, (3) Trainingsausschluss/Zero-Retention, (4) Breach-Notification-Pflicht und -History, (5) Vertragliche Grundlage (DPA, SCCs), (6) Funktionale Notwendigkeit vs. Langdock-Abdeckung, (7) Lizenzmodell und Exit-Klausel.
2. Das Scoring-Modell festlegen: je Dimension 0–3 Punkte; Gesamtscore ≥18 = Freigabe; 13–17 = Freigabe mit Auflagen (DPA nachfordern, Retention prüfen); <13 = Ablehnung.
3. Die Entscheidungs-Matrix mit Verantwortlichkeiten festlegen: Score-Ermittlung durch IT-Security, Freigabe durch CISO, Kommunikation der Entscheidung durch Marketing-Direktion.
4. Das Framework im Wissensordner als Pflicht-Template für alle Neubeschaffungen ablegen und den Procurement-Prozess daran koppeln.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Procurement-Governance-Berater. Erstelle eine AI-Vendor-Due-Diligence-Checkliste für neue KI-Tools im Marketing. Kontext: Kein standardisiertes KI-spezifisches Evaluierungs-Framework vorhanden. Format: Checkliste mit sieben Prüfdimensionen, Scoring-Skala (0–3 je Dimension), Entscheidungs-Matrix (Freigabe/Auflagen/Ablehnung) und Verantwortlichkeits-Matrix. Stütze die Dimensionen auf das Provider-Security-Review-Template und das Datenklassifikations-Framework im Wissensordner."
**Erwartetes Artefakt:** AI-Vendor-Due-Diligence-Checkliste mit sieben Dimensionen, Scoring-Modell und Entscheidungs-Matrix.
**Fallstricke (≥2 spezifisch):**
- Die Prüfung wird nur auf Sicherheitsdimensionen fokussiert und die funktionale Dimension "Warum wird dieses Tool gebraucht, wenn Langdock diese Funktion bereits abdeckt?" wird ausgelassen — Mitigation: die funktionale Notwendigkeit als eigene Dimension mit dem gleichen Gewicht wie Sicherheit führen, um Tool-Proliferation zu verhindern.
- Ein bestandenes Due-Diligence-Review wird als dauerhaft gültig behandelt — Mitigation: eine Wiederholungs-Pflicht (jährlich oder bei Major-Updates des Vendors) in die Entscheidungs-Matrix als Bedingung aufnehmen.
**Anschluss-Szenario:** S-SG-056

### S-SG-056 Marketing-AI-Ethics-Committee einrichten und operationalisieren

**Wann nutzen (Trigger):** Die Unternehmensführung verlangt nach einem publizierten Bericht über AI-Washing in der Branche eine institutionelle Antwort: ein internes AI-Ethics-Committee soll sicherstellen, dass alle KI-Initiativen im Marketing ethisch vertretbar sind und der AI-Governance-1-Pager (S-SG-023) gelebt wird — nicht nur auf dem Papier steht. (Quelle: A-50, sources/12 Q132)
**Strategisches Ziel:** Ein schlankes, handlungsfähiges AI-Ethics-Committee für das Marketing aufbauen, das mit klarem Mandat, definierten Entscheidungskompetenzen und einem quartalsweisen Review-Rhythmus konkrete Governance-Entscheidungen trifft — und nicht als zahnloses Feigenblatt endet.
**Hands-on Ergebnis:** Ein AI-Ethics-Committee-Charter mit Mandat, Zusammensetzung, Entscheidungskompetenzen, Meeting-Rhythmus und Eskalationspfad zur Unternehmensführung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für die Charter; Knowledge (Wissensordner) für den AI-Governance-1-Pager (S-SG-023), die KI-Ethik-Positionierung (S-SG-043), das AI-Risiko-Register (S-SG-028) und das Champion-Programm (S-SG-042).
**Vorgehen (4 Schritte):**
1. Das Mandat des Committees formulieren: (a) Review neuer KI-Use-Cases gegen die vier Governance-Säulen (S-SG-023), (b) quartalsweiser Review des AI-Risiko-Registers, (c) Entscheidung über Hochrisiko-Use-Cases, die HITL allein nicht abdeckt, (d) jährliche Überprüfung der KI-Ethik-Positionierung.
2. Die Zusammensetzung definieren: Marketing-Direktion (Vorsitz), Datenschutzbeauftragter, Rechtsabteilung, IT-Security (CISO), ein Mitarbeitenden-Vertreter (Champion-Netzwerk), externes Ethics-Advisory als optionale Einladung.
3. Die Entscheidungskompetenzen abgrenzen: beratend für niedrig-/mittel-Risiko-Use-Cases; bindend für Hochrisiko-Entscheidungen (z. B. Einsatz synthetischer Identitäten, Profiling außerhalb bestehender DSFA).
4. Den Meeting-Rhythmus und den Eskalationspfad festlegen: quartalsweises ordentliches Meeting; außerordentliches Treffen bei AI-Incident (S-SG-020); Eskalation an Vorstand bei ungeklärten Ethik-Konflikten.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Corporate-Governance-Berater. Erstelle eine AI-Ethics-Committee-Charter für unsere Marketing-Abteilung. Kontext: Institutionelle Antwort auf AI-Washing-Vorwürfe, Committee soll handlungsfähig und nicht symbolisch sein. Format: Charter mit Abschnitten Mandat, Zusammensetzung, Entscheidungskompetenzen (beratend/bindend), Meeting-Rhythmus und Eskalationspfad. Stütze das Mandat auf AI-Governance-1-Pager und AI-Risiko-Register im Wissensordner."
**Erwartetes Artefakt:** AI-Ethics-Committee-Charter mit Mandat, Zusammensetzung, differenzierten Entscheidungskompetenzen und Eskalationspfad.
**Fallstricke (≥2 spezifisch):**
- Das Committee hat kein bindendes Entscheidungsrecht und kann von der Marketing-Direktion übergangen werden — Mitigation: mindestens eine Kategorie bindender Entscheidungen (Hochrisiko-Use-Cases) explizit in der Charter verankern und in den Workflow-Freigabe-Prozess integrieren.
- Das Committee trifft sich quartalsweise, aber AI-Incidents erfordern Entscheidungen innerhalb von Stunden — Mitigation: ein außerordentliches Treffen (virtuell, 1 Stunde) als explizite Charter-Option für Incident-Situationen definieren und den Einberufungsprozess vorab festlegen.
**Anschluss-Szenario:** S-SG-057

### S-SG-057 KI-Incident-War-Game-Übung für das Marketing-Team durchführen

**Wann nutzen (Trigger):** Nach der Erstellung des KI-Incident-Response-Playbooks (S-SG-020) und der Responsible-Disclosure-Policy (S-SG-034) fragt die Marketing-Direktorin, ob das Team im Ernstfall wirklich handlungsfähig wäre — ein ungeplanter Echtfall würde die Lücken erst zeigen, wenn der Schaden bereits eingetreten ist. (Quelle: S-SG-079 analog PR-Tabletop, A-41)
**Strategisches Ziel:** Das Incident-Response-Playbook in einer simulierten Krisensituation testen, Reaktionsgeschwindigkeit und Entscheidungsqualität des Teams unter Druck messen und konkrete Verbesserungspunkte für das Playbook ableiten.
**Hands-on Ergebnis:** Ein War-Game-Übungsprotokoll mit drei eskalierten Szenarien, einem Beobachtungsleitfaden für den Moderator und einem strukturierten After-Action-Review-Template.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Übungsprotokoll; Knowledge (Wissensordner) für das KI-Incident-Response-Playbook (S-SG-020), die Breach-Notification-Vorlage (S-SG-035) und die HITL-Gate-Matrix (S-SG-021).
**Vorgehen (4 Schritte):**
1. Drei eskalierte Szenarien entwickeln: (a) Halluzinations-Incident (Agent verbreitet falsche Produktpreise in automatisiertem Newsletter), (b) Datenpanne (Wissensordner mit Kundendaten durch Fehlkonfiguration für externe Agentur zugänglich), (c) Prompt-Injection-Angriff (externer Akteur manipuliert Agent über injizierten Wissensordner-Inhalt).
2. Den Übungsablauf strukturieren: je Szenario 20 Minuten Echtzeit-Reaktion → Moderator liefert eskalierendes Update → Team entscheidet → 10 Minuten Debriefing pro Szenario.
3. Den Beobachtungsleitfaden für den Moderator erstellen: welche Playbook-Schritte wurden befolgt? Wer hat die Führung übernommen? Wo entstanden Entscheidungs-Blockaden?
4. Das After-Action-Review-Template befüllen: Was lief gut? Was fehlte im Playbook? Welche drei Sofort-Maßnahmen werden vor der nächsten Übung umgesetzt?
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Crisis-Simulation-Moderator. Erstelle ein War-Game-Übungsprotokoll für KI-Incidents im Marketing. Kontext: Drei eskalierte Szenarien — Halluzination, Datenpanne, Prompt-Injection. Format: Protokoll mit drei Szenario-Beschreibungen (Ausgangs-Inject + zwei Eskalationsstufen je), Beobachtungsleitfaden und After-Action-Review-Template. Stütze die Szenarien auf das Incident-Playbook und die Breach-Notification-Vorlage im Wissensordner."
**Erwartetes Artefakt:** War-Game-Übungsprotokoll mit drei Szenarien, Beobachtungsleitfaden und After-Action-Review-Template.
**Fallstricke (≥2 spezifisch):**
- Die Übung wird zu realistisch gestellt und löst echte Compliance-Meldepflichten aus — Mitigation: alle Teilnehmenden vor Beginn schriftlich bestätigen lassen, dass es sich um eine Simulation handelt, und keine echten Kundendaten oder Live-Systeme in die Übung einbeziehen.
- Das After-Action-Review mündet in einer To-do-Liste, die niemand umsetzt — Mitigation: maximal drei Sofort-Maßnahmen aus dem Review ableiten, je eine verantwortliche Person benennen und die Umsetzung als Agenda-Punkt des nächsten AI-Ethics-Committee-Treffens (S-SG-056) verankern.
**Anschluss-Szenario:** S-SG-058

### S-SG-058 Key-Person-Dependency-Risiko für KI-Admins dokumentieren und mitigieren

**Wann nutzen (Trigger):** Der einzige Langdock-Workspace-Admin im Marketing-Team kündigt — sein Nachfolger kennt weder die SCIM-Konfiguration noch die BYOK-Schlüsselverwaltung, noch die System-Prompts der kritischen Agenten. Das Unternehmen steht vor einem Wissensmonopol-Risiko. (Quelle: A-35, A-44)
**Strategisches Ziel:** Das Key-Person-Dependency-Risiko für die KI-Admin-Rolle durch Wissens-Dokumentation, einen zweiten benannten Admin und einen strukturierten Übergabe-Prozess auf ein beherrschbares Niveau reduzieren — bevor der nächste ungeplante Abgang eintritt.
**Hands-on Ergebnis:** Ein KI-Admin-Wissenstransfer-Dokument mit Konfigurations-Dokumentation, Zweitmandats-Regelung und einem 5-Tage-Onboarding-Plan für den Nachfolger.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für das Wissenstransfer-Dokument; Knowledge (Wissensordner) für SSO/SCIM-Konfigurationscheckliste (S-SG-007), RBAC-Mapping (S-SG-005), BCP-Abschnitt (S-SG-044) und Vendor-Lock-in-Assessment (S-SG-017).
**Vorgehen (4 Schritte):**
1. Die kritischen Wissens-Domänen des Admin-Accounts inventarisieren: SSO/SCIM-Konfiguration (Entra-Quirk, S-SG-007), BYOK-Schlüssel-Speicherorte und Rotation-Kalender, Agenten-System-Prompts der Tier-1-Workflows, Wissensordner-Struktur und Zugriffsberechtigungen, Audit-Log-API-Schlüssel und SIEM-Anbindung.
2. Je Wissens-Domäne den aktuellen Dokumentationsgrad bewerten (vollständig dokumentiert / teilweise / nicht dokumentiert) und Lücken priorisieren.
3. Die Zweitmandats-Regelung definieren: ein zweiter benannter Admin (IT-Funktions-Account) erhält Zugriff auf alle Admin-Konfigurationen und wird vierteljährlich auf Aktualität geschult.
4. Den 5-Tage-Onboarding-Plan strukturieren: Tag 1 (Zugänge und Schlüssel), Tag 2 (SSO/SCIM-Konfiguration), Tag 3 (Agenten- und Workflow-Architektur), Tag 4 (Audit-Log-Monitoring), Tag 5 (Eskalationspfade und Notfallprotokoll).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein Knowledge-Management-Berater. Erstelle ein KI-Admin-Wissenstransfer-Dokument für unseren Langdock-Workspace. Kontext: Einziger Admin verlässt das Unternehmen, sein Nachfolger hat keinen Wissensstand. Format: Dokument mit Wissens-Domänen-Inventar (Dokumentationsgrad-Tabelle), Zweitmandats-Regelung und 5-Tage-Onboarding-Plan. Stütze die Domänen auf SSO/SCIM-Checkliste, BYOK-Dokumentation und BCP-Abschnitt im Wissensordner."
**Erwartetes Artefakt:** KI-Admin-Wissenstransfer-Dokument mit Domänen-Inventar, Dokumentationsgrad-Tabelle, Zweitmandats-Regelung und 5-Tage-Onboarding-Plan.
**Fallstricke (≥2 spezifisch):**
- Das Wissenstransfer-Dokument enthält BYOK-Schlüssel im Klartext — Mitigation: Schlüssel niemals im Dokument hinterlegen, sondern nur den Speicherort (Passwort-Manager-Eintrag) und den Zugriffsprozess beschreiben.
- Der zweite Admin wird benannt, aber nicht aktiv in die Konfiguration eingeführt, sodass er im Ernstfall trotzdem nicht handlungsfähig ist — Mitigation: eine jährliche "Admin-Drill"-Session einplanen, bei der der zweite Admin alle kritischen Konfigurationen selbst durchführt und das Protokoll im Wissenstransfer-Dokument aktualisiert.
**Anschluss-Szenario:** S-SG-059

### S-SG-059 KI-Tool-Succession-Plan für strategische Abhängigkeiten aufbauen

**Wann nutzen (Trigger):** Der Vorstand fragt im Rahmen der strategischen Planung, was passiert, wenn Langdock als Plattform aufgekauft, eingestellt oder für die DACH-Region nicht mehr verfügbar wäre — ein strukturierter Succession-Plan fehlt. (Quelle: S-SG-017, A-44)
**Strategisches Ziel:** Einen KI-Tool-Succession-Plan erstellen, der die strategischen Abhängigkeiten von Langdock kartiert, alternative Plattformen vorevaluiert und einen Migrations-Playbook-Rahmen definiert — damit der Vorstand eine informierte "Build / Buy / Switch"-Entscheidung treffen kann, ohne in Krisenpanik zu verfallen.
**Hands-on Ergebnis:** Ein KI-Tool-Succession-Plan mit Abhängigkeits-Kartierung, Alternativ-Plattform-Shortlist (bewertet nach fünf Kriterien) und einem Migrations-Playbook-Rahmen.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Succession-Plan; Knowledge (Wissensordner) für das Vendor-Lock-in-Assessment (S-SG-017), das BCP (S-SG-044), das AI-Vendor-Due-Diligence-Template (S-SG-055) und die Daten-Portabilitäts-Dokumentation.
**Vorgehen (4 Schritte):**
1. Die strategischen Abhängigkeiten von Langdock kartieren: Wissensordner-Inhalte (Portabilitäts-Status aus S-SG-017), Agenten-Konfigurationen (exportierbar als Markdown?), Workflow-Definitionen (JSON-Export?), SCIM/SSO-Integration (re-konfigurierbar in 1–2 Tagen?).
2. Drei bis fünf alternative Plattformen nach den fünf Due-Diligence-Kriterien aus S-SG-055 vorevaluieren: EU-Hosting, Zero-Retention, Zertifizierungen, Multi-Model-Support, Migration-Unterstützung.
3. Den Migrations-Playbook-Rahmen skizzieren: Phase 1 Daten-Export und -Bereinigung (1–2 Wochen), Phase 2 Pilot-Import in Alternativplattform (2 Wochen), Phase 3 Parallelbetriebs-Phase mit Qualitäts-Vergleich (4 Wochen), Phase 4 Go-live und Langdock-Deaktivierung.
4. Den Plan als jährlich zu reviewendes Dokument im AI-Risiko-Register (S-SG-028) verankern und den Wechsel-Drill (aus S-SG-017) als praktischen Test des Succession-Plans definieren.
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein IT-Strategie-Berater. Erstelle einen KI-Tool-Succession-Plan für unsere strategische Langdock-Abhängigkeit. Kontext: Vorstand verlangt Notfallplan für Plattform-Ausfall oder Einstellung. Format: Plan mit Abhängigkeits-Kartierung (Portabilitäts-Tabelle), Alternativ-Plattform-Shortlist (Bewertungsmatrix) und Migrations-Playbook-Phasenplan. Stütze dich auf Vendor-Lock-in-Assessment, BCP und Due-Diligence-Template aus dem Wissensordner."
**Erwartetes Artefakt:** KI-Tool-Succession-Plan mit Abhängigkeits-Kartierung, Alternativ-Plattform-Bewertungsmatrix und vierphasigem Migrations-Playbook-Rahmen.
**Fallstricke (≥2 spezifisch):**
- Der Succession-Plan wird mit dem BCP (S-SG-044) verwechselt — Mitigation: klar unterscheiden: BCP adressiert temporäre Ausfälle (Stunden bis Tage), Succession-Plan adressiert permanente Plattform-Ablösung (Wochen bis Monate); beide Dokumente aufeinander verweisen, aber nicht zusammenführen.
- Alternativplattformen werden nur nach Sicherheitskriterien bewertet und die Migrations-Komplexität der bestehenden 200+ Wissensordner-Dokumente und 12 Agenten wird unterschätzt — Mitigation: die Migrationskomplexität als eigenes Bewertungskriterium in die Shortlist-Matrix aufnehmen und einen Proof-of-Concept-Import als Teil der Vorevaluierung einplanen.
**Anschluss-Szenario:** S-SG-060

### S-SG-060 Mitarbeitende schulen, KI-Halluzinationen zu erkennen und zu melden

**Wann nutzen (Trigger):** Zwei Marketing-Manager haben KI-generierte Statistiken ohne Verifikation in externe Präsentationen übernommen — die Zahlen waren halluziniert. Der CISO und die Rechtsabteilung verlangen ein Schulungsprogramm, das alle Langdock-Nutzer befähigt, Halluzinationen zu erkennen, bevor sie Schaden anrichten. (Quelle: sources/12 Q147, A-34, A-41)
**Strategisches Ziel:** Ein praxisorientiertes Halluzinations-Erkennungs-Schulungsprogramm aufbauen, das konkrete Erkennungsstrategien, einen Verifikations-Workflow und einen niedrigschwelligen Melde-Kanal etabliert — damit jeder Nutzer zur ersten Verteidigungslinie gegen falsche KI-Outputs wird.
**Hands-on Ergebnis:** Ein Schulungs-Leitfaden "KI-Halluzinationen erkennen und melden" mit fünf Erkennungsstrategien, einem 3-Schritte-Verifikations-Workflow und einer integrierten Melde-Checkliste.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor für den Leitfaden; Knowledge (Wissensordner) für das KI-Incident-Response-Playbook (S-SG-020), die Responsible-Disclosure-Policy (S-SG-034), die HITL-Gate-Matrix (S-SG-021) und die AUP (S-SG-027).
**Vorgehen (4 Schritte):**
1. Die fünf häufigsten Halluzinations-Muster im Marketing-Kontext beschreiben: (a) erfundene Statistiken und Quellen (plausibel klingende Zahlen ohne Beleg), (b) falsche Zitate realer Personen, (c) nicht existierende Gerichtsurteile oder Gesetze, (d) veraltete Fakten mit aktuellem Präsens formuliert, (e) korrekt klingende Produktbehauptungen, die nicht mit dem Wissensordner übereinstimmen.
2. Den 3-Schritte-Verifikations-Workflow entwickeln: (1) Primärquellencheck (jede Zahl mit Originalquelle belegen, nicht nur KI-Output zitieren), (2) Wissensordner-Abgleich (Stimmt die Aussage mit den hochgeladenen Quelldokumenten überein?), (3) Web-Search-Verifikation bei sensiblen Fakten (Modell bei niedrigem Confidence-Level explizit um Quellenangabe bitten).
3. Die Melde-Checkliste erstellen: wann melden (bei Hochrisiko-Output mit falschen Fakten, die bereits kommuniziert wurden), wie melden (Champion informieren → Incident-Playbook S-SG-020 auslösen), warum melden (Root-Cause-Fix verhindert denselben Fehler beim nächsten Nutzer).
4. Den Leitfaden als interaktives Onboarding-Modul im Champion-Curriculum (S-SG-042) integrieren und mit zwei praktischen Erkennungs-Übungen ergänzen (Nutzer erhalten einen halluzinierten Text und müssen die Fehler finden).
**Beispiel-Prompt (DE, PTCF):**
> "Du bist mein KI-Literacy-Trainer. Erstelle einen Schulungs-Leitfaden 'KI-Halluzinationen erkennen und melden' für unser Marketing-Team. Kontext: Halluzinierte Statistiken wurden ohne Verifikation extern kommuniziert. Format: Leitfaden mit fünf Halluzinations-Muster-Beschreibungen, 3-Schritte-Verifikations-Workflow und Melde-Checkliste (wann/wie/warum). Ergänze zwei kurze Erkennungs-Übungen. Stütze den Melde-Kanal auf das Incident-Playbook und die AUP im Wissensordner."
**Erwartetes Artefakt:** Schulungs-Leitfaden mit fünf Halluzinations-Mustern, 3-Schritte-Verifikations-Workflow, Melde-Checkliste und zwei praktischen Erkennungs-Übungen.
**Fallstricke (≥2 spezifisch):**
- Der Leitfaden erzeugt übermäßiges Misstrauen gegenüber KI-Outputs und lähmt die Produktivität, weil Mitarbeitende jede Ausgabe exzessiv nachprüfen — Mitigation: den Verifikations-Workflow nach Inhaltsrisiko skalieren: Niedrigrisiko-Texte (interne Notizen) ohne Vollverifikation; Hochrisiko-Outputs (externe Präsentationen, Pressemitteilungen) mit vollständigem 3-Schritte-Check.
- Mitarbeitende melden Halluzinationen nicht aus Angst, als unproduktiv oder technophoob zu gelten — Mitigation: eine explizite "False-Positive-Welcome"-Kultur im Leitfaden kommunizieren und Halluzinations-Meldungen als wertvolle Qualitäts-Beiträge öffentlich anerkennen (z. B. im monatlichen Champion-Meeting).
**Anschluss-Szenario:** S-SG-001
