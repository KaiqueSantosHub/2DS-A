USE dbEstoque;
GO

SELECT * FROM tbCliente;

SELECT * FROM tbFornecedor;

SELECT * FROM tbFabricante;

SELECT * FROM tbItensVenda;

SELECT * FROM tbProduto;

SELECT * FROM tbVenda;

-- =============== EXERCÍCIOS ============================

-- a) Listar as descrições dos produtos ao lado do nome dos fabricantes
SELECT descricaoProduto AS Descrição, nomeFabricante AS Fabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.codFabricante = tbFabricante.codFabricante;

-- b) Listar as descrições dos produtos ao lado do nome dos fornecedores
SELECT descricaoProduto AS Descricao, nomeFornecedor AS Fornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor; 

-- c) Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante
SELECT SUM(quantidadeProduto) AS 'Soma dos Produtos', nomeFabricante AS Fabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.codFabricante = tbFabricante.codFabricante
	GROUP BY nomeFabricante;


-- d) Listar o total das vendas ao lado do nome do cliente
SELECT SUM(valorTotalVenda) AS 'Total de Vendas', nomeCliente AS Cliente FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.codCliente = tbCliente.codCliente	
	GROUP BY nomeCliente;

-- e) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT CAST( AVG(valorProduto) AS DECIMAL(10,2)) AS 'Média de Preço (R$)', nomeFornecedor AS Fornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	GROUP BY nomeFornecedor;

-- f) Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética
SELECT SUM(valorTotalVenda) AS 'Total de Vendas', nomeCliente AS Cliente FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.codCliente = tbCliente.codCliente	
	GROUP BY nomeCliente
		ORDER BY nomeCliente;

-- g) Listar a soma dos preços dos produtos agrupados pelo nome do fabricante
SELECT SUM(valorProduto) AS 'Soma dos Preços', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante	
		ON tbProduto.codFabricante = tbFabricante.codFabricante
	GROUP BY nomeFabricante;

-- h) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT CAST( AVG(valorProduto) AS DECIMAL(10,2)) AS 'Média de Preço (R$)', nomeFornecedor AS Fornecedor FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	GROUP BY nomeFornecedor;

-- i) Listar a soma das vendas agrupadas pelo nome do produto
SELECT SUM(subTotalItensVenda) 'Soma dos Preços', descricaoProduto AS Produto FROM tbItensVenda
	INNER JOIN tbProduto
		ON tbItensVenda.codProduto = tbProduto.codProduto
	GROUP BY descricaoProduto;

---j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT SUM(valorTotalVenda) AS 'Total de Vendas no mês de fevereiro de 2014', nomeCliente AS Cliente FROM tbVenda
	INNER JOIN tbCliente
		ON tbVenda.codCliente = tbCliente.codCliente	
	WHERE YEAR(dataVenda) = 2014 AND MONTH(dataVenda) = 02	
	GROUP BY nomeCliente;
		