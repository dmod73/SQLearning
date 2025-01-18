--El inner join funciona para selecciona la interseccion en 2 tabla, busca donde coincide--
SELECT *
FROM Users
INNER JOIN Licence
ON Users.User_id = Licence.User_id;

--Join con 2 tablas

SELECT l.LicenceNum, u.Name, u.Age , u.LastName
FROM SQLearning.dbo.Licence as l
INNER JOIN Users as u
ON u.User_id = l.User_id;




SELECT l.LicenceNum, u.Name, u.Age , u.LastName
FROM SQLearning.dbo.Licence as l
INNER JOIN Users as u
ON u.User_id = l.User_id
Order by LicenceNum ASC;


Select u.Name , u.LastName, u.Age, u.Phone, c.companyName
From SQLearning.dbo.Users as u
Join companies as c
on u.company_id = c.company_id;


--Join con 3 tablas
Select * 
From UsersLenguaje
Join Users 
ON UsersLenguaje.User_id = Users.User_id 
Join lenguaje 
ON  UsersLenguaje.Lenguaje_id = lenguaje.lenguaje_id



Select u.Name, u.LastName, u.Mail, l.lenguajeName
From UsersLenguaje
Join Users as u ON UsersLenguaje.User_id = u.User_id 
Join lenguaje as l ON  UsersLenguaje.Lenguaje_id = l.lenguaje_id

