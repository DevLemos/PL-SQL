-- Faz somatória de todas as notas dos aluno
SELECT SUM(NOTA) AS TOTAL_NOTAS FROM ALUNO;
-- Seleciona o maior valor da coluna Nota
SELECT MAX(NOTA) AS NOTA_MAXIMA FROM ALUNO;
-- Retorna a média da coluna Nota
SELECT AVG(Nota) AS Nota_Media FROM ALUNO;
-- Retorno a média da coluna Nota dos alunos que curso Engenharia
SELECT AVG(Nota) AS Nota_Media_Engenharia FROM ALUNO WHERE CURSO LIKE 'Engenharia%';
-- Calcula o número total de alunos por período:
SELECT PERIODO, COUNT(*) AS Total_Alunos FROM ALUNO GROUP BY PERIODO;
-- Retorna uma lista com
SELECT GENERO, COUNT(*) AS Qtd_Aluno_Por_Genero FROM ALUNO GROUP BY GENERO ORDER BY
Qtd_Aluno_Por_Genero DESC;
--Encontra o gênero mais frequente entre os alunos:
SELECT NOTA, COUNT(*) AS Frequencia FROM ALUNO GROUP BY NOTA ORDER BY Frequencia DESC;
-- Encontra o gênero mais frequente e traz somente a primeira linha (Usada em data Science)
SELECT GENERO, COUNT(*) AS Frequencia FROM ALUNO GROUP BY GENERO ORDER BY Frequencia DESC FETCH
FIRST ROW ONLY;
--Calcular a média das notas dos alunos do curso de Ciência da Computação que têm mais de 5 faltas:
SELECT AVG(NOTA) AS Media_Notas_CC FROM ALUNO WHERE CURSO = 'Ciência da Computação' AND FALTAS > 5;

--Encontra a menor idade entre os alunos do gênero Feminino que cursam qualquer curso que inicia com Eng:
SELECT MIN(NOTA) AS Menor_Nota_Feminina_Engenharia FROM ALUNO WHERE CURSO LIKE 'Eng%' AND
GENERO = 'Feminino';
-- Calcula soma total das faltas dos alunos por períodos
SELECT PERIODO, SUM(FALTAS) AS Total_Faltas FROM ALUNO GROUP BY PERIODO;
-- Faz o agrupamento por curso e apresenta a nota média por curso
SELECT CURSO, ROUND(AVG(NOTA),2) AS Media_Nota FROM ALUNO WHERE (CURSO = 'Ciência da Computação' OR CURSO LIKE '%Enge%') AND PERIODO = 'Noturno' GROUP BY CURSO;
-- Retorna uma lista de cursos juntamente com a média das notas dos alunos em cada curso, desde que a média seja maior que 7.0
SELECT CURSO, Round(AVG(NOTA), 2) AS Media_Notas FROM ALUNO GROUP BY CURSO HAVING AVG(NOTA) > 7.0;
-- Retorna uma lista de Períodos juntamente com a soma de total de linhas, desde que a contagem de cada período seja maior que 10
SELECT PERIODO, COUNT(*) AS Total_Alunos FROM ALUNO GROUP BY PERIODO HAVING COUNT(*) > 10;
-- Retorna uma lista de cursos juntamente com a média de total de linhas agrupada por gênero e filtrada por pela média menor do que 6.0
SELECT CURSO, AVG(NOTA) AS Media_Notas FROM ALUNO GROUP BY GENERO HAVING AVG(NOTA) < 6.0;