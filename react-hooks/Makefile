MAKEFLAGS += --silent

build:
	docker run --rm -v `pwd`:/tmp janbaer/texlive-pandoc  \
	  pandoc -f markdown -t beamer -H header.tex          \
	         react-hooks.md -o react-hooks.pdf

watch:
	watchexec --exts md make

view:
	zathura react-hooks.pdf &

