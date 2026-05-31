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

## RBAC und Granular-Rollen (Workspace-Admin/Editor/Member/Viewer)

Innerhalb der Plattform wird der Zugriff auf Funktionen und Daten durch ein striktes rollenbasiertes Zugriffskontrollsystem geregelt. Dieses System, RBAC und Granular-Rollen (Workspace-Admin/Editor/Member/Viewer), stellt sicher, dass das Principle of Least Privilege im gesamten Marketing-Team eingehalten wird. Jeder Nutzer erhält exakt die Rechte, die er für seine Aufgaben benötigt, und keinen Zugriff auf administrative Konfigurationen. Der Workspace-Admin verfügt über die uneingeschränkte Kontrolle über Abrechnung, SSO-Konfigurationen und unternehmensweite Limits. Der Editor ist in der Lage, neue Workflows, Agenten und Wissensordner (Knowledge Folder) zu erstellen und deren Struktur zu verändern. Der Member kann diese erstellten KI-Ressourcen aktiv für seine tägliche Arbeit nutzen, jedoch keine grundlegenden Systemänderungen vornehmen. Der Viewer hat rein lesenden Zugriff, was ideal für externe Stakeholder oder das reine Konsumieren von generierten Berichten ist. Durch die konsequente Anwendung von RBAC und Granular-Rollen (Workspace-Admin/Editor/Member/Viewer) wird verhindert, dass unerfahrene Mitarbeiter versehentlich kritische Unternehmens-Agenten löschen oder teure LLM-Modelle für irrelevante Aufgaben freischalten. Der nächste Schritt für die Marketing-Direktion ist die Erstellung einer klaren Mapping-Tabelle: Welche Job-Rolle (z. B. Content-Manager vs. Praktikant) korrespondiert mit welcher Plattform-Rolle, um eine konsistente Zuweisung durch das IT-Provisioning zu garantieren.

## Group-Sharing und Berechtigungsmodell

Für die effiziente Zusammenarbeit in großen, funktionsübergreifenden Abteilungen reicht eine individuelle Rechtevergabe oft nicht aus. Hier greift das Group-Sharing und Berechtigungsmodell, welches die Skalierung der Zusammenarbeit drastisch vereinfacht. Anstatt beispielsweise einen spezifischen PR-Agenten oder einen sensiblen Wissensordner (Knowledge Folder) mit Strategie-Dokumenten einzeln an zwanzig Mitarbeiter freizugeben, können diese Ressourcen direkt einer vordefinierten Gruppe (z. B. "Marketing-Führungskreis" oder "Performance-Team") zugewiesen werden. Das Group-Sharing und Berechtigungsmodell synchronisiert sich im Idealfall über SCIM direkt mit den bestehenden Gruppenstrukturen des Active Directorys. Dies bedeutet: Wenn ein Mitarbeiter durch die HR-Abteilung in die Gruppe "Social Media" verschoben wird, erhält er in Langdock automatisch Zugriff auf alle Agenten, Prompts und Workflows, die mit dieser Gruppe geteilt wurden. Gleichzeitig entfällt der Zugriff auf Ressourcen seiner alten Abteilung. Dieses Group-Sharing und Berechtigungsmodell ist essenziell, um Silos abzubauen, ohne die Vertraulichkeit von Daten zu gefährden. Ein "Financial-Reporting-Agent" bleibt somit exklusiv dem Management vorbehalten, während der "Brand-Voice-Agent" global für alle Marketing-Rollen verfügbar ist. Der erste Schritt zur Umsetzung besteht in der Definition sauberer, aufgabenbasierter Gruppen, die sowohl in der IT-Infrastruktur als auch in Langdock logisch übereinstimmen.

## Audit Logs und SIEM-Integration (Splunk, Datadog)

Absolute Transparenz über alle Systemaktivitäten ist eine nicht verhandelbare Anforderung der Enterprise-IT. Langdock erfüllt dies durch umfassende Audit Logs und SIEM-Integration (Splunk, Datadog). Die Audit Logs API erfasst jede signifikante Veränderung im Workspace: Wer hat wann einen API-Schlüssel rotiert? Welcher Nutzer hat die System-Prompts eines unternehmenskritischen Agenten modifiziert? Gab es fehlgeschlagene Authentifizierungsversuche? Diese granulare Telemetrie ist entscheidend, um interne Richtlinien zu überwachen und bei Sicherheitsvorfällen eine lückenlose forensische Analyse durchführen zu können. Die native Audit Logs und SIEM-Integration (Splunk, Datadog) erlaubt es Sicherheitsteams, diesen kontinuierlichen Datenstrom direkt in ihre zentralen Security Information and Event Management Systeme einzuleiten. Dadurch können automatisierte Alarme konfiguriert werden, beispielsweise wenn massenhaft Dokumente aus einem sensiblen Wissensordner gelöscht werden. Für die Marketing-Direktorin bedeutet dies die Gewissheit, dass die Nutzung der KI-Plattform kein Blindflug ist, sondern vollständig nachvollziehbar bleibt. Der nächste Umsetzungsschritt verlangt die Generierung eines spezialisierten API-Schlüssels, der ausschließlich Lesezugriff auf den Audit-Endpunkt besitzt. Dieser Schlüssel wird dem IT-Security-Team übergeben, welches die fortlaufende Ingestion in Splunk oder Datadog konfiguriert und entsprechende Überwachungs-Dashboards etabliert.

## Was die Rechtsabteilung wissen muss

Die rechtliche Freigabe von generativer KI ist oft der größte Engpass bei der Einführung. Daher ist es kritisch, proaktiv die Argumente zu strukturieren rund um das Thema: Was die Rechtsabteilung wissen muss. Im Kern fordert die Rechtsabteilung Sicherheiten bezüglich Datenschutz, Urheberrecht und der Vermeidung von unlauterem Wettbewerb. Das wichtigste Argument ist die vertraglich garantierte Trennung von Kundendaten und Modell-Training. Die Rechtsabteilung muss verifizieren, dass das Zero-Data-Retention-Agreement greift und keine Geschäftsgeheimnisse in die Modelle von OpenAI oder Anthropic abfließen. Weiterhin ist bezüglich Was die Rechtsabteilung wissen muss das EU-Hosting essenziell, um die Anforderungen der DSGVO zu erfüllen. Ein weiterer kritischer Punkt ist die Kennzeichnungspflicht für KI-generierte Inhalte (z. B. nach dem deutschen UWG). Die Plattform ermöglicht es, Workflows so zu konfigurieren, dass Wasserzeichen oder standardisierte Disclaimer ("KI-generierter Inhalt") in die Outputs integriert werden. Dies minimiert das Risiko von Abmahnungen durch die Wettbewerbszentrale (AI-Washing). Der direkte nächste Schritt für die Marketing-Direktorin ist die Zusammenstellung eines One-Pagers, der die ISO 27001 Zertifikate, den Standard-AVV und die Architektur-Skizze der europäischen Datenverarbeitung enthält. Dieses Dokument beantwortet 90 Prozent der Standard-Rückfragen der Juristen und beschleunigt den Freigabeprozess massiv.

## Was die Marketing-Direktorin der Geschäftsführung sagt

Um die notwendigen Budgets für eine Enterprise-KI-Plattform zu sichern, muss die Kommunikation auf C-Level-Ziele ausgerichtet sein. Das Narrativ unter Was die Marketing-Direktorin der Geschäftsführung sagt konzentriert sich auf Risikominimierung, Effizienzsteigerung und skalierbare Innovation. Anstatt technische Features zu erläutern, liegt der Fokus auf dem Schutz von Unternehmenswerten. Der unregulierte Einsatz von ChatGPT-Accounts durch Mitarbeiter erzeugt ein unkalkulierbares Haftungsrisiko (Shadow AI). Die Investition in Langdock ist primär eine Investition in Compliance und erst sekundär in Produktivität. Gleichzeitig betont Was die Marketing-Direktorin der Geschäftsführung sagt die messbaren ROI-Faktoren: Durch die Zentralisierung der Prompts, die Nutzung von Wissensordnern (Knowledge Folder) und die Automatisierung von Workflows sinken die operativen Agenturkosten. Das Marketing wird befähigt, strategische Inhalte schneller und in höherer Qualität zu produzieren, ohne das Markenvertrauen durch Datenschutzverletzungen zu riskieren. Ein weiterer zentraler Punkt für das C-Level ist die Unabhängigkeit: Durch die agnostische Plattform-Architektur ist das Unternehmen nicht an einen einzigen KI-Anbieter gebunden (Vendor Lock-in). Fällt ein Modell zurück, kann nahtlos auf ein leistungsstärkeres System gewechselt werden. Der nächste Schritt ist die Präsentation eines klaren Business Cases, der die Kosten der Plattform den eingesparten Arbeitsstunden und den mitigierten rechtlichen Risiken gegenüberstellt.

## Marketing-Szenarien aus dieser Domäne

### S-SG-001 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Content-Marketing (1). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Content-Marketing (1).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-002 für die weiterführende Validierung.

### S-SG-002 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Performance-Marketing (2). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Performance-Marketing (2).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-003 für die weiterführende Validierung.

### S-SG-003 Social-Media Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Social-Media (3). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Social-Media (3).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-004 für die weiterführende Validierung.

### S-SG-004 Brand-Management Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Brand-Management (4). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Brand-Management (4).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-005 für die weiterführende Validierung.

### S-SG-005 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich CRM-und-Loyalty (5). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich CRM-und-Loyalty (5).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-006 für die weiterführende Validierung.

### S-SG-006 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (6). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (6).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-007 für die weiterführende Validierung.

### S-SG-007 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Event-Marketing (7). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Event-Marketing (7).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-008 für die weiterführende Validierung.

### S-SG-008 MarketingOps Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (8). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (8).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-009 für die weiterführende Validierung.

### S-SG-009 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (9). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (9).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-010 für die weiterführende Validierung.

### S-SG-010 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (10). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (10).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-011 für die weiterführende Validierung.

### S-SG-011 Social-Media Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Social-Media (11). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Social-Media (11).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-012 für die weiterführende Validierung.

### S-SG-012 Brand-Management Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Brand-Management (12). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Brand-Management (12).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-013 für die weiterführende Validierung.

### S-SG-013 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich CRM-und-Loyalty (13). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich CRM-und-Loyalty (13).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-014 für die weiterführende Validierung.

### S-SG-014 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich PR-und-Kommunikation (14). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich PR-und-Kommunikation (14).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-015 für die weiterführende Validierung.

### S-SG-015 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich Event-Marketing (15). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich Event-Marketing (15).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-016 für die weiterführende Validierung.

### S-SG-016 MarketingOps Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich MarketingOps (16). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich MarketingOps (16).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-017 für die weiterführende Validierung.

### S-SG-017 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Content-Marketing (17). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Content-Marketing (17).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-018 für die weiterführende Validierung.

### S-SG-018 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Performance-Marketing (18). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Performance-Marketing (18).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-019 für die weiterführende Validierung.

### S-SG-019 Social-Media Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Social-Media (19). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Social-Media (19).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-020 für die weiterführende Validierung.

### S-SG-020 Brand-Management Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Brand-Management (20). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Brand-Management (20).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-021 für die weiterführende Validierung.

### S-SG-021 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich CRM-und-Loyalty (21). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich CRM-und-Loyalty (21).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-022 für die weiterführende Validierung.

### S-SG-022 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich PR-und-Kommunikation (22). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich PR-und-Kommunikation (22).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-023 für die weiterführende Validierung.

### S-SG-023 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Event-Marketing (23). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Event-Marketing (23).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-024 für die weiterführende Validierung.

### S-SG-024 MarketingOps Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich MarketingOps (24). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich MarketingOps (24).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-025 für die weiterführende Validierung.

### S-SG-025 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich Content-Marketing (25). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich Content-Marketing (25).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-026 für die weiterführende Validierung.

### S-SG-026 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Performance-Marketing (26). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Performance-Marketing (26).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-027 für die weiterführende Validierung.

### S-SG-027 Social-Media Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Social-Media (27). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Social-Media (27).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-028 für die weiterführende Validierung.

### S-SG-028 Brand-Management Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Brand-Management (28). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Brand-Management (28).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-029 für die weiterführende Validierung.

### S-SG-029 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich CRM-und-Loyalty (29). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich CRM-und-Loyalty (29).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-030 für die weiterführende Validierung.

### S-SG-030 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich PR-und-Kommunikation (30). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich PR-und-Kommunikation (30).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-031 für die weiterführende Validierung.

### S-SG-031 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Event-Marketing (31). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Event-Marketing (31).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-032 für die weiterführende Validierung.

### S-SG-032 MarketingOps Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich MarketingOps (32). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich MarketingOps (32).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-033 für die weiterführende Validierung.

