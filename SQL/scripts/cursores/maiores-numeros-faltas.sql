-- Alunos com Maior Número de Faltas
DECLARE
  max_faltas NUMBER;
BEGIN
  SELECT MAX(FALTAS) INTO max_faltas FROM ALUNO;
  
  FOR r IN (SELECT NOME, FALTAS FROM ALUNO WHERE FALTAS = max_faltas) LOOP
    DBMS_OUTPUT.PUT_LINE('Aluno: ' || r.NOME);
    DBMS_OUTPUT.PUT_LINE('Número de Faltas: ' || r.FALTAS);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;