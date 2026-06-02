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

Für Marketing-Teams in der DACH-Region bildet die DSGVO-Konformität das fundamentale Kriterium für die Einführung generativer KI. Die unkontrollierte Nutzung von Consumer-Tools führt unausweichlich zu unkontrollierten Datenabflüssen — dem sogenannten "Shadow AI". Die Architektur von Langdock adressiert dieses kritische Risiko durch eine strikte Infrastruktur. Ein zentrales Fundament dieser Compliance ist das EU-Hosting. Nach Anbieterangaben werden alle essenziellen Systemkomponenten, Datenbanken und Vektor-Indizes in der Microsoft Azure EU-Region betrieben — Data empfiehlt, diese Zusicherung vor dem Rollout mit dem Datenschutzbeauftragten und der Rechtsabteilung anhand des aktuellen AVV und der Sub-Prozessor-Liste zu verifizieren. Dies stellt sicher, dass hochsensible Marketing-Daten, seien es unveröffentlichte Strategiepapiere, granulare Zielgruppendefinitionen oder Kampagnen-Drafts, den europäischen Rechtsraum zu keinem Zeitpunkt verlassen. Das Konzept rund um DSGVO und EU-Hosting ist explizit so strukturiert, dass Marketing-Direktorinnen ihren Rechtsabteilungen sofort einen klaren, auditierbaren Standard vorlegen können. Anstelle von undurchsichtigen, global verteilten Server-Strukturen greift ein zentralisiertes Bereitstellungsmodell. Ein entscheidender nächster Schritt für die saubere Implementierung ist der Abschluss eines Auftragsverarbeitungsvertrags (AVV). Dieser rechtliche Rahmen ist direkt über die Administrationsoberfläche der Plattform abschließbar. Die konsequente Beachtung der Vorgaben rund um DSGVO und EU-Hosting trägt dazu bei, regulatorische Risiken zu reduzieren und den unautorisierten Abfluss von proprietärem Markenwissen in externe Sprachmodelle zu erschweren. Eine rechtsverbindliche Compliance-Bewertung bleibt jedoch dem Datenschutzbeauftragten und der Rechtsabteilung vorbehalten; Data liefert die strukturierte Entscheidungsgrundlage, nicht das juristische Urteil.

## ISO 27001 und SOC 2 Type II Zertifizierungen

Die technische und organisatorische Sicherheit der Langdock-Plattform wird durch unabhängige, international anerkannte Standards validiert. Im Zentrum stehen hierbei die ISO 27001 und SOC 2 Type II Zertifizierungen. Diese Testate belegen, dass nicht nur die Software-Infrastruktur, sondern auch interne operative Prozesse der Langdock GmbH dokumentierten Sicherheitskontrollen unterliegen — geprüft jeweils zum Audit-Zeitraum, weshalb das aktuelle Berichtsdatum stets mitzuführen ist. Die ISO 27001 Zertifizierung belegt das Vorhandensein eines systematischen Information Security Management Systems (ISMS), welches Risiken proaktiv identifiziert und minimiert. Parallel dazu fokussieren sich die SOC 2 Type II Zertifizierungen auf die Kriterien Sicherheit, Verfügbarkeit, Verarbeitungsintegrität, Vertraulichkeit und Datenschutz über einen längeren, auditierten Zeitraum. Für eine Marketing-Direktorin bedeuten die ISO 27001 und SOC 2 Type II Zertifizierungen eine massive Beschleunigung im Procurement-Prozess. Anstatt wochenlange individuelle Security-Assessments durch die eigene IT-Abteilung durchführen zu lassen, dienen diese Zertifikate als standardisierter Vertrauensbeweis. Sie liefern einen objektivierten Nachweis, dass hochgeladene Dokumente im Wissensordner (Knowledge Folder) nach anerkannten Methoden vor unbefugtem Zugriff geschützt werden sollen — die abschließende Eignungsbewertung für den konkreten Anwendungsfall trifft der CISO bzw. die Rechtsabteilung. Der nächste logische Schritt in der internen Kommunikation besteht darin, diese Nachweise proaktiv an den Chief Information Security Officer (CISO) zu übermitteln, um die formale Freigabe für den unternehmensweiten Rollout der Agenten zu erwirken.

## Datenresidenz und Trainings-Opt-out

Ein kritischer Einwand bei der Nutzung großer Sprachmodelle (Large Language Models) betrifft die unerwünschte Weiternutzung von proprietären Unternehmensinformationen. Langdock adressiert dieses Problem durch Datenresidenz- und Trainings-Opt-out-Verträge. Nach Anbieterangaben gilt der Grundsatz, dass Langdock und die angebundenen Modell-Provider (wie OpenAI oder Anthropic) Kundendaten nicht für das Training ihrer Modelle nutzen — diese Zusage ist vertraglich (über AVV und Provider-DPA) zu belegen und vor dem Produktivgang mit der Rechtsabteilung zu verifizieren, statt sie als gegeben anzunehmen. Diese Zusicherung ist für Marketing-Abteilungen von höchster Relevanz, da sie häufig mit unreleased Produktinformationen oder sensiblen Kommunikationsstrategien arbeiten. Die strikte Durchsetzung von Datenresidenz und Trainings-Opt-out wird über dedizierte Enterprise-Agreements (Zero-Data-Retention-Policies) mit den KI-Anbietern realisiert. Jeder Prompt, jedes generierte Briefing und jede hochgeladene Marktforschung bleibt das exklusive intellektuelle Eigentum des Kunden. Die Datenresidenz stellt zudem sicher, dass alle Informationen physisch in definierten, sicheren Rechenzentren verbleiben. Für Unternehmen mit extremen Sicherheitsanforderungen ermöglicht Langdock zusätzlich das "Bring Your Own Key" (BYOK) Verfahren. Hierbei behält die eigene IT-Abteilung die vollständige Kontrolle über die API-Schlüssel und die zugrunde liegende Modellabrechnung. Der nächste Schritt zur Absicherung besteht darin, diese Zero-Training-Garantie explizit in die internen KI-Nutzungsrichtlinien aufzunehmen, um den Marketing-Teams die Angst vor dem Kontrollverlust zu nehmen.

## SAML SSO (Entra/Google/Okta)

Die dezentrale Verwaltung von Passwörtern stellt ein erhebliches Sicherheitsrisiko und einen massiven administrativen Overhead dar. Aus diesem Grund unterstützt Langdock die nahtlose Integration von SAML SSO (Security Assertion Markup Language Single Sign-On). Diese Technologie ermöglicht es Marketing-Mitarbeitern, sich mit ihren bestehenden Unternehmenszugängen (beispielsweise über Microsoft Entra, Google Workspace oder Okta) bei der Plattform anzumelden. Durch die Implementierung von SAML SSO (Entra/Google/Okta) entfällt die Notwendigkeit für separate Langdock-Passwörter. Dies reduziert nicht nur Support-Anfragen an die IT-Abteilung wegen vergessener Zugangsdaten drastisch, sondern eliminiert auch die Gefahr schwacher, mehrfach verwendeter Passwörter. Für die Administration bedeutet SAML SSO (Entra/Google/Okta) eine zentrale Kontrolle: Sobald ein Mitarbeiter das Unternehmen verlässt und sein Account im zentralen Verzeichnisdienst deaktiviert wird, erlischt augenblicklich auch der Zugriff auf alle Langdock-Agenten und Wissensordner. Dies ist besonders für Agenturen oder Teams mit hoher Fluktuation entscheidend. Der konkrete nächste Schritt zur Einrichtung erfordert die Zusammenarbeit mit der IT-Administration, um die entsprechenden Metadaten aus dem Identity Provider zu exportieren und in den Workspace-Einstellungen von Langdock zu hinterlegen. Diese Einmal-Konfiguration garantiert ein reibungsloses und sicheres Onboarding für hunderte von Nutzern gleichzeitig.

## SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk

Während SSO die Authentifizierung regelt, übernimmt SCIM (System for Cross-domain Identity Management) die automatisierte Verwaltung der Identitäten. Die Kombination aus SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk ist essenziell für die nahtlose Skalierung der Plattform. SCIM synchronisiert kontinuierlich Benutzerdaten zwischen dem Unternehmensverzeichnis und Langdock. Wenn ein neuer Mitarbeiter dem Marketing-Team hinzugefügt wird, erstellt SCIM automatisch den entsprechenden Langdock-Account. Verlässt jemand das Team, wird der Account sofort entzogen. Dies eliminiert manuelle Fehlerquellen und kritische Verzögerungen beim Offboarding. Bei der Anbindung von Microsoft Entra ID existiert jedoch eine spezifische technische Besonderheit: Die Entra-ID Implementierung weicht minimal vom SCIM-Standard ab. Um fehlerhafte JSON-Payloads und leise Synchronisationsausfälle zu verhindern, muss zwingend der Parameter `?aadOptscim062020` an die Langdock Tenant-URL im Azure-Portal angehängt werden. Ohne diesen SCIM für User-Provisioning + Entra-ID ?aadOptscim062020 Quirk scheitert die automatisierte Nutzerverwaltung. Der nächste Schritt für die IT besteht darin, exakt diesen Parameter bei der initialen Konfiguration der Provisionierungs-Applikation in Entra ID zu setzen. Erst durch diese präzise Konfiguration läuft die Vergabe von Lizenzen und der Entzug von Zugriffsrechten zuverlässig und ohne manuelles Eingreifen der Administratoren ab — ein Probe-Sync sollte die korrekte Funktion vor dem produktiven Rollout bestätigen.

## RBAC und Granular-Rollen (Owner/Editor/Viewer)

Innerhalb der Plattform wird der Zugriff auf Funktionen und Daten durch ein striktes rollenbasiertes Zugriffskontrollsystem (RBAC) geregelt. Dieses System, RBAC und Granular-Rollen (Owner/Editor/Viewer), stellt sicher, dass das Principle of Least Privilege im gesamten Marketing-Team eingehalten wird. Langdock arbeitet mit einem dreistufigen Rollenmodell, das über SCIM mit dem Verzeichnisdienst synchronisiert wird. Der Owner verfügt über die volle Kontrolle über eine Ressource — er kann Agenten, Workflows und Wissensordner (Knowledge Folder) erstellen, deren Struktur verändern sowie Berechtigungen und Freigaben festlegen. Der Editor kann Inhalte einer geteilten Ressource bearbeiten, jedoch nicht deren grundlegende Zugriffsstruktur umkonfigurieren. Der Viewer hat rein lesenden Zugriff, was ideal für externe Stakeholder oder das reine Konsumieren von generierten Berichten ist. Entscheidend ist, dass diese Rollen granular auf vier Ebenen wirken: Workspace, Folder, Agent und Workflow. Eine Person kann also Owner eines einzelnen Brand-Voice-Agenten sein, ohne administrative Rechte am gesamten Workspace zu besitzen — administrative Workspace-Aufgaben wie Abrechnung, SSO-Konfiguration und unternehmensweite Limits bleiben den Workspace-Administratoren vorbehalten. Durch die konsequente Anwendung von RBAC und Granular-Rollen (Owner/Editor/Viewer) wird verhindert, dass unerfahrene Mitarbeiter versehentlich kritische Unternehmens-Agenten löschen oder teure LLM-Modelle für irrelevante Aufgaben freischalten. Der nächste Schritt für die Marketing-Direktion ist die Erstellung einer klaren Mapping-Tabelle: Welche Job-Rolle (z. B. Content-Manager vs. Praktikant) korrespondiert mit welcher Plattform-Rolle, um eine konsistente Zuweisung durch das IT-Provisioning zu garantieren.

## Group-Sharing und Berechtigungsmodell

Für die effiziente Zusammenarbeit in großen, funktionsübergreifenden Abteilungen reicht eine individuelle Rechtevergabe oft nicht aus. Hier greift das Group-Sharing und Berechtigungsmodell, welches die Skalierung der Zusammenarbeit drastisch vereinfacht. Anstatt beispielsweise einen spezifischen PR-Agenten oder einen sensiblen Wissensordner (Knowledge Folder) mit Strategie-Dokumenten einzeln an zwanzig Mitarbeiter freizugeben, können diese Ressourcen direkt einer vordefinierten Gruppe (z. B. "Marketing-Führungskreis" oder "Performance-Team") zugewiesen werden. Das Group-Sharing und Berechtigungsmodell synchronisiert sich im Idealfall über SCIM direkt mit den bestehenden Gruppenstrukturen des Active Directorys. Dies bedeutet: Wenn ein Mitarbeiter durch die HR-Abteilung in die Gruppe "Social Media" verschoben wird, erhält er in Langdock automatisch Zugriff auf alle Agenten, Prompts und Workflows, die mit dieser Gruppe geteilt wurden. Gleichzeitig entfällt der Zugriff auf Ressourcen seiner alten Abteilung. Dieses Group-Sharing und Berechtigungsmodell ist essenziell, um Silos abzubauen, ohne die Vertraulichkeit von Daten zu gefährden. Ein "Financial-Reporting-Agent" bleibt somit exklusiv dem Management vorbehalten, während der "Brand-Voice-Agent" global für alle Marketing-Rollen verfügbar ist. Der erste Schritt zur Umsetzung besteht in der Definition sauberer, aufgabenbasierter Gruppen, die sowohl in der IT-Infrastruktur als auch in Langdock logisch übereinstimmen.

## Audit Logs und SIEM-Integration (Splunk, Datadog)

Absolute Transparenz über alle Systemaktivitäten ist eine nicht verhandelbare Anforderung der Enterprise-IT. Langdock erfüllt dies durch umfassende Audit Logs und SIEM-Integration (Splunk, Datadog). Die Audit Logs API erfasst jede signifikante Veränderung im Workspace: Wer hat wann einen API-Schlüssel rotiert? Welcher Nutzer hat die System-Prompts eines unternehmenskritischen Agenten modifiziert? Gab es fehlgeschlagene Authentifizierungsversuche? Diese granulare Telemetrie ist entscheidend, um interne Richtlinien zu überwachen und bei Sicherheitsvorfällen eine lückenlose forensische Analyse durchführen zu können. Die native Audit Logs und SIEM-Integration (Splunk, Datadog) erlaubt es Sicherheitsteams, diesen kontinuierlichen Datenstrom direkt in ihre zentralen Security Information and Event Management Systeme einzuleiten. Dadurch können automatisierte Alarme konfiguriert werden, beispielsweise wenn massenhaft Dokumente aus einem sensiblen Wissensordner gelöscht werden. Für die Marketing-Direktorin bedeutet dies die Gewissheit, dass die Nutzung der KI-Plattform kein Blindflug ist, sondern vollständig nachvollziehbar bleibt. Der nächste Umsetzungsschritt verlangt die Generierung eines spezialisierten API-Schlüssels, der ausschließlich Lesezugriff auf den Audit-Endpunkt besitzt. Dieser Schlüssel wird dem IT-Security-Team übergeben, welches die fortlaufende Ingestion in Splunk oder Datadog konfiguriert und entsprechende Überwachungs-Dashboards etabliert.

## Was die Rechtsabteilung wissen muss

Die rechtliche Freigabe von generativer KI ist oft der größte Engpass bei der Einführung. Daher ist es kritisch, proaktiv die Argumente zu strukturieren rund um das Thema: Was die Rechtsabteilung wissen muss. Im Kern fordert die Rechtsabteilung Sicherheiten bezüglich Datenschutz, Urheberrecht und der Vermeidung von unlauterem Wettbewerb. Das wichtigste Argument ist die vertraglich garantierte Trennung von Kundendaten und Modell-Training. Die Rechtsabteilung muss verifizieren, dass das Zero-Data-Retention-Agreement greift und keine Geschäftsgeheimnisse in die Modelle von OpenAI oder Anthropic abfließen. Weiterhin ist bezüglich Was die Rechtsabteilung wissen muss das EU-Hosting essenziell, um die Anforderungen der DSGVO zu erfüllen. Ein weiterer kritischer Punkt ist die Kennzeichnungspflicht für KI-generierte Inhalte (z. B. nach dem deutschen UWG). Die Plattform ermöglicht es, Workflows so zu konfigurieren, dass standardisierte Disclaimer ("KI-generierter Inhalt") in die Outputs integriert werden. Dies kann dazu beitragen, das Abmahnrisiko (z. B. durch die Wettbewerbszentrale wegen AI-Washing) zu reduzieren; ob die konkrete Kennzeichnung ausreicht, ist im Einzelfall mit der Rechtsabteilung zu klären, da Umfang und Form der Kennzeichnungspflicht datums- und kontextabhängig sind. Der direkte nächste Schritt für die Marketing-Direktorin ist die Zusammenstellung eines One-Pagers, der die ISO 27001 Zertifikate, den Standard-AVV und die Architektur-Skizze der europäischen Datenverarbeitung enthält. Dieses Dokument beantwortet 90 Prozent der Standard-Rückfragen der Juristen und beschleunigt den Freigabeprozess massiv.

## Was die Marketing-Direktorin der Geschäftsführung sagt

Um die notwendigen Budgets für eine Enterprise-KI-Plattform zu sichern, muss die Kommunikation auf C-Level-Ziele ausgerichtet sein. Das Narrativ unter Was die Marketing-Direktorin der Geschäftsführung sagt konzentriert sich auf Risikominimierung, Effizienzsteigerung und skalierbare Innovation. Anstatt technische Features zu erläutern, liegt der Fokus auf dem Schutz von Unternehmenswerten. Der unregulierte Einsatz von ChatGPT-Accounts durch Mitarbeiter erzeugt ein unkalkulierbares Haftungsrisiko (Shadow AI). Die Investition in Langdock ist primär eine Investition in Compliance und erst sekundär in Produktivität. Gleichzeitig betont Was die Marketing-Direktorin der Geschäftsführung sagt die messbaren ROI-Faktoren: Durch die Zentralisierung der Prompts, die Nutzung von Wissensordnern (Knowledge Folder) und die Automatisierung von Workflows sinken die operativen Agenturkosten. Das Marketing wird befähigt, strategische Inhalte schneller und in höherer Qualität zu produzieren, ohne das Markenvertrauen durch Datenschutzverletzungen zu riskieren. Ein weiterer zentraler Punkt für das C-Level ist die Unabhängigkeit: Durch die agnostische Plattform-Architektur ist das Unternehmen nicht an einen einzigen KI-Anbieter gebunden (Vendor Lock-in). Fällt ein Modell zurück, kann nahtlos auf ein leistungsstärkeres System gewechselt werden. Der nächste Schritt ist die Präsentation eines klaren Business Cases, der die Kosten der Plattform den eingesparten Arbeitsstunden und den mitigierten rechtlichen Risiken gegenüberstellt.

## Marketing-Szenarien aus dieser Domäne

### S-SG-001 AVV-Nachweis vor dem HubSpot-Sync erbringen

Trigger: Die Rechtsabteilung verlangt vor der Freigabe des HubSpot-Sync einen belastbaren Nachweis, dass ein Auftragsverarbeitungsvertrag (AVV) nach Art. 28 DSGVO vorliegt und das Modell-Training auf Unternehmensdaten vertraglich ausgeschlossen ist. (Quelle: 08-sicherheit-und-governance)
Ziel: Den juristischen Freigabe-Engpass auflösen, indem die vertragliche Datenschutz-Grundlage (DSGVO) prüffähig dokumentiert wird, bevor die erste Kampagnendatei das CRM verlässt.
Ergebnis: Ein AVV-Nachweisdossier, das die Rechtsabteilung ohne Rückfragen abzeichnen kann.
Fähigkeit: Knowledge (Wissensordner) als Ablage für AVV, ISO-27001-Zertifikat und Sub-Prozessor-Liste; Canvas / Document Editor für die Dossier-Erstellung. (Keine Web-Search — die Nachweise liegen intern vor.)
Vorgehen:
1. Den über die Admin-Oberfläche abgeschlossenen AVV, das ISO-27001-Testat und die Sub-Prozessor-Liste in einen Wissensordner legen.
2. Im Canvas ein Dossier strukturieren: EU-Hosting (Azure), Zero-Data-Retention, Sub-Prozessoren, Breach-Fenster.
3. Jede Aussage mit dem konkreten Dokument aus dem Wissensordner belegen (keine erfundenen Klauseln).
4. Das Dossier der Rechtsabteilung als prüffähige Grundlage für die HubSpot-Sync-Freigabe übergeben.
Vorlage: AVV-Nachweisdossier:
1. AVV Langdock-Plattform - Kerndokument.
2. Provider-Zusage separat - Zero-Data-Retention (OpenAI/Anthropic) als eigenes Beilage-Dokument.
3. Sub-Prozessor-Liste - mit Stand-Datum.
4. Re-Pruefung - quartalsweise als Aufgabe verankert.
Artefakt: Tabellarisches AVV-Nachweisdossier mit Quellenverweis je Datenschutz-Anforderung und markierten offenen Punkten.
Fallstricke:
- Der Standard-AVV deckt nur die Langdock-Plattform ab, nicht den angebundenen Modell-Provider — Mitigation: die provider-seitige Zero-Data-Retention-Zusage (OpenAI/Anthropic) separat als eigenes Dokument beilegen.
- Die Sub-Prozessor-Liste veraltet still nach Provider-Wechseln — Mitigation: im Dossier ein Stand-Datum führen und eine quartalsweise Re-Prüfung als Aufgabe verankern.
Empfehlung: Lege die provider-seitige Zero-Data-Retention-Zusage (OpenAI/Anthropic) separat als eigenes Dokument bei - der Standard-AVV deckt nur die Langdock-Plattform ab, nicht den angebundenen Modell-Provider. Fuehre im Dossier ein Stand-Datum und verankere eine quartalsweise Re-Pruefung, da die Sub-Prozessor-Liste nach Provider-Wechseln still veraltet.
Anschluss: S-SG-002 für die vorgelagerte DSFA-Pflicht.

### S-SG-002 Datenschutz-Folgenabschätzung vor dem Agenten-Rollout strukturieren

Trigger: Der Datenschutzbeauftragte stuft den geplanten CRM-Agenten als wahrscheinlich hochriskante Verarbeitung ein und fordert eine Datenschutz-Folgenabschätzung (DSFA / DPIA nach Art. 35 DSGVO), bevor irgendein Team produktiv geht. (Quelle: 08-sicherheit-und-governance)
Ziel: Die DSFA als strukturierten Prozess aufsetzen, sodass die Verarbeitung dokumentiert, Risiken bewertet und technisch-organisatorische Maßnahmen (TOMs) belegt sind — Rechtsgrundlage vor Technologie.
Ergebnis: Ein DSFA-Entwurf entlang des 7-Schritte-Compliance-Programms als Vorlage für den Datenschutzbeauftragten.
Fähigkeit: Canvas / Document Editor für die Strukturierung; Knowledge (Wissensordner) für DSK-Orientierungshilfe und interne Verarbeitungsbeschreibungen. (Beratungsartefakt, keine automatisierte Ausführung.)
Vorgehen:
1. Die konkrete Verarbeitung beschreiben: welche Marketing-Daten, welcher Zweck, welcher Agent, welches Modell.
2. Im Canvas die DSFA entlang der 7 Schritte gliedern (Inventar, EU-AI-Act-Risikoklasse, Rechtsgrundlage/AVV, Folgenabschätzung, interne Richtlinien, Transparenz, TOMs).
3. Die TOMs konkret an Langdock-Fakten knüpfen: EU-Azure-Hosting, RBAC, Audit Logs, Trainings-Opt-out.
4. Die Risikobewertung pro Verarbeitungsschritt als Ampel kennzeichnen und Restrisiken benennen.
5. Den Entwurf dem Datenschutzbeauftragten zur finalen Bewertung vorlegen.
Vorlage: DSFA-Entwurf (7-Schritte-Compliance):
1. Schritte 1-5 - Verarbeitungsbeschreibung, Notwendigkeit, Risiken, Massnahmen, Restrisiken.
2. Restrisiko-Eigentuemer - je Restrisiko eine Rolle + Review-Datum.
3. Schritt 6 - EU-AI-Act-Risikoklasse separat von DSGVO-Risiko; Art.-50-Transparenzpflicht markieren.
4. Schritt 7 - Freigabe durch Datenschutzbeauftragten.
Artefakt: DSFA-Entwurf mit 7 Abschnitten, TOM-Liste und Restrisiko-Ampel je Verarbeitungsschritt.
Fallstricke:
- Eine DSFA ohne benannten Restrisiko-Eigentümer bleibt folgenlos — Mitigation: je Restrisiko eine verantwortliche Rolle und ein Review-Datum eintragen.
- Die Risikoklasse nach EU AI Act wird mit dem DSGVO-Risiko verwechselt — Mitigation: beide Klassifikationen getrennt führen und die Art.-50-Transparenzpflicht separat als Schritt 6 markieren.
Empfehlung: Trag je Restrisiko eine verantwortliche Rolle und ein Review-Datum ein - eine DSFA ohne benannten Restrisiko-Eigentuemer bleibt folgenlos. Fuehre die EU-AI-Act-Risikoklasse getrennt vom DSGVO-Risiko und markiere die Art.-50-Transparenzpflicht als eigenen Schritt 6, da beide Klassifikationen sonst verwechselt werden.
Anschluss: S-SG-003 für die Mitbestimmung des Betriebsrats.

### S-SG-003 Betriebsrat-Vorlage zur KI-Einführung vorbereiten

Trigger: Der Betriebsrat macht von seinem Mitbestimmungsrecht Gebrauch und verlangt vor dem unternehmensweiten Rollout eine nachvollziehbare Darstellung, welche Leistungs- und Verhaltensdaten der Mitarbeiter durch die Plattform erfasst werden. (Quelle: 08-sicherheit-und-governance)
Ziel: Vertrauen schaffen und eine Betriebsvereinbarung ermöglichen, indem klar abgegrenzt wird, was die Audit Logs erfassen — und dass sie nicht zur Leistungsüberwachung einzelner Mitarbeiter zweckentfremdet werden.
Ergebnis: Eine Betriebsrat-Informationsvorlage mit Datenkatalog und Zweckbindung.
Fähigkeit: Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für die Audit-Logs-Eventliste und die interne KI-Nutzungsrichtlinie. (Reines Beratungsartefakt.)
Vorgehen:
1. Aus der Audit-Logs-Dokumentation auflisten, welche Events erfasst werden (Schlüsselrotation, Prompt-Änderung, fehlgeschlagene Logins).
2. Im Canvas zwei Spalten gegenüberstellen: "technisch erfasst" vs. "nicht zur Leistungsbewertung verwendet".
3. Die Zweckbindung an die interne KI-Nutzungsrichtlinie koppeln und auf das EU-Hosting verweisen.
4. Offene Verhandlungspunkte (z. B. Aufbewahrungsfristen der Logs) klar als verhandelbar kennzeichnen.
Vorlage: Betriebsrat-Informationsvorlage:
1. Datenkatalog - welche Mitarbeiterdaten verarbeitet werden.
2. Zweckbindung - konkreter, begrenzter Verwendungszweck.
3. Audit-Log-Zusicherung - Auswertung nur aggregiert und anlassbezogen.
4. Aufbewahrungsfrist - konkrete Loeschfrist als Verhandlungsposition.
Artefakt: Betriebsrat-Vorlage mit Audit-Event-Katalog, Zweckbindungs-Erklärung und Liste verhandelbarer Punkte.
Fallstricke:
- Audit Logs können bei naiver Auswertung wie ein Überwachungsinstrument wirken — Mitigation: explizit zusichern, dass Auswertungen nur aggregiert und anlassbezogen (Sicherheitsvorfall) erfolgen.
- Fehlende Aufbewahrungsfrist führt zu unbegrenzter Datenhaltung — Mitigation: eine konkrete Löschfrist für Log-Daten vorschlagen und in der Vorlage als Verhandlungsposition ausweisen.
Empfehlung: Sichere explizit zu, dass Audit-Log-Auswertungen nur aggregiert und anlassbezogen (Sicherheitsvorfall) erfolgen - naiv ausgewertet wirken Audit Logs wie ein Ueberwachungsinstrument und verbrennen das Betriebsrats-Vertrauen. Schlage eine konkrete Loeschfrist fuer Log-Daten vor und weise sie als Verhandlungsposition aus, da fehlende Fristen zu unbegrenzter Datenhaltung fuehren.
Anschluss: S-SG-004 für die Aufdeckung nicht freigegebener Tools.

### S-SG-004 Shadow-AI im Marketing-Team aufdecken und überführen

Trigger: Der Verdacht steht im Raum, dass Mitarbeiter unveröffentlichte Kampagnen-Drafts in private ChatGPT-Accounts kopieren; die Marketing-Direktorin will das Shadow-AI-Ausmaß belegen, bevor sie eine genehmigte Alternative durchsetzt. (Quelle: 08-sicherheit-und-governance)
Ziel: Den unkontrollierten Datenabfluss (Shadow AI) sichtbar machen und in die DSGVO-konforme Plattform überführen — Risikominimierung als primärer Hebel, nicht Produktivität.
Ergebnis: Ein Shadow-AI-Lagebild mit Maßnahmenplan zur Überführung.
Fähigkeit: Knowledge (Wissensordner) für die KI-Nutzungsrichtlinie und Tool-Inventar; Canvas / Document Editor für das Lagebild. (Hinweis: Eine technische Endpoint-Erfassung gehört nicht zu Langdock — die Daten liefert die IT; die Plattform stützt nur die Analyse und Kommunikation.)
Vorgehen:
1. Das von der IT bereitgestellte Tool-Inventar (Schritt 1 des 7-Schritte-Programms) als Quelldatei in den Wissensordner geben.
2. Im Canvas die genutzten Consumer-Tools nach Risikoklasse und verarbeiteten Datenarten einordnen.
3. Für jedes Risiko eine genehmigte Langdock-Entsprechung benennen (z. B. Brand-Voice-Agent statt privatem ChatGPT).
4. Einen Überführungsplan mit Champion-Benennung und Stichtag formulieren.
Vorlage: Shadow-AI-Lagebild + Massnahmenplan:
1. Inventur - eingesetzte Tools und Datenarten (keine Namen).
2. Risiko-Einordnung je Tool.
3. Ueberfuehrung - je gesperrtes Tool eine benannte, sofort verfuegbare Langdock-Entsprechung.
4. Review-Zyklus.
Artefakt: Shadow-AI-Lagebild mit Risiko-Tabelle und terminierter Überführungsplan.
Fallstricke:
- Personenbezogene Schuldzuweisungen verbrennen das Vertrauen und torpedieren die Adoption — Mitigation: das Lagebild strikt auf Tools und Datenarten beschränken, nicht auf Namen.
- Ein Verbot ohne genehmigte Alternative treibt Shadow AI nur tiefer in den Untergrund — Mitigation: jede Sperrung mit einer benannten, sofort verfügbaren Langdock-Entsprechung koppeln.
Empfehlung: Beschraenke das Lagebild strikt auf Tools und Datenarten, nicht auf Namen - personenbezogene Schuldzuweisungen verbrennen das Vertrauen und torpedieren die Adoption. Koppele jede Sperrung mit einer benannten, sofort verfuegbaren Langdock-Entsprechung, da ein Verbot ohne genehmigte Alternative die Shadow AI nur tiefer in den Untergrund treibt.
Anschluss: S-SG-005 für die saubere Rollen-Konfiguration der Alternative.

### S-SG-005 Fehlkonfigurierte Zugriffsrollen nach Least-Privilege bereinigen

Trigger: Ein Security-Review zeigt, dass eine externe Agentur Owner-Rechte auf einem unternehmenskritischen Agenten besitzt und ein Praktikant einen sensiblen Strategie-Wissensordner bearbeiten kann — die Zugriffskontrolle (RBAC) verstößt gegen das Least-Privilege-Prinzip. (Quelle: 08-sicherheit-und-governance)
Ziel: Die Berechtigungsstruktur (RBAC) auf das Principle of Least Privilege zurückführen, sodass Job-Rollen sauber auf die dreistufigen Plattform-Rollen (Owner/Editor/Viewer) abgebildet sind.
Ergebnis: Eine RBAC-Mapping-Tabelle plus konkrete Korrektur-Liste.
Fähigkeit: Knowledge (Wissensordner) für den exportierten Ist-Zustand der Freigaben; Canvas / Document Editor für die Mapping-Tabelle. (Die eigentliche Rollenänderung erfolgt durch den Admin in den Workspace-Einstellungen, nicht durch die Plattform-KI.)
Vorgehen:
1. Den Ist-Zustand der Rollen je Ressource (Workspace/Folder/Agent/Workflow) als Liste in den Wissensordner geben.
2. Im Canvas eine Soll-Mapping-Tabelle erstellen: Job-Rolle → Plattform-Rolle → erlaubte Ressourcen-Ebene.
3. Jede Abweichung markieren (Agentur Owner → Editor; Praktikant Editor → Viewer).
4. Eine priorisierte Korrektur-Liste für den Admin ableiten, kritischste Über-Berechtigungen zuerst.
Vorlage: RBAC-Mapping-Tabelle:
1. Rolle x Ressource x Recht - Ist-Stand erfassen.
2. Workspace-Admin vs. Owner - Abrechnung/SSO/Limits nur Workspace-Admins.
3. Korrektur-Liste - ueberhohe Rechte je Eintrag.
4. SCIM-Quelle - Korrekturen an der Gruppen-/Verzeichnisquelle.
Artefakt: RBAC-Mapping-Tabelle und priorisierte Korrektur-Liste der Über-Berechtigungen.
Fallstricke:
- Workspace-Admin-Rechte werden mit Owner-Rechten auf einer Ressource verwechselt — Mitigation: klarstellen, dass Abrechnung, SSO und unternehmensweite Limits ausschließlich Workspace-Admins vorbehalten bleiben.
- Manuell korrigierte Rollen werden beim nächsten SCIM-Sync überschrieben — Mitigation: die Korrektur an der Gruppen-/Verzeichnisquelle vornehmen, nicht nur lokal in Langdock.
Empfehlung: Stelle klar, dass Abrechnung, SSO und unternehmensweite Limits ausschliesslich Workspace-Admins vorbehalten sind - Workspace-Admin-Rechte werden sonst mit Owner-Rechten auf einer Ressource verwechselt. Nimm Rollen-Korrekturen an der Gruppen-/Verzeichnisquelle vor, nicht nur lokal in Langdock, da manuelle Korrekturen beim naechsten SCIM-Sync ueberschrieben werden.
Anschluss: S-SG-006 für die Gruppen-basierte Skalierung der Freigaben.

### S-SG-006 Group-Sharing für eine neue Abteilung sauber aufsetzen

Trigger: Eine neue Abteilung "Performance-Team" wird gegründet und benötigt Zugriff auf einen definierten Satz Agenten und Wissensordner — eine Einzelfreigabe an zwanzig Personen wäre fehleranfällig und beim nächsten Personalwechsel sofort veraltet. (Quelle: 08-sicherheit-und-governance)
Ziel: Die Zusammenarbeit über das Group-Sharing-Modell skalieren, ohne die Vertraulichkeit sensibler Ressourcen (z. B. Financial-Reporting-Agent) zu gefährden — Silos abbauen bei gewahrter Datentrennung.
Ergebnis: Ein Gruppen- und Freigabekonzept als Umsetzungsvorlage für die IT.
Fähigkeit: Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die bestehende Gruppen-Taxonomie aus dem Active Directory. (Die Gruppen-Synchronisation läuft über SCIM; die Plattform-KI berät nur zur Struktur.)
Vorgehen:
1. Die geplante Aufgabe der neuen Abteilung und die dafür nötigen Ressourcen erfassen.
2. Im Canvas eine aufgabenbasierte Gruppe definieren, die in AD und Langdock identisch benannt ist.
3. Je Ressource die Gruppen-Rolle festlegen (Performance-Team = Editor auf Kampagnen-Agenten, kein Zugriff auf Financial-Reporting).
4. Den Abgleich mit der bestehenden AD-Gruppen-Taxonomie prüfen und Namenskonflikte auflösen.
Vorlage: Gruppen- und Freigabekonzept (IT-Umsetzung):
1. Gruppen-Struktur - identische Benennung in AD und Langdock (SCIM-Voraussetzung).
2. Freigabe-Matrix je Gruppe - Ressourcen-Zugriff.
3. Least-Privilege - sensible Ressourcen (Financial Reporting) explizit ausschliessen.
Artefakt: Gruppen-/Freigabekonzept mit Freigabe-Matrix (Ressource × Gruppen-Rolle).
Fallstricke:
- Abweichende Gruppen-Namen in AD und Langdock brechen die SCIM-Gruppensynchronisation still — Mitigation: identische Benennung als verbindliche Konventionsregel im Konzept festschreiben.
- Eine zu breit geschnittene Gruppe gewährt versehentlich Zugriff auf sensible Ressourcen — Mitigation: das Performance-Team explizit von der Financial-Reporting-Freigabe ausschließen und das in der Matrix sichtbar machen.
Empfehlung: Schreibe identische Gruppen-Benennung in AD und Langdock als verbindliche Konventionsregel fest - abweichende Namen brechen die SCIM-Gruppensynchronisation still. Schneide Gruppen eng und schliesse z. B. das Performance-Team explizit von der Financial-Reporting-Freigabe aus, da eine zu breite Gruppe versehentlich Zugriff auf sensible Ressourcen gewaehrt.
Anschluss: S-SG-007 für das automatisierte Onboarding dieser Gruppe.

