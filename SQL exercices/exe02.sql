CREATE DATABASE e_commerce;
USE e_commerce;

-- criando a tabela
CREATE TABLE tb_products(
id BIGINT AUTO_INCREMENT,
nameProduct VARCHAR(255),
amount INT,
price DECIMAL,
color VARCHAR(255),
origin VARCHAR(255),
PRIMARY KEY (id)
);

-- inserir dados na tabela
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Celular",15,3500.70,"Vermelho","Irlanda");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Televisão",50,1000,"Preta","Brasil");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Geladeira",10,3500.05,"Branca","Japão");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Fogão",60,550.99,"Azul","Angola");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Mesa",15,400,"Branca","Itália");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Panela",30,70.95,"Branca","Brasil");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Colher",15,17.99,"Vermelha","Argentina");
INSERT INTO tb_products(nameProduct,amount,price,color,origin)
VALUE("Notebook",60,2500.85,"Cinza","Brasil");

SELECT * FROM tb_products;
SELECT * FROM tb_products WHERE price>500;
SELECT * FROM tb_products WHERE price<500;

-- atualizar um registro
SET SQL_SAFE_UPDATES=0;
UPDATE tb_products SET color="Cinza" WHERE id=7;

SELECT * FROM tb_products;