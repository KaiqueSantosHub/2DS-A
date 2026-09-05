CREATE DATABASE dbEscola;
GO

USE dbEscola;
GO

CREATE TABLE tbCurso (
	 idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso NVARCHAR (80) NOT NULL
	,cargaHorariaCurso INT
	,valorCurso DECIMAL (10,2) NOT NULL
);

CREATE TABLE tbTurma (
	 idTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma NVARCHAR (80) NOT NULL
	,horarioTurma DATETIME2 NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso) 
);

CREATE TABLE tbAluno (
	 idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno NVARCHAR (180) NOT NULL
	,dataNascimentoAluno DATE NOT NULL
	,rgAluno CHAR (12) NOT NULL
	,naturalidadeAluno NVARCHAR (80)
);

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
);





