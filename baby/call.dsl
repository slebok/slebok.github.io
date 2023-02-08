<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: CALL" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="call.html">CALL</a></span></h1>
		an instruction to execute another program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="700px" height="140px">
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
<!-- [('size', '35:7:1'), ('begin',), ('skip',), ('term', 'CALL', 2), ('skip',), ('nt', 'FileName', 4), ('skip',), ('save', '1'), ('skip', 23), ('end',), ('load', '1'), ('downbranch', 2), ('term', 'USING', 3), ('skip', 2), ('save', '2'), ('skip',), ('term', 'BY_REFERENCE', 6), ('skip',), ('nt', 'Identifier', 5), ('skip', 2), ('uploop', 1, 16), ('backbranch', 2), ('load', '2'), ('downbranch',), ('term', 'BY_CONTENT', 5), ('skip',), ('nt', 'Atomic', 3), ('skip', 4), ('load', '2'), ('downbranch', 2), ('term', 'BY_VALUE', 4), ('skip',), ('nt', 'Atomic', 3), ('skip', 4), ('backbranch', 2)] -->
<polygon points="28 40 20 36 20 44"/><polygon points="36 40 28 36 28 44"/><path d="M 36 40 h 20"/><text x="56" y="44">CALL</text><path d="M 96 40 h 20"/><text class="i" x="116" y="44">FileName</text><path d="M 196 40 h 20"/><path d="M 216 40 h 460"/><polygon points="684 40 676 36 676 44"/><polygon points="684 40 692 36 692 44"/><path d="M 216 40 v 40 h 20"/><text x="236" y="84">&nbsp;USING</text><path d="M 296 80 h 40"/><path d="M 336 80 h 20"/><text x="356" y="84">BY REFERENCE</text><path d="M 476 80 h 20"/><text class="i" x="496" y="84">Identifier</text><path d="M 596 80 h 40"/><path d="M 636 80 v -20 h -320 v 20"/><polygon points="316 79 312 71 320 71"/><path d="M 636 80 h 20 v -40"/><polygon points="656 41 652 49 660 49"/><path d="M 336 80 v 20 h 20"/><text x="356" y="104">BY CONTENT</text><path d="M 456 100 h 20"/><text class="i" x="476" y="104">Atomic</text><path d="M 536 100 h 80"/><path d="M 336 80 v 40 h 20"/><text x="356" y="124">BY VALUE</text><path d="M 436 120 h 20"/><text class="i" x="456" y="124">Atomic</text><path d="M 516 120 h 80"/><path d="M 596 120 h 20 v -40"/><polygon points="616 81 612 89 620 89"/>
</svg>

<h2>Remarks</h2>
<ul><li>Executes another program denoted with <code><em>FileName</em></code>, from the start of its <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a> until its end or until its <a href="stop.html"><code>STOP</code></a>, whatever comes first, and the continues to execute the current program from the next statement.</li><li>If the call uses arguments, they should match exactly the arguments of the <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a> of the program being called.</li><li><code>BY REFERENCE</code> arguments can be accessed and modified by the called program.</li><li><code>BY CONTENT</code> arguments be accessed by the called program, but cannot be modified.</li><li><code>BY VALUE</code> arguments can be accessed and modified by the called program, but the modification do not propagate back to the caller.</li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="call a rule or a component from into another rule">USE</a></span> <br/><span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="call another program">EXEC</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="transfer control from one program to another">CALL</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="call a built-in or external function">CALL</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>