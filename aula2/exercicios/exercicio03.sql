-- Criação do banco de dados Escola_HallTech
CREATE DATABASE Escola_HallTech;

-- Selecionar o banco de dados Escola_HallTech para usar
USE Escola_HallTech;

-- Criação da tabela tb_estudantes com os campos principais
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Chave primária única para identificar cada estudante
    nomeCompleto VARCHAR(255) NOT NULL,   -- Nome completo do estudante
    dataNascimento DATE NOT NULL,         -- Data de nascimento do estudante
    turma VARCHAR(50) NOT NULL,           -- Turma do estudante
    nota DECIMAL(4,2) NOT NULL,           -- Nota do estudante com duas casas decimais
    telefoneContato VARCHAR(20)           -- Telefone de contato do estudante
);

-- Inserção de registros de exemplo na tabela tb_estudantes
INSERT INTO tb_estudantes (nomeCompleto, dataNascimento, turma, nota, telefoneContato)
VALUES 
    ('Ana Clara', '2008-03-15', '8A', 8.5, '99988-1234'),
    ('Carlos Eduardo', '2009-07-22', '7B', 6.8, '98877-4567'),
    ('Mariana Silva', '2010-11-12', '6A', 9.0, '97766-7890'),
    ('João Pedro', '2008-09-05', '8B', 7.2, '96655-0123'),
    ('Beatriz Costa', '2009-01-30', '7A', 5.5, '95544-3456'),
    ('Lucas Almeida', '2010-04-10', '6B', 7.8, '94433-6789'),
    ('Sofia Oliveira', '2008-06-25', '8C', 4.9, '93322-9012'),
    ('Gabriel Santos', '2009-02-17', '7C', 6.5, '92211-2345');

-- Seleção de estudantes com nota maior que 7.0
SELECT 
    nomeCompleto AS Nome_Completo, 
    turma AS Turma, 
    nota AS Nota 
FROM tb_estudantes
WHERE nota > 7.0;

-- Seleção de estudantes com nota menor que 7.0
SELECT 
    nomeCompleto AS Nome_Completo, 
    turma AS Turma, 
    nota AS Nota 
FROM tb_estudantes
WHERE nota < 7.0;

-- Atualização da nota do estudante com id 2 para 7.5
UPDATE tb_estudantes 
SET nota = 7.5 
WHERE id = 2;

-- Seleção completa de todos os registros da tabela tb_estudantes para verificar os dados
SELECT * FROM tb_estudantes;
