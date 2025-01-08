-- Criação do banco de dados ECommerce_HallTech
CREATE DATABASE ECommerce_HallTech;

-- Selecionar o banco de dados ECommerce_HallTech para usar
USE ECommerce_HallTech;

-- Criação da tabela tb_produtos com os campos principais
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Chave primária única para identificar cada produto
    nomeProduto VARCHAR(255) NOT NULL,    -- Nome do produto
    descricao TEXT NOT NULL,              -- Descrição do produto
    preco DECIMAL(10,2) NOT NULL,         -- Preço do produto com duas casas decimais
    estoque INT NOT NULL,                 -- Quantidade em estoque do produto
    categoria VARCHAR(255) NOT NULL       -- Categoria do produto
);

-- Inserção de registros de exemplo na tabela tb_produtos
INSERT INTO tb_produtos (nomeProduto, descricao, preco, estoque, categoria)
VALUES 
    ('Notebook Dell', 'Notebook de alto desempenho para trabalho e jogos', 3500.00, 10, 'Eletrônicos'),
    ('Smartphone Samsung Galaxy', 'Smartphone com excelente custo-benefício', 1500.00, 25, 'Eletrônicos'),
    ('Cadeira Gamer', 'Cadeira ergonômica para longas horas de uso', 850.00, 15, 'Móveis'),
    ('Mesa de Escritório', 'Mesa ampla com design moderno', 450.00, 20, 'Móveis'),
    ('Fone de Ouvido Bluetooth', 'Fone com cancelamento de ruído ativo', 650.00, 30, 'Acessórios'),
    ('Monitor LG', 'Monitor 4K Ultra HD', 1200.00, 8, 'Eletrônicos'),
    ('Teclado Mecânico', 'Teclado RGB com switches mecânicos', 400.00, 50, 'Acessórios'),
    ('Mouse Gamer', 'Mouse com alta precisão e iluminação RGB', 250.00, 40, 'Acessórios');

-- Seleção de produtos com preço maior que 500
SELECT 
    nomeProduto AS Nome_Produto, 
    preco AS Preço 
FROM tb_produtos
WHERE preco > 500;

-- Seleção de produtos com preço menor que 500
SELECT 
    nomeProduto AS Nome_Produto, 
    preco AS Preço 
FROM tb_produtos
WHERE preco < 500;

-- Atualização do estoque do produto com id 1 para 8 unidades
UPDATE tb_produtos 
SET estoque = 8 
WHERE id = 1;

-- Seleção completa de todos os registros da tabela tb_produtos para verificar os dados
SELECT * FROM tb_produtos;
