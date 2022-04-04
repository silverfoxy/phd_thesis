all:
	pdflatex thesis.tex
	#bibtex ref
	pdflatex thesis.tex
	pdflatex thesis.tex


quick:
	pdflatex thesis.tex

clean:
	rm -f *.blg *.bbl *.log *.aux
