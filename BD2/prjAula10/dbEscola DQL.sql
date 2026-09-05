--USE dbEscola;

SELECT * FROM tbTurma;

SELECT * FROM tbCurso;

SELECT * FROM tbAluno;

SELECT * FROM tbMatricula;

--================================= EXERCÍCIOS =====================================================

-- 1. Crie umaf visão “Preço_Baixo” que exiba o código, nome do curso, carga horária e o valor do curso de todos os cursos que tenha preço inferior ao preço médio.
CREATE VIEW	vwPreco_Baixo AS
	SELECT idCurso id, nomeCurso Curso, cargaHorariaCurso 'Carga Horária', valorCurso Preço FROM tbCurso
		WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

SELECT * FROM vwPreco_Baixo;

-- 2. Usando a visão “Preço_Baixo”, mostre todos os cursos ordenados por carga horária.
SELECT Curso, [Carga Horária] FROM vwPreco_Baixo
	ORDER BY [Carga Horária];

-- 3. Crie uma visão “Alunos_Turma” que exiba o curso e a quantidade de alunos por turma.
CREATE VIEW vwAlunos_Turma AS
	SELECT nomeCurso Curso, tbMatricula.idTurma AS 'Turma', COUNT(idAluno) AS 'Quantidade de alunos' FROM tbMatricula
		INNER JOIN tbTurma
			ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso
				ON tbTurma.idCurso = tbCurso.idCurso
	GROUP BY tbMatricula.idTurma, nomeCurso;

SELECT * FROM vwAlunos_Turma;


-- 4. Usando a visão “Alunos_Turma” exiba a turma com maior número de alunos.
 SELECT Turma FROM vwAlunos_Turma
	WHERE [Quantidade de alunos] = (SELECT MAX([Quantidade de alunos]) FROM vwAlunos_Turma);
	
-- 5. Crie uma visão “Turma_Curso que exiba o curso e a quantidade de turmas.
CREATE VIEW vwTurma_Curso AS
	SELECT nomeCurso Curso, COUNT(tbMatricula.idTurma) AS 'Quantidade de turmas' FROM tbMatricula
		INNER JOIN tbTurma
			ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso
				ON tbTurma.idCurso = tbCurso.idCurso
	GROUP BY nomeCurso;

SELECT * FROM vwTurma_Curso;

-- 6. Usando a visão “Turma_Curso exiba o curso com menor número de turmas
SELECT Curso FROM vwTurma_Curso
	WHERE [Quantidade de turmas] = (SELECT MIN([Quantidade de turmas]) FROM vwTurma_Curso);