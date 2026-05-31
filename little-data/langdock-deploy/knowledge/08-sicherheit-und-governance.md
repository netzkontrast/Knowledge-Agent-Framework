# Sicherheit und Governance für Marketing-Direktoren

> **Was diese Datei abdeckt:**
> - DSGVO und EU-Hosting (Azure EU-Region)
> - Zertifizierungen und Datenresidenz
> - Berechtigungsmodelle und Automatisierung
>
> **Was diese Datei NICHT abdeckt:**
> - Agenten-Konfiguration und Workflow-Details → siehe `02-agenten-konfiguration`
> - Preismodelle und Kostenschwellen → siehe `07-modelle-und-kosten`

## DSGVO und EU-Hosting (Azure EU-Region)

Für Marketing-Teams in der DACH-Region bildet die DSGVO-Konformität das fundamentale Kriterium für die Einführung generativer KI. Die unkontrollierte Nutzung von Consumer-Tools führt unausweichlich zu unkontrollierten Datenabflüssen — dem sogenannten "Shadow AI". Die Architektur von Langdock eliminiert dieses kritische Risiko durch eine strikte Infrastruktur. Das absolute Fundament dieser Compliance ist das garantierte EU-Hosting. Alle essenziellen Systemkomponenten, Datenbanken und Vektor-Indizes werden exklusiv in der Microsoft Azure EU-Region betrieben. Dies stellt sicher, dass hochsensible Marketing-Daten, seien es unveröffentlichte Strategiepapiere, granulare Zielgruppendefinitionen oder Kampagnen-Drafts, den europäischen Rechtsraum zu keinem Zeitpunkt verlassen. Das Konzept rund um DSGVO und EU-Hosting ist explizit so strukturiert, dass Marketing-Direktorinnen ihren Rechtsabteilungen sofort einen klaren, auditierbaren Standard vorlegen können. Anstelle von undurchsichtigen, global verteilten Server-Strukturen greift ein zentralisiertes Bereitstellungsmodell. Worauf muss ich bei DSGVO achten? Es geht im Kern um Transparenz und den Abschluss eines Auftragsverarbeitungsvertrags (AVV). Dieser rechtliche Rahmen ist direkt über die Administrationsoberfläche der Plattform abschließbar. Die strikte Einhaltung der Vorgaben rund um DSGVO und EU-Hosting schützt das Unternehmen vor empfindlichen regulatorischen Strafen und verhindert den unautorisierten Abfluss von proprietärem Wissen.

## ISO 27001 und SOC 2 Type II Zertifizierungen

Die technische und organisatorische Sicherheit der Langdock-Plattform wird durch unabhängige, international anerkannte Standards validiert. Im Zentrum stehen hierbei die ISO 27001 und SOC 2 Type II Zertifizierungen. Diese Testate garantieren, dass nicht nur die Software-Infrastruktur, sondern auch alle internen operativen Prozesse der Langdock GmbH strengen Sicherheitskontrollen unterliegen. Die ISO 27001 Zertifizierung belegt das Vorhandensein eines systematischen Information Security Management Systems (ISMS), welches Risiken proaktiv identifiziert und minimiert. Parallel dazu fokussieren sich die SOC 2 Type II Zertifizierungen auf die Kriterien Sicherheit, Verfügbarkeit, Verarbeitungsintegrität, Vertraulichkeit und Datenschutz über einen längeren, auditierten Zeitraum. Für eine Marketing-Direktorin bedeuten die ISO 27001 und SOC 2 Type II Zertifizierungen eine massive Beschleunigung im Procurement-Prozess. Anstatt wochenlange individuelle Security-Assessments durch die eigene IT-Abteilung durchführen zu lassen, dienen diese Zertifikate als standardisierter Vertrauensbeweis. Sie belegen objektiv, dass alle hochgeladenen Dokumente im Wissensordner (Knowledge Folder) nach Best-Practice-Methoden vor unbefugtem Zugriff geschützt sind. Der nächste logische Schritt in der internen Kommunikation besteht darin, diese Nachweise proaktiv an den Chief Information Security Officer (CISO) zu übermitteln, um die formale Freigabe für den unternehmensweiten Rollout der Agenten zu erwirken.

