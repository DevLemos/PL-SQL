-- Total de Alunos por Curso
DECLARE
  contador_curso NUMBER;
BEGIN
  FOR r IN (SELECT CURSO, COUNT(*) AS TOTAL FROM ALUNO GROUP BY CURSO) LOOP
    DBMS_OUTPUT.PUT_LINE('Curso: ' || r.CURSO);
    DBMS_OUTPUT.PUT_LINE('Total de Alunos: ' || r.TOTAL);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;