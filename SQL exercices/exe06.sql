CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
ID BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
origem VARCHAR(255) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE tb_produtos(
ID BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
quantidade BIGINT,
valor FLOAT,
descricao VARCHAR(255),
categorias_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(categorias_ID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias(categoria,origem)
VALUES("Cosmético","Brasil"),
("Infantil","Angola"),
("Bebês","Alemanha"),
("Adultos","Itália"),
("Diversos","África do Sul");

INSERT INTO tb_produtos(nome,quantidade,valor,descricao,categorias_ID)
VALUES ("Perfume X",30,70.50,"Perfume das montanhas",1),
("Fraldas",900,50.99,"Fraldas tamanho P",2),
("Chupeta",70,13.99,"Chupetas coloridas",3),
("Dorflex",55,15.55,"Para dores musculares",4),
("Esmalte",30,5.99,"Esmaltes coloridos",1),
("BabyFlex",40,30.57,"Pomada hidratante",3),
("Escova",10,109.99,"Escova inovadora",4),
("Doces",30,15.30,"Doces pequenos",5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>50;

SELECT * FROM tb_produtos WHERE valor>5 and valor<60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_ID=tb_categorias.ID;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_ID=tb_categorias.ID WHERE categoria="Cosmético";
