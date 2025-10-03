rm -rf build/
latexmk -xelatex -synctex=1 -file-line-error -interaction=nonstopmode -outdir=build review_response.tex
