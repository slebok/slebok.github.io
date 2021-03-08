<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: GO TO" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="goto.html">GO TO</a></span></h1>
		a statement to branch unconditionally to a paragraph within a program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="340px" height="60px">
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
<!-- [('size', '17:3:0'), ('begin',), ('skip',), ('term', 'GO_TO', 3), ('skip',), ('nt', 'ProcedureName', 7), ('skip',), ('end',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">&nbsp;GO TO</text><path d="M 116 30 h 20"/><text class="i" x="136" y="34">&nbsp;ProcedureName</text><path d="M 276 30 h 20"/><polygon points="304 30 296 26 296 34"/><polygon points="304 30 312 26 312 34"/>
</svg>

<h2>Remarks</h2>
<ul><li>branching outside an active <code>LOOP</code> terminates its iteration</li><li>branching outside paragraphs being <code>PERFORM</code>ed terminates the performance and forfeits the call place, acting as a redirected return</li><li>the argument can be a field name, possibly being reassigned at runtime with <code>MOVE</code></li></ul>
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="branch unconditionally within a program">GOTO</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="branch unconditionally to another section or paragraph">GO TO</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="branch unconditionally within a program (unconditional, assigned, computed)">GO TO</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="transfer control to a labelled statement">GO TO</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="branch unconditionally within a program">SIGNAL</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="branch unconditionally within a program">GOTO</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>