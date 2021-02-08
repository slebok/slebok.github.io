<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: COPY">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="copy.html">COPY</a></span></h1>
		insert contents from a different file
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="740px" height="100px">
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
<!-- [('size', '37,'), ('begin',), ('skip',), ('term', 'COPY', 2), ('skip',), ('nt', 'FileName', 4), ('skip',), ('save', '1'), ('skip', 22), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'REPLACING', 5), ('skip', 2), ('nt', 'Literal', 4), ('skip',), ('term', 'BY', 1), ('skip',), ('nt', 'Literal', 4), ('skip',), ('uploop', 13), ('backbranch', 2)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">COPY</text><path d="M 96 30 h 20"/><text class="i" x="116" y="34">FileName</text><path d="M 196 30 h 20"/><path d="M 216 30 h 440"/><polygon points="664 30 656 26 656 34"/><polygon points="664 30 672 26 672 34"/><path d="M 216 30 v 40 h 20"/><text x="236" y="74">&nbsp;REPLACING</text><path d="M 336 70 h 40"/><text class="i" x="376" y="74">&nbsp;Literal</text><path d="M 456 70 h 20"/><text x="476" y="74">BY</text><path d="M 496 70 h 20"/><text class="i" x="516" y="74">&nbsp;Literal</text><path d="M 596 70 h 20"/><path d="M 616 70 v -20 h -260 v 20"/><polygon points="356 69 352 61 360 61"/><path d="M 616 70 h 20 v -40"/><polygon points="636 31 632 39 640 39"/>
</svg>

<h2>Remarks</h2>
<ul><li>argument literals are quoted with <code>===</code> on each side, like this: <code>COPY FILENAME REPLACING ===XXX=== BY ===YYY===</code></li><li>Essentially, this statement is a big challenge for static code analysis tools and techniques, because it forces an additional phase of the analysis to collect all possible replacements done on the code. It can be implemented as a separate phase, known among legacy compiler developers as “<code>COPY</code> book expansion”, in which case the emphasis is shifted to the problem of traceability (because expansion changes line numbers, and error messages must report the original line numbers).</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="a directive to include another file">COPY</a></span> <span class="ff used"><a href="cobol.html" title="a directive to switch ongoing replacements on or off">REPLACE</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">%INCLUDE</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>