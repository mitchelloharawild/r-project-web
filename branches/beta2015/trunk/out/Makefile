
## get all input .md files
sources := 		$(wildcard *.md)

## from sources, derive all html
targets := 		$(sources:.md=.html)

## one implicit rukes
%.html: 		%.md
			echo.sh here we call pandoc or what have you on ... $< ... with args as we like

## one (implicit) target rule
all:			$(targets)

