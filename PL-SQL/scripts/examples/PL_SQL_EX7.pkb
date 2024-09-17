-- EXERCICIO 7 CALCULAR UMA CAIXA RETANGULAR
 
DECLARE
 	comprimento NUMBER(2):= 10;
 	largura NUMBER(2):= 4;
 	altura NUMBER(3,2):= 3.30;
 	volume NUMBER(5);
BEGIN
	volume:= comprimento * largura * altura;
 	DBMS_OUTPUT.PUT_LINE(volume);
END;
/