@echo off

rem -- enter your username and your password
echo user %katrondinausername%> ftpcmd.tmp
echo %katrondinapassword%>> ftpcmd.tmp

rem -- put "input file" 'PDS/DS destination'
echo put "%WORKSPACE%\DEVOPS.PPLI\HELLO123.pli" 'b136901.devops.ppli(hello123)'>> ftpcmd.tmp
echo rem put "%WORKSPACE%\DEVOPS.JCL\PLBHELLO.jcl" 'b136901.devops.jcl(plbhello)'>> ftpcmd.tmp

rem -- to connect to MVS JES Subcommand
echo quote site filetype=jes>> ftpcmd.tmp
rem -- ftp compile jcl to jes
echo get 'b136901.devops.jcl(plahello)' result1.txt>>ftpcmd.tmp
rem -- to view jobs in spool
echo dir>> ftpcmd.tmp
rem -- to go back to working directory
echo quote site filetype=seq>> ftpcmd.tmp

rem --
echo quit>> ftpcmd.tmp
ftp -n -s:ftpcmd.tmp %ProjectMVShostname%
rem del ftpcmd.tmp
rem type result1.txt