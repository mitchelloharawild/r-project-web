RNEWS.BIB = Rnews.bib

Rnewsbib.html: $(RNEWS.BIB) Rnewsbib-head.html
	@cat Rnewsbib-head.html > $@
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 Rnews.bib
	@cat Rnews.html >> $@
	@echo "</body></html>" >> $@

clean:
	rm -f Rnews-bib.html Rnews.html Rnewsbib.html
