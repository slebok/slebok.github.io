<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Priorities in the GraSs">
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
		<pic dwarf>
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
			<a>underuse.html</a>
			<name>Underuse</name>
			<small>inferior substitutes are used instead of an available feature</small>
		</pic>
		<pic dwarf dim>
			<a>overspec.html</a>
			<name>Overspec</name>
			<small>the same constraint specified through several means</small>
		</pic>
		<pic dwarf>
			<a>priorities.html</a>
			<name>Priorities</name>
			<small>not present or circular</small>
		</pic>
		<pic dwarf dim>
			<a>singleton.html</a>
			<name>Singleton</name>
			<small>trivial choice, sequence or conjunction</small>
		</pic>
		<pic dwarf dim>
			<a>combo.html</a>
			<name>Combo</name>
			<small>double modifier creates an ambiguity</small>
		</pic>
		<pic dwarf dim>
			<a>chant.html</a>
			<name>Chant</name>
			<small>comments cover up bad code</small>
		</pic>
		<pic dwarf dim>
			<a>deprecated.html</a>
			<name>Deprecated</name>
			<small>the use of a feature that is no longer welcome</small>
		</pic>
		<pic dwarf dim>
			<a>exotic.html</a>
			<name>Exotic</name>
			<small>too idiosyncratic notational features decrease portability</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Priorities</name>
			<small>Related smells: <a href="http://tusharma.in/smells/CMC.html">Cross-module Cycle</a>, <a href="http://tusharma.in/smells/NL.html">No Layers</a>, <a href="http://tusharma.in/smells/SS1.html">Stovepipe System</a><br/>A typical <em>layered</em> grammar <a href="http://bibtex.github.io/IFM-2009-LammelZ.html">[IFM-2009-LammelZ]</a> treats highly recursive language constructs with sophisticated priorities by explicitly encoding them in a long streak of nonterminals(ISO/IEC 14882:1998(E), <em><a href="http://slebok.github.io/zoo/#cpp_cpp98_iso-14882-1998_extracted">Programming languages — C++</a></em>, extracted): <br/> <br/><code>expression&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;assignment-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;expression&nbsp;","&nbsp;assignment-expr<br/>assignment-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;conditional-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-or-expr&nbsp;assignment-operator&nbsp;assignment-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;throw-expr<br/>conditional-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-or-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-or-expr&nbsp;"?"&nbsp;expression&nbsp;":"&nbsp;assignment-expr<br/>logical-or-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-and-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-or-expr&nbsp;"||"&nbsp;logical-and-expr<br/>logical-and-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;inclusive-or-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;logical-and-expr&nbsp;"&&"&nbsp;inclusive-or-expr<br/>inclusive-or-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;exclusive-or-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;inclusive-or-expr&nbsp;"|"&nbsp;exclusive-or-expr<br/>exclusive-or-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;and-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;exclusive-or-expr&nbsp;"^"&nbsp;and-expr<br/>and-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;equality-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;and-expr&nbsp;"&"&nbsp;equality-expr<br/>equality-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;relational-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;equality-expr&nbsp;"=="&nbsp;relational-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;equality-expr&nbsp;"!="&nbsp;relational-expr<br/>relational-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;shift-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;relational-expr&nbsp;"<"&nbsp;shift-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;relational-expr&nbsp;">"&nbsp;shift-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;relational-expr&nbsp;"<="&nbsp;shift-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;relational-expr&nbsp;">="&nbsp;shift-expr<br/>shift-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;additive-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;shift-expr&nbsp;"<<"&nbsp;additive-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;shift-expr&nbsp;">>"&nbsp;additive-expr<br/>additive-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;multiplicative-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;additive-expr&nbsp;"+"&nbsp;multiplicative-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;additive-expr&nbsp;"-"&nbsp;multiplicative-expr<br/>multiplicative-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;pm-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;multiplicative-expr&nbsp;"*"&nbsp;pm-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;multiplicative-expr&nbsp;"/"&nbsp;pm-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;multiplicative-expr&nbsp;"%"&nbsp;pm-expr<br/>pm-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;cast-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;pm-expr&nbsp;".*"&nbsp;cast-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;pm-expr&nbsp;"->*"&nbsp;cast-expr<br/>cast-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;unary-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;"("&nbsp;type-id&nbsp;")"&nbsp;cast-expr<br/>unary-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;postfix-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;"++"&nbsp;cast-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;"--"&nbsp;cast-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;unary-operator&nbsp;cast-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;"sizeof"&nbsp;unary-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;"sizeof"&nbsp;"("&nbsp;type-id&nbsp;")"<br/>&nbsp;&nbsp;&nbsp;&nbsp;new-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;delete-expr<br/>postfix-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;primary-expr<br/>&nbsp;&nbsp;&nbsp;&nbsp;postfix-expr&nbsp;"["&nbsp;expression&nbsp;"]"<br/>&nbsp;&nbsp;&nbsp;&nbsp;postfix-expr&nbsp;"("&nbsp;expression-list?&nbsp;")"<br/>&nbsp;&nbsp;&nbsp;&nbsp;postfix-expr&nbsp;"++"<br/>&nbsp;&nbsp;&nbsp;&nbsp;postfix-expr&nbsp;"--"<br/>primary-expr&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;literal<br/>&nbsp;&nbsp;&nbsp;&nbsp;"this"<br/>&nbsp;&nbsp;&nbsp;&nbsp;"("&nbsp;expression&nbsp;")"<br/>&nbsp;&nbsp;&nbsp;&nbsp;id-expr<br/></code> <br/> This example belongs to an obviously complicated programming language (C++), but the abundance of extra nonterminals increases this complexity. A cleaner way would have been to merge all definitions into one nonterminal (or a few conceptually grouped ones) and to define priorities between them. Priorities can be specified in a separate notation or by using ordered choices. Once these priorities are defined, there can be other variations of this smell in their specifications as such: circular dependencies, missing elements, etc.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
