R-publications.html: R.bib R-publications-head.html
	@cat R-publications-head.html > $@
	@bibtex2html -u -nodoc -rawurl -f publisherurl R.bib
	@cat R.html >> $@
	@echo "</body></html>" >> $@

clean:
	rm -f R-bib.html R-publications.html R.html
