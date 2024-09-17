DECLARE
  CURSOR c_alunos IS
    SELECT RA, NOTA
    FROM ALUNO;
BEGIN
  FOR r IN c_alunos LOOP
    BEGIN
      -- Alguma operação que pode causar uma exceção
      IF r.NOTA < 6 THEN
        RAISE VALUE_ERROR; -- Exceção personalizada para nota inválida
      END IF;
      
      DBMS_OUTPUT.PUT_LINE('RA: ' || r.RA || ', Nota: ' || r.NOTA);
    EXCEPTION
      WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Nota inválida encontrada.');
    END;
  END LOOP;
END;