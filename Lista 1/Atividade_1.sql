CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaborador (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
funcao VARCHAR (255),
salario DECIMAL (8,2),
ferias BOOLEAN,
PRIMARY KEY (id)
);

SELECT * FROM tb_colaborador;
INSERT INTO tb_colaborador (nome, funcao, salario, ferias) VALUES ("Maria Lourenço", "Enfermeira", 4560, false);
INSERT INTO tb_colaborador (nome, funcao, salario, ferias) VALUES ("Elias Júnior", "Programador", 5000, true);
INSERT INTO tb_colaborador (nome, funcao, salario, ferias) VALUES ("Tatiana Silva", "Desenvolvedora", 3500, false);
INSERT INTO tb_colaborador (nome, funcao, salario, ferias) VALUES ("Ivo José", "Vaqueiro", 4200, true);
INSERT INTO tb_colaborador (nome, funcao, salario, ferias) VALUES ("Elias Sales", "Torneiro Mecânico", 3200, true);

SELECT * FROM tb_colaborador WHERE salario > 2000;
SELECT * FROM tb_colaborador WHERE salario < 2000;
UPDATE tb_colaborador SET ferias = false WHERE id = 4;