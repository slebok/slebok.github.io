<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="ZigZag in the GraSs">
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
		<pic dwarf dim>
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
		<pic dwarf>
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
			<h2>ZigZag <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Organisation/Convention/ZigZag.tax">Edit!</a></span></h2>
			<p></p><p> ZigZag was a previously identified micropattern of a nonterminal defined in a style that mixes horizontal production rules (the ones with a top-level choice) with vertical production rules (with several rules per nonterminal) <a href="http://bibtex.github.io/SLE-2013-Zaytsev.html">[SLE-2013-Zaytsev]</a>. In this fragment <code>aaa</code> is horizontal, <code>ddd</code> is vertical and <code>ggg</code> is zigzag: </p><p> <br/><code>&nbsp;&nbsp;&nbsp;&nbsp;aaa&nbsp;::=&nbsp;bbb&nbsp;|&nbsp;ccc;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ddd&nbsp;::=&nbsp;eee;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ddd&nbsp;::=&nbsp;fff;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ggg&nbsp;::=&nbsp;hhh&nbsp;|&nbsp;jjj;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ggg&nbsp;::=&nbsp;mmm;<br/></code> </p><p> When it comes to smells, we have at least two ways to define and detect ZigZags: the <em>local</em> one within a nonterminal (equal to the micropattern) and the <em>global</em> within a grammar. The latter would mean that some nonterminals are defined horizontally while others are defined vertically, which may not be technically detrimental, but is still sloppy.</p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../credit.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
