<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: SIGNAL" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="signal.html">SIGNAL</a></span></h1>
		an instruction to specify an error handler
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="480px" height="80px">
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
<!-- [('size', '24:4:0'), ('begin',), ('skip',), ('term', 'SIGNAL', 3), ('skip',), ('save', '1'), ('skip',), ('nt', 'ProcedureName', 7), ('skip', 2), ('term', 'ON_ERROR', 4), ('skip',), ('end',), ('load', '1'), ('downbranch',), ('term', 'OFF', 2), ('skip', 5), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">SIGNAL</text><path d="M 116 30 h 20"/><path d="M 136 30 h 20"/><text class="i" x="156" y="34">&nbsp;ProcedureName</text><path d="M 296 30 h 40"/><text x="336" y="34">ON ERROR</text><path d="M 416 30 h 20"/><polygon points="444 30 436 26 436 34"/><polygon points="444 30 452 26 452 34"/><path d="M 136 30 v 20 h 20"/><text x="156" y="54">&nbsp;OFF</text><path d="M 196 50 h 100"/><path d="M 296 50 h 20 v -20"/><polygon points="316 31 312 39 320 39"/>
</svg>

<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="define a handler for an attention interrupt">ATTN</a></span> <span class="ff used"><a href="clist.html" title="check for non-zero return codes of other commands">ERROR</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="a directive to activate debugging or exception handling">USE</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="define a handler for an established condition">ON</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="cancel an established error handler">CALL OFF</a></span> <span class="ff used"><a href="rexx.html" title="change an error handler">CALL ON</a></span> <span class="ff used"><a href="rexx.html" title="cancel an established error handler">SIGNAL OFF</a></span> <span class="ff used"><a href="rexx.html" title="define a handler for a specific condition">SIGNAL ON</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="perform error handling based on the status code">MONITOR</a></span> <span class="ff used"><a href="rpg.html" title="specify which error conditions trigger the handler">ON-ERROR</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>