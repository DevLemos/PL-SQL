-- 1 - Lança exceção por divisão por zero 
DECLARE
  resultado NUMBER;
BEGIN
  -- Alguma operação que pode causar uma exceção
  resultado := 10 / 0;
EXCEPTION
  WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE('Divisão por zero detectada.');
END;