CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (255)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR (255),
valor DECIMAL (6,2),
molho BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias (categoria)  VALUES ("Clássica"),
("Premium"),
("Doce");

SELECT * FROM tb_pizzas;
INSERT INTO tb_pizzas (sabor, valor, molho, categoria_id) VALUES ("Mussarela", 26.50, true, 1),
("Calabresa", 28.90, false, 1),
("Nutella", 32.65, true, 3),
("Pepperoni", 44.80, false, 2),
("Lombo Canadense", 57.40, true, 2),
("Chocolate", 36.55, false, 3);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor >= 50 AND valor <= 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;