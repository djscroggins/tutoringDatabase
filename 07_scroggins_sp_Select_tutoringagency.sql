--Stored procedure to retrieve session notes for specific session
CREATE OR REPLACE PROCEDURE sp_getNote(p_session_id IN tut_session.session_id%TYPE,
                                      o_note OUT tut_session.session_notes%TYPE)

IS
BEGIN

  SELECT session_notes
  INTO o_note
  FROM tut_session WHERE session_id = p_session_id;

END;
/