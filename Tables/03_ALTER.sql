--Alter se utiliza para alterar una tabla ya creada--
Create table Test2 (
	id_user Int Identity(1,1),
	Name varchar(20) NOT NULL,
	lastName varchar(30) NOT NULL,
	Age INT NOT NULL
	CHECK ( Age >= 18)
)


ALTER TABLE Test2
ADD Created DATE DEFAULT CAST(GETDATE() AS DATE);


Insert Into Test2 ( Name, lastName, Age, Created) Values ('Lalo', 'Lalon ', 18, GETDATE())


--Comando para renombrar--
EXEC sp_rename 'Test2.lastName', 'LastNames', 'COLUMN';

--Como modificar una columna--
ALTER TABLE Test2
ALTER COLUMN Militar BIT;

--Borrar una columna--
ALTER TABLE Test2
DROP COLUMN Militar;

--Para agregar una llave foranea--
ALTER TABLE Users
ADD Foreign Key(company_id) References companies(company_id)