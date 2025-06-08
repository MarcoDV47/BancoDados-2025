/* Selecionar nome dos dependentess com o cpf dos titulares */
SELECT d.nome AS dependente, m.cpf AS cpf_titular, m.nome AS nome
FROM dependentes d
JOIN vinculos v ON d.id = v.`id-dependente`
JOIN matricula m ON v.`id-matricula` = m.id;

/* Obter os endereços dos funcionários */
SELECT m.id AS matricula_id, e.logradouro, e.numero, e.bairro, e.cidade, e.estado
FROM moradores mo
JOIN matricula m ON mo.`id-matricula` = m.id
JOIN endereco e ON mo.`id-endereco` = e.id;

/* Obter os cargos ocupados por funcionário */
SELECT m.id AS matricula_id, c.cargo, co.data_inicio, co.`data_fim`
FROM `cargos_ocupados` co
JOIN matricula m ON co.`id_matricula` = m.id
JOIN cargo c ON co.`id_cargo` = c.id;

/* Obter departamento dos funcionários */
SELECT m.id AS matricula_id, d.nome AS departamento, dl.data_inicio, dl.data_fim
FROM departamento_lotacao dl
JOIN matricula m ON dl.id_matricula = m.id
JOIN departamento d ON dl.id_departamento = d.id;

/* Obter sexo e estado civil dos funcionários */
SELECT m.id, s.sexo, ec.estado
FROM matricula m
JOIN sexo s ON m.id_sexo = s.id
JOIN estado_civil ec ON m.id_estado_civil = ec.id;

/* Obter dados de funcionários que entraram entre 2020 e 2022 */

SELECT m.id, s.sexo, ec.estado, m.data_admissao
FROM matricula m
JOIN sexo s ON m.id_sexo = s.id
JOIN estado_civil ec ON m.id_estado_civil = ec.id
WHERE m.data_admissao BETWEEN '2020-01-01' AND '2022-12-31';

