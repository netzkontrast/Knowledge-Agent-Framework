# Knowledge Agent Framework v2.0 — Implementation Plan & Roadmap

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a behavioral validation layer (an offline RAG simulator + run-book) and a self-improving "maxbuild" architecture to the Little Data knowledge agent, on top of the validated v1.0 content base.

**Architecture:** v2.0 has two independent subsystems. **Part A (RAG simulator)** is concretely implementable now: a small, dependency-light Python package under `tools/rag_sim/` that embeds the knowledge base with an open-source model, models Langdock's per-document retrieval cap, runs a versioned golden-question set, and emits a structured routing-quality report. **Part B (maxbuild)** is research-blocked: it consumes the Gemini Deep Research report commissioned by `examples/iw-little-data/GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md`, then authors W/M/S/A target-state scenarios and a self-currency mechanism. **Part C** parks the v1.0 approval-needed backlog with decisions deferred to the user.

**Tech Stack:** Python 3.10+, `fastembed` (Qdrant, CPU/ONNX, no API), `intfloat/multilingual-e5-small` (384-dim, multilingual incl. German), `numpy`, `pyyaml`, `pytest`. Langdock Workflows / Agents / MCP / Skills for Part B.

**Scope note (two subsystems):** Part A and Part B are independent and each ships working software on its own. They are kept in one roadmap because they share the same goal (continuous validation + currency). If executed separately, treat Part A and Part B as two plans.

---

## Part A — Offline RAG simulator (`tools/rag_sim/`)

**Why:** Every v1.0 gate is authoring-time. Nothing verifies that the *retrieval* behaves — that the right file's chunk wins for a given query (the "one chunk wins per file per query" discipline, R4). Little Data only runs inside hosted Langdock, so CI here cannot call the live agent. The simulator approximates Langdock's retrieval offline so the behavioral run-book is anchored in a reproducible report.

**Honest limitation (must appear in the report header):** Langdock uses 1536-dim embeddings and an undocumented re-ranker; this simulator uses a 384-dim open model and cosine similarity. It validates **relative routing** (does the expected file rank first after the per-file cap?), **not** absolute retrieval quality. It catches routing regressions; it does not certify production retrieval.

### File structure (Part A)

- Create `tools/rag_sim/__init__.py` — package marker + public exports.
- Create `tools/rag_sim/chunker.py` — split knowledge files into `### S-` scenario chunks (+ header fallback for glossar/deeplinks). One responsibility: text → chunks.
- Create `tools/rag_sim/embedder.py` — `EmbeddingBackend` protocol, `FakeEmbedder` (deterministic, offline tests), `FastEmbedBackend` (real model). One responsibility: text → normalized vectors.
- Create `tools/rag_sim/retriever.py` — build an index over chunks, retrieve top-k with cosine, apply the per-file cap. One responsibility: query → ranked files.
- Create `tools/rag_sim/report.py` — run a golden set, compute routing pass/fail + MRR + collisions, render Markdown + JSON. One responsibility: results → report.
- Create `tools/rag_sim/cli.py` — argparse entrypoint wiring the four modules.
- Create `tools/rag_sim/requirements.txt` — `fastembed`, `numpy`, `pyyaml`.
- Create `tools/rag_sim/README.md` — how to run; the honest-limitation note.
- Create `examples/iw-little-data/eval/golden-questions.yaml` — the versioned golden set (agent-specific data).
- Create `tests/rag_sim/__init__.py` and `tests/rag_sim/test_chunker.py`, `test_embedder.py`, `test_retriever.py`, `test_report.py`.

The simulator is **framework code** (canonical under repo-root `tools/`); the golden set is **agent data** (under the example). The CLI takes both as arguments, so one simulator serves every example.

---

### Task A1: Scenario chunker

**Files:**
- Create: `tools/rag_sim/chunker.py`
- Test: `tests/rag_sim/test_chunker.py`

- [ ] **Step 1: Write the failing test**

