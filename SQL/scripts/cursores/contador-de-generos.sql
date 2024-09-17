-- Contador de generos
DECLARE
  contador_masculino NUMBER := 0;
  contador_feminino NUMBER := 0;
  contador_outros NUMBER := 0;
BEGIN
  FOR r IN (SELECT GENERO FROM ALUNO) LOOP
    CASE r.GENERO
      WHEN 'Masculino' THEN
        contador_masculino := contador_masculino + 1;
      WHEN 'Feminino' THEN
        contador_feminino := contador_feminino + 1;
      ELSE
        contador_outros := contador_outros + 1;
    END CASE;
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE('Alunos Masculinos: ' || contador_masculino);
  DBMS_OUTPUT.PUT_LINE('Alunos Femininos: ' || contador_feminino);
  DBMS_OUTPUT.PUT_LINE('Outros Gêneros: ' || contador_outros);
END;