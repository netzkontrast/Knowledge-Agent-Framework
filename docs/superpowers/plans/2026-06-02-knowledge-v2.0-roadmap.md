# Knowledge Agent Framework v2.0 — Implementation Plan & Roadmap

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a behavioral validation layer (an offline RAG simulator + run-book) and the self-improving "maxbuild" architecture (knowledge, an external-service contract, and Langdock build/deploy playbooks) to the Little Data agent, on top of the validated v1.0 content base.

**Architecture:** v2.0 is five Parts with explicit dependency order and honest verifiability. **A (RAG simulator)** and **B (maxbuild knowledge)** and **C (v1 backlog)** are built and validated *inside this repo*. **D (external RAG/MCP service)** is a **spec-only** reference architecture + API/MCP contract (implemented later under its own plan — this repo cannot run Qdrant/Cohere/Neo4j/Redis or hold secrets). **E (Langdock build/deploy playbooks)** is operator documentation for the 4-stage rollout. Every factual claim about Langdock traces to the verified research report `examples/iw-little-data/data/research/20-maxbuild-langdock-agent-architektur-spezifikation.md` (retrieved 2026-06-02) and its primary sources.

**Tech Stack:** Python 3.10+, `fastembed` (Qdrant, CPU/ONNX, no API), `intfloat/multilingual-e5-small` (384-dim, multilingual incl. German), `numpy`, `pyyaml`, `pytest` (Parts A). Strict-schema Markdown + the validator suite (Part B). Reference-only for Part D: Qdrant/Weaviate (EU), Cohere `rerank-multilingual-v3.0`, Neo4j, Redis/Postgres, `text-embedding-3-large@1536`, the Model Context Protocol. Langdock Workflows/Agents/MCP/Skills (Part E).

**Dependency order:** A → (enables B8 routing check) ; research (DONE) → B, D ; A8 + D → (D contracts cite the two-stage design) ; B + D → E. Parts A, B, C can proceed in parallel. D is written before E. C is independent.

**Verifiability legend per Part:** A = unit-tested offline (green here). B = authoring gates green here. C = gates green here. D = no code, contract reviewed here, validated only in a sandbox. E = docs reviewed here, exercised only on live Langdock.

---

## Part A — Offline RAG simulator (`tools/rag_sim/`)

**Why:** Every v1.0 gate is authoring-time. Nothing verifies that *retrieval* behaves — that the right file's chunk wins for a query (the "one chunk wins per file per query" discipline, R4). Little Data only runs inside hosted Langdock, so CI here cannot call the live agent. The simulator approximates Langdock retrieval offline so the behavioral run-book is anchored in a reproducible report, and (A8) it quantifies the per-document-cap / re-ranking problem the research identifies.

**Honest limitation (must appear in the report header):** Langdock uses 1536-dim embeddings and (per research) NO native re-ranker; this simulator uses a 384-dim open model and cosine similarity. It validates **relative routing** (does the expected file rank first after the per-file cap?), **not** absolute retrieval quality. It catches routing regressions; it does not certify production retrieval.

### File structure (Part A)

- Create `tools/rag_sim/__init__.py` — package marker + public exports.
- Create `tools/rag_sim/chunker.py` — split knowledge files into `### S-` scenario chunks (+ header fallback for glossar/deeplinks). One responsibility: text → chunks.
- Create `tools/rag_sim/embedder.py` — `EmbeddingBackend` protocol, `FakeEmbedder` (deterministic, offline tests), `FastEmbedBackend` (real model). One responsibility: text → normalized vectors.
- Create `tools/rag_sim/retriever.py` — index over chunks; retrieve top-k with cosine; apply the per-file cap. One responsibility: query → ranked files.
- Create `tools/rag_sim/report.py` — run a golden set, compute routing pass/fail + MRR + collisions, render Markdown + JSON. One responsibility: results → report.
- Create `tools/rag_sim/cli.py` — argparse entrypoint wiring the modules.
- Create `tools/rag_sim/requirements.txt` — `fastembed`, `numpy`, `pyyaml`.
- Create `tools/rag_sim/README.md` — how to run; the honest-limitation note.
- Create `examples/iw-little-data/eval/golden-questions.yaml` — the versioned golden set (agent-specific data).
- Create `tests/rag_sim/__init__.py` and `tests/rag_sim/test_chunker.py`, `test_embedder.py`, `test_retriever.py`, `test_report.py`, `test_twostage.py`.

The simulator is **framework code** (canonical under repo-root `tools/`); the golden set is **agent data** (under the example). The CLI takes both as arguments, so one simulator serves every example.

---

### Task A1: Scenario chunker

**Files:**
- Create: `tools/rag_sim/chunker.py`, `tools/rag_sim/__init__.py`
- Test: `tests/rag_sim/test_chunker.py`, `tests/rag_sim/__init__.py`

