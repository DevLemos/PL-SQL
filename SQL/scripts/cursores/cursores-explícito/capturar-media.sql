-- Capturar a média
DECLARE
  CURSOR c_alunos IS
    SELECT NOTA FROM ALUNO;
  
  nota_aluno ALUNO.NOTA%TYPE;
  total_notas NUMBER := 0;
  contador NUMBER := 0;
  media NUMBER;
BEGIN
  OPEN c_alunos;
  
  LOOP
    FETCH c_alunos INTO nota_aluno;
    EXIT WHEN c_alunos%NOTFOUND;
    
    total_notas := total_notas + nota_aluno;
    contador := contador + 1;
  END LOOP;
  
  CLOSE c_alunos;
  
  IF contador > 0 THEN
    media := total_notas / contador;
    DBMS_OUTPUT.PUT_LINE('Média das Notas: ' || media);
  ELSE
    DBMS_OUTPUT.PUT_LINE('Nenhum aluno com nota registrada.');
  END IF;
END;