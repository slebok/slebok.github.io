<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: ALTER">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="alter.html">ALTER</a></span></h1>
		change the target of a GO TO statement
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="640px" height="60px">
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
<!-- [('size', '32.'), ('begin',), ('skip',), ('term', 'ALTER', 3), ('skip',), ('nt', 'ProcedureName', 7), ('skip',), ('term', 'TO', 1), ('term', 'PROCEED', 4), ('term', 'TO', 1), ('skip',), ('nt', 'ProcedureName', 7), ('skip',), ('end',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">&nbsp;ALTER</text><path d="M 116 30 h 20"/><text class="i" x="136" y="34">&nbsp;ProcedureName</text><path d="M 276 30 h 20"/><text x="296" y="34">TO</text><text x="316" y="34">&nbsp;PROCEED</text><text x="396" y="34">TO</text><path d="M 416 30 h 20"/><text class="i" x="436" y="34">&nbsp;ProcedureName</text><path d="M 576 30 h 20"/><polygon points="604 30 596 26 596 34"/><polygon points="604 30 612 26 612 34"/>
</svg>

<h2>Remarks</h2>
<ul><li>Essentially, the dreaded <code>GO TO</code> that has been considered harmful since 1968, is only hard on the end developer, but not on a software language engineer. Its implementation in a compiler is almost trivial and relies on two components: one collecting all possible targets and one fetching a target from that collection and generating an unconditional jump/branch there. <code>ALTER</code> is a complication because it forces the software language engineer to move all this machinery from compile time to runtime.</li><li>Unlike FORTRAN's <code>ASSIGN</code> statement which can be at least partially optimised because the set of possible values is known apriori for each <code>GO TO</code>, BabyCobol follows COBOL and does not restrict alterations in any way.</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="change the transfer point of an existing GO TO statement">ALTER</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="change the target of an assigned GO TO statement">ASSIGN</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="change the destination of commands">ADDRESS</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>