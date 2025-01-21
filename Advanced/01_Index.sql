--Crea un identiicador llamado index, este puede ser unico, general entre otros
Create Index idx_Name on Users(Name);

Create UNIQUE Index idx_Name on Users(Name);

--Como borrarlo
Drop Index idx_Name on Users;