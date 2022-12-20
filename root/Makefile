FLAGS = -halt-on-error -file-line-error
TEX = latexmk -pdf -pdflatex="pdflatex $(FLAGS)" -use-make
DOC = main

.PHONY: all $(DOC) 

all: $(DOC) 

$(DOC): $(DOC).pdf  # cryptobib

%.pdf: %.tex *.tex */*.tex */*/*.tex */*/*/*.tex 
	$(TEX) $<

pdflatex:  # if latexmk doesn't work
	pdflatex $(FLAGS) $(DOC).tex
	pdflatex $(FLAGS) $(DOC).tex

bibtex:  # same with bibtex 
	pdflatex $(FLAGS) $(DOC).tex
	bibtex $(DOC) 
	pdflatex $(FLAGS) $(DOC).tex
	pdflatex $(FLAGS) $(DOC).tex

cryptobib:  # to download cryptobib
	( cd latex/bib/cryptobib && git submodule init && git submodule update )

clean:
	latexmk -c -bibtex

mrproper: clean
	latexmk -C -bibtex
