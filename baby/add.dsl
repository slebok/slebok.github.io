<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: ADD" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="add.html">ADD</a></span></h1>
		a statement to add two or more values together
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="680px" height="100px">
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
<!-- [('size', '34:5:1'), ('begin',), ('skip',), ('term', 'ADD', 2), ('skip',), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('uploop', 1, 5), ('skip',), ('term', 'TO', 1), ('skip',), ('nt', 'Atomic', 3), ('skip',), ('save', '1'), ('skip', 14), ('end',), ('load', '1'), ('downbranch', 2), ('skip',), ('term', 'GIVING', 3), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('uploop', 1, 11), ('backbranch', 2)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">&nbsp;ADD</text><path d="M 96 40 h 20"/><path d="M 116 40 h 20"/><text class="i" x="136" y="44">Atomic</text><path d="M 196 40 h 20"/><path d="M 216 40 v -20 h -100 v 20"/><polygon points="116 39 112 31 120 31"/><path d="M 216 40 h 20"/><text x="236" y="44">TO</text><path d="M 256 40 h 20"/><text class="i" x="276" y="44">Atomic</text><path d="M 336 40 h 20"/><path d="M 356 40 h 280"/><polygon points="644 40 636 36 636 44"/><polygon points="644 40 652 36 652 44"/><path d="M 356 40 v 40 h 20"/><path d="M 376 80 h 20"/><text x="396" y="84">GIVING</text><path d="M 456 80 h 20"/><text class="i" x="476" y="84">Identifier</text><path d="M 576 80 h 20"/><path d="M 596 80 v -20 h -220 v 20"/><polygon points="376 79 372 71 380 71"/><path d="M 596 80 h 20 v -40"/><polygon points="616 41 612 49 620 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>adds each of the first arguments to the second argument and overwrites the old value of the second argument, unless the third argument specifies a different storage place</li><li>so, for example, <code>ADD 1 2 3 TO X</code> will increase the value of <code>X</code> by 6</li><li>all three arguments obey the rules of sufficient qualification</li><li>the first argument can be a literal</li><li>if the second argument is a literal, the third argument is mandatory</li><li>any of the three arguments can be an identifier defined with a numeric picture clause (free from <code>A</code> and <code>X</code>)</li><li>if the first argument denotes a composite field, then the second argument should also denote a composite field, and the addition works correspondingly: for instance, if the first argument is a field <code>X</code> with inner numeric fields <code>A</code>, <code>B</code> and <code>C</code>, and the second argument is a field <code>Y</code> with inner numeric fields <code>A</code>, <code>C</code> and <code>D</code>, then <code>A OF Y</code> is increased by <code>A OF X</code> and <code>C OF Y</code> is increased by <code>C OF X</code>, and all other fields remain unchanged</li><li>if all three arguments are composite fields, combine the description above with a <code>MOVE</code> to the target location</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="sum two or more numeric operands">ADD</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="add two numbers together">ADD</a></span> <span class="ff used"><a href="rpg.html" title="add a number to a field of zeroes">Z-ADD</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>