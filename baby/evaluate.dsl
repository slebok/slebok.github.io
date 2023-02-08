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

<svg xmlns="http://www.w3.org/2000/svg" width="1060px" height="200px">
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
<!-- [('size', '53:10:3'), ('begin',), ('skip',), ('term', 'EVALUATE', 4), ('skip',), ('nt', 'AnyExpression', 7), ('skip', 2), ('term', 'ALSO', 2), ('skip',), ('nt', 'AnyExpression', 7), ('skip',), ('uploop', 1, 12), ('skip', 2), ('nt', 'WhenClause', 5), ('skip', 3), ('nt', 'Statement', 5), ('skip',), ('uploop', 1, 7), ('skip',), ('uploop', 2, 16), ('skip',), ('term', 'END', 2), ('skip',), ('end',), ('cr', 4), ('nt', 'WhenClause', 5), ('begin',), ('skip',), ('term', 'WHEN', 2), ('skip',), ('save', '1'), ('skip', 3), ('nt', 'Atomic', 3), ('skip',), ('save', '3'), ('downbranch',), ('term', 'THROUGH', 4), ('skip',), ('nt', 'Atomic', 3), ('backbranch',), ('load', '3'), ('skip', 10), ('skip',), ('uploop', 1, 16), ('skip',), ('save', '4'), ('skip',), ('term', 'ALSO', 2), ('skip',), ('uploop', 2, 22), ('load', '4'), ('downbranch',), ('skip', 4), ('end',), ('load', '1'), ('downbranch', 2), ('skip',), ('term', 'OTHER', 3), ('skip', 17), ('backbranch',)] -->
<polygon points="28 60 20 56 20 64"/><polygon points="36 60 28 56 28 64"/><path d="M 36 60 h 20"/><text x="56" y="64">EVALUATE</text><path d="M 136 60 h 20"/><text class="i" x="156" y="64">&nbsp;AnyExpression</text><path d="M 296 60 h 40"/><text x="336" y="64">ALSO</text><path d="M 376 60 h 20"/><text class="i" x="396" y="64">&nbsp;AnyExpression</text><path d="M 536 60 h 20"/><path d="M 556 60 v -20 h -240 v 20"/><polygon points="316 59 312 51 320 51"/><path d="M 556 60 h 40"/><text class="i" x="596" y="64">WhenClause</text><path d="M 696 60 h 60"/><text class="i" x="756" y="64">&nbsp;Statement</text><path d="M 856 60 h 20"/><path d="M 876 60 v -20 h -140 v 20"/><polygon points="736 59 732 51 740 51"/><path d="M 876 60 h 20"/><path d="M 896 60 v -40 h -320 v 40"/><polygon points="576 59 572 51 580 51"/><path d="M 896 60 h 20"/><text x="916" y="64">&nbsp;END</text><path d="M 956 60 h 20"/><polygon points="984 60 976 56 976 64"/><polygon points="984 60 992 56 992 64"/><text class="i" x="20" y="144">WhenClause</text><polygon points="128 140 120 136 120 144"/><polygon points="136 140 128 136 128 144"/><path d="M 136 140 h 20"/><text x="156" y="144">WHEN</text><path d="M 196 140 h 20"/><path d="M 216 140 h 60"/><text class="i" x="276" y="144">Atomic</text><path d="M 336 140 h 20"/><path d="M 356 140 v 20 h 20"/><text x="376" y="164">&nbsp;THROUGH</text><path d="M 456 160 h 20"/><text class="i" x="476" y="164">Atomic</text><path d="M 536 160 h 20 v -20"/><polygon points="556 141 552 149 560 149"/><path d="M 356 140 h 200"/><path d="M 556 140 h 20"/><path d="M 576 140 v -20 h -320 v 20"/><polygon points="256 139 252 131 260 131"/><path d="M 576 140 h 20"/><path d="M 596 140 h 20"/><text x="616" y="144">ALSO</text><path d="M 656 140 h 20"/><path d="M 676 140 v -40 h -440 v 40"/><polygon points="236 139 232 131 240 131"/><path d="M 596 140 v 20 h 20"/><path d="M 616 160 h 80"/><polygon points="704 160 696 156 696 164"/><polygon points="704 160 712 156 712 164"/><path d="M 216 140 v 40 h 20"/><path d="M 236 180 h 20"/><text x="256" y="184">&nbsp;OTHER</text><path d="M 316 180 h 340"/><path d="M 656 180 h 20 v -20"/><polygon points="676 161 672 169 680 169"/>
</svg>

<h2>Remarks</h2>
<ul><li>Essentially, the role of the <code>EVALUATE</code> statement is to bring infix expressions into the language, and they are needed to force the software language engineer to deal with parsing ambiguities between <code>A-B</code> and <code>A - B</code> where the first one is a name of a single field and the second one is a binary subtraction of two fields (spaces serve a demonstrative purpose in this example, and are ignored during by the lexical analyser).</li><li>Note that <code>WHEN</code>-branches consist of statements, not sentences.</li><li>There can be only one <code>WHEN OTHER</code> clause within each <code>EVALUATE</code>.</li><li>Unlike COBOL, BabyCobol does not support empty <code>WHEN</code> branches: grouping of multiple conditions is done by the <code>WHEN</code> clause itself, like in 4GLs like <a href="appbuilder.html">AppBuilder</a>, so <code>WHEN 1 WHEN 2 DISPLAY "OK"</code> in COBOL would look like <code>WHEN 1 2 DISPLAY "OK"</code> in BabyCobol.</li><li>Each branch ends with its last statement, and there is no fall-through or other form of control flow from one branch to another.</li><li><a href="nextsentence.html"><code>NEXT SENTENCE</code></a> in the middle of <code>EVALUATE</code> statement works as usual, exiting it and continuing at the next sentence after it.</li></ul>
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