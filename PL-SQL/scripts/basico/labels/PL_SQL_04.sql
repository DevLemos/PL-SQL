DECLARE
	nContador NUMBER := 1;
BEGIN
	<<LOOP_PRINCIPAL>>
	FOR I IN 1..5 LOOP 
    	DBMS_OUTPUT.PUT_LINE('Iteração: ' || i);
		IF i = 3 THEN 
            GOTO LOOP_INTERROMPIDO; 
		END IF; 
	END LOOP;

	<<LOOP_INTERROMPIDO>>
	DBMS_OUTPUT.PUT_LINE('Loop interrompido.');
	DBMS_OUTPUT.PUT_LINE('Fim do programa.');
END;