## Datenresidenz und Trainings-Opt-out

Ein kritischer Einwand bei der Nutzung großer Sprachmodelle (Large Language Models) betrifft die unerwünschte Weiternutzung von proprietären Unternehmensinformationen. Geben wir Daten an OpenAI weiter, wenn wir Langdock nutzen? Die klare Antwort lautet: Nein, weder für das Training noch für eine dauerhafte Speicherung. Langdock löst dieses Problem durch kompromisslose Datenresidenz und Trainings-Opt-out Verträge. Es gilt der absolute Grundsatz: Langdock und die angebundenen Modell-Provider nutzen Kundendaten zu keinem Zeitpunkt für das Training ihrer Modelle. Diese Zusicherung ist für Marketing-Abteilungen von höchster Relevanz, da sie häufig mit unreleased Produktinformationen oder sensiblen Kommunikationsstrategien arbeiten. Die strikte Durchsetzung von Datenresidenz und Trainings-Opt-out wird über dedizierte Enterprise-Agreements mit den KI-Anbietern realisiert. Jeder Prompt, jedes generierte Briefing und jede hochgeladene Marktforschung bleibt das exklusive Eigentum des Kunden. Die Datenresidenz stellt sicher, dass Informationen physisch in definierten, sicheren Rechenzentren verbleiben. Für Unternehmen mit extremen Sicherheitsanforderungen ermöglicht Langdock zusätzlich das "Bring Your Own Key" (BYOK) Verfahren. Hierbei behält die eigene IT-Abteilung die vollständige Kontrolle über die API-Schlüssel und die Modellabrechnung. Der nächste Schritt zur Absicherung besteht darin, diese Garantie explizit in die internen Richtlinien aufzunehmen.

## SAML SSO (Entra/Google/Okta)

Die dezentrale Verwaltung von Passwörtern stellt ein erhebliches Sicherheitsrisiko und einen massiven administrativen Overhead dar. Aus diesem Grund unterstützt Langdock die nahtlose Integration von SAML SSO (Security Assertion Markup Language Single Sign-On). Diese Technologie ermöglicht es Marketing-Mitarbeitern, sich mit ihren bestehenden Unternehmenszugängen (beispielsweise über Microsoft Entra, Google Workspace oder Okta) bei der Plattform anzumelden. Durch die Implementierung von SAML SSO (Entra/Google/Okta) entfällt die Notwendigkeit für separate Langdock-Passwörter. Dies reduziert nicht nur Support-Anfragen an die IT-Abteilung wegen vergessener Zugangsdaten drastisch, sondern eliminiert auch die Gefahr schwacher, mehrfach verwendeter Passwörter. Für die Administration bedeutet SAML SSO (Entra/Google/Okta) eine zentrale Kontrolle: Sobald ein Mitarbeiter das Unternehmen verlässt und sein Account im zentralen Verzeichnisdienst deaktiviert wird, erlischt augenblicklich auch der Zugriff auf alle Langdock-Agenten und Wissensordner. Dies ist besonders für Agenturen oder Teams mit hoher Fluktuation entscheidend. Der konkrete nächste Schritt zur Einrichtung erfordert die Zusammenarbeit mit der IT-Administration, um die entsprechenden Metadaten aus dem Identity Provider zu exportieren und in den Workspace-Einstellungen von Langdock zu hinterlegen. Diese Einmal-Konfiguration garantiert ein reibungsloses Onboarding für hunderte von Nutzern gleichzeitig.

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

### S-SG-001 Falsifikation der SCIM-Konfiguration

