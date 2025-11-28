CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

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
    qt_produto INT, -- quantidade em estoque
    dt_validade DATE,
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Frutas", "Nacionais e Importadas");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Verduras", "Folhas frescas e orgânicas");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Legumes", "Vegetais variados");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Cogumelos", "Fungos comestíveis");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Processados", "Kits e cestas prontas");


INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Cesta de Orgânicos Grande", 120.00, 10, "2024-11-30", 5);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Cenoura", 8.00, 50, "2024-12-10", 3);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Kit Cogumelos Shitake 1kg", 65.00, 15, "2024-11-28", 4);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Maçã Gala (Cx 10kg)", 55.00, 20, "2024-12-15", 1);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Couve-Flor Orgânica", 12.00, 30, "2024-11-25", 2);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Cebola Roxa", 9.50, 40, "2024-12-20", 3);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Coco Verde", 7.00, 60, "2024-12-05", 1);
INSERT INTO tb_produtos(nome_produto, preco, qt_produto, dt_validade, categoria_id) VALUES ("Cesta de Frutas Exóticas", 140.00, 5, "2024-12-01", 5);

-- SELECT que retorne produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que retorne produtos com valor entre R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- SELECT utilizando LIKE buscando produtos com a letra C
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- INNER JOIN unindo produtos e categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- INNER JOIN onde traga apenas produtos de uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Frutas";