#!/usr/bin/env python3
"""check_prompt_tokens.py — advisory token-count reporter using tiktoken.

Reports per-encoding token counts for AGENT_PROMPT.md (or any markdown file).
Gemini and Anthropic models use different tokenizers internally; cl100k_base
and o200k_base (OpenAI) are approximations. Treat output as guidance, not a
hard limit. Hard limit is char-based via check_prompt_size.sh.

Usage:
    python3 tools/check_prompt_tokens.py [path]

Defaults: path=little-data/langdock-deploy/AGENT_PROMPT.md
"""

import pathlib
import sys


def main() -> int:
    default_path = "little-data/langdock-deploy/AGENT_PROMPT.md"
    path = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else default_path)

    if not path.exists():
        print(f"WARN: {path} does not exist yet (skipping).")
        return 0

    try:
        import tiktoken
    except ImportError:
        print("ERROR: tiktoken not installed. Run: pip install tiktoken")
        return 2

    text = path.read_text(encoding="utf-8")
    char_count = len(text)
    print(f"{path}: {char_count} chars")

    for encoding_name in ("cl100k_base", "o200k_base"):
        encoding = tiktoken.get_encoding(encoding_name)
        token_count = len(encoding.encode(text))
        ratio = char_count / max(token_count, 1)
        print(f"  {encoding_name}: {token_count} tokens (~{ratio:.2f} chars/tok)")

    return 0


if __name__ == "__main__":
    sys.exit(main())
