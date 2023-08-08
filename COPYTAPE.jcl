//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* COPY A FLAT DISK FILE TO A TAPE FILE
//**********************************************************************
//COPY    EXEC PGM=IEBGENER,COND=(0,NE)
//SYSPRINT  DD SYSOUT=*
//SYSUT1    DD DSN=PROD.FILE.DISK,               
//             DISP=SHR
//SYSUT2    DD DSN=PROD.FILE.TAPE,            
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=TAPE
//SYSIN     DD DUMMY