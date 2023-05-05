clean:
	@$ -find . -type f \( -name '*.aux' -o -name '*.bbl' -o -name '*.blg' -o -name '*.idx' -o -name '*.ilg' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.out.ps' -o -name '*.toc' -o -name '*.fdb_latexmk' -o -name '*.fls' -o -name '*.ind' -o -name '*.gz' \) ! \( -name 'pack-37388fcf8b4d202e9e5d000136a506f1131c3bfb.idx' -o -name 'pack-5f6fa9d2833860cb35677733f9f306f570d403b2.idx' \) -exec rm {} +
	@$ -rm Abstract.pdf Resumo.pdf

genc: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex ; $(MAKE) clean

gen: ; pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex