#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-

links   = []
targets = []

def fancy(x):
	return debreviate(intralink(emph(x)))

def debreviate(x):
	for s in (
		('4GLs', 'Fourth Generation Languages'),
		('API', 'Application Programming Interface'),
		('CPU', 'Central Processing Unit'),
		('DSLs', 'Domain-Specific Languages'),
		('DSMLs', 'Domain-Specific Modelling Languages'),
		('GPLs', 'General Purpose Languages'),
		('GPU', 'Graphics Processing Unit'),
		('JVM', 'Java Virtual Machine'),
		('MDE', 'Model-Driven Engineering'),
		('monad', 'monoid in a category of endofunctors'),
		('OS', 'Operating System'),
		('UML', 'Unified Modelling Language'),
		('VS.NET', 'Visual Studio .NET'),
		# ('IDE', 'Integrated Development Environment')
		):
		x = x.replace(s[0], '<abbr title="{}">{}</abbr>'.format(s[1], s[0]))
	return x.replace('&', '&amp;')

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
				if where.endswith('s'):
					if where.endswith('Classes'):
						where = where[:-2]
					elif where.split(' ')[-1] not in ('Class', 'Analysis', 'Process'):
						where = where[:-1]
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

dsl = open('cards.dsl', 'w', encoding='utf-8')
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
		<h1><abbr title="DYOL is pronounced like 'duel' in English">DYOL</abbr>: <a href="index.html">Design Your Own Language</a></h1>
		<hr/>
