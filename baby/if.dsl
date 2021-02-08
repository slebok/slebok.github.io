<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: IF">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="if.html">IF</a></span></h1>
		a statement to branch conditionally to a paragraph within a program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="940px" height="100px">
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
<!-- [('size', '47,'), ('begin',), ('skip',), ('term', 'IF', 1), ('skip',), ('nt', 'BooleanExpression', 9), ('skip',), ('term', 'THEN', 2), ('skip', 2), ('nt', 'Statement', 5), ('skip',), ('uploop', 7), ('skip',), ('save', '1'), ('skip', 13), ('save', '2'), ('skip', 6), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'ELSE', 2), ('skip', 2), ('nt', 'Statement', 5), ('skip',), ('uploop', 7), ('backbranch', 2), ('load', '2'), ('downbranch',), ('term', 'END', 2), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">IF</text><path d="M 76 30 h 20"/><text class="i" x="96" y="34">&nbsp;BooleanExpression</text><path d="M 276 30 h 20"/><text x="296" y="34">THEN</text><path d="M 336 30 h 40"/><text class="i" x="376" y="34">&nbsp;Statement</text><path d="M 476 30 h 20"/><path d="M 496 30 v -20 h -140 v 20"/><polygon points="356 29 352 21 360 21"/><path d="M 496 30 h 20"/><path d="M 516 30 h 260"/><path d="M 776 30 h 120"/><polygon points="904 30 896 26 896 34"/><polygon points="904 30 912 26 912 34"/><path d="M 516 30 v 40 h 20"/><text x="536" y="74">ELSE</text><path d="M 576 70 h 40"/><text class="i" x="616" y="74">&nbsp;Statement</text><path d="M 716 70 h 20"/><path d="M 736 70 v -20 h -140 v 20"/><polygon points="596 69 592 61 600 61"/><path d="M 736 70 h 20 v -40"/><polygon points="756 31 752 39 760 39"/><path d="M 776 30 v 20 h 20"/><text x="796" y="54">&nbsp;END</text><path d="M 836 50 h 20 v -20"/><polygon points="856 31 852 39 860 39"/>
</svg>

<h2>Remarks</h2>
<ul><li>an <code>END</code>-less <code>IF</code> is terminated at the end of the sentence (by <code>.</code>)</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="branch conditionally within a program, if the value is less than, equal to, or greater than zero">IF</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">IF</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="branch conditionally within a program">CAB</a></span> <span class="ff used"><a href="rpg.html" title="the optional part of an IF or IFxx operator">ELSE</a></span> <span class="ff used"><a href="rpg.html" title="a combination of ELSE and IF">ELSEIF</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>