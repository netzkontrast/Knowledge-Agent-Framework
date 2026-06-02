#!/usr/bin/env python3
"""kb_index.py — navigation index for the IW Little Data knowledge base.

Why: as the base grows (≤30 files cap, multiple scenario kinds) we need a
fast inline navigator. This script writes a single Markdown index that a
human or an agent can read in seconds, plus a JSON sidecar a script can
consume.

Outputs (relative to repo root):
  - docs/superpowers/specs/v2-kb-index.md   (human-readable)
  - docs/superpowers/specs/v2-kb-index.json (machine-readable)

Detects per file:
  - file kind (content / persona / anweisung / glossar / links / iw-brand)
  - scenario IDs (### S-XXX), Data-Anweisungen (## Data-Anweisung), or FAQ (### F-)
  - dominant trigger noun per scenario (first capitalised noun after Trigger)
  - presence of advice-style entries (R7 — Konkrete Empfehlung field)
  - Anschluss-Szenario edges (for the coherence graph)
  - cross-file trigger-noun collisions (sorted by severity)

Usage:
  python3 tools/kb_index.py                   # write both outputs
  python3 tools/kb_index.py --check-collisions  # exit 1 if any [C] collision
"""
from __future__ import annotations
import json, os, re, sys
from collections import Counter, defaultdict
from pathlib import Path

KDIR_DEFAULT = Path("langdock-deploy/knowledge")
OUT_MD = Path("../../docs/superpowers/specs/v2-kb-index.md")
OUT_JSON = Path("../../docs/superpowers/specs/v2-kb-index.json")

# Reserved bare nouns per rulebook R4 — these MUST route to the IW-specific files.
RESERVED_NOUNS = {
    "Pressemitteilung": ["14-iw-use-cases.md"],
    "Newsletter":       ["14-iw-use-cases.md"],
    "Brand Voice":      ["14-iw-use-cases.md", "17-branchen-think-tank-praxis.md"],
}

# R19: accept verbose markers AND terse line-anchored markers.
TRIGGER_RE = re.compile(r"^(?:\*\*Wann nutzen \(Trigger\):\*\*|Trigger:)\s+(.*?)(?:\s+\(Quelle:[^)]*\))?\s*$", re.M)
ANSCHLUSS_RE = re.compile(r"^(?:\*\*Anschluss-Szenario:\*\*|Anschluss:)\s+(.*?)\s*$", re.M)
# R20: type derived from the slot-6 payload marker (NOT from an ID rename).
SLOT6_RE = re.compile(r"^(?:\*\*(?:Beispiel-Prompt[^:]*|Beispiel-Konversation|Konkrete Empfehlung):\*\*|(Prompt|API|MCP|Skill|Code|Workflow|Pfad|Empfehlung|Vorlage):)", re.M)
MARKER_TO_TYPE = {"Prompt":"P","API":"A","MCP":"M","Skill":"S","Code":"T",
                  "Workflow":"W","Pfad":"C","Empfehlung":"D","Vorlage":"G"}
NOUN_RE = re.compile(r"\b([A-ZÄÖÜ][a-zäöüßA-ZÄÖÜ\-]{4,})\b")

def detect_kind(name: str) -> str:
    if name.startswith("11-persona-core") or name.startswith("12-persona-julia"):
        return "persona"
    if name.startswith("13-data-agent-anweisungen"):
        return "anweisung"
    if name.startswith("15-glossar"):
        return "glossar"
    if name.startswith("18-quellen") or "deeplinks" in name or name.startswith("18-links"):
        return "links"
    if name.startswith("19-iwmedien") or name.startswith("20-iw-medien"):
        return "iw-brand"
    return "content"

