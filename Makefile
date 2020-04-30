all: open

open: main.pdf
	open $<

main.pdf: main.bbl
	pdflatex main.tex

main.bbl: main.bcf
	biber main

SOURCES = $(wildcard content/*.tex) $(wildcard content/chapter/*.tex)
main.bcf: main.tex  $(SOURCES)
	pdflatex main.tex
