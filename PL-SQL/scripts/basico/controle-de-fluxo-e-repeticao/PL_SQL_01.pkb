-- EXEMPLO CONDICIONAL

DECLARE
    nota NUMBER := 85;
BEGIN
    IF nota >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Aluno aprovado!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Aluno reprovado.');
    END IF;
END;