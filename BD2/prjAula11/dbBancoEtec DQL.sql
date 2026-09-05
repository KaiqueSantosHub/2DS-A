--USE dbBancoEtec;
--GO

--SELECT * FROM tbCorrentista;
--SELECT * FROM tbContaCorrente;
--SELECT * FROM tbContaPoupanca;


---- ========================== Atividade avaliativa VIEW =========================================	

--a) Criar uma view vwSaldoTotal obtendo o nome do correntista, o saldo da Conta corrente, o Saldo da Poupança e a soma dos dois saldos.
CREATE VIEW vwSaldoTotal AS
	SELECT nomeCorrentista  AS 'Nome do Correntista', saldoCC AS 'Saldo Corrente', saldoCP AS 'Saldo Poupaça', (saldoCC + saldoCP) AS 'Soma dos saldos'  FROM tbCorrentista			
		INNER JOIN tbContaCorrente
			ON tbCorrentista.codCorrentista = tbContaCorrente.codCorrentista
			INNER JOIN tbContaPoupanca
				ON tbCorrentista.codCorrentista = tbContaPoupanca.codCorrentista;

--b) Utilizando a view vwSaldoTotal anterior, ordenar os correntistas por ordem alfabética.
SELECT * FROM vwSaldoTotal
ORDER by [Nome do Correntista]

--c) Criar uma view vwProjecaoSaldoPoupanca informando o nome do correntista e o saldo da poupança atualizado após acréscimo de 0.5% no próximo mês.
CREATE VIEW	vwProjecaoSaldoPoupanca AS
	SELECT nomeCorrentista AS 'Nome do Correntista', ((saldoCP*0.5/100) + saldoCP) AS 'Saldo da Poupança Atualizado' FROM tbCorrentista
		INNER JOIN tbContaPoupanca
			ON tbCorrentista.codCorrentista = tbContaPoupanca.codCorrentista;

--d) Criar uma view vwExibeCorrentista que exiba todos os dados da conta corrente ao lado do nome do correntista 
--(exceto a senha numérica e alfanumérica), com a data de abertura da conta corrente no formato dd/mm/aaaa e o saldo da poupança.
CREATE VIEW vwExibeCorrentista AS
	SELECT nomeCorrentista AS 'Nome do Correntista', numeroAgenciaCC AS 'Número da Agência',digitoCC AS Dígito, saldoCC AS 'Saldo Corrente', saldoCP AS 'Saldo Poupaça', CONVERT(VARCHAR, dataAberturaCC, 103) AS 'Data da Abertura' FROM tbContaCorrente	
		INNER JOIN tbCorrentista
			ON tbContaCorrente.codCorrentista = tbCorrentista.codCorrentista
			INNER JOIN tbContaPoupanca
				ON tbCorrentista.codCorrentista = tbContaPoupanca.codCorrentista;
		

--e) Criar uma view vwCorrentistaConta que exiba o nome dos correntistas, o numero da conta corrente e o saldo na conta corrente, 
--apenas daqueles que possuam mais de R$ 500000,00 na conta corrente. Utilizar essa view para exibir os dados ordenados por saldo da conta (do maior saldo para o menor saldo).
CREATE VIEW vwCorrentistaConta AS
	SELECT codCorrentista, nomeCorrentista AS 'Nome do Correntista', numeroCC AS 'Número da conta', saldoCC AS 'Saldo Corrente' FROM tbCorrentista
		INNER JOIN tbContaCorrente
			ON tbCorrentista.codCorrentista = tbContaCorrente.codCorrentista
				WHERE saldoCC > 500000.00;

SELECT * FROM vwCorrentistaConta
	ORDER BY [Saldo Corrente] DESC;

-- ========== SELECT das Views =======================

	SELECT * FROM vwSaldoTotal;

	SELECT * FROM vwProjecaoSaldoPoupanca;

	SELECT * FROM vwExibeCorrentista;

	SELECT * FROM vwCorrentistaConta;
