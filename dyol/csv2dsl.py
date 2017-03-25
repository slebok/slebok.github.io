#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-

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
IDXtxt = header.index('Text')

cards = {}

for line in lines[1:]:
	fs = split(line.strip(), len(header))
	if fs[IDXnam].strip() == '':
		continue
	card = []
	name = capitalize(fs[IDXnam])
	if name in cards.keys():
		# second time the same name - just take the sources
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
	card.append('			<title>{}</title>\n'.format(name))
	text = fs[IDXtxt] if fs[IDXtxt]!='' else fs[IDXexp].replace('&','&amp;')
	if text == '':
		text = 'TBD'
	card.append('			<text>{}</text>\n'.format(text))
	if fs[0]!='' and fs[IDXdwi] != '':
		card.append('			<src>{}:{}</src>\n'.format(fs[0],fs[IDXdwi]).replace('&','&amp;'))
	if fs[IDXcpl]!='':
		card.append('			<src>CPL:{}</src>\n'.format(fs[IDXcpl]))
	if fs[IDXppl]!='':
		card.append('			<src>PPL:{}</src>\n'.format(fs[IDXppl]))
	card.append('		</pic>\n')
	cards[name] = card

keys = list(cards.keys())
keys.sort()
for c in keys:
	for line in cards[c]:
		dsl.write(line)
print('{} cards created from {} lines.'.format(len(keys), len(lines)))

dsl.write('''		<div class="last">
			<br/><hr/>
			The collection created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Last updated: #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>''')
dsl.close()
