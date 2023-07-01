all: paper

base:
	cp -n root/Makefile ../
	cp -n root/.gitignore ../

paper: base 
	cp -rn root/body ../
	cp -n main-files/paper.tex ../main.tex

document: base 
	cp -rn root/body ../
	cp -n main-files/document.tex ../main.tex

beamer: base 
	cp -rn root/slides ../
	cp -n main-files/beamer.tex ../main.tex