- [ ] **Step 1: Write the failing test**

```python
# tests/rag_sim/test_chunker.py
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

def test_chunk_text_fallback_for_glossar():
    raw = "## Glossar\n\n**Sharepic (Social Graphic):** Eine Kachel ...\n\n**Faktenblatt (Fact Sheet):** Eine Verdichtung ..."
    chunks = chunk_text(raw, file_stem="15-glossar-und-faq")
    ids = [c.chunk_id for c in chunks]
    assert any("Sharepic" in i for i in ids)
    assert any("Faktenblatt" in i for i in ids)
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
TERM_RE = re.compile(r'(?m)^\*\*(?P<t>[^*]+?)\*\*|^#{2,3}\s+(?P<h>.+)$')

@dataclass
class Chunk:
    chunk_id: str
    file: str
    text: str

def chunk_text(raw: str, file_stem: str) -> list[Chunk]:
    matches = list(SCENARIO_RE.finditer(raw))
    chunks: list[Chunk] = []
    if not matches:
        fb = list(TERM_RE.finditer(raw))
        for i, m in enumerate(fb):
            start = m.start()
            end = fb[i + 1].start() if i + 1 < len(fb) else len(raw)
            label = (m.group("t") or m.group("h") or "").strip()
            chunks.append(Chunk(chunk_id=label, file=file_stem, text=raw[start:end].strip()))
        return chunks
    for i, m in enumerate(matches):
        start = m.start()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(raw)
        chunks.append(Chunk(chunk_id=m.group(1), file=file_stem, text=raw[start:end].strip()))
    return chunks

def chunk_file(path) -> list[Chunk]:
    p = Path(path)
    return chunk_text(p.read_text(encoding="utf-8"), p.stem)

def chunk_dir(knowledge_dir) -> list[Chunk]:
    out: list[Chunk] = []
    for p in sorted(Path(knowledge_dir).glob("*.md")):
        out.extend(chunk_file(p))
    return out
```

