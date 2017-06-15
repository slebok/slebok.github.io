<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Exotic in the GraSs">
	<body>
		<header/>
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
		<pic dwarf dim>
			<a>chant.html</a>
			<name>Chant</name>
			<small>comments cover up bad code</small>
		</pic>
		<pic dwarf dim>
			<a>deprecated.html</a>
			<name>Deprecated</name>
			<small>the use of a feature that is no longer welcome</small>
		</pic>
		<pic dwarf>
			<a>exotic.html</a>
			<name>Exotic</name>
			<small>too idiosyncratic notational features decrease portability</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Exotic</name>
			<small>Related smells: <a href="http://tusharma.in/smells/VLI.html">Vendor Lock−In</a>, <a href="http://tusharma.in/smells/GH.html">Golden Hammer</a><br/>This smell is in contradiction with [smell]Underuse[/smell], and states that using notational features that are uncommon, obscure or overly exotic, should be limited. Excessive use of features idiosyncratic for one particular notation, will result in a vendor lock-in. For example, if a notation allows context handling (pushing the grammar outside the comfort zone of CFGs), using it is only fully justified when the result is too cumbersome otherwise.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
