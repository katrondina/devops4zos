@echo off

rem -- enter your username and your password
echo user %katrondinausername%> ftpcmd.tmp
echo %katrondinapassword%>> ftpcmd.tmp

rem -- put "input file" 'PDS/DS destination'
rem echo put "%WORKSPACE%\DEVOPS.PPLI\HELLOWW.pli" 'b136901.devops.ppli(helloww)'>> ftpcmd.dat
rem echo put "%WORKSPACE%\DEVOPS.JCL\PLAHELLO.jcl" 'b136901.devops.jcl(plahello)'>> ftpcmd.dat

rem -- to connect to MVS JES Subcommand
echo quote site filetype=jes>> ftpcmd.tmp
rem -- ftp compile jcl to jes
rem echo get 'b136901.devops.jcl(plahello)' result1.txt>>ftpcmd.dat
rem -- to view jobs in spool
echo dir>> ftpcmd.tmp
rem -- to go back to working directory
echo quote site filetype=seq>> ftpcmd.tmp

rem --
echo quit>> ftpcmd.tmp
ftp -n -s:ftpcmd.tmp %ProjectMVShostname%
rem del ftpcmd.dat
rem type result1.txt