-- Identifica e exibe os alunos cujas notas estão abaixo da média da turma
DECLARE
  media_turma FLOAT;
BEGIN
  SELECT AVG(NOTA) INTO media_turma FROM ALUNO;
  
  FOR r IN (SELECT NOME, NOTA FROM ALUNO WHERE NOTA < media_turma) LOOP
    DBMS_OUTPUT.PUT_LINE('Aluno: ' || r.NOME);
    DBMS_OUTPUT.PUT_LINE('Nota: ' || r.NOTA);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;