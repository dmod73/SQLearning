

CREATE TRIGGER tg_emailHistory -- Crear un trigger llamado "tg_emailHistory"
ON Users -- El trigger se asocia con la tabla "Users"
AFTER UPDATE -- El trigger se ejecuta después de una operación de actualización (UPDATE)
AS
BEGIN
    SET NOCOUNT ON; -- Evitar mensajes como "N filas afectadas" para optimizar la ejecución

    -- Insertar en Mail_History los registros donde el correo ha cambiado
    INSERT INTO Mail_History (User_id, Mail) -- Insertar el User_id y el correo antiguo en "Mail_History"
    SELECT 
        DELETED.User_id, -- Obtener el User_id de la tabla virtual DELETED (valores antes del UPDATE)
        DELETED.Mail -- Obtener el correo antiguo (antes del UPDATE)
    FROM 
        INSERTED -- Tabla virtual que contiene los nuevos valores después del UPDATE
    INNER JOIN 
        DELETED -- Tabla virtual que contiene los valores antiguos antes del UPDATE
    ON 
        INSERTED.User_id = DELETED.User_id -- Relacionar los registros antiguos y nuevos basándose en el User_id
    WHERE 
        INSERTED.Mail <> DELETED.Mail; -- Comparar el correo nuevo y el antiguo, insertar solo si han cambiado
END; -- Final del bloque del trigger
