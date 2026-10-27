-- 1
SELECT 
    nome, 
    dataNascto, 
    DAY(dataNascto) AS dia, 
    MONTH(dataNascto) AS mes, 
    YEAR(dataNascto) AS ano 
FROM funcionario;

-- 2
SELECT DISTINCT 
    MONTHNAME(dataNascto) AS nome_mes 
FROM funcionario 
ORDER BY MONTH(dataNascto);

-- 3
SELECT 
    idFuncionario, 
    nome 
FROM funcionario 
WHERE YEAR(dataNascto) = 1987;

-- 4
SELECT 
    nome, 
    DAY(dataNascto) AS dia_nascimento 
FROM funcionario 
WHERE YEAR(dataNascto) = 1988 
  AND MONTH(dataNascto) = 4;
  
-- 5
SELECT 
    nome, 
    dataNascto AS data_original, 
    DATE_ADD(dataNascto, INTERVAL 2 MONTH) AS data_mais_dois_meses 
FROM funcionario;

-- 6
SELECT 
    nome, 
    TIMESTAMPDIFF(YEAR, dataNascto, CURDATE()) AS idade 
FROM funcionario;

-- 7
SELECT 
    idFuncionario, 
    nome, 
    YEAR(dataNascto) AS ano_nascimento 
FROM funcionario 
WHERE dataNascto BETWEEN '1990-03-01' AND '1990-05-31';

-- 8
SELECT 
    nome, 
    YEAR(dataNascto) AS ano_nascimento 
FROM funcionario 
WHERE estado = 'SP';

-- 9
SELECT 
    nome, 
    dataNascto 
FROM funcionario 
WHERE dataNascto < '1990-01-01';