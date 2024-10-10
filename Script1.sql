CREATE FUNCTION FIO_2(@lastname AS VARCHAR(50), @name AS VARCHAR(50), @otch AS VARCHAR(50))
RETURNS VARCHAR(50)
BEGIN
DECLARE @RES AS VARCHAR(50)
SET @RES = @lastname + ' ' + LEFT(@name, 1) + '. ' + LEFT(@otch, 1) + '.'
RETURN @RES
END

SELECT dbo.FIO_2('Bannikov', 'Andrey', 'Genn')