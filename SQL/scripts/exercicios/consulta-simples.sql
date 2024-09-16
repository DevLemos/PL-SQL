-- Consulta de todos as linhas e colunas da tabela
SELECT * FROM ALUNO;
-- Consulta colunas específica (OBS: certifique-se de adicionar as aspas simples na coluna média e total faltas)
SELECT RA, NOME, NOTA, ‘MÉDIA’, ‘TOTAL FALTAS’ FROM ALUNO;
-- Captura a quantidade de linhas não nulas na tabela
SELECT COUNT(ID) AS Qtde_alunos FROM ALUNO;
-- Captura a média das notas dos alunos
SELECT AVG(nota) AS nota FROM Aluno;
-- Usa a função ROUND para arredondar para 2 casas decimais
SELECT ROUND(AVG(nota), 2) AS nota FROM Aluno;
-- Seleciona todas as colunas e ordena pela coluna nota de maneira ascendente
SELECT * FROM Aluno ORDER BY Nota;
-- Seleciona todas as colunas e ordena pela coluna nota de maneira ascendente
SELECT * FROM Aluno ORDER BY Nota DESC;
-- Seleciona o nome dos alunos com tamanho maior que 5 caracteres
SELECT Nome FROM Aluno WHERE LENGTH(Nome) > 5;
-- Traz todos os nome em maiúsculo e renomeia a coluna nome
SELECT UPPER(Nome) AS Nome_Maiúsculas FROM Aluno;
-- Retorna a quantidade de alunos no curso Engenharia
SELECT COUNT(*) AS ALUNOS_ENGENHARIA FROM ALUNO WHERE CURSO LIKE 'Engenharia%';
-- Retorno todos os alunos que iniciam com a letra A
SELECT NOME FROM ALUNO WHERE NOME LIKE 'A%';
-- Retorna todos os nomes dos alunos por ordem alfabética
SELECT NOME FROM ALUNO ORDER BY NOME DESC;
-- Retorna todas as linhas da tabela curso onde o curso é ciência da computação e nota abaixo de 8
SELECT * FROM ALUNO WHERE CURSO = 'Ciência da Computação' AND NOTA < 8.0;
-- Retorna todos as linhas onde nome é nulo
SELECT * FROM ALUNO WHERE NOME IS NULL;
-- Seleciona dados onde o curso é Engenharia da computação ou ciência da computação e nota maior ou igual a 7
SELECT * FROM ALUNO WHERE CURSO IN ('Engenharia da Computação', 'Ciência da Computação') AND NOTA >= 7.0;