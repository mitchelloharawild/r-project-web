
## TODO:  check that pandoc is install
## TODO:  check that pandoc is of a minimally sufficient version

HTML_FILES := $(patsubst %.md, %.html, $(shell find . -name '*.md'  \! -name 'navbar.md'))

all: $(HTML_FILES)

$(HTML_FILES): %.html: %.md navbar.html ../template.html
	pandoc -f markdown+smart '$<' -o '$@' --template ../template.html --include-before navbar.html

navbar.html: navbar.md
	pandoc -f markdown+smart '$<' -o '$@'

.PHONY: clean
clean:
	$(RM) $(HTML_FILES)

