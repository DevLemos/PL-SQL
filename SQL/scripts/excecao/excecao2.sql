DECLARE
  saldo_conta NUMBER := 1000;
  valor_saque NUMBER := 1500;
BEGIN
  IF valor_saque > saldo_conta THEN
    RAISE VALUE_ERROR; -- Exceção personalizada para saldo insuficiente
  ELSE
    saldo_conta := saldo_conta - valor_saque;
    DBMS_OUTPUT.PUT_LINE('Saque realizado com sucesso. Saldo restante: ' || saldo_conta);
  END IF;
EXCEPTION
  WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Erro: Saldo insuficiente para o saque.');
END;