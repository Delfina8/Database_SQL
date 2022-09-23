-- criar base de dados
CREATE DATABASE DB_SERVICO_RH;

-- usar a tabela
USE DB_SERVICO_RH;

-- Criar tabela
CREATE TABLE TB_FUNCIONARIOS (
id BIGINT AUTO_INCREMENT, -- id é o identificador único
nome VARCHAR(1000),
idade INT,
funcao CHAR(255),
salario INT,
bairro CHAR(255),
PRIMARY KEY(id)
);

-- inserir dados na tabela
INSERT INTO tb_funcionarios(nome, idade, funcao,salario,bairro)
VALUES ("Isabella",20,"Deva",1000,"Jardim");
INSERT INTO tb_funcionarios(nome, idade, funcao,salario,bairro)
VALUES ("Nayara",30,"Deva",2000,"Flores");
INSERT INTO tb_funcionarios(nome, idade, funcao,salario,bairro)
VALUES ("Juliano",25,"Dev",1500,"Liberdade");
INSERT INTO tb_funcionarios(nome, idade, funcao,salario,bairro)
VALUES ("António",26,"Tesoureiro",2000,"Centro");
INSERT INTO tb_funcionarios(nome, idade, funcao,salario,bairro)
VALUES ("Carlos",40,"Secretário",1600,"Centro");

SELECT * FROM tb_funcionarios WHERE salario>2000;
SELECT * FROM tb_funcionarios WHERE salario<2000;

-- att: Antes de atualizar sempre EXECUTAR esse comando
SET SQL_SAFE_UPDATES=0;

UPDATE tb_funcionarios SET nome="Isabel" WHERE id = 2;
SELECT * FROM tb_funcionarios;