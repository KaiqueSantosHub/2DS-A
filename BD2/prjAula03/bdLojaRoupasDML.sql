USE bdLojaRoupas;
GO

SELECT * FROM tbCliente;

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES 
	 ('Wesley Safadão', 85)
	,('Deyde Costa', 67)
	,('Pedrinho Matador', 68)
	,('Alan Turing', 20)
	,('Elma Maria', 150)

SELECT* FROM tbFabricante;

INSERT INTO tbFabricante (nomeFabricante)
VALUES 
	 ('Malwee')
	,('Marisol')
	,('Cia da Malha')

SELECT *FROM tbFuncionario;

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES
	('Giuseppe Camole', 19, '29/02/2000', 90000 )


SELECT *FROM tbVendedor;

INSERT INTO tbVendedor (nomeVendedor)
VALUES
	('João Santana')
	,('Raquel Torres')


SELECT *FROM tbProduto;

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, idFabricante, idFuncionario)
VALUES
	('Depilador', 20, '11/09/2001', 1, 1)
	,('Carrinho de controle remoto', 120, '20/10/2010', 3, 1)
	,('Notebook Positivo', 3000, '21/12/2016', 2, 1)
	,('Parafusadeira Bosh', 1200, '14/05/2017', 3, 1)

SELECT *FROM tbVendas;

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, idFabricante, idFuncionario)
VALUES
	()