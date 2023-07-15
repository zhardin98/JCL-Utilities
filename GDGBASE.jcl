//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M
//     NOTIFY=&SYSUID
//**********************************************************************
//GDGBASE EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
  DEFINE GDG ( NAME (NEW.GDG.NAME         )-
           LIMIT(255)                      -
           NOEMPTY                         - 
           SCRATCH )                       -
//
