#!/bin/bash
# Compiles CV.tex to CV.pdf using the TinyTeX install managed by Quarto
# (`quarto install tinytex`). Run this after editing CV.tex, then
# `quarto render` (or `quarto preview`) at the project root to publish the
# updated PDF at /CV/CV.pdf on the website.
set -e
cd "$(dirname "$0")"
export PATH="$HOME/Library/TinyTeX/bin/universal-darwin:$PATH"
xelatex -interaction=nonstopmode -halt-on-error CV.tex
xelatex -interaction=nonstopmode -halt-on-error CV.tex
echo "Done: CV/CV.pdf"
