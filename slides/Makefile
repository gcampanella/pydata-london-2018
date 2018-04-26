
all: pydata_london_2018.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex" -use-make $<

clean:
	latexmk -CA

