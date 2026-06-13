USE bdLivrariaBrasileira;
GO

INSERT INTO tbAutor (nomeAutor)
VALUES
    ('Machado de Assis'),
    ('Cora Coralina'),
    ('Graciliano Ramos'),
    ('Clarice Lispector'),
    ('Erico Verissimo'),
    ('Carlos Drummond de Andrade'),
    ('Paulo Coelho');

INSERT INTO tbGenero (nomeGenero)
VALUES
    ('Romance'),
    ('Poesia'),
    ('Drama'),
    ('Cronica'),
    ('Fantasia');

INSERT INTO tbEditora (nomeEditora)
VALUES
    ('Companhia das Letras'),
    ('Record'),
    ('Saraiva'),
    ('Cia das Letras');

INSERT INTO tbLivro (nomeLivro, numPaginas,codGenero, codAutor, codEditora)
VALUES
    ('Poemas da Infancia', 180, 2, 6, 1),
    ('Poesia Completa', 350, 2, 6, 2),
    ('A Hora da Estrela', 120, 1, 4, 1),
    ('Memorias Postumas', 220, 1, 1, 3),
    ('Vidas Secas', 200, 3, 3, 2),
    ('O Alquimista', 250, 5, 7, 4),
    ('Poema das Sete Faces', 90, 2, 6, 1),
    ('Grande Sertao', 500, 1, 5, 3),
    ('Estrela da Vida Inteira', 300, 2, 2, 2),
    ('Paisagem Brasileira', 275, 4, 5, 4),
    ('Pedra no Caminho', 210, 2, 2, 1),
    ('Perto do Coracao Selvagem', 320, 1, 4, 2);