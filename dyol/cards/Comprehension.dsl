<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language — Comprehension</title>
		<link href="../../www/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header/>
		<h1><abbr title="DYOL is pronounced like 'duel' in English">DYOL</abbr>: <a href="../index.html">Design Your Own Language</a> — <a href="index.html#Comprehension">Comprehension</a></h1>
		<hr/>
			<p><strong>Caveat emptor</strong>: these individual <em>card pages</em> are work in progress, and their content is in no way final!</p>
		<picdir>pic</picdir>
		<pic card>
			<title>Comprehension</title>
			<text>List and set comprehensions are language constructs resembling the mathematical notation for creating a set by its characteristic function (<em>"for all numbers from 1 to 10, give me their squared values"</em>), and combine <em>map</em> and <em>filter</em> classical for functional programming. Comprehensions as a language construct exist in Haskell, Python, Rascal, C# and some other languages.</text>
		</pic>
		<pic card>
			<title>Examples</title>
			<raw><p>Produce a list of squares of numbers from 1 to 10 inclusively</p>Haskell<pre>[x*x | x <- [1..10]]</pre>Rascal<pre>[x*x | x <- [1..11]]</pre>Python<pre>[x*x for x in range(0,11)]</pre>C#<pre>Enumerable.Range(1, 11).Select(x => x*x)</pre></raw>
		</pic>
		<hr/>
		<div class="last">
			The DYOL toolkit was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>