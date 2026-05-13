<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCobol" css="babycobol.css">
	<body>
		<header/>
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: The Language Reference — Features per Level</h1>
		<p>
			If you’re following <em>Software Evolution</em> at UTwente, you are implementing BabyCobol in phases called “levels”. This page sorts features of BabyCobol into those levels.
		</p>
		<p>
			All the videos can be found in <a href="https://www.youtube.com/watch?v=L7hysn-uZuA&amp;list=PLJt9mvU9qi3nJVeDG5xt0cETwwPv5oYpB">the playlist on YouTube</a>.
		</p>
		<span class="ff used"><a href="#level1" title="Level 1">LEVEL 1</a></span> 
		<span class="ff used"><a href="#level2" title="Level 2">LEVEL 2</a></span> 
		<span class="ff used"><a href="#level3" title="Level 3">LEVEL 3</a></span> 
		<span class="ff used"><a href="#level4" title="Level 4">LEVEL 4</a></span> 
		<span class="ff used"><a href="#level5" title="Level 5">LEVEL 5</a></span> 
		<span class="ff used"><a href="#level6" title="Level 6">LEVEL 6</a></span> 

		<h2><a name="level1"></a>Level 1: Core Features</h2>
		<ul>
    <li><a href="accept.html"><code>ACCEPT</code></a>
        <ul>
            <li>implement a BabyCobol statement that triggers user input and stores the entered value in a field</li>
            <li>supporting sophisticated data types or even more than one data type is not required</li>
        </ul>
    </li>
    <li><a href="add.html"><code>ADD</code></a>
        <ul>
            <li>implement a BabyCobol statement that adds two values together</li>
            <li>if the second argument is a literal, the third argument is mandatory</li>
        </ul>
    </li>
    <li><a href="display.html"><code>DISPLAY</code></a>
        <ul>
            <li>implement a BabyCobol statement for printing a literal or a value of a field</li>
            <li><code>WITH NO ADVANCING</code> clause is mandatory</li>
            <li><code>DELIMITED BY</code> clause is not required</li>
        </ul>
    </li>
    <li><a href="divide.html"><code>DIVIDE</code></a>
        <ul>
            <li>implement a BabyCobol statement that divides two values together</li>
            <li>if the first argument is a literal, the third argument is mandatory</li>
        </ul>
    </li>
    <li><a href="evaluate.html"><code>EVALUATE</code></a>
        <ul>
            <li>implement a BabyCobol statement for evaluating infix expressions with &ndash;, +, * and / and branching conditionally based on the result</li>
        </ul>
    </li>
    <li><a href="if.html"><code>IF</code></a>
        <ul>
            <li>implement a BabyCobol conditional statement</li>
            <li>supporting contracted expressions is not yet required</li>
            <li><code>END</code> can be made mandatory at this point</li>
        </ul>
    </li>
    <li><a href="move.html"><code>MOVE</code></a>
        <ul>
            <li>implement a BabyCobol assignment statement</li>
            <li>supporting multiple targets is necessary</li>
            <li>no special clauses are required yet</li>
            <li>just literal-to-field and field-to-field assignment is enough</li>
        </ul>
    </li>
    <li><a href="multiply.html"><code>MULTIPLY</code></a>
        <ul>
            <li>implement a BabyCobol statement that multiplies two values</li>
            <li>if the second argument is a literal, the third argument is mandatory</li>
        </ul>
    </li>
    <li><a href="perform.html"><code>PERFORM</code></a>
        <ul>
            <li>implement a BabyCobol statement for calling a different paragraph with the intention to return</li>
            <li><code>TIMES</code> clause is necessary to support</li>
            <li><code>THROUGH</code> clauses is not required</li>
        </ul>
    </li>
    <li><a href="stop.html"><code>STOP</code></a>
        <ul>
            <li>implement a BabyCobol statement to terminate the execution of a program prematurely</li>
        </ul>
    </li>
    <li><a href="subtract.html"><code>SUBTRACT</code></a>
        <ul>
            <li>implement a BabyCobol statement that subtracts a value from another value</li>
            <li>if the second argument is a literal, the third argument is mandatory</li>
        </ul>
    </li>
