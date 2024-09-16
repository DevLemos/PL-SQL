-- EXERCICIO DE MANIPULAÇÃO DE NÚMEROS - E

DECLARE
 valor1 NUMBER(2):= 10;
 valor2 NUMBER(2):= 20;
 soma NUMBER(3);
 subtração NUMBER(3);
 multiplicação NUMBER(3);
 divisao NUMBER(3);
BEGIN
 soma := valor1 + valor2;
 subtração := valor1 - valor2;
 multiplicação := valor1 * valor2;
 divisao := valor1 / valor2;
 
 DBMS_OUTPUT.PUT_LINE('Primeiro valor: ' || valor1 || ' Segundo valor: ' || valor2 || ' soma: ' || soma || ' subtração: ' || subtração || ' multiplicação: ' || multiplicação || ' divisão: ' || divisao);
END;