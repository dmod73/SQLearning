
--Con incrementador en el id--
CREATE TABLE Users (
    User_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NCHAR(10) NOT NULL,
    Age INT NOT NULL,
    LastName NCHAR(25) NOT NULL,
    Phone INT NOT NULL,
    Mail NCHAR(30) NOT NULL
);


USE SQLearning;
GO

CREATE TABLE Professors (
    ProfessorID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(100),
    HireDate DATE,
    Email NVARCHAR(100)
);


