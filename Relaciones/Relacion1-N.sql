/*Ejemplo de Empleado y compania, 1 compania puede tener muchos empleados
pero un empleado no puede trabajr en muchas companias*/

/Re utilice la tabla usuarios, agregue la columna company id como llave foranea, cree la tabla company con el company id 
que se esta reutilizando en la tabla users, ahora tiene que existir la compania para poder daler el valor de la misma en el campo
cuando se este insertando los valores o creando el usuario nuevo (Ejemplo minuto 3:55 Tutorial)

Querry del gg para buscar en la tabla de Users y companies

select u.Name, c.companyName
from SQLearning.dbo.companies as c
right join Users as u on u.company_id = c.company_id 