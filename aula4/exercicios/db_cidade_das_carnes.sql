-- Criação do banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- Utilizar o banco de dados
USE db_cidade_das_carnes;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    validade DATE NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Carnes Bovinas', 'Produtos derivados de gado'),
('Aves', 'Produtos derivados de frango e outras aves'),
('Suínos', 'Produtos derivados de porcos'),
('Frutas', 'Frutas frescas e orgânicas'),
('Legumes', 'Legumes frescos e selecionados');

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, preco, quantidade, validade, id_categoria) VALUES
('Alcatra', 75.50, 10, '2025-02-15', 1),
('Frango Inteiro', 25.00, 20, '2025-01-20', 2),
('Picanha', 150.00, 5, '2025-03-01', 1),
('Costela Suína', 65.00, 8, '2025-01-30', 3),
('Maçã', 10.50, 50, '2025-01-12', 4),
('Tomate', 7.80, 30, '2025-01-10', 5),
('Filé de Frango', 35.00, 15, '2025-01-25', 2),
('Banana', 5.00, 40, '2025-01-15', 4);

-- SELECTs solicitados
-- 1. Produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 2. Produtos com valor no intervalo de R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- 3. Produtos que possuem a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- 4. INNER JOIN para unir tb_produtos com tb_categorias
SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c 
ON p.id_categoria = c.id_categoria;

-- 5. INNER JOIN para trazer apenas produtos de uma categoria específica (exemplo: Aves)
SELECT p.*, c.nome_categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c 
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Aves';

-- Salve este script como um arquivo .SQL e coloque no seu repositório do Github relacionado a Banco de Dados.
