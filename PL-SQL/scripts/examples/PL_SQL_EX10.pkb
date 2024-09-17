-- EXERCICIO DE MANIPULAÇÃO DE NÚMEROS - C

DECLARE
 valor NUMBER(2):= 10;
 multiplicado NUMBER(3,2):= 3.25;
BEGIN
 DBMS_OUTPUT.PUT_LINE('valor: ' || valor || ' multiplicado: ' || (valor * multiplicado));
END;