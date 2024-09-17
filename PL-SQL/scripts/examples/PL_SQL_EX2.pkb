--EXERCICIO 2 PL/SQL

DECLARE
    vNome VARCHAR(50);
	cSexo CHAR(1);
BEGIN  
    vNome := 'Kauan Lemos';
	cSexo := 'M';
	DBMS_OUTPUT.PUT_LINE('Meu nome é: ' || vNome ||	' - Sexo: ' || cSexo);
END;