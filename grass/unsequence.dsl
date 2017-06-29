<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Unsequence in the GraSs">
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
		<pic dwarf dim>
			<a>uncluster.html</a>
			<name>Uncluster</name>
			<small>related nonterminals too far from one another</small>
		</pic>
		<pic dwarf>
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
			<h2>Unsequence <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Navigation/Spaghetti/Unsequence.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/SC.html">Spaghetti Code</a><br/></p><p> The order of the production rules in the grammar should be set up in a consistent manner, such that referred nonterminals in production rules refer either up or down in the grammar. If <a href="uncluster.html">Uncluster</a> and <a href="splat.html">Splat</a> are concerned with general placement of production rules, this smell is about how they need to be structured to keep the reading experience optimal. </p><p> In the past we have been using a grammar mutation called <em>SubGrammar</em> to improve the readability of grammars extracted from language manuals <a href="http://grammarware.net/writes/#SLEIR2014">[SLEIR2014]</a>. It would reorder the rules in the following way: grab the starting symbol (usually the root of the grammar) and list all its production rules, and then go through all nonterminals used in their right hand sides one by one in the same sequence that they occur, add their production rules to the target grammar and add the newly used nonterminals to the backlog. Once the backlog was empty, the mutation stopped. This was one of the possible strategies to get rid of both <a href="splat.html">Splat</a> and <a href="unsequence.html">Unsequence</a>, and to some extent of <a href="uncluster.html">Uncluster</a>, but not the only one. </p><p> </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../credit.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
