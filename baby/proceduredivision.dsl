<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: PROCEDURE DIVISION" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="proceduredivision.html">PROCEDURE DIVISION</a></span></h1>
		the code-containing division in a program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="760px" height="200px">
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
<!-- [('size', '38:10:0'), ('nt', 'Division', 4), ('begin',), ('skip',), ('term', 'PROCEDURE_DIVISION.', 10), ('skip',), ('save', '1'), ('skip', 11), ('nt', 'Paragraph', 5), ('skip',), ('uploop', 7), ('skip', 2), ('end',), ('load', '1'), ('downbranch', 2), ('skip',), ('nt', 'Sentence', 4), ('skip', 2), ('uploop', 7), ('backbranch', 2), ('cr', 4), ('nt', 'Paragraph', 5), ('begin',), ('skip',), ('nt', 'Identifier', 5), ('skip',), ('term', '.', 1), ('skip', 2), ('nt', 'Sentence', 4), ('skip',), ('uploop', 6), ('skip',), ('end',), ('cr', 3), ('nt', 'Sentence', 4), ('begin',), ('skip', 2), ('nt', 'Statement', 5), ('skip',), ('uploop', 7), ('skip',), ('term', '.', 1), ('skip',), ('end',)] -->
<text class="i" x="20" y="34">Division</text><polygon points="108 30 100 26 100 34"/><polygon points="116 30 108 26 108 34"/><path d="M 116 30 h 20"/><text x="136" y="34">&nbsp;PROCEDURE DIVISION.</text><path d="M 336 30 h 20"/><path d="M 356 30 h 220"/><text class="i" x="576" y="34">&nbsp;Paragraph</text><path d="M 676 30 h 20"/><path d="M 696 30 v -20 h -140 v 20"/><polygon points="556 29 552 21 560 21"/><path d="M 696 30 h 40"/><polygon points="744 30 736 26 736 34"/><polygon points="744 30 752 26 752 34"/><path d="M 356 30 v 40 h 20"/><path d="M 376 70 h 20"/><text class="i" x="396" y="74">Sentence</text><path d="M 476 70 h 40"/><path d="M 516 70 v -20 h -140 v 20"/><polygon points="376 69 372 61 380 61"/><path d="M 516 70 h 20 v -40"/><polygon points="536 31 532 39 540 39"/><text class="i" x="20" y="114">&nbsp;Paragraph</text><polygon points="128 110 120 106 120 114"/><polygon points="136 110 128 106 128 114"/><path d="M 136 110 h 20"/><text class="i" x="156" y="114">Identifier</text><path d="M 256 110 h 20"/><text x="276" y="114">&nbsp;.</text><path d="M 296 110 h 40"/><text class="i" x="336" y="114">Sentence</text><path d="M 416 110 h 20"/><path d="M 436 110 v -20 h -120 v 20"/><polygon points="316 109 312 101 320 101"/><path d="M 436 110 h 20"/><polygon points="464 110 456 106 456 114"/><polygon points="464 110 472 106 472 114"/><text class="i" x="20" y="174">Sentence</text><polygon points="108 170 100 166 100 174"/><polygon points="116 170 108 166 108 174"/><path d="M 116 170 h 40"/><text class="i" x="156" y="174">&nbsp;Statement</text><path d="M 256 170 h 20"/><path d="M 276 170 v -20 h -140 v 20"/><polygon points="136 169 132 161 140 161"/><path d="M 276 170 h 20"/><text x="296" y="174">&nbsp;.</text><path d="M 316 170 h 20"/><polygon points="344 170 336 166 336 174"/><polygon points="344 170 352 166 352 174"/>
</svg>

<h2>Remarks</h2>
<ul><li>the procedure division follows either the <a href="datadivision.html"><code>DATA DIVISION</code></a>, if it was present, or the <a href="identificationdivision.html"><code>IDENTIFICATION DIVISION</code></a>, and is the last division in a BabyCobol program</li><li>the procedure division consists of paragraphs, the first of which can essentially remain unnamed</li><li>each paragraph has a name that can be used in <a href="alter.html"><code>ALTER</code></a>, <a href="goto.html"><code>GO TO</code></a> and <a href="perform.html"><code>PERFORM</code></a> statements, and a non-empty list of sentences</li><li>each sentence is a list of statements terminated by a dot</li><li>each statement can be <a href="accept.html"><code>ACCEPT</code></a>, <a href="add.html"><code>ADD</code></a>, <a href="alter.html"><code>ALTER</code></a>, <a href="copy.html"><code>COPY</code></a>, <a href="display.html"><code>DISPLAY</code></a>, <a href="divide.html"><code>DIVIDE</code></a>, <a href="evaluate.html"><code>EVALUATE</code></a>, <a href="goto.html"><code>GO TO</code></a>, <a href="if.html"><code>IF</code></a>, <a href="loop.html"><code>LOOP</code></a>, <a href="move.html"><code>MOVE</code></a>, <a href="multiply.html"><code>MULTIPLY</code></a>, <a href="nextsentence.html"><code>NEXT SENTENCE</code></a>, <a href="perform.html"><code>PERFORM</code></a>, <a href="signal.html"><code>SIGNAL</code></a>, <a href="stop.html"><code>STOP</code></a> or <a href="subtract.html"><code>SUBTRACT</code></a></li><li>execution of statements proceeds sequentially from the start of the division downwards, overstepping boundaries of sentences and paragraphs, until either the end of the file is reached or a <a href="stop.html"><code>STOP</code></a> statement is encountered</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="the top level program unit with executable code">PROCEDURE DIVISION</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>