<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: NEXT SENTENCE" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="nextsentence.html">NEXT SENTENCE</a></span></h1>
		a statement to branch unconditionally to the beginning of the next sentence
<hr/><h2>Format</h2>

<svg xmlns="http://www.w3.org/2000/svg" width="260px" height="60px">
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
<!-- [('size', '13:3:0'), ('begin',), ('skip',), ('term', 'NEXT_SENTENCE', 7), ('skip',), ('end',)] -->
<polygon points="28 30 20 26 20 34"/><polygon points="36 30 28 26 28 34"/><path d="M 36 30 h 20"/><text x="56" y="34">&nbsp;NEXT SENTENCE</text><path d="M 196 30 h 20"/><polygon points="224 30 216 26 216 34"/><polygon points="224 30 232 26 232 34"/>
</svg>

<h2>Syntax</h2>
The syntax of this statement is very straightforward, and hides only one subtlety: watch out for the dot after it. If there is a dot, as in "<code>NEXT SENTENCE.</code>", then the entire statement becomes meaningless and does nothing, since it is supposed to transfer control to the beginning of the next sentence, and dot ends the current sentence and signals the immediate start of the next one. So, the NEXT SENTENCE statement with a dot just represents and empty statement, called "no operation" elsewhere, while the NEXT SENTENCE without a dot works as defined below. So while in COBOL the NEXT SENTENCE statement can only be used as a special clause inside an IF statement, in BabyCobol it can be used anywhere, including facilitating an empty paragraph (which technically cannot be empty, but will exhibit no noticeable behaviour if only contains a dotted NEXT SENTENCE statement), similar to the role EXIT plays in COBOL.
<h2>Semantics</h2>
The problems of implementing the NEXT SENTENCE statement come from the clash between the hierarchical tree-like structure of the program and its flat textual structure. The official semantics of the NEXT SENTENCE statement is that it: <ul><li>Transfers control to the first statement of the next sentence (after the dot)</li><li>If the transfer takes the execution away from the current context of LOOP, PERFORM, etc, cleans up call stack contents, temporary variables and other local effects of the context being left behind</li></ul> If the AST already incorporates the information about sentences in addition to statements, then implementing the NEXT SENTENCE statement should not be too difficult: we need to prepare a possibly useful target label at the beginning of each sentence, and use it when needed. Due to BabyCobol's simplified design, this is the only possible way in the language to essentially GO TO within a paragraph.
<h2>Style</h2>
NEXT SENTENCE at the beginning of the paragraph can be used to comment out one of more of the immediately following statements, making them dead code without marking each line as an explicit comment.
<h2>Origins</h2>
<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="cobol.html" title="do nothing">CONTINUE</a></span> <span class="ff used"><a href="cobol.html" title="do nothing">EXIT</a></span> <span class="ff used"><a href="cobol.html" title="a special clause of the IF statement to transfer control to the statement after the next dot">NEXT SENTENCE</a></span> <br/><span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="fortran.html" title="do nothing">CONTINUE</a></span> <br/><span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="pli.html" title="">;</a></span> <br/><span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff used"><a href="rexx.html" title="do nothing">NOP</a></span> <br/>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>