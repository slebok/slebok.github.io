<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BadLayout in the GraSs">
	<body>
		<header/>
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
		<pic dwarf dim>
			<a>spaghetti.html</a>
			<name>Spaghetti</name>
			<small>scattering details over the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf>
			<a>mixture.html</a>
			<name>Mixture</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>badlayout.html</a>
			<name>BadLayout</name>
			<small>problems with whitespace and comments</small>
		</pic>
		<pic dwarf dim>
			<a>preprocessor.html</a>
			<name>Preprocessor</name>
			<small>combining parsing spec with preprocessor spec</small>
		</pic>
		<hr/>
		<pic wide>
			<name>BadLayout</name>
			<small>Dealing with layout and whitespace can be very tricky, and, as any tricky process, there may be issues with it. Some language workbenches offer default layout, which, again, may be smelly to use it or not to use it – we cannot provide any general guidelines. Not specifying any layout may be harmful in some cases as well. <br/> One particular issue with layout can be explained in a bit of more detail. Usually there are two naturally different things covered by layout: whitespace (in software languages that ignore it) and comments (that do not influence behaviour of the system but can have an impact on its understanding). Mixing those two indiscriminately in the grammar may eventually lead to the point where it is required but impossible or overly complex to get one but not the other (e.g., for handling structured comments or preserving it through transformations).</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
