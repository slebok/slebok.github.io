<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: ACCEPT" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="accept.html">ACCEPT</a></span></h1>
		a statement to read user input and store it in variables
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="340px" height="80px">
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
<!-- [('size', '17:4:1'), ('begin',), ('skip',), ('term', 'ACCEPT', 3), ('skip',), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('uploop', 1, 7), ('skip',), ('end',)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">ACCEPT</text><path d="M 116 40 h 20"/><path d="M 136 40 h 20"/><text class="i" x="156" y="44">Identifier</text><path d="M 256 40 h 20"/><path d="M 276 40 v -20 h -140 v 20"/><polygon points="136 39 132 31 140 31"/><path d="M 276 40 h 20"/><polygon points="304 40 296 36 296 44"/><polygon points="304 40 312 36 312 44"/>
</svg>

<h2>Remarks</h2>
<ul><li>the input is expected to obey the picture clause definition of the data fields being read</li><li>Essentially, the <code>PICTURE</code> clause is a binding between the actual data and its displayed representation. For a software language engineer, it might be tempting to implement this binding as two mappings between consistent formats. The <code>ACCEPT</code> statement prevents this, since it demands a binding between an unreliable displayable representation (entered by the user) and the consistent internal representation that must be created from it, available at runtime.</li><li>In real compilers of legacy languages, the internal representation also must conform to legacy character encodings like <a href="https://en.wikipedia.org/wiki/EBCDIC">EBCDIC</a> and legacy binary encodings like <a href="https://en.wikipedia.org/wiki/Binary-coded_decimal">BCD</a>.</li><li>If the input is erroneous, the end result in the target field must represent the fragment of entered data from the start until the error position.</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="read user input and store it in variables">READ</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="accept user data as the new value of an identifier">ACCEPT</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="accepts data from input cards, tape or drum">READ</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="syntactic sugar for PARSE UPPER PULL">PULL</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="parse a document into a variable">DATA-INTO</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>