''')
# ,Inspired by,Key phrase,Name,Explanation,CPL,PPL,Text
categs = lines[1].strip().split(',')
header = lines[2].strip().split(',')
IDXdwi = header.index('Inspired by')
IDXnam = header.index('!Name')
IDXexp = header.index('Explanation')
IDXtxt = header.index('Text')

cards = {}
sources = {}
codes = 0

for line in lines[3:]:
	fs = split(line.strip(), len(header))
	if fs[IDXnam].strip() == '' or fs[IDXnam].strip().startswith('%'):
		continue
	card = []
	name = capitalize(fs[IDXnam])
	srcs = []
	if name not in sources.keys():
		sources[name] = []
	if name in cards.keys():
		# second time the same name
		if fs[IDXtxt] != '':
			# if the new item has a proper explanation, take it
			i = 0
			while cards[name][i].find('<text>')<0: i += 1
			cards[name][i] = '			<text>{}</text>\n'.format(fancy(fs[IDXtxt]))
		# update the sources if there are any
		if fs[1]!='' and fs[IDXdwi] != '':
			src = '			<src>{}:{}</src>\n'.format(fs[1],fs[IDXdwi]).replace('&','&amp;')
			if src not in sources[name]:
				sources[name].append(src)
			codes += 1
		for idx in range(IDXexp+1,IDXtxt):
			if fs[idx]!='' and fs[idx]!='?':
				src = '			<src>{}-{}{}</src>\n'.format(categs[idx], header[idx], ':'+fs[idx] if fs[idx]!='0' else '')
				if src not in sources[name]:
					sources[name].append(src)
				codes += 1
		continue
	card.append('			<title>{}</title>\n'.format(name.replace('&','&amp;')))
	targets.append(name)
	text = fs[IDXtxt] if fs[IDXtxt]!='' else fs[IDXexp].replace('&','&amp;')
	card.append('			<text>{}</text>\n'.format(fancy(text if text != '' else 'TBD')))
	if fs[1]!='' and fs[IDXdwi] != '':
		src = '			<src>{}:{}</src>\n'.format(fs[1],fs[IDXdwi]).replace('&','&amp;')
		if src not in sources[name]:
			sources[name].append(src)
		codes += 1
	for idx in range(IDXexp+1,IDXtxt):
		if fs[idx]!='' and fs[idx]!='?':
			# mark the entire book if page is zero
			src = '			<src>{}-{}{}</src>\n'.format(categs[idx], header[idx], ':'+fs[idx] if fs[idx]!='0' else '')
			if src not in sources[name]:
				sources[name].append(src)
			codes += 1
	cards[name] = card

backsources = {}
for name in sources.keys():
	for src in sources[name]:
		src = src.replace('<src>','').replace('</src>','').strip()
		if src[2] != '-':
			continue
		book = src[:5]
		page = src[6:] if len(src)>6 else ''
		if book not in backsources.keys():
			backsources[book] = {}
		backsources[book][name] = page

keys = list(cards.keys())
keys.sort()
for c in keys:
	dsl.write('		<pic card>\n')
	for line in cards[c]:
		dsl.write(line)
	for line in sources[c]:
		dsl.write(line)
	dsl.write('		</pic>\n')
print('{} cards and {} codes created from {} lines.'.format(len(keys), codes, len(lines)))

dsl.write('''		<hr/>
		<div class="src">
			<div class="dyolast">
				The collection of <strong>{}</strong> cards created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.<br/>
				Sources colour coded and explained/linked around this notice. See also the <a href="books.html">separate page about the books</a>.<br/>
				Last updated: #LASTMOD#.<br/>
				<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
				<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
			</div>
			<ul>'''.format(len(keys)))
for lens in ('Architectural', 'Errorproofing', 'Interaction', 'Ludic', 'Perceptual', 'Cognitive', 'Machiavellian', 'Security'):
	dsl.write('				<li class="dwi {}"><a href="http://designwithintent.co.uk/{}-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): {} Lens</a></li>\n'.format(lens[0], lens.lower(), lens))
dsl.write('				<li class="dsl"><a href="http://dx.doi.org/10.2498/cit.2001.04.01">Supporting the DSL Spectrum (Wile, 2001)</a></li>\n')
dsl.write('				<li class="dsl"><a href="http://dx.doi.org/10.1016/S0164-1212(00)00089-3">Notable Design Patterns for Domain-specific Languages (Spinellis, 2001)</a></li>\n')
dsl.write('				<li class="dsl"><a href="https://doi.org/10.1145/1118890.1118892">When and How to Develop Domain-specific Languages (Mernik, Heering, Sloane, 2005)</a></li>\n')
dsl.write('''			</ul>
		</div>
		<div class="src">
			<ul>''')
for book in (
		('db','gd', 'http://amzn.to/2ofkepP', 'Principles of Compiler Design (Aho, Ullman, 1977)'),
		('db','rd', 'http://amzn.to/2pAUncU', 'Compilers: Principles, Techniques, and Tools (Aho, Sethi, Ullman, 1986)'),
		('db','pd', 'http://amzn.to/2offvUI', 'Compilers: Principles, Techniques, &amp; Tools (Aho, Lam, Sethi, Ullman, 2006)'),
		('pt','ao', 'http://amzn.to/2oSL1u0', 'Definition of Programming Languages by Interpreting Automata (Ollongren, 1974)'),
		('pt','hu', 'http://amzn.to/2o776HL', 'Introduction to Automata Theory, Languages, and Computation (Hopcroft, Ullman, 1979)'),
		('pt','gj', 'http://amzn.to/2oYyF5C', 'Parsing Techniques: A Practical Guide (Grune, Jacobs, 2008)'),
		('cc','dg', 'http://amzn.to/2oYBQdc', 'Compiler Construction for Digital Computers (Gries, 1971)'),
		('cc','wg', 'http://amzn.to/2phWrHp', 'Compiler Construction (Waite, Goos, 1984)'),
		('cc','nw', 'http://amzn.to/2nmUPeU', 'Compiler Construction (Wirth, 2005)'),
		('cd','ah', 'http://amzn.to/2pAYPYW', 'Compiler Design in C (Holub, 1990)'),
		('cd','sm', 'http://amzn.to/2p3nnxw', 'Advanced Compiler Design and Implementation (Muchnick, 1997)'),
		('cd','gr', 'http://amzn.to/2ofhgRP', 'Modern Compiler Design (Grune, van Reeuwijk, Bal, Jacobs, Langendoen, 2012)'),
		('li','bh', 'http://amzn.to/2opUpnG', 'Brinch Hansen on Pascal Compilers (Hansen, 1985)'),
		('li','rm', 'http://amzn.to/2pAW75O', 'Writing Compilers and Interpreters: An Applied Approach (Mak, 1991)'),
		('li','pz', 'http://amzn.to/2nnaieI', 'Programming Languages: Design and Implementation (Pratt, Zelkowitz, 2001)'),
		('ld','ed', 'http://amzn.to/2oupTtC', 'A Primer of ALGOL 60 Programming (Dijkstra, 1962)'),
		('ld','jw', 'http://amzn.to/2opWUX1', 'Pascal User Manual and Report (Jensen, Wirth, 1985)'),
		('ld','wh', 'http://amzn.to/2o7eCm1', 'Programming in the .NET Environment (Watkins, Hammond, Abrams, 2003)'),
		('pl','bm', 'http://amzn.to/2nmFg70', 'Principles of Programming Languages: Design, Evaluation and Implementation (MacLennan, 1983)'),
		('pl','wc', 'http://amzn.to/2n8cd5u', 'Comparative Programming Languages (Wilson, Clark, 1993)'),
		('pl','rs', 'http://amzn.to/2ofl1qu', 'Concepts of Programming Languages (Sebesta, 2001)'),
		('sl','as', 'http://amzn.to/2oYs232', 'Structure and Interpretation of Computer Programs (Abelson, Sussman, Sussman, 1996)'),
		('sl','cf', 'http://amzn.to/2n8yz6y', 'Engineering Modeling Languages (Combemale, France, Jézéquel, Rumpe, Steel, Vojtisek, 2017)'),
		('sl','rl', 'http://www.softlang.org/book', 'Software Languages: Syntax, Semantics, and Metaprogramming (Lämmel, 2017)'),
	):
	dsl.write('				<li class="b {}"><a href="{}">{}:{} — {}</a></li>\n'.format(book[0], book[2], book[0].upper(), book[1].upper(), book[3]))
	bookname = '{}-{}'.format(book[0].upper(),book[1].upper())
	bookfile = 'books/{}.dsl'.format(bookname)
	bookdsl = open(bookfile, 'r', encoding='utf-8')
	lines = bookdsl.readlines()
	bookdsl.close()
	bookdsl = open(bookfile, 'w', encoding='utf-8')
	skip = False
	for line in lines:
		if skip:
			if line.strip() == '<hr/>':
				skip = False
			else:
				continue
		bookdsl.write(line)
		if line.strip() == '<h2>Marked:</h2>':
			skip = True
			bookdsl.write('<ul>\n')
			for card in sorted(backsources[bookname].keys()):
				bookdsl.write('<li><a href="{}">{}</a>: '.format(card.replace(' ','_').replace('&',''), card))
				if backsources[bookname] == '':
					bookdsl.write('the entire book')
				else:
					bookdsl.write('page ' + backsources[bookname][card])
				bookdsl.write('</li>\n')
			bookdsl.write('</ul>\n')
	bookdsl.close()
dsl.write('''			</ul>
		</div>
		<hr/>
	</body>
</html>''')
dsl.close()

for card in links:
	if card not in targets:
		print('Card {} referenced but undefined!'.format(card))

