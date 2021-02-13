<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: DATA DIVISION">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="datadivision.html">DATA DIVISION</a></span></h1>
		the second division of a program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="1220px" height="100px">
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
<!-- [('size', '61,'), ('begin',), ('skip',), ('term', 'DATA_DIVISION.', 7), ('skip', 2), ('nt', 'Level', 3), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('save', '1'), ('skip', 15), ('save', '2'), ('skip', 19), ('term', '.', 1), ('skip',), ('uploop', 47), ('skip',), ('end',), ('load', '1'), ('downbranch',), ('term', 'PICTURE_IS', 5), ('skip',), ('nt', 'Representation', 7), ('skip',), ('load', '1'), ('downbranch', 2), ('term', 'LIKE', 2), ('skip',), ('nt', 'Identifier', 5), ('skip', 5), ('backbranch', 2), ('load', '2'), ('skip',), ('downbranch',), ('term', 'OCCURS', 3), ('skip',), ('nt', 'IntegerLiteral', 7), ('skip',), ('term', 'TIMES', 3), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">DATA DIVISION.</text><path d="M 196 30 h 40"/><text class="i" x="236" y="34">&nbsp;Level</text><path d="M 296 30 h 20"/><text class="i" x="316" y="34">Identifier</text><path d="M 416 30 h 20"/><path d="M 436 30 h 300"/><path d="M 736 30 h 380"/><text x="1116" y="34">&nbsp;.</text><path d="M 1136 30 h 20"/><path d="M 1156 30 v -20 h -940 v 20"/><polygon points="216 29 212 21 220 21"/><path d="M 1156 30 h 20"/><polygon points="1184 30 1176 26 1176 34"/><polygon points="1184 30 1192 26 1192 34"/><path d="M 436 30 v 20 h 20"/><text x="456" y="54">PICTURE IS</text><path d="M 556 50 h 20"/><text class="i" x="576" y="54">Representation</text><path d="M 716 50 h 20"/><path d="M 436 30 v 40 h 20"/><text x="456" y="74">LIKE</text><path d="M 496 70 h 20"/><text class="i" x="516" y="74">Identifier</text><path d="M 616 70 h 100"/><path d="M 716 70 h 20 v -40"/><polygon points="736 31 732 39 740 39"/><path d="M 736 30 h 20"/><path d="M 756 30 v 20 h 20"/><text x="776" y="54">OCCURS</text><path d="M 836 50 h 20"/><text class="i" x="856" y="54">IntegerLiteral</text><path d="M 996 50 h 20"/><text x="1016" y="54">&nbsp;TIMES</text><path d="M 1076 50 h 20 v -20"/><polygon points="1096 31 1092 39 1100 39"/>
</svg>

<h2>Remarks</h2>
<ul><li>unlike the preceding <a href="identificationdivision.html"><code>IDENTIFICATION DIVISION</code></a>, this division is optional and can be skipped if there is no data to declare</li><li>each entry declares a field (an elementary variable) or a record (a composite structure)</li><li>the level numbers show hierarchy: entries with higher level numbers are included in the record defined above them at a lower level number</li><li>each level number is exactly two digits long</li><li>the level numbers can never go below the level number of the first entry (which is traditionally <code>01</code>, but doesn’t have to be)</li><li>the <code>PICTURE</code> clause defines a field, specifying its format as a representation string, containing the following characters: <ul></li><li><code>9</code> — any numerical digit</li><li><code>A</code> — any alphabetic character or whitespace</li><li><code>X</code> — any single character</li><li><code>Z</code> — a leading digit, disappearing into space if zero</li><li><code>S</code> — a sign, positive or negative, space is treated as a plus</li><li><code>V</code> — a decimal separator (usually . or ,)</li><li>the <code>S</code> and <code>V</code> symbols may occur once in the representation string</li><!-- --></ul><li>the <code>LIKE</code> clause copies the type from elsewhere, and thus declares either a field (by essentially copying its representation string) or a record (by copying its entire structure)</li><li>if neither the <code>PICTURE</code> nor the <code>LIKE</code> clause are used, such an entry defines a record</li><li>the <code>OCCURS</code> clause turns an individual record or field into an array of them</li><li><code>LIKE</code> inherits the basic type, not the occurring one</li><li>comment lines and <a href="copy.html"><code>COPY</code></a> instructions are allowed inside this division as well</li><li>the data division can be followed by the <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a></li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="a declaration block for local fields and views">DCL</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="the top level program unit with variable definitions">DATA DIVISION</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="declare a variable and specify its attributes">DECLARE</a></span> <span class="ff used"><a href="pli.html" title="define a structure or an alias for the data type">DEFINE</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>