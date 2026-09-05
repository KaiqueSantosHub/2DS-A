CREATE DATABASE	dbBancoEtec;
GO

USE dbBancoEtec;
GO

CREATE TABLE tbCorrentista (
	codCorrentista INT PRIMARY KEY IDENTITY (1,1)
	,nomeCorrentista NVARCHAR (80) NULL
	,dataNascCorrentista DATE NULL
	,cpfCorrentista VARCHAR(14) NULL
	,rgCorrentista VARCHAR(13) NULL
);



CREATE TABLE tbContaCorrente (
	codContaCorrente INT PRIMARY KEY IDENTITY (1,1)
	,numeroAgenciaCC VARCHAR(7) NULL
	,numeroCC VARCHAR(15) NULL 
	,digitoCC  VARCHAR(2) NULL
	,senhaNumericaCC VARCHAR(6) NULL
	,senhaAlfanumericaCC VARCHAR(150) NULL
	,saldoCC DECIMAL(18,2) NULL
	,dataAberturaCC DATE NULL
	,codCorrentista INT FOREIGN KEY REFERENCES tbCorrentista(codCorrentista) NULL
);


CREATE TABLE tbContaPoupanca (
	codContaPoupanca INT PRIMARY KEY IDENTITY (1,1)
	,numeroAgenciaCP VARCHAR(7) NULL
	,numeroCP VARCHAR(15) NULL
	,digitoCP  VARCHAR(2) NULL
	,saldoCP DECIMAL(18,2) NULL
	,dataAberturaCP DATE NULL
	,codCorrentista INT FOREIGN KEY REFERENCES tbCorrentista(codCorrentista) NULL
);


