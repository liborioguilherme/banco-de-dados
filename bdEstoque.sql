CREATE DATABASE bdEstoque

GO

USE bdEstoque

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (50)
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (50)
	,cpfCliente VARCHAR (15)
	,emailCliente VARCHAR (70)
	,sexoCliente CHAR (1)
	,dataNascimentoCliente SMALLDATETIME
)

CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR(50)
	,contatoFornecedor VARCHAR(20)
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda DATE
	,valorTotalVenda SMALLMONEY
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto VARCHAR (200)
	,valorProduto SMALLMONEY
	,quantidadeProduto INT
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeItensVenda INT
	,subTotalItensVenda SMALLMONEY
)
