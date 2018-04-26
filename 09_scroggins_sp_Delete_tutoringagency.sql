--Stored procedure to delete line item from line_item table
CREATE OR REPLACE PROCEDURE deleteLineItem(p_line_id IN line_item.line_id%TYPE)
IS
BEGIN

  DELETE FROM line_item
  WHERE line_id = p_line_id;
  
END;
/