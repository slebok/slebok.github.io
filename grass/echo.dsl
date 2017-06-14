<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Echo in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf dim>
			<a>lookalike.html</a>
			<name>Lookalike</name>
			<small>near-clones</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Echo</name>
			<small>A nonterminal definition is echoed if it is included in the grammar several times, each of which is identical to any other. Echoes were found in the Java Language Specification as a result of manual (not tool supported) creation of both the grammar and language documentation. They were merged in the grammar extractor – that is, during the phase of converting the original HTML document to the first version of the grammar <a href="http://bibtex.github.io/SCAM-J-2009-LammelZ11.html">[SCAM-J-2009-LammelZ11, p.348]</a>. A similar error was observed earlier in the C\# standard <a href="http://bibtex.github.io/Too-Sharp2005.html">[Too-Sharp2005]</a> and later in other languages <a href="http://bibtex.github.io/Zoo2015.html">[Zoo2015]</a>.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