```python
# tests/rag_sim/test_chunker.py
from pathlib import Path
from tools.rag_sim.chunker import chunk_text, Chunk

SAMPLE = """# 03 Wissensordner

### S-WR-001 Erstes Szenario
Trigger: irgendwas (Quelle: 03-wissensordner-und-rag)

Vorgehen: ...

### S-WR-002 Zweites Szenario
Trigger: anderes
"""

def test_chunk_text_splits_on_scenario_headers():
    chunks = chunk_text(SAMPLE, file_stem="03-wissensordner-und-rag")
    assert [c.chunk_id for c in chunks] == ["S-WR-001", "S-WR-002"]
    assert all(isinstance(c, Chunk) for c in chunks)
    assert chunks[0].file == "03-wissensordner-und-rag"
    assert "Erstes Szenario" in chunks[0].text
    assert "Zweites Szenario" not in chunks[0].text
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python -m pytest tests/rag_sim/test_chunker.py -v`
Expected: FAIL with `ModuleNotFoundError: No module named 'tools.rag_sim.chunker'`

- [ ] **Step 3: Write minimal implementation**

```python
# tools/rag_sim/chunker.py
import re
from dataclasses import dataclass
from pathlib import Path

SCENARIO_RE = re.compile(r'(?m)^### (S-[A-Z]+-\d+)\b.*$')

@dataclass
class Chunk:
    chunk_id: str
    file: str
    text: str

def chunk_text(raw: str, file_stem: str) -> list[Chunk]:
    matches = list(SCENARIO_RE.finditer(raw))
    chunks = []
    for i, m in enumerate(matches):
        start = m.start()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(raw)
        chunks.append(Chunk(chunk_id=m.group(1), file=file_stem, text=raw[start:end].strip()))
    return chunks

def chunk_file(path) -> list[Chunk]:
    p = Path(path)
    return chunk_text(p.read_text(encoding="utf-8"), p.stem)

def chunk_dir(knowledge_dir) -> list[Chunk]:
    out = []
    for p in sorted(Path(knowledge_dir).glob("*.md")):
        out.extend(chunk_file(p))
    return out
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_chunker.py -v`
Expected: PASS

- [ ] **Step 5: Add the header fallback for non-scenario files (glossar/deeplinks)**

Add a second test, then extend `chunk_text` so files with **zero** `### S-` matches fall back to splitting on `**Term:**` / `## `/`### ` blocks, each becoming a chunk whose `chunk_id` is the header text. This keeps files 15/18 routable.

```python
def test_chunk_text_fallback_for_glossar():
    raw = "## Glossar\n\n**Sharepic (Social Graphic):** Eine Kachel ...\n\n**Faktenblatt (Fact Sheet):** Eine Verdichtung ..."
    chunks = chunk_text(raw, file_stem="15-glossar-und-faq")
    ids = [c.chunk_id for c in chunks]
    assert any("Sharepic" in i for i in ids)
    assert any("Faktenblatt" in i for i in ids)
```

Implementation (append to `chunk_text`, before `return` when `matches` is empty):

```python
TERM_RE = re.compile(r'(?m)^\*\*(?P<t>[^*]+?)\*\*|^#{2,3}\s+(?P<h>.+)$')

# inside chunk_text, when not matches:
    if not matches:
        fb = list(TERM_RE.finditer(raw))
        for i, m in enumerate(fb):
            start = m.start()
            end = fb[i + 1].start() if i + 1 < len(fb) else len(raw)
            label = (m.group("t") or m.group("h") or "").strip()
            chunks.append(Chunk(chunk_id=label, file=file_stem, text=raw[start:end].strip()))
        return chunks
```

- [ ] **Step 6: Run both tests**

Run: `python -m pytest tests/rag_sim/test_chunker.py -v`
Expected: 2 PASS

- [ ] **Step 7: Commit**

```bash
git add tools/rag_sim/chunker.py tools/rag_sim/__init__.py tests/rag_sim/
git commit -m "rag_sim: scenario chunker with glossar fallback"
```

---

### Task A2: Embedding backends (fake + fastembed)

**Files:**
- Create: `tools/rag_sim/embedder.py`
- Test: `tests/rag_sim/test_embedder.py`

- [ ] **Step 1: Write the failing test (deterministic fake embedder only — no network)**

