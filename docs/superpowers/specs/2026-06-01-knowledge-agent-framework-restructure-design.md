# Knowledge Agent Framework — Repo Restructure & Rename (Design Spec)

> **Status:** design — awaiting spec-panel review + user approval before implementation.
> **Date:** 2026-06-01
> **Branch:** `claude/soul-md-pr-research-knowledge-H2LMI`
> **Supersedes:** the `SOUL.MD` persona-framework identity of this repo.

---

## 1. Goal & rationale

The repo currently presents as **SOUL.MD** — "build a personality for your agent from your tweets." The actual, durable work produced here is something larger and more reusable: a **production line for RAG-backed knowledge advisor agents** (research → source-grounded knowledge files under a strict validated schema → persona-via-knowledge bootstrap → deployable package + release CI), proven by the IW "Little Data" build.

This restructure renames the repo to **Knowledge Agent Framework**, removes the soul.md branding/templates/persona examples, **keeps the persona capability** (generalized, not as soul.md templates), promotes the reusable tooling to the top level, and relocates the IW build to `examples/iw-little-data/` as the canonical worked example.

## 2. Target structure

```
/  (Knowledge Agent Framework)
├── README.md                  NEW — lean framework overview + the workflow; links to the example
├── LICENSE                    framework license (see §7a — ownership decision pending)
├── .gitignore                 KEPT (adjust paths)
├── .github/
│   └── workflows/
│       └── release.yml        GENERIC release CI — zips every examples/<name>/ as <name>.zip
├── tools/                     NEW — generic validators promoted from the build (reusable across clients)
│   ├── check_schema.sh
│   ├── check_prompt_size.sh
│   ├── check_prompt_tokens.py
│   ├── check_coverage.sh
│   ├── check_overlap.py
│   ├── check_upload_ready.sh
│   └── check_phase4.sh
├── docs/                      REFRAMED + FLATTENED — the "superpowers/" wrapper is removed
│   ├── framework/             NEW — distilled, reusable methodology
│   │   ├── methodology.md          the pipeline, end to end
│   │   ├── knowledge-schema.md     9-field scenario schema + 4 file-kinds
│   │   └── persona-module.md       persona-via-knowledge bootstrap (replaces soul.md)
│   ├── knowledge-file-authoring-spec.md   reframed from docs/superpowers/specs/ (client-agnostic)
│   ├── knowledge-build-plan.md            reframed from docs/superpowers/plans/
│   ├── knowledge-build-plan-design.md     reframed from docs/superpowers/specs/
│   └── examples/
│       ├── iw-little-data-agent-design.md          reframed (IW-specific design)
│       └── iw-little-data-agent-design-critique.md reframed (IW-specific panel critique)
└── examples/
    └── iw-little-data/        MOVED — the entire current little-data/, contents unchanged
        ├── README.md
        ├── langdock-deploy/   (knowledge/ + AGENT_PROMPT.md + LICENSE + CONVERSATION_STARTERS …)
        ├── tools/             (the example keeps its own copy, incl. legacy jules-* tooling)
        ├── data/              (sources, research, extracts, reviews — the build inputs/provenance)
        └── dist/              (built release artifacts)
```

## 3. Delete list (soul.md branding/templates/examples)

| Path | Reason |
|---|---|
| `SOUL.template.md`, `STYLE.template.md` | soul.md persona templates — replaced by `docs/framework/persona-module.md` |
| `SKILL.md`, `BUILD.md` | soul.md framework process docs — replaced by `docs/framework/methodology.md` |
| `MEMORY.md` | soul.md framework artifact — not used by the knowledge-agent framework |
| `README.md` (root) | soul.md branding — replaced by the new framework README |
| `img/` (`soul*.jpg` ×5) | soul.md marketing images |
| `examples/_GUIDE.md`, `examples/{garry-tan,karpathy,steipete,vivian-balakrishnan}/` | soul.md persona examples — superseded by `examples/iw-little-data/` |
| `data/` (`_GUIDE.md`) | soul.md "dump your data here" guide |
| `journals/` | empty soul.md artifact |

