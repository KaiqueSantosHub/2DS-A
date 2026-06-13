CREATE DATABASE bdComercioLivros;
GO

USE bdComercioLivros;
GO

CREATE TABLE tbAutor (
    codAutor INT PRIMARY KEY IDENTITY (1,1)
    ,nomeAutor NVARCHAR(100)
);

CREATE TABLE tbEditora (
    codEditora INT PRIMARY KEY IDENTITY (1,1)
    ,nomeEditora NVARCHAR(100)
);

CREATE TABLE tbLivro (
    codLivro INT PRIMARY KEY IDENTITY(1,1)
    ,nomeLivro NVARCHAR(80)
    ,isbn CHAR(13)
    ,numPaginas INT
    ,codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor)
    ,codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora)
);