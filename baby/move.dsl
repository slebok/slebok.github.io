<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: MOVE" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="move.html">MOVE</a></span></h1>
		a partial structural assignment statement
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="520px" height="120px">
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
<!-- [('size', '26:6:1'), ('begin',), ('skip',), ('term', 'MOVE', 2), ('skip',), ('save', '1'), ('skip',), ('nt', 'Atomic', 3), ('skip', 5), ('term', 'TO', 1), ('skip', 2), ('nt', 'Identifier', 5), ('skip',), ('uploop', 1, 7), ('skip',), ('end',), ('load', '1'), ('downbranch',), ('term', 'HIGH-VALUES', 6), ('skip',), ('load', '1'), ('downbranch', 2), ('term', 'LOW-VALUES', 5), ('skip', 2), ('load', '1'), ('downbranch', 3), ('term', 'SPACES', 3), ('skip', 3), ('backbranch', 3)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">MOVE</text><path d="M 96 40 h 20"/><path d="M 116 40 h 20"/><text class="i" x="136" y="44">Atomic</text><path d="M 196 40 h 100"/><text x="296" y="44">TO</text><path d="M 316 40 h 40"/><text class="i" x="356" y="44">Identifier</text><path d="M 456 40 h 20"/><path d="M 476 40 v -20 h -140 v 20"/><polygon points="336 39 332 31 340 31"/><path d="M 476 40 h 20"/><polygon points="504 40 496 36 496 44"/><polygon points="504 40 512 36 512 44"/><path d="M 116 40 v 20 h 20"/><text x="136" y="64">&nbsp;HIGH-VALUES</text><path d="M 256 60 h 20"/><path d="M 116 40 v 40 h 20"/><text x="136" y="84">LOW-VALUES</text><path d="M 236 80 h 40"/><path d="M 116 40 v 60 h 20"/><text x="136" y="104">SPACES</text><path d="M 196 100 h 60"/><path d="M 256 100 h 20 v -60"/><polygon points="276 41 272 49 280 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>for numeric fields (defined with picture clauses without <code>A</code> nor <code>X</code>), BabyCobol's <code>MOVE SPACES</code> behaves like COBOL's <code>MOVE ZEROES</code></li><li>if the first argument is an identifier, BabyCobol's <code>MOVE</code> behaves like COBOL's <code>MOVE CORRESPONDING</code></li><li>if the first argument is a figurative value, it can lead to assigning vastly different values to second arguments depending on their individual types</li><li>the first argument is evaluated once, before any assignments take place; all other arguments are evaluated in order, taking into account previous assignments</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="return a field or a view to its freshly initialised state">CLEAR</a></span> <span class="ff used"><a href="appbuilder.html" title="name-based deep structural asssignment">MAP</a></span> <span class="ff used"><a href="appbuilder.html" title="an alternative assignment statement">SET</a></span> <br/><span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="assign a value to a variable">SET</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="transfer data from one storage area to another">MOVE</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="evaluate an expression and assign corresponding subfields">EVAL-CORR</a></span> <span class="ff used"><a href="rpg.html" title="move character data">MOVE</a></span> <span class="ff used"><a href="rpg.html" title="move data between arrays">MOVEA</a></span> <span class="ff used"><a href="rpg.html" title="move character data starting from the leftmost one">MOVEL</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>