</ul>
		<h2><a name="level2"></a>Level 2 Features: Lexical Analysis</h2>
		<ul>
    <li><strong>position-based parsing and line continuations</strong>
        <ul>
            <li>in the past, each physical line of code must fit on a <a href="https://en.wikipedia.org/wiki/File:FortranCardPROJ039.agr.jpg">punched card</a></li>
            <li>as a (legacy) consequence, each BabyCobol line is parsed as follows:
                <ul>
                    <li>the first six columns is the sequence number, and can be ignored</li>
                    <li>the seventh column is the line status indicator
                        <ul>
                            <li>space for a normal code line (the rest of the line must be parsed)</li>
                            <li>asterisk for a comment line (the entire line can be ignored)</li>
                            <li>hyphen for the line continuation (the marked line continue the previous line)</li>
                            <li>any other symbol must yield a parse error</li>
                        </ul>
                    </li>
                    <li>divisions and paragraphs start on the eighth column</li>
                    <li>statements in the procedure division and clauses in the identification division start on the twelfth column</li>
                    <li>columns 73rd and beyond are the identification area, and can be ignored</li>
                </ul>
            </li>
            <li>when in doubt, ask a question and/or google up how it all works in COBOL</li>
        </ul>
    </li>
    <li><strong>case insensitivity</strong>
        <ul>
            <li>implement BabyCobol's insensitivity to symbol cases in keyword, symbol names, etc</li>
            <li>case sensitivity remains in quoted strings, <code><strong>PICTURE</strong></code>s, comment lines, identification division clause values</li>
            <li>in case of ambiguity, keywords written in uppercase are resolved as keywords</li>
        </ul>
    </li>
    <li><strong>keywords</strong>
        <ul>
            <li>in most modern languages keywords (<strong><code>if</code></strong>, <strong><code>void</code></strong>, etc) are reserved, which means they cannot be used as variable names</li>
            <li>in BabyCobol, fields can have keyword names</li>
            <li>in the face of ambiguity, words written in uppercase resolve to keywords, otherwise to field names<br />
                <ul>
                    <li>supposing that <code>A</code>, <code>B</code>, <code>C</code>, <code>D</code>, <code>E</code> and <code>F</code> are declared fields, so are <code>ADD</code> and <code>TO</code>, the following are correct parses with keywords in bold:</li>
                    <li><code><strong>ADD</strong> A <strong>TO</strong> B <strong>ADD</strong> C <strong>TO</strong> D <strong>ADD</strong> E <strong>TO</strong> F.</code> (three statements, no ambiguity)</li>
                    <li><code><strong>ADD</strong> A to B ADD C <strong>TO</strong> D <strong>ADD</strong> E <strong>TO</strong> F.</code> (two statements, lowercase potential keyword resolves to a part of an identifier)</li>
                    <li><code><strong>ADD</strong> A <strong>TO</strong> B <strong>ADD</strong> C to D ADD E <strong>TO</strong> F.</code> (two statements, same reason)</li>
                    <li><code><strong>ADD</strong> A <strong>TO</strong> B <strong>ADD</strong> C <strong>TO</strong> D <strong>ADD</strong> E <strong>to</strong> F.</code> (three statements, the last lowercase potential keyword does not lead to ambiguity)</li>
                    <li><code><strong>ADD</strong> A to B ADD C to D ADD E <strong>TO</strong> F.</code> (one statement, two lowercase potential keywords resolve to identifier parts)</li>
                    <li><code><strong>ADD</strong> A to B ADD C <strong>TO</strong> D <strong>ADD</strong> E <strong>to</strong> F.</code> (two statements, the last lowercase potential keyword does not lead to ambiguity)</li>
                    <li>The following two sentences cannot be parsed and should yield an error because several equally valid parses exist:</li>
                    <li><code><span style="background-color: #cc3333;">ADD A TO B ADD C to D ADD E to F.</span></code>
                        <ul>
                            <li>could be <code><strong>ADD</strong> A <strong>TO</strong> B <strong>ADD</strong> C to D ADD E <strong>to</strong> F.</code> (one "fix": the last lowercase potential keyword upgraded to a keyword)</li>
                            <li>could be <code><strong>ADD</strong> A <strong>TO</strong> B <strong>ADD</strong> C <strong>to</strong> D <strong>ADD</strong> E <strong>to</strong> F.</code> (also one fix because upgrading the first lowercase potential keyword leaves no choices for the last one)</li>
                        </ul>
                    </li>
                    <li><code><span style="background-color: #cc3333;">ADD A to B ADD C to D ADD E to F.</span></code>
                        <ul>
                            <li>could be <code><strong>ADD</strong> A to B ADD C to D ADD E <strong>to</strong> F.</code> (the last lowercase potential keyword upgraded to a keyword)</li>
                            <li>could be <code><strong>ADD</strong> A to B ADD C <strong>to</strong> D <strong>ADD</strong> E <strong>to</strong> F.</code> (the second lowercase potential keyword upgraded to a keyword; the third one auto-coevolves)</li>
                            <li>could be <code><strong>ADD</strong> A <strong>to</strong> B <strong>ADD</strong> C to D ADD E <strong>to</strong> F.</code> (the first one and the last one are upgraded, if this was the only alternative we could have potentially resolved it claiming that this is two fixes and the other path takes one)</li>
                            <li>could be <code><strong>ADD</strong> A <strong>to</strong> B <strong>ADD</strong> C <strong>to</strong> D <strong>ADD</strong> E <strong>to</strong> F.</code> (also two fixes: the first and the second lowercase potential keywords get upgraded, the third one coevolves)</li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <li><strong>whitespace insignificance</strong>
        <ul>
            <li>most modern languages use whitespace as delimiters, but BabyCobol does not use it at all, following old versions of FORTRAN</li>
            <li>whitespace characters in the input are preserved, if they occur inside quoted strings, comment line or identification division clause values</li>
            <li>all other whitespace characters in code columns are ignored, even those breaking a keyword or field name in half</li>
            <li>in the face of ambiguity, the original whitespace is used for resolution</li>
            <li>assuming that <code>ACCOUNTNUMBER</code>, <code>ACCOUNT-NUMBER</code>, <code>ACCOUNT</code> and <code>NUMBER</code> are all defined fields:</li>
            <li><code><strong>IF</strong> ACCOUNT-NUMBER = 0 <strong>THEN</strong> <strong>STOP</strong>.</code> (uses the <code>ACCOUNT-NUMBER</code> field)</li>
            <li><code><strong>IF</strong> ACCOUNT - NUMBER = 0 <strong>THEN</strong> <strong>STOP</strong>.</code> (uses the difference between fields called <code>ACCOUNT</code> and <code>NUMBER</code>)</li>
            <li><code><strong>MOVE</strong> 42 <strong>TO</strong> ACCOUNTNUMBER.</code> (assigns the value to the <code>ACCOUNTNUMBER</code> field)</li>
            <li><code><strong>MOVE</strong> 42 <strong>TO</strong> ACCOUNT NUMBER.</code> (assigns the value to both fields <code>ACCOUNT</code> and <code>NUMBER</code>)</li>
            <li><code><span style="background-color: #cc3333;"><strong>MOVE</strong> 42 <strong>TO</strong> ACCOUNT NUM BER.</span></code> (invalid since whitespace information is not clear enough to disambiguate)</li>
            <li>whitespace is the literal space symbol, tab, newline, CR/LF, etc</li>
        </ul>
    </li>
