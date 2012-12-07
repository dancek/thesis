LATEXOPTS=""

all: xelatex clean

pdflatex: clean
	pdflatex ${LATEXOPTS} thesis
	bibtex thesis
	pdflatex ${LATEXOPTS} thesis
	pdflatex ${LATEXOPTS} thesis

xelatex ${LATEXOPTS}: clean
	xelatex ${LATEXOPTS} thesis
	bibtex thesis
	xelatex ${LATEXOPTS} thesis
	xelatex ${LATEXOPTS} thesis

clean:
	rm -f *.4ct *.4tc *.aux *.idv *.lg *.log *.bbl *.blg *.dvi *.out *.tmp *.toc *.xref

realclean: clean
	rm -f thesis.pdf thesis.css thesis*.html thesis.txt

# helpers
edit:
	gvim *.tex *.bib Makefile

view:
	evince thesis.pdf &

work:
	git pull
	make edit
	make
	make view
