/*
Loja de suco do Jailson

* Vende sucos (principalmente de Laranja)

* Dados dos clientes:
	Nome (texto)
	Nascimento (data dd/mm/aaaa)
	sexo (número)
	endereço
		Rua (texto)
		Cidade (texto)
		Estado (texto)
	Telefones (texto)
		
* Dados das vendas
	Número da venda (número)
	Cliente que comprou (texto)
	Preço total (número)
	
* Dados do produto
	Nome (texto)
	Preço (número)
*/

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
	CodigoProduto INT NOT NULL,
	PrecoProduto DECIMAL (6,2) NOT NULL,
);

-- Foreign Key
-- Constraint

ALTER TABLE tb_Vendas
ADD CONSTRAINT FK_Produtos_Vendas
FOREIGN KEY (CodigoProduto)
REFERENCES tb_Produtos(CodigoProduto)

