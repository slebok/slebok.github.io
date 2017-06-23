<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Misformat in the GraSs">
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
		<pic dwarf>
			<a>convention.html</a>
			<name>Convention</name>
			<small>violations of visual policies</small>
		</pic>
		<pic dwarf dim>
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
		<pic dwarf>
			<a>misformat.html</a>
			<name>Misformat</name>
			<small>misleading formatting</small>
		</pic>
		<pic dwarf dim>
			<a>misnomer.html</a>
			<name>Misnomer</name>
			<small>problems with naming policies</small>
		</pic>
		<pic dwarf dim>
			<a>saymyname.html</a>
			<name>SayMyName</name>
			<small>a misspelling or improper use of the natural language</small>
		</pic>
		<pic dwarf dim>
			<a>zigzag.html</a>
			<name>ZigZag</name>
			<small>mixing horizontal and vertical styles</small>
		</pic>
		<pic dwarf dim>
			<a>splat.html</a>
			<name>Splat</name>
			<small>nonterminal fragments scattered over the grammar</small>
		</pic>
		<hr/>
			<h2>Misformat <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Convention/Misformat.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/IPA.html">Improper Alignment</a><br/></p><p> There are many formatting mistakes one can make when creating a grammar without proper tool support <a href="http://bibtex.github.io/LDTA-2012-Zaytsev.html">[LDTA-2012-Zaytsev]</a> <a href="http://bibtex.github.io/SCAM-J-2009-LammelZ11.html">[SCAM-J-2009-LammelZ11]</a>. Mostly they revolve around mistypings, misspellings, misalignments, etc, and result in actual incorrect constructs in extracted grammars. However, there can be other, more subtle smells within formatting of a grammar, that do not change the way the machine processes it, but do change the way a tired grammarware engineer may understand it. The most canonic example of misleading formatting would be (mind the colon, not a semicolon, following <code>ghi</code>): </p><p> <br/><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;abc&nbsp;:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ghi:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jkl;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mno&nbsp;:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pqr;<br/></code> </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
