CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
ID BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
PRIMARY KEY (ID));


CREATE TABLE tb_pizzas (
ID BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
ingredientes VARCHAR(255),
quantidade INT,
valor FLOAT,
categoria_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY(categoria_ID) REFERENCES tb_categorias(ID)
);

INSERT INTO tb_categorias(tipo,borda)
VALUES ("doce","doce"),
("salgada","salgada"),
("salgada","sem borda"),
("doce","sem borda"),
("salgada","doce");

INSERT INTO tb_pizzas(nome,ingredientes,quantidade,valor,categoria_ID)
VALUES("Calabresa","Mussarela e calabresa",40,75.90,2),
("Calabresa","Mussarela e calabresa",40,55.00,3),
("Atum","Mussarela e atum",30,80.00,5),
("Atum","Mussarela e atum",40,30.99,3),
("Baiana","Mussarela e calabresa moída",20,99.99,5),
("Chocolate ao leite","Mussarela e chocolate",40,45.90,1),
("Chocolate ao leite","Mussarela e chocolate",40,35.90,4),
("Doce de leite","Mussarela e doce de leite",15,78.90,1);

SELECT * FROM tb_pizzas WHERE valor>45.00;
SELECT * FROM tb_pizzas WHERE valor>50.00 AND valor<100;

SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_ID = tb_categorias.ID;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_ID = tb_categorias.ID WHERE tipo="doce";