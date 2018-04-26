/*employee (employee_id, name, age, sex, email_address, mailing address, phone_number,
            start_date, end_date, super_id, tutor_flag, lead_flag)*/
                             
INSERT INTO employee VALUES (1, 'Abraham', 'Adder', 35, 'male', 'aadder@gmail.com','123 Nowhere Lane', 
                            '773-457-9302', TO_DATE('January 20 2010','mm dd yyyy'), NULL, NULL, 'n', 'y', 'n');
INSERT INTO employee VALUES (2, 'Hannah', 'Carlson', 47, 'female', 'carl@gmail.com','1745 Night Ave', 
                            '773-218-9784', TO_DATE('March 20 2009','mm dd yyyy'), NULL, NULL, 'n', 'y', 'n');                         
INSERT INTO employee VALUES (3, 'Carlie', 'Sanders', 25, 'female', 'csanders@gmail.com','123 Everywhere Lane', 
                            '773-978-3256',TO_DATE('May 24 2013','mm dd yyyy'), NULL, 1, 'y', 'n', 'y');
INSERT INTO employee VALUES (4, 'Mark', 'Anders', 28, 'male', 'anders@gmail.com','235 Hello Avenue', 
                            '773-234-2164',TO_DATE('June 1 2015','mm dd yyyy'), NULL, 1, 'y', 'n', DEFAULT);
INSERT INTO employee VALUES (5, 'Carol', 'Anders', 26, 'female', 'canders@gmail.com','9871 Stop Boulevard', 
                            '773-456-3333',TO_DATE('September 24 2013','mm dd yyyy'), NULL, 1, 'y', 'n', 'y');
INSERT INTO employee VALUES (6, 'Tyler', 'Newsome', 21, 'male', 'newsome@gmail.com','78 Top Lane', 
                            '312-218-7878',TO_DATE('August 24 2014','mm dd yyyy'), NULL, 1, 'y', 'n', DEFAULT);
INSERT INTO employee VALUES (7, 'Andrea', 'Mitchell', 28, 'female', 'mitchell@gmail.com','789 North Avenue', 
                            '773-678-9874',TO_DATE('January 14 2015','mm dd yyyy'), NULL, 2, 'y', 'n', 'y');
INSERT INTO employee VALUES (8, 'Martin', 'Arno', 31, 'male', 'arno@gmail.com','2 Toronto Way', 
                            '312-745-3245',TO_DATE('May 3 2012','mm dd yyyy'), NULL, 2, 'y', 'n', 'n');
INSERT INTO employee VALUES (9, 'Tyler', 'Durdin', 21, 'male', 'tylerd@hotmail.com','14234 Barry Ct', 
                            '773-234-7246',TO_DATE('June 13 2015','mm dd yyyy'), NULL, 2, 'y', 'n', 'y');
INSERT INTO employee VALUES (10, 'Sarah', 'Martin', 30, 'female', 'martin@yahoo.com','14 Smith Parkway', 
                            '773-584-4444',TO_DATE('July 3 2016','mm dd yyyy'), NULL, 2, 'y', 'n', 'n');
INSERT INTO employee VALUES (11, 'Hunter', 'Pence', 24, 'male', 'hunterp@gmail.com','1 Norton Street', 
                            '773-777-4557',TO_DATE('October 12 2015','mm dd yyyy'), NULL, 2, 'y', 'n', 'n');
INSERT INTO employee VALUES (12, 'Hal', 'Parker', 24, 'male', 'parker12@gmail.com','12 Center Avenue', 
                            '312-452-1298',TO_DATE('May 19 2012','mm dd yyyy'), NULL, 2, 'y', 'n', 'n');  
INSERT INTO employee VALUES (13, 'Per', 'Darger', 25, 'other', 'pd1456@hotmail.com','1342 Treeway Court', 
                            '773-459-9998',TO_DATE('May 3 2012','mm dd yyyy'), 
                            TO_DATE('June 13 2015','mm dd yyyy'), 1, 'y', 'n', 'n');
INSERT INTO employee VALUES (14, 'Sarah', 'Don', 37, 'female', 'don@gmail.com','14A1 North Avenue', 
                            '312-221-4471',TO_DATE('February 3 2013','mm dd yyyy'),
                            TO_DATE('July 3 2015','mm dd yyyy'), 1, 'y', 'n', 'n');
INSERT INTO employee VALUES (15, 'Harper', 'Collins', 31, 'female', 'hcollins@yahoo.com','14 Toronto Way', 
                            '773-222-7841',TO_DATE('August 28 2014','mm dd yyyy'), 
                            TO_DATE('September 13 2015','mm dd yyyy'), 1, 'y', 'n', 'n');
INSERT INTO employee VALUES (16, 'Cherish', 'Dufort', 23, 'female', 'dfuort@gmail.com','9 Canterbury Drive ', 
                            '773-117-1908',TO_DATE('May 17 2016','mm dd yyyy'), 
                            NULL, 2, 'y', 'n', 'n');
INSERT INTO employee VALUES (17, 'Kalina', 'Stoddard', 31, 'female', 'kstod@yahoo.com','13 Nicolls Drive ', 
                            '773361-9418',TO_DATE('August 28 2014','mm dd yyyy'), 
                            NULL, 1, 'y', 'n', 'n');
