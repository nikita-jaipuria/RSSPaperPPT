.PHONY:	all clean

OUTFILES	= ACL_Beamer_Template.pdf
all: $(OUTFILES)

%.pdf: %.tex
	pdflatex $<
	bibtex $*.aux
	pdflatex $<
	pdflatex $<

clean:
	-rm -f *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc $(OUTFILES)
