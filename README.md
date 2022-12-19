# LaTex 

LaTex template, example and class files to be used as a submodule.

## This repository
This repository contains useful files to avoid starting a LaTex document from
scratch.


## How to use this repository?
This repository aims at gathering LaTex files in a mutable way.
The idea is to clone it in an empty folder and to include its files directly in
the main LaTex document. 
See Initialization part for more details.
This way, modifications and improvements will stay from a project to another.
One can also use this repository as a git submodule to include it in a larger
repository.
Don't hesitate to fork and personalize it.

## Contents
This repository contains useful LaTex files that lie in three different
categories:
- addons (packages and shortcuts) sorted by domain (math, cryptography, etc)
- class and document files to be used depending on the type of document (paper,
  homework, beamer, etc)
- lots of example files to relief the Overleaf documentation's servers and save
  some time.

## Initialization
To start a new LaTex document with this repository, clone it in an empty folder.
Then copy what's inside the `root` directory in the parent directory (caution,
there is a `.gitignore` file).
One can also run `make init`.
Everything is setup.
