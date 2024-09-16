-- EXERCICIO 4 VELOCIDADE PROJETIL LANÇADO METRO POR SEGUNDO 

DECLARE
    distancia NUMBER(2):= 10;
    tempoSegundos NUMBER(2) := 30;
    velocidade NUMBER(3);
BEGIN
    velocidade:= (distancia * 1000) / (tempoSegundos * 60);
    DBMS_OUTPUT.PUT_LINE(velocidade);
END;
/