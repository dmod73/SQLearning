--Relacion 1:1 entre Users y Licencia--
CREATE TABLE Test2 (
    id_user INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(20) NOT NULL,
    LastNames VARCHAR(30) NOT NULL,
    Age INT NOT NULL,
    Created DATE DEFAULT (GETDATE()),
    WORKING BIT
);

CREATE TABLE Licence (
    id_Licence INT PRIMARY KEY IDENTITY(1,1),
    LicenceNum INT NOT NULL UNIQUE,
    id_user INT NOT NULL,
    CONSTRAINT FK_Licence_User FOREIGN KEY (id_user) REFERENCES Test2(id_user)
);