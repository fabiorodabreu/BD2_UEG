USE bd2_aula10_recursohumano;

-- 21) Apresente o logaritmo do idFuncionario dos funcionários.
SELECT 
    idFuncionario, 
    LOG(idFuncionario) AS logaritmo_id 
FROM funcionario;

-- 22) Exiba a raiz quadrada do idFuncionario dos funcionários.
SELECT 
    idFuncionario, 
    SQRT(idFuncionario) AS raiz_quadrada_id 
FROM funcionario;

-- 23) Apresente o cálculo da potência do idFuncionario dos funcionários elevado a 2.
SELECT 
    idFuncionario, 
    POW(idFuncionario, 2) AS id_elevado_a_2 
FROM funcionario;

-- 24) Exiba o valor absoluto do cálculo do idFuncionario dos funcionários menos 10 em ordem decrescente.
SELECT 
    idFuncionario, 
    ABS(idFuncionario - 10) AS valor_absoluto 
FROM funcionario 
ORDER BY valor_absoluto DESC;

-- 25) Exiba o nome dos funcionários em letras maiúsculas.
SELECT 
    UPPER(nome) AS nome_maiusculo 
FROM funcionario;

-- 26) Exiba o nome do mês da data de nascimento dos funcionários, bem como a quantidade de caracteres de cada um desses meses sem repeti-las.
SELECT DISTINCT 
    MONTHNAME(dataNascto) AS nome_mes, 
    LENGTH(MONTHNAME(dataNascto)) AS quantidade_caracteres 
FROM funcionario;

-- 27) Apresente o nome dos funcionários, substituindo os espaços existentes entre nome e sobrenome por - (traço).
SELECT 
    REPLACE(nome, ' ', '-') AS nome_com_traco 
FROM funcionario;

-- 28) Exiba as três primeiras e as três últimas letras dos nomes dos funcionários.
SELECT 
    nome, 
    LEFT(nome, 3) AS tres_primeiras, 
    RIGHT(nome, 3) AS tres_ultimas 
FROM funcionario;

-- 29) Mostre a raiz quadrada do tamanho dos nomes dos funcionários.
SELECT 
    nome, 
    SQRT(CHAR_LENGTH(nome)) AS raiz_tamanho_nome 
FROM funcionario;

-- 30) Exiba as cidades dos funcionários a partir da terceira posição com cinco posições, sem repeti-las.
SELECT DISTINCT 
    SUBSTRING(cidade, 3, 5) AS cidade_trecho 
FROM funcionario;