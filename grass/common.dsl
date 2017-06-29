<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Common in the GraSs">
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
		<pic dwarf>
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
			<h2>Common <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Duplication/Common.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/DC.html">Data Clumps</a>, <a href="http://tusharma.in/smells/RW.html">Reinvent the Wheel</a>, <a href="http://tusharma.in/smells/DB.html">Duplicate Block</a>, <a href="http://tusharma.in/smells/SDF.html">Duplicated Formulas</a>, <a href="http://tusharma.in/smells/ACE.html">Connector Envy</a><br/></p><p> One step further, we may observe clones between two or more subexpressions found in different places in the grammar. The detection pattern is almost the same as with <a href="foldable.html">Foldable</a>, but the solution must involve creating a new nonterminal and then folding it (<em>extract</em> in the terminology of <a href="http://bibtex.github.io/IFM-2009-LammelZ.html">[IFM-2009-LammelZ]</a><a href="http://bibtex.github.io/SCAM-J-2009-LammelZ11.html">[SCAM-J-2009-LammelZ11]</a>). Since creating a new nonterminal implies inventing a new name for it, and only suboptimal heuristics are available, the removal of this smell cannot be properly fully automated. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../credit.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
