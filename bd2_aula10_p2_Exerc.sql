USE bd2_aula06_estacionamentobd;


DELIMITER //

-- a) Exiba o nome de um cliente a partir do seu CPF
DROP PROCEDURE IF EXISTS sp_buscar_cliente_por_cpf //
CREATE PROCEDURE sp_buscar_cliente_por_cpf(IN p_cpf INT)
BEGIN
    SELECT nome 
    FROM Cliente 
    WHERE cpf = p_cpf;
END //

-- b) Exiba a placa e o nome dos donos de todos os veículos
DROP PROCEDURE IF EXISTS sp_listar_veiculos_e_donos //
CREATE PROCEDURE sp_listar_veiculos_e_donos()
BEGIN
    SELECT v.placa, c.nome 
    FROM Veiculo v
    JOIN Cliente c ON v.Cliente_cpf = c.cpf;
END //

-- c) Exiba o CPF e o nome do cliente que possui o veiculo de placa “JJJ-2020”
DROP PROCEDURE IF EXISTS sp_cliente_por_placa //
CREATE PROCEDURE sp_cliente_por_placa(IN p_placa VARCHAR(8))
BEGIN
    SELECT c.cpf, c.nome 
    FROM Veiculo v
    JOIN Cliente c ON v.Cliente_cpf = c.cpf
    WHERE v.placa = p_placa;
END //

-- d) Exiba a placa e a cor do veículo que possui o código de estacionamento 1
DROP PROCEDURE IF EXISTS sp_veiculo_por_codigo_estacionamento //
CREATE PROCEDURE sp_veiculo_por_codigo_estacionamento(IN p_codEstaciona INT)
BEGIN
    SELECT v.placa, v.cor 
    FROM Estaciona e
    JOIN Veiculo v ON e.Veiculo_placa = v.placa
    WHERE e.codEstaciona = p_codEstaciona;
END //

-- e) O modelo de um carro a partir do código do modelo
DROP PROCEDURE IF EXISTS sp_modelo_por_codigo //
CREATE PROCEDURE sp_modelo_por_codigo(IN p_codModelo INT)
BEGIN
    SELECT descricao AS modelo 
    FROM Modelo 
    WHERE codModelo = p_codModelo;
END //


DELIMITER ;