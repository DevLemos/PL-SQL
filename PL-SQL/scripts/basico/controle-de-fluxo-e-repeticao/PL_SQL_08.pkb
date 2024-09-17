-- EXEMPLO DE LAÇO DE REPETIÇÃO PL/SQL

DECLARE
    total NUMBER := 0;
BEGIN
    FOR i IN 1..10 LOOP  
    total:= total + i;
    END LOOP; 
    
    DBMS_OUTPUT.PUT_LINE('Soma total: '|| total);
END;