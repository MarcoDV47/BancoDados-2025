CREATE DATABASE SAFEHOUSE;
    
USE SAFEHOUSE;
    
CREATE TABLE IMOVEL(
    `ID` INT NOT NULL,
    `NOME` CHAR(40),
    `DESCRICAO` TEXT,
    `NUMERO_QUARTOS` INT,
    `VALOR_VENDA` FLOAT,
	PRIMARY KEY `PK_ID` (`ID`)
);
    
INSERT INTO imovel 
VALUES 
	(0, 'Barracão', 'Barracão nível 0, melhor que nada', 1, 100),
	(1, 'Casinha', 'Casinha nível 1, um pouco melhor que um barracão', 2, 300),
    (2, 'Casa', 'Casa nível 2, uma boa casa, mas nada de especial', 3, 500),
    (3, 'Apartamento', 'Apartamento nível 3, subindo na vida', 4, 1000),
    (4, 'Duplex', 'Duplex nível 4, dois é melhor que um', 6, 2000),
    (5, 'Triplex', 'Triplex nível 5, é tudo nosso, companheiro', 10, 2000000),
	(6, 'Sala Comercial Centro SP', 'Sala Comercial bem localizado no centro de SP', 2, 10000),
	(7, 'Sala Comercial Centro Joaçaba', 'Sala Comercial bem localizado no centro de Joaçaba', 1, 8000),
	(8, 'Chalé às margens do Rio Negrinho', 'Chalé com localização perfeita para criar memórias inesquecíveis', 4, 5000),
	(9, 'Apartamento no Centro de Videira', 'Apartamento para um casal jovem, sem crianças nem animais', 6, 500000),
	(10, 'Casa de Michael Jackson', 'Casa de praia localizada na Argentina, em uma cidade pacata e nada suspeita', 3, 10000000)