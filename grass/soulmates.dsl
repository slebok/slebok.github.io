<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Soulmates in the GraSs">
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
		<pic dwarf>
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
		<pic wide>
			<name>Soulmates</name>
			<small>Related smells: <a href="http://tusharma.in/smells/CROSSM.html">Implicit Cross-Module Dependency</a>, <a href="http://tusharma.in/smells/PIH.html">Parallel Inheritance Hierarchies</a>, <a href="http://tusharma.in/smells/SS.html">Shotgun Surgery</a>, <a href="http://tusharma.in/smells/SSS.html">Shotgun Surgery</a>, <a href="http://tusharma.in/smells/FE.html">Feature Envy</a>, <a href="http://tusharma.in/smells/SFE.html">Feature Envy</a>, <a href="http://tusharma.in/smells/II.html">Inappropriate Intimacy</a>, <a href="http://tusharma.in/smells/SII.html">Inappropriate Intimacy</a><br/>If enough information is available about the evolution of the grammar (e.g., in a form of a versioned repository or a piece of documentation describing all changes), one can notice two nonterminals having a so-called <em>co-change relationship</em> when each revision that changes one, also changes the other. The smell occurs when this co-change relationship in the revision log does not correspond to explicit dependencies between modules and nonterminals. <br/> In the absence of change history, a thought experiment may serve the same purpose: if a nonterminal <code>X</code> is to change in a particular way, what other nonterminals will have to be inevitably co-updated to preserve the consistency of the grammar? All of those, if any, are its [smell]Soulmates[/smell]. It deserves mentioning that the programming counterpart of this smell, called “Feature Envy”, is often detectable automatically through static code analysis. The Soulmates smell, however, is only detectable with revision mining or conceptual analysis.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
