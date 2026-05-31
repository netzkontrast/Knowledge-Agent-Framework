#!/usr/bin/env python3
"""check_overlap.py — find pairs of H2/H3 chunks across knowledge files
with high semantic similarity, flagging accidental redundancy.

Per N11 (chunk overlap discipline): in the Langdock Wissensordner, chunks
must minimize overlap. The per-document cap means two files with redundant
chunks for the same query waste one retrieval slot.

This script:
  1. Splits each knowledge file at H2/H3 boundaries into chunks.
  2. Embeds each chunk via sentence-transformers (free, local).
  3. Computes pairwise cosine similarity across chunks in DIFFERENT files.
  4. Reports pairs above the threshold (default 0.78) for human review.

Usage:
    python3 tools/check_overlap.py [knowledge_dir] [threshold]

Defaults: knowledge_dir=little-data/langdock-deploy/knowledge, threshold=0.78
"""

import pathlib
import re
import sys


def split_chunks(text: str, filename: str) -> list[tuple[str, str]]:
    """Split markdown text into (heading, body) tuples at H2/H3 boundaries."""
    chunks = []
    current_heading = None
    current_body: list[str] = []
    for line in text.splitlines():
        match = re.match(r"^(##{1,2})\s+(.*)$", line)
        if match:
            if current_heading is not None:
                chunks.append((f"{filename} :: {current_heading}", "\n".join(current_body).strip()))
            current_heading = match.group(2).strip()
            current_body = []
        else:
            if current_heading is not None:
                current_body.append(line)
    if current_heading is not None:
        chunks.append((f"{filename} :: {current_heading}", "\n".join(current_body).strip()))
    return [(h, b) for h, b in chunks if len(b) > 200]


def main() -> int:
    default_dir = "little-data/langdock-deploy/knowledge"
    default_threshold = 0.78

    knowledge_dir = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else default_dir)
    threshold = float(sys.argv[2]) if len(sys.argv) > 2 else default_threshold

    if not knowledge_dir.exists():
        print(f"WARN: {knowledge_dir} does not exist yet (skipping).")
        return 0

    files = sorted(knowledge_dir.glob("*.md"))
    if len(files) < 2:
        print(f"Only {len(files)} knowledge files found; need ≥2 for cross-file overlap.")
        return 0

    try:
        from sentence_transformers import SentenceTransformer, util
    except ImportError:
        print("ERROR: sentence-transformers not installed.")
        print("Run: pip install sentence-transformers")
        return 2

    model = SentenceTransformer("paraphrase-multilingual-MiniLM-L12-v2")

    all_chunks: list[tuple[str, str, str]] = []  # (filename, heading_label, body)
    for f in files:
        chunks = split_chunks(f.read_text(encoding="utf-8"), f.stem)
        for heading_label, body in chunks:
            all_chunks.append((f.stem, heading_label, body))

    print(f"Embedding {len(all_chunks)} chunks across {len(files)} files...")
    embeddings = model.encode([b for _, _, b in all_chunks], convert_to_tensor=True, show_progress_bar=False)

    flagged: list[tuple[float, str, str]] = []
    for i in range(len(all_chunks)):
        for j in range(i + 1, len(all_chunks)):
            if all_chunks[i][0] == all_chunks[j][0]:
                continue
            sim = float(util.cos_sim(embeddings[i], embeddings[j])[0][0])
            if sim >= threshold:
                flagged.append((sim, all_chunks[i][1], all_chunks[j][1]))

    flagged.sort(reverse=True)
    if not flagged:
        print(f"OK: no cross-file chunk pairs above threshold {threshold}.")
        return 0

    print(f"\nFLAGGED {len(flagged)} pairs (threshold {threshold}):")
    for sim, a, b in flagged[:30]:
        print(f"  {sim:.3f}")
        print(f"    A: {a}")
        print(f"    B: {b}")
    if len(flagged) > 30:
        print(f"  ... and {len(flagged) - 30} more.")

    return 1 if flagged else 0


if __name__ == "__main__":
    sys.exit(main())
