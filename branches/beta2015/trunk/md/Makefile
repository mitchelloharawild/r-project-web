
## get all input .md files
sources := 		$(wildcard *.md)

## from sources, derive all html
targets := 		$(sources:.md=.html)

## one implicit rukes
%.html: 		%.md
			@echo here we call pandoc or what have you on ... $< ... with args as we like


## one (implicit) target rule with markdown conversion, and subdirectories as dependents
all:			$(targets) subdirs


## a (manual) list of subdirectories
subdirList = 		foundation Licenses

## we need this as a 'phony' target: let the subdir target depend on the list of targets
.PHONY: 		subdirs $(subdirList)
subdirs: 		$(subdirList)

## and then for each subdir, invoke a sub make
$(subdirList):
			$(MAKE) -C $@

