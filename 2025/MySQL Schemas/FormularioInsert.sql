INSERT INTO `estado_civil` (`estado`) VALUES
('Solteiro(a)'),
('Casado(a)'),
('Divorciado(a)'),
('Viúvo(a)'),
('Separado(a)');

INSERT INTO `cargo` (`cargo`) VALUES
('Analista de Sistemas'),
('Gerente de Projetos'),
('Assistente Administrativo'),
('Coordenador de Marketing'),
('Diretor Financeiro');

INSERT INTO `departamento` (`nome`) VALUES
('Tecnologia da Informação'),
('Recursos Humanos'),
('Marketing'),
('Financeiro'),
('Jurídico');

INSERT INTO `sexo` (`sexo`) VALUES
('M'),
('F');

INSERT INTO `endereco` (`logradouro`, `numero`, `bairro`, `cidade`, `estado`) VALUES
('Rua das Flores', 123, 'Centro', 'Videira', 'SC'),
('Avenida Brasil', 456, 'Centro', 'Videira', 'SC'),
('Rua XV de Novembro', 789, 'Centro', 'Videira', 'SC'),
('Rua São João', 101, 'Centro', 'Videira', 'SC'),
('Avenida Paraná', 202, 'Centro', 'Videira', 'SC');

INSERT INTO `dependentes` (`id`, `nome`, `data_nascimento`) VALUES
(1, 'Ana Souza', '2015-03-25'),
(2, 'Carlos Souza', '2018-07-10'),
(3, 'Fernanda Souza', '2020-01-15'),
(4, 'Lucas Souza', '2022-05-30'),
(5, 'Mariana Souza', '2024-09-05');

INSERT INTO `matricula` (`data_nascimento`, `nacionalidade`, `id_sexo`, `id_estado_civil`, `rg`, `cpf`, `data_admissao`) VALUES
('1990-05-15', 'Brasileiro', 1, 1, 123456789, 12345678901, '2022-01-10'),
('1985-08-20', 'Brasileiro', 2, 2, 987654321, 10987654321, '2021-03-15'),
('1992-11-05', 'Brasileiro', 1, 3, 456789123, 23456789012, '2023-06-20'),
('1988-02-10', 'Brasileiro', 2, 4, 321654987, 34567890123, '2020-09-25'),
('1995-09-30', 'Brasileiro', 1, 5, 654321987, 45678901234, '2024-02-05');

INSERT INTO `vinculos` (`id_matricula`, `id_dependente`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 4);

INSERT INTO `moradores` (`id_matricula`, `id_endereco`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO `cargos_ocupados` (`id_matricula`, `id_cargo`, `data_inicio`, `data_fim`) VALUES
(1, 1, '2022-01-10', NULL),
(2, 2, '2021-03-15', NULL),
(3, 3, '2023-06-20', NULL),
(4, 4, '2020-09-25', NULL),
(5, 5, '2024-02-05', NULL);

INSERT INTO `departamento_lotacao` (`id_matricula`, `id_departamento`, `data_inicio`, `data_fim`) VALUES
(1, 1, '2022-01-10', NULL),
(2, 2, '2021-03-15', NULL),
(3, 3, '2023-06-20', NULL),
(4, 4, '2020-09-25', NULL),
(5, 5, '2024-02-05', NULL);
