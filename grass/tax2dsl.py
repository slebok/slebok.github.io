#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-
# pylint: disable=C0103,C0111

import os

def makeheader():
	return '''<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="GraSs: A Taxonomy of Grammar Smells">
	<body>
		<header/>
		<h1>GraSs: A Taxonomy of Grammar Smells</h1>
'''

def makefooter():
	return '''		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
'''

def makepic(link, name, text, dim):
	return '''		<pic{3}>
			<a>{0}.html</a>
			<name>{1}</name>
			<text>{2}</text>
		</pic>
'''.format(link, name, text, ' dim' if dim else '')

def makehr():
	return '		<hr/>\n'

taxonomy = {}

cur = ''
f = open('index.tax', 'r', encoding='utf-8')
for rawline in f.readlines():
	line = rawline.strip()
	if rawline.startswith('\t'):
		taxonomy[cur].append(line)
	else:
		taxonomy[line] = []
		cur = line
f.close()

keys = sorted(taxonomy.keys())

# generate the index
f = open('index.dsl', 'w', encoding='utf-8')
f.write(makeheader())
f.write(makehr())
for card in keys:
	f.write(makepic(card.lower(), card, '...', False))
f.write(makehr())
f.write(makefooter())
f.close()

# generate top levels
for key in keys:
	f = open(key.lower()+'.dsl', 'w', encoding='utf-8')
	f.write(makeheader())
	f.write(makehr())
	for card in keys:
		f.write(makepic(card.lower(), card, '...', card != key))
	f.write(makehr())
	for card in taxonomy[key]:
		f.write(makepic(card.lower(), card, '...', False))
	f.write(makehr())
	f.write(makefooter())
	f.close()

# generate inner
for key in keys:
	for card in taxonomy[key]:
		f = open(card.lower()+'.dsl', 'w', encoding='utf-8')
		f.write(makeheader())
		f.write(makehr())
		for crd in keys:
			f.write(makepic(crd.lower(), crd, '...', crd != key))
		f.write(makehr())
		for crd in taxonomy[key]:
			f.write(makepic(crd.lower(), crd, '...', crd != card))
		f.write(makehr())
		# todo
		f.write(makehr())
		f.write(makefooter())
		f.close()
