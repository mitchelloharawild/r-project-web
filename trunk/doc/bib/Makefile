BIB2BIB = bib2bib -c '$$key <> "R:Ligges:2005"'

.SUFFIXES:
.SUFFIXES: .html .bib

all: R-publications.html R-books.html R-other.html

R-publications.html: Makefile R.bib R-publications-head.html
	@$(BIB2BIB) R.bib > $(*F).bib
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" \
	  $(*F).bib
	@mv $@ $@.in
	@cat $(*F)-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

R-books.html: Makefile R.bib R-books-head.html
	@$(BIB2BIB) -c '$$type = "BOOK"' R.bib > $(*F).bib
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" \
	  --named-field orderinfo "Discount Info" \
	  $(*F).bib
	@mv $@ $@.in
	@cat $(*F)-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

R-other.html: Makefile R.bib R-other-head.html
	@$(BIB2BIB) -c '$$type <> "BOOK"' R.bib > $(*F).bib
	@bibtex2html -u -nodoc -rawurl --charset iso-8859-1 \
	  --named-field publisherurl "Publisher Info" \
	  $(*F).bib
	@mv $@ $@.in
	@cat $(*F)-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

clean:
	@rm -f R-bib.html \
          R-publications.bib R-books.bib R-other.bib \
	  R-publications.html R-publications_bib.html \
	  R-books.html R-books_bib.html \
	  R-other.html R-other_bib.html \
	  R_bib.html R.html
