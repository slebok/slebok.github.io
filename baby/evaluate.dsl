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

<svg xmlns="http://www.w3.org/2000/svg" width="1100px" height="140px">
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
<!-- [('size', '55:7:1'), ('begin',), ('skip',), ('term', 'EVALUATE', 4), ('skip',), ('nt', 'AnyExpression', 7), ('skip', 2), ('save', '1'), ('skip', 32), ('uploop', 33), ('skip',), ('term', 'END', 2), ('skip',), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'WHEN', 2), ('skip',), ('save', '2'), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('save', '3'), ('downbranch',), ('term', 'THROUGH', 4), ('skip',), ('nt', 'Atomic', 3), ('backbranch',), ('load', '3'), ('skip', 10), ('skip',), ('uploop', 16), ('skip', 3), ('nt', 'Statement', 5), ('skip',), ('uploop', 7), ('backbranch', 2), ('load', '2'), ('downbranch', 2), ('skip',), ('term', 'OTHER', 3), ('skip', 12), ('backbranch', 2)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">EVALUATE</text><path d="M 136 40 h 20"/><text class="i" x="156" y="44">&nbsp;AnyExpression</text><path d="M 296 40 h 40"/><path d="M 336 40 h 640"/><path d="M 976 40 v -20 h -660 v 20"/><polygon points="316 39 312 31 320 31"/><path d="M 976 40 h 20"/><text x="996" y="44">&nbsp;END</text><path d="M 1036 40 h 20"/><polygon points="1064 40 1056 36 1056 44"/><polygon points="1064 40 1072 36 1072 44"/><path d="M 336 40 v 40 h 20"/><text x="356" y="84">WHEN</text><path d="M 396 80 h 20"/><path d="M 416 80 h 40"/><text class="i" x="456" y="84">Atomic</text><path d="M 516 80 h 20"/><path d="M 536 80 v 20 h 20"/><text x="556" y="104">&nbsp;THROUGH</text><path d="M 636 100 h 20"/><text class="i" x="656" y="104">Atomic</text><path d="M 716 100 h 20 v -20"/><polygon points="736 81 732 89 740 89"/><path d="M 536 80 h 200"/><path d="M 736 80 h 20"/><path d="M 756 80 v -20 h -320 v 20"/><polygon points="436 79 432 71 440 71"/><path d="M 756 80 h 60"/><text class="i" x="816" y="84">&nbsp;Statement</text><path d="M 916 80 h 20"/><path d="M 936 80 v -20 h -140 v 20"/><polygon points="796 79 792 71 800 71"/><path d="M 936 80 h 20 v -40"/><polygon points="956 41 952 49 960 49"/><path d="M 416 80 v 40 h 20"/><path d="M 436 120 h 20"/><text x="456" y="124">&nbsp;OTHER</text><path d="M 516 120 h 240"/><path d="M 756 120 h 20 v -40"/><polygon points="776 81 772 89 780 89"/>
</svg>

<h2>Remarks</h2>
<ul><li>Essentially, the role of the <code>EVALUATE</code> statement is to bring infix expressions into the language, and they are needed to force the software language engineer to deal with parsing ambiguities between <code>A-B</code> and <code>A - B</code> where the first one is a name of a single field and the second one is a binary subtraction of two fields (spaces serve a demonstrative purpose in this example, and are ignored during by the lexical analyser).</li><li>Note that <code>WHEN</code>-branches consist of statements, not sentences.</li><li>Each branch ends with its last statement, and there is no fall-through or other form of control flow from one branch to another.</li><li><a href="nextsentence.html"><code>NEXT SENTENCE</code></a> in the middle of <code>EVALUATE</code> statement works as usual, exiting it and continuing at the next sentence after it.</li></ul>
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