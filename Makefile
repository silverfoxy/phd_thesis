all:
	pdflatex -shell-escape thesis.tex
	bibtex thesis
	pdflatex -shell-escape thesis.tex
	pdflatex -shell-escape thesis.tex


quick:
	pdflatex -shell-escape thesis.tex

clean:
	rm -f *.blg *.bbl *.log *.aux
