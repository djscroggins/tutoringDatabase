--Trigger to auto-fill total cost field when tutoring session is inserted
CREATE OR REPLACE TRIGGER CalculateSessionRate
BEFORE INSERT ON tut_session
FOR EACH ROW

DECLARE 
varLength NUMBER;
varRate NUMBER;

BEGIN

  --Extracts length of inserted session in hour and half hour increments
  varLength := (extract(HOUR FROM :NEW.end_time) - extract(HOUR FROM :NEW.start_time)) +
        ((extract(MINUTE FROM :NEW.end_time) - extract(MINUTE FROM :NEW.start_time))/60);
  
  /*Selects appropriate subject rate from Subject table based on subject 
  of inserted session*/
  SELECT subject_rate INTO varRate
  FROM Subject S
  WHERE S.Subject_id = :NEW.subject_id;
  
  --Sets session cost of new insert to the length of session*rate of session
  :NEW.session_cost := varLength*varRate; 
  
  
END;

