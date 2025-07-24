CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    nome_pizza VARCHAR(100) NOT NULL,
    ingredientes TEXT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas clássicas com sabores populares'),
('Especial', 'Combinações exclusivas e ingredientes premium'),
('Vegetariana', 'Opções sem carne, com legumes e vegetais'),
('Doce', 'Pizzas com coberturas doces'),
('Vegana', 'Sem ingredientes de origem animal');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, tamanho, id_categoria) VALUES
('Calabresa', 'Molho, queijo, calabresa, cebola', 44.90, 'Média', 1),
('Quatro Queijos', 'Molho, mussarela, gorgonzola, catupiry, parmesão', 50.00, 'Grande', 1),
('Marguerita', 'Molho, mussarela, tomate, manjericão', 44.00, 'Média', 3),
('Frango com Catupiry', 'Molho, mussarela, frango, catupiry', 52.00, 'Grande', 2),
('Prestígio', 'chocolate, coco ralado, leite condensado', 39.90, 'Média', 4),
('Banana com Canela', 'Banana, açúcar, canela, leite condensado', 46.00, 'Grande', 4),
('Vegana Supreme', 'Molho, queijo vegano, cogumelos, rúcula', 54.90, 'Grande', 5),
('Portuguesa', 'Molho, queijo, presunto, ovos, cebola, azeitona', 49.90, 'Grande', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.id_pizza, p.nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.id_pizza, p.nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';

CREATE TABLE tb_pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100),
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT c.nome_categoria, AVG(p.preco) AS media_preco
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria;


