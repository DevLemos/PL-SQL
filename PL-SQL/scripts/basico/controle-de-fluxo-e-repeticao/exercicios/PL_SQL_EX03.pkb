-- EXEMPLO DE CASE

DECLARE 
	produto varchar(50) := 'celular';
BEGIN
    CASE produto
    	WHEN 'celular' THEN 
    		DBMS_OUTPUT.PUT_LINE('Eletrônico');
		WHEN 'tv' THEN 
    		DBMS_OUTPUT.PUT_LINE('Eletrônico');
		WHEN 'caderno' THEN 
    		DBMS_OUTPUT.PUT_LINE('Escolar');
        WHEN 'lapis' THEN 
            DBMS_OUTPUT.PUT_LINE('Escolar');
        WHEN 'computador' THEN 
            DBMS_OUTPUT.PUT_LINE('informática');
		ELSE
            DBMS_OUTPUT.PUT_LINE('Produto incorreto');
    END CASE;
END;