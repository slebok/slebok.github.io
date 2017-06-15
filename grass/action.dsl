<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Action in the GraSs">
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
		<pic dwarf dim>
			<a>nodefault.html</a>
			<name>NoDefault</name>
			<small>no error-localising default branch</small>
		</pic>
		<pic dwarf>
			<a>action.html</a>
			<name>Action</name>
			<small>a code smell in a semantic action</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Action</name>
			<small>Related smells: <a href="http://tusharma.in/smells/ESRA.html">Switch Redundant Assignment</a>, <a href="http://tusharma.in/smells/PCTH.html">Circuitous Treasure Hunt</a>, <a href="http://tusharma.in/smells/PEDA.html">Excessive Dynamic Allocation</a>, <a href="http://tusharma.in/smells/POLB.html">The One Lane Bridge</a>, <a href="http://tusharma.in/smells/MG.html">Mystery Guest</a>, <a href="http://tusharma.in/smells/RO.html">Resource Optimism</a>, <a href="http://tusharma.in/smells/IPV.html">Invalid Property Value</a>, <a href="http://tusharma.in/smells/II.html">Inappropriate Intimacy</a>, <a href="http://tusharma.in/smells/TQ.html">Type Queries</a>, <a href="http://tusharma.in/smells/UE.html">Unexploited Encapsulation</a>, <a href="http://tusharma.in/smells/OILS.html">Obscure In-Line Setup</a>, <a href="http://tusharma.in/smells/FD.html">Functional Decomposition</a><br/>Many realistic language workbenches draw the line to prevent endless growing of their notations, and introduce a concept of a “semantic action”, which is introduced like an annotation in the grammar and acts as a doorway to the mainstream language typical for the target platform. Obviously, since this action consists of code, the code can suffer from one of the numerous code smells.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
