<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="TooRecursive in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
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
		<pic dwarf>
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
		<pic dwarf dim>
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
			<h2>TooRecursive <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Complexity/TooRecursive.tax">Edit!</a></span></h2>
			<p></p><p> We have talked about <a href="1sidedrecursion.html">1SidedRecursion</a> before but other kinds of recursion can also be confusing if recursion and mutual recursion is too prevalent.</p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
