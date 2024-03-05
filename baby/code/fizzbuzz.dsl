<?xml version="1.0" encoding="UTF-8"?>
<path css="../../www" img="../../www"/>
<html doctype>
    <head viewport title="BabyCobol: FizzBuzz" css="babycobol.css">
    <body>
        <header/>
        <img src="../../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="../index.html">BabyCobol</a></span>: <span class="ff used"><a href="https://rosettacode.org/wiki/FizzBuzz">FizzBuzz</a></span></h1>
        <p>
            <a href="https://en.wikipedia.org/wiki/Fizz_buzz">FizzBuzz</a> is a kids game turned popular by its prominence in job
            interviews for software developers. This solution can also be found on <a href="https://rosettacode.org/wiki/FizzBuzz#BabyCobol">Rosetta Code</a>.
        </p>
<baby>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.
       DATA DIVISION.
       01 INT PICTURE IS 9(3).
       01 REM LIKE INT.
       01 TMP LIKE INT.
       PROCEDURE DIVISION.
           LOOP VARYING INT TO 100
               DIVIDE 3 INTO INT GIVING TMP REMAINDER REM
               IF REM = 0
               THEN DISPLAY "Fizz" WITH NO ADVANCING
      * NB: no END!
               DIVIDE 5 INTO INT GIVING TMP REMAINDER REM
               IF REM = 0
               THEN DISPLAY "Buzz" WITH NO ADVANCING
      * NB: again, no END!
               DIVIDE 15 INTO INT GIVING TMP REMAINDER REM
               IF REM = 0
               THEN DISPLAY ""
               ELSE DISPLAY INT
      * NB: still, no END!
           END.
      * Okay, this is an END but for the LOOP, not for IFs!
</baby>
        <p>
            Having three unclosed <code>IF</code>s in a sequence leads to a highly ambiguous parse which only converges by witnessing the last <code>END</code> which is mandatory for <code>LOOP</code>. Hence, no dangling!
        </p>
		<hr/>
        <div class="last">
            BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
            Page last updated in #LASTMOD#.
            <valid/>
        </div>
    </body>
</html>