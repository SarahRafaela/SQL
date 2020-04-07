use wm;

-- INSERT ESTADO
INSERT INTO estado
    (nome, sigla, regiao, populacao)
VALUES
    ('Bahia', 'BA', 'Nordeste', 15.34),
    ('Ceará', 'CE', 'Nordeste', 9.02),
    ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
    ('Espírito Santo', 'ES', 'Sudeste', 4.02),
    ('Goiás', 'GO', 'Centro-Oeste', 6.78),
    ('Maranhao', 'MA', 'Nordeste', 7.00),
    ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
    ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
    ('Minas Gerais', 'MG', 'Sudeste', 21.12),
    ('Pará', 'PA', 'Norte', 8.36),
    ('Paraíba', 'PB', 'Nordeste', 4.03),
    ('Parana', 'PR', 'Sul', 11.22),
    ('Pernambuco', 'PE', 'Nordeste', 9.47),
    ('Piauí', 'PI', 'Nordeste', 3.22),
    ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
    ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
    ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
    ('Rondônia', 'RO', 'Norte', 1.81),
    ('Roraima', 'RR', 'Norte', 0.52),
    ('Santa Catarina', 'SC', 'Sul', 7.01),
    ('São Paulo', 'SP', 'Sudeste', 45.10),
    ('Sergipe', 'SE', 'Nordeste', 2.29),
    ('Tocantins', 'TO', 'Norte', 1.55),
    ('Acre', 'AC', 'Norte', 0.83), 
    ('Alagoas', 'AL', 'Nordeste', 3.38),
    ('Amapá', 'AP', 'Norte', 0.8),
    ('Amazonas', 'AM', 'Norte', 4.06);

-- Exemplo de Insert 1
INSERT INTO estado (nome, sigla, regiao, populacao)
    VALUES ('Acre', 'AC', 'Norte', 0.83);

-- Exemplo de Insert 2
INSERT INTO estado
    (nome, sigla, regiao, populacao)
VALUES
    ('Alagoas', 'AL', 'Nordeste', 3.38),
    ('Amapá', 'AP', 'Norte', 0.8),
    ('Amazonas', 'AM', 'Norte', 4.06);
    
-- INSERT CIDADE

INSERT INTO CIDADE
 (NOME, AREA, ESTADO_ID)
 VALUES 
 ('Campinas', 795 ,(SELECT ID FROM ESTADO WHERE SIGLA = 'SP')),
 ('Niterói', 133.9 ,(SELECT ID FROM ESTADO WHERE SIGLA = 'RJ')),
 ('Caruaru', 920.6 ,(SELECT ID FROM ESTADO WHERE SIGLA = 'PE')),
 ('Juazeiro do Norte', 248.2 ,(SELECT ID FROM ESTADO WHERE SIGLA = 'BA'));
 
 
 -- INSERT PREFEITO
 INSERT INTO PREFEITO
 (NOME, CIDADE_ID)
 VALUES 
 ('Rodrigo Neves',2),
 ('Raquel Lyra', 3),
 ('Zenal Coutinho', null);
 
 INSERT INTO PREFEITO
 (NOME, CIDADE_ID)
 VALUES
 ('Rafael Greca', null);
 
 -- INSERT EMPRESAS
 
 INSERT INTO EMPRESA
	(nome, cnpj)
VALUES
('Bradesco', 99998739),('Vale', 123102984023),('Cielo', 298329810);

ALTER TABLE empresa MODIFY cnpj VARCHAR(14);
desc empresa;

INSERT INTO empresa_cidade 
(EMPRESA_ID, CIDADE_ID, SEDE)
VALUES
(1,1,1),
(1,2,0),
(2,1,0);

 