**Wann nutzen (Trigger):** Julia muss die DSGVO-Compliance der HubSpot-Synchronisation nach Inkonsistenzen bei ausgeschiedenen Mitarbeitern verifizieren.
**Strategisches Ziel:** Eliminierung von unautorisiertem Zugriff (Shadow AI) vor dem Compliance-Audit.
**Hands-on Ergebnis:** Ein Falsifikations-Report, der aufschlüsselt, welche User-Provisioning-Konfigurationen fehlerhaft sind.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Extraktion der SCIM-Konfigurationsprotokolle aus dem internen IT-Verzeichnis.
2. Überprüfung gegen die Vorgabe des Entra-ID Quirks (Parameter `?aadOptscim062020`).
3. Zusammenfassung der Schwachstellen für die IT-Administration.
**Beispiel-Prompt (DE, PTCF):**
> "Angenommen, unsere HubSpot-Synchronisation über Entra ID ist fehlerhaft.
[Kontext]: Es gibt Inkonsistenzen beim Entzug von Lizenzen von Ex-Mitarbeitern.
[Aufgabe]: Prüfe die SCIM-Richtlinien auf bekannte Implementierungsfehler bei Microsoft Entra ID.
[Format]: Tabellarischer Report ('Fehlerquelle' und 'Lösung').
[Constraints]: Nutze ausschließlich technische Dokumentationen."
**Erwartetes Artefakt:** Ein technischer Report, der System-Parameter und Fehlerursachen auflistet.
**Fallstricke (mind. 2 spezifisch):**
- Fokus auf generische SCIM-Protokolle: Die AI verpasst den spezifischen Entra-ID-Parameter.
- Zu wenig Kontext: Ohne IT-Fehlermeldungen bleibt die Analyse theoretisch.
**Anschluss-Szenario:** S-SG-002 für die Freigabe des Berechtigungsmodells.

### S-SG-002 Pre-Mortem für Agentur-API-Freigabe

**Wann nutzen (Trigger):** Eine Performance-Agentur fordert API-Vollzugriff, um Meta-Ads direkt aus Langdock generieren zu lassen.
**Strategisches Ziel:** Proaktive Vermeidung von Kostenexplosionen und DSGVO-Datenabflüssen.
**Hands-on Ergebnis:** Ein Pre-Mortem-Assessment, das Worst-Case-Szenarien und Präventivmaßnahmen dokumentiert.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Data Analyst
**Vorgehen (3 Schritte):**
1. Definition des Worst-Case-Szenarios (z.B. Kosten steigen um 500%).
2. Entwicklung von Gegenmaßnahmen wie striktem Scoping der API-Schlüssel.
3. Generierung der Richtlinie, die der Agentur zur Unterschrift vorgelegt wird.
**Beispiel-Prompt (DE, PTCF):**
> "Wir simulieren ein Pre-Mortem für die API-Freigabe an eine Agentur. Das Projekt ist nach sechs Monaten katastrophal gescheitert.
[Kontext]: Die Agentur benötigt Zugriff auf Meta-Ads-Generierung.
[Aufgabe]: Identifiziere technische Schwachstellen in unserer API-Vergabe.
[Format]: Liste der 5 größten Risiken mit konkreter Präventivmaßnahme.
[Constraints]: Beziehe dich explizit auf die Langdock-Architektur."
**Erwartetes Artefakt:** Ein Assessment mit Handlungsanweisungen zur API-Schlüssel-Konfiguration.
**Fallstricke (mind. 2 spezifisch):**
- Nicht-technische Fokusverschiebung: Fokus auf Kommunikation statt auf API-Sicherheitsfeatures.
- Fehlende Kosten-Dimension: Das Budget-Limit-Feature wird nicht explizit geprüft.
**Anschluss-Szenario:** S-SG-003 zur Etablierung eines automatisierten Audit-Logs.

### S-SG-003 Steelmanning des EU-Hosting-Einwands

