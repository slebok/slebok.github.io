<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: SUBTRACT" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="subtract.html">SUBTRACT</a></span></h1>
		a statement to subtract numeric values from other values
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="780px" height="100px">
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
<!-- [('size', '39:5:1'), ('begin',), ('skip',), ('term', 'SUBTRACT', 4), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 1, 5), ('skip',), ('term', 'FROM', 2), ('skip', 2), ('nt', 'Atomic', 3), ('skip',), ('uploop', 1, 5), ('skip',), ('save', '1'), ('skip', 14), ('end',), ('load', '1'), ('downbranch', 2), ('skip',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('uploop', 1, 11), ('backbranch', 2)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">SUBTRACT</text><path d="M 136 40 h 40"/><text class="i" x="176" y="44">Atomic</text><path d="M 236 40 h 20"/><path d="M 256 40 v -20 h -100 v 20"/><polygon points="156 39 152 31 160 31"/><path d="M 256 40 h 20"/><text x="276" y="44">FROM</text><path d="M 316 40 h 40"/><text class="i" x="356" y="44">Atomic</text><path d="M 416 40 h 20"/><path d="M 436 40 v -20 h -100 v 20"/><polygon points="336 39 332 31 340 31"/><path d="M 436 40 h 20"/><path d="M 456 40 h 280"/><polygon points="744 40 736 36 736 44"/><polygon points="744 40 752 36 752 44"/><path d="M 456 40 v 40 h 20"/><path d="M 476 80 h 20"/><text x="496" y="84">GIVING</text><path d="M 556 80 h 20"/><text class="i" x="576" y="84">Identifier</text><path d="M 676 80 h 20"/><path d="M 696 80 v -20 h -220 v 20"/><polygon points="476 79 472 71 480 71"/><path d="M 696 80 h 20 v -40"/><polygon points="716 41 712 49 720 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>subtracts the sum of all first arguments from each of the second arguments and overwrites the old value of each second argument, unless the third argument specifies a different storage place</li><li>so, for example, <code>SUBTRACT 1 FROM X Y Z</code> will decrement the values of <code>X</code>, <code>Y</code> and <code>Z</code></li><li>all three arguments obey the rules of sufficient qualification</li><li>the first argument can be a literal</li><li>if the second argument is a literal, the third argument is mandatory</li><li>if the third argument is present, there can be only one second argument</li><li>any of the three arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li><li>if the first argument denotes a composite field, then the second argument should also denote a composite field, and the subtraction works correspondingly: for instance, if the first argument is a field <code>X</code> with inner numeric fields <code>A</code>, <code>B</code> and <code>C</code>, and the second argument is a field <code>Y</code> with inner numeric fields <code>A</code>, <code>C</code> and <code>D</code>, then <code>A OF Y</code> is decreased by <code>A OF X</code> and <code>C OF Y</code> is decreased by <code>C OF X</code>, and all other fields remain unchanged</li><li>if all three arguments are composite fields, combine the description above with a <code>MOVE</code> to the target location</li><li>if some arguments are composite fields while others are not, this statement is invalid</li></ul>
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