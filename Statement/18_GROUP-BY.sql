/*GROUP BY funciona para agrupar registros, en este ejmplo vemos como lo utilizamos para que nos 
muestre todos los registos de Age agrupados por cada MAX sin repetirlo, si hubieran numeros repetidos el solo tomaara 1 */
SELECT MAX(Age) FROM Users GROUP BY Age
--Implementando el COUNT *Importante*
SELECT COUNT(Age) AS 'Cantidad de Personas', Age AS 'Edad'  FROM Users GROUP BY Age

SELECT COUNT(Age) AS 'Cantidad de Personas', Age AS 'Edad'  FROM Users GROUP BY Age ORDER BY Age ASC

SELECT COUNT(Age) AS 'Cantidad de Personas', Age AS 'Edad'  
FROM Users 
WHERE Age > 24 
GROUP BY Age
ORDER BY Age ASC