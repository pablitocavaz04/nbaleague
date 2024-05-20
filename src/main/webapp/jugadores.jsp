<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jugadores</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Listado de Jugadores</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                        <th>Altura</th>
                        <th>Posicion</th>
                        <th>Dorsal</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                        String url = "jdbc:mysql://localhost:3306/users";
                        String usuario = "pablito";
                        String contraseña = "1234";
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection(url, usuario, contraseña);
                            
                            // Verificar si se está creando un nuevo jugador
                            if ("crear".equals(request.getParameter("action"))) {
                                // Procesar los datos del formulario para agregar el nuevo jugador
                                String nombre = request.getParameter("nombre");
                                String apellidos = request.getParameter("apellido");
                                int edad = Integer.parseInt(request.getParameter("edad"));
                                int altura = Integer.parseInt(request.getParameter("altura"));
                                String posicion = request.getParameter("posicion");
                                int dorsal = Integer.parseInt(request.getParameter("dorsal"));

                                // Crear la sentencia SQL para insertar el nuevo jugador
                                String sql = "INSERT INTO jugadores (nombre, apellidos, edad, altura, posicion, dorsal) VALUES (?, ?, ?, ?, ?, ?)";
                                PreparedStatement pstmt = con.prepareStatement(sql);
                                pstmt.setString(1, nombre);
                                pstmt.setString(2, apellidos);
                                pstmt.setInt(3, edad);
                                pstmt.setInt(4, altura);
                                pstmt.setString(5, posicion);
                                pstmt.setInt(6, dorsal);

                                // Ejecutar la inserción
                                pstmt.executeUpdate();
                                
                                // Cerrar conexión
                                pstmt.close();
                            }
                            
                            // Obtener la lista de jugadores
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM jugadores");
                            
                            // Iterar a través de los resultados y mostrarlos en la tabla
                            while (rs.next()) {
                    %>
                                <tr>
                                    <td><%= rs.getInt("id") %></td>
                                    <td><%= rs.getString("nombre") %></td>
                                    <td><%= rs.getString("apellidos") %></td>
                                    <td><%= rs.getInt("edad") %></td>
                                    <td><%= rs.getInt("altura") %></td>
                                    <td><%= rs.getString("posicion") %></td>
                                    <td><%= rs.getInt("dorsal") %></td>

                                    <td>
                                        <!-- Botón para editar -->
                                        <form class="d-inline" method="POST" action="edit.jsp">
                                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                                        <button type="submit" class="btn btn-primary btn-sm mr-2">Editar</button>
                                        </form>
                                        <!-- Botón para eliminar -->
                                        <form class="d-inline" method="POST" action="delete.jsp" onsubmit="return confirm('¿Estás seguro de que deseas eliminar este elemento?')">
                                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                                        <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                                        </form>
                                    </td>
                                </tr>
                    <% 
                            }
                            
                            // Cerrar conexiones
                            rs.close();
                            stmt.close();
                            con.close();
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    %>
                </tbody>
            </table>
            <!-- Formulario para agregar nuevo jugador -->
            <h2>Agregar Nuevo Jugador</h2>
            <form method="POST" action="jugadores.jsp">
                <input type="hidden" name="action" value="crear">
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" required>
                </div>
                <div class="form-group">
                    <label for="edad">Edad</label>
                    <input type="text" class="form-control" id="edad" name="edad" required>
                </div>
                <div class="form-group">
                    <label for="altura">Altura</label>
                    <input type="text" class="form-control" id="altura" name="altura" required>
                </div>
                <div class="form-group">
                    <label for="posicion">Posicion</label>
                    <input type="text" class="form-control" id="posicion" name="posicion" required>
                </div>
                <div class="form-group">
                    <label for="dorsal">Dorsal</label>
                    <input type="text" class="form-control" id="dorsal" name="dorsal" required>
                </div>
                <button type="submit" class="btn btn-success">Agregar</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>

<!--
RESETEAR ID
SET @num := 0;

UPDATE jugadores SET id = @num := (@num+1);

ALTER TABLE jugadores AUTO_INCREMENT =1;
-->