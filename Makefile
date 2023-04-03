clean:
	@$ -find . -type f \( -name '*.aux' -o -name '*.bbl' -o -name '*.blg' -o -name '*.idx' -o -name '*.ilg' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.out.ps' -o -name '*.toc' -o -name '*.fdb_latexmk' -o -name '*.fls' -o -name '*.ind' -o -name '*.gz' \) ! -name 'pack-37388fcf8b4d202e9e5d000136a506f1131c3bfb.idx' -exec rm {} +
	@$ -rm Abstract.pdf Resumo.pdf

gen: ; pdflatex _ArquivoPrincipal.tex ; bibtex _ArquivoPrincipal.aux ; pdflatex _ArquivoPrincipal.tex ; pdflatex _ArquivoPrincipal.tex

cgen: clean ; pdflatex _ArquivoPrincipal.tex ; bibtex _ArquivoPrincipal.aux ; pdflatex _ArquivoPrincipal.tex ; pdflatex _ArquivoPrincipal.tex