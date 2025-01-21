--Trae todos los registros de la tabla de la izquierda en esta caso la de Users, trae la bola de ven completa de su lado
SELECT * 
FROM Users AS u
LEFT JOIN Licence as l
ON u.User_id = l.User_id