### S-SG-033 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Content-Marketing (33). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Content-Marketing (33).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-034 für die weiterführende Validierung.

### S-SG-034 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Performance-Marketing (34). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Performance-Marketing (34).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-035 für die weiterführende Validierung.

### S-SG-035 Social-Media Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich Social-Media (35). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich Social-Media (35).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-036 für die weiterführende Validierung.

### S-SG-036 Brand-Management Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich Brand-Management (36). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich Brand-Management (36).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-037 für die weiterführende Validierung.

### S-SG-037 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich CRM-und-Loyalty (37). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich CRM-und-Loyalty (37).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-038 für die weiterführende Validierung.

### S-SG-038 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich PR-und-Kommunikation (38). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich PR-und-Kommunikation (38).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-039 für die weiterführende Validierung.

### S-SG-039 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Freigabe-Prozess für Kampagnen dauert zu lange im Bereich Event-Marketing (39). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Freigabe-Prozess für Kampagnen dauert zu lange im Bereich Event-Marketing (39).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-040 für die weiterführende Validierung.

### S-SG-040 MarketingOps Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich MarketingOps (40). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich MarketingOps (40).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-041 für die weiterführende Validierung.

### S-SG-041 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (41). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (41).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-042 für die weiterführende Validierung.

### S-SG-042 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Performance-Marketing (42). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Performance-Marketing (42).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-043 für die weiterführende Validierung.

### S-SG-043 Social-Media Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Social-Media (43). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Social-Media (43).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-044 für die weiterführende Validierung.

### S-SG-044 Brand-Management Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Brand-Management (44). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Brand-Management (44).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-045 für die weiterführende Validierung.

### S-SG-045 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (45). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (45).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-046 für die weiterführende Validierung.

### S-SG-046 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich PR-und-Kommunikation (46). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich PR-und-Kommunikation (46).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-047 für die weiterführende Validierung.

### S-SG-047 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Event-Marketing (47). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Event-Marketing (47).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-048 für die weiterführende Validierung.

### S-SG-048 MarketingOps Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich MarketingOps (48). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich MarketingOps (48).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-049 für die weiterführende Validierung.

### S-SG-049 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (49). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (49).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-050 für die weiterführende Validierung.

### S-SG-050 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Performance-Marketing (50). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Performance-Marketing (50).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-051 für die weiterführende Validierung.

### S-SG-051 Social-Media Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Social-Media (51). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Social-Media (51).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-052 für die weiterführende Validierung.

### S-SG-052 Brand-Management Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Brand-Management (52). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Brand-Management (52).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-053 für die weiterführende Validierung.

### S-SG-053 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (53). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (53).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-054 für die weiterführende Validierung.

### S-SG-054 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich PR-und-Kommunikation (54). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich PR-und-Kommunikation (54).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-055 für die weiterführende Validierung.

### S-SG-055 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Event-Marketing (55). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Event-Marketing (55).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-056 für die weiterführende Validierung.

### S-SG-056 MarketingOps Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich MarketingOps (56). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich MarketingOps (56).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-057 für die weiterführende Validierung.

### S-SG-057 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (57). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (57).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-058 für die weiterführende Validierung.

### S-SG-058 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Performance-Marketing (58). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Performance-Marketing (58).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-059 für die weiterführende Validierung.

### S-SG-059 Social-Media Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Social-Media (59). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Social-Media (59).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-060 für die weiterführende Validierung.

### S-SG-060 Brand-Management Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Brand-Management (60). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Brand-Management (60).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-061 für die weiterführende Validierung.

### S-SG-061 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich CRM-und-Loyalty (61). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich CRM-und-Loyalty (61).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-062 für die weiterführende Validierung.

### S-SG-062 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (62). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (62).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-063 für die weiterführende Validierung.

### S-SG-063 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Internationale Teams benötigen Zugriff im Bereich Event-Marketing (63). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Internationale Teams benötigen Zugriff im Bereich Event-Marketing (63).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-064 für die weiterführende Validierung.

### S-SG-064 MarketingOps Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich MarketingOps (64). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich MarketingOps (64).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-065 für die weiterführende Validierung.

### S-SG-065 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich Content-Marketing (65). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich Content-Marketing (65).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-066 für die weiterführende Validierung.

### S-SG-066 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich Performance-Marketing (66). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich Performance-Marketing (66).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-067 für die weiterführende Validierung.

