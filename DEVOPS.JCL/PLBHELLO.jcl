//B1369011  JOB  ($44ZTCAT,012,WPB,EZTA,,N),BOUSDEVL,TIME=5,
//             COND=(04,LT),MSGLEVEL=(1,1),MSGCLASS=H,
//             REGION=5M,NOTIFY=&SYSUID,SCHENV=ANYSYS
//HELDDS    OUTPUT  OUTDISP=(HOLD,HOLD)
//*JOBPARM  SYSAFF=ANY
//*===========================================================
//* GENERATE COMPILER
//* this pgm is MADE USING RDZ -> GENERATE COMPILE OPTIONS
//* 8-25-2016 KRR START
//*               USING PROC=ELAXFPL1 GENERATES JCL ERROR
//*               FOR MISSING PROC
//*=========================================================*//
//STEP01  EXEC IEL1CL //* CHANGE FROM ELAXFPL1 *//
//* CICS=,
//* DB2=,
//* COMP=
//PLI.SYSLIN DD DISP=(NEW,PASS),   //*input object module*//
//        DSN=&&LOADSET,UNIT=SYSDA,SPACE=(TRK,(10,2)),
//        DCB=BLKSIZE=3120
//PLI.SYSLIB DD DSN=BOEMDS.DEVL.MACROS,DISP=SHR //*the macro library*//
//           DD DSN=SPBIDDZ.DEVL.MACROS,DISP=SHR
//PLI.SYSXMLSD DD DUMMY
//PLI.SYSIN DD DISP=SHR,  //*source code*//
//        DSN=B136901.DEVOPS.PPLI(HELLO123)
//*
//******* ADDITIONAL JCL FOR COMPILE HERE ******
//LKED.SYSPRINT DD SYSOUT=*
//LKED.SYSLMOD DD DSN=B136901.DEVOPS.LOAD(HELLO123),DISP=SHR
//* end of job *//
//* another test *//