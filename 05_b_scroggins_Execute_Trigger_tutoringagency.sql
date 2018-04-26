INSERT INTO TUT_SESSION VALUES (51,TO_DATE('October 30 2016','mm dd yyyy'),
                                TO_TIMESTAMP('2016/10/30 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/30 15:00', 'YYYY/MM//DD HH24:MI'),
                                200.00, NULL, 2, 7, 5);  --with incorrect cost entry, corrected by trigger
INSERT INTO TUT_SESSION VALUES (52,TO_DATE('October 31 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/31 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/31 15:30', 'YYYY/MM//DD HH24:MI'), 
                                NULL, NULL, 2, 7, 5); --testing half-hour increment
INSERT INTO TUT_SESSION VALUES (53,TO_DATE('November 1 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/01 14:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/01 16:00', 'YYYY/MM//DD HH24:MI'), 
                                DEFAULT, NULL, 2, 7, 5); --testing half-hour increment
INSERT INTO TUT_SESSION VALUES (54,TO_DATE('November 2 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/02 14:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/02 16:30', 'YYYY/MM//DD HH24:MI'), 
                                DEFAULT, NULL, 2, 7, 5); --two hour session   
                                                            
--SELECT * FROM tut_session;                                                           