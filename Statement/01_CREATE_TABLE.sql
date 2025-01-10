
--Con incrementador en el id--
CREATE TABLE Users (
    User_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NCHAR(10) NOT NULL,
    Age INT NOT NULL,
    LastName NCHAR(25) NOT NULL,
    Phone INT NOT NULL,
    Mail NCHAR(30) NOT NULL
);


CREATE TABLE UsersClient (
    UserClient_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NameClient NCHAR(10) NOT NULL,
    LastNameClient NCHAR(20),
    
)