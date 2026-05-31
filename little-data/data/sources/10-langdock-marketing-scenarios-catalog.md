# **Langdock Enterprise AI: Comprehensive Marketing Scenario Catalog**

The rapid adoption of generative AI in enterprise environments necessitates platforms that combine advanced language models with rigorous data security and process automation. Langdock addresses these enterprise requirements through a unified architecture that includes model-agnostic chat, autonomous agents, and complex automated workflows.1 Crucially for marketing organizations operating within European jurisdictions, Langdock ensures GDPR alignment and offers EU-based hosting without utilizing proprietary corporate data for foundation model training.2  
This comprehensive catalog details 128 concrete marketing scenarios where Langdock delivers measurable value. The analysis demonstrates how specific platform capabilities—such as vector-based Folders for document retrieval 4, the interactive Canvas for collaborative editing 5, the Data Analyst tool for quantitative synthesis 5, and the visual Workflow builder for cross-platform automation 6—can be operationalized across fourteen distinct marketing functions.

## **A. CONTENT MARKETING**

Content marketing requires synthesizing disparate strategic documents, product roadmaps, and brand guidelines into high-quality output. Langdock’s Folders feature allows marketing teams to bypass the standard token-limit constraints of typical chat interfaces by utilizing vector search across up to 1,000 reference files.4 This ensures that AI-generated content remains strictly tethered to verified corporate knowledge, drastically reducing hallucination risks during the drafting process. Furthermore, the Canvas interface facilitates a highly iterative editorial process, allowing content directors to refine AI drafts in a collaborative, split-screen environment.5

### **S-001 Editorial Calendar Planning**

## **Marketing function: Content Marketing Trigger / situation: Quarterly planning requires mapping themes to upcoming product launches and seasonal trends. Goal: Generate a structured 90-day content calendar aligned with strategic themes. Langdock feature(s): Agents / Folders / Canvas How it works (3-5 sentences): An Agent queries a Folder containing the quarterly marketing strategy, product roadmap, and past top-performing assets.**

4 It correlates product launch dates with industry events to propose weekly topics. The output is populated in the Canvas, allowing the marketing director to adjust dates and topics collaboratively using the split-screen editor.5 **Sample prompt (German, in quotes):** "Als Content-Stratege \[Persona\], erstelle einen 90-Tage-Redaktionsplan. Nutze den Strategie-Ordner für Q3 und den Produkt-Fahrplan als Basis \[Context\]. Liefere das Ergebnis im Canvas als Tabelle mit den Spalten: Datum, Thema, Format, Zielgruppe und Funnel-Stufe \[Format\]." **Expected outcome / artifact:** A 90-day tabular content calendar. **KPIs / measurement:** Calendar completion time; alignment score with product marketing. **Pitfalls:** The model may cluster too many high-effort assets in a single week if production timelines are not explicitly defined in the context. **Estimated time saved:** 4 hours/quarter

### **S-002 Comprehensive Briefing Generation**

## **Marketing function: Content Marketing Trigger / situation: A new blog post is approved and needs a detailed brief for freelance writers. Goal: Produce a standardized, comprehensive writer’s brief ensuring brand alignment. Langdock feature(s): Workflows (Jira Trigger → Agent → Google Docs Action) How it works (3-5 sentences): The process begins with an Integration Trigger when a new content ticket is created in Jira.**

6 An Agent extracts the topic, searches the SEO Folder for keywords, and generates a brief. An Action node then creates a Google Doc and updates the original Jira ticket with the document link.6 **Sample prompt (German, in quotes):** "Als Managing Editor \[Persona\], verfasse ein Content-Briefing für das Thema '{ticket\_title}'. Integriere die primären Keywords aus dem angehängten SEO-Dokument und beachte unsere Brand-Voice-Richtlinien \[Context\]. Formatiere dies als gegliedertes Briefing-Dokument mit Zielgruppe, Wordcount, Outline und Call-to-Action \[Format\]." **Expected outcome / artifact:** A Google Doc brief linked in the Jira ticket. **KPIs / measurement:** Freelancer revision rate; brief creation time. **Pitfalls:** Generic SEO keywords might be prioritized over the specific semantic core if the Folder search retrieves broad strategy documents instead of the specific cluster. **Estimated time saved:** 1 hour/asset

### **S-003 Blog Post Drafting via Canvas**

## **Marketing function: Content Marketing Trigger / situation: The content team needs to draft a 1,500-word article based on a subject matter expert (SME) interview. Goal: Transform raw interview transcripts into a polished, brand-aligned blog draft. Langdock feature(s): Chat / Canvas / File Attachment How it works (3-5 sentences): The user attaches the raw SME interview transcript and opens a Chat using a Canvas-supported model.**

5 The AI drafts the article directly in the Canvas. The marketer then uses the split-screen interface to highlight specific paragraphs and instruct the AI to increase technical depth or simplify terminology while maintaining full editorial control. **Sample prompt (German, in quotes):** "Als Senior Texter \[Persona\], schreibe einen Blogpost mit 1500 Wörtern basierend auf dem angehängten Interview-Transkript. Nutze das Transkript als einzige inhaltliche Quelle, behalte aber einen professionellen, B2B-fokussierten Ton bei \[Context\]. Gib das Ergebnis im Canvas als strukturierten Artikel mit H2- und H3-Überschriften aus \[Format\]." **Expected outcome / artifact:** A 1,500-word draft in Canvas. **KPIs / measurement:** Time to first draft; qualitative SME approval. **Pitfalls:** The AI might invent statistics if the transcript includes conversational exaggerations (e.g., "we save a ton of time") instead of asking for concrete data points. **Estimated time saved:** 3 hours/asset

### **S-004 Webinar Repurposing**

## **Marketing function: Content Marketing Trigger / situation: A successful 45-minute webinar just concluded, and the content needs to be distributed across channels. Goal: Extract multiple content formats (blog, social, newsletter) from a single video transcript. Langdock feature(s): Agents / Folders / Workflows How it works (3-5 sentences): A Webhook Trigger initiates when a Zoom cloud recording is available, prompting an HTTP Request to fetch the transcript.**

6 An Agent analyzes and splits the content into one blog post, three LinkedIn posts, and one newsletter snippet. An Action node then saves these distinct assets into a shared Google Drive folder.6 **Sample prompt (German, in quotes):** "Als Content-Repurposer \[Persona\], wandle das beigefügte Webinar-Transkript in drei Assets um. Das Thema ist 'AI im Marketing' und richtet sich an ein C-Level-Publikum \[Context\]. Erstelle: 1\. Eine 300-Wörter-Zusammenfassung für den Newsletter, 2\. Drei LinkedIn-Posts mit Hook, 3\. Einen 800-Wörter-Blog-Entwurf \[Format\]." **Expected outcome / artifact:** Three distinct content assets in a shared drive. **KPIs / measurement:** Number of assets published per foundational piece. **Pitfalls:** Transcripts with poor audio quality or filler words might result in disjointed outputs unless the prompt explicitly instructs the AI to ignore transcript errors. **Estimated time saved:** 4 hours/webinar

### **S-005 Content Audit & Tagging**

## **Marketing function: Content Marketing Trigger / situation: The marketing team is migrating to a new CMS and needs to audit 200+ existing blog posts. Goal: Categorize and tag historical content to identify gaps and update requirements. Langdock feature(s): Data Analyst / File Attachment How it works (3-5 sentences): The marketer exports a CSV of all blog URLs and titles, uploading it to the Data Analyst tool.**

5 The AI executes Python code to parse the titles and categorize them into predefined thematic buckets. It assigns relevant tags and identifies outdated years in titles, outputting an enriched file. **Sample prompt (German, in quotes):** "Als SEO-Analyst \[Persona\], auditiere die angehängte CSV-Datei mit Blog-Titeln und URLs. Nutze unsere vier Hauptthemen zur Kategorisierung und markiere Veraltetes \[Context\]. Liefere eine neue CSV-Struktur zurück, die Spalten für 'Kategorie', 'Vorgeschlagene Tags' und 'Veraltet (Ja/Nein)' enthält \[Format\]." **Expected outcome / artifact:** An enriched CSV file with metadata for CMS import. **KPIs / measurement:** Percentage of correctly tagged articles. **Pitfalls:** Ambiguous titles might be miscategorized if the AI cannot scrape the URL content and relies solely on the title string. **Estimated time saved:** 10 hours/audit

### **S-006 Content Gap Analysis**

## **Marketing function: Content Marketing Trigger / situation: Competitors are outranking the brand on core industry topics. Goal: Identify missing subtopics in the brand’s knowledge base compared to competitor outlines. Langdock feature(s): Agents / Web Search / Folders How it works (3-5 sentences): An Agent equipped with Web Search capabilities scrapes the top three ranking competitor articles for a target keyword.**

6 It cross-references these findings against the brand's own content stored in a Folder.4 The agent outputs a list of headers and concepts the competitors cover that the brand currently omits. **Sample prompt (German, in quotes):** "Als SEO-Stratege \[Persona\], führe eine Content-Gap-Analyse durch. Vergleiche unsere Dokumente im Ordner mit den aktuellen Top-3-Suchergebnissen für 'B2B SaaS Pricing' via Web Search \[Context\]. Erstelle eine Aufzählungsliste der fehlenden Unterthemen und H2-Überschriften, die wir ergänzen müssen \[Format\]." **Expected outcome / artifact:** A bulleted list of missing topics and suggested H2s. **KPIs / measurement:** Increase in organic traffic post-optimization. **Pitfalls:** Web search might pull in irrelevant sidebar content from competitor sites, skewing the gap analysis. **Estimated time saved:** 3 hours/topic

### **S-007 Evergreen Content Refresh**

## **Marketing function: Content Marketing Trigger / situation: A high-traffic evergreen blog post has started losing organic rankings. Goal: Update the post with current year references, recent statistics, and fresh examples. Langdock feature(s): Canvas / Web Search How it works (3-5 sentences): The marketer pastes the old content into Chat and triggers Canvas.**

5 They instruct the model to use Web Search to find the latest statistics related to the topic.6 The AI updates the document in the split-screen editor, highlighting where new data and contemporary examples were injected. **Sample prompt (German, in quotes):** "Als Redakteur \[Persona\], aktualisiere den folgenden Blogpost für das aktuelle Jahr. Suche im Web nach aktuellen Studien zum Thema und ersetze alle veralteten Statistiken \[Context\]. Überarbeite den Text direkt im Canvas und hebe die geänderten Absätze fett hervor \[Format\]." **Expected outcome / artifact:** An updated article draft with cited modern statistics. **KPIs / measurement:** Recovery of lost search positions. **Pitfalls:** The AI might hallucinate a statistic if the web search fails to return concrete data; strict instructions to "only use verified sources" are required. **Estimated time saved:** 2 hours/asset

### **S-008 Podcast Scripting & Run-of-Show**

## **Marketing function: Content Marketing Trigger / situation: A guest is booked for the corporate podcast, and the host needs an interview flow. Goal: Generate a structured run-of-show (RoS) with tailored interview questions. Langdock feature(s): Chat / File Attachment How it works (3-5 sentences): The marketer attaches a PDF of the guest's recent publications or LinkedIn profile. The AI analyzes the guest's expertise and aligns it with the podcast's overarching theme. It generates a minute-by-minute timeline, intro/outro scripts, and dynamic question paths. Sample prompt (German, in quotes): "Als Podcast-Produzent \[Persona\], erstelle einen Run-of-Show für eine 45-minütige Episode. Der Gast ist Experte für Supply Chain (siehe PDF) und unser Podcast richtet sich an CIOs \[Context\]. Liefere eine strukturierte Tabelle mit Zeitstempel, Segment, Sprecher und 5 tiefgehenden Interviewfragen \[Format\]." Expected outcome / artifact: A tabular RoS document. KPIs / measurement: Host preparation time; episode flow quality. Pitfalls: Questions may be too generic if the prompt doesn't force the AI to ask contrarian questions based on the guest's specific articles. Estimated time saved: 1.5 hours/episode**

### **S-009 Video Script Generation**

## **Marketing function: Content Marketing Trigger / situation: A new product feature requires a 60-second explainer video for YouTube and LinkedIn. Goal: Write a two-column AV (Audio/Video) script matching the brand's tone. Langdock feature(s): Agents / Folders How it works (3-5 sentences): An Agent accesses the Brand Guidelines Folder to ensure the correct tone and vocabulary.**

4 It processes a feature release note to draft a two-column script, separating visuals and voiceover. The agent times the voiceover to ensure it fits the 60-second constraint, typically around 130 words. **Sample prompt (German, in quotes):** "Als Video-Copywriter \[Persona\], schreibe ein 60-Sekunden-Skript für unser neues Feature. Nutze die Brand-Guidelines aus dem Ordner und halte den Text unter 130 Wörtern \[Context\]. Erstelle ein Zwei-Spalten-Layout: Linke Spalte 'Visuals' (Regieanweisungen), rechte Spalte 'Voiceover' (Sprechertext) \[Format\]." **Expected outcome / artifact:** A 60-second AV script. **KPIs / measurement:** Script approval speed; video completion rate. **Pitfalls:** AI often underestimates the time it takes to speak words aloud, requiring a hard word-count limit rather than just a time limit. **Estimated time saved:** 2 hours/script

### **S-010 Newsletter Drafting**

## **Marketing function: Content Marketing Trigger / situation: The weekly newsletter needs to summarize three recent company blogs and one industry news item. Goal: Compile and stylize the weekly newsletter draft. Langdock feature(s): Workflows (Scheduled Trigger → Web Search → Agent) How it works (3-5 sentences): A Scheduled Trigger fires weekly, prompting an Agent to search the company RSS and industry news via Web Search.**

6 The Agent drafts the newsletter using the specific brand voice. Finally, an Action node sends the draft directly to a Slack channel for editorial review.6 **Sample prompt (German, in quotes):** "Als E-Mail-Marketer \[Persona\], verfasse den wöchentlichen Newsletter. Fasse die drei Blog-Artikel in jeweils zwei Sätzen zusammen und füge eine aktuelle Branchen-News aus dem Web Search-Ergebnis hinzu \[Context\]. Das Format soll ein HTML-ähnlicher Text mit Betreffzeile, kurzem Intro und Call-to-Action-Buttons sein \[Format\]." **Expected outcome / artifact:** A curated newsletter draft in Slack. **KPIs / measurement:** Newsletter CTR; time to compile. **Pitfalls:** Automated web searches for industry news might pull controversial or competitor-owned content if negative keywords aren't specified. **Estimated time saved:** 2 hours/week

### **S-011 Whitepaper Structuring**

## **Marketing function: Content Marketing Trigger / situation: The team needs to produce a gated 15-page industry report but is stuck on the outline. Goal: Generate a comprehensive, logically flowing whitepaper outline. Langdock feature(s): Canvas / Folders How it works (3-5 sentences): The user connects a Folder containing raw survey data and industry reports.**

4 The AI synthesizes this data in Chat to propose a six-chapter whitepaper outline. The marketer transitions to Canvas to drag, drop, and refine the chapters before generating the full text.5 **Sample prompt (German, in quotes):** "Als B2B-Redakteur \[Persona\], erstelle eine Gliederung für ein 15-seitiges Whitepaper. Nutze die Umfragedaten im verknüpften Ordner, um die Kapitel logisch aufzubauen \[Context\]. Liefere eine nummerierte Liste (Kapitel 1-6) mit jeweils drei Unterpunkten und dem geplanten Wordcount pro Sektion im Canvas \[Format\]." **Expected outcome / artifact:** A detailed whitepaper outline in Canvas. **KPIs / measurement:** Stakeholder approval time for the outline. **Pitfalls:** The AI may suggest an academic structure rather than a commercial one if not explicitly told to include a business impact chapter. **Estimated time saved:** 3 hours/asset

### **S-012 E-book Translation & Adaptation**

## **Marketing function: Content Marketing Trigger / situation: A successful English e-book needs to be adapted for the German market. Goal: Translate and culturally adapt the content, replacing US examples with DACH equivalents. Langdock feature(s): File Attachment / Agent How it works (3-5 sentences): The English PDF is attached to a specialized Translation Agent. The agent goes beyond literal translation to identify US-specific references like SEC regulations. It replaces them with DACH equivalents like BaFin while maintaining the original formatting layout. Sample prompt (German, in quotes): "Als Lokalisierungs-Experte \[Persona\], adaptiere das angehängte englische E-Book für den DACH-Markt. Übersetze nicht nur, sondern ersetze US-spezifische Beispiele durch deutsche Äquivalente und behalte das 'Sie' als Anrede bei \[Context\]. Liefere den Text absatzweise im Markdown-Format, passend zum Original-Layout \[Format\]." Expected outcome / artifact: A localized Markdown document ready for design. KPIs / measurement: Translation costs saved; DACH download volume. Pitfalls: Literal translations of idiomatic brand slogans might sound unnatural; the prompt must explicitly request transcreation for headlines. Estimated time saved: 15 hours/asset**

### **S-013 Case Study Generation from Interview**

## **Marketing function: Content Marketing Trigger / situation: A customer success manager recorded a 30-minute interview with a happy client. Goal: Convert the transcript into a compelling Challenge-Solution-Result case study. Langdock feature(s): Chat / Memory How it works (3-5 sentences): With the Memory feature enabled**

7, Langdock recalls the standard case study format the company uses. The user uploads the transcript, and the AI extracts key metrics and quotes. It structures the narrative arc exactly to the saved company template without needing formatting reminders. **Sample prompt (German, in quotes):** "Als Customer-Marketing-Manager \[Persona\], schreibe eine Case Study aus dem angehängten Transkript. Nutze das in deinem Memory gespeicherte Standard-Format (Challenge, Solution, Result) und extrahiere die drei stärksten Zitate \[Context\]. Liefere ein fließendes Dokument mit hervorgehobenen KPIs und direkten Zitaten \[Format\]." **Expected outcome / artifact:** A formatted case study draft. **KPIs / measurement:** Production cycle time for case studies. **Pitfalls:** If the transcript lacks hard numbers, the AI might gloss over the results section instead of highlighting the missing data for the marketer to follow up on. **Estimated time saved:** 4 hours/asset

### **S-014 Social Teaser Extraction from Blogs**

## **Marketing function: Content Marketing Trigger / situation: A newly published 2,000-word guide needs promotional snippets for social media. Goal: Extract impactful quotes and statistics to generate 5 social media teasers. Langdock feature(s): Workflows (HTTP Request → Agent) How it works (3-5 sentences): A Manual Trigger accepts the blog URL as input. An HTTP Request node fetches the blog post content via a web scraper API.**

6 An Agent then extracts five key insights and formats them as social posts, outputting ready-to-publish copy. **Sample prompt (German, in quotes):** "Als Social-Media-Manager \[Persona\], erstelle 5 Teaser-Posts basierend auf dem Text der übergebenen URL. Jeder Post muss ein spezifisches Zitat oder eine Statistik aus dem Artikel enthalten, um Neugier zu wecken \[Context\]. Liefere die 5 Posts formatiert für LinkedIn, inklusive passender Emojis und Hashtags \[Format\]." **Expected outcome / artifact:** 5 LinkedIn-ready promotional posts. **KPIs / measurement:** Social referral traffic to the blog. **Pitfalls:** The AI might use the exact same intro formula for all five posts unless strictly instructed to vary the hooks. **Estimated time saved:** 1 hour/asset

### **S-015 Glossary Term Creation**

