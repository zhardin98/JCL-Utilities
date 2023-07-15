//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M
//     NOTIFY=&SYSUID
//**********************************************************************
//ALTER    EXEC PGM=IDCAMS
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *
  ALTER PROD.FILE.EXPAND LIMIT (255)