<h1 align="center">Knowledge Agent Framework</h1>

<p align="center">
  <strong>Build RAG-backed knowledge advisor agents — research-grounded, schema-validated, deploy-ready.</strong>
</p>

---

## What this is

A framework and production line for building **knowledge advisor agents**: take a client's
domain (research source files), turn it into a strict-schema, **source-grounded** knowledge
base plus a **persona-via-knowledge** system prompt, validate it against hard gates, and ship
a deployable package.

It is opinionated about the things that make such agents trustworthy:
- **Source-grounding** — every scenario cites a real source; no invented limits, prices, or features.
- **A validated schema** — four file kinds (content / persona / anweisung / glossar), each machine-checked.
- **Best-fit solution types** — every scenario's payload is the genuinely-best deliverable (the 9-type system: Prompt, API, MCP, Skill, Code, Workflow, Config, Decision, Guide), plus a hand-crafted `Empfehlung:` recommendation.
- **Invisible critical-thinking scaffolding** — M01–M13 methods shape authoring and review, but never appear in output.
- **Persona-via-knowledge** — the agent's voice lives in retrievable knowledge, loaded by a forced first search.
- **Emoji-free, ≤5-step, human-in-the-loop on side-effects** — discipline the output stays inside.

## How to build one

The end-to-end workflow is in **[`CLAUDE.md`](./CLAUDE.md)** — the build playbook:

```
sources → research prompts → extracts → schema-validated knowledge
        → persona + system prompt → validate → package → release → maintain
```

Start a new agent as `examples/<client-name>/`, copy the blanks from `templates/`, run the
validators in `tools/`, and follow the disciplines in `CLAUDE.md`.

## Repository layout

| Path | What |
|---|---|
| `CLAUDE.md` | the build playbook (start here) |
| `templates/` | blanks: knowledge-file skeleton, AGENT_PROMPT skeleton, research-prompt template |
| `tools/` | the validator suite (`check_schema`, `check_grounding`, `check_chunks`, `check_coherence`, `check_prompt_size`, `kb_index`, `format_marker_spacing`, …) |
| `docs/` | framework methodology: authoring spec, build plans, the meta-playbook (`building-knowledge-agents.md`), release notes |
| `docs/superpowers/` | the build work-record: revision plans, the authoring rulebook + 9-type solution-chunk catalog, kb-index, review findings, per-file rules |
| `examples/iw-little-data/` | the full reference build (Institut der deutschen Wirtschaft) |
| `.github/workflows/release.yml` | release CI — per-example `<name>.zip` plus the `knowledge-agent-framework.zip` bundle (docs, work-artefacts, templates, validators) |

## Quickstart (validate the reference build)

```bash
cd examples/iw-little-data
bash tools/check_schema.sh    --all   # every knowledge file passes for its kind
bash tools/check_grounding.sh --all   # every Trigger cites a real source
bash tools/check_chunks.sh    --all   # every scenario block in [600, 4096] bytes
bash tools/check_prompt_size.sh       # the system prompt is within budget
```

The same validators live at the repo-root `tools/` for framework use; run them from inside
an example, or set `KNOWLEDGE_DIR=examples/<name>/langdock-deploy/knowledge`.

## The reference example

`examples/iw-little-data/` is a complete, deployed knowledge agent — **"Little Data"**, a
German-language Langdock advisor for the Institut der deutschen Wirtschaft: 20 knowledge files
(1,106 source-grounded scenarios across content, persona, anweisung, and glossar kinds), a
calibrated system prompt, and a packaged v1.0-Beta release. It is the worked proof of every
step in `CLAUDE.md`.

## License

© 2026 Michael Schimmer / Netzkontrast — see [`LICENSE`](./LICENSE). Each example may carry its
own license inside its folder (the IW example is licensed separately to its licensee).