**Marketing function:** Content Marketing **Trigger / situation:** The SEO team wants to build a programmatic SEO glossary of 50 industry terms. **Goal:** Generate consistent, accurate, and SEO-optimized definitions for a list of terms. **Langdock feature(s):** Workflows (Loop Node → Agent) **How it works (3-5 sentences):** A Manual Trigger accepts a CSV of 50 terms. A Loop Node iterates through each term 6, sending it to an Agent that defines the term and suggests related concepts. An Action node then appends each completed row back into a Google Sheet. **Sample prompt (German, in quotes):** "Als technischer Redakteur \[Persona\], verfasse eine SEO-optimierte Definition für den Begriff '{term}'. Die Zielgruppe sind Einsteiger; halte es simpel aber präzise \[Context\]. Liefere eine dreiteilige Struktur: Definition (max. 2 Sätze), Praxisbeispiel (1 Satz), und 2 verwandte Begriffe \[Format\]." **Expected outcome / artifact:** A populated Google Sheet with 50 glossary entries. **KPIs / measurement:** Number of featured snippets captured. **Pitfalls:** Repetitive phrasing across 50 definitions can trigger search engine quality filters; the prompt must enforce variable sentence structures. **Estimated time saved:** 8 hours/batch

## **B. SEO & ORGANIC**

Search Engine Optimization requires parsing massive datasets—from keyword volumes to competitor HTML structures. Langdock supports this function by combining the Data Analyst module for quantitative keyword clustering 5 with Web Search nodes 6 that can scrape real-time Search Engine Results Pages (SERPs). This ensures that SEO strategies are not based on outdated training data, but on the live algorithmic reality of current search engines. Workflows further automate the tedious implementation of technical SEO fixes, such as generating metadata at scale.

### **S-016 Keyword Clustering**

## **Marketing function: SEO Trigger / situation: The SEO team exported a raw list of 1,000 keywords and needs to group them by topic and intent. Goal: Group raw keywords into semantic clusters for pillar page planning. Langdock feature(s): Data Analyst How it works (3-5 sentences): The user attaches the raw CSV to the Data Analyst. Using Python code generation**

5, Langdock processes the 1,000 rows, clustering them based on semantic similarity and search intent. It outputs a newly categorized CSV file with assigned pillar topics. **Sample prompt (German, in quotes):** "Als SEO-Data-Analyst \[Persona\], clustere die angehängte Keyword-Liste. Gruppiere die Keywords nach semantischer Ähnlichkeit und weise jedem Cluster einen übergeordneten 'Pillar-Begriff' sowie den Search Intent zu \[Context\]. Gib das Ergebnis als CSV-Datei zurück, sortiert nach kumuliertem Suchvolumen \[Format\]." **Expected outcome / artifact:** A categorized CSV file. **KPIs / measurement:** Time spent organizing keyword research. **Pitfalls:** If search volume data contains commas or varied formats, the Python script might fail; data must be pre-cleaned or the AI instructed to handle formatting errors. **Estimated time saved:** 5 hours/campaign

### **S-017 Internal Linking Suggestions**

## **Marketing function: SEO Trigger / situation: A new pillar page is published and needs internal links from existing historical blog posts. Goal: Identify exact anchor texts and URLs from the existing content repository to link to the new page. Langdock feature(s): Folders / Chat How it works (3-5 sentences): The marketer connects a Folder containing the text of the highest-traffic blog posts.**

4 They provide the URL and target keyword of the new pillar page. Langdock searches the Folder to find exact matching or semantically related phrases in the old posts that can serve as anchor text. **Sample prompt (German, in quotes):** "Als SEO-Spezialist \[Persona\], finde interne Verlinkungsmöglichkeiten für unsere neue Seite zum Thema 'Automation'. Durchsuche den Ordner nach passenden Absätzen, in denen dieser Begriff oder Synonyme vorkommen \[Context\]. Liefere eine Tabelle mit: Quell-Dokument, vorgeschlagenem Ankertext und dem genauen Satz \[Format\]." **Expected outcome / artifact:** A table of 10-15 internal link opportunities. **KPIs / measurement:** Increase in internal PageRank flow to the new pillar. **Pitfalls:** The AI might suggest generic anchor texts (e.g., "hier klicken") if not strictly instructed to use descriptive, exact-match anchors. **Estimated time saved:** 2 hours/asset

### **S-018 Meta Description Generation in Bulk**

## **Marketing function: SEO Trigger / situation: An SEO audit reveals 100 pages with missing or duplicate meta descriptions. Goal: Generate 100 unique, length-optimized, conversion-focused meta descriptions. Langdock feature(s): Workflows (Manual Trigger → Loop → Agent → Google Sheets) How it works (3-5 sentences): A Workflow loops through a Google Sheet containing the URLs and H1s of the 100 pages.**

6 An Agent generates a meta description strictly under 155 characters for each, embedding the primary keyword. The output is written directly back into the spreadsheet via a Google Sheets integration action. **Sample prompt (German, in quotes):** "Als SEO-Texter \[Persona\], schreibe eine Meta-Description für die Seite mit dem Titel '{h1}' und dem Fokus-Keyword '{keyword}'. Die Beschreibung muss zwingend zwischen 140 und 155 Zeichen lang sein und mit einem Call-to-Action enden \[Context\]. Liefere ausschließlich den Text der Meta-Description \[Format\]." **Expected outcome / artifact:** A completed spreadsheet with 100 meta descriptions. **KPIs / measurement:** Organic CTR improvements in Google Search Console. **Pitfalls:** LLMs notoriously struggle with exact character counts. The prompt must emphasize the constraint, and a manual character-check formula should be used in the final Sheet. **Estimated time saved:** 6 hours/audit

### **S-019 Schema Markup Generation (JSON-LD)**

## **Marketing function: SEO Trigger / situation: A new FAQ section or Event page is created and needs structured data for rich snippets. Goal: Generate valid JSON-LD schema code without developer intervention. Langdock feature(s): Chat / Code Generation How it works (3-5 sentences): The marketer pastes the FAQ questions and answers into Chat. The AI translates this content directly into valid FAQPage JSON-LD code.**

5 The AI validates the syntax to ensure there are no missing commas or unescaped characters, ready for CMS injection. **Sample prompt (German, in quotes):** "Als Technical SEO \[Persona\], erstelle ein valides FAQPage Schema-Markup (JSON-LD) für die folgenden Fragen und Antworten. Stelle sicher, dass der Code den Google-Richtlinien für strukturierte Daten entspricht und keine Syntaxfehler enthält \[Context\]. Gib ausschließlich den formatierten Code im Code-Block aus \[Format\]." **Expected outcome / artifact:** A valid JSON-LD code snippet. **KPIs / measurement:** Acquisition of FAQ rich snippets in SERPs. **Pitfalls:** If the provided text contains quotation marks, the JSON might break if the AI fails to escape them properly. **Estimated time saved:** 1 hour/page

### **S-020 Content Optimization for Featured Snippets**

## **Marketing function: SEO Trigger / situation: A page ranks on position 3 but the competitor owns the "List" featured snippet. Goal: Reformat the existing content to win the featured snippet. Langdock feature(s): Agent / Web Search How it works (3-5 sentences): The agent uses Web Search**

6 to analyze the current featured snippet for the target keyword. It then evaluates the marketer's provided text and rewrites the target section to match the structural preference of Google's algorithm, typically utilizing a clean HTML \<ol\> list. **Sample prompt (German, in quotes):** "Als SEO-Experte \[Persona\], maximiere die Chance auf ein Featured Snippet für das Keyword 'Schritte zur Migration'. Analysiere den beigefügten Text und formatiere ihn in eine klare Einleitung gefolgt von einer nummerierten HTML-Liste \[Context\]. Liefere den bereinigten HTML-Code für diesen Abschnitt \[Format\]." **Expected outcome / artifact:** Optimized HTML code snippet. **KPIs / measurement:** Capture of the featured snippet (Position Zero). **Pitfalls:** Over-optimizing by making the list items too short can reduce the overall quality of the article. **Estimated time saved:** 1 hour/page

### **S-021 Competitive SERP Analysis**

## **Marketing function: SEO Trigger / situation: Planning a new landing page for a highly competitive commercial keyword. Goal: Extract the common themes, user intent, and structural elements of the top 10 ranking pages. Langdock feature(s): Agents / Web Search How it works (3-5 sentences): An Agent queries the top 10 results for a keyword using Web Search.**

6 It parses the H1s, H2s, and core features highlighted on these pages. It synthesizes this into a blueprint highlighting the content required to rank and opportunities to differentiate. **Sample prompt (German, in quotes):** "Als SEO-Analyst \[Persona\], analysiere die Top 10 Suchergebnisse für 'CRM Software' via Web Search. Identifiziere die häufigsten H2-Überschriften, den Content-Typ und die Pain Points \[Context\]. Liefere einen Bericht mit den 'Must-Haves' und einer 'Differenzierungs-Strategie' für unsere Seite \[Format\]." **Expected outcome / artifact:** A SERP analysis brief. **KPIs / measurement:** Page ranking success within 90 days. **Pitfalls:** Search personalization might cause the agent to pull slightly different results than an incognito search; using specific locale parameters is necessary. **Estimated time saved:** 3 hours/analysis

### **S-022 Technical SEO Briefs for Developers**

## **Marketing function: SEO Trigger / situation: A site speed audit reveals high Cumulative Layout Shift (CLS) and unused JavaScript. Goal: Translate complex SEO audit tools into actionable Jira tickets for developers. Langdock feature(s): Workflows (HTTP Request → Agent → Jira Action) How it works (3-5 sentences): A Manual Trigger receives Lighthouse JSON data.**

6 An Agent translates the SEO jargon into developer-friendly instructions. An Action node then creates a structured Jira Issue, bridging the communication gap between marketing and engineering.6 **Sample prompt (German, in quotes):** "Als Technical SEO \[Persona\], übersetze den angehängten Lighthouse-Report zu CLS-Problemen in ein Entwickler-Briefing. Formuliere das Problem technisch präzise, nenne die betroffenen DOM-Elemente und liefere einen Lösungsvorschlag \[Context\]. Erstelle das Format als strukturiertes Jira-Ticket mit 'Akzeptanzkriterien' \[Format\]." **Expected outcome / artifact:** A structured Jira ticket ready for the sprint backlog. **KPIs / measurement:** Reduction in developer pushback; faster ticket resolution. **Pitfalls:** AI might suggest generic fixes without understanding the specific CMS architecture constraints. **Estimated time saved:** 1 hour/ticket

### **S-023 Local SEO Landing Page Variants**

## **Marketing function: SEO Trigger / situation: The company is expanding to 10 new cities and needs unique local landing pages. Goal: Generate localized copy that avoids duplicate content penalties. Langdock feature(s): Workflows (Loop Node) How it works (3-5 sentences): A Workflow loops through a list of 10 target cities.**

6 For each city, the Agent takes a master template, replaces the city name, injects local landmarks, and rewrites the paragraphs to ensure semantic uniqueness before saving to a CMS-ready format. **Sample prompt (German, in quotes):** "Als Local-SEO-Texter \[Persona\], erstelle eine einzigartige Landingpage-Kopie für die Stadt '{city}' basierend auf dem Master-Text. Vermeide Duplicate Content, indem du die Satzstruktur variierst und lokale Besonderheiten einbindest \[Context\]. Liefere einen fließenden Text mit H1, drei H2s und CTA \[Format\]." **Expected outcome / artifact:** 10 unique, locally optimized landing page texts. **KPIs / measurement:** Local map pack rankings; organic traffic per city. **Pitfalls:** Hallucination of fake local addresses; strictly prompt the AI to only use verified local data or leave placeholders. **Estimated time saved:** 15 hours/campaign

### **S-024 Search Intent Mapping**

## **Marketing function: SEO Trigger / situation: Reviewing an existing keyword list to prioritize bottom-of-funnel (BOFU) terms. Goal: Accurately classify keywords into Informational, Navigational, Commercial, or Transactional intent. Langdock feature(s): Data Analyst How it works (3-5 sentences): A CSV of keywords is uploaded to the Data Analyst.**

5 The AI executes Python code to evaluate modifiers (e.g., "kaufen" vs. "was ist"). It maps the intent and suggests the appropriate content format for each row, outputting a highly organized sheet. **Sample prompt (German, in quotes):** "Als SEO-Stratege \[Persona\], analysiere die beigefügte Liste von 500 Keywords. Klassifiziere jedes Keyword nach Search Intent (Info, Nav, Com, Trans) basierend auf den deutschen Modifiern \[Context\]. Liefere die aktualisierte CSV-Datei mit den neuen Spalten 'Intent' und 'Empfohlenes Format' \[Format\]." **Expected outcome / artifact:** Intent-mapped CSV file. **KPIs / measurement:** Conversion rate improvement from targeting correct intents. **Pitfalls:** Ambiguous terms require the AI to assign a secondary intent to be safe. **Estimated time saved:** 4 hours/analysis

### **S-025 Image Alt-Text Generation in Bulk**

**Marketing function:** SEO **Trigger / situation:** A CMS audit shows 200 images missing descriptive alt text. **Goal:** Generate descriptive, keyword-rich alt texts for a list of image URLs/descriptions. **Langdock feature(s):** Workflows (HTTP Request → Vision Model Agent) **How it works (3-5 sentences):** A Workflow takes a list of image URLs, using an HTTP Request to pass them to a vision-capable Agent.6 The Agent analyzes the image and generates descriptive, accessibility-compliant alt texts, outputting a CSV mapping the URL to the new alt text. **Sample prompt (German, in quotes):** "Als Accessibility-Experte \[Persona\], schreibe Alt-Texte für die Liste der übergebenen Bild-URLs. Beschreibe das Bild präzise für Screenreader, halte dich unter 125 Zeichen und integriere das Fokus-Keyword \[Context\]. Liefere eine Tabelle mit URL und Alt-Text \[Format\]." **Expected outcome / artifact:** A CSV of optimized alt texts. **KPIs / measurement:** Accessibility score improvements; image search traffic. **Pitfalls:** Keyword stuffing in alt text can trigger spam penalties; strict instructions for "natural description first" are required. **Estimated time saved:** 5 hours/audit

## **C. PERFORMANCE / PAID**

Performance marketing relies on rapid iteration and rigorous quantitative analysis to manage customer acquisition costs (CAC). Langdock accelerates creative testing by instantly generating dozens of platform-specific ad variants.5 Furthermore, the Data Analyst module is critical here; by ingesting raw, cross-channel campaign data via CSV, Langdock can execute complex Python scripts to identify creative fatigue, calculate Return on Ad Spend (ROAS), and recommend budget pacing adjustments.5

### **S-026 Google Ads Copy Variants (RSA)**

## **Marketing function: Performance / Paid Trigger / situation: A new product launch requires Responsive Search Ads (RSAs) with 15 headlines and 4 descriptions. Goal: Generate diverse, character-limited ad copy that maximizes Google's Ad Strength metric. Langdock feature(s): Agent (Prompt Library) How it works (3-5 sentences): Using a saved prompt from the Prompt Library**

9, the marketer inputs the landing page URL. The Agent extracts the value proposition and generates exactly 15 headlines (max 30 chars) and 4 descriptions (max 90 chars), categorized by emotional and rational intent. **Sample prompt (German, in quotes):** "Als Performance-Marketer \[Persona\], erstelle Copy für Google Responsive Search Ads für die URL. Generiere 15 Headlines (max. 30 Zeichen) und 4 Descriptions (max. 90 Zeichen), aufgeteilt in emotionale und rationale Botschaften \[Context\]. Gib das Ergebnis als Tabelle mit Zeichenzählung aus \[Format\]." **Expected outcome / artifact:** A table of RSA assets. **KPIs / measurement:** RSA "Excellent" Ad Strength; Click-Through Rate (CTR). **Pitfalls:** The AI will often fail exact character counts by 1-2 characters. The table must include a character count column so the marketer can spot and trim overflow. **Estimated time saved:** 2 hours/campaign

### **S-027 Meta Ads Creative Fatigue Detection**

## **Marketing function: Performance / Paid Trigger / situation: Weekly check-in on Facebook/Instagram ad accounts to identify declining performance. Goal: Analyze export data to flag ads suffering from creative fatigue. Langdock feature(s): Data Analyst How it works (3-5 sentences): The marketer exports a CSV of daily ad performance and uploads it to the Data Analyst.**

5 The AI uses Python to identify trendlines, specifically flagging ads where Frequency is rising while CTR drops and CPA increases, recommending which to pause. **Sample prompt (German, in quotes):** "Als Paid-Social-Analyst \[Persona\], analysiere die CSV mit Meta-Ads-Daten der letzten 30 Tage. Identifiziere Ads mit 'Creative Fatigue' (steigende Frequenz \+ fallende CTR) \[Context\]. Erstelle eine Liste der zu pausierenden Ads und zeichne ein Trend-Diagramm \[Format\]." **Expected outcome / artifact:** A summary report with charts and specific ad IDs to pause. **KPIs / measurement:** Reduction in wasted ad spend; CPA stabilization. **Pitfalls:** The AI might flag low-spend ads with highly volatile data; a minimum impression threshold must be specified in the prompt. **Estimated time saved:** 3 hours/week

### **S-028 LinkedIn Ad Audience Hypothesis**

## **Marketing function: Performance / Paid Trigger / situation: A B2B campaign is underperforming with standard job title targeting on LinkedIn. Goal: Brainstorm alternative, lateral targeting criteria (skills, groups, field of study). Langdock feature(s): Chat / Folders How it works (3-5 sentences): The marketer connects the Buyer Persona Folder to the chat.**

4 Instead of asking for job titles, they ask the AI to map out alternative LinkedIn targeting parameters based on the persona's psychographics, such as niche industry groups or specific academic backgrounds. **Sample prompt (German, in quotes):** "Als B2B-Paid-Stratege \[Persona\], entwickle alternative LinkedIn-Targeting-Hypothesen für unsere Buyer Persona im Ordner. Vermeide Standard-Jobtitel und fokussiere dich auf Kombinationen aus Skills und Gruppen \[Context\]. Liefere drei spezifische Targeting-Cluster zum Testen \[Format\]." **Expected outcome / artifact:** 3 alternative LinkedIn targeting setups. **KPIs / measurement:** Lower Cost Per Lead (CPL) via untargeted niches. **Pitfalls:** Recommending LinkedIn groups that are too small or inactive; the marketer must validate audience size natively in LinkedIn. **Estimated time saved:** 1.5 hours/campaign

### **S-029 Landing Page Variant Briefs (A/B Testing)**

## **Marketing function: Performance / Paid Trigger / situation: A paid search landing page is converting at 1.5%, and the team needs to design a challenger variant. Goal: Create a structured brief for a radically different landing page layout/messaging. Langdock feature(s): Agents / Web Search How it works (3-5 sentences): An Agent analyzes the current landing page text via Web Search.**

6 It uses psychological frameworks (e.g., Loss Aversion) to construct a structurally and textually distinct "Challenger" variant, providing exact wireframe instructions for the design team. **Sample prompt (German, in quotes):** "Als CRO-Spezialist \[Persona\], erstelle ein Konzept für eine Challenger-Landingpage zur aktuellen URL. Variante B soll auf 'Loss Aversion' und Social Proof fokussieren \[Context\]. Liefere ein Wireframe-Briefing mit konkreten Textvorschlägen für H1 und CTA \[Format\]." **Expected outcome / artifact:** A text-based wireframe and copy for Variant B. **KPIs / measurement:** Conversion Rate (CVR) uplift in A/B test. **Pitfalls:** Changing too many variables at once makes it hard to know why Variant B won; the AI must specify the core hypothesis. **Estimated time saved:** 2 hours/test

### **S-030 A/B Test Ideation & Prioritization**

## **Marketing function: Performance / Paid Trigger / situation: The growth team needs a backlog of CRO tests for the upcoming quarter. Goal: Generate and rank a list of 10 A/B testing hypotheses based on ICE (Impact, Confidence, Ease). Langdock feature(s): Chat / Canvas How it works (3-5 sentences): The marketer provides context on current bottlenecks. The AI generates 10 hypotheses and plots them into an ICE scoring matrix within the Canvas.**

5 The team can collaboratively adjust the scores and finalize the roadmap. **Sample prompt (German, in quotes):** "Als Growth Hacker \[Persona\], generiere 10 A/B-Test-Ideen für unseren Checkout-Prozess. Nutze das ICE-Framework zur Bewertung von 1-10 \[Context\]. Liefere eine Tabelle im Canvas, absteigend sortiert nach dem Gesamt-ICE-Score \[Format\]." **Expected outcome / artifact:** A prioritized ICE testing matrix. **KPIs / measurement:** Number of tests launched; cumulative CVR improvement. **Pitfalls:** AI estimates of "Ease" (development effort) might be wildly inaccurate for complex custom checkouts. **Estimated time saved:** 3 hours/quarter

