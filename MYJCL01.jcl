//D12SPRU3 JOB 00009999,'SCHULUNG IBMZOS100',CLASS=U, KOMMENTAR
//             MSGCLASS=T,MSGLEVEL=(1,1),                      
//             COND=(0,NE),                                    
//             NOTIFY=&SYSUID                                  
//* ----------------------                                      
//* DIES IST EIN KOMMENTAR - NUTZEN DES DD - DATA DEFINITION    
//* DSN DARF MAX 44 CHAR LANG SEIN                              
//* BLKSIZE MUSS NICHT ANGEGEBEN WERDEN                        
//* ----------------------------------                          
//STEP00   EXEC PGM=IEFBR14                                    
//ALLOC01  DD  DSN=D12SPRU.ERSTE.BATCH.DATEI,                  
//             DISP=(MOD,DELETE)                                
//* ----------------------------------                          
//STEP01   EXEC PGM=IEFBR14                                    
//* ALLOC01  DD  DSN=D12SPRU.ERSTE.BATCH.DATEI,                  
   
//ALLOC01  DD DSN=12SPRU.ERSTE.BATCH.D%%ZIDAT,
//*
//*	%%ZIDAT im Control-M Job definieren
//*            
//             DISP=(NEW,CATLG,CATLG),                          
//             SPACE=(TRK,(2,1)),                              
//             BLKSIZE=0,                                      
//             LRECL=100,                                      
//             RECFM=FB                  