INSERT INTO employee VALUES (18, 'Marcie', 'Sanchez', 24, 'female', 'sanchez@yahoo.com','1408 Winner Drive', 
                            '773361-9418',TO_DATE('August 28 2014','mm dd yyyy'), 
                            NULL, 2, 'y', 'n', 'n');  
                                                       

/*assigned tutors - for testing*/

INSERT INTO assigned_tutors VALUES (3);
INSERT INTO assigned_tutors VALUES (5);
INSERT INTO assigned_tutors VALUES (7);
INSERT INTO assigned_tutors VALUES (9);
INSERT INTO assigned_tutors VALUES (11);

/*unassigned tutors - for testing*/

INSERT INTO unassigned_tutors VALUES (1);
INSERT INTO unassigned_tutors VALUES (2);
INSERT INTO unassigned_tutors VALUES (8);
INSERT INTO unassigned_tutors VALUES (10);
INSERT INTO unassigned_tutors VALUES (18);

/*client*/ 
INSERT INTO client VALUES (1,'Sunny', 'Hope', 47, 'female', 'hope@yahoo.com', '145 Stranger Street', 
                          '312-987-6473', NULL, 'y','n');
  INSERT INTO client VALUES (2,'Clark', 'Hope', 9, 'male', 'hope@yahoo.com', '145 Stranger Street', 
                          '312-987-6473', 1, 'n','y');   
  INSERT INTO client VALUES (3,'Ciera', 'Hope', 12, 'female', 'hope@yahoo.com', '145 Stranger Street', 
                          '312-987-6473', 1, 'n','y');     
                          
INSERT INTO client VALUES (4,'Tyler', 'Porter', 39, 'male', 'tyler123@gmail.com', '287 Nickle Street', 
                          '773-454-6489', NULL, 'y','n');          
  INSERT INTO client VALUES (5,'Sarah', 'Porter', 18, 'female', 'tyler123@gmail.com', '287 Nickle Street', 
                          '773-454-6489', 4, 'n','y');
                          
INSERT INTO client VALUES (6,'James', 'Harden', 43, 'male', 'harden@gmail.com', '1765 California Avenue', 
                          '312-234-5544', NULL, 'y','n');   
  INSERT INTO client VALUES (7,'Mora', 'Harden', 16, 'female', 'harden@gmail.com', '1765 California Avenue', 
                          '312-234-5544', 6, 'n','y');
                          
INSERT INTO client VALUES (8,'David', 'Tyler', 52, 'male', 'davidtyler23!@yahoo.com', '174 Willow Avenue', 
                          '773-556-5998', NULL, 'y','n');
  INSERT INTO client VALUES (9,'Mark', 'Tyler', 9, 'male', 'davidtyler23!@yahoo.com', '174 Willow Avenue',
                          '773-556-5998', 8, 'n','y');   
  INSERT INTO client VALUES (10,'Mary', 'Tyler', 12, 'female', 'davidtyler23!@yahoo.com', '174 Willow Avenue', 
                          '773-556-5998', 8, 'n','y');
  INSERT INTO client VALUES (11,'Sarah', 'Tyler', 17, 'female', 'davidtyler23!@yahoo.com', '174 Willow Avenue',
                          '773-556-5998', 8, 'n','y');
                          
INSERT INTO client VALUES (12,'Hala', 'Attasi', 40, 'female', 'hat34@gmail.com', '14 Montrose Street', 
                          '773-646-8974', NULL, 'y','n');   
  INSERT INTO client VALUES (13,'Feras', 'Attasi', 7, 'male', 'hat34@gmail.com', '14 Montrose Street', 
                          '773-646-8974', 12, 'n','y'); 
                          
INSERT INTO client VALUES (14,'Harold', 'Carter', 37, 'male', 'carter@hotmail.com', '1045 G Street', 
                          '773-789-7844', NULL, 'y','n');
  INSERT INTO client VALUES (15,'Peter', 'Carter', 9, 'male', 'carter@hotmail.com', '1045 G Street', 
                          '773-789-7844', 14, 'n','y');   
  INSERT INTO client VALUES (16,'David', 'Carter', 7, 'male', 'carter@hotmail.com', '1045 G Street', 
                          '773-789-7844', 14, 'n','y');
                          
INSERT INTO client VALUES (17,'Dheepa', 'Sundar', 49, 'female', 'sundar@hotmail.com', '16 Morater Court', 
                          '312-987-1989', NULL, 'y','n');
  INSERT INTO client VALUES (18,'Maya', 'Sundar', 13, 'female', 'sundar@hotmail.com', '16 Morater Court', 
                          '312-987-1989', 17, 'n','y');   
  INSERT INTO client VALUES (19,'Vijay', 'Sundar', 16, 'male', 'sundar@hotmail.com', '16 Morater Court', 
                          '312-987-1989', 17, 'n','y');    
                          
INSERT INTO client VALUES (20,'Linda', 'Hetzel', 53, 'female', 'hetz@gmail.com', '744 Gregory Street', 
                          '312-234-5544', NULL, 'y','n');   
  INSERT INTO client VALUES (21,'Stephen', 'Hetzel', 15, 'female', 'hetz@gmail.com', '744 Gregory Street', 
                          '312-234-5544', 20, 'n','y');     
                          
