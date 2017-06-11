<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="GraSs: A Taxonomy of Grammar Smells">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>mix.html</a>
			<name>Mix</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<pic dwarf>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf dim>
			<a>spaghetti.html</a>
			<name>Spaghetti</name>
			<small>scattering details over the grammar</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>alphabet.html</a>
			<name>Alphabet</name>
			<small>seemingly incomplete collections</small>
		</pic>
		<pic dwarf dim>
			<a>dead.html</a>
			<name>Dead</name>
			<small>nonterminal defined, but not referenced</small>
		</pic>
		<pic dwarf dim>
			<a>entry.html</a>
			<name>Entry</name>
			<small>no starting symbol</small>
		</pic>
		<pic dwarf dim>
			<a>module.html</a>
			<name>Module</name>
			<small>a missing module</small>
		</pic>
		<pic dwarf dim>
			<a>undefined.html</a>
			<name>Undefined</name>
			<small>nonterminal referenced, but not defined</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Alphabet</name>
			<small>The completeness of some character classes and terminal choices can be predicted, and compared to the actual value given by the grammar. For example, if a character class includes all Latin letters except one or all whitespace characters except \r, it may be an error. Similarly, if a preterminal is defined as a choice of all other alphanumeric terminals in the grammar (common for keyword definitions), then not a single one of them should be skipped.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
