<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Chant in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
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
		<pic dwarf dim>
			<a>convention.html</a>
			<name>Convention</name>
			<small>violations of visual policies</small>
		</pic>
		<pic dwarf>
			<a>notation.html</a>
			<name>Notation</name>
			<small>metalanguage-related</small>
		</pic>
		<pic dwarf dim>
			<a>parsing.html</a>
			<name>Parsing</name>
			<small>parsing techniques related smells</small>
		</pic>
		<pic dwarf dim>
			<a>duplication.html</a>
			<name>Duplication</name>
			<small>the same fragment is repeated</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>underuse.html</a>
			<name>Underuse</name>
			<small>inferior substitutes are used instead of an available feature</small>
		</pic>
		<pic dwarf dim>
			<a>overspec.html</a>
			<name>Overspec</name>
			<small>the same constraint specified through several means</small>
		</pic>
		<pic dwarf dim>
			<a>priorities.html</a>
			<name>Priorities</name>
			<small>not present or circular</small>
		</pic>
		<pic dwarf dim>
			<a>singleton.html</a>
			<name>Singleton</name>
			<small>trivial choice, sequence or conjunction</small>
		</pic>
		<pic dwarf dim>
			<a>combo.html</a>
			<name>Combo</name>
			<small>double modifier creates an ambiguity</small>
		</pic>
		<pic dwarf>
			<a>chant.html</a>
			<name>Chant</name>
			<small>comments cover up bad code</small>
		</pic>
		<pic dwarf dim>
			<a>deprecated.html</a>
			<name>Deprecated</name>
			<small>the use of a feature that is no longer welcome</small>
		</pic>
		<pic dwarf dim>
			<a>exotic.html</a>
			<name>Exotic</name>
			<small>too idiosyncratic notational features decrease portability</small>
		</pic>
		<hr/>
			<h2>Chant <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Notation/Chant.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/CO.html">Comments</a>, <a href="http://tusharma.in/smells/PDD.html">The Devil of Details</a><br/></p><p> During grammar recovery projects in the past we were occasionally stumbling across nonterminals that were “defined” in natural language instead of the actual grammar notation: “defined similarly to...”, “all Unicode characters of class...”, “any of the following”, etc. These are drastic examples of this smell, since they make the grammar completely useless for automatic machine consumption. However, having improper constructions in one's grammar that are covered up by an extensive comment explaining why it is not that that bad, is still an instance of this smell. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
