-- EXEMPLO DE WHILE

DECLARE 
	contador number := 1;
BEGIN
	WHILE contador <= 5 LOOP
		contador := contador + 1;
        DBMS_OUTPUT.PUT_LINE(contador);
    END LOOP;
END;