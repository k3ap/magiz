latex-cmd := lualatex --shell-escape -interaction batchmode

all: magiz.pdf

magiz.pdf: magiz.tex analiza/*.tex
	$(latex-cmd) magiz.tex

.PHONY: clean
clean:
	rm -f *.log *.aux *.out *.gnuplot *table *.toc
