--Stored procedure to update note field in existing tutoring session
CREATE OR REPLACE PROCEDURE sp_updateNote(p_session_id IN tut_session.session_id%TYPE,
                                      in_session_notes IN tut_session.session_notes%TYPE)
AS

BEGIN

  UPDATE tut_session
  SET session_notes = in_session_notes
  WHERE session_id = p_session_id;

END;