### **S-031 Post-Campaign Analysis Report**

## **Marketing function: Performance / Paid Trigger / situation: A major campaign has concluded, and management wants a summary. Goal: Synthesize raw campaign metrics into an executive-friendly narrative. Langdock feature(s): Data Analyst / File Attachment How it works (3-5 sentences): Raw campaign data is uploaded to the Data Analyst.**

5 The AI executes analysis to identify the highest-performing segments and writes a narrative summary highlighting the "Why" behind the numbers, ready to be pasted into a slide deck. **Sample prompt (German, in quotes):** "Als Performance-Marketing-Direktor \[Persona\], verfasse eine Post-Campaign-Analyse basierend auf der CSV. Identifiziere den profitabelsten Kanal und formuliere drei wesentliche Learnings für das C-Level \[Context\]. Liefere einen narrativen Bericht mit Bulletpoints für die Executive Summary \[Format\]." **Expected outcome / artifact:** Executive summary report with data insights. **KPIs / measurement:** Stakeholder clarity; time to generate report. **Pitfalls:** The AI cannot contextualize external factors (e.g., website crashes) unless explicitly added to the prompt context. **Estimated time saved:** 4 hours/campaign

### **S-032 Attribution Narrative Writing**

## **Marketing function: Performance / Paid Trigger / situation: Multi-touch attribution data shows a discrepancy between first-click and last-click metrics. Goal: Create a cohesive story explaining the customer journey to the sales team. Langdock feature(s): Chat / Memory How it works (3-5 sentences): The marketer pastes the attribution pathway data into Chat. Langdock translates the abstract data (e.g., Meta \-\> Organic \-\> Google Search) into a realistic customer narrative, bridging the understanding gap for the sales team. Sample prompt (German, in quotes): "Als Marketing-Analyst \[Persona\], erkläre die beigefügten Multi-Touch-Attributionsdaten. Übersetze die Touchpoints in eine realistische Customer Journey für das Sales-Team \[Context\]. Schreibe eine kurze Erzählung aus der Perspektive eines typischen Kunden \[Format\]." Expected outcome / artifact: A narrative explanation of the attribution path. KPIs / measurement: Sales team understanding of marketing's full-funnel impact. Pitfalls: Oversimplification of complex B2B buying committees into a single persona. Estimated time saved: 1 hour/report**

### **S-033 Performance Max (PMax) Asset Group Text Generation**

## **Marketing function: Performance / Paid Trigger / situation: Creating a new Google Ads PMax campaign requiring dozens of text combinations. Goal: Generate the required mix of short headlines, long headlines, and descriptions tailored for automation. Langdock feature(s): Agent How it works (3-5 sentences): A specialized Agent is built with exact knowledge of PMax character limits (5x 30-char headlines, 5x 90-char long headlines, 1x 60-char description, 4x 90-char descriptions). The marketer inputs a product URL, and the Agent outputs the exact matrix of assets required. Sample prompt (German, in quotes): "Als Google-Ads-Spezialist \[Persona\], generiere Text-Assets für eine Performance Max Kampagne für die URL. Halte dich strikt an die PMax-Zeichenlimits und vermeide Wiederholungen \[Context\]. Liefere eine Tabelle mit Spalten für Asset-Typ, Text und Zeichenanzahl \[Format\]." Expected outcome / artifact: A complete PMax text asset matrix. KPIs / measurement: Campaign setup time; PMax asset rating. Pitfalls: Because Google combines these dynamically, if the AI uses the same verb in every headline, the resulting ads will read poorly. Estimated time saved: 2 hours/campaign**

### **S-034 Ad Extension Generation**

## **Marketing function: Performance / Paid Trigger / situation: Search campaigns are missing ad extensions, reducing real estate on the SERP. Goal: Rapidly generate highly relevant sitelinks and callouts for a specific campaign. Langdock feature(s): Workflows (HTTP Request → Agent) How it works (3-5 sentences): By passing the landing page URL through a Workflow**

6, the Agent identifies the 4 most logical sitelink destinations. It writes the 25-character headlines and 35-character descriptions for each, formatted for direct upload. **Sample prompt (German, in quotes):** "Als Suchmaschinen-Marketer \[Persona\], erstelle Sitelink- und Callout-Erweiterungen für die URL. Erstelle 4 Sitelinks (Titel max 25 Zeichen) und 6 Callouts (max 25 Zeichen) \[Context\]. Liefere das Ergebnis aufgeteilt in zwei strukturierte Blöcke \[Format\]." **Expected outcome / artifact:** Ready-to-upload ad extensions. **KPIs / measurement:** CTR uplift from increased SERP dominance. **Pitfalls:** AI often hallucinate URLs for sitelinks; the marketer must map the generated text to actual existing sub-pages. **Estimated time saved:** 1 hour/campaign

### **S-035 Retargeting Copy Sequencing**

## **Marketing function: Performance / Paid Trigger / situation: Setting up a 14-day Facebook retargeting funnel with escalating messages. Goal: Create a cohesive narrative sequence that moves from gentle reminder to urgency. Langdock feature(s): Canvas How it works (3-5 sentences): Using Canvas**

5, the marketer asks the AI to map out a 14-day sequence. Day 1-3 focuses on social proof; Day 4-7 on objections; Day 8-14 introduces urgency. The split-screen allows the marketer to tweak the urgency levels collaboratively. **Sample prompt (German, in quotes):** "Als Funnel-Architekt \[Persona\], schreibe eine dreistufige Retargeting-Ad-Sequenz für Facebook. Stufe 1: Social Proof. Stufe 2: Einwandsbehandlung. Stufe 3: Dringlichkeit \[Context\]. Liefere für jede Stufe eine Primary Text und Headline im Canvas \[Format\]." **Expected outcome / artifact:** A 3-stage sequential ad copy document. **KPIs / measurement:** Lower Cost Per Acquisition (CPA) on retargeting traffic. **Pitfalls:** Tone inconsistency if the prompt doesn't specify maintaining the same brand voice across all three stages. **Estimated time saved:** 2 hours/funnel

### **S-036 Competitor Ad Analysis**

## **Marketing function: Performance / Paid Trigger / situation: Competitors are aggressively bidding on the brand's terms. Goal: Analyze competitor ad copy to identify their primary angles and counter-position. Langdock feature(s): Chat / Image Capabilities How it works (3-5 sentences): The marketer uploads screenshots of the competitors' Google Search ads. The Vision model**

5 extracts the text, identifies the unique selling propositions (USPs) being highlighted, and suggests counter-headlines for the brand's defense campaign. **Sample prompt (German, in quotes):** "Als Competitive-Intelligence-Stratege \[Persona\], analysiere die angehängten Screenshots der Konkurrenz-Ads. Extrahiere ihre Hauptargumente und identifiziere deren Schwachstellen \[Context\]. Erstelle 5 Konter-Headlines für unsere eigene Brand-Defense-Kampagne \[Format\]." **Expected outcome / artifact:** A list of competitor USPs and 5 defense headlines. **KPIs / measurement:** Maintained Impression Share on brand terms. **Pitfalls:** Low-resolution screenshots might result in inaccurate text extraction. **Estimated time saved:** 1 hour/analysis

### **S-037 Paid Video Script Hooks**

**Marketing function:** Performance / Paid  
**Trigger / situation:** TikTok ad performance relies heavily on the first 3 seconds, requiring multiple hook variations to test.  
**Goal:** Generate 10 diverse, attention-grabbing visual and audio hooks.  
**Langdock feature(s):** Agent  
**How it works (3-5 sentences):** An Agent specializes in short-form video psychology. The user inputs the core product benefit. The Agent generates 10 distinct 3-second hooks combining visual actions with audio hooks, optimizing for watch-time retention.  
**Sample prompt (German, in quotes):** "Als TikTok-Ad-Spezialist \[Persona\], generiere 10 verschiedene Hooks (die ersten 3 Sekunden) für ein Video. Nutze bewährte Frameworks wie 'Negative Hook' und 'Curiosity' \[Context\]. Liefere eine Tabelle mit der visuellen Aktion und dem exakten Sprechertext \[Format\]."  
**Expected outcome / artifact:** 10 testable video hooks.  
**KPIs / measurement:** 3-second view rate; Thumb-stop ratio.  
**Pitfalls:** AI scripts might sound too corporate unless specifically prompted to use casual, platform-native language.  
**Estimated time saved:** 1 hour/video

## **D. BRAND & CREATIVE**

Maintaining brand consistency across decentralized teams is historically challenging. Langdock serves as an automated "Brand Guardian" by storing core tone-of-voice and visual identity parameters within its Folders.4 Rather than relying on static PDF guidelines that are rarely read, marketers can use Langdock to actively evaluate new copy against these guidelines in real-time, ensuring strict adherence to the corporate identity.

### **S-038 Brand Voice Guidelines from Samples**

## **Marketing function: Brand / Creative Trigger / situation: The company lacks formal brand voice documentation, leading to inconsistent freelance work. Goal: Reverse-engineer a comprehensive brand voice guideline document from the best existing content. Langdock feature(s): Folders / Canvas How it works (3-5 sentences): The marketer uploads 10 pieces of high-performing, on-brand content into a Folder.**

4 Langdock analyzes the corpus to extract the recurring tone, vocabulary, and rhetorical devices. It generates a formal "Tone of Voice" guide in Canvas for final editing.5 **Sample prompt (German, in quotes):** "Als Brand-Stratege \[Persona\], analysiere die Dokumente im verknüpften Ordner und extrahiere unsere Brand Voice. Achte auf Tonalität, Satzlänge und Fachsprache \[Context\]. Erstelle einen Leitfaden mit 'Do's and Don'ts' und 3 Vorher/Nachher-Beispielen \[Format\]." **Expected outcome / artifact:** A documented Brand Voice guide. **KPIs / measurement:** Consistency across channels; reduced onboarding time. **Pitfalls:** If the uploaded samples have wildly varying tones, the resulting guide might be contradictory. **Estimated time saved:** 10 hours/project

### **S-039 Tone-of-Voice Consistency Checks**

## **Marketing function: Brand / Creative Trigger / situation: A marketer drafted a landing page, but it feels "off-brand." Goal: Automatically review and rewrite the text to align strictly with the Brand Voice Guidelines. Langdock feature(s): Agent (Brand Guardian) How it works (3-5 sentences): A custom "Brand Guardian" Agent is built, permanently attached to the Brand Guidelines Folder.**

4 Users paste drafts into the Agent. It highlights off-brand phrases and suggests direct rewrites while explaining why the change aligns with the brand. **Sample prompt (German, in quotes):** "Als Brand Guardian \[Persona\], überprüfe den folgenden Text auf Übereinstimmung mit unseren Markenrichtlinien im Ordner. Identifiziere Passagen, die nicht der Tonalität entsprechen, und erkläre warum \[Context\]. Liefere eine korrigierte Version des Textes \[Format\]." **Expected outcome / artifact:** A rewritten, on-brand text and feedback summary. **KPIs / measurement:** Faster approval cycles from Brand Directors. **Pitfalls:** The Agent might strip away necessary technical nuance in an effort to make the text sound more conversational. **Estimated time saved:** 1 hour/asset

### **S-040 Tagline Generation Workshops**

## **Marketing function: Brand / Creative Trigger / situation: Rebranding a sub-product requires a catchy, memorable tagline. Goal: Generate 50+ diverse tagline options categorized by emotional appeal. Langdock feature(s): Chat How it works (3-5 sentences): The user provides the core value proposition. The AI generates 50 taglines across different categories: Literal, Metaphorical, Pun-based, and Aspirational. The user can then select the top 5 and iterate further on those specific concepts. Sample prompt (German, in quotes): "Als Copywriter \[Persona\], generiere 50 Tagline-Ideen für unser neues Produkt. Die Kernbotschaft ist 'Sicherheit im Hintergrund' \[Context\]. Teile die Ideen in fünf Kategorien ein: Wortspiele, Direkt/Klar, Metaphorisch, Aspirational und Provokant \[Format\]." Expected outcome / artifact: A categorized list of 50 taglines. KPIs / measurement: Number of viable options for stakeholder voting. Pitfalls: AI struggles with genuine wit or double-entendres; human curation is heavily required for puns. Estimated time saved: 4 hours/workshop**

### **S-041 Product Naming Workshops**

## **Marketing function: Brand / Creative Trigger / situation: An upcoming feature needs a name that fits the existing product architecture. Goal: Generate naming options that align with existing naming conventions. Langdock feature(s): Folders How it works (3-5 sentences): By referencing a Folder containing all current product names and the company's naming philosophy**

4, the AI generates 20 new name candidates. It automatically checks against basic linguistic rules to ensure ease of pronunciation. **Sample prompt (German, in quotes):** "Als Naming-Experte \[Persona\], entwickle 20 Namensvorschläge für unsere neue Funktion. Die Namen müssen zu unserer bestehenden Architektur im Ordner passen \[Context\]. Liefere die Liste mit einer kurzen Begründung pro Name \[Format\]." **Expected outcome / artifact:** 20 strategic naming options. **KPIs / measurement:** Faster consensus on product naming. **Pitfalls:** The AI cannot check trademark availability; legal review is still 100% required. **Estimated time saved:** 3 hours/project

### **S-042 Brand Audit Reports (Visual to Text)**

## **Marketing function: Brand / Creative Trigger / situation: The design team needs to audit whether the current website matches the new visual identity. Goal: Assess a webpage screenshot for brand compliance. Langdock feature(s): Agent (Vision) How it works (3-5 sentences): The marketer uploads a full-page screenshot. A Vision-enabled Agent**

5 reviews the image against text-based rules of the new brand identity (e.g., typography usage, spacing). It outputs a punch-list of elements that need updating. **Sample prompt (German, in quotes):** "Als Art Director \[Persona\], analysiere den angehängten Screenshot der Landingpage. Prüfe, ob die visuellen Elemente modern wirken und identifiziere Inkonsistenzen zu unseren Guidelines \[Context\]. Liefere eine Checkliste mit konkreten Design-Änderungen \[Format\]." **Expected outcome / artifact:** A visual QA checklist. **KPIs / measurement:** Number of off-brand assets identified and fixed. **Pitfalls:** The Vision model cannot accurately read exact HEX codes from compressed images; it can only judge general color families. **Estimated time saved:** 2 hours/page

### **S-043 Visual Brief Writing for Designers**

## **Marketing function: Brand / Creative Trigger / situation: A marketer needs an infographic but lacks the vocabulary to brief a designer. Goal: Translate a text-based concept into a highly structured visual design brief. Langdock feature(s): Chat How it works (3-5 sentences): The marketer inputs the data points they want in the infographic. The AI translates this into a professional design brief, specifying the layout flow, color mood, and typography hierarchy, speaking the technical language of designers. Sample prompt (German, in quotes): "Als Creative Director \[Persona\], übersetze diese 5 Datenpunkte in ein visuelles Briefing für unseren Grafikdesigner. Wir benötigen eine Infografik für LinkedIn \[Context\]. Erstelle ein Briefing mit Vorgaben zu: Layout-Struktur, Farb-Mood, Icons und dem exakten Copy-Text \[Format\]." Expected outcome / artifact: A professional design brief. KPIs / measurement: Reduced design revision cycles. Pitfalls: Over-prescribing visual elements in the brief might stifle the designer's creativity. Estimated time saved: 1 hour/brief**

### **S-044 Brand Narrative / Manifesto Creation**

## **Marketing function: Brand / Creative Trigger / situation: The company is updating its "About Us" page and needs an emotional manifesto. Goal: Draft an inspiring, poetic brand manifesto that captures the core mission. Langdock feature(s): Canvas How it works (3-5 sentences): The marketer inputs the founder's vision into Canvas.**

5 The AI drafts a manifesto. Using the split-screen, the marketer highlights specific sentences to "make this punchier," collaboratively sculpting a high-impact narrative. **Sample prompt (German, in quotes):** "Als Chief Creative Officer \[Persona\], schreibe ein emotionales Marken-Manifest. Nutze unsere Kernwerte als Basis, ohne die Wörter explizit zu nennen \[Context\]. Verfasse einen poetischen Text von max. 150 Wörtern, formatiert in kurzen, kraftvollen Zeilen \[Format\]." **Expected outcome / artifact:** A polished brand manifesto. **KPIs / measurement:** Stakeholder resonance; time to final draft. **Pitfalls:** LLMs tend to use cliché corporate poetry; the prompt must explicitly forbid overused tropes. **Estimated time saved:** 4 hours/draft

### **S-045 Brand Partnership Pitch Customization**

**Marketing function:** Brand / Creative **Trigger / situation:** Pitching a co-marketing campaign to a non-competing brand. **Goal:** Tailor a standard pitch deck narrative to align with the target partner's brand values. **Langdock feature(s):** Web Search / Agent **How it works (3-5 sentences):** An Agent uses Web Search 6 to scan the target partner's recent press releases. It merges those insights with the company's pitch template, highlighting shared values (e.g., sustainability) and proposing 3 tailored campaign ideas. **Sample prompt (German, in quotes):** "Als Partnership-Manager \[Persona\], personalisiere unseren Kooperations-Pitch für die Marke 'Beispiel-Brand'. Nutze Web Search, um deren Nachhaltigkeits-Ziele herauszufinden, und verbinde sie mit unserer Mission \[Context\]. Liefere eine E-Mail-Pitch-Vorlage und 3 gemeinsame Kampagnen-Ideen \[Format\]." **Expected outcome / artifact:** A customized outreach pitch. **KPIs / measurement:** Partner response rate. **Pitfalls:** The AI might invent a partnership idea that violates regulatory constraints of the partner's industry. **Estimated time saved:** 2 hours/pitch

## **E. SOCIAL MEDIA**

Social media management requires synthesizing massive volumes of unstructured public data and responding in real-time. Langdock's Webhook Triggers 6 allow for immediate integration with social listening tools like Meltwater, enabling Agents to automatically categorize sentiment and draft crisis communication responses before the social media manager even opens their laptop. The platform ensures that all outbound social copy—from CEO ghostwriting to basic replies—maintains the specific voice required for each channel.

### **S-046 Social Media Calendar Planning**

## **Marketing function: Social Media Trigger / situation: The start of the month requires scheduling 20 posts across LinkedIn and Twitter. Goal: Generate a balanced, date-mapped content calendar based on asset availability. Langdock feature(s): Workflows (Google Sheets Action) How it works (3-5 sentences): The user provides a list of URLs. A Workflow uses an Agent to distribute these URLs across a 30-day period, ensuring a mix of formats. The Action Node**

6 writes the schedule, dates, and drafted copy directly into a Google Sheet. **Sample prompt (German, in quotes):** "Als Social-Media-Stratege \[Persona\], erstelle einen Monats-Content-Plan für die übergebenen Links. Sorge für einen Rhythmus von 3 Posts pro Woche und variiere zwischen Text-Posts und Video-Teasern \[Context\]. Liefere das Ergebnis als strukturierte Tabelle \[Format\]." **Expected outcome / artifact:** A populated social media calendar in Google Sheets. **KPIs / measurement:** Time saved in planning; consistency of posting. **Pitfalls:** The AI doesn't know national holidays unless specified; it might schedule a major post on a public holiday. **Estimated time saved:** 5 hours/month

### **S-047 Post Variants per Platform**

