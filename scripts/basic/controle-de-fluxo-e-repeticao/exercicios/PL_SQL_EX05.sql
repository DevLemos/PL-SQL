-- EXEMPLO GOTO E ETIQUETA

DECLARE 
	contador NUMBER := 0;
BEGIN
	<<inicio>>
	IF contador <= 10 THEN
	   contador := contador + 1;
	   GOTO inicio;	
	END IF;
END;