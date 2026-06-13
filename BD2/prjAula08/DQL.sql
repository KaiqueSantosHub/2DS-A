USE bdLivrariaBrasileira
GO

SELECT * FROM tbLivro;

SELECT * FROM tbAutor;

SELECT * FROM tbEditora;

SELECT * FROM tbGenero;

-- a) O total de livros que começam com a letra P
SELECT COUNT(codLivro) AS 'Total deLivros' FROM tbLivro
WHERE nomeLivro LIKE 'P%';

-- b) O maior número de páginas entre todos os livros
SELECT MAX(numPaginas) AS 'Maior Numero de Paginas' FROM tbLivro;

-- c) O menor número de páginas entre todos os livros
SELECT MIN(numPaginas) AS MenorNumeroPaginas FROM tbLivro;

-- d) A média de páginas entre todos os livros
SELECT AVG(numPaginas) AS 'Media de Pagina ' FROM tbLivro;

-- e) A soma do número de páginas dos livros da editora código 01
SELECT SUM(numPaginas) AS 'Soma de Paginas' FROM tbLivro
WHERE codEditora = 1;

-- f) A soma dos números de páginas dos livros que começam com a letra A
SELECT SUM(numPaginas) AS 'Soma de Paginas' FROM tbLivro
WHERE nomeLivro LIKE 'A%';

-- g) A média dos números de páginas dos livros do autor código 03
SELECT AVG(numPaginas) AS 'Media de Paginas' FROM tbLivro
WHERE codAutor = 3;

-- h) A quantidade de livros da editora de código 04
SELECT COUNT(codLivro) AS 'Quantidade de Livros' FROM tbLivro
WHERE codEditora = 4;

-- i) A média do número de páginas dos livros que tenham a palavra "estrela" em seu nome
SELECT AVG(numPaginas) AS 'Media de Paginas' FROM tbLivro
WHERE nomeLivro LIKE '%estrela%';

-- j) A quantidade de livros que tenham a palavra "poema" em seu nome
SELECT COUNT(codLivro) AS 'Quantidade de Livros' FROM tbLivro
WHERE nomeLivro LIKE '%poema%';

-- k) A quantidade de livros agrupada pelo nome do gênero
SELECT nomeGenero, COUNT(codLivro) AS 'Quantidade de Livros'  FROM tbLivro
	INNER JOIN tbGenero
		ON tbLivro.codGenero = tbGenero.codGenero
	GROUP BY nomeGenero;

-- l) A soma das páginas agrupada pelo nome do autor
SELECT nomeAutor, SUM(numPaginas) AS 'Soma das Paginas'  FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	GROUP BY nomeAutor;

-- m) A média de páginas agrupada pelo nome do autor em ordem alfabética (A a Z)
SELECT nomeAutor, AVG(numPaginas) AS 'Media de Paginas' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	GROUP BY nomeAutor
	ORDER BY nomeAutor;

-- n) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (Z a A)
SELECT nomeEditora, COUNT(codLivro) AS 'Quantidade de Livross'  FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
	GROUP BY nomeEditora
	ORDER BY nomeEditora DESC;

-- o) A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra C
SELECT nomeAutor, SUM(numPaginas) AS 'Soma das Paginas' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor LIKE 'C%'
	GROUP BY nomeAutor;

-- p) A quantidade de livros agrupados pelo nome do autor,
-- cujo nome do autor seja Machado de Assis ou Cora Coralina
-- ou Graciliano Ramos ou Clarice Lispector
SELECT nomeAutor, COUNT(codLivro) AS 'Quantidade de Livros' FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor = 'Machado de Assis'
		OR nomeAutor = 'Cora Coralina'
		OR nomeAutor = 'Graciliano Ramos'
		OR nomeAutor = 'Clarice Lispector'
	GROUP BY nomeAutor;

-- q) A soma das páginas dos livros agrupadas pelo nome da editora
-- cujo número de páginas esteja entre 200 e 500
SELECT nomeEditora, SUM(numPaginas) AS 'Soma de Paginas' FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
	WHERE numPaginas BETWEEN 200 AND 500
	GROUP BY nomeEditora;

-- r) O nome dos livros ao lado do nome das editoras e do nome dos autores
SELECT nomeLivro, nomeEditora, nomeAutor FROM tbLivro
	INNER JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
			INNER JOIN tbAutor
			ON tbLivro.codAutor = tbAutor.codAutor;

-- s) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for "Cia das Letras"
SELECT nomeLivro, nomeAutor
	FROM tbLivro
		INNER JOIN tbAutor
			ON tbLivro.codAutor = tbAutor.codAutor
			INNER JOIN tbEditora
				ON tbLivro.codEditora = tbEditora.codEditora
		WHERE nomeEditora = 'Cia das Letras';

-- t) O nome dos livros ao lado dos nomes dos autores,
-- somente dos livros que não forem do autor "Érico Veríssimo"
SELECT nomeLivro, nomeAutor FROM tbLivro
	INNER JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor != 'Érico Veríssimo';