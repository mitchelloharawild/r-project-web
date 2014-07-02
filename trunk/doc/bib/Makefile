BIB2BIB = bib2bib \
	-c '$$key <> "R:Dalgaard:2002"' \
	-c '$$key <> "R:Ligges:2005"' \
	-c '$$key <> "R:Ligges:2007"' \
	-c '$$key <> "R:Pfaff:2006"' \
	-c '$$key <> "R:Albert:2007"' \
	-s 'year' -r -s 'author'

.SUFFIXES:
.SUFFIXES: .html .bib

all: R-publications.html R-books.html R-other.html

R-publications.html: Makefile R.bib R-publications-head.html
	@$(BIB2BIB) R.bib > $(*F).bib
	@bibtex2html -u -noheader -nodoc -rawurl \
	  --named-field publisherurl "Publisher Info" \
	  $(*F).bib
	@mv $@ $@.in
	@cat $(*F)-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

R-books.html: Makefile R.bib R-books-head.html
	@$(BIB2BIB) -c '$$type = "BOOK"' R.bib > $(*F).bib
## Put in TMPDIR=. to avoid openout_any = p madness in current versions of
## TeXlive (see e.g. http://www.lri.fr/~filliatr/bibtex2html/).
	@TMPDIR=. bibtex2html -u -noheader -nodoc -rawurl -s Rweb \
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
	@bibtex2html -u -noheader -nodoc -rawurl \
	  --named-field publisherurl "Publisher Info" \
	  $(*F).bib
	@mv $@ $@.in
	@cat $(*F)-head.html > $@
	@cat $@.in >> $@
	@echo "</body></html>" >> $@
	@rm $@.in

R-jabref.html: R.bib jabref-pref.xml
	jabref -n -p jabref-pref.xml -o R-jabref.html,tablerefsabsbib R.bib

clean:
	@rm -f R-bib.html \
          R-publications.bib R-books.bib R-other.bib \
	  R-publications.html R-publications_bib.html \
	  R-books.html R-books_bib.html \
	  R-other.html R-other_bib.html \
	  R_bib.html R.html R-jabref.html
