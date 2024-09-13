-- EXEMPLO DE LAÇO DE REPETIÇÃO PL/SQL

DECLARE
    contador NUMBER := 1;
BEGIN
    WHILE contador <= 5 LOOP
    DBMS_OUTPUT.PUT_LINE('Contador: ' || contador);
    contador:= contador + 1;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro:'|| SQLERRM);
END;