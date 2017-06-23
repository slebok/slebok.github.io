<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Lonely in the GraSs">
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
		<pic dwarf dim>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>toowide.html</a>
			<name>TooWide</name>
			<small>the width (right hand side length) is too big</small>
		</pic>
		<pic dwarf dim>
			<a>tooramose.html</a>
			<name>TooRamose</name>
			<small>too much branching</small>
		</pic>
		<pic dwarf dim>
			<a>toorecursive.html</a>
			<name>TooRecursive</name>
			<small>too much recursion</small>
		</pic>
		<pic dwarf dim>
			<a>toonested.html</a>
			<name>TooNested</name>
			<small>groups are too deeply nested</small>
		</pic>
		<pic dwarf dim>
			<a>tootall.html</a>
			<name>TooTall</name>
			<small>the height (distance from the root) is too big</small>
		</pic>
		<pic dwarf>
			<a>lonely.html</a>
			<name>Lonely</name>
			<small>large non-modular grammar</small>
		</pic>
		<pic dwarf dim>
			<a>toomodular.html</a>
			<name>TooModular</name>
			<small>too many modules</small>
		</pic>
		<pic dwarf dim>
			<a>greedy.html</a>
			<name>Greedy</name>
			<small>one module that does too much</small>
		</pic>
		<pic dwarf dim>
			<a>lazy.html</a>
			<name>Lazy</name>
			<small>one module that does not do much</small>
		</pic>
		<pic dwarf dim>
			<a>toocoupled.html</a>
			<name>TooCoupled</name>
			<small>low cohesion and/or high coupling</small>
		</pic>
		<hr/>
			<h2>Lonely <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Complexity/Lonely.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/NS.html">No Subsystems</a>, <a href="http://tusharma.in/smells/IM.html">Insufficient Modularization</a>, <a href="http://tusharma.in/smells/CIM.html">Insufficient Modularization</a><br/></p><p> A variant of the well-known Insufficient Modularisation smell, ported to grammars: if the size of a grammar is much larger than expected, the time has come to split it up in modules. Old-fashioned notations did not have any explicit modularisation capabilities and treated a collection of production rules as a set, but modern language workbenches have advanced frameworks with namespaces, dependence management, etc <a href="http://bibtex.github.io/SLE-2013-ErdwegSVBBCGHKLKMPPSSSVVVWW.html">[SLE-2013-ErdwegSVBBCGHKLKMPPSSSVVVWW]</a> <a href="http://bibtex.github.io/BastenB0KLLPSV15.html">[BastenB0KLLPSV15]</a>. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
