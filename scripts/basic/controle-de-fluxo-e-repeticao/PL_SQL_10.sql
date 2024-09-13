-- EXEMPLO DE LAÇO DE REPETIÇÃO PL/SQL
DECLARE
    contador NUMBER := 1;
BEGIN
    WHILE contador <= 10 LOOP
        IF contador MOD 2 = 0 THEN
            contador:= contador + 1;
            CONTINUE; -- Pula números pares
        END IF;

        DBMS_OUTPUT.PUT_LINE('Número ímpar: ' || contador);
        contador:= contador + 1;
    END LOOP;
END;