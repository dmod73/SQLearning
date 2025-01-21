--Union entre dos tablas
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;




Select u.User_id , l.User_id
From Users as u
Left Join Licence as l
On u.User_id = l.User_id
Union
Select u.User_id , l.User_id
From Users as u
Right Join Licence as l
On u.User_id = l.User_id;