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
**Anschluss-Szenario:** S-SG-001