</ul>
		<h2><a name="level3"></a>Level 3 Features: Syntactic Analysis</h2>
		<ul>
    <li><strong><a href="datadivision.html"><code>DATA DIVISION</code></a></strong>
        <ul>
            <li>Implement three <a href="division.html">divisions</a> that can be a part of a BabyCobol program</li>
            <li>Parsing the <strong> <a href="identificationdivision.html"><code>IDENTIFICATION DIVISION</code></a> </strong> contents is trivial</li>
            <li>Parsing the <strong> <a href="proceduredivision.html"><code>PROCEDURE DIVISION</code></a> </strong> comes down to parsing statements implemented at <a href="#level1">level 1</a>.</li>
            <li>Parsing the data division is the core of this task. In particular, pay attention to:
                <ul>
                    <li>nesting data structures with layer numbers</li>
                    <li>nested data structures that should be possible to refer to from the procedure division with <strong><code>OF</code></strong>
                        <ul>
                            <li><strong>e.g., <code>MOVE 42 TO A OF B OF C.</code></strong></li>
                        </ul>
                    </li>
                    <li>the possibility of data entries being malformed (in which case your compiler or interpreter should refuse them)</li>
                </ul>
            </li>
            <li>It is enough to support only sufficient qualification (full paths with <strong><code>OF</code></strong>s from the top to the leaf) and only data types <em>number</em><strong>(9)</strong> and <em>number</em><strong>(X)</strong>.</li>
        </ul>
    </li>
    <li><strong><code>OCCURS</code> clauses</strong>
        <ul>
            <li>Basically list/array support</li>
            <li>Adds cardinality/multiplicity to a field.</li>
        </ul>
    </li>
    <li><strong><code>LIKE</code> clauses</strong>
        <ul>
            <li>Lets a field inherit type information (but not values or cardinality) of another field.</li>
        </ul>
    </li>
    <li><strong><a href="nextsentence.html"><code>NEXT SENTENCE</code></a> <br /></strong>
        <ul>
            <li>Support BabyCobol sentences in your language processor. Support them in your AST and/or IR as you see fit.</li>
            <li>When executed, <a href="nextsentence.html"><code>NEXT SENTENCE</code></a> should take the computation to the beginning of the next sentence, and cleanly exit any <a href="if.html"><code>IF</code></a>s and <a href="loop.html"><code>LOOP</code></a>s that stand in the way</li>
            <li><strong>NB:</strong> It is valid to use the <a href="nextsentence.html"><code>NEXT SENTENCE</code></a> from the last sentence of a paragraph, in which case the execution continues in the next paragraph or terminates the program if there are no more statements to execute</li>
        </ul>
    </li>
    <li><strong><a href="loop.html"><code>LOOP</code></a> </strong>
        <ul>
            <li>Implement the universal loop in BabyCobol</li>
            <li>Having a <strong><code>VARYING</code></strong> clause present without sufficient information from other clause, makes use of default ranges</li>
            <li>All clauses of the loop construct are detachable, which means they don't have to occur in the beginning or the end of the block, and their effect (such as exiting the loop for the <strong><code>WHILE</code></strong> clause) depends on the place they are used</li>
        </ul>
    </li>
    <li><strong>contracted expressions</strong>
        <ul>
            <li>Composite expressions in arguments of <code>IF</code>, <code>EVALUATE</code> and <code>WHEN</code>, can be contracted, for example:
                <ul>
                    <li><strong><code>IF X = 10 OR X = 20 THEN &hellip;</code></strong> can be written as <strong><code>IF X = 10 OR 20 THEN &hellip;</code> <br /></strong></li>
                    <li><strong><code>IF X &gt; 10 AND X &lt; 20 THEN &hellip;</code></strong> can be written as <strong><code>IF X &gt; 10 AND &lt; 20 THEN &hellip;</code></strong></li>
                    <li><strong><code>IF X &gt; 10 AND X &lt; 20 OR X &lt; 100 AND X &gt; 80 THEN &hellip;</code></strong> can be written as <strong><code>IF X &gt; 10 AND &lt; 20 OR 100 AND &gt; 80 THEN &hellip;</code></strong><strong></strong></li>
                </ul>
            </li>
        </ul>
    </li>
