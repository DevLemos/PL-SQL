CREATE TABLE NOTA_FISCAL (
numero_nf NUMBER PRIMARY KEY,
data_emissao DATE,
codigo_cliente NUMBER,
FOREIGN KEY (codigo_cliente) REFERENCES TB_CLIENTES (codigo)
);