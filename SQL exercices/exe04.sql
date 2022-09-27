CREATE DATABASE db_generation_game_online;

USE db_generation_game_online

CREATE TABLE tb_classes(
ID BIGINT AUTO_INCREMENT,
classe VARCHAR(255) NOT NULL,
PRIMARY KEY(ID));

ALTER TABLE tb_classes ADD equipamento VARCHAR(255);

CREATE TABLE tb_personagens(
ID BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
habilidades VARCHAR(255),
poderAtaque INT NOT NULL,
poderDefesa INT NOT NULL,
classe_id BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY(classe_id) REFERENCES tb_classes(ID)
);

INSERT INTO tb_classes(classe,equipamento)
VALUES("Guerreiro","Espada"),
("Mago","Tronco"),
("Curandeiro","Poção"),
("Arqueiro","Flecha"),
("Defensor","Escudo");

INSERT INTO tb_personagens(nome, habilidades,poderAtaque,poderDefesa,classe_id)
VALUES ("Xperian","Combate",3000,1000,1),
("Trenor","Fogo",6000,500,2),
("Travor","Curar",400,1000,3),
("Ragnor","Acertar alvos",2500,1500,4),
("Atena","Defesa",1000,5000,5),
("Luna","Combate",4000,2040,1),
("Rana","Defesa",2000,3500,5),
("Luno","Combate",3000,2040,1);

SELECT * FROM tb_personagens WHERE poderAtaque>2000;

SELECT * FROM tb_personagens WHERE poderDefesa>1000 AND poderDefesa<2000;

SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id =tb_classes.ID;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.ID WHERE classe="Guerreiro";