Also create empty `tools/rag_sim/__init__.py` and `tests/rag_sim/__init__.py`.

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_chunker.py -v`
Expected: 2 PASS

- [ ] **Step 5: Commit**

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
    assert np.allclose(a, b)
    assert np.isclose(np.linalg.norm(a[0]), 1.0)

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
    return int(hashlib.md5(token.encode("utf-8")).hexdigest(), 16) % dim

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
        from fastembed import TextEmbedding  # lazy import keeps unit tests offline
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
Expected: 2 PASS (FastEmbedBackend not imported by unit tests, so no model download)

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
    assert files.count("03-wissensordner-und-rag") == 1
    assert res[0].file == "03-wissensordner-und-rag"

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
            passed = (top_score < refusal_threshold)
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
- Create: `tools/rag_sim/cli.py`, `tools/rag_sim/requirements.txt`, `examples/iw-little-data/eval/golden-questions.yaml`

- [ ] **Step 1: Write `tools/rag_sim/requirements.txt`**

```
fastembed>=0.3
numpy>=1.24
pyyaml>=6.0
```

- [ ] **Step 2: Write a starter golden set (≥4 entries; grow in A7)**

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
    print(f"routing_pass_rate={s['routing_pass_rate']:.1%} mrr={s['mrr']:.3f} n={s['n']} -> {a.out_md}")
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
Expected: prints `routing_pass_rate=… mrr=… n=4 -> /tmp/r.md`, exit 0, both files written. (Fake backend routes some queries wrong — fine; it proves the wiring.)

- [ ] **Step 5: Integration-test the real backend once (downloads ~120 MB; network required)**

Run the same command with `--backend fastembed`. Expected: pass-rate noticeably higher than fake; report header carries the limitation note. If offline, skip and note it.

- [ ] **Step 6: Commit**

```bash
git add tools/rag_sim/cli.py tools/rag_sim/requirements.txt examples/iw-little-data/eval/golden-questions.yaml
git commit -m "rag_sim: CLI + golden-set loader + starter golden set"
```

---

### Task A6: Bundle the simulator into the release workflow (non-blocking)

**Files:**
- Modify: `.github/workflows/release.yml`
- Modify: `CLAUDE.md`

- [ ] **Step 1:** In the framework-bundle step, the `tools/` copy already carries `rag_sim/`. Add `eval/golden-questions.yaml` + the baseline report into the per-example stage so a release consumer can re-run the routing check. Keep it **non-blocking**: gate it behind a `workflow_dispatch` input `run_rag_sim` defaulting to `false`, since model download in CI is heavy.

- [ ] **Step 2:** In `CLAUDE.md` Step 6, document the RAG sim as an *optional behavioral* gate (offline routing), distinct from the authoring gates.

- [ ] **Step 3: Commit**

```bash
git add .github/workflows/release.yml CLAUDE.md
git commit -m "rag_sim: optional non-blocking bundling in release workflow"
```

---

### Task A7: Grow the golden set + behavioral run-book + README

**Files:**
- Modify: `examples/iw-little-data/eval/golden-questions.yaml` (grow to ~40–60 items)
- Modify: `examples/iw-little-data/langdock-deploy/VALIDATION-CHECKLIST.md` (→ behavioral run-book)
- Create: `tools/rag_sim/README.md`
- Create: `examples/iw-little-data/eval/rag-sim-report.md` (baseline)

- [ ] **Step 1: Grow the golden set.** Add ≥1 answerable query per knowledge file (00–10, 14, 16, 17, 19), the known retrieval-collision triples as `kind: collision` (Pressemitteilung, Newsletter, Brand Voice — assert the *reserved* file wins), and 3–4 `kind: refusal` queries. Use the `data/research` facts so each `expected_file` is the canonical home (R3).

- [ ] **Step 2: Run the simulator (fastembed) and commit `examples/iw-little-data/eval/rag-sim-report.md` as the routing baseline.** Investigate any answerable FAIL: it is either a golden-set error or a real routing collision to fix (a v2.0 finding feeding Part C).

- [ ] **Step 3: Upgrade `VALIDATION-CHECKLIST.md` into the full behavioral run-book.** For each golden item add the expected *behavior* the simulator cannot test: persona bootstrap, Julia-mode delta, the two exact refusal strings, the two-model pair on price questions, HITL on outward actions, the gestaffeltes Antwortformat. One row per check with a pass/fail box for the operator's single Langdock pass at sign-off.

- [ ] **Step 4: Write `tools/rag_sim/README.md`** — install (`pip install -r tools/rag_sim/requirements.txt`), run (fake vs fastembed), interpret the report, and the honest-limitation note verbatim. Cross-link from `examples/iw-little-data/MAINTENANCE.md` (quarterly cadence).

- [ ] **Step 5: Commit**

```bash
git add examples/iw-little-data/eval/ examples/iw-little-data/langdock-deploy/VALIDATION-CHECKLIST.md tools/rag_sim/README.md
git commit -m "rag_sim: full golden set + behavioral run-book + README + baseline report"
```

---

### Task A8: Two-stage retrieval model (quantify per-document-cap + re-ranking)

**Why:** The research (§2, §4) names the native weaknesses precisely — the per-document-cap and the absent re-ranker — and prescribes a two-stage own-pipeline (deep hybrid recall at k≈150 → cross-encoder rerank → top-3). A8 lets the simulator *quantify* the gap offline: it runs the SAME golden set under (a) native single-stage + per-file cap and (b) a simulated two-stage retrieval, and reports the routing-pass-rate / MRR delta. This produces the evidence that justifies (or refutes) building Part D — without standing up any external service.

**Files:**
- Create: `tools/rag_sim/twostage.py`
- Test: `tests/rag_sim/test_twostage.py`
- Modify: `tools/rag_sim/cli.py` (add `--mode {native,twostage,compare}`)

- [ ] **Step 1: Write the failing test.** A lexical re-rank pass must lift a chunk whose terms match the query but which lost on raw cosine, and `compare_modes` must return both reports.

```python
# tests/rag_sim/test_twostage.py
from tools.rag_sim.chunker import Chunk
from tools.rag_sim.embedder import FakeEmbedder
from tools.rag_sim.retriever import Retriever
from tools.rag_sim.twostage import lexical_rerank, compare_modes
from tools.rag_sim.report import GoldenItem

def test_lexical_rerank_prefers_exact_term_overlap():
    # two candidates; the second shares more exact query terms
    cands = [
        ("S-A-001", "00-langdock-uebersicht", "Allgemeine Plattformuebersicht Funktionen", 0.91),
        ("S-B-002", "07-modelle-und-kosten", "Modellpreis Euro pro Million Tokens Sonnet", 0.88),
    ]
    ranked = lexical_rerank("Was ist der Modellpreis pro Million Tokens?", cands, top_n=2)
    assert ranked[0][0] == "S-B-002"   # lexical overlap promotes the price chunk

def test_compare_modes_returns_two_summaries():
    chunks = [
        Chunk("S-WR-001", "03-wissensordner-und-rag", "Wissensordner Library 1000 Dateien Upload"),
        Chunk("S-MK-001", "07-modelle-und-kosten", "Modellpreis Euro pro Million Tokens"),
    ]
    r = Retriever(chunks, FakeEmbedder(dim=512))
    golden = [GoldenItem("q1", "Modellpreis pro Million Tokens", "07-modelle-und-kosten", "answerable")]
    out = compare_modes(r, golden)
    assert "native" in out and "twostage" in out
    assert set(out["native"]["summary"]) >= {"routing_pass_rate", "mrr"}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `python -m pytest tests/rag_sim/test_twostage.py -v`
