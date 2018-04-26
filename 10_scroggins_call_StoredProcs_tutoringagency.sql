--Execute Insert Stored Procedure

EXECUTE sp_insertPaymentMethod(6, 'Credit Card', 'Discover');

SELECT * FROM pay_method;

--Execute Select Stored Procedure NOTE: View->Dbms Ouput->'+' to see output
DECLARE
  o_note tut_session.session_notes%TYPE;
BEGIN
  
  sp_getNote(3,o_note);
  
  DBMS_OUTPUT.PUT_LINE('Session Note : ' || o_note);

END;
/

--Execute Update Stored Procedure
EXECUTE sp_updateNote(6, 'Complete reading log by Thursday');

SELECT session_notes FROM tut_session WHERE session_id = 6;

--Execute Delete Stored Procedure

EXECUTE deleteLineItem(1);

SELECT line_id FROM line_item;
