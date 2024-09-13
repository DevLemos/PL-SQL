-- EXEMPLO CONDICIONAL

DECLARE
    numero NUMBER := 7;
BEGIN
    IF numero MOD 2 = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Número é par.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Número é ímpar.');
    END IF;
END;
