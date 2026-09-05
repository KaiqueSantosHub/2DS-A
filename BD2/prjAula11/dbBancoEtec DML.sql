USE dbBancoEtec;
GO

INSERT INTO tbCorrentista (nomeCorrentista, dataNascCorrentista, cpfCorrentista, rgCorrentista)
VALUES 
('Rogerio Ceni', '22/01/1973', '123.456.789-00', '12.545.122-01'),
('Raí Vieira de Oliveira', '15/05/1965', '232.322.321-99', '18.332.232-10'),
('Amelindo Dorizetti', '10/10/1965', '222.333.232-00', '12.433.233-0');

INSERT INTO tbContaCorrente (numeroAgenciaCC, numeroCC, digitoCC, senhaNumericaCC, senhaAlfanumericaCC, saldoCC, dataAberturaCC, codCorrentista)
VALUES 
('1021', '123.122', '11', '111111', '6B3L3M', 100000.00, '10/10/2017', 1 ),
('1022', '212.121', '12', '12211', '2x1SP', 90000.00, '12/12/2014', 2 ),
('1021', '123.121', '11', '123456', '01MITO', 1200000.00, '10/05/2017', 1 ),
('1021', '324.544', '10', '839222', 'ZETT01', 23498.90, '10/05/2015', 3 );

INSERT INTO tbContaPoupanca (numeroAgenciaCP, numeroCP,digitoCP, saldoCP, dataAberturaCP, codCorrentista)
VALUES 
('1021', '434433', '4', 2000000.00, '10/06/2017', 1 ),
('1022', '322222', '5', 4000000.00, '15/05/2017', 2 ),
('1021', '232222', '6', 2200000.00, '10/04/2017', 3 );