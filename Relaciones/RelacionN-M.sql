--Relaciones N:N creacion de tabla intermedia entre user y lenguaje--
Create Table UsersLenguaje(
	UserLenguaje_id INT Primary Key Identity(1,1),
	User_id INT UNIQUE,
	Lenguaje_id INT UNIQUE,
	CONSTRAINT FK_User FOREIGN KEY (User_id) REFERENCES Users(User_id),
	CONSTRAINT FK_lenguaje FOREIGN KEY (lenguaje_id) REFERENCES lenguaje(lenguaje_id)
);