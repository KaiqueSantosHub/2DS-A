USE bdComercioLivros;
GO

SELECT * FROM tbAutor;

SELECT * FROM tbEditora;

SELECT * FROM tbLivro;


-- a) Criar uma consulta em que seja possível identificar todo autores pelo nome, inclusive aqueles autores que ainda não tiveram livros cadastrados;	
SELECT nomeAutor Autor, nomeLivro FROM tbAutor
	LEFT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor;
		
-- b) Criar uma consulta em que seja possível identi ficar todas as editoras pelo nome, inclusive aquelas que ainda não publicaram livros
SELECT nomeEditora  Editora, nomeLivro Livro FROM tbEditora
	LEFT JOIN tbLivro
		ON tbEditora.codEditora = tbLivro.codEditora;

-- c) Criar uma consulta em que seja possível identificar todos os livros pelo nome, inclusive  aqueles que não tem autor cadastrado
SELECT nomeLivro 'Título do Livro', nomeAutor 'Nome do Autor' FROM tbLivro
	LEFT JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor;

-- d) Criar uma consulta em que seja possível mostrar todos os livros pelo nome, inclusive aqueles que ainda não foram publicados por nenhuma editora
SELECT nomeLivro 'Nome do Livro', nomeEditora FROM tbLivro
	LEFT JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora;

-- e) Criar uma consulta que exiba todos os nomes de livros ao lado dos nomes das editoras,inclusive as editoras que ainda não fizeram nenhuma publicação e aqueles livros publicados ainda não possuem nenhuma editora relacionada
SELECT nomeLivro  Livro, nomeEditora Editora FROM tbLivro
	FULL JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora;

-- f) A Cia das Letras quer publicar TODOS os livros cadastrados. Criar uma consulta que apresenta o nome do livro ao lado do nome da editora Cia das Letras
SELECT nomeLivro 'Nome do Livro', nomeEditora FROM tbLivro
	LEFT JOIN tbEditora
		ON tbLivro.codEditora = tbEditora.codEditora
	WHERE nomeEditora = 'Cia das Letras';

-- g) Caso todas as editoras queiram publicar todos os livros, criar uma consulta para relacionar todas as editoras com todos os livros
SELECT nomeEditora  Editora, nomeLivro Livro FROM tbEditora
	CROSS JOIN tbLivro;
	 
-- h) Criar uma consulta que apresente apenas os livros que não tem autor cadastrado
SELECT nomeLivro 'Título do Livro', nomeAutor 'Nome do Autor' FROM tbLivro
	LEFT JOIN tbAutor
		ON tbLivro.codAutor = tbAutor.codAutor
	WHERE nomeAutor IS NULL;

-- i) Criar uma consulta que apresente os nomes das editoras que ainda não tem um livro publicado
SELECT nomeEditora  Editora, nomeLivro Livro FROM tbEditora
	LEFT JOIN tbLivro
		ON tbEditora.codEditora = tbLivro.codEditora
	WHERE  codLivro IS NULL;

-- j) Criar uma consulta que apresente apenas os nomes dos autores que ainda não escreveram nenhum livro
SELECT nomeAutor Autor, nomeLivro FROM tbAutor
	LEFT JOIN tbLivro
		ON tbAutor.codAutor = tbLivro.codAutor
	WHERE codLivro IS NULL;
		


