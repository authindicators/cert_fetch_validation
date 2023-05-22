MMARK=mmark
XML2RFC=xml2rfc
SOURCES=fetch_and_validation_of_vmc.md
XML=$(SOURCES:.md=.xml)
TXT=$(SOURCES:.md=.txt)

all: $(XML) $(TXT)

%.xml : %.md
	$(MMARK) $< > $@

%.txt : %.xml
	$(XML2RFC) $< --text $@

clean:
	rm $(XML)
	rm $(TXT)
