<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="1SidedRecursion in the GraSs">
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
		<pic dwarf>
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
		<pic wide>
			<name>1SidedRecursion</name>
			<small>Related smells: <a href="http://tusharma.in/smells/CH.html">Cyclic Hierarchy</a>, <a href="http://tusharma.in/smells/ESA.html">Self Assignment</a><br/>It is well-known that left-recursive definitions are deadly for by-the-book top-down parsing technologies <a href="http://slebok.github.io/dyol/books/PT-GJ.html">[PT-GJ]</a>, since they create an infinite loop and cause the parser to crash from stack overflow. There are many approaches to solve the problem by grammar refactoring or parser tweaking, available from late 1960s, but most of them, if not all, increase the size and complexity of the grammar significantly. Hence, we can imagine some scenarios when left recursion should be recognised as a smell to be reported to the grammar engineer who will fix the issue manually. This is an example (Vadim Zaytsev, <em><a href="http://slebok.github.io/zoo/#toy_fl_concrete_txl_extracted">FL.Txl</a></em>, extracted): <br/> <br/><code>expression&nbsp;::=<br/>&nbsp;&nbsp;&nbsp;&nbsp;expression&nbsp;op&nbsp;expression<br/>&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;expression+<br/>&nbsp;&nbsp;&nbsp;&nbsp;...<br/></code> <br/> It must be noted here that indirect recursion (when <code>A</code>'s right hand side starts with <code>B</code> whose right hand side starts with <code>A</code>) is just as deadly for top-down parsing as direct recursion. <br/> Right recursion in general is less harmful, but it does lead to bottom-up parsers being slower than otherwise <a href="http://slebok.github.io/dyol/books/PT-GJ.html">[PT-GJ]</a>, so it should still be avoided whenever possible.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
