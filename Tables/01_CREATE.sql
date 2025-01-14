--Como crear una tabla--
CREATE TABLE persons (
	id int,
	name varchar(100),
	age int,
	mail varchar(50),
	created date
);


--Aqui ya le pondriamos restricciones--
CREATE TABLE persons2 (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name varchar (100) NOT NULL,
	age int,
	mail varchar(50) NOT NULL,
	created date NOT NULL
);

--Con CHECK podemos poner una condicion a los registros que se guardaran en la tabla--
CREATE TABLE persons3 (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name varchar (100) NOT NULL,
	age int,
	mail varchar(50) NOT NULL,
	created date NOT NULL
	CHECK(age>=18)
);

--Ejemplo con DEFAULT, aqui se esta autorellenando el created con la fecha exacta de la maquina cuando se creo
CREATE TABLE persons4 (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name varchar (100) NOT NULL,
	age int,
	mail varchar(50) NOT NULL,
	created datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CHECK(age>=18)
);