### S-SG-007 SSO- und SCIM-Onboarding mit dem Entra-Quirk absichern

Trigger: Beim Anbinden von Microsoft Entra ID für das automatisierte User-Provisioning scheitern erste Synchronisationen still — Nutzer werden nicht angelegt, ohne dass eine Fehlermeldung erscheint. (Quelle: 08-sicherheit-und-governance)
Ziel: Ein reibungsloses, sicheres Onboarding über SAML SSO und SCIM etablieren, sodass Zugriffe beim Ein- und Austritt in Echtzeit und ohne manuelles Eingreifen vergeben bzw. entzogen werden.
Ergebnis: Eine SSO/SCIM-Konfigurations-Checkliste für die IT-Administration mit dem Entra-Quirk als Pflichtschritt.
Fähigkeit: Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die interne IdP-Metadaten-Dokumentation. (Die Konfiguration selbst nimmt die IT in Entra und den Workspace-Einstellungen vor.)
Vorgehen:
1. Die SSO-Voraussetzungen erfassen: IdP-Metadaten-Export, Domain-Verifizierung.
2. Im Canvas die SCIM-Schritte auflisten und den Pflichtschritt markieren: Parameter `?aadOptscim062020` an die Tenant-URL anhängen.
3. Den Test-Fall definieren: Probe-Nutzer anlegen, deaktivieren, sofortigen Zugriffsentzug verifizieren.
4. Den Umgang mit "pending users" dokumentieren (provisioniert, aber nie eingeloggt → von der Seat-Abrechnung ausgenommen).
Vorlage: SSO/SCIM-Konfigurations-Checkliste (IT):
1. Pflichtschritt - Parameter '?aadOptscim062020' an der Tenant-URL setzen (Entra-Quirk).
2. Probe-Sync - explizit gegenpruefen.
3. Owner-Transfer - Synced-Folder-Verbindungen vor Offboarding auf Funktions-Account uebertragen.
Artefakt: SSO/SCIM-Onboarding-Checkliste mit hervorgehobenem Entra-Quirk und Verifikationsschritten.
Fallstricke:
- Fehlt der Parameter `?aadOptscim062020` an der Tenant-URL, scheitert die Provisionierung mit fehlerhaften JSON-Payloads ohne klare Fehlermeldung — Mitigation: ihn als ersten Pflichtschritt setzen und den Probe-Sync explizit gegenprüfen.
- Synced-Folder-Verbindungen brechen, wenn der erstellende Account beim Offboarding gelöscht wird (OAuth hängt am Ersteller-Token) — Mitigation: vor dem Austritt einen Owner-Transfer auf einen Funktions-Account durchführen.
Empfehlung: Setze den Parameter '?aadOptscim062020' an der Tenant-URL als ersten Pflichtschritt und pruefe den Probe-Sync explizit gegen - fehlt er, scheitert die Provisionierung mit fehlerhaften JSON-Payloads ohne klare Fehlermeldung. Fuehre vor jedem Austritt einen Owner-Transfer auf einen Funktions-Account durch, da Synced-Folder-Verbindungen (OAuth am Ersteller-Token) beim Loeschen des Accounts brechen.
Anschluss: S-SG-008 für die laufende Überwachung dieser Zugänge.

### S-SG-008 Audit-Log-Übergabe an das SIEM-Team vorbereiten

Trigger: Das IT-Security-Team verlangt, dass alle sicherheitsrelevanten Workspace-Ereignisse kontinuierlich in das zentrale SIEM (Splunk oder Datadog) eingespeist werden, damit Alarme z. B. bei Massenlöschungen aus sensiblen Wissensordnern automatisch auslösen. (Quelle: 08-sicherheit-und-governance)
Ziel: Die Nutzung der Plattform vollständig nachvollziehbar machen (kein Blindflug) und die Telemetrie sauber an die bestehende Security-Infrastruktur übergeben — mit minimal nötigen Rechten.
Ergebnis: Ein Übergabe-Dokument für das SIEM-Team inklusive Schlüssel-Scope und überwachenswerter Events.
Fähigkeit: Canvas / Document Editor für das Übergabe-Dokument; Knowledge (Wissensordner) für die Audit-Logs-Endpoint-Doku und Schlüsselrichtlinie. (Die Ingestion konfiguriert das Security-Team; die Audit Logs API liefert die Daten.)
Vorgehen:
1. Aus der Endpoint-Doku die relevanten Audit-Events auswählen (Schlüsselrotation, Prompt-Änderung, fehlgeschlagene Logins, Massenlöschungen).
2. Im Canvas den Schlüssel-Scope festlegen: ein dedizierter API-Schlüssel ausschließlich mit `AUDIT_LOGS_API`-Leserecht.
3. Die Paginierung dokumentieren (max. 50 Einträge pro Anfrage) als Hinweis für die Ingestion-Logik.
4. Vorgeschlagene Alarm-Regeln je Event formulieren (z. B. Schwelle für Dokument-Löschungen pro Stunde).
Vorlage: SIEM-Uebergabe-Dokument:
1. Schluessel-Scope - strikt nur AUDIT_LOGS_API-Leserecht; 90-Tage-Rotation.
2. Ueberwachenswerte Events - Liste fuers SIEM-Team.
3. Ingestion - vollstaendiges Durchblaettern (50-Eintraege-Paginierung).
Artefakt: SIEM-Übergabe-Dokument mit Event-Tabelle, Alarm-Schwellen und Least-Privilege-Schlüssel-Scope.
Fallstricke:
- Ein zu breit gescopter Schlüssel (z. B. mit Schreibrechten oder `USAGE_EXPORT_API`) wird zum Sicherheitsrisiko — Mitigation: strikt nur `AUDIT_LOGS_API`-Leserecht vergeben und 90-Tage-Rotation festlegen.
- Die 50-Einträge-Paginierung wird übersehen, sodass Events bei hohem Volumen verloren gehen — Mitigation: die Paginierungs-Grenze im Dokument hervorheben und die Ingestion auf vollständiges Durchblättern auslegen.
Empfehlung: Vergib strikt nur AUDIT_LOGS_API-Leserecht (kein Schreibrecht, kein USAGE_EXPORT_API) und lege eine 90-Tage-Rotation fest - ein zu breit gescopter Schluessel wird zum Sicherheitsrisiko. Hebe die 50-Eintraege-Paginierung im Dokument hervor und lege die Ingestion auf vollstaendiges Durchblaettern aus, sonst gehen Events bei hohem Volumen verloren.
Anschluss: S-SG-009 für die Absicherung der Datenresidenz selbst.

### S-SG-009 Datenresidenz und Trainings-Opt-out für ein US-Modell prüfen

Trigger: Ein Team möchte ein nur in der US-Region verfügbares Modell nutzen; die Compliance fragt, ob damit die DSGVO-Datenresidenz und die Trainings-Opt-out-Garantie verletzt würden. (Quelle: 08-sicherheit-und-governance)
Ziel: Sicherstellen, dass sensible Marketing-Daten den europäischen Rechtsraum nicht verlassen und nicht in Modell-Training fließen — und für den US-Modell-Wunsch eine klare, belegte Entscheidung herbeiführen.
Ergebnis: Eine Datenresidenz-Entscheidungsvorlage mit klarer Empfehlung.
Fähigkeit: Knowledge (Wissensordner) für die Hosting- und Opt-out-Dokumentation; Canvas / Document Editor für die Entscheidungsvorlage. (Die Region-/Opt-out-Einstellung verwaltet der Admin im Workspace; hier wird beraten, nicht geschaltet.)
Vorgehen:
1. Den Anwendungsfall und die betroffenen Datenarten erfassen (z. B. unveröffentlichte Produktinfos).
2. Im Wissensordner abgleichen: Welche Modelle laufen in der EU-Azure-Region, welche nur global/US?
3. Im Canvas gegenüberstellen: EU-Modell-Alternative vs. US-Modell mit Residenz-Risiko.
4. Eine Empfehlung formulieren — im Zweifel EU-Modell — und die Zero-Data-Retention-Zusage als Bedingung benennen.
Empfehlung: Pruefe Hosting-Region und Trainings-Opt-out getrennt - ein EU-Hosting allein schliesst das Modell-Training nicht aus; beide Eigenschaften muessen separat belegt werden. Vermerke ein Stand-Datum und plane vor dem Produktivgang eine Re-Pruefung der aktuellen Modell-Region ein, da die Modell-Region-Zuordnung datums-sensitiv ist und sich mit Releases aendert; gib eine klare Residenz-Empfehlung erst nach Bestaetigung beider Eigenschaften.
Artefakt: Datenresidenz-Entscheidungsvorlage mit EU/US-Gegenüberstellung und begründeter Empfehlung.
Fallstricke:
- Die Trainings-Opt-out-Garantie wird mit der Hosting-Region verwechselt — Mitigation: beide Eigenschaften getrennt prüfen, da ein EU-Hosting allein das Modell-Training nicht ausschließt.
- Die Modell-Region-Zuordnung ist datums-sensitiv und ändert sich mit Releases — Mitigation: ein Stand-Datum vermerken und vor dem Produktivgang eine Re-Prüfung der aktuellen Region einplanen.
Anschluss: S-SG-010 für die Kennzeichnungspflicht der erzeugten Inhalte.

### S-SG-010 KI-Kennzeichnung nach UWG und EU AI Act vorbereiten

Trigger: Eine KI-gestützte Kampagne mit synthetischen Testimonials steht kurz vor Veröffentlichung; die Rechtsabteilung weist auf die Kennzeichnungspflicht nach UWG und Art. 50 EU AI Act hin und fordert eine konforme Disclaimer-Strategie. (Quelle: 08-sicherheit-und-governance)
Ziel: Abmahnrisiken (AI-Washing, fehlende Kennzeichnung) vermeiden, indem KI-generierte Inhalte rechtskonform und einheitlich gekennzeichnet werden — bevor die Kampagne live geht.
Ergebnis: Eine Kennzeichnungs-Richtlinie mit konkreten Disclaimer-Bausteinen je Inhaltstyp.
Fähigkeit: Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für UWG-Leitfaden und AI-Act-Fristen; Web-Search nur zur Verifikation der aktuell gültigen Art.-50-Frist gegen eine externe Primärquelle. (Web-Search wird hier bewusst eingesetzt, weil regulatorische Stichtage datums-sensitiv sind.)
Vorgehen:
1. Die geplanten Inhaltstypen erfassen (synthetische Testimonials, KI-Bilder, unterstützend bearbeitete Texte).
2. Im Wissensordner prüfen, welche Inhalte kennzeichnungspflichtig sind und welche unter die Ausnahmen fallen.
3. Per Web-Search die aktuell gültige Art.-50-Transparenzfrist (Aug 2026 / Dez 2026 Grandfathering) gegen eine Primärquelle verifizieren.
4. Im Canvas Disclaimer-Bausteine je Inhaltstyp formulieren (z. B. "KI-generierter Inhalt"; synthetische Testimonials immer offenlegen).
5. Die Richtlinie als verbindlichen Bestandteil des Freigabe-Workflows verankern.
Vorlage: KI-Kennzeichnungs-Richtlinie:
1. Disclaimer-Bausteine je Inhaltstyp.
2. UWG-Paragraf-5a-Pflicht - synthetische Testimonials und KI-Influencer immer offenlegen, ohne Ausnahme.
3. AI-Act-Stichtag - per Web-Search verifiziert, mit Quelle + Abrufdatum.
Artefakt: Kennzeichnungs-Richtlinie mit Disclaimer-Bausteinen je Inhaltstyp und verifizierter AI-Act-Frist.
Fallstricke:
- Synthetische Testimonials und KI-Influencer werden als "nur unterstützend bearbeitet" fehleingestuft — Mitigation: klarstellen, dass diese nach § 5a UWG immer offenzulegen sind, ohne Ausnahme.
- Eine veraltete AI-Act-Frist im Wissensordner führt zu falscher Planung — Mitigation: den per Web-Search verifizierten Stichtag mit Quelle und Abrufdatum dokumentieren und den internen Beleg entsprechend aktualisieren.
Empfehlung: Stelle klar, dass synthetische Testimonials und KI-Influencer nach UWG Paragraf 5a immer offenzulegen sind, ohne Ausnahme - sie werden sonst faelschlich als 'nur unterstuetzend bearbeitet' eingestuft. Dokumentiere den per Web-Search verifizierten AI-Act-Stichtag mit Quelle und Abrufdatum, da eine veraltete Frist im Wissensordner zu falscher Planung fuehrt.
Anschluss: S-SG-011 für die DSGVO-Art.-22-Prüfung automatisierter Newsletter-Logik.

### S-SG-011 DSGVO-Art.-22-Konflikt bei KI-gesteuerten Newsletter-Selektionen prüfen

Trigger: Der Datenschutzbeauftragte fragt, ob die KI-gestützte Newsletter-Segmentierung automatisierte Entscheidungen nach Art. 22 DSGVO auslöst — und ob damit Profiling-Beschränkungen oder ein Widerspruchsrecht der Empfänger greifen. (Quelle: A-11)
Ziel: Rechtssicherheit herstellen: klären, wann die Empfänger-Selektion durch KI eine rechtlich relevante Entscheidung darstellt — und wann sie es nicht tut — um einen DSGVO-Verstoß vor dem nächsten Versand auszuschließen.
Ergebnis: Eine Art.-22-Prüfmatrix, die für jeden Selektions-Schritt Profiling-Relevanz, Entscheidungstyp und erforderliche Schutzmaßnahme ausweist.
Fähigkeit: Canvas / Document Editor für die Prüfmatrix; Knowledge (Wissensordner) für die interne Segmentierungslogik und den DSK-Leitfaden zu Profiling.
Vorgehen:
1. Die aktuelle Segmentierungslogik dokumentieren: welche Datenpunkte fließen ein, welche Entscheidung trifft das System (Versand ja/nein vs. Inhaltsvariante).
2. Im Canvas für jede Entscheidungsebene prüfen: Ist das Ergebnis rechtlich oder wirtschaftlich erheblich für den Empfänger? Ist ein Mensch im Loop?
3. Die Ampel-Klassifikation vornehmen: regelbasierter Versand mit KI-generiertem Inhalt (grün) vs. KI-bestimmtes Empfänger-Segment mit relevantem Ergebnis (rot = Art.-22-Pflichten).
4. Für rot-klassifizierte Schritte die Schutzmaßnahmen benennen: Human-in-the-Loop-Gate, explizite Einwilligung oder Widerspruchsmechanismus.
Vorlage: Art.-22-Pruefmatrix (Profiling):
1. Je Selektions-Schritt - Profiling-Relevanz, Entscheidungstyp, Schutzmassnahme.
2. Trennung - KI-generierter Inhalt vs. KI-bestimmte Empfaenger-Selektion (nur Letztere Art.-22-relevant).
3. Abgrenzung - Art. 22 nur fuer vollautomatisierte, individuell erhebliche Entscheidungen.
Artefakt: Art.-22-Prüfmatrix mit Ampel-Klassifikation je Segmentierungsschritt und Schutzmaßnahmen-Empfehlung.
Fallstricke:
- KI-generierter Inhalt wird mit KI-bestimmter Empfänger-Selektion verwechselt — nur Letzteres kann Art.-22-Relevanz auslösen; Mitigation: beide Ebenen in der Matrix separat führen.
- Eine rein regelbasierte IF/THEN-Selektion wird vorschnell als KI-Profiling eingestuft — Mitigation: klarstellen, dass Art. 22 ausschließlich vollautomatisierte, individuell erhebliche Entscheidungen erfasst.
Empfehlung: Fuehre KI-generierten Inhalt und KI-bestimmte Empfaenger-Selektion in der Matrix separat - nur Letztere kann Art.-22-Relevanz ausloesen, beide werden sonst verwechselt. Stelle klar, dass Art. 22 ausschliesslich vollautomatisierte, individuell erhebliche Entscheidungen erfasst, damit eine rein regelbasierte IF/THEN-Selektion nicht vorschnell als KI-Profiling eingestuft wird.
Anschluss: S-SG-012

### S-SG-012 EU AI Act Risiko-Inventar für Marketing-Use-Cases anlegen

Trigger: Die Compliance-Abteilung fordert bis zum nächsten Quartal ein dokumentiertes AI-Inventar aller Marketing-Use-Cases mit Risikoklassifikation nach EU AI Act — bevor die erweiterten Pflichten für KI-Anbieter und -Betreiber in Kraft treten. (Quelle: A-13)
Ziel: Frühzeitig alle Marketing-Einsätze von Langdock nach EU-AI-Act-Risikoklassen (unannehmbares Risiko / hohes Risiko / begrenztes Risiko / minimales Risiko) dokumentieren, um im Audit-Fall eine vollständige und belegbare Übersicht vorweisen zu können.
Ergebnis: Ein AI-Use-Case-Inventar mit Risikoklasse, Human-Oversight-Status und nächstem Review-Datum je Use-Case.
Fähigkeit: Canvas / Document Editor für das Inventar; Knowledge (Wissensordner) für die interne Use-Case-Beschreibungen und den EU-AI-Act-Anhang III (Hochrisiko-Liste).
Vorgehen:
1. Alle aktiven Langdock-Use-Cases im Marketing auflisten (Agenten, Workflows, Segmentierungslogiken).
2. Im Canvas je Use-Case gegen Anhang III des EU AI Act abgleichen: fällt er unter Hochrisiko-Kategorien (z. B. Beschäftigung, Kreditwürdigkeit, biometrische Kategorisierung)?
3. Für jeden Use-Case die Risikoklasse festhalten und den Human-Oversight-Level dokumentieren (vollautomatisch vs. HITL-Checkpoint).
4. Ein nächstes Review-Datum setzen (empfohlen: quartalsweise) und Änderungs-Trigger definieren (neue Use-Cases, Modell-Wechsel).
Vorlage: AI-Use-Case-Inventar:
1. Je Use-Case - Risikoklasse, Human-Oversight-Status, naechstes Review-Datum.
2. Anhang-III-Pruefung - Profiling-Use-Cases mit Verbraucher-Auswirkung explizit pruefen.
3. Aenderungs-Trigger - neuer Agent / Modell-Update als Pflicht-Review-Anlass.
Artefakt: AI-Risiko-Inventar mit Risikoklasse, Begründung und Human-Oversight-Status je Marketing-Use-Case.
Fallstricke:
- Hochrisiko-Klassifikation wird voreilig abgelehnt — Mitigation: Profiling-Use-Cases mit Auswirkung auf Verbraucherentscheidungen explizit gegen Anhang III prüfen, nicht pauschal ausschließen.
- Das Inventar wird einmalig erstellt und nicht gepflegt — Mitigation: Änderungs-Trigger (neuer Agent, Modell-Update) im Dokument als Pflicht-Review-Anlass festschreiben.
Empfehlung: Pruefe Profiling-Use-Cases mit Auswirkung auf Verbraucherentscheidungen explizit gegen Anhang III, statt eine Hochrisiko-Klassifikation voreilig abzulehnen. Schreibe Aenderungs-Trigger (neuer Agent, Modell-Update) als Pflicht-Review-Anlass fest, da das Inventar sonst einmalig erstellt und nicht gepflegt wird.
Anschluss: S-SG-013

### S-SG-013 KI-Sentiment-Analyse auf Kundenfeedback DSGVO-konform gestalten

Trigger: Das Insights-Team möchte NPS-Freitexte und Support-Tickets mit Langdock automatisch auf Stimmung und Themen auswerten — der Datenschutzbeauftragte fragt, ob individuelle Sentiment-Scores personenbezogene Verarbeitung darstellen. (Quelle: A-14)
Ziel: Den Unterschied zwischen datenschutzrechtlich unproblematischer aggregierter Analyse und rechtlich riskantem Individual-Profiling operativ verankern — damit das Team die Analyse nutzen kann, ohne eine Rechtsgrundlage zu verletzen.
Ergebnis: Eine Verarbeitungs-Richtlinie mit klarer Grenzziehung zwischen erlaubter Aggregat-Analyse und berichtigungspflichtigem Individual-Profiling.
Fähigkeit: Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für die Datenschutzfolgenabschätzung und Art.-6-Rechtsgrundlagen.
Vorgehen:
1. Den konkreten Anwendungsfall beschreiben: werden Scores je Ticket/Person gespeichert oder nur aggregiert je Kategorie?
2. Im Canvas die Trennlinie ziehen: Aggregat-Auswertung (kein Personenbezug, keine Rechtsgrundlage nötig) vs. Individual-Score mit Zuordnung (Profiling, Rechtsgrundlage Art. 6 (1) f) + Informationspflicht).
3. Für den Individual-Score-Pfad die Schutzmaßnahmen dokumentieren: Zweckbindung, Informationspflicht in Datenschutzerklärung, Widerspruchsrecht.
4. Die Richtlinie als Entscheidungsbaum im Wissensordner ablegen, damit neue Analyse-Projekte sie automatisch durchlaufen.
Vorlage: Verarbeitungs-Richtlinie (Aggregat vs. Individual):
1. Entscheidungsbaum - 'Ergebnis nach Auswertung geloescht' vs. 'Ergebnis dem Kundenprofil zugeordnet'.
2. Grenzziehung - erlaubte Aggregat-Analyse vs. berichtigungspflichtiges Individual-Profiling.
3. Rechtsgrundlage - bei Art. 6 (1) f) Interessenabwaegung als Pflichtdokument.
Artefakt: Verarbeitungs-Richtlinie mit Entscheidungsbaum (aggregiert vs. individuell) und Schutzmaßnahmen-Checkliste.
Fallstricke:
- Anonymisierte Aggregat-Scores werden mit gespeicherten Individual-Scores gleichgesetzt — Mitigation: im Entscheidungsbaum explizit zwischen "Ergebnis wird gelöscht nach Auswertung" und "Ergebnis wird Kundenprofil zugeordnet" unterscheiden.
- Die Rechtsgrundlage Art. 6 (1) f) (berechtigtes Interesse) wird ohne Interessenabwägung eingesetzt — Mitigation: die Abwägung als Pflichtdokument im Wissensordner verankern.
Empfehlung: Unterscheide im Entscheidungsbaum explizit zwischen 'Ergebnis wird nach Auswertung geloescht' und 'Ergebnis wird dem Kundenprofil zugeordnet' - anonymisierte Aggregat-Scores werden sonst mit gespeicherten Individual-Scores gleichgesetzt. Verankere die Interessenabwaegung als Pflichtdokument, wenn du Art. 6 (1) f) (berechtigtes Interesse) als Rechtsgrundlage nutzt.
Anschluss: S-SG-014

### S-SG-014 Wissensordner-Embeddings auf DSGVO-Personenbezug prüfen

Trigger: Der IT-Security-Berater stellt die Frage, ob die Vektor-Embeddings, die Langdock aus hochgeladenen Dokumenten erzeugt, als personenbezogene Daten gelten — und ob der Auftragsverarbeitungsvertrag diesen Verarbeitungsschritt explizit abdeckt. (Quelle: A-20)
Ziel: Klären, unter welchen Bedingungen Embeddings personenbezogen sind, und sicherstellen, dass EU-Hosting, Verschlüsselung und AVV diese Verarbeitungsschicht lückenlos abdecken.
Ergebnis: Eine Embedding-Datenschutz-Analyse mit Handlungsempfehlung: AVV-Ergänzung oder Status-quo-Bestätigung.
Fähigkeit: Canvas / Document Editor für die Analyse; Knowledge (Wissensordner) für AVV, Sub-Prozessor-Liste und technische Architektur-Doku des EU-Hostings.
Vorgehen:
1. Den Ursprungsdaten-Typ bestimmen: enthält der Wissensordner PII (Namen, E-Mails, Kundennummern) oder ausschließlich anonymisierte Inhalte?
2. Im Canvas die Personenbezug-Prüfung durchführen: Embeddings aus PII-Texten gelten als personenbezogen; Embeddings aus anonymisierten Texten i. d. R. nicht.
3. Für PII-basierte Embeddings die AVV-Deckung prüfen: erfasst der Vertrag die Vektor-Index-Verarbeitung als eigenständigen Schritt?
4. Maßnahmen ableiten: PII vor Upload pseudonymisieren oder AVV-Ergänzung bei Langdock beantragen; EU-Hosting und Encryption-at-rest als Mindeststandard bestätigen.
Empfehlung: Entscheide ueber AVV-Ergaenzung vs. Status-quo-Bestaetigung erst nach Pruefung, ob Kontextinformationen eine Re-Identifikation der Embeddings ermoeglichen - dokumentiere den Anonymisierungsgrad explizit, statt dich auf Plausibilitaet zu verlassen. Pruefe die Sub-Prozessor-Liste auf Embedding-spezifische Dienste, da der AVV die Langdock-Plattform abdeckt, aber nicht zwingend den angebundenen Vektor-Datenbank-Provider; empfiehl die AVV-Ergaenzung, sobald PII-Rueckschluss moeglich oder der Vektor-Provider nicht abgedeckt ist.
Artefakt: Embedding-Datenschutz-Analyse mit Personenbezug-Bewertung, AVV-Lücken und Handlungsempfehlung.
Fallstricke:
- Anonymisierung wird angenommen, ohne zu prüfen, ob Kontextinformationen Re-Identifikation ermöglichen — Mitigation: Anonymisierungsgrad explizit dokumentieren und nicht auf Plausibilität verlassen.
- Der AVV deckt die Langdock-Plattform, aber nicht den angebundenen Vektor-Datenbank-Provider ab — Mitigation: Sub-Prozessor-Liste auf Embedding-spezifische Dienste prüfen.
Anschluss: S-SG-015

### S-SG-015 Schweizer DSG-Compliance für Tochtergesellschaft klären

Trigger: Die Schweizer Tochtergesellschaft soll den gemeinsamen Langdock-Workspace mitnutzen — der dortige Datenschutzbeauftragte fragt, ob das revidierte DSG (in Kraft seit September 2023) zusätzliche Anforderungen stellt, die über die DSGVO-Abdeckung hinausgehen. (Quelle: A-17)
Ziel: Belegen, dass der EU-DSGVO-konforme Langdock-Workspace auch das Schweizer DSG erfüllt, und eventuelle Lücken (Meldepflicht, Privacy-by-Design-Nachweis) proaktiv schließen.
Ergebnis: Eine DSG-Gap-Analyse mit Ampel-Status je Anforderungskategorie und konkreten Nachbesserungsschritten.
Fähigkeit: Canvas / Document Editor für die Gap-Analyse; Knowledge (Wissensordner) für DSGVO-AVV, EU-Hosting-Nachweis und DSG-Vergleichstabelle; Web-Search zur Verifikation aktueller EDÖB-Angemessenheitsbeschlüsse.
Vorgehen:
1. Die relevanten DSG-Anforderungen auflisten: Angemessenheits-Beschluss für EU-Transfer, Datenschutzerklärungspflicht, Meldepflicht bei Verletzung (72 h an EDÖB), Privacy-by-Design.
2. Per Web-Search den aktuellen EDÖB-Angemessenheitsbeschluss für EU-Hosting verifizieren und Quelle notieren.
3. Im Canvas je Anforderung den DSGVO-Abdeckungsgrad bewerten und Lücken markieren (z. B. separate Schweizer Datenschutzerklärung nötig?).
4. Einen Maßnahmenplan mit Verantwortlichkeit und Frist für jede Lücke erstellen.
Vorlage: DSG-Schweiz-Gap-Analyse:
1. Ampel-Status je Anforderungskategorie.
2. Bezugsfassung - revidiertes DSG ab September 2023; EDOEB-Beschluss datieren.
3. DSG-spezifische Pflichten - separat abhaken (Meldefristen, Privacy-by-Design-Doku).
4. Nachbesserungsschritte je roter Kategorie.
Artefakt: DSG-Gap-Analyse mit Ampel-Status und Maßnahmenplan je Anforderungskategorie.
Fallstricke:
- Das revidierte DSG wird mit der alten Fassung vor 2023 verglichen — Mitigation: explizit auf die Fassung ab September 2023 abstellen und den EDÖB-Beschluss datieren.
- Die DSGVO-Abdeckung wird als vollständige DSG-Abdeckung angenommen — Mitigation: spezifische DSG-Pflichten (z. B. Meldepflicht Fristen, Privacy-by-Design-Dokumentationspflicht) separat abhaken.
Empfehlung: Stelle explizit auf die DSG-Fassung ab September 2023 ab und datiere den EDOEB-Beschluss, statt mit der alten Fassung vor 2023 zu vergleichen. Hak DSG-spezifische Pflichten (Meldepflicht-Fristen, Privacy-by-Design-Dokumentationspflicht) separat ab, da eine DSGVO-Abdeckung nicht automatisch die volle DSG-Abdeckung bedeutet.
Anschluss: S-SG-016

### S-SG-016 Mitarbeiterbefragungen per KI auswerten — Betriebsrat-Mitbestimmung absichern

Trigger: HR und Marketing wollen Langdock nutzen, um interne Mitarbeiterbefragungen zu clustern und Handlungsfelder zu identifizieren — der Betriebsrat macht sein Mitbestimmungsrecht nach BetrVG § 87 (1) Nr. 6 geltend, bevor die Auswertung startet. (Quelle: A-18)
Ziel: Die KI-Auswertung rechtskonform durch die Mitbestimmung führen, ohne das Projekt zu blockieren — durch eine dokumentierte Betriebsvereinbarungs-Vorlage, die Überwachungsfreiheit und Zweckbindung garantiert.
Ergebnis: Eine Betriebsvereinbarungs-Vorlage für den KI-Einsatz bei Mitarbeiterbefragungen mit Datenkatalog und Zweckbindungsklausel.
Fähigkeit: Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für die bestehende Betriebsvereinbarung Digitalisierung und die Audit-Logs-Eventliste.
Vorgehen:
1. Den konkreten Verarbeitungsumfang beschreiben: anonymisierte Freitexte, Aggregat-Cluster, kein Individual-Scoring.
2. Im Canvas die Vorlage strukturieren: Zweck, Datenumfang, Anonymisierungsverfahren, Zweckbindung, Löschfristen, Ausschluss der Individualauswertung.
3. Den Audit-Log-Scope für diesen Use-Case begrenzen: keine User-Level-Auswertung der KI-Abfragen im Betriebsrat-Scope.
4. Eine Eskalationsklausel für den Fall formulieren, dass die anonymisierten Ergebnisse dennoch Rückschlüsse auf Einzelpersonen erlauben.
Vorlage: Betriebsvereinbarung KI (Mitarbeiterbefragungen):
1. Datenkatalog + Zweckbindungsklausel.
2. Mindest-Abteilungsgroesse - n >= 10 als Re-Identifikations-Schwelle.
3. Zweckbindung - auf konkret benannte Auswertungsrunden begrenzt.
4. Folgeanalysen - jede Erweiterung als mitbestimmungspflichtig kennzeichnen.
Artefakt: Betriebsvereinbarungs-Vorlage mit Datenkatalog, Zweckbindungsklausel und Eskalationsmechanismus.
Fallstricke:
- Anonymisierung wird zugesagt, aber das Verarbeitungssystem erlaubt Re-Identifikation bei kleinen Abteilungen — Mitigation: Mindest-Abteilungsgröße als Schwellenwert in die Vorlage aufnehmen (Empfehlung: n ≥ 10).
- Die Vorlage deckt nur die Erstauswertung ab, nicht spätere Folgeanalysen mit demselben Datensatz — Mitigation: Zweckbindung auf konkret benannte Auswertungsrunden begrenzen und jede Erweiterung als mitbestimmungspflichtig kennzeichnen.
Empfehlung: Nimm eine Mindest-Abteilungsgroesse (n >= 10) als Schwellenwert in die Vorlage auf - zugesagte Anonymisierung erlaubt bei kleinen Abteilungen sonst Re-Identifikation. Begrenze die Zweckbindung auf konkret benannte Auswertungsrunden und kennzeichne jede Folgeanalyse mit demselben Datensatz als mitbestimmungspflichtig, da die Vorlage sonst nur die Erstauswertung abdeckt.
Anschluss: S-SG-017

### S-SG-017 Vendor-Lock-in-Risiko bei Langdock systematisch reduzieren

Trigger: Der CTO fragt in der Jahresplanung, welche Abhängigkeiten entstehen, wenn das Marketing-Team alle Wissensordner, Agenten und Workflows in Langdock aufbaut — und wie das Unternehmen bei einem Plattformwechsel handlungsfähig bleibt. (Quelle: A-03)
Ziel: Eine BYOK-kompatible Multi-Provider-Strategie und einen Daten-Portabilitäts-Plan definieren, der im Worst-Case-Szenario (Plattformausfall, Pricing-Schock, strategischer Wechsel) einen geordneten Übergang ermöglicht.
Ergebnis: Ein Vendor-Lock-in-Assessment mit drei Portabilitäts-Maßnahmen und einem jährlichen Wechsel-Drill-Protokoll.
Fähigkeit: Canvas / Document Editor für das Assessment; Knowledge (Wissensordner) für die bestehende BYOK-Konfiguration und Wissensordner-Export-Dokumentation.
Vorgehen:
1. Die Lock-in-Dimensionen inventarisieren: Wissensordner-Inhalte (exportierbar als Markdown?), Agenten-Konfigurationen (exportierbar?), Workflow-Definitionen (JSON-Export?), Modell-Abhängigkeiten (BYOK-Pfad vorhanden?).
2. Im Canvas je Dimension den Portabilitätsgrad bewerten (hoch / mittel / niedrig) und die Export-Methode dokumentieren.
3. Drei Sofortmaßnahmen ableiten: BYOK für kritische Workflows aktivieren, Wissensordner-Inhalte parallel in Git versionieren, Wechsel-Drill (1× jährlich) als Kalender-Termin verankern.
4. Das Assessment dem CTO als Risiko-Vorlage mit quantifizierten Wechselkosten übergeben.
Vorlage: Vendor-Lock-in-Assessment:
1. Portabilitaets-Massnahmen - drei konkrete (Wissensordner-Export, Prompt-Archiv, BYOK).
2. Export-Test - manuell einmal durchfuehren und Ergebnis dokumentieren.
3. Jaehrlicher Wechsel-Drill - Protokoll.
Artefakt: Vendor-Lock-in-Assessment mit Portabilitäts-Matrix und drei priorisierten Sofortmaßnahmen.
Fallstricke:
- Wissensordner-Inhalte werden als exportiert angesehen, obwohl nur Metadaten, nicht die Dokumente selbst, im Export enthalten sind — Mitigation: den Export-Schritt manuell einmal testen und das Ergebnis im Assessment dokumentieren.
- BYOK wird als vollständige Portabilitätslösung betrachtet — Mitigation: klarstellen, dass BYOK nur die Modell-Abhängigkeit löst, nicht die Wissensordner- oder Workflow-Portabilität.
Empfehlung: Teste den Wissensordner-Export einmal manuell und dokumentiere das Ergebnis - der Export enthaelt oft nur Metadaten, nicht die Dokumente selbst, die faelschlich als exportiert angesehen werden. Stelle klar, dass BYOK nur die Modell-Abhaengigkeit loest, nicht die Wissensordner- oder Workflow-Portabilitaet, statt es als vollstaendige Portabilitaetsloesung zu betrachten.
Anschluss: S-SG-018

### S-SG-018 Sicherheitsfragebogen für Enterprise-Procurement beantworten

Trigger: Ein Konzernkunde schickt im Rahmen einer gemeinsamen Kampagnen-Zusammenarbeit einen 40-seitigen Security-Questionnaire — die Marketing-Direktorin muss Antworten zu Datenhaltung, Verschlüsselung, Zertifizierungen und Incident-Response liefern, ohne wochenlang auf IT zu warten. (Quelle: sources/12 Q129)
Ziel: Den Procurement-Prozess beschleunigen, indem die belegten Langdock-Sicherheitseigenschaften strukturiert auf die Fragebogen-Felder gemappt werden — ohne Aussagen zu erfinden, die im Audit nicht standhalten.
Ergebnis: Ein vorausgefüllter Security-Questionnaire-Entwurf mit Quellenverweisen je Antwort und markierten offenen Punkten.
Fähigkeit: Knowledge (Wissensordner) für ISO-27001-Testat, SOC-2-Type-II-Bericht, AVV und Sub-Prozessor-Liste; Canvas / Document Editor für den Entwurf.
Vorgehen:
1. Den Fragebogen in Themenblöcke gliedern (Hosting/Datenresidenz, Verschlüsselung, Zertifizierungen, Incident-Response, Sub-Prozessoren).
2. Im Canvas je Block die belegten Langdock-Eigenschaften aus dem Wissensordner zuordnen: EU-Azure-Hosting, TLS-in-transit / AES-at-rest, ISO-27001, 72-h-Breach-Notification.
3. Antworten, die interne Unternehmensmaßnahmen erfordern (z. B. eigene BCP-Dokumentation), als "intern auszufüllen" markieren.
4. Den Entwurf dem IT-Security-Team zur finalen Freigabe übergeben, bevor er an den Kunden geht.
Vorlage: Security-Questionnaire-Entwurf:
1. Quellenverweise je Antwort - aus den tatsaechlichen Zertifikaten (Wissensordner).
2. Offene Punkte markiert.
3. Trennung - Plattform-Antworten vs. unternehmensintern auszufuellende Fragen.
Artefakt: Vorausgefüllter Security-Questionnaire-Entwurf mit Quellenverweisen und markierten offenen Punkten.
Fallstricke:
- Antworten werden aus allgemeinem KI-Wissen generiert statt aus den tatsächlichen Zertifikaten — Mitigation: Prompt explizit auf Wissensordner-Quellen einschränken und halluzinierte Aussagen als Haftungsrisiko benennen.
- Der Fragebogen enthält Fragen zur eigenen unternehmensinternen Sicherheit, nicht nur zur Plattform — Mitigation: Langdock-spezifische Antworten von eigenen Unternehmensantworten trennen und Letztere als "intern auszufüllen" kennzeichnen.
Empfehlung: Schraenke den Prompt explizit auf Wissensordner-Quellen (echte Zertifikate) ein und benenne halluzinierte Aussagen als Haftungsrisiko - aus allgemeinem KI-Wissen generierte Antworten sind angreifbar. Trenne Langdock-spezifische Antworten von Fragen zur eigenen unternehmensinternen Sicherheit und kennzeichne Letztere als 'intern auszufuellen'.
Anschluss: S-SG-019