```python
# tests/rag_sim/test_embedder.py
import numpy as np
from tools.rag_sim.embedder import FakeEmbedder

def test_fake_embedder_is_deterministic_and_normalized():
    e = FakeEmbedder(dim=128)
    a = e.embed_passages(["Wissensordner Datei Upload"])
    b = e.embed_passages(["Wissensordner Datei Upload"])
    assert a.shape == (1, 128)
    assert np.allclose(a, b)                      # deterministic
    assert np.isclose(np.linalg.norm(a[0]), 1.0)  # unit-normalized

def test_fake_embedder_similar_text_scores_higher():
    e = FakeEmbedder(dim=512)
    q = e.embed_queries(["Wie viele Dateien fasst der Wissensordner?"])[0]
    near = e.embed_passages(["Der Wissensordner fasst bis zu 1000 Dateien."])[0]
    far = e.embed_passages(["Modellpreise pro 1M Tokens in Euro."])[0]
    assert float(near @ q) > float(far @ q)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python -m pytest tests/rag_sim/test_embedder.py -v`
Expected: FAIL with `ModuleNotFoundError`

- [ ] **Step 3: Write the implementation (stable hashing fake + lazy fastembed backend)**

```python
# tools/rag_sim/embedder.py
import hashlib
import re
from typing import Protocol
import numpy as np

_TOK = re.compile(r"\w+", re.UNICODE)

def _stable_bucket(token: str, dim: int) -> int:
    h = hashlib.md5(token.encode("utf-8")).hexdigest()
    return int(h, 16) % dim

class EmbeddingBackend(Protocol):
    def embed_passages(self, texts: list[str]) -> np.ndarray: ...
    def embed_queries(self, texts: list[str]) -> np.ndarray: ...

class FakeEmbedder:
    """Deterministic bag-of-words hashing embedder for offline unit tests."""
    def __init__(self, dim: int = 256):
        self.dim = dim
    def _vec(self, text: str) -> np.ndarray:
        v = np.zeros(self.dim, dtype=np.float32)
        for tok in _TOK.findall(text.lower()):
            v[_stable_bucket(tok, self.dim)] += 1.0
        n = np.linalg.norm(v)
        return v / n if n else v
    def _mat(self, texts): return np.vstack([self._vec(t) for t in texts]).astype("float32")
    def embed_passages(self, texts): return self._mat(texts)
    def embed_queries(self, texts): return self._mat(texts)

class FastEmbedBackend:
    """Real open-source embeddings via fastembed; e5 prefix discipline."""
    def __init__(self, model_name: str = "intfloat/multilingual-e5-small"):
        from fastembed import TextEmbedding  # lazy import: keeps unit tests offline
        self.model = TextEmbedding(model_name=model_name)
    def _embed(self, texts, prefix) -> np.ndarray:
        vecs = list(self.model.embed([f"{prefix}{t}" for t in texts]))
        arr = np.vstack(vecs).astype("float32")
        norms = np.linalg.norm(arr, axis=1, keepdims=True)
        return arr / np.clip(norms, 1e-9, None)
    def embed_passages(self, texts): return self._embed(texts, "passage: ")
    def embed_queries(self, texts): return self._embed(texts, "query: ")
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_embedder.py -v`
Expected: 2 PASS (FastEmbedBackend is not imported by the unit tests, so no model download)

- [ ] **Step 5: Commit**

```bash
git add tools/rag_sim/embedder.py tests/rag_sim/test_embedder.py
git commit -m "rag_sim: fake + fastembed embedding backends"
```

---

### Task A3: Retriever with Langdock per-file cap

**Files:**
- Create: `tools/rag_sim/retriever.py`
- Test: `tests/rag_sim/test_retriever.py`

- [ ] **Step 1: Write the failing test (the per-file cap is the load-bearing behavior)**

```python
# tests/rag_sim/test_retriever.py
from tools.rag_sim.chunker import Chunk
from tools.rag_sim.embedder import FakeEmbedder
from tools.rag_sim.retriever import Retriever

def _chunks():
    return [
        Chunk("S-WR-001", "03-wissensordner-und-rag", "Wissensordner Library 1000 Dateien Upload Synced 200"),
        Chunk("S-WR-002", "03-wissensordner-und-rag", "Wissensordner Chunk Embedding Retrieval k50"),
        Chunk("S-MK-001", "07-modelle-und-kosten", "Modell Preis Euro Tokens Sonnet Opus Flash"),
    ]

def test_per_file_cap_collapses_to_one_chunk_per_file():
    r = Retriever(_chunks(), FakeEmbedder(dim=512))
    res = r.retrieve("Wie viele Dateien fasst der Wissensordner?", k=50, per_file_cap=1)
    files = [x.file for x in res]
    assert files.count("03-wissensordner-und-rag") == 1   # capped, not 2
    assert res[0].file == "03-wissensordner-und-rag"        # correct routing

def test_cap_zero_disables_collapsing():
    r = Retriever(_chunks(), FakeEmbedder(dim=512))
    res = r.retrieve("Wissensordner", k=50, per_file_cap=0)
    assert sum(1 for x in res if x.file == "03-wissensordner-und-rag") == 2
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python -m pytest tests/rag_sim/test_retriever.py -v`
Expected: FAIL with `ModuleNotFoundError`

