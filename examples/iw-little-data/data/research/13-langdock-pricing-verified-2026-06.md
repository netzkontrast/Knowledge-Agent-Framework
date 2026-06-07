# Verified Source — Langdock Pricing & Models (Stand Juni 2026)

**Verifiziert am:** 2026-06-01 gegen die primären Quellen.
**Primärquellen:**
- https://langdock.com/pricing (Seat-Tarife, Workflow-Pakete, Modell-Auszug)
- https://langdock.com/models (vollständige Modell-Token-Preise)
- https://docs.langdock.com/administration/pricing (Preis-Modell-Beschreibung)

> Diese Datei ersetzt die veralteten "Multiplikator"-Annahmen in `07-modelle-und-kosten`.
> Langdock veröffentlicht **direkte EUR/1M-Token-Preise** (API-Produkt); **keine
> per-Modell-Credit-Multiplikatoren** mehr. Chat-/Agenten-Seats mit inkludierten
> Modellen haben **keine nutzungsbasierte Kostenkomponente**. Preise sind volatil —
> bei jeder Wartung gegen langdock.com/models gegenprüfen.

## Seat-Tarife (Chat & Agents)

| Tarif | Preis | Hinweis |
|---|---|---|
| Trial | kostenlos, 7 Tage | enthält €5 AI-Model-Credits |
| Standard (Business) | **€25 / Nutzer / Monat** | "Recommended"; bis 1.000 Nutzer; alle Plattform-Features |
| Max (Business Max) | **€99 / Nutzer / Monat** | "5x more usage than Standard seat" |
| Enterprise | auf Anfrage | für Organisationen mit 1.000+ Nutzern; SSO/BYOK/EU-Hosting/Audit-Logs |

Seat-Preise sinken mit Teamgröße (Staffel-Rabatte; höchste Stufe ab 551+ Seats);
jährliche Abrechnung = zusätzlich 20 % Rabatt.

## Workflow-Pakete (Workspace-Add-on)

| Paket | Preis | Runs/Monat |
|---|---|---|
| Starter | inkludiert | 2.500 |
| Business | **€539 / Workspace / Monat** | 40.000 |
| (höhere Stufe) | **€1.199 / Workspace / Monat** | 100.000 |

"Unlimited steps per workflow" (mit Fair-Usage-Hinweis). (Ältere Drittquellen
nennen €449/40.000 — überholt; langdock.com/pricing = €539.)

## Modell-Token-Preise (EUR pro 1M Tokens, Input / Output)

Quelle: langdock.com/models + langdock.com/pricing (Auszug), Stand Juni 2026.

| Modell | Input €/1M | Output €/1M |
|---|---|---|
| GPT-5.5 | 4,72 | 28,35 |
| GPT-5.4 | 2,36 | 14,17 |
| GPT-5.2 | 1,50 | 12,03 |
| GPT-5 Mini | 0,21 | 1,72 |
| Opus 4.8 | 4,30 | 21,48 |
| Sonnet 4.6 | 2,58 | 12,89 |
| Haiku 4.5 | 0,86 | 4,30 |
| Gemini 3.1 Pro Preview | 2,15 | 12,89 |
| Gemini 3 Flash Preview | 0,43 | 2,58 |
| Gemini 2.5 Flash | 0,26 | 2,15 |
| Llama 4 Maverick | 0,19 | 0,74 |
| GPT oss (120b) | 0,26 | 2,15 |
| Mistral Large 3 | 0,43 | 1,29 |
| DeepSeek v3.1 | 0,85 | 3,38 |

### Korrekturen gegenüber dem alten Stand in Datei 07

- Opus 4.8 Input = **€4,30** (alt fälschlich €14,00).
- Sonnet 4.6 Input = **€2,58** (alt fälschlich €2,75).
- GPT-5.2 Input = **€1,50** (alt fälschlich €0,26 — €0,26 ist Gemini 2.5 Flash).
- Gemini 2.5 Flash Input = **€0,26** (alt fälschlich €0,23).
- Haiku 4.5 Input = **€0,86** (eigenes Modell, nicht mit Flash gleichsetzen).
- Die Spalte "Multiplikator" (0,3x … 24,0x) ist **nicht belegt** und entfällt.
  Relative Kosten ergeben sich direkt aus den EUR-Preisen; als Tier-Sprache
  nutzbar (Light / Efficient Default / Balanced / Strong Generalist / Frontier).

## Budget-Governance (unverändert belegt)

- Workspace-Limit Standard **€500 / Monat** (deckelt Gesamtausgaben; pausiert bei Erreichen).
- Workflow-Budget-Guard: konfigurierbares Limit pro Workflow-Lauf (Standard-Wert
  als per-Lauf-Deckel behandeln; "pro Monat" war ein Einheitsfehler in 07).
- Warn-Schwellen 50 / 75 / 90 %.
