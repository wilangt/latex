all: paper

base:
	cp -n root/Makefile ../
	cp -n root/.gitignore ../
	cp -n root/headers.tex ../

paper: base 
	cp -rn root/body ../
	cp -n main-files/paper.tex ../main.tex

document: base 
	cp -rn root/body ../
	cp -n main-files/document.tex ../main.tex
	tail -n +2 ../Makefile > ../Makefile.tmp && mv ../Makefile.tmp ../Makefile # To remove cryptobib dependency

beamer: base 
	cp -rn root/slides ../
	cp -n main-files/beamer.tex ../main.tex
