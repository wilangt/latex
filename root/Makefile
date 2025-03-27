CRYPTOBIB=cryptobib
JOB=document
FLAGS = -halt-on-error -file-line-error
TEX = latexmk -pdf -jobname=$(JOB) -pdflatex="pdflatex $(FLAGS)" -use-make
DOC=main

.PHONY: all $(DOC) 

all: $(JOB).pdf

$(JOB).pdf: $(DOC).tex  **/*.tex submodule_latex $(CRYPTOBIB)
	$(TEX) $<

# beamer: beamer.tex **/*.tex submodule_latex $(CRYPTOBIB)
#		latexmk -pdf -jobname=beamer -pdflatex="pdflatex $(FLAGS)" -use-make beamer.tex
#
#	beamer.tex:
#		cp latex/main-files/beamer.tex .
#		cp -r latex/root/slides .

pdflatex:  # if latexmk doesn't work
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex

bibtex:  # same with bibtex 
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	bibtex $(DOC) 
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex
	pdflatex -jobname=$(JOB) $(FLAGS) $(DOC).tex

cryptobib: # submodule_latex # to download cryptobib (dependency useless now)
	( ls cryptobib || echo "Downloading cryptobib" && git submodule add "https://github.com/cryptobib/export" cryptobib )

submodule_latex:  # Check if latex directory is empty
	@if [ -z "$$(ls -A latex)" ]; then (echo "Downloading latex submodule" && git submodule init && git submodule update); fi

clean:
	latexmk -c -bibtex -jobname=$(JOB)

mrproper: clean
	latexmk -C -bibtex -jobname=$(JOB)
