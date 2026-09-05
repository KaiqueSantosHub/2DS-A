USE dbConfeitaria
GO

--a)
CREATE PROCEDURE spInsereCategoria
	@nome NVARCHAR(120)
AS

	IF EXISTS(SELECT nomeCategoriaProduto FROM tbCategoriaProduto WHERE nomeCategoriaProduto LIKE @nome)
	BEGIN 
		PRINT('Impossível cadastrar '+@nome+ '. O produto já está no sistema!');
	END

	ELSE 
	BEGIN
		INSERT INTO tbCategoriaProduto(nomeCategoriaProduto)
		VALUES 
			(@nome);
	END

	EXEC spInsereCategoria 
	'Salgado';
	SELECT * FROM tbCategoriaProduto;

--b)
CREATE PROCEDURE spInsereProduto
	@nome NVARCHAR(120),
	@precoKg DECIMAL (10,2),
	@idCategoriaProduto INT

AS

	IF EXISTS(SELECT nomeProduto FROM tbProduto WHERE nomeProduto LIKE @nome)
	BEGIN 
		PRINT('Impossível cadastrar '+@nome+ '. O produto já está no sistema!');
	END

	ELSE 
	BEGIN
		INSERT INTO tbProduto(nomeProduto, precoKiloProduto, idCategoriaProduto)
		VALUES 
			(@nome, @precoKg, @idCategoriaProduto);
	END

	EXEC spInsereProduto
	'Risole misto',
	29,
	4;
	

	SELECT * FROM tbProduto;
--c)
CREATE PROCEDURE spInsereCliente
	@nome NVARCHAR (120),
	@dataNasc SMALLDATETIME,
	@rua NVARCHAR (100),
	@numCasa NVARCHAR (10),
	@cep VARCHAR (12),
	@bairro NVARCHAR (80),
	@cidade NVARCHAR (80),
	@estado NVARCHAR (80),
	@cpf VARCHAR (15),
	@sexo VARCHAR (10)

AS

	IF EXISTS(SELECT cpfCliente FROM tbCliente WHERE cpfCliente LIKE @cpf)
	BEGIN 
		PRINT('Cliente cpf '+@cpf+' Já cadastrado!');
	END

	ELSE 
	BEGIN
		IF @bairro LIKE 'Guaianases' OR @bairro LIKE 'Itaquera'
		BEGIN 
			INSERT INTO tbCliente(nomeCliente, dataNascCliente, ruaCliente, numCasaCliente, cepCliente, bairroCliente, cidadeCliente, estadoCliente, cpfCliente, sexoCliente)
			VALUES 
			(@nome, @dataNasc, @rua, @numCasa, @cep, @bairro, @cidade, @estado, @cpf, @sexo);
		END

		ELSE
		BEGIN
			PRINT('Não possível cadastrar o cliente '+@nome+', pois o bairro '+@bairro+' não é atendido pela confeitaria.');
		END	
	END

	EXEC spInsereCliente
	'Flávia Regina Brito',
	'22/04/1992',
	'Rua Mariano Moro',
	'300',
	'08.200-123',
	'Itaquera',
	'SP',
	'São Paulo',
	'874.652.489-74',
	'F';


		SELECT * FROM tbCliente;
--d)
CREATE PROCEDURE spInsereEncomenda
	@dataEncomenda SMALLDATETIME,
	@idCliente INT,
	@valorTotal DECIMAL (10,2),
	@dataEntrega SMALLDATETIME,
	@cpf VARCHAR (15)

AS

	DECLARE @nomeCliente NVARCHAR(100);
	DECLARE @idEncomenda INT;

	IF NOT EXISTS(SELECT cpfCliente FROM tbCliente WHERE cpfCliente LIKE @cpf)
	BEGIN 
		PRINT('Não foi possível efetivar a encomenda, pois o cliente '+@cpf+' não está cadastrado!');
	END

	ELSE 
	BEGIN
		
		SELECT @idCliente = tbCliente.idCliente, @nomeCliente = nomeCliente FROM tbCliente
			WHERE cpfCliente = @cpf
		
			INSERT INTO tbEncomenda(dataEncomenda, idCliente, valorTotalEncomenda, dataEntregaEncomenda )
			VALUES 
			(@dataEncomenda, @idCliente, @valorTotal, @dataEntrega);
	
			SET @idEncomenda = (SELECT MAX(idEncomenda) FROM tbEncomenda);
			PRINT('Encomenda '+CONVERT(CHAR(5),@idEncomenda)+' para o cliente '+ @nomeCliente+ ' efetuada com sucesso');
	END

	EXEC spInsereEncomenda
	'05/10/2026',
	4,
	'150',
	'12/10/2026',
	'728.454.197-09';

	SELECT * FROM tbEncomenda




--d)
CREATE PROCEDURE spInsereItensEncomenda
	@idEncomenda INT,
	@idProduto INT,
	@qtoKilos DECIMAL (10,2),
	@subTotal DECIMAL (10,2)

