DECLARE
  -- Declaração e inicialização de uma variável do tipo VARRAY
  varray_nomes VarrayExemplo := VarrayExemplo('Maria', 'João', 'Tales');
BEGIN
  -- Inserção de dados na tabela
  INSERT INTO TabelaNomes (ID, Nomes) VALUES (1, varray_nomes);

  -- Recuperação dos dados da tabela (Cursos implícito)
  FOR rec IN (SELECT * FROM TabelaNomes) LOOP
    -- Loop FOR para pegar a lista da coluna e exibir
    FOR i IN rec.Nomes.FIRST..rec.Nomes.LAST LOOP
      DBMS_OUTPUT.PUT_LINE('ID: ' || rec.ID || ', Nome: ' || rec.Nomes(i));
    END LOOP;
  END LOOP;
END;