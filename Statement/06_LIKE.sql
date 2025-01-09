--LIKE se utiliza para buscar registros que coincidan con un patron de caracteres a seleccionar--
SELECT * FROM Users
WHERE Mail LIKE '%@mail%';
--Este leera para la derecha ya que alla esta el simbolo
SELECT * FROM Users
WHERE Mail LIKE '@mail%';
--Este leera para la Izquierda ya que alla esta el simbolo
SELECT * FROM Users
WHERE Mail LIKE '%@mail';
--Busca valores que empiezan con D, tienen cualquier número de caracteres después, y luego contienen @mail. ejemplo ( D123@mail Dean@mail D_awesome@mail)
SELECT * FROM Users
WHERE Mail LIKE 'D%@mail';