TEX = latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -file-line-error" -use-make
DOC = main

.PHONY: all $(DOC) 

all: $(DOC) 

$(DOC): $(DOC).pdf  # cryptobib

%.pdf: %.tex *.tex */*.tex */*/*.tex */*/*/*.tex 
	$(TEX) $<

pdflatex: # if latexmk doesn't work
	pdflatex $(DOC).tex
	bibtex $(DOC) 
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

cryptobib: latex/bib/cryptobib/crypto.bib  # to download cryptobib
	( cd latex/bib/cryptobib && git pull origin master )

clean:
	latexmk -c -bibtex

mrproper: clean
	latexmk -C -bibtex
