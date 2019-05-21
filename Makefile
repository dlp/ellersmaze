

PS2PDF := ps2pdf -dNOSAFER -sPAPERSIZE=a4 -dEmbedAllFonts=true

.PHONY: all clean

all:
	@echo "Run 'make filename.pdf' to deploy"

%.show: %.ps
	gs $<

%.pdf: %.ps
	$(PS2PDF) $< $@

clean:
	rm -f *.pdf
