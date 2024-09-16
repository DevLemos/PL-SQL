-- EXERCICIO 6 CALCULAR VOLUME DE UM CILINDRO 

DECLARE
 	raio NUMBER(2):= 30;
 	altura NUMBER(3,2):= 2.20;
 	volume NUMBER(5);
BEGIN
	volume:= 3.1415 * (raio * raio) * altura;
 	DBMS_OUTPUT.PUT_LINE(volume);
END;