## **Marketing function: Social Media Trigger / situation: A new case study needs to be promoted on LinkedIn, Twitter, and Instagram. Goal: Adapt the same core message to the specific formatting and cultural norms of different platforms. Langdock feature(s): Agent How it works (3-5 sentences): A specialized Agent takes the case study URL. It generates a long-form, professional post with bullet points for LinkedIn; a punchy, 280-character hook for Twitter; and a visually descriptive, hashtag-heavy caption for Instagram. Sample prompt (German, in quotes): "Als Social-Media-Manager \[Persona\], adaptiere die Kernbotschaft dieses Artikels für drei Plattformen. LinkedIn braucht Tiefe, Twitter Kürze, Instagram Fokus auf Community \[Context\]. Liefere die drei Posts klar getrennt, inklusive relevanter Hashtags \[Format\]." Expected outcome / artifact: 3 platform-native social posts. KPIs / measurement: Engagement rate per platform. Pitfalls: Instagram captions might lack visual direction for the designer; the prompt must ask the AI to suggest an accompanying image concept. Estimated time saved: 1 hour/asset**

### **S-048 Community Management Reply Drafts**

## **Marketing function: Social Media Trigger / situation: A post goes viral, resulting in 50+ complex comments requiring responses. Goal: Draft polite, brand-aligned, and informative replies to user comments. Langdock feature(s): Chat / Folders How it works (3-5 sentences): The social manager pastes a batch of user comments into Chat. Connected to the FAQ Folder**

4, Langdock drafts individualized replies to each comment, answering specific product questions accurately while maintaining a friendly tone. **Sample prompt (German, in quotes):** "Als Community-Manager \[Persona\], verfasse Antworten auf die folgenden 5 User-Kommentare. Nutze den FAQ-Ordner, um Fragen korrekt zu beantworten, und bleibe stets freundlich \[Context\]. Liefere zu jedem Kommentar einen Antwort-Entwurf von max. 2 Sätzen \[Format\]." **Expected outcome / artifact:** 5 ready-to-post replies. **KPIs / measurement:** Response time to community comments. **Pitfalls:** If a user is trolling, the AI might generate a defensive apology; human oversight is crucial for negative sentiment. **Estimated time saved:** 2 hours/incident

### **S-049 Trend Monitoring Summaries**

## **Marketing function: Social Media Trigger / situation: The team needs to know what industry topics trended on social media over the weekend. Goal: Synthesize social listening data into a quick, actionable Monday morning brief. Langdock feature(s): Workflows (Webhook Trigger → Agent → Slack Action) How it works (3-5 sentences): A Webhook Trigger receives a data dump from a social listening tool.**

6 An Agent summarizes the top 3 themes, sentiment, and suggests a reactive post idea. An Action node sends the summary to the Slack channel.6 **Sample prompt (German, in quotes):** "Als Social-Listening-Analyst \[Persona\], fasse die übergebenen Trending-Topics des Wochenendes zusammen. Identifiziere das dominierende Thema und bewerte das Sentiment \[Context\]. Erstelle eine Slack-Nachricht mit 3 Bulletpoints und einer Idee für einen reaktiven Post \[Format\]." **Expected outcome / artifact:** A Slack notification summarizing trends. **KPIs / measurement:** Agility in reactive marketing. **Pitfalls:** AI cannot easily distinguish between a genuine trend and a bot-driven spam campaign in raw text data. **Estimated time saved:** 2 hours/week

### **S-050 Influencer Outreach Drafts**

## **Marketing function: Social Media Trigger / situation: Launching an influencer campaign requiring personalized outreach to 20 micro-influencers. Goal: Generate highly personalized DM drafts based on the influencer's recent content. Langdock feature(s): Workflows (Loop Node) How it works (3-5 sentences): The marketer provides a spreadsheet with the influencer's name and their last post topic. A Workflow loops through the sheet**

6, drafting a unique outreach message for each that references their recent content to prove authenticity. **Sample prompt (German, in quotes):** "Als Influencer-Marketing-Manager \[Persona\], schreibe eine Outreach-Nachricht an {Name}. Beziehe dich authentisch auf ihren letzten Post über {Letzter\_Post\_Thema} und schlage eine Zusammenarbeit vor \[Context\]. Formatiere die Nachricht als lockere Instagram-DM \[Format\]." **Expected outcome / artifact:** 20 personalized DMs in a spreadsheet. **KPIs / measurement:** Influencer response rate. **Pitfalls:** Using formal email structures (e.g., "Sehr geehrte(r)") in DMs makes the brand look out of touch. **Estimated time saved:** 3 hours/campaign

### **S-051 Crisis Comms Drafts (Social)**

## **Marketing function: Social Media Trigger / situation: A server outage is causing a spike in negative social media mentions. Goal: Rapidly draft transparent, empathetic holding statements. Langdock feature(s): Chat / Folders How it works (3-5 sentences): The social manager accesses Langdock, linking the Crisis Playbook Folder.**

4 They input the basic facts of the outage. The AI generates a multi-platform holding statement that aligns perfectly with pre-approved crisis guidelines. **Sample prompt (German, in quotes):** "Als Krisenkommunikations-Leiter \[Persona\], verfasse ein Holding-Statement für Twitter und LinkedIn zum Serverausfall. Nutze die Richtlinien aus dem Krisen-Ordner \[Context\]. Liefere einen kurzen, empathischen Tweet und einen detaillierteren LinkedIn-Post \[Format\]." **Expected outcome / artifact:** Pre-approved crisis messaging variants. **KPIs / measurement:** Speed to first public response. **Pitfalls:** AI might hallucinate an estimated resolution time; strictly instruct it to NEVER invent ETAs. **Estimated time saved:** 1 hour (crucial during a crisis)

### **S-052 Social Listening Synthesis**

## **Marketing function: Social Media Trigger / situation: Quarterly reporting requires analyzing thousands of social mentions. Goal: Categorize mentions into product feedback, customer service issues, and brand love. Langdock feature(s): Data Analyst How it works (3-5 sentences): A CSV of 5,000 raw social mentions is uploaded.**

5 Python code performs NLP to categorize each mention into buckets (e.g., "Pricing", "Praise") and generates a pie chart visualizing the sentiment distribution. **Sample prompt (German, in quotes):** "Als Data Analyst \[Persona\], kategorisiere die angehängten Social-Media-Erwähnungen. Erstelle Hauptkategorien (Support, Produkt-Feedback, Brand Love) und weise jeden Tweet zu \[Context\]. Liefere eine Tabelle mit Prozentanteilen sowie ein Python-generiertes Kreisdiagramm \[Format\]." **Expected outcome / artifact:** Categorized data and a visualization chart. **KPIs / measurement:** Insights delivered to product teams. **Pitfalls:** Sarcasm is notoriously hard for models to classify correctly; sentiment might skew positive incorrectly. **Estimated time saved:** 8 hours/quarter

### **S-053 Thought Leadership Ghostwriting**

## **Marketing function: Social Media Trigger / situation: The CEO needs to post weekly on LinkedIn but lacks time to write. Goal: Ghostwrite authentic thought leadership posts based on the CEO's bullet points. Langdock feature(s): Agent / Memory How it works (3-5 sentences): A "CEO Ghostwriter" Agent is created. Memory**

7 stores the CEO's specific voice (e.g., no emojis, short sentences). The marketer inputs 3 raw bullet points, and the Agent fleshes them out into a compelling narrative post. **Sample prompt (German, in quotes):** "Als Ghostwriter für den CEO \[Persona\], formuliere diese Stichpunkte in einen LinkedIn-Post um. Der Ton ist direkt, verwendet keine Emojis und bevorzugt kurze Absätze \[Context\]. Beginne mit einem konträren Hook und ende mit einer offenen Frage \[Format\]." **Expected outcome / artifact:** A ready-to-publish thought leadership post. **KPIs / measurement:** Executive profile follower growth. **Pitfalls:** The AI may sound like generic LinkedIn "broetry" unless strictly constrained by Memory settings. **Estimated time saved:** 2 hours/week

### **S-054 TikTok/Reels Hook Generation from Blogs**

## **Marketing function: Social Media Trigger / situation: Turning a high-performing blog post into a short-form video. Goal: Extract the core premise and generate visually engaging hooks to stop the scroll. Langdock feature(s): Web Search / Chat How it works (3-5 sentences): Using Web Search**

6, the AI reads the blog post and identifies the most surprising statistic. It then scripts 5 different visual/audio hooks specifically designed for the fast-paced nature of TikTok. **Sample prompt (German, in quotes):** "Als Short-Form-Video-Produzent \[Persona\], extrahiere den spannendsten Fakt aus dem Blogpost unter der URL. Entwickle daraus 5 visuelle Video-Hooks (die ersten 3 Sekunden) für TikTok \[Context\]. Liefere eine Tabelle mit Audio und Visuals \[Format\]." **Expected outcome / artifact:** 5 short-form video concepts. **KPIs / measurement:** Video completion rate. **Pitfalls:** Hooks that rely on text-on-screen might be generated too long to read in 3 seconds. **Estimated time saved:** 1 hour/asset

### **S-055 Employee Advocacy Post Variants**

**Marketing function:** Social Media **Trigger / situation:** A major company announcement needs to be amplified by the team. **Goal:** Generate 10 different variations of a company announcement so employees can post authentically. **Langdock feature(s):** Canvas **How it works (3-5 sentences):** The core announcement is pasted into Canvas.5 The AI generates 10 variations tailored to different employee personas (e.g., Sales focuses on growth, Engineering on tech). **Sample prompt (German, in quotes):** "Als Internal-Comms-Manager \[Persona\], erstelle 10 Variationen für einen LinkedIn-Post zu unserem Funding. Jede Variante soll für eine andere Abteilung (Sales, Tech, HR) maßgeschneidert sein \[Context\]. Liefere die Posts im Canvas, gegliedert nach Abteilung \[Format\]." **Expected outcome / artifact:** 10 diverse employee advocacy templates. **KPIs / measurement:** Employee sharing participation rate. **Pitfalls:** AI might insert placeholders like "" which employees forget to replace. **Estimated time saved:** 2 hours/campaign

## **F. CRM & LIFECYCLE / EMAIL**

The core of modern CRM is behavioral personalization at scale. Langdock Workflows 6 integrate directly via APIs and Webhooks to tools like Salesforce and HubSpot. This allows marketing teams to deploy AI that not only drafts customized email copy based on a user's specific CRM properties but physically updates the lead records and lists in real-time, completely bypassing the need for manual CSV exports and data manipulation.

### **S-056 Segment Definition from Data**

## **Marketing function: CRM / Lifecycle Trigger / situation: The database has grown, and generic newsletters are suffering from low open rates. Goal: Identify logical behavioral segments based on past purchase or engagement data. Langdock feature(s): Data Analyst How it works (3-5 sentences): An anonymized export of user engagement metrics is uploaded to the Data Analyst. Using RFM analysis (Recency, Frequency, Monetary)**

5, the AI clusters the users into "Champions," "At Risk," and "Hibernating" segments, outputting a list of IDs. **Sample prompt (German, in quotes):** "Als CRM-Data-Scientist \[Persona\], führe eine RFM-Analyse auf der angehängten Kundendatenbank durch. Clustere die User in 3 Segmente: 'Loyal', 'Gefährdet' und 'Inaktiv' \[Context\]. Gib eine Zusammenfassung der Segmentgrößen sowie die aktualisierte CSV zurück \[Format\]." **Expected outcome / artifact:** Segmented user lists ready for import. **KPIs / measurement:** Open rate and CTR improvement. **Pitfalls:** Uploading PII must be avoided; data should be pseudonymized (User IDs only) before upload. **Estimated time saved:** 10 hours/analysis

### **S-057 Lifecycle Journey Mapping**

## **Marketing function: CRM / Lifecycle Trigger / situation: The marketing team needs to map out a 30-day onboarding journey for new signups. Goal: Create a node-by-node logic map of emails, in-app messages, and delays. Langdock feature(s): Canvas How it works (3-5 sentences): The marketer provides the onboarding goal. Langdock generates a logical flow in Canvas**

5, visualizing the journey (Day 1: Welcome → Day 3: Condition Check → Day 5: Reminder) and drafting the conceptual text for each node. **Sample prompt (German, in quotes):** "Als Lifecycle-Marketing-Architekt \[Persona\], entwirf eine 30-tägige Onboarding-Journey für unser Tool. Berücksichtige E-Mails und In-App-Nachrichten basierend auf Nutzerverhalten \[Context\]. Generiere einen strukturierten Text-Plan zur Darstellung der Logik im Canvas \[Format\]." **Expected outcome / artifact:** A visual flowchart and text outline. **KPIs / measurement:** User activation rate. **Pitfalls:** The AI might map out overly complex branching logic that is technically impossible to execute in the company's current CRM. **Estimated time saved:** 4 hours/journey

### **S-058 Email Subject Line Testing**

## **Marketing function: CRM / Lifecycle Trigger / situation: A critical product launch email needs a high open rate, requiring 5 strong variants. Goal: Generate varied subject lines optimized for different psychological triggers. Langdock feature(s): Agent (Prompt Library) How it works (3-5 sentences): The marketer inputs the email body text. A specialized Agent analyzes the core value proposition and generates subject lines based on Curiosity, Urgency, Benefit, and Personalization, alongside matching preheaders. Sample prompt (German, in quotes): "Als E-Mail-Copywriter \[Persona\], generiere 5 Betreffzeilen und Preheader für den beigefügten E-Mail-Text. Optimiere auf Trigger: Neugier, Dringlichkeit, direkter Nutzen, FOMO und Frage \[Context\]. Liefere eine Tabelle mit Trigger, Betreffzeile und Preheader \[Format\]." Expected outcome / artifact: 5 testable subject line/preheader combinations. KPIs / measurement: Email Open Rate. Pitfalls: Subject line generators often overuse exclamation marks or spam-trigger words unless the prompt explicitly bans them. Estimated time saved: 1 hour/email**

### **S-059 Transactional Email Rewrites**

## **Marketing function: CRM / Lifecycle Trigger / situation: System-generated emails (e.g., password reset) are robotic and off-brand. Goal: Rewrite boring transactional emails to inject brand personality while remaining compliant. Langdock feature(s): Folders / Chat How it works (3-5 sentences): The marketer connects the Brand Voice Folder**

4 and pastes 10 standard templates. The AI rewrites them to be warm and on-brand, ensuring that critical dynamic variables (like {{reset\_link}}) remain intact and functional. **Sample prompt (German, in quotes):** "Als Brand-Copywriter \[Persona\], überarbeite die folgenden transaktionalen E-Mails. Mache sie passend zu unserer Brand Voice im Ordner, aber stelle sicher, dass die Liquid-Tags wie {{url}} exakt erhalten bleiben \[Context\]. Liefere die überarbeiteten Texte im Code-Block \[Format\]." **Expected outcome / artifact:** On-brand transactional templates. **KPIs / measurement:** Reduction in customer support tickets regarding system emails. **Pitfalls:** If the AI accidentally modifies the syntax of a variable tag, the email automation will break. **Estimated time saved:** 3 hours/batch

### **S-060 Win-back Campaign Drafts**

## **Marketing function: CRM / Lifecycle Trigger / situation: A cohort of customers has not purchased in 6 months. Goal: Draft a 3-part email sequence offering a progressive discount to win them back. Langdock feature(s): Canvas How it works (3-5 sentences): The user defines the discount strategy (10%, 15%, 20%). The AI drafts the sequence in Canvas**

5, ensuring the narrative escalates appropriately without sounding desperate. The marketer refines the discount codes via split-screen. **Sample prompt (German, in quotes):** "Als CRM-Manager \[Persona\], schreibe eine dreiteilige Win-Back E-Mail-Sequenz für inaktive Kunden. E-Mail 1: 10%, E-Mail 2: Erinnerung 15%, E-Mail 3: Letzte Chance 20% \[Context\]. Verfasse die Entwürfe direkt im Canvas mit Platzhaltern für die Codes \[Format\]." **Expected outcome / artifact:** A complete 3-part email sequence. **KPIs / measurement:** Reactivation rate; Revenue recovered. **Pitfalls:** Over-promising in the copy if the discount codes have specific exclusions; the marketer must manually inject T\&Cs. **Estimated time saved:** 3 hours/campaign

### **S-061 Reactivation Logic & Sync**

## **Marketing function: CRM / Lifecycle Trigger / situation: When a dormant user clicks a win-back email, they need to be moved to an active list. Goal: Automate the list-switching process based on engagement. Langdock feature(s): Workflows (Webhook Trigger → Condition → HubSpot Action) How it works (3-5 sentences): A Webhook Trigger receives a click event.**

6 A Condition Node checks if the user was on the 'Dormant' list. An Action Node then updates HubSpot, removing them from Dormant and adding them to the Active List, automating database hygiene.6 **Sample prompt (German, in quotes):** *Workflow node configuration requires logic, not a prompt. AI generates the JSON mapping.* "Als Integration-Specialist, generiere das JSON-Payload-Format für ein HubSpot 'Add to List' API-Update basierend auf der {{trigger.email}} Variable." **Expected outcome / artifact:** An automated CRM workflow. **KPIs / measurement:** CRM data accuracy. **Pitfalls:** If the webhook fires for every single bot click, it might falsely reactivate users. **Estimated time saved:** 5 hours/week

### **S-062 Personalization at Scale via Workflows**

## **Marketing function: CRM / Lifecycle Trigger / situation: Follow-up emails need to reference the specific questions users asked during a webinar. Goal: Generate hyper-personalized follow-up emails for 50 attendees. Langdock feature(s): Workflows (HubSpot Trigger → Agent → HubSpot Action) How it works (3-5 sentences): An Integration Trigger fires on a new form submission.**

6 An Agent analyzes the specific question asked by the user and drafts a personalized 2-sentence response. An Action node updates a custom property on the contact record in HubSpot, ready for email injection. **Sample prompt (German, in quotes):** "Als Vertriebsassistent \[Persona\], analysiere die Frage des Webinar-Teilnehmers: '{user\_question}'. Verfasse eine maßgeschneiderte Antwort in 2 Sätzen \[Context\]. Gib ausschließlich den Text der Antwort ohne Begrüßung zurück \[Format\]." **Expected outcome / artifact:** Personalized text populated in CRM fields. **KPIs / measurement:** Follow-up reply rate. **Pitfalls:** If a user asked a nonsensical question, the AI might hallucinate an answer. A Condition Node must filter out empty inputs. **Estimated time saved:** 8 hours/campaign

### **S-063 Welcome Series Generation**

## **Marketing function: CRM / Lifecycle Trigger / situation: A new newsletter is launched, requiring an automated 5-part welcome flow. Goal: Map and write a welcome series that introduces brand pillars over two weeks. Langdock feature(s): Agent / Folders How it works (3-5 sentences): The Agent reads the Brand Story Folder.**

4 It generates 5 emails: Welcome, Founder's Story, Top Resources, Community, and Soft Pitch. It outputs the full text, subject lines, and recommended delay times between sends. **Sample prompt (German, in quotes):** "Als CRM-Copywriter \[Persona\], konzipiere eine 5-teilige Welcome-Journey für neue Abonnenten. Nutze die Brand Story aus dem Ordner, um Vertrauen aufzubauen \[Context\]. Liefere für jede E-Mail: Sendeverzögerung, Betreff und den Body-Text \[Format\]." **Expected outcome / artifact:** A 5-part welcome email sequence. **KPIs / measurement:** Day 14 subscriber retention. **Pitfalls:** Writing emails that are too long; welcome emails are skimmed, so the AI must use high-contrast formatting. **Estimated time saved:** 6 hours/sequence

### **S-064 Post-Purchase Upsell**

## **Marketing function: CRM / Lifecycle Trigger / situation: A user buys a core product, and the company wants to upsell an add-on. Goal: Draft a highly contextual email explaining why the add-on is the logical next step. Langdock feature(s): Chat How it works (3-5 sentences): The marketer provides the features of the core product and the add-on. The AI drafts an email highlighting the "gap" that the add-on fills, using a "Since you're enjoying X, unlock Y" framework to maximize relevance. Sample prompt (German, in quotes): "Als Upsell-Spezialist \[Persona\], schreibe eine E-Mail an Kunden, die Produkt A gekauft haben, um Produkt B anzubieten. Der Fokus liegt darauf, wie Produkt B die Ergebnisse von A multipliziert \[Context\]. Verfasse einen nutzenorientierten Text \[Format\]." Expected outcome / artifact: Upsell email copy. KPIs / measurement: Upsell conversion rate. Pitfalls: Upselling too soon can annoy new users. The CRM delay must be configured properly. Estimated time saved: 1 hour/email**

