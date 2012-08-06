all: pdflatex clean

pdflatex:
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

clean:
	rm -f thesis.aux thesis.log thesis.bbl thesis.blg thesis.dvi thesis.toc

realclean: clean
	rm -f thesis.pdf
