-- EXEMPLO CONDICIONAL

DECLARE
    usuario VARCHAR2(20) := 'admin';
    senha VARCHAR2(20) := '12345';
BEGIN
    IF usuario = 'admin' AND senha = '12345' THEN
        DBMS_OUTPUT.PUT_LINE('Login bem-sucedido.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Login falhou.');
    END IF;
END;