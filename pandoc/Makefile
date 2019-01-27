MAKEFLAGS += --silent

build:
	docker run --rm -v `pwd`:/tmp janbaer/texlive-pandoc  \
	  pandoc -f markdown -t beamer -H header.tex          \
	         --lua-filter=filters/include.lua             \
	         --lua-filter=filters/graphviz.lua            \
	         pandoc.md -o pandoc.pdf

watch:
	watchexec --exts md make

view:
	zathura pandoc.pdf &

