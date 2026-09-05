CREATE DATABASE dbEstoque;
GO

USE dbEstoque;
GO

CREATE TABLE tbCliente (
    codCliente INT PRIMARY KEY IDENTITY (1,1),
    nomeCliente VARCHAR(100),
    cpfCliente VARCHAR(14),
    emailCliente VARCHAR(100),
    sexoCliente VARCHAR(15),
    dataNascimentoCliente DATE
);

CREATE TABLE tbFabricante (
    codFabricante INT PRIMARY KEY IDENTITY (1,1),
    nomeFabricante VARCHAR(100)
);

CREATE TABLE tbFornecedor (
    codFornecedor INT PRIMARY KEY IDENTITY (1,1),
    nomeFornecedor VARCHAR(100),
    contatoFornecedor VARCHAR(100)
);

CREATE TABLE tbProduto (
    codProduto INT PRIMARY KEY IDENTITY (1,1),
    descricaoProduto VARCHAR(100),
    valorProduto DECIMAL(10,2),
    quantidadeProduto INT,
    codFabricante INT FOREIGN KEY (codFabricante) REFERENCES tbFabricante(codFabricante),
    codFornecedor INT FOREIGN KEY (codFornecedor) REFERENCES tbFornecedor(codFornecedor)
);

CREATE TABLE tbVenda (
    codVenda INT PRIMARY KEY IDENTITY (1,1),
    dataVenda DATE,
    valorTotalVenda DECIMAL(10,2),
    codCliente INT FOREIGN KEY (codCliente) REFERENCES tbCliente(codCliente)
);

CREATE TABLE tbItensVenda (
    codItensVenda INT PRIMARY KEY IDENTITY(1,1),
    codVenda INT FOREIGN KEY (codVenda) REFERENCES tbVenda(codVenda),
    codProduto INT FOREIGN KEY (codProduto) REFERENCES tbProduto(codProduto),
    quantidadeItensVenda INT,
    subTotalItensVenda DECIMAL(10,2)
);
    