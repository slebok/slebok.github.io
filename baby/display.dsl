<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCOBOL: DISPLAY">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCOBOL</a></span>: <span class="ff used"><a href="display.html">DISPLAY</a></span></h1>
		display text on the terminal
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="800px" height="80px">
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
<!-- [('size', '40:'), ('begin',), ('skip',), ('term', 'DISPLAY', 4), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('term', 'DELIMITED_BY', 6), ('skip',), ('save', '2'), ('skip',), ('term', 'SIZE', 2), ('skip', 3), ('save', '3'), ('load', '2'), ('downbranch',), ('term', 'SPACE', 3), ('backbranch',), ('load', '3'), ('uploop', 18), ('skip',), ('save', '4'), ('skip', 12), ('end',), ('load', '4'), ('downbranch',), ('term', 'WITH_NO_ADVANCING', 9), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">&nbsp;DISPLAY</text><path d="M 136 40 h 40"/><text class="i" x="176" y="44">Atomic</text><path d="M 236 40 h 20"/><text x="256" y="44">DELIMITED BY</text><path d="M 376 40 h 20"/><path d="M 396 40 h 20"/><text x="416" y="44">SIZE</text><path d="M 456 40 h 60"/><path d="M 396 40 v 20 h 20"/><text x="416" y="64">&nbsp;SPACE</text><path d="M 476 60 h 20 v -20"/><polygon points="496 41 492 49 500 49"/><path d="M 516 40 v -20 h -360 v 20"/><polygon points="156 39 152 31 160 31"/><path d="M 516 40 h 20"/><path d="M 536 40 h 240"/><polygon points="784 40 776 36 776 44"/><polygon points="784 40 792 36 792 44"/><path d="M 536 40 v 20 h 20"/><text x="556" y="64">&nbsp;WITH NO ADVANCING</text><path d="M 736 60 h 20 v -20"/><polygon points="756 41 752 49 760 49"/>
</svg>

<h2>Remarks</h2>
<ul><li><code>WITH NO ADVANCING</code> clause prints the text without appending newline character(s)</li><li>values <code>DELIMITED BY SPACE</code> are printed by converting them to strings and trimming empty spaces from both sides</li><li>values <code>DELIMITED BY SIZE</code> are printed by converting them to strings of fixed size corresponding to their defined (identifiers) or inferred (literals) type</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="display text on the terminal">WRITE</a></span> <span class="ff used"><a href="clist.html" title="display text on the terminal without advancing a cursor to the next line">WRITENR</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="print contents of data fields on the display">DISPLAY</a></span> <span class="ff used"><a href="cobol.html" title="format and concatenate strings">STRING</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="prepare data for printing">FORMAT</a></span> <span class="ff used"><a href="fortran.html" title="display data according to the given format">PRINT</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="display a line on the terminal">SAY</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="display a message">DSPLY</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCOBOL is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>