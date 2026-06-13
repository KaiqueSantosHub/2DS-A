USE bdComercioLivros;
GO

-- AUTORES
INSERT INTO tbAutor (nomeAutor)
VALUES
( 'Machado de Assis'),
('José de Alencar'),
( 'Erico Verissimo'),
( 'José Augusto N. G. Manzano'),
( 'Sergio Furgeri');

-- EDITORAS
INSERT INTO tbEditora (nomeEditora)
VALUES
('Cia das Letras'),
( 'Saraiva'),
( 'Erica'),
('Scipione');

-- LIVROS
INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor, codEditora)
VALUES
('Java 7', '1223232', 322, 4, 4);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor)
VALUES
('PHP - Guia Pratico', '7262722', 423, 4);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor, codEditora)
VALUES
('Dom Casmurro', '1313223', 212, 1, 1);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor)
VALUES
('O alienista', '2323222', 300, 1);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor)
VALUES
('Olhai os lirios do campo', '2232112', 321, 3);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas, codAutor)
VALUES
('Programação de computadores com Java', '3434343', 211, 4);

INSERT INTO tbLivro (nomeLivro, isbn, numPaginas,codEditora)
VALUES
('Programação web com plataforma JAVA', '2323232', 341,  4);




 