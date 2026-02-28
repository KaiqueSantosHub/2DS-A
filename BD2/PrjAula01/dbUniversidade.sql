CREATE DATABASE dbUniversidade
GO

USE  dbUniversidade

CREATE TABLE tbAluno (
	 idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno NVARCHAR (80) NOT NULL
	,dataNascAluno DATE NOT NULL
	,cpfAluno CHAR (11) UNIQUE NOT NULL
	,rgAluno VARCHAR (20) UNIQUE NOT NULL
	,logradouroAluno NVARCHAR (80) NOT NULL
	,numeroCasaAluno VARCHAR (9) NOT NULL
	,complementoAluno NVARCHAR (50)
	,bairroAluno NVARCHAR (50) NOT NULL
	,cidadeAluno NVARCHAR (50) NOT NULL
	,estadoAluno NVARCHAR (50) NOT NULL
	,cepAluno CHAR (8) NOT NULL
);


CREATE TABLE tbEmalLAluno (
	  idEmailAluno INT PRIMARY KEY IDENTITY (1,1)
	 ,emailEmailAluno NVARCHAR (80) NOT NULL UNIQUE
	 ,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
);

CREATE TABLE tbTelefoneLAluno (
	  idTelefoneAluno INT PRIMARY KEY IDENTITY (1,1)
	 ,numeroTelefonelAluno NVARCHAR (15) NOT NULL
	 ,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
);

CREATE TABLE tbTurma (
	 idTurma  INT PRIMARY KEY IDENTITY (1,1)
	,numeroSalaTurma VARCHAR (5) NOT NULL
	,anoFormacaoTurma DATE NOT NULL
);

CREATE TABLE tbDisciplina (
	 idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina NVARCHAR (80) NOT NULL
	,descicaoDisciplina NVARCHAR (100)
);

CREATE TABLE tbTipoCurso (
	 idTipoCurso INT PRIMARY KEY IDENTITY (1,1)
	,descTipoCurso NVARCHAR (50) NOT NULL

);

CREATE TABLE tbCurso (
	 idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso NVARCHAR (80) NOT NULL
	,idTipoCurso INT FOREIGN KEY REFERENCES tbTipoCurso (idTipoCurso)
);

CREATE TABLE tbDisciplinaCuso (
	 idDisciplinaCurso INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
);

CREATE TABLE tbMatricula (
	 idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,dataCriacaoMatricula DATETIME2 DEFAULT SYSDATETIME()
); 

CREATE TABLE tbLesionamento (
	 idLesionamento INT PRIMARY KEY IDENTITY (1,1)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor) /*David cria a tbProfessor 
);
