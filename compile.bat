@echo off

rem -- enter your username and your password
echo user %katrondina-uname%> ftpcmd.dat
echo %katpw%>> ftpcmd.dat

rem -- put "input file" 'PDS/DS destination'
echo put "%WORKSPACE%\DEVOPS.PPLI\HELLOWW.pli" 'b136901.devops.ppli(helloww)'>> ftpcmd.dat
echo put "%WORKSPACE%\DEVOPS.JCL\PLAHELLO.jcl" 'b136901.devops.jcl(plahello)'>> ftpcmd.dat

rem -- to connect to MVS JES Subcommand
echo quote site filetype=jes>> ftpcmd.dat
rem -- ftp compile jcl to jes
echo get 'b136901.devops.jcl(plahello)' result1.txt>>ftpcmd.dat
rem -- to view jobs in spool
echo dir>> ftpcmd.dat
rem -- to go back to working directory
echo quote site filetype=seq>> ftpcmd.dat

rem --
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat %HOSTNAME%
del ftpcmd.dat
rem type result1.txt