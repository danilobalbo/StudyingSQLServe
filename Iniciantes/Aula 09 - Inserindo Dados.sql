-- Inserindo dados 
-- INSERT INTO [nome da tabela] VALUES () => Ele segue o padr�o

INSERT INTO tb_Produtos VALUES ('Suco de Laranja', 4.5);

-- INSERT => Com os nomes das colunas
INSERT INTO tb_Produtos (PrecoProduto, NomeProduto) VALUES (1.5, 'Suco de Manga');

-- Testando o Constraint
INSERT INTO tb_Vendas VALUES (3, 3.2);
SELECT * FROM tb_Vendas