**Preservation note:** deletions are recoverable from git history; the persona *capability* is retained (Section 4). No content from the IW build is deleted.

## 4. Persona capability — kept, generalized

The soul.md *templates* are removed, but the *pattern* — storing an agent's persona in retrievable knowledge and loading it via a forced first-search bootstrap — is one of the framework's strongest features. It is preserved two ways:
1. **Documented** as `docs/framework/persona-module.md` (the SCHRITT-1/2/3 bootstrap, anchor strings, persona-core / relationship-mode / per-topic-directive file roles, voice-via-canon-research discipline).
2. **Implemented live** in the IW example (`11-persona-core`, `12-persona-julia-modus`, `13-data-agent-anweisungen` + the `AGENT_PROMPT.md` init protocol).

## 5. Move plan (history-preserving)

- Use `git mv` for `little-data/` → `examples/iw-little-data/` so history is preserved.
- Promote validators: `git mv` (or copy) the seven `check_*` tools from `examples/iw-little-data/tools/` to root `tools/`. The example retains its own copies (per decision: example stays runnable as-is); root `tools/` is the framework-level reusable set. Legacy `jules-*` tooling stays only in the example.
- **Generalize the release CI (stays at root `.github/workflows/`).** Rename `release-little-data.yml` → `release.yml` and rewrite it to be example-driven: on tag/dispatch, iterate every `examples/<name>/` directory and produce one zip per example named `<name>.zip` (e.g. `examples/iw-little-data/` → `iw-little-data.zip`). Each example declares what goes into its zip (default: the example's release contents; for IW that is the lean `langdock-deploy` package + provenance + LICENSE per the v1.0 design). This makes "release every agent" a framework feature, not client-specific.

**Docs reframe + flatten:** remove the `docs/superpowers/` wrapper; move its contents up into the root `docs/` folder and **reframe** each from soul.md/superpowers/little-data framing to **Knowledge Agent Framework** framing:
- `superpowers/specs/2026-05-31-knowledge-file-authoring-spec.md` → `docs/knowledge-file-authoring-spec.md` (made client-agnostic)
- `superpowers/plans/2026-05-31-knowledge-build-plan.md` → `docs/knowledge-build-plan.md` (reframed)
- `superpowers/specs/2026-05-31-knowledge-build-plan-design.md` → `docs/knowledge-build-plan-design.md` (reframed)
- `superpowers/specs/2026-05-31-little-data-agent-design.md` → `docs/examples/iw-little-data-agent-design.md` (reframed as the IW example's design)
- `superpowers/specs/2026-05-31-little-data-agent-design-PANEL-CRITIQUE.md` → `docs/examples/iw-little-data-agent-design-critique.md`
- this restructure spec + its panel critique → `docs/` (this is the framework's own restructure record)
Reframing scope: titles, intros, and "soul.md/superpowers/little-data" identity strings updated; date-stamped historical content preserved.

**Reference-update checklist** (paths that change from `little-data/…` → `examples/iw-little-data/…`):
- the relocated release workflow's internal paths
- root `README.md` links (new file — write correct paths from the start)
- `.gitignore` entries referencing `little-data/dist`
- cross-links inside `docs/superpowers/*` that point at `little-data/…` (update the functional ones; historical references may remain and are cosmetic)

## 6. New framework files (to write)

1. **`README.md`** (root, lean): one-paragraph definition; the pipeline diagram (research → author → validate → persona → package → deploy/maintain); the 4 file-kinds at a glance; "run the validators" quickstart; a pointer to `examples/iw-little-data/` as the full worked example; the framework license note; rename/branding.
2. **`docs/framework/methodology.md`**: the end-to-end workflow with each phase's inputs/outputs/gates, derived from the IW build (Gemini research prompts → extracts → source-grounded files → `check_schema` gates → persona bootstrap → release packaging). Client-agnostic.
3. **`docs/framework/knowledge-schema.md`**: the mandatory 9-field scenario schema; the file-kind taxonomy (content / persona / anweisung / glossar) and what each validates; the source-grounding, emoji-free, ≤5-step, HITL, and "M01–M13 as invisible scaffolding" rules.
4. **`docs/framework/persona-module.md`**: the persona-via-knowledge bootstrap (per Section 4).

## 7. Rename plan

- **Content/branding:** replace "SOUL.MD"/"soul.md" identity in the new root files with "Knowledge Agent Framework". Internal historical references inside the example and old specs are left as-is (cosmetic) to avoid churn.
- **GitHub repo rename (manual — user action required, I cannot change repo settings):**
  1. GitHub → repo **Settings → General → Rename** `soul.md` → `knowledge-agent-framework`.
  2. Update local remote: `git remote set-url origin <new-url>`.
  3. GitHub auto-redirects the old slug, but update any external links/badges.
- The working directory path `/home/user/soul.md` is environment-controlled and does not need to change for the rename to take effect.

## 7a. Root LICENSE — ownership (decision pending)

The current root `LICENSE` is **MIT, Copyright (c) 2026 Aaron Mars** — the original soul.md author. Since the restructure **deletes all soul.md code** and renames the project, that notice will no longer cover any remaining content. Options (user decision in §11):
- (a) Replace with a fresh license owned by **Michael Schimmer / Netzkontrast** (MIT or other) for the framework. The IW example keeps its own proprietary LICENSE inside `examples/iw-little-data/`.
- (b) Keep MIT but update the copyright holder to Michael Schimmer / Netzkontrast.
- (c) Keep as-is (only correct if any soul.md-derived material is retained — not the case here).

## 8. Risks & rollback

| Risk | Mitigation |
|---|---|
| Moving `little-data/` breaks path references (workflow, docs) | `git mv` preserves history; run the reference-update checklist (§5); validate after with `check_schema.sh --all` from the new location |
| Deactivated release CI surprises a future release | Document re-activation clearly in the framework README and the relocated workflow header |
| Deleting soul.md content the user still wants | All deletions recoverable from git history; offer an `archive` git tag before deletion as a safety net |
| Tool duplication (root + example) drifts | Note in framework README that root `tools/` is canonical; example copies are pinned for self-containment |
| Repo-rename link breakage | GitHub auto-redirects old slug; checklist covers remote + external links |

## 9. Acceptance criteria

- Root presents as **Knowledge Agent Framework**: new lean `README.md`, no soul.md branding files remain at root.
- `examples/iw-little-data/` contains the full IW build; `check_schema.sh --all` runs green from there.
- Root `tools/` holds the seven reusable validators; they run against the example's knowledge files.
- `docs/framework/{methodology,knowledge-schema,persona-module}.md` exist, are lean, and are client-agnostic.
- Persona capability documented (framework) and intact (example).
- Generic `release.yml` at root `.github/workflows/` zips every `examples/<name>/` as `<name>.zip`; verified to produce `iw-little-data.zip`.
- `docs/superpowers/` flattened into root `docs/` and reframed to Knowledge Agent Framework framing.
- Root `LICENSE` ownership resolved per §7a.
- Manual GitHub-rename steps delivered to the user.
- One clean commit set; history preserved via `git mv`.

## 11. Open decisions (user)

1. **`templates/` scaffold?** Add a `templates/` with a blank knowledge-file skeleton, an `AGENT_PROMPT` skeleton, and a research-prompt template (panel 🟠 — strengthens the "framework" claim). Yes / No.
2. **Root LICENSE ownership** (§7a): replace with fresh license owned by Michael Schimmer / Netzkontrast (a), update holder only (b), or other.

*(Release-CI mode resolved: generic root `release.yml`, zips every example as `<name>.zip`.)*

## 10. Out of scope (this restructure)

- Building IW files 14/16/17 (await Gemini research).
- Re-licensing the framework (root `LICENSE` kept as-is for now).
- Rewriting the example's internal contents ("keep little-data as is").
