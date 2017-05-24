<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language — Type Analysis</title>
		<link href="../../www/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header/>
		<h1><abbr title="DYOL is pronounced like 'duel' in English">DYOL</abbr>: <a href="../index.html">Design Your Own Language</a> — <a href="index.html#Type_Analysis">Type Analysis</a></h1>
		<hr/>
			<p><strong>Caveat emptor</strong>: these individual <em>card pages</em> are work in progress, and their content is in no way final!</p>
		<picdir>pic</picdir>
		<pic card>
			<title>Type Analysis</title>
			<text>Components can be identified, explicitly or automatically, to belong to a particular <em>type</em>. Among other things, the type determines applicability and compatibility of components with one another. In complex scenarios (like a <abbr title="a monad is a monoid in a category of endofunctors">monad</abbr>ic bind) hard to understand components can only fit together in one possible way. Type equivalence rules can be based on names, <a href="#Type_Definition">structure</a>, <a href="#Scope__Binding">scopes</a>, etc.</text>
		</pic>
		<pic card>
			<raw><h1 class="dwi E"><a href="http://designwithintent.co.uk/errorproofing-lens/">Matched affordances</a></h1></raw>
			<text>The original design card was about making the physical form of the designed object compatible with other parts of the system only in one particular way, such as making bevelled corners on SIM cards, flash cards and connectors that make sure they cannot be inserted the wrong way around The type theory plays a similar role in software languages, making program/model components fit only when they conform to the type-imposed expectations.</text>
		</pic>
		<pic card>
			<title>Synonyms and similar terms</title>
			<raw><dl>				<dt>Type Checking</dt>				<dd>Can be used as a synonym for type analysis, but also as an umbrella term for type analysis and synthesis: all rules and actions around the type systems.</dd>				<dt>Type Synthesis</dt>				<dd>A complementary set of techniques to type analysis, used in software language implementations. The main difference is the direction of type computations: bottom up in synthesis and top down in analysis.</dd>				<dt>Type System</dt>				<dd>The set of rules combining all the types available in a software language, into one system with subtypes, conversions, etc.</dd>			</dl></raw>
		</pic>
		<pic card>
			<title>Related cards</title>
			<text><ul><li><a class="mark" href="../cards/index.html#Character_Type">Character Type</a></li><li><a class="mark" href="../cards/index.html#Class_">Class </a>(main type in OOP)</li><li><a class="mark" href="../cards/index.html#Collection_">Collection </a>(Composite Type)</li><li><a class="mark" href="../cards/index.html#Enumeration_Type">Enumeration Type</a></li><li><a class="mark" href="../cards/index.html#Heterogeneous_Data">Heterogeneous Data</a></li><li><a class="mark" href="../cards/index.html#Numeric_Data_Type">Numeric Data Type</a></li><li><a class="mark" href="../cards/index.html#Parametrised_Type">Parametrised Type</a></li><li><a class="mark" href="../cards/index.html#Picture_Clause">Picture Clause</a></li><li><a class="mark" href="../cards/index.html#Pointer_">Pointer </a>(Reference Type)</li><li><a class="mark" href="../cards/index.html#Record_">Record </a>(and Dictionary)</li><li><a class="mark" href="../cards/index.html#Scope__Binding_">Scope & Binding </a>(Name-Type Binding)</li><li><a class="mark" href="../cards/index.html#Substitution_">Substitution </a>(Subtyping)</li><li><a class="mark" href="../cards/index.html#Type_Definition_">Type Definition </a>(Used-defined Types)</li></ul></text>
		</pic>
		<hr/>
		<div class="last">
			The DYOL toolkit was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>