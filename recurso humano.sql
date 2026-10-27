-- drop database if exists bd2_aula10_recursohumano;
create database bd2_aula10_recursohumano;

use bd2_aula10_recursohumano;

create table profissao(
   cargo varchar(2) not null primary key,
   salario float,
   descricao varchar(50)
);

create table funcionario(
   idFuncionario int not null primary key,
   nome varchar(50) null,
   endereco varchar(100) null,
   cidade varchar(50) null,
   estado char(2) null,
   email varchar(50) null,
   dataNascto Date null,
   cargo varchar(2) null,
   ativo bit,
   foreign key(cargo) references profissao(cargo)
);

INSERT INTO `bd2_aula10_recursohumano`.`profissao` (`cargo`, `salario`, `descricao`) VALUES ('AI', '1100', 'Inteligência Artificial');
INSERT INTO `bd2_aula10_recursohumano`.`profissao` (`cargo`, `salario`, `descricao`) VALUES ('PC', '1700', 'Programador de Computador');
INSERT INTO `bd2_aula10_recursohumano`.`profissao` (`cargo`, `salario`, `descricao`) VALUES ('TI', '750', 'Tecnologia da Informação');

select * from profissao;

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('1', 'José da Silva', 'Av. São Paulo, 34', 'Itu', 'SP', 'zesilva@yahoo.com.br', '1991-02-24', 'AI', b'0');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('2', 'João de Oliveira', 'Rua da Saúde,138', 'Jundiaí', 'SP', 'jojo@hotmail.com', '1988-01-11', 'TI', b'1');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('3', 'Ana Pimenta', 'Rua da Saúde, 11', 'Jundiaí', 'SP', 'pimentinha@hotmail.com', '1987-01-01', 'TI', b'0');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('4', 'Márcio Lopes', 'Rua Angélica, 143', 'Jundiaí', 'SP', 'mlopes@hotmail.com', '1985-04-10', 'TI', b'0');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('5', 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-08-23', 'PC', b'1');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('6', 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12', 'AI', b'1');

INSERT INTO `bd2_aula10_recursohumano`.`funcionario` (`idFuncionario`, `nome`, `endereco`, `cidade`, `estado`, `email`, `dataNascto`, `cargo`, `ativo`)
VALUES ('7', 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Valinhos', 'SP', 'cregina@gmail.com', '1988-12-04', 'TI', b'0');

select * from funcionario;