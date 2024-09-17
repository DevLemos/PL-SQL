-- Criação de um tipo VARRAY no nível de esquema
CREATE OR REPLACE TYPE VarrayExemplo AS VARRAY(3) OF VARCHAR2(50);
/
-- Declaração de uma variável do tipo VARRAY
DECLARE
  varray_nomes VarrayExemplo;
BEGIN
  -- Inicialização da coleção
  varray_nomes := VarrayExemplo('Alice', 'Bob', 'Charlie');

  -- Acesso aos elementos da coleção
  DBMS_OUTPUT.PUT_LINE('Primeiro Nome: ' || varray_nomes(1));
  DBMS_OUTPUT.PUT_LINE('Segundo Nome: ' || varray_nomes(2));
  DBMS_OUTPUT.PUT_LINE('Terceiro Nome: ' || varray_nomes(3));
END;