-- Inserindo dados usando um bloco anônimo
DECLARE
	V_RA CHAR(9) := '777888999';
	V_NOME VARCHAR2(50) := 'Roberta Juliana';
BEGIN
	INSERT INTO ALUNO (RA,NOME) VALUES (V_RA,V_NOME);
END;