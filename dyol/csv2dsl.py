#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-

links   = []
targets = []

def fancy(x):
	return debreviate(intralink(emph(x)))

def debreviate(x):
	for s in (
		('4GLs', 'Fourth Generation Languages'),
		('GPLs', 'General Purpose Languages'),
		('DSLs', 'Domain-Specific Languages'),
		('DSMLs', 'Domain-Specific Modelling Languages'),
		('JVM', 'Java Virtual Machine'),
		('VS.NET', 'Visual Studio .NET'),
		('UML', 'Unified Modelling Language'),
		('MDE', 'Model-Driven Engineering'),
		('OS', 'Operating System')
		# ('IDE', 'Integrated Development Environment')
		):
		x = x.replace(s[0], '<abbr title="{}">{}</abbr>'.format(s[1], s[0]))
	return x

def intralink(x):
	y = x.split('**')
	r = y[0]
	inside = False
	ins = ''
	for i in range(1,len(y)):
		if not inside:
			if y[i].find('!')<0:
				where = what = y[i]
			else:
				where,what = y[i].split('!')
			if not where.startswith('http://') and not where.startswith('https://'):
				where = capitalize(where)
				if where not in links:
					links.append(where)
				where = '#' + where
			r += '<a href="{}">{}</a>'.format(where.replace('&','').replace(' ','_').replace('/',''), what)
		else:
			r += y[i]
		inside = not inside
	return r

def emph(x):
	y = x.split('__')
	r = y[0]
	closed = True
	for i in range(1,len(y)):
		if closed:
			r += '<em>' + y[i]
		else:
			r += '</em>' + y[i]
		closed = not closed
	return r

def capitalize(s):
	z = s.split(' ')
	r = []
	for w in z:
		if w == w.upper() or w[1:]!=w[1:].lower():
			r.append(w)
		else:
			r.append(w.capitalize())
	return ' '.join(r).replace(' / ', '/')

def split(s,max):
	i = 0
	r = []
	c = ''
	quote = False
	while i<len(s):
		if s[i] == ',':
			if quote:
				c += s[i]
			else:
				r.append(c)
				c = ''
		elif s[i] == '"':
			if quote and i+1<len(s) and s[i+1] == '"':
				c += '"'
				i += 2
				continue
			elif not quote and c != '':
				print('Suspicious quote in the middle of the line when splitting "'+s+'"')
				print('Before: <'+c+'>, after: '+s[i:i+2])
				i += 1
				continue
			quote = not quote
		else:
			c += s[i]
		i += 1
	if c != '':
		r.append(c)
	while len(r) < max:
		r.append('')
	return r



csv = open('Patterns.csv', 'r', encoding='utf-8')
lines = csv.readlines()
csv.close()

dsl = open('index.dsl', 'w', encoding='utf-8')
dsl.write('''<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language</title>
		<link href="../www/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<hr/>
		<picdir>../www</picdir>
''')
# ,Inspired by,Key phrase,Name,Explanation,CPL,PPL,Text
header = lines[0].strip().split(',')
IDXdwi = header.index('Inspired by')
IDXnam = header.index('Name')
IDXexp = header.index('Explanation')
IDXcpl = header.index('CPL')
IDXppl = header.index('PPL')
IDXeml = header.index('EML')
IDXtxt = header.index('Text')

cards = {}
codes = 0

