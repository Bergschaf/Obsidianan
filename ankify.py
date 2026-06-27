#!/usr/bin/env python3

import re
import subprocess
import sys
from pathlib import Path


DECK_NAME = "Obsidianan"


CALLOUT_RE = re.compile(
    r"^>\s*\[!(?P<kind>[^\]]+)\]\s*(?P<title>.*)$"
)


def typst_escape(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')


def typst_to_typst_math(text: str) -> str:
    """
    Normalize common Obsidian math shorthands to proper Typst syntax.

    Extend this for your personal notation.
    """

    replacements = [
        (r"\bRR\b", "math.bb(\"R\")"),
        (r"\bNN\b", "math.bb(\"N\")"),
        (r"\bZZ\b", "math.bb(\"Z\")"),
        (r"\bdots\.v\b", "dots.v"),
        (r"\bsubset\b", "subset"),
        (r"\bforall\b", "forall"),
        (r"\bquad\b", "quad"),
        (r"\bnabla\b", "nabla"),
        (r"\bpartial\b", "diff"),

    ]

    #for pat, repl in replacements:
    ##    text = re.sub(pat, repl, text)
    text =     text.replace("$$"," $ ")

    return text


def extract_callouts(path: Path):
    lines = path.read_text(encoding="utf-8").splitlines()

    i = 0
    while i < len(lines):
        m = CALLOUT_RE.match(lines[i])

        if not m:
            i += 1
            continue

        kind = m.group("kind").strip()
        title = m.group("title").strip()

        body = []

        i += 1

        while i < len(lines):
            line = lines[i]

            if line.startswith("> "):
                body.append(line[2:])
                i += 1
                continue

            if line.startswith(">"):
                body.append(line[1:])
                i += 1
                continue

            if line.strip().startswith("#"):
                break
            if line.strip() == "":
                break
            else:
                body.append(line)
                i += 1
                continue

        yield {
            "kind": kind,
            "title": title,
            "body": "\n".join(body).strip(),
            "source": str(path),
        }


def generate_typ(cards):
    out = []

    out.append(
        '#import "@preview/ankify:0.1.0": note, configure'
    )

    out.append("")
    out.append(
        f'#configure(defaults: (deck: "{DECK_NAME}"))'
    )
    out.append("")

    for idx, card in enumerate(cards):
        note_id = f"card-{idx}"

        front = f"{card['kind']}: {card['title']}"
        back = card["body"]

        back = typst_to_typst_math(back)

        out.append(
            f'''#note(
  "{note_id}",
  data: (
    Front: "{typst_escape(front)}",
    Back: [{back}],
  ),
)
'''
        )

    return "\n".join(out)


def main():
    if len(sys.argv) != 2:
        print("usage: export.py <vault-directory>")
        sys.exit(1)

    root = Path(sys.argv[1])

    cards = []

    for md in root.rglob("*.md"):
        cards.extend(extract_callouts(md))

    print(f"Found {len(cards)} cards.")

    typ_file = root / "anki_export.typ"
    typ_file.write_text(generate_typ(cards), encoding="utf-8")

    print(f"Wrote {typ_file}")

    subprocess.run(
        ["ankify", str(typ_file), "--cache-file","~/Obsidianan/anki_cache"],
        check=True,
    )


if __name__ == "__main__":
    main()
