//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* CONCATENATE FILES                                                  
//**********************************************************************
//CONCAT    EXEC PGM=IEBGENER,COND=(0,NE)
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DSN=PROD.FILE.ONE,               *INPUTS
//             DISP=SHR
//          DD DSN=PROD.FILE.TWO,
//             DISP=SHR
//SYSUT2    DD DSN=PROD.FILE.CONCAT,            *OUTPUT
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=DISK,
//             SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=80)
//SYSIN     DD DUMMY