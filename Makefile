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

draft: $(DOC).tex
	pdflatex --jobname $(DOC)-Draft "\def\isdraft{1} \input{$(DOC).tex}"
	bibtex $(DOC)-Draft.aux
	pdflatex --jobname $(DOC)-Draft "\def\isdraft{1} \input{$(DOC).tex}"
	pdflatex --jobname $(DOC)-Draft "\def\isdraft{1} \input{$(DOC).tex}"

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

draftnice: draft
	$(RM) $(DOC)-Draft.aux $(DOC)-Draft.bbl $(DOC)-Draft.log
	$(RM) $(DOC)-Draft.toc $(DOC)-Draft.lot $(DOC)-Draft.lof
	$(RM) $(DOC)-Draft.ttt $(DOC)-Draft.fff $(DOC)-Draft.bbl
	$(RM) $(DOC)-Draft.blg $(DOC)-Draft.out
	$(RM) $(DOC)-Draft.dvi $(DOC)-Draft-*.dvi
	$(RM) $(DOC)-Draft.ps $(DOC)-Draft-*.ps
	$(RM) Intro/*.aux 
	$(RM) Chapters/chapter*.aux 
	$(RM) Appendices/appendix*.aux 
	$(RM) *~
	$(RM) *backup
	$(RM) texput.log core

clean:
	$(RM) $(DOC).aux $(DOC).log $(DOC).out $(DOC)-Draft.aux $(DOC)-Draft.log $(DOC)-Draft.out
	$(RM) $(DOC).toc $(DOC).lot $(DOC).lof $(DOC)-Draft.toc $(DOC)-Draft.lot $(DOC)-Draft.lof
	$(RM) $(DOC).ttt $(DOC).fff $(DOC).bbl $(DOC)-Draft.ttt $(DOC)-Draft.fff $(DOC)-Draft.bbl
	$(RM) $(DOC).blg $(DOC).out $(DOC)-Draft.blg $(DOC)-Draft.out
	$(RM) $(DOC).dvi $(DOC).log $(DOC)-Draft.dvi $(DOC)-Draft.log
	$(RM) $(DOC).ps  $(DOC)-*.ps $(DOC)-Draft.ps $(DOC)-Draft-*.ps
	$(RM) $(DOC).pdf $(DOC)-Draft.pdf
	$(RM) Intro/*.aux 
	$(RM) Chapters/chapter*.aux 
	$(RM) Appendices/appendix*.aux 
	$(RM) *~
	$(RM) *backup
	$(RM) texput.log core

