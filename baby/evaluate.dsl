<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: EVALUATE" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="evaluate.html">EVALUATE</a></span></h1>
		a composite statement allowing to branch to multiple locations based on several conditions
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="860px" height="120px">
	<defs>
		<style type="text/css">
			@namespace "http://www.w3.org/2000/svg";
			svg {background-color: white;}
			path {fill: none; stroke: black;}
			polygon {fill: black; stroke: black;}
			text {font-size:16px;fill:black;font-weight:bold;font-family:monospace;}
			text.i {font-style:italic;}
		</style>
	</defs>
<!-- [('size', '43:6:1'), ('begin',), ('skip',), ('term', 'EVALUATE', 4), ('skip',), ('nt', 'AnyExpression', 7), ('skip', 2), ('save', '1'), ('skip', 20), ('uploop', 21), ('skip',), ('term', 'END', 2), ('skip',), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'WHEN', 2), ('skip',), ('save', '2'), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 5), ('skip', 3), ('nt', 'Sentence', 4), ('skip',), ('uploop', 6), ('backbranch', 2), ('load', '2'), ('downbranch',), ('skip',), ('term', 'OTHER', 3), ('skip',), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">EVALUATE</text><path d="M 136 40 h 20"/><text class="i" x="156" y="44">&nbsp;AnyExpression</text><path d="M 296 40 h 40"/><path d="M 336 40 h 400"/><path d="M 736 40 v -20 h -420 v 20"/><polygon points="316 39 312 31 320 31"/><path d="M 736 40 h 20"/><text x="756" y="44">&nbsp;END</text><path d="M 796 40 h 20"/><polygon points="824 40 816 36 816 44"/><polygon points="824 40 832 36 832 44"/><path d="M 336 40 v 40 h 20"/><text x="356" y="84">WHEN</text><path d="M 396 80 h 20"/><path d="M 416 80 h 40"/><text class="i" x="456" y="84">Atomic</text><path d="M 516 80 h 20"/><path d="M 536 80 v -20 h -100 v 20"/><polygon points="436 79 432 71 440 71"/><path d="M 536 80 h 60"/><text class="i" x="596" y="84">Sentence</text><path d="M 676 80 h 20"/><path d="M 696 80 v -20 h -120 v 20"/><polygon points="576 79 572 71 580 71"/><path d="M 696 80 h 20 v -40"/><polygon points="716 41 712 49 720 49"/><path d="M 416 80 v 20 h 20"/><path d="M 436 100 h 20"/><text x="456" y="104">&nbsp;OTHER</text><path d="M 516 100 h 20"/><path d="M 536 100 h 20 v -20"/><polygon points="556 81 552 89 560 89"/>
</svg>

<h2>Remarks</h2>
<ul><li>Essentially, the role of the <code>EVALUATE</code> statement is to bring infix expressions into the language, and they are needed to force the software language engineer to deal with parsing ambiguities between <code>A-B</code> and <code>A - B</code> where the first one is a name of a single field and the second one is a binary subtraction of two fields (spaces serve a demonstrative purpose in this example, and are ignored during by the lexical analyser).</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="branch to multiple locations based on several conditions">CASEOF</a></span> <br/><span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="shorthand notation for a series of nested IF statements">EVALUATE</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">OTHERWISE</a></span> <span class="ff used"><a href="pli.html" title="">WHEN</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="define a branch in a SELECT group to be executed if no WHEN condition matches">OTHER</a></span> <span class="ff used"><a href="rpg.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <span class="ff used"><a href="rpg.html" title="define a branch within a SELECT block">WHEN</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>