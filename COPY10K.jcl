//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* TRUNCATE THE FIRST 10,000 RECORDS OF A FILE 
//**********************************************************************
//SORTCOPY EXEC PGM=SORT
//SORTIN   DD  DSN=PROD.FILE.SORTIN,
//             DISP=SHR
//SORTOUT  DD  DSN=PROD.FILE.SORTOUT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=DISK,
//             SPACE=(CYL,(1500,500),RLSE), 
//             DCB(RECFM=FB,LRECL=80)    
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=* 
//SORTMSG  DD  SYSOUT=*
//SYSIN    DD  *
  SORT FIELDS=COPY,STOPAFT=10000