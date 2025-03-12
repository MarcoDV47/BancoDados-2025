CREATE DATABASE LUMBERVET;

USE LUMBERVET;

CREATE TABLE ANIMAL_FAMILY (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FAMILY VARCHAR(20)
);

CREATE TABLE ANIMAL(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ANIMAL_NAME VARCHAR(255),
    ID_ANIMAL_FAMILY INT NOT NULL,
    DATE_BORN DATETIME NOT NULL,
    COLOR VARCHAR(20),
    WEIGHT FLOAT NOT NULL,
    HEIGHT FLOAT NOT NULL
);

CREATE TABLE VACINE(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	VACINE_NAME VARCHAR(255),
    ID_ANIMAL INT NOT NULL,
    DATE_APLICATION DATETIME NOT NULL
);

ALTER TABLE ANIMAL
ADD FOREIGN KEY (ID_ANIMAL_FAMILY)
REFERENCES ANIMAL_FAMILY(ID);

ALTER TABLE VACINE
ADD FOREIGN KEY (ID_ANIMAL)
REFERENCES ANIMAL(ID);


