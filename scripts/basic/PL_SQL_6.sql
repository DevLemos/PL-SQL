--EXEMPLO DE CONTROLE DE FLUXO PL/SQL

DECLARE
   idade NUMBER := 22;
BEGIN  
    IF idade >= 18 THEN
    	DBMS_OUTPUT.PUT_LINE('Você é maior de idade.');
	ELSE
   		DBMS_OUTPUT.PUT_LINE('Você é menor de idade.');
	END IF;
EXCEPTION
    WHEN OTHERS THEN
   		DBMS_OUTPUT.PUT_LINE('Ocorreu um erro: ' || SQLERRM);
END;