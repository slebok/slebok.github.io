<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Chain in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf dim>
			<a>multitool.html</a>
			<name>Multitool</name>
			<small>a nonterminal that represents two or more concepts</small>
		</pic>
		<hr/>
			<h2>Chain <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Proxy/Chain.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/LC2.html">Lazy Class</a>, <a href="http://tusharma.in/smells/EAC.html">Extraneous Adjacent Connector</a>, <a href="http://tusharma.in/smells/MC.html">Message Chains</a>, <a href="http://tusharma.in/smells/MM.html">Middle Man</a>, <a href="http://tusharma.in/smells/SMM.html">Middle Man</a>, <a href="http://tusharma.in/smells/SLCC.html">Long Calculation Chain</a>, <a href="http://tusharma.in/smells/TML.html">Too Many Layers</a><br/></p><p> Chain rules are a well-known smell in grammar engineering <a href="http://bibtex.github.io/IFM-2009-LammelZ.html">[IFM-2009-LammelZ]</a><a href="http://bibtex.github.io/SCAM-J-2009-LammelZ11.html">[SCAM-J-2009-LammelZ11]</a>: it happens when a nonterminal is defined with only one production rule which has exactly one nonterminal as its right hand side. The “inner” nonterminal acts like a middle man and does not play a significant rule in structural commitments of the grammar. In Fowler's words, “after a while it’s time to cut out the middle man and talk to the object that really knows what’s going on” <a href="https://martinfowler.com/books/refactoring.html">[Refactoring]</a>. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
