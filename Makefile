all: xelatex clean

pdflatex: clean
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

xelatex: clean
	xelatex thesis
	bibtex thesis
	xelatex thesis
	xelatex thesis

clean:
	rm -f *.4ct *.4tc *.aux *.idv *.lg *.log *.bbl *.blg *.dvi *.out *.tmp *.toc *.xref

realclean: clean
	rm -f thesis.pdf thesis.css thesis*.html thesis.txt

# helpers
edit:
	gvim *.tex *.bib Makefile

view:
	evince thesis.pdf &
