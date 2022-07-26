CREATE DATABASE db_loja;
USE db_loja;
CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR (255),
valor DECIMAL (10,2),
quantidade INT,
pagamento_cartao BOOLEAN,
PRIMARY KEY (id)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Batedeira", 489.60, 10, false);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Air fryer", 479.99, 5, true);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Playstation 5", 5299.90, 3, true);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Garrafa Térmica", 71.99, 7, false);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Liquidificador", 199.75, 23, false);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Notebook", 3101.11, 9, true);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Tablet", 1499, 4, false);
INSERT INTO tb_produtos (nome_produto, valor, quantidade, pagamento_cartao) VALUES ("Mouse", 59.90, 3, false);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;
UPDATE tb_produtos SET pagamento_cartao = true WHERE id = 7;