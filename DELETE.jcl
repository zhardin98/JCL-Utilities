//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* DELETE GDG (THE "FORCE" WILL ZAP ALL GENS)                         *
//**********************************************************************
//DELGDG   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE (GDG NAME) GDG FORCE
//**********************************************************************
//* DELETE FLAT FILES                                                  *
//**********************************************************************
//DELFL    EXEC PGM=IEFBR14
//DD1      DD  DSN=FILENAME,
//             DISP=(OLD,DELETE,DELETE)
//
