--USE dbEscola;
--GO

----Insert tbCurso
--INSERT INTO  tbCurso (nomeCurso, cargaHorariaCurso, valorCurso)
--VALUES 
--	('Inglês', 2000, 356), 
--	('Alemão', 3000, 478);

----Insert tbAluno
--INSERT INTO tbAluno (nomeAluno, dataNascimentoAluno,cpfAluno, rgAluno, naturalidadeAluno)
--VALUES 
--	('Paulo Santos', '03/10/2000', '987.594.234-9', '82.292.122-0', 'SP' ),
--	('Maria da Glória', '10/03/1999', '784.264.369-89', '45.233.123-0', 'SP' ),
--	('Perla Nogueira Silva', '04/04/1998', '945.369.032-84', '23.533.211-9', 'SP' ),
--	('Gilson Barros Silva', '09/09/1995', '123.456.789.-10', '34.221.111-x', 'PE' ),
--	('Mariana Barbosa Santos', '10/10/2001', '109.876.543-21', '54.222.122-9', 'RJ' );

----Insert tbTurma
--INSERT INTO tbTurma (nomeTurma, idCurso, horarioTurma)
--VALUES 
--	('1IA', 1, '01/01/1900 12:00:00'),
--	('1IB', 1, '01/01/1900 18:00:00'),
--	('1AA', 2, '01/01/1900 19:00:00');


----Insert Matricula
--INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
--VALUES
--	('10/03/2015', 1, 1),
--	('05/04/2014', 2, 1),
--	('05/03/2012', 3, 2),
--	('03/03/2016', 1, 3),
--	('05/07/2015', 4, 2),
--	('07/05/2015', 4, 3),
--	('06/06/2015', 5, 1),
--	('05/05/2015', 5, 3);

-- EXERCÍCiO 1
CREATE PROCEDURE spBusca_Aluno 
	@idAlunoBusca INT
AS
	IF EXISTS(SELECT nomeAluno, dataNascimentoAluno FROM tbAluno WHERE idAluno = @idAlunoBusca)
	BEGIN
		SELECT nomeAluno Aluno, dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
		WHERE idAluno = @idAlunoBusca
	END
	
	ELSE 
	BEGIN
		PRINT('O id inserido não existe. Tente novamente com outro id.')
	END

	EXEC spBusca_Aluno 1

-- EXERCÍCiO 2
CREATE PROCEDURE spInsere_Aluno
	@nome NVARCHAR(180),
	@dataNascimento SMALLDATETIME,
	@cpf VARCHAR (15),
	@rg VARCHAR (15),
	@naturalidade NVARCHAR(80)
AS
	DECLARE @idAluno INT
	IF EXISTS (SELECT idAluno FROM tbAluno WHERE cpfAluno LIKE @cpf)
	BEGIN 
		PRINT('Impossível cadastrar aluno!. CPF: '+@cpf+' já existente!')
	END

	ELSE 
	BEGIN
		INSERT INTO tbAluno (nomeAluno, dataNascimentoAluno,cpfAluno, rgAluno, naturalidadeAluno)
		VALUES 
			(@nome, @dataNascimento, @cpf, @rg, @naturalidade)

			SET @idAluno = (SELECT MAX(idAluno) FROM tbAluno)
			PRINT('Aluno '+@nome+ ' de CPF '+@cpf+ ' cadastrado com sucesso!')
	END

	EXEC spInsere_Aluno 
	'Clodoaldo Bastos',
	'15/09/1903',
	'400.289.221-00',
	'68.123.145-8',
	'Brasileiro'

-- EXERCÍCiO 3
CREATE PROCEDURE spAumenta_Preco
	@nomeCurso NVARCHAR(80),
	@porcentagem INT
AS
	IF EXISTS(SELECT nomeCurso FROM tbCurso WHERE nomeCurso LIKE @nomeCurso)
	BEGIN
		SELECT nomeCurso Curso, ((valorCurso*@porcentagem/100)+valorCurso) AS 'Preço ajustado' FROM tbCurso
		WHERE nomeCurso LIKE @nomeCurso
	END
	
	ELSE 
	BEGIN
		PRINT('Não existe curso com o nome inserido!')
	END

	EXEC spAumenta_Preco
	'Inglês',
	30
	
-- EXERCÍCiO 4
CREATE PROCEDURE spExibe_Turma
	@nomeTurma NVARCHAR(80)
AS
	IF EXISTS(SELECT * FROM tbTurma WHERE nomeTurma LIKE @nomeTurma)
	BEGIN
		SELECT * FROM tbTurma 
		WHERE nomeTurma LIKE @nomeTurma
	END
	
	ELSE 
	BEGIN
		PRINT('Não existe uma turma com o nome inserido!')
	END

	EXEC spExibe_Turma
	'1IA'

-- EXERCÍCiO 5
CREATE PROCEDURE spExibe_alunosdaTurma
	@nomeTurma NVARCHAR(80)
AS
	IF EXISTS(SELECT * FROM tbTurma WHERE nomeTurma LIKE @nomeTurma)
	BEGIN
		SELECT nomeAluno FROM tbTurma 
			INNER JOIN tbMatricula
				ON tbTurma.idTurma = tbMatricula.idTurma
				INNER JOIN tbAluno
					ON tbMatricula.idAluno = tbAluno.idAluno
		WHERE nomeTurma LIKE @nomeTurma
		
	END
	
	ELSE 
	BEGIN
		PRINT('Não existe uma turma com o nome inserido!')
	END

	EXEC spExibe_alunosdaTurma
	'1IA'

	SELECT * FROM tbAluno
	SELECT * FROM tbMatricula
	SELECT * FROM tbTurma
	SELECT * FROM tbCurso