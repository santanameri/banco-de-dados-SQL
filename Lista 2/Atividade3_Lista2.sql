CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (255)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
valor DECIMAL (6,2),
pagamento_cartao BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias (categoria) VALUES ("Comprimido"),
("Xarope"),
("Pomada"),
("Gel"),
("Gota");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos (nome, valor, pagamento_cartao, categoria_id) VALUES ("Dorflex", 6.59, true, 1),
("Otosporin", 13.75, false, 5),
("Hipoglos", 23.09, false, 3),
("Ambroxol", 15.59, true, 2),
("Gelol", 19.33, true, 4);

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor >=5 AND valor <= 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM  tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;