- [ ] **Step 3: Write the implementation**

```python
# tools/rag_sim/retriever.py
from dataclasses import dataclass
import numpy as np

@dataclass
class Retrieved:
    chunk_id: str
    file: str
    score: float

class Retriever:
    def __init__(self, chunks, backend):
        self.chunks = chunks
        self.backend = backend
        self.matrix = backend.embed_passages([c.text for c in chunks])  # (N, dim), normalized

    def retrieve(self, query: str, k: int = 50, per_file_cap: int = 1):
        q = self.backend.embed_queries([query])[0]   # (dim,), normalized
        sims = self.matrix @ q                         # cosine (both unit-normalized)
        order = np.argsort(-sims)
        results, seen = [], {}
        for idx in order:
            c = self.chunks[int(idx)]
            if per_file_cap and seen.get(c.file, 0) >= per_file_cap:
                continue
            seen[c.file] = seen.get(c.file, 0) + 1
            results.append(Retrieved(c.chunk_id, c.file, float(sims[int(idx)])))
            if len(results) >= k:
                break
        return results
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_retriever.py -v`
Expected: 2 PASS

- [ ] **Step 5: Commit**

```bash
git add tools/rag_sim/retriever.py tests/rag_sim/test_retriever.py
git commit -m "rag_sim: retriever with Langdock per-file cap"
```

---

### Task A4: Report (routing pass/fail, MRR, collisions)

**Files:**
- Create: `tools/rag_sim/report.py`
- Test: `tests/rag_sim/test_report.py`

- [ ] **Step 1: Write the failing test**

```python
# tests/rag_sim/test_report.py
from tools.rag_sim.chunker import Chunk
from tools.rag_sim.embedder import FakeEmbedder
from tools.rag_sim.retriever import Retriever
from tools.rag_sim.report import evaluate, GoldenItem

def _retriever():
    chunks = [
        Chunk("S-WR-001", "03-wissensordner-und-rag", "Wissensordner Library 1000 Dateien Upload Synced 200"),
        Chunk("S-MK-001", "07-modelle-und-kosten", "Modell Preis Euro Tokens Sonnet Opus Flash"),
    ]
    return Retriever(chunks, FakeEmbedder(dim=512))

def test_evaluate_marks_correct_routing_pass():
    golden = [GoldenItem(id="q1", query="Wie viele Dateien fasst der Wissensordner?",
                          expected_file="03-wissensordner-und-rag", kind="answerable")]
    rep = evaluate(_retriever(), golden, k=50)
    row = rep["rows"][0]
    assert row["winning_file"] == "03-wissensordner-und-rag"
    assert row["passed"] is True
    assert rep["summary"]["routing_pass_rate"] == 1.0

def test_evaluate_marks_wrong_routing_fail():
    golden = [GoldenItem(id="q2", query="Modellpreis pro Token in Euro?",
                          expected_file="03-wissensordner-und-rag", kind="answerable")]
    rep = evaluate(_retriever(), golden, k=50)
    assert rep["rows"][0]["passed"] is False
    assert rep["summary"]["routing_pass_rate"] == 0.0
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python -m pytest tests/rag_sim/test_report.py -v`
Expected: FAIL with `ModuleNotFoundError`

- [ ] **Step 3: Write the implementation**

