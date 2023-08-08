//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* SORT CARD TO STRIP OUT TO SPECIFIC RECORD(S)
//**********************************************************************
//SORTCOPY EXEC PGM=SORT
//SORTIN   DD  DSN=PROD.FILE.SORTIN,
//             DISP=SHR
//SORTOUT  DD  DSN=PROD.FILE.SORTOUT,
//             DISP=(NEW,CATLG),
//             UNIT=DISK,
//             SPACE=(CYL,(1500,500),RLSE), 
//             DCB(RECFM=FB,LRECL=80)    
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=* 
//SORTMSG  DD  SYSOUT=*
//* Starting column, length, type (CH/BI), condition, value
//SYSIN    DD  *
 SORT FIELDS=COPY
 INCLUDE COND=(1,8,CH,EQ,C'12345678')
