<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Misnomer in the GraSs">
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
		<pic dwarf dim>
			<a>misformat.html</a>
			<name>Misformat</name>
			<small>misleading formatting</small>
		</pic>
		<pic dwarf>
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
		<pic wide>
			<name>Misnomer</name>
			<small>Related smells: <a href="http://tusharma.in/smells/PNCN.html">Packages Not Clearly Named</a>, <a href="http://tusharma.in/smells/DA.html">Duplicate Abstraction</a>, <a href="http://tusharma.in/smells/INC.html">Inconsistent Naming Convention</a>, <a href="http://tusharma.in/smells/IQU.html">Improper Quote Usage</a><br/>There are a lot of potential problems with names used within a grammar, mostly concerning nonterminal names and labels. Many grammar notations do not support labels (decorative names for production rules or right hand side subexpressions) <a href="http://bibtex.github.io/SAC-2012-Zaytsev.html">[SAC-2012-Zaytsev]</a>, but realistic metalanguages tend to have them in some form. Nonterminal names, on the other hand, are essential – they are optional only in notations for regular expressions, and present in all grammar notations of the context-free kind and beyond. <br/> One can blame names to be <em>uncommunicative</em>, like the names from the last example: <code>abc</code> or <code>pqr</code> are much worse for the readability and maintainability of the grammar than <code>if_statement</code>, <code>CompilationUnit</code> or <code>DIGIT</code>, similarly to how this is a problem in programming in general <a href="http://bibtex.github.io/ICPC-2017-BeniaminiGOF.html">[ICPC-2017-BeniaminiGOF]</a>. One can also investigate whether naming <em>policies</em> are present and how they are respected. For instance, if all nonterminals are camelcased, but one is lowercase with an underscore separator, it was probably a misspelling – cases like this were reported in a MediaWiki grammar which was created by several unrelated grammar engineers <a href="http://bibtex.github.io/MediaWiki2011.html">[MediaWiki2011]</a>. If can also be the case that the naming policy carries semantic meaning: typically lexical nonterminals and/or preterminals are named in uppercase, to distinguish them visually when they are used next to others like this: <br/> <br/><code>&nbsp;if_stmt&nbsp;::=&nbsp;IF&nbsp;condition&nbsp;THEN&nbsp;expression&nbsp;ENDIF;<br/></code> <br/> Sometimes naming policies represent namescoping, which is considered a bad smell in OOP but is much less so in grammars because all names are global (at least up to a module level, if we have modules). An example: <br/> <br/><code>&nbsp;&nbsp;&nbsp;&nbsp;VarDef&nbsp;::=&nbsp;VarName&nbsp;DefKeyword&nbsp;VarType;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ConstDef&nbsp;::=&nbsp;ConstName&nbsp;DefKeyword&nbsp;ConstType;<br/></code> <br/> <br/> Finally, names can be <em>misleading</em> and contain words that contradict the definition of the named entity. For example: <br/> <br/><code>WhileStatement&nbsp;::=&nbsp;"while"&nbsp;Condition&nbsp;Block<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;"repeat"&nbsp;Block&nbsp;"until"&nbsp;Condition&nbsp;;<br/></code></small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