**Wann nutzen (Trigger):** Der CISO blockiert den Rollout mit dem Argument, dass cloudbasierte Modelle unsicher für europäische Kundendaten seien.
**Strategisches Ziel:** Beschleunigung der rechtlichen Freigabe durch eine Argumentationskette, die Bedenken der IT-Sicherheit auflöst.
**Hands-on Ergebnis:** Ein Executive-Memo, das Sicherheitsbedenken anhand der Langdock-Infrastruktur systematisch widerlegt.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Rekonstruktion der CISO-Argumentation in stärkster Form (Steelmanning).
2. Zuordnung der Langdock-Sicherheits-Features (ISO 27001, Azure EU-Region).
3. Erstellung des kompakten Memos zur direkten Weiterleitung an das C-Level.
**Beispiel-Prompt (DE, PTCF):**
> "Rekonstruiere die Argumentation unseres CISOs gegen cloudbasierte KI-Modelle.
[Kontext]: Wir wollen Langdock ausrollen, aber die IT fürchtet Datenabfluss.
[Aufgabe]: Nimm jeden Einwand ernst und setze ihm die Sicherheitszertifizierungen von Langdock entgegen.
[Format]: Ein Executive-Memo mit 'Stärkster Einwand' und 'Gegenmaßnahme'.
[Constraints]: Vermeide Marketing-Sprech. Nutze harte technische Fakten."
**Erwartetes Artefakt:** Ein Executive-Memo als fundierte Entscheidungsgrundlage.
**Fallstricke (mind. 2 spezifisch):**
- Schwaches Steelmanning: Die AI baut einen "Strohmann" auf, was die Glaubwürdigkeit zerstört.
- Vermischung von Providern: Unklare Trennung zwischen Langdock-Hosting und Trainings-Opt-out.
**Anschluss-Szenario:** S-SG-004 für den Entwurf des Auftragsverarbeitungsvertrags.

### S-SG-004 Prior Update für Markenstimmen-Agenten

**Wann nutzen (Trigger):** Das Brand-Management meldet, dass Teams widersprüchliche Markenstimmen-Agenten nutzen, was externe Kommunikation verwässert.
**Strategisches Ziel:** Etablierung eines auditsicheren Freigabeprozesses durch das Group-Sharing-Modell.
**Hands-on Ergebnis:** Eine Zugriffs-Policy, die definiert, wie Brand-Assets über SCIM-Gruppen verwaltet werden.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Erfassung des Status Quo der dezentralen Nutzung in den Teams.
2. Abgleich mit dem zentralen Berechtigungsmodell (RBAC) der Plattform.
3. Generierung der Policy zur internen Kommunikation an Marketing-Leiter.
**Beispiel-Prompt (DE, PTCF):**
> "Die Annahme, dass jedes Team eigene Agenten baut, führt zu Markeninkonsistenzen. Wir müssen diese Strategie updaten.
[Kontext]: Abteilungen nutzen abweichende Brand-Voice-Prompt-Sets.
[Aufgabe]: Erstelle eine Governance-Policy basierend auf Langdocks Group-Sharing und RBAC.
[Format]: Zugriffs-Policy mit klaren Rollendefinitionen (Admin, Editor, Member).
[Constraints]: Berücksichtige die Integration von SCIM-Gruppen."
**Erwartetes Artefakt:** Eine Zugriffs-Policy, die Wildwuchs bei Agenten unterbindet.
**Fallstricke (mind. 2 spezifisch):**
- Überregulierung: Die Policy blockiert legitime Ad-hoc-Anfragen der Teams.
- Fehlende SCIM-Integration: Die AI vergisst die Verbindung zum Active Directory.
**Anschluss-Szenario:** S-SG-005 zur Überprüfung bestehender Audit Logs.

### S-SG-005 Source Triangulation für Expansionsrechte

