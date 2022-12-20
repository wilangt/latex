all: paper

base:
	cp -n root/Makefile ../
	cp -n root/.gitignore ../

paper: base 
	cp -rn root/body ../
	cp -n examples/main/paper.tex ../main.tex

document: base 
	cp -rn root/body ../
	cp -n examples/main/document.tex ../main.tex

beamer: base 
	cp -rn root/slides ../
	cp -n examples/main/beamer.tex ../main.tex
