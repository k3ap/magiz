latex-cmd := lualatex --shell-escape -interaction batchmode

default: magiz-bz.pdf

all: magiz-bz.pdf magiz-nbz.pdf magiz-bnz.pdf magiz-nbnz.pdf

magiz-bz.pdf: magiz-bz.tex zbt-content
	$(latex-cmd) magiz-bz.tex

magiz-nbz.pdf: magiz-nbz.tex zbt-content
	$(latex-cmd) magiz-nbz.tex

magiz-bnz.pdf: magiz-bnz.tex zbt-content
	$(latex-cmd) magiz-bnz.tex

magiz-nbnz.pdf: magiz-nbnz.tex zbt-content
	$(latex-cmd) magiz-nbnz.tex

zbt-content: magiz.tex analiza/*.tex
	touch zbt-content

.PHONY: clean
clean:
	rm -f *.log *.aux *.out *.gnuplot *table *.toc