INSERT INTO client VALUES (22,'Zion', 'Solomon', 44, 'male', 'zion@hotmail.com', '96 Rose Drive', 
                          '312-173-7429', NULL, 'y','n');
  INSERT INTO client VALUES (23,'David', 'Solomon', 8, 'male', 'zion@hotmail.com', '96 Rose Drive', 
                          '312-173-7429', 22, 'n','y');   
  INSERT INTO client VALUES (24,'Sarah', 'Solomon', 18, 'female', 'zion@hotmail.com', '96 Rose Drive', 
                          '312-173-7429', 22, 'n','y');
                          
                          
INSERT INTO client VALUES (25,'Aputsiaq', 'Hawking', 57, 'male', 'hawking@yahoo.com', '978 Military Avenue', 
                          '773-211-0873', NULL, 'y','n');
  INSERT INTO client VALUES (26,'Winter', 'Hawking', 10, 'male', 'hawking@yahoo.com', '978 Military Avenue',
                          '773-211-0873', 25, 'n','y');   
  INSERT INTO client VALUES (27,'Ilse', 'Hawking', 12, 'female', 'hawking@yahoo.com', '978 Military Avenue', 
                          '773-211-0873', 25, 'n','y');
  INSERT INTO client VALUES (28,'Lobo', 'Hawking', 16, 'female', 'hawking@yahoo.com', '978 Military Avenue',
                          '773-211-0873', 25, 'n','y');
                          
INSERT INTO client VALUES (29,'Lisbet', 'Page', 34, 'female', 'page@hotmail.com', '675 E. Mulberry Avenue', 
                          '312-793-4995', NULL, 'y','n');
  INSERT INTO client VALUES (30,'Karen', 'Page', 13, 'female', 'page@hotmail.com', '675 E. Mulberry Avenue', 
                          '312-987-1989', 29, 'n','y');   
  INSERT INTO client VALUES (31,'Mark', 'Page', 13, 'male', 'page@hotmail.com', '675 E. Mulberry Avenue', 
                          '312-987-1989', 29, 'n','y');

INSERT INTO client VALUES (32,'Teodor', 'Coop', 54, 'male', 'coop@gmail.com', '9674 Water Road', 
                          '773-435-6679', NULL, 'y','n');
  INSERT INTO client VALUES (33,'Marcus', 'Coop', 18, 'male', 'coop@gmail.com', '9674 Water Road', 
                          '773-435-6679', 32, 'n','y');   
  INSERT INTO client VALUES (34,'Clara', 'Coop', 15, 'female', 'coop@gmail.com', '9674 Water Road', 
                          '773-435-6679', 32, 'n','y');                          
                        
INSERT INTO client VALUES (35,'Doris', 'Rybar', 47, 'female', 'drybar@gmail.com', '7999 10th Road', 
                          '773-124-1554', NULL, 'y','n');   
  INSERT INTO client VALUES (36,'Tyler', 'Rybar', 16, 'male', 'drybar@gmail.com', '7999 10th Road', 
                          '773-124-1554', 35, 'n','y');    
                          
INSERT INTO client VALUES (37,'Grid', 'Bradley', 47, 'male', 'bradley@yahoo.com', '7870 Lookout Drive', 
                          '773-809-3530', NULL, 'y','n');
  INSERT INTO client VALUES (38,'Carl', 'Bradley', 17, 'male', 'bradley@yahoo.com', '7870 Lookout Drive',
                          '773-809-3530', 37, 'n','y');   
  INSERT INTO client VALUES (39,'Sarah', 'Bradley', 12, 'female', 'bradley@yahoo.com', '7870 Lookout Drive', 
                          '773-809-3530', 37, 'n','y');
  INSERT INTO client VALUES (40,'Clara', 'Bradley', 13, 'female', 'bradley@yahoo.com', '7870 Lookout Drive',
                          '773-809-3530', 37, 'n','y');
                          
INSERT INTO client VALUES (41,'Lola', 'Barna', 44, 'female', 'lola12@gmail.com', '65 Thatcher Lane', 
                          '773-231-7008', NULL, 'y','n');
  INSERT INTO client VALUES (42,'Lamia', 'Barna', 10, 'female', 'lola12@gmail.com', '65 Thatcher Lane', 
                          '773-231-7008', 41, 'n','y');   
  INSERT INTO client VALUES (43,'Jordana', 'Barna', 16, 'female', 'lola12@gmail.com', '65 Thatcher Lane', 
                          '773-231-7008', 41, 'n','y'); 
                          
INSERT INTO client VALUES (44,'Agathe', 'Bolton', 39, 'female', 'bolton@gmail.com', '178 SW Marlborough Road', 
                          '773-522-1932', NULL, 'y','n');
  INSERT INTO client VALUES (45,'Emily', 'Bolton', 12, 'female', 'bolton@gmail.com', '178 SW Marlborough Road', 
                          '773-522-1932', 44, 'n','y');   
  INSERT INTO client VALUES (46,'Charles', 'Bolton', 15, 'male', 'bolton@gmail.com', '178 SW Marlborough Road', 
                          '773-522-1932', 44, 'n','y');
                          
INSERT INTO client VALUES (47,'Mahli', 'Kovac', 49, 'female', 'kovac@gmail.com', '7408 Golden Star Court', 
                          '312-939-8295', NULL, 'y','n');
  INSERT INTO client VALUES (48,'Oluwafemi', 'Kovak', 17, 'male', 'kovac@gmail.com', '7408 Golden Star Court', 
                          '312-939-8295', 47, 'n','y');   
  INSERT INTO client VALUES (49,'Fachtna', 'Kovak', 12, 'female', 'kovac@gmail.com', '7408 Golden Star Court', 
                          '312-939-8295', 47, 'n','y');                             
                          
