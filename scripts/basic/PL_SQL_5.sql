--EXEMPLO DE TIPOS E VARIÁVEIS PL/SQL

DECLARE
   nome VARCHAR2(50);
   idade NUMBER(3);
   altura NUMBER(3,2);
BEGIN  
  	nome := 'Kauan';
   	idade := 22;
   	altura := 1.85;
	DBMS_OUTPUT.PUT_LINE('Olá, Me chamo ' || nome || '!');
   	DBMS_OUTPUT.PUT_LINE('tenho, ' || idade || ' anos de idade');
   	DBMS_OUTPUT.PUT_LINE('E ' || altura || ' de altura');
END;