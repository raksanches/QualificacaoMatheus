clean:
	@$ -find . -type f \( -name '*.aux' -o -name '*.bbl' -o -name '*.blg' -o -name '*.ilg' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.out.ps' -o -name '*.toc' -o -name '*.fdb_latexmk' -o -name '*.fls' -o -name '*.ind' -o -name '*.gz' \) -exec rm {} +
	@$ -rm Abstract.pdf Resumo.pdf

genc: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex ; $(MAKE) clean

gen: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex