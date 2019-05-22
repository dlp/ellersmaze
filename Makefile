
SHELL := /bin/bash

PS2PDF := ps2pdf -dNOSAFER -sPAPERSIZE=a4 -dEmbedAllFonts=true
DEFINES := -Dseed=$${SEED:-$$RANDOM}

.PHONY: all clean

all:
	@echo "Run 'make filename.pdf' to deploy"

%.show: %.ps
	gs $(DEFINES) $<

%.pdf: %.ps
	$(PS2PDF) $(DEFINES) $< $@

clean:
	rm -f *.pdf
