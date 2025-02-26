-- Criar BD
CREATE DATABASE GREENHOUSE;

-- Definir Bd como padrão/utilizável
USE GREENHOUSE;

-- Criar tabela/entidade
CREATE TABLE `PLANTS`(
	`PLANT_NAME` CHAR(30) NOT NULL,
    `SENSOR_VALUE` FLOAT DEFAULT NULL,
    `SENSOR_EVENT` TIMESTAMP NOT NULL 
		DEFAULT current_timestamp
        ON UPDATE current_timestamp,
	PRIMARY KEY `PK_PLANTS` (`PLANT_NAME`)
);

-- Visualizar todas as ocorrências em PLANTS
-- Listar todos os registros de dados
SELECT PLANT_NAME, SENSOR_VALUE FROM PLANTS;

-- Inserir dados na tabela/entidade plants
INSERT INTO PLANTS
	(PLANT_NAME, SENSOR_VALUE) 
    VALUES ('Mary Jane', 0.420);
    
-- Inserir múltiplos registros de uma vez
INSERT INTO PLANTS (PLANT_NAME, SENSOR_VALUE)
VALUES 
	('Cactus', 0.2411), 
    ('Girassol', 0.3112),
    ('Orquídea', 0.4102),
    ('Milho', 0.5566);
    
-- Consulta aplicando filtros
SELECT * from PLANTS
WHERE PLANT_NAME = 'Mary Jane';

-- Filtros Compostos com operadores AND, OR, XOR...
SELECT * FROM PLANTS
WHERE PLANT_NAME <> 'Mary Jane'
AND SENSOR_VALUE < 0.3
AND SENSOR_VALUE > 0.2;