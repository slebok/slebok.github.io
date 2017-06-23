<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Ouroboros in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf dim>
			<a>mythic.html</a>
			<name>Mythic</name>
			<small>an alternative that is never exercised in the codebase</small>
		</pic>
		<hr/>
			<h2>Ouroboros <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Dependency/Ouroboros.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/DCP.html">Dependency Cycles between Packages/Subsystems</a>, <a href="http://tusharma.in/smells/CM.html">Cyclically-dependent Modularization</a>, <a href="http://tusharma.in/smells/SCDG.html">Static Cycles in Dependency Graphs</a><br/></p><p> If nonterminals are mutually, say, left recursive, and have no non-recursive alternatives, they are useless and cannot express a proper syntactic commitment. However, a similar issue may be encountered on the level of modules, and it is harder to detect for a human because modular grammars are already stretching comprehension capabilities of a grammar engineer. Such circular dependencies are fairly easy to detect automatically with a tool. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
