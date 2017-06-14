<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Lookalike in the GraSs">
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
		<pic dwarf dim>
			<a>permuted.html</a>
			<name>Permuted</name>
			<small>permutations in commutative combinators</small>
		</pic>
		<pic dwarf>
			<a>lookalike.html</a>
			<name>Lookalike</name>
			<small>near-clones</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Lookalike</name>
			<small>Related smells: <a href="http://tusharma.in/smells/RW.html">Reinvent the Wheel</a><br/>In mainstream clone detection research, people distinguish between clones of different types: exact clones (“type 1”) with identical literal duplicates; parametrised clones (“type 2”) with variations in identifier names, literals, even variable types; near miss clones (“type 3”) where statements are allowed to be changed, added or removed up to some extent; semantic clones (“type 4”) as the same computation with a different syntax and possibly even different algorithms; structural clones – higher level similarities, conceptually bottom-up-detected implementation patterns; and artefact clones – function clones and file clones <a href="http://bibtex.github.io/Roy2009.html">[Roy2009]</a>. For grammars, there is no developed theory of clone management, so the questions are open on what constitutes a proper clone, what classes of clones are there, which ones are useful to detect and which to refactor, etc. It makes sense to assume that clone detection in grammars will bear some similarity to contextual clones <a href="http://bibtex.github.io/Martin2011.html">[Martin2011]</a> that worked for another DSL with relatively few constructs, where clones were detected based on the context of clone candidate fragments, and not on their structure per se. <br/></small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
