all: R-publications.html R-books.html R-other.html

R-publications.html: Makefile R.bib R-publications-head.html
	@cat R-publications-head.html > $@
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" R.bib
	@cat R.html >> $@
	@echo "</body></html>" >> $@

R-books.html: Makefile R.bib R-books-head.html
	@bib2bib -c '$$type = "BOOK"' R.bib > R-books.bib
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" \
	  --named-field orderinfo "Discount Info" \
	  R-books.bib
	@mv $@ $@.in
	@cat R-books-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

R-other.html: Makefile R.bib R-other-head.html
	@bib2bib -c '$$type <> "BOOK"' R.bib > R-other.bib
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" R-other.bib
	@mv $@ $@.in
	@cat R-other-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

clean:
	@rm -f R-bib.html R_bib.html R-publications.html R.html \
	  R-books.html R-books_bib.html \
	  R-other.html R-other_bib.html
