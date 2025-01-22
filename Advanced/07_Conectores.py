import pyodbc

def print_user(user):
    # Configuración para conectarse a SQL Server
    config = {
        "Driver": "SQL Server",             # Driver para SQL Server
        "Server": "DEANPC",                 # Nombre del servidor
        "Database": "SQLearning",           # Nombre de la base de datos
        "Trusted_Connection": "yes"         # Autenticación de Windows
    }

    # Crear cadena de conexión
    connection_string = f"DRIVER={{{config['Driver']}}};" \
                        f"SERVER={config['Server']};" \
                        f"DATABASE={config['Database']};" \
                        f"Trusted_Connection={config['Trusted_Connection']}"

    try:
        # Establecer conexión
        connection = pyodbc.connect(connection_string)
        cursor = connection.cursor()

        # Consulta parametrizada para evitar inyección SQL
        query = "SELECT * FROM users WHERE name ='" + user + "'; "
        cursor.execute(query, user)

        # Obtener resultados
        result = cursor.fetchall()

        # Mostrar resultados
        for row in result:
            print(row)

    except pyodbc.Error as e:
        print("Error:", e)

    finally:
        # Cerrar conexiones
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'connection' in locals() and connection is not None:
            connection.close()

# Llamar a la función con un ejemplo
print_user("Dean")

