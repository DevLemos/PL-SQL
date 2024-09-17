DECLARE
  CURSOR c_alunos IS
    SELECT NOME, CURSO FROM ALUNO;
  
  	nome_aluno ALUNO.NOME%TYPE;
  	curso_aluno ALUNO.CURSO%TYPE;
BEGIN
  OPEN c_alunos;
  
  LOOP
    FETCH c_alunos INTO nome_aluno, curso_aluno;
    EXIT WHEN c_alunos%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('Nome do Aluno: ' || nome_aluno);
    DBMS_OUTPUT.PUT_LINE('Curso: ' || curso_aluno);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
  
  CLOSE c_alunos;
END;