-- EXEMPLO DE LAÇO DE REPETIÇÃO PL/SQL

DECLARE
    contador NUMBER := 1;
BEGIN
    WHILE contador <= 5 LOOP
    DBMS_OUTPUT.PUT_LINE('Iteração ' || contador);
    contador := contador + 1;
    END LOOP;
END;