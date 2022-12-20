all: paper

base:
	cp -rn root/* ../
	cp -n root/.gitignore ../

paper: base 
	cp -n examples/main/paper.tex ../main.tex
