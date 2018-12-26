<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Diamond in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<pic dwarf>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf dim>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>diamond.html</a>
			<name>Diamond</name>
			<small>A is X and B is X, but C is A or B</small>
		</pic>
		<pic dwarf dim>
			<a>rivalry.html</a>
			<name>Rivalry</name>
			<small>overlapping alternatives</small>
		</pic>
		<pic dwarf dim>
			<a>ouroboros.html</a>
			<name>Ouroboros</name>
			<small>a circular dependency among modules</small>
		</pic>
		<pic dwarf dim>
			<a>soulmates.html</a>
			<name>Soulmates</name>
			<small>nonterminals or modules are always changed together</small>
		</pic>
		<pic dwarf dim>
			<a>spillover.html</a>
			<name>Spillover</name>
			<small>a nonterminal that is too linked to the adjacent symbols</small>
		</pic>
		<pic dwarf dim>
			<a>mythic.html</a>
			<name>Mythic</name>
			<small>an alternative that is never exercised in the codebase</small>
		</pic>
		<hr/>
			<h2>Diamond <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Dependency/Diamond.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/AAI.html">Ambiguous Interfaces</a><br/></p><p> A well-known pattern in dependency and inclusion is then a class A inherits from class X and class B also inherits from class X, but class C inherits from both A and B and thus gets to see double of each of X's elements. The problem is solved differently in different programming and modelling languages – in grammars, it causes an ambiguity (ISO/IEC 23270:2003(E), <em><a href="http://slebok.github.io/zoo/#csharp_v1.x_iso-23270-2003_extracted">Information technology — Programming languages — C Sharp</a></em>, extracted): </p><p> <br/><code>reference-type&nbsp;::=&nbsp;class-type&nbsp;|&nbsp;interface-type<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;delegate-type&nbsp;|&nbsp;...&nbsp;;<br/>class-type&nbsp;::=&nbsp;type-name&nbsp;|&nbsp;"object"&nbsp;|&nbsp;"string";<br/>interface-type&nbsp;::=&nbsp;type-name&nbsp;;<br/>delegate-type&nbsp;::=&nbsp;type-name&nbsp;;<br/></code> </p><p> Parsing something recognisable as <code>type-name</code> will cause at least a triple ambiguity since it will be an acceptable <code>class-type</code>, <code>interface-type</code> as well as <code>delegate-type</code> <a href="http://grammarware.net/writes/#Too-Sharp2005">[Too-Sharp2005]</a>. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