### **S-065 Abandoned Cart Recovery (B2B SaaS)**

## **Marketing function: CRM / Lifecycle Trigger / situation: Users abandon the self-serve checkout page for an annual plan. Goal: Address objections (security, onboarding, ROI) across 2 recovery emails. Langdock feature(s): Folders How it works (3-5 sentences): Referencing a Folder containing the sales team's objection handling playbook**

4, the AI drafts two recovery emails. Email 1 focuses on technical support/onboarding ease, and Email 2 focuses on ROI guarantees. **Sample prompt (German, in quotes):** "Als SaaS-Retention-Manager \[Persona\], entwirf zwei Abandoned-Cart-E-Mails für den Jahresplan. Nutze den Ordner zur Einwandsbehandlung: E-Mail 1 nimmt die Angst vor der Implementierung, E-Mail 2 betont den ROI \[Context\]. Liefere prägnante Texte \[Format\]." **Expected outcome / artifact:** B2B cart recovery sequence. **KPIs / measurement:** Cart recovery rate. **Pitfalls:** Offering a discount immediately degrades B2B value; the AI must be strictly instructed to use value-add arguments. **Estimated time saved:** 2 hours/sequence

### **S-066 Lead Scoring Rule Documentation**

## **Marketing function: CRM / Lifecycle Trigger / situation: RevOps needs to define and document a new lead scoring matrix for HubSpot. Goal: Translate marketing intuition into logical IF/THEN statements for CRM configuration. Langdock feature(s): Canvas How it works (3-5 sentences): The marketer lists high-value actions (e.g., pricing page visit). In Canvas**

5, the AI translates these into a structured matrix with assigned point values and decay rates, formatting it for easy entry into the CRM. **Sample prompt (German, in quotes):** "Als RevOps-Analyst \[Persona\], dokumentiere ein neues Lead-Scoring-Modell. Weise den 5 übergebenen Aktionen Punktwerte (1-100) zu und definiere den zeitlichen Punkteverfall \[Context\]. Erstelle eine Matrix-Tabelle im Canvas \[Format\]." **Expected outcome / artifact:** A documented lead scoring matrix. **KPIs / measurement:** MQL to SQL conversion rate. **Pitfalls:** Not accounting for negative scoring (e.g., visits "Careers" page). The AI should be prompted to include disqualifying signals. **Estimated time saved:** 3 hours/matrix

### **S-067 VIP Tier Communications**

**Marketing function:** CRM / Lifecycle  
**Trigger / situation:** Top-tier customers require bespoke, concierge-style communications.  
**Goal:** Draft exclusive invite emails for a private executive dinner.  
**Langdock feature(s):** Chat  
**How it works (3-5 sentences):** The AI is instructed to adopt an ultra-premium, understated tone. It drafts an invitation that feels personal, exclusive, and un-automated, avoiding typical marketing formatting like HTML buttons.  
**Sample prompt (German, in quotes):** "Als Executive-Communications-Manager \[Persona\], verfasse eine Einladung zu einem C-Level-Dinner für unsere Top-Kunden. Der Ton muss hochwertig und dezent sein – keine klassischen Marketing-Phrasen, reiner Plain-Text-Stil \[Context\]. Schreibe die E-Mail so, als käme sie direkt vom CEO \[Format\]."  
**Expected outcome / artifact:** A high-touch, plain-text email draft.  
**KPIs / measurement:** VIP event RSVP rate.  
**Pitfalls:** Any hint of marketing jargon ("Unlock value\!") will ruin the VIP illusion.  
**Estimated time saved:** 1 hour/invite

## **G. ABM (ACCOUNT-BASED MARKETING)**

Account-Based Marketing succeeds or fails based on hyper-relevance. Langdock’s Web Search capabilities 6 enable ABM marketers to scrape a target account’s recent earnings calls, press releases, and executive interviews in seconds. When this live intent data is combined with the company’s internal collateral via Folders 4, Langdock can automatically generate highly personalized 1:1 outreach that bridges the gap between the target's specific macroeconomic pain points and the vendor's software solutions.

### **S-068 Account Research Dossiers**

## **Marketing function: ABM Trigger / situation: The sales and marketing team are targeting a new Tier 1 enterprise account. Goal: Compile a comprehensive 5-page dossier on the target company's current strategic initiatives. Langdock feature(s): Agent / Web Search How it works (3-5 sentences): An Agent uses Web Search to query the target company’s recent press releases and Q1 earnings call transcripts.**

6 It synthesizes this unstructured data into a structured dossier highlighting key strategic priorities, leadership changes, and potential pain points. **Sample prompt (German, in quotes):** "Als ABM-Analyst \[Persona\], erstelle ein Account-Dossier für die Firma {Company}. Nutze Web Search, um aktuelle News zu analysieren und ihre Top-3-Ziele herauszufinden \[Context\]. Liefere ein Executive Summary mit: Strategie, Herausforderungen, und Trigger-Events \[Format\]." **Expected outcome / artifact:** A deep-dive account dossier. **KPIs / measurement:** Sales team meeting conversion rate on Tier 1 accounts. **Pitfalls:** Web search may surface outdated news if not explicitly restricted to the last 6-12 months. **Estimated time saved:** 6 hours/account

### **S-069 Personalized Outreach Drafts (1:1)**

## **Marketing function: ABM Trigger / situation: A marketer needs to send a direct mail package followed by a LinkedIn message to a CIO. Goal: Draft a hyper-personalized message connecting the prospect's background to the campaign. Langdock feature(s): Chat / File Attachment How it works (3-5 sentences): The user attaches a PDF of the CIO's LinkedIn profile. The AI analyzes their work history and drafts a message that ties a specific achievement (e.g., "Congrats on the cloud migration") to the value proposition of the ABM campaign. Sample prompt (German, in quotes): "Als BDR \[Persona\], schreibe eine LinkedIn-Nachricht an den CIO im angehängten Profil. Verknüpfe seine jüngste Beförderung mit unserem Direct-Mail-Paket als Eisbrecher \[Context\]. Liefere eine charmante, nicht-verkaufslastige Nachricht von maximal 4 Sätzen \[Format\]." Expected outcome / artifact: A hyper-personalized LinkedIn outreach message. KPIs / measurement: Connection acceptance and reply rate. Pitfalls: AI can make creepy connections referencing deep personal info. Restrict focus to professional achievements only. Estimated time saved: 30 minutes/prospect**

### **S-070 Stakeholder Mapping**

## **Marketing function: ABM Trigger / situation: Selling to the enterprise requires navigating a buying committee of 6-8 people. Goal: Map out the likely buying committee structure and their individual motivations. Langdock feature(s): Chat How it works (3-5 sentences): The user specifies the target industry and the product being sold. The AI generates a stakeholder map (Champion, Economic Buyer, Blocker) and scripts a specific value proposition tailored to the unique KPIs of each role. Sample prompt (German, in quotes): "Als Enterprise-Sales-Stratege \[Persona\], skizziere das Buying Center für den Verkauf einer HR-Software. Definiere die Rollen und ihre primären KPIs \[Context\]. Liefere eine Tabelle, die jede Rolle mit ihrem Pain Point und unserer Value Proposition verknüpft \[Format\]." Expected outcome / artifact: A stakeholder map and messaging matrix. KPIs / measurement: Multi-threading success rate in sales opportunities. Pitfalls: Assuming generic titles; the marketer should validate actual titles via LinkedIn Sales Navigator. Estimated time saved: 2 hours/account**

### **S-071 Account-Tier Content Plans**

## **Marketing function: ABM Trigger / situation: The marketing team is structuring content for 1:1, 1:Few, and 1:Many ABM tiers. Goal: Define which content formats and personalization levels apply to each tier. Langdock feature(s): Canvas How it works (3-5 sentences): In Canvas**

5, the AI generates a matrix detailing the content strategy (e.g., 1:1 gets custom microsites, 1:Many gets email tracks). The team collaboratively refines resource allocation within the split-screen interface. **Sample prompt (German, in quotes):** "Als ABM-Kampagnenmanager \[Persona\], erstelle eine Content-Strategie-Matrix für unsere drei ABM-Tier-Stufen. Teile die Formate und den Ressourcenaufwand logisch zu \[Context\]. Liefere die Strategie als Tabelle im Canvas \[Format\]." **Expected outcome / artifact:** An ABM tiering strategy document. **KPIs / measurement:** Resource efficiency; Tier 1 engagement. **Pitfalls:** Over-committing marketing resources to 1:1 accounts; AI should estimate hours required per asset to provide a reality check. **Estimated time saved:** 3 hours/planning session

### **S-072 Intent Signal Interpretation**

## **Marketing function: ABM Trigger / situation: An intent data tool flags a spike in research activity for an account. Goal: Translate raw intent topics into a concrete campaign action for sales. Langdock feature(s): Workflows (Webhook Trigger → Agent → Slack Action) How it works (3-5 sentences): A Webhook Trigger fires when the Intent Tool detects a spike.**

6 An Agent analyzes the researched topics and cross-references them with the company's content Folder.4 An Action node then sends a Slack alert to the Account Executive suggesting exactly which whitepaper to send.6 **Sample prompt (German, in quotes):** "Als Intent-Data-Analyst \[Persona\], bewerte die Intent-Signale der Firma {Company}. Suche im verknüpften Ordner nach unserem relevantesten Content-Piece zu diesen Themen \[Context\]. Formuliere eine Slack-Nachricht an den Vertrieb mit der Empfehlung, welches Asset gesendet werden soll \[Format\]." **Expected outcome / artifact:** Automated, context-rich Slack alerts for Sales. **KPIs / measurement:** Speed to lead outreach on intent spikes. **Pitfalls:** If the intent topics are too broad, the Agent might recommend a generic homepage link. **Estimated time saved:** 5 hours/week

### **S-073 1:1 Microsite Copy Generation**

## **Marketing function: ABM Trigger / situation: A custom landing page is being built for a single Tier 1 account. Goal: Generate hyper-personalized copy weaving the target's challenges into the brand's narrative. Langdock feature(s): Agent How it works (3-5 sentences): The marketer provides the target account's annual report summary. The Agent generates the H1, subheadlines, and body copy for the microsite, explicitly framing the software as the direct solution to the specific challenges mentioned in the report. Sample prompt (German, in quotes): "Als ABM-Texter \[Persona\], verfasse den Text für eine 1:1 Microsite für {Company}. Beziehe dich auf deren Ziel, die Lieferkette zu digitalisieren, und positioniere unsere Software als Lösung \[Context\]. Liefere die Texte für Hero-Sektion, 3 Feature-Blöcke und Footer \[Format\]." Expected outcome / artifact: Complete microsite copy. KPIs / measurement: Microsite conversion rate (meeting booked). Pitfalls: Sounding arrogant by implying the target company is failing without the product; tone must be collaborative. Estimated time saved: 4 hours/microsite**

### **S-074 Executive Summary Drafting for Direct Mail**

## **Marketing function: ABM Trigger / situation: Sending a physical book or report to a CEO, requiring a personalized cover letter. Goal: Write a crisp, 3-paragraph executive summary that justifies the physical mailing. Langdock feature(s): Chat How it works (3-5 sentences): The AI drafts a cover letter that bridges the gap between the enclosed physical item and a request for a 15-minute briefing. It ensures the language is respectful of an executive's time, avoiding typical sales fluff. Sample prompt (German, in quotes): "Als Executive-Sponsor \[Persona\], schreibe ein Begleitschreiben für einen physischen Branchen-Report an den CEO von {Company}. Halte den Text unter 150 Wörtern, hebe eine Statistik hervor und schlage ein 15-minütiges Briefing vor \[Context\]. Formatiere es als formellen Geschäftsbrief \[Format\]." Expected outcome / artifact: A printable executive cover letter. KPIs / measurement: Direct mail response rate. Pitfalls: Including complex formatting; physical letters look best as simple plain text. Estimated time saved: 1 hour/letter**

### **S-075 Deal Acceleration Content**

**Marketing function:** ABM **Trigger / situation:** A high-value deal is stuck in procurement due to security concerns. **Goal:** Rapidly assemble a custom "Security & Compliance" one-pager tailored to the prospect's industry. **Langdock feature(s):** Folders / Canvas **How it works (3-5 sentences):** The marketer queries the Security Folder 4 for compliance standards relevant to the prospect's industry. The AI synthesizes the complex technical documents into a clear, 1-page business summary in Canvas 5, allowing marketing to accelerate the stalled deal. **Sample prompt (German, in quotes):** "Als Product Marketer \[Persona\], erstelle einen One-Pager zum Thema Datensicherheit für einen Gesundheitskunden. Extrahiere die relevanten Zertifizierungen aus dem Ordner und übersetze sie in geschäftlichen Nutzen \[Context\]. Liefere eine Übersicht mit Executive Summary und 4 Bulletpoints \[Format\]." **Expected outcome / artifact:** A targeted security one-pager. **KPIs / measurement:** Reduction in sales cycle length. **Pitfalls:** Oversimplifying legal or security terms can create liability; AI output must be checked against exact technical wording. **Estimated time saved:** 3 hours/document

## **H. PR & COMMUNICATIONS**

Public Relations requires speed, accuracy, and absolute alignment with legal guardrails. Langdock’s Canvas feature 5 is highly effective for crisis simulation and message refinement, allowing PR directors to workshop holding statements in real-time. By connecting Folders containing approved legal boilerplate and historical executive quotes 4, Langdock ensures that all drafted press releases and media pitches remain within the strict bounds of corporate compliance while adapting the tone to appeal directly to the targeted journalists.

### **S-076 Press Release Drafting**

## **Marketing function: PR & Comms Trigger / situation: The company acquired a smaller competitor and needs to announce it to the press. Goal: Draft a standard format press release (Headline, Dateline, Lead, Body, Quotes). Langdock feature(s): Folders / Chat How it works (3-5 sentences): The user provides the deal facts and connects the Boilerplate Folder.**

4 The AI structures the press release in the inverted pyramid style required by journalists. It drafts plausible executive quotes that the PR team can then send for approval. **Sample prompt (German, in quotes):** "Als PR-Manager \[Persona\], verfasse eine Pressemitteilung zur Akquisition von {Company}. Nutze das Prinzip der umgekehrten Pyramide, integriere zwei CEO-Zitate und füge den Standard-Boilerplate aus dem Ordner an \[Context\]. Formatiere das Dokument klassisch mit Dateline \[Format\]." **Expected outcome / artifact:** A formatted press release draft. **KPIs / measurement:** Media pickup rate; drafting time. **Pitfalls:** AI quotes can sound robotic; PR must edit the quotes to sound like the actual human executive. **Estimated time saved:** 2 hours/release

### **S-077 Media List Research & Curation**

## **Marketing function: PR & Comms Trigger / situation: Pitching a specialized story and needing to find relevant journalists. Goal: Identify journalists who have recently covered a specific niche topic. Langdock feature(s): Agent / Web Search How it works (3-5 sentences): An Agent uses Web Search**

6 to query news outlets for a specific topic over the last 30 days. It extracts the names of the journalists, their publications, and the titles of their recent pieces, outputting a curated targeting list. **Sample prompt (German, in quotes):** "Als Media-Researcher \[Persona\], recherchiere via Web Search Journalisten, die kürzlich über 'KI in der Logistik' geschrieben haben. Liefere keine generischen Outlets, sondern spezifische Autorennamen \[Context\]. Erstelle eine Tabelle mit: Name, Medium, Titel und URL \[Format\]." **Expected outcome / artifact:** A targeted media list. **KPIs / measurement:** Pitch open rate and response rate. **Pitfalls:** Web search may hallucinate email addresses; the AI should only provide names and URLs. **Estimated time saved:** 4 hours/campaign

### **S-078 Executive Talking Points & Q\&A Prep**

## **Marketing function: PR & Comms Trigger / situation: The CEO is booked for a live TV interview regarding a recent data breach. Goal: Generate difficult potential questions and structured, safe talking points. Langdock feature(s): Folders / Canvas How it works (3-5 sentences): Referencing internal legal memos via Folders**

4, the AI generates a "Hostile Q\&A" document in Canvas.5 It anticipates the 5 most aggressive questions a journalist might ask and scripts pivoting techniques ("Bridging") to bring the conversation back to the approved talking points. **Sample prompt (German, in quotes):** "Als Medientrainer \[Persona\], bereite ein Q\&A-Dokument für das TV-Interview unseres CEOs vor. Formuliere die 5 kritischsten Fragen zum Datenschutz und entwickle 'Bridging-Antworten' basierend auf dem legalen Memo im Ordner \[Context\]. Liefere Frage, Risiko und die Brücken-Antwort \[Format\]." **Expected outcome / artifact:** A media training Q\&A document. **KPIs / measurement:** Executive confidence; prevention of PR gaffes. **Pitfalls:** The AI might script answers that are too long to deliver on live television; enforce 15-second soundbites. **Estimated time saved:** 3 hours/interview

### **S-079 Crisis Response Scenarios (Tabletop)**

## **Marketing function: PR & Comms Trigger / situation: The PR team is running an annual crisis simulation workshop. Goal: Generate realistic, escalating crisis injects for the team to react to. Langdock feature(s): Chat How it works (3-5 sentences): The marketer instructs the AI to act as a "Crisis Simulator." The AI generates an initial trigger (e.g., a whistleblower tweet). As the PR team inputs their response strategy, the AI dynamically escalates the scenario based on their actions, simulating media pressure. Sample prompt (German, in quotes): "Als Krisensimulator \[Persona\], führe ein Tabletop-Szenario mit mir durch. Das Szenario ist ein Serverausfall. Starte mit dem ersten 'Inject' und warte auf meine Reaktion, bevor du eskalierst \[Context\]. Gib mir jeweils nur ein Ereignis \[Format\]." Expected outcome / artifact: An interactive crisis training session. KPIs / measurement: Team readiness score post-workshop. Pitfalls: The AI might resolve the crisis too easily if the user gives a basic response. Prompt it to be unforgiving. Estimated time saved: 8 hours/prep**

### **S-080 Journalist Outreach Personalization**

## **Marketing function: PR & Comms Trigger / situation: Pitching an exclusive story to a top-tier tech journalist. Goal: Write a concise email pitch referencing the journalist's previous work to build rapport. Langdock feature(s): Agent / Web Search How it works (3-5 sentences): The user provides the journalist's name. The Agent searches their recent articles**

6, finding the connective tissue between their beat and the company's news. It drafts a 150-word pitch that gets straight to the point. **Sample prompt (German, in quotes):** "Als PR-Profi \[Persona\], schreibe einen E-Mail-Pitch an den Journalisten {Name}. Recherchiere via Web Search seinen letzten Artikel zu 'Fintech' und nutze dies als Aufhänger für unsere neue Story \[Context\]. Halte die E-Mail unter 150 Wörtern, mit klarem News-Fokus \[Format\]." **Expected outcome / artifact:** A personalized pitch email. **KPIs / measurement:** Earned media placement. **Pitfalls:** Journalists hate being flattered falsely; the reference to past work must be analytical. **Estimated time saved:** 1 hour/pitch

### **S-081 Thought Leadership Ghostwriting**

## **Marketing function: PR & Comms Trigger / situation: An SME gave a great internal presentation, perfect for a guest Op-Ed. Goal: Translate an informal transcript into a prestigious, publication-ready Op-Ed. Langdock feature(s): Chat / File Attachment How it works (3-5 sentences): The internal presentation transcript is uploaded. The AI is instructed to elevate the language, removing conversational filler and structuring it into a classic persuasive essay (Thesis, Argument, Evidence, Conclusion). Sample prompt (German, in quotes): "Als Senior Editor \[Persona\], wandle das Transkript in einen Op-Ed-Artikel um. Entferne die informelle Sprache und strukturiere den Text als überzeugendes Essay \[Context\]. Liefere ein Dokument mit ca. 800 Wörtern und einem starken Fazit \[Format\]." Expected outcome / artifact: A publication-ready Op-Ed draft. KPIs / measurement: Acceptance rate by external publications. Pitfalls: Removing too much of the SME's natural voice can make the piece sound generic. Estimated time saved: 5 hours/article**

