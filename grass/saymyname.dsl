<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="SayMyName in the GraSs">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>convention.html</a>
			<name>Convention</name>
			<small>violations of visual policies</small>
		</pic>
		<pic dwarf dim>
			<a>notation.html</a>
			<name>Notation</name>
			<small>metalanguage-related</small>
		</pic>
		<pic dwarf dim>
			<a>parsing.html</a>
			<name>Parsing</name>
			<small>parsing techniques related smells</small>
		</pic>
		<pic dwarf dim>
			<a>duplication.html</a>
			<name>Duplication</name>
			<small>the same fragment is repeated</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>misformat.html</a>
			<name>Misformat</name>
			<small>misleading formatting</small>
		</pic>
		<pic dwarf dim>
			<a>misnomer.html</a>
			<name>Misnomer</name>
			<small>problems with naming policies</small>
		</pic>
		<pic dwarf>
			<a>saymyname.html</a>
			<name>SayMyName</name>
			<small>a misspelling or improper use of the natural language</small>
		</pic>
		<pic dwarf dim>
			<a>zigzag.html</a>
			<name>ZigZag</name>
			<small>mixing horizontal and vertical styles</small>
		</pic>
		<pic dwarf dim>
			<a>splat.html</a>
			<name>Splat</name>
			<small>nonterminal fragments scattered over the grammar</small>
		</pic>
		<hr/>
		<pic wide>
			<name>SayMyName</name>
			<small>Related smells: <a href="http://tusharma.in/smells/PSS.html">Stung by Spell-bee</a><br/>The information is conveyed both by the structure specified in the grammar notation and by natural language used for naming nonterminals and modules. In small grammars misspellings and misnamings are easy to overlook since humans are naturally capable of that. When the grammar size increases, primitive automation techniques are used like plain text search, and such a search query looking for all statements will not find the one labelled with “staetment”.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
