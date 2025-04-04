all: paper

base:
	rm -rf ../.submodule
	cp -n root/Makefile ../
	cp -i root/.gitignore ../
	cp -n root/headers.tex ../
	cp -rn root/body ../

paper: base 
	cp -n main-files/paper.tex ../main.tex 
	(cd ../ && rm -rf latex)

document: base 
	cp -n main-files/document.tex ../main.tex && rm -rf main-files
	tail -n +2 ../Makefile > ../Makefile.tmp 
	(cd ../ && rm -rf latex)

beamer: base 
	cp -n main-files/beamer.tex ../main.tex 
	(cd ../ && rm -rf latex)