### **S-082 Award Submission Writing**

## **Marketing function: PR & Comms Trigger / situation: Applying for "Product of the Year," which requires a detailed submission. Goal: Synthesize product specs and ROI data into a persuasive award entry. Langdock feature(s): Folders How it works (3-5 sentences): The PR manager connects Folders containing recent case studies.**

4 The AI maps this data against the specific judging criteria of the award (e.g., Innovation, Impact), drafting comprehensive, metric-driven answers for the application form. **Sample prompt (German, in quotes):** "Als PR-Texter \[Persona\], verfasse die Antworten für eine Award-Bewerbung. Nutze die Case Studies im Ordner, um die Jury-Kriterien mit harten Zahlen zu belegen \[Context\]. Liefere drei strukturierte Absätze mit jeweils maximal 300 Wörtern \[Format\]." **Expected outcome / artifact:** Completed award submission answers. **KPIs / measurement:** Awards shortlisted/won. **Pitfalls:** The AI might combine metrics from two different case studies; rigorous fact-checking is necessary. **Estimated time saved:** 8 hours/submission

### **S-083 Internal PR / Company-wide Announcements**

**Marketing function:** PR & Comms **Trigger / situation:** The CEO needs to announce a sensitive restructuring to the company. **Goal:** Draft an internal memo that is transparent, reassuring, and clear on next steps. **Langdock feature(s):** Canvas **How it works (3-5 sentences):** Working in Canvas 5, the communications director outlines the raw facts. The AI drafts a memo focused on empathy and clarity. The split-screen allows HR and Comms to collaboratively wordsmith sensitive sentences before distribution. **Sample prompt (German, in quotes):** "Als Internal-Comms-Direktor \[Persona\], entwirf ein Memo für die Belegschaft zur Umstrukturierung. Der Ton muss empathisch und zukunftsorientiert sein; beschönige nichts \[Context\]. Liefere den Text im Canvas, strukturiert mit 'Was sich ändert' und 'Nächste Schritte' \[Format\]." **Expected outcome / artifact:** A polished internal communications memo. **KPIs / measurement:** Internal eNPS sentiment post-announcement. **Pitfalls:** Sounding overly corporate or utilizing "layoff jargon" can severely damage trust. **Estimated time saved:** 2 hours/memo

## **I. RESEARCH & INSIGHTS**

Marketing research is traditionally bottlenecked by the manual processing of qualitative data, such as reading hundreds of survey responses or listening to hours of customer interviews. Langdock’s Data Analyst module 5 leverages Python to perform advanced topic modeling on massive CSV exports, instantly quantifying open-text sentiment. When combined with Agents capable of deep web research 6, marketing strategists can generate competitive intelligence reports and customer personas based on real-time market signals rather than intuition.

### **S-084 Customer Interview Synthesis**

## **Marketing function: Research & Insights Trigger / situation: Product marketing conducted 10 hours of Zoom interviews with customers. Goal: Extract recurring pain points, feature requests, and exact Voice of Customer (VoC) quotes. Langdock feature(s): Folders / Agent How it works (3-5 sentences): Transcripts of all 10 interviews are uploaded into a specific Folder.**

4 An Agent reads across the entire corpus, clustering similar themes (e.g., reporting UI complaints). It outputs a synthesis report complete with exact quotes mapped to each theme. **Sample prompt (German, in quotes):** "Als User-Researcher \[Persona\], analysiere die 10 Interview-Transkripte im Ordner. Identifiziere die drei häufigsten Pain Points und extrahiere zu jedem Punkt ein wörtliches Zitat \[Context\]. Liefere einen Executive-Bericht mit Mustern und Zitaten \[Format\]." **Expected outcome / artifact:** A thematic VoC report. **KPIs / measurement:** Time saved in qualitative analysis; better ad copy resonance. **Pitfalls:** AI might prioritize the loudest speaker over the frequency of the complaint across users. **Estimated time saved:** 15 hours/project

### **S-085 Survey Open-Text Analysis**

## **Marketing function: Research & Insights Trigger / situation: A survey yielded 500 open-text responses to "What is your biggest challenge?" Goal: Categorize and quantify unstructured text data to identify the top 5 challenges. Langdock feature(s): Data Analyst How it works (3-5 sentences): The CSV of responses is uploaded to the Data Analyst.**

5 Python code processes the text, performs topic modeling, and groups similar responses. It outputs a bar chart showing the frequency of the top 5 topics alongside the raw count. **Sample prompt (German, in quotes):** "Als Data Analyst \[Persona\], werte die Freitext-Antworten in der angehängten CSV aus. Führe ein Topic-Modeling durch, um die 5 häufigsten Herausforderungen zu identifizieren, und zähle deren Vorkommen \[Context\]. Liefere eine Tabelle mit Themen und ein Python-generiertes Balkendiagramm \[Format\]." **Expected outcome / artifact:** Quantified open-text analysis. **KPIs / measurement:** Actionable product/marketing insights discovered. **Pitfalls:** Misinterpreting highly niche technical jargon; provide a brief glossary if the industry is specialized. **Estimated time saved:** 10 hours/survey

### **S-086 Persona Refresh**

## **Marketing function: Research & Insights Trigger / situation: Existing buyer personas are two years old and lack modern context. Goal: Update persona profiles incorporating recent macroeconomic data and survey results. Langdock feature(s): Web Search / Canvas How it works (3-5 sentences): The marketer pastes the old persona into Canvas.**

5 They instruct the AI to use Web Search 6 to find recent reports on B2B buyer behavior. The AI updates the "Challenges" section, highlighting the changes in the split screen. **Sample prompt (German, in quotes):** "Als Market-Researcher \[Persona\], aktualisiere die bestehende Buyer Persona im Canvas. Nutze Web Search, um aktuelle Kaufverhalten-Trends zu recherchieren \[Context\]. Aktualisiere die Sektionen 'Pain Points' und markiere alle neuen Erkenntnisse fett \[Format\]." **Expected outcome / artifact:** An updated, modern buyer persona document. **KPIs / measurement:** Campaign targeting accuracy. **Pitfalls:** AI might pull consumer trends instead of B2B trends if search queries aren't strictly constrained. **Estimated time saved:** 4 hours/persona

### **S-087 Competitive Intelligence Reports**

## **Marketing function: Research & Insights Trigger / situation: A major competitor just launched a new pricing model. Goal: Analyze the competitor's new pricing page against the brand's current offering. Langdock feature(s): Web Search / Chat How it works (3-5 sentences): Using Web Search, the AI scrapes the competitor's new pricing tiers.**

6 It cross-references this with the brand's own pricing details provided in the chat. The AI generates a SWOT analysis of the new competitive landscape. **Sample prompt (German, in quotes):** "Als Pricing-Stratege \[Persona\], vergleiche unsere Preise mit dem neuen Modell von {Competitor\_URL} via Web Search. Erstelle eine SWOT-Analyse, die aufzeigt, wo wir preislich angreifbar sind \[Context\]. Liefere eine Gegenüberstellung der Tiers in Tabellenform \[Format\]." **Expected outcome / artifact:** A competitive pricing SWOT analysis. **KPIs / measurement:** Strategic response time to market changes. **Pitfalls:** Hidden pricing ("Contact Sales" tiers) cannot be analyzed by AI. **Estimated time saved:** 3 hours/analysis

### **S-088 Trend Reports / Desk Research**

## **Marketing function: Research & Insights Trigger / situation: The CMO requests a briefing on the impact of "Zero-Click Searches". Goal: Compile a well-researched, cited briefing document summarizing current industry consensus. Langdock feature(s): Agent (Web Search) How it works (3-5 sentences): An Agent utilizing deep web search aggregates articles and data from search engine journals over the past year.**

6 It synthesizes this into a 2-page briefing, complete with inline citations and strategic recommendations. **Sample prompt (German, in quotes):** "Als SEO-Analyst \[Persona\], verfasse ein Briefing über die Auswirkungen von 'Zero-Click Searches'. Recherchiere aktuelle Studien und fasse die Bedrohung sowie Lösungsstrategien zusammen \[Context\]. Liefere ein 2-seitiges Dokument mit Handlungsempfehlungen \[Format\]." **Expected outcome / artifact:** A comprehensive trend briefing document. **KPIs / measurement:** Leadership team satisfaction; strategic pivot speed. **Pitfalls:** Synthesizing contradictory opinions without context; the AI must explicitly state if experts are divided. **Estimated time saved:** 5 hours/report

### **S-089 Voice of Customer (VoC) Dashboards (Data Prep)**

## **Marketing function: Research & Insights Trigger / situation: Preparing text data from multiple sources to feed into a BI dashboard. Goal: Standardize, clean, and tag disparate text sources into a uniform CSV structure. Langdock feature(s): Data Analyst How it works (3-5 sentences): A compilation of CSVs from different platforms is uploaded.**

5 The Data Analyst uses Python to normalize headers, extract text, remove PII, and assign a standardized "Sentiment Score," outputting a master CSV ready for PowerBI. **Sample prompt (German, in quotes):** "Als Data Engineer \[Persona\], bereinige die angehängten CSV-Dateien und führe sie zusammen. Standardisiere die Spalten und weise via Textanalyse einen 'Sentiment-Score' (1-5) zu \[Context\]. Liefere die saubere Master-CSV für unseren BI-Import \[Format\]." **Expected outcome / artifact:** A clean, standardized dataset. **KPIs / measurement:** Time saved in data wrangling. **Pitfalls:** Python scripts might fail if date formats in the original CSVs are radically different. **Estimated time saved:** 6 hours/month

### **S-090 NPS Verbatim Analysis**

## **Marketing function: Research & Insights Trigger / situation: The quarterly NPS survey closed with 1,000 qualitative explanations. Goal: Correlate specific keywords in the verbatim text with Promoters vs. Detractors. Langdock feature(s): Data Analyst How it works (3-5 sentences): Uploading the NPS CSV**

5, the AI correlates the numerical score with the text. It identifies that Detractors frequently mention "bugs," while Promoters mention "UI," outputting a driver analysis report. **Sample prompt (German, in quotes):** "Als CX-Analyst \[Persona\], analysiere die NPS-Daten in der CSV. Korreliere die Antworten mit den Detraktoren (0-6) und Promotoren (9-10), um die Haupttreiber zu finden \[Context\]. Liefere eine Zusammenfassung der 'Key Drivers' und ein Balkendiagramm \[Format\]." **Expected outcome / artifact:** NPS driver analysis and charts. **KPIs / measurement:** Identification of churn risks. **Pitfalls:** Short responses (e.g., "good") offer no analytical value; the script must filter out responses under 3 words. **Estimated time saved:** 8 hours/quarter

### **S-091 Pricing Perception Research**

## **Marketing function: Research & Insights Trigger / situation: Sales is reporting increased pushback on pricing. Goal: Analyze recent lost-deal notes in CRM to isolate pricing objections. Langdock feature(s): Data Analyst / File Attachment How it works (3-5 sentences): An export of "Closed Lost" notes from Salesforce is uploaded. The AI scans for pricing-related keywords and context (e.g., "Too expensive" vs. "Couldn't see the ROI"), reporting on whether the market is genuinely price-sensitive. Sample prompt (German, in quotes): "Als Pricing-Analyst \[Persona\], werte die Closed-Lost-Notizen aus. Isoliere Deals, die wegen des Preises verloren gingen, und differenziere: War das Budget zu klein, oder fehlte der wahrgenommene ROI? \[Context\]. Liefere eine prozentuale Aufschlüsselung \[Format\]." Expected outcome / artifact: Pricing perception report. KPIs / measurement: Clarity on pricing strategy vs. messaging strategy. Pitfalls: Sales reps often select "Price" as a default loss reason; AI must analyze the text notes, not just the dropdown. Estimated time saved: 5 hours/analysis**

### **S-092 Churn Interview Synthesis**

## **Marketing function: Research & Insights Trigger / situation: Customer Success conducted exit interviews with 5 large accounts. Goal: Summarize the core reasons for churn to inform retention campaigns. Langdock feature(s): Folders / Agent How it works (3-5 sentences): The 5 exit interview transcripts are placed in a Folder.**

4 An Agent synthesizes the documents to find common denominators. It creates a brief for the marketing team on how to build retention campaigns addressing these gaps. **Sample prompt (German, in quotes):** "Als Retention-Stratege \[Persona\], analysiere die 5 Churn-Interviews im Ordner. Finde die gemeinsamen Nenner für die Kündigungen und leite Empfehlungen für präventive Kampagnen ab \[Context\]. Liefere ein Executive Summary mit 3 Kampagnen-Ideen \[Format\]." **Expected outcome / artifact:** Churn analysis and campaign brief. **KPIs / measurement:** Reduction in future churn rate. **Pitfalls:** Churn reasons are multi-faceted; the AI should look for the "trigger event" rather than just the final stated reason. **Estimated time saved:** 6 hours/project

### **S-093 Product Marketing Gap Analysis**

**Marketing function:** Research & Insights **Trigger / situation:** Reviewing G2/Capterra reviews of the brand vs. the top competitor. **Goal:** Identify features the market loves in the competitor that the brand is lacking. **Langdock feature(s):** Web Search / Agent **How it works (3-5 sentences):** The Agent uses Web Search 6 to scrape recent 4 and 5-star reviews of the competitor. It extracts the features users praise most and cross-references this with the brand's feature list, identifying product marketing gaps. **Sample prompt (German, in quotes):** "Als Product Marketing Manager \[Persona\], analysiere via Web Search die aktuellen G2-Reviews unseres Konkurrenten. Extrahiere die drei Features, die am häufigsten gelobt werden, und vergleiche sie mit unserem Angebot \[Context\]. Erstelle einen Gap-Analyse-Bericht \[Format\]." **Expected outcome / artifact:** Product gap analysis report. **KPIs / measurement:** Product roadmap alignment with market demands. **Pitfalls:** Review sites contain fake reviews; looking for highly specific, technical praise helps filter out bot sentiment. **Estimated time saved:** 4 hours/analysis

## **J. MARKETING OPERATIONS**

Marketing Operations (MOPs) thrives on structured data processing and cross-system orchestration. Langdock Workflows elevate MOPs by transforming manual form submissions into fully automated, logic-based execution chains.6 By combining Form Triggers, Condition logic, and API Action nodes to tools like Slack, Jira, and Salesforce 6, Ops teams can enforce strict intake processes, auto-route briefs, and even generate complex CRM scoring syntax without requiring constant developer intervention.

### **S-094 Campaign Brief Intake Form**

## **Marketing function: Marketing Operations Trigger / situation: The marketing team receives requests via email and Slack, creating chaos. Goal: Standardize intake via a conversational AI form that auto-generates a structured brief. Langdock feature(s): Workflows (Form Trigger → Agent → Notion Action) How it works (3-5 sentences): A Form Trigger captures the colleague's basic request.**

6 An Agent analyzes it, filling in missing strategic gaps like target audience based on historical data. An Action node then creates a structured, finalized page in Notion.6 **Sample prompt (German, in quotes):** *Workflow instruction:* "Als Ops-Manager, nimm die Eingaben aus {{trigger.form\_data}} und strukturiere sie in ein Briefing. Ergänze logische KPIs, falls weggelassen, und formatiere alles für den Notion-Export." **Expected outcome / artifact:** A standardized Notion page for every request. **KPIs / measurement:** 100% adoption of the intake process. **Pitfalls:** If the AI hallucinates KPIs that are impossible to measure, the team will be misaligned. **Estimated time saved:** 4 hours/week

### **S-095 Brief Routing & Notification**

## **Marketing function: Marketing Operations Trigger / situation: A new brief is created, but the relevant team isn't notified. Goal: Automatically route the brief to the correct Slack channel based on its content. Langdock feature(s): Workflows (Webhook Trigger → Condition → Slack Action) How it works (3-5 sentences): A Webhook triggers when the brief is finalized.**

6 An Agent reads the brief to determine the required resource (e.g., Design vs. Copy). A Condition Node routes the flow to specific Slack Actions, pinging the correct team with a link.6 **Sample prompt (German, in quotes):** *Agent classification step:* "Analysiere das Briefing {{brief\_text}} und klassifiziere den Hauptbedarf. Antworte ausschließlich mit: 'DESIGN', 'TEXT', 'WEB', oder 'PERFORMANCE'." **Expected outcome / artifact:** Automated Slack notifications. **KPIs / measurement:** Faster time-to-first-action on new briefs. **Pitfalls:** Cross-functional briefs require the Condition logic to handle multiple tags simultaneously. **Estimated time saved:** 2 hours/week

### **S-096 Lead Scoring Rule Writing (Code Gen)**

## **Marketing function: Marketing Operations Trigger / situation: MOPs needs to build a complex lead scoring model in Salesforce. Goal: Generate the exact Boolean logic or APEX code for the CRM rules. Langdock feature(s): Chat / Code Generation How it works (3-5 sentences): The Ops manager describes the scoring rules in plain English. The AI translates this into the exact syntax or formula required for Salesforce, preventing syntax errors and saving debugging time.**

5 **Sample prompt (German, in quotes):** "Als Salesforce-Administrator \[Persona\], übersetze meine Anforderungen in eine fehlerfreie Salesforce-Formel. Anforderung: \+20 Punkte wenn Industrie \= 'SaaS'; \-50 Punkte wenn Domain \= 'gmail' \[Context\]. Liefere ausschließlich den funktionalen Formel-Code \[Format\]." **Expected outcome / artifact:** CRM-ready syntax/code. **KPIs / measurement:** Zero syntax errors upon deployment. **Pitfalls:** Field names in the prompt must exactly match the CRM API names, otherwise the code will fail. **Estimated time saved:** 2 hours/build

### **S-097 MQL/SQL Handoff Documentation**

## **Marketing function: Marketing Operations Trigger / situation: Sales and Marketing are misaligned on what constitutes an SQL. Goal: Draft a Service Level Agreement (SLA) defining handoff criteria. Langdock feature(s): Canvas How it works (3-5 sentences): Marketing Ops inputs current lead definitions into Canvas.**

5 The AI structures a formal SLA document defining the demographic and behavioral triggers for an MQL, the criteria for an SQL, and the mandated maximum follow-up time. **Sample prompt (German, in quotes):** "Als RevOps-Leiter \[Persona\], verfasse ein SLA-Dokument zur Lead-Übergabe. Definiere glasklare Kriterien für MQLs und SQLs basierend auf BANT und setze eine 24-h-Follow-up-Regel fest \[Context\]. Formatiere das SLA im Canvas als verbindlichen Vertrag \[Format\]." **Expected outcome / artifact:** A clear, documented SLA. **KPIs / measurement:** Improved MQL-to-Opportunity conversion rate. **Pitfalls:** Drafting an SLA in a silo; the document generated by AI is a starting point and must be debated by both teams. **Estimated time saved:** 4 hours/document

### **S-098 Campaign Retrospective Templates**

## **Marketing function: Marketing Operations Trigger / situation: Teams finish campaigns but never document what worked or failed. Goal: Auto-generate a prepopulated retrospective document gathering data from integrations. Langdock feature(s): Workflows (HTTP Request → Agent → Confluence Action) How it works (3-5 sentences): A Manual Trigger accepts a Campaign ID.**

6 The Workflow fetches spend data from Google Ads and lead data from HubSpot via HTTP requests.8 An Agent formats this raw data into a Confluence template ready for the post-mortem meeting. **Sample prompt (German, in quotes):** *Workflow instruction:* "Als MOPs-Analyst, nimm die Daten aus {{google\_ads}} und {{hubspot}} und trage sie in unser Post-Mortem-Template ein. Berechne den CPL und hebe Abweichungen hervor. Erstelle das Dokument im Confluence-Format." **Expected outcome / artifact:** A data-rich retrospective document. **KPIs / measurement:** Consistent documentation of learnings. **Pitfalls:** Failing to fetch data accurately if the Campaign IDs across different platforms don't match. **Estimated time saved:** 3 hours/campaign

