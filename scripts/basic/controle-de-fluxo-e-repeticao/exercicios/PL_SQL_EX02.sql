-- EXEMPLO DE CASE

DECLARE 
	nota number(3) := 85;
BEGIN
	CASE 
    	WHEN nota >= 90 THEN
    		DBMS_OUTPUT.PUT_LINE('A');
    	WHEN nota >= 80 THEN
    		DBMS_OUTPUT.PUT_LINE('B');
    	WHEN nota >= 70 THEN
    		DBMS_OUTPUT.PUT_LINE('C');
    	WHEN nota >= 60 THEN
    		DBMS_OUTPUT.PUT_LINE('D');
		WHEN nota < 60 THEN
    		DBMS_OUTPUT.PUT_LINE('E');
		ELSE
    		DBMS_OUTPUT.PUT_LINE('Valor inválido');
	END CASE;    
END;