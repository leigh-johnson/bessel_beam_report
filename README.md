# Pi2 Final Report

PRL-style report (REVTeX 4.2), per the Pi2 Report Guide. Target length: ~5 pages in PRL format.

## Layout

- `main.tex` — the report (title block, abstract, sections I–IV per the guide, with commented examples for figures, tables, equations, and citations)
- `references.bib` — BibTeX database (contains one placeholder entry to replace)
- `figures/` — put figure files here (`\graphicspath` already points at it)
- `build.sh` — local build helper

## Building

**Overleaf (recommended by the guide):** create a new project and upload this folder's contents; it compiles as-is with the default pdfLaTeX compiler.

**Locally:** requires a TeX distribution with REVTeX 4.2 (TeX Live: `texlive-publishers`; MacTeX full install includes it).

```sh
./build.sh              # builds main.pdf
./build.sh submission   # copies main.pdf to Zaman_Leigh_Pi2_Report.pdf
./build.sh clean        # removes build artifacts
```

(First time: `chmod +x build.sh`.)

Or directly: `latexmk -pdf main.tex`

## Drafting tip

While writing, swap the `reprint` option in `main.tex` for `preprint` to get a roomier single-column layout, then switch back to `reprint` to check the real PRL length.

## Submission

Per the guide: export the PDF named `Zaman_Leigh_Pi2_Report.pdf` and upload it to the Pi2 Drive folder by the due date. The Drive folder becomes **publicly available** — check with PI/mentor about any material that shouldn't be public.
