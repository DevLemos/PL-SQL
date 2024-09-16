-- EXEMPLO CONDICIONAL

DECLARE
    valor_compra NUMBER := 1200;
    desconto NUMBER;
BEGIN
    IF valor_compra >= 1000 THEN
        desconto := valor_compra * 0.1;
    ELSIF valor_compra >= 500 THEN
        desconto := valor_compra * 0.05;
    ELSE
        desconto := 0;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Desconto: ' || desconto);
    DBMS_OUTPUT.PUT_LINE('Total a pagar: ' || (valor_compra - desconto));
END;