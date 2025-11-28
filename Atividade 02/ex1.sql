CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    nascimento DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, nascimento, salario) 
VALUES ("Camila",40, "2013-12-15", 2600);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Carlos",30, "2013-01-10", 3000);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Fernanda",20, "2013-11-11", 1700);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Eduardo",19, "2013-09-15", 1750);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario) 
VALUES ("Sonia",27, "2013-06-01", 4000);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Joao",45, "2013-02-20", 10000);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Carol",25, "2013-07-28", 7000);
INSERT INTO tb_colaboradores(nome, idade, nascimento, salario)  
VALUES ("Carla",21, "2013-09-03", 1500);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 2700 WHERE Id = 2;

