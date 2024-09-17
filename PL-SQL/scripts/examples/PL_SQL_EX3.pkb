--EXERCICIO 3 PL/SQL

DECLARE
    nPI NUMBER(9, 8) := 3.14159265;
	nRaio NUMBER(10,5);
	nResultado NUMBER(5);
BEGIN  
    nRaio := 10;
	nResultado := nPI * nRaio * nRaio;
	DBMS_OUTPUT.PUT_LINE('A área é de: ' || nResultado);
END;