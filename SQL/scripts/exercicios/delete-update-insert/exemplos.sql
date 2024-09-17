-- Atualizar a nota de um aluno com base no seu ID
UPDATE ALUNO SET NOTA = 8.5 WHERE ID = 1;
-- Atualizar o curso de um aluno com base no seu RA
UPDATE ALUNO SET CURSO = 'Engenharia de Software' WHERE RA = 'ESCOLHA RA';
-- Aumentar o número de faltas de um aluno com base no seu nome:
UPDATE ALUNO SET FALTAS = FALTAS + 2 WHERE NOME = 'ESCOLHA NOME' AND SOBRENOME = 'ESCOLHA SOBRENOME';
-- Atualize a nota de todos os alunos com mais de 15 faltas para 0
UPDATE ALUNO SET Nota = 0 WHERE FALTAS > 15;
-- Inserindo um novo aluno na tabela alunos
INSERT INTO ALUNO (ID, RA, NOME, SOBRENOME, NOTA, FALTAS, CURSO, GENERO, PERIODO) VALUES (500,'20235003', 'Pedro', 'Santos', 6.2, 7, 'Ciências da Computação', 'Masculino', 'Noturno');
-- Deleta o aluno Pedro Santos da tabela
DELETE FROM ALUNO WHERE ID = 500;