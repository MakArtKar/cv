CVS   := cv_ml cv_edu
BUILD := build
SRCS  := TLCresume.sty _header.tex contacts.tex $(wildcard sections/*.tex images/*)

.PHONY: all clean
all: $(CVS:=.pdf)

%.pdf: %.tex $(SRCS)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD) $<
	cp $(BUILD)/$@ $@

clean:
	rm -rf $(BUILD)
