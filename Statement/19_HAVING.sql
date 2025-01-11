--El Having funciona para hacer limitaciones, se puede utilizar bastante con Group by--
SELECT COUNT(Age) AS 'Cantidad de Personas' FROM Users HAVING COUNT(Age)>3