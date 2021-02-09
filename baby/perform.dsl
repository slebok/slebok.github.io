<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: PERFORM">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
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
<!-- [('size', '42.'), ('begin',), ('skip',), ('term', 'PERFORM', 4), ('skip',), ('nt', 'ProcedureName', 7), ('skip',), ('save', '1'), ('skip', 15), ('save', '2'), ('skip', 10), ('end',), ('load', '1'), ('downbranch',), ('term', 'THROUGH', 4), ('skip',), ('nt', 'ProcedureName', 7), ('backbranch',), ('load', '2'), ('downbranch',), ('nt', 'Atomic', 3), ('skip',), ('term', 'TIMES', 3), ('backbranch',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">&nbsp;PERFORM</text><path d="M 136 30 h 20"/><text class="i" x="156" y="34">&nbsp;ProcedureName</text><path d="M 296 30 h 20"/><path d="M 316 30 h 300"/><path d="M 616 30 h 200"/><polygon points="824 30 816 26 816 34"/><polygon points="824 30 832 26 832 34"/><path d="M 316 30 v 20 h 20"/><text x="336" y="54">&nbsp;THROUGH</text><path d="M 416 50 h 20"/><text class="i" x="436" y="54">&nbsp;ProcedureName</text><path d="M 576 50 h 20 v -20"/><polygon points="596 31 592 39 600 39"/><path d="M 616 30 v 20 h 20"/><text class="i" x="636" y="54">Atomic</text><path d="M 696 50 h 20"/><text x="716" y="54">&nbsp;TIMES</text><path d="M 776 50 h 20 v -20"/><polygon points="796 31 792 39 800 39"/>
</svg>

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