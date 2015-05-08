COMP = pdflatex
READ = evince
NAME = main


$(NAME).pdf: $(NAME).tex  Chapters/* Appendices/* Figures/* Thesis.cls unswshortcuts.sty Bibliography.bib
	$(COMP) $<
	bibtex $(NAME).aux
	$(COMP) $<
	$(COMP) $<


read: $(NAME).pdf
	$(READ) $<

clean:
	rm -f *.log *.aux *.lot *.lof *.toc *~ *.out

tea:   
	@echo "Make it yourself!"
