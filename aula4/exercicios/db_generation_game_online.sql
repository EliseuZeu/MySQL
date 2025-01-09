-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

-- Uso do banco de dados criado
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome_classe VARCHAR(50) NOT NULL,        -- Nome da classe
    descricao TEXT NOT NULL                  -- Descrição da classe
);

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome_personagem VARCHAR(50) NOT NULL,         -- Nome do personagem
    poder_ataque INT NOT NULL,                    -- Poder de ataque
    poder_defesa INT NOT NULL,                    -- Poder de defesa
    nivel INT NOT NULL,                           -- Nível do personagem
    fk_classe INT NOT NULL,                       -- Chave estrangeira
    FOREIGN KEY (fk_classe) REFERENCES tb_classes(id_classe)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (nome_classe, descricao)
VALUES 
    ('Guerreiro', 'Especialista em combate corpo a corpo com alta defesa.'),
    ('Mago', 'Especialista em magia destrutiva com poder de ataque elevado.'),
    ('Arqueiro', 'Especialista em ataques de longa distância e precisão.'),
    ('Ladino', 'Ágil e furtivo, com ataques rápidos e críticos.'),
    ('Clérigo', 'Focado em cura e suporte com habilidades defensivas.');

-- Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, nivel, fk_classe)
VALUES 
    ('Selina', 3500, 1200, 15, 2), -- Classe Mago
    ('Oglo', 2000, 2500, 20, 1),  -- Classe Guerreiro
    ('Earlyn', 2800, 1800, 18, 3), -- Classe Arqueiro
    ('Fearly', 3000, 2000, 22, 2), -- Classe Mago
    ('Drakon', 2200, 1000, 16, 4), -- Classe Ladino
    ('Eliora', 1500, 1700, 10, 5), -- Classe Clérigo
    ('Clynt', 3100, 900, 19, 1),  -- Classe Guerreiro
    ('Pixie', 1700, 1300, 12, 4); -- Classe Ladino

-- Consulta 1: Retorna personagens com poder de ataque maior que 2000
SELECT * 
FROM tb_personagens
WHERE poder_ataque > 2000;

-- Consulta 2: Retorna personagens com poder de defesa entre 1000 e 2000
SELECT * 
FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Consulta 3: Retorna personagens cujo nome contenha a letra 'C'
SELECT * 
FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

-- Consulta 4: INNER JOIN entre tb_personagens e tb_classes
SELECT 
    p.nome_personagem AS Personagem,
    c.nome_classe AS Classe,
    p.poder_ataque AS Poder_Ataque,
    p.poder_defesa AS Poder_Defesa
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.fk_classe = c.id_classe;

-- Consulta 5: INNER JOIN para retornar personagens de uma classe específica (Exemplo: Arqueiros)
SELECT 
    p.nome_personagem AS Personagem,
    c.nome_classe AS Classe,
    p.poder_ataque AS Poder_Ataque,
    p.poder_defesa AS Poder_Defesa
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.fk_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';
