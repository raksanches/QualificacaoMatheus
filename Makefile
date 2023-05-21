clean:
	@$ -find . -type f \( -name '*.aux' -o -name '*.bbl' -o -name '*.blg' -o -name '*.idx' -o -name '*.ilg' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.out.ps' -o -name '*.toc' -o -name '*.fdb_latexmk' -o -name '*.fls' -o -name '*.ind' -o -name '*.gz' \) ! \( -name 'pack-a37b4e2952707dfcb5e6b821c8352832ad8a3ab1.idx' -o -name 'pack-37388fcf8b4d202e9e5d000136a506f1131c3bfb.idx' \) -exec rm {} +
	@$ -rm Abstract.pdf Resumo.pdf

genc: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex ; $(MAKE) clean

gen: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex