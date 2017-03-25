all:
	cd dyol && ./csv2dsl.py
	../grammarware.github.com/dsl2html.py
