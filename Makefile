all:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex


quick:
	pdflatex thesis.tex

clean:
	rm -f *.blg *.bbl *.log *.aux
