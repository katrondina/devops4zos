//HELD0340 JOB ($44ZTCAU,72F,BRF,5SUA,,N),BOEMTEST,TIME=5,
//             COND=(04,LT),MSGLEVEL=(1,1),MSGCLASS=H,
//             REGION=5M,NOTIFY=&SYSUID,SCHENV=DB2DTEST
/*JOBPARM  SYSAFF=ANY
//*---------------------------------------------------------------*//
//* THIS IS FOR RUNNING SIMPLE PROGRAMS                           *//
//* TO RUN HELLO.PPLI, COMPILE IT TO B136901.DEVL.LOAD            *//
//* USING SIMPLE COMPILER PLICL?                                  *//
//*---------------------------------------------------------------*//
//DPSMRC EXEC PGM=HELLO
//STEPLIB DD DSN=B136901.DEVOPS.LOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*