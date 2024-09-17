-- Adicionando uma primary key
ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (CODIGO);
-- Insere uma nova linha de dado
INSERT INTO TB_PRODUTOS (CODIGO, PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) 
VALUES (1,'1040107','Light - 350 ml - Melância','Lata','350 ml','Melância',4.555);

-- Seleciona todas as linhas da tabela produtos
SELECT * FROM TB_PRODUTOS;

-- Sequência para a tabela produtos
CREATE SEQUENCE seq_produtos
START WITH 2
INCREMENT BY 1;

-- Trigger para a tabela PRODUTOS
CREATE OR REPLACE TRIGGER trg_antes_inserir_produtos
BEFORE INSERT ON TB_PRODUTOS
FOR EACH ROW
BEGIN
SELECT seq_produtos.NEXTVAL INTO :NEW.codigo FROM dual;
END;