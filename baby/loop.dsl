<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: LOOP">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="loop.html">LOOP</a></span></h1>
		a composite statement for structural execution of a sequence of commands
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="1100px" height="200px">
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
<!-- [('size', '55⇓'), ('begin',), ('skip',), ('term', 'LOOP', 2), ('skip',), ('save', '0'), ('skip', 44), ('term', 'END', 2), ('skip',), ('end',), ('load', '0'), ('downbranch', 2), ('skip',), ('save', '1'), ('skip',), ('term', 'VARYING', 4), ('skip',), ('save', '2'), ('skip', 8), ('save', '3'), ('skip', 9), ('save', '4'), ('skip', 8), ('save', '5'), ('skip', 8), ('skip',), ('uploop', 41), ('backbranch', 2), ('load', '2'), ('downbranch',), ('nt', 'Identifier', 5), ('backbranch',), ('load', '3'), ('downbranch',), ('term', 'FROM', 2), ('skip',), ('nt', 'Atomic', 3), ('backbranch',), ('load', '4'), ('downbranch',), ('term', 'TO', 1), ('skip',), ('nt', 'Atomic', 3), ('backbranch',), ('load', '5'), ('downbranch',), ('term', 'BY', 1), ('skip',), ('nt', 'Atomic', 3), ('backbranch',), ('load', '1'), ('downbranch', 3), ('term', 'WHILE', 3), ('skip',), ('nt', 'BooleanExpression', 9), ('skip', 25), ('load', '1'), ('downbranch', 4), ('term', 'UNTIL', 3), ('skip',), ('nt', 'BooleanExpression', 9), ('skip', 25), ('load', '1'), ('downbranch', 5), ('nt', 'Statement', 5), ('skip', 32), ('backbranch', 5)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">LOOP</text><path d="M 96 30 h 20"/><path d="M 116 30 h 880"/><text x="996" y="34">&nbsp;END</text><path d="M 1036 30 h 20"/><polygon points="1064 30 1056 26 1056 34"/><polygon points="1064 30 1072 26 1072 34"/><path d="M 116 30 v 40 h 20"/><path d="M 136 70 h 20"/><path d="M 156 70 h 20"/><text x="176" y="74">&nbsp;VARYING</text><path d="M 256 70 h 20"/><path d="M 276 70 h 160"/><path d="M 436 70 h 180"/><path d="M 616 70 h 160"/><path d="M 776 70 h 160"/><path d="M 936 70 h 20"/><path d="M 956 70 v -20 h -820 v 20"/><polygon points="136 69 132 61 140 61"/><path d="M 956 70 h 20 v -40"/><polygon points="976 31 972 39 980 39"/><path d="M 276 70 v 20 h 20"/><text class="i" x="296" y="94">Identifier</text><path d="M 396 90 h 20 v -20"/><polygon points="416 71 412 79 420 79"/><path d="M 436 70 v 20 h 20"/><text x="456" y="94">FROM</text><path d="M 496 90 h 20"/><text class="i" x="516" y="94">Atomic</text><path d="M 576 90 h 20 v -20"/><polygon points="596 71 592 79 600 79"/><path d="M 616 70 v 20 h 20"/><text x="636" y="94">TO</text><path d="M 656 90 h 20"/><text class="i" x="676" y="94">Atomic</text><path d="M 736 90 h 20 v -20"/><polygon points="756 71 752 79 760 79"/><path d="M 776 70 v 20 h 20"/><text x="796" y="94">BY</text><path d="M 816 90 h 20"/><text class="i" x="836" y="94">Atomic</text><path d="M 896 90 h 20 v -20"/><polygon points="916 71 912 79 920 79"/><path d="M 156 70 v 60 h 20"/><text x="176" y="134">&nbsp;WHILE</text><path d="M 236 130 h 20"/><text class="i" x="256" y="134">&nbsp;BooleanExpression</text><path d="M 436 130 h 500"/><path d="M 156 70 v 80 h 20"/><text x="176" y="154">&nbsp;UNTIL</text><path d="M 236 150 h 20"/><text class="i" x="256" y="154">&nbsp;BooleanExpression</text><path d="M 436 150 h 500"/><path d="M 156 70 v 100 h 20"/><text class="i" x="176" y="174">&nbsp;Statement</text><path d="M 276 170 h 640"/><path d="M 916 170 h 20 v -100"/><polygon points="936 71 932 79 940 79"/>
</svg>

<h2>Remarks</h2>
<ul><li>the <code>VARYING</code> clause can only refer to a numeric field</li><li>if the <code>VARYING</code> clause is present but the <code>FROM</code> clause is missing, then the initial value is 1</li><li>if the <code>VARYING</code> clause is present but the <code>TO</code> clause is missing, then the final value is the highest possible for the varied field's type</li><li>if the <code>VARYING</code> clause is present but the <code>BY</code> clause is missing, then the looping step is 1</li><li>Essentially, the hard part of this statement stems from the fact that, unlike in modern languages where the loop construct has a clearly defined header and footer, its metainformation can be scattered across the body. This means that while parsing, being inside the loop intrinsically broadens the choice of possible statements by three.</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="execute a sequence of commands repeatedly">DO</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="execute a list of statements repeatedly">PERFORM (in-line)</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="execute a statement repeatedly">DO</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">DO</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="execute a group of instructions repeatedly">DO</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="execute a group of operations several times">DO</a></span> <span class="ff used"><a href="rpg.html" title="execute a group of operations until a condition is met">DOU</a></span> <span class="ff used"><a href="rpg.html" title="execute a group of operations while a condition holds">DOW</a></span> <span class="ff used"><a href="rpg.html" title="iterate over a group of operations">FOR</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>