**Wann nutzen (Trigger):** Bei einer internationalen Expansion müssen die Zugriffsrechte auf sensible Kampagnendaten strikt nach Regionen getrennt werden.
**Strategisches Ziel:** Aufbau einer granularen RBAC-Struktur, die lokale Compliance-Vorgaben berücksichtigt.
**Hands-on Ergebnis:** Eine RBAC-Matrix, die alle Regionen, Rollen und den Zugriff auf Workflows abbildet.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Sammlung der regionalen Datenschutzanforderungen (z.B. EU-DSGVO vs. US-CCPA).
2. Mapping der Anforderungen auf Langdock-Rollen (Workspace-Admin, Editor).
3. Synthese der Matrix zur finalen Überprüfung durch die globale IT.
**Beispiel-Prompt (DE, PTCF):**
> "Trianguliere die Zugriffsanforderungen für unsere Marketing-Infrastruktur.
[Kontext]: Wir expandieren in die USA. Die Teams dürfen keinen Zugriff auf Rohdaten der anderen Regionen haben.
[Aufgabe]: Entwirf ein Berechtigungsmodell basierend auf Langdocks RBAC.
[Format]: RBAC-Matrix mit 'Region', 'Plattform-Rolle', 'SCIM-Gruppe' und 'Zugriff'.
[Constraints]: Der Workspace-Admin muss zentral in der DACH-Region bleiben."
**Erwartetes Artefakt:** Eine Matrix, die als Blueprint für die IT-Provisionierung dient.
**Fallstricke (mind. 2 spezifisch):**
- Regionale Silobildung: Die Matrix blockiert den globalen Best-Practice-Austausch.
- Verwechslung der Rollen: Lesezugriff (Viewer) und Nutzungsrecht (Member) werden nicht getrennt.
**Anschluss-Szenario:** S-SG-006 für die SSO-Konfiguration der Regionen.

### S-SG-006 Contradiction Log für Workflow-Audit

**Wann nutzen (Trigger):** Workflows zur Content-Generierung verarbeiten Kunden-Feedback ohne "KI-generiert"-Disclaimer, was gegen das UWG verstößt.
**Strategisches Ziel:** Identifikation und Eliminierung von rechtlichen Widersprüchen in der Automatisierungs-Architektur.
**Hands-on Ergebnis:** Ein Contradiction Log, das alle rechtswidrigen Workflows priorisiert auflistet.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner), Canvas / Document Editor
**Vorgehen (3 Schritte):**
1. Erfassung der Workflow-Dokumentationen und rechtlichen Rahmenbedingungen.
2. Evaluierung der Workflow-Nodes (z.B. Integrations-Nodes) auf fehlende Disclaimer.
3. Generierung des finalen Audit-Dokuments für das MarketingOps-Team.
**Beispiel-Prompt (DE, PTCF):**
> "Erstelle ein Contradiction Log für unsere Automatisierungen.
[Kontext]: Workflows verwandeln Kundenfeedback in Posts. Legal warnt vor UWG-Verstößen.
[Aufgabe]: Identifiziere technische Diskrepanzen zwischen dem Setup und den Compliance-Vorgaben.
[Format]: Tabelle der Widersprüche und notwendigen Anpassungen (z.B. Human-in-the-Loop).
[Constraints]: Fokus auf DACH-spezifische Gesetzgebung."
**Erwartetes Artefakt:** Ein Contradiction Log als direkte Arbeitsanweisung für Entwickler.
**Fallstricke (mind. 2 spezifisch):**
- Fehlende technische Lösung: Das Artefakt schlägt keine konkrete Workflow-Node vor.
- Juristische Überinterpretation: Die AI formuliert abstrakte Rechtsrisiken statt belegbarer UWG-Verstöße.
**Anschluss-Szenario:** S-SG-007 zur Neukonfiguration der Integrations-Trigger.

### S-SG-007 WWCMM zum Shadow AI Risiko

