<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Factoring in the GraSs">
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
		<pic dwarf>
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
		<pic dwarf dim>
			<a>action.html</a>
			<name>Action</name>
			<small>a code smell in a semantic action</small>
		</pic>
		<hr/>
			<h2>Factoring <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Parsing/Factoring.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/MH.html">Missing Hierarchy</a>, <a href="http://tusharma.in/smells/ERC.html">Repeated Conditionals</a><br/></p><p> In classic by-the-book <a href="http://slebok.github.io/dyol/books/PT-GJ.html">[PT-GJ]</a> non-memoising parsing, if alternative production rules from the same nonterminal start from the same symbols, these would have to be reparsed in each of the branches. As a real example  (Doug Cooper, Scott Moore, <em><a href="http://slebok.github.io/zoo/#pascal_pascal_cooper-moore_fetched">Pascal grammar in Yacc format</a></em>, fetched): </p><p> <br/><code>open_if_statement<br/>&nbsp;:&nbsp;IF&nbsp;boolean_expression&nbsp;THEN&nbsp;statement<br/>&nbsp;|&nbsp;IF&nbsp;boolean_expression&nbsp;THEN&nbsp;closed_statement<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ELSE&nbsp;open_statement;<br/></code> </p><p> Interestingly, this example is a false positive: factoring the first three symbols into a separate nonterminal will clutter the grammar without bringing any noticeable benefits (and will introduce the <a href="weak.html">Weak</a> smell). In other cases, this smell has been avoided/removed  (The Dart Team, <em><a href="http://slebok.github.io/zoo/#dart_latex_v01.0_extracted">Dart Programming Language Specification</a></em>, extracted): </p><p> <br/><code>ifStatement&nbsp;::=&nbsp;"if"&nbsp;"("&nbsp;expression&nbsp;")"&nbsp;statement<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;("else"&nbsp;statement)?<br/></code> </p><p> </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
