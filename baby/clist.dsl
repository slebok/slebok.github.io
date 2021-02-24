<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol: the clist origins" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: The <span class="ff lang"><a href="clist.html">CLIST</a></span> Origins</h1>
		<hr/>
		<h2>Features:</h2>
		<span class="ff used"><a href="signal.html" title="define a handler for an attention interrupt">ATTN</a></span> <span class="ff" title="close a previously opened QSAM file">CLOSFILE</span> <span class="ff" title="define processing options">CONTROL</span> <span class="ff" title="statements for TSO/E to execute">DATA</span> <span class="ff" title="respond to prompts by TSO/E commands">DATA PROMPT</span> <span class="ff used"><a href="loop.html" title="execute a sequence of commands repeatedly">DO</a></span> <span class="ff used"><a href="end.html" title="end DO, SELECT or a procedure">END</a></span> <span class="ff used"><a href="signal.html" title="check for non-zero return codes of other commands">ERROR</a></span> <span class="ff used"><a href="call.html" title="call another program">EXEC</a></span> <span class="ff used"><a href="stop.html" title="terminate the program">EXIT</a></span> <span class="ff" title="read a record from a QSAM file">GETFILE</span> <span class="ff" title="share values between nested programs">GLOBAL</span> <span class="ff used"><a href="goto.html" title="branch unconditionally within a program">GOTO</a></span> <span class="ff used"><a href="if.html" title="branch conditionally within a program">IF</a></span> <span class="ff" title="get information about a dataset">LISTDSI</span> <span class="ff" title="share values between procedures within a program">NGLOBAL</span> <span class="ff" title="open a QSAM file for input and output">OPENFILE</span> <span class="ff used"><a href="section.html" title="define a procedure">PROC</a></span> <span class="ff" title="write a record to a QSAM file">PUTFILE</span> <span class="ff used"><a href="accept.html" title="read user input and store it in variables">READ</a></span> <span class="ff" title="read a &SYSDVAL control variable">READDVAL</span> <span class="ff" title="return from an error handler or a procedure">RETURN</span> <span class="ff used"><a href="evaluate.html" title="branch to multiple locations based on several conditions">SELECT</a></span> <span class="ff used"><a href="move.html" title="assign a value to a variable">SET</a></span> <span class="ff used"><a href="perform.html" title="call a local procedure">SYSCALL</a></span> <span class="ff" title="define which caller's data can a procedure access">SYSREF</span> <span class="ff" title="temporary pass control to the terminal user">TERMIN</span> <span class="ff" title="temporary pass control to the terminal user from a nested program">TERMING</span> <span class="ff used"><a href="display.html" title="display text on the terminal">WRITE</a></span> <span class="ff used"><a href="display.html" title="display text on the terminal without advancing a cursor to the next line">WRITENR</a></span> 
		<h2>Sources:</h2>
		<ul>
			<li>IBM SA32-0978-00, z/OS TSO/E CLISTs Version 2 Release 1, 1988–2013</li>
		</ul>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>