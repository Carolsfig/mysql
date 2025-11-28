CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
    estoque INT,
    marca VARCHAR(255),
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- Insere 5 registros em categorias
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Hidráulica", "Tubos e conexões");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Elétrica", "Fios e cabos");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Ferramentas", "Manuais e elétricas");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Tintas", "Acabamentos");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Construção", "Cimento e areia");

-- Insere 8 registros em produtos
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Cimento 50kg", 35.00, 100, "Votoran", 5);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Cano PVC", 20.00, 50, "Tigre", 1);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Chuveiro", 120.00, 15, "Lorenzetti", 2);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Furadeira", 250.00, 10, "Bosch", 3);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Lata de Tinta", 90.00, 25, "Suvinil", 4);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Cabo Flexível", 150.00, 40, "Sil", 2);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Chave de Fenda", 15.00, 60, "Tramontina", 3);
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id) VALUES ("Caixa d'água", 400.00, 5, "Fortlev", 1);

-- SELECT com valor maior que R$ 100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- SELECT com valor entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- SELECT utilizando LIKE buscando produtos com a letra C
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- INNER JOIN unindo produtos e categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- INNER JOIN de uma categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Hidráulica";