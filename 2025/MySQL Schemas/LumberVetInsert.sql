INSERT INTO `ANIMAL` (ID, ANIMAL_NAME, ID_FAMILY_NAME, DATE_BORN, COLOR, WEIGHT, HEIGHT)
VALUES(1, 'Félix', 1, 10/12/2010, 'Purple', 50, 180);

INSERT INTO `ANIMAL` (ID, ANIMAL_NAME, ID_FAMILY_NAME, DATE_BORN, COLOR, WEIGHT, HEIGHT)
VALUES(2, 'Pegasus', 1, 01/01/0000, 'White', 80, 200);

INSERT INTO `ANIMAL` (ID, ANIMAL_NAME, ID_FAMILY_NAME, DATE_BORN, COLOR, WEIGHT, HEIGHT)
VALUES(3, 'Phyton', 2, 19/05/1850, 'Green', 150, 50);

-- ANIMAL FAMILY

INSERT INTO `ANIMAL_FAMILY` (ID, FAMILY)
VALUES(1, 'Equino');

INSERT INTO `ANIMAL_FAMILY` (ID, FAMILY)
VALUES(2, 'Anfibio');

INSERT INTO `ANIMAL_FAMILY` (ID, FAMILY)
VALUES(3, 'Galinaceo');

-- VACINE

INSERT INTO `ANIMAL_FAMILY` (ID, VACINE_NAME, ID_ANIMAL, DATE_APLICATION)
VALUES(1, 'Vacina da Raiva', 1, 12/12/2012);

INSERT INTO `ANIMAL_FAMILY` (ID, VACINE_NAME, ID_ANIMAL, DATE_APLICATION)
VALUES(1, 'Vacina da Raiva', 2, 11/11/2000);

INSERT INTO `ANIMAL_FAMILY` (ID, VACINE_NAME, ID_ANIMAL, DATE_APLICATION)
VALUES(1, 'Vacina da Raiva', 3, 05/05/2005);
