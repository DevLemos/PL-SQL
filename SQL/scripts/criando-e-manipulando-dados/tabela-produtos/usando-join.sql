-- Uso de Join
-- Lista todas as notas ficais com seus respectivos clientes
SELECT NF.numero_nf, NF.data_emissao, C.nome AS nome_cliente
FROM NOTA_FISCAL NF
JOIN TB_CLIENTES C ON NF.codigo_cliente = C.codigo;	

-- Uso do left Join exemplo (lista todos
SELECT C.nome AS nome_cliente, NF.numero_nf
FROM TB_CLIENTES C
LEFT JOIN NOTA_FISCAL NF ON C.codigo = NF.codigo_cliente;

--Right Join
SELECT C.nome AS nome_cliente, NF.numero_nf
FROM TB_CLIENTES C
RIGHT JOIN NOTA_FISCAL NF ON C.codigo = NF.codigo_cliente;

-- lista todos os clientes que não compraram alguma coisa
SELECT C.nome AS nome_cliente
FROM TB_CLIENTES C
LEFT JOIN NOTA_FISCAL NF ON C.codigo = NF.codigo_cliente
WHERE NF.numero_nf IS NULL;

-- Lista todos os produtos vendidos em cada nota fiscal
SELECT NF.numero_nf, P.nome, I.quantidade, P.preco_lista
FROM ITENS_NOTA_FISCAL I
JOIN NOTA_FISCAL NF ON I.numero_nf = NF.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo;

--Lista todos os produtos vendidos em uma nota fiscal específica
SELECT NF.numero_nf, NF.data_emissao, C.nome AS nome_cliente,
P.nome, I.quantidade, P.preco_lista, (I.quantidade * P.preco_lista) AS valor_total
FROM NOTA_FISCAL NF
JOIN TB_CLIENTES C ON NF.codigo_cliente = C.codigo
JOIN ITENS_NOTA_FISCAL I ON NF.numero_nf = I.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo
WHERE NF.numero_nf = 1;

--Lista produtos mais vendidos juntamente com a sua quantidade (Recupera somente os produtos vendidos ao menos uma vez)
SELECT P.nome, SUM(I.quantidade) AS quantidade_total_vendida
FROM TB_PRODUTOS P
LEFT JOIN ITENS_NOTA_FISCAL I ON P.codigo = I.codigo_produto
GROUP BY P.nome
HAVING SUM(I.quantidade) > 0
ORDER BY quantidade_total_vendida DESC;

--Lista os cliente que fizeram compras em um determinado período
SELECT DISTINCT C.nome AS nome_cliente
FROM TB_CLIENTES C
JOIN NOTA_FISCAL NF ON C.codigo = NF.codigo_cliente
WHERE NF.data_emissao
BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD');

-- Calcula o valor total de cada nota fiscal
SELECT NF.numero_nf, SUM(I.quantidade * P.preco_lista) AS valor_total
FROM ITENS_NOTA_FISCAL I
JOIN NOTA_FISCAL NF ON I.numero_nf = NF.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo
GROUP BY NF.numero_nf;

-- Lista as notas fiscais de um cliente específico
SELECT NF.numero_nf, NF.data_emissao, SUM(I.quantidade * P.preco_lista) AS valor_total
FROM NOTA_FISCAL NF
JOIN ITENS_NOTA_FISCAL I ON NF.numero_nf = I.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo
WHERE NF.codigo_cliente = 10
GROUP BY NF.numero_nf, NF.data_emissao;

-- Lista as notas fiscais e seus valores totais ordenados por valor decrescente
SELECT NF.numero_nf, SUM(I.quantidade * P.preco_lista) AS valor_total
FROM NOTA_FISCAL NF
JOIN ITENS_NOTA_FISCAL I ON NF.numero_nf = I.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo
GROUP BY NF.numero_nf
ORDER BY valor_total DESC;

--Lista todos os produtos que não foram vendidos
SELECT P.* FROM TB_PRODUTOS P
LEFT JOIN ITENS_NOTA_FISCAL I ON P.codigo = I.codigo_produto
WHERE I.numero_nf IS NULL;

--Lista o produto mais caro vendido juntamento com quem comprou
SELECT C.nome AS nome_cliente, P.nome, P.preco_lista
FROM TB_CLIENTES C
JOIN NOTA_FISCAL NF ON C.codigo = NF.codigo_cliente
JOIN ITENS_NOTA_FISCAL I ON NF.numero_nf = I.numero_nf
JOIN TB_PRODUTOS P ON I.codigo_produto = P.codigo
WHERE P.preco_lista = (SELECT MAX(preco_lista) FROM TB_PRODUTOS);