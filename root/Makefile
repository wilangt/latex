CRYPTOBIB=cryptobib
JOB=document
FLAGS = -halt-on-error -file-line-error
TEX = latexmk -pdf -jobname=$(JOB) -pdflatex="pdflatex $(FLAGS)" -use-make
DOC=main

.PHONY: all $(DOC) 

all: $(JOB).pdf

$(JOB).pdf: $(DOC).tex  **/*.tex $(CRYPTOBIB)
	$(TEX) $<

pdflatex:  # if latexmk doesn't work
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex

bibtex:  # same with bibtex 
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	bibtex $(DOC) 
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex

cryptobib:  # to download cryptobib
	( cd latex/bib/cryptobib && git submodule init && git submodule update )

submodule_latex:  # Check if latex directory is empty
	@if [ -z "$$(ls -A latex)" ]; \
		then (echo "Downloading cryptobib" && git submodule init && git submodule update); \
		else echo "WARNING THIS MIGHT DELETE UNCOMMITED CHANGES IN SUBMODULE"; fi

clean:
	latexmk -c -bibtex -jobname=$(JOB)

mrproper: clean
	latexmk -C -bibtex -jobname=$(JOB)
