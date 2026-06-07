#!/usr/bin/env python3
"""Ensure every section-level field marker starts a fresh paragraph.

Each scenario field marker (Trigger:, Ziel:, ..., Empfehlung:, Anschluss:) and
each slot-6 lead marker (Prompt:/Vorlage:/Workflow:/MCP:/Skill:/Code:/Pfad:/API:)
plus the persona Konversation: marker must be preceded by a blank line, so the
markdown renders one paragraph per field instead of a single glued run-on block.

Slot-6 continuation sub-fields (Budget:, Tool:, Scope:, RateLimit:,
Trigger-Woerter:, IO:, Diff:, Rollback:) are deliberately kept attached to their
lead marker, because they form one logical deliverable block.

The marker set is an explicit allowlist so that prose lines that merely end in a
colon (e.g. "Die technische Tiefe ist adaptiv:") are never touched.

Idempotent: a marker that already has a blank line before it is left as is.

Usage:
    python3 tools/format_marker_spacing.py --check  <files...>   # report only, exit 1 if changes needed
    python3 tools/format_marker_spacing.py --write  <files...>   # apply in place
    python3 tools/format_marker_spacing.py --write --all          # all knowledge files
"""
import sys
import glob

SECTION_MARKERS = [
    # 9 mandatory content/persona fields
    "Trigger", "Ziel", "Ergebnis", "Fähigkeit", "Vorgehen",
    "Artefakt", "Fallstricke", "Empfehlung", "Anschluss",
    # slot-6 lead markers (one per deliverable type)
    "Prompt", "Vorlage", "Workflow", "API", "MCP", "Skill", "Code", "Pfad",
    # persona slot-6
    "Konversation",
]


def is_section_marker(line):
    for m in SECTION_MARKERS:
        if line == m + ":" or line.startswith(m + ": "):
            return True
    return False


def fix_lines(lines):
    """lines: list without trailing newlines. Returns (new_lines, n_inserted)."""
    out = []
    inserted = 0
    for i, line in enumerate(lines):
        if is_section_marker(line) and out and out[-1].strip() != "":
            out.append("")
            inserted += 1
        out.append(line)
    return out, inserted


def process(path, write):
    with open(path, encoding="utf-8") as fh:
        text = fh.read()
    trailing_nl = text.endswith("\n")
    lines = text.split("\n")
    if trailing_nl:
        lines = lines[:-1]
    new_lines, n = fix_lines(lines)
    if n and write:
        out = "\n".join(new_lines) + ("\n" if trailing_nl else "")
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(out)
    return n


def main():
    args = sys.argv[1:]
    write = "--write" in args
    check = "--check" in args
    use_all = "--all" in args
    files = [a for a in args if not a.startswith("--")]
    if use_all:
        files += sorted(glob.glob("langdock-deploy/knowledge/*.md"))
    if not files:
        print("no files given (use paths or --all)", file=sys.stderr)
        return 2
    total = 0
    for path in files:
        n = process(path, write)
        total += n
        if n:
            verb = "inserted" if write else "would insert"
            print(f"{path}: {verb} {n} blank line(s) before markers")
        else:
            print(f"{path}: OK (no change)")
    print(f"--- total: {total} blank line(s) {'inserted' if write else 'needed'}")
    if check and total:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
