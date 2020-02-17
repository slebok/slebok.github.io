<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCOBOL: ADD">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCOBOL</a></span>: <span class="ff used"><a href="add.html">ADD</a></span></h1>
		add two or more values together
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="660px" height="80px">
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
<!-- [('size', '33:'), ('begin',), ('skip',), ('term', 'ADD', 2), ('skip',), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('uploop', 5), ('skip',), ('term', 'TO', 1), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('save', '1'), ('skip', 12), ('end',), ('load', '1'), ('downbranch',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">&nbsp;ADD</text><path d="M 96 40 h 20"/><path d="M 116 40 h 20"/><text class="i" x="136" y="44">Atomic</text><path d="M 196 40 h 20"/><path d="M 216 40 v -20 h -100 v 20"/><polygon points="116 39 112 31 120 31"/><path d="M 216 40 h 20"/><text x="236" y="44">TO</text><path d="M 256 40 h 20"/><text class="i" x="276" y="44">Atomic</text><path d="M 336 40 h 20"/><path d="M 356 40 h 240"/><polygon points="604 40 596 36 596 44"/><polygon points="604 40 612 36 612 44"/><path d="M 356 40 v 20 h 20"/><text x="376" y="64">GIVING</text><path d="M 436 60 h 20"/><text class="i" x="456" y="64">Identifier</text><path d="M 556 60 h 20 v -20"/><polygon points="576 41 572 49 580 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>all three arguments obey the rules of sufficient qualification</li><li>either of the first two arguments can be a literal</li><li>if the second argument is a literal, the third argument is mandatory</li><li>any of the three arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="sum two or more numeric operands">ADD</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="add two numbers together">ADD</a></span> <span class="ff used"><a href="rpg.html" title="add a number to a field of zeroes">Z-ADD</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCOBOL is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>