Expected: FAIL with `ModuleNotFoundError`

- [ ] **Step 3: Write the implementation.** `lexical_rerank` is a transparent stand-in for the production cross-encoder (Cohere `rerank-multilingual-v3.0`): it re-scores deep recall by token-overlap so the simulator stays offline and dependency-free, while modeling the *shape* of two-stage retrieval (deep recall, then re-rank to top-n). The honest limitation: this is a lexical proxy, not a neural cross-encoder.

```python
# tools/rag_sim/twostage.py
import re
from tools.rag_sim.report import evaluate

_TOK = re.compile(r"\w+", re.UNICODE)

def _terms(text): return set(_TOK.findall(text.lower()))

def lexical_rerank(query, candidates, top_n=3):
    """candidates: list[(chunk_id, file, text, recall_score)]. Returns top_n re-ranked.
    Proxy for Cohere rerank-multilingual-v3.0: re-score by query-term overlap (Jaccard),
    blended with the recall score to break ties."""
    q = _terms(query)
    scored = []
    for cid, file, text, recall in candidates:
        t = _terms(text)
        overlap = len(q & t) / (len(q | t) or 1)
        scored.append((cid, file, text, 0.7 * overlap + 0.3 * float(recall)))
    scored.sort(key=lambda x: -x[3])
    return scored[:top_n]

class TwoStageRetriever:
    """Deep hybrid recall (no per-file cap, k=recall_k) then lexical re-rank to top_n.
    Mirrors the research's own-pipeline: k=150 recall defeats native k=50 + per-doc-cap."""
    def __init__(self, base_retriever, recall_k=150, top_n=3):
        self.base = base_retriever
        self.recall_k = recall_k
        self.top_n = top_n
        self._by_id = {c.chunk_id: c for c in base_retriever.chunks}
    def retrieve(self, query, k=None, per_file_cap=None):
        recall = self.base.retrieve(query, k=self.recall_k, per_file_cap=0)  # no cap in stage 1
        cands = [(r.chunk_id, r.file, self._by_id[r.chunk_id].text, r.score) for r in recall]
        ranked = lexical_rerank(query, cands, top_n=self.top_n)
        from tools.rag_sim.retriever import Retrieved
        return [Retrieved(cid, file, score) for cid, file, _text, score in ranked]

def compare_modes(base_retriever, golden, recall_k=150, top_n=3):
    native = evaluate(base_retriever, golden, k=50, per_file_cap=1)
    twostage_ret = TwoStageRetriever(base_retriever, recall_k=recall_k, top_n=top_n)
    twostage = evaluate(twostage_ret, golden, k=top_n, per_file_cap=0)
    return {"native": native, "twostage": twostage}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `python -m pytest tests/rag_sim/test_twostage.py -v`
Expected: 2 PASS

- [ ] **Step 5: Wire `--mode` into the CLI.** Add `ap.add_argument("--mode", choices=["native","twostage","compare"], default="native")`. For `compare`, call `compare_modes` and write a side-by-side Markdown delta (native vs twostage pass-rate + MRR). Keep `native` as the default so A1–A7 behavior is unchanged.

- [ ] **Step 6: Run compare mode (fastembed) and record the delta.**

Run:
```bash
cd /home/user/soul.md
python -m tools.rag_sim.cli --mode compare --backend fastembed \
  --knowledge-dir examples/iw-little-data/langdock-deploy/knowledge \
  --golden examples/iw-little-data/eval/golden-questions.yaml \
  --out-md examples/iw-little-data/eval/rag-sim-compare.md --out-json /tmp/c.json
