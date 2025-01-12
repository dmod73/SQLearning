--Para cambiar los valores de los null y trabajar mas comodo
SELECT FirstName, ISNULL(LastName, 0) Department FROM Professors;
--Con Alias
SELECT FirstName, ISNULL(LastName, 0) AS 'Apellidos NULL = 0', Department FROM Professors;