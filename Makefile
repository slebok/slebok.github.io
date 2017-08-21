all:
	cd dyol && ./csv2dsl.py
	rm -f grass/*.dsl grass/*.html
	cd grass && ./tax2dsl.py
	mv grass/smells.tex ../acceptware/patterns/grass/all.tex
	../grammarware.github.com/dsl2html.py