</ul>
		<h2><a name="level4"></a>Level 4 Features: Control Static Semantics</h2>
		<ul>
    <li><strong><a href="call.html"><code>CALL</code></a> </strong>
        <ul>
            <li>Let BabyCobol programs call other BabyCobol programs.</li>
            <li>Includes passing parameters, meaning that the <strong><code>PROCEDURE DIVISION</code></strong> also needs its <strong><code>USING</code></strong> clause implemented.</li>
        </ul>
    </li>
    <li><strong><a href="copy.html"><code>COPY</code></a> </strong>
        <ul>
            <li>Implement the file inclusion directive of BabyCobol, including the <strong><code>REPLACING</code> </strong>clause.</li>
        </ul>
    </li>
    <li><strong><a href="goto.html"><code>GO TO</code></a> </strong>
        <ul>
            <li>Implement the &ldquo;normal&rdquo; <strong><code>GO TO</code> </strong>statement of BabyCobol, with the statically resolvable paragraph name as the argument.</li>
            <li><strong><code>GO TO</code> </strong>terminates all currently executing <strong><code>LOOP</code> </strong>statements</li>
            <li><strong><code>GO TO</code> </strong>terminates the currently executing <strong><code>PERFORM THROUGH</code> </strong>directive if its target is outside of the executing scope
                <ul>
                    <li><a href="perform-goto.html">see a special example program</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li><strong><a href="perform.html"><code>PERFORM THROUGH</code></a> </strong>
        <ul>
            <li>Add the <strong><code>THROUGH</code></strong> clause to the <strong><code>PERFORM</code></strong> statement implemented at <a href="#level1">Level 1</a></li>
        </ul>
    </li>