# Function-words AND generic actor/subject nouns that are NOT topic nouns —
# the trigger's grammatical subject ("Das Marketing-Team will …") must not be
# mistaken for the retrieval topic. Only genuine topic nouns drive R4 collisions.
_STOP = {"die","der","das","ein","eine","aus","beim","über","unter","ohne","mit",
    "für","vor","nach","sich","auch","aber","sind","wird","wenn","damit","welche",
    "welcher","welches","ihrem","ihrer","seine","seiner","seinem","unser","unsere",
    "unseres","mein","meine","meinem","meiner","keine","keiner","jede","jeder","jedes",
    # generic actors / subjects / time / platform-context (not topics):
    "marketing","marketing-team","marketing-direktorin","marketing-leiterin","direktorin",
    "content-team","performance-team","social-team","pr-team","team","unternehmen",
    "kampagne","launch","agent","agenten","geschäftsführung","julia","monaten","monate",
    "wochen","wissensordner","datenschutzbeauftragte","abteilung","kollegin","kollege",
    "vorstand","management","redaktion","mitarbeiter","mitarbeiterin","kunde","kundin",
    "projekt","quartal","jahr","woche","tag","stunde"}

def first_dominant_noun(trigger: str) -> str:
    for n in NOUN_RE.findall(trigger):
        if n.lower() in _STOP:
            continue
        return n
    return ""

def parse_file(path: Path) -> dict:
    name = path.name
    kind = detect_kind(name)
    text = path.read_text(encoding="utf-8")
    out = {"name": name, "kind": kind, "lines": text.count("\n")+1,
           "bytes": len(text.encode("utf-8")), "scenarios": [],
           "data_anweisungen": [], "faq": [], "advice_style": 0}
    blocks = re.split(r"^### (S-[A-Z]+-\d+)\b", text, flags=re.M)
    # blocks = [pre, id1, body1, id2, body2, ...]
    for i in range(1, len(blocks), 2):
        sid = blocks[i]
        body = blocks[i+1] if i+1 < len(blocks) else ""
        trig = ""
        m = TRIGGER_RE.search(body)
        if m: trig = m.group(1).strip()
        a = ANSCHLUSS_RE.search(body)
        anschl = a.group(1).strip() if a else ""
        is_advice = ("**Konkrete Empfehlung:**" in body)
        if is_advice: out["advice_style"] += 1
        # R20: derive solution type from the slot-6 payload marker.
        stype = ""
        m6 = SLOT6_RE.search(body)
        if m6:
            if m6.group(1):  # terse marker captured
                stype = MARKER_TO_TYPE.get(m6.group(1), "")
            else:            # verbose Beispiel-Prompt/Konversation/Konkrete Empfehlung
                stype = "D" if "Konkrete Empfehlung" in m6.group(0) else "P"
        out.setdefault("types", {})
        if stype:
            out["types"][stype] = out["types"].get(stype, 0) + 1
        out["scenarios"].append({
            "id": sid, "trigger": trig, "noun": first_dominant_noun(trig),
            "anschluss": anschl, "advice_style": is_advice, "type": stype,
        })
    if kind == "anweisung":
        out["data_anweisungen"] = re.findall(r"^## Data-Anweisung (.+)$", text, flags=re.M)
    if kind == "glossar":
        out["faq"] = re.findall(r"^### (F-\d+) (.+)$", text, flags=re.M)
    return out

def find_collisions(files: list[dict]) -> list[dict]:
    bag = defaultdict(list)  # noun -> [(file, id)]
    for f in files:
        for s in f["scenarios"]:
            if s["noun"]:
                bag[s["noun"]].append((f["name"], s["id"]))
    collisions = []
    for noun, hits in bag.items():
        files_touched = {h[0] for h in hits}
        if len(files_touched) >= 2:
            sev = "[C]" if len(files_touched) >= 4 else "[M]" if len(files_touched) == 3 else "[m]"
            collisions.append({"noun": noun, "severity": sev,
                               "files": sorted(files_touched), "hits": hits})
    sev_order = {"[C]":0,"[M]":1,"[m]":2}
    collisions.sort(key=lambda c: (sev_order[c["severity"]], -len(c["files"]), c["noun"]))
    return collisions

def reserved_violations(files: list[dict]) -> list[dict]:
    out = []
    for noun, allowed in RESERVED_NOUNS.items():
        for f in files:
            if f["name"] in allowed: continue
            for s in f["scenarios"]:
                # only flag if the bare reserved noun is THE dominant noun (R4 substance)
                if s["noun"] == noun.replace(" ", ""):
                    out.append({"noun": noun, "file": f["name"], "id": s["id"], "trigger": s["trigger"][:120]})
    return out

