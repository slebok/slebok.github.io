<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Uncluster in the GraSs">
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
		<pic dwarf>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>spaghetti.html</a>
			<name>Spaghetti</name>
			<small>scattering details over the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf dim>
			<a>mixture.html</a>
			<name>Mixture</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>uncluster.html</a>
			<name>Uncluster</name>
			<small>related nonterminals too far from one another</small>
		</pic>
		<pic dwarf dim>
			<a>unsequence.html</a>
			<name>Unsequence</name>
			<small>confusing order of the production rules</small>
		</pic>
		<pic dwarf dim>
			<a>startinthemiddle.html</a>
			<name>StartInTheMiddle</name>
			<small>the root symbol should not occur in the middle</small>
		</pic>
		<hr/>
			<h2>Uncluster <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Navigation/Spaghetti/Uncluster.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/DC3.html">Divergent Change</a>, <a href="http://tusharma.in/smells/SC.html">Spaghetti Code</a><br/></p><p> Nonterminals that refer to one another, should be located close to one another. The longer the distance between the use of a nonterminal from its definition, the more the reader of the grammar will have to switch context. A lot of scrolling always means there is something smelly about how the grammar is set up. Moving the production rules that cause the scrolling closer to each other to form a cluster, will result in an easier grammar with more coherent structure. </p><p> Automated removal of this smell is problematic, since the grammar engineer should decide which nonterminals to move where, but there are a lot of heuristics one can develop and test their effectiveness empirically. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
