CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Tênis Esportivo", "Tênis para corrida, leve e confortável", 459.90, 30, "Moda");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Perfume Importado", "Fragrância Eau de Parfum 100ml", 699.00, 15, "Beleza");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Headset Gamer", "Fone com microfone e cancelamento de ruído", 249.90, 25, "Áudio");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Luminária de Mesa LED", "Luminária com regulagem de intensidade", 119.90, 40, "Iluminação");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Cama Box Casal", "Cama box com colchão de molas", 999.00, 10, "Móveis");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Boneca Barbie Dreamhouse", "Boneca com acessórios e casa temática", 479.00, 25, "Brinquedos");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Aspirador Robô", "Robô aspirador inteligente com sensores", 1250.00, 5, "Eletrodomésticos");

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Bicicleta Aro 29", "Bicicleta de trilha com 21 marchas", 1849.90, 8, "Esporte");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET preco = 449.00
WHERE nome = "Boneca Barbie Dreamhouse";

SELECT * FROM tb_produtos
WHERE nome LIKE "%Barbie%";