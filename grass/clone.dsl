<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Clone in the GraSs">
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
		<pic dwarf dim>
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
		<pic dwarf>
			<a>duplication.html</a>
			<name>Duplication</name>
			<small>the same fragment is repeated</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>echo.html</a>
			<name>Echo</name>
			<small>same rule occurs twice or more</small>
		</pic>
		<pic dwarf>
			<a>clone.html</a>
			<name>Clone</name>
			<small>same right hand side occurs twice or more</small>
		</pic>
		<pic dwarf dim>
			<a>foldable.html</a>
			<name>Foldable</name>
			<small>nonterminal's right hand side is not unique</small>
		</pic>
		<pic dwarf dim>
			<a>common.html</a>
			<name>Common</name>
			<small>common subexpressions</small>
		</pic>
		<pic dwarf dim>
			<a>permuted.html</a>
			<name>Permuted</name>
			<small>permutations in commutative combinators</small>
		</pic>
		<pic dwarf dim>
			<a>lookalike.html</a>
			<name>Lookalike</name>
			<small>near-clones</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Clone</name>
			<small>Related smells: <a href="http://tusharma.in/smells/DC2.html">Duplicate Code</a>, <a href="http://tusharma.in/smells/RW.html">Reinvent the Wheel</a>, <a href="http://tusharma.in/smells/CPP.html">Cut and Paste Programming</a>, <a href="http://tusharma.in/smells/UH2.html">Unfactored Hierarchy</a>, <a href="http://tusharma.in/smells/DE2.html">Duplicate Entity</a><br/>Nonterminals that have exactly the same definitions, are only cluttering the grammar, and can be painlessly united. In clone management research, these are called “type 1 clones”, we will revisit this classification later when defining [smell]Lookalike[/smell].</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
