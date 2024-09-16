-- EXEMPLO DE CASE

DECLARE 
    dia_semana NUMBER(1) := 9;
BEGIN
	case dia_semana
    	WHEN 1 THEN
    		DBMS_OUTPUT.PUT_LINE('Domingo');
		WHEN 2 THEN
    		DBMS_OUTPUT.PUT_LINE('Segunda');
		WHEN 3 THEN
    		DBMS_OUTPUT.PUT_LINE('terça');
		WHEN 4 THEN
    		DBMS_OUTPUT.PUT_LINE('Quarta');
		WHEN 5 THEN
    		DBMS_OUTPUT.PUT_LINE('Quinta');
		WHEN 6 THEN
    		DBMS_OUTPUT.PUT_LINE('Sexta');
		WHEN 7 THEN
    		DBMS_OUTPUT.PUT_LINE('Sabado');
		ELSE
            DBMS_OUTPUT.PUT_LINE('Dia inválido');
	END CASE;
END;