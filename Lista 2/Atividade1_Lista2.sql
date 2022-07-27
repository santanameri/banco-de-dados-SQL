CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR (255)
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
especie VARCHAR (255),
inteligencia INT,
ataque INT,
defesa INT,
mana INT,
arma INT,
personalidade VARCHAR (255),

classe_id BIGINT,

FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

SELECT * FROM tb_classes;
INSERT INTO tb_classes (classe) VALUES ("Mago"), ("Guerreiro"), ("Arqueiro"), ("Paladino"), ("Assassino");

SELECT * FROM tb_personagens;
INSERT INTO tb_personagens (nome, especie, inteligencia, ataque, defesa, mana, arma, personalidade, classe_id) VALUES ("Igoxium", "Elfo", 45, 3400, 295, 1000, 367, "Sociável", 1);
INSERT INTO tb_personagens (nome, especie, inteligencia, ataque, defesa, mana, arma, personalidade, classe_id) VALUES ("Raveneye", "HUmano", 67, 1968, 100, 96, 475, "Sociável", 4);
INSERT INTO tb_personagens (nome, especie, inteligencia, ataque, defesa, mana, arma, personalidade, classe_id) VALUES ("Vorrus", "Wookiee", 100, 4000, 284, 2911, 360, "Habilidoso", 2);
INSERT INTO tb_personagens (nome, especie, inteligencia, ataque, defesa, mana, arma, personalidade, classe_id) VALUES ("Talogeus", "Kaminoano", 20, 149, 94, 340, 196, "Aventureiro", 3);
INSERT INTO tb_personagens (nome, especie, inteligencia, ataque, defesa, mana, arma, personalidade, classe_id) VALUES ("Sandor", "Twilek", 495, 2346, 150, 689, 146, "Habilidoso", 5);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <=2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 4;