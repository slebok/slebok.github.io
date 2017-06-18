<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Mythic in the GraSs">
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
		<pic dwarf>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf dim>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>diamond.html</a>
			<name>Diamond</name>
			<small>A is X and B is X, but C is A or B</small>
		</pic>
		<pic dwarf dim>
			<a>rivalry.html</a>
			<name>Rivalry</name>
			<small>overlapping alternatives</small>
		</pic>
		<pic dwarf dim>
			<a>ouroboros.html</a>
			<name>Ouroboros</name>
			<small>a circular dependency among modules</small>
		</pic>
		<pic dwarf dim>
			<a>soulmates.html</a>
			<name>Soulmates</name>
			<small>nonterminals or modules are always changed together</small>
		</pic>
		<pic dwarf dim>
			<a>spillover.html</a>
			<name>Spillover</name>
			<small>a nonterminal that is too linked to the adjacent symbols</small>
		</pic>
		<pic dwarf>
			<a>mythic.html</a>
			<name>Mythic</name>
			<small>an alternative that is never exercised in the codebase</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Mythic</name>
			<small>Related smells: <a href="http://tusharma.in/smells/UH.html">Unnecessary Hierarchy</a>, <a href="http://tusharma.in/smells/SG.html">Speculative Generality</a>, <a href="http://tusharma.in/smells/SH.html">Speculative Hierarchy</a><br/>Formal language theory defines a language <em>extensionally</em>, as a set of all possible programs written in it. A grammar is an <em>intensional</em> definition, which is nicer because it is a finite specification of an infinitely large entity, but it also makes it harder to see some relations between that and the instances of the language. In particular, the actual codebase of the software language, if available and comprehensive enough, can serve as a good approximation of the language features used by programmers. If a grammar contains a feature that is never exercised by any program in the actual codebase, it is a [smell]Mythic[/smell] feature that, for instance, does not have to be supported for a software analysis or migration tool to be useful and applicable.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