```python
# tools/rag_sim/report.py
import json
from dataclasses import dataclass
from datetime import date

LIMITATION = (
    "Simulated retrieval: 384-dim open model (multilingual-e5-small) + cosine, "
    "no re-ranker. Validates RELATIVE routing under the per-file cap, not absolute "
    "Langdock retrieval quality."
)

@dataclass
class GoldenItem:
    id: str
    query: str
    expected_file: str | None
    kind: str = "answerable"   # answerable | refusal | collision

def _rank_of(results, expected_file):
    for i, r in enumerate(results):
        if r.file == expected_file:
            return i + 1
    return None

def evaluate(retriever, golden, k=50, per_file_cap=1, refusal_threshold=0.30):
    rows, mrr_terms, ans = [], [], 0
    for item in golden:
        results = retriever.retrieve(item.query, k=k, per_file_cap=per_file_cap)
        winning = results[0].file if results else None
        top_score = results[0].score if results else 0.0
        rank = _rank_of(results, item.expected_file) if item.expected_file else None
        if item.kind == "answerable":
            ans += 1
            passed = (winning == item.expected_file)
            mrr_terms.append(1.0 / rank if rank else 0.0)
        elif item.kind == "refusal":
            passed = (top_score < refusal_threshold)   # weak signal: nothing matched strongly
        else:  # collision: informational
            passed = True
        rows.append({
            "id": item.id, "kind": item.kind, "query": item.query,
            "expected_file": item.expected_file, "winning_file": winning,
            "expected_rank": rank, "top_score": round(top_score, 4), "passed": passed,
        })
    pass_rate = (sum(1 for r in rows if r["kind"] == "answerable" and r["passed"]) / ans) if ans else 0.0
    mrr = (sum(mrr_terms) / len(mrr_terms)) if mrr_terms else 0.0
    return {
        "generated": str(date.today()),
        "limitation": LIMITATION,
        "summary": {"n": len(rows), "answerable": ans,
                    "routing_pass_rate": round(pass_rate, 4), "mrr": round(mrr, 4)},
        "rows": rows,
    }

def to_markdown(rep) -> str:
    s = rep["summary"]
    out = [f"# RAG-Sim Routing Report — {rep['generated']}", "",
           f"> {rep['limitation']}", "",
           f"**Routing pass-rate (answerable):** {s['routing_pass_rate']:.1%}  ",
           f"**MRR:** {s['mrr']:.3f}  |  **Queries:** {s['n']} ({s['answerable']} answerable)", "",
           "| id | kind | expected | winning | rank | top | pass |",
           "|---|---|---|---|---|---|---|"]
    for r in rep["rows"]:
        out.append(f"| {r['id']} | {r['kind']} | {r['expected_file'] or '-'} | "
                   f"{r['winning_file'] or '-'} | {r['expected_rank'] or '-'} | "
                   f"{r['top_score']} | {'PASS' if r['passed'] else 'FAIL'} |")
    return "\n".join(out) + "\n"

def to_json(rep) -> str:
    return json.dumps(rep, ensure_ascii=False, indent=2)
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_report.py -v`
Expected: 2 PASS

- [ ] **Step 5: Commit**

```bash
git add tools/rag_sim/report.py tests/rag_sim/test_report.py
git commit -m "rag_sim: routing report (pass-rate, MRR, markdown+json)"
```

---

### Task A5: CLI + golden-set loader + requirements

**Files:**
- Create: `tools/rag_sim/cli.py`
- Create: `tools/rag_sim/requirements.txt`
- Create: `examples/iw-little-data/eval/golden-questions.yaml`

- [ ] **Step 1: Write `requirements.txt`**

```
fastembed>=0.3
numpy>=1.24
pyyaml>=6.0
```

- [ ] **Step 2: Write a starter golden set (≥3 entries; grow to ~40–60 during A6)**

```yaml
# examples/iw-little-data/eval/golden-questions.yaml
- id: rag-file-cap
  query: "Wie viele Dateien kann ich in den Wissensordner laden?"
  expected_file: "03-wissensordner-und-rag"
  kind: answerable
- id: model-price
  query: "Was kostet ein Modell pro eine Million Tokens?"
  expected_file: "07-modelle-und-kosten"
  kind: answerable
- id: iw-press-release
  query: "Entwirf die Pressemitteilung zur neuen IW-Studie."
  expected_file: "14-iw-use-cases"
  kind: answerable
- id: fake-feature
  query: "Wie nutze ich die Predictive-Analytics-Funktion in Langdock?"
  expected_file: null
  kind: refusal
```

- [ ] **Step 3: Write the CLI**

