<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Underuse in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf>
			<a>underuse.html</a>
			<name>Underuse</name>
			<small>inferior substitutes are used instead of an available feature</small>
		</pic>
		<pic dwarf dim>
			<a>overspec.html</a>
			<name>Overspec</name>
			<small>the same constraint specified through several means</small>
		</pic>
		<pic dwarf dim>
			<a>priorities.html</a>
			<name>Priorities</name>
			<small>not present or circular</small>
		</pic>
		<pic dwarf dim>
			<a>singleton.html</a>
			<name>Singleton</name>
			<small>trivial choice, sequence or conjunction</small>
		</pic>
		<pic dwarf dim>
			<a>combo.html</a>
			<name>Combo</name>
			<small>double modifier creates an ambiguity</small>
		</pic>
		<pic dwarf dim>
			<a>chant.html</a>
			<name>Chant</name>
			<small>comments cover up bad code</small>
		</pic>
		<pic dwarf dim>
			<a>deprecated.html</a>
			<name>Deprecated</name>
			<small>the use of a feature that is no longer welcome</small>
		</pic>
		<pic dwarf dim>
			<a>exotic.html</a>
			<name>Exotic</name>
			<small>too idiosyncratic notational features decrease portability</small>
		</pic>
		<hr/>
			<h2>Underuse <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Notation/Underuse.tax">Edit!</a></span></h2>
			<p></p><p> The original BNF used for early ALGOL versions, did not yet borrow Kleene star and Kleene cross from the regular expressions, and early parser specification notations were just as limited. Grammars written with those notations in mind (not necessarily for using them!), suffer from so-called “yaccification” <a href="http://bibtex.github.io/FME-2001-Lammel.html">[FME-2001-Lammel]</a><a href="http://bibtex.github.io/ICSM-2001-JongeM.html">[ICSM-2001-JongeM]</a>, when all repetitions are written out explicitly as additional left-recursive nonterminals. This pattern is well-known to be harmful since it reduces grammar's both readability (yaccification is basically an encoding move, not a modelling one) and portability (a left-recursive grammar is often useless or suboptimal for top-down parsing). </p><p> There can be other similar patterns falling under the same smell description: for instance, separator lists are concisely and efficiently handled by many grammar notations, and if one of those is used, should not be written out with group repetition or recursion. </p><p> </p><p> </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
