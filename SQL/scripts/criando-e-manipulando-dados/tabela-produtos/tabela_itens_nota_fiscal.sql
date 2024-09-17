CREATE TABLE ITENS_NOTA_FISCAL (
numero_nf NUMBER,
codigo_produto NUMBER,
quantidade NUMBER,
FOREIGN KEY (numero_nf) REFERENCES NOTA_FISCAL (numero_nf),
FOREIGN KEY (codigo_produto) REFERENCES TB_PRODUTOS (codigo)
);