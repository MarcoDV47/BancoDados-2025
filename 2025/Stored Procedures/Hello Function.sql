CREATE FUNCTION Hello(s CHAR(20))
	RETURNS CHAR(50) DETERMINISTIC
    RETURN CONCAT('Olá, ', s, '!');

SELECT Hello('Marco');

SELECT Hello( DESC_PRODUTO)
FROM produto
WHERE COD_PRODUTO = 2;