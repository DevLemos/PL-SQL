DECLARE
  varray_nomes VarrayExemplo;
BEGIN
  varray_nomes := VarrayExemplo('João', 'Maria', 'Juca');

  -- Obtém o número de elementos na coleção
  DBMS_OUTPUT.PUT_LINE('Número de Nomes: ' || varray_nomes.COUNT);

  -- Obtém o tamanho máximo da coleção
  DBMS_OUTPUT.PUT_LINE('Tamanho Máximo: ' || varray_nomes.LIMIT);
END;