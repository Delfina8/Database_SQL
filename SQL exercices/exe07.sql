CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

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
categorias_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(categorias_ID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias(categoria,origem)
VALUES("Legumes","Norte"),
("Verduras","Nordeste"),
("Legumes","Centro-Oeste"),
("Verduras","Sudeste"), 
("Legumes","Sul"); 

INSERT INTO tb_produtos(nome,quantidade,valor,categorias_ID)
VALUES ("Feijão",500,13.99,1),
("Alface",200,5.99,2),
("Milho",700,4.99,3),
("Repolho",60,10.95,4),
("Cebola",90,1.99,5),
("Cenoura",100,3.99,1),
("Couve",70,5.99,2),
("Abobrinha",90,4.99,3);

SELECT * FROM tb_produtos WHERE valor>50;

SELECT * FROM tb_produtos WHERE valor>50 and valor<150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_ID = tb_categorias.ID;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_ID = tb_categorias.ID WHERE categoria="Legumes";