</ul>
		<h2><a name="level5"></a>Level 5 Features: Data Static Semantics</h2>
		<ul>
    <li><strong>sufficient qualification <br /></strong>
        <ul>
            <li>Implement the possibility to refer to fields without explicitly listing the entire path to it</li>
            <li>This should work in all statements that can refer to fields, as well as in <code>LIKE</code> clauses</li>
            <li>Any ambiguous cases should lead to a compilation error</li>
            <li>Suppose the data division contains the following entries:
                <ul>
                    <li><code>01 A.</code></li>
                    <li><code>&nbsp;03 B.</code></li>
                    <li><code>&nbsp;&nbsp;05 C.</code></li>
                    <li><code>&nbsp;&nbsp;&nbsp;07 D PICTURE IS 999.</code></li>
                    <li><code>&nbsp;&nbsp;05 E.</code></li>
                    <li><code>&nbsp;&nbsp; 07 D PICTURE IS 999.</code></li>
                    <li><code>&nbsp;&nbsp; 07 F PICTURE IS 999.</code></li>
                </ul>
            </li>
            <li>There are the following options: <br />
                <ul>
                    <li><code>D</code> is illegal since it is insufficient</li>
                    <li><code>D OF B</code> and&nbsp;<code>D OF A</code> are also illegal because neither is insufficient</li>
                    <li><code>D OF C OF B OF A</code> and <code>D OF E OF B OF A</code> are valid references to fields with full qualification</li>
                    <li><code>D OF C</code> is sufficient to refer to <code>D OF C OF B OF A</code></li>
                    <li><code>D OF C OF B</code> is sufficient to refer to <code>D OF C OF B OF A</code></li>
                    <li><code>D OF C OF A</code> is sufficient to refer to <code>D OF C OF B OF A</code></li>
                    <li><code>D OF E</code> is sufficient to refer to <code>D OF E OF B OF A</code></li>
                    <li><code>D OF E OF B</code> is sufficient to refer to <code>D OF E OF B OF A</code></li>
                    <li><code>D OF E OF A</code> is sufficient to refer to <code>D OF E OF B OF A</code></li>
                </ul>
            </li>
            <li>The declarations above can be followed by something like <code>01 G LIKE C.</code> &mdash; which would define a new top-level record named <code>G</code> having the same structure as sufficiently qualified <code>C OF B OF A</code>.</li>
        </ul>
    </li>
    <li><strong><code>PICTURE</code> clause <br /></strong>
        <ul>
            <li>Fully support<strong> </strong><code>PICTURE</code> clauses in BabyCobol's <a href="datadivision.html"><code>DATA DIVISION</code></a></li>
            <li>To qualify, the solution must work with <code>ACCEPT</code> and <code>DISPLAY</code> statements</li>
            <li><code>MOVE</code> and other statements must not break the picture-consistency of values</li>
        </ul>
    </li>
    <li><strong>Figurative constants</strong>
        <ul>
            <li><code>MOVE</code> should be extended to cover three figurative constants as a value being assigned:
                <ul>
                    <li><code>SPACES</code>: moving it to a field gives it its default value (0 for a <strong>9</strong>-position, space for <strong>A/X/Z/S</strong>, and dot for <strong>V</strong>)</li>
                    <li><code>HIGH-VALUES</code>: moving it to a field gives it its highest possible value (9 for a <strong>9/Z</strong>-position, small z for <strong>A</strong>, character #255 for <strong>X</strong>, plus for <strong>S</strong>, dot for <strong>V</strong>)</li>
                    <li><code>LOW-VALUES</code>: moving it to a field gives it its lowest possible value (0 for a <strong>9</strong>-position, space for <strong>A/Z</strong>, character #0 for <strong>X</strong>, minus for <strong>S</strong>, dot for <strong>V</strong>)</li>
                </ul>
            </li>
            <li><strong>NB:</strong> <code>MOVE SPACES TO A B C</code> can mean three very different assignments</li>
        </ul>
    </li>
    <li><strong><a href="move.html"><code>MOVE</code></a> </strong>
        <ul>
            <li>Finish the full implementation of the assignment statement, supporting partial assignment of records by assigning nominally corresponding fields and keeping the rest untouched. <br />
                <ul>
                    <li>For example, for the data entries used in the example above, <code>MOVE E TO C</code> and <code>MOVE C TO E</code> will only reassign the field <code>D</code> and will never change the value of <code>F</code></li>
                </ul>
            </li>
            <li>The name matching is <strong>not</strong> using sufficient qualification, so <code>MOVE E TO B</code> will cause no assignments.</li>
        </ul>
    </li>
    <li>NB: adding new features should keep old features functioning.
        <ul>
            <li>In particular, <code>ADD</code>, <code>MOVE</code> and <code>SUBTRACT</code> should work on composite data structures now a-la COBOL's <code>CORRESPONDING</code></li>
        </ul>
    </li>
</ul>
		<h2><a name="level6"></a>Level 6 Features: Control Dynamic Semantics</h2>
		<ul>
    <li><strong>computable <a href="goto.html"><code>GO TO</code></a></strong>
        <ul>
            <li>You probably already have a "<code>GO TO </code><em>&lt;label&gt;</em>" from <a href="#level4">level 4</a>.</li>
            <li>Now let's implement "<code>GO TO </code><em>&lt;field&gt;</em>".</li>
            <li>This variant accepts an identifier as a target of a <code>GO TO</code>, and the actual control flow depends on the runtime value of this named field.</li>
            <li>If there is no paragraph with the name corresponding to the current value of the field, a runtime error occurs.</li>
        </ul>
    </li>
    <li><strong><a href="alter.html"><code>ALTER</code></a></strong>
        <ul>
            <li>If there is a paragraph named X, which contains a single sentence with a single statement <code>GO TO Y</code>, then it is possible to alter the target of that statement to Z, by writing <code>ALTER X TO PROCEED TO Z</code>.</li>
            <li>GO TO statements that are not single statements in their paragraph, cannot be ALTERed.</li>
            <li>ALTERed computable GO TO becomes a normal GO TO after alteration.</li>
            <li>The new target must be a valid paragraph name.</li>
            <li>Any acceptable GO TO statement can be ALTERed any number of times, and each change is "permanent" until another change happens.</li>
        </ul>
    </li>
    <li><strong><a href="signal.html"><code>SIGNAL</code></a></strong>
        <ul>
            <li>This statement can be used for global exception handling: if a paragraph name is specified (e.g., SIGNAL X ON ERROR), then from that point on, any fatal error (division by zero, aborted input, wrong computable GO TO, anything) causes the transfer of control to the designated paragraph X instead of program termination.</li>
            <li>Activation of a SIGNAL paragraph acts more like a GO TO than a PERFORM, so it terminates any ongoing LOOPs and PERFORMs, and does not return automatically to the point of failure.</li>
            <li>If another fatal error happens during the execution of the SIGNAL paragraph, it causes abnormal termination normally.</li>
            <li>If execution continues beyond the SIGNAL paragraph, any fatal errors trigger another execution of the SIGNAL paragraph.</li>
            <li>Normal error handling by program termination can be resumed with <code>SIGNAL OFF ON ERROR</code>
                <ul>
                    <li>If the program contains a paragraph called <code>OFF</code>, the statement above is ambiguous and should result in a compilation error.</li>
                </ul>
            </li>
        </ul>
    </li>
</ul>
		<hr/>
		<div class="last">
			BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>