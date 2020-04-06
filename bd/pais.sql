use wm;
-- CRIANDO TABELAS --

CREATE TABLE ESTADO(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 nome VARCHAR(45) NOT NULL,
 sigla VARCHAR(2) NOT NULL,
 regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sul', 'Sudeste'),
 populacao DECIMAL(5,2) NOT NULL,
 PRIMARY KEY(id),
 UNIQUE KEY(nome),
 UNIQUE KEY(sigla)
);
-- 1 pra 1
CREATE TABLE PREFEITO(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 nome VARCHAR(45) NOT NULL,
 cidade_id INT UNSIGNED,
 PRIMARY KEY (id),
 UNIQUE KEY (cidade_id),
 FOREIGN KEY (cidade_id) REFERENCES cidade(id)
);

CREATE TABLE  IF NOT EXISTS CIDADE(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 estado_id INT UNSIGNED NOT NULL,
 area  DECIMAL(10,2),
 PRIMARY KEY (id),
 FOREIGN KEY (estado_id) REFERENCES estado(id)
);

-- DROP TABLE IF EXISTS TESTE;

CREATE TABLE EMPRESA(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 nome VARCHAR(45) NOT NULL,
);