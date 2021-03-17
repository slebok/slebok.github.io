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

<h2>Semantics</h2>
The problems of implementing the NEXT SENTENCE statement come from the clash between the hierarchical tree-like structure of the program and its flat textual structure. The official semantics of the NEXT SENTENCE statement is that it transfers control to the first statement of the next <a href="proceduredivision.html">sentence</a> (after the dot). If the AST already incorporates the information about sentences in addition to statements, then implementing the NEXT SENTENCE statement should not be too difficult: we need to prepare a possibly useful target label at the beginning of each sentence, and use it when needed. Due to BabyCobol's simplified design, this is the only possible way in the language to essentially <a href="goto.html"><code>GO TO</code></a> within a paragraph. Watch out for the interaction of NEXT SENTENCE with the other BabyCobol features: <ul><li><code>NEXT SENTENCE</code> as the last statement of the paragraph does nothing, because it has to end with a dot (as each paragraph consists of only full sentences!), so it ends a sentence itself and transfers control to the sentence after that.</li><li>If the transfer takes the execution away from the current context of <a href="loop.html"><code>LOOP</code></a>, it cleans up call stack contents, temporary variables and other local effects of the context(s) being left behind.</li></ul>
<h2>Style</h2>
<ul><li><code>NEXT SENTENCE</code> at the beginning of the paragraph can be used to comment out one of more of the immediately following statements, making them dead code without marking each line as an explicit comment.</li><li><code>NEXT SENTENCE.</code> (with a dot) does nothing, since it transfers control to the next sentence that was about to be executed anyway. As such, it can be used in any place where a sentence is expected but no action is needed, similar to the role <code>EXIT</code> plays in <a href="cobol.html">COBOL</a>, or comparable “no operation” statements in other languages.</li></ul>
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