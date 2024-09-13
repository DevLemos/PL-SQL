-- EXEMPLO CONDICIONAL

DECLARE
    dia_semana NUMBER := 5;
BEGIN
    IF dia_semana = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Domingo');
    ELSIF dia_semana = 2 THEN
        DBMS_OUTPUT.PUT_LINE('Segunda-feira');
    ELSIF dia_semana = 3 THEN
        DBMS_OUTPUT.PUT_LINE('Terça-feira');
    ELSIF dia_semana = 4 THEN
        DBMS_OUTPUT.PUT_LINE('Quarta-feira');
    ELSIF dia_semana = 5 THEN
        DBMS_OUTPUT.PUT_LINE('Quinta-feira');
    ELSIF dia_semana = 6 THEN
        DBMS_OUTPUT.PUT_LINE('Sexta-feira');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Sábado');
    END IF;
END;