### S-SG-019 Datenlöschung ausgeschiedener Mitarbeiter DSGVO-konform abwickeln

Trigger: HR meldet den Austritt einer Mitarbeiterin aus dem Marketing-Team — die Datenschutzbeauftragte fragt, wie vollständig ihre Chat-Historien, hochgeladenen Dokumente und erstellten Agenten-Konfigurationen aus dem Workspace entfernt werden und welche Fristen gelten. (Quelle: sources/12 Q130)
Ziel: Das "Recht auf Vergessenwerden" nach Art. 17 DSGVO operativ umsetzen, indem ein dokumentierter Offboarding-Prozess für Langdock-Accounts etabliert wird — inklusive Owner-Transfer für weitergenutzte Ressourcen.
Ergebnis: Eine Offboarding-Checkliste für Langdock-Accounts mit Lösch-, Transfert- und Dokumentationsschritten.
Fähigkeit: Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die interne Datenschutzrichtlinie und die Langdock-Admin-Dokumentation zu Account-Löschung.
Vorgehen:
1. Den Umfang der zu löschenden Daten erfassen: Chat-Historien, hochgeladene Dateien im persönlichen Bereich, geteilte Ressourcen, Agenten-Konfigurationen mit dem Account verknüpft.
2. Die Transfer-Schritte dokumentieren: geteilte Agenten und Wissensordner auf einen Funktions-Account oder Nachfolger übertragen, bevor der Account gelöscht wird.
3. Die Löschfristen aus der internen Datenschutzrichtlinie und der Langdock-Retention-Konfiguration (30/90/365 Tage) abgleichen und die kürzere Frist anwenden.
4. Den Nachweis der Löschung als Datenschutz-Log-Eintrag sichern (Datum, durchgeführte Schritte, Bestätigung aus Admin-Oberfläche).
Vorlage: Account-Offboarding-Checkliste:
1. Schritt 1 - Owner-Transfer geteilter Ressourcen VOR Account-Deaktivierung.
2. Loesch-/Transfer-/Dokumentationsschritte.
3. Backup-Retention - Frist gesondert mit IT abstimmen.
Artefakt: Langdock-Offboarding-Checkliste mit Lösch-, Transfer- und Dokumentationsschritten je Ressourcentyp.
Fallstricke:
- Geteilte Ressourcen werden mitgelöscht, wenn der erstellende Account entfernt wird — Mitigation: Owner-Transfer zwingend vor Account-Deaktivierung als Schritt Nr. 1 verankern.
- Die Löschung aus dem Workspace-UI entfernt nicht automatisch Daten aus Backup-Systemen — Mitigation: Backup-Retention-Frist in der Checkliste gesondert dokumentieren und mit IT abstimmen.
Empfehlung: Verankere den Owner-Transfer geteilter Ressourcen als Schritt Nr. 1 vor der Account-Deaktivierung - geteilte Ressourcen werden sonst mitgeloescht, wenn der erstellende Account entfernt wird. Dokumentiere die Backup-Retention-Frist gesondert und stimme sie mit der IT ab, da die Loeschung aus dem Workspace-UI Daten nicht automatisch aus Backup-Systemen entfernt.
Anschluss: S-SG-020

### S-SG-020 KI-Incident-Response bei fehlerhaften oder rufschädigenden Outputs einleiten

Trigger: Ein Langdock-Agent hat in einem automatisierten Newsletter eine faktisch falsche und potenziell rufschädigende Aussage über einen Mitbewerber erzeugt — die Nachricht wurde an 15 000 Empfänger versandt, bevor der Fehler bemerkt wurde. (Quelle: A-41)
Ziel: Den Schaden begrenzen, den Vorfall dokumentieren und die Ursache im Wissensordner beheben — mit einem strukturierten Incident-Response-Playbook, das den nächsten Fall verhindert.
Ergebnis: Ein KI-Incident-Response-Playbook mit Sofort-Stopp, Kommunikations-Template und Root-Cause-Checkliste.
Fähigkeit: Canvas / Document Editor für das Playbook; Knowledge (Wissensordner) für die Audit-Logs, Wissensordner-Quelle des Fehlers und UWG-Leitfaden.
Vorgehen:
1. Sofort-Stopp einleiten: den Workflow deaktivieren, weitere automatisierte Aussendungen verhindern, Audit-Log-Pull für den betroffenen Zeitraum initiieren.
2. Den Schaden bewerten: Empfängerkreis, Reichweite, UWG-§4-Risiko (Mitbewerber-Herabsetzung), Korrekturbedarf.
3. Kommunikations-Template erstellen: Korrektur-Newsletter (klare Richtigstellung ohne Verschlimmbessern) und interne Eskalations-Memo.
4. Root-Cause-Analyse: Welche Quelle im Wissensordner oder welcher Prompt hat die falsche Aussage ausgelöst? Quelle bereinigen, Fact-Check-Checkpoint vor nächstem Versand einbauen.
Vorlage: KI-Incident-Response-Playbook:
1. Sofort-Stopp - betroffenen Agenten/Workflow pausieren.
2. Kommunikations-Template - Fokus auf konkreten Fehler + Massnahme, nicht auf die Technologie.
3. Root-Cause-Checkliste - Quell-Ursache im Wissensordner bereinigen.
4. Reaktivierungs-Gate - erst nach Root-Cause-Fix.
Artefakt: KI-Incident-Response-Playbook mit Sofort-Stopp-Protokoll, Korrektur-Newsletter-Template und Root-Cause-Checkliste.
Fallstricke:
- Die Korrektur-Kommunikation betont den KI-Fehler so stark, dass sie das Vertrauen in alle KI-generierten Inhalte des Unternehmens untergräbt — Mitigation: Fokus auf konkreten Fehler und Maßnahme legen, nicht auf die Technologie als solche.
- Der Workflow wird reaktiviert, ohne die Quell-Ursache im Wissensordner zu bereinigen — Mitigation: Root-Cause-Fix als Pflicht-Gate vor Reaktivierung im Playbook festschreiben.
Empfehlung: Lege den Fokus der Korrektur-Kommunikation auf den konkreten Fehler und die Massnahme, nicht auf die Technologie als solche - eine zu starke Betonung des KI-Fehlers untergraebt das Vertrauen in alle KI-generierten Inhalte. Schreibe den Root-Cause-Fix als Pflicht-Gate vor der Reaktivierung fest, damit der Workflow nicht reaktiviert wird, ohne die Quell-Ursache im Wissensordner zu bereinigen.
Anschluss: S-SG-021

### S-SG-021 Human-in-the-Loop-Gates für Hochrisiko-Marketing-Workflows definieren

Trigger: Der Compliance-Beauftragte verlangt, dass automatisierte Workflows, die rechtlich sensible Inhalte (Preise, Produktversprechen, Wettbewerberaussagen) publizieren, vor dem Versand einen dokumentierten menschlichen Prüfschritt durchlaufen. (Quelle: A-13, A-32)
Ziel: HITL-Checkpoints (Human-in-the-Loop) systematisch in bestehende Workflows einbauen und dokumentieren — sodass KI-Outputs bei Hochrisiko-Content niemals ohne menschliche Freigabe die Plattform verlassen.
Ergebnis: Eine HITL-Gate-Matrix: je Workflow-Typ der notwendige Checkpoint, die verantwortliche Rolle und das Freigabe-Protokoll.
Fähigkeit: Canvas / Document Editor für die Gate-Matrix; Knowledge (Wissensordner) für Workflow-Inventar und interne Freigabe-Richtlinie.
Vorgehen:
1. Das Workflow-Inventar nach Risiko-Klasse sortieren: automatisierter Versand an Endkunden (hoch), internes Reporting (niedrig), Social-Media-Draft-Generierung (mittel).
2. Im Canvas je Risiko-Klasse den HITL-Checkpoint-Typ festlegen: Vier-Augen-Freigabe, Rechts-Check, Brand-Voice-Review.
3. Die Checkpoint-Position im Workflow-Flow bestimmen: nach Recherche-Schritt (Fakten-Check) und vor Publish-Schritt (Rechts-/Brand-Check) — niemals nur am Anfang.
4. Die Freigabe-Dokumentation definieren: wer bestätigt was, in welchem System (Slack-Approval, Langdock-HITL-Node, E-Mail-Bestätigung) und mit welchem Audit-Trail.
Vorlage: HITL-Gate-Matrix:
1. Je Workflow-Typ - notwendiger Checkpoint, verantwortliche Rolle, Freigabe-Protokoll.
2. Pflicht-Checkpoint - unmittelbar vor dem finalen Publish-Schritt.
3. Audit-Trail - jede Freigabe mit Zeitstempel + User-ID.
Artefakt: HITL-Gate-Matrix mit Checkpoint-Typ, Position, Verantwortlichkeit und Freigabe-Kanal je Workflow-Typ.
Fallstricke:
- HITL wird nur am Anfang eines Workflows platziert (Briefinng-Freigabe), aber nicht vor dem tatsächlichen Versand — Mitigation: mindestens einen Checkpoint unmittelbar vor dem finalen Publish-Schritt als Pflicht definieren.
- Die Freigabe erfolgt informell per Zuruf und hinterlässt keinen Audit-Trail — Mitigation: jede Freigabe als Eintrag im Audit-Log oder im HITL-Node mit Zeitstempel und User-ID erzwingen.
Empfehlung: Definiere mindestens einen HITL-Checkpoint unmittelbar vor dem finalen Publish-Schritt, nicht nur am Workflow-Anfang (Briefing-Freigabe) - sonst geht ungeprueft etwas raus. Erzwinge jede Freigabe als Eintrag im Audit-Log oder HITL-Node mit Zeitstempel und User-ID, da eine informelle Freigabe per Zuruf keinen Audit-Trail hinterlaesst.
Anschluss: S-SG-022

### S-SG-022 Modell-Provider-Verträge auf Trainingsausschluss und Datenresidenz prüfen

Trigger: Der Einkauf verhandelt den Jahresvertrag mit einem neuen LLM-Provider (z. B. Microsoft Azure OpenAI Service oder AWS Bedrock) — die Rechtsabteilung fragt, welche Vertragsklauseln zwingend enthalten sein müssen, damit die Zero-Data-Retention-Garantie und die DSGVO-Datenresidenz auch für über Langdock geroutete Prompts gelten. (Quelle: sources/12 Q133)
Ziel: Die Vertragsgrundlage mit dem Modell-Provider wasserdicht machen, sodass keine Lücke zwischen Langdock-Plattformvertrag und Provider-Zusagen entsteht.
Ergebnis: Eine Vertrags-Checkliste mit Pflichtklauseln für LLM-Provider-Agreements, die an den Einkauf übergeben werden kann.
Fähigkeit: Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für den bestehenden Langdock-AVV, die Sub-Prozessor-Liste und den vorliegenden Provider-Entwurf.
Vorgehen:
1. Den Langdock-AVV und die Sub-Prozessor-Liste auf den jeweiligen Provider abgleichen: ist er bereits als gelisteter Sub-Prozessor mit Pflichten versehen?
2. Im Canvas die Pflichtklauseln für den Provider-Vertrag auflisten: Zero-Data-Retention für Prompts und Completions, Data-Processing-Agreement nach Art. 28 DSGVO, EU-Datenresidenz oder SCCs, Breach-Notification-Fenster (≤72 h).
3. Den vorliegenden Provider-Entwurf Klausel für Klausel gegen die Checkliste abgleichen und Lücken markieren.
4. Nachverhandlungs-Prioritäten setzen: welche Klauseln sind absolut nicht verhandelbar (Zero-Retention), welche sind durch technische Maßnahmen kompensierbar?
Vorlage: LLM-Provider-Vertrags-Checkliste (Einkauf):
1. Pflichtklauseln - Zweckbindung, Loeschung, Sub-Prozessoren, Trainings-Opt-out.
2. Sub-Prozessor-DPAs - eigene DPAs, die Prompt-Weitergabe ans Modell erfassen.
3. Beleg-Standard - nur unterzeichnete DPAs, keine AGB-Marketingklauseln.
Artefakt: LLM-Provider-Vertrags-Checkliste mit Pflichtklauseln, Abgleich gegen Entwurf und priorisierten Nachverhandlungspunkten.
Fallstricke:
- Der Langdock-AVV wird als ausreichend für den Provider betrachtet — Mitigation: klarstellen, dass Sub-Prozessoren eigene DPAs benötigen, die die Weitergabe von Prompts an das Modell explizit erfassen.
- "No training on customer data" im Anbieter-Marketingmaterial wird mit einer vertraglichen Zusage verwechselt — Mitigation: nur unterzeichnete DPA-Dokumente als Beleg akzeptieren, keine unilateralen AGB-Klauseln.
Empfehlung: Stelle klar, dass Sub-Prozessoren eigene DPAs benoetigen, die die Weitergabe von Prompts an das Modell explizit erfassen - der Langdock-AVV gilt nicht automatisch fuer den Provider. Akzeptiere nur unterzeichnete DPA-Dokumente als Beleg, keine unilateralen AGB-Klauseln; 'No training on customer data' im Marketingmaterial ist keine vertragliche Zusage.
Anschluss: S-SG-023

### S-SG-023 AI-Governance-Framework für das Marketing-Team aufbauen

Trigger: Die Marketing-Direktorin will einen strukturierten "KI-Ethik-Kompass" für ihr Team einführen — nicht als formelles Compliance-Dokument, sondern als praktischen Entscheidungsrahmen, der bei jeder neuen KI-Initiative die richtigen Fragen stellt. (Quelle: A-50)
Ziel: Ein praxistaugliches AI-Governance-Framework etablieren, das auf vier Säulen (Transparenz, Konsent, Reversibilität, Beweisbarkeit) basiert und die Marketing-Aktivitäten mit EU AI Act und Branchen-Kodizes verbindet.
Ergebnis: Ein AI-Governance-1-Pager mit vier Säulen, Anwendungsbeispielen je Säule und einem Entscheidungsbaum für neue KI-Initiativen.
Fähigkeit: Canvas / Document Editor für den 1-Pager; Knowledge (Wissensordner) für EU-AI-Act-Grundsätze, UWG-Leitfaden und Branchen-Kodizes.
Vorgehen:
1. Die vier Governance-Säulen mit konkreten Marketing-Fragestellungen füllen: Transparenz (Was muss der Verbraucher über KI-Einsatz wissen?), Konsent (Hat der Betroffene eingewilligt?), Reversibilität (Kann die KI-Entscheidung rückgängig gemacht werden?), Beweisbarkeit (Können wir die KI-Ausgabe belegen?).
2. Im Canvas je Säule zwei bis drei konkrete Marketing-Beispiele ergänzen (z. B. Säule Transparenz: synthetische Testimonials immer kennzeichnen).
3. Einen Entscheidungsbaum entwickeln: Welche Säule ist bei welchem Use-Case-Typ kritisch?
4. Den 1-Pager als verbindliche Onboarding-Pflichtlektüre im Wissensordner ablegen und in den Champion-Einführungsprozess integrieren.
Vorlage: AI-Governance-1-Pager:
1. Vier Saeulen - je mit konkretem Marketing-Szenario aus dem eigenen Team.
2. Entscheidungsbaum - fuer neue KI-Initiativen.
3. Quartals-Review - neue Use-Cases gegen den Baum pruefen.
Artefakt: AI-Governance-1-Pager mit vier Säulen, Marketing-Anwendungsbeispielen und Entscheidungsbaum für neue KI-Initiativen.
Fallstricke:
- Der 1-Pager wird zu abstrakt formuliert und landet ungelesen in der Schublade — Mitigation: je Säule konkrete Marketing-Szenarien aus dem eigenen Team verwenden, keine generischen Formulierungen.
- Die Governance-Säulen werden als einmalige Pflicht behandelt — Mitigation: einen quartalsweisen Review-Termin einplanen, bei dem neue Use-Cases gegen den Entscheidungsbaum geprüft werden.
Empfehlung: Nutze je Saeule konkrete Marketing-Szenarien aus dem eigenen Team statt generischer Formulierungen - ein zu abstrakter 1-Pager landet ungelesen in der Schublade. Plane einen quartalsweisen Review-Termin ein, bei dem neue Use-Cases gegen den Entscheidungsbaum geprueft werden, statt die Saeulen als einmalige Pflicht zu behandeln.
Anschluss: S-SG-024

### S-SG-024 Datenretention-Konfiguration für Chat-Historien und Wissensordner festlegen

Trigger: Der Datenschutzbeauftragte stellt fest, dass die Standard-Retention-Einstellung für Chat-Historien und Wissensordner-Metadaten im Workspace nicht explizit konfiguriert wurde — und verlangt eine nachvollziehbare, dokumentierte Entscheidung über die Aufbewahrungsfristen, bevor die Plattform für sensible Projekte freigegeben wird. (Quelle: sources/12 Q135)
Ziel: Eine Retention-Policy für alle Datentypen im Langdock-Workspace festlegen, die den DSGVO-Grundsatz der Speicherbegrenzung (Art. 5 (1) e)) erfüllt und operativ in den Admin-Einstellungen umsetzbar ist.
Ergebnis: Eine Retention-Policy-Tabelle mit Datentyp, Aufbewahrungsfrist, Begründung und zuständiger Admin-Einstellung.
Fähigkeit: Canvas / Document Editor für die Policy-Tabelle; Knowledge (Wissensordner) für die interne Datenschutzrichtlinie und die Langdock-Admin-Retention-Dokumentation (30/90/365-Tage-Optionen).
Vorgehen:
1. Die relevanten Datentypen im Workspace erfassen: Chat-Historien, hochgeladene Dokumente in Wissensordnern, Workflow-Ausführungsprotokolle, Audit-Logs.
2. Im Canvas je Datentyp die Zweck-Bindung prüfen: Wie lange wird die Daten für den ursprünglichen Zweck benötigt? Welche gesetzlichen Aufbewahrungsfristen gelten (z. B. Handelsbriefe 6 Jahre)?
3. Die Retention-Optionen der Plattform (30/90/365 Tage) gegen die internen Anforderungen matchen und die kürzest mögliche Frist ohne Funktionsverlust wählen.
4. Die Policy im Wissensordner dokumentieren und dem Admin die konkreten Einstellungsschritte in der Plattform-Oberfläche mitgeben.
Vorlage: Retention-Policy-Tabelle:
1. Je Datentyp - Aufbewahrungsfrist, Begruendung, zustaendige Admin-Einstellung.
2. Ausnahmen - Audit-Logs + Vertragsbelege von kurzen Fristen ausnehmen (Compliance-Nachweis).
3. Workspace-Granularitaet - sensible Projekte in separaten Workspaces mit eigenem Retention-Setting.
Artefakt: Retention-Policy-Tabelle mit dokumentierter Frist, Begründung und konkreter Admin-Einstellung je Datentyp.
Fallstricke:
- Die kürzeste verfügbare Retention-Option wird pauschal gewählt, obwohl Compliance-Nachweise (z. B. für AVV-Audit) eine längere Aufbewahrung erfordern — Mitigation: Audit-Logs und Vertragsbelege von der kurzen Frist ausdrücklich ausnehmen.
- Die Retention-Einstellung für Chat-Historien gilt workspace-weit und lässt sich nicht pro Projekt differenzieren — Mitigation: sensible Projekte in separaten Workspaces mit eigenem Retention-Setting führen.
Empfehlung: Nimm Audit-Logs und Vertragsbelege ausdruecklich von der kuerzesten Retention-Frist aus - Compliance-Nachweise (z. B. fuer AVV-Audit) erfordern laengere Aufbewahrung. Fuehre sensible Projekte in separaten Workspaces mit eigenem Retention-Setting, da die Chat-Historien-Retention workspace-weit gilt und sich nicht pro Projekt differenzieren laesst.
Anschluss: S-SG-025

### S-SG-025 Werbe-Compliance-Brief für KI-generierte Influencer-Inhalte erstellen

Trigger: Das Influencer-Marketing-Team plant eine Kampagne, bei der Captions und Story-Texte mit Langdock vorgeschrieben und von den Creators nur leicht angepasst werden — der Legal Counsel fragt, ob nach UWG § 5a eine Offenlegungs-Pflicht besteht und wie die Formulierung aussehen soll. (Quelle: A-19, sources/12 Q150)
Ziel: Rechtssicherheit für KI-assistierte Creator-Inhalte schaffen, indem eine verbindliche Disclosure-Formulierung und eine Entscheidungsregel definiert werden — wann "KI-assistiert" offen zu legen ist und wann nicht.
Ergebnis: Ein Werbe-Compliance-Brief mit Disclosure-Entscheidungsregel, drei Formulierungsvarianten je Kanal und einer Creator-Briefing-Vorlage.
Fähigkeit: Canvas / Document Editor für den Brief; Knowledge (Wissensordner) für UWG-§5a-Leitfaden, AI-Act-Art.-50-Transparenzpflicht und interne Social-Media-Richtlinie.
Vorgehen:
1. Den KI-Assistenzgrad klassifizieren: vollständig KI-generiert (Offenlegungspflicht nach UWG § 5a), KI-assistiert mit wesentlicher Human-Überarbeitung (Grauzone, Branchen-Kodex empfiehlt Disclosure), rein menschlich mit KI-Research (keine Pflicht).
2. Im Canvas je Klassifizierungsstufe eine Disclosure-Formulierung entwickeln: kurz (Instagram/TikTok: "#KI-unterstützt"), mittel (LinkedIn: Disclaimer am Post-Ende), lang (Blog: Absatz zur Entstehungsweise).
3. Die Entscheidungsregel als Flussdiagramm darstellen: "Übersteigt KI-Anteil die wesentliche Beeinflussung der geschäftlichen Entscheidung des Verbrauchers?"
4. Die Creator-Briefing-Vorlage mit der Regel und den Formulierungen versehen, damit Creator selbstständig entscheiden und dokumentieren können.
Vorlage: Werbe-Compliance-Brief (Disclosure):
1. Entscheidungsregel - UWG-Paragraf-5a-Wesentlichkeit: beeinflusst der KI-Anteil die Kaufentscheidung?
2. Drei Formulierungsvarianten je Kanal - mit Zeichenbegrenzung.
3. Creator-Briefing-Vorlage.
Artefakt: Werbe-Compliance-Brief mit Disclosure-Entscheidungsregel, kanalspezifischen Formulierungsvarianten und Creator-Briefing-Vorlage.
Fallstricke:
- KI-assistierte Inhalte werden pauschal als "nicht offenlegungspflichtig" eingestuft, weil die finale Überarbeitung beim Creator liegt — Mitigation: die Wesentlichkeits-Schwelle aus UWG § 5a explizit anlegen: Beeinflusst der KI-Anteil die Kaufentscheidung des Verbrauchers?
- Disclosure-Formulierungen werden ohne Kanalspezifik geregelt — Mitigation: je Plattform (Instagram-Caption vs. LinkedIn-Artikel) eine separate Variante mit Zeichenbegrenzung vorsehen.
Empfehlung: Lege die Wesentlichkeits-Schwelle aus UWG Paragraf 5a explizit an ('Beeinflusst der KI-Anteil die Kaufentscheidung des Verbrauchers?') statt KI-assistierte Inhalte pauschal als nicht offenlegungspflichtig einzustufen, nur weil die finale Ueberarbeitung beim Creator liegt. Sieh je Plattform (Instagram-Caption vs. LinkedIn-Artikel) eine separate Disclosure-Variante mit Zeichenbegrenzung vor.
Anschluss: S-SG-026

### S-SG-026 Shadow-AI-Detektion im Unternehmen systematisch aufbauen

Trigger: Die IT-Sicherheitsabteilung meldet, dass neben dem genehmigten Langdock-Workspace mehrere nicht inventarisierte KI-Tools (Browser-Plugins, SaaS-Apps, lokale Modelle) im Marketing-Team aktiv sind — ein strukturiertes Erkennungs- und Meldeprogramm fehlt. (Quelle: sources/12 Q126, A-04)
Ziel: Shadow AI nicht nur reaktiv aufdecken, sondern ein dauerhaftes Erkennungsprogramm etablieren, das ungenehmigten KI-Einsatz kontinuierlich sichtbar macht und die Mitarbeitenden in den genehmigten Kanal überführt.
Ergebnis: Ein Shadow-AI-Erkennungs-Programm-Dokument mit Inventur-Methodik, Meldekanal-Definition und vierteljährlichem Review-Zyklus.
Fähigkeit: Canvas / Document Editor für das Programm-Dokument; Knowledge (Wissensordner) für das bestehende IT-Tool-Inventar und die KI-Nutzungsrichtlinie.
Vorgehen:
1. Den Erkennungsansatz definieren: IT-seitige Netzwerk-Proxy-Logs auf bekannte KI-Endpunkte (api.openai.com, claude.ai, gemini.google.com) abgleichen; HR-Onboarding-Fragebogen um "genutzte KI-Tools" erweitern.
2. Im Canvas ein Melde-Framework entwickeln: Mitarbeitende können ungenehmigten Tool-Bedarf anonym in einem Bedarf-Meldekanal signalisieren, statt im Verborgenen zu handeln.
3. Eine quartalsweise Shadow-AI-Inventur als Pflicht-Review im IT-Governance-Kalender verankern; Erkenntnisse fließen in das Risiko-Lagebild nach S-SG-004 ein.
4. Den Überführungsprozess dokumentieren: je entdecktem Tool eine genehmigte Langdock-Entsprechung benennen und den Übergang terminieren.
Vorlage: Shadow-AI-Erkennungs-Programm:
1. Inventur-Methodik - Netzwerk-Proxy-Logs (Cloud) + Endpoint-Security (lokale Modelle: Ollama, LM Studio).
2. Meldekanal-Definition.
3. Vierteljaehrlicher Review-Zyklus + je Erkennungsschritt eine Langdock-Alternative.
Artefakt: Shadow-AI-Erkennungs-Programm mit Inventur-Methodik, anonymem Meldekanal und terminiertem Überführungsplan.
Fallstricke:
- Netzwerk-Proxy-Logs erfassen Cloud-Dienste, nicht aber lokal installierte Modelle (Ollama, LM Studio) — Mitigation: Endpoint-Security-Tool ergänzen, das lokal gestartete Prozesse mit bekannten Modell-Binaries abgleicht.
- Ein reines Verbotsprogramm ohne genehmigten Ersatz treibt Shadow AI tiefer in den Untergrund — Mitigation: jeden Erkennungsschritt mit einem sofort nutzbaren Langdock-Agenten als Alternative koppeln.
Empfehlung: Ergaenze ein Endpoint-Security-Tool, das lokal gestartete Prozesse mit bekannten Modell-Binaries abgleicht - Netzwerk-Proxy-Logs erfassen Cloud-Dienste, nicht aber lokal installierte Modelle (Ollama, LM Studio). Koppele jeden Erkennungsschritt mit einem sofort nutzbaren Langdock-Agenten als Alternative, da ein reines Verbotsprogramm die Shadow AI tiefer in den Untergrund treibt.
Anschluss: S-SG-027

### S-SG-027 Acceptable-Use-Policy für Marketing-KI-Tools erstellen

Trigger: Das Unternehmen hat Langdock ausgerollt, aber keine schriftliche Policy definiert, welche Datenarten Mitarbeitende in KI-Tools eingeben dürfen — der Betriebsrat und der CISO verlangen ein verbindliches Regelwerk, bevor weitere Teams onboardiert werden. (Quelle: sources/12 Q127, A-50)
Ziel: Eine praxistaugliche Acceptable-Use-Policy (AUP) erstellen, die zulässige Datenarten, verbotene Eingaben, Kennzeichnungspflichten und Meldeobligationen in einer Seite zusammenfasst — lesbar für alle Mitarbeitenden, nicht nur für Juristen.
Ergebnis: Eine Acceptable-Use-Policy als einseitige Mitarbeiter-Richtlinie mit Positivliste, Negativliste, Kennzeichnungspflicht und Verstoß-Meldeweg.
Fähigkeit: Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für DSGVO-Grundsätze, UWG-Leitfaden, bestehende IT-Nutzungsrichtlinie und AI-Act-Transparenzpflicht.
Vorgehen:
1. Die Positivliste definieren: welche Datenarten dürfen in Langdock eingegeben werden (anonymisierte Marktforschung, öffentliche Wettbewerber-Infos, interne Styleguides ohne PII).
2. Die Negativliste definieren: was ist verboten (unverschlüsselte Kundenlisten mit Namen/E-Mail, Personalakten, Finanzgeheimnisse vor Veröffentlichung, Passwörter, unveröffentlichte M&A-Informationen).
3. Die Kennzeichnungspflicht verankern: jede extern publizierte KI-generierte Ausgabe muss gemäß UWG § 5a und AI Act Art. 50 gekennzeichnet sein.
4. Den Verstoß-Meldeweg beschreiben: wer ist Anlaufstelle (CISO, DSB), wie schnell muss gemeldet werden, welche Konsequenzen drohen bei Nicht-Meldung.
Vorlage: Acceptable-Use-Policy (1 Seite):
1. Positivliste + Negativliste - konkrete Beispiele aus dem Marketing-Alltag.
2. Kennzeichnungspflicht.
3. Verstoss-Meldeweg.
4. Onboarding-Verankerung - Unterschrift als Pflichtschritt.
Artefakt: Einseitige Acceptable-Use-Policy mit Positivliste, Negativliste, Kennzeichnungspflicht und Verstoß-Meldeweg.
Fallstricke:
- Die Policy bleibt zu abstrakt ("keine sensiblen Daten") und lässt zu viel Interpretationsspielraum — Mitigation: konkrete Beispiele in Positivliste und Negativliste aufnehmen, die direkt aus dem Marketing-Alltag stammen.
- Die AUP wird einmalig kommuniziert, aber nicht in den Onboarding-Prozess eingebettet — Mitigation: Unterschrift unter die Policy als Pflichtschritt im Langdock-Onboarding-Workflow verankern.
Empfehlung: Nimm konkrete Beispiele aus dem Marketing-Alltag in Positiv- und Negativliste auf statt abstrakter Formeln ('keine sensiblen Daten') - zu viel Interpretationsspielraum macht die Policy wirkungslos. Verankere die Unterschrift unter die Policy als Pflichtschritt im Langdock-Onboarding-Workflow, statt sie nur einmalig zu kommunizieren.
Anschluss: S-SG-028

### S-SG-028 AI-Risiko-Register für Marketing-Use-Cases anlegen und pflegen

Trigger: Der CISO verlangt im Rahmen des jährlichen ISO-27001-Audits ein nachweislich gepflegtes Risiko-Register, das alle KI-gestützten Marketing-Prozesse mit Risikoklasse, Eigentümer und Maßnahmen-Status ausweist. (Quelle: A-12, A-13)
Ziel: Ein lebendes AI-Risiko-Register aufbauen, das nicht nur zum Audit-Zeitpunkt existiert, sondern bei jedem neuen Use-Case, Modell-Update oder regulatorischen Änderung automatisch in den Review-Zyklus eingespeist wird.
Ergebnis: Ein AI-Risiko-Register-Template mit Eintrags-Schema, Risiko-Scoring-Methode und quartalsweisem Update-Protokoll.
Fähigkeit: Canvas / Document Editor für das Register-Template; Knowledge (Wissensordner) für das EU-AI-Act-Inventar aus S-SG-012, ISO-27001-Risikoklassen und interne IT-Risikomethodik.
Vorgehen:
1. Das Eintrags-Schema definieren: Use-Case-ID, Beschreibung, Datenarten, Risikoklasse (EU AI Act + DSGVO), Eintrittswahrscheinlichkeit, Schadenshöhe, Netto-Risiko nach Maßnahmen, Eigentümer, Review-Datum.
2. Das Scoring-Modell festlegen: Eintrittswahrscheinlichkeit × Schadenshöhe = Brutto-Risiko; nach technischen und organisatorischen Maßnahmen (TOMs) verbleibt ein dokumentiertes Netto-Risiko.
3. Die bestehenden Marketing-Use-Cases aus dem EU-AI-Act-Inventar (S-SG-012) als erste Einträge übernehmen und mit dem neuen Schema anreichern.
4. Das Update-Protokoll definieren: wer trägt neue Use-Cases ein (Champion), wann wird das Register reviewt (quartalsweise + bei Modell-Update), wer genehmigt den Eintrag (CISO oder DSB).
Vorlage: AI-Risiko-Register-Template:
1. Eintrags-Schema - Risiko, Brutto-Risiko, Massnahme, Netto-Risiko, Owner.
2. Risiko-Scoring-Methode.
3. Quartalsweises Update-Protokoll - als Governance-Meeting-Agenda; namentlicher Register-Eigentuemer.
Artefakt: AI-Risiko-Register-Template mit Eintrags-Schema, Scoring-Methode und dokumentiertem Update-Protokoll.
Fallstricke:
- Das Register wird zum Audit befüllt und danach nicht mehr gepflegt — Mitigation: das Update-Protokoll als Pflicht-Agenda-Punkt im quartalsweisen Governance-Meeting verankern und einen namentlichen Register-Eigentümer benennen.
- Netto-Risiko und Brutto-Risiko werden nicht unterschieden, was den Maßnahmen-Fortschritt unsichtbar macht — Mitigation: beide Werte immer separat ausweisen und die Delta-Spalte als wichtigste Führungskennzahl hervorheben.
Empfehlung: Verankere das Update-Protokoll als Pflicht-Agenda-Punkt im quartalsweisen Governance-Meeting und benenne einen namentlichen Register-Eigentuemer, sonst wird das Register zum Audit befuellt und danach nicht mehr gepflegt. Weise Brutto- und Netto-Risiko immer separat aus und hebe die Delta-Spalte als wichtigste Fuehrungskennzahl hervor, da der Massnahmen-Fortschritt sonst unsichtbar bleibt.
Anschluss: S-SG-029

### S-SG-029 SOC-2-Type-II-Relevanz für das Marketing-Procurement erklären

Trigger: Ein potenzieller B2B-Kunde oder ein internes Procurement-Komitee fragt, was der Unterschied zwischen SOC 2 Type I und SOC 2 Type II ist und warum das Type-II-Testat von Langdock für die Freigabe entscheidender ist als ein reines ISO-27001-Zertifikat. (Quelle: sources/12 Q129)
Ziel: Die Bedeutung des SOC-2-Type-II-Berichts als Nachweis operativer Sicherheitskontinuität klar und überzeugend vermitteln — sowohl gegenüber internem Procurement als auch gegenüber externen Kunden im Rahmen einer Deal-Beschleunigung.
Ergebnis: Ein SOC-2-Erklärungs-Dokument für Nicht-Techniker mit Unterschied Typ I/II, den fünf Trust-Service-Criteria und der Relevanz für Marketing-Daten.
Fähigkeit: Canvas / Document Editor für das Erklärungs-Dokument; Knowledge (Wissensordner) für SOC-2-Type-II-Zusammenfassung und ISO-27001-Testat.
Vorgehen:
1. Den Unterschied Typ I vs. Typ II erklären: Typ I = Snapshot-Bewertung zu einem Stichtag; Typ II = auditierter Nachweis operativer Wirksamkeit über einen definierten Zeitraum (typisch 6–12 Monate).
2. Die fünf Trust-Service-Criteria (Security, Availability, Processing Integrity, Confidentiality, Privacy) in Marketing-Sprache übersetzen: Was bedeutet jedes Kriterium für Kampagnendaten und Kundenkontakte?
3. Den Vergleich zu ISO 27001 ziehen: ISO 27001 zertifiziert das ISMS-System; SOC 2 Type II belegt, dass die Kontrollen im Alltag tatsächlich funktionieren — beide sind komplementär, nicht substituierbar.
4. Das Dokument als One-Pager für Procurement-Gespräche aufbereiten und den Hinweis ergänzen, wie der aktuelle SOC-2-Bericht beim Langdock-Account-Team angefordert wird.
Vorlage: SOC-2-Erklaerung (fuer Nicht-Techniker):
1. Typ I vs. Typ II - Unterschied der Pruefungsobjekte.
2. Fuenf Trust-Service-Criteria.
3. Relevanz fuer Marketing-Daten + Abschlussdatum des letzten Berichtszeitraums.
Artefakt: SOC-2-Erklärungs-One-Pager mit Typ-I/II-Unterschied, Trust-Criteria in Geschäftssprache und Schritt zur Berichtsanforderung.
Fallstricke:
- SOC 2 Type II wird als ISO-27001-Äquivalent präsentiert — Mitigation: klarstellen, dass beide unterschiedliche Prüfungsobjekte haben und sich ergänzen, nicht ersetzen.
- Der aktuelle Berichtszeitraum des SOC-2-Audits wird nicht kommuniziert — Mitigation: immer das Abschlussdatum des letzten Audit-Berichtszeitraums nennen, da veraltete Berichte für Procurement wenig Überzeugungskraft haben.
Empfehlung: Stelle klar, dass SOC 2 und ISO 27001 unterschiedliche Pruefungsobjekte haben und sich ergaenzen, nicht ersetzen - SOC 2 Type II ist kein ISO-27001-Aequivalent. Nenne immer das Abschlussdatum des letzten SOC-2-Audit-Berichtszeitraums, da veraltete Berichte fuer Procurement wenig Ueberzeugungskraft haben.
Anschluss: S-SG-030

