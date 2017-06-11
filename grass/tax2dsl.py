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
	return '''		<pic dwarf{3}>
			<a>{0}.html</a>
			<name>{1}</name>
			<text>{2}</text>
		</pic>
'''.format(link, name, text, ' dim' if dim else '')

def makelastpic(name, text):
	return '''		<pic wide>
			<name>{0}</name>
			<raw>{1}</raw>
		</pic>
'''.format(name, text)

def makehr():
	return '		<hr/>\n'

def mysplit(s):
	if s.find(':') < 0:
		return s.strip(), ''
	else:
		return s[:s.index(':')].strip(), s[s.index(':')+1:].strip()

taxonomy = {}
explanation = {}

cur1 = cur2 = ''
f = open('index.tax', 'r', encoding='utf-8')
for line in f.readlines():
	if line.startswith('\t\t'):
		a, b = mysplit(line)
		taxonomy[cur1][cur2].append(a)
		explanation[a] = b
	elif line.startswith('\t'):
		a, b = mysplit(line)
		cur2 = a
		explanation[a] = b
		taxonomy[cur1][cur2] = []
	else:
		a, b = mysplit(line)
		cur1 = a
		explanation[a] = b
		taxonomy[cur1] = {}
f.close()

keys = sorted(taxonomy.keys())

# generate the index
f = open('index.dsl', 'w', encoding='utf-8')
f.write(makeheader())
f.write(makehr())
for key1 in keys:
	f.write(makepic(key1.lower(), key1, explanation[key1], False))
f.write(makehr())
f.write(makefooter())
f.close()

# generate top levels
for key1 in keys:
	f = open(key1.lower()+'.dsl', 'w', encoding='utf-8')
	f.write(makeheader())
	f.write(makehr())
	for key1e in keys:
		f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
	f.write(makehr())
	for key2 in sorted(taxonomy[key1]):
		f.write(makepic(key2.lower(), key2, explanation[key2], False))
	f.write(makehr())
	f.write(makefooter())
	f.close()

# generate second levels
for key1 in keys:
	for key2 in taxonomy[key1].keys():
		f = open(key2.lower()+'.dsl', 'w', encoding='utf-8')
		f.write(makeheader())
		f.write(makehr())
		for key1e in keys:
			f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
		f.write(makehr())
		for key2e in sorted(taxonomy[key1]):
			f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
		f.write(makehr())
		for key3 in sorted(taxonomy[key1][key2]):
			f.write(makepic(key3.lower(), key3, explanation[key3], False))
		f.write(makehr())
		f.write(makefooter())
		f.close()

# generate inner
for key1 in keys:
	for key2 in taxonomy[key1].keys():
		for key3 in taxonomy[key1][key2]:
			f = open(key3.lower()+'.dsl', 'w', encoding='utf-8')
			f.write(makeheader())
			f.write(makehr())
			for key1e in keys:
				f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
			f.write(makehr())
			for key2e in sorted(taxonomy[key1].keys()):
				f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
			f.write(makehr())
			for key3e in sorted(taxonomy[key1][key2]):
				f.write(makepic(key3e.lower(), key3e, explanation[key3e], key3e != key3))
			f.write(makehr())
			f.write(makelastpic(key3, explanation[key3]))
			f.write(makehr())
			f.write(makefooter())
			f.close()
