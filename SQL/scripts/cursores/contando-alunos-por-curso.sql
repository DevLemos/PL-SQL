-- Contar Alunos por Curso com Média Acima de 7.0
DECLARE
BEGIN
  FOR r IN (SELECT CURSO, AVG(NOTA) AS MEDIA FROM ALUNO GROUP BY CURSO HAVING AVG(NOTA) > 7.0) LOOP
    DBMS_OUTPUT.PUT_LINE('Curso: ' || r.CURSO);
    DBMS_OUTPUT.PUT_LINE('Média de Notas: ' || r.MEDIA);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;