-- Exemplos de cursores implicítos
-- Exibir todos os campos com alunos
DECLARE
BEGIN
  FOR r IN (SELECT ID, RA, NOME, CURSO FROM ALUNO) LOOP
    DBMS_OUTPUT.PUT_LINE('ID: ' || r.ID);
    DBMS_OUTPUT.PUT_LINE('RA: ' || r.RA);
    DBMS_OUTPUT.PUT_LINE('Nome: ' || r.NOME);
    DBMS_OUTPUT.PUT_LINE('Curso: ' || r.CURSO);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;