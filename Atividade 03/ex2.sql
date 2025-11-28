CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(255),
    preco DECIMAL(5,2),
    ingredientes VARCHAR(255),
    borda_recheada BOOLEAN,
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Salgada Tradicional", "Pizzas clássicas");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Salgada Especial", "Ingredientes premium");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Doce", "Sobremesas");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Vegana", "Sem produtos animais");
INSERT INTO tb_categorias(nome_categoria, descricao) VALUES ("Moda da Casa", "Especiais do Chef");

INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Mussarela", 40.00, "Mussarela e tomate", false, 1);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Calabresa", 35.00, "Calabresa e cebola", false, 1);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Filé Mignon", 60.00, "Filé e catupiry", true, 2);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Brigadeiro", 55.00, "Chocolate e granulado", false, 3);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Romeu e Julieta", 50.00, "Goiabada e queijo", false, 3);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Brócolis e Alho", 48.00, "Brócolis, alho e tofu", false, 4);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Marguerita", 42.00, "Manjericão e tomate", false, 1);
INSERT INTO tb_pizzas(nome_pizza, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Camarão", 90.00, "Camarão e catupiry", true, 2);

-- SELECT com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando LIKE buscando pizzas com a letra M
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

-- INNER JOIN unindo pizzas e categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- INNER JOIN de uma categoria específica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Doce";