**Wann nutzen (Trigger):** Ein Teammitglied nutzt private Consumer-Tools für offizielle Übersetzungen, da ihm die Enterprise-Plattform "zu langsam" ist.
**Strategisches Ziel:** Eliminierung von Shadow-AI-Praktiken durch faktenbasierte Risikokommunikation.
**Hands-on Ergebnis:** Ein Governance-Briefing, das die Risiken des Datenabflusses bei Consumer-Tools präzise darlegt.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Definition der Haltung des Mitarbeiters (Consumer-Tools sind harmlos).
2. Strukturierung der Argumente rund um garantierte Langdock-Datenresidenz.
3. Erstellung des Briefings, das Produktivitätsgewinne und Compliance-Risiken gegenüberstellt.
**Beispiel-Prompt (DE, PTCF):**
> "Wir müssen darlegen, warum private Consumer-KIs ein massives Compliance-Risiko darstellen.
[Kontext]: Ein Event-Manager umgeht unsere Architektur.
[Aufgabe]: Erstelle ein Governance-Briefing, das erklärt, welche Daten abfließen und wie Langdock dies durch Zero-Data-Retention-Agreements löst.
[Format]: Ein Dokument, strukturiert als 'Risiko Consumer-Tool' vs. 'Enterprise-Garantie'.
[Constraints]: Keine Vorwürfe formulieren. Die Tonalität muss faktenbasiert sein."
**Erwartetes Artefakt:** Ein Governance-Briefing, einsetzbar als Schulungsmaterial.
**Fallstricke (mind. 2 spezifisch):**
- Zu aggressive Tonalität: Das Briefing klingt nach Abmahnung statt Enablement.
- Fehlende Alternativen: Ohne Hinweis auf Langdock-Effizienz bleibt der Mitarbeiter frustriert.
**Anschluss-Szenario:** S-SG-008 zur Initiierung eines Onboarding-Workflows.

### S-SG-008 Red Team Audit der Rollout-Policy

**Wann nutzen (Trigger):** Die Direktion hat eine neue KI-Nutzungsrichtlinie entworfen. Diese muss vor Rollout auf Lücken geprüft werden.
**Strategisches Ziel:** Erhöhung der Robustheit der Compliance durch einen simulierten Angriff auf die internen Richtlinien.
**Hands-on Ergebnis:** Ein Audit-Report, der die Schwachstellen der geplanten Policy schonungslos offenlegt.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Einspeisung der Rollout-Policy als Kontext-Dokument.
2. Anwendung der Red-Team-Perspektive: Wie würden Mitarbeiter Regeln umgehen?
3. Zusammenfassung der Schwachstellen mit sofort anwendbaren Korrekturvorschlägen.
**Beispiel-Prompt (DE, PTCF):**
> "Nimm die Rolle eines Red Teams ein und attackiere unsere KI-Nutzungsrichtlinie.
[Kontext]: Wir stehen kurz vor dem Rollout einer neuen Governance-Policy.
[Aufgabe]: Finde Schlupflöcher in SSO, SCIM und RBAC Vorgaben.
[Format]: Audit-Report, der die 3 größten Schwachstellen aufzeigt und Anpassungen vorschlägt.
[Constraints]: Nutze unsere Langdock-Architektur als Basis für die Analyse."
**Erwartetes Artefakt:** Ein Sicherheits-Audit-Report zur Überarbeitung der Policy.
**Fallstricke (mind. 2 spezifisch):**
- Unrealistische Angriffe: Fokus auf komplexe Hacker-Angriffe statt auf Prompt-Injection durch Mitarbeiter.
- Demotivierende Ergebnisse: Die Analyse bietet keine konstruktiven Lösungen an.
**Anschluss-Szenario:** S-SG-009 zur Einarbeitung der Korrekturen.

### S-SG-009 First-Principles Budget-Analyse

