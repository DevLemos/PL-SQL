--EXEMPLO DE ESTRUTURA DE BLOCO PL/SQL

DECLARE
    nome VARCHAR2(50);
BEGIN  
    nome := 'Kauan';
    DBMS_OUTPUT.PUT_LINE('Olá, ' || nome || '!');
END;