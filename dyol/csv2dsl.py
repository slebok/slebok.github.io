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
			r += '<a href="{}">{}</a>'.format(where, what)
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



csv = open('Patterns.csv', 'r')
lines = csv.readlines()
csv.close()

dsl = open('index.dsl', 'w')
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
		<divclass>tile</divclass>
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
		if fs[0]!='' and fs[IDXdwi] != '':
			cards[name].insert(len(cards[name])-1,
				'			<src>{}:{}</src>\n'.format(fs[0],fs[IDXdwi]).replace('&','&amp;'))
		if fs[IDXcpl]!='':
			cards[name].insert(len(cards[name])-1,
				'			<src>CPL:{}</src>\n'.format(fs[IDXcpl]))
		if fs[IDXppl]!='':
			cards[name].insert(len(cards[name])-1,
				'			<src>PPL:{}</src>\n'.format(fs[IDXppl]))
		continue
	card.append('		<pic card>\n')
	card.append('			<title>{}</title>\n'.format(name.replace('&','&amp;')))
	targets.append(name)
	text = fs[IDXtxt] if fs[IDXtxt]!='' else fs[IDXexp].replace('&','&amp;')
	card.append('			<text>{}</text>\n'.format(fancy(text if text != '' else 'TBD')))
	if fs[0]!='' and fs[IDXdwi] != '':
		card.append('			<src>{}:{}</src>\n'.format(fs[0],fs[IDXdwi]).replace('&','&amp;'))
	if fs[IDXcpl]!='':
		card.append('			<src>CPL:{}</src>\n'.format(fs[IDXcpl]))
	if fs[IDXppl]!='':
		card.append('			<src>PPL:{}</src>\n'.format(fs[IDXppl]))
	if fs[IDXeml]!='':
		card.append('			<src>EML:{}</src>\n'.format(fs[IDXeml]))
	card.append('		</pic>\n')
	cards[name] = card

keys = list(cards.keys())
keys.sort()
for c in keys:
	for line in cards[c]:
		dsl.write(line)
print('{} cards created from {} lines.'.format(len(keys), len(lines)))

dsl.write('''		<br/><hr/>
		<div class="left">
			<ul>
				<li class="dwi A">Design with Intent (Lockton, Harrison, Stanton, 2010): Architectural Lens</li>
				<li class="dwi E">Design with Intent (Lockton, Harrison, Stanton, 2010): Errorproofing Lens</li>
				<li class="dwi I">Design with Intent (Lockton, Harrison, Stanton, 2010): Interaction Lens</li>
				<li class="dwi L">Design with Intent (Lockton, Harrison, Stanton, 2010): Ludic Lens</li>
				<li class="dwi P">Design with Intent (Lockton, Harrison, Stanton, 2010): Perceptual Lens</li>
				<li class="dwi C">Design with Intent (Lockton, Harrison, Stanton, 2010): Cognitive Lens</li>
				<li class="dwi M">Design with Intent (Lockton, Harrison, Stanton, 2010): Machiavellian Lens</li>
				<li class="dwi S">Design with Intent (Lockton, Harrison, Stanton, 2010): Security Lens</li>
				<li class="pl">Comparative Programming Languages (Wilson, Clark, 1993)</li>
				<li class="pl">Principles of Programming Languages: Design, Evaluation and Implementation (MacLennan, 1983)</li>
				<li class="pl">Engineering Modeling Languages (Combemale, France, Jezequel, Rumpe, Steel, Vojtisek, 2017)</li>
			</ul>
		</div>
		<div class="right">
			The collection created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.<br/>
			Sources colour coded and explained on the left.<br/>
			Last updated: #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>''')
dsl.close()

for card in links:
	if card not in targets:
		print('Card {} referenced but undefined!'.format(card))
