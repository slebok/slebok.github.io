<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="TooWide in the GraSs">
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
		<pic dwarf>
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
			<h2>TooWide <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Complexity/TooWide.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/SATL.html">Subsystem-API Too Large</a>, <a href="http://tusharma.in/smells/LM.html">Long Method</a>, <a href="http://tusharma.in/smells/LPL.html">Long Parameter List</a>, <a href="http://tusharma.in/smells/CE.html">Complex Expression</a>, <a href="http://tusharma.in/smells/LS.html">Long Statement</a>, <a href="http://tusharma.in/smells/SMO.html">Multiple Operations</a>, <a href="http://tusharma.in/smells/SMR.html">Multiple References</a><br/></p><p> This smell is designed to recognise production rules which are too wide – that is, their right hand side is too long. There could be at least three different ways to define what is “too long”: </p><p> <ul> <li>The number of consequent terminals is too high, which is harmful because long streaks of consequent terminals obscure the syntactic structure.</li> <li>The number of nonterminals is too high, which is harmful because it requires knowledge about referenced nonterminals to debug a grammar (so we should not count preterminals).</li> <li>The number of metasymbols (stars, optionals, crosses, separator lists and other combinators) is too high, which is harmful because the importance of knowing the notation is stressed when a grammar engineer needs to understand such a production rule.</li> </ul> </p><p> The last option also correlates to the omnipresent notion of cyclomatic complexity (covered by the <a href="tooramose.html">TooRamose</a> smell), because many metasymbols imply branching that is done during parsing or analysing an instance. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
