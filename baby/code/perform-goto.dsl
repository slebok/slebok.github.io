<?xml version="1.0" encoding="UTF-8"?>
<path css="../../www" img="../../www"/>
<html doctype>
    <head viewport title="BabyCobol: PERFORM + GO TO interplay example" css="babycobol.css">
    <body>
        <header/>
        <img src="../../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="../index.html">BabyCobol</a></span>: <span class="ff used"><a href="perform.html">PERFORM</a></span> + <span class="ff used"><a href="goto.html">GO TO</a></span></h1>

The following program should print "<code>ABBCDECDEF</code>" (replace <code>STOP</code> with <code>STOP RUN</code> and it will turn into a proper COBOL program which you can run to test this behaviour yourself):

<baby>
      * PERFORM + GO TO interplay example
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-GO-TO.
       PROCEDURE DIVISION.
       A.
           DISPLAY "A" WITH NO ADVANCING.
      *    print B and come back
           PERFORM B.
      *    print B and C and come back
           PERFORM B THROUGH C.
      *    print D and E and come back, D will go to E but the execution will continue
           PERFORM D THROUGH E.
      *    print C and D and then go to E which is outside the range
      *    so the execution will go to F and stop
           PERFORM C THROUGH D.
      *    so we will never return here to execute the following statement
           DISPLAY "A" WITH NO ADVANCING.
       B.
           DISPLAY "B" WITH NO ADVANCING.
       C.
           DISPLAY "C" WITH NO ADVANCING.
       D.
           DISPLAY "D" WITH NO ADVANCING.
           GO TO E.
      *    the following statement is always dead code
           DISPLAY "D" WITH NO ADVANCING.
       E.
           DISPLAY "E" WITH NO ADVANCING.
       F.
           DISPLAY "F" WITH NO ADVANCING.
           STOP.
</baby>
		<hr/>
        <div class="last">
            BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
            Page last updated in #LASTMOD#.
            <valid/>
        </div>
    </body>
</html>