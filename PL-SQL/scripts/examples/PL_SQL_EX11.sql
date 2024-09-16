-- EXERCICIO DE MANIPULAÇÃO DE NÚMEROS - D

DECLARE
 valor NUMBER(2):= 10;
 multiplicado NUMBER(3,2):= -1.36;
BEGIN
 DBMS_OUTPUT.PUT_LINE('valor: ' || valor || ' multiplicado: ' || (valor * multiplicado));
END;