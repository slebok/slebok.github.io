<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Superset in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf dim>
			<a>action.html</a>
			<name>Action</name>
			<small>a code smell in a semantic action</small>
		</pic>
		<hr/>
			<h2>Superset <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Parsing/Superset.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/OG.html">Overgeneralization</a><br/></p><p> Some grammars represent a superset of the intended language. This may become a problem if the parser based on the grammar is to be used as a correctness oracle, since in this role it is inadequate. Overly relaxed grammars are routinely used in other scenarios such as software analytics and inter-language translation, and can be very useful there. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
