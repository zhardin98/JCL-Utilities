//JOBCARD JOB  (1234),'ZACHARY HARDIN',
//     CLASS=B,MSGCLASS=S,MSGLEVEL=(1,1),REGION=250M,
//     NOTIFY=&SYSUID
//**********************************************************************
//* CREATE GDG BASE                                                    *
//**********************************************************************
//STEP10 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
  DEFINE GDG ( NAME (NEW.GDG.NAME         )-
           LIMIT(255)                      -
           NOEMPTY                         - 
           SCRATCH )                       -
//**********************************************************************
//* CREATE INITIAL GENERATION                                          *
//**********************************************************************
//STEP20 EXEC PGM=IDCAMS
//FILEIN   DD DUMMY
//FILEOUT  DSN=NEW.GDG.NAME(+1),
//             DISP=(NEW,CATLG),
//             UNIT=DISK,
//             SPACE=(CYL,(1500,500),RLSE), 
//             DCB(RECFM=FB,LRECL=80)   
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD *
  REPRO INFILE(FILEIN) OUTFILE(FILEOUT)
/*