INSERT INTO client VALUES (50,'Dan', 'Kaspar', 43, 'male', 'kaspar@gmail.com', '7462 East Meadowbrook Avenue', 
                          '773-115-7297', NULL, 'y','n');   
  INSERT INTO client VALUES (51,'Sarah', 'Kaspar', 8, 'female', 'kaspar@gmail.com', '7462 East Meadowbrook Avenue', 
                          '773-115-7297', 50, 'n','y');     
                          
INSERT INTO client VALUES (52,'Oswine', 'Palmeiro', 42, 'female', 'opalmeiro@gmail.com', '45 Pennington Drive', 
                          '312-125-6530', NULL, 'y','n');
  INSERT INTO client VALUES (53,'Giannino', 'Palmeiro', 9, 'male', 'opalmeiro@gmail.com', '45 Pennington Drive', 
                          '312-125-6530', 52, 'n','y');   
  INSERT INTO client VALUES (54,'Anisa', 'Palmeiro', 17, 'female', 'opalmeiro@gmail.com', '45 Pennington Drive', 
                          '312-125-6530', 52, 'n','y');
                          
INSERT INTO client VALUES (55,'Dominic', 'Blair', 47, 'male', 'blair13@gmail.com', '11 King Street', 
                          '773-364-9953', NULL, 'y','n');
  INSERT INTO client VALUES (56,'Kyle', 'Blair', 12, 'male', 'blair13@gmail.com', '11 King Street', 
                          '773-364-9953', 55, 'n','y');   
  INSERT INTO client VALUES (57,'Mark', 'Blair', 14, 'male', 'blair13@gmail.com', '11 King Street', 
                          '773-364-9953', 55, 'n','y');  
                          
INSERT INTO client VALUES (58,'Tiia', 'Stefansen', 37, 'female', 'steph@gmail.com', '82 Jones Drive', 
                          '773-362-6989', NULL, 'y','n');
  INSERT INTO client VALUES (59,'Connor', 'Stefansen', 8, 'male', 'steph@gmail.com', '82 Jones Drive', 
                          '773-362-6989', 58, 'n','y');   
  INSERT INTO client VALUES (60,'Tyler', 'Stefansen', 10, 'male', 'steph@gmail.com', '82 Jones Drive', 
                          '773-362-6989', 58, 'n','y');                           
                          
                          
                          
/*subject*/
--TODO: Change order of description and subject_name
INSERT INTO subject VALUES (1, 'Elementary Reading', '1st through 6th grade', 55.00);
INSERT INTO subject VALUES (2, 'Elementary Math', '1st through 6th grade', 55.00);
INSERT INTO subject VALUES (3, 'Elementary Science', '1st through 6th grade', 55.00);
INSERT INTO subject VALUES (4, 'Elementary Selective Enrollment Prep', '1st through 6th grade prep for Junior High', 65.00);
INSERT INTO subject VALUES (5, 'Junior High Reading', '7th and 8th grade', 55.00);
INSERT INTO subject VALUES (6, 'Junior High Math', '7th and 8th grade', 55.00);
INSERT INTO subject VALUES (7, 'Junior High Science', '7th and 8th grade', 55.00);
INSERT INTO subject VALUES (8, 'Junior High Selective Enrollment Prep', '7th and 8th grade prep for High School', 75.00);
INSERT INTO subject VALUES (9, 'High School Algebra', '9th through 12th grade', 75.00);
INSERT INTO subject VALUES (10, 'High School Geometry', '9th through 12th grade', 75.00);
INSERT INTO subject VALUES (11, 'High School Trigonometry', '9th through 12th grade', 80.00);
INSERT INTO subject VALUES (12, 'High School Calculus', '9th through 12th grade', 90.00);
INSERT INTO subject VALUES (13, 'High School History', '9th through 12th grade', 75.00);
INSERT INTO subject VALUES (14, 'High School English', '9th through 12th grade', 75.00);
INSERT INTO subject VALUES (15, 'High School Biology', '9th through 12th grade', 80.00);
INSERT INTO subject VALUES (16, 'High School Chemistry', '9th through 12th grade', 90.00);
INSERT INTO subject VALUES (17, 'ACT Prep', '9th through 12th grade', 90.00);
INSERT INTO subject VALUES (18, 'SAT Prep', '9th through 12th grade', 90.00);

/*subject_specialization*/

--Humanities tutors
  --Elementary and Junior High
INSERT INTO SUBJECT_SPEC VALUES (1, 3, 1);
INSERT INTO SUBJECT_SPEC VALUES (2, 3, 4);
INSERT INTO SUBJECT_SPEC VALUES (3, 3, 5);
INSERT INTO SUBJECT_SPEC VALUES (4, 3, 8);
INSERT INTO SUBJECT_SPEC VALUES (5, 4, 1);
INSERT INTO SUBJECT_SPEC VALUES (6, 4, 4);
INSERT INTO SUBJECT_SPEC VALUES (7, 4, 5);
INSERT INTO SUBJECT_SPEC VALUES (8, 4, 8);
  --High School
