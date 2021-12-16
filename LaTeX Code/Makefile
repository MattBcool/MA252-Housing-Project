PROJECT= scarp20
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
		$(BUILDTEX)
		$(BIBTEX) $(PROJECT)
		$(BUILDTEX)
		$(BUILDTEX)
		#dvipdf $(PROJECT).dvi

clean-all:
		rm -f ./fig/*eps-converted-to.pdf *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~
