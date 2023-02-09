<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: IF" css="babycobol.css">
	<body>
		<header/>
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
<!-- [('size', '47:5:1'), ('begin',), ('skip',), ('term', 'IF', 1), ('skip',), ('nt', 'BooleanExpression', 9), ('skip',), ('term', 'THEN', 2), ('skip', 2), ('nt', 'Statement', 5), ('skip',), ('uploop', 1, 7), ('skip',), ('save', '1'), ('skip', 13), ('save', '2'), ('skip', 6), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'ELSE', 2), ('skip', 2), ('nt', 'Statement', 5), ('skip',), ('uploop', 1, 7), ('backbranch', 2), ('load', '2'), ('downbranch',), ('term', 'END', 2), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">IF</text><path d="M 76 40 h 20"/><text class="i" x="96" y="44">&nbsp;BooleanExpression</text><path d="M 276 40 h 20"/><text x="296" y="44">THEN</text><path d="M 336 40 h 40"/><text class="i" x="376" y="44">&nbsp;Statement</text><path d="M 476 40 h 20"/><path d="M 496 40 v -20 h -140 v 20"/><polygon points="356 39 352 31 360 31"/><path d="M 496 40 h 20"/><path d="M 516 40 h 260"/><path d="M 776 40 h 120"/><polygon points="904 40 896 36 896 44"/><polygon points="904 40 912 36 912 44"/><path d="M 516 40 v 40 h 20"/><text x="536" y="84">ELSE</text><path d="M 576 80 h 40"/><text class="i" x="616" y="84">&nbsp;Statement</text><path d="M 716 80 h 20"/><path d="M 736 80 v -20 h -140 v 20"/><polygon points="596 79 592 71 600 71"/><path d="M 736 80 h 20 v -40"/><polygon points="756 41 752 49 760 49"/><path d="M 776 40 v 20 h 20"/><text x="796" y="64">&nbsp;END</text><path d="M 836 60 h 20 v -20"/><polygon points="856 41 852 49 860 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>an <code>END</code>-less <code>IF</code> is terminated at the end of the sentence (by <code>.</code>)</li><li><a href="https://en.wikipedia.org/wiki/Dangling_else">dangling <code>ELSE</code></a> is not allowed and should produce an error</li><li>note that both branches of the <code>IF</code> consist of statements, not sentences, so dots inside the entire <code>IF</code> construct are not allowed</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="branch conditionally within a program, if the value is less than, equal to, or greater than zero">IF</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="branch conditionally within a program">IF</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="branch conditionally within a program">CAB</a></span> <span class="ff used"><a href="rpg.html" title="the optional part of an IF or IFxx operator">ELSE</a></span> <span class="ff used"><a href="rpg.html" title="a combination of ELSE and IF">ELSEIF</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>