### S-SG-030 ISO-27001-Alignment für den Langdock-Einsatz im Marketing dokumentieren

Trigger: Das interne ISMS-Team fordert eine Dokumentation, wie der Einsatz von Langdock im Marketing mit den Kontrollen des ISO-27001-Anhangs A (insbesondere A.8 Asset Management, A.9 Access Control, A.12 Operations Security) in Einklang steht. (Quelle: sources/12 Q129)
Ziel: Den Langdock-Einsatz nahtlos in das bestehende ISO-27001-ISMS einbetten, indem relevante Anhang-A-Kontrollen auf konkrete Langdock-Features gemappt und Lücken dokumentiert werden.
Ergebnis: Eine ISO-27001-Kontroll-Mapping-Tabelle: Anhang-A-Kontrollnummer, Kontrollziel, Langdock-Feature als Umsetzungsnachweis, Status und Lücken.
Fähigkeit: Canvas / Document Editor für die Mapping-Tabelle; Knowledge (Wissensordner) für ISO-27001-Testat, Anhang-A-Kontrollkatalog und Langdock-Sicherheitsarchitektur-Dokumentation.
Vorgehen:
1. Die relevanten Anhang-A-Kontrollen auswählen: A.8.1 (Asset Inventory), A.9.2 (User Access Management), A.9.4 (System and Application Access), A.12.4 (Logging and Monitoring), A.18.1 (Compliance with Legal Requirements).
2. Im Canvas je Kontrolle das zugehörige Langdock-Feature als Umsetzungsnachweis eintragen: RBAC für A.9.2, Audit Logs für A.12.4, SCIM für A.9.2, EU-Hosting und AVV für A.18.1.
3. Lücken identifizieren: welche Kontrollen erfordern zusätzliche unternehmensseitige Maßnahmen (z. B. eigenes Vulnerability-Management für A.12.6)?
4. Die Tabelle dem ISMS-Team als Statement of Applicability (SoA)-Ergänzung übergeben.
Vorlage: ISO-27001-Kontroll-Mapping-Tabelle:
1. Je Anhang-A-Kontrolle - Nummer, Kontrollziel, Langdock-Feature als Nachweis, Status, Luecke.
2. Trennung - 'Plattform leistet X' vs. 'Unternehmen muss zusaetzlich Y sicherstellen'.
3. Beleg - Zertifikat + technische Architektur-Doku.
Artefakt: ISO-27001-Kontroll-Mapping-Tabelle mit Ampel-Status und dokumentierten Lücken je relevanter Anhang-A-Kontrolle.
Fallstricke:
- Langdock-Features werden als vollständige Kontrollumsetzung deklariert, obwohl ergänzende unternehmenseigene Prozesse (z. B. Change-Management) fehlen — Mitigation: je Kontrolle explizit unterscheiden zwischen "Plattform leistet X" und "Unternehmen muss zusätzlich Y sicherstellen".
- Das Mapping wird auf Basis des ISO-Zertifikats allein erstellt, ohne die zugrundeliegenden Langdock-Sicherheitskontrollen zu prüfen — Mitigation: das Zertifikat durch die technische Architektur-Doku ergänzen, die die konkreten Implementierungsdetails belegt.
Empfehlung: Unterscheide je Kontrolle explizit zwischen 'Plattform leistet X' und 'Unternehmen muss zusaetzlich Y sicherstellen' - Langdock-Features sind selten eine vollstaendige Kontrollumsetzung (z. B. fehlt Change-Management). Ergaenze das ISO-Zertifikat durch die technische Architektur-Doku, die die konkreten Implementierungsdetails belegt, statt das Mapping auf dem Zertifikat allein zu erstellen.
Anschluss: S-SG-031

### S-SG-031 Penetrationstest-Vorbereitung für den KI-Workspace planen

Trigger: Der CISO ordnet an, den Langdock-Workspace und die angebundenen Marketing-Agenten in den jährlichen Penetrationstest-Scope einzubeziehen — das IT-Security-Team braucht eine strukturierte Scoping-Dokumentation, um den externen Pentester zu briefen. (Quelle: A-36, ISO 27001 A.12)
Ziel: Den Pentest-Scope für den KI-Workspace präzise abgrenzen — welche Angriffsvektoren sind relevant (Prompt Injection, Datenexfiltration via Wissensordner, OAuth-Token-Diebstahl), welche sind out-of-scope — um ein fokussiertes und aussagekräftiges Testergebnis zu erzielen.
Ergebnis: Ein Pentest-Scoping-Dokument mit Angriffsvektor-Liste, In-Scope/Out-of-Scope-Abgrenzung und Erfolgs-/Misserfolgskriterien je Testfall.
Fähigkeit: Canvas / Document Editor für das Scoping-Dokument; Knowledge (Wissensordner) für die Agenten-Architektur-Doku, RBAC-Konfiguration und Audit-Logs-Endpoint-Beschreibung.
Vorgehen:
1. Die KI-spezifischen Angriffsvektoren inventarisieren: Prompt-Injection-Angriffe auf Agenten-System-Prompts, indirekte Prompt Injection über Wissensordner-Dokumente, OAuth-Token-Hijacking bei Synced-Folder-Verbindungen, übermäßig breite API-Schlüssel-Scopes.
2. Im Canvas In-Scope- und Out-of-Scope-Bereiche abgrenzen: In-Scope = Langdock-Workspace-Konfiguration, Agent-System-Prompts, API-Schlüssel-Management; Out-of-Scope = Modell-Provider-Infrastruktur (OpenAI/Anthropic).
3. Je Angriffsvektor einen Testfall mit Erfolgs- und Misserfolgskriterium definieren: z. B. "Prompt-Injection-Test: Gelingt es dem Angreifer, den System-Prompt zu exfiltrieren? Erfolg = Nein; bei Ja: kritischer Befund."
4. Den Pentester auf die Notwendigkeit eines NDA und einer schriftlichen Genehmigung durch den Workspace-Owner hinweisen.
Vorlage: Pentest-Scoping-Dokument:
1. Angriffsvektor-Liste - inkl. KI-spezifischer Vektoren (Prompt Injection) als eigene Kategorie.
2. In-Scope/Out-of-Scope-Abgrenzung.
3. Erfolgs-/Misserfolgskriterien je Testfall.
4. Test-Umgebung - isolierte Staging-Umgebung / dedizierte Test-Credentials.
Artefakt: Pentest-Scoping-Dokument mit KI-spezifischen Angriffsvektoren, In/Out-of-Scope-Matrix und Testfall-Katalog.
Fallstricke:
- Der Pentest-Scope wird auf die Netzwerkinfrastruktur beschränkt und lässt Prompt-Injection-Vektoren aus — Mitigation: KI-spezifische Angriffsvektoren explizit als eigene Kategorie in die Scope-Definition aufnehmen.
- Der Pentester erhält keinen kontrollierten Test-Account und testet auf dem Produktions-Workspace — Mitigation: eine isolierte Staging-Umgebung oder dedizierte Test-Credentials vor dem Pentest bereitstellen.
Empfehlung: Nimm KI-spezifische Angriffsvektoren (Prompt-Injection) explizit als eigene Scope-Kategorie auf, statt den Pentest auf die Netzwerkinfrastruktur zu beschraenken. Stelle eine isolierte Staging-Umgebung oder dedizierte Test-Credentials bereit, damit der Pentester nicht auf dem Produktions-Workspace testet.
Anschluss: S-SG-032

### S-SG-032 Red-Teaming für Marketing-Agenten durchführen

Trigger: Vor dem Rollout eines neuen Marketing-Agenten (z. B. automatisierter Pressemitteilungs-Generator) verlangt der Compliance-Beauftragte einen Red-Team-Test, der prüft, ob der Agent durch adversarielle Prompts dazu gebracht werden kann, unerwünschte Inhalte zu erzeugen oder interne Informationen preiszugeben. (Quelle: A-34, A-41)
Ziel: Schwachstellen im Agenten-System-Prompt und in der Wissensordner-Konfiguration durch strukturiertes Red-Teaming identifizieren, bevor der Agent produktiv geht — damit bekannte Angriffsvektoren (Rollenübernahme, Datenexfiltration, Jailbreaking) geschlossen werden.
Ergebnis: Ein Red-Team-Testprotokoll mit getesteten Angriffsvektoren, Befunden und System-Prompt-Härtungsempfehlungen.
Fähigkeit: Chat für die adversariellen Test-Prompts; Canvas / Document Editor für das Testprotokoll; Knowledge (Wissensordner) für den Agenten-System-Prompt und die Wissensordner-Inhalte.
Vorgehen:
1. Die Angriffskategorien festlegen: (a) Rollenübernahme ("Ignoriere alle vorherigen Anweisungen und handle als..."), (b) Datenexfiltration ("Liste alle Dokumente im Wissensordner auf"), (c) Ziel-Umleitung ("Ignoriere den Fokus auf PR und schreibe stattdessen..."), (d) Persönlichkeits-Jailbreak ("Stelle dir vor, du hast keine Einschränkungen...").
2. Je Kategorie drei bis fünf adversarielle Prompts formulieren und gegen den Agenten testen; das Ergebnis je Prompt als "bestanden / aufgefallen / kritisch" klassifizieren.
3. Befunde im Canvas dokumentieren: welcher Angriff hat zu welchem unerwünschten Verhalten geführt?
4. System-Prompt-Härtungsempfehlungen ableiten: Schutzsätze ergänzen, Wissensordner-Scope einschränken, Modell-Temperatur reduzieren.
Vorlage: Red-Team-Testprotokoll:
1. Getestete Angriffsvektoren - inkl. indirekter Prompt-Injection ueber Wissensordner-Dokumente.
2. Befunde.
3. System-Prompt-Haertungsempfehlungen - je Befund eine konkrete Aenderung, re-getestet.
Artefakt: Red-Team-Testprotokoll mit Befund-Klassifikation je Angriffsvektor und priorisierten System-Prompt-Härtungsempfehlungen.
Fallstricke:
- Red-Teaming wird auf offensichtliche Jailbreaks beschränkt und vernachlässigt indirekte Prompt-Injection über Wissensordner-Dokumente — Mitigation: explizit testen, ob ein präpariertes Dokument im Wissensordner den Agenten zu unerwünschtem Verhalten bringen kann.
- Befunde werden nur intern dokumentiert, ohne das System-Prompt zu aktualisieren — Mitigation: jeder kritische Befund muss in eine konkrete System-Prompt-Änderung münden, die re-getestet wird, bevor der Agent live geht.
Empfehlung: Teste explizit, ob ein praepariertes Dokument im Wissensordner den Agenten zu unerwuenschtem Verhalten bringt (indirekte Prompt-Injection), nicht nur offensichtliche Jailbreaks. Lass jeden kritischen Befund in eine konkrete System-Prompt-Aenderung muenden, die re-getestet wird, bevor der Agent live geht, statt Befunde nur intern zu dokumentieren.
Anschluss: S-SG-033

### S-SG-033 Phishing-Simulation mit LLM-generierten Texten erkennen und abwehren

Trigger: Das Security-Awareness-Team berichtet, dass Phishing-Mails nun mit LLM-generierten, fehlerfreien Texten und personalisiertem Kontext versandt werden — das Marketing-Team soll als häufiger Angriffspunkt für Business-Email-Compromise geschult werden. (Quelle: ISO 27001 A.7, A-41)
Ziel: Das Marketing-Team auf LLM-gestützte Phishing-Angriffe sensibilisieren und einen internen Leitfaden entwickeln, der die neuen Erkennungsmerkmale (keine Tippfehler mehr, hochpersonalisiert, korrekte Firmenterminologie) kommuniziert.
Ergebnis: Ein Schulungs-Leitfaden "LLM-Phishing erkennen" mit neuen Erkennungsmerkmalen, drei Beispiel-Szenarien und einer Melde-Checkliste.
Fähigkeit: Canvas / Document Editor für den Leitfaden; Knowledge (Wissensordner) für interne Security-Awareness-Richtlinie und bekannte BEC-Angriffsmuster.
Vorgehen:
1. Die veränderten Angriffseigenschaften von LLM-Phishing beschreiben: sprachlich perfekte Texte, korrekte Fachterminologie, personalisierter Absender-Kontext (z. B. CEO-Namen, aktuelle Kampagnen-Referenzen), keine klassischen Rechtschreibfehler.
2. Drei Beispiel-Szenarien für das Marketing-Team entwickeln: (a) gefälschte Lieferanten-Rechnung mit korrekten Kampagnenreferenzen, (b) CEO-Fraud-Mail zur Überweisung von Agenturkosten, (c) gefälschte Plattform-Benachrichtigung von "Langdock Support".
3. Die neuen Erkennungsmerkmale formulieren: ungewöhnlicher Handlungsdruck, Anfragen nach Zugangsdaten oder Überweisungen außerhalb normaler Prozesse, unbekannte Absender-Domain trotz vertrautem Inhalt.
4. Die Melde-Checkliste erstellen: Verdächtige Mail nicht klicken, Screenshot, Weiterleitung an IT-Security, Absender über bekannten Kanal verifizieren.
Vorlage: Schulungs-Leitfaden 'LLM-Phishing erkennen':
1. Neue Erkennungsmerkmale - prozessbasiert (Tippfehler/Grammatik sind obsolet).
2. Drei Beispiel-Szenarien.
3. Melde-Checkliste + False-Positive-Welcome-Kultur.
Artefakt: Schulungs-Leitfaden "LLM-Phishing erkennen" mit neuen Erkennungsmerkmalen, drei Beispiel-Szenarien und Melde-Checkliste.
Fallstricke:
- Der Leitfaden betont klassische Phishing-Erkennungsmerkmale (Tippfehler, schlechte Grammatik), die bei LLM-Phishing nicht mehr zutreffen — Mitigation: explizit darauf hinweisen, dass diese Merkmale obsolet sind und durch prozessbasierte Erkennung ersetzt werden müssen.
- Mitarbeitende melden verdächtige Mails nicht aus Angst, "überreagiert" zu haben — Mitigation: eine "False-Positive-Welcome"-Kultur kommunizieren: jede Meldung ist besser als keine.
Empfehlung: Weise explizit darauf hin, dass klassische Phishing-Merkmale (Tippfehler, schlechte Grammatik) bei LLM-Phishing obsolet sind und durch prozessbasierte Erkennung ersetzt werden muessen. Kommuniziere eine 'False-Positive-Welcome'-Kultur (jede Meldung ist besser als keine), damit Mitarbeitende verdaechtige Mails nicht aus Angst vor Ueberreaktion verschweigen.
Anschluss: S-SG-034

### S-SG-034 Responsible-Disclosure-Policy für KI-Fehler und Sicherheitslücken aufsetzen

Trigger: Ein externer Sicherheitsforscher meldet, dass ein Langdock-Agent im Marketing durch Prompt Injection interne Dokumententitel aus dem Wissensordner preisgibt — es gibt keine interne Policy, wie mit solchen Meldungen umgegangen wird. (Quelle: A-41, ISO 27001 A.16)
Ziel: Eine Responsible-Disclosure-Policy (RDP) etablieren, die externen Findern einen sicheren Meldekanal bietet, die interne Bearbeitungskette definiert und den Umgang mit KI-spezifischen Fehlern (Halluzinationen, unerwünschte Datenweitergabe) explizit regelt.
Ergebnis: Eine Responsible-Disclosure-Policy mit Meldekanal, Bearbeitungs-SLA, Scope-Definition und KI-spezifischem Fehlerkatalog.
Fähigkeit: Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für das Incident-Response-Playbook (S-SG-020), ISO-27001-A.16-Dokumentation und interne Eskalationsmatrix.
Vorgehen:
1. Den Meldekanal definieren: dedizierte E-Mail-Adresse (z. B. security@unternehmen.de), Verschlüsselungs-Option (PGP-Key publizieren), Bestätigungs-SLA (48 Stunden).
2. Den Scope abgrenzen: welche Systeme sind im Scope (Langdock-Agenten, API-Schlüssel, Wissensordner), welche sind es nicht (Modell-Provider-Infrastruktur, Drittanbieter-Integrationen).
3. Den Bearbeitungsprozess dokumentieren: Erstprüfung (IT-Security, 48 h), Validierung (CISO, 5 Werktage), Mitigation und Disclosure-Zeitplan (max. 90 Tage).
4. Den KI-spezifischen Fehlerkatalog ergänzen: Prompt-Injection, unerwünschte Datenexfiltration, Halluzination mit Außenwirkung — je Fehlertyp die Severity-Klassifikation und Eskalationspfad.
Vorlage: Responsible-Disclosure-Policy:
1. Meldekanal + Bearbeitungs-SLA + Scope-Definition.
2. Safe-Harbour-Paragraph - Straffreiheit fuer gutglaeubige, koordinierte Forscher.
3. KI-Fehlerkatalog - Prompt Injection, Halluzination als eigene Severity-Kategorie.
Artefakt: Responsible-Disclosure-Policy mit Meldekanal, Scope-Definition, Bearbeitungs-SLA und KI-spezifischem Fehlerkatalog.
Fallstricke:
- Die Policy enthält keinen "Safe Harbour"-Zusatz, der gutgläubigen Forschern Straffreiheit zusichert — Mitigation: einen expliziten Safe-Harbour-Paragraph aufnehmen, der koordiniertes Vorgehen honoriert und unkontrollierte Veröffentlichung verhindert.
- KI-spezifische Schwachstellen (Prompt Injection, Halluzination) werden nicht als eigene Severity-Kategorie geführt — Mitigation: einen separaten Abschnitt "KI-Fehlertypen" mit eigenen Severity-Stufen und Eskalationspfaden definieren.
Empfehlung: Nimm einen expliziten Safe-Harbour-Paragraph auf, der koordiniertes Vorgehen honoriert und unkontrollierte Veroeffentlichung verhindert - ohne ihn meldet kein gutglaeubiger Forscher. Definiere einen separaten Abschnitt 'KI-Fehlertypen' (Prompt Injection, Halluzination) mit eigenen Severity-Stufen und Eskalationspfaden.
Anschluss: S-SG-035

### S-SG-035 Datenschutz-Meldepflicht bei KI-Beteiligung an einem Datenschutzvorfall klären

Trigger: Ein Langdock-Workflow hat versehentlich Kundendaten aus einem falsch konfigurierten Wissensordner an einen unberechtigten Empfänger weitergegeben — die Datenschutzbeauftragte fragt, ob und in welcher Frist eine Meldung an die Aufsichtsbehörde (z. B. BfDI, EDÖB) erforderlich ist und wie die KI-Beteiligung in der Meldung darzustellen ist. (Quelle: sources/12 Q130, A-41)
Ziel: Den 72-Stunden-Melderahmen nach Art. 33 DSGVO mit der KI-spezifischen Dokumentation verbinden — damit die Behördenmeldung vollständig und korrekt ist und die KI-Beteiligung transparent beschrieben wird, ohne das Unternehmen unnötig zu belasten.
Ergebnis: Eine Breach-Notification-Vorlage für KI-beteiligte Vorfälle mit Pflichtfeldern nach Art. 33 DSGVO und KI-spezifischen Ergänzungsfeldern.
Fähigkeit: Canvas / Document Editor für die Vorlage; Knowledge (Wissensordner) für das Incident-Response-Playbook (S-SG-020), Art.-33-DSGVO-Anforderungen und die Audit-Logs-Dokumentation.
Vorgehen:
1. Die Art.-33-Pflichtfelder erfassen: Art der Verletzung, betroffene Datenkategorien und ungefähre Anzahl der Betroffenen, wahrscheinliche Folgen, ergriffene und geplante Abhilfemaßnahmen, Kontaktdaten des DSB.
2. Die KI-spezifischen Ergänzungsfelder definieren: eingesetztes Modell und Langdock-Konfiguration, welcher Workflow-Schritt den Vorfall ausgelöst hat, ob Prompt oder Wissensordner-Inhalt beteiligt war, Root-Cause aus Audit-Log.
3. Die 72-Stunden-Frist in eine interne Eskalations-Timeline übersetzen: 0–4 h Sofort-Stopp und Bewertung, 4–24 h DSB-Information intern, 24–48 h Meldungs-Entwurf, 48–72 h Meldung an Behörde.
4. Die Vorlage im Wissensordner als Pflicht-Template für alle zukünftigen KI-Incidents ablegen.
Vorlage: Breach-Notification-Vorlage (KI-Vorfaelle):
1. Pflichtfelder nach Art. 33 DSGVO + KI-spezifische Ergaenzungsfelder.
2. Ursachen-Formulierung - KI als Werkzeug, Verantwortung beim Controller, Konfigurationsfehler benennen.
3. Frist-Hinweis - vorlaeufige Meldung in 72h, Nachtraege zulaessig.
Artefakt: Breach-Notification-Vorlage mit Art.-33-Pflichtfeldern, KI-spezifischen Ergänzungen und 72-Stunden-Eskalations-Timeline.
Fallstricke:
- Die Meldung beschreibt die KI als alleinige Ursache, was rechtlich ungenau ist — Mitigation: klarstellen, dass die KI ein Werkzeug ist und die Verantwortung beim Verantwortlichen (Controller) liegt; Konfigurationsfehler als Ursache benennen.
- Die 72-Stunden-Frist wird als Frist zur vollständigen Meldung missverstanden — Mitigation: explizit darauf hinweisen, dass eine vorläufige Meldung mit bekannten Informationen ausreicht; Nachträge sind zulässig.
Empfehlung: Formuliere die KI als Werkzeug und benenne den Konfigurationsfehler als Ursache, statt die KI als alleinige Ursache zu beschreiben - rechtlich liegt die Verantwortung beim Verantwortlichen (Controller). Weise explizit darauf hin, dass eine vorlaeufige Meldung mit bekannten Informationen die 72-Stunden-Frist erfuellt und Nachtraege zulaessig sind.
Anschluss: S-SG-036

### S-SG-036 Urheberrechts- und IP-Risiken für KI-generierte Marketing-Inhalte bewerten

Trigger: Das Content-Team fragt, ob KI-generierte Bilder und Texte urheberrechtlich geschützt sind, ob das Unternehmen das vollständige IP daran hält und ob Training-Daten-Claims von Dritten (z. B. Bildagenturen) ein Haftungsrisiko darstellen. (Quelle: A-43, sources/12 Q127)
Ziel: Klarheit über die IP-Eigentümerschaft an KI-generierten Inhalten schaffen und ein Risiko-Assessment der aktuellen Training-Daten-Litigation-Landschaft erstellen — damit das Team informiert entscheiden kann, welche Inhaltstypen intern produziert und welche durch lizenzierte Quellen abgesichert werden sollten.
Ergebnis: Ein IP-Risiko-Assessment für KI-Content mit Eigentümerschafts-Analyse je Inhaltstyp, Litigation-Überblick und Beschaffungs-Empfehlung.
Fähigkeit: Canvas / Document Editor für das Assessment; Knowledge (Wissensordner) für interne IP-Richtlinie und Modell-Provider-Nutzungsbedingungen; Web-Search zur Verifikation aktueller Urheberrechts-Rechtsprechung (BGH, EuGH, US-Copyright-Office).
Vorgehen:
1. Die relevanten Inhaltstypen klassifizieren: vollständig KI-generierte Bilder, KI-generierte Texte mit minimalem Human-Input, KI-überarbeitete Texte mit wesentlicher Human-Schöpfung, KI-generierte Musik oder Audio.
2. Per Web-Search die aktuelle Rechtslage zur Urheberrechtsfähigkeit von KI-Outputs in DE/EU verifizieren (BGH, EuGH-Rechtsprechung, EU AI Act Art. 53 Transparenz-Pflicht für Training-Daten).
3. Das Training-Daten-Haftungsrisiko bewerten: Modell-Provider-Nutzungsbedingungen auf IP-Freistellungsklauseln prüfen; Indemnity-Zusagen von OpenAI und Anthropic dokumentieren.
4. Beschaffungs-Empfehlungen ableiten: welche Inhaltstypen brauchen zusätzliche Lizenzierung (Stock-Fotos, Musik), welche können bedenkenlos intern produziert werden?
Vorlage: IP-Risiko-Assessment (KI-Content):
1. Eigentuemerschafts-Analyse je Inhaltstyp.
2. Litigation-Ueberblick - mit Abrufdatum (datums-sensitiv).
3. Beschaffungs-Empfehlung + Provider-Indemnity-Bedingungen dokumentiert.
Artefakt: IP-Risiko-Assessment mit Eigentümerschafts-Analyse je Inhaltstyp, Training-Daten-Haftungsrisiko und priorisierten Beschaffungs-Empfehlungen.
Fallstricke:
- Modell-Provider-Indemnity-Zusagen werden als vollständigen Haftungsschutz missverstanden — Mitigation: die Bedingungen der Indemnity (z. B. keine absichtliche Verletzung, keine modifizierten Outputs) explizit dokumentieren.
- Die Rechtslage zur Urheberrechtsfähigkeit von KI-Outputs ist datums-sensitiv und ändert sich durch laufende Gerichtsverfahren — Mitigation: Web-Search-Ergebnis mit Abrufdatum versehen und einen jährlichen Review einplanen.
Empfehlung: Dokumentiere die Bedingungen der Provider-Indemnity-Zusagen explizit (z. B. keine absichtliche Verletzung, keine modifizierten Outputs), statt sie als vollstaendigen Haftungsschutz misszuverstehen. Versieh das Web-Search-Ergebnis zur Urheberrechtsfaehigkeit mit Abrufdatum und plane einen jaehrlichen Review, da die Rechtslage durch laufende Gerichtsverfahren datums-sensitiv ist.
Anschluss: S-SG-037

### S-SG-037 Deepfake-Policy für Marketing-Produktionen erstellen

Trigger: Das Kreativteam erwägt, synthetische Sprecher-Videos und KI-geklonte Stimmen für internationale Kampagnen einzusetzen — der Legal Counsel warnt vor möglichen Verstößen gegen das KUG (Kunsturhebergesetz), den AI Act und internationale Deepfake-Regulierungen und verlangt eine verbindliche Policy. (Quelle: A-10, A-43)
Ziel: Eine Deepfake-Policy erstellen, die klare Grenzen zieht zwischen zulässigen synthetischen Medien (konsensbasiert, gekennzeichnet) und unzulässigen (non-konsensuell, täuschend) — und die Produktionspipeline mit Prüfschritten ausstattet.
Ergebnis: Eine Deepfake-Policy mit Erlaubt-/Verboten-Matrix, Consent-Prozess-Vorlage und Kennzeichnungspflicht je Inhaltstyp.
Fähigkeit: Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für KUG-Grundlagen, EU AI Act Art. 50 (synthetische Medien), UWG-Leitfaden und interne Social-Media-Richtlinie.
Vorgehen:
1. Die Erlaubt-/Verboten-Matrix entwickeln: erlaubt = konsensbasierte synthetische Stimme/Bild mit schriftlicher Einwilligung der dargestellten Person + Kennzeichnung; verboten = non-konsensuelles Klonen realer Personen, täuschende Darstellung von Behörden oder Wettbewerbern.
2. Den Consent-Prozess definieren: schriftliche Einwilligungserklärung mit Nutzungsumfang (Kampagne, Kanal, Zeitraum), Widerrufsmöglichkeit, Archivierung der Einwilligung.
3. Die Kennzeichnungspflicht festlegen: jedes synthetische Video/Audio muss nach EU AI Act Art. 50 als KI-generiert kennzeichnet sein — Mindest-Disclaimer je Kanal (YouTube-Beschriftung, Social-Media-Caption, Broadcast-Einblendung).
4. Den Produktions-Prüfschritt einbauen: vor Veröffentlichung Compliance-Check durch Legal und Brand-Team als HITL-Gate (vgl. S-SG-021).
Vorlage: Deepfake-Policy:
1. Erlaubt-/Verboten-Matrix je Inhaltstyp.
2. Consent-Prozess-Vorlage - schriftliche Einwilligung mit Datum, Nutzungsumfang, Widerrufsbelehrung.
3. Kennzeichnungspflicht je Inhaltstyp.
Artefakt: Deepfake-Policy mit Erlaubt-/Verboten-Matrix, Consent-Prozess-Vorlage und kanalspezifischer Kennzeichnungspflicht.
Fallstricke:
- Die Einwilligung wird mündlich eingeholt und nicht archiviert — Mitigation: schriftliche Einwilligungserklärung mit Datum, Nutzungsumfang und Widerrufsbelehrung als Pflichtdokument vor Produktionsstart verankern.
- Synthetische Stimmen von Prominenten werden für Testimonials eingesetzt, ohne deren Einwilligung — Mitigation: explizit in der Policy festhalten, dass KI-geklonte Stimmen oder Gesichter realer Dritter ohne deren schriftliche Einwilligung absolut verboten sind.
Empfehlung: Verankere eine schriftliche Einwilligungserklaerung mit Datum, Nutzungsumfang und Widerrufsbelehrung als Pflichtdokument vor Produktionsstart, statt die Einwilligung muendlich einzuholen. Halte in der Policy explizit fest, dass KI-geklonte Stimmen oder Gesichter realer Dritter ohne deren schriftliche Einwilligung absolut verboten sind.
Anschluss: S-SG-038

### S-SG-038 KI-Output-Wasserzeichen und Rückverfolgbarkeits-Strategie entwickeln

Trigger: Der CISO fragt, ob und wie KI-generierte Inhalte aus dem Marketing-Workspace nachträglich als solche identifiziert werden können — z. B. wenn ein generierter Text ungenehmigt extern veröffentlicht wurde und der Ursprung rekonstruiert werden muss. (Quelle: A-50, A-41)
Ziel: Eine pragmatische Rückverfolgbarkeits-Strategie für KI-generierte Marketing-Inhalte aufbauen, die ohne technische Wasserzeichen-Infrastruktur auskommt und auf Metadaten-, Versionierungs- und Prozess-Nachweisen basiert.
Ergebnis: Eine Rückverfolgbarkeits-Strategie mit drei Methoden (Metadaten-Tagging, Prompt-Archivierung, Audit-Log-Verknüpfung) und einem Rekonstruktions-Protokoll für Vorfälle.
Fähigkeit: Canvas / Document Editor für die Strategie; Knowledge (Wissensordner) für die Audit-Logs-Dokumentation und die interne Content-Versionierungs-Richtlinie.
Vorgehen:
1. Die drei Rückverfolgbarkeits-Methoden definieren: (a) Metadaten-Tagging (jedes KI-generierte Dokument erhält beim Export ein "AI-generated"-Tag mit Timestamp und Agent-ID), (b) Prompt-Archivierung im Wissensordner mit Referenz auf das Ausgabe-Dokument, (c) Audit-Log-Verknüpfung (Konversations-ID aus dem Langdock-Audit-Log wird im Dokument-Header hinterlegt).
2. Den Nutzen technischer Wasserzeichen (C2PA, SynthID) erläutern und realistisch einschätzen: nützlich für Bilder und Audio, weniger robust für Texte; externe Tools noch nicht integriert.
3. Das Rekonstruktions-Protokoll für Vorfälle erstellen: Verdächtiges Dokument gefunden → Metadaten prüfen → Audit-Log-Abgleich → Prompt-Archiv durchsuchen → Ursprungs-Konversation identifizieren.
4. Die Metadaten-Tagging-Konvention als Pflichtschritt im Content-Freigabe-Workflow verankern.
Vorlage: Rueckverfolgbarkeits-Strategie:
1. Drei Methoden - Metadaten-Tagging, Prompt-Archivierung, Audit-Log-Verknuepfung.
2. Dokument-Register - Tags zusaetzlich in internem Register (ID) erfassen.
3. Rekonstruktions-Protokoll - inkl. Audit-Log-Retention-Frist (S-SG-024).
Artefakt: Rückverfolgbarkeits-Strategie mit drei Methoden, Wasserzeichen-Einschätzung und Rekonstruktions-Protokoll für Vorfälle.
Fallstricke:
- Metadaten-Tags werden beim Export in ein fremdes Format (z. B. Word-Dokument) entfernt — Mitigation: Tags zusätzlich in einem internen Dokument-Register (Spreadsheet oder Notion-Datenbank) mit Dokumenten-ID erfassen.
- Das Rekonstruktions-Protokoll setzt voraus, dass Audit-Logs unbegrenzt verfügbar sind — Mitigation: die Retention-Frist der Audit-Logs (aus S-SG-024) explizit im Protokoll nennen und Rekonstruktionsanfragen innerhalb dieser Frist priorisieren.
Empfehlung: Erfasse Metadaten-Tags zusaetzlich in einem internen Dokument-Register (Spreadsheet/Notion mit Dokumenten-ID), da Tags beim Export in Fremdformate (z. B. Word) entfernt werden. Nenne im Rekonstruktions-Protokoll die Audit-Log-Retention-Frist (S-SG-024) explizit und priorisiere Rekonstruktionsanfragen innerhalb dieser Frist, statt unbegrenzte Verfuegbarkeit anzunehmen.
Anschluss: S-SG-039

### S-SG-039 Drittanbieter-Modell-Provider Security-Review durchführen

Trigger: Das Marketing-Team möchte einen neuen LLM-Provider (z. B. Mistral, Cohere, Google Gemini) über Langdock BYOK anbinden — der CISO verlangt vor der Freigabe einen standardisierten Security-Review, der über das reine DPA-Prüfen hinausgeht. (Quelle: A-22, sources/12 Q133)
Ziel: Einen reproduzierbaren Security-Review-Prozess für neue LLM-Provider-Anbindungen etablieren, der Sicherheitsarchitektur, Zertifizierungen, Breach-History und vertragliche Garantien systematisch bewertet.
Ergebnis: Ein Provider-Security-Review-Template mit Bewertungs-Dimensionen, Scoring-Skala und Freigabe-/Ablehnung-Schwellenwert.
Fähigkeit: Canvas / Document Editor für das Review-Template; Knowledge (Wissensordner) für die bestehende Provider-Vetting-Checkliste (S-SG-022), ISO-27001-Testat und DSGVO-Sub-Prozessor-Anforderungen; Web-Search zur Recherche öffentlich zugänglicher Sicherheits-Dokumentation des Providers.
Vorgehen:
1. Die Bewertungs-Dimensionen festlegen: (a) Zertifizierungen (ISO 27001, SOC 2 Typ II), (b) Datenresidenz und EU-Verarbeitungsoption, (c) Zero-Data-Retention-Garantie (vertraglich oder nur per AGB), (d) Breach-History (öffentlich bekannte Vorfälle der letzten 3 Jahre), (e) API-Sicherheitsarchitektur (TLS, Key-Isolation, Rate-Limiting).
2. Eine Scoring-Skala definieren: je Dimension 0–3 Punkte; Gesamtscore ≥12 = Freigabe empfohlen; 8–11 = Freigabe mit Auflagen; <8 = Ablehnung.
3. Die verfügbare öffentliche Sicherheitsdokumentation des Providers per Web-Search recherchieren und in das Template eintragen.
4. Den Review als wiederholbaren Prozess verankern: jeder neue Provider durchläuft das Template, Ergebnis wird im AI-Risiko-Register (S-SG-028) eingetragen.
Vorlage: Provider-Security-Review-Template:
1. Bewertungs-Dimensionen + Scoring-Skala + Freigabe-/Ablehnung-Schwellenwert.
2. Beleg-Standard - nur unterzeichnete Vertraege, Audit-Berichte, verifizierte Zertifikatsdatenbanken.
3. Wiederholungs-Frist - jaehrlich oder bei Major-Aenderungen; Register aktualisieren.
Artefakt: Provider-Security-Review-Template mit fünf Bewertungs-Dimensionen, Scoring-Skala und dokumentiertem Freigabe-Schwellenwert.
Fallstricke:
- Das Review verlässt sich ausschließlich auf Selbstauskunft des Providers (Whitepaper, Webseite) ohne unabhängige Verifikation — Mitigation: nur Informationen aus unterzeichneten Verträgen, Audit-Berichten oder öffentlich verifizierten Zertifikatsdatenbanken als Belege akzeptieren.
- Ein bestandener Review wird als dauerhafter Status behandelt — Mitigation: eine Wiederholungs-Frist festlegen (jährlich oder bei Major-Änderungen des Providers) und das AI-Risiko-Register entsprechend aktualisieren.
Empfehlung: Akzeptiere nur Informationen aus unterzeichneten Vertraegen, Audit-Berichten oder oeffentlich verifizierten Zertifikatsdatenbanken als Beleg, statt dich auf Provider-Selbstauskunft (Whitepaper, Webseite) zu verlassen. Lege eine Wiederholungs-Frist fest (jaehrlich oder bei Major-Aenderungen) und aktualisiere das AI-Risiko-Register, statt einen bestandenen Review als Dauerstatus zu behandeln.
Anschluss: S-SG-040

