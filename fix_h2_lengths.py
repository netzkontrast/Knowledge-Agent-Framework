with open("little-data/langdock-deploy/knowledge/06-api-und-deployment.md", "r") as f:
    text = f.read()

old_scen = "Dabei wird bewusst die Advisory-Grenze von Little Data respektiert: Die Szenarien zielen auf die Erstellung von Planungsartefakten (Entscheidungsmatrizen, Architektur-Drafts, IT-Briefings im Canvas-Format) ab, nicht auf die direkte Ausführung von Code. Die exemplarischen Prompts nutzen die Langdock-Fähigkeiten (Web Search, Data Analyst, Document Editor), um diese Blaupausen zu generieren. Durch die Beachtung von Fallstricken – wie der unabsichtlichen Verletzung von CORS-Richtlinien oder der Missachtung von Egress-IP-Restriktionen – stellen die Szenarien sicher, dass die resultierenden Konzepte realitätsnah und Enterprise-Ready sind."
new_scen = "Dabei wird die Advisory-Grenze von Little Data respektiert: Die Szenarien zielen auf die Erstellung von Planungsartefakten ab, nicht auf die Ausführung von Code. Durch Beachtung von Fallstricken – wie der Verletzung von CORS-Richtlinien oder Missachtung von Egress-IP-Restriktionen – stellen die Szenarien sicher, dass Konzepte Enterprise-Ready sind."
text = text.replace(old_scen, new_scen)

with open("little-data/langdock-deploy/knowledge/06-api-und-deployment.md", "w") as f:
    f.write(text)
