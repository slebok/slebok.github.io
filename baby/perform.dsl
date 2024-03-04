<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: PERFORM" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="perform.html">PERFORM</a></span></h1>
		a statement to call a paragraph or section within the program
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="840px" height="60px">
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
<!-- [('size', '42:3:-1'), ('begin',), ('skip',), ('term', 'PERFORM', 4), ('skip',), ('nt', 'ProcedureName', 7), ('skip',), ('save', '1'), ('skip', 15), ('save', '2'), ('skip', 10), ('end',), ('load', '1'), ('downbranch',), ('term', 'THROUGH', 4), ('skip',), ('nt', 'ProcedureName', 7), ('backbranch',), ('load', '2'), ('downbranch',), ('nt', 'Atomic', 3), ('skip',), ('term', 'TIMES', 3), ('backbranch',)] -->
<polygon points="28 20 20 16 20 24"/><polygon points="36 20 28 16 28 24"/><path d="M 36 20 h 20"/><text x="56" y="24">&nbsp;PERFORM</text><path d="M 136 20 h 20"/><text class="i" x="156" y="24">&nbsp;ProcedureName</text><path d="M 296 20 h 20"/><path d="M 316 20 h 300"/><path d="M 616 20 h 200"/><polygon points="824 20 816 16 816 24"/><polygon points="824 20 832 16 832 24"/><path d="M 316 20 v 20 h 20"/><text x="336" y="44">&nbsp;THROUGH</text><path d="M 416 40 h 20"/><text class="i" x="436" y="44">&nbsp;ProcedureName</text><path d="M 576 40 h 20 v -20"/><polygon points="596 21 592 29 600 29"/><path d="M 616 20 v 20 h 20"/><text class="i" x="636" y="44">Atomic</text><path d="M 696 40 h 20"/><text x="716" y="44">&nbsp;TIMES</text><path d="M 776 40 h 20 v -20"/><polygon points="796 21 792 29 800 29"/>
</svg>

<h2>Remarks</h2>
See a <a href="code/perform-goto.html">separate example</a> showcasing the interplay between <code>PERFORM</code> and <a href="goto.html"><code>GO TO</code></a>.
<h2>Origins</h2>
<span class="ff lang"><a href="appbuilder.html">AppBuilder</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="appbuilder.html" title="call a local procedure">PERFORM</a></span> <br/><span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="clist.html" title="call a local procedure">SYSCALL</a></span> <br/><span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="call a local procedure">PERFORM (out-of-line)</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="invoke a subroutine">CALL</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="invoke a local subroutine">CALL</a></span> <br/><span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rpg.html" title="conditionally invoke subroutine">CAS</a></span> <span class="ff used"><a href="rpg.html" title="invoke a local subroutine">EXSR</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>