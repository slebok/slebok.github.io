<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="ConfusingEntry in the GraSs">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf>
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
			<a>spaghetti.html</a>
			<name>Spaghetti</name>
			<small>scattering details over the grammar</small>
		</pic>
		<pic dwarf>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf dim>
			<a>mixture.html</a>
			<name>Mixture</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>almostalphabet.html</a>
			<name>AlmostAlphabet</name>
			<small>seemingly incomplete collections</small>
		</pic>
		<pic dwarf>
			<a>confusingentry.html</a>
			<name>ConfusingEntry</name>
			<small>no starting symbol</small>
		</pic>
		<pic dwarf dim>
			<a>dead.html</a>
			<name>Dead</name>
			<small>nonterminal defined, but not referenced</small>
		</pic>
		<pic dwarf dim>
			<a>bottom.html</a>
			<name>Bottom</name>
			<small>nonterminal referenced, but not defined</small>
		</pic>
		<pic dwarf dim>
			<a>debt.html</a>
			<name>Debt</name>
			<small>incompletenesses covered up by todo/fixme comments</small>
		</pic>
		<hr/>
		<pic wide>
			<name>ConfusingEntry</name>
			<small>With [smell]StartInTheMiddle[/smell] we have already addressed positioning of the starting symbol of the grammar, but there can be three more problems with it. First, some grammars do not have any root symbol specified at all. There are heuristics that work well on otherwise perfect grammars, and assign the root to be the only top nonterminal (defined but not referenced). Second, there can be multiple roots, especially for notations that do not deal with classic formal grammars. This can indicate several independent grammars that got merged into one, or just several entry points into the grammar (which would allow, for example, to parse statements or expressions out of context – it is a not quite challenging exercise in theory, but extremely useful in practical grammarware engineering when integrating software languages with an IDE and a debugger). The third issue arises when the root symbol is properly marked as such, but is also referenced from other nonterminals in the grammar (so the starting symbol is not a top nonterminal). <br/> The exact harmfulness of this smell heavily depends on the grammar handling framework.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
