CREATE DATABASE dbConfeitaria
GO

USE dbConfeitaria
GO

CREATE TABLE tbCliente (
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente NVARCHAR (120)
	,dataNascCliente SMALLDATETIME
	,ruaCliente NVARCHAR(100)
	,numCasaCliente NVARCHAR(10)
	,cepCliente VARCHAR(12)
	,bairroCliente NVARCHAR(80)
	,cidadeCliente NVARCHAR(80)
	,estadoCliente NVARCHAR(80)
	,cpfCliente VARCHAR(15)
	,sexoCliente VARCHAR(10)
);

CREATE TABLE tbCategoriaProduto (
	idCategoriaProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeCategoriaProduto NVARCHAR (120)
);

CREATE TABLE tbProduto (
	idProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto NVARCHAR (120)
	,precoKiloProduto DECIMAL (10,2)
	,idCategoriaProduto INT FOREIGN KEY REFERENCES tbCategoriaProduto (idCategoriaProduto)
);

CREATE TABLE tbEncomenda (
	idEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,dataEncomenda SMALLDATETIME
	,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
	,valorTotalEncomenda DECIMAL (10,2)
	,dataEntregaEncomenda SMALLDATETIME
);

CREATE TABLE tbItensEncomenda (
	idItensEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,idEncomenda INT FOREIGN KEY REFERENCES tbEncomenda (idEncomenda)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	,quantidadeDeKilos DECIMAL (10,2)
	,subTotal DECIMAL (10,2)
	
);