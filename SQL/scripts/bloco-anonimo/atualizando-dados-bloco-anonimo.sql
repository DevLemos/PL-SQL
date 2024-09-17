-- Atualizando dados com blocos anônimos
DECLARE
	V_RA CHAR(9) := '111222333';
	V_NOME VARCHAR2(50) := 'Antonio Alvares';
BEGIN
	UPDATE ALUNO SET NOME = V_NOME WHERE RA = V_RA;
END;