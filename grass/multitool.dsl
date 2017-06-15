<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Multitool in the GraSs">
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
		<pic dwarf>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<pic dwarf dim>
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
			<a>chain.html</a>
			<name>Chain</name>
			<small>right hand side is a nonterminal</small>
		</pic>
		<pic dwarf dim>
			<a>throwaway.html</a>
			<name>Throwaway</name>
			<small>a nonterminal used only once</small>
		</pic>
		<pic dwarf dim>
			<a>weak.html</a>
			<name>Weak</name>
			<small>a nonterminal does not form a proper abstraction</small>
		</pic>
		<pic dwarf dim>
			<a>ghost.html</a>
			<name>Ghost</name>
			<small>a subexpression that should have been a nonterminal</small>
		</pic>
		<pic dwarf>
			<a>multitool.html</a>
			<name>Multitool</name>
			<small>a nonterminal that represents two or more concepts</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Multitool</name>
			<small>Related smells: <a href="http://tusharma.in/smells/GC.html">God Class</a>, <a href="http://tusharma.in/smells/PGC.html">God Class</a>, <a href="http://tusharma.in/smells/SAK.html">Swiss Army Knife</a>, <a href="http://tusharma.in/smells/MAC.html">Multifaceted Abstraction</a>, <a href="http://tusharma.in/smells/PBB.html">Brother of the Bride</a>, <a href="http://tusharma.in/smells/MA2.html">Multifaceted Abstraction</a><br/>This smells takes place when a nonterminal violates the single responsibility principle, and represents several (hopefully related) abstractions.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>