```
Expected: a delta table; commit `rag-sim-compare.md` as the evidence artifact for the Part-D decision.

- [ ] **Step 7: Commit**

```bash
git add tools/rag_sim/twostage.py tests/rag_sim/test_twostage.py tools/rag_sim/cli.py examples/iw-little-data/eval/rag-sim-compare.md
git commit -m "rag_sim: two-stage retrieval model + native-vs-twostage compare"
```

---

## Part B — Maxbuild knowledge (`20-maxbuild-architektur.md` + interlock scenarios)

**Why:** The framework's native deliverable is source-grounded knowledge. The research is now a primary source, so the target-state architecture can be authored as strict-schema scenarios the deployed agent can actually retrieve and advise from. Governance invariants on every scenario: source-grounding (cite the research / its primary URLs; mark `[unsicher]` where the research marks `[unverified]`); HITL before any knowledge write-back or outward action; emoji-free German; the ~2000-char chunk band; the 9-type slot-6 system; the M01–M13 lens stays invisible.

### File structure (Part B)

- Create `examples/iw-little-data/langdock-deploy/knowledge/20-maxbuild-architektur.md` — kind `content`; the target-state architecture as scenarios.
- Modify `examples/iw-little-data/langdock-deploy/knowledge/04-workflows.md` — add the self-currency Workflow scenarios (W).
- Modify `examples/iw-little-data/langdock-deploy/knowledge/05-integrationen-und-mcp.md` — add own-RAG / external-memory MCP scenarios (M/A).
- Modify `examples/iw-little-data/langdock-deploy/AGENT_PROMPT.md` — add the file-20 nav anchor (trim elsewhere to stay ≤15,000).
- Modify `examples/iw-little-data/tools/` + root `tools/` — regenerate `kb_index`.

### Task B1: New file `20-maxbuild-architektur.md` — component inventory + patterns

**Files:**
- Create: `examples/iw-little-data/langdock-deploy/knowledge/20-maxbuild-architektur.md`

- [ ] **Step 1: Author the 8 component-inventory scenarios (research §6 table).** One `### S-MB-0NN` scenario per component (Core Agent, Governance System-Prompt, MCP-Client RAG Pipeline, External Memory Store, Frische-Check Workflow, Feedback Form Trigger, Qualitäts-Gate HITL, Neo4j Graph Audit DB). Each carries the 10 terse markers; slot-6 type follows the component's 9-type code from the research table (C/S, P/S, M/A, M/A, W/T, W/D, W/D, A). `Trigger:` cites the research file or the underlying primary URL. Example skeleton for the RAG-pipeline component:

```markdown
### S-MB-003 Eigene RAG-Pipeline via MCP anbinden

Trigger: Wenn die native Wissensordner-Suche durch das Per-Document-Cap und das fehlende Re-Ranking relevante Chunks verdrängt (Quelle: 20-maxbuild-langdock-agent-architektur-spezifikation; docs.langdock.com/resources/knowledge/knowledge-basics).

Ziel: Retrieval-Präzision über eine externe Two-Stage-Pipeline statt der nativen Single-Stage-Suche.

Ergebnis: Top-3 Chunks mit Lineage-ID, via MCP an den Langdock-Agenten geliefert.

Fähigkeit: MCP-Client-Anbindung eines externen Retrieval-Servers.

Vorgehen: 1) Externen MCP-Server unter Integrations registrieren. 2) Tool little_data_retrieve freischalten. 3) Skill kapselt das Tool mit Governance-Prompt. 4) Agent leitet Fachanfragen an das Tool. 5) Antwort mit Lineage-Textmarker belegen.

MCP: little_data_retrieve
Tool: externer Two-Stage-RAG-Server (BM25+Dense Recall k=150 -> Cohere rerank-multilingual-v3.0 -> Top-3)
Scope: AGENT_API; STREAMABLE_HTTP; Auto-Discovery bis 50 Tools

Artefakt: MCP-Integrations-Eintrag + Compliance-Skill.

Fallstricke: Externe RAG erhöht die Latenz (Time-to-First-Token) — Timeout-Management nötig (MCP-Non-Streaming-Timeout ist [unsicher]). Das Per-Document-Cap ist als hartes Limit [unsicher] — vor Stufe 4 in der Sandbox verifizieren.

Empfehlung: Baue die eigene RAG-Pipeline erst in Stufe 4, nachdem die nativen Stufen 1-3 die Grenze messbar erreichen; bis dahin liefert der native Wissensordner ausreichende Präzision.

Anschluss: S-MB-005
```

- [ ] **Step 2: Author the 4 interlock-pattern scenarios (research §3).** `S-MB-00N` chain scenarios for Muster 1 (Memory via MCP, read-only, no HITL), Muster 2 (Skill wraps MCP for governance), Muster 3 (self-currency + HITL write-back), Muster 4 (delegated retrieval). Each names its HITL point and `[nativ nicht moeglich]` workaround as `Fallstricke`/`Empfehlung`. Set `Anschluss:` to a real existing scenario ID so the coherence gate passes.

- [ ] **Step 3: Author the 4-stage build-roadmap scenarios (research §6 roadmap).** One Decision-type (`Empfehlung:` as slot-6) scenario per stage (MVP / Frische-Checks / Memory+Feedback / own-RAG+Graph), each stating what is native-possible vs `[nativ nicht moeglich]` + the dependency, grounded in the research.

- [ ] **Step 4: Run the authoring gates on the new file.**

Run:
```bash
cd /home/user/soul.md/examples/iw-little-data
bash tools/check_schema.sh --all && bash tools/check_grounding.sh --all && \
bash tools/check_chunks.sh --all && bash tools/check_coherence.sh --all && \
python3 tools/format_marker_spacing.py --check --all && \
grep -rlP '[\x{1F000}-\x{1FAFF}\x{2600}-\x{26FF}\x{2700}-\x{27BF}\x{FE0F}]' langdock-deploy/knowledge/ || echo EMOJI-CLEAN
```
Expected: schema PASS (incl. file 20), grounding clean, chunks in band, coherence PASS, marker-spacing 0, EMOJI-CLEAN.

