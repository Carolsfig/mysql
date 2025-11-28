CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    area VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT,
    nome_curso VARCHAR(255),
    preco DECIMAL(8,2),
    duracao_horas INT,
    instrutor VARCHAR(255),
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- Insere 5 registros em categorias
INSERT INTO tb_categorias(nome_categoria, area) VALUES ("Java", "Desenvolvimento Backend");
INSERT INTO tb_categorias(nome_categoria, area) VALUES ("Python", "Ciência de Dados");
INSERT INTO tb_categorias(nome_categoria, area) VALUES ("JavaScript", "Frontend");
INSERT INTO tb_categorias(nome_categoria, area) VALUES ("DevOps", "Infraestrutura");
INSERT INTO tb_categorias(nome_categoria, area) VALUES ("Mobile", "Desenvolvimento Mobile");

-- Insere 8 registros em cursos
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Java Completo", 800.00, 40, "Prof. Jose", 1);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Python para Dados", 700.00, 35, "Prof. Maria", 2);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("React JS", 450.00, 20, "Prof. João", 3);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Docker e K8s", 900.00, 30, "Prof. Ana", 4);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Android Studio", 650.00, 25, "Prof. Carlos", 5);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Spring Boot", 950.00, 50, "Prof. Jose", 1);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("Lógica de Programação", 200.00, 10, "Prof. Pedro", 1);
INSERT INTO tb_cursos(nome_curso, preco, duracao_horas, instrutor, categoria_id) VALUES ("JPA e Hibernate", 600.00, 15, "Prof. Jose", 1);

-- SELECT com valor maior que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- SELECT com valor entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- SELECT utilizando LIKE buscando cursos com a letra J
SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

-- INNER JOIN unindo cursos e categorias
SELECT * FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;

-- INNER JOIN de uma categoria específica
SELECT * FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = "Java";