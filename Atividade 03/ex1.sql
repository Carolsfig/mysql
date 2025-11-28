CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    skill VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome_classe, skill) VALUES ("Guerreiro", "Espada");
INSERT INTO tb_classes(nome_classe, skill) VALUES ("Arqueiro", "Arco e Flecha");
INSERT INTO tb_classes(nome_classe, skill) VALUES ("Mago", "Bola de Fogo");
INSERT INTO tb_classes(nome_classe, skill) VALUES ("Ladino", "Furtividade");
INSERT INTO tb_classes(nome_classe, skill) VALUES ("Clérigo", "Cura");

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Aragorn", 3000, 1500, 50, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Legolas", 2500, 1200, 45, 2);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Gandalf", 4000, 3000, 100, 3);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Bilbo", 1500, 1000, 20, 4);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Shadowheart", 1800, 2200, 30, 5);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Conan", 3500, 2000, 60, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Robin Hood", 2100, 1100, 35, 2);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Merlin", 5000, 1000, 99, 3);

-- SELECT com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando LIKE buscando personagens com a letra C
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- INNER JOIN entre personagens e classes
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

-- INNER JOIN buscando personagens de uma classe específica
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.nome_classe = "Arqueiro";