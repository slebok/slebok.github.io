<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Shotgun in the GraSs">
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
		<pic dwarf>
			<a>shotgun.html</a>
			<name>Shotgun</name>
			<small>a chunk of input could be parsed in more detail</small>
		</pic>
		<pic dwarf dim>
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
			<h2>Shotgun <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Parsing/Shotgun.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/MA.html">Missing Abstraction</a>, <a href="http://tusharma.in/smells/MAC2.html">Missing Abstraction</a><br/></p><p> <em>Shotgun parsing</em> is a term used in cybersecurity to represent an architecture where a proper parser is substituted with lightweight treatment (by regular expression matches and direct string manipulation) <a href="http://langsec.org">[Shotgun12]</a>. The name comes from the fact that in a pipeline of tools built with such defects, the problems quickly multiply with each step when the receiver is applying Postel's Law in trying to be relaxed with its input <a href="https://doi.org/10.1109/MSP.2012.31">[Sassaman2012]</a>, and is known to cause all kinds of subtle bugs in software language processing <a href="http://grammarware.net/writes/#Flexible2015">[Flexible2015]</a>. We define the Shotgun smell as a situation when the grammatical bind is too loose on one of its ends. For example, imagine function arguments in a C-like language to be parsed as a parenthesis-enclosing string which is expected to be split into a proper list by the code that uses the resulting tree. This smell was not seen within grammars of the Grammar Zoo, but was observed in the industrial setting when time pressure got the best of grammar engineers. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../credit.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
