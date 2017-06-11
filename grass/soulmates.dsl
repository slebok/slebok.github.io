<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="GraSs: A Taxonomy of Grammar Smells">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf dim>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<pic dwarf>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf dim>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>diamond.html</a>
			<name>Diamond</name>
			<small>A is X and B is X, but C is A or B</small>
		</pic>
		<pic dwarf dim>
			<a>mythic.html</a>
			<name>Mythic</name>
			<small>an alternative that is never exercised in the codebase</small>
		</pic>
		<pic dwarf dim>
			<a>ouroboros.html</a>
			<name>Ouroboros</name>
			<small>a circular dependency among modules</small>
		</pic>
		<pic dwarf dim>
			<a>rivalry.html</a>
			<name>Rivalry</name>
			<small>overlapping alternatives</small>
		</pic>
		<pic dwarf>
			<a>soulmates.html</a>
			<name>Soulmates</name>
			<small>nonterminals or modules are always changed together</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Soulmates</name>
			<small>If enough information is available about the evolution of the grammar (e.g., in a form of a versioned repository or a piece of documentation describing all changes), one can notice two nonterminals having a so-called <emph>co-change relationship</emph> when each revision that changes one, also changes the other. The smell occurs when this co-change relationship in the revision log does not correspond to explicit dependencies between modules and nonterminals. TODO can be a thought experiment: if we do X, we must do Y<br/>Related smells: <a href="http://tusharma.in/smells/CROSSM.html">Implicit Cross-Module Dependency</a>, <a href="http://tusharma.in/smells/PIH.html">Parallel Inheritance Hierarchies</a>, <a href="http://tusharma.in/smells/SS.html">Shotgun Surgery</a></small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