- [ ] **Step 5: Commit**

```bash
git add examples/iw-little-data/langdock-deploy/knowledge/20-maxbuild-architektur.md
git commit -m "knowledge: file 20 maxbuild architecture (components, patterns, roadmap)"
```

### Task B2: Self-currency Workflow scenarios (file 04)

**Files:**
- Modify: `examples/iw-little-data/langdock-deploy/knowledge/04-workflows.md`

- [ ] **Step 1: Add ≥3 `Workflow:`-type scenarios** for the freshness loop (research §3 Muster 3, §6 self-update): a Scheduled-Trigger Workflow with Cron cadence (prices 60 d `0 0 1 */2 *`-style, names 90 d, limits 180 d), a Code-Node (Python) Vendor-API poll, a drift `Condition`, and a **HITL-Node** before the `Knowledge Folder API` write-back (DELETE old + `POST /upload-async`), then a poll to `SYNCED`. `Budget:` names the Monthly/Per-Execution guard. `Trigger:` cites `docs.langdock.com/product/workflows/nodes/scheduled-trigger`. Distinct trigger nouns ("Frische-Check Preise", "Frische-Check Limits") to avoid collisions with existing file-04 scenarios.

- [ ] **Step 2: Run gates (as B1 Step 4). Commit.**

```bash
git add examples/iw-little-data/langdock-deploy/knowledge/04-workflows.md
git commit -m "knowledge: file 04 self-currency freshness workflows (Cron + HITL write-back)"
```

### Task B3: Own-RAG + external-memory MCP scenarios (file 05)

**Files:**
- Modify: `examples/iw-little-data/langdock-deploy/knowledge/05-integrationen-und-mcp.md`

- [ ] **Step 1: Add ≥3 `MCP:`/`API:`-type scenarios:** `little_data_retrieve` (own two-stage RAG), `read_external_memory`/`fetch_user_context` (Redis/Postgres cross-session state, since Agent Memory is disabled — cite `docs.langdock.com/product/chat/memory`), and the feedback-loop Form-Trigger + Qualitäts-Gate. Each names `Scope:` (`AGENT_API`/`KNOWLEDGE_FOLDER_API`), transport (`STREAMABLE_HTTP`/SSE), and the 50-tool auto-discovery cap. HITL mandatory before any write-back.

- [ ] **Step 2: Run gates. Commit.**

```bash
git add examples/iw-little-data/langdock-deploy/knowledge/05-integrationen-und-mcp.md
git commit -m "knowledge: file 05 own-RAG + external-memory + feedback-loop MCP scenarios"
```

### Task B4: Nav anchor + index regen + run the routing sim on file 20

**Files:**
- Modify: `examples/iw-little-data/langdock-deploy/AGENT_PROMPT.md`
- Modify: `docs/superpowers/specs/v2-kb-index.md`, `v2-kb-index.json`

- [ ] **Step 1: Add the file-20 nav anchor** to AGENT_PROMPT WISSENS-NAVIGATION (`20 — Maxbuild-Architektur: eigene RAG-Pipeline, Frische-Workflows, externes Memory, Feedback-Loop (Beratung, nicht Ausführung).`). Trim a redundant clause elsewhere to keep ≤15,000. Verify: `bash tools/check_prompt_size.sh`.

- [ ] **Step 2: Regenerate the index.** Run `python3 examples/iw-little-data/tools/kb_index.py` (and the root copy). Confirm file 20 + the new scenarios appear with correct per-type tallies.

- [ ] **Step 3: Add golden-questions for file 20** to `examples/iw-little-data/eval/golden-questions.yaml` (e.g. "Wie halte ich Little Datas Wissen automatisch aktuell?" → `20-maxbuild-architektur`) and re-run the A-simulator (fastembed) to confirm file 20 routes cleanly with distinct trigger nouns (no new collisions). If a collision appears, sharpen the trigger noun (feeds Part C discipline).

- [ ] **Step 4: Commit**

```bash
git add examples/iw-little-data/langdock-deploy/AGENT_PROMPT.md docs/superpowers/specs/v2-kb-index.* examples/iw-little-data/eval/golden-questions.yaml
git commit -m "knowledge: file 20 nav anchor + index regen + routing check"
```

---

## Part C — Parked v1.0 backlog (decisions + small fixes)