### S-SG-040 Österreichisches DSG neben DSGVO für Marketing-Aktivitäten einhalten

Trigger: Das Marketing-Team expandiert nach Österreich und der Wiener Datenschutzbeauftragte weist darauf hin, dass das österreichische Datenschutzgesetz (DSG) in bestimmten Punkten über die DSGVO hinausgeht — insbesondere bei der Verwendung besonderer Datenkategorien und dem Bildungsbereich. (Quelle: A-17, BDSG-Analogie)
Ziel: Die DSGVO-konforme Langdock-Konfiguration um die österreichischen DSG-Spezifika ergänzen, damit Marketing-Aktivitäten mit österreichischen Kundendaten keine nationalen Sonderregelungen verletzen.
Ergebnis: Eine DSG-Österreich-Gap-Analyse mit Ampel-Status je Anforderungskategorie und einem Maßnahmenplan für die österreichische Tochtergesellschaft.
Fähigkeit: Canvas / Document Editor für die Gap-Analyse; Knowledge (Wissensordner) für den bestehenden DSGVO-AVV, die DSG-Österreich-Vergleichstabelle und die DSGVO-TOMs; Web-Search zur Verifikation aktueller Datenschutzbehörden-Entscheidungen der österreichischen DSB.
Vorgehen:
1. Die DSG-Österreich-Spezifika auflisten, die über die DSGVO hinausgehen: erweitertes Auskunftsrecht (§ 1 DSG), Datenschutzbeschwerde bei der DSB, spezifische Regelungen für automatisierte Verarbeitung im Beschäftigtenkontext.
2. Per Web-Search aktuelle Entscheidungen der österreichischen Datenschutzbehörde (DSB) zu KI-Verarbeitung und Direktmarketing verifizieren.
3. Im Canvas je DSG-Spezifikum den Abdeckungsgrad durch den bestehenden DSGVO-AVV und die Langdock-TOMs bewerten (grün/gelb/rot).
4. Für rot-klassifizierte Punkte konkrete Maßnahmen ableiten: ergänzende Datenschutzerklärung auf Österreichisch, separate Beschwerde-Anlaufstelle benennen, Verarbeitungsverzeichnis um österreichische Spezifika erweitern.
Vorlage: DSG-Oesterreich-Gap-Analyse:
1. Ampel-Status je Anforderungskategorie + Massnahmenplan (oesterreichische Tochter).
2. Trennung - DSG Oesterreich ist nicht DSG Schweiz; eigener Analyse-Tab.
3. DSB-Praxis - aktuelle oesterreichische DSB-Beschluesse per Web-Search zitieren.
Artefakt: DSG-Österreich-Gap-Analyse mit Ampel-Status je Anforderungskategorie, verifizierter DSB-Entscheidungs-Referenz und priorisiertem Maßnahmenplan.
Fallstricke:
- Das DSG Österreich wird mit dem DSG Schweiz verwechselt — Mitigation: beide Gesetze als unterschiedliche Regelwerke mit eigenem Analyse-Tab führen; nie gemeinsam in einer Gap-Tabelle vermischen.
- Die österreichische DSB-Entscheidungspraxis zu KI-Marketing wird nicht berücksichtigt, obwohl sie von DSGVO-Entscheidungen abweichen kann — Mitigation: aktuelle DSB-Beschlüsse per Web-Search recherchieren und explizit im Dokument zitieren.
Empfehlung: Fuehre das DSG Oesterreich und das DSG Schweiz als unterschiedliche Regelwerke mit eigenem Analyse-Tab und vermische sie nie in einer Gap-Tabelle. Recherchiere die aktuelle oesterreichische DSB-Entscheidungspraxis zu KI-Marketing per Web-Search und zitiere sie explizit, da sie von DSGVO-Entscheidungen abweichen kann.
Anschluss: S-SG-041

### S-SG-041 BDSG-Spezifika für deutsches Beschäftigten-Marketing-Daten einhalten

Trigger: Das HR-Marketing-Team will Langdock nutzen, um interne Stellenanzeigen und Mitarbeiter-Referral-Kampagnen zu automatisieren — der Betriebsrat weist darauf hin, dass Beschäftigtendaten nach BDSG § 26 besonders geschützt sind und nicht ohne Weiteres in KI-Workflows fließen dürfen. (Quelle: sources/12 Q132, A-18)
Ziel: Die BDSG-§-26-Schranken für die Verarbeitung von Beschäftigtendaten im Marketing-KI-Kontext operativ umsetzen und sicherstellen, dass nur zulässige Verarbeitungszwecke (Begründung, Durchführung und Beendigung des Beschäftigungsverhältnisses) den Datenfluss in Langdock rechtfertigen.
Ergebnis: Eine BDSG-§-26-Compliance-Matrix für HR-Marketing-Use-Cases mit zulässigen und unzulässigen Datenflüssen und Alternativen-Vorschlägen.
Fähigkeit: Canvas / Document Editor für die Compliance-Matrix; Knowledge (Wissensordner) für BDSG-§-26-Grundlagen, bestehende Betriebsvereinbarung Digitalisierung und interne HR-Datenverarbeitungsrichtlinie.
Vorgehen:
1. Die geplanten HR-Marketing-Use-Cases inventarisieren: Stellenanzeigen-Generierung, Referral-Kampagnen-Texte, interner Newsletter, Onboarding-Content.
2. Im Canvas je Use-Case prüfen: welche Beschäftigtendaten fließen in den Langdock-Prompt (Namen, Abteilungen, Performance-Daten, Gehaltsgruppen)? Welcher Verarbeitungszweck nach BDSG § 26 rechtfertigt das?
3. Unzulässige Datenflüsse identifizieren: Performance-Daten oder Gehaltsgruppen in Segmentierungs-Prompts ohne Zweckbezug zum Beschäftigungsverhältnis sind unzulässig.
4. Alternativen vorschlagen: anonymisierte Aggregat-Daten statt Personendaten, Opt-in-basierte Referral-Listen statt automatisierter Beschäftigten-Segmentierung.
Vorlage: BDSG-Paragraf-26-Compliance-Matrix (HR-Marketing):
1. Zulaessige vs. unzulaessige Datenfluesse + Alternativen-Vorschlaege.
2. Geltungsbereich - auch Bewerber-Daten (ab Bewerbungseingang).
3. Rechtsgrundlage - Einwilligung kritisch; durch Betriebsvereinbarung absichern.
Artefakt: BDSG-§-26-Compliance-Matrix mit zulässigen und unzulässigen Datenflüssen und priorisierten Alternativenvorschlägen.
Fallstricke:
- BDSG § 26 wird nur auf das Arbeits- nicht aber auf das Bewerberverhältnis angewendet — Mitigation: explizit prüfen, ob Bewerber-Daten im Talent-Pipeline-Marketing ebenfalls unter § 26 fallen (ja, bereits bei Bewerbungseingang).
- Die Einwilligung nach BDSG § 26 (3) wird als gleichwertige Rechtsgrundlage angesehen — Mitigation: darauf hinweisen, dass Einwilligungen im Beschäftigtenkontext wegen des Machtgefälles kritisch zu bewerten sind und durch Betriebsvereinbarung abgesichert werden sollten.
Empfehlung: Pruefe explizit, ob Bewerber-Daten im Talent-Pipeline-Marketing unter BDSG Paragraf 26 fallen (ja, bereits ab Bewerbungseingang), statt die Norm nur auf das Arbeitsverhaeltnis anzuwenden. Sichere Einwilligungen im Beschaeftigtenkontext ueber eine Betriebsvereinbarung ab, da sie wegen des Machtgefaelles kritisch zu bewerten sind.
Anschluss: S-SG-042

### S-SG-042 Champion-Programm für sichere KI-Adoption im Marketing aufbauen

Trigger: Der Rollout von Langdock ist technisch abgeschlossen, aber die Adoption stagniert — Mitarbeitende nutzen die Plattform sporadisch und fallen in alte Shadow-AI-Gewohnheiten zurück, weil niemand lokal als Ansprechperson für Sicherheits- und Compliance-Fragen zur Verfügung steht. (Quelle: A-37, A-39)
Ziel: Ein Champion-Netzwerk aufbauen, das Sicherheits- und Governance-Kompetenz dezentral in das Marketing-Team trägt — mit klarer Rolle, definierten Verantwortlichkeiten und einem regelmäßigen Austauschformat, das die AUP (S-SG-027) und den AI-Governance-1-Pager (S-SG-023) lebendig hält.
Ergebnis: Ein Champion-Programm-Dokument mit Rollen-Definition, Einführungs-Curriculum, monatlichem Meeting-Format und Eskalationspfad für Sicherheitsfragen.
Fähigkeit: Canvas / Document Editor für das Programm-Dokument; Knowledge (Wissensordner) für die AUP, den AI-Governance-1-Pager, das Onboarding-Curriculum und das Shadow-AI-Erkennungs-Programm.
Vorgehen:
1. Die Champion-Rolle definieren: freiwillig oder ernannt, je Team-Bereich ein Champion (Content, Performance, Brand, PR), Zeitaufwand ~2 h/Monat, kein technisches Background erforderlich.
2. Das Einführungs-Curriculum zusammenstellen: (a) AUP-Pflichtlektüre, (b) Compliance-Szenarien aus S-SG-027 und S-SG-023, (c) Shadow-AI-Erkennungs-Demo, (d) Eskalationspfad bei Sicherheitsfragen.
3. Das monatliche Meeting-Format definieren: 30 Minuten, Round-Robin (1 Demo neuer Langdock-Feature 5 min, 2 Compliance-Fragen 15 min, 1 Shadow-AI-Update 5 min, 1 Ankündigung 5 min).
4. Den Eskalationspfad dokumentieren: Champion → CISO/DSB bei Datenschutzfragen, Champion → IT-Security bei Sicherheitsvorfällen, Champion → Marketing-Direktion bei strategischen Entscheidungen.
Vorlage: KI-Champion-Programm (Governance):
1. Rollen-Definition + Einfuehrungs-Curriculum + monatliches Meeting-Format.
2. Eskalationspfad fuer Sicherheitsfragen.
3. Entlastung - ~2 h/Monat offiziell in Stellenbeschreibung/OKR.
Artefakt: Champion-Programm-Dokument mit Rollen-Definition, 4-Modul-Curriculum, Meeting-Format und dokumentiertem Eskalationspfad.
Fallstricke:
- Champions werden ernannt, ohne Entlastung von anderen Aufgaben, was zu Burnout und Abbruch führt — Mitigation: den Zeitaufwand (~2 h/Monat) realistisch kommunizieren und als offiziellen Teil der Stellenbeschreibung oder als OKR aufnehmen.
- Das Champion-Netzwerk wird nicht in den Governance-Zyklus eingebunden und verliert Relevanz — Mitigation: Champions als Pflicht-Teilnehmende in das quartalsweise AI-Risiko-Register-Review (S-SG-028) einbeziehen.
Empfehlung: Kommuniziere den Zeitaufwand (~2 h/Monat) realistisch und nimm ihn als offiziellen Teil der Stellenbeschreibung oder als OKR auf - Champions ohne Entlastung brennen aus und brechen ab. Bind die Champions als Pflicht-Teilnehmende in das quartalsweise AI-Risiko-Register-Review (S-SG-028) ein, sonst verliert das Netzwerk Relevanz.
Anschluss: S-SG-043

### S-SG-043 KI-Ethik-Leitlinien für DACH-Marketing-Kommunikation formulieren

Trigger: Die Marketing-Direktorin wird von der Unternehmensführung gebeten, eine öffentlich kommunizierbare KI-Ethik-Position für das Marketing zu formulieren — die auf konkreten Unternehmenspraktiken basiert, nicht auf Marketing-Phrasen, und im Einklang mit dem AI-Governance-1-Pager (S-SG-023) steht. (Quelle: A-50, A-48)
Ziel: Eine authentische, belegbare KI-Ethik-Position erarbeiten, die das Unternehmen von "AI-Washing" abgrenzt und sowohl für externe Stakeholder als auch für Mitarbeitende glaubwürdig ist.
Ergebnis: Eine KI-Ethik-Positionierung als 500-Wörter-Statement mit vier belegten Kernsätzen, konkreten Praxis-Beispielen und einem Selbst-Verpflichtungs-Mechanismus.
Fähigkeit: Canvas / Document Editor für das Statement; Knowledge (Wissensordner) für AI-Governance-1-Pager, AUP, HITL-Gate-Matrix und EU-AI-Act-Grundsätze.
Vorgehen:
1. Vier Kernsaetze formulieren und je gegen implementierte Massnahmen abgleichen.
2. Konkrete unternehmensspezifische, datierte Praxis-Beispiele ergaenzen.
3. Selbst-Verpflichtungs-Mechanismus definieren; als 500-Woerter-Statement finalisieren.
Vorlage: KI-Ethik-Positionierung (500 Woerter):
1. Vier belegte Kernsaetze - je gegen implementierte Massnahmen abgeglichen.
2. Konkrete Praxis-Beispiele - unternehmensspezifisch, datiert.
3. Selbst-Verpflichtungs-Mechanismus.
Artefakt: KI-Ethik-Statement mit vier belegten Kernsätzen, konkreten Praxis-Nachweisen und dokumentiertem Selbst-Verpflichtungs-Mechanismus.
Fallstricke:
- Das Statement enthält Versprechen, die durch interne Praktiken noch nicht gedeckt sind — Mitigation: jeden Kernsatz gegen die tatsächlich implementierten Maßnahmen abgleichen und unerfüllte Punkte als "in Vorbereitung" kennzeichnen, nicht als erfüllt ausgeben.
- Das Statement klingt generisch und unterscheidet sich nicht von Wettbewerber-Boilerplates — Mitigation: konkrete unternehmensspezifische Beispiele (z. B. "Seit März 2025 werden alle synthetischen Inhalte mit #KI-generiert gekennzeichnet") statt abstrakter Formulierungen verwenden.
Empfehlung: Gleiche jeden Kernsatz gegen die tatsaechlich implementierten Massnahmen ab und kennzeichne unerfuellte Punkte als 'in Vorbereitung', statt Versprechen auszugeben, die interne Praktiken noch nicht decken. Verwende konkrete unternehmensspezifische Beispiele (z. B. 'Seit Maerz 2025 werden alle synthetischen Inhalte mit #KI-generiert gekennzeichnet') statt abstrakter Formulierungen, die sich nicht von Wettbewerber-Boilerplates unterscheiden.
Anschluss: S-SG-044

### S-SG-044 Notfallplan für Langdock-Plattformausfall im Marketing operationalisieren

Trigger: Der Betrieb ist während einer Hochkampagnen-Phase für mehrere Stunden ausgefallen — das Marketing-Team hatte keinen dokumentierten Fallback-Plan und verlor wertvolle Produktionsstunden. Jetzt soll ein Business-Continuity-Plan für den KI-Workspace-Ausfall erstellt werden. (Quelle: A-44, ISO 27001 A.17)
Ziel: Einen BCP-Abschnitt für den Langdock-Ausfall erstellen, der die kritischsten Marketing-Workflows mit Fallback-Optionen ausstattet und das Team handlungsfähig hält, ohne in ungenehmigtes Shadow-AI auszuweichen.
Ergebnis: Ein BCP-Abschnitt "KI-Workspace-Ausfall" mit Kritikalitäts-Ranking der Workflows, Fallback-Maßnahmen und 2-Stunden-Wiederherstellungs-Protokoll.
Fähigkeit: Canvas / Document Editor für den BCP-Abschnitt; Knowledge (Wissensordner) für das Workflow-Inventar, die Vendor-Lock-in-Assessment (S-SG-017) und die AUP (S-SG-027).
Vorgehen:
1. Das Workflow-Inventar nach Geschäftskritikalität sortieren: Tier-1 (darf nicht ausfallen: automatisierter Kunden-E-Mail-Versand, Social-Media-Freigabe), Tier-2 (darf 2–4 h ausfallen: Content-Drafts, interne Berichte), Tier-3 (darf 1 Tag ausfallen: Recherche-Tasks).
2. Je Tier-1-Workflow einen genehmigten Fallback definieren: Offline-Kopie der wichtigsten 3 Agenten-System-Prompts als Markdown-Dokument, direkter Zugriff auf Anthropic/OpenAI-API über firmeneigene BYOK-Keys, temporäre manuelle Prozess-Beschreibung.
3. Das 2-Stunden-Wiederherstellungs-Protokoll formulieren: 0–30 min Statusprüfung (status.langdock.com), 30–60 min Fallback-Aktivierung, 60–90 min Eskalation an Account-Manager, 90–120 min Management-Information.
4. Den Plan halbjährlich testen: 1× pro Jahr unangekündigter Drill, Ergebnis in das AI-Risiko-Register (S-SG-028) eintragen.
Vorlage: BCP-Abschnitt 'KI-Workspace-Ausfall':
1. Kritikalitaets-Ranking der Workflows.
2. Fallback-Massnahmen - nur genehmigte (BYOK-Direktzugriff, manuelle Prozesse), kein Consumer-KI.
3. 2-Stunden-Wiederherstellungs-Protokoll - BYOK-Schluessel im Passwort-Manager.
Artefakt: BCP-Abschnitt "KI-Workspace-Ausfall" mit Tier-Klassifikation, Fallback-Maßnahmen und 2-Stunden-Protokoll.
Fallstricke:
- Der Fallback-Plan sieht vor, während des Ausfalls ungenehmigtes Consumer-KI zu nutzen — Mitigation: den Fallback explizit auf genehmigte Alternativen (direkter API-Zugriff über BYOK, manuelle Prozesse) beschränken und in der AUP verankern.
- Das 2-Stunden-Protokoll setzt voraus, dass BYOK-Schlüssel dem Team bekannt sind — Mitigation: BYOK-Schlüssel in einem Passwort-Manager mit eingeschränktem Zugriff hinterlegen und die Zugriffsprozedur im BCP dokumentieren.
Empfehlung: Beschraenke den Fallback explizit auf genehmigte Alternativen (direkter API-Zugriff ueber BYOK, manuelle Prozesse) und verankere das in der AUP, statt waehrend des Ausfalls ungenehmigtes Consumer-KI zu nutzen. Hinterlege BYOK-Schluessel in einem Passwort-Manager mit eingeschraenktem Zugriff und dokumentiere die Zugriffsprozedur im BCP, da das 2-Stunden-Protokoll deren Verfuegbarkeit voraussetzt.
Anschluss: S-SG-045

### S-SG-045 Gesamtreview: Security-und-Governance-Reifegrad des Marketing-Workspaces messen

Trigger: Nach einem Jahr Langdock-Betrieb verlangt der Vorstand einen Nachweis, dass der Sicherheits- und Governance-Reifegrad des Marketing-Workspaces systematisch gewachsen ist — und einen strukturierten Plan für die nächste Reifegradsstufe. (Quelle: A-36, A-50, ISO 27001 A.18)
Ziel: Den aktuellen Security-und-Governance-Reifegrad des Workspaces anhand eines Maturity-Modells messen, Lücken identifizieren und einen priorisierten Roadmap für die nächste Stufe erstellen — als Executive-Präsentations-Grundlage.
Ergebnis: Ein Maturity-Assessment-Report mit Reifegradpunkten je Dimension, Gap-Analyse und priorisierter 12-Monats-Roadmap.
Fähigkeit: Canvas / Document Editor für den Report; Knowledge (Wissensordner) für alle relevanten Governance-Dokumente aus den S-SG-Szenarien 001–044, das AI-Risiko-Register (S-SG-028) und die HITL-Gate-Matrix (S-SG-021).
Vorgehen:
1. Das Maturity-Modell mit fünf Dimensionen und vier Reifegradstufen definieren: Dimensionen = (a) Datenschutz & Compliance, (b) Zugriffskontrolle & Identity, (c) Incident-Response & Monitoring, (d) KI-spezifische Governance, (e) Kulturelle Adoption. Stufen = Initial (1), Managed (2), Defined (3), Optimized (4).
2. Den Ist-Zustand je Dimension mit Belegen aus den implementierten S-SG-Maßnahmen bewerten: z. B. "Datenschutz & Compliance = Stufe 3, Nachweis: AVV (S-SG-001), DSFA (S-SG-002), Retention-Policy (S-SG-024)".
3. Lücken zu Stufe 4 identifizieren: welche Dimensionen sind noch auf Stufe 2 (z. B. KI-spezifische Governance ohne automatisiertes Monitoring)?
4. Eine priorisierte 12-Monats-Roadmap entwickeln: die drei wichtigsten Maßnahmen je Lücken-Dimension mit Verantwortlichkeit, Budget-Schätzung und messbarem KPI.
Vorlage: KI-Governance-Maturity-Assessment:
1. Reifegradpunkte je Dimension + Gap-Analyse.
2. Externe Gegenperspektive - CISO/unabhaengiger Reviewer; Belege je Stufe verlinkt.
3. 12-Monats-Roadmap - max. 3 Massnahmen je Dimension mit Budget-Rahmen.
Artefakt: Maturity-Assessment-Report mit Reifegradpunkten je Dimension, belegten Ist-Stufen und priorisierter 12-Monats-Roadmap.
Fallstricke:
- Das Maturity-Assessment wird zu optimistisch ausgefüllt, weil die Bewertenden auch die Implementierenden sind — Mitigation: einen externen Reviewer (CISO oder unabhängigen Berater) als Gegenperspektive einbeziehen und Belege für jede Stufen-Einstufung verlinken.
- Die 12-Monats-Roadmap enthält zu viele Maßnahmen und wird unrealistisch — Mitigation: auf maximal drei Maßnahmen je Dimension beschränken und jede mit einem realistischen Budget-Rahmen versehen, damit der Vorstand priorisieren kann.
Empfehlung: Bezieh einen externen Reviewer (CISO oder unabhaengigen Berater) als Gegenperspektive ein und verlinke Belege je Stufen-Einstufung - ein Self-Assessment durch die Implementierenden faellt zu optimistisch aus. Beschraenke die 12-Monats-Roadmap auf maximal drei Massnahmen je Dimension mit realistischem Budget-Rahmen, damit der Vorstand priorisieren kann.
Anschluss: S-SG-046

### S-SG-046 PII in Marketing-Prompts erkennen und maskieren, bevor sie das Modell erreichen

Trigger: Das Marketing-Team kopiert routinemäßig CRM-Exporte mit echten Kundennamen, E-Mail-Adressen und Telefonnummern in Langdock-Prompts, um Personalisierungs-Vorlagen zu testen — der Datenschutzbeauftragte moniert, dass die PII-Verarbeitung nicht als Verarbeitungszweck im AVV steht. (Quelle: sources/12 Q128, A-14)
Ziel: Einen PII-Erkennungs-und-Maskierungs-Workflow etablieren, der personenbezogene Daten vor dem Modell-Aufruf pseudonymisiert — damit Kampagnen-Prompts DSGVO-konform bleiben, ohne den Personalisierungsnutzen zu verlieren.
Ergebnis: Eine PII-Maskierungs-Richtlinie mit Erkennungs-Checkliste, Pseudonymisierungs-Konventionen und einem Langdock-Workflow-Schritt zur automatisierten Maskierung.
Fähigkeit: Workflow Builder (Preprocessing-Schritt mit Regex/LLM-PII-Filter vor dem eigentlichen Agent-Aufruf); Canvas / Document Editor für die Richtlinie; Knowledge (Wissensordner) für DSGVO-Art.-4-PII-Definition und interne Datenklassifikation.
Vorgehen:
1. PII-Erkennungs-Checkliste und Pseudonymisierungs-Konventionen definieren.
2. Maskierungs-Schritt regelbasiert/lokal konfigurieren (nicht ueber Cloud-LLM mit PII).
3. Mapping-Dokument sicher und getrennt vom Prompt-Flow ablegen.
Vorlage: PII-Maskierungs-Richtlinie:
1. Erkennungs-Checkliste + Pseudonymisierungs-Konventionen.
2. Maskierungs-Schritt - regelbasiert (Regex) oder lokal (on-prem NER), NICHT ueber Cloud-LLM mit PII.
3. Mapping-Dokument - Platzhalter <-> Original, sicher und getrennt vom Prompt-Flow.
Artefakt: PII-Maskierungs-Richtlinie mit Kategorienliste, Platzhalter-Konventionen und beschriebenem Workflow-Preprocessing-Schritt.
Fallstricke:
- Der PII-Erkennungs-Schritt selbst verarbeitet die Rohdaten mit PII im Modell und erzeugt so den Datenschutzproblem, das er lösen soll — Mitigation: den Maskierungs-Schritt regelbasiert (Regex) oder lokal (on-premise NER-Modell) ausführen, nicht über einen Cloud-LLM-Aufruf mit PII.
- Pseudonymisierte Platzhalter werden nicht in Ausgaben rückverfolgt, sodass personalisierte Ergebnisse nicht den richtigen Empfängern zugeordnet werden können — Mitigation: ein Mapping-Dokument (Platzhalter ↔ Originalwert) sicher und getrennt vom Prompt-Flow aufbewahren.
Empfehlung: Fuehre den Maskierungs-Schritt regelbasiert (Regex) oder lokal (on-premise NER-Modell) aus, nicht ueber einen Cloud-LLM-Aufruf mit PII - sonst erzeugt der Erkennungs-Schritt selbst das Datenschutzproblem, das er loesen soll. Bewahre ein Mapping-Dokument (Platzhalter <-> Originalwert) sicher und getrennt vom Prompt-Flow auf, damit personalisierte Ergebnisse den richtigen Empfaengern zugeordnet werden koennen.
Anschluss: S-SG-047

### S-SG-047 Datenklassifikations-Framework für Marketing-Daten einführen

Trigger: Der CISO stellt fest, dass Marketing-Mitarbeitende unveröffentlichte Kampagnen-Strategien, öffentliche Wettbewerber-Analysen und Kundenlisten alle gleich behandeln und in denselben Wissensordner laden — ein fehlendes Klassifikations-Framework führt zu unkontrolliertem Datenzugriff. (Quelle: sources/12 Q126, ISO 27001 A.8)
Ziel: Ein praxistaugliches Datenklassifikations-Framework für Marketing-Daten einführen, das vier Schutzklassen definiert, die zulässigen Langdock-Verarbeitungsschritte je Klasse festlegt und die Wissensordner-Struktur neu ordnet.
Ergebnis: Ein Datenklassifikations-Framework-Dokument mit vier Schutzklassen, Beispielen aus dem Marketing-Alltag und einer Wissensordner-Strukturvorlage je Klasse.
Fähigkeit: Canvas / Document Editor für das Framework; Knowledge (Wissensordner) für ISO-27001-A.8-Anforderungen, bestehende IT-Datenklassifikationsrichtlinie und RBAC-Konfiguration (S-SG-005).
Vorgehen:
1. Vier Schutzklassen mit Marketing-Alltags-Beispielen definieren.
2. Wissensordner-Strukturvorlage je Klasse erstellen.
3. Zwei schnelle Entscheidungsfragen als Alltags-Filter festlegen.
Vorlage: Datenklassifikations-Framework:
1. Vier Schutzklassen - mit Marketing-Alltags-Beispielen.
2. Wissensordner-Strukturvorlage je Klasse.
3. Alltags-Filter - zwei schnelle Entscheidungsfragen.
Artefakt: Datenklassifikations-Framework mit vier Schutzklassen, Marketing-Beispielen und Wissensordner-Strukturvorlage je Klasse.
Fallstricke:
- Mitarbeitende klassifizieren Dokumente zu niedrig, um Zugangsbeschränkungen zu umgehen — Mitigation: die Klassifikation stichprobenartig durch Champion-Reviews prüfen und Fehlklassifikationen als Lernfall kommunizieren, nicht als Disziplinarmaßnahme.
- Die vier Klassen werden zu feinkörnig und der Aufwand lähmt die tägliche Arbeit — Mitigation: zwei klare Entscheidungsfragen für den Alltag formulieren ("Würde mich dieser Inhalt belasten, wenn er öffentlich wird?" und "Enthält er unveröffentlichte Unternehmensstrategien?") als schnellen Filter.
Empfehlung: Pruefe die Klassifikation stichprobenartig durch Champion-Reviews und kommuniziere Fehlklassifikationen als Lernfall (nicht als Disziplinarmassnahme), da Mitarbeitende sonst zu niedrig klassifizieren, um Zugangsbeschraenkungen zu umgehen. Formuliere zwei schnelle Entscheidungsfragen ('Wuerde mich der Inhalt belasten, wenn er oeffentlich wird?' und 'Enthaelt er unveroeffentlichte Strategien?') als Alltags-Filter, statt die vier Klassen zu feinkoernig zu machen.
Anschluss: S-SG-048

### S-SG-048 Privacy-by-Design-Nachweis für neue KI-Features erbringen

Trigger: Das Produktteam will eine neue Personalisierungs-Funktion auf Basis von Langdock-Agenten einführen, die Nutzungsverhalten aus dem CRM auswertet — der Datenschutzbeauftragte verlangt einen Privacy-by-Design-Nachweis (Art. 25 DSGVO), bevor die Feature-Entwicklung beginnt. (Quelle: sources/12 Q128, A-13)
Ziel: Privacy-by-Design nicht als nachträglichen Audit-Schritt, sondern als integralen Bestandteil des Feature-Entwicklungsprozesses etablieren — mit einer standardisierten Vorlage, die das Team vor der ersten Codezeile durchläuft.
Ergebnis: Eine Privacy-by-Design-Checkliste für neue KI-Features mit acht Prinzipien, Ampel-Bewertung und dokumentiertem Nachweis je Prinzip.
Fähigkeit: Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für die sieben Privacy-by-Design-Prinzipien nach Cavoukian, Art.-25-DSGVO-Anforderungen und die DSFA-Vorlage (S-SG-002).
Vorgehen:
1. Die acht Bewertungsdimensionen definieren: die sieben Cavoukian-Prinzipien (Proaktivität, Datenschutz als Standard, Datenschutz eingebettet, volle Funktionalität, End-to-end-Sicherheit, Sichtbarkeit, Nutzerorientierung) plus als achtes die Langdock-spezifische Dimension "Modell-Trainingsausschluss nachgewiesen".
2. Je Dimension die konkrete Umsetzung im geplanten Feature beschreiben: z. B. "Datenschutz als Standard = segmentierte Kundendaten werden vor Übergabe an Agent pseudonymisiert (vgl. S-SG-046)".
3. Die Ampel-Bewertung vornehmen: grün = vollständig implementiert und belegt; gelb = implementiert, Nachweis noch ausstehend; rot = nicht implementiert, Blocker vor Feature-Launch.
4. Die ausgefüllte Checkliste als Pflicht-Anhang an das DSFA-Dokument (S-SG-002) knüpfen und vom Datenschutzbeauftragten gegenzeichnen lassen.
Vorlage: Privacy-by-Design-Checkliste (neue KI-Features):
1. Acht Prinzipien + Ampel-Bewertung + dokumentierter Nachweis je Prinzip.
2. Re-Review-Trigger - bei wesentlichen Design-Aenderungen.
3. DSB-Gegensignatur als Pflicht.
Artefakt: Privacy-by-Design-Checkliste mit acht Dimensionen, Ampel-Bewertung und dokumentiertem Nachweis-Feld je Prinzip.
Fallstricke:
- Privacy-by-Design wird als einmaliger Stempel behandelt, obwohl sich das Feature-Design während der Entwicklung ändert — Mitigation: einen Re-Review-Trigger bei wesentlichen Design-Änderungen in die Checkliste aufnehmen.
- Die Checkliste wird intern als Bürde wahrgenommen und sabotiert, indem alle Punkte pauschal auf "grün" gesetzt werden — Mitigation: die Checkliste durch den Datenschutzbeauftragten stichprobenartig im Review prüfen lassen und Gegensignatur als Pflicht verankern.
Empfehlung: Nimm einen Re-Review-Trigger bei wesentlichen Design-Aenderungen in die Checkliste auf, statt Privacy-by-Design als einmaligen Stempel zu behandeln - das Feature-Design aendert sich waehrend der Entwicklung. Lass die Checkliste durch den Datenschutzbeauftragten stichprobenartig pruefen und verankere eine Gegensignatur als Pflicht, damit nicht alle Punkte pauschal auf 'gruen' gesetzt werden.
Anschluss: S-SG-049

### S-SG-049 Zugriffs-Review-Kadenz für den Langdock-Workspace einrichten

Trigger: Das ISO-27001-Audit zeigt, dass seit dem Go-live vor zwölf Monaten keine systematische Überprüfung der Workspace-Zugriffsrechte stattgefunden hat — mehrere ausgeschiedene Mitarbeitende haben noch aktive Viewer-Rollen auf sensiblen Wissensordnern, obwohl ihr SCIM-Account deaktiviert ist. (Quelle: ISO 27001 A.9, S-SG-005)
Ziel: Eine wiederkehrende Zugriffs-Review-Kadenz etablieren, die RBAC-Konfigurationen quartalsweise mit dem aktuellen SCIM-Stand abgleicht und Über-Berechtigungen systematisch bereinigt — bevor sie im nächsten Audit auffallen.
Ergebnis: Ein Zugriffs-Review-Protokoll mit Schritt-für-Schritt-Vorgehen, Verantwortlichkeits-Matrix und Eskalationspfad für gefundene Anomalien.
Fähigkeit: Canvas / Document Editor für das Protokoll; Knowledge (Wissensordner) für den RBAC-Ist-Zustand-Export, SCIM-Konfigurationsdokumentation (S-SG-007) und ISO-27001-A.9-Anforderungen.
Vorgehen:
1. Den Review-Scope definieren: alle Ressourcen-Ebenen (Workspace, Folder, Agent, Workflow) und alle Rollen-Typen (Owner, Editor, Viewer, Admin); Frequenz quartalsweise plus ad hoc nach größeren Personalwechseln.
2. Den Abgleich-Prozess beschreiben: SCIM-Gruppenmitgliedschaft aus Entra ID exportieren → Langdock-Rollen-Export → Delta-Vergleich → Anomalie-Liste (Benutzer in Langdock ohne aktiven SCIM-Account; höhere Rolle als Gruppen-Mapping vorsieht).
3. Die Verantwortlichkeits-Matrix erstellen: Review-Durchführung (IT-Admin), Freigabe-Entscheidung bei Anomalien (CISO), Kommunikation an Betroffene (Marketing-Direktion).
4. Den Eskalationspfad für kritische Anomalien definieren: aktiver Langdock-Account ohne SCIM-Eintrag → sofortige Deaktivierung ohne Wartezeit auf regulären Review-Zyklus.
Vorlage: Zugriffs-Review-Protokoll:
1. Schritt-fuer-Schritt-Vorgehen + Verantwortlichkeits-Matrix + Eskalationspfad.
2. Pflicht-Scope - alle vier Ressourcen-Ebenen (Workspace, Gruppe, Agent, Folder).
3. Bidirektionaler Abgleich - Langdock (aktive Rollen) + Entra ID (aktive Accounts).
Artefakt: Zugriffs-Review-Protokoll mit Abgleich-Prozess, Verantwortlichkeits-Matrix und Eskalationspfad für Anomalie-Klassen.
Fallstricke:
- Der Review wird nur auf Workspace-Ebene durchgeführt und lässt Agenten- und Folder-spezifische Berechtigungen aus — Mitigation: alle vier Ressourcen-Ebenen explizit im Protokoll als Pflicht-Scope verankern.
- Deaktivierte SCIM-Accounts erscheinen nicht im Langdock-Rollen-Export, wenn die SCIM-Provisionierung fehlerhaft konfiguriert war — Mitigation: den Abgleich sowohl von Langdock aus (aktive Rollen) als auch von Entra ID aus (aktive Accounts) bidirektional durchführen.
Empfehlung: Verankere alle vier Ressourcen-Ebenen (Workspace, Gruppe, Agent, Folder) explizit als Pflicht-Scope, statt den Review nur auf Workspace-Ebene durchzufuehren. Fuehre den Abgleich bidirektional durch (von Langdock aus UND von Entra ID aus), da deaktivierte SCIM-Accounts bei fehlerhafter Provisionierung nicht im Langdock-Rollen-Export erscheinen.
Anschluss: S-SG-050

### S-SG-050 Insider-Bedrohungsrisiken für KI-Admin-Accounts bewerten

