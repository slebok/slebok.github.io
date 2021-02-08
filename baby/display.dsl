<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: DISPLAY">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="display.html">DISPLAY</a></span></h1>
		a statement to display text on the terminal
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="840px" height="120px">
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
<!-- [('size', '42\\'), ('begin',), ('skip',), ('term', 'DISPLAY', 4), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('save', '1'), ('skip', 12), ('load', '1'), ('downbranch',), ('term', 'DELIMITED_BY', 6), ('skip',), ('save', '2'), ('skip', 2), ('term', 'SIZE', 2), ('skip',), ('backbranch',), ('load', '2'), ('downbranch',), ('term', 'SPACE', 3), ('skip', 2), ('load', '2'), ('downbranch', 2), ('nt', 'Literal', 4), ('backbranch', 3), ('skip', 3), ('uploop', 20), ('skip',), ('save', '4'), ('skip', 12), ('end',), ('load', '4'), ('downbranch',), ('term', 'WITH_NO_ADVANCING', 9), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">&nbsp;DISPLAY</text><path d="M 136 30 h 40"/><text class="i" x="176" y="34">Atomic</text><path d="M 236 30 h 20"/><path d="M 256 30 h 240"/><path d="M 256 30 v 20 h 20"/><text x="276" y="54">DELIMITED BY</text><path d="M 396 50 h 20"/><path d="M 416 50 h 40"/><text x="456" y="54">SIZE</text><path d="M 496 50 h 20"/><path d="M 516 50 h 20 v -20"/><polygon points="536 31 532 39 540 39"/><path d="M 416 50 v 20 h 20"/><text x="436" y="74">&nbsp;SPACE</text><path d="M 496 70 h 40"/><path d="M 416 50 v 40 h 20"/><text class="i" x="436" y="94">&nbsp;Literal</text><path d="M 516 90 h 20 v -60"/><polygon points="536 31 532 39 540 39"/><path d="M 496 30 h 60"/><path d="M 556 30 v -20 h -400 v 20"/><polygon points="156 29 152 21 160 21"/><path d="M 556 30 h 20"/><path d="M 576 30 h 240"/><polygon points="824 30 816 26 816 34"/><polygon points="824 30 832 26 832 34"/><path d="M 576 30 v 20 h 20"/><text x="596" y="54">&nbsp;WITH NO ADVANCING</text><path d="M 776 50 h 20 v -20"/><polygon points="796 31 792 39 800 39"/>
</svg>

<h2>Remarks</h2>
<ul><li><code>WITH NO ADVANCING</code> clause prints the text without appending newline character(s)</li><li>values <code>DELIMITED BY SPACE</code> are printed by converting them to strings and trimming empty spaces from both sides</li><li>values <code>DELIMITED BY SIZE</code> are printed by converting them to strings of fixed size corresponding to their defined (identifiers) or inferred (literals) type</li><li>values <code>DELIMITED BY <em>Literal</em></code> are printed up to the first occurrence of the substring expressed by the literal</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="display text on the terminal">WRITE</a></span> <span class="ff used"><a href="clist.html" title="display text on the terminal without advancing a cursor to the next line">WRITENR</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="print contents of data fields on the display">DISPLAY</a></span> <span class="ff used"><a href="cobol.html" title="format and concatenate strings">STRING</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="prepare data for printing">FORMAT</a></span> <span class="ff used"><a href="fortran.html" title="display data according to the given format">PRINT</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="display a line on the terminal">SAY</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="display a message">DSPLY</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>