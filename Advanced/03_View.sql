Create View v_usersLicence AS
Select Name, Age, l.LicenceNum 
From Users as u
Join Licence as l
ON u.User_id = l.User_id
WHERE Age >= 25;

--como ver todas las vistas
SELECT TABLE_NAME AS ViewName
FROM INFORMATION_SCHEMA.VIEWS;

--Para borrarlo
Drop Trigger Users