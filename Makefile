latex-cmd := lualatex --shell-escape -interaction batchmode

default: magiz.pdf

all: magiz.pdf

magiz.pdf: magiz.tex zbt-content
	$(latex-cmd) magiz.tex

zbt-content: magiz-main.tex analiza/*.tex
	touch zbt-content

.PHONY: clean
clean:
	rm -f *.log *.aux *.out *.gnuplot *table *.toc
