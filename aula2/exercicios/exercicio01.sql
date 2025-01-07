CREATE DATABASE RH_HallTech;

USE rh_halltech;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment PRIMARY KEY,
    nomeCompleto varchar(255) NOT NULL,
    anoNascimento date NOT NULL,
    salario decimal(10,2) NOT NULL,
    senioridade varchar(255) NOT NULL
);

ALTER TABLE tb_colaboradores change anoNascimento dataNascimento varchar(255);
ALTER TABLE tb_colaboradores change senioridade cargo varchar(255);

INSERT INTO tb_colaboradores (nomeCompleto, dataNascimento, salario, cargo)
VALUES 
    ('João Silva', '1985-03-15', 5500.00, 'Analista de Sistemas'),
    ('Maria Oliveira', '1990-07-25', 8500.00, 'Gerente de Projetos'),
    ('Carlos Mendes', '1995-11-12', 1900.00, 'Assistente Administrativo'),
    ('Ana Costa', '1988-09-05', 7000.00, 'Desenvolvedora'),
    ('Beatriz Almeida', '1992-01-30', 1800.00, 'Designer');
    
SELECT 
    nomeCompleto AS Nome_Completo, 
    CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS Salario 
FROM tb_colaboradores
WHERE salario > 2000;

SELECT 
    nomeCompleto AS Nome_Completo, 
    CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS Salario 
FROM tb_colaboradores
WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = "Engenheiro de Dados" WHERE id = 1;
    
SELECT * FROM tb_colaboradores;