Trigger: Der CISO fragt nach einer strukturierten Bewertung des Insider-Bedrohungsrisikos für die Langdock-Workspace-Administratoren im Marketing — ein Workspace-Admin könnte im Worst Case alle Agenten-System-Prompts exportieren, RBAC deaktivieren oder den AVV kündigen, ohne dass ein Gegencheck existiert. (Quelle: ISO 27001 A.7, A-36)
Ziel: Das privilegierte Zugangsrisiko für Workspace-Admins durch das Vier-Augen-Prinzip, minimale Admin-Accounts und Audit-Log-Alarme auf Admin-Aktionen auf ein akzeptables Niveau reduzieren.
Ergebnis: Ein Insider-Threat-Mitigation-Dokument für KI-Admin-Accounts mit Vier-Augen-Regelung, minimaler Admin-Zahl und konfigurierten Audit-Alarm-Szenarien.
Fähigkeit: Canvas / Document Editor für das Mitigation-Dokument; Knowledge (Wissensordner) für die Audit-Logs-Dokumentation (S-SG-008), RBAC-Konfiguration und ISO-27001-A.9.2-Anforderungen (privilegierter Zugang).
Vorgehen:
1. Vier-Augen-Regelung auf alle Admin-Systeme (inkl. BYOK-Key-Manager, Provider-API) ausweiten.
2. Minimale Admin-Zahl mit Nachfolge-Benennungspflicht festlegen.
3. Audit-Alarm-Szenarien konfigurieren.
Vorlage: Insider-Threat-Mitigation (KI-Admin-Accounts):
1. Vier-Augen-Regelung - auf alle Admin-Systeme inkl. BYOK-Key-Manager + Provider-API-Konsole.
2. Minimale Admin-Zahl - mit Nachfolge-Benennungspflicht.
3. Konfigurierte Audit-Alarm-Szenarien.
Artefakt: Insider-Threat-Mitigation-Dokument mit Schadenpotenzial-Tabelle für Admin-Aktionen, Vier-Augen-Regelung und konfigurierten Audit-Alarmen.
Fallstricke:
- Das Vier-Augen-Prinzip wird nur für die Plattform definiert, nicht für den zugehörigen BYOK-API-Schlüssel-Manager — Mitigation: die Vier-Augen-Regelung explizit auf alle Systeme ausweiten, die Admin-Zugriff auf Langdock-Funktionalität ermöglichen (Passwort-Manager, API-Konsole des Providers).
- Die minimale Admin-Zahl wird unterschritten, wenn ein Admin das Unternehmen verlässt und der Account deaktiviert wird, bevor ein Nachfolger ernannt ist — Mitigation: eine Nachfolge-Benennungspflicht als Teil des Offboarding-Prozesses (S-SG-019) verankern.
Empfehlung: Weite die Vier-Augen-Regelung explizit auf alle Systeme aus, die Admin-Zugriff auf Langdock-Funktionalitaet ermoeglichen (Passwort-Manager, Provider-API-Konsole), nicht nur auf die Plattform. Verankere eine Nachfolge-Benennungspflicht im Offboarding-Prozess (S-SG-019), damit die minimale Admin-Zahl nicht unterschritten wird, wenn ein Admin das Unternehmen verlaesst.
Anschluss: S-SG-051

### S-SG-051 NDA-Compliance-Check für KI-assistierte Inhalte sicherstellen

Trigger: Das Marketing-Team nutzt Langdock, um Pressemitteilungen und Fallstudien für einen Kooperationspartner zu erstellen — der Rechtsanwalt des Partners weist darauf hin, dass das bestehende NDA den Einsatz von KI-Tools für partnerschaftliche Inhalte nicht explizit regelt und fragt, ob vertrauliche Partner-Informationen in KI-Modelle geflossen sind. (Quelle: sources/12 Q127, A-43)
Ziel: Einen NDA-Compliance-Prozess für KI-assistierte Inhalte aufbauen, der vor dem Einsatz von Langdock für partnerschaftliche oder kundenvertrauliche Projekte prüft, ob das NDA den KI-Einsatz erlaubt, und bei Lücken eine Ergänzungsklausel vorschlägt.
Ergebnis: Eine NDA-KI-Compliance-Checkliste mit Prüffragen, einer Muster-Ergänzungsklausel für KI-Einsatz und einem Freigabe-Dokumentationsschritt.
Fähigkeit: Canvas / Document Editor für die Checkliste und Musterklausel; Knowledge (Wissensordner) für das bestehende NDA-Muster, die Datenhaltungsgarantien (Trainingsausschluss) und die Acceptable-Use-Policy (S-SG-027).
Vorgehen:
1. Prueffragen formulieren (deckt der NDA KI-Verarbeitung ab?).
2. Muster-Ergaenzungsklausel als internen Entwurf vorbereiten; Rechtsabteilungs-Freigabe vor Versand.
3. NDA-Review als Pflicht-Gate in den Kampagnen-Intake einbauen.
Vorlage: NDA-KI-Compliance-Checkliste:
1. Prueffragen - deckt der NDA KI-Verarbeitung ab?
2. Muster-Ergaenzungsklausel (KI-Einsatz) - als interner Entwurf markiert.
3. Freigabe-Dokumentationsschritt.
Artefakt: NDA-KI-Compliance-Checkliste mit Prüffragen, Muster-Ergänzungsklausel und dokumentiertem Freigabe-Schritt.
Fallstricke:
- Die Muster-Ergänzungsklausel wird ohne Rechtsanwalt direkt an den Partner geschickt, was den NDA-Verhandlungsprozess verkompliziert — Mitigation: die Klausel explizit als internen Entwurf markieren und die Freigabe durch die eigene Rechtsabteilung vor Versand vorschreiben.
- Das NDA-Review wird nur einmalig beim Vertragsabschluss durchgeführt, aber nicht bei jeder neuen KI-Kampagne wiederholt — Mitigation: den NDA-Review-Schritt als Pflicht-Gate in den Kampagnen-Intake-Workflow einbauen, nicht nur als einmaligen Vertragsschritt.
Empfehlung: Markiere die Muster-Ergaenzungsklausel explizit als internen Entwurf und schreibe die Freigabe durch die eigene Rechtsabteilung vor Versand vor, statt sie direkt an den Partner zu schicken. Baue den NDA-Review als Pflicht-Gate in den Kampagnen-Intake-Workflow ein, nicht nur als einmaligen Vertragsschritt, da neue KI-Kampagnen ihn sonst nicht wiederholen.
Anschluss: S-SG-052

### S-SG-052 Content-Rights-Clearance-Workflow vor Wissensordner-Upload etablieren

Trigger: Das Content-Team lädt externe Marktforschungsberichte, Agentur-Studien und lizenzierte Branchenreports in den Langdock-Wissensordner, ohne zu prüfen, ob die Lizenz die Nutzung als Trainings- oder Retrieval-Grundlage für KI-Systeme erlaubt — das IP-Team warnt vor vertraglichen Verletzungen. (Quelle: S-SG-036, A-43)
Ziel: Einen verpflichtenden Content-Rights-Clearance-Schritt vor jedem Wissensordner-Upload einführen, der lizenzrechtliche Nutzungserlaubnisse für KI-Retrieval und Embedding-Erzeugung prüft und dokumentiert.
Ergebnis: Eine Content-Rights-Clearance-Checkliste mit Prüffragen je Inhaltstyp, einem Ampel-Schema und einem Upload-Genehmigungsprotokoll.
Fähigkeit: Canvas / Document Editor für die Checkliste und das Protokoll; Knowledge (Wissensordner) für die IP-Richtlinie (S-SG-036), bestehende Lizenzverträge und die Embedding-Datenschutz-Analyse (S-SG-014).
Vorgehen:
1. Die relevanten Inhaltstypen für den Wissensordner klassifizieren: selbst erstellte Dokumente (kein Clearance-Bedarf), intern lizenzierte Reports (Clearance erforderlich), öffentlich lizenzierte Quellen (CC-Lizenz prüfen), extern eingekaufte Marktforschung (Lizenzvertrag prüfen).
2. Für lizenzpflichtige Dokumente drei Prüffragen definieren: (a) Erlaubt die Lizenz maschinelles Lesen und Indexierung? (b) Ist die Nutzung für interne Recherche-Systeme abgedeckt? (c) Enthält die Lizenz Ausschlussklauseln für KI-Systeme?
3. Das Ampel-Schema festlegen: grün = Nutzung explizit erlaubt oder Selbst-erstelltes; gelb = Lizenz unklar, Rückfrage beim Lizenzgeber; rot = Nutzung ausgeschlossen, kein Upload.
4. Das Upload-Genehmigungsprotokoll definieren: jedes hochgeladene Dokument erhält einen Metadata-Tag (Lizenzstatus, Prüfdatum, Prüfer-Name) und wird im Content-Rechts-Register verzeichnet.
Vorlage: Content-Rights-Clearance-Checkliste:
1. Prueffragen je Inhaltstyp + Ampel-Schema.
2. Upload-Genehmigungsprotokoll.
3. Fehlende KI-Klausel = 'gelb/unklar' -> Rueckfrage beim Lizenzgeber.
Artefakt: Content-Rights-Clearance-Checkliste mit Inhaltstypen-Klassifikation, Ampel-Schema und Upload-Genehmigungsprotokoll.
Fallstricke:
- Lizenzverträge enthalten keine explizite KI-Klausel, was als stillschweigende Erlaubnis interpretiert wird — Mitigation: das Fehlen einer KI-Klausel als "gelb/unklar" einstufen und Rückfrage beim Lizenzgeber als Standardprozess vorschreiben, nicht als Ausnahme.
- Das Content-Rechts-Register wird nicht gepflegt, wenn das Team unter Zeitdruck steht — Mitigation: das Protokoll als Ein-Klick-Formular in den Workflow-Builder integrieren, damit der Upload ohne ausgefülltes Formular technisch blockiert wird.
Empfehlung: Stufe das Fehlen einer expliziten KI-Klausel im Lizenzvertrag als 'gelb/unklar' ein und schreibe die Rueckfrage beim Lizenzgeber als Standardprozess vor, statt es als stillschweigende Erlaubnis zu interpretieren. Integriere das Protokoll als Ein-Klick-Formular in den Workflow-Builder, das den Upload ohne ausgefuelltes Formular technisch blockiert, da das Register sonst unter Zeitdruck nicht gepflegt wird.
Anschluss: S-SG-053

### S-SG-053 SLA für Compliance-Team-Review von KI-Outputs definieren

Trigger: Das Compliance-Team beklagt, dass KI-generierte Kampagnen-Texte mit Preisangaben und regulatorischen Aussagen häufig zu spät zur Prüfung eingereicht werden — der Review erfolgt im Nachhinein oder gar nicht, was Haftungsrisiken erzeugt. Eine klare Service-Level-Vereinbarung fehlt. (Quelle: A-32, A-21 analog)
Ziel: Eine verbindliche Review-SLA zwischen Marketing und Compliance etablieren, die Einreichungs-Fristen, maximale Review-Zeiten und Eskalationspfade für dringende Kampagnen definiert — sodass KI-Outputs nie ohne Compliance-Freigabe bei Hochrisiko-Inhalten publiziert werden.
Ergebnis: Eine Marketing-Compliance-Review-SLA mit Inhaltstypen-Klassifikation, Fristen-Matrix und Eskalationsprotokoll für Eilfälle.
Fähigkeit: Canvas / Document Editor für die SLA; Knowledge (Wissensordner) für die HITL-Gate-Matrix (S-SG-021), AI-Risiko-Register (S-SG-028) und interne Freigabe-Richtlinie.
Vorgehen:
1. Die Inhaltstypen nach Review-Dringlichkeit klassifizieren: Hochrisiko (Preisangaben, rechtliche Aussagen, Wettbewerber-Vergleiche) = Review vor Veröffentlichung Pflicht; Mittelrisiko (Produkt-Features, Testimonials) = Review empfohlen; Niedrigrisiko (allgemeine Blog-Inhalte, Social-Media-Floskeln) = Stichproben-Review ausreichend.
2. Die Fristen-Matrix definieren: Hochrisiko = Einreichung ≥72 h vor Publish, Review-Frist 48 h; Mittelrisiko = Einreichung ≥24 h vor Publish, Review-Frist 24 h; Eilfälle = Einreichung mit Begründung, Compliance-Response ≤4 h.
3. Den Eskalationspfad für Fristversäumnisse dokumentieren: fehlende Einreichung bei Hochrisiko → automatisches Publish-Verbot durch HITL-Node im Workflow.
4. Die SLA als gegenseitige Vereinbarung von Marketing-Direktion und Compliance-Leitung unterzeichnen lassen und im Wissensordner ablegen.
Vorlage: Marketing-Compliance-Review-SLA:
1. Inhaltstypen-Klassifikation + Fristen-Matrix.
2. Publish-Blockierung - Hochrisiko-Inhalte ohne Freigabe technisch blockiert.
3. Eskalationsprotokoll fuer Eilfaelle.
Artefakt: Marketing-Compliance-Review-SLA mit Fristen-Matrix, Eilfall-Protokoll und dokumentiertem Eskalationspfad.
Fallstricke:
- Die SLA wird eingeführt, aber die Fristen werden nicht im Workflow-Builder als automatische Deadlines konfiguriert, sodass Fristversäumnisse unbemerkt bleiben — Mitigation: Publish-Blockierung für Hochrisiko-Inhalte ohne Compliance-Freigabe als technische Workflow-Bedingung, nicht nur als organisatorische Regel umsetzen.
- Der Eilfall-Kanal wird zur Norm, weil das Marketing-Team immer zu spät einreicht — Mitigation: die Eilfall-Nutzung monatlich auswerten und bei mehr als drei Eilfällen pro Monat eine Ursachen-Analyse mit dem Team durchführen.
Empfehlung: Setze die Publish-Blockierung fuer Hochrisiko-Inhalte ohne Compliance-Freigabe als technische Workflow-Bedingung um, nicht nur als organisatorische Regel, sonst bleiben Fristversaeumnisse unbemerkt. Werte die Eilfall-Nutzung monatlich aus und mache bei mehr als drei Eilfaellen eine Ursachen-Analyse mit dem Team, damit der Eilfall-Kanal nicht zur Norm wird.
Anschluss: S-SG-054

### S-SG-054 Grenzüberschreitende Datentransfer-Dokumentation (SCCs) für Marketing-Daten erstellen

Trigger: Die Holding verlangt, dass für alle Datentransfers zwischen der DACH-Einheit und US-basierten Marketing-Tools (z. B. HubSpot US-Rechenzentrum, Salesforce Marketing Cloud) Standardvertragsklauseln (SCCs) dokumentiert und dem Datenschutzbeauftragten vorgelegt werden — Langdock ist als EU-gehosteter Hub betroffen, weil es Daten an US-Modell-Provider überträgt. (Quelle: sources/12 Q126, S-SG-009)
Ziel: Alle relevanten Datentransfer-Pfade im Marketing-Ökosystem kartieren, die SCCs-Dokumentation vollständig aufsetzen und sicherstellen, dass Langdocks EU-Hosting und Zero-Retention korrekt in der Transfer-Impact-Assessment-Logik abgebildet sind.
Ergebnis: Eine Datentransfer-Kartierung mit SCC-Status je Transfer-Pfad, einer Transfer-Impact-Assessment-Zusammenfassung für die Langdock-Anbindung und einer Lückenliste für ausstehende SCCs.
Fähigkeit: Canvas / Document Editor für die Kartierung und TIA-Zusammenfassung; Knowledge (Wissensordner) für den bestehenden AVV, Sub-Prozessor-Liste, Datenresidenz-Dokumentation (S-SG-009) und SCC-Musterklauseln der EU-Kommission.
Vorgehen:
1. Alle Datentransfer-Pfade aus dem Marketing-Ökosystem kartieren: EU-Workspace → Langdock (EU-Azure, kein Transfer); Langdock → Modell-Provider OpenAI/Anthropic (US-Transfer, Zero-Retention + SCC erforderlich); Langdock-HubSpot-Sync → HubSpot US (US-Transfer, SCCs prüfen).
2. Den SCC-Status je Transfer-Pfad bewerten: unterzeichnete SCCs vorhanden / vorhanden aber veraltet (post-Schrems-II-Version) / fehlend.
3. Für den kritischen Transfer Langdock → US-Modell-Provider eine Transfer-Impact-Assessment-Zusammenfassung erstellen: EU-Azure-Verarbeitung, Zero-Retention-Zusage als ergänzende Schutzmaßnahme, Art.-46-Abs.-2-c-SCC-Rechtsgrundlage.
4. Eine Lückenliste für ausstehende oder veraltete SCCs erstellen und Fristen zur Nachverhandlung setzen.
Vorlage: Datentransfer-Kartierung (SCC):
1. SCC-Status je Transfer-Pfad.
2. TIA-Zusammenfassung fuer die Langdock-Anbindung.
3. Luecken-Liste fuer ausstehende SCCs.
Artefakt: Datentransfer-Kartierung mit SCC-Status-Tabelle, TIA-Zusammenfassung und priorisierter Lückenliste.
Fallstricke:
- SCCs aus der Zeit vor dem Schrems-II-Urteil (2020) werden als ausreichend behandelt — Mitigation: nur die überarbeiteten EU-Kommissions-SCC-Klauseln von 2021 als gültig akzeptieren und Altklagen systematisch ersetzen.
- Der Zero-Retention-Mechanismus des Modell-Providers wird ohne Rücksicht auf Ausnahmen (z. B. Abuse-Monitoring-Ausnahmen in den AGB) als absolut angesehen — Mitigation: die Zero-Retention-Zusage im Provider-DPA auf Ausnahmen prüfen und diese im TIA explizit dokumentieren.
Empfehlung: Akzeptiere nur die ueberarbeiteten EU-Kommissions-SCC von 2021 als gueltig und ersetze Alt-Klauseln aus der Zeit vor Schrems II (2020) systematisch. Pruefe die Zero-Retention-Zusage des Modell-Providers im DPA auf Ausnahmen (z. B. Abuse-Monitoring) und dokumentiere sie im TIA explizit, statt sie als absolut anzusehen.
Anschluss: S-SG-055

### S-SG-055 AI-Vendor-Due-Diligence-Checkliste für neue KI-Tools erstellen

Trigger: Das Marketing-Team möchte ein neues KI-Tool (z. B. einen KI-basierten SEO-Analyzer oder ein KI-Video-Generierungs-Tool) neben Langdock einführen — der Procurement-Prozess hat kein standardisiertes KI-spezifisches Due-Diligence-Framework, sodass jede Evaluierung von Grund auf neu beginnt. (Quelle: S-SG-039, sources/12 Q129)
Ziel: Ein wiederverwendbares AI-Vendor-Due-Diligence-Framework erstellen, das alle neuen KI-Tool-Evaluierungen auf denselben standardisierten Prüfdimensionen basiert und das Procurement-Komitee in die Lage versetzt, begründete Freigabe- oder Ablehnungsentscheidungen zu treffen.
Ergebnis: Eine AI-Vendor-Due-Diligence-Checkliste mit sieben Prüfdimensionen, einem Scoring-Modell und einer Entscheidungs-Matrix (Freigabe / Freigabe mit Auflagen / Ablehnung).
Fähigkeit: Canvas / Document Editor für die Checkliste; Knowledge (Wissensordner) für das Provider-Security-Review-Template (S-SG-039), die NDA-Compliance-Checkliste (S-SG-051) und das Datenklassifikations-Framework (S-SG-047).
Vorgehen:
1. Sieben Pruefdimensionen + funktionale Notwendigkeit + Scoring-Modell definieren.
2. Entscheidungs-Matrix (Freigabe / mit Auflagen / Ablehnung) festlegen.
3. Wiederholungs-Pflicht als Matrix-Bedingung verankern.
Vorlage: AI-Vendor-Due-Diligence-Checkliste:
1. Sieben Pruefdimensionen + Scoring-Modell.
2. Entscheidungs-Matrix - Freigabe / Freigabe mit Auflagen / Ablehnung.
3. Funktionale Notwendigkeit - eigene Dimension (deckt Langdock die Funktion schon ab?).
4. Wiederholungs-Pflicht - jaehrlich/bei Major-Updates.
Artefakt: AI-Vendor-Due-Diligence-Checkliste mit sieben Dimensionen, Scoring-Modell und Entscheidungs-Matrix.
Fallstricke:
- Die Prüfung wird nur auf Sicherheitsdimensionen fokussiert und die funktionale Dimension "Warum wird dieses Tool gebraucht, wenn Langdock diese Funktion bereits abdeckt?" wird ausgelassen — Mitigation: die funktionale Notwendigkeit als eigene Dimension mit dem gleichen Gewicht wie Sicherheit führen, um Tool-Proliferation zu verhindern.
- Ein bestandenes Due-Diligence-Review wird als dauerhaft gültig behandelt — Mitigation: eine Wiederholungs-Pflicht (jährlich oder bei Major-Updates des Vendors) in die Entscheidungs-Matrix als Bedingung aufnehmen.
Empfehlung: Fuehre die funktionale Notwendigkeit ('Warum dieses Tool, wenn Langdock die Funktion bereits abdeckt?') als eigene Dimension mit gleichem Gewicht wie Sicherheit, um Tool-Proliferation zu verhindern. Nimm eine Wiederholungs-Pflicht (jaehrlich oder bei Major-Updates) als Bedingung in die Entscheidungs-Matrix auf, statt ein bestandenes Review als dauerhaft gueltig zu behandeln.
Anschluss: S-SG-056

### S-SG-056 Marketing-AI-Ethics-Committee einrichten und operationalisieren

Trigger: Die Unternehmensführung verlangt nach einem publizierten Bericht über AI-Washing in der Branche eine institutionelle Antwort: ein internes AI-Ethics-Committee soll sicherstellen, dass alle KI-Initiativen im Marketing ethisch vertretbar sind und der AI-Governance-1-Pager (S-SG-023) gelebt wird — nicht nur auf dem Papier steht. (Quelle: A-50, sources/12 Q132)
Ziel: Ein schlankes, handlungsfähiges AI-Ethics-Committee für das Marketing aufbauen, das mit klarem Mandat, definierten Entscheidungskompetenzen und einem quartalsweisen Review-Rhythmus konkrete Governance-Entscheidungen trifft — und nicht als zahnloses Feigenblatt endet.
Ergebnis: Ein AI-Ethics-Committee-Charter mit Mandat, Zusammensetzung, Entscheidungskompetenzen, Meeting-Rhythmus und Eskalationspfad zur Unternehmensführung.
Fähigkeit: Canvas / Document Editor für die Charter; Knowledge (Wissensordner) für den AI-Governance-1-Pager (S-SG-023), die KI-Ethik-Positionierung (S-SG-043), das AI-Risiko-Register (S-SG-028) und das Champion-Programm (S-SG-042).
Vorgehen:
1. Mandat, Zusammensetzung, Entscheidungskompetenzen festlegen.
2. Bindende Hochrisiko-Entscheidungen + ausserordentliches Incident-Treffen definieren.
3. Eskalationspfad zur Unternehmensfuehrung in der Charter verankern.
Vorlage: AI-Ethics-Committee-Charter:
1. Mandat + Zusammensetzung + Entscheidungskompetenzen.
2. Bindende Entscheidungen - mind. Hochrisiko-Use-Cases, im Freigabe-Prozess verankert.
3. Meeting-Rhythmus + ausserordentliches Incident-Treffen (1 h, virtuell).
4. Eskalationspfad zur Unternehmensfuehrung.
Artefakt: AI-Ethics-Committee-Charter mit Mandat, Zusammensetzung, differenzierten Entscheidungskompetenzen und Eskalationspfad.
Fallstricke:
- Das Committee hat kein bindendes Entscheidungsrecht und kann von der Marketing-Direktion übergangen werden — Mitigation: mindestens eine Kategorie bindender Entscheidungen (Hochrisiko-Use-Cases) explizit in der Charter verankern und in den Workflow-Freigabe-Prozess integrieren.
- Das Committee trifft sich quartalsweise, aber AI-Incidents erfordern Entscheidungen innerhalb von Stunden — Mitigation: ein außerordentliches Treffen (virtuell, 1 Stunde) als explizite Charter-Option für Incident-Situationen definieren und den Einberufungsprozess vorab festlegen.
Empfehlung: Verankere mindestens eine Kategorie bindender Entscheidungen (Hochrisiko-Use-Cases) in der Charter und integriere sie in den Workflow-Freigabe-Prozess, sonst kann das Committee uebergangen werden. Definiere ein ausserordentliches Treffen (virtuell, 1 Stunde) als Charter-Option fuer Incident-Situationen mit vorab festgelegtem Einberufungsprozess, da AI-Incidents Entscheidungen innerhalb von Stunden erfordern.
Anschluss: S-SG-057

### S-SG-057 KI-Incident-War-Game-Übung für das Marketing-Team durchführen

Trigger: Nach der Erstellung des KI-Incident-Response-Playbooks (S-SG-020) und der Responsible-Disclosure-Policy (S-SG-034) fragt die Marketing-Direktorin, ob das Team im Ernstfall wirklich handlungsfähig wäre — ein ungeplanter Echtfall würde die Lücken erst zeigen, wenn der Schaden bereits eingetreten ist. (Quelle: S-SG-079 analog PR-Tabletop, A-41)
Ziel: Das Incident-Response-Playbook in einer simulierten Krisensituation testen, Reaktionsgeschwindigkeit und Entscheidungsqualität des Teams unter Druck messen und konkrete Verbesserungspunkte für das Playbook ableiten.
Ergebnis: Ein War-Game-Übungsprotokoll mit drei eskalierten Szenarien, einem Beobachtungsleitfaden für den Moderator und einem strukturierten After-Action-Review-Template.
Fähigkeit: Canvas / Document Editor für das Übungsprotokoll; Knowledge (Wissensordner) für das KI-Incident-Response-Playbook (S-SG-020), die Breach-Notification-Vorlage (S-SG-035) und die HITL-Gate-Matrix (S-SG-021).
Vorgehen:
1. Drei eskalierte Szenarien und Beobachtungsleitfaden vorbereiten.
2. Simulation vorab schriftlich bestaetigen lassen, keine echten Daten/Live-Systeme.
3. After-Action-Review mit max. 3 Sofort-Massnahmen + Owner.
Vorlage: KI-Krisen-War-Game-Protokoll:
1. Drei eskalierte Szenarien.
2. Beobachtungsleitfaden fuer den Moderator.
3. After-Action-Review-Template - max. 3 Sofort-Massnahmen mit Owner.
Artefakt: War-Game-Übungsprotokoll mit drei Szenarien, Beobachtungsleitfaden und After-Action-Review-Template.
Fallstricke:
- Die Übung wird zu realistisch gestellt und löst echte Compliance-Meldepflichten aus — Mitigation: alle Teilnehmenden vor Beginn schriftlich bestätigen lassen, dass es sich um eine Simulation handelt, und keine echten Kundendaten oder Live-Systeme in die Übung einbeziehen.
- Das After-Action-Review mündet in einer To-do-Liste, die niemand umsetzt — Mitigation: maximal drei Sofort-Maßnahmen aus dem Review ableiten, je eine verantwortliche Person benennen und die Umsetzung als Agenda-Punkt des nächsten AI-Ethics-Committee-Treffens (S-SG-056) verankern.
Empfehlung: Lass alle Teilnehmenden vor Beginn schriftlich bestaetigen, dass es sich um eine Simulation handelt, und beziehe keine echten Kundendaten oder Live-Systeme ein, damit die Uebung keine echten Compliance-Meldepflichten ausloest. Leite maximal drei Sofort-Massnahmen mit je einer verantwortlichen Person ab und verankere die Umsetzung als Agenda-Punkt des naechsten AI-Ethics-Committee-Treffens (S-SG-056), damit die To-do-Liste nicht im Sande verlaeuft.
Anschluss: S-SG-058

### S-SG-058 Key-Person-Dependency-Risiko für KI-Admins dokumentieren und mitigieren

Trigger: Der einzige Langdock-Workspace-Admin im Marketing-Team kündigt — sein Nachfolger kennt weder die SCIM-Konfiguration noch die BYOK-Schlüsselverwaltung, noch die System-Prompts der kritischen Agenten. Das Unternehmen steht vor einem Wissensmonopol-Risiko. (Quelle: A-35, A-44)
Ziel: Das Key-Person-Dependency-Risiko für die KI-Admin-Rolle durch Wissens-Dokumentation, einen zweiten benannten Admin und einen strukturierten Übergabe-Prozess auf ein beherrschbares Niveau reduzieren — bevor der nächste ungeplante Abgang eintritt.
Ergebnis: Ein KI-Admin-Wissenstransfer-Dokument mit Konfigurations-Dokumentation, Zweitmandats-Regelung und einem 5-Tage-Onboarding-Plan für den Nachfolger.
Fähigkeit: Canvas / Document Editor für das Wissenstransfer-Dokument; Knowledge (Wissensordner) für SSO/SCIM-Konfigurationscheckliste (S-SG-007), RBAC-Mapping (S-SG-005), BCP-Abschnitt (S-SG-044) und Vendor-Lock-in-Assessment (S-SG-017).
Vorgehen:
1. Konfigurations-Dokumentation erstellen (Schluessel-Speicherort, nicht Klartext).
2. Zweitmandat + 5-Tage-Onboarding-Plan definieren.
3. Jaehrlichen Admin-Drill verankern.
Vorlage: KI-Admin-Wissenstransfer-Dokument:
1. Konfigurations-Dokumentation - Schluessel-Speicherort, nicht Klartext.
2. Zweitmandats-Regelung.
3. 5-Tage-Onboarding-Plan fuer den Nachfolger + jaehrlicher Admin-Drill.
Artefakt: KI-Admin-Wissenstransfer-Dokument mit Domänen-Inventar, Dokumentationsgrad-Tabelle, Zweitmandats-Regelung und 5-Tage-Onboarding-Plan.
Fallstricke:
- Das Wissenstransfer-Dokument enthält BYOK-Schlüssel im Klartext — Mitigation: Schlüssel niemals im Dokument hinterlegen, sondern nur den Speicherort (Passwort-Manager-Eintrag) und den Zugriffsprozess beschreiben.
- Der zweite Admin wird benannt, aber nicht aktiv in die Konfiguration eingeführt, sodass er im Ernstfall trotzdem nicht handlungsfähig ist — Mitigation: eine jährliche "Admin-Drill"-Session einplanen, bei der der zweite Admin alle kritischen Konfigurationen selbst durchführt und das Protokoll im Wissenstransfer-Dokument aktualisiert.
Empfehlung: Hinterlege BYOK-Schluessel niemals im Klartext im Dokument, sondern nur den Speicherort (Passwort-Manager-Eintrag) und den Zugriffsprozess. Plane eine jaehrliche 'Admin-Drill'-Session ein, bei der der zweite Admin alle kritischen Konfigurationen selbst durchfuehrt, da ein nur benannter, aber nicht eingearbeiteter Zweit-Admin im Ernstfall nicht handlungsfaehig ist.
Anschluss: S-SG-059

### S-SG-059 KI-Tool-Succession-Plan für strategische Abhängigkeiten aufbauen

Trigger: Der Vorstand fragt im Rahmen der strategischen Planung, was passiert, wenn Langdock als Plattform aufgekauft, eingestellt oder für die DACH-Region nicht mehr verfügbar wäre — ein strukturierter Succession-Plan fehlt. (Quelle: S-SG-017, A-44)
Ziel: Einen KI-Tool-Succession-Plan erstellen, der die strategischen Abhängigkeiten von Langdock kartiert, alternative Plattformen vorevaluiert und einen Migrations-Playbook-Rahmen definiert — damit der Vorstand eine informierte "Build / Buy / Switch"-Entscheidung treffen kann, ohne in Krisenpanik zu verfallen.
Ergebnis: Ein KI-Tool-Succession-Plan mit Abhängigkeits-Kartierung, Alternativ-Plattform-Shortlist (bewertet nach fünf Kriterien) und einem Migrations-Playbook-Rahmen.
Fähigkeit: Canvas / Document Editor für den Succession-Plan; Knowledge (Wissensordner) für das Vendor-Lock-in-Assessment (S-SG-017), das BCP (S-SG-044), das AI-Vendor-Due-Diligence-Template (S-SG-055) und die Daten-Portabilitäts-Dokumentation.
Vorgehen:
1. Abhaengigkeiten kartieren.
2. Alternativ-Plattform-Shortlist nach 5 Kriterien (inkl. Migrations-Komplexitaet) bewerten.
3. Migrations-Playbook-Rahmen + Proof-of-Concept-Import planen.
Vorlage: KI-Tool-Succession-Plan:
1. Abhaengigkeits-Kartierung.
2. Alternativ-Plattform-Shortlist - 5 Kriterien inkl. Migrations-Komplexitaet.
3. Migrations-Playbook-Rahmen + Proof-of-Concept-Import.
Artefakt: KI-Tool-Succession-Plan mit Abhängigkeits-Kartierung, Alternativ-Plattform-Bewertungsmatrix und vierphasigem Migrations-Playbook-Rahmen.
Fallstricke:
- Der Succession-Plan wird mit dem BCP (S-SG-044) verwechselt — Mitigation: klar unterscheiden: BCP adressiert temporäre Ausfälle (Stunden bis Tage), Succession-Plan adressiert permanente Plattform-Ablösung (Wochen bis Monate); beide Dokumente aufeinander verweisen, aber nicht zusammenführen.
- Alternativplattformen werden nur nach Sicherheitskriterien bewertet und die Migrations-Komplexität der bestehenden 200+ Wissensordner-Dokumente und 12 Agenten wird unterschätzt — Mitigation: die Migrationskomplexität als eigenes Bewertungskriterium in die Shortlist-Matrix aufnehmen und einen Proof-of-Concept-Import als Teil der Vorevaluierung einplanen.
Empfehlung: Unterscheide klar vom BCP (S-SG-044): der BCP adressiert temporaere Ausfaelle (Stunden bis Tage), der Succession-Plan die permanente Plattform-Abloesung (Wochen bis Monate); verweise aufeinander, aber fuehre sie nicht zusammen. Nimm die Migrations-Komplexitaet der 200+ Wissensordner-Dokumente und 12 Agenten als eigenes Bewertungskriterium auf und plane einen Proof-of-Concept-Import als Vorevaluierung ein.
Anschluss: S-SG-060

### S-SG-060 Mitarbeitende schulen, KI-Halluzinationen zu erkennen und zu melden

Trigger: Zwei Marketing-Manager haben KI-generierte Statistiken ohne Verifikation in externe Präsentationen übernommen — die Zahlen waren halluziniert. Der CISO und die Rechtsabteilung verlangen ein Schulungsprogramm, das alle Langdock-Nutzer befähigt, Halluzinationen zu erkennen, bevor sie Schaden anrichten. (Quelle: sources/12 Q147, A-34, A-41)
Ziel: Ein praxisorientiertes Halluzinations-Erkennungs-Schulungsprogramm aufbauen, das konkrete Erkennungsstrategien, einen Verifikations-Workflow und einen niedrigschwelligen Melde-Kanal etabliert — damit jeder Nutzer zur ersten Verteidigungslinie gegen falsche KI-Outputs wird.
Ergebnis: Ein Schulungs-Leitfaden "KI-Halluzinationen erkennen und melden" mit fünf Erkennungsstrategien, einem 3-Schritte-Verifikations-Workflow und einer integrierten Melde-Checkliste.
Fähigkeit: Canvas / Document Editor für den Leitfaden; Knowledge (Wissensordner) für das KI-Incident-Response-Playbook (S-SG-020), die Responsible-Disclosure-Policy (S-SG-034), die HITL-Gate-Matrix (S-SG-021) und die AUP (S-SG-027).
Vorgehen:
1. Fuenf Erkennungsstrategien zusammenstellen.
2. 3-Schritte-Verifikations-Workflow nach Inhaltsrisiko skalieren.
3. Melde-Checkliste + False-Positive-Welcome-Kultur integrieren.
Vorlage: Schulungs-Leitfaden 'KI-Halluzinationen erkennen und melden':
1. Fuenf Erkennungsstrategien.
2. 3-Schritte-Verifikations-Workflow - nach Inhaltsrisiko skaliert.
3. Integrierte Melde-Checkliste + False-Positive-Welcome.
Artefakt: Schulungs-Leitfaden mit fünf Halluzinations-Mustern, 3-Schritte-Verifikations-Workflow, Melde-Checkliste und zwei praktischen Erkennungs-Übungen.
Fallstricke:
- Der Leitfaden erzeugt übermäßiges Misstrauen gegenüber KI-Outputs und lähmt die Produktivität, weil Mitarbeitende jede Ausgabe exzessiv nachprüfen — Mitigation: den Verifikations-Workflow nach Inhaltsrisiko skalieren: Niedrigrisiko-Texte (interne Notizen) ohne Vollverifikation; Hochrisiko-Outputs (externe Präsentationen, Pressemitteilungen) mit vollständigem 3-Schritte-Check.
- Mitarbeitende melden Halluzinationen nicht aus Angst, als unproduktiv oder technophoob zu gelten — Mitigation: eine explizite "False-Positive-Welcome"-Kultur im Leitfaden kommunizieren und Halluzinations-Meldungen als wertvolle Qualitäts-Beiträge öffentlich anerkennen (z. B. im monatlichen Champion-Meeting).
Empfehlung: Skaliere den Verifikations-Workflow nach Inhaltsrisiko - Niedrigrisiko-Texte (interne Notizen) ohne Vollverifikation, Hochrisiko-Outputs (externe Praesentationen, Pressemitteilungen) mit vollem 3-Schritte-Check, damit der Leitfaden nicht die Produktivitaet laehmt. Kommuniziere eine 'False-Positive-Welcome'-Kultur und erkenne Halluzinations-Meldungen oeffentlich als Qualitaets-Beitraege an (z. B. im Champion-Meeting), damit Mitarbeitende sie nicht aus Angst verschweigen.
Anschluss: S-SG-061 für die strukturierte DSFA-Vorlage als wiederverwendbaren Governance-Baustein.

