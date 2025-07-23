CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_departamentos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

INSERT INTO tb_departamentos (nome) VALUES ("Jurídico");
INSERT INTO tb_departamentos (nome) VALUES ("Engenharia");
INSERT INTO tb_departamentos (nome) VALUES ("Comercial");
INSERT INTO tb_departamentos (nome) VALUES ("Atendimento ao Cliente");
INSERT INTO tb_departamentos (nome) VALUES ("Suprimentos");

SELECT * FROM tb_departamentos;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_contratacao DATE NOT NULL,
    departamento_id BIGINT,
    FOREIGN KEY (departamento_id) REFERENCES tb_departamentos(id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_contratacao, departamento_id)
VALUES ("Lucas Alves", "Advogado", 4200.00, "2021-06-10", 1);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_contratacao, departamento_id)
VALUES ("Fernanda Cabral", "Engenheira Civil", 5500.00, "2020-11-20", 2);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_contratacao, departamento_id)
VALUES ("Ricardo Guedes", "Consultor de Vendas", 1900.00, "2023-04-05", 3);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_contratacao, departamento_id)
VALUES ("Juliana Castro", "Atendente", 1600.00, "2024-01-15", 4);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_contratacao, departamento_id)
VALUES ("João Pedro Sabadini", "Analista de Suprimentos", 3100.00, "2022-08-12", 5);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores 
SET salario = 2300.00 
WHERE nome = "Juliana Castro";

SELECT * FROM tb_colaboradores
ORDER BY salario DESC;

SELECT * FROM tb_colaboradores
ORDER BY salario ASC;

