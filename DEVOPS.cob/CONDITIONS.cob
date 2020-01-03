       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONS.
       AUTHOR. KAT RONDINA.
      *An example program demonstrating the use
      *condition names (level 88's)
      *The EVALUATE and PERFORM verbs are also used.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHAR          PIC X.
           88 VOWEL     VALUE "a","e","i","o","u".
           88 CONSONANT VALUE "b","c","d","f","g","h"
                         "j" THRU "n","p" THRU "t","v" THRU "z".
           88 DIGIT     VALUE "0" THRU "9".
           88 VALIDCHARACTER VALUE "a" THRU "z", "0" THRU "9". 