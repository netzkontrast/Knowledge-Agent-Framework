# Gemini Deep Research Prompt — Maximaler Ausbau ("Maxbuild") des Little Data Agents

> Run this in **Google Gemini Deep Research** (gemini.google.com -> Deep Research mode) and
> save the report to the Drive folder **`little-data-research`** as
> `little-data-research/20-maxbuild-langdock-self-improving-rag.gdoc`, so it can be ingested
> alongside the existing prompt set.
>
> **What this prompt is for.** Unlike Prompts 1-12 (which feed individual knowledge files), this
> one commissions a *forward-looking architecture spec*: the **maximum build-out** of Little Data
> as a continuously self-updating, self-improving advisor — using **Workflows + Agents + MCP
> servers + Skills** interlocked into and with one another. The deliverable is consumed by the
> framework team to design new W/A/M/S/T-type scenarios and a target-state architecture document,
> NOT to author content scenarios directly.
>
> **House style (same as Prompts 1-12):** instructions to the researcher are in **English**
> (Gemini's strongest research language); the **deliverable output sections are written in
> German**, because Little Data is a German agent and the team consumes German artifacts. Demand
> **primary-source citations with retrieval dates**; flag **every** unverifiable claim as
> `[unverified]`. Emoji-free: use text markers (`[unsicher]`, `rot/gelb/gruen`, `ja/nein`).
>
> **Implementation honesty is the load-bearing constraint of this prompt.** Where a desired
> capability is NOT currently possible on Langdock, the researcher must say so explicitly and
> propose the API / MCP / Skill / Workflow workaround — never assert a feature exists to make the
> architecture look complete. Inventing a Langdock limit, price, or feature is the worst possible
> failure here, because this spec becomes a build plan.

---

## Prompt 20 — Maxbuild: Self-Updating, Self-Improving Little Data via Workflows + Agents + MCP + Skills

**Title to save as:** `little-data-research/20-maxbuild-langdock-self-improving-rag.gdoc`

```
ROLE
You are a senior AI-platform solutions architect with deep, current knowledge of the Langdock
enterprise AI platform (langdock.com, docs.langdock.com) and of production RAG engineering
(chunking, embeddings, re-ranking, citation/grounding, knowledge-graph audit trails, agentic
self-improvement loops). You produce sourced, implementation-honest architecture specs — never
marketing copy, never invented capabilities.

OBJECTIVE
Research the Langdock platform AND develop a specification for the MAXIMUM build-out ("maximaler
Ausbau") of an existing German-language advisor agent called "Little Data". Little Data today is
a single default Langdock Agent with a Wissensordner (Knowledge Folder) of strict-schema,
source-grounded German Markdown files plus a lean system prompt. The maximum build-out interlocks
four Langdock surfaces — WORKFLOWS, AGENTS, MCP SERVERS, and SKILLS — into and with one another so
that two outcomes hold:

(1) SELF-CURRENCY ("immer aktuell"): Little Data keeps its own knowledge continuously up to date —
    model prices, model names, platform limits, and source-document freshness — WITHOUT manual
    re-authoring of knowledge files for every change. This must respect the framework's
    maintenance cadence: cited model PRICES re-verified every 60 days, model NAMES every 90 days,
    platform feature LIMITS (chunk size, k-value, file caps) every 180 days, integration
    availability every 90 days.

(2) WEAKNESS COMPENSATION via Skills + MCP + API + Workflows: deliberately offset the gaps of the
    native Langdock platform for a long-lived advisory agent, specifically delivering —
    - durable MEMORY (cross-session state beyond Langdock's native, limited memory; note that
      native per-user chat Memory holds up to ~50 preferences AND is platform-side DISABLED inside
      Agents — verify both facts against docs.langdock.com),
    - SELF-IMPROVEMENT: a closed feedback loop where flagged bad/uncertain outputs feed back into
      the knowledge base and the prompt library (the concept the team calls the "Qualitaets-Gate"
      plus "Feedback-Schleife" — analogous to the agent's HITL quality-gate scenarios),
    - GRAPH-BASED AUDIT TRAILS: provenance/lineage of every answer (which chunk, which source
      file, which version, which retrieval) as a knowledge-graph layer, going beyond Langdock's
      native filename-based citation,
    - and ABOVE ALL: programmatic extension through Little Data's OWN RAG PIPELINE — a custom
      retrieval pipeline exposed via MCP/API (ingestion, chunking, embeddings, vector store,
      retrieval + RE-RANKING, citation/grounding) that AUGMENTS or SUPERSEDES Langdock's built-in
      Wissensordner-RAG where the native platform falls short.

AUDIENCE & CONSUMING SYSTEM
The output guides a framework team that builds German strict-schema knowledge agents. Little Data
serves a German marketing/communications audience (DACH). Governance the architecture MUST respect
and carry through every recommendation:
- Source-grounding: every factual claim about a limit, price, or feature traces to a named primary
  source; nothing is invented.
- HITL on every outward/side-effecting action (publishing, sending, writing to external systems,
  and — critically — any WRITE-BACK to the live knowledge base). Never promise "vollautomatisch"
  for an outward action or for an unreviewed knowledge mutation.
- Emoji-free German output; text markers only.
- The framework's ~2000-character chunk discipline (Langdock chunks documents at ~2000 chars; the
  team authors ~2000-2300-byte blocks with the key noun repeated and no cross-chunk pronouns).
- The framework's 9-type solution system — every solution scenario is one of: P (Prompt), A (API),
  M (MCP), S (Skill), T (Code), W (Workflow), C (Config), D (Decision), G (Guide). Map proposed
  architecture components to these types where it sharpens the design.

CITATION & VERIFICATION RULES (apply to every section)
- Prefer primary sources: langdock.com, docs.langdock.com, the Langdock changelog, and (for RAG
  engineering) primary vendor docs (Anthropic contextual retrieval, Cohere/voyage re-rankers,
  Pinecone/Weaviate/Qdrant, OpenAI embeddings, MCP spec at modelcontextprotocol.io).
- For EVERY capability, limit, price, or feature claim, give the source URL AND a retrieval date
  in the form "(Quelle: <url>, abgerufen 2026-MM-TT)".
- Flag every claim you cannot confirm from a primary source as "[unverified]".
- For date-sensitive facts add "Stand: <Monat/Jahr> — vor Nutzung verifizieren".
- If Langdock exposes docs.langdock.com/llms.txt, fetch and use it; check the changelog explicitly.
- Where a desired capability does NOT exist natively on Langdock, state "[nativ nicht moeglich]"
  and propose the API/MCP/Skill/Workflow workaround — do NOT invent a native feature.

REQUIRED OUTPUT SECTIONS (write ALL section bodies in GERMAN; numbered, with sub-bullets)

1. PLATTFORM-BESTANDSAUFNAHME (verified capabilities AND hard limits)
   Verifizierte aktuelle Faehigkeiten UND harte Grenzen je Langdock-Flaeche, jede Aussage mit
   Primaerquelle und Abrufdatum belegt, Luecken als [unverified] markiert:
   - Workflows: Node-Typen (Trigger/Logic/Action/AI), Trigger-Typen (Manual, Webhook, Scheduled,
     Integration, Form), Scheduled-Trigger-Granularitaet (kann ein Workflow zeitgesteuert z. B.
     alle 60/90/180 Tage laufen?), Code-Node (Python und/oder JavaScript? bestaetigen), HTTP-
     Request-Node, Human-in-the-Loop-Node, Structured Output am Agent-Node, Max-Steps-Stopp,
     Budget-/Kosten-Guard (Workspace/Workflow/Per-Execution, Warn-Schwellen).
   - Agents: Knowledge-Anbindung (Library- vs. Synced-Folder), Capability-Toggles, Tool-Calling
     (native Actions vs. MCP-Tools vs. Custom Actions), Memory-Status in Agenten.
   - MCP: Langdock als MCP-CLIENT (Transport STREAMABLE_HTTP / Server-Sent Events, Auth ueber
     Custom Header, Auto-Tool-Discovery bis 50 Tools, User-Confirmation) UND als MCP-SERVER
     (/mcp-Endpoint, Tools find_agent / ask_agent / ask_custom_agent, AGENT_API-Scope).
   - Skills: Was ist ein Langdock-Skill genau, wie wird er erstellt/aktiviert, Workspace- vs.
     persoenlicher Scope, Trigger-Mechanik, was ein Skill aufrufen darf (kann ein Skill ein
     MCP-Tool oder eine Action kapseln?). HINWEIS: Die genaue Grenze zwischen "Library-Skill",
     "Inline-Skill" und Action ist in der oeffentlichen Doku potenziell unscharf — wo unklar,
     ausdruecklich als [unverified] kennzeichnen.
   - API: Base-URLs, Scopes (vollstaendige Liste), Completion API (OpenAI-kompatibel,
     reasoning_effort), Embedding API (Modell, 1536-dim bestaetigen), Agents API, Knowledge
     Folder API (Upload, Upload-Async, Sync-States, DELETE), SEARCH API (Chunks + Relevanz-Score,
     retrievt nur, generiert nicht), Usage Export API, Audit Logs API, Rate Limits (Default RPM/TPM
     — der Wert ~500 RPM / 60.000 TPM kursiert; bestaetigen und datieren), /mcp-Endpoint,
     Non-Streaming-Timeout.
   - Native Wissensordner-RAG: Chunk-Groesse (~2000 Zeichen bestaetigen), Embedding-Dimension
     (1536), Retrieval-k (bis 50), PER-DOCUMENT-CAP (1 Chunk pro Datei pro Query), Re-Ranking
     (existiert ein natives Re-Ranking? wenn nicht: [nativ nicht moeglich]), Datei-/Groessen-
     Limits, Synced-Folder-Grenzen (200 Dateien, 5 Folder/Agent, 24-h-Sync), Citation-Mechanik.
   - Deployment/Sicherheit relevant fuer einen Dauerbetrieb: Hosting-Region (EU), Zero-Data-
     Retention, BYOK, statische Outbound-IP, Compliance-Zertifikate.
   Schliesse mit einer Tabelle "Faehigkeit | Limit/Wert | Primaerquelle + Abrufdatum |
   verifiziert ja/nein".

2. SCHWAECHEN-KATALOG (structured weakness catalog)
   Strukturierter Katalog der Langdock-Plattformschwaechen, die fuer einen langlebigen Advisory-
   Agenten relevant sind. Je Schwaeche: Beschreibung, betroffene Flaeche, SCHWEREGRAD
   (rot/gelb/gruen), und ob Skills / MCP / API / Workflows sie beheben koennen (ja/teilweise/nein)
   mit Begruendung. Mindestens abdecken:
   - RAG-Retrieval-Unschaerfe und das Per-Document-Cap (relevanter Chunk wird verdraengt),
   - kein natives Re-Ranking,
   - keine native Knowledge-Graph-/Audit-Lineage ueber die filename-basierte Citation hinaus,
   - begrenzte durable Memory (50 Praeferenzen im Chat, in Agenten deaktiviert),
   - kein natives Self-Update der Wissensbasis (Knowledge altert manuell),
   - kein nativer geschlossener Feedback-/Self-Improvement-Loop,
   - Indexierungsverzug nach Upload (Vektorisierung nicht in Echtzeit),
   - alles Weitere, das die Recherche aufdeckt.
   Jede Schwaeche mit mindestens einem belegten Hinweis ODER explizit als [unverified] markiert,
   falls nur aus Drittquellen/Erfahrung ableitbar.

3. KOMBINATIONSMUSTER (Architektur — interlocking patterns)
   Konkrete, ineinandergreifende Muster, wie die vier Flaechen zusammenwirken — jeweils als
   Text-Sequenzdiagramm (Schritt-fuer-Schritt-Fluss), nicht als Prosa:
   - Wie ein WORKFLOW (Scheduled Trigger) einen AGENTEN aufruft, der einen MCP-SERVER anspricht,
     der einen SKILL/ein Tool ausfuehrt und das Ergebnis strukturiert zurueckgibt.
   - Wie SKILLS MCP-Tools kapseln (Skill als wiederverwendbare Huelle um ein MCP-Tool).
   - Wie WORKFLOWS die Frische-Checks planen (Scheduled-Trigger-Kadenzen 60/90/180 Tage,
     gekoppelt an die Maintenance-Kadenz) und bei Drift einen HITL-Review-Node ausloesen.
   - Wie ein Agent einen ZWEITEN, spezialisierten Retrieval-Agenten/MCP-Server fuer die eigene
     RAG-Pipeline konsultiert (Abschnitt 4) statt der nativen Suche.
   Mappe jedes Muster auf das 9-Typen-System (P/A/M/S/T/W/C/D/G) und benenne pro Muster die
   HITL-Punkte und die [nativ nicht moeglich]-Stellen mit ihrem Workaround.

4. EIGENE RAG-PIPELINE (programmatische Erweiterung — reference architecture)
   Referenzarchitektur fuer Little Datas EIGENE RAG-Pipeline, exponiert via MCP/API, die die
   native Wissensordner-RAG ergaenzt oder ersetzt, wo diese nicht ausreicht:
   - Ingestion: Quellen (Langdock-Wissensordner-Export via Knowledge Folder API, externe Quellen),
     Trigger.
   - Chunking-Strategie: explizit die ~2000-Zeichen-Chunk-Disziplin des Frameworks respektieren
     (ein Szenario = ein Chunk, Schluessel-Nomen wiederholt, keine chunkuebergreifenden Pronomen);
     begruenden, wo eine andere Chunk-Strategie noetig waere.
   - Embeddings + Vektorspeicher: welches Embedding-Modell (1536-dim kompatibel zur Langdock-
     Embedding-API? oder externer Store), welcher Vektorspeicher, wo gehostet (EU/DSGVO).
   - Retrieval + RE-RANKING: Two-Stage-Retrieval (Vektor-Recall dann Re-Ranking), das das native
     Per-Document-Cap umgeht oder mildert; benenne ein konkretes Re-Ranker-Verfahren mit Quelle.
   - Citation/Grounding: jede Antwort traegt Chunk-ID, Quelldatei, Version, Retrieval-Zeitpunkt.
   - Einbindung zurueck in den Langdock-Agenten: als MCP-Server (Tool "little_data_retrieve")
     ODER ueber die BFF/API-Schicht; Sequenz beschreiben.
   - FRISCHE-/SELF-UPDATE-LOOP: wie die Pipeline veraltete Chunks erkennt (Stand-Datum, Preis-/
     Namens-/Limit-Aenderung) und einen kuratierten, HITL-freigegebenen Update vorschlaegt — kein
     unbeaufsichtigtes Schreiben in die Live-Wissensbasis.
   - GRAPH-AUDIT-LAYER: Datenmodell des Knowledge-Graphen (Knoten: Quelle, Datei, Version, Chunk,
     Antwort, Nutzer-Feedback; Kanten: belegt/abgeleitet-aus/widerspricht), und wie er die
     Lineage jeder Antwort rekonstruierbar macht.
   Liefere ein Text-Architektur-Diagramm (Komponenten + Datenfluesse).

5. MEMORY- UND SELF-IMPROVEMENT-SCHICHT
   Design fuer durable Memory und den geschlossenen Feedback-Loop:
   - Durable Memory: wo der Cross-Session-Zustand liegt (externer Store via MCP/API, da Agenten-
     Memory deaktiviert ist), welche Daten (Nutzerpraeferenzen, Projektkontext, abgelehnte
     Antworten), Aufbewahrung, DSGVO-Grenzen, HITL-/Loesch-Pfad.
   - Self-Improvement: der geschlossene Pfad "schlechte/unsichere Antwort melden -> strukturierte
     Erfassung (Was war falsch, welcher Chunk, welche Quelle) -> Kuratierungs-Queue -> HITL-Review
     -> Update von Knowledge-Chunk und/oder Prompt-Bibliothek -> Re-Index -> Canary-Re-Test".
     Ausdruecklich klarstellen: Feedback verbessert die KURATIERUNG der Quelldokumente und Prompts,
     NICHT das Modell selbst (kein automatisches Re-Training).
   - Anbindung an die bestehende Governance: HITL als Pflicht-Gate vor jedem Knowledge-Write,
     Source-Grounding bleibt invariant, deutsche Stimme, emoji-frei.
   Mappe die Komponenten auf 9-Typen-Codes (z. B. Feedback-Erfassung = Workflow + Skill;
   Kuratierungs-Gate = HITL-Node; Memory-Store = MCP/API).

6. SPEZIFIKATION DES MAXIMALEN AUSBAUS (consolidated target-state spec)
   Konsolidierte Zielzustand-Spezifikation von Little Data:
   - Komponenten-Inventar (Agenten, Workflows, MCP-Server, Skills, externe Stores) mit je einer
     Zeile Zweck und 9-Typen-Code.
   - Datenfluesse zwischen den Komponenten (Text-Diagramm).
   - Der Selbstaktualisierungs-Mechanismus end-to-end (welcher Scheduled Workflow prueft was in
     welcher Kadenz, welcher HITL-Schritt gibt frei).
   - Gestufte Build-Roadmap MVP -> Vollausbau mit Abhaengigkeiten und Risiken je Stufe; je Stufe
     markieren, welche Teile heute nativ moeglich sind und welche [nativ nicht moeglich] sind und
     einen Workaround brauchen.

7. QUELLEN & VERIFIKATIONSSTATUS
   - Vollstaendige Quellenliste mit Abrufdatum je Quelle.
   - Explizite [unverified]-Liste: jede Aussage im Dokument, die nicht aus einer Primaerquelle
     bestaetigt werden konnte, gesammelt an einem Ort, damit das Team sie vor dem Bau prueft.
   - "Verified vs. unverified"-Anhang speziell fuer datums-sensitive Werte (Preise, Modellnamen,
     Limits, Rate Limits).

FORMAT (closing instruction)
- One H2 per section (1-7), sub-bullets as specified; ALL section bodies in German.
- Text-only architecture/sequence diagrams (no images): the vector DB ignores images, and the
  consuming team needs text. Use indentation/arrows (->), not pictographs.
- Tables where a "Faehigkeit | Wert | Quelle + Abrufdatum | verifiziert" or
  "Komponente | Zweck | 9-Typ-Code" lookup helps.
- Emoji-free throughout; use text markers ([unsicher], rot/gelb/gruen, ja/nein/teilweise).
- Target length: 6.000-9.000 words; completeness over brevity.
- Every Langdock capability/limit/price carries a primary-source URL + retrieval date; everything
  unverifiable is flagged [unverified]; every [nativ nicht moeglich] gap names its workaround.
- Do NOT invent Langdock features, limits, prices, scopes, node types, or MCP tools. If the public
  record is thin, say so explicitly rather than substituting plausible detail.
```

---

## After Gemini finishes

1. Save the report to the `little-data-research` Drive folder as
   `20-maxbuild-langdock-self-improving-rag.gdoc`.
2. The team fetches it via the Drive MCP and uses it to design new W/A/M/S/T-type scenarios
   (freshness Workflows, the own-RAG MCP server, the feedback-loop Skill) and a target-state
   architecture record — all under the same strict schema, emoji-free Data-style, and the
   ~2000-char chunk discipline as files 00-19.
3. If any section comes back thin or asserts an unverified Langdock capability as fact, paste
   Gemini's output back and a tighter follow-up prompt will be written for just that section.
