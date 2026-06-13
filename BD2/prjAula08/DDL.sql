CREATE DATABASE bdLivrariaBrasileira;
GO

USE bdLivrariaBrasileira;
GO

CREATE TABLE tbAutor (
    codAutor INT PRIMARY KEY IDENTITY (1,1),
    nomeAutor VARCHAR(100) NOT NULL
);

CREATE TABLE tbGenero (
    codGenero INT PRIMARY KEY IDENTITY (1,1),
    nomeGenero VARCHAR(50) NOT NULL
);

CREATE TABLE tbEditora (
    codEditora INT PRIMARY KEY IDENTITY (1,1),
    nomeEditora VARCHAR(100) NOT NULL
);

CREATE TABLE tbLivro (
	codLivro INT PRIMARY KEY IDENTITY (1,1),
    nomeLivro VARCHAR(150) NOT NULL,
    numPaginas INT NOT NULL,
    codGenero INT FOREIGN KEY (codGenero) REFERENCES tbGenero(codGenero) NOT NULL,
    codAutor INT FOREIGN KEY (codAutor) REFERENCES tbAutor(codAutor) NOT NULL,
    codEditora INT  FOREIGN KEY (codEditora) REFERENCES tbEditora(codEditora) NOT NULL

);

