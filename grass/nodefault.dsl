<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="NoDefault in the GraSs">
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
		<pic dwarf dim>
			<a>notation.html</a>
			<name>Notation</name>
			<small>metalanguage-related</small>
		</pic>
		<pic dwarf>
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
			<a>factoring.html</a>
			<name>Factoring</name>
			<small>improper factoring or distribution</small>
		</pic>
		<pic dwarf dim>
			<a>1sidedrecursion.html</a>
			<name>1SidedRecursion</name>
			<small>left or right recursive rules</small>
		</pic>
		<pic dwarf dim>
			<a>superset.html</a>
			<name>Superset</name>
			<small>parser spec is too relaxed</small>
		</pic>
		<pic dwarf dim>
			<a>shotgun.html</a>
			<name>Shotgun</name>
			<small>a chunk of input could be parsed in more detail</small>
		</pic>
		<pic dwarf>
			<a>nodefault.html</a>
			<name>NoDefault</name>
			<small>no error-localising default branch</small>
		</pic>
		<pic dwarf dim>
			<a>action.html</a>
			<name>Action</name>
			<small>a code smell in a semantic action</small>
		</pic>
		<hr/>
		<pic wide>
			<name>NoDefault</name>
			<small>Related smells: <a href="http://tusharma.in/smells/MDC.html">Missing Default Case</a>, <a href="http://tusharma.in/smells/AR.html">Assertion Roulette</a><br/>Parser generators are great for everything, except for one aspect: error handling. There are many methods that use heuristics in an attempt to improve the situation, but error detection, localisation and reporting in manually written parsers is always incomparably better than in generated ones. However, there are certain tricks experienced grammar engineers use to improve the situation. For example, consider a DSL where each statement starts with a keyword and ends with a period. An obvious improvement to the naïve approach would be to, for instance, once a keyword <code>MAP</code> is recognised, have a panic mode setup or some other semiparsing <a href="http://bibtex.github.io/CSMR-WCRE-2014-Zaytsev.html">[CSMR-WCRE-2014-Zaytsev]</a> machinery to fail locally and report on an “error in a map statement” rather than pointlessly try to backtrack and fail at the general statement level. To do this, one has to have a special <em>default</em> case among the rules for each particular statement kind. This recipe is more often observed in grammars written for frameworks where ordered choice is more natural (TXL, PEGs, etc).</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
