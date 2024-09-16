--EXERCICIO 1 PL/SQL

DECLARE
    valorA NUMBER(3);
	valorB NUMBER(3);
	resultado NUMBER(4);
BEGIN  
    valorA := 15;
	valorB := 25;
	resultado := valorA + valorB;
	DBMS_OUTPUT.PUT_LINE('O resultado é: ' || resultado);
END;