INSERT INTO SUBJECT_SPEC VALUES (9, 5, 13);
INSERT INTO SUBJECT_SPEC VALUES (10, 5, 14);
INSERT INTO SUBJECT_SPEC VALUES (11, 5, 17);
INSERT INTO SUBJECT_SPEC VALUES (12, 5, 18);
INSERT INTO SUBJECT_SPEC VALUES (13, 6, 13);
INSERT INTO SUBJECT_SPEC VALUES (14, 6, 14);
INSERT INTO SUBJECT_SPEC VALUES (15, 6, 17);
INSERT INTO SUBJECT_SPEC VALUES (16, 6, 18);

--Hard sciences tutors
  --Elementary and Junior High
INSERT INTO SUBJECT_SPEC VALUES (17, 7, 6);
INSERT INTO SUBJECT_SPEC VALUES (18, 7, 7);
INSERT INTO SUBJECT_SPEC VALUES (19, 7, 8);
INSERT INTO SUBJECT_SPEC VALUES (20, 7, 2);
INSERT INTO SUBJECT_SPEC VALUES (21, 7, 3);
INSERT INTO SUBJECT_SPEC VALUES (22, 8, 6);
INSERT INTO SUBJECT_SPEC VALUES (23, 8, 7);
INSERT INTO SUBJECT_SPEC VALUES (24, 8, 8);
INSERT INTO SUBJECT_SPEC VALUES (25, 8, 2);
INSERT INTO SUBJECT_SPEC VALUES (26, 8, 3);
  --High School
INSERT INTO SUBJECT_SPEC VALUES (27, 9, 9);
INSERT INTO SUBJECT_SPEC VALUES (28, 9, 10);
INSERT INTO SUBJECT_SPEC VALUES (29, 9, 11);
INSERT INTO SUBJECT_SPEC VALUES (30, 9, 12);
INSERT INTO SUBJECT_SPEC VALUES (31, 9, 17);
INSERT INTO SUBJECT_SPEC VALUES (32, 9, 18);
INSERT INTO SUBJECT_SPEC VALUES (33, 10, 9);
INSERT INTO SUBJECT_SPEC VALUES (34, 10, 10);
INSERT INTO SUBJECT_SPEC VALUES (35, 10, 11);
INSERT INTO SUBJECT_SPEC VALUES (36, 10, 12);
INSERT INTO SUBJECT_SPEC VALUES (37, 10, 17);
INSERT INTO SUBJECT_SPEC VALUES (38, 10, 18);
INSERT INTO SUBJECT_SPEC VALUES (39, 11, 15);
INSERT INTO SUBJECT_SPEC VALUES (40, 11, 16);
INSERT INTO SUBJECT_SPEC VALUES (41, 11, 17);
INSERT INTO SUBJECT_SPEC VALUES (42, 11, 18);
INSERT INTO SUBJECT_SPEC VALUES (43, 12, 15);
INSERT INTO SUBJECT_SPEC VALUES (44, 12, 16);
INSERT INTO SUBJECT_SPEC VALUES (45, 12, 17);
INSERT INTO SUBJECT_SPEC VALUES (46, 12, 18);

  

/*subject_need - subject id, client id*/
INSERT INTO SUBJECT_NEED VALUES (1,1,13);
INSERT INTO SUBJECT_NEED VALUES (2,2,13);
INSERT INTO SUBJECT_NEED VALUES (3,2,42);
INSERT INTO SUBJECT_NEED VALUES (4,11,5);
INSERT INTO SUBJECT_NEED VALUES (5,14,43);
INSERT INTO SUBJECT_NEED VALUES (6,2,43);
INSERT INTO SUBJECT_NEED VALUES (7,6,57);
INSERT INTO SUBJECT_NEED VALUES (8,8,56);
INSERT INTO SUBJECT_NEED VALUES (9,6,56);
INSERT INTO SUBJECT_NEED VALUES (10,6,45);
INSERT INTO SUBJECT_NEED VALUES (11,9,46);
INSERT INTO SUBJECT_NEED VALUES (12,16,38);
INSERT INTO SUBJECT_NEED VALUES (13,2,16);
INSERT INTO SUBJECT_NEED VALUES (14,10,34);
INSERT INTO SUBJECT_NEED VALUES (15,13,34);
INSERT INTO SUBJECT_NEED VALUES (16,17,33);
INSERT INTO SUBJECT_NEED VALUES (17,16,7);
INSERT INTO SUBJECT_NEED VALUES (18,1,26);
INSERT INTO SUBJECT_NEED VALUES (19,1,27);
INSERT INTO SUBJECT_NEED VALUES (20,2,27);
INSERT INTO SUBJECT_NEED VALUES (21,3,27);
INSERT INTO SUBJECT_NEED VALUES (22,11,28);
INSERT INTO SUBJECT_NEED VALUES (23,10,21);
INSERT INTO SUBJECT_NEED VALUES (24,4,2);
INSERT INTO SUBJECT_NEED VALUES (25,4,3);
INSERT INTO SUBJECT_NEED VALUES (26,1,51);
INSERT INTO SUBJECT_NEED VALUES (27,7,49);
INSERT INTO SUBJECT_NEED VALUES (28,18,48);
INSERT INTO SUBJECT_NEED VALUES (29,16,48);
INSERT INTO SUBJECT_NEED VALUES (30,8,30);
INSERT INTO SUBJECT_NEED VALUES (31,8,31);
INSERT INTO SUBJECT_NEED VALUES (32,12,54);
INSERT INTO SUBJECT_NEED VALUES (33,3,53);
INSERT INTO SUBJECT_NEED VALUES (34,16,5);
INSERT INTO SUBJECT_NEED VALUES (35,11,36);
INSERT INTO SUBJECT_NEED VALUES (36,15,36);
INSERT INTO SUBJECT_NEED VALUES (37,1,23);
INSERT INTO SUBJECT_NEED VALUES (38,2,23);
INSERT INTO SUBJECT_NEED VALUES (39,18,24);
INSERT INTO SUBJECT_NEED VALUES (40,12,24);
INSERT INTO SUBJECT_NEED VALUES (41,3,59);
INSERT INTO SUBJECT_NEED VALUES (42,1,59);
INSERT INTO SUBJECT_NEED VALUES (43,3,60);
INSERT INTO SUBJECT_NEED VALUES (44,1,60);
INSERT INTO SUBJECT_NEED VALUES (45,15,19);
INSERT INTO SUBJECT_NEED VALUES (46,17,19);
INSERT INTO SUBJECT_NEED VALUES (47,8,18);
INSERT INTO SUBJECT_NEED VALUES (48,2,9);
INSERT INTO SUBJECT_NEED VALUES (49,13,11);
INSERT INTO SUBJECT_NEED VALUES (50,5,12);

