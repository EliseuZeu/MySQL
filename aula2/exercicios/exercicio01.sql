-- Criação do banco de dados RH_HallTech
CREATE DATABASE RH_HallTech;

-- Selecionar o banco de dados RH_HallTech para usar
USE rh_halltech;

-- Criação da tabela tb_colaboradores com os campos principais
CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Chave primária única para identificar cada colaborador
    nomeCompleto VARCHAR(255) NOT NULL,   -- Nome completo do colaborador
    anoNascimento DATE NOT NULL,          -- Ano de nascimento do colaborador
    salario DECIMAL(10,2) NOT NULL,       -- Salário do colaborador com duas casas decimais
    senioridade VARCHAR(255) NOT NULL     -- Senioridade do colaborador (ex.: Junior, Pleno, Senior)
);

-- Alteração do campo 'anoNascimento' para 'dataNascimento' e mudança de tipo para VARCHAR
ALTER TABLE tb_colaboradores CHANGE anoNascimento dataNascimento VARCHAR(255);

-- Alteração do campo 'senioridade' para 'cargo'
ALTER TABLE tb_colaboradores CHANGE senioridade cargo VARCHAR(255);

-- Inserção de registros de exemplo na tabela tb_colaboradores
INSERT INTO tb_colaboradores (nomeCompleto, dataNascimento, salario, cargo)
VALUES 
    ('João Silva', '1985-03-15', 5500.00, 'Analista de Sistemas'), -- Registro de um Analista de Sistemas
    ('Maria Oliveira', '1990-07-25', 8500.00, 'Gerente de Projetos'), -- Registro de uma Gerente de Projetos
    ('Carlos Mendes', '1995-11-12', 1900.00, 'Assistente Administrativo'), -- Registro de um Assistente Administrativo
    ('Ana Costa', '1988-09-05', 7000.00, 'Desenvolvedora'), -- Registro de uma Desenvolvedora
    ('Beatriz Almeida', '1992-01-30', 1800.00, 'Designer'); -- Registro de uma Designer

-- Seleção de colaboradores com salário maior que 2000, formatando os valores em estilo brasileiro
SELECT 
    nomeCompleto AS Nome_Completo, 
    CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS Salario 
FROM tb_colaboradores
WHERE salario > 2000;

-- Seleção de colaboradores com salário menor que 2000, formatando os valores em estilo brasileiro
SELECT 
    nomeCompleto AS Nome_Completo, 
    CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS Salario 
FROM tb_colaboradores
WHERE salario < 2000;

-- Atualização do cargo do colaborador com id 1 para "Engenheiro de Dados"
UPDATE tb_colaboradores 
SET cargo = "Engenheiro de Dados" 
WHERE id = 1;

-- Seleção completa de todos os registros da tabela tb_colaboradores para verificar os dados
SELECT * FROM tb_colaboradores;
