DECLARE
  varray_nomes VarrayExemplo;
BEGIN
  varray_nomes := VarrayExemplo('João', 'Maria');

  -- Loop FOR para percorrer a coleção
  FOR i IN varray_nomes.FIRST..varray_nomes.LAST LOOP
    DBMS_OUTPUT.PUT_LINE('Nome: ' || varray_nomes(i));
  END LOOP;
END;