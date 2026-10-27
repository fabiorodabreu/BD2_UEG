USE bd2_aula10_recursohumano;

-- 31) Exiba os nomes dos funcionários, retirando os espaços existentes entre nomes e sobrenomes.
SELECT 
    REPLACE(nome, ' ', '') AS nome_sem_espacos 
FROM funcionario;

-- 32) Exiba o caractere padrão ASCII do idFuncionario dos funcionários de Campinas.
-- Nota: A função CHAR() converte um valor numérico em seu respectivo caractere ASCII.
SELECT 
    nome, 
    idFuncionario, 
    CHAR(idFuncionario) AS caractere_ascii 
FROM funcionario 
WHERE cidade = 'Campinas';

-- 33) Mostre o valor do caractere da tabela ASCII referente aos nomes dos funcionários que nasceram após o dia 20.
-- Nota: Como o nome possui múltiplos caracteres, a função ASCII() retorna o código do primeiro caractere da string.
SELECT 
    nome, 
    DAY(dataNascto) AS dia_nascimento, 
    ASCII(nome) AS ascii_primeiro_caractere_nome 
FROM funcionario 
WHERE DAY(dataNascto) > 20;

-- 34) Exiba os quatro primeiros caracteres das cidades dos funcionários sem espaço em branco no final.
SELECT DISTINCT 
    RTRIM(LEFT(cidade, 4)) AS cidade_quatro_primeiros 
FROM funcionario;

-- 35) Exiba os seis últimos caracteres das cidades dos funcionários sem espaço em branco no início.
SELECT DISTINCT 
    LTRIM(RIGHT(cidade, 6)) AS cidade_seis_ultimos 
FROM funcionario;

USE bd2_aula10_recursohumano;

-- 36) Apresente o nome das cidades dos funcionários em letras minúsculas sem repeti-las.
SELECT DISTINCT 
    LOWER(cidade) AS cidade_minuscula 
FROM funcionario;

-- 37) Exiba o maior e o menor salários dos funcionários do estado de SP.
SELECT 
    MAX(p.salario) AS maior_salario, 
    MIN(p.salario) AS menor_salario 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.estado = 'SP';

-- 38) Mostre a soma dos salários dos funcionários que têm o sobrenome Cunha.
SELECT 
    SUM(p.salario) AS soma_salarios_cunha 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.nome LIKE '%Cunha%';

-- 39) Exiba a média dos salários dos funcionários que têm e-mail do "yahoo".
SELECT 
    AVG(p.salario) AS media_salarios_yahoo 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.email LIKE '%yahoo%';

-- 40) Apresente a quantidade de funcionários que têm e-mail que não termina com "br".
SELECT 
    COUNT(*) AS qtd_funcionarios 
FROM funcionario 
WHERE email NOT LIKE '%br';

-- 41) Exiba a menor data de nascimento dos funcionários.
SELECT 
    MIN(dataNascto) AS menor_data_nascimento 
FROM funcionario;

-- 42) Exiba a maior data de nascimento dos funcionários, denominando-a "Maior Nascimento".
SELECT 
    MAX(dataNascto) AS "Maior Nascimento" 
FROM funcionario;

-- 43) Mostre a quantidade de funcionários da cidade de Valinhos, denominando-a "Quantidade de Valinhos".
SELECT 
    COUNT(*) AS "Quantidade de Valinhos" 
FROM funcionario 
WHERE cidade = 'Valinhos';

-- 44) Exiba a soma dos salários dos funcionários da cidade de Campinas.
SELECT 
    SUM(p.salario) AS soma_salarios_campinas 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.cidade = 'Campinas';

-- 45) Mostre a média dos salários dos funcionários da cidade de São Paulo.
SELECT 
    AVG(p.salario) AS media_salarios_sao_paulo 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.cidade = 'São Paulo';

-- 46) Exiba a soma dos salários dos funcionários cujos nomes começam com "Ana".
SELECT 
    SUM(p.salario) AS soma_salarios_ana 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.nome LIKE 'Ana%';

-- 47) Exiba a quantidade de funcionários que apresentam "Luis" no nome.
SELECT 
    COUNT(*) AS qtd_funcionarios 
FROM funcionario 
WHERE nome LIKE '%Luis%';

-- 48) Mostre o menor e o maior salários dos funcionários que moram na "Av. São Paulo".
SELECT 
    MIN(p.salario) AS menor_salario, 
    MAX(p.salario) AS maior_salario 
FROM funcionario f
JOIN profissao p ON f.cargo = p.cargo 
WHERE f.endereco LIKE 'Av. São Paulo%';