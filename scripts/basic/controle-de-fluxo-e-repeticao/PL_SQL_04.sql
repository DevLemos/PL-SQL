-- EXEMPLO CONDICIONAL

DECLARE
    nota NUMBER := 85;
BEGIN
    IF nota >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Excelente.');
    ELSIF nota >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('Bom.');
    ELSIF nota >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Regular.');
    ELSIF nota >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Precisa melhorar.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Reprovado.');
    END IF;
END;