**Wann nutzen (Trigger):** OpenAI-Kosten sind explodiert. Die Geschäftsführung fordert einen Business Case für die Enterprise-Lizenz.
**Strategisches Ziel:** Dokumentation der Systemkosten und Sicherung des Budgets durch Aufzeigen des ROI (Compliance & Effizienz).
**Hands-on Ergebnis:** Ein Entscheidungs-Memo, das Plattformkosten auf fundamentale Geschäftswerte zurückführt.
**Eingesetzte Langdock-Fähigkeit(en):** Data Analyst, Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Dekonstruktion der Kostenstruktur: Welche Agenten verursachen die meisten API-Calls?
2. Quantifizierung des Wertes der DSGVO-Konformität (Trainings-Opt-out).
3. Generierung des Memos, das Ausgaben in geschäftliche Risikominimierung übersetzt.
**Beispiel-Prompt (DE, PTCF):**
> "Führe eine First-Principles-Analyse unserer explodierenden KI-Kosten durch.
[Kontext]: Die Geschäftsführung hinterfragt die Langdock-Kosten.
[Aufgabe]: Breche die Kosten auf die fundamentalen Werte herunter (Sicherheit, DSGVO). Argumentiere, warum der Einsatz von Consumer-Tools langfristig teurer wäre.
[Format]: Entscheidungs-Memo mit klarer ROI-Argumentation.
[Constraints]: Nutze eine rein betriebswirtschaftliche Sprache."
**Erwartetes Artefakt:** Ein Memo, das die Investition in Langdock rechtfertigt.
**Fallstricke (mind. 2 spezifisch):**
- Rechtfertigungs-Haltung: Das Memo klingt defensiv anstatt den strategischen Mehrwert zu positionieren.
- Fehlende Maßnahmen: Keine internen Limits (BYOK-Budgets) vorgeschlagen.
**Anschluss-Szenario:** S-SG-010 zur technischen Implementierung von Token-Limits.

### S-SG-010 Base-Rate Analyse des Freigabeprozesses

**Wann nutzen (Trigger):** Der Freigabeprozess für Kampagnen dauert extrem lange. Legal ist durch KI-Checks überlastet.
**Strategisches Ziel:** Beschleunigung der Freigabe durch klare Compliance-Parameter, ohne Sicherheit (ISO 27001) zu gefährden.
**Hands-on Ergebnis:** Eine Compliance-Checkliste für Editoren, die Standard-Freigaben automatisiert.
**Eingesetzte Langdock-Fähigkeit(en):** Knowledge (Wissensordner)
**Vorgehen (3 Schritte):**
1. Analyse der Base-Rate: Wie viele Kampagnen verletzen Compliance-Regeln (z.B. UWG-Kennzeichnung)?
2. Entwicklung einer Checkliste für grundlegende Sicherheitsfragen.
3. Standardisierung für die Integration in den Erstellungs-Workflow.
**Beispiel-Prompt (DE, PTCF):**
> "Entwickle eine priorisierte Compliance-Checkliste für den Freigabeprozess.
[Kontext]: Die Rechtsabteilung ist überlastet. Die Base-Rate echter Verstöße ist gering.
[Aufgabe]: Erstelle Kriterien, die ein Marketing-Editor zwingend abhaken muss (z.B. Trainings-Opt-out aktiv), bevor Legal prüft.
[Format]: Compliance-Checkliste im Tabellenformat.
[Constraints]: Fokussiere dich auf integrierte Langdock-Sicherheitsmechanismen."
**Erwartetes Artefakt:** Eine Compliance-Checkliste, die den operativen Workflow entlastet.
**Fallstricke (mind. 2 spezifisch):**
- Juristische Unschärfe: Die Checkliste ersetzt rechtliche Beratung, anstatt die Baseline zu filtern.
- Überkomplexität: Die Liste ist zu lang und blockiert den Workflow.
**Anschluss-Szenario:** S-SG-001 für regelmäßige Evaluation der Wirksamkeit.