/*tut_session
TODO: Create SESSION table for default days, times; 
subject_id, employee_id, client_id*/
INSERT INTO TUT_SESSION VALUES (1,TO_DATE('October 03 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/03 12:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/03 13:00', 'YYYY/MM//DD HH24:MI'), 
                                55.00, 'Please follow up by phone', 2, 3, 3);
INSERT INTO TUT_SESSION VALUES (2,TO_DATE('October 7 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/07 12:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/07 13:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 4, 5);
INSERT INTO TUT_SESSION VALUES (3,TO_DATE('October 3 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/03 12:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/03 14:00', 'YYYY/MM//DD HH24:MI'), 
                                82.50,'Homework: _Where The Red Fern Grows_, pp 1-83', 1, 1, 5);                                
INSERT INTO TUT_SESSION VALUES (4,TO_DATE('October 27 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/27 13:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/27 14:00', 'YYYY/MM//DD HH24:MI'), 
                                55.00, 'Please follow up by phone', 2, 4, 3);
                                
INSERT INTO TUT_SESSION VALUES (5,TO_DATE('October 28 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/28 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/28 15:30', 'YYYY/MM//DD HH24:MI'),
                                82.50, NULL, 2, 3, 5);                               
INSERT INTO TUT_SESSION VALUES (6,TO_DATE('October 21 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/21 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/21 16:00', 'YYYY/MM//DD HH24:MI'),
                                110.00, NULL, 2, 6, 5);  
INSERT INTO TUT_SESSION VALUES (7,TO_DATE('October 29 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/29 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/29 15:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 2, 7, 5);
INSERT INTO TUT_SESSION VALUES (8,TO_DATE('November 1 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/01 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/01 13:45', 'YYYY/MM//DD HH24:MI'),
                                90.00, 'Complete handout on backside attacks', 16, 11, 38); 
INSERT INTO TUT_SESSION VALUES (9,TO_DATE('November 2 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/02 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/02 16:15', 'YYYY/MM//DD HH24:MI'),
                                55.00, 'Please bring current MAP scores next week', 1, 4, 26); 
INSERT INTO TUT_SESSION VALUES (10,TO_DATE('November 12 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/12 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/12 10:00', 'YYYY/MM//DD HH24:MI'),
                                90.00, 'Hand in incomplete work to teacher on Monday', 16, 12, 48);                                 
/* For testing TRIGGER CalculateSessionRate            
INSERT INTO TUT_SESSION VALUES (9,TO_DATE('October 30 2016','mm dd yyyy'),
                                TO_TIMESTAMP('2016/10/30 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/30 15:00', 'YYYY/MM//DD HH24:MI'),
                                200.00, NULL, 2, 7, 5);  --with incorrect cost entry, corrected by trigger
INSERT INTO TUT_SESSION VALUES (10,TO_DATE('October 31 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/10/31 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/10/31 15:30', 'YYYY/MM//DD HH24:MI'), 
                                NULL, NULL, 2, 7, 5);
INSERT INTO TUT_SESSION VALUES (11,TO_DATE('November 1 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/01 14:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/01 16:00', 'YYYY/MM//DD HH24:MI'), 
                                DEFAULT, NULL, 2, 7, 5);
INSERT INTO TUT_SESSION VALUES (12,TO_DATE('November 2 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/11/02 14:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/11/02 16:30', 'YYYY/MM//DD HH24:MI'), 
                                DEFAULT, NULL, 2, 7, 5);    
                                 */   
                                 
/*9-10*/
INSERT INTO TUT_SESSION VALUES (11,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 10:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 3, 13);
INSERT INTO TUT_SESSION VALUES (12,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 10:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 2, 8, 42);
INSERT INTO TUT_SESSION VALUES (13,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 10:00', 'YYYY/MM//DD HH24:MI'),
                                80.00, NULL, 11, 10, 43);
INSERT INTO TUT_SESSION VALUES (14,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 10:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 6, 7, 57);
INSERT INTO TUT_SESSION VALUES (15,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 9:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 10:00', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 8, 4, 56);                                
/*10-11*/
INSERT INTO TUT_SESSION VALUES (16,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 10:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 11:15', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 6, 7, 45);
INSERT INTO TUT_SESSION VALUES (17,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 10:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 11:15', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 9, 9, 46);
INSERT INTO TUT_SESSION VALUES (18,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 10:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 11:15', 'YYYY/MM//DD HH24:MI'),
                                80.00, NULL, 7, 8, 39);
INSERT INTO TUT_SESSION VALUES (19,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 10:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 11:15', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 8, 4, 40);
INSERT INTO TUT_SESSION VALUES (20,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 10:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 11:15', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 16, 12, 38);     
/*11-12*/
INSERT INTO TUT_SESSION VALUES (21,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 11:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 12:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 2, 7, 16);
INSERT INTO TUT_SESSION VALUES (22,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 11:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 12:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 3, 8, 15);
INSERT INTO TUT_SESSION VALUES (23,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 11:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 12:30', 'YYYY/MM//DD HH24:MI'),
                                80.00, NULL, 10, 10, 34);
INSERT INTO TUT_SESSION VALUES (24,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 11:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 12:30', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 17, 6, 33);
INSERT INTO TUT_SESSION VALUES (25,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 11:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 12:30', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 16, 12, 7);   
/*12-1*/
INSERT INTO TUT_SESSION VALUES (26,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 13:45', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 4, 26);
INSERT INTO TUT_SESSION VALUES (27,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 13:45', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 3, 27);
INSERT INTO TUT_SESSION VALUES (28,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 13:45', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 11, 9, 28);
INSERT INTO TUT_SESSION VALUES (29,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 13:45', 'YYYY/MM//DD HH24:MI'),
                                80.00, NULL, 10, 10, 21);
INSERT INTO TUT_SESSION VALUES (30,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 12:45', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 13:45', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 4, 7, 2);   
/*1-2*/
INSERT INTO TUT_SESSION VALUES (31,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 15:00', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 4, 7, 3);
INSERT INTO TUT_SESSION VALUES (32,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 15:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 3, 51);
INSERT INTO TUT_SESSION VALUES (33,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 15:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 7, 8, 49);
INSERT INTO TUT_SESSION VALUES (34,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 15:00', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 18, 12, 48);
INSERT INTO TUT_SESSION VALUES (35,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 14:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 15:00', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 8, 4, 30);   
/*2-3*/
INSERT INTO TUT_SESSION VALUES (36,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 16:15', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 8, 3, 31);
INSERT INTO TUT_SESSION VALUES (37,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 16:15', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 12, 10, 54);
INSERT INTO TUT_SESSION VALUES (38,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 16:15', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 3, 7, 53);
INSERT INTO TUT_SESSION VALUES (39,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 16:15', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 16, 11, 5);
INSERT INTO TUT_SESSION VALUES (40,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 15:15', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 16:15', 'YYYY/MM//DD HH24:MI'),
                                80.00, NULL, 11, 9, 36);   
/*3-4*/
INSERT INTO TUT_SESSION VALUES (41,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 16:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 17:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 1, 3, 23);
INSERT INTO TUT_SESSION VALUES (42,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 16:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 17:30', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 18, 12, 24);
INSERT INTO TUT_SESSION VALUES (43,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 16:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 17:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 3, 8, 59);
INSERT INTO TUT_SESSION VALUES (44,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 16:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 17:30', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 3, 7, 60);
INSERT INTO TUT_SESSION VALUES (45,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 16:30', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 17:30', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 15, 11, 19);   
/*4-5*/
INSERT INTO TUT_SESSION VALUES (46,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 17:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 18:00', 'YYYY/MM//DD HH24:MI'),
                                90.00, NULL, 17, 11, 19);
INSERT INTO TUT_SESSION VALUES (47,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 17:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 18:00', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 8, 3, 18);
INSERT INTO TUT_SESSION VALUES (48,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 17:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 18:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 2, 7, 9);
INSERT INTO TUT_SESSION VALUES (49,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 17:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 18:00', 'YYYY/MM//DD HH24:MI'),
                                75.00, NULL, 13, 6, 11);
INSERT INTO TUT_SESSION VALUES (50,TO_DATE('December 17 2016','mm dd yyyy'), 
                                TO_TIMESTAMP('2016/12/17 17:00', 'YYYY/MM//DD HH24:MI'), 
                                TO_TIMESTAMP('2016/12/17 18:00', 'YYYY/MM//DD HH24:MI'),
                                55.00, NULL, 5, 4, 10);                                   
/*pay_method*/

INSERT INTO PAY_METHOD VALUES (1, 'Credit Card', 'Mastercard');
INSERT INTO PAY_METHOD VALUES (2, 'Credit Card', 'Visa');
INSERT INTO PAY_METHOD VALUES (3, 'Credit Card', 'AMEX');
INSERT INTO PAY_METHOD VALUES (4, 'Personal Check', NULL);
INSERT INTO PAY_METHOD VALUES (5, 'Cash', NULL);

/*bill - bill_id, client_id, bill_amount, due_date, pay_id, pay_status*/

INSERT INTO BILL VALUES (1, 1, 55.00, TO_DATE('October 10 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (2, 4, 55.00, TO_DATE('October 14 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (3, 4, 82.50, TO_DATE('October 10 2016','mm dd yyyy'), 4, 'paid');
INSERT INTO BILL VALUES (4, 1, 55.00, TO_DATE('November 03 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (5, 4, 82.50, TO_DATE('November 04 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (6, 4, 110.00, TO_DATE('October 28 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (7, 4, 55.00, TO_DATE('November 05 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (8, 37, 90.00, TO_DATE('November 08 2016','mm dd yyyy'), 2, 'paid');
INSERT INTO BILL VALUES (9, 25, 55.00, TO_DATE('November 09 2016','mm dd yyyy'), 1, 'paid');
INSERT INTO BILL VALUES (10, 47, 90.00, TO_DATE('November 19 2016','mm dd yyyy'), 5, 'paid');
INSERT INTO BILL VALUES (11, 12, 55.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (12, 41, 135.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (13, 55, 130.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (14, 44, 130.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (15, 37, 245.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (16, 14, 110.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (17, 32, 170.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (18, 6, 90.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (19, 25, 200.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (20, 20, 80.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (21, 1, 150.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (22, 50, 55.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (23, 50, 145.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (24, 29, 150.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (25, 52, 145.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (26, 4, 90.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (27, 35, 80.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (28, 22, 145.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (29, 58, 110.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (30, 17, 255.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (31, 8, 55.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');
INSERT INTO BILL VALUES (32, 9, 130.00, TO_DATE('December 24 2016','mm dd yyyy'), NULL, 'unpaid');


/*line_item line_id, line_amount, session_id, bill_id*/
INSERT INTO LINE_ITEM VALUES (1, 55.00, 1, 1);
INSERT INTO LINE_ITEM VALUES (2, 55.00, 2, 2);
INSERT INTO LINE_ITEM VALUES (3, 82.50, 3, 3);
INSERT INTO LINE_ITEM VALUES (4, 55.00, 4, 4);
INSERT INTO LINE_ITEM VALUES (5, 82.50, 5, 5);
INSERT INTO LINE_ITEM VALUES (6, 110.00, 6, 6);
INSERT INTO LINE_ITEM VALUES (7, 55.00, 7, 7);
INSERT INTO LINE_ITEM VALUES (8, 90.00, 8, 8);
INSERT INTO LINE_ITEM VALUES (9, 55.00, 9, 9);
INSERT INTO LINE_ITEM VALUES (10, 90.00, 10, 10);
INSERT INTO LINE_ITEM VALUES (11, 55.00, 11, 11);
INSERT INTO LINE_ITEM VALUES (12, 55.00, 12, 12);
INSERT INTO LINE_ITEM VALUES (13, 80.00, 13, 12);
INSERT INTO LINE_ITEM VALUES (14, 55.00, 14, 13);
INSERT INTO LINE_ITEM VALUES (15, 75.00, 15, 13);
INSERT INTO LINE_ITEM VALUES (16, 55.00, 16, 14);
INSERT INTO LINE_ITEM VALUES (17, 75.00, 17, 14);
INSERT INTO LINE_ITEM VALUES (18, 80.00, 18, 15);
INSERT INTO LINE_ITEM VALUES (19, 75.00, 19, 15);
INSERT INTO LINE_ITEM VALUES (20, 90.00, 20, 15);
INSERT INTO LINE_ITEM VALUES (21, 55.00, 21, 16);
INSERT INTO LINE_ITEM VALUES (22, 55.00, 22, 16);
INSERT INTO LINE_ITEM VALUES (23, 80.00, 23, 17);
INSERT INTO LINE_ITEM VALUES (24, 90.00, 24, 17);
INSERT INTO LINE_ITEM VALUES (25, 90.00, 25, 18);
INSERT INTO LINE_ITEM VALUES (26, 55.00, 26, 19);
INSERT INTO LINE_ITEM VALUES (27, 55.00, 27, 19);
INSERT INTO LINE_ITEM VALUES (28, 90.00, 28, 19);
INSERT INTO LINE_ITEM VALUES (29, 80.00, 29, 20);
INSERT INTO LINE_ITEM VALUES (30, 75.00, 30, 21);
INSERT INTO LINE_ITEM VALUES (31, 75.00, 31, 21);
INSERT INTO LINE_ITEM VALUES (32, 55.00, 32, 22);
INSERT INTO LINE_ITEM VALUES (33, 55.00, 33, 23);
INSERT INTO LINE_ITEM VALUES (34, 90.00, 34, 23);
INSERT INTO LINE_ITEM VALUES (35, 75.00, 35, 24);
INSERT INTO LINE_ITEM VALUES (36, 75.00, 36, 24);
INSERT INTO LINE_ITEM VALUES (37, 90.00, 37, 25);
INSERT INTO LINE_ITEM VALUES (38, 55.00, 38, 25);
INSERT INTO LINE_ITEM VALUES (39, 90.00, 39, 26);
INSERT INTO LINE_ITEM VALUES (40, 80.00, 40, 27);
INSERT INTO LINE_ITEM VALUES (41, 55.00, 41, 28);
INSERT INTO LINE_ITEM VALUES (42, 90.00, 42, 28);
INSERT INTO LINE_ITEM VALUES (43, 55.00, 43, 29);
INSERT INTO LINE_ITEM VALUES (44, 55.00, 44, 29);
INSERT INTO LINE_ITEM VALUES (45, 90.00, 45, 30);
INSERT INTO LINE_ITEM VALUES (46, 90.00, 46, 30);
INSERT INTO LINE_ITEM VALUES (47, 75.00, 47, 30);
INSERT INTO LINE_ITEM VALUES (48, 55.00, 48, 31);
INSERT INTO LINE_ITEM VALUES (49, 75.00, 49, 32);
INSERT INTO LINE_ITEM VALUES (50, 55.00, 50, 32);

COMMIT;