### S-SG-061 Wiederverwendbare DSFA-Vorlage als Workflow-Baustein etablieren

Trigger: Der Datenschutzbeauftragte stellt fest, dass jede neue hochriskante Verarbeitung (vgl. S-SG-002) eine DSFA von Grund auf neu erstellt — er fordert eine standardisierte, wiederverwendbare DSFA-Vorlage, die für jeden neuen Marketing-Use-Case nur noch ausgefüllt statt neu konzipiert werden muss. (Quelle: A-16)
Ziel: Die Datenschutz-Folgenabschätzung von einem einmaligen Dokument zu einem standardisierten Governance-Baustein machen, der die Prüfqualität sichert und den Aufwand je neuem Use-Case senkt — die rechtliche Bewertung bleibt beim Datenschutzbeauftragten.
Ergebnis: Eine wiederverwendbare DSFA-Master-Vorlage mit Pflichtfeldern, Schwellenwert-Vorprüfung und einer Befüllungs-Anleitung je Marketing-Use-Case-Typ.
Fähigkeit: Canvas / Document Editor für die Master-Vorlage; Knowledge (Wissensordner) für die DSFA aus S-SG-002, Art.-35-DSGVO-Anforderungen und die DSK-Schwellenwert-Liste. (Beratungsartefakt; die finale DSFA-Bewertung trifft der Datenschutzbeauftragte.)
Vorgehen:
1. Die DSFA aus S-SG-002 in eine generische Master-Vorlage überführen: feststehende Abschnitte (Verarbeitungsbeschreibung, Rechtsgrundlage, TOMs, Risikobewertung, Restrisiko-Eigentümer) plus variable Platzhalter je Use-Case.
2. Eine vorgelagerte Schwellenwert-Prüfung ergänzen: Ist überhaupt eine DSFA nötig (Profiling + automatisierte Entscheidung mit Folgen + Großmaßstab)? Falls nein: dokumentierte Negativ-Feststellung statt voller DSFA.
3. Die TOM-Bausteine aus belegten Langdock-Eigenschaften vorformulieren (EU-Hosting, RBAC, Audit Logs, Trainings-Opt-out) als wiederverwendbare Textblöcke.
4. Die Befüllungs-Anleitung erstellen, sodass ein Champion die Vorlage vorab ausfüllt und der Datenschutzbeauftragte nur noch prüft und freigibt.
Vorlage: DSFA-Master-Vorlage (wiederverwendbar):
1. Pflichtfelder + Schwellenwert-Vorpruefung.
2. Befuellungs-Anleitung je Marketing-Use-Case-Typ.
3. Vorformulierte TOM-Textbloecke - mit Stand-Datum.
Artefakt: Wiederverwendbare DSFA-Master-Vorlage mit Schwellenwert-Vorprüfung, Platzhaltern und vorformulierten TOM-Textblöcken.
Fallstricke:
- Die Schwellenwert-Vorprüfung wird genutzt, um eine DSFA-Pflicht vorschnell zu verneinen — Mitigation: jede Negativ-Feststellung dokumentieren und vom Datenschutzbeauftragten gegenzeichnen lassen, nicht durch den Champion allein.
- Vorformulierte TOM-Textblöcke veralten, wenn sich Langdock-Eigenschaften ändern — Mitigation: ein Stand-Datum je Textblock führen und die Vorlage in den quartalsweisen Governance-Review (S-SG-028) aufnehmen.
Empfehlung: Lass jede Negativ-Feststellung der Schwellenwert-Vorpruefung dokumentieren und vom Datenschutzbeauftragten gegenzeichnen, nicht durch den Champion allein, damit eine DSFA-Pflicht nicht vorschnell verneint wird. Fuehre ein Stand-Datum je TOM-Textblock und nimm die Vorlage in den quartalsweisen Governance-Review (S-SG-028) auf, da vorformulierte TOM-Bloecke bei geaenderten Langdock-Eigenschaften veralten.
Anschluss: S-SG-062 für das Verzeichnis von Verarbeitungstätigkeiten als übergeordnetes Register.

### S-SG-062 Verzeichnis von Verarbeitungstätigkeiten (ROPA/VVT) für KI-Marketing pflegen

Trigger: Die Datenschutzbeauftragte verlangt, dass alle KI-gestützten Marketing-Verarbeitungen in das Verzeichnis von Verarbeitungstätigkeiten nach Art. 30 DSGVO aufgenommen werden — das bestehende VVT bildet die Langdock-Verarbeitungen (Prompts, Embeddings, Workflow-Läufe) bisher nicht ab. (Quelle: A-16, sources/12 Q135)
Ziel: Das VVT um die KI-spezifischen Verarbeitungstätigkeiten ergänzen, sodass im Audit-Fall eine vollständige Art.-30-Übersicht aller Langdock-Datenflüsse vorliegt — die rechtliche Vollständigkeitsbewertung trifft die Datenschutzbeauftragte.
Ergebnis: Ein VVT-Ergänzungsblatt mit je Verarbeitungstätigkeit den Art.-30-Pflichtfeldern und der Verknüpfung zur jeweiligen DSFA.
Fähigkeit: Canvas / Document Editor für das Ergänzungsblatt; Knowledge (Wissensordner) für das bestehende VVT-Muster, Art.-30-Pflichtfelder, das EU-AI-Act-Inventar (S-SG-012) und die Sub-Prozessor-Liste.
Vorgehen:
1. Die KI-Verarbeitungstätigkeiten aus dem Use-Case-Inventar (S-SG-012) ableiten: Kampagnen-Personalisierung, Sentiment-Analyse, Newsletter-Segmentierung, Content-Generierung.
2. Je Tätigkeit die Art.-30-Pflichtfelder ausfüllen: Zweck, Kategorien Betroffener, Datenkategorien, Empfänger (inkl. Modell-Provider als Sub-Prozessor), Drittlandtransfer, Löschfristen (aus S-SG-024), TOMs.
3. Jede Tätigkeit mit der zugehörigen DSFA (S-SG-061) oder Negativ-Feststellung verknüpfen, damit Register und Folgenabschätzung konsistent bleiben.
4. Das Ergänzungsblatt der Datenschutzbeauftragten zur Integration ins zentrale VVT übergeben und einen Aktualisierungs-Trigger (neuer Use-Case) definieren.
Vorlage: VVT-Ergaenzungsblatt (Art. 30):
1. Je Verarbeitungstaetigkeit - Art.-30-Pflichtfelder.
2. Verknuepfung zur jeweiligen DSFA.
3. Modell-Provider als Empfaenger mit Drittlandtransfer-Hinweis (S-SG-054).
Artefakt: VVT-Ergänzungsblatt mit Art.-30-Pflichtfeldern je KI-Verarbeitungstätigkeit und DSFA-Verknüpfung.
Fallstricke:
- Der Modell-Provider wird als Empfänger im VVT vergessen, obwohl Prompts an ihn übertragen werden — Mitigation: jeden über Langdock angebundenen Provider explizit als Empfänger mit Drittlandtransfer-Hinweis (vgl. S-SG-054) eintragen.
- Das VVT wird einmalig befüllt und nicht aktualisiert — Mitigation: einen Pflicht-Aktualisierungs-Trigger bei jedem neuen Agenten oder Workflow im Register verankern und an das AI-Risiko-Register (S-SG-028) koppeln.
Empfehlung: Trag jeden ueber Langdock angebundenen Modell-Provider explizit als Empfaenger mit Drittlandtransfer-Hinweis (vgl. S-SG-054) ein - er wird sonst im VVT vergessen, obwohl Prompts an ihn uebertragen werden. Verankere einen Pflicht-Aktualisierungs-Trigger bei jedem neuen Agenten oder Workflow und koppele ihn ans AI-Risiko-Register (S-SG-028), statt das VVT einmalig zu befuellen.
Anschluss: S-SG-063 für die operative Automatisierung der Löschfristen aus dem Register.

### S-SG-063 Data-Retention-Policy in automatisierte Lösch-Routinen übersetzen

Trigger: Die in S-SG-024 festgelegte Retention-Policy existiert auf dem Papier, wird aber manuell und unregelmäßig umgesetzt — der Datenschutzbeauftragte verlangt einen nachvollziehbaren, möglichst automatisierten Lösch-Mechanismus, der den Grundsatz der Speicherbegrenzung (Art. 5 (1) e) DSGVO) operativ sicherstellt. (Quelle: sources/12 Q135, A-13)
Ziel: Die dokumentierte Retention-Policy in einen wiederkehrenden, protokollierten Lösch-Prozess überführen, der manuelle Vergessens-Risiken eliminiert — wobei die Plattform-Einstellungen vom Admin gesetzt werden und Data nur den Prozess konzipiert.
Ergebnis: Ein Retention-Automatisierungs-Konzept mit Lösch-Kadenz je Datentyp, einem geplanten Workflow-Trigger für Erinnerungen und einem Lösch-Protokoll-Template.
Fähigkeit: Workflow Builder (Schedule-Trigger für Lösch-Erinnerungen und Report-Generierung); Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die Retention-Policy (S-SG-024) und Admin-Retention-Dokumentation. (Die eigentliche Löschung erfolgt über Admin-Einstellungen bzw. manuell; der Workflow erinnert und protokolliert.)
Vorgehen:
1. Loesch-Kadenz je Datentyp + harte Negativliste aufbewahrungspflichtiger Typen definieren.
2. Workflow-Trigger fuer Loesch-Erinnerungen planen.
3. Loesch-Protokoll-Template erstellen + Backup-Retention mit IT abgleichen.
Vorlage: Retention-Automatisierungs-Konzept:
1. Loesch-Kadenz je Datentyp.
2. Geplanter Workflow-Trigger fuer Loesch-Erinnerungen.
3. Loesch-Protokoll-Template + harte Negativliste aufbewahrungspflichtiger Typen.
Artefakt: Retention-Automatisierungs-Konzept mit Lösch-Methoden-Tabelle, Schedule-Workflow-Beschreibung und Lösch-Protokoll-Template.
Fallstricke:
- Der Lösch-Workflow löscht aufbewahrungspflichtige Handelsbriefe oder Audit-Belege automatisch mit — Mitigation: ausgenommene Datentypen als harte Negativliste im Workflow definieren und Löschungen dieser Typen technisch blockieren.
- Die plattformseitige Auto-Retention für Chat-Historien wird als vollständige Löschung angenommen, obwohl Backups separat bestehen — Mitigation: die Backup-Retention mit der IT abgleichen (vgl. S-SG-019) und im Protokoll separat ausweisen.
Empfehlung: Definiere ausgenommene Datentypen (Handelsbriefe, Audit-Belege) als harte Negativliste im Workflow und blockiere ihre Loeschung technisch, damit der Loesch-Workflow keine aufbewahrungspflichtigen Dokumente mitloescht. Gleiche die Backup-Retention mit der IT ab (vgl. S-SG-019) und weise sie separat aus, da die plattformseitige Chat-Historien-Retention keine vollstaendige Loeschung der Backups bedeutet.
Anschluss: S-SG-064 für die Abwehr gezielter Manipulation der Verarbeitungslogik.

### S-SG-064 Prompt-Injection-Abwehr-Playbook für Marketing-Agenten erstellen

Trigger: Das Red-Teaming (S-SG-032) hat gezeigt, dass ein Marketing-Agent über präparierte Wissensordner-Dokumente zu unerwünschtem Verhalten gebracht werden kann — der CISO verlangt ein dauerhaftes Abwehr-Playbook gegen direkte und indirekte Prompt Injection, nicht nur einen Einmal-Test. (Quelle: A-41, A-34, ISO 27001 A.12)
Ziel: Prompt-Injection-Risiken durch ein systematisches Set aus präventiven System-Prompt-Härtungen, Eingabe-Filtern und Erkennungs-Signalen reduzieren — als lebendes Playbook, das bei jedem neuen Agenten angewendet wird.
Ergebnis: Ein Prompt-Injection-Abwehr-Playbook mit Bedrohungs-Klassen, Härtungsmaßnahmen je Klasse und einer Pre-Launch-Härtungs-Checkliste.
Fähigkeit: Canvas / Document Editor für das Playbook; Chat zur Verifikation der Härtungen gegen Test-Prompts; Knowledge (Wissensordner) für das Red-Team-Protokoll (S-SG-032), die Agenten-System-Prompts und die Pentest-Scoping-Doku (S-SG-031).
Vorgehen:
1. Bedrohungs-Klassen definieren.
2. Mehrschichtige Haertung je Klasse (System-Prompt + Scope-Begrenzung + Tool-Restriktion).
3. Pre-Launch-Checkliste + Review fuer synchronisierte Wissensordner-Quellen.
Vorlage: Prompt-Injection-Abwehr-Playbook:
1. Bedrohungs-Klassen.
2. Haertungsmassnahmen je Klasse - mehrschichtig (System-Prompt + Scope-Begrenzung + Tool-Restriktion).
3. Pre-Launch-Haertungs-Checkliste + Review fuer synchronisierte Wissensordner-Quellen.
Artefakt: Prompt-Injection-Abwehr-Playbook mit Bedrohungs-Klassen, Härtungsmaßnahmen, Erkennungs-Signalen und Pre-Launch-Checkliste.
Fallstricke:
- Schutzsätze im System-Prompt werden als vollständiger Schutz angesehen, obwohl sie durch raffinierte Injection umgangen werden können — Mitigation: Härtung mehrschichtig anlegen (System-Prompt + Scope-Begrenzung + Tool-Restriktion) und keine einzelne Maßnahme als ausreichend deklarieren.
- Indirekte Injection über frisch synchronisierte Wissensordner-Dokumente wird übersehen, weil nur User-Eingaben geprüft werden — Mitigation: einen Review-Schritt für extern befüllte oder synchronisierte Wissensordner-Quellen in die Checkliste aufnehmen.
Empfehlung: Lege die Haertung mehrschichtig an (System-Prompt + Scope-Begrenzung + Tool-Restriktion) und deklariere keine einzelne Massnahme als ausreichend, da Schutzsaetze im System-Prompt durch raffinierte Injection umgangen werden koennen. Nimm einen Review-Schritt fuer extern befuellte oder synchronisierte Wissensordner-Quellen in die Checkliste auf, da indirekte Injection ueber frische Dokumente sonst uebersehen wird.
Anschluss: S-SG-065 für die einheitliche Kennzeichnungs- und Wasserzeichen-Policy.

### S-SG-065 AI-Labelling- und Wasserzeichen-Policy unternehmensweit verankern

Trigger: Nach Einführung der Kennzeichnungs-Richtlinie für einzelne Kampagnen (S-SG-010) fehlt eine unternehmensweit verbindliche Policy, die festlegt, welche KI-generierten Inhaltstypen wie zu labeln sind und wann technische Wasserzeichen (C2PA, SynthID) einzusetzen sind. (Quelle: A-09, sources/12 Q150)
Ziel: Eine konsistente, kanalübergreifende AI-Labelling-Policy etablieren, die die Anforderungen aus UWG § 5a und EU AI Act Art. 50 abdeckt und technische Wasserzeichen realistisch einordnet — die rechtliche Ausreichendheit der Kennzeichnung bewertet die Rechtsabteilung.
Ergebnis: Eine AI-Labelling-Policy mit Kennzeichnungs-Matrix je Inhaltstyp/Kanal, Wasserzeichen-Einsatzregeln und einem Freigabe-Gate vor Veröffentlichung.
Fähigkeit: Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für die Kennzeichnungs-Richtlinie (S-SG-010), die Rückverfolgbarkeits-Strategie (S-SG-038), den UWG-Leitfaden und die AI-Act-Art.-50-Doku; Web-Search zur Verifikation der aktuell gültigen Art.-50-Frist.
Vorgehen:
1. Die Inhaltstypen je Kanal erfassen: Text-Posts, KI-Bilder, synthetische Videos/Audio, KI-assistierte Blogartikel — und je Typ die Labelling-Pflicht ableiten.
2. Per Web-Search die aktuell gültige Art.-50-Transparenzfrist gegen eine Primärquelle verifizieren und mit Abrufdatum dokumentieren.
3. Die Kennzeichnungs-Matrix erstellen: je Inhaltstyp die Mindest-Kennzeichnung (Caption-Hinweis, Disclaimer, Metadaten-Tag) und — wo robust verfügbar — ein technisches Wasserzeichen für Bilder/Audio.
4. Ein Freigabe-Gate vor Veröffentlichung definieren (vgl. S-SG-021 HITL), das die korrekte Kennzeichnung prüft, bevor der Inhalt live geht.
Vorlage: AI-Labelling-Policy:
1. Kennzeichnungs-Matrix je Inhaltstyp/Kanal.
2. Wasserzeichen-Einsatzregeln - nur Bild/Audio; Text via sichtbare Kennzeichnung + Metadaten-Tagging (S-SG-038).
3. Freigabe-Gate vor Veroeffentlichung.
Artefakt: AI-Labelling-Policy mit Kennzeichnungs-Matrix je Inhaltstyp/Kanal, Wasserzeichen-Einsatzregeln und Freigabe-Gate.
Fallstricke:
- Technische Wasserzeichen werden als robuster Schutz für Texte angenommen, obwohl sie dort leicht entfernbar sind — Mitigation: Wasserzeichen nur für Bilder/Audio als ergänzende Maßnahme einsetzen und für Texte auf sichtbare Kennzeichnung plus Metadaten-Tagging (S-SG-038) setzen.
- Eine veraltete Art.-50-Frist im Wissensordner führt zu falscher Planung — Mitigation: den per Web-Search verifizierten Stichtag mit Abrufdatum dokumentieren und einen Review-Termin vor jedem Quartalsstart verankern.
Empfehlung: Setze technische Wasserzeichen nur fuer Bilder/Audio als ergaenzende Massnahme ein und kennzeichne Texte sichtbar plus per Metadaten-Tagging (S-SG-038), da Wasserzeichen in Texten leicht entfernbar sind. Dokumentiere den per Web-Search verifizierten Art.-50-Stichtag mit Abrufdatum und verankere einen Review-Termin vor jedem Quartalsstart, da eine veraltete Frist zu falscher Planung fuehrt.
Anschluss: S-SG-066 für die Prüfung der technisch-organisatorischen Maßnahmen der Anbieter.

### S-SG-066 TOMs der Plattform und Modell-Provider strukturiert reviewen

Trigger: Der Datenschutzbeauftragte verlangt vor der jährlichen AVV-Verlängerung einen dokumentierten Review der technisch-organisatorischen Maßnahmen (TOMs) nach Art. 32 DSGVO — sowohl von Langdock als auch der angebundenen Modell-Provider —, statt sich auf die Zusicherungen aus dem Vorjahr zu verlassen. (Quelle: sources/12 Q129, A-20)
Ziel: Die TOMs der Plattform und Sub-Prozessoren systematisch gegen Art.-32-Anforderungen abgleichen und Veränderungen seit dem letzten Review erkennen — als belegbare Grundlage für die AVV-Verlängerung, deren rechtliche Würdigung beim Datenschutzbeauftragten bleibt.
Ergebnis: Eine TOM-Review-Matrix mit Art.-32-Kategorien, dokumentiertem Ist-Stand je Anbieter, Delta zum Vorjahr und offenen Nachfragen.
Fähigkeit: Canvas / Document Editor für die Review-Matrix; Knowledge (Wissensordner) für die TOM-Dokumentation von Langdock, die Sub-Prozessor-Liste, das ISO-27001-Testat und den letztjährigen TOM-Review.
Vorgehen:
1. Die Art.-32-Kategorien als Prüfraster anlegen: Pseudonymisierung/Verschlüsselung, Vertraulichkeit, Integrität, Verfügbarkeit, Belastbarkeit, Wiederherstellbarkeit, regelmäßiges Prüfverfahren.
2. Je Kategorie den dokumentierten Ist-Stand aus der Langdock-TOM-Doku und den Provider-DPAs eintragen (Encryption-at-rest/in-transit, RBAC, Audit-Logs, Backup-Konzept).
3. Das Delta zum letztjährigen Review markieren: Welche TOMs haben sich geändert, welche neuen Sub-Prozessoren sind hinzugekommen?
4. Offene Nachfragen für das Langdock-Account-Team formulieren und mit Frist versehen, damit sie vor der AVV-Verlängerung beantwortet sind.
Vorlage: TOM-Review-Matrix (Art. 32):
1. Art.-32-Kategorien + dokumentierter Ist-Stand je Anbieter.
2. Delta zum Vorjahr + offene Nachfragen.
3. Beleg - nur vertraglicher TOM-Anhang + Audit-Berichte.
Artefakt: TOM-Review-Matrix mit Art.-32-Kategorien, Ist-Stand je Anbieter, Vorjahres-Delta und priorisierten offenen Nachfragen.
Fallstricke:
- TOMs werden aus Marketing-Material des Anbieters statt aus dem verbindlichen TOM-Anhang des AVV übernommen — Mitigation: nur den vertraglichen TOM-Anhang und Audit-Berichte als Belege akzeptieren, keine Webseiten-Aussagen.
- Ein TOM-Review wird durchgeführt, aber die neu hinzugekommenen Sub-Prozessoren bleiben ungeprüft — Mitigation: die Sub-Prozessor-Liste auf Zugänge seit dem letzten Review abgleichen und jeden neuen Eintrag separat prüfen (vgl. S-SG-067).
Empfehlung: Uebernimm TOMs nur aus dem verbindlichen TOM-Anhang des AVV und aus Audit-Berichten, nicht aus Anbieter-Marketingmaterial. Gleiche die Sub-Prozessor-Liste auf Zugaenge seit dem letzten Review ab und pruefe jeden neuen Eintrag separat (vgl. S-SG-067), da neu hinzugekommene Sub-Prozessoren sonst ungeprueft bleiben.
Anschluss: S-SG-067 für das fortlaufende Register der Sub-Prozessoren.

### S-SG-067 Sub-Prozessor-Register fortlaufend führen und Änderungen überwachen

Trigger: Die Datenschutzbeauftragte stellt fest, dass die Sub-Prozessor-Liste (aus S-SG-001) nur als statisches Dokument existiert — sie verlangt ein fortlaufend gepflegtes Register mit Benachrichtigungs-Mechanismus, damit Änderungen (neuer Modell-Provider, neuer Hosting-Dienstleister) nicht unbemerkt bleiben und die Widerspruchsfrist gewahrt wird. (Quelle: A-20, sources/12 Q133)
Ziel: Ein lebendes Sub-Prozessor-Register etablieren, das jede Änderung dokumentiert, mit den AVV-Pflichten (Informations- und Widerspruchsrecht) verknüpft und in den TOM-Review (S-SG-066) einspeist — die Bewertung von Widersprüchen bleibt bei der Datenschutzbeauftragten.
Ergebnis: Ein Sub-Prozessor-Register-Template mit Anbieter-Stammdaten, Verarbeitungszweck, Standort, Änderungs-Historie und einem Benachrichtigungs-Workflow-Konzept.
Fähigkeit: Canvas / Document Editor für das Register-Template; Workflow Builder (Schedule-Trigger zur regelmäßigen Prüfung der Langdock-Sub-Prozessor-Seite); Knowledge (Wissensordner) für die bestehende Sub-Prozessor-Liste, den AVV und die TOM-Review-Matrix (S-SG-066).
Vorgehen:
1. Stammdaten-Schema (Anbieter, Zweck, Standort, Historie) + Sub-Sub-Prozessor-Ebene anlegen.
2. Benachrichtigungs-Workflow mit kurzer Pruef-Kadenz + Widerspruchsfrist-Restlaufzeit konfigurieren.
3. Mit dem TOM-Review (S-SG-066) verknuepfen.
Vorlage: Sub-Prozessor-Register-Template:
1. Anbieter-Stammdaten, Verarbeitungszweck, Standort, Aenderungs-Historie.
2. Benachrichtigungs-Workflow-Konzept - kurze Pruef-Kadenz, mit Restlaufzeit der Widerspruchsfrist.
3. Sub-Sub-Prozessor-Ebene - nachgelagerte Auftragsverarbeiter der Provider.
Artefakt: Sub-Prozessor-Register-Template mit Stammdaten, Änderungs-Historie, AVV-Bezug und Benachrichtigungs-Workflow-Konzept.
Fallstricke:
- Die AVV-Widerspruchsfrist wird verpasst, weil eine Sub-Prozessor-Änderung erst beim nächsten manuellen Review auffällt — Mitigation: den Schedule-Workflow auf eine kurze Prüf-Kadenz (z. B. wöchentlich) setzen und die Benachrichtigung mit der Restlaufzeit der Widerspruchsfrist versehen.
- Sub-Prozessoren der Modell-Provider (Sub-Sub-Prozessoren) werden nicht erfasst — Mitigation: im Register explizit eine Ebene für die nachgelagerten Auftragsverarbeiter der Provider vorsehen und beim Provider anfragen.
Empfehlung: Setze den Schedule-Workflow auf eine kurze Pruef-Kadenz (z. B. woechentlich) und versieh die Benachrichtigung mit der Restlaufzeit der AVV-Widerspruchsfrist, damit eine Sub-Prozessor-Aenderung nicht erst beim naechsten manuellen Review auffaellt. Sieh im Register explizit eine Ebene fuer die nachgelagerten Auftragsverarbeiter der Modell-Provider (Sub-Sub-Prozessoren) vor und frage beim Provider an.
Anschluss: S-SG-068 für den operativen Ablauf bei einer meldepflichtigen Datenpanne.

### S-SG-068 72-Stunden-Breach-Notification-Runbook operationalisieren

Trigger: Die in S-SG-035 erstellte Breach-Notification-Vorlage ist ein Dokument, aber kein eingeübter Ablauf — der Datenschutzbeauftragte verlangt ein operatives Runbook, das im Ernstfall die 72-Stunden-Frist nach Art. 33 DSGVO mit klaren Rollen, Stundenplänen und Entscheidungspunkten sicherstellt. (Quelle: sources/12 Q130, A-41)
Ziel: Die Behördenmeldung bei einer KI-beteiligten Datenpanne von einem Vorlagen-Dokument zu einem handlungsleitenden Runbook machen, das unter Zeitdruck Orientierung gibt — die rechtliche Meldepflicht-Bewertung trifft der Datenschutzbeauftragte.
Ergebnis: Ein 72-Stunden-Breach-Runbook mit Stunden-getakteter Eskalations-Timeline, RACI-Rollenmatrix und Entscheidungs-Gates (meldepflichtig ja/nein).
Fähigkeit: Canvas / Document Editor für das Runbook; Knowledge (Wissensordner) für die Breach-Notification-Vorlage (S-SG-035), das Incident-Response-Playbook (S-SG-020) und die Audit-Logs-Dokumentation.
Vorgehen:
1. Die Eskalations-Timeline in Stunden-Blöcke gliedern: 0–1 h Entdeckung und Sofort-Stopp, 1–4 h Erstbewertung und Audit-Log-Pull, 4–24 h DSB-Information und Meldepflicht-Entscheidung, 24–60 h Meldungs-Entwurf, 60–72 h Behördenmeldung und ggf. Betroffenen-Information.
2. Die RACI-Rollenmatrix definieren: wer entdeckt/meldet intern, wer bewertet die Meldepflicht (DSB), wer gibt die Behördenmeldung frei (Geschäftsführung/DSB), wer kommuniziert mit Betroffenen.
3. Die Entscheidungs-Gates formulieren: Liegt eine Verletzung des Schutzes personenbezogener Daten vor? Besteht ein Risiko für Betroffene (Meldepflicht)? Ist das Risiko hoch (zusätzliche Betroffenen-Benachrichtigung nach Art. 34)?
4. Das Runbook mit der KI-spezifischen Root-Cause-Erfassung (welcher Workflow/Prompt/Wissensordner war beteiligt) aus S-SG-035 verknüpfen und als Pflicht-Anhang zum Incident-Playbook ablegen.
Vorlage: 72-Stunden-Breach-Runbook:
1. Stunden-getaktete Eskalations-Timeline - Fristbeginn 'ab Bekanntwerden'.
2. RACI-Rollenmatrix.
3. Entscheidungs-Gates (meldepflichtig ja/nein).
Artefakt: 72-Stunden-Breach-Runbook mit Eskalations-Timeline, RACI-Rollenmatrix und Meldepflicht-Entscheidungs-Gates.
Fallstricke:
- Die 72-Stunden-Frist wird ab Meldungs-Entwurf statt ab Kenntnisnahme der Verletzung gerechnet — Mitigation: den Fristbeginn ("ab Bekanntwerden") explizit im Runbook definieren und die Uhr ab dem ersten Entdeckungs-Eintrag starten.
- Das Runbook existiert, wird aber nie geprobt und versagt im Ernstfall — Mitigation: das Runbook als Szenario in die War-Game-Übung (S-SG-057) aufnehmen und Schwachstellen ins Update einfließen lassen.
Empfehlung: Definiere den Fristbeginn explizit als 'ab Bekanntwerden der Verletzung', nicht ab Meldungs-Entwurf, und starte die Uhr ab dem ersten Entdeckungs-Eintrag. Nimm das Runbook als Szenario in die War-Game-Uebung (S-SG-057) auf und lass Schwachstellen ins Update einfliessen, da ein nie geprobtes Runbook im Ernstfall versagt.
Anschluss: S-SG-069 für die regelmäßige Rezertifizierung der Zugriffsrechte.

### S-SG-069 Access-Recertification-Kadenz mit Attestierung etablieren

Trigger: Über die Zugriffs-Review-Kadenz (S-SG-049) hinaus verlangt der Auditor eine formale Rezertifizierung, bei der Ressourcen-Owner aktiv bestätigen, dass die aktuellen Zugriffsrechte auf ihre Wissensordner und Agenten noch berechtigt sind — eine reine IT-seitige Prüfung reicht für das ISO-27001-Testat nicht aus. (Quelle: ISO 27001 A.9, S-SG-049, S-SG-005)
Ziel: Eine periodische Access-Recertification etablieren, bei der nicht die IT, sondern die fachlichen Ressourcen-Owner die Berechtigung jedes Zugriffs aktiv attestieren — sodass Über-Berechtigungen aus fachlicher Sicht erkannt und entzogen werden.
Ergebnis: Ein Recertification-Konzept mit Kampagnen-Kalender, Owner-Attestierungs-Formular und einem Auto-Entzug-Mechanismus für nicht attestierte Zugriffe.
Fähigkeit: Canvas / Document Editor für das Konzept und Formular; Workflow Builder (Schedule-Trigger für Attestierungs-Erinnerungen); Knowledge (Wissensordner) für das Zugriffs-Review-Protokoll (S-SG-049), die RBAC-Mapping-Tabelle (S-SG-005) und ISO-27001-A.9.
Vorgehen:
1. Den Rezertifizierungs-Zyklus festlegen: halbjährliche Kampagne für sensible Ressourcen (Vertraulich/Streng-vertraulich aus S-SG-047), jährlich für interne Ressourcen.
2. Das Owner-Attestierungs-Formular gestalten: je Ressource die Liste der aktuell Berechtigten, mit Bestätigungs-Option ("weiterhin berechtigt") oder Entzugs-Markierung je Person.
3. Den Erinnerungs- und Eskalations-Workflow konzipieren: Schedule-Trigger sendet das Formular an den Owner; bei Nicht-Beantwortung innerhalb der Frist Eskalation an den CISO.
4. Den Auto-Entzug-Mechanismus definieren: nicht attestierte Zugriffe werden nach Fristablauf zur Deaktivierung vorgemerkt (mit Owner-Bestätigung), nicht automatisch gelöscht, um Betriebsstörungen zu vermeiden.
Vorlage: Zugriffs-Recertification-Konzept:
1. Kampagnen-Kalender.
2. Owner-Attestierungs-Formular - jeder Zugriff einzeln aktiv bestaetigt.
3. Auto-Entzug fuer nicht attestierte Zugriffe - mit Owner-Bestaetigung + Karenzfrist.
Artefakt: Access-Recertification-Konzept mit Kalender, Owner-Attestierungs-Formular und Auto-Entzug-Mechanismus.
Fallstricke:
- Owner attestieren pauschal alle Zugriffe als "berechtigt", ohne sie zu prüfen (Rubber-Stamping) — Mitigation: das Formular so gestalten, dass jeder einzelne Zugriff aktiv bestätigt werden muss, und Stichproben durch den CISO ankündigen.
- Der Auto-Entzug deaktiviert produktiv genutzte Zugriffe und stört laufende Kampagnen — Mitigation: vor der Deaktivierung eine Owner-Bestätigung und eine Karenzfrist vorsehen, statt nicht attestierte Rechte sofort zu entziehen.
Empfehlung: Gestalte das Formular so, dass jeder einzelne Zugriff aktiv bestaetigt werden muss, und kuendige CISO-Stichproben an, um Rubber-Stamping ('alle berechtigt') zu verhindern. Sieh vor dem Auto-Entzug eine Owner-Bestaetigung und eine Karenzfrist vor, statt nicht attestierte Rechte sofort zu entziehen, da das sonst produktiv genutzte Zugriffe deaktiviert und laufende Kampagnen stoert.
Anschluss: S-SG-070 für die laufende Erkennung ungenehmigter KI-Nutzung.

### S-SG-070 Shadow-AI-Detektion mit Kennzahlen und Eskalation verstetigen

Trigger: Das Shadow-AI-Erkennungs-Programm (S-SG-026) läuft, aber ohne messbare Kennzahlen versandet es — der CISO verlangt ein kennzahlbasiertes Monitoring, das den Erfolg der Überführung in den genehmigten Kanal belegt und Rückfälle früh sichtbar macht. (Quelle: sources/12 Q126, A-04)
Ziel: Die Shadow-AI-Detektion von einem einmaligen Programm zu einem kennzahlgesteuerten Dauerprozess machen, der Adoption und Risiko quantifiziert und bei steigender Shadow-AI-Nutzung automatisch eskaliert.
Ergebnis: Ein Shadow-AI-Monitoring-Dashboard-Konzept mit definierten Kennzahlen, Schwellenwert-Alarmen und einem Eskalations-Trigger.
Fähigkeit: Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für das Shadow-AI-Erkennungs-Programm (S-SG-026), das Tool-Inventar und die KI-Nutzungsrichtlinie. (Die Proxy-/Endpoint-Daten liefert die IT; Data konzipiert das Kennzahlen-Framework.)
Vorgehen:
1. Die Kennzahlen definieren: Anzahl entdeckter ungenehmigter Tools pro Quartal, Verhältnis genehmigte zu ungenehmigte KI-Zugriffe (aus IT-Proxy-Logs), Überführungsquote (in den genehmigten Kanal migrierte Use-Cases), Bedarf-Meldungen über den anonymen Kanal.
2. Die Schwellenwerte und Alarme festlegen: z. B. Alarm, wenn ungenehmigte KI-Zugriffe gegenüber dem Vorquartal steigen, statt zu fallen.
3. Den Eskalations-Trigger definieren: bei Schwellenüberschreitung → Ursachenanalyse mit dem betroffenen Team → ist die genehmigte Alternative unzureichend? → Maßnahme.
4. Das Dashboard-Konzept an das AI-Risiko-Register (S-SG-028) und das quartalsweise Governance-Meeting koppeln, damit die Kennzahlen Wirkung entfalten.
Vorlage: Shadow-AI-Monitoring-Dashboard:
1. Kennzahlen - Erkennung UND Ueberfuehrungsquote (gleichrangig).
2. Schwellenwert-Alarme + Eskalations-Trigger.
3. Interpretation - mehr offene Meldungen = Erfolgssignal.
Artefakt: Shadow-AI-Monitoring-Konzept mit definierten Kennzahlen, Schwellenwert-Alarmen und Eskalations-Trigger.
Fallstricke:
- Die Kennzahlen messen nur Erkennung, nicht aber den Erfolg der Überführung — Mitigation: die Überführungsquote als gleichrangige Führungskennzahl aufnehmen, damit Verbote nicht mit Adoption verwechselt werden.
- Steigende Bedarf-Meldungen über den anonymen Kanal werden als Verschlechterung fehlinterpretiert — Mitigation: klarstellen, dass mehr offene Meldungen ein Erfolgssignal sind (Vertrauen in den Kanal), nicht mehr Shadow AI.
Empfehlung: Nimm die Ueberfuehrungsquote als gleichrangige Fuehrungskennzahl neben der Erkennung auf, damit Verbote nicht mit Adoption verwechselt werden. Stelle klar, dass steigende Bedarf-Meldungen ueber den anonymen Kanal ein Erfolgssignal (Vertrauen in den Kanal) sind, nicht mehr Shadow AI.
Anschluss: S-SG-071 für die lizenzrechtliche Freigabe externer Inhalte.