### **S-099 Internal Knowledge Base for Marketing**

## **Marketing function: Marketing Operations Trigger / situation: Marketers constantly ask Ops where to find logos, templates, and UTM builders. Goal: Build a conversational AI assistant that answers internal process questions. Langdock feature(s): Agent / Folders How it works (3-5 sentences): MOPs uploads all SOPs and brand guidelines to a Folder.**

4 They build an Agent attached to this Folder and share it workspace-wide. When a marketer asks "Where is the UTM builder?", the Agent links them directly to the tool. **Sample prompt (German, in quotes):** "Du bist der 'Marketing Ops Assistant'. Deine Aufgabe ist es, Fragen des Teams zu Prozessen sofort zu beantworten. Suche IMMER zuerst im verknüpften Ordner. Wenn du die Antwort findest, gib den direkten Link aus. Wenn nicht, verweise an Slack." **Expected outcome / artifact:** An always-on internal support bot. **KPIs / measurement:** Reduction in repetitive Slack pings. **Pitfalls:** If the source documents in the Folder are outdated, the Agent will confidently give wrong answers. **Estimated time saved:** 5 hours/week for Ops team

### **S-100 Onboarding New Marketers (Training Plans)**

## **Marketing function: Marketing Operations Trigger / situation: A new Demand Gen manager is starting next week. Goal: Generate a customized 30-60-90 day onboarding plan. Langdock feature(s): Canvas How it works (3-5 sentences): The Ops manager inputs the job description and the company's tech stack. In Canvas**

5, the AI maps out a week-by-week onboarding plan, specifying which tools to learn and what early milestones to achieve. **Sample prompt (German, in quotes):** "Als Ops-Partner \[Persona\], erstelle einen 30-60-90-Tage-Onboarding-Plan für unseren Demand Gen Manager. Integriere Trainings für unseren Tech-Stack und setze messbare Ziele \[Context\]. Präsentiere den Plan als Checkliste im Canvas \[Format\]." **Expected outcome / artifact:** A structured 90-day onboarding checklist. **KPIs / measurement:** Faster time-to-productivity for new hires. **Pitfalls:** Generic training tasks; the prompt must specify exact internal tools and team names. **Estimated time saved:** 2 hours/hire

### **S-101 MarTech Stack Audit**

## **Marketing function: Marketing Operations Trigger / situation: The company is paying for 25 different marketing tools, causing budget bloat. Goal: Analyze overlapping features across the stack to identify consolidation opportunities. Langdock feature(s): Data Analyst / Web Search How it works (3-5 sentences): A CSV listing current tools and costs is uploaded.**

5 The AI uses Web Search 6 to pull the core features of each tool and cross-references them. It highlights redundancies and suggests a consolidation path. **Sample prompt (German, in quotes):** "Als MarTech-Architekt \[Persona\], auditiere die Liste unserer Software-Tools. Nutze Web Search, um die Kernfunktionen zu vergleichen, und identifiziere Überschneidungen \[Context\]. Liefere einen Bericht mit konkreten Empfehlungen, welche Tools wir kündigen können \[Format\]." **Expected outcome / artifact:** A MarTech consolidation report. **KPIs / measurement:** Software budget saved. **Pitfalls:** Some feature overlap is intentional; AI recommendations must be vetted by users. **Estimated time saved:** 10 hours/audit

### **S-102 UTM Taxonomy Standardization**

## **Marketing function: Marketing Operations Trigger / situation: Analytics is broken because teams use inconsistent UTM tags. Goal: Generate a strict, comprehensive UTM taxonomy and naming convention document. Langdock feature(s): Chat How it works (3-5 sentences): The AI generates a standardized taxonomy matrix (Source, Medium, Campaign, Content) mapping out exactly what strings are allowed. It outputs this as a clear table that can be pasted directly into the internal wiki. Sample prompt (German, in quotes): "Als Web-Analytics-Experte \[Persona\], definiere eine strikte UTM-Taxonomie. Erstelle feste Namenskonventionen (z.B. erzwinge Kleinschreibung) für alle gängigen Kanäle \[Context\]. Liefere eine übersichtliche Matrix mit erlaubten Werten \[Format\]." Expected outcome / artifact: A UTM governance document. KPIs / measurement: Clean analytics data in GA4. Pitfalls: Creating overly complex rules that marketers will ignore; the taxonomy must be simple. Estimated time saved: 3 hours/project**

### **S-103 Data Privacy/GDPR Campaign Check**

**Marketing function:** Marketing Operations **Trigger / situation:** Launching a new lead-gen campaign targeting the EU. **Goal:** Review landing page copy and form fields against GDPR best practices. **Langdock feature(s):** Agent / Folders **How it works (3-5 sentences):** An Agent, grounded in the company's legal guidelines via Folders 4, reviews the proposed landing page text. It flags missing double opt-in language or overly intrusive data requests, outputting a compliance checklist. **Sample prompt (German, in quotes):** "Als Datenschutzbeauftragter \[Persona\], überprüfe die Felder unseres neuen Lead-Formulars. Gleiche sie mit den DSGVO-Richtlinien in unserem Legal-Ordner ab \[Context\]. Erstelle eine Checkliste mit notwendigen Änderungen, um rechtliche Risiken auszuschließen \[Format\]." **Expected outcome / artifact:** A compliance risk report. **KPIs / measurement:** Zero compliance violations. **Pitfalls:** AI is not a lawyer. Final legal sign-off on new data collection strategies is still required. **Estimated time saved:** 2 hours/campaign

## **K. ANALYTICS & REPORTING**

Transforming raw BI data into narrative insights is traditionally a manual, time-consuming effort. Langdock's Data Analyst node completely alters this paradigm. By interpreting complex CSVs from Google Analytics, Looker, or Tableau 5, the platform dynamically executes Python to calculate week-over-week trends, perform linear forecasting for budget pacing, and synthesize regression outputs from Marketing Mix Models (MMM) into plain-text strategic recommendations suitable for executive board preparations.

### **S-104 Weekly Performance Summary (GA4)**

## **Marketing function: Analytics & Reporting Trigger / situation: Monday morning requires a summary of website traffic and conversion data. Goal: Automate the synthesis of raw analytics data into a readable summary. Langdock feature(s): Data Analyst How it works (3-5 sentences): The marketer exports the weekly GA4 report as a CSV and uploads it to the Data Analyst.**

5 The AI calculates week-over-week changes, identifies the top-performing channels, and writes a 3-bullet executive summary. **Sample prompt (German, in quotes):** "Als Web-Analyst \[Persona\], werte die angehängten GA4-Daten aus. Berechne das prozentuale Wachstum im Vergleich zur Vorwoche und benenne den stärksten Kanal \[Context\]. Liefere eine prägnante Zusammenfassung in 3 Bulletpoints \[Format\]." **Expected outcome / artifact:** A weekly performance summary. **KPIs / measurement:** Time saved on Monday mornings. **Pitfalls:** Assuming correlation equals causation. The AI should note spikes but suggest human investigation. **Estimated time saved:** 2 hours/week

### **S-105 Anomaly Explanation**

## **Marketing function: Analytics & Reporting Trigger / situation: There is an unexpected 40% drop in lead volume on a Tuesday. Goal: Rapidly correlate data sets to hypothesize the cause of the anomaly. Langdock feature(s): Data Analyst / Web Search How it works (3-5 sentences): The user uploads site analytics, ad spend data, and server logs. The AI cross-references the timelines.**

5 It uses Web Search to check for external factors (e.g., Google Core Updates) and outputs a hypothesis report. **Sample prompt (German, in quotes):** "Als Daten-Detektiv \[Persona\], untersuche den Einbruch der Leads in den Datensätzen. Korreliere Traffic-Drops mit Werbeausgaben; nutze Web Search für externe Faktoren \[Context\]. Liefere drei datenbasierte Hypothesen \[Format\]." **Expected outcome / artifact:** Hypothesis report for the anomaly. **KPIs / measurement:** Speed to resolution of marketing breakdowns. **Pitfalls:** AI might find spurious correlations, missing that the site was actually down. **Estimated time saved:** 4 hours/incident

### **S-106 Executive Dashboard Narrative**

## **Marketing function: Analytics & Reporting Trigger / situation: The CMO needs the Looker dashboard translated into a slide deck narrative. Goal: Write the "speaker notes" and high-level insights for a data presentation. Langdock feature(s): Chat / Image Capabilities How it works (3-5 sentences): The marketer uploads screenshots of complex Looker dashboards. The Vision model**

5 reads the charts, identifying macro trends (e.g., CAC trending down). It drafts compelling narrative slides for the CMO. **Sample prompt (German, in quotes):** "Als Senior Analyst \[Persona\], analysiere die Screenshots unseres Dashboards. Extrahiere die Hauptaussage der Diagramme und übersetze sie in eine Erzählung für das C-Level \[Context\]. Verfasse eine Headline und 2 Sätze Speaker-Notes pro Chart \[Format\]." **Expected outcome / artifact:** Presentation narrative and speaker notes. **KPIs / measurement:** CMO presentation success. **Pitfalls:** Vision models struggle with cluttered charts; simpler, individual charts yield better analysis. **Estimated time saved:** 3 hours/month

### **S-107 Monthly Board Prep (Data Q\&A)**

## **Marketing function: Analytics & Reporting Trigger / situation: Preparing for a board meeting and anticipating hard questions about data. Goal: Simulate a hostile board Q\&A based on the current quarter's metrics. Langdock feature(s): Data Analyst / Chat How it works (3-5 sentences): After analyzing the quarterly data**

5, the user instructs the AI to act as a strict board member. The AI reviews the data, spots weaknesses, and challenges the marketer, helping them prepare robust defenses. **Sample prompt (German, in quotes):** "Als kritischer Investor im Board \[Persona\], analysiere die Quartalszahlen. Finde die drei größten Schwachstellen in den Daten und stelle harte Fragen dazu \[Context\]. Gib mir nur die Fragen und warte auf meine Verteidigung \[Format\]." **Expected outcome / artifact:** Interactive interview prep. **KPIs / measurement:** Executive readiness and confidence. **Pitfalls:** The AI might focus on statistically insignificant metrics if not prompted to focus on top-line revenue. **Estimated time saved:** 2 hours/quarter

### **S-108 Custom KPI Definitions & Formulas**

## **Marketing function: Analytics & Reporting Trigger / situation: The company needs to define "Product Qualified Leads" (PQL). Goal: Generate the mathematical formula and SQL logic for a new bespoke metric. Langdock feature(s): Chat How it works (3-5 sentences): The marketer describes what a successful user looks like. The AI builds a composite metric and outputs the exact SQL query or BI tool formula needed to calculate this dynamically in the database. Sample prompt (German, in quotes): "Als Data-Analytics-Architekt \[Persona\], entwickle eine Formel für unsere neue Metrik 'PQL'. Ein PQL loggt sich oft ein und nutzt Feature X \[Context\]. Liefere die Gewichtung und einen SQL-Code, um dies aus einer User-Tabelle zu berechnen \[Format\]." Expected outcome / artifact: Defined KPI formula and SQL query. KPIs / measurement: Accurate tracking of PLG momentum. Pitfalls: SQL syntax varies between dialects (Snowflake, BigQuery); the user must specify their database type. Estimated time saved: 3 hours/metric**

### **S-109 Marketing Mix Modeling (MMM) Narrative**

## **Marketing function: Analytics & Reporting Trigger / situation: The data science team ran a complex MMM, but the outputs are unreadable to marketing. Goal: Translate statistical outputs into budget reallocation recommendations. Langdock feature(s): Data Analyst How it works (3-5 sentences): The output of the MMM (regression coefficients) is fed into the Data Analyst.**

5 The AI translates the math into plain English strategy, indicating which channels are nearing saturation and where to shift budget. **Sample prompt (German, in quotes):** "Als Marketing-Stratege \[Persona\], übersetze die Ergebnisse unseres Marketing Mix Models in der CSV. Erkläre, welche Kanäle gesättigt sind \[Context\]. Liefere konkrete Handlungsempfehlungen für die Budgetumverteilung \[Format\]." **Expected outcome / artifact:** Strategic budget reallocation plan. **KPIs / measurement:** Improved blended Return on Ad Spend (ROAS). **Pitfalls:** AI might misinterpret a negative coefficient if not explicitly told what the variables represent. **Estimated time saved:** 5 hours/analysis

### **S-110 Ad-hoc Campaign ROI Analysis**

## **Marketing function: Analytics & Reporting Trigger / situation: The CEO asks if a recent $50k tradeshow was worth it. Goal: Quickly calculate full-funnel ROI (Spend vs. Pipeline). Langdock feature(s): Workflows (HTTP Request → Salesforce Action → Agent) How it works (3-5 sentences): A Manual Trigger accepts the Campaign ID.**

6 The Workflow fetches costs and Salesforce pipeline data via HTTP requests.8 An Agent calculates ROI and writes a summary, providing an instant answer to leadership. **Sample prompt (German, in quotes):** *Workflow instruction:* "Berechne den ROI: Kosten \= {{costs}}, Pipeline \= {{pipeline}}. Schreibe eine Slack-Antwort an den CEO, die besagt, ob die Kampagne profitabel war." **Expected outcome / artifact:** Instant ROI summary via Slack. **KPIs / measurement:** Speed of reporting to C-Level. **Pitfalls:** If the sales cycle is long, calculating "Closed Won" a month after the event is misleading; AI must highlight Pipeline Gen. **Estimated time saved:** 3 hours/request

### **S-111 Customer Lifetime Value (CLV) Insights**

## **Marketing function: Analytics & Reporting Trigger / situation: Trying to justify higher acquisition costs for enterprise clients. Goal: Analyze historical purchase data to project long-term CLV by segment. Langdock feature(s): Data Analyst How it works (3-5 sentences): An export of billing data is uploaded.**

5 The AI calculates churn rates and average expansion revenue, outputting the historical CLV for SMB vs. Enterprise segments to justify a higher Cost Per Acquisition (CPA). **Sample prompt (German, in quotes):** "Als Financial-Analyst \[Persona\], berechne den CLV für die Segmente 'SMB' und 'Enterprise' basierend auf der CSV. Berücksichtige Churn und Upsells \[Context\]. Liefere eine Tabelle mit den CLV-Werten und argumentiere den maximalen CPA \[Format\]." **Expected outcome / artifact:** CLV calculation and CPA thresholds. **KPIs / measurement:** Optimized budget allocation per segment. **Pitfalls:** Ignoring gross margin; AI must be told the company's margin percentage to calculate profit CLV. **Estimated time saved:** 6 hours/analysis

### **S-112 Multi-Touch Attribution Rule Definition**

## **Marketing function: Analytics & Reporting Trigger / situation: Moving away from Last-Click, the team needs a custom attribution model. Goal: Define logical percentage weights for First-Touch, Lead-Creation, and Last-Touch. Langdock feature(s): Chat How it works (3-5 sentences): The marketer provides the average B2B sales cycle length. The AI proposes a custom W-shaped attribution model, justifying the mathematical weights based on the specific friction points of the funnel. Sample prompt (German, in quotes): "Als Attribution-Spezialist \[Persona\], entwirf ein W-Shaped-Attributionsmodell. Unser Cycle dauert 6 Monate und umfasst Whitepapers und Demos \[Context\]. Definiere die prozentuale Gewichtung für Touchpoints und begründe die Verteilung \[Format\]." Expected outcome / artifact: A documented attribution framework. KPIs / measurement: Fairer credit distribution across channels. Pitfalls: An overly complex model is impossible to implement in CRMs; AI should keep rules implementable. Estimated time saved: 2 hours/strategy**

### **S-113 Budget Pacing Analysis**

**Marketing function:** Analytics & Reporting **Trigger / situation:** Middle of the month check-in to ensure the team isn't overspending. **Goal:** Project end-of-month spend based on current run rates. **Langdock feature(s):** Data Analyst **How it works (3-5 sentences):** Uploading current spend data across channels. The AI uses linear extrapolation 5 to predict final Month-End spend. It flags channels pacing \>10% over/under budget, allowing the team to adjust bids. **Sample prompt (German, in quotes):** "Als Budget-Analyst \[Persona\], analysiere die Pacing-Daten der ersten 15 Tage. Prognostiziere den erwarteten End-of-Month-Spend pro Kanal \[Context\]. Liefere eine Warn-Liste mit Kanälen, die ihr Budget voraussichtlich überschreiten \[Format\]." **Expected outcome / artifact:** A budget pacing forecast. **KPIs / measurement:** Zero budget overruns. **Pitfalls:** Linear forecasting fails for campaigns that ramp up at month-end; AI must be informed if spend is back-loaded. **Estimated time saved:** 2 hours/month

## **L. EVENTS & FIELD**

Field marketing generates massive amounts of qualitative, unstructured data—from badge scan notes to booth conversations. Langdock enables event marketers to transform mobile brain-dumps into polished executive summaries instantly via Chat. When combined with Workflows 6 and Data Analyst 5, raw badge scans can be segmented by intent signals, triggering hyper-personalized follow-up sequences in the CRM before the sales team even boards their flight home.

### **S-114 Event Briefing Docs for Sales**

## **Marketing function: Events & Field Trigger / situation: Sponsoring a major industry conference next week. Goal: Provide the sales team with a one-page "Battlecard" of the event. Langdock feature(s): Agents / Web Search How it works (3-5 sentences): An Agent searches the event's official website**

6 for the agenda and competitor sponsors. It synthesizes this into a concise briefing document indicating where the booth is and what the core pitch is. **Sample prompt (German, in quotes):** "Als Field-Marketing-Manager \[Persona\], erstelle ein Event-Briefing für das Sales-Team. Nutze Web Search, um die Keynote-Themen herauszufinden, und richte unsere Strategie darauf aus \[Context\]. Liefere einen strukturierten One-Pager mit Logistik und Zielen \[Format\]." **Expected outcome / artifact:** A 1-page event battlecard for Sales. **KPIs / measurement:** Sales team preparedness; booth leads generated. **Pitfalls:** Web search might pull last year's event data if the URL hasn't changed; specify the current year. **Estimated time saved:** 3 hours/event

### **S-115 Post-Event Recap & ROI Estimate**

## **Marketing function: Events & Field Trigger / situation: The conference ended, and leadership wants an immediate qualitative recap. Goal: Summarize the team's notes, booth traffic, and ROI into a quick update. Langdock feature(s): Chat How it works (3-5 sentences): The field marketer dumps raw, unformatted notes from their phone into Chat. Langdock formats this brain-dump into a polished, executive-ready recap email or Slack message. Sample prompt (German, in quotes): "Als Event-Manager \[Persona\], formatiere meine rohen Notizen in ein professionelles Event-Recap. Hebe die Anzahl der Leads und das Konkurrenz-Update hervor \[Context\]. Liefere eine strukturierte E-Mail mit Bulletpoints und 'Next Steps' \[Format\]." Expected outcome / artifact: An executive event recap. KPIs / measurement: Leadership visibility into field marketing. Pitfalls: Embellishing numbers; the AI must strictly use only the estimates provided in the raw notes. Estimated time saved: 1 hour/event**

### **S-116 Attendee Follow-Up Personalization**

## **Marketing function: Events & Field Trigger / situation: 500 badges were scanned; generic follow-ups won't convert. Goal: Segment leads based on notes and draft tailored follow-ups. Langdock feature(s): Data Analyst / Workflows How it works (3-5 sentences): The raw badge-scan CSV with notes is processed.**