```python
# tools/rag_sim/cli.py
import argparse
import sys
import yaml
from pathlib import Path
from tools.rag_sim.chunker import chunk_dir
from tools.rag_sim.embedder import FakeEmbedder, FastEmbedBackend
from tools.rag_sim.retriever import Retriever
from tools.rag_sim.report import GoldenItem, evaluate, to_markdown, to_json

def load_golden(path):
    raw = yaml.safe_load(Path(path).read_text(encoding="utf-8"))
    return [GoldenItem(id=i["id"], query=i["query"],
                       expected_file=i.get("expected_file"), kind=i.get("kind", "answerable"))
            for i in raw]

def main(argv=None):
    ap = argparse.ArgumentParser(description="Offline RAG routing simulator for Langdock knowledge bases.")
    ap.add_argument("--knowledge-dir", required=True)
    ap.add_argument("--golden", required=True)
    ap.add_argument("--backend", choices=["fastembed", "fake"], default="fastembed")
    ap.add_argument("--k", type=int, default=50)
    ap.add_argument("--per-file-cap", type=int, default=1)
    ap.add_argument("--out-md", default="rag-sim-report.md")
    ap.add_argument("--out-json", default="rag-sim-report.json")
    ap.add_argument("--fail-under", type=float, default=0.0, help="exit 1 if pass-rate below this")
    a = ap.parse_args(argv)

    chunks = chunk_dir(a.knowledge_dir)
    backend = FakeEmbedder() if a.backend == "fake" else FastEmbedBackend()
    retriever = Retriever(chunks, backend)
    rep = evaluate(retriever, load_golden(a.golden), k=a.k, per_file_cap=a.per_file_cap)
    Path(a.out_md).write_text(to_markdown(rep), encoding="utf-8")
    Path(a.out_json).write_text(to_json(rep), encoding="utf-8")
    s = rep["summary"]
    print(f"routing_pass_rate={s['routing_pass_rate']:.1%} mrr={s['mrr']:.3f} "
          f"n={s['n']} -> {a.out_md}")
    if s["routing_pass_rate"] < a.fail_under:
        print(f"FAIL: pass-rate {s['routing_pass_rate']:.1%} < fail-under {a.fail_under:.1%}", file=sys.stderr)
        return 1
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 4: Smoke-test the CLI with the fake backend (no model download)**

Run:
```bash
cd /home/user/soul.md
python -m tools.rag_sim.cli \
  --knowledge-dir examples/iw-little-data/langdock-deploy/knowledge \
  --golden examples/iw-little-data/eval/golden-questions.yaml \
  --backend fake --out-md /tmp/r.md --out-json /tmp/r.json
