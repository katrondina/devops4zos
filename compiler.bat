@echo off

REM ----------- ENTER YOUR USERNAME AND PASSWORD --
echo user %katrondinausername%> ftpcmd.tmp
echo %katrondinapassword%>> ftpcmd.tmp

REM ----------- PUT "INPUT FILE" 'PDS/DS DESTINATION'
echo put "%WORKSPACE%\DEVOPS.PPLI\HELLO.pli" 'b136901.devops.ppli(hello)'>> ftpcmd.tmp
echo put "%WORKSPACE%\DEVOPS.JCL\PLBHELLO.jcl" 'b136901.devops.jcl(plbhello)'>> ftpcmd.tmp

REM ----------- TO CONNECT TO MVS JES SUBCOMMAND
echo quote site filetype=jes>> ftpcmd.tmp
REM ----------- FTP COMPILE JCL TO JES AND SAVE SPOOL TO RESULT1.TXT
echo get 'b136901.devops.jcl(plahello)' result1.txt>>ftpcmd.tmp
REM ----------- TO VIEW HELD JOBS IN SPOOL
echo dir>> ftpcmd.tmp
REM ----------- BACK TO WORKING DIRECTORY
echo quote site filetype=seq>> ftpcmd.tmp

REM ---- DISCONNECT AND QUIT FTP
echo disconnect>> ftpcmd.tmp
echo quit>> ftpcmd.tmp
ftp -n -s:ftpcmd.tmp %ProjectMVShostname%
del ftpcmd.tmp
type result1.txt