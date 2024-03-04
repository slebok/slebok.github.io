<?xml version="1.0" encoding="UTF-8"?>
<path css="../../www" img="../../www"/>
<html doctype>
    <head viewport title="BabyCobol: 99 Bottles of Beer" css="babycobol.css">
    <body>
        <header/>
        <img src="../../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCobol</a></span>: <span class="ff used"><a href="https://rosettacode.org/wiki/99_bottles_of_beer">99 Bottles of Beer</a></span></h1>

The solution can also be found on <a href="https://rosettacode.org/wiki/99_bottles_of_beer#BabyCobol">Rosetta Code</a>:

<baby>
       IDENTIFICATION DIVISION.
           PROGRAM-ID. ¡99 BOTTLES.
       DATA DIVISION.
       01 DATA PICTURE IS 999.
       PROCEDURE DIVISION.
           LOOP VARYING DATA FROM 99 BY 0
               PERFORM COUNT-BOTTLES THROUGH ¡END
               DISPLAY DATA "bottles•of•beer"
               DISPLAY "Take•one•down,•pass•it•around"
               SUBTRACT 1 FROM DATA
               IF DATA = 1
               THEN ALTER COUNT-BOTTLES TO PROCEED TO SINGLE-BOTTLE
               END
               PERFORM COUNT-BOTTLES THROUGH ¡END
               DISPLAY ""
           END.
       NO-BOTTLES-LEFT.
           DISPLAY "No•bottles•of•beer•on•the•wall"
           DISPLAY ""
           DISPLAY "Go•to•the•store•and•buy•some•more"
           DISPLAY "99•bottles•of•beer•on•the•wall".
           STOP.
       COUNT-BOTTLES.
           GO TO MANY-BOTTLES.
       SINGLE-BOTTLE.
           DISPLAY DATA "bottle•of•beer•on•the•wall".
           GO TO NO-BOTTLES-LEFT.
       MANY-BOTTLES.
           DISPLAY DATA "bottles•of•beer•on•the•wall".
       ¡END.
           NEXT SENTENCE.
</baby>
		<hr/>
        <div class="last">
            BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
            Page last updated in #LASTMOD#.
            <valid/>
        </div>
    </body>
</html>