#!/usr/bin/env python3
"""render-jules-prompt.py — render a Jules dispatch prompt for a knowledge file.

Reads:
- jules-prompts/_template.prompt.md (template with ${VAR} placeholders)
- jules-prompts/config.yaml (per-file metadata)

Writes:
- jules-prompts/<file_name>.prompt.md (rendered prompt for the given file)

Usage:
    python3 tools/render-jules-prompt.py <file_name>
    python3 tools/render-jules-prompt.py --all

Examples:
    python3 tools/render-jules-prompt.py 00-langdock-uebersicht
    python3 tools/render-jules-prompt.py --all
"""

import pathlib
import sys
from string import Template

import yaml

TOOLS_DIR = pathlib.Path(__file__).parent
PROMPTS_DIR = TOOLS_DIR / "jules-prompts"
TEMPLATE_PATH = PROMPTS_DIR / "_template.prompt.md"
CONFIG_PATH = PROMPTS_DIR / "config.yaml"
BRANCH = "claude/friendly-ride-eRsPr"


def render_one(entry: dict) -> tuple[pathlib.Path, str]:
    template_text = TEMPLATE_PATH.read_text(encoding="utf-8")
    template = Template(template_text)
    substitutions = {
        "BRANCH": BRANCH,
        "FILE_NAME": entry["file_name"],
        "FILE_PREFIX": entry["file_prefix"],
        "H1_TITLE": entry["h1_title"],
        "H2_LIST": entry["h2_list"],
        "ANCHORS": entry.get("anchors") or "(keine)",
        "MARKETING_FUNCTIONS": entry.get("marketing_functions") or "(siehe Coverage-Matrix)",
        "EXTRACT_LIST": entry["extract_list"],
        "SOURCE_LIST": entry["source_list"],
    }
    rendered = template.safe_substitute(substitutions)
    out_path = PROMPTS_DIR / f"{entry['file_name']}.prompt.md"
    return out_path, rendered


def main() -> int:
    if not TEMPLATE_PATH.exists():
        print(f"FAIL: {TEMPLATE_PATH} not found", file=sys.stderr)
        return 1
    if not CONFIG_PATH.exists():
        print(f"FAIL: {CONFIG_PATH} not found", file=sys.stderr)
        return 1

    config = yaml.safe_load(CONFIG_PATH.read_text(encoding="utf-8"))
    entries = config.get("knowledge_files", [])
    by_name = {e["file_name"]: e for e in entries}

    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return 1

    if args[0] == "--all":
        targets = list(by_name.values())
    else:
        targets = [by_name[name] for name in args if name in by_name]
        missing = [name for name in args if name not in by_name]
        if missing:
            print(f"FAIL: unknown file_name(s): {missing}", file=sys.stderr)
            return 1

    for entry in targets:
        out_path, rendered = render_one(entry)
        out_path.write_text(rendered, encoding="utf-8")
        print(f"Rendered: {out_path.name}  ({len(rendered)} chars)")

    return 0


if __name__ == "__main__":
    sys.exit(main())
