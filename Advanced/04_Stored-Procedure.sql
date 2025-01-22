Create Procedure p_UsersAgeLicenceCompany
as
Begin
	Select u.Name, u.LastName, u.Age, l.lenguajeName, c.companyName
	From Users as u
	Join UsersLenguaje as ul
	ON u.User_id = ul.User_id
	Join lenguaje as l
	ON ul.Lenguaje_id = l.lenguaje_id
	Join companies as c
	ON c.company_id = u.company_id
	Where c.company_id = 3
END;





--como verlos todos
SELECT 
    name AS ProcedureName,
    create_date AS CreationDate,
    modify_date AS LastModifiedDate
FROM 
    sys.procedures
ORDER BY 
    name;



--Si se repiten las columnas y solo quieres una--
CREATE PROCEDURE p_UsersAgeLicenceCompanyCombinados
AS
BEGIN
    SELECT 
        u.Name, 
        u.LastName, 
        u.Age, 
        STRING_AGG(l.lenguajeName, ', ') AS lenguajes, -- Combina los lenguajes
        c.companyName
    FROM 
        Users AS u
    JOIN 
        UsersLenguaje AS ul
    ON 
        u.User_id = ul.User_id
    JOIN 
        lenguaje AS l
    ON 
        ul.Lenguaje_id = l.lenguaje_id
    JOIN 
        companies AS c
    ON 
        c.company_id = u.company_id
    WHERE 
        c.company_id = 3
    GROUP BY 
        u.User_id, u.Name, u.LastName, u.Age, c.companyName; -- Agrupar por usuario
END;

--Parametrizable
CREATE PROCEDURE p_UsersAgeLicenceCompanyBueno
    @companyIdparameters INT, -- Parámetro para el ID de la compañía
    @minAge INT     -- Parámetro para la edad mínima
AS
BEGIN
    SELECT 
        u.Name, 
        u.LastName, 
        u.Age, 
        STRING_AGG(l.lenguajeName, ', ') AS lenguajes, -- Combina los lenguajes
        c.companyName
    FROM 
        Users AS u
    JOIN 
        UsersLenguaje AS ul
    ON 
        u.User_id = ul.User_id
    JOIN 
        lenguaje AS l
    ON 
        ul.Lenguaje_id = l.lenguaje_id
    JOIN 
        companies AS c
    ON 
        c.company_id = u.company_id
    WHERE 
        c.company_id = @companyIdparameters -- Filtro basado en el parámetro @companyId
        AND u.Age >= @minAge      -- Filtro basado en el parámetro @minAge
    GROUP BY 
        u.User_id, u.Name, u.LastName, u.Age, c.companyName; -- Agrupar por usuario
END;


--como pasar parametros
EXEC p_UsersAgeLicenceCompanyBueno @companyIdparameters = 2, @minAge = 24;

--como borrar
Drop Procedure p_useers