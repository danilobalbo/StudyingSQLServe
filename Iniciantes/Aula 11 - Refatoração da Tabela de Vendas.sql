-- Remover a tabela de vendas
DROP TABLE tb_Vendas

--Criando um Banco de dados nova
CREATE DATABASE dbLojaJailson;

USE dbLojaJailson

-- Aula 04 - Criando tabelas (Parte 01)

-- Truncar - Diminui o tamanho do texto/dado
CREATE TABLE tb_Produtos(
	CodigoProduto INT PRIMARY KEY IDENTITY (1,1),
	NomeProduto VARCHAR(50) NOT NULL,  
	PrecoProduto DECIMAL (6,2) NOT NULL
);

-- Aula 05 - Criando tabelas (Parte 02)

CREATE TABLE tb_Clientes(
	CodigoCliente INT PRIMARY KEY IDENTITY (1,1),
	NomeCliente VARCHAR(50) NOT NULL,
	DataNascimento DATE,
	Sexo VARCHAR(1) NOT NULL,
	Endereco VARCHAR(50), 
	Cidade VARCHAR(50),
	Estado VARCHAR(30),
	Telefone1 VARCHAR(15),
	Telefone2 VARCHAR(15)
);

-- Aula 06 - Criando Tabelas (Parte 3)

CREATE TABLE tb_Vendas(
	CodigoVenda INT PRIMARY KEY IDENTITY (1,1),
	CodigoPessoa INT NOT NULL FOREIGN KEY REFERENCES tb_Clientes (CodigoCliente),
	DataVenda DATETIME NOT NULL
);

CREATE TABLE tb_ProdutoVenda(
	CodigoProdutoVenda INT PRIMARY KEY IDENTITY (1,1),
	CodigoVenda INT FOREIGN KEY REFERENCES tb_Venda (CodigoVenda) NOT NULL,
	CodigoProduto INT FOREIGN KEY REFERENCES tb_Produtos (CodigoProduto) NOT NULL,
	QtdProduto INT NOT NULL
);

-- Foreign Key
-- Constraint

ALTER TABLE tb_Vendas
ADD CONSTRAINT FK_Produtos_Vendas
FOREIGN KEY (CodigoProduto)
REFERENCES tb_Produtos(CodigoProduto)

