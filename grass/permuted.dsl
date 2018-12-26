<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Permuted in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
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
		<pic dwarf dim>
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
		<pic dwarf>
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
			<h2>Permuted <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Duplication/Permuted.tax">Edit!</a></span></h2>
			<p></p><p> Clones modulo permutations (e.g., <code>A | B</code> vs <code>B | A</code>) are confusing: if the choice used in the notation is commutative, they are just <a href="clone.html">Clone</a>s, otherwise if the choice is ordered, having both <code>A / B</code> and <code>B / A</code> within the same grammar is even more confusing for everyone.</p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
