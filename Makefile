all:
	# cd dyol && ./csv2dsl.py
	# rm -f grass/*.dsl grass/*.html
	# cd grass && ./tax2dsl.py
	../toolkit/creditmaker.py
	../toolkit/roadmapper.py ../baby/doc/babycobol.ldr baby/
	python3 ../toolkit/dsl2html.py
