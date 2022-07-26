CREATE DATABASE db_escolas;
USE db_escolas;
CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR (255),
idade INT,
genero VARCHAR (255),
turma INT,
nota INT,
aprovacao BOOLEAN,
PRIMARY KEY (id)
);
SELECT * FROM tb_alunos;
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Maria", 9, "Feminino", 1, 7, true);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Elias", 7, "Masculino", 2, 9, true);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("João", 10, "Masculino", 2, 5, false);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Maria", 7, "Feminino", 1, 10, true);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Roberta", 6, "Feminino", 3, 6, false);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Paulo", 8, "Masculino", 4, 5, false);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Laura", 10, "Feminino", 3, 9, true);
INSERT INTO tb_alunos (nome_aluno, idade, genero, turma, nota, aprovacao) VALUES ("Priscila", 7, "Feminino", 4, 10, true);

SELECT * FROM tb_alunos WHERE nota < 7;
SELECT * FROM tb_alunos WHERE nota > 7;
UPDATE tb_alunos SET aprovacao = true WHERE id = 5;
