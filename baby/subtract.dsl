<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: SUBTRACT" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="subtract.html">SUBTRACT</a></span></h1>
		a statement to subtract one or more numeric values from another value
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="680px" height="80px">
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
<!-- [('size', '34:4:1'), ('begin',), ('skip',), ('term', 'SUBTRACT', 4), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 5), ('skip',), ('term', 'FROM', 2), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('save', '1'), ('skip', 12), ('end',), ('load', '1'), ('downbranch',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">SUBTRACT</text><path d="M 136 40 h 40"/><text class="i" x="176" y="44">Atomic</text><path d="M 236 40 h 20"/><path d="M 256 40 v -20 h -100 v 20"/><polygon points="156 39 152 31 160 31"/><path d="M 256 40 h 20"/><text x="276" y="44">FROM</text><path d="M 316 40 h 20"/><text class="i" x="336" y="44">Atomic</text><path d="M 396 40 h 20"/><path d="M 416 40 h 240"/><polygon points="664 40 656 36 656 44"/><polygon points="664 40 672 36 672 44"/><path d="M 416 40 v 20 h 20"/><text x="436" y="64">GIVING</text><path d="M 496 60 h 20"/><text class="i" x="516" y="64">Identifier</text><path d="M 616 60 h 20 v -20"/><polygon points="636 41 632 49 640 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>all three arguments obey the rules of sufficient qualification</li><li>either of the first two arguments can be a literal</li><li>if the second argument is a literal, the third argument is mandatory</li><li>any of the three arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="subtract one or more numeric values from another value">SUBTRACT</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="subtract one number from another number">SUB</a></span> <span class="ff used"><a href="rpg.html" title="subtract a number from a field of zeroes">Z-SUB</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>