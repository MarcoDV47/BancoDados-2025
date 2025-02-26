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