<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: DIVISION">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="division.html">DIVISION</a></span></h1>
		the top unit of a BabyCobol program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="520px" height="80px">
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
<!-- [('size', '26:'), ('begin',), ('skip',), ('nt', 'Identification', 7), ('skip',), ('save', '1'), ('skip', 5), ('save', '2'), ('skip', 8), ('end',), ('load', '1'), ('downbranch',), ('nt', 'Data', 2), ('backbranch',), ('load', '2'), ('downbranch',), ('nt', 'Procedure', 5), ('backbranch',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text class="i" x="56" y="44">Identification</text><path d="M 196 40 h 20"/><path d="M 216 40 h 100"/><path d="M 316 40 h 160"/><polygon points="484 40 476 36 476 44"/><polygon points="484 40 492 36 492 44"/><path d="M 216 40 v 20 h 20"/><text class="i" x="236" y="64">Data</text><path d="M 276 60 h 20 v -20"/><polygon points="296 41 292 49 300 49"/><path d="M 316 40 v 20 h 20"/><text class="i" x="336" y="64">&nbsp;Procedure</text><path d="M 436 60 h 20 v -20"/><polygon points="456 41 452 49 460 49"/>
</svg>

<h2>Remarks</h2>
<ul><li>every BabyCobol program consists of up to three divisions</li><li>the first division is the only one mandatory, and it is the <a href="identificationdivision.html"><code>IDENTIFICATION DIVISION</code></a>, it contains some data that helps to identify this program and distinguish it from other programs</li><li>the second division is optional, and it is the <a href="datadivision.html"><code>DATA DIVISION</code></a>, it contains field and structure declarations</li><li>the third division is also optional, and it is the <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a>, it contains executable code</li><li><a href="copy.html"><code>COPY</code></a> is the only instruction that is allowed in any division</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="the top level unit of any program">DIVISION</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>