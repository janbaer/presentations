build:
	docker run --rm -v `pwd`:/tmp janbaer/texlive-pandoc -f markdown -t beamer -H header.tex pandoc.md -o pandoc.pdf

watch:
	watchexec --exts md make

view:
	zathura pandoc.pdf &