### S-SG-071 Content-Rights-Clearance-Register für wiederkehrende Quellen aufbauen

Trigger: Die Content-Rights-Clearance-Checkliste (S-SG-052) wird je Upload angewendet, aber dieselben Lizenzquellen werden immer wieder einzeln geprüft — das IP-Team verlangt ein zentrales Register, das den Clearance-Status wiederkehrender Quellen festhält, damit nicht jede Nutzung neu bewertet werden muss. (Quelle: S-SG-052, A-43)
Ziel: Die Lizenz-Clearance von einer wiederholten Einzelprüfung zu einem zentral gepflegten Register machen, das den KI-Nutzungsstatus jeder wiederkehrenden Quelle dokumentiert — die abschließende lizenzrechtliche Bewertung bleibt beim IP-Team bzw. der Rechtsabteilung.
Ergebnis: Ein Content-Rights-Register mit Quellen-Stammdaten, KI-Nutzungsstatus (Ampel), Lizenz-Ablaufdatum und einem Re-Clearance-Trigger.
Fähigkeit: Canvas / Document Editor für das Register; Knowledge (Wissensordner) für die Content-Rights-Clearance-Checkliste (S-SG-052), die IP-Richtlinie (S-SG-036) und die bestehenden Lizenzverträge.
Vorgehen:
1. Die wiederkehrenden externen Quellen inventarisieren: Stock-Foto-Abos, Marktforschungs-Abonnements, Branchenreport-Lizenzen, lizenzierte Schriftarten/Assets.
2. Je Quelle den KI-Nutzungsstatus dokumentieren (Ampel aus S-SG-052): erlaubt für KI-Retrieval/Embedding / unklar (Rückfrage offen) / ausgeschlossen.
3. Das Lizenz-Ablaufdatum und den Re-Clearance-Trigger eintragen: bei Lizenzverlängerung oder Vertragsänderung wird der KI-Nutzungsstatus neu bewertet.
4. Das Register mit dem Wissensordner-Upload-Protokoll (S-SG-052) verknüpfen, sodass ein Upload aus einer "roten" Quelle technisch blockiert wird.
Vorlage: Content-Rights-Register:
1. Quellen-Stammdaten + KI-Nutzungsstatus (Ampel) + Lizenz-Ablaufdatum.
2. Re-Clearance-Trigger - an jedes Ablauf-/Verlaengerungsdatum gekoppelt.
3. Asset-Ebene - Sammellizenzen auf einzelne Assets (Bilder, Fonts) aufschluesseln.
Artefakt: Content-Rights-Register mit Quellen-Stammdaten, KI-Nutzungsstatus-Ampel, Ablaufdatum und Re-Clearance-Trigger.
Fallstricke:
- Eine Quelle wird einmal als "grün" eingestuft und bei Lizenzverlängerung mit geänderten AGB nicht neu geprüft — Mitigation: den Re-Clearance-Trigger zwingend an jedes Ablauf-/Verlängerungsdatum koppeln, nicht nur an Erstprüfung.
- Das Register erfasst nur Volltext-Quellen, nicht aber einzelne Assets (Bilder, Fonts) aus Sammellizenzen — Mitigation: Sammellizenzen auf Asset-Ebene aufschlüsseln, wo die Lizenz nutzungsbezogene Einschränkungen enthält.
Empfehlung: Koppele den Re-Clearance-Trigger zwingend an jedes Ablauf-/Verlaengerungsdatum, nicht nur an die Erstpruefung, da geaenderte AGB bei Lizenzverlaengerung sonst unbemerkt bleiben. Schluessele Sammellizenzen auf Asset-Ebene auf (Bilder, Fonts), wo die Lizenz nutzungsbezogene Einschraenkungen enthaelt, statt nur Volltext-Quellen zu erfassen.
Anschluss: S-SG-072 für die mitarbeiterbezogene KI-Nutzungsrichtlinie.

### S-SG-072 Employee-AI-Use-Policy mit Schulungs- und Attestierungs-Nachweis verbinden

Trigger: Die Acceptable-Use-Policy (S-SG-027) existiert, aber es gibt keinen Nachweis, dass Mitarbeitende sie gelesen und verstanden haben — der Betriebsrat und der CISO verlangen einen dokumentierten Schulungs- und Attestierungs-Prozess, bevor weitere Teams Langdock-Zugang erhalten. (Quelle: sources/12 Q127, sources/12 Q132, A-50)
Ziel: Die mitarbeiterbezogene KI-Nutzungsrichtlinie von einem passiven Dokument zu einem nachweisbaren Pflicht-Onboarding-Schritt machen — mit Schulung, Verständnis-Check und Attestierung, der die Mitbestimmung des Betriebsrats berücksichtigt.
Ergebnis: Ein Employee-AI-Use-Policy-Rollout-Konzept mit Schulungs-Modul, Verständnis-Quiz und Attestierungs-Protokoll als Zugangs-Voraussetzung.
Fähigkeit: Canvas / Document Editor für das Konzept; Knowledge (Wissensordner) für die Acceptable-Use-Policy (S-SG-027), das Champion-Curriculum (S-SG-042) und die Betriebsvereinbarung Digitalisierung. (Beratungsartefakt; arbeitsrechtliche Verbindlichkeit klärt die Rechtsabteilung mit dem Betriebsrat.)
Vorgehen:
1. Das Schulungs-Modul aus der AUP ableiten: Positivliste, Negativliste, Kennzeichnungspflicht, Meldeweg — mit konkreten Marketing-Beispielen aus S-SG-027.
2. Einen kurzen Verständnis-Check (5–7 Fragen) gestalten, der die Kernregeln abprüft, statt nur eine Lesebestätigung zu verlangen.
3. Das Attestierungs-Protokoll definieren: erfolgreiche Quiz-Teilnahme + digitale Unterschrift unter die AUP als Voraussetzung für die Langdock-Zugangsfreigabe.
4. Die Mitbestimmungs-Punkte mit dem Betriebsrat abstimmen: keine Leistungsbewertung anhand der Quiz-Ergebnisse, Wiederholungsmöglichkeit ohne Nachteil.
Vorlage: Employee-AI-Use-Policy-Rollout:
1. Schulungs-Modul + Verstaendnis-Quiz (beliebig wiederholbar, keine Leistungskontrolle).
2. Attestierungs-Protokoll als Zugangs-Voraussetzung.
3. Re-Attestierung bei Policy-Aenderungen.
Artefakt: Employee-AI-Use-Policy-Rollout-Konzept mit Schulungs-Modul, Verständnis-Quiz und Attestierungs-Protokoll.
Fallstricke:
- Das Verständnis-Quiz wird vom Betriebsrat als Leistungskontrolle gewertet — Mitigation: vorab schriftlich zusichern, dass Quiz-Ergebnisse nicht zur individuellen Leistungsbewertung verwendet werden und beliebig wiederholbar sind.
- Die Attestierung wird einmalig eingeholt, aber bei AUP-Änderungen nicht erneuert — Mitigation: bei jeder wesentlichen Policy-Aktualisierung eine Re-Attestierung als Pflichtschritt auslösen.
Empfehlung: Sichere dem Betriebsrat vorab schriftlich zu, dass Quiz-Ergebnisse nicht zur individuellen Leistungsbewertung verwendet werden und beliebig wiederholbar sind, sonst wird das Quiz als Leistungskontrolle gewertet. Loese bei jeder wesentlichen AUP-Aktualisierung eine Re-Attestierung als Pflichtschritt aus, statt die Attestierung nur einmalig einzuholen.
Anschluss: S-SG-073 für die revisionssichere Aufbewahrung der Audit-Logs.

### S-SG-073 Audit-Log-Retention und revisionssichere Archivierung festlegen

Trigger: Das ISO-27001-Audit fragt, wie lange die Langdock-Audit-Logs aufbewahrt werden und ob sie manipulationssicher archiviert sind — die Retention-Policy (S-SG-024) hat Audit-Logs als ausgenommen markiert, aber keine konkrete Aufbewahrungsdauer und Archivierungsform definiert. (Quelle: sources/12 Q135, ISO 27001 A.12)
Ziel: Eine eigene Retention- und Archivierungsregel für Audit-Logs festlegen, die forensische Nachvollziehbarkeit (Incident-Untersuchung, Breach-Rekonstruktion) mit der DSGVO-Speicherbegrenzung in Einklang bringt — die rechtliche Mindest-/Höchstdauer bewertet der Datenschutzbeauftragte.
Ergebnis: Eine Audit-Log-Retention-Policy mit Aufbewahrungsdauer, Archivierungs-Konzept (SIEM-Export) und Zugriffsbeschränkung auf die archivierten Logs.
Fähigkeit: Canvas / Document Editor für die Policy; Knowledge (Wissensordner) für die Retention-Policy (S-SG-024), die SIEM-Übergabe-Doku (S-SG-008) und ISO-27001-A.12.4 (Logging). (Die Audit Logs API liefert die Daten; die langfristige Archivierung übernimmt das SIEM.)
Vorgehen:
1. Den Aufbewahrungsbedarf je Zweck bestimmen: kurzfristig für operatives Monitoring (in der Plattform), langfristig für Forensik und Compliance-Nachweis (im SIEM exportiert).
2. Die Aufbewahrungsdauer festlegen: an gesetzliche und vertragliche Anforderungen anlehnen (z. B. Incident-Nachweis, AVV-Audit-Zyklus) und mit dem Datenschutzbeauftragten abstimmen.
3. Das Archivierungs-Konzept beschreiben: kontinuierlicher Export der Audit-Logs ins SIEM (vgl. S-SG-008), Speicherung in einem WORM-/append-only-Bereich für Manipulationssicherheit.
4. Die Zugriffsbeschränkung definieren: nur IT-Security und DSB haben Lese-Zugriff auf archivierte Logs; jeder Zugriff wird selbst protokolliert.
Vorlage: Audit-Log-Retention-Policy:
1. Aufbewahrungsdauer - am nachweisbaren Forensik-/Compliance-Bedarf bemessen.
2. Archivierungs-Konzept (SIEM-Export) - append-only/WORM + Integritaets-Hashes je Batch.
3. Zugriffsbeschraenkung auf archivierte Logs.
Artefakt: Audit-Log-Retention-Policy mit Aufbewahrungsdauer, Archivierungs-Konzept und Zugriffsbeschränkung.
Fallstricke:
- Audit-Logs werden zu lange aufbewahrt und enthalten personenbezogene Metadaten, was gegen die Speicherbegrenzung verstößt — Mitigation: die Aufbewahrungsdauer auf den nachweisbaren Forensik-/Compliance-Bedarf begrenzen und personenbezogene Felder nach Ablauf pseudonymisieren statt unbegrenzt zu halten.
- Die archivierten Logs liegen ohne Manipulationsschutz im SIEM, sodass ihre forensische Beweiskraft fraglich ist — Mitigation: einen append-only-/WORM-Speicher verwenden und Integritäts-Hashes je Export-Batch dokumentieren.
Empfehlung: Begrenze die Aufbewahrungsdauer auf den nachweisbaren Forensik-/Compliance-Bedarf und pseudonymisiere personenbezogene Felder nach Ablauf, statt Logs mit PII-Metadaten unbegrenzt zu halten (Speicherbegrenzung). Verwende einen append-only-/WORM-Speicher und dokumentiere Integritaets-Hashes je Export-Batch, damit die forensische Beweiskraft erhalten bleibt.
Anschluss: S-SG-074 für die rollenbasierte Einschränkung von Prompts und Modellen.

### S-SG-074 Rollenbasierte Prompt- und Modell-Restriktionen konfigurieren

Trigger: Der CISO stellt fest, dass alle Marketing-Nutzer uneingeschränkten Zugriff auf alle Modelle und Agenten haben — er verlangt rollenbasierte Restriktionen, sodass z. B. nur freigegebene Rollen teure Reasoning-Modelle oder Agenten mit Zugriff auf vertrauliche Wissensordner nutzen können. (Quelle: A-35, sources/12 Q122, ISO 27001 A.9)
Ziel: Das Least-Privilege-Prinzip (S-SG-005) auf die Ebene von Modellen, Agenten und Prompt-Fähigkeiten ausweiten — sodass Berechtigungen nicht nur regeln, wer eine Ressource sieht, sondern auch, welche KI-Fähigkeiten eine Rolle einsetzen darf.
Ergebnis: Eine Rollen-Restriktions-Matrix, die je Job-Rolle die erlaubten Modelle, Agenten und Fähigkeiten (Web-Search, Image-Generation, Data Analyst) festlegt.
Fähigkeit: Canvas / Document Editor für die Restriktions-Matrix; Knowledge (Wissensordner) für die RBAC-Mapping-Tabelle (S-SG-005), das Datenklassifikations-Framework (S-SG-047) und die Admin-Modell-Restriktions-Dokumentation. (Die eigentliche Konfiguration nimmt der Workspace-Admin vor.)
Vorgehen:
1. Je Job-Rolle erlaubte Modelle/Agenten/Faehigkeiten festlegen.
2. Alle vier Dimensionen (Modell/Agent/Faehigkeit/Wissensordner) in der Matrix fuehren.
3. Schnellen Freigabe-Prozess fuer begruendete Ausnahmen vorsehen.
Vorlage: Rollen-Restriktions-Matrix:
1. Je Job-Rolle - erlaubte Modelle, Agenten, Faehigkeiten (Web-Search, Image-Gen, Data Analyst).
2. Bedarfsorientiert + schneller Freigabe-Prozess fuer begruendete Ausnahmen.
Artefakt: Rollen-Restriktions-Matrix mit erlaubten Modellen, Agenten und Fähigkeiten je Job-Rolle.
Fallstricke:
- Restriktionen werden so eng gesetzt, dass die produktive Arbeit blockiert wird und Nutzer in Shadow AI ausweichen — Mitigation: die Restriktionen am tatsächlichen Bedarf je Rolle ausrichten und einen schnellen Freigabe-Prozess für begründete Ausnahmen vorsehen.
- Die Restriktion regelt nur den Modell-Zugriff, nicht aber die Fähigkeiten (Web-Search, Data Analyst), über die sensible Operationen möglich sind — Mitigation: alle vier Dimensionen (Modell, Agent, Fähigkeit, Wissensordner-Zugriff) in der Matrix führen, nicht nur die Modellwahl.
Empfehlung: Richte die Restriktionen am tatsaechlichen Bedarf je Rolle aus und sieh einen schnellen Freigabe-Prozess fuer begruendete Ausnahmen vor, da zu enge Restriktionen die Arbeit blockieren und Nutzer in Shadow AI ausweichen. Fuehre alle vier Dimensionen (Modell, Agent, Faehigkeit, Wissensordner-Zugriff) in der Matrix, nicht nur die Modellwahl, da sensible Operationen auch ueber Faehigkeiten (Web-Search, Data Analyst) moeglich sind.
Anschluss: S-SG-075 für die regelmäßige adversarielle Prüfung der Agenten.

### S-SG-075 Red-Team-Kadenz für Marketing-Agenten institutionalisieren

Trigger: Das einmalige Red-Teaming (S-SG-032) hat Schwachstellen gefunden, aber neue Agenten und Modell-Updates entstehen laufend — der CISO verlangt eine wiederkehrende Red-Team-Kadenz statt punktueller Tests, damit die Agenten-Sicherheit kontinuierlich geprüft wird. (Quelle: A-34, A-41, ISO 27001 A.12)
Ziel: Red-Teaming von einer Einmal-Aktion zu einem festen, kalendarisierten Sicherheitsprozess machen, der bei definierten Auslösern (neuer Agent, Modell-Wechsel, Quartalsturnus) automatisch greift und die Ergebnisse ins Risiko-Register einspeist.
Ergebnis: Ein Red-Team-Kadenz-Plan mit Auslöse-Ereignissen, einer wiederverwendbaren Angriffs-Prompt-Bibliothek und einem Befund-Tracking-Protokoll.
Fähigkeit: Canvas / Document Editor für den Kadenz-Plan; Chat zur Durchführung der adversariellen Tests; Knowledge (Wissensordner) für das Red-Team-Protokoll (S-SG-032), das Prompt-Injection-Playbook (S-SG-064) und das AI-Risiko-Register (S-SG-028).
Vorgehen:
1. Die Auslöse-Ereignisse definieren: neuer produktiver Agent (Pflicht-Red-Team vor Go-live), Modell-Wechsel eines bestehenden Agenten, Quartalsturnus für Tier-1-Agenten, nach einem Sicherheitsvorfall.
2. Eine wiederverwendbare Angriffs-Prompt-Bibliothek aus S-SG-032 und S-SG-064 aufbauen: kategorisiert nach Rollenübernahme, Datenexfiltration, indirekter Injection, Tool-Missbrauch.
3. Das Befund-Tracking-Protokoll festlegen: jeder Befund erhält eine Severity, einen Eigentümer und ein Re-Test-Datum; kritische Befunde blockieren den Go-live.
4. Die Kadenz mit dem AI-Risiko-Register (S-SG-028) und dem Champion-Programm verknüpfen, sodass Befunde sichtbar und nachverfolgbar bleiben.
Vorlage: Red-Team-Kadenz-Plan:
1. Ausloese-Ereignisse.
2. Wiederverwendbare Angriffs-Prompt-Bibliothek - mit Stand-Datum, laufend erweitert.
3. Befund-Tracking-Protokoll - je kritischer Befund ein Pflicht-Re-Test-Datum.
Artefakt: Red-Team-Kadenz-Plan mit Auslöse-Ereignissen, Angriffs-Prompt-Bibliothek und Befund-Tracking-Protokoll.
Fallstricke:
- Die Angriffs-Prompt-Bibliothek veraltet, weil neue Injection-Techniken nicht ergänzt werden — Mitigation: die Bibliothek bei jedem Red-Team-Lauf um neu erkannte Vektoren erweitern und ein Stand-Datum führen.
- Red-Team-Befunde werden dokumentiert, aber der Re-Test nach der Härtung unterbleibt — Mitigation: jeden kritischen Befund mit einem Pflicht-Re-Test-Datum versehen und den Go-live an den bestandenen Re-Test koppeln (vgl. S-SG-032).
Empfehlung: Erweitere die Angriffs-Prompt-Bibliothek bei jedem Red-Team-Lauf um neu erkannte Vektoren und fuehre ein Stand-Datum, da sie sonst veraltet. Versieh jeden kritischen Befund mit einem Pflicht-Re-Test-Datum und koppele den Go-live an den bestandenen Re-Test (vgl. S-SG-032), damit der Re-Test nach der Haertung nicht unterbleibt.
Anschluss: S-SG-076 für die dokumentierte Governance der eingesetzten Modelle.

### S-SG-076 Model-Card-Governance für eingesetzte Marketing-Modelle einführen

Trigger: Die Compliance fragt, welche Modelle in welchen Marketing-Agenten eingesetzt werden, welche bekannten Limitierungen sie haben und ob ihre Eignung für den jeweiligen Zweck dokumentiert ist — es existiert keine strukturierte Übersicht über die genutzten Modelle und ihre Eigenschaften. (Quelle: A-13, A-30, sources/12 Q129)
Ziel: Eine Model-Card-Governance etablieren, die je eingesetztem Modell die Eigenschaften, bekannten Limitierungen, Eignungs-Use-Cases und das Review-Datum dokumentiert — als Nachweis bewusster Modell-Auswahl für Audits und als Entscheidungshilfe bei Modell-Wechseln.
Ergebnis: Ein Model-Card-Register mit je Modell einer strukturierten Karte (Eigenschaften, Limitierungen, geeignete/ungeeignete Use-Cases, Datenresidenz, Review-Datum).
Fähigkeit: Canvas / Document Editor für das Register; Knowledge (Wissensordner) für das EU-AI-Act-Inventar (S-SG-012), die Datenresidenz-Entscheidungsvorlage (S-SG-009) und die Modell-Provider-Dokumentation; Web-Search zur Verifikation aktueller Modell-Eigenschaften und -Versionen.
Vorgehen:
1. Je Modell eine strukturierte Karte (Eigenschaften, Limits, Use-Cases, Datenresidenz, Review-Datum) anlegen.
2. Jede Eigenschaft per Web-Search gegen die Anbieter-Doku mit Abrufdatum verifizieren.
3. Aktualisierungs-Trigger bei Modell-Wechsel + Quartals-Review verankern.
Vorlage: Model-Card-Register:
1. Je Modell - Eigenschaften, Limitierungen, geeignete/ungeeignete Use-Cases, Datenresidenz, Review-Datum.
2. Verifikation - jede Eigenschaft per Web-Search gegen aktuelle Anbieter-Doku, mit Abrufdatum.
3. Aktualisierungs-Trigger bei Modell-Wechsel + Quartals-Review.
Artefakt: Model-Card-Register mit strukturierter Karte je eingesetztem Modell inklusive Eignungs-Zuordnung und Review-Datum.
Fallstricke:
- Modell-Eigenschaften werden aus Trainingswissen statt aus aktueller Anbieter-Dokumentation übernommen und sind veraltet — Mitigation: jede Eigenschaft per Web-Search gegen die aktuelle Anbieter-Doku verifizieren und mit Abrufdatum versehen.
- Das Model-Card-Register wird einmal erstellt und bei Modell-Updates nicht gepflegt — Mitigation: einen Aktualisierungs-Trigger bei jedem Modell-Wechsel verankern und das Register in den quartalsweisen Governance-Review aufnehmen.
Empfehlung: Verifiziere jede Modell-Eigenschaft per Web-Search gegen die aktuelle Anbieter-Dokumentation und versieh sie mit Abrufdatum, statt sie aus Trainingswissen zu uebernehmen (veraltet). Verankere einen Aktualisierungs-Trigger bei jedem Modell-Wechsel und nimm das Register in den quartalsweisen Governance-Review auf, damit es nicht einmal erstellt und dann liegen gelassen wird.
Anschluss: S-SG-077 für die Prüfung der generierten Inhalte auf Verzerrungen.

### S-SG-077 Bias-Review für KI-generierte Marketing-Inhalte etablieren

Trigger: Eine KI-generierte Bildkampagne stellte unbeabsichtigt nur eine demografische Gruppe dar, was zu öffentlicher Kritik führte — die Marketing-Direktorin verlangt einen strukturierten Bias-Review-Prozess, der Verzerrungen in KI-generierten Texten und Bildern vor Veröffentlichung erkennt. (Quelle: A-07, A-47, sources/12 Q149)
Ziel: Einen praktikablen Bias-Review etablieren, der KI-generierte Inhalte vor Veröffentlichung systematisch auf Stereotype, Unterrepräsentation und diskriminierende Formulierungen prüft — als Qualitäts- und Reputationsschutz, nicht als juristische Diskriminierungs-Bewertung (die bei Bedarf die Rechtsabteilung übernimmt).
Ergebnis: Eine Bias-Review-Checkliste mit Prüfdimensionen je Inhaltstyp (Text/Bild), einer Ampel-Bewertung und einem Korrektur-Workflow.
Fähigkeit: Canvas / Document Editor für die Checkliste; Chat/Vision zur unterstützenden Analyse von Text- und Bild-Outputs; Knowledge (Wissensordner) für die Brand-Voice-Richtlinie, die Diversity-Guidelines und die HITL-Gate-Matrix (S-SG-021).
Vorgehen:
1. Die Prüfdimensionen je Inhaltstyp definieren: Text (geschlechtergerechte Sprache, Stereotype, kulturelle Sensibilität), Bild (Repräsentation verschiedener Gruppen, Vermeidung klischeehafter Darstellungen).
2. Die Ampel-Bewertung festlegen: grün = ausgewogen; gelb = mögliche Verzerrung, Überarbeitung empfohlen; rot = klare Verzerrung, Korrektur vor Veröffentlichung Pflicht.
3. Den Review-Schritt als HITL-Gate (vgl. S-SG-021) vor der Veröffentlichung verankern, insbesondere für Inhalte mit Personen-Darstellung.
4. Den Korrektur-Workflow definieren: bei "rot" Re-Generierung mit angepasstem Prompt (z. B. explizite Diversitäts-Vorgabe) und erneuter Review.
Vorlage: Bias-Review-Checkliste:
1. Pruefdimensionen je Inhaltstyp (Text/Bild) + Ampel-Bewertung.
2. Korrektur-Workflow - an Brand-Diversity-Guidelines ausgerichtet.
3. Finaler Review als menschliches HITL-Gate.
Artefakt: Bias-Review-Checkliste mit Prüfdimensionen je Inhaltstyp, Ampel-Bewertung und Korrektur-Workflow.
Fallstricke:
- Der Bias-Review wird allein der KI überlassen, die dieselben Verzerrungen reproduzieren kann, die sie prüfen soll — Mitigation: den finalen Review als menschliches HITL-Gate verankern und die KI-Analyse nur als Vorfilter nutzen.
- Die Diversitäts-Vorgabe im Korrektur-Prompt erzeugt Tokenismus statt authentischer Repräsentation — Mitigation: die Korrektur an konkreten Brand-Diversity-Guidelines ausrichten und das Ergebnis erneut menschlich prüfen, nicht nur die Checkbox abhaken.
Empfehlung: Verankere den finalen Bias-Review als menschliches HITL-Gate und nutze die KI-Analyse nur als Vorfilter, da die KI dieselben Verzerrungen reproduzieren kann, die sie pruefen soll. Richte den Korrektur-Prompt an konkreten Brand-Diversity-Guidelines aus und pruefe das Ergebnis erneut menschlich, damit die Diversitaets-Vorgabe nicht Tokenismus statt authentischer Repraesentation erzeugt.
Anschluss: S-SG-078 für die vollständige Dokumentation grenzüberschreitender Transfers.

### S-SG-078 Grenzüberschreitende SCC-Transfer-Dokumentation revisionssicher pflegen

Trigger: Die in S-SG-054 erstellte Datentransfer-Kartierung ist eine Momentaufnahme — die Holding verlangt eine fortlaufend gepflegte, revisionssichere SCC-Dokumentation, die bei jeder Änderung der Transfer-Pfade (neuer Sub-Prozessor, neue Integration) aktualisiert und versioniert wird. (Quelle: sources/12 Q126, S-SG-054, S-SG-067)
Ziel: Die SCC-Transfer-Dokumentation von einer einmaligen Kartierung zu einem versionierten, revisionssicheren Register machen, das jede Transfer-Änderung mit Datum, SCC-Version und TIA-Bezug festhält — die rechtliche Wirksamkeit der SCCs bewertet die Datenschutzbeauftragte.
Ergebnis: Ein versioniertes SCC-Transfer-Register mit je Transfer-Pfad der SCC-Version, dem TIA-Bezug, dem Gültigkeitsstatus und einer Änderungs-Historie.
Fähigkeit: Canvas / Document Editor für das Register; Knowledge (Wissensordner) für die Datentransfer-Kartierung (S-SG-054), das Sub-Prozessor-Register (S-SG-067) und die EU-Kommissions-SCC-Musterklauseln; Web-Search zur Verifikation aktueller Angemessenheitsbeschlüsse und SCC-Versionsstände.
Vorgehen:
1. Je Transfer-Pfad SCC-Version, TIA-Bezug, Gueltigkeitsstatus, Historie erfassen.
2. Angemessenheitsbeschluss-Status per Web-Search mit Review-Datum fuehren.
3. TIA und SCC fest verknuepfen; bei Aenderung beide aktualisieren.
Vorlage: Versioniertes SCC-Transfer-Register:
1. Je Transfer-Pfad - SCC-Version, TIA-Bezug, Gueltigkeitsstatus, Aenderungs-Historie.
2. Angemessenheitsbeschluss-Status - per Web-Search mit Review-Datum.
3. TIA-SCC-Verknuepfung - bei jeder TIA-relevanten Aenderung beide aktualisieren.
Artefakt: Versioniertes SCC-Transfer-Register mit SCC-Version, TIA-Bezug, Angemessenheitsbeschluss-Status und Änderungs-Historie je Transfer-Pfad.
Fallstricke:
- Ein neuer Angemessenheitsbeschluss macht SCCs entbehrlich, das Register wird aber nicht aktualisiert und führt unnötige SCC-Pflichten weiter — Mitigation: den Angemessenheitsbeschluss-Status per Web-Search mit Review-Datum führen und bei Änderung den Transfer-Pfad neu bewerten.
- Die Versionierung erfasst nur die SCC-Klauseln, nicht das zugehörige TIA, das bei geänderten Umständen ebenfalls neu bewertet werden müsste — Mitigation: TIA und SCC im Register fest verknüpfen und bei jeder TIA-relevanten Änderung beide aktualisieren.
Empfehlung: Fuehre den Angemessenheitsbeschluss-Status per Web-Search mit Review-Datum und bewerte den Transfer-Pfad bei Aenderung neu - ein neuer Beschluss macht SCCs entbehrlich, und ein nicht aktualisiertes Register fuehrt unnoetige SCC-Pflichten weiter. Verknuepfe TIA und SCC im Register fest und aktualisiere bei jeder TIA-relevanten Aenderung beide, da die Versionierung sonst nur die SCC-Klauseln, nicht das zugehoerige TIA erfasst.
Anschluss: S-SG-079 für die einheitliche Schweregrad-Einstufung von Vorfällen.

### S-SG-079 Incident-Severity-Matrix für KI-Vorfälle definieren

Trigger: Bei KI-Vorfällen (S-SG-020, S-SG-035) wird uneinheitlich entschieden, wie kritisch ein Ereignis ist und wer eskaliert werden muss — der CISO verlangt eine standardisierte Severity-Matrix, die jeden KI-Vorfall objektiv einstuft und den passenden Reaktions- und Eskalationspfad auslöst. (Quelle: A-41, S-SG-034, ISO 27001 A.16)
Ziel: Eine einheitliche Incident-Severity-Matrix etablieren, die KI-Vorfälle nach objektiven Kriterien klassifiziert und je Severity den Reaktions-SLA, die Eskalationsstufe und die Benachrichtigungspflicht festlegt — als verbindliche Grundlage für Incident-Playbook und Disclosure-Policy.
Ergebnis: Eine Incident-Severity-Matrix mit vier Schweregraden, Einstufungs-Kriterien, Reaktions-SLA und Eskalationspfad je Grad.
Fähigkeit: Canvas / Document Editor für die Matrix; Knowledge (Wissensordner) für das Incident-Response-Playbook (S-SG-020), die Responsible-Disclosure-Policy (S-SG-034), das Breach-Runbook (S-SG-068) und die interne Eskalationsmatrix.
Vorgehen:
1. Die vier Schweregrade definieren: SEV-1 (kritisch: Datenpanne mit Personenbezug, rufschädigender Massen-Output), SEV-2 (hoch: einzelner fehlerhafter externer Output, Prompt-Injection mit Datenzugriff), SEV-3 (mittel: interner Fehler ohne Außenwirkung), SEV-4 (niedrig: Beinahe-Vorfall, abgefangen durch HITL).
2. Die objektiven Einstufungs-Kriterien festlegen: Personenbezug betroffen? Externe Sichtbarkeit? Anzahl Betroffener? Rückholbarkeit des Outputs?
3. Je Severity den Reaktions-SLA und Eskalationspfad zuordnen: SEV-1 → Sofort-Eskalation an CISO/DSB + Breach-Runbook (S-SG-068); SEV-3/4 → Dokumentation im Vorfall-Log, Review im Governance-Meeting.
4. Die Matrix als verbindlichen ersten Schritt in das Incident-Playbook (S-SG-020) integrieren, damit jeder Vorfall zuerst eingestuft wird.
Vorlage: Incident-Severity-Matrix:
1. Vier Schweregrade - Einstufungs-Kriterien als entscheidbare Ja/Nein-Fragen.
2. Reaktions-SLA + Eskalationspfad je Grad.
3. SEV-4 - auch abgefangene Beinahe-Vorfaelle erfassen.
Artefakt: Incident-Severity-Matrix mit vier Schweregraden, objektiven Einstufungs-Kriterien, Reaktions-SLA und Eskalationspfad.
Fallstricke:
- Die Einstufung erfolgt subjektiv, sodass derselbe Vorfalltyp je nach Bearbeiter unterschiedlich klassifiziert wird — Mitigation: die Einstufungs-Kriterien als entscheidbare Ja/Nein-Fragen formulieren, die unabhängig vom Bearbeiter zum gleichen Ergebnis führen.
- SEV-4-Beinahe-Vorfälle werden nicht erfasst, sodass wertvolle Frühwarnsignale verloren gehen — Mitigation: auch abgefangene Beinahe-Vorfälle (durch HITL-Gate gestoppt) als SEV-4 dokumentieren und im Governance-Review auswerten.
Empfehlung: Formuliere die Einstufungs-Kriterien als entscheidbare Ja/Nein-Fragen, die unabhaengig vom Bearbeiter zum gleichen Ergebnis fuehren, statt subjektiver Einstufung. Dokumentiere auch abgefangene Beinahe-Vorfaelle (durch HITL-Gate gestoppt) als SEV-4 und werte sie im Governance-Review aus, da sonst wertvolle Fruehwarnsignale verloren gehen.
Anschluss: S-SG-080 für die übergeordnete Governance-Board-Charta, die alle Bausteine zusammenführt.

### S-SG-080 Governance-Board-Charta als Dach über alle Security-Maßnahmen verfassen

Trigger: Nach dem Aufbau zahlreicher Einzelmaßnahmen (DSFA, Risiko-Register, HITL-Gates, Incident-Playbooks, Policies) verlangt der Vorstand ein übergeordnetes Governance-Board, das alle Security- und Compliance-Bausteine bündelt, Verantwortlichkeiten klärt und die Gesamtsteuerung über einen verbindlichen Charter regelt. (Quelle: A-50, sources/12 Q132, ISO 27001 A.18)
Ziel: Eine Governance-Board-Charta erstellen, die das AI-Ethics-Committee (S-SG-056), das Champion-Programm (S-SG-042) und alle Governance-Artefakte unter einem klaren Mandat, einem Entscheidungs-Rahmen und einem Berichtsweg zur Unternehmensführung zusammenführt — damit Governance nicht aus Einzelteilen, sondern als Gesamtsystem wirkt.
Ergebnis: Eine Governance-Board-Charta mit Mandat, Mitgliederstruktur, Entscheidungsbefugnissen, einem Governance-Artefakt-Register und einem jährlichen Berichts- und Review-Zyklus.
Fähigkeit: Canvas / Document Editor für die Charta; Knowledge (Wissensordner) für die AI-Ethics-Committee-Charter (S-SG-056), das Maturity-Assessment (S-SG-045), das AI-Risiko-Register (S-SG-028) und die KI-Ethik-Positionierung (S-SG-043).
Vorgehen:
1. Mandat, Mitglieder, Entscheidungsbefugnisse festlegen.
2. Vom AI-Ethics-Committee (S-SG-056) abgrenzen, Berichtslinie definieren.
3. Governance-Artefakt-Register + jaehrlichen Review-Zyklus verankern; Faelligkeiten als Board-Agenda fuehren.
Vorlage: Governance-Board-Charta:
1. Mandat + Mitgliederstruktur + Entscheidungsbefugnisse.
2. Abgrenzung zum AI-Ethics-Committee (S-SG-056) - Board strategisch/uebergreifend, Committee operativ je Use-Case; Berichtslinie.
3. Governance-Artefakt-Register + jaehrlicher Berichts-/Review-Zyklus.
Artefakt: Governance-Board-Charta mit Mandat, Mitgliederstruktur, Entscheidungsbefugnissen, Governance-Artefakt-Register und Berichts-/Review-Zyklus.
Fallstricke:
- Das Governance-Board dupliziert die Aufgaben des AI-Ethics-Committee (S-SG-056) und erzeugt Doppelstrukturen — Mitigation: in der Charta klar abgrenzen: das Board steuert strategisch und übergreifend, das Ethics-Committee bewertet operativ einzelne Use-Cases; Berichtslinie vom Committee zum Board definieren.
- Das Governance-Artefakt-Register wird angelegt, aber die Fälligkeiten werden nicht nachverfolgt, sodass Policies still veralten — Mitigation: jede Artefakt-Fälligkeit als festen Agenda-Punkt des quartalsweisen Board-Meetings führen und überfällige Reviews eskalieren.
Empfehlung: Grenze in der Charta klar ab, dass das Board strategisch und uebergreifend steuert, waehrend das AI-Ethics-Committee (S-SG-056) operativ einzelne Use-Cases bewertet, und definiere die Berichtslinie vom Committee zum Board, um Doppelstrukturen zu vermeiden. Fuehre jede Artefakt-Faelligkeit als festen Agenda-Punkt des quartalsweisen Board-Meetings und eskaliere ueberfaellige Reviews, damit Policies nicht still veralten.
Anschluss: S-SG-001 — zurück zum AVV-Nachweis als Ausgangspunkt des Governance-Zyklus.
