################################ MACROS ################################
#
# DOC: the document
# FIG: directory for figures
# BIB: bibliography database

DOC = PhDSwinTemplate


####

all: $(DOC).tex
	pdflatex $(DOC).tex
	bibtex $(DOC).aux
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

nice: all
	$(RM) $(DOC).aux $(DOC).bbl $(DOC).log
	$(RM) $(DOC).toc $(DOC).lot $(DOC).lof
	$(RM) $(DOC).ttt $(DOC).fff $(DOC).bbl
	$(RM) $(DOC).blg $(DOC).out
	$(RM) $(DOC).dvi $(DOC)-*.dvi
	$(RM) $(DOC).ps $(DOC)-*.ps
	$(RM) Intro/*.aux 
	$(RM) Chapters/chapter*.aux 
	$(RM) Appendices/appendix*.aux 
	$(RM) *~
	$(RM) *backup
	$(RM) texput.log core

clean:
	$(RM) $(DOC).aux $(DOC).log $(DOC).out
	$(RM) $(DOC).toc $(DOC).lot $(DOC).lof
	$(RM) $(DOC).ttt $(DOC).fff $(DOC).bbl
	$(RM) $(DOC).blg $(DOC).out
	$(RM) $(DOC).dvi $(DOC).log
	$(RM) $(DOC).ps $(DOC)-*.ps
	$(RM) $(DOC).pdf
	$(RM) Intro/*.aux 
	$(RM) Chapters/chapter*.aux 
	$(RM) Appendices/appendix*.aux 
	$(RM) *~
	$(RM) *backup
	$(RM) texput.log core