AS
	 
		DECLARE @idItensEncomenda INT;
	
		INSERT INTO tbItensEncomenda(idEncomenda, idProduto, quantidadeDeKilos, subTotal)
		VALUES 
			(@idEncomenda, @idProduto, @qtoKilos, @subTotal);
		
		SET @idItensEncomenda = (SELECT MAX(idItensEncomenda)  FROM tbItensEncomenda);
		PRINT('Item de código '+CONVERT(CHAR(5),@idItensEncomenda)+ 'cadastrado!');

	EXEC spInsereItensEncomenda
	5,
	6,
	2.2,
	150;

	SELECT * FROM tbItensEncomenda;

--f)
--f1.
CREATE PROCEDURE spAumentaPrecoBoloFesta
	
AS
	UPDATE tbProduto 
	SET precoKiloProduto = ((precoKiloProduto*10/100)+precoKiloProduto) FROM tbProduto
	INNER JOIN tbCategoriaProduto
		ON tbProduto.idCategoriaProduto = tbCategoriaProduto.idCategoriaProduto
	WHERE nomeCategoriaProduto LIKE 'Bolo Festa';

	EXEC spAumentaPrecoBoloFesta;


--f2.
CREATE PROCEDURE spAumentaPrecoBoloSimples
	
AS

	UPDATE tbProduto 
	SET precoKiloProduto = precoKiloProduto - (precoKiloProduto*20/100)  FROM tbProduto
	INNER JOIN tbCategoriaProduto
		ON tbProduto.idCategoriaProduto = tbCategoriaProduto.idCategoriaProduto
	WHERE nomeCategoriaProduto LIKE 'Bolo Simples';

	EXEC spAumentaPrecoBoloSimples;
	
	
 
--f3.
CREATE PROCEDURE spAumentaPrecoTorta
	
AS
	UPDATE tbProduto 
	SET precoKiloProduto = precoKiloProduto + (precoKiloProduto*25/100)  FROM tbProduto
	INNER JOIN tbCategoriaProduto
		ON tbProduto.idCategoriaProduto = tbCategoriaProduto.idCategoriaProduto
	WHERE nomeCategoriaProduto LIKE 'Torta';

	EXEC spAumentaPrecoTorta;

--f4.
CREATE PROCEDURE spAumentaPrecoBoloSalgado
	
AS
	UPDATE tbProduto 
	SET precoKiloProduto = precoKiloProduto + (precoKiloProduto*20/100)  FROM tbProduto
	INNER JOIN tbCategoriaProduto
		ON tbProduto.idCategoriaProduto = tbCategoriaProduto.idCategoriaProduto
	WHERE nomeCategoriaProduto LIKE 'Salgado' AND nomeProduto <> 'Esfiha de carne';
		
	EXEC spAumentaPrecoBoloSalgado;
	SELECT * FROM tbProduto;	
	
--g)
CREATE PROCEDURE spExcluirCliente
@cpf VARCHAR (15)

AS
	DECLARE @nomeCliente NVARCHAR(100);
	SET @nomeCliente = (SELECT nomeCliente  FROM tbCliente WHERE cpfCliente = @cpf);

	IF EXISTS(
		SELECT 1 FROM tbEncomenda 
			INNER JOIN tbCliente
				ON tbEncomenda.idCliente = tbCliente.idCliente
		WHERE cpfCliente = @cpf
	)
	BEGIN 
		
		PRINT('Impossível remover esse cliente, pois o cliente '+@nomeCliente+' possui encomendas');
	END

	ELSE
	BEGIN
		DELETE FROM tbCliente
		WHERE cpfCliente = @cpf;
		PRINT('Cliente '+@nomeCliente+' removido com sucesso!');
	END

	EXEC spExcluirCliente
	'874.652.489-74';

--h)
CREATE PROCEDURE spExcluirItemEncomendaa
    @idEncomenda INT,
    @idProduto INT

AS

DECLARE @subTotal DECIMAL(10,2);

IF EXISTS ( SELECT 1 FROM tbEncomenda WHERE idEncomenda = @idEncomenda AND dataEntregaEncomenda > '01/09/2026')
BEGIN

    SET @subTotal = (SELECT subTotal FROM tbItensEncomenda WHERE idEncomenda = @idEncomenda AND idProduto = @idProduto);

    DELETE FROM tbItensEncomenda
    WHERE idEncomenda = @idEncomenda AND idProduto = @idProduto;

    UPDATE tbEncomenda
    SET valorTotalEncomenda = valorTotalEncomenda - @subTotal
    WHERE idEncomenda = @idEncomenda;

    PRINT 'Item removido com sucesso!';
END

ELSE
BEGIN
    PRINT 'Não é possível remover este item!';
END

EXEC spExcluirItemEncomendaa 3, 5;