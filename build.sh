#!/usr/bin/env bash
# Pi2 final report build helper
#   ./build.sh              -> build main.pdf
#   ./build.sh submission   -> build + copy to Zaman_Leigh_Pi2_Report.pdf
#   ./build.sh clean        -> remove build artifacts (keeps PDFs)
#   ./build.sh distclean    -> remove build artifacts and PDFs
set -euo pipefail
cd "$(dirname "$0")"

SUBMISSION="Zaman_Leigh_Pi2_Report.pdf"

case "${1:-build}" in
  build)
    latexmk -pdf -interaction=nonstopmode main.tex
    ;;
  submission)
    latexmk -pdf -interaction=nonstopmode main.tex
    cp main.pdf "$SUBMISSION"
    echo "Wrote $SUBMISSION"
    ;;
  clean)
    latexmk -c
    ;;
  distclean)
    latexmk -C
    rm -f "$SUBMISSION"
    ;;
  *)
    echo "usage: $0 [build|submission|clean|distclean]" >&2
    exit 1
    ;;
esac
