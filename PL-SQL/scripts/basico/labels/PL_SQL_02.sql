DECLARE
	nContador NUMBER := 1;
BEGIN
	<<INICIO>> 
    DBMS_OUTPUT.PUT_LINE('Começando o loop.');

	IF nContador = 3 THEN
		GOTO FIM;
	END IF;

	DBMS_OUTPUT.PUT_LINE('Continuando o loop.'); 
	DBMS_OUTPUT.PUT_LINE('Voltando para o inicio');
	nContador:= nContador + 1;
	GOTO INICIO;

	<<FIM>>
	DBMS_OUTPUT.PUT_LINE('Fim do programa.');
END;