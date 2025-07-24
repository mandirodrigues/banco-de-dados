CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome_personagem VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Bárbaro', 'Unidade inicial com ataque corpo-a-corpo moderado'),
('Arqueira', 'Unidade de ataque à distância, rápida mas frágil'),
('Gigante', 'Unidade tanque com alta defesa e ataque lento'),
('Dragão', 'Unidade aérea poderosa com ataque em área'),
('P.E.K.K.A', 'Unidade pesada com altíssimo dano e defesa');

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Barbarian King', 2800, 2000, 30, 1),
('Archer Queen', 3200, 1500, 35, 2),
('Giant Tank', 1900, 3000, 25, 3),
('Inferno Dragon', 3500, 1800, 28, 4),
('Super P.E.K.K.A', 4000, 2500, 40, 5),
('Sneaky Archer', 2200, 1000, 18, 2),
('Battle Machine', 2600, 2200, 27, 1),
('Baby Dragon', 2300, 1700, 21, 4);

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT p.id_personagem, p.nome_personagem, p.poder_ataque, p.poder_defesa, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

SELECT p.id_personagem, p.nome_personagem, p.poder_ataque, p.poder_defesa, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Dragão';

CREATE TABLE tb_habilidades (
    id_habilidade INT PRIMARY KEY AUTO_INCREMENT,
    nome_habilidade VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_personagem_habilidade (
    id_personagem INT,
    id_habilidade INT,
    FOREIGN KEY (id_personagem) REFERENCES tb_personagens(id_personagem),
    FOREIGN KEY (id_habilidade) REFERENCES tb_habilidades(id_habilidade),
    PRIMARY KEY (id_personagem, id_habilidade)
);