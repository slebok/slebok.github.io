<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: MULTIPLY" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="multiply.html">MULTIPLY</a></span></h1>
		a statement to multiply two or more numeric values
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
<!-- [('size', '33:4:1'), ('begin',), ('skip',), ('term', 'MULTIPLY', 4), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('term', 'BY', 1), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 1, 5), ('skip',), ('save', '1'), ('skip', 12), ('end',), ('load', '1'), ('downbranch',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">MULTIPLY</text><path d="M 136 40 h 20"/><text class="i" x="156" y="44">Atomic</text><path d="M 216 40 h 20"/><text x="236" y="44">BY</text><path d="M 256 40 h 40"/><text class="i" x="296" y="44">Atomic</text><path d="M 356 40 h 20"/><path d="M 376 40 v -20 h -100 v 20"/><polygon points="276 39 272 31 280 31"/><path d="M 376 40 h 20"/><path d="M 396 40 h 240"/><polygon points="644 40 636 36 636 44"/><polygon points="644 40 652 36 652 44"/><path d="M 396 40 v 20 h 20"/><text x="416" y="64">GIVING</text><path d="M 476 60 h 20"/><text class="i" x="496" y="64">Identifier</text><path d="M 596 60 h 20 v -20"/><polygon points="616 41 612 49 620 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>multiplies each of the second arguments by the first argument and overwrites the old value of each second argument, unless the third argument specifies a different storage place</li><li>so, for example, <code>MULTIPLY 2 BY X Y Z</code> will double the values of <code>X</code>, <code>Y</code> and <code>Z</code></li><li>all three arguments obey the rules of sufficient qualification</li><li>the first argument can be a literal</li><li>if the second argument is a literal, the third argument is mandatory</li><li>any of the three arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="multiply numeric values">MULTIPLY</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="multiply two numbers">MULT</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>