- [ ] **L4-0b — DROPPED (recorded).** No action; runtime agent never needs the authoring schema.
- [ ] **[m]3 — near-twin `Empfehlung` pairs.** Re-run the A-simulator; if it flags the internal-linking pair (03) or budget-reserve "30 %" pair as a real collision, sharpen the opening of one Empfehlung in each pair for distinctness, then re-run gates. If no collision, leave and record the decision.
- [ ] **File 04/05 chunk-headroom condensation.** For each scenario in the 3,200–3,950 B band, condense `Vorgehen:` to 3 terse steps (substance preserved in the slot-6 payload). Run `bash tools/check_chunks.sh --all`; confirm median drops and 0 FAIL. Do this opportunistically while authoring B2/B3 in the same files. Commit per file.
- [ ] **18-quellen-und-deeplinks freshness.** Stamp each deep-link with `Stand: 2026-06`; for each URL, confirm it resolves (manual or via a Part-E freshness workflow once built). Replace/remove dead links; re-run grounding gate. Commit.
- [ ] **CI gate wiring.** Create `.github/workflows/validate.yml` running, on push/PR, the authoring gates (`check_schema`/`check_grounding`/`check_chunks`/`check_coherence`/`check_prompt_size`/`format_marker_spacing` + emoji guard) as a **blocking** job, and the RAG sim (fake backend) as a **non-blocking** job. Mirror the gate invocations from `release.yml`. Commit.

---

## Part D — External RAG/MCP service (SPEC-ONLY reference architecture)

**Status:** No code in this repo. This Part is a written contract the future service-build plan consumes. It is reviewed here for completeness/consistency; it is validated only in a sandbox. Every Langdock-side fact cites the research report. The three `[unverified]` items (per-document-cap, Skill-vs-Action boundary, MCP non-streaming timeout) MUST be sandbox-validated before any of this is built.

**Files:**
- Create: `docs/superpowers/specs/2026-06-02-little-data-rag-service-contract.md`

### Task D1: Write the service contract document

