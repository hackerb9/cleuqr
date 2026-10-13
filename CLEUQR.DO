           QUICK REFERENCE
                                       
  ÿ èèÿ ÿÿÿ èèÿ ÿ ÿ èèÿ èèÿ è ÿ ÿ ÿ    
  ÿ ÿÿÿ ÿÿÿ èèÿ ÿ ÿèè ÿ èèÿ è ÿ ÿ ÿ    
  ÿèèèÿèèèÿèèèÿèèèÿèèèÿèèèÿèÿèÿèèèÿ    
                                       
     ____ ___  _ _ _______  _          
      ||_\/|  |_| \ |  |/ \|_)         
      ||_/\|  |_|_/_|_ |\_/| \         
                _      _____ _         
      _.._  _| |_) /\ (_  | /          
     (_|| |(_| |_)/--\__)_|_\_         
     ___     __ _  _ _____  _          
      | |\ |(_ |_)|_/  |/ \|_)         
     _|_| \|__)|  |_\_ |\_/| \         
                                     _ 
                                  -=== 
                                  /e   
                               _ (__   
(C) 1985 POLAR ENGINEERING    (_)  ^   
Retyped by hackerb9, 2026       \  `-  

         CLEUSEAU TEXT
        QUICK REFERENCE


            Filing
            ------
F2......Load from file
F3......Save to file
CTRL_V..Verify file with saved file


          Mode setting
          ---- -------
LABEL...Toggle label line on/off
CTRL_J..Toggle Cleuseau TEXT on/off
CTRL_O..Toggle INSERT/OVERWRITE


             Moving
             ------
›.......Move left one char
SHIFT›..Move to start of word (prev)
        CTRL_A
CTRL›...Move to start of line
        CTRL_Q
š.......Move right one char
SHIFTš..Move to start of word (next)
        CTRL_F
CTRLš...Move to end of line
        CTRL_R
˜.......Move up one line
SHIFT˜..Move to top of screen
        CTRL_T
CTRL˜...Move to top of file
        CTRL_W
™.......Move down one line
SHIFT™..Move to bottom of screen
        CTRL_B
CTRL™...Move to end of file
        CTRL_Z
CTRL_G..Go to the next line


        Character editing
        --------- -------
BKSP....Delete char left of cursor.
        CTRL_H
DEL.....Delete char under cursor
ENTER...Insert CR and line feed
TAB.....Insert tab to column 1,9,17,..
        CTRL_I
CTRL_P..Insert control char


     Searching and replacing
     --------- --- ---------
F1......Search forwards
F4......Search backwards
CTRL_N..Search for next string
CTRL_S..Replace and search (PAUSE)
CTRL_Y..Repeat replace and search


      Selecting and pasting
      --------- --- -------
F7......Set select marker at cursor
F5......Copy selection to paste buffer
F6......Cut selection to paste buffer
CTRL_E..Append to paste buffer
CTRL_L..Lowercase selection
CTRL_U..Uppercase selection
PASTE...Insert copy of paste buffer


          Miscellaneous
          -------------
BREAK...Cancel any command (CTRL_C)
ESC.....n times, repeat command
F8......MENU or BASIC (exit TEXT)
PRINT...Print screen on printer
SHIFT_PRINT..Print file on printer
CTRL_D..Display # of bytes/words/lines
CTRL_X..HELP (CTRL_X CTRL_X for all)


            BASIC INSPECTOR
            QUICK REFERENCE

Editing
-------
.RENUM <range>[TO<num>][STEP<num>]...
               Renumber range of lines.
.MOVE <range>[TO<num>][STEP<num>]...
               Move the range of lines.
.COPY <range>[TO<num>][STEP<num>]...
               Copy range of lines.
.MIN [<num>]...Minimize program size.
.DELCOM <range>..Delete comments in
               range.
.SQUASH <range>..Unnecessary blanks,
               end quotes and semi-
               colons removed.
.PACK <range>[LEN<num>]...Pack program.
.EXPAND <range>...Unpack program lines.
.KILL <range>..Delete lines in range.
              (Doesn't update line #s.)

Debugging
---------
.STOP <range>[=<string>]...Insert stop
               points. Shown as |.
.PRINT <range>[=<string>]..Insert print
               points. Shown as _.
.CONT <range>[=<string>]...Insert con-
              tinue points. Shown as ~.
.OFF <range>[=<string>]....Delete stop,
              print or continue points.
.LOG..........Print pt log to screen.
.LOG [<num>]..Print pt log file num.
.LLOG.........Print pt log to printer.

Miscellaneous
-------------
CTRL_U........Delete input Line.
CTRL_X........HELP.  BASIC Inspector.
ESC...........Next line number.
.FILES........Files & sizes (screen).
.LFILES.......Files & sizes (printer).
.LIST<range>[=<string>]..Lines in range
              with <string> (screen).
.LLIST<range>[=<string>].Lines in range
              with <string> (printer).
.STEP <num>...Set auto line num step.
. (dot).......List next line to execute
            and the GOSUB/RETURN stack.


            GETTING STARTED


To install Cleuseau's software after a
cold restart:

    M100    CALL 63012
    T200    CALL 61167,2
    NEC     EXEC 62393

    "Cleuseau" will appear in the
    lower right corner of the menu.

To disable Cleuseau, as if it were cold
restarted or removed:

    M100    CALL 913,145
    T200    CALL 921,146
    NEC     EXEC 1124,145

                  ____

             TEXT examples


To move to the 100th line in the file:

    CTRL_˜ ESC 99 ENTER CTRL_G


To count the number of bytes, words, or
lines in the file:

    CTRL_™ CTRL_D


To count the number of times a word
occurs in the file:

    CTRL_˜ ESC R ENTER F1 <word>ENTER


To replace & search, checking each time

    CTRL_S <string>ENTER <string>ENTER

    first <string> = search string
    second <string> = replace string

    At each occurrence press:

        CTRL_N to search (skip)
        CTRL_Y to replace and search

    Use F1 and F4 to control the
    search direction.

             BASIC examples


To reduce a program to its minimum size

    .MIN [<num>]
    Sure? Y

    where <num> is the maximum line
    length desired.


To list all lines that assign X a value

    .LIST =X=


To list all lines that GOSUB 1000:

    .LIST =GOSUB 1000


To trace program execution on printer:

    .LLOG
    .PRINT
    RUN

---------------------------------------
