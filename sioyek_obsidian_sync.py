#!/usr/bin/env python3

import sqlite3
import hashlib
from pathlib import Path
from collections import defaultdict
import argparse
import textwrap
import fitz  # PyMuPDF


TYPE_MAP = {
    'd': 'Definitions',
    'l': 'Lemmas',
    'w': 'Important',
    'h': 'Highlights',
}

TAG_MAP = {
    'd': '#definition',
    'l': '#lemma',
    'w': '#important',
    'h': '#highlight',
}


class SioyekSync:

    def __init__(self, local_db, shared_db, vault_pdf_dir):
        self.local_db = Path(local_db)
        self.shared_db = Path(shared_db)
        self.vault_pdf_dir = Path(vault_pdf_dir)

        self.local_conn = sqlite3.connect(self.local_db)
        self.shared_conn = sqlite3.connect(self.shared_db)

    def get_document_mapping(self):
        """
        Maps Sioyek MD5 hashes to actual PDF paths.
        """

        cur = self.local_conn.cursor()

        cur.execute(
            "SELECT path, hash FROM document_hash"
        )

        mapping = {}

        for path, md5hash in cur.fetchall():
            mapping[md5hash] = path

        return mapping

    def estimate_page(self, pdf_path, absolute_y):
        """
        Convert Sioyek absolute Y coordinate into page number.

        Sioyek stores highlights in absolute document space.
        We estimate the page by summing page heights.
        """

        try:
            doc = fitz.open(pdf_path)
        except Exception:
            return 1

        cumulative = 0

        for i, page in enumerate(doc):
            rect = page.rect
            cumulative += rect.height

            if absolute_y <= cumulative:
                return i + 1

        return len(doc)

    def fetch_highlights(self):

        """
        Fetch highlights from Sioyek shared database.
        """


        cur = self.shared_conn.cursor()

        cur.execute(
            """
            SELECT
                document_path,
                desc,
                type,
                begin_y,
                end_y
            FROM highlights
            ORDER BY document_path, begin_y
            """
        )

        return cur.fetchall()

    def extract_text_for_highlight(self, pdf_path, begin_y, end_y):
        """
        Extract actual highlighted text from the PDF.

        Sioyek stores geometric highlight information rather than
        reliable text payloads. We reconstruct text by intersecting
        page blocks with highlight regions.
        """

        try:
            doc = fitz.open(pdf_path)
        except Exception:
            return ""

        cumulative = 0

        for page in doc:

            rect = page.rect
            page_top = cumulative
            page_bottom = cumulative + rect.height

            if begin_y <= page_bottom and end_y >= page_top:

                local_begin = max(0, begin_y - page_top)
                local_end = min(rect.height, end_y - page_top)

                clip = fitz.Rect(
                    0,
                    local_begin,
                    rect.width,
                    local_end,
                )

                text = page.get_textbox(clip).strip()

                if text:
                    return text

            cumulative += rect.height

        return ""

    def build_markdown(self, pdf_path, highlights):

        pdf_name = Path(pdf_path).name
        stem = Path(pdf_path).stem

        grouped = defaultdict(list)

        for h in highlights:
            grouped[h['type']].append(h)

        lines = []

        lines.append(f"# {stem}")
        lines.append("")
        lines.append(f"PDF: [[{pdf_name}]]")
        lines.append("")

        for htype in ['d', 'l', 'w', 'h']:

            if htype not in grouped:
                continue

            section = TYPE_MAP.get(htype, htype)

            lines.append(f"## {section}")
            lines.append("")

            for idx, item in enumerate(grouped[htype], start=1):

                page = self.estimate_page(
                    pdf_path,
                    item['begin_y']
                )

                text = self.extract_text_for_highlight(
                    pdf_path,
                    item['begin_y'],
                    item['end_y'],
                )

                if not text:
                    text = item['desc'].strip().replace('\n', ' ')

                block_id = f"{htype}-{idx:03d}"

                color_callout = {
                    'd': 'note',
                    'l': 'abstract',
                    'w': 'warning',
                    'h': 'quote',
                }.get(htype, 'quote')

                # PDF++ supports text-selection fragments using
                # #selection= syntax when the PDF text layer exists.
                #
                # Example:
                # [[paper.pdf#page=4&selection=Attention%20is%20all%20you%20need]]
                #
                selection_text = text.replace(' ', '%20')[:180]

                pdf_link = (
                    f"[[{pdf_name}#page={page}&selection={selection_text}]]"
                )

                lines.extend([
                    f"> [!{color_callout}] {TYPE_MAP[htype][:-1]}",
                    f"> {text}",
                    f"^{block_id}",
                    "",
                    f"- Link: {pdf_link}",
                    f"- Type: {TYPE_MAP[htype]}",
                    f"- Tags: {TAG_MAP[htype]}",
                    "",
                ])

        return "\n".join(lines)

    def sync(self):

        doc_mapping = self.get_document_mapping()
        raw_highlights = self.fetch_highlights()

        by_document = defaultdict(list)

        for doc_hash, desc, htype, begin_y, end_y in raw_highlights:

            pdf_path = doc_mapping.get(doc_hash)

            if not pdf_path:
                continue

            pdf_path = Path(pdf_path)

            if not pdf_path.exists():
                continue

            by_document[str(pdf_path)].append({
                'desc': desc,
                'type': htype,
                'begin_y': begin_y,
                'end_y': end_y,
            })

        for pdf_path, highlights in by_document.items():

            # Only sync PDFs that live inside the configured vault PDF directory.
            try:
                Path(pdf_path).resolve().relative_to(
                    self.vault_pdf_dir.resolve()
                )
            except Exception:
                continue

            pdf_path = Path(pdf_path)

            md_path = pdf_path.with_suffix('.md')

            markdown = self.build_markdown(
                pdf_path,
                highlights
            )

            md_path.write_text(markdown, encoding='utf-8')

            print(f"Updated: {md_path}")



def main():

    parser = argparse.ArgumentParser()

    parser.add_argument(
        '--local-db',
        required=True,
        help='Path to Sioyek local.db'
    )

    parser.add_argument(
        '--shared-db',
        required=True,
        help='Path to Sioyek shared.db'
    )

    parser.add_argument(
        '--vault-pdf-dir',
        required=True,
        help='Directory containing PDFs in Obsidian vault'
    )

    args = parser.parse_args()

    syncer = SioyekSync(
        args.local_db,
        args.shared_db,
        args.vault_pdf_dir,
    )

    syncer.sync()


if __name__ == '__main__':
    main()
