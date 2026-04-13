USE dbRecursosHumanos;
GO

SET DATEFORMAT DMY

-- INSERT tbDepartamento
INSERT INTO tbDepartamento (nomeDepartamento)
VALUES 
	('TI'),
	('RH'),
	('Financeiro'), 
	('Marketing'),
	('Vendas'),
	('Logística'), 
	('Jurídico'), 
	('Produção'), 
	('Compras'), 
	('Atendimento');

-- INSERT tbFuncionario
INSERT INTO tbFuncionario (nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, idDepartamento)
VALUES
	('João da Silva' ,'356.258.147-15', 'Masculino', '08/01/1995', 2000, 5),
	('Maria Oliveira', '123.456.789-00', 'Feminino', '15/03/1996', 2500, 2),
	('Carlos Souza', '987.654.321-11', 'Masculino', '22/07/2000', 3200, 3),
	('Ana Pereira', '456.789.123-22', 'Feminino', '10/11/1980' ,1800, 1),
	('Lucas Santos', '741.852.963-33', 'Masculino', '05/05/1986', 4000, 4),
	('Fernanda Lima', '159.357.258-44', 'Feminino', '30/09/1963', 2200, 2),
	('Bruno Rocha', '753.951.456-55', 'Masculino', '12/12/2001', 3500, 5),
	('Juliana Alves', '852.456.789-66', 'Feminino', '18/06/2000', 2100, 1),
	('Ricardo Gomes', '951.753.852-77', 'Masculino', '27/08/1999', 4500, 3),
	('Patricia Martins', '357.159.486-88', 'Feminino', '03/02/1989', 2300, 4),
	('Rafael Costa', '111.222.333-99', 'Masculino', '14/04/1992', 2800, 6),
	('Camila Ferreira', '222.333.444-00', 'Feminino', '21/09/1998', 2600, 8),
	('Diego Barbosa', '333.444.555-11', 'Masculino', '02/12/1990', 3100, 10),
	('Larissa Mendes', '444.555.666-22', 'Feminino', '19/07/1997', 2700, 8),
	('Gustavo Ribeiro', '555.666.777-33', 'Masculino', '11/03/1985', 3900, 6),
	('Aline Cardoso', '666.777.888-44', 'Feminino', '25/10/1993', 2400, 7),
	('Felipe Nunes', '777.888.999-55', 'Masculino', '08/08/2002', 3300, 9),
	('Beatriz Teixeira', '888.999.000-66', 'Feminino', '17/01/2001', 2900, 10),
	('Eduardo Pires', '999.000.111-77', 'Masculino', '29/05/1988', 4100, 9),
	('Mariana Duarte', '000.111.222-88', 'Feminino', '06/06/1995', 3000, 7); 

-- INSERT tbDependente
INSERT INTO tbDependente 
(nomeDependente, dataNascimentoDependente, sexoDependente, idFuncionario)
VALUES
	('Josefa da Silva', '01/05/2012', 'Feminino', 2),
	('Maria Oliveira', '15/03/2000', 'Feminino', 2),
	('Carlos Souza', '22/07/2017', 'Masculino', 3),
	('Ana Pereira', '10/11/2020', 'Feminino', 1),
	('Lucas Santos', '05/05/2016', 'Masculino', 4),
	('Fernanda Lima', '30/09/2019', 'Feminino', 2),
	('Bruno Rocha', '12/12/2015', 'Masculino', 5),
	('Juliana Alves', '18/06/2021', 'Feminino', 1),
	('Ricardo Gomes', '27/08/2014', 'Masculino', 3),
	('Patricia Martins', '03/02/2022', 'Feminino', 4),
	('Gabriela Souza', '12/04/2013', 'Feminino', 8),
	('Mateus Oliveira', '23/09/2016', 'Masculino', 6),
	('Renata Carvalho', '05/01/2019', 'Feminino', 10),
	('Thiago Fernandes', '17/07/1990', 'Feminino', 9),
	('André Martins', '09/03/2014', 'Masculino', 6),
	('Carla Mendes', '14/08/1999', 'Feminino', 7),
	('Rodrigo Alves', '30/12/2017', 'Masculino', 10),
	('Vanessa Gomes', '06/06/2021', 'Feminino', 8),
	('Leonardo Rocha', '19/10/2015', 'Masculino', 9),
	('Sebastião Cordeiro', '08/02/1993', 'Masculino', 9);

	DELETE FROM tbDepartamento;
	DELETE FROM tbDependente;
	DELETE FROM tbFuncionario

DBCC CHECKIDENT ('tbDepartamento', RESEED, 0);
DBCC CHECKIDENT ('tbFuncionario', RESEED, 0);
DBCC CHECKIDENT ('tbDependente', RESEED, 0);