- [ ] **Step 1: Reference architecture.** Component diagram + responsibilities for: ingestion (Knowledge Folder API `GET /knowledge/{folderId}/list` + download; external primary sources; Langdock Webhook trigger on upload), chunking (reuse the framework's "ein Szenario = ein Chunk", 2000–2300 B, key-noun repetition, no cross-chunk pronouns — explicitly NOT sentence-window), embeddings (`text-embedding-3-large@1536` for Langdock fallback-compat), vector store (Qdrant or Weaviate, EU/Frankfurt), two-stage retrieval (Stage 1 hybrid BM25+dense recall k=150 to defeat native k=50 + per-doc-cap; Stage 2 Cohere `rerank-multilingual-v3.0` → top-3), citation (chunk_id, source_file, file_version_hash SHA-256, valid_until, last-validated timestamp), graph audit (Neo4j nodes Source/File/Version/Chunk/Answer/UserFeedback; edges BELEGT_DURCH/ABGELEITET_VON/TEIL_VON/WIDERSPRICHT), durable memory (Redis/Postgres keyed by pseudonymized user-hash; DSGVO delete path).

- [ ] **Step 2: MCP tool contract.** For each tool give name, input schema, output schema, scope, and HITL stance:
  - `little_data_retrieve(query, top_n=3) -> {chunks:[{chunk_id, source_file, text, score, lineage_id}], lineage_id}` — read-only, no HITL.
  - `read_external_memory(user_hash) -> {preferences, project_context, rejected_answers}` — read-only, no HITL.
  - `write_external_memory(user_hash, patch)` — write; pseudonymized; no Live-KB mutation, so no HITL but audited.
  - `propose_knowledge_update(chunk_id, new_markdown, evidence_url)` — **HITL-gated**; never writes the Live-KB directly; enqueues for the Qualitäts-Gate.
  Specify transport (`STREAMABLE_HTTP`), auth (`Authorization: Bearer`), and the 50-tool auto-discovery ceiling.

- [ ] **Step 3: REST contract + data models.** Endpoint list (`POST /retrieve`, `GET /memory/{hash}`, `PATCH /memory/{hash}`, `DELETE /memory/{hash}`, `POST /ingest`, `POST /feedback`), JSON schemas, and the chunk-metadata + graph-edge data models. Sequence diagrams (text) for Muster 1–4 from the research.

- [ ] **Step 4: Build-prerequisites + open questions.** List the three `[unverified]` items as explicit sandbox-validation gates with how to test each. State the EU-hosting + static-outbound-IP (`4.185.103.44`) whitelist requirement and the latency/timeout risk. End with "this contract is implemented under a separate plan once the sandbox validations pass."

- [ ] **Step 5: Commit**

```bash
git add docs/superpowers/specs/2026-06-02-little-data-rag-service-contract.md
git commit -m "spec: external RAG/MCP service contract (reference-only)"
```

---

## Part E — Langdock build & deploy playbooks (operator documentation)

**Status:** Documentation deliverables (no runnable code); exercised only on live Langdock. Each playbook maps to a stage of the research's MVP→full roadmap and names its native-possible vs `[nativ nicht moeglich]` parts + the HITL gates.

**Files:**
- Create: `examples/iw-little-data/MAXBUILD-PLAYBOOK.md`

### Task E1: Write the staged build/deploy playbook

- [ ] **Step 1: Stage 1 (MVP) playbook.** Native-only: Core Agent + Library Folder (≤1000 files, ~8M chars) + Governance System-Prompt. Reuse the existing `INSTALL.md` steps; note the known limitation (no cross-session memory; precision degrades without re-ranking as the base grows). Cite the research §6 Stage 1.

- [ ] **Step 2: Stage 2 (Frische-Checks) playbook.** Configure the Scheduled Workflows (Cron cadences 60/90/180 d), the Python Code-Node Vendor-API parsers, the drift Condition, and the **HITL approval gate** before the Knowledge-Folder-API write-back. Reference the file-04 W-scenarios (B2) as the in-agent advisory counterpart. Native-possible per research.

- [ ] **Step 3: Stage 3 (Memory + Feedback) playbook.** Register the external memory store via MCP/Custom Action (`fetch_user_context` at session start); stand up the Form-Trigger "Qualitäts-Gate" feedback workflow with its HITL review → `upload-async` → poll-to-`SYNCED` → canary-re-test. Mark Agent-Memory as `[nativ nicht moeglich]` (disabled in Agents) → external store mandatory. Cite `docs.langdock.com/product/chat/memory`.

- [ ] **Step 4: Stage 4 (own RAG + Graph) playbook.** Register the external MCP server (Part D), disable native Wissensordner retrieval, wire `little_data_retrieve`, stand up Neo4j lineage. State `[nativ nicht moeglich]` + the latency/timeout risk + the EU-hosting/static-IP whitelist. Cross-link the Part-D contract and the A8 compare-report as the go/no-go evidence.

- [ ] **Step 5: Pre-build sandbox-validation checklist.** The three `[unverified]` items, each with a concrete test (e.g. per-document-cap: upload a 2-scenario file, query a term present in both, observe whether 1 or 2 chunks return). Block Stage 4 on these.

- [ ] **Step 6: Commit**

```bash
git add examples/iw-little-data/MAXBUILD-PLAYBOOK.md
git commit -m "docs: staged maxbuild build/deploy playbook (Stages 1-4 + sandbox gates)"
```

---

## Release (v2.0)

- [ ] After Parts A–E land and all in-repo gates are green (incl. the new file 20), write `docs/RELEASE_NOTES-v2.0.md` (behavioral simulator + two-stage compare; maxbuild knowledge file 20; service contract; build playbook; CI gate). Run a spec-panel review (M01–M13 as test criteria over the enlarged base) until CONVERGED. The `v2.0` tag remains the maintainer's action; `release.yml` already resolves `docs/RELEASE_NOTES-v2.0.md`.

---

## Self-Review (writing-plans checklist)

**1. Spec coverage (against the approved design):**
- Part A simulator (A1–A7) — covered; **A8** adds the two-stage native-vs-twostage compare that quantifies the per-document-cap / re-ranking gap the design called for.
- Part B maxbuild knowledge — file 20 (B1) + self-currency W (B2) + own-RAG/memory/feedback M/A (B3) + nav/index/routing (B4); grounded in the research's verified facts (Cron cadences, node types, API scopes, own-RAG stack, memory-disabled).
- Part C — all five parked items carried with concrete close-out steps.
- Part D — **spec-only** service contract (architecture, MCP tool schemas, REST + data models, sequence flows, sandbox gates) per the chosen "spec-only" option; no code tasks.
- Part E — staged Langdock build/deploy playbooks (Stages 1–4 + sandbox-validation checklist) per "full buildout."
- Dependency order + verifiability legend stated up front. Decomposition honored: D and E are bounded sub-projects; D is reviewed-only here, E is docs-only here.

**2. Placeholder scan:** Part A/B tasks carry complete code or complete authoring instructions with a concrete example skeleton (B1 Step 1) and exact gate commands. Parts D/E are intentionally documentation deliverables (the chosen scope), so they specify exact section contents + the artifact path, not code — this is not a placeholder, it is the deliverable's nature. No "TBD/TODO/handle edge cases" present.

**3. Type consistency:** `Chunk(chunk_id, file, text)`, `Retrieved(chunk_id, file, score)`, `GoldenItem(id, query, expected_file, kind)`, `evaluate(...) -> {summary, rows, ...}`, `EmbeddingBackend.embed_passages/embed_queries`, and A8's `lexical_rerank(query, candidates, top_n)` / `TwoStageRetriever(base, recall_k, top_n)` / `compare_modes(...) -> {native, twostage}` are consistent across A1–A8. MCP tool names (`little_data_retrieve`, `read_external_memory`, `fetch_user_context`, `propose_knowledge_update`) are used consistently across B3, D2, E3–E4.
