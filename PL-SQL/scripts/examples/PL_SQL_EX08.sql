-- EXERCICIO DE MANIPULAÇÃO DE NUMEROS - A

DECLARE
 valor NUMBER(2):= 10;
 antecessor NUMBER(1):= 9;
 sucessor NUMBER(2):= 11;
BEGIN
 DBMS_OUTPUT.PUT_LINE('valor: ' || valor || ' antecessor: ' || antecessor || ' sucessor: ' || sucessor);
END;