```
Expected: prints `routing_pass_rate=… mrr=… n=4 -> /tmp/r.md`, exit 0, both files written. (Fake backend will route some queries wrong — that is fine for the smoke test; it proves the wiring.)

- [ ] **Step 5: Integration-test the real backend once (downloads ~120 MB; network required)**

Run the same command with `--backend fastembed`. Expected: pass-rate noticeably higher than fake; report header carries the limitation note. If offline, skip and note it.

- [ ] **Step 6: Commit**

```bash
git add tools/rag_sim/cli.py tools/rag_sim/requirements.txt examples/iw-little-data/eval/golden-questions.yaml
git commit -m "rag_sim: CLI + golden-set loader + starter golden set"
```

---

### Task A6: Grow the golden set + write the behavioral run-book + README

**Files:**
- Modify: `examples/iw-little-data/eval/golden-questions.yaml` (grow to ~40–60 items)
- Modify: `examples/iw-little-data/langdock-deploy/VALIDATION-CHECKLIST.md` (→ behavioral run-book)
- Create: `tools/rag_sim/README.md`

- [ ] **Step 1: Grow the golden set.** Add ≥1 answerable query per knowledge file (00–10, 14, 16, 17, 19), the known retrieval-collision triples as `kind: collision` (Pressemitteilung, Newsletter, Brand Voice — assert the *reserved* file wins), and 3–4 `kind: refusal` fake-feature/out-of-domain queries. Use the `data/research` facts so each `expected_file` is the canonical home (R3).

- [ ] **Step 2: Run the simulator (fastembed) and record the baseline.** Commit the generated `examples/iw-little-data/eval/rag-sim-report.md` as the routing baseline. Investigate any answerable FAIL: it is either a golden-set error or a real routing collision to fix in the knowledge base (a v2.0 finding).

- [ ] **Step 3: Upgrade `VALIDATION-CHECKLIST.md` into the full behavioral run-book.** For every golden item add the expected *behavior* the simulator cannot test: persona bootstrap, Julia-mode delta, the two exact refusal strings, the two-model pair on price questions, HITL on outward actions, the gestaffeltes Antwortformat. One row per check, with a pass/fail box for the operator's single Langdock pass at sign-off.

- [ ] **Step 4: Write `tools/rag_sim/README.md`** — install (`pip install -r requirements.txt`), run (fake vs fastembed), interpret the report, and the honest-limitation note verbatim. Cross-link from `examples/iw-little-data/MAINTENANCE.md` (quarterly cadence).

- [ ] **Step 5: Commit**

```bash
git add examples/iw-little-data/eval/ examples/iw-little-data/langdock-deploy/VALIDATION-CHECKLIST.md tools/rag_sim/README.md
git commit -m "rag_sim: full golden set + behavioral run-book + README + baseline report"
```

---

### Task A7: Bundle the simulator into the release workflow (non-blocking)

**Files:**
- Modify: `.github/workflows/release.yml`

- [ ] **Step 1:** In the framework-bundle step, the `tools/` copy already carries `rag_sim/`. Add `eval/golden-questions.yaml` + the baseline report into the per-example stage so a release consumer can re-run the routing check. Keep it **non-blocking** (informational artifact), since model download in CI is heavy — gate it behind a manual `workflow_dispatch` input `run_rag_sim: false` default.

- [ ] **Step 2:** Document in `CLAUDE.md` Step 6 that the RAG sim is an *optional behavioral* gate (offline routing), distinct from the authoring gates.

- [ ] **Step 3: Commit**

```bash
git add .github/workflows/release.yml CLAUDE.md
git commit -m "rag_sim: optional non-blocking bundling in release workflow"
```

---

## Part B — Self-improving "maxbuild" architecture (research-blocked roadmap)

**Dependency gate (B0):** Part B cannot start until the Gemini Deep Research report commissioned by `examples/iw-little-data/GEMINI-RESEARCH-PROMPT-maxbuild-little-data.md` exists and is saved to `examples/iw-little-data/data/research/20-maxbuild-langdock-self-improving-rag.md`. Running Gemini Deep Research is a **user action**. Until then, Part B stays a roadmap.

**Governance invariants (carry through every Part B task):** source-grounding (no invented Langdock features/limits/prices; mark `[nativ nicht moeglich]` + workaround); HITL mandatory before any knowledge write-back or outward action; emoji-free German; ~2000-char chunk discipline; 9-type slot-6 system; the M01–M13 lens stays invisible.

### Phase B0 — Ingest & verify the research
- [ ] Save the Gemini report to `data/research/20-maxbuild-…md`. Run a T0-style cross-validation pass: every Langdock capability/limit claim either carries a primary-source citation or is flagged `[unverified]`. Quarantine unverified claims out of authoring.

### Phase B1 — Target-state architecture record (new content file)
- [ ] Author `examples/iw-little-data/langdock-deploy/knowledge/20-maxbuild-architektur.md` (kind: content), translating §6 of the research (consolidated target state) into strict-schema scenarios: component inventory (Agents/Workflows/MCP servers/Skills/external stores) each as one scenario with its 9-type code, the end-to-end self-update mechanism, and the staged MVP→full build roadmap. Each scenario's slot-6 is its honest type (mostly W/M/A/C). Run all authoring gates.

### Phase B2 — Self-currency Workflow scenarios
- [ ] Add `W`-type scenarios (in file 04 and/or file 20) for the freshness Workflows on the maintenance cadence: a Scheduled-Trigger Workflow re-verifying model prices (60 d), names (90 d), platform limits (180 d), integrations (90 d); on drift it opens a **HITL** review node, never auto-writes the knowledge base. Cite the verified Scheduled-Trigger granularity from B0; if granularity is `[nativ nicht moeglich]`, author the documented API/cron workaround.

### Phase B3 — Own RAG pipeline as MCP (M/A scenarios)
- [ ] Add `M`/`A`-type scenarios (file 05 and/or 20) for Little Data's own retrieval pipeline exposed via MCP (`little_data_retrieve`): ingestion from the Knowledge Folder API, ~2000-char chunking matching the framework discipline, EU-hosted vector store, two-stage retrieval + re-ranking that mitigates the native per-document cap, and chunk-ID/version/retrieval-time citation. Every external call names its `Scope:`/`RateLimit:` from verified API facts.

### Phase B4 — Memory + self-improvement loop (W+S+M scenarios)
- [ ] Add scenarios for durable cross-session Memory (external store via MCP, since Agent Memory is disabled) and the closed feedback loop: flag bad/uncertain output → structured capture → curation queue → **HITL** review → knowledge/prompt update → re-index → canary re-test. State explicitly: feedback improves source/prompt curation, **not** model weights (no auto-retraining).

### Phase B5 — Validate & integrate
- [ ] Re-run all authoring gates + the Part-A RAG sim (new file 20 must route cleanly, distinct trigger nouns, no new collisions). Update `kb_index`, AGENT_PROMPT WISSENS-NAVIGATION (add file 20 anchor; mind the 15k budget — trim elsewhere if needed), CHANGELOG, and a `RELEASE_NOTES-v2.0.md`. Spec-panel review until CONVERGED, then tag v2.0.

---

## Part C — Parked decisions & v1.0 backlog (need user input or are optional)

These were deliberately deferred from v1.0. Each needs a decision before action.

- [ ] **L4-0b — schema-definition in AGENT_PROMPT. DECISION: DROPPED.** The runtime agent retrieves prose chunks and never needs the authoring marker schema; inlining it would waste ~700 chars of the 15k budget. Recorded as closed; no action. (No user input required — documented here for the record.)
- [ ] **[m]3 — near-twin `Empfehlung` pairs.** Two scenario pairs share an opening recommendation phrasing (internal-linking pair in 03; budget-reserve "30 %" pair). Mild retrieval overlap only; both valid + grounded. *Decision needed:* sharpen for distinctness, or leave. Low value; recommend leave unless the Part-A sim flags a real collision.
- [ ] **File 04/05 chunk-headroom condensation.** ~Cluster of scenarios in the 3,200–3,950 B band (none FAIL the [600,4096] gate). Condensing the `Vorgehen` adds chunk-split headroom. *Decision needed:* worth a pass, or leave. Mechanical but touches many scenarios; recommend doing it opportunistically during Part B authoring.
- [ ] **18-quellen-und-deeplinks freshness.** Deep-links rot. Author a freshness pass that stamps `Stand:` per link and verifies each URL resolves (this benefits from the Part-B self-currency Workflow once built). *Decision needed:* manual pass now, or fold into B2.
- [ ] **CI gate wiring.** `MAINTENANCE.md` notes a per-PR GitHub Action "to be added" running the authoring gates. *Decision needed:* add a CI workflow that runs `check_schema/grounding/chunks/coherence/prompt_size/marker_spacing` on push (blocking) + the RAG sim (non-blocking). Recommend yes; small, high-value.

---

## Self-Review (writing-plans checklist)

- **Spec coverage:** Part A implements the simulator the user specified (open-source minimal RAG, Langdock-like chunking + per-file cap, structured report) — Tasks A1–A7. The run-book (user's "structured manual runbook") is A6 Step 3. Part B covers the maxbuild research scope (self-currency, own RAG pipeline, Memory, self-improvement, graph audit via citation lineage) — Phases B0–B5. Part C parks every approval-needed item. No gaps.
- **Placeholder scan:** core modules (chunker, embedder, retriever, report, cli) carry complete code; tests carry complete assertions. Part B is intentionally a phased roadmap (research-blocked) — its "implementation" is content authoring under the existing strict-schema rulebook, not new code, so it lists deliverables + invariants rather than code blocks. Part C items are decisions, not code.
- **Type consistency:** `Chunk(chunk_id, file, text)`, `Retrieved(chunk_id, file, score)`, `GoldenItem(id, query, expected_file, kind)`, `evaluate(...) -> {summary, rows, ...}` are used consistently across A1–A5. `EmbeddingBackend` protocol (`embed_passages`/`embed_queries`) is honored by both `FakeEmbedder` and `FastEmbedBackend`.
