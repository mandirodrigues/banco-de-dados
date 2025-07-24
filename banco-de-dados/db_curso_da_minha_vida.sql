CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    area_conhecimento VARCHAR(100) NOT NULL,
    nivel_dificuldade ENUM('Iniciante', 'Intermediário', 'Avançado') NOT NULL
);

CREATE TABLE tb_cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    carga_horaria INT NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, area_conhecimento, nivel_dificuldade) VALUES
('Python', 'Linguagens de Programação', 'Intermediário'),
('Fotografia Digital', 'Artes Visuais', 'Iniciante'),
('Segurança da Informação', 'Tecnologia', 'Avançado'),
('Negócios e Empreendedorismo', 'Administração', 'Intermediário'),
('UX/UI Design', 'Design e Experiência do Usuário', 'Iniciante');

INSERT INTO tb_cursos (nome_curso, descricao, carga_horaria, preco, id_categoria) VALUES
('Python para Análise de Dados', 'Aprenda a usar Python em projetos de dados.', 45, 550.00, 1),
('Python Web com Flask', 'Desenvolvimento de APIs com Flask.', 40, 780.00, 1),
('Fundamentos da Fotografia', 'Conhecimentos básicos sobre fotografia.', 25, 299.90, 2),
('Edição de Fotos com Lightroom', 'Tratamento e edição de imagens profissionais.', 30, 380.00, 2),
('Cibersegurança Profissional', 'Proteção de sistemas e redes.', 60, 890.00, 3),
('Empreendedor Digital', 'Como criar negócios online do zero.', 35, 620.00, 4),
('Design Thinking na Prática', 'Metodologia criativa para resolução de problemas.', 40, 430.00, 5),
('UX Research Essencial', 'Pesquisa e testes com usuários.', 32, 510.00, 5);

SELECT * FROM tb_cursos
WHERE preco > 500.00;

SELECT * FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos
WHERE nome_curso LIKE '%J%';

SELECT c.id_curso, c.nome_curso, c.preco, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

SELECT c.id_curso, c.nome_curso, c.preco, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Python';

ALTER TABLE tb_cursos
ADD status ENUM('ativo', 'inativo') DEFAULT 'ativo';

SELECT * FROM tb_cursos ORDER BY preco ASC LIMIT 3;

