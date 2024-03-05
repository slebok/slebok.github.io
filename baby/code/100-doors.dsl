<?xml version="1.0" encoding="UTF-8"?>
<path css="../../www" img="../../www"/>
<html doctype>
    <head viewport title="BabyCobol: 100 Doors" css="babycobol.css">
    <body>
        <header/>
        <img src="../../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="../index.html">BabyCobol</a></span>: <span class="ff used"><a href="https://rosettacode.org/wiki/100_doors">100 Doors</a></span></h1>
        <p>
            We start with 100 closed doors and make 100 passes by them. On the first pass, we toggle the state of each door. On the second pass, we toggle the state of each second door. We continue, until on the hundredth pass we toggle the state of the last door. The solution can also be found on <a href="https://rosettacode.org/wiki/100_doors#BabyCobol">Rosetta Code</a>.
        </p>
<baby>
@1 Some COBOL dialects refuse a PROGRAM-ID with a space but BabyCobol has insignificant whitespace.
@2 Given the type of STOP, it will be a value of nine.
@3 For numeric fields, SPACES is the same as ZEROES would have been in COBOL.
       IDENTIFICATION DIVISION.
       PROGRAM-ID.^ {{ONE HUNDRED DOORS}}.
       DATA DIVISION.
       01 I PICTURE IS 9(3).
       01 J LIKE I.
       01 DOOR PICTURE IS 9 OCCURS 100 TIMES.
       01 ¡STOP LIKE DOOR.
       PROCEDURE DIVISION.
      * Initialise the data
           MOVE {{HIGH-VALUES}} TO ¡STOP
           MOVE {{SPACES}} TO DOOR.
      * Do the main algorithm
           LOOP VARYING I UNTIL DOOR(I) = 9
               LOOP VARYING J FROM I TO 100 BY I
                   SUBTRACT DOOR (J) FROM 1 GIVING DOOR (J)
               END
           END.
      * Print the results
           LOOP VARYING I UNTIL DOOR(I) = 9
               DISPLAY "Door" I "is" WITH NO ADVANCING
               IF DOOR (I) = 1
               THEN DISPLAY "open"
               ELSE DISPLAY "closed".
           END.
</baby>
		<hr/>
        <div class="last">
            BabyCobol is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
            Page last updated in #LASTMOD#.
            <valid/>
        </div>
    </body>
</html>