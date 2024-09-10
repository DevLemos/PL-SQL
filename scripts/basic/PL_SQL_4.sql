--EXEMPLO DE TRATAMENTO DE EXCEÇÃO PL/SQL

DECLARE
    nome VARCHAR2(50);
BEGIN  
    nome := 'Kauan';
    DBMS_OUTPUT.PUT_LINE('Olá, ' || nome || '!');
EXCEPTION
   WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Ocorreu um erro:  ' || SQLERRM);
END;
/