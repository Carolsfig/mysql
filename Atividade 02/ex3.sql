CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    nascimento DATE,
	nota DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, nascimento, nota) 
VALUES ("Camila",12, "2013-12-15", 8.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Carlos",12, "2013-01-10", 5.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Fernanda",12, "2013-11-11", 10.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Eduardo",12, "2013-09-15", 6.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota) 
VALUES ("Sonia",12, "2013-06-01", 4.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Joao",12, "2013-02-20", 7.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Carol",12, "2013-07-28", 10.00);
INSERT INTO tb_estudantes(nome, idade, nascimento, nota)  
VALUES ("Carla",12, "2013-09-03", 9.00);

SELECT * FROM tb_estudantes WHERE nota > 7.00;
SELECT * FROM tb_estudantes WHERE nota < 7.00;
UPDATE tb_estudantes SET nota = 6.5 WHERE Id = 6;