### S-SG-067 Social-Media Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Social-Media (67). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Social-Media (67).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-068 für die weiterführende Validierung.

### S-SG-068 Brand-Management Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Brand-Management (68). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Brand-Management (68).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-069 für die weiterführende Validierung.

### S-SG-069 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (69). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich CRM-und-Loyalty (69).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-070 für die weiterführende Validierung.

### S-SG-070 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich PR-und-Kommunikation (70). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich PR-und-Kommunikation (70).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-071 für die weiterführende Validierung.

### S-SG-071 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Event-Marketing (71). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Event-Marketing (71).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-072 für die weiterführende Validierung.

### S-SG-072 MarketingOps Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich MarketingOps (72). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich MarketingOps (72).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-073 für die weiterführende Validierung.

### S-SG-073 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Content-Marketing (73). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Content-Marketing (73).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-074 für die weiterführende Validierung.

### S-SG-074 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (74). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (74).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-075 für die weiterführende Validierung.

### S-SG-075 Social-Media Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Social-Media (75). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Social-Media (75).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-076 für die weiterführende Validierung.

### S-SG-076 Brand-Management Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Brand-Management (76). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Brand-Management (76).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-077 für die weiterführende Validierung.

### S-SG-077 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich CRM-und-Loyalty (77). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich CRM-und-Loyalty (77).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-078 für die weiterführende Validierung.

### S-SG-078 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Freigabe-Prozess für Kampagnen dauert zu lange im Bereich PR-und-Kommunikation (78). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Freigabe-Prozess für Kampagnen dauert zu lange im Bereich PR-und-Kommunikation (78).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-079 für die weiterführende Validierung.

### S-SG-079 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich Event-Marketing (79). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich Event-Marketing (79).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-080 für die weiterführende Validierung.

### S-SG-080 MarketingOps Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich MarketingOps (80). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich MarketingOps (80).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-081 für die weiterführende Validierung.

### S-SG-081 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (81). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Content-Marketing (81).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-082 für die weiterführende Validierung.

### S-SG-082 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (82). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (82).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-083 für die weiterführende Validierung.

### S-SG-083 Social-Media Governance Check

**Wann nutzen (Trigger):** Freigabe-Prozess für Kampagnen dauert zu lange im Bereich Social-Media (83). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Freigabe-Prozess für Kampagnen dauert zu lange im Bereich Social-Media (83).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-084 für die weiterführende Validierung.

### S-SG-084 Brand-Management Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich Brand-Management (84). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich Brand-Management (84).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-085 für die weiterführende Validierung.

### S-SG-085 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Legal fordert eine Überprüfung des Workflows im Bereich CRM-und-Loyalty (85). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Legal fordert eine Überprüfung des Workflows im Bereich CRM-und-Loyalty (85).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-086 für die weiterführende Validierung.

### S-SG-086 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich PR-und-Kommunikation (86). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich PR-und-Kommunikation (86).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-087 für die weiterführende Validierung.

### S-SG-087 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Event-Marketing (87). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Event-Marketing (87).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-088 für die weiterführende Validierung.

### S-SG-088 MarketingOps Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (88). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (88).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-089 für die weiterführende Validierung.

### S-SG-089 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Content-Marketing (89). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Content-Marketing (89).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-090 für die weiterführende Validierung.

### S-SG-090 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Performance-Marketing (90). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Performance-Marketing (90).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-091 für die weiterführende Validierung.

### S-SG-091 Social-Media Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Social-Media (91). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Social-Media (91).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-092 für die weiterführende Validierung.

### S-SG-092 Brand-Management Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich Brand-Management (92). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich Brand-Management (92).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-093 für die weiterführende Validierung.

### S-SG-093 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich CRM-und-Loyalty (93). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich CRM-und-Loyalty (93).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-094 für die weiterführende Validierung.

### S-SG-094 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Datenabfluss bei Konkurrenten als Warnsignal im Bereich PR-und-Kommunikation (94). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Sicherheits-Audit-Report. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Sicherheits-Audit-Report zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Datenabfluss bei Konkurrenten als Warnsignal im Bereich PR-und-Kommunikation (94).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Sicherheits-Audit-Report mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-095 für die weiterführende Validierung.

### S-SG-095 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Event-Marketing (95). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Event-Marketing (95).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-096 für die weiterführende Validierung.

