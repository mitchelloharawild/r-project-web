R-publications.html: Makefile R.bib R-publications-head.html
	@cat R-publications-head.html > $@
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" R.bib
	@cat R.html >> $@
	@echo "</body></html>" >> $@

clean:
	rm -f R-bib.html R_bib.html R-publications.html R.html
