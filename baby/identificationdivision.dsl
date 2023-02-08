<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: IDENTIFICATION DIVISION" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="identificationdivision.html">IDENTIFICATION DIVISION</a></span></h1>
		the first division of a program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="720px" height="60px">
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
<!-- [('size', '36:3:1'), ('begin',), ('skip',), ('term', 'IDENTIFICATION_DIVISION.', 12), ('skip', 2), ('nt', 'Name', 2), ('skip',), ('term', '.', 1), ('skip',), ('nt', 'Value', 3), ('skip',), ('term', '.', 1), ('skip',), ('uploop', 1, 12), ('skip',), ('end',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">IDENTIFICATION DIVISION.</text><path d="M 296 40 h 40"/><text class="i" x="336" y="44">Name</text><path d="M 376 40 h 20"/><text x="396" y="44">&nbsp;.</text><path d="M 416 40 h 20"/><text class="i" x="436" y="44">&nbsp;Value</text><path d="M 496 40 h 20"/><text x="516" y="44">&nbsp;.</text><path d="M 536 40 h 20"/><path d="M 556 40 v -20 h -240 v 20"/><polygon points="316 39 312 31 320 31"/><path d="M 556 40 h 20"/><polygon points="584 40 576 36 576 44"/><polygon points="584 40 592 36 592 44"/>
</svg>

<h2>Remarks</h2>
<ul><li>this division is mandatory, and each correct BabyCobol program should start with it</li><li>there can be many clauses, and both names and values are not restricted: they can contain letters, numbers, spaces, punctuation, etc, except for a dot.</li><li>to make your BabyCobol program more COBOL-like, start with the clause named <code>PROGRAM-ID</code>, and use any of the following clause names: <code>AUTHOR</code>, <code>INSTALLATION</code>, <code>DATE-WRITTEN</code>, <code>DATE-COMPILED</code>, <code>SECURITY</code></li><li>comment lines and <a href="copy.html"><code>COPY</code></a> instructions are allowed inside this division as well</li><li>the identification division can be followed by either the <a href="datadivision.html"><code>DATA DIVISION</code></a> or the <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a></li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="the top level program unit with the program ID and other metadata">IDENTIFICATION DIVISION</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>