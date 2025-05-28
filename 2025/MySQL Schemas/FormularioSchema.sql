CREATE DATABASE FORMULARIO;
USE FORMULARIO;

CREATE TABLE `estado_civil` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`estado` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `cargo` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`cargo` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `departamento` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nome` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `sexo` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`sexo` CHAR(1),
	PRIMARY KEY(`id`)
);

CREATE TABLE `endereco` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`logradouro` VARCHAR(255),
	`numero` INTEGER,
	`bairro` VARCHAR(255),
	`cidade` VARCHAR(255),
	`estado` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `dependentes` (
	`id` INTEGER NOT NULL,
	`nome` VARCHAR(255),
	`data_nascimento` DATETIME,
	PRIMARY KEY(`id`)
);

CREATE TABLE `matricula` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`data_nascimento` DATETIME,
	`nacionalidade` VARCHAR(255),
	`id_sexo` INTEGER,
	`id_estado_civil` INTEGER,
	`rg` INTEGER,
	`cpf` BIGINT,
	`data_admissao` DATETIME,
	PRIMARY KEY(`id`),
    FOREIGN KEY(`id_estado_civil`) REFERENCES `estado_civil`(`id`),
    FOREIGN KEY(`id_sexo`) REFERENCES `sexo`(`id`)
);

CREATE TABLE `vinculos` (
	`id_matricula` INTEGER AUTO_INCREMENT,
	`id_dependente` INTEGER,
    FOREIGN KEY(`id_matricula`) REFERENCES `matricula`(`id`),
    FOREIGN KEY(`id_dependente`) REFERENCES `dependentes`(`id`)
);

CREATE TABLE `moradores` (
	`id_matricula` INTEGER AUTO_INCREMENT UNIQUE,
	`id_endereco` INTEGER,
    FOREIGN KEY(`id_matricula`) REFERENCES `matricula`(`id`),
    FOREIGN KEY(`id_endereco`) REFERENCES `endereco`(`id`)
);

CREATE TABLE `cargos_ocupados` (
	`id_matricula` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_cargo` INTEGER NOT NULL,
	`data_inicio` DATETIME,
	`data_fim` DATETIME,
    FOREIGN KEY(`id_matricula`) REFERENCES `matricula`(`id`),
    FOREIGN KEY(`id_cargo`) REFERENCES `cargo`(`id`)
);

CREATE TABLE `departamento_lotacao` (
	`id_matricula` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_departamento` INTEGER,
	`data_inicio` DATETIME,
	`data_fim` DATETIME,
    FOREIGN KEY(`id_matricula`) REFERENCES `matricula`(`id`),
    FOREIGN KEY(`id_departamento`) REFERENCES `departamento`(`id`)
);