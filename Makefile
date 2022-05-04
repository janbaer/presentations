# ============ usage ==========================================================
#
# make TARGET=<folder>           Compiles the markdown file in the target folder
# make TARGET=<folder> view      View the pdf in the target folder
# make TARGET=<folder> touch     Touch the markdown in the target folder so that it can build again
# make TARGET=<folder> DURATION=5 present Runs pdfpc with the pdf and the optional passed duration in the target folder
#
# ============================================================================
MAKEFLAGS += --silent

DURATION=45

build:
ifeq ($(TARGET),)
	echo "Please pass the name of the TARGET folder where the markdown file is"; exit 1
else
	docker run --rm -v `pwd`/$(TARGET):/tmp/ janbaer/texlive-pandoc    \
		pandoc -f markdown -t beamer $(TARGET).md -o $(TARGET).pdf
endif

touch:
	touch `pwd`/$(TARGET)/*.md

watch:
	watchexec --exts md make build TARGET=$(TARGET)

view:
	evince ./$(TARGET)/$(TARGET).pdf &

present:
	pdfpc --duration=$(DURATION) --last-minutes=5 ./${TARGET}/$(TARGET).pdf
	[[ -r ./$(TARGET)/$(TARGET).pdfpc ]] && rm ./$(TARGET)/$(TARGET).pdfpc

present-both:
	pdfpc -w both --duration=$(DURATION) --last-minutes=5 ./${TARGET}/$(TARGET).pdf
	[[ -r ./$(TARGET)/$(TARGET).pdfpc ]] && rm ./$(TARGET)/$(TARGET).pdfpc

.PHONY: build view touch present present-both
