//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//DROP    EXEC PGM=SORT 
//SYSOUT   DD SYSOUT=*
//SORTMSG  DD SYSOUT=*
//SORTIN   DD  DSN=INPUT,
//             DISP=SHR
//SORTOUT  DD  DSN=OUTPUT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=DISK,
//             SPACE=(CYL,(1500,500),RLSE), 
//             DCB(RECFM=FB,LRECL=80)    
//SYSIN    DD *
  SORT FIELDS=COPY
  SUM FIELDS=NONE
  END
//