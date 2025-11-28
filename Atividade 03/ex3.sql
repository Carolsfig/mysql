CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),
    dt_validade DATE,
    estoque INT,
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- Insere 5 registros em categorias
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Medicamento", "Remédios em geral");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Cosmético", "Beleza e cuidados");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Higiene", "Higiene pessoal");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Vitamina", "Suplementos");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Infantil", "Cuidados para bebês");

-- Insere 8 registros em produtos
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Dipirona", 5.50, "2026-12-01", 100, 1);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Shampoo Clear", 25.90, "2025-05-01", 50, 3);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Creme Facial", 80.00, "2024-10-01", 20, 2);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Vitamina C", 30.00, "2025-01-01", 40, 4);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Fralda G", 65.00, "2026-01-01", 30, 5);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Corretivo", 45.00, "2024-12-01", 15, 2);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Sabonete Líquido", 12.00, "2025-08-01", 60, 3);
INSERT INTO tb_produtos(nome_produto, preco, dt_validade, estoque, categoria_id) VALUES ("Colírio", 18.00, "2025-11-01", 45, 1);

-- SELECT com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT utilizando LIKE buscando produtos com a letra C
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- INNER JOIN unindo produtos e categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- INNER JOIN de uma categoria específica (Ex: Cosméticos)
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Cosmético";