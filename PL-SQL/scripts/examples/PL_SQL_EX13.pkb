-- CONVERSÃO DE TEMPERATURA

DECLARE
 celsius NUMBER(4);
 fahrenheit NUMBER(4);
 quilometros NUMBER(2):= 80;
 milhas NUMBER;
 metros NUMBER(4):= 50;
 pes NUMBER(4):= 10;
 
BEGIN
 fahrenheit:= (9 * 50 + 160 / 5);
 celsius:= (fahrenheit-32) * (5/9);
 milhas:= quilometros * 0.621371;
 quilometros:= milhas * 1.60934;
 metros:= pes * 0.3048; 
 pes:= metros * 3.28084;

 DBMS_OUTPUT.PUT_LINE('Temperatura em Fahrenheit: ' || fahrenheit);
 DBMS_OUTPUT.PUT_LINE('Calculo em celsius: ' || celsius);
 DBMS_OUTPUT.PUT_LINE('Quilometros para milhas: ' || quilometros);
 DBMS_OUTPUT.PUT_LINE('Milhas para quilometros: ' || milhas);
 DBMS_OUTPUT.PUT_LINE('Pes para metros: ' || metros);
 DBMS_OUTPUT.PUT_LINE('Metros em pés: ' || pes);
END;