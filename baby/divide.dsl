<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: DIVIDE" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="divide.html">DIVIDE</a></span></h1>
		a statement to divide a numeric value by other numbers
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="1000px" height="100px">
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
<!-- [('size', '50:5:1'), ('begin',), ('skip',), ('term', 'DIVIDE', 3), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('term', 'INTO', 2), ('skip',), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('uploop', 1, 5), ('skip',), ('save', '1'), ('skip', 27), ('end',), ('load', '1'), ('downbranch',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('save', '2'), ('skip', 13), ('backbranch',), ('load', '2'), ('downbranch',), ('term', 'REMAINDER', 5), ('skip',), ('nt', 'Identifier', 5), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">DIVIDE</text><path d="M 116 40 h 20"/><text class="i" x="136" y="44">Atomic</text><path d="M 196 40 h 20"/><text x="216" y="44">INTO</text><path d="M 256 40 h 20"/><path d="M 276 40 h 20"/><text class="i" x="296" y="44">Atomic</text><path d="M 356 40 h 20"/><path d="M 376 40 v -20 h -100 v 20"/><polygon points="276 39 272 31 280 31"/><path d="M 376 40 h 20"/><path d="M 396 40 h 540"/><polygon points="944 40 936 36 936 44"/><polygon points="944 40 952 36 952 44"/><path d="M 396 40 v 20 h 20"/><text x="416" y="64">GIVING</text><path d="M 476 60 h 20"/><text class="i" x="496" y="64">Identifier</text><path d="M 596 60 h 20"/><path d="M 616 60 h 260"/><path d="M 876 60 h 20 v -20"/><polygon points="896 41 892 49 900 49"/><path d="M 616 60 v 20 h 20"/><text x="636" y="84">&nbsp;REMAINDER</text><path d="M 736 80 h 20"/><text class="i" x="756" y="84">Identifier</text><path d="M 856 80 h 20 v -20"/><polygon points="876 61 872 69 880 69"/>
</svg>

<h2>Remarks</h2>
<ul><li>divides each of the second arguments by the first argument and overwrites the old value of each second argument</li><li>so, for example, <code>DIVIDE 2 INTO X Y Z</code> will halve the values of <code>X</code>, <code>Y</code> and <code>Z</code></li><li>all four arguments obey the rules of sufficient qualification</li><li>the first argument can be a literal or a field name</li><li>if the second argument is a literal, the third argument is mandatory</li><li>if the four argument is not present, the remainder is lost</li><li>any of the four arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="divide one numeric operand into others">DIVIDE</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="divide a number by another number">DIV</a></span> <span class="ff used"><a href="rpg.html" title="calculate a reminder of a division">MVR</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>