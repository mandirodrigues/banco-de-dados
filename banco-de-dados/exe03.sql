CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL,
    status_matricula VARCHAR(20) NOT NULL
);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Maria Flor", "2009-05-10", "8º Ano", 8.5, "Ativo");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Alice Cullen", "2010-08-21", "7º Ano", 6.0, "Ativo");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Marina Duarte", "2008-03-15", "9º Ano", 9.2, "Ativo");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Carlos Lima", "2009-11-30", "8º Ano", 4.5, "Transferido");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Fernanda Almeida", "2010-01-25", "7º Ano", 7.8, "Ativo");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("João Pedro", "2008-09-17", "9º Ano", 6.9, "Ativo");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Vitória Torres", "2009-02-03", "8º Ano", 5.2, "Transferido");

INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota_final, status_matricula)
VALUES ("Thiago Santos", "2010-04-19", "7º Ano", 7.5, "Ativo");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes
WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes
WHERE nota_final < 7.0;

UPDATE tb_estudantes
SET nota_final = 7.2, status_matricula = "Ativo"
WHERE nome = "João Pedro";

SELECT * FROM tb_estudantes 
WHERE nota_final BETWEEN 5.0 AND 7.0;

