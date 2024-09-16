DECLARE
    nContador number := 1;
BEGIN
    <<INICIO>>

    IF nContador <= 15 THEN
        IF nContador MOD 3 = 0 THEN -- Exibe somente múltiplos de 3
            DBMS_OUTPUT.PUT_LINE(nContador);
            nContador:= nContador + 1;
            GOTO INICIO;
        END IF;

        nContador:= nContador + 1;
        GOTO INICIO;
    END IF;
END;