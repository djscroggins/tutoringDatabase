/*Script to populate and refresh in a single transaction lists of Tutors who 
have been scheduled for sessions and those who have not.*/

BEGIN                    
                    
  
  /*  Sets flag to 'y' for tutors whose last tutoring date is on or after current
  sysdate i.e. those who are currently scheduled
  Excludes lead tutors, who are not scheduled for tutoring sessions*/
  UPDATE employee E
  SET assigned_flag = 'y'
  WHERE E.EMPLOYEE_ID IN (SELECT TS.employee_id 
                          FROM tut_session TS
                          GROUP BY TS.employee_id
                          HAVING MAX(session_date) >= sysdate)
                      AND E.tutor_flag = 'y';   
 
  /*Sets flag to 'n' for tutors whose last tutoring date is before current
  sysdate i.e. those who are NOT currently scheduled
  Excludes lead tutors, who are not scheduled for tutoring sessions*/                  
  UPDATE employee E
  SET assigned_flag = 'n'
  WHERE E.employee_id NOT IN (SELECT TS.employee_id
                              FROM tut_session TS
                              GROUP BY TS.employee_id
                              HAVING MAX(session_date) >= sysdate)
                      AND E.tutor_flag = 'y'; 
                      
  /*  Inserts to populate asssigned and unassigned tables based on current flag 
  values, end_date IS NULL ensures only current tutors are inserted, NOT IN clause
  ensures duplicate keys aren't inserted*/
  INSERT INTO assigned_tutors 
  SELECT employee_id FROM employee E
  WHERE E.assigned_flag='y' AND E.end_date IS NULL AND E.employee_id NOT IN (SELECT AT.employee_id
                                                      FROM assigned_tutors AT);

  INSERT INTO unassigned_tutors 
  SELECT employee_id FROM employee E
  WHERE assigned_flag='n' AND E.end_date IS NULL AND E.employee_id NOT IN (SELECT UT.employee_id
                                                    FROM unassigned_tutors UT);

  /*Deletes tutors who were previously in unassigned table but have
  now been scheduled for tutoring sessions and vice versa*/
  DELETE FROM assigned_tutors AT 
  WHERE AT.employee_id NOT IN (SELECT TS.employee_id
                                FROM tut_session TS
                                GROUP BY TS.employee_id
                                HAVING MAX(session_date) >= sysdate);
                                                        
  DELETE FROM unassigned_tutors UT 
  WHERE UT.employee_id IN (SELECT TS.employee_id
                            FROM tut_session TS
                            GROUP BY TS.employee_id
                            HAVING MAX(session_date) >= sysdate);

  COMMIT;

END;
  