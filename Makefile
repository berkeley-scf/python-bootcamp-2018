.PHONY: jupyter_instructions python project

clean:
	rm -rf *.html 

all: jupyter_instructions.html python.html project.html

%.html: %.md
	pandoc --mathjax -s -o $@ $<

%.ipynb: %.md
	notedown $< > $(basename $(@)).ipynb
