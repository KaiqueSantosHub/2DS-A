CREATE DATABASE dbRecursosHumanos;
GO

USE dbRecursosHumanos;
GO

CREATE TABLE tbDepartamento (
    idDepartamento INT PRIMARY KEY IDENTITY(1,1)
   ,nomeDepartamento NVARCHAR(80) NOT NULL
);

CREATE TABLE tbFuncionario (
    idFuncionario INT PRIMARY KEY IDENTITY(1,1)
   ,nomeFuncionario NVARCHAR(80) NOT NULL
   ,cpfFuncionario NCHAR(15) NOT NULL
   ,sexoFuncionario VARCHAR(80)
   ,dataNascimentoFuncionario DATE NOT NULL
   ,salarioFuncionario MONEY NOT NULL
   ,idDepartamento INT FOREIGN KEY (idDepartamento) REFERENCES tbDepartamento(idDepartamento)
);

CREATE TABLE tbDependente (
    idDependente INT PRIMARY KEY IDENTITY(1,1)
   ,nomeDependente NVARCHAR(80) NOT NULL
   ,dataNascimentoDependente DATE NOT NULL
   ,sexoDependente VARCHAR(80)
   ,idFuncionario INT FOREIGN KEY (idFuncionario) REFERENCES tbFuncionario(idFuncionario)
);