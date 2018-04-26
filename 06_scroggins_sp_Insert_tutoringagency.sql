--Stored procedure to insert new payment method into pay_method table
CREATE OR REPLACE PROCEDURE sp_insertPaymentMethod(p_pay_id IN pay_method.pay_id%TYPE,
                                                p_pay_type IN pay_method.pay_type%TYPE,
                                                p_card_type IN pay_method.card_type%TYPE)
IS
BEGIN

INSERT INTO pay_method VALUES (p_pay_id, p_pay_type, p_card_type);

COMMIT;

END;
/

