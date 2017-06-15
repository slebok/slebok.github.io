#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-
# pylint: disable=C0103,C0111

import os

wdir = '../../acceptware/patterns/grass/'

mapped = {\
	'LDTA-2012-Zaytsev' : 'NPGR2012',
	'SAC-2012-Zaytsev': 'BNF-WAS-HERE2012',
	'SLE-2013-Zaytsev': 'Micropatterns2013',
	'IFM-2009-LammelZ': 'Convergence2009',
	'CSMR-WCRE-2014-Zaytsev': 'Semiparsing2014',
	'SCAM-J-2009-LammelZ11' : 'JLS-SQJ2011',\
}

def makeheader(title, counter):
	if title:
		title = title + ' in the GraSs'
	else:
		title = 'GraSs: A Taxonomy of Grammar Smells'
	if counter:
		counter = ' ({})'.format(counter)
	else:
		counter = ''
	return '''<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="{0}">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells{1}</h1>
'''.format(title, counter)

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
			<small>{2}</small>
		</pic>
'''.format(link, name, text, ' dim' if dim else '')

def makelastpic(name, text):
	return '''		<pic wide>
			<name>{0}</name>
			<small>{1}</small>
		</pic>
'''.format(name, text)

def makehr():
	return '		<hr/>\n'

def mysplit(s):
	if s.find(':') < 0:
		return s.strip(), ''
	else:
		return s[:s.index(':')].strip(), s[s.index(':')+1:].strip()

def tax2dsl(lines):
	res = []
	i = 0
	while i < len(lines):
		line = lines[i].strip()
		if not line:
			res.append('<br/>')
			i += 1
			continue
		if line.startswith('% '):
			i += 1
			continue
		if line == '[example]' or line == '[example small]':
			elines = []
			i += 1
			while i < len(lines) and lines[i].strip() != '[/example]':
				elines.append(lines[i])
				i += 1
			pre = ''.join(elines).replace('\n', '<br/>')
			res.append('<br/><code>' + pre.replace(' ', '&nbsp;') + '</code>')
			i += 1
			continue
		while line.find('[cite]') > -1:
			x = line.index('[cite]')
			y = line.index('[/cite]')
			link = line[x+6:y]
			if link.find('/') < 0:
				linkurl = linktext = link
			else:
				linkurl = link.split('/')[1]
				linktext = linkurl + ', ' + link.split('/')[0]
			line = line[:x] + '<a href="http://bibtex.github.io/' + linkurl + '.html">[' + linktext + ']</a>' + line[y+7:]
		while line.find('[dyol]') > -1:
			x = line.index('[dyol]')
			y = line.index('[/dyol]')
			link = line[x+6:y]
			line = line[:x] + '<a href="http://slebok.github.io/dyol/books/' + link + '.html">[' + link + ']</a>' + line[y+7:]
		if line.find('[zoo]') > -1:
			x = line.index('[zoo]')
			y = line.index('[/zoo]')
			zoo = line[x+5:y].strip().split('|')
			fnote = '({0}, <em><a href="http://slebok.github.io/zoo/{1}">{2}</a></em>, {3})'.format(*zoo)
			line = line[:x] + fnote + line[y+6:]
		# normalise
		# TODO smell -> a href
		line = line.replace('[code]', '<code>').replace('[/code]', '</code>')
		line = line.replace('[verb]', '<code>').replace('[/verb]', '</code>')
		line = line.replace('[emph]', '<em>').replace('[/emph]', '</em>')
		line = line.replace('---', ' – ').replace('``', '“').replace("''", '”')
		res.append(line)
		i += 1
	return ' '.join(res)

def tax2tex(lines):
	res = []
	verbatim = False
	small = False
	for line in lines:
		if verbatim:
			if line.strip() == '[/example]':
				res.append('\\end{verbatim}\n')
				if small:
					res.append('}')
					small = False
				verbatim = False
				continue
			res.append(line)
			continue
		line = line.strip()
		if line.startswith('% '):
			continue
		if not line:
			res.append('\n\n')
			continue
		if line.strip() == '[example]':
			res.append('\n\\begin{verbatim}\n')
			verbatim = True
			continue
		if line.strip() == '[example small]':
			res.append('\n{\\footnotesize\\begin{verbatim}\n')
			verbatim = True
			small = True
			continue
		while line.find('[cite]') > -1:
			x = line.index('[cite]')
			y = line.index('[/cite]')
			link = line[x+6:y]
			if link.find('/') < 0:
				if link in mapped:
					link = mapped[link]
				line = line[:x] + '~\\cite{' + link + '}' + line[y+7:]
			else:
				linkurl = link.split('/')[1]
				if linkurl in mapped:
					linkurl = mapped[linkurl]
				line = line[:x] + '~\\cite[' + link.split('/')[0] + ']{' + linkurl + '}' + line[y+7:]
		while line.find('[dyol]') > -1:
			x = line.index('[dyol]')
			y = line.index('[/dyol]')
			link = line[x+6:y]
			if link in mapped:
				link = mapped[link]
			line = line[:x] + '~\\cite{' + link + '}' + line[y+7:]
		if line.find('[zoo]') > -1:
			x = line.index('[zoo]')
			y = line.index('[/zoo]')
			zoo = line[x+5:y].strip().split('|')
			if zoo[1][0] == '#':
				zoo[1] = '\\' + zoo[1]
			fnote = '\\footnote{{{0}, \\emph{{\\href{{http://slebok.github.io/zoo/{1}}}{{{2}}}}}, {3}~\cite{{Zoo2015}}.}}'.format(*zoo)
			if len(zoo) > 4:
				fnote = fnote[:-2] + ', ' + zoo[-1] + '.}'
			line = line[:x] + fnote + line[y+6:]
		# normalise
		line = line.replace('[smell]', '\\smell{').replace('[/smell]', '}')
		line = line.replace('[code]', '\\texttt{').replace('[/code]', '}')
		line = line.replace('[verb]', '\\verb!').replace('[/verb]', '!')
		line = line.replace('[emph]', '\\emph{').replace('[/emph]', '}')
		line = line.replace(' ~', '~').replace(' \\footnote', '\\footnote')
		line = line.replace('}~\\cite{', ',')
		line = line.replace('&', '\\&')
		res.append(line)
	res2 = []
	empty = False
	for line in res:
		if not line.strip():
			if empty:
				continue
			else:
				empty = True
		else:
			empty = False
		res2.append(line)
	return ' '.join(res2).replace('\n \n', '\n\n').replace('\n\n\n', '\n\n').replace(' \\end{verbatim}', '\\end{verbatim}')

taxonomy = {}
explanation = {}
longdesc = {}
related = {}
latex = {}
taxkeys = {}

cur1 = cur2 = cur3 = ''
f = open(wdir + 'all.tax', 'r', encoding='utf-8')
taxkeys[''] = []
for line in f.readlines():
	if line.strip()[0] == '%':
		continue
	if line.startswith('\t\t\t'):
		line = line.strip()
		if line.startswith('Related: '):
			related[cur3].append(line[9:].strip())
		elif line.startswith('@ '):
			lines = open(wdir + line[2:].strip(), 'r', encoding='utf-8').readlines()
			longdesc[cur3] = tax2dsl(lines)
			latex[cur3] = tax2tex(lines)
		else:
			longdesc[cur3] += tax2dsl([line])
			latex[cur3] = tax2tex([line])
	elif line.startswith('\t\t'):
		if line.strip().startswith('@ '):
			lines = open(wdir + line.strip()[2:].strip(), 'r', encoding='utf-8').readlines()
			# longdesc[cur3] = tax2dsl(lines)
			latex[cur2] = tax2tex(lines)
			continue
		a, b = mysplit(line)
		cur3 = a
		taxkeys[cur2].append(cur3)
		taxonomy[cur1][cur2].append(cur3)
		longdesc[cur3] = ''
		related[cur3] = []
		explanation[a] = b if b else '...'
	elif line.startswith('\t'):
		if line.strip().startswith('@ '):
			lines = open(wdir + line.strip()[2:].strip(), 'r', encoding='utf-8').readlines()
			latex[cur1] = tax2tex(lines)
			continue
		a, b = mysplit(line)
		cur2 = a
		taxkeys[cur1].append(cur2)
		taxkeys[cur2] = []
		explanation[a] = b if b else '...'
		taxonomy[cur1][cur2] = []
	else:
		a, b = mysplit(line)
		cur1 = a
		taxkeys[''].append(cur1)
		taxkeys[cur1] = []
		explanation[a] = b if b else '...'
		taxonomy[cur1] = {}
f.close()

# keys = sorted(taxonomy.keys())

# generate the index
f = open('index.dsl', 'w', encoding='utf-8')
cx = sum([sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]]) for key1 in taxkeys['']])
f.write(makeheader('', '{} smells total'.format(cx)))
f.write(makehr())
for key1 in taxkeys['']:
	f.write(makepic(key1.lower(), key1, explanation[key1], False))
f.write(makehr())
f.write(makefooter())
f.close()

# generate top levels
for key1 in taxkeys['']:
	f = open(key1.lower()+'.dsl', 'w', encoding='utf-8')
	cx = sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]])
	f.write(makeheader('{} Smells'.format(key1), '{} in the selected group'.format(cx)))
	f.write(makehr())
	for key1e in taxkeys['']:
		f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
	f.write(makehr())
	for key2 in taxkeys[key1]:
		f.write(makepic(key2.lower(), key2, explanation[key2], False))
	f.write(makehr())
	f.write(makefooter())
	f.close()

# generate second levels
for key1 in taxkeys['']:
	for key2 in taxkeys[key1]:
		f = open(key2.lower()+'.dsl', 'w', encoding='utf-8')
		cx = len(taxonomy[key1][key2])
		f.write(makeheader('{} Smells ({})'.format(key2, key1), '{} in the selected group'.format(cx)))
		f.write(makehr())
		for key1e in taxkeys['']:
			f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
		f.write(makehr())
		for key2e in taxkeys[key1]:
			f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
		f.write(makehr())
		for key3 in taxkeys[key2]:
			f.write(makepic(key3.lower(), key3, explanation[key3], False))
		f.write(makehr())
		f.write(makefooter())
		f.close()

# generate inner
for key1 in taxkeys['']:
	for key2 in taxkeys[key1]:
		for key3 in taxkeys[key2]:
			f = open(key3.lower()+'.dsl', 'w', encoding='utf-8')
			f.write(makeheader(key3, ''))
			f.write(makehr())
			for key1e in taxkeys['']:
				f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
			f.write(makehr())
			for key2e in taxkeys[key1]:
				f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
			f.write(makehr())
			for key3e in taxkeys[key2]:
				f.write(makepic(key3e.lower(), key3e, explanation[key3e], key3e != key3))
			f.write(makehr())
			s = longdesc[key3]
			if not s:
				s = '???'
			if key3 in related.keys() and related[key3]:
				s = 'Related smells: ' + ', '.join(\
					['<a href="http://tusharma.in/smells/{0}.html">{1}</a>'.format(*x.split('|'))
						for x in related[key3]]) + '<br/>' + s
			f.write(makelastpic(key3, s))
			f.write(makehr())
			f.write(makefooter())
			f.close()

# generate LaTeX
f = open('smells.tex', 'w', encoding='utf-8')
for key1 in taxkeys['']:
	f.write('\n\\section{{{0} Smells}}\\label{{{0}}}\n\n'.format(key1))
	if key1 in latex:
		f.write(latex[key1])
	for key2 in taxkeys[key1]:
		f.write('\n\\subsection{{{0} Smells}}\\label{{{0}}}\n\n'.format(key2))
		if key2 in latex:
			f.write(latex[key2])
		for key3 in taxkeys[key2]:
			f.write('\n\\subsubsection{{{0}}}\\label{{{0}}}\n\n'.format(key3))
			if key3 in latex:
				f.write(latex[key3])
			else:
				f.write('TODO\n')
f.close()
