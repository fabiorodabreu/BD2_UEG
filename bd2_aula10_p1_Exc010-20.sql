-- 10) Exiba cidade e estado dos funcionários que nasceram após 1989, sem repetir os dados.
SELECT DISTINCT 
    cidade, 
    estado 
FROM funcionario 
WHERE dataNascto > '1989-12-31';

-- 11) Exiba todos os dados dos funcionários que nasceram nos anos de 1988 e 1990.
SELECT * 
FROM funcionario 
WHERE YEAR(dataNascto) IN (1988, 1990);

-- 12) Exiba nome dos funcionários que nasceram no dia 30
SELECT 
    nome 
FROM funcionario 
WHERE DAY(dataNascto) = 30;

-- 13) Exiba o nome e o salário dos funcionários, acrescentando o valor do "Pi" aos salários.
SELECT 
    f.nome, 
    p.salario + PI() AS salario_com_pi 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo;

-- 14) Mostre a raiz quadrada do dia de nascimento dos funcionários de Campinas.
SELECT 
    nome, 
    SQRT(DAY(dataNascto)) AS raiz_quadrada_dia 
FROM funcionario 
WHERE cidade = 'Campinas';

-- 15) Exiba o logaritmo (função LOG/LOG10) do mês de nascimento dos funcionários que nasceram em 1990.
-- Nota: Utiliza-se LOG ou LOG10 para cálculo logarítmico padrão em SQL.
SELECT 
    nome, 
    LOG(MONTH(dataNascto)) AS logaritmo_mes 
FROM funcionario 
WHERE YEAR(dataNascto) = 1990;

-- 16) Exiba nome e dia de nascimento dos funcionários para os quais a potência do dia de nascimento elevado a 3 seja maior ou igual a 1000.
SELECT 
    nome, 
    DAY(dataNascto) AS dia_nascimento 
FROM funcionario 
WHERE POW(DAY(dataNascto), 3) >= 1000;

-- 17) Exiba o salário dos funcionários acrescido de 15,5%, arredondando para sem casa decimal e maiores que 1000.
SELECT 
    f.nome, 
    ROUND(p.salario * 1.155, 0) AS salario_reajustado 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo
WHERE (p.salario * 1.155) > 1000;

-- 18) Mostre o valor absoluto de 1500 menos o salário dos funcionários.
SELECT 
    f.nome, 
    ABS(1500 - p.salario) AS diferenca_absoluta 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo;

-- 19) Exiba o idFuncionario e a raiz quadrada do idFuncionario dos funcionários que nasceram antes de abril de 1989.
SELECT 
    idFuncionario, 
    SQRT(idFuncionario) AS raiz_id 
FROM funcionario 
WHERE dataNascto < '1989-04-01';

-- 20) Exiba o nome e o salário dos funcionários com desconto de 35%, arredondando para uma casa decimal.
SELECT 
    f.nome, 
    ROUND(p.salario * 0.65, 1) AS salario_com_desconto 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo;