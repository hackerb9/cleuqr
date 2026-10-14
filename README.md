# Cleuseau Quick Reference

[cleuqr.pdf][] is a recreation of the quick reference pamphlet for
Polar Engineering's ROM2/Cleuseau option rom for the TRS-80 Model
100/102, Tandy 200, and NEC PC-8201. The [original scan][] was hard to
read so hackerb9 retyped it and made it available as [UTF-8
text](cleuqr.u8), [M100 text](CLEUQR.DO), and [PDF](cleuqr.pdf).

[original scan]: original_scan.pdf
[cleuqr.pdf]: cleuqr.pdf

[![thumbnail](README.md.d/thumbnail-0.jpg "Cleuseau Quick Reference")
 ![thumbnail](README.md.d/thumbnail-1.jpg "Cleuseau Quick Reference")](cleuqr.pdf)


## Files 

* [cleuqr.pdf][]: The Cleuseau ROM Quick Reference in PDF format.
  Print to a double-sided sheet of US Letter paper to create a
  tri-fold pamphlet.

* [cleuqr.u8][]: The Cleuseau ROM Quick Reference in plain text format for
  modern computers (Unicode UTF-8 encoding).

* [CLEUQR.DO][]: The Cleuseau ROM Quick Reference in .DO text format for
  the TRS-80 Model 100 and Tandy 200 computers. 

* [original_scan.pdf](original_scan.pdf): A scan of the original quick
  reference sheet from 1985. It is hard to read and has a couple
  typos. Note that due to errors in the PDF file's metadata, it cannot
  be viewed on GitHub and will need to be downloaded.

[cleuqr.u8]: cleuqr.u8
[CLEUQR.DO]: CLEUQR.DO

## Additions and corrections

A few changes were made from the original document. The largest
difference being the the addition of more examples of using the BASIC
Inspector.

<details>

* Added some of the BASIC Inspector examples that were in the full
  manual but not on the Quick Reference. 
  
  * To stop before executing line 10000: `.STOP 10000`
  * To stop before any assignment to X: `.STOP =X=`
  * To log entire program execution: `.PRINT`
  * To log execution for lines 0 to 999: `.PRINT -999`
  * Log lines that start or end a FOR loop: `.PRINT =FOR` `.PRINT =NEXT`
  * To change all stop pts to continue pts: `.CONT =|`
  * To remove all break points: `.OFF`

* CALLs corrected, added
  * `CALL 911` is to access ROM2's "CMD>" prompt, not disable Cleuseau.
    * Original: _To disable Cleuseau: CALL 911_
    * Replacement: _To disable Cleuseau: CALL 913,145_
  * Tandy 200 CALLs / NEC EXECs added.

* Was this document originally written on a Model 100? While
  transcribing, I noticed that nearly every line fits in 39 or fewer
  characters. Long lines have inconsistencies, like droppping spaces,
  to make them fit.

  However, some lines were more than 40 characters. To make the file
  readable on a Model T, I only needed to modify two sections:
  
  1. On the page titled "BASIC Inspector Quick Reference" all lines
     were reduced by two dots (`..`) and the final line, "_and the
     GOSUB/RETURN stack._", was shifted left two additional spaces.

  2. The cover page was originally an ASCII art title made of
     asterisks typed on an 80 column piece of paper — perhaps output
     from the UNIX System V banner program — and rotated 90 degrees to
     fit. As can be seen by the faint line from the edge of the paper,
     the rotation was done by literal cut-and-paste and then xeroxing
     to composite.[^1][TIP: The trick to not having lines show when
     xeroxing is to use Wite-Out™ on the cut edges.]

	```
      ****     **       ******   **    **     ****     ******     ****     **    **
     ******    **       ******   **    **    ******    ******    ******    **    **
    ***  ***   **       **       **    **   ***  ***   **       ***  ***   **    **
    **    **   **       **       **    **   **    **   **       **    **   **    **
    **         **       **       **    **   ***        **       **    **   **    **
    **         **       **       **    **    ***       **       **    **   **    **
    **         **       *****    **    **     ***      *****    ********   **    **
    **         **       *****    **    **      ***     *****    ********   **    **
    **         **       **       **    **       ***    **       **    **   **    **
    **         **       **       **    **        ***   **       **    **   **    **
    **    **   **       **       **    **   **    **   **       **    **   **    **
    ***  ***   **       **       ***  ***   ***  ***   **       **    **   ***  ***
     ******    ******   ******    ******     ******    ******   **    **    ****** 
      ****     ******   ******     ****       ****     ******   **    **     **** 
    ```

     To make a 40-column replacement, I used a modern UNIX banner
     program, `figlet -f pagga CLEUSEAU`, to create a title made of
     Unicode block drawing characters that the Model 100 can also
     display. 

        ░█▀▀░█░░░█▀▀░█░█░█▀▀░█▀▀░█▀█░█░█
        ░█░░░█░░░█▀▀░█░█░▀▀█░█▀▀░█▀█░█░█
        ░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

    The subtitle was made using figlet as well, `figlet -f mini -w 30
     TEXT EDITOR and BASIC INSPECTOR`. It doesn't look as good on my
     Tandy 200, but it is legible. 

        ____ ___  _ _ _______  _
         ||_\/|  |_| \ |  |/ \|_) 
         ||_/\|  |_|_/_|_ |\_/| \ 

                   _      _____ _ 
         _.._  _| |_) /\ (_  | /
        (_|| |(_| |_)/--\__)_|_\_ 

        ___     __ _  _ _____  _
         | |\ |(_ |_)|_/  |/ \|_) 
        _|_| \|__)|  |_\_ |\_/| \ 

* Added company name and guessed copyright date. 

* `^L` (Form Feed) added between pages.

* SHIFT/CTRL plus ←/→ descriptions clarified.
  * SHIFT ← 
    * Original: _Move to start of word (left)_
    * Replacement:  _Move to start of word (prev)_
  * CTRL ← 
    * Original: _Move to end of line (left)_
    * Replacement:  _Move to start of line_
  * SHIFT →
    * Original: _Move to start of word (right)_
    * Replacement:  _Move to start of word (next)_
  * CTRL →
    * Original: _Move to end of line (right)_
    * Replacement:  _Move to end of line_

* For fun I created an ASCII art depiction of Inspector Jacques
  Clouseau on my Tandy 200. It had to get all the salient details: big
  nose, moustache, magnifying glass, half-lidded eye, pointy hat, and
  round chin, yet be less than 7 lines high. I'm pleased with the result.
  
                          _ 
                       -=== 
                       /e
                    _ (__ 
                   (_)  ^ 
                     \  `-´ 

</details>
