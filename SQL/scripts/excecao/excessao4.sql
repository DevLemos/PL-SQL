DECLARE
 	V_CONTA NUMBER(3);
	TURMA_CHEIA EXCEPTION;
BEGIN
	SELECT COUNT(RA) INTO V_CONTA FROM ALUNO;
		IF V_CONTA > 10 THEN RAISE TURMA_CHEIA;
 		ELSE 
    		INSERT INTO ALUNO (ID, RA, NOME, SOBRENOME, NOTA, FALTAS, CURSO, GENERO, PERIODO)VALUES(300, '71033266097', 'Alan', 'JAMES', 5, 2, 'Banco de dados', 'Masculino', 'Matutino');
 		END IF;
EXCEPTION
 WHEN TURMA_CHEIA THEN
  DBMS_OUTPUT.PUT_LINE('Não foi possível incluir: turma cheia');
END;