### S-SG-096 MarketingOps Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (96). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Rollout-Policy. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Rollout-Policy zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (96).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Rollout-Policy mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-097 für die weiterführende Validierung.

### S-SG-097 Content-Marketing Governance Check

**Wann nutzen (Trigger):** Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (97). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Sicherstellung der Compliance-Vorgaben. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Sicherstellung der Compliance-Vorgaben.
[Kontext]: Ein neues LLM-Modell soll getestet werden im Bereich Content-Marketing (97).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-098 für die weiterführende Validierung.

### S-SG-098 Performance-Marketing Governance Check

**Wann nutzen (Trigger):** Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (98). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Mitarbeiter nutzen unautorisierte Tools im Bereich Performance-Marketing (98).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-099 für die weiterführende Validierung.

### S-SG-099 Social-Media Governance Check

**Wann nutzen (Trigger):** Budget-Review für Langdock-Lizenzen steht an im Bereich Social-Media (99). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Budget-Review für Langdock-Lizenzen steht an im Bereich Social-Media (99).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-100 für die weiterführende Validierung.

### S-SG-100 Brand-Management Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich Brand-Management (100). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Aufbau einer RBAC-Berechtigungsstruktur. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Aufbau einer RBAC-Berechtigungsstruktur.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich Brand-Management (100).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-101 für die weiterführende Validierung.

### S-SG-101 CRM-und-Loyalty Governance Check

**Wann nutzen (Trigger):** Der CISO verlangt einen System-Audit im Bereich CRM-und-Loyalty (101). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Nutzung. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge, Integrations
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Eliminierung von Shadow-AI-Nutzung.
[Kontext]: Der CISO verlangt einen System-Audit im Bereich CRM-und-Loyalty (101).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-102 für die weiterführende Validierung.

### S-SG-102 PR-und-Kommunikation Governance Check

**Wann nutzen (Trigger):** Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (102). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Risiko-Matrix. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Web-Search
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Risiko-Matrix zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Eine Agentur bittet um Vollzugriff im Bereich PR-und-Kommunikation (102).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Risiko-Matrix mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-103 für die weiterführende Validierung.

### S-SG-103 Event-Marketing Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich Event-Marketing (103). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Optimierung der Audit-Trail-Transparenz. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Compliance-Checkliste. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Compliance-Checkliste zum Thema: Optimierung der Audit-Trail-Transparenz.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich Event-Marketing (103).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Compliance-Checkliste mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-104 für die weiterführende Validierung.

### S-SG-104 MarketingOps Governance Check

**Wann nutzen (Trigger):** Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (104). In dieser Situation benötigt die Führungskraft eine sofortige Einordnung der Lage.
**Strategisches Ziel:** Minimierung von rechtlichen Risiken. Dies stellt sicher, dass Ressourcen effizient allokiert und Risiken minimiert werden.
**Hands-on Ergebnis:** Governance-Briefing. Dieses Dokument dient als unveränderliche Grundlage für die Besprechung.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst
**Vorgehen (3 Schritte):**
1. Erfassung der Anforderungen und Prüfung der vorliegenden internen Dokumentation.
2. Abgleich mit den DSGVO-Richtlinien und den unternehmensinternen Security-Vorgaben.
3. Strukturierte Aufbereitung der Ergebnisse zur direkten internen Weiterverwendung.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein(e) Governance-Briefing zum Thema: Minimierung von rechtlichen Risiken.
[Kontext]: Compliance warnt vor DSGVO-Risiken im Bereich MarketingOps (104).
[Aufgabe]: Detaillierte Analyse und Erstellung einer belastbaren Entscheidungsgrundlage.
[Format]: Kompakte, tabellarische Struktur mit klaren Zuständigkeiten.
[Constraints]: Nutze ausschließlich die Dokumente im Wissensordner. Erfinde keine Daten."
**Erwartetes Artefakt:** Governance-Briefing mit klaren, messbaren KPIs und eindeutigen Anweisungen.
**Fallstricke (mind. 2 spezifisch):**
- Allgemeine Vorgaben: KI liefert zu generische Richtlinien, wenn die spezifische Unternehmensarchitektur nicht im Prompt erwähnt wird.
- Fehlende Metriken: Ohne klare Messgrößen ist die Policy nicht durchsetzbar.
**Anschluss-Szenario:** S-SG-105 für die weiterführende Validierung.
