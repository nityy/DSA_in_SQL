/* MS SQL Server */
DECLARE @i int = 1
DECLARE @curr int = 0
DECLARE @myTableVariable TABLE (id INT, value int)
INSERT into @myTableVariable values (0,0),(1,1)

WHILE @i < 20
BEGIN
    SET @i = @i + 1
    SET @curr = (SELECT value from @myTableVariable where id = @i-1) + (SELECT value from @myTableVariable where id = @i-2)
    INSERT INTO @myTableVariable VALUES (@i, @curr)
END

SELECT * from @myTableVariable