*El Case funciona para poder escoger entre diferentes condiciones, si son validas o no y asi poder hacer
una seleccion

SELECT *,
       CASE 
           WHEN Age > 30 THEN 'Estas Viejo'
           ELSE 'Aprieta'
       END AS Prueba
FROM SQLearning.dbo.Users;


SELECT *,
       CASE 
           WHEN Age > 30 THEN 1
           ELSE 0
       END AS 'Es Mayor? (1(si) - 0(No))'
FROM SQLearning.dbo.Users;
