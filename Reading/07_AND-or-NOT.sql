--El NOT hace que en este ejemplo seleccione todos los registros de la columna de Name menos Franshe--
SELECT * FROM Users WHERE NOT Name = 'Franshe'
--El AND me ayuda a concatenar dos condiciones--
SELECT * FROM Users WHERE NOT Name = 'Franshe' AND Age = 24
--El Or nos ayuda para que aparezcan las registros que cumplen con al meenos una condicion--
SELECT * FROM Users WHERE NOT Name = 'Franshe' OR Age = 25