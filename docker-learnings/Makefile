# ============ usage ==========================================================
#
# make                  Compile all *.md files to PDFs
# make <filename>.pdf   Compile <filename>.md to a PDF
# make <filename>.tex   Generate the intermediate LaTeX for <filename>.md
#
# make watch            Watching md files for change and regenerates the pdfs
#
# make view             Compile $(TARGET).md to a PDF, then view it
# make again            Force everything to recompile
#
# make clean            Get rid of all generated files
#
# ============================================================================
MAKEFLAGS += --silent
TARGET=docker-learnings

all: $(patsubst %.md,%.pdf, $(wildcard *.md))

%.pdf: %.md
	docker run --rm -v `pwd`:/tmp janbaer/texlive-pandoc    \
	  pandoc -f markdown -t beamer --pdf-engine=xelatex     \
	         -o $@ $<

%.tex: %.md
	docker run --rm -v `pwd`:/tmp janbaer/texlive-pandoc    \
	  pandoc -f markdown -t beamer                          \
	         -o $@ $<

touch:
	touch *.md

again: touch all

watch:
	watchexec --exts md make

view:
	evince $(TARGET).pdf &

present:
	pdfpc --duration=25 --last-minutes=5 $(TARGET).pdf
	[[ -r $(TARGET).pdfpc ]] && rm $(TARGET).pdfpc

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb || true && rm -f *.pdf

.PHONY: all again touch clean view
