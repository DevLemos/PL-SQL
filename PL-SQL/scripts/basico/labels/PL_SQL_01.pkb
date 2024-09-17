-- EXEMPLO LABELS

DECLARE
    contador NUMBER := 1;
BEGIN
    <<INICIO>>
    IF contador <= 5 THEN 
        DBMS_OUTPUT.PUT_LINE('Contador: ' || contador);
        contador:= contador + 1;
        GOTO INICIO;
    END IF;
END;