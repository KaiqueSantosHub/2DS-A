USE dbRecursosHumanos;
GO

-- SELECT tbFuncionario
SELECT * FROM tbFuncionario;

-- SELECT tbDependente
SELECT * FROM tbDependente;

-- SELECT tbDepartamento
SELECT * FROM tbDepartamento

----------------------------- EXERCÍCIOS ---------------------------------

-- a) O total de dependentes do funcionário de código 01
SELECT COUNT(idDependente) as 'Total de Dependentes do Funcionário 01' FROM tbDependente
WHERE idFuncionario = 01;

-- b) A média dos salários agrupados pelo código do departamento excluindo o departamento de código 10
SELECT idDepartamento, AVG(salarioFuncionario) as 'Média dos Salários por Departamento' FROM tbFuncionario
WHERE idDepartamento <> 10
GROUP BY idDepartamento;

-- c) A soma dos salários do departamento de código 09
SELECT SUM(salarioFuncionario) as 'Soma dos salários do Departamento de Compras' FROM tbFuncionario
WHERE idDepartamento = 09;

-- d) A quantidade de dependentes do sexo masculino
SELECT COUNT(sexoDependente) as ' Quantidade de Dependentes do sexo masculino' FROM tbDependente
WHERE sexoDependente = 'Masculino'

-- e) A quantidade de dependentes que nasceram no ano de 2000
SELECT COUNT(idDependente) as 'Quantidade de Dependentes nascidos nos anos 2000' FROM tbDependente
WHERE YEAR(dataNascimentoDependente) = 2000;

-- f) A quantidade de funcionários do departamento 03
SELECT COUNT(idFuncionario) as 'Quantidades de Funcionário do Departamento de Finanças' FROM tbFuncionario
WHERE idDepartamento = 03;

-- g) A média dos salários do departamento 02
SELECT AVG(salarioFuncionario) as 'Média dos salários do Departamento de RH ' FROM tbFuncionario
WHERE idDepartamento = 02;

-- h) O total de dependentes nascidos em junho que sejam do funcionário 01 ou 02
SELECT COUNT(idDependente) as 'Quantidades de Dependentes nascidos em Junho' FROM tbDependente
WHERE (idFuncionario = 01 OR idFuncionario = 02)
AND MONTH(dataNascimentoDependente) = 6;

-- i) O total de dependentes do sexo masculino que tenham nascido antes do ano 2000
SELECT COUNT(idDependente) as 'Quantidade de Dependentes masculinos nascidos antes dos anos 2000' FROM tbDependente
WHERE YEAR(dataNascimentoDependente) <  2000
AND sexoDependente = 'Masculino';

-- j) A quantidade de dependentes do sexo feminino e que não sejam do funcionário de código 02
SELECT COUNT(idDependente) as 'Quantidades de Dependendes do sexo feminino' FROM tbDependente
WHERE sexoDependente = 'Feminino'
AND idFuncionario <> 2;

-- k) A quantidade de dependentes do funcionário de código 3
SELECT COUNT(idDependente) as 'Quantidade de Dependentes do funcionário de código 3' FROM tbDependente
WHERE idFuncionario = 03;

-- l) A soma dos salários agrupados pelo código do departamento
SELECT idDepartamento, SUM(salarioFuncionario) as 'Soma dos Salários por Departamento' FROM tbFuncionario
GROUP BY idDepartamento;

-- m) A média de salários agrupados pelo código do departamento
SELECT idDepartamento,AVG(salarioFuncionario) as 'Média dos Salários por Departamento' FROM tbFuncionario
GROUP BY idDepartamento;

-- n) A quantidade de funcionários do departamento de 03
SELECT COUNT(idFuncionario) as 'Quantidades de Funcionário do Departamento de Finanças' FROM tbFuncionario
WHERE idDepartamento = 03;

-- o) O nome dos funcionários (em ordem alfabética) e a data de nascimento dos funcionários no formato DD/MM/AAAA
SELECT nomeFuncionario Nome, FORMAT(dataNascimentoFuncionario, 'dd/MM/yyyy') as 'Data de Nascimento' FROM tbFuncionario
ORDER BY nomeFuncionario;

-- p) O maior salário
SELECT MAX(salarioFuncionario) as 'Maior salário' FROM tbFuncionario;

,
