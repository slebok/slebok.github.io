<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: EVALUATE">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="evaluate.html">EVALUATE</a></span></h1>
		branch to multiple locations based on several conditions
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="820px" height="120px">
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
<!-- [('size', '41\\'), ('begin',), ('skip',), ('term', 'EVALUATE', 4), ('skip',), ('nt', 'AnyExpression', 7), ('skip',), ('save', '1'), ('skip', 20), ('term', 'END', 2), ('skip',), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'WHEN', 2), ('skip',), ('save', '2'), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 5), ('skip', 3), ('nt', 'Sentence', 4), ('skip',), ('uploop', 6), ('backbranch', 2), ('load', '2'), ('downbranch',), ('skip',), ('term', 'OTHER', 3), ('skip',), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">EVALUATE</text><path d="M 136 30 h 20"/><text class="i" x="156" y="34">&nbsp;AnyExpression</text><path d="M 296 30 h 20"/><path d="M 316 30 h 400"/><text x="716" y="34">&nbsp;END</text><path d="M 756 30 h 20"/><polygon points="784 30 776 26 776 34"/><polygon points="784 30 792 26 792 34"/><path d="M 316 30 v 40 h 20"/><text x="336" y="74">WHEN</text><path d="M 376 70 h 20"/><path d="M 396 70 h 40"/><text class="i" x="436" y="74">Atomic</text><path d="M 496 70 h 20"/><path d="M 516 70 v -20 h -100 v 20"/><polygon points="416 69 412 61 420 61"/><path d="M 516 70 h 60"/><text class="i" x="576" y="74">Sentence</text><path d="M 656 70 h 20"/><path d="M 676 70 v -20 h -120 v 20"/><polygon points="556 69 552 61 560 61"/><path d="M 676 70 h 20 v -40"/><polygon points="696 31 692 39 700 39"/><path d="M 396 70 v 20 h 20"/><path d="M 416 90 h 20"/><text x="436" y="94">&nbsp;OTHER</text><path d="M 496 90 h 20"/><path d="M 516 90 h 20 v -20"/><polygon points="536 71 532 79 540 79"/>
</svg>

<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="shorthand notation for a series of nested IF statements">EVALUATE</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">OTHERWISE</a></span> <span class="ff used"><a href="pli.html" title="">WHEN</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="define a branch in a SELECT group to be executed if no WHEN condition matches">OTHER</a></span> <span class="ff used"><a href="rpg.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <span class="ff used"><a href="rpg.html" title="define a branch within a SELECT block">WHEN</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>