5 The AI segments the list and drafts 3 email variants depending on the notes, passing them to the CRM via Workflow Action.6 **Sample prompt (German, in quotes):** "Als CRM-Texter \[Persona\], werte die CSV der Event-Leads aus und gruppiere sie nach Notizen. Erstelle 3 E-Mail-Varianten: 1\) Preis-Interessierte, 2\) Konkurrenz-Nutzer, 3\) Allgemeines Interesse \[Context\]. Liefere die drei Texte inkl. Betreffzeilen \[Format\]." **Expected outcome / artifact:** Segmented post-event follow-up sequences. **KPIs / measurement:** Meeting booked rate post-event. **Pitfalls:** Messy notes might be miscategorized if the AI isn't instructed to handle fuzzy matching. **Estimated time saved:** 4 hours/event

### **S-117 Speaker Preparation (Bio & Abstract)**

## **Marketing function: Events & Field Trigger / situation: The CEO is invited to speak, needing a bio and session abstract ASAP. Goal: Generate compelling speaker materials tailored to the event audience. Langdock feature(s): Folders / Web Search How it works (3-5 sentences): Referencing the CEO's master bio in a Folder**

4, the Agent searches the event's theme.6 It rewrites the bio to highlight relevant initiatives and drafts a 150-word session abstract promising actionable takeaways. **Sample prompt (German, in quotes):** "Als PR-Manager \[Persona\], passe die CEO-Bio aus dem Ordner an und schreibe einen Vortrags-Abstract. Das Event-Thema ist 'Nachhaltigkeit' \[Context\]. Liefere eine 100-Wörter Bio und einen 150-Wörter Abstract, der Learnings verspricht \[Format\]." **Expected outcome / artifact:** Tailored speaker submission materials. **KPIs / measurement:** Session acceptance; audience attendance. **Pitfalls:** Overpromising in the abstract forces the CEO to build a completely new presentation. **Estimated time saved:** 1.5 hours/event

### **S-118 Breakout Session Topic Ideation**

**Marketing function:** Events & Field **Trigger / situation:** Hosting a user conference and needing 10 breakout session ideas. **Goal:** Brainstorm sessions that balance product education with peer networking. **Langdock feature(s):** Chat / Canvas **How it works (3-5 sentences):** The marketer provides the product modules. In Canvas 5, the AI generates a matrix of session ideas, categorized by user level. It suggests a catchy title, format, and learning objectives for each. **Sample prompt (German, in quotes):** "Als Event-Stratege \[Persona\], entwickle 10 Breakout-Sessions für unsere Nutzerkonferenz. Mische Produkt-Workshops mit Roundtables für verschiedene Erfahrungsstufen \[Context\]. Erstelle im Canvas eine Tabelle mit: Titel, Format, Zielgruppe und Key-Takeaway \[Format\]." **Expected outcome / artifact:** A breakout session agenda matrix. **KPIs / measurement:** Attendee registration numbers per session. **Pitfalls:** Suggesting formats that are too expensive or logistically complex. **Estimated time saved:** 2 hours/conference

## **M. LOCALIZATION**

True marketing localization requires transcreation, not mere translation. Langdock Agents can be equipped with specific contextual guidelines via Folders 4 to adapt US-centric idiomatic phrasing into native DACH B2B tonality. Furthermore, Workflows utilizing Loop Nodes 6 can systematically parse entire databases of website copy, flawlessly adjusting the tone of voice (e.g., from formal "Sie" to informal "Du") while ensuring grammatical integrity across tens of thousands of words.

### **S-119 DE↔EN Content Adaptation (Transcreation)**

## **Marketing function: Localization Trigger / situation: A US-written landing page needs to be published in Germany. Goal: Adapt the text conceptually, not just literally, matching local cultural expectations. Langdock feature(s): Agent How it works (3-5 sentences): The US text uses sports metaphors and aggressive sales phrasing. The Agent translates this into German, replacing baseball metaphors with neutral business idioms, toning down hyperbole to match DACH B2B preferences. Sample prompt (German, in quotes): "Als Lokalisierungs-Experte \[Persona\], adaptiere diesen Text für den deutschen B2B-Markt. Übersetze nicht wörtlich: Ersetze US-Idiome, nutze das 'Sie' und reduziere übertriebenes Marketing-Gewäsch \[Context\]. Liefere einen natürlich klingenden Text \[Format\]." Expected outcome / artifact: A culturally adapted landing page copy. KPIs / measurement: Bounce rate parity between US and DE sites. Pitfalls: Losing the core value proposition in the effort to sound serious. Estimated time saved: 3 hours/page**

### **S-120 Tone-of-Voice Localization (Du vs. Sie)**

## **Marketing function: Localization Trigger / situation: Shifting brand voice from informal "Du" to formal "Sie" on the website. Goal: Systematically rewrite large blocks of text to change pronouns and adjust grammar. Langdock feature(s): Workflows (Loop Node) How it works (3-5 sentences): A Workflow loops through a spreadsheet containing hundreds of website text strings.**

6 The Agent systematically converts every "Du/Dein" to "Sie/Ihr", ensuring verb conjugations are grammatically perfect throughout. **Sample prompt (German, in quotes):** "Als Lektor \[Persona\], schreibe den Text von der 'Du'-Form in die formelle 'Sie'-Form um. Achte auf Großschreibung (Sie/Ihre) und passe Verbformen an, ohne den Sinn zu verändern \[Context\]. Liefere ausschließlich den korrigierten Text \[Format\]." **Expected outcome / artifact:** Formalized website copy at scale. **KPIs / measurement:** Zero grammar errors in deployment. **Pitfalls:** Missing reflexive pronouns (e.g., changing "Dich" to "Sich" correctly). **Estimated time saved:** 20 hours/project

### **S-121 Market-Specific Examples & References**

## **Marketing function: Localization Trigger / situation: A blog post about compliance uses SEC and HIPAA as examples. Goal: Localize the examples to BaFin and DSGVO for the German audience. Langdock feature(s): Web Search / Chat How it works (3-5 sentences): The AI reads the English text, identifies US-centric legal references, and uses Web Search to find exact functional equivalents in the EU.**

6 It rewrites those specific paragraphs to make the content relevant locally. **Sample prompt (German, in quotes):** "Als lokaler Content-Stratege \[Persona\], identifiziere US-spezifische Beispiele im Text und ersetze sie durch europäische Äquivalente. Tausche z.B. IRS gegen Finanzamt, SEC gegen BaFin \[Context\]. Liefere den Text und eine Liste der Ersetzungen \[Format\]." **Expected outcome / artifact:** Locally relevant content. **KPIs / measurement:** Increased engagement from DACH readers. **Pitfalls:** Sometimes there is no direct equivalent; AI must explain the concept generally. **Estimated time saved:** 2 hours/asset

### **S-122 DACH Variant Differences (A/CH/DE)**

## **Marketing function: Localization Trigger / situation: A campaign in Germany needs tweaks for Austria (AT) and Switzerland (CH). Goal: Adjust vocabulary and formatting for regional correctness. Langdock feature(s): Chat / Memory How it works (3-5 sentences): The marketer inputs standard German text. The AI generates two new versions: one for Austria (Austrian business terms) and one for Switzerland (removing the "ß", using "Offerte" instead of "Angebot").**

7 **Sample prompt (German, in quotes):** "Als DACH-Lokalisierer \[Persona\], erstelle aus diesem DE-Text eine österreichische und Schweizer Variante. CH: Ersetze 'ß' durch 'ss'. AT: Nutze österreichische Vokabeln (z.B. Jänner) \[Context\]. Liefere beide Versionen getrennt \[Format\]." **Expected outcome / artifact:** AT and CH specific marketing copy. **KPIs / measurement:** Higher conversion rates in AT/CH markets. **Pitfalls:** Over-indexing on dialect; B2B texts require High German with regional vocabulary tweaks. **Estimated time saved:** 1 hour/asset

### **S-123 Legal Disclaimer Adaptation**

**Marketing function:** Localization **Trigger / situation:** Translating sweepstakes or promotion terms and conditions. **Goal:** Translate the marketing copy while flagging legal terms requiring review. **Langdock feature(s):** Folders (Legal) **How it works (3-5 sentences):** The AI translates the promotional text but cross-references a Legal Folder regarding EU sweepstakes laws.4 It highlights sections that have different legal implications in Germany, adding a warning note. **Sample prompt (German, in quotes):** "Als Übersetzer \[Persona\], übersetze diese Gewinnspiel-AGB ins Deutsche. Markiere alle Klauseln fett, die sich auf Teilnahmebedingungen beziehen, da diese lokal rechtlich geprüft werden müssen \[Context\]. Liefere den Text inkl. Warnhinweisen \[Format\]." **Expected outcome / artifact:** Translated T\&Cs with legal flags. **KPIs / measurement:** Faster legal review cycles. **Pitfalls:** Relying on the AI for legal compliance; it is only a flagging tool. **Estimated time saved:** 2 hours/campaign

## **N. INTERNAL ENABLEMENT**

Marketing’s role extends inward to sales and internal communications. Langdock centralizes corporate knowledge, allowing marketing to rapidly spin up Battlecards, FAQs, and Pitch Decks that empower the revenue teams. By leveraging Folders 4 to store product specifications and Canvas 5 to format outputs directly into presentation-ready outlines, the marketing enablement function operates at unprecedented speed.

### **S-124 Sales Enablement Decks**

## **Marketing function: Internal Enablement Trigger / situation: A new product feature is launching, and sales needs a 5-slide pitch deck. Goal: Distill technical release notes into a customer-facing, value-driven slide outline. Langdock feature(s): Folders / Canvas How it works (3-5 sentences): Technical specs are uploaded. Referencing the Sales Methodology Folder**

4, the AI drafts a 5-slide narrative in Canvas 5: Problem, Old Way, New Way, ROI, Next Steps. **Sample prompt (German, in quotes):** "Als Sales-Enablement-Manager \[Persona\], wandle Release-Notes in ein 5-Slide-Pitch-Deck um. Fokussiere auf geschäftlichen Nutzen statt auf technische Details \[Context\]. Liefere für jede Slide den Titel, 3 Bulletpoints und Sprechernotizen \[Format\]." **Expected outcome / artifact:** A structured slide deck outline. **KPIs / measurement:** Sales adoption of the new pitch. **Pitfalls:** Including too much technical jargon on the slides; limit word counts. **Estimated time saved:** 4 hours/launch

### **S-125 FAQ Generation for Sales Teams**

## **Marketing function: Internal Enablement Trigger / situation: Sales reps keep asking questions about a competitor's new feature. Goal: Generate a comprehensive FAQ document comparing the brand to the competitor. Langdock feature(s): Agent / Web Search How it works (3-5 sentences): An Agent uses Web Search**

6 to find out how the competitor's feature works. It generates an FAQ for the sales team, anticipating objections and providing brand-approved answers. **Sample prompt (German, in quotes):** "Als Product-Marketing-Experte \[Persona\], erstelle ein FAQ für unser Sales-Team zum Feature von {Competitor}. Antizipiere die 5 häufigsten Kundenfragen und formuliere überzeugende Antworten \[Context\]. Liefere das Dokument im Frage-Antwort-Format \[Format\]." **Expected outcome / artifact:** A competitive FAQ document. **KPIs / measurement:** Win rate in competitive deals. **Pitfalls:** Creating defensive answers; the tone should be objective but guiding. **Estimated time saved:** 2 hours/document

### **S-126 Training Materials for New Features**

## **Marketing function: Internal Enablement Trigger / situation: Customer Success Managers need to learn a complex new dashboard. Goal: Generate step-by-step training guides from a recorded demo. Langdock feature(s): Chat / File Attachment How it works (3-5 sentences): A transcript of an internal demo is uploaded. The AI extracts the exact UI clicks and generates a structured training manual with placeholders for screenshots. Sample prompt (German, in quotes): "Als technischer Redakteur \[Persona\], erstelle eine Anleitung aus dem Demo-Transkript. Strukturiere den Prozess logisch und füge Platzhalter ein \[Context\]. Liefere ein klares Handbuch \[Format\]." Expected outcome / artifact: A step-by-step internal training manual. KPIs / measurement: Decreased support escalation from CSMs. Pitfalls: Missing steps if the demonstrator said "and then you just do this..." without describing the action. Estimated time saved: 3 hours/feature**

### **S-127 Internal Comms Summaries (All-Hands)**

## **Marketing function: Internal Enablement Trigger / situation: A company All-Hands meeting was held, and not everyone attended. Goal: Provide a concise, segmented summary of the meeting for different departments. Langdock feature(s): Data Analyst / Workflows How it works (3-5 sentences): The Zoom transcript is uploaded.**

5 The AI summarizes the key announcements. A Workflow routes tailored summaries via Slack 6—Sales gets roadmap highlights, HR gets culture updates. **Sample prompt (German, in quotes):** "Als Internal-Comms-Manager \[Persona\], fasse das Transkript des Meetings zusammen. Erstelle eine allgemeine Summary und spezifische Absätze für Sales, Tech und Marketing \[Context\]. Liefere ein strukturiertes Slack-Update \[Format\]." **Expected outcome / artifact:** Department-tailored meeting recaps. **KPIs / measurement:** Internal open/read rates. **Pitfalls:** Hallucinating policy changes from offhand remarks; highlight formal announcements only. **Estimated time saved:** 2 hours/meeting

### **S-128 Competitor Battlecards**

**Marketing function:** Internal Enablement **Trigger / situation:** A new startup is stealing market share. **Goal:** Create a 1-page tactical battlecard for Sales to use on live calls. **Langdock feature(s):** Agents / Folders / Canvas **How it works (3-5 sentences):** An Agent pulls data from the Competitive Intelligence Folder.4 It populates a standardized battlecard template in Canvas 5 (Company Info, Key Weaknesses, "How to Win"). The marketer refines the tactics collaboratively. **Sample prompt (German, in quotes):** "Als Sales-Enablement-Direktor \[Persona\], erstelle eine Battlecard gegen {Startup\_Name}. Nutze die Daten im Ordner, um ihre Schwächen und unsere Stärken herauszuarbeiten \[Context\]. Erstelle ein übersichtliches Dokument mit 'Landminen' für den Vertrieb \[Format\]." **Expected outcome / artifact:** A tactical sales battlecard. **KPIs / measurement:** Competitive win rate against specific startup. **Pitfalls:** Cluttering the document with too much text; Sales needs bullet points they can read on a call. **Estimated time saved:** 4 hours/competitor

## **TOP 20 QUICK WINS: High-Impact Scenarios for New Users**

For a Marketing Director newly implementing Langdock, these 20 scenarios offer the highest return on investment with the lowest setup friction. They drive immediate value and user adoption without requiring complex API configurations, exploiting Langdock's core out-of-the-box features like Folders 4, Canvas 5, and Data Analyst.5

| Rank | Scenario ID & Title | Function | Why it's a Quick Win (Langdock Strengths) |
| :---- | :---- | :---- | :---- |
| 1 | **S-003 Blog Post Drafting via Canvas** | Content | Immediate productivity boost; intuitive split-screen UI for collaborative editing.5 |
| 2 | **S-099 Internal Knowledge Base** | Ops | Connecting Folders 4 to an Agent stops repetitive Slack pings instantly. |
| 3 | **S-026 Google Ads Copy Variants** | Performance | High-volume text generation perfectly suited for Prompt Library variables.9 |
| 4 | **S-048 Community Management Replies** | Social | Combines Folders with Chat for instant, safe external communications. |
| 5 | **S-104 Weekly Performance Summary** | Analytics | Uses Data Analyst 5 to automate a universally dreaded Monday reporting task. |
| 6 | **S-058 Email Subject Line Testing** | CRM | Requires zero integration; instant metric improvement via localized A/B testing. |
| 7 | **S-038 Brand Voice Guidelines** | Brand | Reverse-engineering via Folders 4 creates foundational value for all future AI tasks. |
| 8 | **S-084 Customer Interview Synthesis** | Research | Saves hours of manual transcript reading; highlights vector search efficiency. |
| 9 | **S-021 Competitive SERP Analysis** | SEO | Uses Web Search 6 to provide strategic data that usually requires expensive external tools. |
| 10 | **S-115 Post-Event Recap** | Events | Perfect use of unstructured-to-structured text formatting via standard Chat. |
| 11 | **S-046 Social Media Calendar** | Social | Introduces basic Workflows (Google Sheets Action) 6 without needing coding. |
| 12 | **S-069 Personalized Outreach Drafts** | ABM | Empowers sales immediately; demonstrates cross-departmental AI value. |
| 13 | **S-119 DE↔EN Content Adaptation** | Localization | Saves immediate external agency translation costs through sophisticated transcreation. |
| 14 | **S-076 Press Release Drafting** | PR | Standardized formatting requirements are where enterprise LLMs excel effortlessly. |
| 15 | **S-001 Editorial Calendar Planning** | Content | Great showcase of Canvas 5 for collaborative team brainstorming. |
| 16 | **S-018 Meta Description Generation** | SEO | Bulk generation via Workflows 6 demonstrates massive time savings at scale. |
| 17 | **S-085 Survey Open-Text Analysis** | Research | Data Analyst 5 turns qualitative mess into quantitative charts in minutes. |
| 18 | **S-064 Post-Purchase Upsell** | CRM | Direct revenue impact generated from a highly contextual 5-minute chat session. |
| 19 | **S-128 Competitor Battlecards** | Enablement | High visibility with the Sales team, building enterprise-wide trust in marketing operations. |
| 20 | **S-094 Campaign Brief Intake Form** | Ops | Uses Form Triggers 6 to enforce process and organization instantly. |

## **Langdock Feature Usage Matrix**

This matrix maps the core Langdock enterprise features to the marketing functions that rely on them most heavily, demonstrating the platform's versatile interoperability.1 Note that the platform's GDPR compliance, EU hosting 3, and strict access controls are universal foundational features that enable all the below scenarios to be executed securely on enterprise data without model training leakage.2

| Marketing Function | Agents | Workflows | Folders (RAG) | Data Analyst | Canvas | Integrations | Web Search |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **A. Content** | High | Med | **High** | Low | **High** | Med | Low |
| **B. SEO** | Med | **High** | Med | Low | Low | **High** | **High** |
| **C. Performance** | High | Low | Low | **High** | Med | Low | Med |
| **D. Brand** | **High** | Low | **High** | Low | **High** | Low | Low |
| **E. Social Media** | Med | **High** | Med | Low | Low | **High** | Med |
| **F. CRM / Lifecycle** | Med | **High** | Med | Med | Med | **High** | Low |
| **G. ABM** | **High** | Med | Med | Low | Med | Med | **High** |
| **H. PR & Comms** | Med | Low | **High** | Low | **High** | Low | **High** |
| **I. Research** | High | Low | **High** | **High** | Low | Low | Med |
| **J. Marketing Ops** | Med | **High** | Med | Low | Low | **High** | Low |
| **K. Analytics** | Low | Med | Low | **High** | Low | Med | Low |
| **L. Events** | Med | Low | Med | Med | Low | Low | High |
| **M. Localization** | **High** | High | Med | Low | Low | Low | Low |
| **N. Enablement** | Med | Low | **High** | Low | **High** | Low | Med |

#### **Referenzen**

1. Enterprise AI Platform | Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/enterprise](https://langdock.com/enterprise)  
2. AI Security & Compliance \- Langdock, Zugriff am Mai 31, 2026, [https://langdock.com/security](https://langdock.com/security)  
3. Langdock | The Platform for AI Adoption, Zugriff am Mai 31, 2026, [https://langdock.com/](https://langdock.com/)  
4. Folders \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/library/folders](https://docs.langdock.com/product/library/folders)  
5. Langdock Cheat Sheet \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/resources/cheat-sheet](https://docs.langdock.com/resources/cheat-sheet)  
6. Integration Trigger \- Docs, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/nodes/integration-trigger](https://docs.langdock.com/product/workflows/nodes/integration-trigger)  
7. Workspace Settings \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/settings/workspace](https://docs.langdock.com/settings/workspace)  
8. HTTP Request \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/product/workflows/nodes/http-request-node](https://docs.langdock.com/product/workflows/nodes/http-request-node)  
9. Tips and tricks for your internal channels \- Docs \- Langdock, Zugriff am Mai 31, 2026, [https://docs.langdock.com/administration/tips-and-tricks-internal](https://docs.langdock.com/administration/tips-and-tricks-internal)