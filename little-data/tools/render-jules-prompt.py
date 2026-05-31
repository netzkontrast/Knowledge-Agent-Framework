#!/usr/bin/env python3
"""render-jules-prompt.py — render a Jules prompt for a knowledge file.

Three modes (each selects a different template + output suffix):

  dispatch (default)  — original Phase-2 authoring prompt
                        template: _template.prompt.md
                        output:   <file_name>.prompt.md
  review              — Stage-1 panel-review prompt (sc-spec-panel + M01-M13)
                        template: _panel-review-template.prompt.md
                        output:   <file_name>.review.prompt.md
  improve             — Stage-2 cross-ref + advanced-scenarios improvement
                        template: _cross-ref-improve-template.prompt.md
                        output:   <file_name>.improve.prompt.md

Reads:
- jules-prompts/<template>.prompt.md (template with ${VAR} placeholders)
- jules-prompts/config.yaml (per-file metadata)

Usage:
    python3 tools/render-jules-prompt.py <file_name>                       # dispatch (default)
    python3 tools/render-jules-prompt.py --mode=review <file_name>
    python3 tools/render-jules-prompt.py --mode=improve <file_name>
    python3 tools/render-jules-prompt.py --mode=review --all

Examples:
    python3 tools/render-jules-prompt.py 00-langdock-uebersicht
    python3 tools/render-jules-prompt.py --mode=review --all
    python3 tools/render-jules-prompt.py --mode=improve 09-marketing-praxis
"""

import pathlib
import sys
from string import Template

import yaml

TOOLS_DIR = pathlib.Path(__file__).parent
PROMPTS_DIR = TOOLS_DIR / "jules-prompts"
CONFIG_PATH = PROMPTS_DIR / "config.yaml"
BRANCH = "claude/friendly-ride-eRsPr"

MODE_CONFIG = {
    "dispatch": ("_template.prompt.md", "{file_name}.prompt.md"),
    "review": ("_panel-review-template.prompt.md", "{file_name}.review.prompt.md"),
    "improve": ("_cross-ref-improve-template.prompt.md", "{file_name}.improve.prompt.md"),
}


def render_one(entry: dict, mode: str) -> tuple[pathlib.Path, str]:
    template_name, output_pattern = MODE_CONFIG[mode]
    template_path = PROMPTS_DIR / template_name
    template_text = template_path.read_text(encoding="utf-8")
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
    out_path = PROMPTS_DIR / output_pattern.format(file_name=entry["file_name"])
    return out_path, rendered


def main() -> int:
    args = sys.argv[1:]
    mode = "dispatch"
    # Parse --mode=X
    remaining = []
    for a in args:
        if a.startswith("--mode="):
            mode = a.split("=", 1)[1]
        else:
            remaining.append(a)
    args = remaining

    if mode not in MODE_CONFIG:
        print(f"FAIL: unknown mode '{mode}'. Choices: {list(MODE_CONFIG)}", file=sys.stderr)
        return 1

    template_path = PROMPTS_DIR / MODE_CONFIG[mode][0]
    if not template_path.exists():
        print(f"FAIL: {template_path} not found", file=sys.stderr)
        return 1
    if not CONFIG_PATH.exists():
        print(f"FAIL: {CONFIG_PATH} not found", file=sys.stderr)
        return 1

    config = yaml.safe_load(CONFIG_PATH.read_text(encoding="utf-8"))
    entries = config.get("knowledge_files", [])
    by_name = {e["file_name"]: e for e in entries}

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
        out_path, rendered = render_one(entry, mode)
        out_path.write_text(rendered, encoding="utf-8")
        print(f"Rendered [{mode}]: {out_path.name}  ({len(rendered)} chars)")

    return 0


if __name__ == "__main__":
    sys.exit(main())
