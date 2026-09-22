# Every cvs/<name>.tex is built into pdf/<name>.pdf; aux files go to build/.
CVS  := $(patsubst cvs/%.tex,pdf/%.pdf,$(wildcard cvs/*.tex))
DEPS := $(wildcard common/* sections/*.tex images/*)
BUILD := build

# latexmk runs from the repo root, so sections/ and images/ resolve as is;
# common/ is added to the TeX search path for the style, header and contacts.
export TEXINPUTS := common:

.PHONY: all clean
all: $(CVS)

pdf/%.pdf: cvs/%.tex $(DEPS)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD) $<
	@mkdir -p pdf
	cp $(BUILD)/$*.pdf $@

clean:
	rm -rf $(BUILD)
