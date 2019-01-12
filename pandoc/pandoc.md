---
title: From Markdown to PDF
subtitle: Create presentations and letters with Markdown and Pandoc
author: Jan Baer
date: 10.01.2019
theme: Madrid
colortheme: dolphin
font-family: noto-sans
linkcolor: blue
classoption: "10pt"
---

# Slide 1

This is the content and [here](pandoc.md) is the source code.

# Slide 2

## Subsection

- A list is easy
  - A nested list
- Back to the roots

# Slide 3

It's possible to use some \LaTeX\hspace{2pt}directly in your Markdown text.

You can use it also with defining a multi-column layout.

\colA{6cm}

* This is a list
* Second item
* third item

\colB{6cm}

* Second list on the right side

\colEnd

# Slide 4

Show an image is very easy

```markdown
![Latex](images/latex.png){width=5cm}
```

![Latex](images/latex.png){width=5cm}

# Preconditions

- Install **Texlive**
- Install **Pandoc**
- Or use Docker image **[janbaer/texlive-pandoc](https://cloud.docker.com/u/janbaer/repository/docker/janbaer/texlive-pandoc)**

# How to use

- Create a presentation

```cmake
pandoc -f markdown -t beamer -H header.tex \
  presentation.md -o presentation.pdf
```

- Create a letter


```cmake
pandoc -f markdown -t latex letter.md \
  -template=scrlttr2.latex -o letter.pdf
```

- When use Docker image

```cmake
docker run --rm -v `pwd`:/tmp \
   janbaer/texlive-pandoc pandoc...
```

# Links

* [Pandoc](http://pandoc.org/)
* [Latex Cheatsheet](http://www.starkerstart.uni-frankfurt.de/61673435/latexsheet.pdf)
* [The BEAMER class](http://tug.ctan.org/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf)
* [Beamer-Theme-Matrix](https://hartwork.org/beamer-theme-matrix/)
* [More BEAMER themes](https://bitbucket.org/marczellm/beamerports)
* [Ultimate BEAMER theme list](https://github.com/martinbjeldbak/ultimate-beamer-theme-list)
* [From Markdown to Presentation with Pandoc](https://github.com/shd101wyy/markdown-preview-enhanced/blob/master/docs/pandoc-beamer.md)
* [Folien mit Pandoc erstellen](https://kofler.info/folien-mit-pandoc-erstellen/)

# Alternatives

* [AsciiDoc](http://asciidoc.org/)
* [R Markdown](https://rmarkdown.rstudio.com/)
