# Spec-Panel Critique — Knowledge Agent Framework Restructure

> Panel review of `2026-06-01-knowledge-agent-framework-restructure-design.md`.
> Five lenses. Severity: 🔴 blocking · 🟠 should-resolve · 🟡 nice-to-have.

## Lens 1 — Framework Architect

- 🟠 **"Framework" with no scaffold.** The plan ships docs + validators + one example, but no *starting kit*. A user cloning this to build a new client agent has nothing to start *from* — they must reverse-engineer the example. A `templates/` dir (blank knowledge-file skeleton with the 9 fields, an `AGENT_PROMPT` skeleton with the init protocol, a research-prompt template) would make the "framework" claim real and is cheap to extract from the IW build.
- 🟡 **Tool duplication (root + example).** Acceptable, but name the canonical source explicitly and add a one-line note in the example's tools/ README that root `tools/` is authoritative, to prevent silent drift.

## Lens 2 — Developer Experience / Docs

- 🟠 **Capture the hard-won disciplines, not just the happy path.** `methodology.md` must encode what actually made this work: source-grounding as a hard gate, M01–M13 as *invisible* scaffolding, emoji-free output, ≤5 steps, HITL on side-effects, canon-voice grounding, parallel-subagent authoring under a strict validated schema. Without these, the framework loses its real value.
- 🟡 **README needs an explicit "who is this for" + 5-step quickstart.** Already implied; make it concrete (clone → write research prompts → author files → `tools/check_schema.sh --all` → package).

## Lens 3 — Release / CI Engineer

- 🟠 **Relocating the workflow out of root `.github/workflows/` is a functional regression**, not just a re-org — the example can no longer be released by CI. The spec documents re-activation, which is honest, but a cleaner option exists: keep a single root workflow that is **manually triggered (`workflow_dispatch`) and path-scoped to `examples/iw-little-data/`**. That keeps it "example-only" in spirit *and* runnable. Decision needed: de-activate (pure reference) vs. manual-dispatch (runnable, scoped).

## Lens 4 — Migration Safety

- 🟠 **Root `LICENSE` provenance.** The spec keeps it "as-is," but it is almost certainly the original soul.md project license and may name the original authors. Shipping a renamed framework under a misattributed copyright is a real issue — verify its contents; update the holder or replace it before the rename lands.
- 🟡 **Archive tag before deletion.** Good safety net — make it a required step, not optional: tag `pre-knowledge-agent-framework` (or a branch) so the soul.md material is trivially recoverable.
- 🟡 **Post-move validation gate.** Run root `tools/check_schema.sh --all` against `examples/iw-little-data/langdock-deploy/knowledge/` after the move; confirm the validators work from their new location with relative/arg paths. (Already in acceptance criteria — keep it as an explicit gate.)

## Lens 5 — Naming / Identity

- 🟡 **Residual "soul.md" / "little-data" strings.** Leaving internal historical references is pragmatic for a lean pass, but the repo will still contain many old-name strings (esp. obsolete `jules-*` tooling and old specs). Acceptable now; note a follow-up "string sweep" as optional debt. Consider deleting the obsolete `jules-*` tooling outright since Jules was removed from the plan earlier.

## Net verdict

The design is sound and approvable. Three findings warrant a user decision before implementation:
1. **Add a `templates/` scaffold?** (strengthens the "framework" claim) — Architect 🟠
2. **Release CI: pure reference vs. manual-dispatch root workflow?** — CI 🟠
3. **Root `LICENSE`: verify/replace ownership before rename.** — Migration 🟠

Lower-severity items (capture disciplines in methodology.md, archive tag as required, canonical-tools note, optional jules-* deletion, string-sweep debt) will be folded into implementation without needing a decision.
