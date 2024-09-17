-- EXEMPLO DE LAÇO DE REPETIÇÃO PL/SQL

DECLARE
    contador NUMBER := 1;
BEGIN
    WHILE TRUE LOOP
        IF contador > 100 THEN
            DBMS_OUTPUT.PUT_LINE('Primeiro número maior que 100: ' || contador);
            EXIT; -- Sai do loop quando encontrar o número
        END IF;

        contador:= contador + 1;
    END LOOP;
END;