for line in lines[1:]:
	fs = split(line.strip(), len(header))
	if fs[IDXnam].strip() == '':
		continue
	card = []
	name = capitalize(fs[IDXnam])
	if name in cards.keys():
		# second time the same name
		if fs[IDXtxt] != '':
			# if the new item has a proper explanation, take it
			i = 0
			while cards[name][i].find('<text>')<0: i += 1
			cards[name][i] = '			<text>{}</text>\n'.format(fancy(fs[IDXtxt]))
		# update the sources if there are any
		if fs[1]!='' and fs[IDXdwi] != '':
			cards[name].insert(len(cards[name])-1,
				'			<src>{}:{}</src>\n'.format(fs[1],fs[IDXdwi]).replace('&','&amp;'))
			codes += 1
		for idx in range(IDXexp+1,IDXtxt):
			if fs[idx]!='' and fs[idx]!='?':
				cards[name].insert(len(cards[name])-1,
					'			<src>{}:{}</src>\n'.format(header[idx], fs[idx]))
				codes += 1
		continue
	card.append('		<pic card>\n')
	card.append('			<title>{}</title>\n'.format(name.replace('&','&amp;')))
	targets.append(name)
	text = fs[IDXtxt] if fs[IDXtxt]!='' else fs[IDXexp].replace('&','&amp;')
	card.append('			<text>{}</text>\n'.format(fancy(text if text != '' else 'TBD')))
	if fs[1]!='' and fs[IDXdwi] != '':
		card.append('			<src>{}:{}</src>\n'.format(fs[1],fs[IDXdwi]).replace('&','&amp;'))
		codes += 1
	for idx in range(IDXexp+1,IDXtxt):
		if fs[idx]!='' and fs[idx]!='?':
			card.append('			<src>{}:{}</src>\n'.format(header[idx], fs[idx]))
			codes += 1
	card.append('		</pic>\n')
	cards[name] = card

keys = list(cards.keys())
keys.sort()
for c in keys:
	for line in cards[c]:
		dsl.write(line)
print('{} cards and {} codes created from {} lines.'.format(len(keys), codes, len(lines)))

dsl.write('''		<hr/>
		<div class="src">
			<ul>''')
for lens in ('Architectural', 'Errorproofing', 'Interaction', 'Ludic', 'Perceptual', 'Cognitive', 'Machiavellian', 'Security'):
	dsl.write('				<li class="dwi {}"><a href="http://designwithintent.co.uk/{}-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): {} Lens</a></li>\n'.format(lens[0], lens.lower(), lens))
dsl.write('''			</ul>
		</div>
		<div class="src">
			<ul>''')
for book in (
		('rdb','#', 'Compilers: (Aho, Sethi, Ullman, ...)'),
		('ppl', 'http://amzn.to/2nmFg70', 'Principles of Programming Languages: Design, Evaluation and Implementation (MacLennan, 1983)'),
		('pdb','#', 'Compilers: (Aho, Sethi, Ullman, Lam, ...)'),
		('wcc', 'http://amzn.to/2nmUPeU', 'Compiler Construction (Wirth, 2005)'),
		('pzpl','http://amzn.to/2nnaieI', 'Programming Languages: Design and Implementation (Pratt, Zelkowitz, 2001)'),
		('wgcc','#', 'Compiler Construction (Waite, Goos, 1984)'),
		('a60','#', 'A Primer of ALGOL 60 Programming (Dijkstra, 1962)'),
		('cpl', 'http://amzn.to/2n8cd5u', 'Comparative Programming Languages (Wilson, Clark, 1993)'),
		('gdb','#', 'Principles of Compiler Design (Aho, Ullman, 1979)'),
		('eml', 'http://amzn.to/2n8yz6y', 'Engineering Modeling Languages (Combemale, France, Jézéquel, Rumpe, Steel, Vojtisek, 2017)'),
		('hcd','#', 'Compiler Design in C (Holub, 1990)'),
		('acdi','#', 'Advanced Compiler Design and Implementation (Muchnick, 1997)'),
		('wci','#', 'Writing Compilers and Interpreters: An Applied Approach (Mak, 1991)'),
	):
	dsl.write('				<li class="pl {}"><a href="{}">{}: {}</a></li>'.format(book[0], book[1], book[0].upper(), book[2]))
dsl.write('''			</ul>
		</div>
		<hr/>
		<div class="last">
			The collection of <strong>{}</strong> cards created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.<br/>
			Sources colour coded and explained above this notice.<br/>
			Last updated: #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>'''.format(len(keys)))
dsl.close()

for card in links:
	if card not in targets:
		print('Card {} referenced but undefined!'.format(card))
