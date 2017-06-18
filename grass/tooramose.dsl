<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="TooRamose in the GraSs">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<pic dwarf dim>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>toowide.html</a>
			<name>TooWide</name>
			<small>the width (right hand side length) is too big</small>
		</pic>
		<pic dwarf>
			<a>tooramose.html</a>
			<name>TooRamose</name>
			<small>too much branching</small>
		</pic>
		<pic dwarf dim>
			<a>toorecursive.html</a>
			<name>TooRecursive</name>
			<small>too much recursion</small>
		</pic>
		<pic dwarf dim>
			<a>toonested.html</a>
			<name>TooNested</name>
			<small>groups are too deeply nested</small>
		</pic>
		<pic dwarf dim>
			<a>tootall.html</a>
			<name>TooTall</name>
			<small>the height (distance from the root) is too big</small>
		</pic>
		<pic dwarf dim>
			<a>lonely.html</a>
			<name>Lonely</name>
			<small>large non-modular grammar</small>
		</pic>
		<pic dwarf dim>
			<a>toomodular.html</a>
			<name>TooModular</name>
			<small>too many modules</small>
		</pic>
		<pic dwarf dim>
			<a>greedy.html</a>
			<name>Greedy</name>
			<small>one module that does too much</small>
		</pic>
		<pic dwarf dim>
			<a>lazy.html</a>
			<name>Lazy</name>
			<small>one module that does not do much</small>
		</pic>
		<pic dwarf dim>
			<a>toocoupled.html</a>
			<name>TooCoupled</name>
			<small>low cohesion and/or high coupling</small>
		</pic>
		<hr/>
		<pic wide>
			<name>TooRamose</name>
			<small>Related smells: <a href="http://tusharma.in/smells/WH.html">Wide Hierarchy</a>, <a href="http://tusharma.in/smells/DCT.html">Clone Tables</a>, <a href="http://tusharma.in/smells/SCC.html">Conditional Complexity</a>, <a href="http://tusharma.in/smells/BM.html">Broken Modularization</a><br/>McCabe's cyclomatic complexity has received a lot of critique over the years, but nevertheless is present in many code analysis tools either directly or conceptually through improvements like cognitive complexity <a href="http://bibtex.github.io/IWPC-2003-RillingK.html">[IWPC-2003-RillingK]</a> or control flow patterns <a href="http://bibtex.github.io/SCAM-2012-VinjuG.html">[SCAM-2012-VinjuG]</a>. In grammars cyclomatic complexity is easy to estimate if we think of the parsing semantics, and it will be rather close for any other concrete application of the grammar. Alternatives and all kinds of disjunction obviously contribute to its increase, as well as repetition metasymbols. Conjunction, if present, also contributes to the branching since a construct like <code>A & B</code> means that both the parser and the grammar engineer will have to explore both branches related to <code>A</code> as well as to <code>B</code>. <br/> It is interesting to consider how this smell can be eliminated: a similar “Wide Hierarchy” code smell suggests to introduce intermediate hubs for groups of nonterminals, but others blame such a solution from other points of view because there is a chance of those nonterminals to be [smell]Weak[/smell].</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
