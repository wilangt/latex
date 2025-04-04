all: paper

base:
	cp -n root/Makefile ../
	cp -i root/.gitignore ../
	cp -n root/headers.tex ../
	cp -rn root/body ../
	rm -rf root/body

paper: base 
	cp -n main-files/paper.tex ../main.tex && rm -rf main-files

document: base 
	cp -n main-files/document.tex ../main.tex && rm -rf main-files
	tail -n +2 ../Makefile > ../Makefile.tmp && mv ../Makefile.tmp ../Makefile # To remove cryptobib dependency

beamer: base 
	cp -n main-files/beamer.tex ../main.tex && rm -rf main-files
