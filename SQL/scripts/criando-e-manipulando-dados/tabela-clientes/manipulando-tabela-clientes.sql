-- Altere a coluna código para uma coluna como chave primária
ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CODIGO);
-- Adiciona uma nova coluna DATA_NASCIMENTO para a tabela
ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;
-- Adiciona uma nova coluna
ALTER TABLE TB_CLIENTES ADD COLUNA_EXCLUIR VARCHAR(10);
-- Exclui uma coluna da tabela
ALTER TABLE TB_CLIENTES DROP COLUMN COLUNA_EXCLUIR;

-- Adiciona uma estrutura de sequência
-- Sequência para a tabela clientes
CREATE SEQUENCE seq_clientes
START WITH 2
INCREMENT BY 1;

-- Trigger para a tabela CLIENTES
CREATE OR REPLACE TRIGGER trg_antes_inserir_clientes
BEFORE INSERT ON TB_CLIENTES
FOR EACH ROW
BEGIN
SELECT seq_clientes.NEXTVAL INTO :NEW.codigo FROM dual;
END;