def write_md(files, collisions, reserved_v, total_scenarios, total_advice, out_path):
    lines = [f"# Knowledge-Base Navigation Index (auto-generated by tools/kb_index.py)\n"]
    lines.append(f"**Files:** {len(files)} (cap 30) · **Scenarios:** {total_scenarios} · **Advice-style (R7):** {total_advice}\n")
    lines.append("## Files\n")
    lines.append("| File | Kind | Lines | Bytes | Scenarios | Notes |")
    lines.append("|---|---|---:|---:|---:|---|")
    for f in files:
        notes = []
        if f["advice_style"]: notes.append(f"advice×{f['advice_style']}")
        if f["data_anweisungen"]: notes.append(f"data-anw×{len(f['data_anweisungen'])}")
        if f["faq"]: notes.append(f"faq×{len(f['faq'])}")
        lines.append(f"| `{f['name']}` | {f['kind']} | {f['lines']} | {f['bytes']} | {len(f['scenarios'])} | {', '.join(notes)} |")
    lines.append("")
    lines.append("## Trigger-noun collisions (R4)\n")
    if not collisions:
        lines.append("_no cross-file collisions detected_\n")
    else:
        lines.append("| Sev | Noun | # files | files |")
        lines.append("|---|---|---:|---|")
        for c in collisions[:40]:
            lines.append(f"| {c['severity']} | {c['noun']} | {len(c['files'])} | {', '.join(c['files'])} |")
        if len(collisions) > 40:
            lines.append(f"\n_…{len(collisions)-40} more_\n")
    lines.append("")
    lines.append("## Reserved-noun violations (R4)\n")
    if not reserved_v:
        lines.append("_no reserved-noun violations_\n")
    else:
        lines.append("| Reserved noun | File | Scenario | Trigger snippet |")
        lines.append("|---|---|---|---|")
        for r in reserved_v:
            lines.append(f"| {r['noun']} | `{r['file']}` | {r['id']} | {r['trigger']} |")
    out_path.write_text("\n".join(lines), encoding="utf-8")

def main():
    kdir = Path(os.environ.get("KNOWLEDGE_DIR", str(KDIR_DEFAULT)))
    files = [parse_file(p) for p in sorted(kdir.glob("*.md"))]
    collisions = find_collisions(files)
    reserved_v = reserved_violations(files)
    total_scenarios = sum(len(f["scenarios"]) for f in files)
    total_advice = sum(f["advice_style"] for f in files)
    type_totals = {}
    for f in files:
        for t, n in f.get("types", {}).items():
            type_totals[t] = type_totals.get(t, 0) + n
    typed = sum(type_totals.values())
    type_str = " ".join(f"{k}={v}" for k, v in sorted(type_totals.items()))
    # paths resolved relative to this script's parent (the example dir)
    here = Path(__file__).resolve().parent.parent
    md = here / "../../docs/superpowers/specs/v2-kb-index.md"
    js = here / "../../docs/superpowers/specs/v2-kb-index.json"
    md.parent.mkdir(parents=True, exist_ok=True)
    write_md(files, collisions, reserved_v, total_scenarios, total_advice, md.resolve())
    js.resolve().write_text(json.dumps({"files":files,"collisions":collisions,"reserved_violations":reserved_v,
                                        "total_scenarios":total_scenarios,"total_advice":total_advice,
                                        "file_count":len(files),"file_cap":30,"type_totals":type_totals,"typed":typed}, ensure_ascii=False, indent=2),
                            encoding="utf-8")
    print(f"wrote {md.resolve()}")
    print(f"wrote {js.resolve()}")
    print(f"files={len(files)}/30  scenarios={total_scenarios}  advice-style={total_advice}  "
          f"collisions={len(collisions)}  reserved-violations={len(reserved_v)}\n"
          f"types[{typed}/{total_scenarios}]: {type_str}")
    if "--check-collisions" in sys.argv:
        bad = [c for c in collisions if c["severity"] == "[C]"] + reserved_v
        if bad:
            print(f"FAIL: {len(bad)} hard issues"); sys.exit(1)
    sys.exit(0)

if __name__ == "__main__":
    main()
