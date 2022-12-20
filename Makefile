all: paper

root:
	cp -rn root/* ../
	cp -n root/.gitignore ../

paper: root
	cp -n examples/main/paper.tex ../main.tex
